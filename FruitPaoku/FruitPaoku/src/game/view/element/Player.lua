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
    self.m_buffArr = {} --buff列表

    --角色死亡
    self.m_isDead = false
    
    self.m_up = false
    self.m_down = true
    
--    self.m_curModle = GameDataManager.getFightRole()
    local modle = RoleConfig[1].armatureName
    self:createModle(modle)

    self.p_siz=cc.size(self.m_armature:getCascadeBoundingBox().size.width*0.7,self.m_armature:getCascadeBoundingBox().size.height)
    self:addBody(cc.p(10,50),self.p_siz)

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

----上跳[_place:角色位置]
--function Player:toJump()
--    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Player_Jump)
--    self:reSetUD()
--    self.m_isUp=true
--    self:toPlay(PLAYER_ACTION.Jump)
--end

--重置角色状态(上跳和下夏洛状态)
function Player:reSetUD()
    self.m_up = false
    self.m_down = true
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
    local direction = 1
    if self:getPositionY()<display.cy then
    	direction = 1
    else
        direction = -1
    end
    self:setScaleY(direction*-1)
    transition.moveBy(self,{time=0.4,x=0,y=direction*440,onComplete=function()
        
    end})
--	self.m_armature
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
--        self.m_isUp=false
--        self.m_isDown = false
        self:toPlay(PLAYER_ACTION.Attack,0)
--        self:setPosition(cc.p(self:getPositionX()+50,self:getPositionY()+50))
    elseif movementID==PLAYER_ACTION.Attack and movementType==ccs.MovementEventType.complete then
--        self.m_isUp=false
--        self.m_isDown = false
        self:toPlay(PLAYER_ACTION.Down,0)
--        self:setPosition(cc.p(self:getPositionX()+50,self:getPositionY()-50))
    elseif movementID==PLAYER_ACTION.Down and movementType==ccs.MovementEventType.complete then
        self:toPlay(PLAYER_ACTION.Run)
--        self:setPosition(cc.p(self:getPositionX(),self:getPositionY()))
--    elseif movementID==PLAYER_ACTION.death and movementType==ccs.MovementEventType.complete then

    end
end

--获取角色刚体大小
function Player:getSize(parameters)
    return self.p_siz
end

function Player:update(dt,_x,_y)
    if self.m_isMagnet then
        GameController.detect(self,cc.p(_x,_y),self.m_radius)
    end
end


--角色复活
function Player:relive(parameters)

    --清除所有buff
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _buff then
            self:clearBuff(_buff:getType())
        end
    end
    self.m_buffArr = {}

end

--角色死亡
function Player:death()

    --清除所有buff
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _buff then
            self:clearBuff(_buff:getType())
        end
    end
    self.m_buffArr = {}

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
--        if _type==PLAYER_STATE.spring then
--            if self.m_handler then
--                Scheduler.unscheduleGlobal(self.m_handler)
--                self.m_handler = nil
--            end
--
--            if not tolua.isnull(self.m_armature) then
--                self:toPlay(PLAYER_ACTION.Run)
--                GameDispatcher:dispatch(EventNames.EVENT_FIGHT_TIER)
--            end
--            AudioManager.stopSoundEffect(AudioManager.Sound_Effect_Type.Spring_Sound)
--
--        end
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
    print("角色游戏暂停")
    if not tolua.isnull(self.m_armature) then
--        if self:isInState(PLAYER_STATE.topfly) then
--            print("卸载急速飞行定时器")
--            if  self.m_flyHandler then
--                Scheduler.unscheduleGlobal(self.m_flyHandler)
--                self.m_flyHandler = nil
--            end
--        end
    end
end

function Player:regain(parameters)
    print("角色游戏恢复")
    if not tolua.isnull(self.m_armature) then
--        if self:isInState(PLAYER_STATE.topfly) then
--            print("重启急速飞行定时器")
--            MoveSpeed = GameController.getSpeed() * GoodsConfig[GOODS_TYPE.TopSpeed].speedIndex
--            self.m_flyHandler = Tools.delayCallFunc(GameController.getGoodsGoonTime(GOON_TAG.TopSpeed),function()
--                self:clearBuff(PLAYER_STATE.topfly)
--            end)
--        end
    end
end

function Player:dispose()

    if self.m_handler then
        Scheduler.unscheduleGlobal(self.m_handler)
        self.m_handler = nil
    end

    if self.m_flyHandler then
        Scheduler.unscheduleGlobal(self.m_flyHandler)
        self.m_flyHandler = nil
    end

    if self.m_dropLifeHandle then
        Scheduler.unscheduleGlobal(self.m_dropLifeHandle)
        self.m_dropLifeHandle=nil
    end

    if self.m_pHandler then
        Scheduler.unscheduleGlobal(self.m_pHandler)
        self.m_pHandler = nil
    end

    if self.m_madHandler then
        Scheduler.unscheduleGlobal(self.m_madHandler)
        self.m_madHandler = nil
    end

    if self.deyHandler then
        Scheduler.unscheduleGlobal(self.deyHandler)
        self.deyHandler = nil
    end

    --清除所有buff
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _buff then
            self:clearBuff(_buff:getType())
        end
    end
    self.m_buffArr = {}

--    GameDispatcher:removeListenerByName(EventNames.EVENT_TOP_FLY)
--    GameDispatcher:removeListenerByName(EventNames.EVENT_PLAYER_DEAD)

    GameController.stopDetect()

    self.super.dispose(self)
end


return Player
