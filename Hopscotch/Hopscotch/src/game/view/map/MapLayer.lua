--[[
地图层
]]
local MapRoom = require("game.view.map.MapRoom")
--local Player = require("game.view.element.Player")
local Scheduler = require("framework.scheduler")
--local CoinElement=require("game.view.element.CoinElement")
--local DiamondElement=require("game.view.element.DiamondElement")
local BackGroundMove = require("game.view.map.BackGroundMove")

local Normal_Camara_BottomY = 340 --正常摄像机底部界限，超过此值会迅速拉回摄像机
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
    
    self.m_curZOrder = MAP_ZORDER_MAX   --房间当前显示层级
    
--    self.bg = display.newColorLayer(cc.c4b(170,97,140,255)):addTo(self)
--    self.bg = cc.LayerGradient:create():addTo(self)--(cc.c4b(170,97,140,255),cc.c4b(217,210,201,0)):addTo(self)
    
    self.m_backbg = BackGroundMove.new(GameDataManager.getFightScene()):addTo(self)

--    --房间层
--    self.m_roomNode = display.newNode()
--    self.m_roomNode:setTouchEnabled(false)
--    self.m_roomNode:setTouchSwallowEnabled(false)
--    self:addChild(self.m_roomNode)

--    self:initRooms()

    self.m_camera = cc.Camera:createOrthographic(display.width,display.height,0,1)
    self.m_camera:setCameraFlag(cc.CameraFlag.USER1)
    self:addChild(self.m_camera)
    self.m_camera:setPosition3D(cc.vec3(0, 0, 0))
    
    self:setCameraMask(2)

--    self.m_player = Player.new()
--    self:addChild(self.m_player,MAP_ZORDER_MAX+1)
--    GameController.setCurPlayer(self.m_player)

--    self.m_isMoving = false
--    self.m_isDown = false
--    self.m_isUp = false


    --监听范围破坏
--    GameDispatcher:addListener(EventNames.EVENT_AREA_DAMAGE,handler(self,self.damageHandle))

end

--进行弹跳
function MapLayer:toJump()
--    self.m_isDown = false
--    self.m_isUp = false
end
--触摸
function MapLayer:touchFunc(event)
--    if tolua.isnull(self.m_player) or self.m_player:getVo().m_hp<=0 or self.m_player:getWalk()==true then
--        return true
--    end
    if event.name == "began" then
        local x,y = self.m_camera:getPosition()
        self.m_camera:setPositionY(y+99)
        local _x,_y = self.m_camera:getPosition()
        Tools.printDebug("-------brj-----摄像机移动",_y)
        local x1,y1 = self.m_backbg:getPosition()
        self.m_backbg:setPosition(cc.p(_x,_y-_y*2/99))
        return true
    elseif event.name == "ended" then
        
    elseif event.name == "moved" then
        
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

--    if  self.m_player:isDead() then
--        return
--    end

end


--碰撞开始触发
function MapLayer:collisionBeginCallBack(parameters)
    if not GameController.getCollsionEnable() or not GameController.getRewardCollsion() then
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

    return true
end

--碰撞触发每个step都会调用
function MapLayer:collisionPresolveCallBack(parameters,par)
    local preData=parameters:getPreContactData()
    local conData = parameters:getContactData()
    local bodyA = parameters:getShapeA():getBody()
    local bodyB = parameters:getShapeB():getBody()
    local tagA = bodyA:getTag()
    local tagB = bodyB:getTag()
    local player,playerBP,playerTag
    local obstacle,obstacleBP,obstacleTag
    local wall,wallBP,wallTag
    if tagA == ELEMENT_TAG.PLAYER_TAG then
        player = bodyA:getNode()
        playerBP = bodyA:getPosition()
        playerTag = tagA
        obstacle = bodyB:getNode()
        obstacleBP = bodyB:getPosition()
        obstacleTag = tagB
    end
    if tagB == ELEMENT_TAG.PLAYER_TAG then
        player = bodyB:getNode()
        playerBP = bodyB:getPosition()
        playerTag = tagB
        obstacle = bodyA:getNode()
        obstacleBP = bodyA:getPosition()
        obstacleTag = tagA
    end
end
function MapLayer:collisionPostsolveCallBack(parameters)
    local conData = parameters:getContactData()
    local bodyA = parameters:getShapeA():getBody()
    local bodyB = parameters:getShapeB():getBody()
    local tagA = bodyA:getTag()
    local tagB = bodyB:getTag()
    Tools.printDebug("chjh bodyA,bodyB",tostring(bodyA),tostring(bodyB))
end
function MapLayer:collisionSeperateCallBack(parameters)
    local conData = parameters:getContactData()
    local bodyA = parameters:getShapeA():getBody()
    local bodyB = parameters:getShapeB():getBody()
    local tagA = bodyA:getTag()
    local tagB = bodyB:getTag()
    Tools.printDebug("chjh seperate bodyA,bodyB",tostring(bodyA),tostring(bodyB))
end

function MapLayer:initPlayerPos(parameters)
--    local _mapSize = self:getCascadeBoundingBox().size
--    local _playerY = _mapSize.height-(Room_Size.height+150-64-26)
--    self.m_player:setPosition(display.cx,_playerY)
--    self.m_camarTopY = display.height-340--_y
--    self.m_camarBotY = Normal_Camara_BottomY
--    self.m_lastPlayerY = _playerY --self.m_player:convertToWorldSpace(cc.p(0,0)).y;
--
--    self.m_physicWorld = display.getRunningScene():getPhysicsWorld()
--    self:scheduleUpdate()

--    self.m_camera:setPositionY(_playerY-480)--(_mapSize.height-display.height)--(_playerY-480)
    self.m_event = cc.EventListenerPhysicsContact:create()
    self.m_event:registerScriptHandler(handler(self,self.collisionBeginCallBack), cc.Handler.EVENT_PHYSICS_CONTACT_BEGIN)

    self:getEventDispatcher():addEventListenerWithFixedPriority(self.m_event,1)
    self:addNodeEventListener(cc.NODE_ENTER_FRAME_EVENT, handler(self, self.onEnterFrame))
end

--碰撞反射，从人物中心向下或向上发射一个比自身一半多 Raycast_DisY 像素的探测射线，进行检测有无障碍物
function MapLayer:rayCastFunc(_world,_p1,_p2,_p3)
    if self.m_player:isDead() then
        return false
    end
    --    self.m_isDown = false
    --    self.m_isUp = false
    local _body = _p1.shape:getBody()
    local _bnode = _body:getNode()
    local _tag = _body:getTag()
    local _vo = self.m_player:getVo()
    local _hitP = cc.p(_p1.ended.x,_p1.ended.y)
    local DA=self.m_player:getDA()
    local att=self.m_player:getAtt()

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

--进入地图就创建的房间需要调整对应刚体位置,即需传第三个参数为true(room:initPosition(_x,_y,true))
function MapLayer:initRooms(parameters)
    if GAME_TYPE_CONTROL == GAME_TYPE.LevelMode then
        self.m_levelCon = SelectLevel[GameDataManager.getCurLevelId()]
        self.curRooms = self.m_levelCon.roomBgs
    elseif GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
        self.endlessCon = EndlessMode.room_Type
        self.m_levelCon = self.endlessCon
        self.curRooms = self.endlessCon
    end
    if self.m_levelCon then
        self.m_rooms = self.curRooms
        self.m_roomsNum = MAP_ROOM_INIT_NUM
        self.m_roomAmount=#self.m_rooms
--        MAP_ZORDER_MAX = self.m_roomAmount-1
        --        self.m_mapEndY = (self.m_roomAmount-MAP_ROOM_INIT_NUM)*Room_Size.height+100
        self.m_mapEndY = (MAP_ROOM_INIT_NUM-self.m_roomAmount)*Room_Size.height-Blank
        if self.m_roomsNum > self.m_roomAmount then
            self.m_roomsNum = self.m_roomAmount
        end
    else
        printf("chjh error 找不到id=%d的关卡配置",GameDataManager.getCurLevelId())
        return
    end
    local _x,_y = 0,0
    for var=1, self.m_roomsNum do

        local _room = MapRoom.new(var,self.m_levelCon,self.m_roomAmount)
        local _roomSize = _room:getSize()
        _y = (MAP_ROOM_INIT_NUM-var)*Room_Size.height

        self.m_isSleep=true
        _room:setSleep(true)

--        self:addChild(_room,self.m_curZOrder)
--        self:addChild(_room,self.m_roomAmount-var)
--        self.m_roomNode:addChild(_room,#self.m_rooms-var)
        self.m_roomNode:addChild(_room,self.m_curZOrder)
        _room:initPosition(_x,_y,true)
        
        table.insert(self.m_chaceRooms,_room)
        self.m_curZOrder = self.m_curZOrder - 1
    end
end

--添加新的房间
--此处为动态添加的房间，不需调整刚体位置，即无需传第三个参数(room:initPosition(_x,_y))
function MapLayer:addNewRooms(parameters)
    if self.m_roomsNum >= self.m_roomAmount then
        return
    end

    self.m_roomsNum = self.m_roomsNum + 1
    
    if GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
        if self.endlessCon[self.m_roomsNum].type == Room_Hell.D then
            self.m_levelCon = RoomsD[math.random(1,#RoomsD)]
        elseif self.endlessCon[self.m_roomsNum].type == Room_Hell.C then
            self.m_levelCon = RoomsC[math.random(1,#RoomsC)]
        elseif self.endlessCon[self.m_roomsNum].type == Room_Hell.B then
            self.m_levelCon = RoomsB[math.random(1,#RoomsB)]
        elseif self.endlessCon[self.m_roomsNum].type == Room_Hell.A then
            self.m_levelCon = RoomsA[math.random(1,#RoomsA)]
        elseif self.endlessCon[self.m_roomsNum].type == Room_Hell.S then
            self.m_levelCon = RoomsS[math.random(1,#RoomsS)]
        elseif self.endlessCon[self.m_roomsNum].type == Room_Hell.SS then
            self.m_levelCon = RoomsSS[math.random(1,#RoomsSS)]
        elseif self.endlessCon[self.m_roomsNum].type == Room_Hell.I then
            self.m_levelCon = RoomsI[math.random(1,#RoomsI)]
        elseif self.endlessCon[self.m_roomsNum].type == Room_Hell.O then
            self.m_levelCon = RoomsO[math.random(1,#RoomsO)]
        end
    end
    local _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
    local _newRoom
    local _x,_y = 0,0
    if _oldRoom then
        --        printf("chjh self.m_roomsNum=%d,#self.m_rooms=%d",self.m_roomsNum,#self.m_rooms)
        _newRoom = MapRoom.new(self.m_roomsNum,self.m_levelCon,self.m_roomAmount)
        --        _newRoom = MapRoom.new(_oldRoom:getRoomIndex()+1,parameters.roomID)
        _y = _oldRoom:getPositionY()-_oldRoom:getSize().height
        self.m_lastRoomY = _y
    else
        _newRoom = MapRoom.new(1)
    end
    if #self.m_chaceRooms >= MAP_ROOM_MAX then
        local _room = table.remove(self.m_chaceRooms,1)
        _room:dispose()
    end

--    self:addChild(_newRoom,self.m_curZOrder)
--    self:addChild(_newRoom,self.m_roomAmount-self.m_roomsNum)
--    self.m_roomNode:addChild(_newRoom,#self.m_rooms-self.m_roomsNum)
    self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
    _newRoom:initPosition(_x,_y)
    _newRoom:setCameraMask(2)
    table.insert(self.m_chaceRooms,_newRoom)
    self.m_curZOrder = self.m_curZOrder - 1
end


function MapLayer:clear(parm)
    local data=parm.data or false

    if data==true then
        if self.m_handlerFragment then
            Scheduler.unscheduleGlobal(self.m_handlerFragment)
            self.m_handlerFragment = nil
        end
    else
        if self.m_handlerFragment then
            Scheduler.unscheduleGlobal(self.m_handlerFragment)
            self.m_handlerFragment = nil
        end

        self.m_handlerFragment=Tools.delayCallFunc(Fragment_Time,function()
            self.m_handlerFragment = nil
            self:clearFragment()
        end)
    end

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

--设置火箭对象
function MapLayer:setRocket(_obj)
    self.m_rocket = _obj
    self.m_camarBotY = self.m_camarTopY - 64
end

function MapLayer:getCurRoom()
    return self.m_room
end


--地图销毁
function MapLayer:dispose(parameters)
    --移除碰撞事件
    self:getEventDispatcher():removeEventListener(self.m_event)
    --移除帧事件
    self:removeNodeEventListenersByEvent(cc.NODE_ENTER_FRAME_EVENT)
    --移除其它事件
--    GameDispatcher:removeListenerByName(EventNames.EVENT_AREA_DAMAGE)


--    if self.m_player then
--        self.m_player:dispose()
--    end


    for key, var in ipairs(self.m_chaceRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end

    GameController.clearRooms()
    GameController.clearBody()
    self:removeFromParent(true)
end

return MapLayer