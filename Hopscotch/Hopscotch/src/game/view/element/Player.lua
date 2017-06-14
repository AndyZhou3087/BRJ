local LiveThing = import(".LiveThing")
local Player = class("Player", LiveThing)

local BuffState = require("game.view.element.BuffState")
local PhysicSprite = require("game.custom.PhysicSprite")
local Scheduler = require("framework.scheduler")

local MASS = 200
local DENSITY = 10   --密度
local FRICTION   = 0    --摩擦力
local ELASTICITY = 0    --反弹力
local Speed_Max = 600   --人物最大速度
local DustRepair=5


---人物类
function Player:ctor()
    Player.super.ctor(self)
    self.m_vo = GameDataManager.getPlayerVo()
    self.m_buffArr = {} --buff列表

    self.m_life = self.m_vo.m_lifeNum
    self.m_jump = self.m_vo.m_jump
    self.m_speed = self.m_vo.m_speed

    self.m_curModle = GameDataManager.getFightRole()
    local modle = RoleConfig[self.m_curModle].armatureName
    local res = RoleConfig[self.m_curModle].roleImg
    local p_size
    if modle then
        self.m_modle=modle
--        self:createModle(modle)
--        self:toPlay(PLAYER_ACTION.Run)
        self.m_armature = display.newSprite(res):addTo(self)
        cc.AnimationCache:getInstance():addAnimations("role/"..modle..".plist")
        local animation = cc.AnimationCache:getInstance():getAnimation("RoleAni_"..5)
        animation:setLoops(-1)
        local animate = cc.Animate:create(animation)
        self.m_armature:runAction(animate)
        self.m_armature:setScale(0.5)
        p_size = cc.size(50,75)
    else
        self.m_armature = PhysicSprite.new(res):addTo(self)
        p_size = self.m_armature:getCascadeBoundingBox().size
    end
    self:addBody(cc.p(0,0),p_size)
    
    --角色主动技能
--    GameDispatcher:addListener(EventNames.EVENT_PLAYER_SKILL,handler(self,self.actSkill))

end

function Player:onActionFrameEvent(_bone,_evt,_begin,_end)
    if _evt == nil then
        return
    end

--    if _evt == "run_two_over" then
--        self:toPlay(PLAYER_ACTION.Run)
--        return
--    end

end

--创建人物模型动画
function Player:createModle(_actionName)
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("player/".._actionName.."0.png", "player/".._actionName.."0.plist" , "player/".._actionName..".ExportJson" )
    self.m_armature = ccs.Armature:create(_actionName)
    self:addChild(self.m_armature)
    self.m_animation = self.m_armature:getAnimation()

    self.m_animation:setMovementEventCallFunc(handler(self,self.armatureMoveEvent))
    self.m_animation:setFrameEventCallFunc(handler(self,self.onActionFrameEvent))
end
--人物动画帧回调函数
function Player:armatureMoveEvent(armatureBack,movementType,movementID)
    if movementID==PLAYER_ACTION.Run and movementType==ccs.MovementEventType.loopComplete then --动画结束后执行
        if self:isInState(PLAYER_STATE.Invincible) then
            AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Player_Big_Sound)
        elseif self:isInState(PLAYER_STATE.WalkMachine) then
            AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Player_Big_Sound)
        else
            AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Player_Normal_Step)
        end
        return
    end
end
function Player:addBody(_offset,size)
    local _size = nil
    if size == nil then
        _size = self.m_armature:getCascadeBoundingBox().size
    else
        _size = size
    end
    self.m_size=_size
    self.m_body = cc.PhysicsBody:createBox(_size,
    cc.PhysicsMaterial(DENSITY,ELASTICITY,FRICTION),_offset)
    self.m_body:setMass(MASS)
    self.m_body:setCategoryBitmask(0x01)
    self.m_body:setContactTestBitmask(0x1111)
    self.m_body:setCollisionBitmask(0x03)
    self.m_body:setRotationEnable(false)
    self.m_body:setMoment(0)
    self.m_body:setTag(ELEMENT_TAG.PLAYER_TAG)
    self.m_body:setVelocityLimit(Speed_Max)
    self:setPhysicsBody(self.m_body)

end

--获取对象数据
function Player:getVo()
    return self.m_vo
end
function Player:getBody(parameters)
    return self.m_body
end

function Player:setGravityEnable(_enable)
    if self.m_body then
        self.m_body:setGravityEnable(_enable)
	end
end

--上跳状态
function Player:toJump(ty)

    self.m_body:setCollisionBitmask(0x01)
    self:setGravityEnable(false)
    self:stopAllActions()
    local x,y = self:getPosition()
    local move = cc.MoveTo:create(0.2,cc.p(x,ty+self.m_size.width*0.5+30))
    local callfunc = cc.CallFunc:create(function()
        self.m_body:setCollisionBitmask(0x03)
        self:setGravityEnable(true)
        self:setPositionY(ty+self.m_size.width*0.5+30)
    end)
    local seq = cc.Sequence:create(move,callfunc)
    self:runAction(seq)

    if self.m_modle then
--        self:toPlay(PLAYER_ACTION.Bounce)
    end
--    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Jump_High_Sound)
end

--帧回调
function Player:update(dt,_x,_y)
    if self.m_isMagnet then
        GameController.detect(self,cc.p(_x,_y),self.m_radius,GameController.Adsorb_Ex_Goods_Eeg)
    end
    self.oldX = _x
    self.oldY = _y
--    Tools.printDebug("brj  player  posX: ",_x)

    local _vec = self.m_body:getVelocity()
    if math.abs(_vec.y)>Speed_Max then
        _vec.y = 0
    end

    local _scaleX=self:getScaleX()
    if _scaleX<0 then
        _vec.x=self.m_vo.m_speed
    else
        _vec.x=-self.m_vo.m_speed
    end
    self:setBodyVelocity(_vec)

end

function Player:getArmature(parameters)
    return self.m_armature
end


--角色复活
function Player:relive(parameters)
    
end

--角色死亡
function Player:selfDead()
    self.m_vo.m_lifeNum = self.m_vo.m_lifeNum - 1
    if self.m_vo.m_lifeNum <= 0 then
        if GameDataManager.getPoints() <= 20 then
            --低于20层回到起点
            if not tolua.isnull(self:getParent()) then
                self:getParent():backOriginFunc()
            end
        else
            --弹出结算界面
            GameDispatcher:dispatch(EventNames.EVENT_OPEN_SETTLEMENT) 
        end
    end
end

--停止移动
function Player:toStopMove(parameters)
    self.m_stopVec = self.m_body:getVelocity()
end
--恢复移动
function Player:resumeMove(parameters)
    self:setBodyVelocity(self.m_stopVec)
end

--增加一条生命
function Player:addLifeNum(_count)
    self.m_vo.m_lifeNum = self.m_vo.m_lifeNum + _count
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
--        if _type==PLAYER_STATE.Slider then
--           
--        end
    end
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
--判断角色是否死亡
function Player:isDead()
    return self.m_vo.m_lifeNum<=0
end

--获取角色大小
function Player:getSize(parameters)
    return self.m_size
end

function Player:toPlay(_actionName)
    self.m_action = _actionName
    if not tolua.isnull(self.m_animation) then
        self.m_animation:play(_actionName)
    end
end

--这个是供在mapLayer里调用
function Player:setVelocity(vec)
--    if self:isInState(PLAYER_STATE.Sprint)==false then
        self:setBodyVelocity(vec)
--    end

end
--恢复角色速度上限
function Player:resumeVelocLimit()
    if self:isInState(PLAYER_STATE.Scale) then
        self.m_body:setVelocityLimit(Speed_Max*0.5)
    else
        self.m_body:setVelocityLimit(Speed_Max)
    end
end

--用于本类调用设置刚体速度 
function Player:setBodyVelocity(_vec)
    if tolua.isnull(self.m_body) or self:isDead() then
		return
	end
    local _limit = self.m_body:getVelocityLimit()
    if _limit > 0 then
        self.m_body:setVelocity(_vec)
    end
end

--销毁生物
--_isDoor：是否碰到结算门而销毁角色
function Player:dispose(_isDoor)
--    AudioManager.clear(AudioManager.Sound_Effect_Type.Player_Normal_Step)
--    AudioManager.clear(AudioManager.Sound_Effect_Type.Player_Big_Sound)

    transition.stopTarget(self)

--    GameDispatcher:removeListenerByName(EventNames.EVENT_PLAYER_DEAD)

    if self.m_body then
        self.m_body:removeFromWorld()
    end

--    if self.ImmortalHandler then
--        Scheduler.unscheduleGlobal(self.ImmortalHandler)
--        self.ImmortalHandler=nil
--    end
    

    GameController.stopDetect()

    self.super.dispose(self)
end

return Player