--[[
地图层
]]
local MapRoom = require("game.view.map.MapRoom")
local Player = require("game.view.element.Player")
local Scheduler = require("framework.scheduler")
local SpecialElement = require("game.view.element.SpecialElement")
local BackGroundMove = require("game.view.map.BackGroundMove")
local LineElement = require("game.view.element.LineElement")
local PhantomElement = require("game.view.element.PhantomElement")

local Raycast_DisY = 20  --探测距离
local Raycast_DisX = 6 --探测轴方向有无障碍物

--用来计算横跑时第一阶层移动的固定值
local runDis = 50
local moveSpeed = 120
--角色横跑第一层的理想化x坐标
local runFirstX = 418

local p_y = -20

math.randomseed(os.time())   --初始化随机种子

--当前场景状态
local State_Type=
    {
        CommonState = 1,   --普通楼层阶梯状态
        RunningState = 2,   --横跑阶梯状态
    }

local MapLayer = class("MapLayer",function()
    local pLayer = cc.Layer:create()
    return pLayer
end)

function MapLayer:ctor(parameters)

    self.m_chaceRooms = {}  --房间缓存数组
    GameController.setRooms(self.m_chaceRooms)
    self.m_otherRooms = {}   --额外的房间(主要是横跑中不升楼层的房间)
    self.m_rightRooms = {}   --双向倾斜房间时保存的右边列房间
    self.m_moveRooms = {}    --默认左向倾斜房间之后的加载房间
    
    self.m_bothRightRooms = {}   --双向横跑时右边的房间缓存
    self.m_bothOtherRooms = {}   --双向右边房间的type为0类型房间
    self.m_bothMoveRooms = {}    --双向横跑之后的房间缓存表
    
    self.deadUMArr = {}
    
    self.jumpFloorNum = 1
    self.backOrigin = false
    self.m_toJump = false
    self.floorPos = {}
    self.roomArr = {}
    self.specialBody = {}
    self.runFloorNum = RunningFloorNum
    self.isBgMove = false
    self.isMapBottom = true
    
    self.m_curZOrder = MAP_ZORDER_MAX   --房间当前显示层级
    
    local color = SceneConfig[GameDataManager.getFightScene()].bgColor
    self.bg = cc.LayerGradient:create(color[1],color[2]):addTo(self)
    
    if self.touchHandler then
        Scheduler.unscheduleGlobal(self.touchHandler)
        self.touchHandler=nil
    end
    self.touchHandler = Tools.delayCallFunc(0.5,function()
        self.bg:setTouchEnabled(false)
        self.bg:setTouchSwallowEnabled(false)
    end)
    
    self.bgNode = BackGroundMove.new(GameDataManager.getFightScene()):addTo(self)
    
    self.m_bg = display.newSprite("map/Scene_1/Map_frame_2.png")
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

    self.m_player = Player.new()
    self:addChild(self.m_player,MAP_ZORDER_MAX+1)
    local floorPos = self.floorPos[self.jumpFloorNum]
    local _size = self.m_player:getSize()
    self.m_player:setPosition(cc.p(display.cx,floorPos.y+_size.height*0.5+self.m_player:getErrorValue()))
    self.m_heightValue = 0--self.m_player:getSize().height*0.5
    
    
    GameController.setCurPlayer(self.m_player)
    self.curRoomWidth = self:getRoomByIdx(1):getRoomWidth()

    self:setCameraMask(2)
    
    GameDispatcher:addListener(EventNames.EVENT_GAME_OVER,handler(self,self.playerDead))

end

--触摸
local lastTouchTime = 0
function MapLayer:touchFunc(event)
    if tolua.isnull(self.m_player) or self.m_player:isDead() then
        return
    end
    if GameController.isInState(PLAYER_STATE.Rocket) or GameController.isInState(PLAYER_STATE.StartRocket) then
        return
    end
    if not self.m_player:getActionVisible() then
    	return
    end
--    Tools.printDebug("-----------------------------self.backOrigin  ",self.backOrigin)
    if self.backOrigin then
    	return
    end
    if event.name == "began" then
        --if (Tools.getSysTime()-lastTouchTime)>=Sequent_Click_Time then
            if self.isMapBottom then
                self.isMapBottom = false
                GameDispatcher:dispatch(EventNames.EVENT_HIDE_BOTTOM)
            end
            Tools.printDebug("brj 是否可连击跳跃: ",self.isCollision)
            if self.isCollision then
                self.isCollision = false
                self:toJump()
            end
        --end
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
    self.gFloor = math.random(2,98)
    for k=1, MAP_ROOM_INIT_NUM*0.1 do
        --控制随机数种子
        if k > 1 then
            local i
            if self.transit_1 then
                i = GameDataManager.getDataIdByWeight(Map_Grade.floor_D,MapGroupD[3])
                self.m_levelCon = GameDataManager.getMpaGradeTable(Map_Grade.floor_D,MapGroupD[3])[i]
                if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.roomType == MAPROOM_TYPE.Special then
                    self.m_levelCon = GameDataManager.getMpaGradeTable(Map_Grade.floor_D,MapGroupD[3])[7777]
                end
            elseif self.transit then
                i = GameDataManager.getDataIdByWeight(Map_Grade.floor_D,MapGroupD[2])
                self.m_levelCon = GameDataManager.getMpaGradeTable(Map_Grade.floor_D,MapGroupD[2])[i]
                if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.roomType == MAPROOM_TYPE.Special then
                    self.m_levelCon = GameDataManager.getMpaGradeTable(Map_Grade.floor_D,MapGroupD[2])[8888]
                end
            else
                i = GameDataManager.getDataIdByWeight(Map_Grade.floor_D,MapGroupD[1])
                self.m_levelCon = GameDataManager.getMpaGradeTable(Map_Grade.floor_D,MapGroupD[1])[i]
                if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.roomType == MAPROOM_TYPE.Special then
                    self.m_levelCon = GameDataManager.getMpaGradeTable(Map_Grade.floor_D,MapGroupD[1])[9999]
                end
            end
            Tools.printDebug("------------------------------------brj hop 配置组",k,i)
            self.deadUMArr = {Map_Grade.floor_D,i}
            if self.m_levelCon.transit then
            	self.transit = true
            end
            if self.m_levelCon.transit_1 then
            	self.transit_1 = true
            end
            self.groupType = Map_Grade.floor_D
            self.roomType = self.m_levelCon.roomType
        else
            local i = GameDataManager.getDataIdByWeight(-1)
            self.m_levelCon = MapFirstGroup[i]
            self.roomType = self.m_levelCon.roomType
            self.deadUMArr = {Map_Grade.floor_D,i}
--            Tools.printDebug("brj hop 配置组",k,i)
        end 
        self.curRooms = self.m_levelCon.roomBgs

        if self.m_levelCon then
            self.m_rooms = self.curRooms
            self.m_roomAmount=#self.m_rooms
            self.m_roomsNum = self.m_roomsNum + self.m_roomAmount
        else
            Tools.printDebug("brj error 找不到配置",self.m_levelCon)
            return
        end

        local dCount = math.random(1,MaxShowCount)
        local dArr = GameController.createRand(dCount,self.m_roomAmount)
        for var=1, self.m_roomAmount do
            local _room = MapRoom.new(var,self.m_levelCon,var+(k-1)*10,dArr,self.gFloor)
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
                self:createSteels(1,_y)
            end
            
            self.m_curZOrder = self.m_curZOrder + 1
            MAP_ZORDER_MAX = self.m_curZOrder
        end
    end
end

--添加新的房间
--此处为动态添加的房间，不需调整刚体位置，即无需传第三个参数(room:initPosition(_x,_y))
function MapLayer:addNewRooms(parameters)
--    Tools.printDebug("-------------------brj Hopscotch 总缓存楼层：",self.m_roomsNum)
    local dCount
    local dArr
    if self.m_roomsNum > Map_Grade.floor_B and self.m_roomsNum % self.runFloorNum - math.ceil(self.runFloorNum*0.5) == 0 then
        local i = math.random(math.floor((self.m_roomsNum+RunningMin)/10),math.floor((self.m_roomsNum+RunningMax)/10))
        self.runFloorNum = i*10
        local k = GameDataManager.getDataIdByWeight(-2)
        Tools.printDebug("brj Hopscotch 双向倾斜组：",k,i)
        self.m_levelCon = MapTwoLeanConfig[k]
        self.roomType = self.m_levelCon.roomType
        self.floorNum = 0
        dCount = math.random(1,MaxShowCount)
        dArr = GameController.createRand(dCount,#self.m_levelCon.roomBgs)
--        if self.m_roomsNum % 100 == 0 then
--            self.gFloor = math.random(self.m_roomsNum-99,self.m_roomsNum-2)
--        end
    elseif self.m_roomsNum % self.runFloorNum == 0 then
        self.runMapFloor = self.m_roomsNum
        local k = GameDataManager.getDataIdByWeight()
        Tools.printDebug("brj Hopscotch 横跑组：",k)
        self.m_levelCon = MapRunningConfig[k]
        self.roomType = self.m_levelCon.roomType
        self.roomDirection = self.m_levelCon.direction
        self.floorNum = 0
        dCount = math.random(1,MaxShowCount)
        dArr = GameController.createRand(dCount,#self.m_levelCon.roomBgs)
--        if self.m_roomsNum % 100 == 0 then
--            self.gFloor = math.random(self.m_roomsNum-99,self.m_roomsNum-2)
--        end
    else
        if self.m_roomsNum % 10 == 0 then
            local type,config,group
            if self.m_roomsNum >= Map_Grade.floor_S then
                if self.groupType ~= Map_Grade.floor_S then
                    self.transit = false
                    self.transit_1 = false
                end
                type = Map_Grade.floor_S
                config = MapGroupConfigS
                group = MapGroupS
            elseif self.m_roomsNum >= Map_Grade.floor_A then
                if self.groupType ~= Map_Grade.floor_A then
                    self.transit = false
                    self.transit_1 = false
                end
                type = Map_Grade.floor_A
                config = MapGroupConfigA
                group = MapGroupA
            elseif self.m_roomsNum >= Map_Grade.floor_B then
                if self.groupType ~= Map_Grade.floor_B then
                    self.transit = false
                    self.transit_1 = false
                end
                type = Map_Grade.floor_B
                config = MapGroupConfigB
                group = MapGroupB
            elseif self.m_roomsNum >= Map_Grade.floor_C then
                if self.groupType ~= Map_Grade.floor_C then
                    self.transit = false
                    self.transit_1 = false
                end
                type = Map_Grade.floor_C
                config = MapGroupConfigC
                group = MapGroupC
            else
                type = Map_Grade.floor_D
                config = MapGroupConfigD
                group = MapGroupD
            end
            local i
            if self.m_roomsNum ~= type then
                if self.transit_1 then
                    i = GameDataManager.getDataIdByWeight(type,group[3])
                    self.m_levelCon = GameDataManager.getMpaGradeTable(type,group[3])[i]
                    if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.roomType == MAPROOM_TYPE.Special then
                        self.m_levelCon = GameDataManager.getMpaGradeTable(type,group[3])[7777]
                    end
                elseif self.transit then
                    i = GameDataManager.getDataIdByWeight(type,group[2])
                    self.m_levelCon = GameDataManager.getMpaGradeTable(type,group[2])[i]
                    if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.roomType == MAPROOM_TYPE.Special then
                        self.m_levelCon = GameDataManager.getMpaGradeTable(type,group[2])[8888]
                    end
                else
                    i = GameDataManager.getDataIdByWeight(type,group[1])
                    self.m_levelCon = GameDataManager.getMpaGradeTable(type,group[1])[i]
                    if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.roomType == MAPROOM_TYPE.Special then
                        self.m_levelCon = GameDataManager.getMpaGradeTable(type,group[1])[9999]
                    end
                end
            else
                i = 10000
                self.m_levelCon = GameDataManager.getMpaGradeTable(type,group[1])[i]
            end
            Tools.printDebug("-----------------------------brj Hopscotch 普通组组：",self.m_roomsNum,i,type)
            self.deadUMArr = {type,i}
            if self.m_levelCon.transit then
                self.transit = true
            end
            if self.m_levelCon.transit_1 then
                self.transit_1 = true
            end
            self.groupType = type
            self.roomType = self.m_levelCon.roomType
            self.floorNum = 0
            dCount = math.random(1,MaxShowCount)
            dArr = GameController.createRand(dCount,#self.m_levelCon.roomBgs)
        end 
    end
    if self.m_roomsNum % 100 == 1 then
        self.gFloor = math.random(self.m_roomsNum,self.m_roomsNum+98)
    end
    Tools.printDebug("brj jumpHouse 随机出现火箭道具楼层：",self.gFloor)
    
    if self.roomType ~= MAPROOM_TYPE.Running then
        self.floorNum = self.floorNum + 1
        if self.roomType == MAPROOM_TYPE.TwoLean then
            self:addTwoLeanRoom(dArr,self.gFloor)
        else
            self:CommonRoomAdd(dArr,self.gFloor) 
        end
    else
        if self.m_levelCon.direction ~= MAPRUNNING_TYPE.Both then
            self:RunningRoomAdd(self.m_levelCon.direction,dArr,self.gFloor)
        else
            self:addTwoRunningRoom(dArr,self.gFloor)
        end
    end
    
end

--添加双向横跑房间
function MapLayer:addTwoRunningRoom(dArr,gFloor)
	self.floorNum = self.floorNum + 1
	
    local _oldRoom,_oldRightRoom
    if self.floorNum <= 2 then
        _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
        if self.floorNum == 1 then
            _oldRightRoom = self.m_chaceRooms[#self.m_chaceRooms]
        else
            _oldRightRoom = self.m_bothRightRooms[#self.m_bothRightRooms]
        end
    else
        local oldType = RoomBgs[self.m_levelCon.roomBgs[self.floorNum-1]].type
        if oldType~=0 then
            _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
            _oldRightRoom = self.m_bothRightRooms[#self.m_bothRightRooms]
        else
            _oldRoom = self.m_otherRooms[#self.m_otherRooms]
            _oldRightRoom = self.m_bothOtherRooms[#self.m_bothOtherRooms]
        end
    end
    local newType = RoomBgs[self.m_levelCon.roomBgs[self.floorNum]].type
    if self.floorNum == 1 then
        self._x = self.floorPos[self.m_roomsNum].x
        self.r_x = self.floorPos[self.m_roomsNum].x
    end
    if newType~=0 or self.floorNum == 1 then
        self.m_roomsNum = self.m_roomsNum + 1
    end
    local _newRoom
    local _y = 0
    if _oldRoom then
        _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum,dArr,gFloor)
        if self.floorNum == 1 then
            self._x = self._x-_newRoom:getRoomWidth()*0.5+Room_Distance.x
            _y = _oldRoom:getPositionY() + Room_Size.height
        elseif self.floorNum == #self.m_levelCon.roomBgs then
            self._x = self._x + self.m_levelCon.distance
            _y = _oldRoom:getPositionY() + Room_Size.height
        else
            if _newRoom:getRunningRoomFloorType() == 0 then
                self._x = self._x-_newRoom:getRoomWidth()-_oldRoom:getRoomGap()
                _y = _oldRoom:getPositionY()
            elseif _newRoom:getRunningRoomFloorType() == 1 then
                self._x = self._x+_oldRoom:getRoomWidth()-_newRoom:getRoomWidth()-_oldRoom:getRoomGap()
                _y = _oldRoom:getPositionY() + Room_Size.height
            elseif _newRoom:getRunningRoomFloorType() == 2 then
                self._x = self._x-_newRoom:getRoomWidth()-_oldRoom:getRoomGap()
                _y = _oldRoom:getPositionY() + Room_Size.height
            end
        end
    else
        _newRoom = MapRoom.new(1)
    end
    self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
    _newRoom:initPosition(self._x,_y)
    _newRoom:setCameraMask(2)
    if self.floorNum == 1 or (_newRoom:getRunningRoomFloorType() and _newRoom:getRunningRoomFloorType()~=0) then
        self.floorPos[self.m_roomsNum] = {}
        self.floorPos[self.m_roomsNum][1] = cc.p(self._x,_y)
--        Tools.printDebug("--------------------------aaaaaaaaaaaaaaaaaaaaa  ",self.m_roomsNum,self.floorPos[self.m_roomsNum][1].x)
        table.insert(self.m_chaceRooms,_newRoom)
        if #self.m_chaceRooms > MAP_ROOM_MAX then
            local _room = table.remove(self.m_chaceRooms,1)
            _room:dispose()
        end
    else
        table.insert(self.m_otherRooms,_newRoom)
    end
    
    
    if _oldRightRoom then
        _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum,dArr,gFloor)
        if self.floorNum == 1 then
            self.r_x = self.r_x+_newRoom:getRoomWidth()*0.5-Room_Distance.x
            _y = _oldRightRoom:getPositionY() + Room_Size.height
--            Tools.printDebug("--------------------------aaaaaaaaaaaaaaaaaaaaa  ",self.r_x+_newRoom:getRoomWidth())
        elseif self.floorNum == #self.m_levelCon.roomBgs then
            self.r_x = self.r_x + self.m_levelCon.distance
            _y = _oldRightRoom:getPositionY() + Room_Size.height
        else
            if _newRoom:getRunningRoomFloorType() == 0 then
                self.r_x = self.r_x+_oldRightRoom:getRoomWidth()+_oldRightRoom:getRoomGap()
                _y = _oldRightRoom:getPositionY()
            elseif _newRoom:getRunningRoomFloorType() == 1 then
                self.r_x = self.r_x+_oldRightRoom:getRoomGap()
                _y = _oldRightRoom:getPositionY() + Room_Size.height
            elseif _newRoom:getRunningRoomFloorType() == 2 then
                self.r_x = self.r_x+_oldRightRoom:getRoomWidth()+_oldRightRoom:getRoomGap()
                _y = _oldRightRoom:getPositionY() + Room_Size.height
            end
        end
    else
        _newRoom = MapRoom.new(1)
    end
    self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
    _newRoom:initPosition(self.r_x,_y)
    _newRoom:setCameraMask(2)
    if self.floorNum == 1 or (_newRoom:getRunningRoomFloorType() and _newRoom:getRunningRoomFloorType()~=0) then
        self.floorPos[self.m_roomsNum][2] = cc.p(self.r_x,_y)
        table.insert(self.m_bothRightRooms,_newRoom)
    else
        table.insert(self.m_bothOtherRooms,_newRoom)
    end
    

    self.m_curZOrder = self.m_curZOrder + 1
    MAP_ZORDER_MAX = self.m_curZOrder
    
end


--添加单向横跑房间
function MapLayer:RunningRoomAdd(_dis,dArr,gFloor)

    self.floorNum = self.floorNum + 1
    local _oldRoom
    if self.floorNum <= 2 then
        _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
    else
        local oldType = RoomBgs[self.m_levelCon.roomBgs[self.floorNum-1]].type
        if oldType~=0 then
            _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
        else
            _oldRoom = self.m_otherRooms[#self.m_otherRooms]
        end
    end
    local _newRoom
    local _y = 0
    if _oldRoom then
        local newType = RoomBgs[self.m_levelCon.roomBgs[self.floorNum]].type
        if self.floorNum == 1 then
            self._x = self.floorPos[self.m_roomsNum].x
        end
        if newType~=0 or self.floorNum == 1 then
            self.m_roomsNum = self.m_roomsNum + 1
        end
        _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum,dArr,gFloor)
        if _dis == MAPRUNNING_TYPE.Left then
            if self.floorNum == 1 then
                self._x = self._x-_newRoom:getRoomWidth()*0.5+Room_Distance.x
                _y = _oldRoom:getPositionY() + Room_Size.height
            elseif self.floorNum == #self.m_levelCon.roomBgs then
                self._x = self._x + self.m_levelCon.distance
                _y = _oldRoom:getPositionY() + Room_Size.height
            else
                if _newRoom:getRunningRoomFloorType() == 0 then
                    self._x = self._x-_newRoom:getRoomWidth()-_oldRoom:getRoomGap()
                    _y = _oldRoom:getPositionY()
                elseif _newRoom:getRunningRoomFloorType() == 1 then
                    self._x = self._x+_oldRoom:getRoomWidth()-_newRoom:getRoomWidth()-_oldRoom:getRoomGap()
                    _y = _oldRoom:getPositionY() + Room_Size.height
                elseif _newRoom:getRunningRoomFloorType() == 2 then
                    self._x = self._x-_newRoom:getRoomWidth()-_oldRoom:getRoomGap()
                    _y = _oldRoom:getPositionY() + Room_Size.height
                end
            end
        elseif _dis == MAPRUNNING_TYPE.Right then
            if self.floorNum == 1 then
                self._x = self._x+_newRoom:getRoomWidth()*0.5-Room_Distance.x
                _y = _oldRoom:getPositionY() + Room_Size.height
            elseif self.floorNum == #self.m_levelCon.roomBgs then
                self._x = self._x + self.m_levelCon.distance
                _y = _oldRoom:getPositionY() + Room_Size.height
            else
                if _newRoom:getRunningRoomFloorType() == 0 then
                    self._x = self._x+_oldRoom:getRoomWidth()+_oldRoom:getRoomGap()
                    _y = _oldRoom:getPositionY()
                elseif _newRoom:getRunningRoomFloorType() == 1 then
                    self._x = self._x+_oldRoom:getRoomGap()
                    _y = _oldRoom:getPositionY() + Room_Size.height
                elseif _newRoom:getRunningRoomFloorType() == 2 then
                    self._x = self._x+_oldRoom:getRoomWidth()+_oldRoom:getRoomGap()
                    _y = _oldRoom:getPositionY() + Room_Size.height
                end
            end
        end
    else
        _newRoom = MapRoom.new(1)
    end
    self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
    _newRoom:initPosition(self._x,_y)
    _newRoom:setCameraMask(2)

    self.m_curZOrder = self.m_curZOrder + 1
    MAP_ZORDER_MAX = self.m_curZOrder
    if self.floorNum == 1 or (_newRoom:getRunningRoomFloorType() and _newRoom:getRunningRoomFloorType()~=0) then
        self.floorPos[self.m_roomsNum] = cc.p(self._x,_y)
    	table.insert(self.m_chaceRooms,_newRoom)
        if #self.m_chaceRooms > MAP_ROOM_MAX then
            local _room = table.remove(self.m_chaceRooms,1)
            _room:dispose()
        end
    else
        table.insert(self.m_otherRooms,_newRoom)
    end
end

--添加双向倾斜房间
function MapLayer:addTwoLeanRoom(dArr,gFloor)
    if self.floorPos[self.m_roomsNum].x then
        self._x = self.floorPos[self.m_roomsNum].x
    else
        self._x = self.floorPos[self.m_roomsNum][1].x
    end
    self.m_roomsNum = self.m_roomsNum + 1
    local _oldRoom
    if self.floorNum == 1 then
        _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
        local _newRoom
        local _y = 0
        if _oldRoom then
            _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum,dArr,gFloor)
            _y = _oldRoom:getPositionY() + Room_Size.height
            self.floorPos[self.m_roomsNum] = cc.p(self._x,_y)
        else
            _newRoom = MapRoom.new(1)
        end
        self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
        Tools.printDebug("brj Hopscotch 双向倾斜楼层：",self.m_roomsNum,self._x,_y)
        _newRoom:initPosition(self._x,_y)
        _newRoom:setCameraMask(2)
        table.insert(self.m_chaceRooms,_newRoom)
    else
        if self.floorNum % 2 == 0 then
            _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
            local _newRoom,_newRoom1
            local _y = 0
            local _x = 0
            if _oldRoom then
                self.floorPos[self.m_roomsNum] = {}
                _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum,dArr,gFloor)
                _y = _oldRoom:getPositionY() + Room_Size.height
                if self.floorNum == 2 then
                    _x = _oldRoom:getPositionX() - display.width*0.3
                else
                    _x = _oldRoom:getPositionX() - self.m_levelCon.distance
                end
                self.floorPos[self.m_roomsNum][1] = cc.p(_x,_y)
                self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
                _newRoom:initPosition(_x,_y)
                _newRoom:setCameraMask(2)
                table.insert(self.m_chaceRooms,_newRoom)
            end

            self.floorNum = self.floorNum + 1

            if self.floorNum ~= 3 then
                _oldRoom = self.m_rightRooms[#self.m_rightRooms]
            end
            if _oldRoom then
                _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum,dArr,gFloor)
                _y = _oldRoom:getPositionY() + Room_Size.height
                if self.floorNum == 3 then
                    _x = _oldRoom:getPositionX() + display.width*0.3
                else
                    _x = _oldRoom:getPositionX() + self.m_levelCon.distance
                end
                self.floorPos[self.m_roomsNum][2] = cc.p(_x,_y)
                self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
                _newRoom:initPosition(_x,_y)
                _newRoom:setCameraMask(2)
                table.insert(self.m_rightRooms,_newRoom)
            end
        end
    end 

    self.m_curZOrder = self.m_curZOrder + 1
    MAP_ZORDER_MAX = self.m_curZOrder

    if #self.m_chaceRooms > MAP_ROOM_MAX then
        local _room = table.remove(self.m_chaceRooms,1)
        _room:dispose()
    end
end

--添加普通楼层普通倾斜特殊房间
function MapLayer:CommonRoomAdd(dArr,gFloor)
    local _oldRoom = self.m_chaceRooms[#self.m_chaceRooms]
    if self.floorPos[self.m_roomsNum].x then
        self._x = self.floorPos[self.m_roomsNum].x
    else
        self._x = self.floorPos[self.m_roomsNum][1].x
        if _oldRoom:getCurRoomType() == MAPROOM_TYPE.TwoLean then
            self.twoLeanFloor = true
            self.twoRunningFloor = false
        else
            self.twoRunningFloor = true
            self.twoLeanFloor = false
        end
    end
    self.m_roomsNum = self.m_roomsNum + 1
    local _newRoom
    local _y = 0
    if _oldRoom then
--        Tools.printDebug("------------111缓存楼层数量111111111111111：",self.m_roomsNum)
        _newRoom = MapRoom.new(self.floorNum,self.m_levelCon,self.m_roomsNum,dArr,gFloor)
        _y = _oldRoom:getPositionY() + Room_Size.height
        if self.m_levelCon.roomType == MAPROOM_TYPE.Lean then
            self._x = self._x + self.m_levelCon.distance
        end
        self.floorPos[self.m_roomsNum] = cc.p(self._x,_y)
    else
        _newRoom = MapRoom.new(1)
    end
    self.m_roomNode:addChild(_newRoom,self.m_curZOrder)
    _newRoom:initPosition(self._x,_y)
    _newRoom:setCameraMask(2)
    table.insert(self.m_chaceRooms,_newRoom)
    if self.twoLeanFloor then
        table.insert(self.m_moveRooms,_newRoom)
    end
    if self.twoRunningFloor then
        table.insert(self.m_bothMoveRooms,_newRoom)
    end

    --特殊房间楼层的钢架
    if self.m_levelCon.roomType == MAPROOM_TYPE.Special and self.floorNum == 1 then
        self:createSteels(2,_y)
    end

    self.m_curZOrder = self.m_curZOrder + 1
    MAP_ZORDER_MAX = self.m_curZOrder

    if #self.m_chaceRooms > MAP_ROOM_MAX then
        local _room = table.remove(self.m_chaceRooms,1)
        _room:dispose()
    end
end

function MapLayer:createSteels(_type,_y)
    --钢架线
    local line_left = LineElement.new(self.m_levelCon.left)
    self:addChild(line_left,self.m_curZOrder)
    line_left:setAnchorPoint(cc.p(0,1))
    local leftHeight = line_left:getCascadeBoundingBox().size.height
    local width = line_left:getWidth()
    line_left:setPosition(cc.p(self._x+self.m_levelCon.lineX[1]-width-15,leftHeight*9+_y))
    line_left:setScaleY(8.5-(self.m_levelCon.left[1]-1))
    line_left:setCameraMask(2)
    local line_right = LineElement.new(self.m_levelCon.right)
    self:addChild(line_right,self.m_curZOrder)
    line_right:setAnchorPoint(cc.p(0,1))
    line_right:setScaleX(-1)
    local rightHeight = line_right:getCascadeBoundingBox().size.height
    line_right:setPosition(cc.p(self._x+self.m_levelCon.lineX[2]+16+width+15,rightHeight*9+_y))
    line_right:setScaleY(8.5-(self.m_levelCon.right[1]-1))
    line_right:setCameraMask(2)
    --钢架人
    local steel1 = SpecialElement.new(self.m_levelCon.left,line_left,1)
    self:addChild(steel1,self.m_curZOrder)
    steel1:setAnchorPoint(cc.p(0,0))
    local size = steel1:getCascadeBoundingBox().size
    local steelY = (self.m_levelCon.left[1]-1)*Room_Size.height
    steel1:setPosition(cc.p(self._x+self.m_levelCon.lineX[1]-size.width*0.5-15,size.height*0.5+16+_y+steelY))
    local steel2 = SpecialElement.new(self.m_levelCon.right,line_right,2)
    self:addChild(steel2,self.m_curZOrder)
    steel2:setAnchorPoint(cc.p(0,0))
--    steel2:setScaleX(-1)-------------因为右边钢架反转导致右边钢架无法检测！！
    local steel2Y = (self.m_levelCon.right[1]-1)*Room_Size.height
    steel2:setPosition(cc.p(self._x+self.m_levelCon.lineX[2]+10+size.width*0.5+15,size.height*0.5+16+_y+steel2Y))
    steel1:setCameraMask(2)
    steel2:setCameraMask(2)
    if self.twoLeanFloor then
        table.insert(self.m_moveRooms,line_left)
        table.insert(self.m_moveRooms,line_right)
        table.insert(self.m_moveRooms,steel1)
        table.insert(self.m_moveRooms,steel2)
    end
    if self.twoRunningFloor then
        table.insert(self.m_bothMoveRooms,line_left)
        table.insert(self.m_bothMoveRooms,line_right)
        table.insert(self.m_bothMoveRooms,steel1)
        table.insert(self.m_bothMoveRooms,steel2)
    end
    
    self.specialBody[math.ceil(self.m_roomsNum/10)] = {}
    if _type == 1 then
        local spBodyArr = {steel1,cc.p(steel1:getPosition()),self.m_levelCon.left[1]}
        local spBodyArr2 = {steel2,cc.p(steel2:getPosition()),self.m_levelCon.right[1]}
        table.insert(self.specialBody[math.ceil(self.m_roomsNum/10)],spBodyArr)
        table.insert(self.specialBody[math.ceil(self.m_roomsNum/10)],spBodyArr2)
    else
        table.insert(self.specialBody[math.ceil(self.m_roomsNum/10)],steel1)
        table.insert(self.specialBody[math.ceil(self.m_roomsNum/10)],steel2)
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
    
    local pos
    if self.floorPos[self.jumpFloorNum].x then
        pos = self.floorPos[self.jumpFloorNum]
    else
        if self.curRoomType ~= MAPROOM_TYPE.Running then
            if self.curRoomKey > 1 then
                if self.curRoomKey % 2 == 0 then
                    pos = self.floorPos[self.jumpFloorNum][1]
                else
                    pos = self.floorPos[self.jumpFloorNum][2]
                end
            end
        else
            if self.m_player:getScaleX() == 1 then
                pos = self.floorPos[self.jumpFloorNum][1]
            else
                pos = self.floorPos[self.jumpFloorNum][2]
            end
        end
    end
    if self.backOrigin then
        local floorPos = pos
        self.m_player:setPosition(cc.p(bpx,floorPos.y+_size.height*0.5+self.m_player:getErrorValue()))
    end
    local x,y = self.m_camera:getPosition()
    if not self.m_player:isInState(PLAYER_STATE.StartRocket) and not self.m_player:isInState(PLAYER_STATE.Rocket) then
        if self.curRoomType ~= MAPROOM_TYPE.Running and (not self.runMapFloor or (self.jumpFloorNum ~= self.runMapFloor and self.jumpFloorNum ~= self.runMapFloor + 1)) then
            if bpx <= pos.x+_size.width*0.5 then
                self:playerDead()
--                Tools.printDebug("brj2222222222222222--------左边死亡---------:",self.jumpFloorNum,bpx,pos.x-_size.width*0.5)
            end
            if bpx >= pos.x+display.right-_size.width*0.5 then
                self:playerDead()
--                Tools.printDebug("brj1111111111111111--------右边死亡---------:",self.jumpFloorNum,bpx,pos.x+display.right+_size.width*0.5)
            end
        end
        if bpy < pos.y-Room_Size.height*3 then
            self:playerDead()
        end
    end
    
    --火箭状态下背景移动
    if self.m_player:isInState(PLAYER_STATE.Rocket) or self.m_player:isInState(PLAYER_STATE.StartRocket) then
        self.bg:setPosition(self.m_camera:getPosition())
    end


    local _scaleX=self.m_player:getScaleX()
    local vel=self.m_player:getBody():getVelocity()
    
    local _body = self.m_player:getBody()
    local _p = _body:getPosition()
    local _veloc = _body:getVelocity()
    local _scaleX = self.m_player:getScaleX()
    local _add = -1*_scaleX/math.abs(_scaleX)  --因为人物默认是向左的，所以乘以-1
    self.m_player:setVelocity(cc.p(_add*self.m_player:getSpeed(),vel.y))

    if self.m_player:getJump() then
        self.m_physicWorld:rayCast(handler(self,self.rayCastFunc),cc.p(_p.x,_p.y+_size.height*0.5),cc.p(_p.x,_p.y+_size.height*0.5+Raycast_DisY))--起始坐标和结束坐标(是指发出的一条射线)
    else
        self.m_physicWorld:rayCast(handler(self,self.rayCastFunc),cc.p(_p.x,_p.y-_size.height*0.5),cc.p(_p.x,_p.y-_size.height*0.5-Raycast_DisY))
    end

    
    --左右射线检测(火箭状态不做处理)
    if not self.m_player:isInState(PLAYER_STATE.Rocket) and not self.m_player:isInState(PLAYER_STATE.StartRocket) then
        self.m_physicWorld:rayCast(handler(self,self.rayCastFuncX),cc.p(_p.x,_p.y),cc.p(_p.x+_add*(_size.width*0.5+Raycast_DisX),_p.y))
    end
    
    --钢架类型检测
    if self.curRoomType == MAPROOM_TYPE.Special then
        self.m_physicWorld:rayCast(handler(self,self.rayCastFuncSpecialX),cc.p(_p.x,_p.y),cc.p(_p.x+_add*display.right,_p.y))
    end
    
    --=====================幻影效果===================
    if self.phantomShow then
--        Tools.printDebug("----brj hopscotch 幻影效果：",self.phantomShow,math.abs(bpx - 20),self.lastPlsyerX)
        if not self.lastPlsyerX or math.abs(bpx - self.lastPlsyerX) > 20 then
--            Tools.printDebug("----brj ?????????????????????????：",self.phantomShow,self.lastPlsyerX)
            self.lastPlsyerX = bpx
            local sprite = display.newSprite(RoleConfig[GameDataManager.getFightRole()].roleImg):addTo(self)
            local pos = self.m_camera:convertToNodeSpace(cc.p(bpx,bpy))
            sprite:setPosition(pos)
            sprite:setScale(0.45)
            sprite:setScaleX(_scaleX*0.45)
            local fadeout = cc.FadeOut:create(1)
            local remove = cc.RemoveSelf:create()
            local seq = cc.Sequence:create(fadeout,remove)
            sprite:runAction(seq)
        end
    end
    --===============================================
 
    
    if self.curRoomType == MAPROOM_TYPE.Running and not self.m_player:isInState(PLAYER_STATE.Rocket) and not self.m_player:isInState(PLAYER_STATE.StartRocket) then
--        Tools.printDebug("brj--------横跑射线检测---------: ",_p.y,_p.y-Room_Size.height,_p.y-_size.height*0.5)
        if self.curState == State_Type.RunningState then
            self.isBgMove = true
            local x,y = self.m_player:getPosition()
            local mx,my = self.m_camera:getPosition()
            if self.curRoomDistance ~= MAPRUNNING_TYPE.Both then
                if _scaleX == 1 then
                    if x + _size.width+20 < self.otherX and y+_size.height*0.5 < self.otherY then
                        self:playerDead()
                    end
                    if x-display.width*0.7 < mx and not self.arrival then
                        self.m_camera:setPositionX(mx-10)
                        self.bg:setPositionX(mx-10)
                    else
                        self.arrival = true
                        self.m_camera:setPositionX(x-display.width*0.7)
                        self.bg:setPositionX(x-display.width*0.7)
                    end
                else
                    if x - _size.width - 20 > self.otherX and y+_size.height*0.5 < self.otherY then
                        self:playerDead()
                    end
                    if mx < x-display.width*0.3 and not self.arrival then
                        self.m_camera:setPositionX(mx+10)
                        self.bg:setPositionX(mx+10)
                    else
                        self.arrival = true
                        self.m_camera:setPositionX(x-display.width*0.3)
                        self.bg:setPositionX(x-display.width*0.3)
                    end
                end
            else
                if _scaleX == 1 then
                    if x + _size.width+20 < self.otherX and y+_size.height*0.5 < self.otherY then
                        Tools.printDebug("brj--------执行角色死亡---------: ",x + _size.width+20,self.otherX,y+_size.height*0.5,self.otherY)
                        self:playerDead()
                    end
                    if x-display.width*0.7 < mx then
                        self.bothArrival = true
                    end
                    if self.bothArrival then
                        if x-display.width*0.7 < mx and not self.arrival then
                            self.m_camera:setPositionX(mx-10)
                            self.bg:setPositionX(mx-10)
                        else
                            self.arrival = true
                            self.m_camera:setPositionX(x-display.width*0.7)
                            self.bg:setPositionX(x-display.width*0.7)
                        end
                    end
                else
--                    Tools.printDebug("brj--------横跑条件---------: ",x - _size.width*0.5,self.otherX)
                    if x - _size.width - 20 > self.otherX and y+_size.height*0.5 < self.otherY then
                        self:playerDead()
                    end
                    if mx < x-display.width*0.3 then
                    	self.bothArrival = true
                    end
                    if self.bothArrival then
                        if mx < x-display.width*0.3 and not self.arrival then
                            self.m_camera:setPositionX(mx+10)
                            self.bg:setPositionX(mx+10)
                        else
                            self.arrival = true
                            self.m_camera:setPositionX(x-display.width*0.3)
                            self.bg:setPositionX(x-display.width*0.3)
                        end
                    end
                end
            end
        end
    end
    
    --背景移动
    if self.isBgMove then
        local pos = cc.p(self.m_camera:getPosition())
        self.bgNode:bgMapMove(pos,self.curRoomType)
    end
    
    if self.jumpFloorNum == Map_Grade.floor_D then
        self.m_player:changeSpeed(MAP_SPEED.floor_D)
    elseif self.jumpFloorNum == Map_Grade.floor_C then
        self.m_player:changeSpeed(MAP_SPEED.floor_C)
    elseif self.jumpFloorNum == Map_Grade.floor_B then
        self.m_player:changeSpeed(MAP_SPEED.floor_B)
    elseif self.jumpFloorNum == Map_Grade.floor_A then
        self.m_player:changeSpeed(MAP_SPEED.floor_A)
    elseif self.jumpFloorNum == Map_Grade.floor_S then
        self.m_player:changeSpeed(MAP_SPEED.floor_S)
    end
   
    
    --双向倾斜时，当移出镜头时，移除右向缓存房间
    if #self.m_rightRooms > 0 then
        local roomPosY = self.m_rightRooms[1]:getPositionY()
        local cameraPosY = self.m_camera:getPositionY()
--        Tools.printDebug("brj--------双向倾斜坐标---------: ",roomPosY,cameraPosY)
        if roomPosY + Room_Size.height < cameraPosY then
            local var = table.remove(self.m_rightRooms,1)
            if not tolua.isnull(var) then
                var:dispose()
            end
    	end
    end
    
    --双向横跑时，当移出镜头时，移除右向缓存房间
    if #self.m_bothRightRooms > 0 then
        local roomPosY = self.m_bothRightRooms[1]:getPositionY()
        local cameraPosY = self.m_camera:getPositionY()
        if roomPosY + Room_Size.height < cameraPosY then
            local var = table.remove(self.m_bothRightRooms,1)
            if not tolua.isnull(var) then
                var:dispose()
            end
        end
    end
    if #self.m_bothOtherRooms > 0 then
        local roomOtherPosY = self.m_bothOtherRooms[1]:getPositionY()
        local cameraPosY = self.m_camera:getPositionY()
        if roomOtherPosY + Room_Size.height < cameraPosY then
            local var = table.remove(self.m_bothOtherRooms,1)
            if not tolua.isnull(var) then
                var:dispose()
            end
        end
    end
    if #self.m_otherRooms > 0 then
        local roomOtherPosY = self.m_otherRooms[1]:getPositionY()
        local cameraPosY = self.m_camera:getPositionY()
        if roomOtherPosY + Room_Size.height < cameraPosY then
            local var = table.remove(self.m_otherRooms,1)
            if not tolua.isnull(var) then
                var:dispose()
            end
        end
    end
    
    --开局冲刺火箭
    if self.rocketFloor and GameDataManager.getPoints() == self.rocketFloor and self.m_player:isInState(PLAYER_STATE.StartRocket) then
    	--
        self:toStopStartRocket()
    end
    
    --火箭道具第一种类型
    if not (self.m_player:isInState(PLAYER_STATE.Rocket) and self.m_player:getRocketState()~=1) then
        self:CoreLogic()
    end
    
    if self.rocket then
        local cameraPos = cc.p(self.m_camera:getPosition())
        self.rocket:setPosition(cc.p(cameraPos.x+display.cx,cameraPos.y+display.cy-200))
        local lean = math.pow((cameraPos.x-self.rocketLastPos.x),2)+ math.pow((cameraPos.y-self.rocketLastPos.y),2)
        local sqLean = math.sqrt(lean)
        if sqLean~=0 then
            local radian = math.asin((cameraPos.x-self.rocketLastPos.x)/sqLean)
            local angle = math.deg(radian)
--            Tools.printDebug("------------火箭移动角度---------：",angle)
--            if self.lastAngle~=angle then
                self.rocket:setRotation(angle)
--                self.lastAngle = angle
--            end
        end
        self.rocketLastPos = cameraPos
    end
    
--    Tools.printDebug("------------bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb---------：",self.m_player:getPositionY())

end


--碰撞开始触发
function MapLayer:collisionBeginCallBack(parameters)
    if not GameController.getCollsionEnable() then
        return true
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
    
    if (not player) or player:isDead() then
        return true
    end
    if tolua.isnull(obstacle) then
        return false
    end
    if player:isInState(PLAYER_STATE.Rocket) or player:isInState(PLAYER_STATE.StartRocket) then
    	return true
    end
    
    if obstacleTag == ELEMENT_TAG.FLOOR then
--        Tools.printDebug("----------brj 碰撞检测------------: ")
        self.isCollision = true
        if not self.m_player:getJump() and self.curRoomType ~= MAPROOM_TYPE.Running and not GameController.isInState(PLAYER_STATE.Rocket) 
            and not GameController.isInState(PLAYER_STATE.StartRocket) then
            local _size = self.m_player:getSize()
            local bpx,bpy = self.m_player:getPosition()
            local roomIndex = math.ceil((self.m_player:getPositionY()-self.bottomHeight-self.m_heightValue-p_y)/Room_Size.height)
--            if self.m_player:getCheckSign() then
                local floorPos
                if self.floorPos[self.jumpFloorNum].x then
                    floorPos = self.floorPos[self.jumpFloorNum]
                else
                    if self.curRoomKey > 1 then
                        if self.curRoomKey % 2 == 0 then
                            floorPos = self.floorPos[self.jumpFloorNum][1]
                        else
                            floorPos = self.floorPos[self.jumpFloorNum][2]
                        end
                    end
                end
                self.m_player:setPosition(cc.p(bpx,floorPos.y+_size.height*0.5+self.m_player:getErrorValue()))
--                Tools.printDebug("----------brj 碰撞检测------------: ",floorPos.y+_size.height*0.5+self.m_player:getErrorValue())
--            end
        end
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
            local _scaleX = self.m_player:getScaleX()
            if playerBP.y+_size.height<=obstacleBP.y then
                if (playerBP.x+_size.width*0.5 >= obstacleBP.x-8 and obstacleTag==ELEMENT_TAG.WALLRIGHT and _scaleX == -1 and (self.openDistance == OpenWallType.Right or self.openDistance == OpenWallType.All)) 
                    or (playerBP.x-_size.width*0.5 <= obstacleBP.x+8 and obstacleTag==ELEMENT_TAG.WALLLEFT and _scaleX == 1 and (self.openDistance == OpenWallType.Left or self.openDistance == OpenWallType.All)) then
                    self:playerDead()
                    return false
                else
                    if self.m_player:getJump() then
                        self.m_player:toStopJump()
                    end
                end
            else
                if playerBP.y+_size.height>obstacleBP.y and playerBP.y-_size.height<obstacleBP.y then
                    if playerBP.x+_size.width*0.5<obstacleBP.x then
                        player:setVelocity(cc.p(player:getSpeed(),vel.y))
                        player:setScaleX(math.abs(_scaleX))
                    else
                        player:setVelocity(cc.p(-player:getSpeed(),vel.y))
                        player:setScaleX(-math.abs(_scaleX))
                    end
                    if obstacleTag==ELEMENT_TAG.SPECIAL_TAG then
                        if not tolua.isnull(obstacle) then
                            obstacle:collision()
                        end
                    end
                end 
            end
       end
       self.isCollision = true
       
        return true
    elseif obstacleTag == ELEMENT_TAG.GOOD_TAG then
        if not tolua.isnull(obstacle) then
            obstacle:collision()
        end
        return true
    end

    return true
end

--碰撞反射，从人物中心向下或向上发射一个比自身一半多 Raycast_DisY 像素的探测射线，进行检测有无障碍物
function MapLayer:rayCastFunc(_world,_p1,_p2,_p3)
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
    
    if _tag == ELEMENT_TAG.FLOOR then
        local _size = self.m_player:getSize()
        local bpx,bpy = self.m_player:getPosition()
        local roomIndex = math.ceil((self.m_player:getPositionY()-self.bottomHeight-self.m_heightValue-p_y)/Room_Size.height)
        if not self.m_player:getJump() and self.curRoomType ~= MAPROOM_TYPE.Running and not GameController.isInState(PLAYER_STATE.Rocket) 
            and not GameController.isInState(PLAYER_STATE.StartRocket)then
--            if roomIndex == self.jumpFloorNum then
                local floorPos
                if self.floorPos[self.jumpFloorNum].x then
                    floorPos = self.floorPos[self.jumpFloorNum]
                else
                    if self.curRoomKey > 1 then
                        if self.curRoomKey % 2 == 0 then
                            floorPos = self.floorPos[self.jumpFloorNum][1]
                        else
                            floorPos = self.floorPos[self.jumpFloorNum][2]
                        end
                    end
                end
--                Tools.printDebug("----------brj 不停检测角色y轴：",self.jumpFloorNum,floorPos.y)
                self.m_player:setPosition(cc.p(bpx,floorPos.y+_size.height*0.5+self.m_player:getErrorValue()))
--            end
        end
        self.isCollision = true
        
--        if not GameController.isInState(PLAYER_STATE.Rocket) and not GameController.isInState(PLAYER_STATE.StartRocket) then
--            self:CoreLogic()
--        end
        
        return true
    end

    return true
end


function MapLayer:rayCastFuncX(_world,_p1,_p2,_p3)

    local _body = _p1.shape:getBody()
    local _bnode = _body:getNode()
    local _tag = _body:getTag()
    local _scaleX = self.m_player:getScaleX()
    local playerBP=self.m_player:getBody():getPosition()
    local obstacleBP=_body:getPosition()

    if (not _bnode) or _tag==ELEMENT_TAG.PLAYER_TAG then
        return true
    end
    
    if _tag==ELEMENT_TAG.WALLLEFT or _tag==ELEMENT_TAG.WALLRIGHT or _tag==ELEMENT_TAG.SPECIAL_TAG then
        if not tolua.isnull(_bnode) then
            local vel=self.m_player:getBody():getVelocity()
            local _size = self.m_player:getSize()
            if playerBP.y+_size.height>obstacleBP.y and playerBP.y-_size.height<obstacleBP.y then
                if playerBP.x+_size.width*0.5<obstacleBP.x then
                    self.m_player:setVelocity(cc.p(self.m_player:getSpeed(),vel.y))
                    self.m_player:setScaleX(math.abs(_scaleX))
                else
                    self.m_player:setVelocity(cc.p(-self.m_player:getSpeed(),vel.y))
                    self.m_player:setScaleX(-math.abs(_scaleX))
                end
            end
            if _tag==ELEMENT_TAG.SPECIAL_TAG then
                _bnode:collision()
            end
       end
    end

    return true
end

function MapLayer:rayCastFuncSpecialX(_world,_p1,_p2,_p3)

    local _body = _p1.shape:getBody()
    local _bnode = _body:getNode()
    local _tag = _body:getTag()
    local _scaleX = self.m_player:getScaleX()
    local playerBP=self.m_player:getBody():getPosition()
    local obstacleBP=_body:getPosition()

    if (not _bnode) or _tag==ELEMENT_TAG.PLAYER_TAG then
        return true
    end

    local cmx,cmy = self.m_camera:getPosition()
    if _tag==ELEMENT_TAG.SPECIAL_TAG then
        if not tolua.isnull(_bnode) then
            if obstacleBP.x <= cmx + display.cx then
            	self.openDistance = OpenWallType.Right
            else
                self.openDistance = OpenWallType.Left
            end
        end
    end

    return true
end

--主玩法核心逻辑
function MapLayer:CoreLogic()
    local _size = self.m_player:getSize()
    local _scaleX = self.m_player:getScaleX()
    local bpx,bpy = self.m_player:getPosition()
    local cmx,cmy = self.m_camera:getPosition()
    local roomIndex = math.ceil((bpy-self.bottomHeight-self.m_heightValue-p_y)/Room_Size.height)

    if self.m_lastRoomIdx ~= roomIndex then
        local _room
        if self.curRoomType == MAPROOM_TYPE.TwoLean and self.jumpFloorNum % 10 ~= 0 then
            if bpx > cmx + display.cx then
                _room = self:getRoomRightByIdx(roomIndex)
            else
                _room = self:getRoomByIdx(roomIndex)
            end
        else
            local firstRunRoom = self:getRightRoomByIdx(roomIndex)
            if firstRunRoom and _scaleX == -1 then
                _room = firstRunRoom
            else
                _room = self:getRoomByIdx(roomIndex)
            end
        end
        if _room then
            _room:intoRoom()
            self.curRoomRunType = _room:getRunningRoomFloorType()
            self.curRoomType = _room:getCurRoomType()
            self.curRoomDistance = _room:getRunningDistance()
            self.curRoomKey = _room:getRoomKey()
            self.curRoomWidth = _room:getRoomWidth()
            self.isCloseRoom = _room:getRoomCloseValue()
            self.openDistance = _room:getSingleOpenWallDir()
            if self.curRoomType == MAPROOM_TYPE.Running and self.curRoomDistance == MAPRUNNING_TYPE.Both then
                if _scaleX == -1 then
                    self.otherX = _room:getRoomWidth()+_room:getPositionX()+Room_Distance.x
                else
                    self.otherX = _room:getPositionX()+Room_Distance.x
                end
            end
            self.otherY = _room:getPositionY()--+Room_Size.height
            self.m_lastRoomIdx = roomIndex
        end
        
        if self.m_lastRoomIdx > self.jumpFloorNum then
            self.phantonFollow = true
            self.jumpFloorNum = roomIndex
            GameDataManager.setPoints(self.jumpFloorNum)
            if self.curRoomType~=MAPROOM_TYPE.Running then
                if self.m_player:isInState(PLAYER_STATE.StartRocket) or self.m_player:isInState(PLAYER_STATE.Rocket) then
                	self:toStartRocketCameraMove()
                else
                    self:toCameraMove() 
                end
            else
                if self.jumpFloorNum % 10 == 1 then
                    self.runningKey = 1
                    self.roomKey = 0
                    self:toCameraMove()
                else
                    self:toRunCameraMove()
                end
            end
            self:addNewRooms()
        end
        if self.curRoomType==MAPROOM_TYPE.Running then
            self:toRunFirstCameraMove()
        end
        
    end


    if self.curRoomType == MAPROOM_TYPE.Running then
        local _room,rKey = self:getOtherRoomByX(bpx,self.roomKey)
        if _room then
            if self.runningKey and self.runningKey < _room:getRoomKey() then
                self.roomKey = rKey
                self.runningKey = _room:getRoomKey()
                if _scaleX == -1 then
                    self.otherX = _room:getRoomWidth()+_room:getPositionX()+Room_Distance.x
                else
                    self.otherX = _room:getPositionX()+Room_Distance.x
                end
                self.otherY = _room:getPositionY()+Room_Size.height
                self:addNewRooms()
            end
        end
    end
    
end

--游戏死亡
function MapLayer:playerDead()
    if self.backOrigin then
    	return
    end
    self.isCollision = false
    self.m_player:selfDead()
end

--双向横跑时根据编号从右边缓存中取出房间
function MapLayer:getRightRoomByIdx(_roomIndx)
    for key, var in pairs(self.m_bothRightRooms) do
        if var:getRoomIndex() == _roomIndx then
            return var
        end
    end
end

--根据房间编号从缓存中获取房间对象
function MapLayer:getRoomByIdx(_roomIndx)
    for key, var in pairs(self.m_chaceRooms) do
        if var:getRoomIndex() == _roomIndx then
            return var
        end
    end
end

--双向倾斜根据房间编号从右向缓存中获取房间对象
function MapLayer:getRoomRightByIdx(_roomIndx)
    for key, var in pairs(self.m_rightRooms) do
        if not tolua.isnull(var) then
            if var:getRoomIndex() == _roomIndx then
                return var
            end
        end
    end
end

--根据房间编号从other中获取房间对象
function MapLayer:getOtherRoomByX(_px,k)
    if self.curRoomDistance == MAPRUNNING_TYPE.Both then
    	local scaleX = self.m_player:getScaleX()
        if scaleX == 1 then
            for key, var in pairs(self.m_otherRooms) do
                if math.abs(_px) >= math.abs(var:getRoomX()) and k<key then
                    return var,key
                end
            end
        else
            for key, var in pairs(self.m_bothOtherRooms) do
                if math.abs(_px) >= math.abs(var:getRoomX()) and k<key then
                    return var,key
                end
            end
    	end
    else
        for key, var in pairs(self.m_otherRooms) do
            if math.abs(_px) >= math.abs(var:getRoomX()) and k<key then
                return var,key
            end
        end
    end
end

--进行弹跳
function MapLayer:toJump()
    self.m_toJump = true
    local roomIndex = math.ceil((self.m_player:getPositionY()-self.bottomHeight-self.m_heightValue-p_y)/Room_Size.height)
    local pos
    if self.floorPos[roomIndex].x then
        pos = self.floorPos[roomIndex]
    else
        pos = self.floorPos[roomIndex][1]
    end
    self.m_player:toJump(pos,self.curRoomType)
end

--设置幻影
function MapLayer:setPhantomShow(enable)
    self.phantomShow = enable
end

--火箭对象
function MapLayer:setRocketObj(_obj)
	self.rocket = _obj
	self.rocketLastPos = cc.p(0,0)
end

--设置火箭状态下2，3类型逻辑
function MapLayer:toRocketRunningLogic(RocketState,scaleX,curRoomKey)
    self.m_camera:stopAllActions()
    self.curState = State_Type.CommonState
    local mx,my = self.m_camera:getPosition()
    if RocketState == 2 then
        local curFloor = self.jumpFloorNum
        local curCloseFloor = math.ceil(self.jumpFloorNum/10)*10
        
        local nextCloseFloorX,nextCloseFloorY
        if self.floorPos[curCloseFloor+10].x then
            nextCloseFloorX = self.floorPos[curCloseFloor+10].x
            nextCloseFloorY = self.floorPos[curCloseFloor+10].y
        else
            if scaleX == 1 then
                nextCloseFloorX = self.floorPos[curCloseFloor+10][1].x
                nextCloseFloorY = self.floorPos[curCloseFloor+10][1].y
            else
                nextCloseFloorX = self.floorPos[curCloseFloor+10][2].x
                nextCloseFloorY = self.floorPos[curCloseFloor+10][2].y
                local r_posx = self.m_bothRightRooms[#self.m_bothRightRooms]:getPositionX()
                local l_posx = self.m_bothMoveRooms[1]:getPositionX()
                for var=1, #self.m_bothMoveRooms do
                    local room = self.m_bothMoveRooms[var]
                    local roomX = room:getPositionX()
                    room:setPositionX(roomX+r_posx-l_posx)
                    local x,y = room:getPosition()
                    if room.getRoomIndex then
                        local roomNum = room:getRoomIndex()
                        self.floorPos[roomNum] = cc.p(x,y)
                    end
                end
                self.m_bothMoveRooms = {}
                self.twoRunningFloor = false
            end
            self.curRunDistance = scaleX
        end
        
        local count = self:getRoomByIdx(curCloseFloor+1):getRoomsCount()
        local time = (10-self.jumpFloorNum%10+1)*1/10
        local time2 = count/10*1.5
        local move = cc.MoveTo:create(time,cc.p(self.floorPos[curCloseFloor].x,self.floorPos[curCloseFloor].y-self.bottomHeight))
        local move2 = cc.MoveTo:create(time2,cc.p(nextCloseFloorX,nextCloseFloorY-self.bottomHeight))
        local callfun = cc.CallFunc:create(function()
            local addCount = curCloseFloor-curFloor+count
            for var=1, addCount do
                self:addNewRooms()
            end
            self.jumpFloorNum = curCloseFloor+10
            GameDataManager.setPoints(self.jumpFloorNum)
            self.isBgMove = false
            self.bg:setPosition(self.m_camera:getPosition())
            self.curRoomType = MAPROOM_TYPE.Running
        end)
        local seq = cc.Sequence:create(move,move2,callfun)
        self.m_camera:runAction(seq)
        self.isBgMove = true

    elseif RocketState == 3 then
        local curFloor = self.jumpFloorNum
        local curCloseFloor = math.ceil(self.jumpFloorNum/10)*10
        
        local curCloseFloorX,curCloseFloorY
        if self.floorPos[curCloseFloor].x then
            curCloseFloorX = self.floorPos[curCloseFloor].x
            curCloseFloorY = self.floorPos[curCloseFloor].y
        else
            if scaleX == 1 then
                curCloseFloorX = self.floorPos[curCloseFloor][1].x
                curCloseFloorY = self.floorPos[curCloseFloor][1].y
            else
                curCloseFloorX = self.floorPos[curCloseFloor][2].x
                curCloseFloorY = self.floorPos[curCloseFloor][2].y
            end
            self.curRunDistance = scaleX
        end
        
        local count = self:getRoomByIdx(curFloor):getRoomsCount()
        local time = (count-curRoomKey)*1/10
        local time2 = 1
        local addCount = count-curRoomKey+10
        for var=1, addCount do
            self:addNewRooms()
        end
        local move = cc.MoveTo:create(time,cc.p(curCloseFloorX,curCloseFloorY-self.bottomHeight))
        local move2 = cc.MoveTo:create(time2,cc.p(self.floorPos[curCloseFloor+10].x,self.floorPos[curCloseFloor+10].y-self.bottomHeight))
        local callfun = cc.CallFunc:create(function()
            self.jumpFloorNum = curCloseFloor+10
            GameDataManager.setPoints(self.jumpFloorNum)
            self.isBgMove = false
            self.bg:setPosition(self.m_camera:getPosition())
        end)
        local seq = cc.Sequence:create(move,move2,callfun)
        self.m_camera:runAction(seq)
        self.isBgMove = true
--        Tools.printDebug("--------brj 火箭冲刺镜头坐标：",self.floorPos[curCloseFloor+10].x)
    end
end


--获取摄像机对象，楼层坐标组，当前楼层
function MapLayer:getRocketData()
    return self.m_camera,self.floorPos,self.jumpFloorNum,self.bottomHeight,self.curRoomKey
end

--在开局火箭下摄像机移动
function MapLayer:toStartRocketCameraMove()
    local _size = self.m_player:getSize()
    local roomIndex = math.ceil((self.m_player:getPositionY()-self.bottomHeight-self.m_heightValue-p_y)/Room_Size.height)
    self.curState = State_Type.CommonState
    local pos = self.floorPos[self.jumpFloorNum]
    if roomIndex >= GameDataManager.getPoints() then
        self.m_camera:stopAllActions()
        local mx,my = self.m_camera:getPosition()
        local move = cc.MoveTo:create(RoleJumpCameraMoveTime*0.2,cc.p(pos.x,pos.y-self.bottomHeight))
        local callfun = cc.CallFunc:create(function()
            self.isBgMove = false
        end)
        local seq = cc.Sequence:create(move,callfun)
        self.m_camera:runAction(seq)
        self.isBgMove = true
        self.bgNode:bgPortraitMove(pos,self.bottomHeight,mx,0.2)

        self.bg:stopAllActions()
        local move3 = cc.MoveTo:create(RoleJumpCameraMoveTime*0.2,cc.p(pos.x,pos.y-self.bottomHeight))
        self.bg:runAction(move3)
    end 
end


--摄像机移动
function MapLayer:toCameraMove()
    local _size = self.m_player:getSize()
    local roomIndex = math.ceil((self.m_player:getPositionY()-self.bottomHeight-self.m_heightValue-p_y)/Room_Size.height)
    if self.curRoomType==MAPROOM_TYPE.Running then
        local pos
        if self.floorPos[self.jumpFloorNum].x then
            pos = self.floorPos[self.jumpFloorNum]
        else
            if self.m_player:getScaleX() == 1 then
                pos = self.floorPos[self.jumpFloorNum][1]
            else
                pos = self.floorPos[self.jumpFloorNum][2]
            end
        end   
        if roomIndex >= GameDataManager.getPoints() then
            self.m_camera:stopAllActions()
            local mx,my = self.m_camera:getPosition()
            local move = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(mx,pos.y-self.bottomHeight))
            local callfun = cc.CallFunc:create(function()
                self.isBgMove = false
            end)
            local seq = cc.Sequence:create(move,callfun)
            self.m_camera:runAction(seq)
--            self.isBgMove = true
            self.bgNode:bgPortraitRunningMove(pos.y,self.bottomHeight,mx)

            self.bg:stopAllActions()
            local move3 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(mx,pos.y-self.bottomHeight))
            self.bg:runAction(move3)
        end
    else
        self.curState = State_Type.CommonState
        local pos
        if self.floorPos[self.jumpFloorNum].x then
            pos = self.floorPos[self.jumpFloorNum]
        else
            if self.curRoomKey > 1 then
                if self.curRoomKey % 2 == 0 then
                    pos = self.floorPos[self.jumpFloorNum][1]
--                    Tools.printDebug("----------brj 当前房间roomKey：",pos.x)
                else
                    pos = self.floorPos[self.jumpFloorNum][2]
                    if self.curRoomKey == 3 then
                        local r_posx = self.m_rightRooms[#self.m_rightRooms]:getPositionX()
                        local l_posx = self.m_moveRooms[1]:getPositionX()
                        for var=1, #self.m_moveRooms do
                            local room = self.m_moveRooms[var]
                            local roomX = room:getPositionX()
                            room:setPositionX(roomX+r_posx-l_posx)
                            local x,y = room:getPosition()
                            if room.getRoomIndex then
                                local roomNum = room:getRoomIndex()
                                self.floorPos[roomNum] = cc.p(x,y)
                            end
                        end
                        self.m_moveRooms = {}
                        self.twoLeanFloor = false
                    end
                end
            end
        end
        if roomIndex >= GameDataManager.getPoints() then
            self.m_camera:stopAllActions()
            local mx,my = self.m_camera:getPosition()
--            Tools.printDebug("----------brj 摄像机：",mx)
            local move = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(pos.x,pos.y-self.bottomHeight))
            local callfun = cc.CallFunc:create(function()
                self.isBgMove = false
            end)
            local seq = cc.Sequence:create(move,callfun)
            self.m_camera:runAction(seq)
            self.isBgMove = true
            self.bgNode:bgPortraitMove(pos,self.bottomHeight,mx)

            self.bg:stopAllActions()
            local move3 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(pos.x,pos.y-self.bottomHeight))
            self.bg:runAction(move3)
        end 
    end
end

--横跑过程中的摄像机移动
function MapLayer:toRunCameraMove()
    local _size = self.m_player:getSize()
    local roomIndex = math.ceil((self.m_player:getPositionY()-self.bottomHeight-self.m_heightValue-p_y)/Room_Size.height)
    if roomIndex >= GameDataManager.getPoints() then
        local pos
        if self.floorPos[self.jumpFloorNum].x then
            pos = self.floorPos[self.jumpFloorNum]
        else
            if self.m_player:getScaleX() == 1 then
                pos = self.floorPos[self.jumpFloorNum][1]
            else
                pos = self.floorPos[self.jumpFloorNum][2]
            end
        end
        local mx,my = self.m_camera:getPosition()
        if self.jumpFloorNum % 10 ~= 1 and self.jumpFloorNum % 10 ~= 9 and self.jumpFloorNum % 10 ~= 0 then
            self.m_camera:stopAllActions()
            local move = cc.MoveBy:create(RoleJumpCameraMoveTime,cc.p(0,pos.y-self.bottomHeight-my))
            local callfun = cc.CallFunc:create(function()
                self.isBgMove = false
--                self.curState = State_Type.RunningState
            end)
            local seq = cc.Sequence:create(move,callfun)
            self.m_camera:runAction(seq)
--            self.isBgMove = true
            self.bgNode:toRunCameraMove(pos,self.bottomHeight,self.jumpFloorNum)

            local bgx,bgy = self.bg:getPosition()
            self.bg:stopAllActions()
            local move3 = cc.MoveBy:create(RoleJumpCameraMoveTime,cc.p(0,pos.y-self.bottomHeight-bgy))
            self.bg:runAction(move3)
        elseif self.jumpFloorNum % 10 == 0 then
            self.m_camera:stopAllActions()
            local move = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(pos.x,pos.y-self.bottomHeight))
            local callfun = cc.CallFunc:create(function()
                self.isBgMove = false
            end)
            local seq = cc.Sequence:create(move,callfun)
            self.m_camera:runAction(seq)
--            self.isBgMove = true

            self.bgNode:toRunCameraMove(pos,self.bottomHeight,self.jumpFloorNum)

            self.bg:stopAllActions()
            local move3 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(pos.x,pos.y-self.bottomHeight))
            self.bg:runAction(move3)
        end
    end
end

--当横跑第一层时调用
function MapLayer:toRunFirstCameraMove()
    local speed = self.m_player:getSpeed()
    local _scaleX=self.m_player:getScaleX()
    local pos
    if self.floorPos[self.jumpFloorNum].x then
        pos = self.floorPos[self.jumpFloorNum]
    else
        if _scaleX == 1 then
            pos = self.floorPos[self.jumpFloorNum][1]
        else
            pos = self.floorPos[self.jumpFloorNum][2]
        end
    end
    local mx,my = self.m_camera:getPosition()
    local x,y = self.m_player:getPosition()
	if self.jumpFloorNum % 10 == 1 then
        local toX
        if _scaleX == 1 and self.curRoomDistance == MAPRUNNING_TYPE.Left then
            toX = x-display.width
        elseif _scaleX == -1 and self.curRoomDistance == MAPRUNNING_TYPE.Right then
            toX = x
        else
            if _scaleX == 1 then
                toX = x-display.width
            else
                toX = x 
            end
        end
        
        if _scaleX == 1 and self.curRoomDistance == MAPRUNNING_TYPE.Left or (_scaleX == -1 and self.curRoomDistance == MAPRUNNING_TYPE.Right)
            or self.curRoomDistance == MAPRUNNING_TYPE.Both then
            
            self.isBgMove = true
            self.curRunDistance = _scaleX

            self.curState = State_Type.RunningState
            
            if self.curRoomDistance == MAPRUNNING_TYPE.Both and  _scaleX == -1 then
                local r_posx = self.m_bothRightRooms[#self.m_bothRightRooms]:getPositionX()
                local l_posx = self.m_bothMoveRooms[1]:getPositionX()
                for var=1, #self.m_bothMoveRooms do
                    local room = self.m_bothMoveRooms[var]
                    local roomX = room:getPositionX()
                    room:setPositionX(roomX+r_posx-l_posx)
                    local x,y = room:getPosition()
                    if room.getRoomIndex then
                        local roomNum = room:getRoomIndex()
                        self.floorPos[roomNum] = cc.p(x,y)
--                        Tools.printDebug("----------------最理想化的角色坐标：",roomNum,self.floorPos[roomNum].x)
                    end
                end
                self.m_bothMoveRooms = {}
                self.twoRunningFloor = false
            end

        end
    elseif self.jumpFloorNum % 10 == 9 then
--        Tools.printDebug("----------------最理想化的角色坐标：",self.jumpFloorNum,x,pos.x+self.curRoomWidth)
        if x-200 < pos.x+self.curRoomWidth and self.curRunDistance == 1 or (x+200 > pos.x and self.curRunDistance == -1) then
            self.arrival = false
            self.bothArrival = false
            self.curState = State_Type.CommonState
            self.m_camera:stopAllActions()
            local moveY = cc.MoveTo:create(0.4*moveSpeed/speed,cc.p(pos.x,pos.y-self.bottomHeight))
            local moveX = cc.MoveTo:create(0.4*moveSpeed/speed,cc.p(pos.x,my))
            local callfun = cc.CallFunc:create(function()
                self.isBgMove = false
            end)
            local seq = cc.Sequence:create(moveX,moveY,callfun)
            self.m_camera:runAction(seq)
            self.isBgMove = true

            self.bg:stopAllActions()
            local moveY = cc.MoveTo:create(0.4*moveSpeed/speed,cc.p(pos.x,pos.y-self.bottomHeight))
            local moveX = cc.MoveTo:create(0.4*moveSpeed/speed,cc.p(pos.x,my))
            local seq = cc.Sequence:create(moveX,moveY)
            self.bg:runAction(seq)
        end
    end
end

--回到起始点
function MapLayer:backOriginFunc()
    if GameController.isInState(PLAYER_STATE.Slow) then
        GameController.getCurPlayer():clearBuff(PLAYER_STATE.Slow)
    end
    if GameController.isInState(PLAYER_STATE.Magnet) then
        GameController.getCurPlayer():clearBuff(PLAYER_STATE.Magnet)
    end
    
    GameDispatcher:dispatch(EventNames.EVENT_STOP_COUNTDOWN)

    self.backOrigin = true
    self.bg:setTouchEnabled(true)
    self.bg:setTouchSwallowEnabled(true)
    
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
    --当20层以内死亡将初始化30层以外已缓存特殊钢架时销毁
    local spNum = math.ceil(removeCount / 10)
    local initNum = MAP_ROOM_INIT_NUM*0.1
    if spNum > 0 then
    	for var=1, spNum do
            self:disposeSpecial(var+initNum)
    	end
    end
    
    --20层以内的特殊钢架恢复原型
    if self.specialBody[2] and #self.specialBody[2] > 0 then
        for var=1, #self.specialBody[2] do
            local spBodyArr = self.specialBody[2][var]
            local move = cc.MoveTo:create(0.2,spBodyArr[2])
            spBodyArr[1]:runAction(move)
            spBodyArr[1]:resetPosCount()
            if not tolua.isnull(spBodyArr[1].lineSprite) then
                local scale = 8.5-(spBodyArr[3]-1)
                local scaleX = spBodyArr[1].lineSprite:getScaleX()
                local toScale = cc.ScaleTo:create(0.2,scaleX,scale)
                spBodyArr[1].lineSprite:runAction(toScale)
            end
    	end
    end
    
    self.jumpFloorNum = 1
    local _size = self.m_player:getSize()
    local floorPos = self.floorPos[self.jumpFloorNum]
    self.m_player:toStopJump()
    self.m_player:addLifeNum(1)
    self.m_player:setPosition(cc.p(display.cx,floorPos.y+_size.height*0.5+self.m_player:getErrorValue()))
    --清除所有角色buff
    self.m_player:clearAllBuff()
    
    self.m_camera:stopAllActions()
    local move = cc.MoveTo:create(0.5,cc.p(0,0))
    self.m_camera:runAction(move)
    
    --回到原点时随机过度值清除
    self.transit = false
    self.transit_1 = false
    
    self.isBgMove = false
    self.bgNode:toBackOrigin()
    
    if self.delayHandler then
        Scheduler.unscheduleGlobal(self.delayHandler)
        self.delayHandler=nil
    end
    self.delayHandler = Tools.delayCallFunc(0.5,function()
        self.backOrigin = false
        self.bg:setTouchEnabled(false)
        self.bg:setTouchSwallowEnabled(false)
        self.m_player:setDeadReback()
    end)
--    Tools.printDebug("----------brj 摄像机坐标：",self.m_camera:getPosition())

end

--开局火箭冲刺
function MapLayer:toStartRocket(_floor)
    self.rocketFloor = _floor
    Tools.printDebug("---------------------brj hoshos 随机层数：",_floor)
    self.runFloorNum = self.runFloorNum + _floor
end

function MapLayer:toStopStartRocket()
    local _size = self.m_player:getSize()
    local pos = self.floorPos[self.rocketFloor]
    self.m_player:setPosition(cc.p(pos.x+display.cx,pos.y+_size.height*0.5+self.m_player:getErrorValue()))
    self.m_player:toStopStartRocket()
--    self.m_camera:setPosition(cc.p(pos.x,pos.y-self.bottomHeight))
end


--销毁特殊刚体
function MapLayer:disposeSpecial(_typeNum)
    if self.specialBody[_typeNum] then
        for key, var in pairs(self.specialBody[_typeNum]) do
            if type(var) ~= "table" then
                if not tolua.isnull(var) then
                    var:dispose()
                end
            else
                if not tolua.isnull(var[1]) then
--                    Tools.printDebug("----------brj 是否移除特殊钢架：",_typeNum)
                    var[1]:dispose()
                end
            end
        end
        self.specialBody[_typeNum] = {}
    end
end


--地图销毁
function MapLayer:dispose(parameters)
    --移除碰撞事件
    self:getEventDispatcher():removeEventListener(self.m_event)
    --移除帧事件
    self:removeNodeEventListenersByEvent(cc.NODE_ENTER_FRAME_EVENT)
    --移除其它事件
    GameDispatcher:removeListenerByName(EventNames.EVENT_GAME_OVER)


    if self.m_player then
        self.m_player:dispose()
    end
    
    if self.bgNode then
    	self.bgNode:dispose()
    end

    for key, var in ipairs(self.m_chaceRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in ipairs(self.m_otherRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in ipairs(self.m_rightRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in ipairs(self.m_moveRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in ipairs(self.m_bothRightRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in ipairs(self.m_bothOtherRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in ipairs(self.m_bothMoveRooms) do
        if not tolua.isnull(var) then
            var:dispose()
        end
    end
    
    for key, var in pairs(self.specialBody) do
    	for k, v in pairs(var) do
            if type(v) ~= "table" then
                if not tolua.isnull(v) then
                    v:dispose()
                end
            else
                if not tolua.isnull(v[1]) then
                    v[1]:dispose()
                end
            end
    	end
    end
    
    if self.touchHandler then
        Scheduler.unscheduleGlobal(self.touchHandler)
        self.touchHandler=nil
    end
    
    if self.delayHandler then
        Scheduler.unscheduleGlobal(self.delayHandler)
        self.delayHandler=nil
    end
    
    GameDataManager.resetRevive()
    GameDataManager.resetPoints()
    GameDataManager.resetGameDiamond()
    
    GameController.clearRooms()
    GameController.clearBody()
    self:removeFromParent(true)
end

return MapLayer