local LiveThing = import(".LiveThing")
local Player = class("Player", LiveThing)

local Special_MATERIAL=cc.PhysicsMaterial(0,0,0)
local BuffState = require("game.view.element.BuffState")
local Scheduler = require("framework.scheduler")

local Flash_Skeep_Time = 0.1 --闪动间隔

---人物类
function Player:ctor()
    Player.super.ctor(self)
    self.m_vo = GameDataManager.getPlayerVo()
    self.m_hp = self.m_vo.m_hp

    self.m_buffArr = {} --buff列表

    --角色死亡
    self.m_isDead = false
    GameController.isWin = false
    
    self.m_jump = false
    self.m_run = true
    self.touchCount = 0
    
    self.m_curModle = GameDataManager.getFightRole()
    local modle = RoleConfig[self.m_curModle].armatureName
    self:createModle(modle)

    self.p_siz=cc.size(self.m_armature:getCascadeBoundingBox().size.width*0.7,self.m_armature:getCascadeBoundingBox().size.height)
    self:addBody(cc.p(10,50),self.p_siz)
    
    self.m_twoJump = false
    self.m_isMagnet = false
    local actSkill = RoleConfig[self.m_curModle].skillAct
    for var=1, #actSkill do
        if actSkill[var].type == PLAYER_ACT_TYPE.Twojump then
    		self.m_twoJump = true
        elseif actSkill[var].type == PLAYER_ACT_TYPE.Magnet then
            self:magnetSkill(actSkill[var].radius)
        elseif actSkill[var].type == PLAYER_ACT_TYPE.Protect then
            self:protectSkill()
    	end
    end
    
    --控制随机数种子
    math.randomseed(tostring(os.time()):reverse():sub(1, #RoleConfig))
    
    --受伤害
    GameDispatcher:addListener(EventNames.EVENT_PLAYER_ATTACKED,handler(self,self.playerAttacked))
    --开局冲刺
    GameDispatcher:addListener(EventNames.EVENT_START_SPRINT,handler(self,self.sprinting))
    --死亡冲刺
    GameDispatcher:addListener(EventNames.EVENT_DEAD_SPRINT,handler(self,self.deadSprint))
    --开局护盾
    GameDispatcher:addListener(EventNames.EVENT_START_PROTECT,handler(self,self.startProtect))
    --死亡接力
    GameDispatcher:addListener(EventNames.EVENT_DEAD_RELAY,handler(self,self.deadRelay))
    --吸铁石
    GameDispatcher:addListener(EventNames.EVENT_MANGET,handler(self,self.manget))
    --巨人药水
    GameDispatcher:addListener(EventNames.EVENT_GRANT_DRINK,handler(self,self.grantDrink))

    --角色暂停和恢复
--    GameDispatcher:addListener(EventNames.EVENT_PLAYER_PAUSE,handler(self,self.pause))
--    GameDispatcher:addListener(EventNames.EVENT_PLAYER_REGAIN,handler(self,self.regain))

end

--创建人物模型动画[_place:角色位置]
function Player:createModle(_actionName)
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("role/".._actionName.."0.png", "role/".._actionName.."0.plist" , "role/".._actionName..".ExportJson" )

    self.m_armature = ccs.Armature:create(_actionName)
    self:addChild(self.m_armature)
    self.m_animation = self.m_armature:getAnimation()
    self:toPlay(PLAYER_ACTION.Run)
    self.m_animation:setMovementEventCallFunc(handler(self,self.armatureMoveEvent))
    self.m_animation:setFrameEventCallFunc(handler(self,self.onActionFrameEvent))
end


function Player:addBody(_offset,size)
    self.m_body=cc.PhysicsBody:createBox(size,Special_MATERIAL,_offset)
    self.m_body:setCategoryBitmask(0x1101)
    self.m_body:setContactTestBitmask(0x1111)
    self.m_body:setCollisionBitmask(0x1111)
    self.m_body:setDynamic(true)
    self.m_body:setTag(ELEMENT_TAG.PLAYER_TAG)
    self:setPhysicsBody(self.m_body)
end

--获取对象数据
function Player:getVo()
    return self.m_vo
end

function Player:isDead(parameters)
	return self.m_vo.m_hp<=0
end

--闯关胜利后滑行一段距离
function Player:LevelWin()
    GameController.isWin = true
    
    transition.moveTo(self,{time = 1,x=display.right+100,y=self:getPositionY(),onComplete=function()
        self:dispose()
        --弹结算界面
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_OVER,{type=GAMEOVER_TYPE.Win})
    end})
end

--重置角色状态
function Player:reSetUD()
    self.m_jump = false
    self.m_run = true
end

--角色动画切换(_place:角色位置,_animation动画名称)
function Player:toPlay(_actionName,loop)
    local _loop = loop or 1
    self.m_animation:play(_actionName,0,_loop)
    if _actionName==PLAYER_ACTION.Run then
        self:reSetUD()
    end
end

--角色移动
function Player:toMove(parameters)
    self.touchCount = self.touchCount + 1
    if self.touchCount == 1 then
        self.playerY = self:getPositionY()
    end
    if not self.m_jump then
        self.m_jump = true
        self.m_run = false
        local direction = 1
        if self:getPositionY()<display.cy then
            direction = 1
        else
            direction = -1
        end
        self:setScaleY(direction*-1)
        transition.moveBy(self,{time=0.4,x=0,y=direction*440,onComplete=function()
            self.m_jump = false
            self.m_run = true
            self.touchCount = 0
        end})
    else
        if self.touchCount == 2 and self.m_twoJump then
            self:stopAllActions()
            local direction = 1
            local m_pY
            if self.playerY<display.cy then
                direction = 1
                m_pY = display.cy-240
            else
                direction = -1
                m_pY = display.cy+200
            end
            self:setScaleY(direction)
            transition.moveTo(self,{time=0.4,x=self:getPositionX(),y=m_pY,onComplete = function()
                self.m_jump = false
                self.m_run = true
                self.touchCount = 0
            end})
        end
    end
    
end

--获取状态
function Player:getJumpState(parameters)
    return self.m_jump
end

function Player:onActionFrameEvent(_bone,_evt,_begin,_end)
    if _evt == nil then
        return
    end

    -- if _evt == "run_over" then
    --     if not self:isInState(PLAYER_STATE.WalkMachine) then
    --         self.m_runNum = self.m_runNum+1
    --         if self.m_runNum == 6 then
    --             self.m_runNum=0
    --             self:toPlay(PLAYER_ACTION.Run_Two)
    --         end
    --     else
    --         self.m_FireNum = self.m_FireNum+1
    --         if self.m_FireNum == GoodsConfig[2].interval_time then
    --             self.m_FireNum=0
    --             if not tolua.isnull(self.m_fireBone) then
    --                 self.m_fireBone:updateDisplayedOpacity(0)
    --                 self.m_walkFire:setVisible(true)
    --                 self:delayShow(self.m_fireBone)
    --             end
    --             WalkFire_State = true
    --         end
    --     end
    --     return
    -- end

    -- if _evt == "run_two_over" then
    --     self:toPlay(PLAYER_ACTION.Run)
    --     return
    -- end
end

--角色动画桢函数回调
function Player:armatureMoveEvent(armatureBack,movementType,movementID)
    if movementID==PLAYER_ACTION.Jump and movementType==ccs.MovementEventType.complete then
        self:toPlay(PLAYER_ACTION.Attack,0)
    elseif movementID==PLAYER_ACTION.Attack and movementType==ccs.MovementEventType.complete then
        self:toPlay(PLAYER_ACTION.Down,0)
    elseif movementID==PLAYER_ACTION.Down and movementType==ccs.MovementEventType.complete then
        self:toPlay(PLAYER_ACTION.Run)
        self.m_jump = false
        self.m_run = true
--    elseif movementID==PLAYER_ACTION.death and movementType==ccs.MovementEventType.complete then

    end
end

--获取角色刚体大小
function Player:getSize(parameters)
    return self.p_siz
end

function Player:getAreaSize(parameters)
    return self.p_siz
end

function Player:update(dt,_x,_y)
    if self.m_propManget then
        GameController.detect(self,cc.p(_x,_y),self.m_propRadius)
    elseif self.m_isMagnet then
        GameController.detect(self,cc.p(_x,_y),self.m_radius)
    end
end

--巨人药水
function Player:grantDrink(parameters)
	Tools.printDebug("----------巨人药水")
    self.m_armature:setScale(parameters.data.scale)
end

--死亡接力
function Player:deadRelay(parameters)
    --清除所有buff
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _buff then
            self:clearBuff(_buff:getType())
        end
    end
    self.m_buffArr = {}
    
    self:reSetUD()
    self.m_hp = self.m_vo.m_hp
    
    local old = self.m_armature
    local random = math.random(1,GameDataManager.getRoleModelCount())
    Tools.printDebug("-----------死亡接力..",random)
    local modle = RoleConfig[random].armatureName
    self:createModle(modle)
    old:removeFromParent()
    self.m_jump = false
    self.m_run = true
end

--角色受伤害
function Player:playerAttacked(parm)
    if self:isInState(PLAYER_STATE.Defence) then
    	self:clearBuff(PLAYER_STATE.Defence)
    	return
    end
    if self:isInState(PLAYER_STATE.StartProtect) then
        self:clearBuff(PLAYER_STATE.StartProtect)
        return
    end
    if self:isInState(PLAYER_STATE.StartSprint) or self:isInState(PLAYER_STATE.DeadSprint) then
        return
    end

    if self.m_jump and not parm.data.isSpecial then
        return
    end
    self.m_hp = self.m_hp - parm.data.att
    if self.m_hp <= 0 then
        Tools.printDebug("------------角色死亡..")
        self:deadFlash()
    end
end

--
function Player:deadFlash(parameters)
    --
    Tools.delayCallFunc(0.1,function()
        if GameController.getStartPropById(2) then
            GameDataManager.useGoods(2)
        elseif GameController.getStartPropById(4) then
            GameDataManager.useGoods(4)
        else
            self:death()
            --弹结算界面
            GameDispatcher:dispatch(EventNames.EVENT_OPEN_OVER,{type = GAMEOVER_TYPE.Fail})
        end
    end)
    
end

--角色死亡
function Player:death()

    self:stopAllActions()
    self:toPlay(PLAYER_ACTION.Down)
    
    --背景和障碍停止移动
    MoveSpeed = 0
--        self:getParent():toDelay()

    self.m_isDead = true
    GameController.isDead = true

    --清除所有buff
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _buff then
            self:clearBuff(_buff:getType())
        end
    end
    self.m_buffArr = {}

end

--吸铁石
function Player:manget(parameters)
	Tools.printDebug("--------吸铁石道具")
	if self:isInState(PLAYER_STATE.MagnetProp) then
        self:clearBuff(PLAYER_STATE.MagnetProp)
	end
	
	self.m_propManget = true
    self.m_propRadius = parameters.data.radius
    
    local _lv = GameDataManager.getRoleLevel(self.m_curModle)
    local _time = parameters.data.time+GameDataManager.getUnActSkillTime(self.m_curModle,_lv,GOODS_TYPE.Magnet)
    self:addBuff({type=PLAYER_STATE.MagnetProp,time = _time})
    self.m_manHandler = Tools.delayCallFunc(parameters.data.time,function()
        self:clearBuff(PLAYER_STATE.MagnetProp)
    end)
end

--开局护盾
function Player:startProtect(parameters)
	Tools.printDebug("-----开局护盾")
	--护盾特效
	
    self:addBuff({type=PLAYER_STATE.StartProtect,time = parameters.data.time})
    self.m_proHandler = Tools.delayCallFunc(parameters.data.time,function()
        self:clearBuff(PLAYER_STATE.StartProtect)
    end)
end

--开局冲刺
function Player:sprinting(parameters)

    if self:isDead() then
    	return
    end
    Tools.printDebug("-----------开局冲刺")
    --冲刺特效
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("role/chongci0.png", "role/chongci0.plist" , "role/chongci.ExportJson")
    self.m_spdeffect = ccs.Armature:create("chongci")
    self.m_spdeffect:getAnimation():playWithIndex(0)
    self.m_spdeffect:setPosition(-10,60)
    
    self:toPlay(PLAYER_ACTION.Run,0)
    self:addChild(self.m_spdeffect,10)
    
    self.oldX,self.oldY = self:getPosition()
    self:setPosition(cc.p(display.cx,display.cy))
    
    self:addBuff({type=PLAYER_STATE.StartSprint,time = parameters.data.time})
    self.initSpeed = MoveSpeed
    MoveSpeed = parameters.data.speed
    self.m_handler = Tools.delayCallFunc(parameters.data.time,function()
        self:clearBuff(PLAYER_STATE.StartSprint)
    end)
    
end

function Player:deadSprint(parameters)
    if self:isDead() then
        return
    end
    Tools.printDebug("-----------死亡冲刺")
    --冲刺特效
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("role/chongci0.png", "role/chongci0.plist" , "role/chongci.ExportJson")
    self.m_deadDffect = ccs.Armature:create("chongci")
    self.m_deadDffect:getAnimation():playWithIndex(0)
    self.m_deadDffect:setPosition(-10,60)

    self:toPlay(PLAYER_ACTION.Run,0)
    self:addChild(self.m_deadDffect,10)

    self.deadX,self.deadY = self:getPosition()
    self:setPosition(cc.p(display.cx,display.cy))

    self:addBuff({type=PLAYER_STATE.DeadSprint,time = parameters.data.time})
    self.deadSpeed = MoveSpeed
    MoveSpeed = parameters.data.speed
    self.m_dHandler = Tools.delayCallFunc(parameters.data.time,function()
        self:clearBuff(PLAYER_STATE.DeadSprint)
    end)
end

--吸金币
function Player:magnetSkill(radius)
    self:addBuff({type=PLAYER_STATE.Magnet})
    self.m_radius = radius
    self.m_isMagnet = true
end

--护盾技能
function Player:protectSkill(parameters)
    self:addBuff({type=PLAYER_STATE.Defence})
    --护盾特效
end


--判断玩家是否处于某种状态
function Player:isInState(_state)
    if #self.m_buffArr > 0 then
        for key, var in ipairs(self.m_buffArr) do
            if _state == var:getType() then
                return true
            end
        end
        return false
    else
        return false
    end
end

--添加buff
function Player:addBuff(_params)
    local _buff = BuffState.new({type=_params.type,time=_params.time})
    table.insert(self.m_buffArr,_buff)
end
--清除指定类型的buff
function Player:clearBuff(_type)
    local bIsClear=false
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _type == _buff:getType() then
            table.remove(self.m_buffArr,var)
            bIsClear=true
            break
        end
    end

    if bIsClear==true then
        if _type==PLAYER_STATE.StartSprint then
            if self.m_handler then
                Scheduler.unscheduleGlobal(self.m_handler)
                self.m_handler = nil
            end
            if not tolua.isnull(self.m_spdeffect) then
                self.m_spdeffect:removeFromParent()
                self.m_spdeffect = nil
            end
            self:toPlay(PLAYER_ACTION.Run)
            self:setPosition(cc.p(self.oldX,self.oldY))
            self.oldX,self.oldY = nil,nil
            MoveSpeed = self.initSpeed
            self.initSpeed = nil
        elseif _type == PLAYER_STATE.DeadSprint then
            if self.m_dHandler then
                Scheduler.unscheduleGlobal(self.m_dHandler)
                self.m_dHandler = nil
            end
            if not tolua.isnull(self.m_deadDffect) then
                self.m_deadDffect:removeFromParent()
                self.m_deadDffect = nil
            end
            self:toPlay(PLAYER_ACTION.Run)
            self:setPosition(cc.p(self.deadX,self.deadY))
            self.deadX,self.deadY = nil,nil
            MoveSpeed = self.deadSpeed
            self.deadSpeed = nil
            self:deadFlash()
            
        elseif _type == PLAYER_STATE.StartProtect then
            if self.m_proHandler then
                Scheduler.unscheduleGlobal(self.m_proHandler)
                self.m_proHandler = nil
            end
            --移除护盾特效
        
        elseif _type == PLAYER_STATE.MagnetProp then
            self.m_propManget = false
            if self.m_manHandler then
                Scheduler.unscheduleGlobal(self.m_manHandler)
                self.m_manHandler = nil
            end

        end
    end

end

function Player:isPlayerDead()
    return self.m_isDead
end

--添加闪烁状态
function Player:blank(_par)
    --添加状态
    self:addBuff({type=PLAYER_STATE.DropLife,time=_par})
    local _time = _par
    self:toFlash(_time)
    self.m_dropLifeHandle = Tools.delayCallFunc(_time,function()
        self:toStopFlash()
        self:clearBuff(PLAYER_STATE.DropLife)
    end)
end

--掉生命时闪烁
function Player:toFlash(_time)
    self.m_isFlashed = true
    local toFadeOut
    toFadeOut = function(parameters)
        if not self.m_isFlashed then
            return
        end
        if not tolua.isnull(self.m_armature) then
            transition.fadeOut(self.m_armature,{time=Flash_Skeep_Time,onComplete=function()
                transition.fadeIn(self.m_armature,{time=Flash_Skeep_Time,onComplete=function()
                    toFadeOut()
                end})
            end})
        end
    end
    toFadeOut()
end


function Player:toStopFlash()
    self.m_isFlashed = false
    if not tolua.isnull(self.m_armature) then
        transition.stopTarget(self.m_armature)
        self.m_armature:setOpacity(255)
    end
end

function Player:pause(parameters)
    Tools.printDebug("角色游戏暂停")
    if not tolua.isnull(self.m_armature) then
--        if self:isInState(PLAYER_STATE.topfly) then
--            Tools.printDebug("卸载急速飞行定时器")
--            if  self.m_flyHandler then
--                Scheduler.unscheduleGlobal(self.m_flyHandler)
--                self.m_flyHandler = nil
--            end
--        end
    end
end

function Player:regain(parameters)
    Tools.printDebug("角色游戏恢复")
    if not tolua.isnull(self.m_armature) then
--        if self:isInState(PLAYER_STATE.topfly) then
--            Tools.printDebug("重启急速飞行定时器")
--            MoveSpeed = GameController.getSpeed() * GoodsConfig[GOODS_TYPE.TopSpeed].speedIndex
--            self.m_flyHandler = Tools.delayCallFunc(GameController.getGoodsGoonTime(GOON_TAG.TopSpeed),function()
--                self:clearBuff(PLAYER_STATE.topfly)
--            end)
--        end
    end
end

function Player:dispose()

    GameDispatcher:removeListenerByName(EventNames.EVENT_PLAYER_ATTACKED)
    GameDispatcher:removeListenerByName(EventNames.EVENT_START_SPRINT)
    GameDispatcher:removeListenerByName(EventNames.EVENT_DEAD_SPRINT)
    GameDispatcher:removeListenerByName(EventNames.EVENT_START_PROTECT)
    GameDispatcher:removeListenerByName(EventNames.EVENT_DEAD_RELAY)
    GameDispatcher:removeListenerByName(EventNames.EVENT_MANGET)
    GameDispatcher:removeListenerByName(EventNames.EVENT_GRANT_DRINK)
    
    self.m_isDead = false
    GameController.isDead = false
    self.m_jump = false
    self.m_run = true
    GameController.isWin = false
    
    if self.m_handler then
        Scheduler.unscheduleGlobal(self.m_handler)
        self.m_handler = nil
    end
    
    if self.m_dHandler then
        Scheduler.unscheduleGlobal(self.m_dHandler)
        self.m_dHandler = nil
    end
    
    if self.m_proHandler then
        Scheduler.unscheduleGlobal(self.m_proHandler)
        self.m_proHandler = nil
    end
    
    if self.m_manHandler then
        Scheduler.unscheduleGlobal(self.m_manHandler)
        self.m_manHandler = nil
    end

    if self.m_dropLifeHandle then
        Scheduler.unscheduleGlobal(self.m_dropLifeHandle)
        self.m_dropLifeHandle=nil
    end

    --清除所有buff
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _buff then
            self:clearBuff(_buff:getType())
        end
    end
    self.m_buffArr = {}

    GameController.stopDetect()

    self.super.dispose(self)
end


return Player
