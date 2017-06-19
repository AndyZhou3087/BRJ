--[[
地图层
]]
local MapRoom = require("game.view.map.MapRoom")
local Player = require("game.view.element.Player")
local Scheduler = require("framework.scheduler")
local SpecialElement = require("game.view.element.SpecialElement")
local BackGroundMove = require("game.view.map.BackGroundMove")
local LineElement = require("game.view.element.LineElement")

local Raycast_DisY = 20  --探测距离

--滑动类型
local Slide_Type=
    {
        Slide_Up = 1,
        Slide_Down = 2,
        Slide_Left = 3,
        Slide_Right = 4
    }

local MapLayer = class("MapLayer",function()
    local pLayer = cc.Layer:create()
    return pLayer
end)

function MapLayer:ctor(parameters)

    self.m_chaceRooms = {}  --房间缓存数组
    GameController.setRooms(self.m_chaceRooms)
    self.jumpFloorNum = 1
    self.backOrigin = false
    self.floorPos = {}
    self.roomArr = {}
    self.specialBody = {}
    
    self.m_curZOrder = MAP_ZORDER_MAX   --房间当前显示层级
    
    local color = SceneConfig[GameDataManager.getFightScene()].bgColor
--    self.bg = cc.LayerGradient:create(color[1],color[2]):addTo(self)
    self.bg = display.newColorLayer(color[1]):addTo(self)
    self.bg:setTouchEnabled(false)
    self.bg:setTouchSwallowEnabled(false)
    
    self.bgNode = display.newNode()
    self.bgNode:setTouchEnabled(false)
    self.bgNode:setTouchSwallowEnabled(false)
    self:addChild(self.bgNode)
    self.m_backbg = BackGroundMove.new(GameDataManager.getFightScene()):addTo(self.bgNode)
    self.m_backbgLeft = BackGroundMove.new(GameDataManager.getFightScene()):addTo(self.bgNode)
    self.m_backbgLeft:setPositionX(-display.width)
    self.m_backbgRight = BackGroundMove.new(GameDataManager.getFightScene()):addTo(self.bgNode)
    self.m_backbgRight:setPositionX(display.right)
    
    self.m_bg = display.newSprite("map/Scene_"..GameDataManager.getFightScene().."/Map_frame_2.png")
    self.bottomHeight = self.m_bg:getCascadeBoundingBox().size.height

    --房间层
    self.m_roomNode = display.newNode()
    self.m_roomNode:setTouchEnabled(false)
    self.m_roomNode:setTouchSwallowEnabled(false)
    self:addChild(self.m_roomNode)

    self:initRooms()

    self.m_camera = cc.Camera:createOrthographic(display.width,display.height,0,1)
    self.m_camera:setCameraFlag(cc.CameraFlag.USER1)
    self:addChild(self.m_camera)
    self.m_camera:setPosition3D(cc.vec3(0, 0, 0))
--    Tools.printDebug("-------brj 摄像机初始坐标：",self.m_camera:getPosition())

    self.m_player = Player.new()
    self:addChild(self.m_player,MAP_ZORDER_MAX+1)
    local floorPos = self.floorPos[self.jumpFloorNum]
    local _size = self.m_player:getSize()
    self.m_player:setPosition(cc.p(floorPos.x+100,floorPos.y+_size.width*0.5+27))
    GameController.setCurPlayer(self.m_player)

    self:setCameraMask(2)

--    self.m_isMoving = false
--    self.m_isDown = false
--    self.m_isUp = false


    --20层以内死亡重新回到起点
--    GameDispatcher:addListener(EventNames.EVENT_BACK_ORIGIN,handler(self,self.backOriginFunc))

end

--触摸
local lastTouchTime = 0
function MapLayer:touchFunc(event)
    if tolua.isnull(self.m_player) or self.m_player:isDead() then
        return true
    end
--    Tools.printDebug("-----------------------------self.backOrigin  ",self.backOrigin)
    if self.backOrigin then
    	return true
    end
    if event.name == "began" then
        if (Tools.getSysTime()-lastTouchTime)>=Sequent_Click_Time then
            self.jumpFloorNum = self.jumpFloorNum + 1
            GameDataManager.addPoints(1)
            self:toJump()
            Tools.printDebug("brj 楼梯: ",self.jumpFloorNum)
            self:addNewRooms()
        end
        return true
    elseif event.name == "ended" then
        lastTouchTime = Tools.getSysTime()
    elseif event.name == "moved" then
        
    end
    return true
end

--进入地图就创建的房间需要调整对应刚体位置,即需传第三个参数为true(room:initPosition(_x,_y,true))
function MapLayer:initRooms(parameters)
    self.m_roomsNum = 0
    self._x = 0
    local _y = self.bottomHeight - Room_Size.height
    for k=1, MAP_ROOM_INIT_NUM*0.1 do
        --控制随机数种子
        if k > 2 then
            local i = GameDataManager.getDataIdByWeight()
            self.m_levelCon = MapGroupConfig[i]
        else
            self.m_levelCon = MapGroupConfig[1]
        end 
        self.curRooms = self.m_levelCon.roomBgs

        if self.m_levelCon then
            self.m_rooms = self.curRooms
            self.m_roomAmount=#self.m_rooms
            self.m_roomsNum = self.m_roomsNum + self.m_roomAmount
        else
            Tools.printDebug("brj error 找不到配置",i)
            return
        end

        for var=1, self.m_roomAmount do
            Tools.printDebug("brj 初始楼层",var+(k-1)*10)
            local _room = MapRoom.new(var,self.m_levelCon,var+(k-1)*10)
            _room:setAnchorPoint(cc.p(0,0))
            _y = _y + Room_Size.height
            if self.m_levelCon.roomType == MAPROOM_TYPE.Lean then
                self._x = self._x + self.m_levelCon.distance
            end

            self.m_roomNode:addChild(_room,self.m_curZOrder)
            _room:initPosition(self._x,_y,true)
            self.floorPos[var+(k-1)*10] = cc.p(self._x,_y)

            table.insert(self.m_chaceRooms,_room)
            
            --特殊房间楼层的钢架
            if self.m_levelCon.roomType == MAPROOM_TYPE.Special and var == 1 then
                --钢架线
                local line_left = LineElement.new(self.m_levelCon.left)
                self:addChild(line_left,self.m_curZOrder)
                line_left:setAnchorPoint(cc.p(0,1))
                local leftHeight = line_left:getCascadeBoundingBox().size.height
                line_left:setPosition(cc.p(15,leftHeight*9+_y))
                line_left:setScaleY(8.5-(self.m_levelCon.left[1]-1))
                line_left:setCameraMask(2)
                local line_right = LineElement.new(self.m_levelCon.right)
                self:addChild(line_right,self.m_curZOrder)
                line_right:setAnchorPoint(cc.p(0,1))
                line_right:setScaleX(-1)
                local rightHeight = line_right:getCascadeBoundingBox().size.height
                line_right:setPosition(cc.p(display.right-15,rightHeight*9+_y))
                line_right:setScaleY(8.5-(self.m_levelCon.right[1]-1))
                line_right:setCameraMask(2)
                --钢架人
                local steel1 = SpecialElement.new(self.m_levelCon.left,line_left)
                self:addChild(steel1,self.m_curZOrder)
                steel1:setAnchorPoint(cc.p(0,0))
                local size = steel1:getCascadeBoundingBox().size
                local steelY = (self.m_levelCon.left[1]-1)*Room_Size.height
                steel1:setPosition(cc.p(size.width*0.5+5,size.height*0.5+16+_y+steelY))
                local steel2 = SpecialElement.new(self.m_levelCon.right,line_right)
                self:addChild(steel2,self.m_curZOrder)
                steel2:setAnchorPoint(cc.p(0,0))
                steel2:setScaleX(-1)
                local steel2Y = (self.m_levelCon.right[1]-1)*Room_Size.height
                steel2:setPosition(cc.p(display.right-size.width*0.5-5,size.height*0.5+16+_y+steel2Y))
                steel1:setCameraMask(2)
                steel2:setCameraMask(2)
                self.specialBody[math.floor(self.m_roomsNum/10)] = {}
                table.insert(self.specialBody[math.floor(self.m_roomsNum/10)],steel1)
                table.insert(self.specialBody[math.floor(self.m_roomsNum/10)],steel2)
            end
            
            self.m_curZOrder = self.m_curZOrder + 1
            MAP_ZORDER_MAX = self.m_curZOrder
        end
    end
end

--添加新的房间
--此处为动态添加的房间，不需调整刚体位置，即无需传第三个参数(room:initPosition(_x,_y))
function MapLayer:addNewRooms(parameters)
    self._x = self.floorPos[self.m_roomsNum].x
    self.m_roomsNum = self.m_roomsNum + 1
    if self.m_roomsNum % 10 == 1 then
        local i = GameDataManager.getDataIdByWeight()
        self.m_levelCon = MapGroupConfig[i]
        self.roomType = self.m_levelCon.type
        self.floorNum = 0
--        Tools.printDebug("brj --- 随机map： ",i)
    end
    self.floorNum = self.floorNum + 1

    local _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
    local _newRoom
    local _y = 0
    if _oldRoom then
        _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum)
        _y = _oldRoom:getPositionY() + Room_Size.height
        if self.m_levelCon.roomType == MAPROOM_TYPE.Lean then
            self._x = self._x + self.m_levelCon.distance
        end
        self.floorPos[self.m_roomsNum] = cc.p(self._x,_y)
--        Tools.printDebug("brj --- 新楼层： ",self._x,self.m_roomsNum,self.m_levelCon.roomType)
    else
        _newRoom = MapRoom.new(1)
    end
    self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
    _newRoom:initPosition(self._x,_y)
    _newRoom:setCameraMask(2)
    table.insert(self.m_chaceRooms,_newRoom)
    
    --特殊房间楼层的钢架
    if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.floorNum == 1 then
        --钢架线
        local line_left = LineElement.new(self.m_levelCon.left)
        self:addChild(line_left,self.m_curZOrder)
        line_left:setAnchorPoint(cc.p(0,1))
        local leftHeight = line_left:getCascadeBoundingBox().size.height
        line_left:setPosition(cc.p(15,leftHeight*9+_y))
        line_left:setScaleY(8.5-(self.m_levelCon.left[1]-1))
        line_left:setCameraMask(2)
        local line_right = LineElement.new(self.m_levelCon.right)
        self:addChild(line_right,self.m_curZOrder)
        line_right:setAnchorPoint(cc.p(0,1))
        line_right:setScaleX(-1)
        local rightHeight = line_right:getCascadeBoundingBox().size.height
        line_right:setPosition(cc.p(display.right-15,rightHeight*9+_y))
        line_right:setScaleY(8.5-(self.m_levelCon.right[1]-1))
        line_right:setCameraMask(2)
        --钢架人
        local steel1 = SpecialElement.new(self.m_levelCon.left)
        self:addChild(steel1,self.m_curZOrder)
        steel1:setAnchorPoint(cc.p(0,0))
        local size = steel1:getCascadeBoundingBox().size
        local steelY = (self.m_levelCon.left[1]-1)*Room_Size.height
        steel1:setPosition(cc.p(size.width*0.5+5,size.height*0.5+16+_y+steelY))
        local steel2 = SpecialElement.new(self.m_levelCon.right)
        self:addChild(steel2,self.m_curZOrder)
        steel2:setAnchorPoint(cc.p(0,0))
        steel2:setScaleX(-1)
        local steel2Y = (self.m_levelCon.right[1]-1)*Room_Size.height
        steel2:setPosition(cc.p(display.right-size.width*0.5-5,size.height*0.5+16+_y+steel2Y))
        steel1:setCameraMask(2)
        steel2:setCameraMask(2)
        self.specialBody[math.floor(self.m_roomsNum/10)] = {}
        table.insert(self.specialBody[math.floor(self.m_roomsNum/10)],steel1)
        table.insert(self.specialBody[math.floor(self.m_roomsNum/10)],steel2)
    end
    
    self.m_curZOrder = self.m_curZOrder + 1

    if #self.m_chaceRooms > MAP_ROOM_MAX then
        local _room = table.remove(self.m_chaceRooms,1)
        _room:dispose()
    end
end

--销毁特殊刚体
function MapLayer:disposeSpecial(_typeNum)
    if self.specialBody[_typeNum] then
        for key, var in pairs(self.specialBody[_typeNum]) do
            if not tolua.isnull(var) then
                Tools.printDebug("brj 跳房子 ：",_typeNum)
                var:dispose()
            end
        end
        self.specialBody[_typeNum] = {}
    end
end

--帧函数
function MapLayer:onEnterFrame(dt)
    --移动金币
    GameController.attract()
  
    if tolua.isnull(self.m_player) then
        return
    end

    if tolua.isnull(self.m_player.m_body) then
        return
    end

    if self.m_player:isDead() then
        return
    end
    

    local bpx,bpy = self.m_player:getPosition()
    local _size = self.m_player:getSize()
    self.m_player:update(dt,bpx,bpy)
    if not self.m_player:getJump() then
        local floorPos = self.floorPos[self.jumpFloorNum]
        self.m_player:setPosition(cc.p(bpx,floorPos.y+_size.width*0.5+27))
    end
    
    if self.backOrigin then
        local floorPos = self.floorPos[self.jumpFloorNum]
        self.m_player:setPosition(cc.p(bpx,floorPos.y+_size.width*0.5+27))
    end
    
    local x,y = self.m_camera:getPosition()
--    Tools.printDebug("brj  摄像机坐标x：",x,bpx)
    if bpx <= x+Room_Distance.x-_size.width*0.5 then
        self.m_player:selfDead()
    end
    if  bpx >= x+display.width-Room_Distance.x+_size.width*0.5 then
        self.m_player:selfDead()
    end
--    Tools.printDebug("brj   layer  edgePos: ",display.width-Room_Distance.x-17,bpx)
    local _scaleX=self.m_player:getScaleX()
    local vel=self.m_player:getBody():getVelocity()
    self.m_player:setVelocity(cc.p(-_scaleX/math.abs(_scaleX)*self.m_player:getVo().m_speed,vel.y))

    local _body = self.m_player:getBody()
    local _p = _body:getPosition()
    local _veloc = _body:getVelocity()
    local _scaleX = self.m_player:getScaleX()
    local _add = -1*_scaleX/math.abs(_scaleX)  --因为人物默认是向左的，所以乘以-1
    self.m_physicWorld:rayCast(handler(self,self.rayCastFunc),cc.p(_p.x,_p.y),cc.p(_p.x,_p.y-_size.height*0.5-Raycast_DisY))
    
    local roomIndex = math.ceil((self.m_player:getPositionY()-self.bottomHeight)/Room_Size.height)
    if self.m_lastRoomIdx ~= roomIndex then
        local _room = self:getRoomByIdx(roomIndex)
        if _room then
            _room:intoRoom()
        end
        self.m_lastRoomIdx = roomIndex
    end
end

function MapLayer:initPlayerPos(parameters)
    self.m_physicWorld = display.getRunningScene():getPhysicsWorld()
    self:scheduleUpdate()
    self.m_event = cc.EventListenerPhysicsContact:create()
    self.m_event:registerScriptHandler(handler(self,self.collisionBeginCallBack), cc.Handler.EVENT_PHYSICS_CONTACT_BEGIN)
    self:getEventDispatcher():addEventListenerWithFixedPriority(self.m_event,1)
    self:addNodeEventListener(cc.NODE_ENTER_FRAME_EVENT, handler(self, self.onEnterFrame))
end


--碰撞开始触发
function MapLayer:collisionBeginCallBack(parameters)
    if not GameController.getCollsionEnable() then
        return true
    end
    
    if self.m_player:isDead() then
        return false
    end
    
    if self.backOrigin then
        return true
    end

    local conData = parameters:getContactData()
    local bodyA = parameters:getShapeA():getBody()
    local bodyB = parameters:getShapeB():getBody()
    local tagA = bodyA:getTag()
    local tagB = bodyB:getTag()
    --    Tools.printDebug("chjh beginCallBack bodyA,bodyB",tostring(bodyA),tostring(bodyB))
    local player,playerBP,playerTag,_size,playerBody
    local obstacle,obstacleBP,obstacleTag,obstacleBody
    local obstacleS,obstacleScale
    local obstacleOff

    if tagA == ELEMENT_TAG.PLAYER_TAG then
        player = bodyA:getNode()
        playerBP = bodyA:getPosition()
        playerTag = tagA
        playerBody = bodyA

        obstacle = bodyB:getNode()
        obstacleBP = bodyB:getPosition()
        obstacleTag = tagB
        obstacleBody = bodyB

        obstacleOff=parameters:getShapeB():getOffset()
    end
    if tagB == ELEMENT_TAG.PLAYER_TAG then
        player = bodyB:getNode()
        playerBP = bodyB:getPosition()
        playerTag = tagB
        playerBody = bodyB

        obstacle = bodyA:getNode()
        obstacleBP = bodyA:getPosition()
        obstacleTag = tagA
        obstacleBody = bodyA

        obstacleOff=parameters:getShapeA():getOffset()
    end
    if tolua.isnull(bodyA) or tolua.isnull(bodyB) then
        return true
    end
    
    local _x = -1
    local _scaleX = player:getScaleX()
    if conData.normal.x < 0 then
        _x = -1
    else
        _x = 1
    end
    if obstacleTag==ELEMENT_TAG.WALLLEFT or obstacleTag==ELEMENT_TAG.WALLRIGHT or obstacleTag==ELEMENT_TAG.SPECIAL_TAG then
       if not tolua.isnull(obstacle) then
            local vel=self.m_player:getBody():getVelocity()
            local _size = self.m_player:getSize()
--            Tools.printDebug("brj   -----  x: ",playerBP.x+_size.width*0.5,obstacleBP.x)
            if playerBP.x+_size.width*0.5<obstacleBP.x then
                player:setVelocity(cc.p(self.m_player:getVo().m_speed,vel.y))
                player:setScaleX(math.abs(_scaleX))
            else
                player:setVelocity(cc.p(-self.m_player:getVo().m_speed,vel.y))
                player:setScaleX(-math.abs(_scaleX))
            end
       end
       if obstacleTag==ELEMENT_TAG.SPECIAL_TAG then
            if not tolua.isnull(obstacle) then
            	obstacle:collision()
            end
       end
    elseif obstacleTag == ELEMENT_TAG.GOOD_TAG then
        if not tolua.isnull(obstacle) then
            obstacle:collision()
        end
    end

    return true
end

--碰撞反射，从人物中心向下或向上发射一个比自身一半多 Raycast_DisY 像素的探测射线，进行检测有无障碍物
function MapLayer:rayCastFunc(_world,_p1,_p2,_p3)
    if self.m_player:isDead() then
        return false
    end
    
    if self.backOrigin then
        return true
    end

    local _body = _p1.shape:getBody()
    local _bnode = _body:getNode()
    local _tag = _body:getTag()
    local _vo = self.m_player:getVo()
    local _hitP = cc.p(_p1.ended.x,_p1.ended.y)

    if tolua.isnull(_bnode) then
        return false
    end
    if _tag==ELEMENT_TAG.PLAYER_TAG then
        return true
    end

    return true
end
--
function MapLayer:rayCastFuncX(_world,_p1,_p2,_p3)
    if self.m_player:isDead() then
        return false
    end
    
    if self.backOrigin then
        return true
    end

    local _body = _p1.shape:getBody()
    local _bnode = _body:getNode()
    local _tag = _body:getTag()
    local _scaleX = self.m_player:getScaleX()
    local playerBP=self.m_player:getBody():getPosition()
    local obstacleBP=_body:getPosition()
    local att=self.m_player:getAtt()
    
    if (not _bnode) or _tag==ELEMENT_TAG.PLAYER_TAG then
        return true
    end

    return true
end

--根据房间编号从缓存中获取房间对象
function MapLayer:getRoomByIdx(_roomIndx)
    for key, var in pairs(self.m_chaceRooms) do
        if var:getRoomIndex() == _roomIndx then
            return var
        end
    end
end

--进行弹跳
function MapLayer:toJump()

    --摄像机移动
    local pos = self.floorPos[self.jumpFloorNum]
    self.m_camera:stopAllActions()
    local move = cc.MoveTo:create(0.3,cc.p(pos.x,pos.y-self.bottomHeight))
    self.m_camera:runAction(move)
    self.bgNode:stopAllActions()
    local move2 = cc.MoveTo:create(0.3,cc.p(pos.x-pos.x*0.05,pos.y-self.bottomHeight-pos.y*0.05))
    self.bgNode:runAction(move2)
    self.bg:stopAllActions()
    local move3 = cc.MoveTo:create(0.3,cc.p(pos.x,pos.y-self.bottomHeight))
    self.bg:runAction(move3)

    self.m_player:toJump(pos.y)

end

--回到起始点
function MapLayer:backOriginFunc()
    self.backOrigin = true
    GameDataManager.resetPoints()
    GameDataManager.resetGameDiamond()
    local removeCount = 0
    if #self.m_chaceRooms > MAP_ROOM_INIT_NUM then
        removeCount = #self.m_chaceRooms - MAP_ROOM_INIT_NUM
        self.m_roomsNum = self.m_roomsNum - removeCount
    end
    for var=1, removeCount do
        local _room = table.remove(self.m_chaceRooms,#self.m_chaceRooms)
        _room:dispose()
    end
    self.jumpFloorNum = 1
    local _size = self.m_player:getSize()
    local floorPos = self.floorPos[self.jumpFloorNum]
    self.m_player:addLifeNum(1)
    self.m_player:setPosition(cc.p(100,self.bottomHeight+_size.width*0.5+27))
    
    self.m_camera:stopAllActions()
    local move = cc.MoveTo:create(0.5,cc.p(0,0))
    self.m_camera:runAction(move)
    
    self.bgNode:stopAllActions()
    local move2 = cc.MoveTo:create(0.5,cc.p(0,0))
    self.bgNode:runAction(move2)
    
    Tools.delayCallFunc(1,function()
        self.backOrigin = false
    end)
    Tools.printDebug("----------brj 摄像机坐标：",self.m_camera:getPosition())

end


--震屏
function MapLayer:toShake(_num)
    self.m_isShake = true
    _num = _num or 20
    local m1 = cc.MoveBy:create(0.02,cc.p(10,0))
    local m2 = cc.MoveBy:create(0.04,cc.p(-20,0))
    local m3 = cc.MoveBy:create(0.01,cc.p(5,0))
    local m4 = cc.MoveBy:create(0.02,cc.p(10,0))
    local m5 = cc.MoveBy:create(0.01,cc.p(-5,0))
    local comFunc = cc.CallFunc:create(function()
        _num = _num - 1
        if _num>0 then
            self:toShake(_num)
        else
            self.m_isShake = false
        end
    end)
    local seq = cc.Sequence:create(m1,m2,m3,m4,m5,comFunc)
    self.m_camera:runAction(seq)
end

function MapLayer:stopToShake(parameters)
    if self.m_isShake then
        self.m_isShake = false
        self.m_camera:stopAllActions()
        self.m_camera:setPositionX(0)
    end
end


--地图销毁
function MapLayer:dispose(parameters)
    --移除碰撞事件
    self:getEventDispatcher():removeEventListener(self.m_event)
    --移除帧事件
    self:removeNodeEventListenersByEvent(cc.NODE_ENTER_FRAME_EVENT)
    --移除其它事件
--    GameDispatcher:removeListenerByName(EventNames.EVENT_BACK_ORIGIN)


    if self.m_player then
        self.m_player:dispose()
    end

    for key, var in ipairs(self.m_chaceRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in pairs(self.specialBody) do
    	for k, v in pairs(var) do
    		if not tolua.isnull(v) then
    			v:dispose()
    		end
    	end
    end

    GameDataManager.resetPoints()
    GameDataManager.resetGameDiamond()
    
    GameController.clearRooms()
    GameController.clearBody()
    self:removeFromParent(true)
end

return MapLayer