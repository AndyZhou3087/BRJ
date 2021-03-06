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


Player._FILTERS = {

        -- custom
        {"CUSTOM"},

        -- {"CUSTOM", json.encode({frag = "Shaders/example_Flower.fsh",
        --                  center = {display.cx, display.cy},
        --                  resolution = {480, 320}})},

        {{"CUSTOM", "CUSTOM"},
            {json.encode({frag = "Shaders/example_Blur.fsh",
                shaderName = "blurShader",
                resolution = {480,320},
                blurRadius = 10,
                sampleNum = 5}),
            json.encode({frag = "Shaders/example_sepia.fsh",
                shaderName = "sepiaShader",})}},

        -- colors
        {"GRAY",{0.2, 0.3, 0.5, 0.1}},
        {"RGB",{1, 0.5, 0.3}},
        {"HUE", {90}},
        {"BRIGHTNESS", {0.3}},
        {"SATURATION", {0}},
        {"CONTRAST", {2}},
        {"EXPOSURE", {2}},
        {"GAMMA", {2}},
        {"HAZE", {0.1, 0.2}},
        --{"SEPIA", {}},
        -- blurs
        {"GAUSSIAN_VBLUR", {7}},
        {"GAUSSIAN_HBLUR", {7}},
        {"ZOOM_BLUR", {4, 0.7, 0.7}},
        {"MOTION_BLUR", {5, 135}},
        -- others
        {"SHARPEN", {1, 1}},
        {{"GRAY", "GAUSSIAN_VBLUR", "GAUSSIAN_HBLUR"}, {nil, {10}, {10}}},
        {{"BRIGHTNESS", "CONTRAST"}, {{0.1}, {4}}},
        {{"HUE", "SATURATION", "BRIGHTNESS"}, {{240}, {1.5}, {-0.4}}},
}


---人物类
function Player:ctor()
    Player.super.ctor(self)
    self.m_vo = GameDataManager.getPlayerVo()
    self.m_buffArr = {} --buff列表
    self.phantomCount = 0

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
        self.m_armature = display.newSprite(res):addTo(self)
--        self:_showFilter(res)
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

end


function Player:_showFilter(res)
    if self._filterSprite then
        self._filterSprite:removeSelf()
        self._filterSprite = nil
    end
    local __curFilter = Player._FILTERS[12]
    local __filters, __params = unpack(__curFilter)
    if __params and #__params == 0 then
        __params = nil
    end
    self.m_armature = display.newFilteredSprite(res, __filters, __params)
--        :align(display.CENTER, display.cx, display.cy)
        :addTo(self)

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

--上跳状态
function Player:toJump(ty,isRunning)
    self.m_jump = true
--    Tools.printDebug("---------------hehehahi------------",isTwoJump)
    if isRunning ~= MAPROOM_TYPE.Running then
        self.m_body:setCollisionBitmask(0x06)
        self:setGravityEnable(false)
        self:stopAllActions()
        self:createModle(self.m_jumpModle)
        local x,y = self:getPosition()
        local move = cc.MoveBy:create(0.2,cc.p(0,ty-y+self.m_size.width*0.5+50))
        local move2 = cc.MoveBy:create(0.1,cc.p(0,-20))
        local easeOut = cc.EaseCubicActionOut:create(move)
        local easeIn = cc.EaseCubicActionIn:create(move2)
        local callfunc = cc.CallFunc:create(function()
            self:toStopJump()
        end)
        local seq = cc.Sequence:create(easeOut,easeIn,callfunc)
        self:runAction(seq)
    else
        self.m_body:setCollisionBitmask(0x06)
        self:setGravityEnable(false)
        self:stopAllActions()
        self:createModle(self.m_jumpModle)
        local x,y = self:getPosition()
        local move = cc.MoveTo:create(0.3,cc.p(x,ty+self.m_size.width*0.5+30))
        local easeOut = cc.EaseCubicActionOut:create(move)
        local callfunc = cc.CallFunc:create(function()
            self:toStopJump()
        end)
        local seq = cc.Sequence:create(easeOut,callfunc)
        self:runAction(seq)
    end

    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Jump_Sound)
end

function Player:toStopJump()
    self:stopAllActions()
    self.m_body:setCollisionBitmask(0x03)
    self:setGravityEnable(true)
    self.m_jump = false
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
    if self:isInState(PLAYER_STATE.Rocket) then
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
    
--    local limit = parameters.data.limit
--    if self.phantomCount >= limit then
--    	return
--    end
--    self.phantomCount = self.phantomCount + 1
--    if not tolua.isnull(self:getParent()) then
--        self:getParent():setPhantom(self.phantomCount)
--    end
end

--冲刺火箭
function Player:springRocket(parameters)
    if self:isInState(PLAYER_STATE.Rocket) then
        return
    end
    
    if self:getJump() then
        self:toStopJump()
    end
    
    local speed = parameters.data.speed
    self:addBuff({type=PLAYER_STATE.Rocket})

    local camera,floorPos,curFloor,dis,curRoomKey
    if not tolua.isnull(self:getParent()) then
        self:getParent():setRocket()
        camera,floorPos,curFloor,dis,curRoomKey = self:getParent():getRocketData()
    end
    local curCloseFloor = math.ceil(curFloor/10)*10
    local roomNextType = self:getParent():getRoomByIdx(curCloseFloor+1):getCurRoomType()
    local roomType = self:getParent():getRoomByIdx(curFloor):getCurRoomType()
    self.toRocketState = 0

    Tools.printDebug("----------brj 跳房子 火箭冲刺：",curFloor,curCloseFloor+10)
    
    self.m_armature:setVisible(false)
    self:toRocket()
    if roomType ~= MAPROOM_TYPE.Running and roomNextType ~= MAPROOM_TYPE.Running then
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
        self:getParent():toRocketRunningLogic(self.toRocketState)
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
        self:getParent():toRocketRunningLogic(self.toRocketState,curRoomKey)
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

function Player:toStopRocket()
    self:clearBuff(PLAYER_STATE.Rocket)
end

function Player:getRocketState()
	return self.toRocketState
end

--角色复活
function Player:relive(parameters)
    
end

--角色死亡
function Player:selfDead()
    if self:isInState(PLAYER_STATE.Rocket) then
        return
    end
    self.m_vo.m_lifeNum = self.m_vo.m_lifeNum - 1
    Tools.printDebug("--------brj 角色死亡：",self.m_vo.m_lifeNum)
    if not self.m_isDead and self.m_vo.m_lifeNum <= 0 then
        self.m_isDead = true
        if GameDataManager.getPoints() <= 20 then
--            Tools.printDebug("--------brj 角色死亡：")
            if GameDataManager.getPoints()>=GameDataManager.getRecord() then
                GameDataManager.saveRecord(GameDataManager.getPoints())
            end
            --低于20层回到起点
            if not tolua.isnull(self:getParent()) then
                self:getParent():backOriginFunc()
            end
        else
            self:stopAllActions()
            self.m_armature:stopAllActions()
            --弹出结算界面
            GameDispatcher:dispatch(EventNames.EVENT_OPEN_SETTLEMENT) 
        end
    end
end

function Player:setDeadReback()
    self.m_isDead = false
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
    self.phantomCount = 0
    if not tolua.isnull(self:getParent()) then
    	self:getParent():resetPhantom()
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
            if not tolua.isnull(self:getParent()) then
                self:getParent():setRocketVisible()
            end
--            if not tolua.isnull(self.m_rocket) then
--                self.m_rocket:dispose(true)
--            end
            if self.m_armature then
                self.m_armature:setVisible(true)
            end
            self.m_body:setCollisionBitmask(0x03)
            self.m_body:setGravityEnable(true)
            self:resumeVelocLimit()
            self:setBodyVelocity(cc.p(self.m_stopVec.x,0))
            self.m_speed = self.m_stopSpeed
        elseif _type == PLAYER_STATE.Phantom then
            if not tolua.isnull(self:getParent()) then
                self:getParent():setPhantomShow(false)
            end
            if self.phantomHandler then
                Scheduler.unscheduleGlobal(self.phantomHandler)
                self.phantomHandler=nil
            end
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
    

    GameController.stopDetect()

    self.super.dispose(self)
end

return Player