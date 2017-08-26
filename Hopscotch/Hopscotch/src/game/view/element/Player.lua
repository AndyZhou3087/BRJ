local LiveThing = import(".LiveThing")
local Player = class("Player", LiveThing)

local BuffState = require("game.view.element.BuffState")
local PhysicSprite = require("game.custom.PhysicSprite")
local Scheduler = require("framework.scheduler")
local RocketElement = require("game.view.element.RocketElement")

local MASS = 0
local DENSITY = 0   --密度
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
    self.m_speed = MAP_SPEED.floor_D

    self.m_jump = false

    self.m_curModle = GameDataManager.getFightRole()
    local modle = RoleConfig[self.m_curModle].armatureName
    local res = RoleConfig[self.m_curModle].roleImg
    local jump = RoleConfig[self.m_curModle].jumpName
    local p_size
    if modle then
        self.m_modle=modle
        self.m_jumpModle = jump
        self.m_armature = display.newSprite(res)
        self:addChild(self.m_armature,1)
        self:createModle(modle)
        self.m_armature:setScale(0.45)
        if self.m_curModle == 1 or self.m_curModle == 7 then
            p_size = cc.size(50,75)
            self.errorValue = 15
        else
            p_size = cc.size(45,65)
            self.errorValue = 15
        end
    else
        self.m_armature = PhysicSprite.new(res):addTo(self)
        self.m_armature:setScale(0.45)
        p_size = self.m_armature:getCascadeBoundingBox().size
    end
    self:addBody(cc.p(0,0),p_size)
    
    self.jumpSack = display.newSprite("ui/jumpsack.png")
    self:addChild(self.jumpSack,0)
    self.jumpSack:setPosition(cc.p(0,50))
    self.jumpSack:setVisible(false)
    
    --迟钝药水
    GameDispatcher:addListener(EventNames.EVENT_SLOWLY,handler(self,self.slowly))
    --获得1代币
    GameDispatcher:addListener(EventNames.EVENT_GET_TOKEN,handler(self,self.getToken))
    --吸铁石
    GameDispatcher:addListener(EventNames.EVENT_USE_MAGNET,handler(self,self.magnet))
    --幻影药水
    GameDispatcher:addListener(EventNames.EVENT_USE_PHANTOM,handler(self,self.phantom))
    --冲刺火箭
    GameDispatcher:addListener(EventNames.EVENT_SPRING_ROCKET,handler(self,self.springRocket))
    --看视频或花费钻石开局冲刺
    GameDispatcher:addListener(EventNames.EVENT_START_ROCKET,handler(self,self.startRocket))
    --复活
    GameDispatcher:addListener(EventNames.EVENT_ROLE_REVIVE,handler(self,self.relive))
    
    --跳跃次数
    self.jumpCount = 1

end


--创建人物模型动画
function Player:createModle(_actionName)
    local animation = cc.AnimationCache:getInstance():getAnimation(_actionName)
    local animate = cc.Animate:create(animation)
    local seq = cc.RepeatForever:create(animate)
    self.m_armature:runAction(seq)
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
    self.m_body:setCategoryBitmask(0x03)
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

--上跳状态【先解决第一个版本问题，后续版本还要再改】
function Player:toJump(pos,isRunning)
    self.curFloorPos = pos
    
    self.checkPos = false
    self:setPositionY(pos.y+self.m_size.height*0.5+self.errorValue)--1、改动处
--    self.jumpPro = self.m_jump
    self:toStartJump()
    local x,y = self:getPosition()

    local _vec = self.m_body:getVelocity()
    self:setBodyVelocity(cc.p(_vec.x,0))
    local _scaleX=self:getScaleX()
    if _scaleX<0 then
        _vec.x=self.m_vo.m_speed
    else
        _vec.x=-self.m_vo.m_speed
    end
--    if not self.jumpPro then
        self:setBodyVelocity(cc.p(_vec.x,260))
        self.jumpHandler = Tools.delayCallFunc(RoleJumpCameraMoveTime,function()
            --        self.checkHandler = Tools.delayCallFunc(0.01,function()
            --            self:setPositionY(pos.y+self.m_size.height*0.5+self.errorValue)
            self.checkPos = true
            --        end)
            self:toStopJump()
        end)
--    else
--        self:setBodyVelocity(cc.p(_vec.x,180))
--        self.jumpHandler = Tools.delayCallFunc(0.13,function()
--            --        self.checkHandler = Tools.delayCallFunc(0.01,function()
--            --            self:setPositionY(pos.y+self.m_size.height*0.5+self.errorValue)
--            self.checkPos = true
--            --        end)
--            self:toStopJump()
--        end)
--    end
    
    
    self.jumpCount = self.jumpCount+1
    Tools.printDebug("--------------------------------------跳跃坐标：",self:getPositionY())

    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Jump_Sound)
end

function Player:toStartJump()
    if self.checkHandler then
        Scheduler.unscheduleGlobal(self.checkHandler)
        self.checkHandler=nil
    end
    if self.jumpHandler then
        Scheduler.unscheduleGlobal(self.jumpHandler)
        self.jumpHandler=nil
    end
    self.m_body:setCollisionBitmask(0x06)
--    if self.jumpPro then
--        self:setGravityEnable(false)
--    end
    self:stopAllActions()
    self:createModle(self.m_jumpModle)
    self.m_jump = true
end

function Player:toStopJump()
    if self.jumpHandler then
        Scheduler.unscheduleGlobal(self.jumpHandler)
        self.jumpHandler=nil
    end
    self.m_jump = false
    self.m_body:setCollisionBitmask(0x03)
    self:setGravityEnable(true)
    local _vec = self.m_body:getVelocity()
    self:setBodyVelocity(cc.p(_vec.x,0))
    self:stopAllActions()
    self.m_armature:stopAllActions()
    self:createModle(self.m_modle)
end

--帧回调
function Player:update(dt,_x,_y)
    if self.m_isMagnet then
        GameController.detect(self,cc.p(_x,_y),self.m_radius)
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
        _vec.x=self.m_speed
    else
        _vec.x=-self.m_speed
    end
    self:setBodyVelocity(_vec)
    
--    if self.m_jump then
--    	self.curFloorPos
--    end

end

function Player:getArmature(parameters)
    return self.m_armature
end

--迟钝药水
function Player:slowly(parameters)
    if self:isInState(PLAYER_STATE.Slow) then
        self:clearBuff(PLAYER_STATE.Slow)
    end
    
    if self:isInState(PLAYER_STATE.Rocket) then
        return
    end

    local _time = parameters.data.time
    local _speed = parameters.data.speed
    
    self.curSpeed = self.m_speed
    self:changeSpeed(_speed)
    
    self:addBuff({type=PLAYER_STATE.Slow,time = _time})
    self.slowHandler = Tools.delayCallFunc(_time,function()
        self:clearBuff(PLAYER_STATE.Slow)
    end)
end

--获得1代币
function Player:getToken(parameters)
    local count = parameters.data.count
    GameDataManager.addDiamond(count)
end

--吸铁石
function Player:magnet(parameters)
    if self:isInState(PLAYER_STATE.Magnet) then
        return
    end
	
    local radius = parameters.data.radius
    local time = parameters.data.time
    self.m_radius = radius
    self.m_isMagnet = true
    self:addBuff({type=PLAYER_STATE.Magnet,time = time})
    self.magnetHandler = Tools.delayCallFunc(time,function()
        self:clearBuff(PLAYER_STATE.Magnet)
    end)
end

--幻影药水
function Player:phantom(parameters)
    if self:isInState(PLAYER_STATE.Rocket) or self:isInState(PLAYER_STATE.StartRocket) then
        return
    end
    
    if self:isInState(PLAYER_STATE.Phantom) then
        return
    end
    
    local time = parameters.data.time
    self:addBuff({type=PLAYER_STATE.Phantom,time = time})
    
    if not tolua.isnull(self:getParent()) then
        self:getParent():setPhantomShow(true)
    end
    
    self.phantomHandler = Tools.delayCallFunc(time,function()
        self:clearBuff(PLAYER_STATE.Phantom)
    end)
    
    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Phantom_Sound,true)
    
end

--开局冲刺
function Player:startRocket(parameters)
    if self:isInState(PLAYER_STATE.Rocket) then
        return
    end
    local floor = math.random(OpenRocketFloor[1]/10,OpenRocketFloor[2]/10)*10
    if not tolua.isnull(self:getParent()) then
        self:getParent():toStartRocket(floor)
    end
    
    self.jumpCount = floor
    
    self:addBuff({type=PLAYER_STATE.StartRocket})
    self.m_armature:setVisible(false)
    self:toRocket()
    self:toStartRocket()
    
    --火箭特效
    self:rocketEffect()
    
    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Rocket_Sound,true)
end

function Player:toStartRocket()
    local moveY = cc.MoveBy:create(0.04,cc.p(0,Room_Size.height))
    local repeatF = cc.RepeatForever:create(moveY)
    self:runAction(repeatF)
end

--冲刺火箭
function Player:springRocket(parameters)
    if self:isInState(PLAYER_STATE.Rocket) then
        return
    end
    
    if self:isInState(PLAYER_STATE.StartRocket) then
        return
    end
    
    if self:isInState(PLAYER_STATE.Phantom) then
        self:addBuff({type=PLAYER_STATE.Phantom})
    end
    
    if self:getJump() then
        self:toStopJump()
    end
    
--    local speed = parameters.data.speed
    self:addBuff({type=PLAYER_STATE.Rocket})

    local camera,floorPos,curFloor,dis,curRoomKey
    if not tolua.isnull(self:getParent()) then
        camera,floorPos,curFloor,dis,curRoomKey = self:getParent():getRocketData()
    end
    local curCloseFloor = math.ceil(curFloor/10)*10
    local roomNextType = self:getParent():getRoomByIdx(curCloseFloor+1):getCurRoomType()
    local roomType = self:getParent():getRoomByIdx(curFloor):getCurRoomType()
    self.toRocketState = 0
    
    self.jumpCount = curCloseFloor+10

    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Rocket_Sound,true)
    Tools.printDebug("----------brj 跳房子 火箭冲刺：",curFloor,curCloseFloor+10)
    
    self.m_armature:setVisible(false)
    self:toRocket()
    if roomType ~= MAPROOM_TYPE.Running and roomNextType ~= MAPROOM_TYPE.Running or (roomType == MAPROOM_TYPE.Running and curFloor>8) then
        local nextCloseFloorX,nextCloseFloorY
        if floorPos[curCloseFloor+10].x then
            nextCloseFloorX = floorPos[curCloseFloor+10].x
            nextCloseFloorY = floorPos[curCloseFloor+10].y
        else
            if self:getScaleX() == 1 then
                nextCloseFloorX = floorPos[curCloseFloor+10][1].x
                nextCloseFloorY = floorPos[curCloseFloor+10][1].y
            else
                nextCloseFloorX = floorPos[curCloseFloor+10][2].x
                nextCloseFloorY = floorPos[curCloseFloor+10][2].y
            end
        end
        self.toRocketState = 1
        local move = cc.MoveTo:create(1,cc.p(nextCloseFloorX+display.cx,nextCloseFloorY+self.m_size.height*0.5+30))
        local callfun = cc.CallFunc:create(function()
            self:toStopRocket()
        end)
        local seq = cc.Sequence:create(move,callfun)
        self:runAction(seq)
    elseif roomNextType == MAPROOM_TYPE.Running then
        local nextCloseFloorX,nextCloseFloorY
        if floorPos[curCloseFloor+10].x then
            nextCloseFloorX = floorPos[curCloseFloor+10].x
            nextCloseFloorY = floorPos[curCloseFloor+10].y
        else
            if self:getScaleX() == 1 then
                nextCloseFloorX = floorPos[curCloseFloor+10][1].x
                nextCloseFloorY = floorPos[curCloseFloor+10][1].y
            else
                nextCloseFloorX = floorPos[curCloseFloor+10][2].x
                nextCloseFloorY = floorPos[curCloseFloor+10][2].y
            end
        end
    
        self.toRocketState = 2
        self:getParent():toRocketRunningLogic(self.toRocketState,self:getScaleX())
        local count = self:getParent():getRoomByIdx(curCloseFloor+1):getRoomsCount()
        local time = (10-curFloor%10+1)*1/10
        local time2 = count/10*1.5
        local move = cc.MoveTo:create(time,cc.p(floorPos[curCloseFloor].x+display.cx,floorPos[curCloseFloor].y+self.m_size.height*0.5+30))
        local move2 = cc.MoveTo:create(time2,cc.p(nextCloseFloorX+display.cx,nextCloseFloorY+self.m_size.height*0.5+30))
        local callfun = cc.CallFunc:create(function()
            self:toStopRocket()
        end)
        local seq = cc.Sequence:create(move,move2,callfun)
        self:runAction(seq)
    elseif roomType == MAPROOM_TYPE.Running then
        local curCloseFloorX,curCloseFloorY
        if floorPos[curCloseFloor].x then
            curCloseFloorX = floorPos[curCloseFloor].x
            curCloseFloorY = floorPos[curCloseFloor].y
        else
            if self:getScaleX() == 1 then
                curCloseFloorX = floorPos[curCloseFloor][1].x
                curCloseFloorY = floorPos[curCloseFloor][1].y
            else
                curCloseFloorX = floorPos[curCloseFloor][2].x
                curCloseFloorY = floorPos[curCloseFloor][2].y
            end
        end
        self.toRocketState = 3
        self:getParent():toRocketRunningLogic(self.toRocketState,self:getScaleX(),curRoomKey)
        local count = self:getParent():getRoomByIdx(curFloor):getRoomsCount()
        local time = (count-curRoomKey)*1/10
        local time2 = 1
        local move = cc.MoveTo:create(time,cc.p(curCloseFloorX+display.cx,curCloseFloorY+self.m_size.height*0.5+30))
        local move2 = cc.MoveTo:create(time2,cc.p(floorPos[curCloseFloor+10].x+display.cx,floorPos[curCloseFloor+10].y+self.m_size.height*0.5+30))
        local callfun = cc.CallFunc:create(function()
            self:toStopRocket()
        end)
        local seq = cc.Sequence:create(move,move2,callfun)
        self:runAction(seq)
    end
 
    --火箭特效
    self:rocketEffect()
end

function Player:rocketEffect()
    if not tolua.isnull(self:getParent()) then
        self.m_rocketEffect = RocketElement.new():addTo(self:getParent())
--        local pos = self:getParent():convertToNodeSpace(cc.p(self:getPosition()))
--        self.m_rocketEffect:setPosition(cc.p(pos))
        self.m_rocketEffect:setPosition(cc.p(display.cx,display.cy-200))
        self.m_rocketEffect:setCameraMask(2)
        self:getParent():setRocketObj(self.m_rocketEffect)
    end
end

--火箭
function Player:toRocket()
    self.m_body:setCollisionBitmask(0x06)
    self.m_body:setVelocityLimit(0)
    self.m_stopVec = self.m_body:getVelocity()
    self.m_body:setVelocity(cc.p(0,0))
    self.m_body:setGravityEnable(false)
    self.m_stopSpeed = self.m_speed
    self.m_speed = 0
end

function Player:toStopStartRocket()
    self:clearBuff(PLAYER_STATE.StartRocket)
end

function Player:toStopRocket()
    self:clearBuff(PLAYER_STATE.Rocket)
end

function Player:getRocketState()
	return self.toRocketState
end

--角色复活
function Player:relive(parameters)
    GameController.resumeGame()
    self:createModle(self.m_modle)
    self.m_isDead = false
    self.m_body:setCollisionBitmask(0x03)
    self:addLifeNum(1)
    local camera,floorPos,curFloor,dis,curRoomKey
    if not tolua.isnull(self:getParent()) then
        camera,floorPos,curFloor,dis,curRoomKey = self:getParent():getRocketData()
    end
    local pos
    if floorPos[curFloor].x then
        pos = floorPos[curFloor]
    else
        if self:getScaleX() == 1 then
            pos = floorPos[curFloor][1]
        else
            pos = floorPos[curFloor][2]
        end
    end
    self:setPosition(cc.p(pos.x+display.cx,pos.y))
    self:clearAllBuff()
    self:springRocket()
    
    self.jumpSack:setVisible(false)
--    if not tolua.isnull(self.jumpSack) then
--    	self.jumpSack:removeFromParent()
--    	self.jumpSack = nil
--    end
end

--角色死亡
function Player:selfDead()
    if self:isInState(PLAYER_STATE.Rocket) then
        return
    end
    if self:isInState(PLAYER_STATE.StartRocket) then
    	return
    end
    if not self.m_armature:isVisible() then
        return
    end
    
    self.jumpSack:setVisible(true)
    self.m_body:setCollisionBitmask(0x04)
    self.m_vo.m_lifeNum = self.m_vo.m_lifeNum - 1
    Tools.printDebug("--------brj 角色死亡：",self.m_vo.m_lifeNum)
    if not self.m_isDead and self.m_vo.m_lifeNum <= 0 then
        self.m_isDead = true
        if GameDataManager.getPoints() <= 20 then
            AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Dead_Sound)
            Tools.delayCallFunc(0.5,function()
--                Tools.printDebug("--------brj 角色死亡：")
                if GameDataManager.getPoints()>=GameDataManager.getRecord() then
                    GameDataManager.saveRecord(GameDataManager.getPoints())
                end
                --低于20层回到起点
                if not tolua.isnull(self:getParent()) then
                    self:getParent():backOriginFunc()
                end
                self.m_body:setCollisionBitmask(0x03)
                self.jumpSack:setVisible(false)
                self.jumpCount = 1
            end)
        else
            AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.GameOver_Sound)
            self:stopAllActions()
            self.m_armature:stopAllActions()
            
            if GameDataManager.getRevive() then
                --弹结算
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_SETTLEMENT)
            else
                --复活
                GameDispatcher:dispatch(EventNames.EVENT_REVIVE_VIEW)
            end
        end
    end
end

function Player:setDeadReback()
    self.m_isDead = false
end

--获取跳跃次数
function Player:getJumpCount()
    return self.jumpCount
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
    Tools.printDebug("------------------brj 添加生命：",_count,self.m_vo.m_lifeNum)
end

--改变速度
function Player:changeSpeed(_speed)
    self.m_speed = _speed
    if self.m_stopSpeed then
        self.m_stopSpeed = self.m_speed
    end
end

--清除所有buff
function Player:clearAllBuff()
    --清除所有buff
    for var=#self.m_buffArr,1,-1  do
        local _buff = self.m_buffArr[var]
        if _buff then
            self:clearBuff(_buff:getType())
        end
    end
    self.m_buffArr = {}

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
        if _type==PLAYER_STATE.Slow then
            if self.slowHandler then
                Scheduler.unscheduleGlobal(self.slowHandler)
                self.slowHandler=nil
            end
            if self.curSpeed then
                self:changeSpeed(self.curSpeed)
            end
        elseif _type == PLAYER_STATE.Magnet then
            self.m_isMagnet = false
            if self.magnetHandler then
                Scheduler.unscheduleGlobal(self.magnetHandler)
                self.magnetHandler=nil
            end
        elseif _type == PLAYER_STATE.Rocket then
            self.toRocketState = 0
            transition.stopTarget(self)

            if not tolua.isnull(self.m_rocketEffect) then
                self.m_rocketEffect:removeFromParent(true)
            end
--            self:rocketMoveLittle()
            if not tolua.isnull(self:getParent()) then
                self:getParent():setRocketObj(nil)
            end
            if self.m_armature then
                self.m_armature:setVisible(true)
            end
            self.m_body:setCollisionBitmask(0x03)
            self.m_body:setGravityEnable(true)
            self:resumeVelocLimit()
            self:setBodyVelocity(cc.p(self.m_stopVec.x,0))
            self.m_speed = self.m_stopSpeed
            
            AudioManager.stopSoundEffect(AudioManager.Sound_Effect_Type.Rocket_Sound)
        elseif _type == PLAYER_STATE.StartRocket then
            transition.stopTarget(self)
            self:stopAllActions()
            if not tolua.isnull(self.m_rocketEffect) then
                self.m_rocketEffect:removeFromParent(true)
            end
--            self:rocketMoveLittle()
            if not tolua.isnull(self:getParent()) then
                self:getParent():setRocketObj(nil)
            end
            if self.m_armature then
                self.m_armature:setVisible(true)
            end
            self.m_body:setCollisionBitmask(0x03)
            self.m_body:setGravityEnable(true)
            self:resumeVelocLimit()
            self:setBodyVelocity(cc.p(self.m_stopVec.x,0))
            self.m_speed = self.m_stopSpeed
            
            AudioManager.stopSoundEffect(AudioManager.Sound_Effect_Type.Rocket_Sound)
        elseif _type == PLAYER_STATE.Phantom then
            if not tolua.isnull(self:getParent()) then
                self:getParent():setPhantomShow(false)
            end
            if self.phantomHandler then
                Scheduler.unscheduleGlobal(self.phantomHandler)
                self.phantomHandler=nil
            end
            AudioManager.stopSoundEffect(AudioManager.Sound_Effect_Type.Phantom_Sound)
        end
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

function Player:getActionVisible()
    return self.m_armature:isVisible()
end

--判断角色是否死亡
function Player:isDead()
--    Tools.printDebug("-------------------角色死亡：",self.m_vo.m_lifeNum)
    return self.m_vo.m_lifeNum<=0
end

--获取角色大小
function Player:getSize()
    return self.m_size
end

--获取角色速度
function Player:getSpeed()
    return self.m_speed
end

--获取跳跃值
function Player:getJump()
	return self.m_jump
end

--获取误差高度
function Player:getErrorValue()
    return self.errorValue
end

--获取可检测坐标标识
function Player:getCheckSign()
    return self.checkPos
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
    self.m_body:setVelocityLimit(Speed_Max)
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
    AudioManager.clear(AudioManager.Sound_Effect_Type.Jump_Sound)
--    AudioManager.clear(AudioManager.Sound_Effect_Type.Player_Big_Sound)

    transition.stopTarget(self)

    GameDispatcher:removeListenerByName(EventNames.EVENT_SLOWLY)
    GameDispatcher:removeListenerByName(EventNames.EVENT_GET_TOKEN)
    GameDispatcher:removeListenerByName(EventNames.EVENT_USE_MAGNET)
    GameDispatcher:removeListenerByName(EventNames.EVENT_USE_PHANTOM)
    GameDispatcher:removeListenerByName(EventNames.EVENT_SPRING_ROCKET)
    GameDispatcher:removeListenerByName(EventNames.EVENT_START_ROCKET)
    GameDispatcher:removeListenerByName(EventNames.EVENT_ROLE_REVIVE)
    

    if self.m_body then
        self.m_body:removeFromWorld()
    end

    if self.slowHandler then
        Scheduler.unscheduleGlobal(self.slowHandler)
        self.slowHandler=nil
    end
    
    if self.magnetHandler then
        Scheduler.unscheduleGlobal(self.magnetHandler)
        self.magnetHandler=nil
    end
    
    if self.phantomHandler then
        Scheduler.unscheduleGlobal(self.phantomHandler)
        self.phantomHandler=nil
    end
    
    if self.jumpHandler then
        Scheduler.unscheduleGlobal(self.jumpHandler)
        self.jumpHandler=nil
    end
    
    if self.checkHandler then
        Scheduler.unscheduleGlobal(self.checkHandler)
        self.checkHandler=nil
    end
    

    GameController.stopDetect()

    self.super.dispose(self)
end

return Player