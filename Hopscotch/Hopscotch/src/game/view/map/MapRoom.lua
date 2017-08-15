--[[
地图房间
]]
local MapRoom = class("MapRoom",function()
    return display.newNode()
end)
local PhysicSprite = require("game.custom.PhysicSprite")
local Scheduler = require("framework.scheduler")
local DiamondElement = require("game.view.element.CoinElement")
local GoodsElement = require("game.view.element.GoodsElement")

local Block_DENSITY = 0
local Block_FRICTION = 0
local Block_ELASTICITY = 0
local Block_MASS = 400

--@param1:房间编号
--@param2:房间的配置id
function MapRoom:ctor(_idx,_levelCon,_floorNum,dArr,gFloor)
    --物理块儿
    self.m_blocks = {}
    self.m_cacheBodys = {} --缓存的刚体数组
    self.m_goods={}
    self.bgArr = {}   --存放当前房间整块格子的背景图
    self.ornament = {}   --存放所有的装饰品
    self.m_index = _idx
    self.m_curLevelCon = _levelCon
    self.m_floorNum = _floorNum
    self.roomType = _levelCon.roomType
    self.roomDistance = _levelCon.direction
    
    
--    Tools.printDebug("--------brj 特殊钢架：",_floorNum,_idx,_levelCon.roomType == MAPROOM_TYPE.Special)
    if _levelCon.roomType == MAPROOM_TYPE.Special and _idx == 10 then
        local spRes = SceneConfig[GameDataManager.getFightScene()].specailRes
        if spRes then
            local left = display.newSprite(spRes):addTo(self)
            local width = left:getCascadeBoundingBox().size.width
            left:setPosition(cc.p(_levelCon.lineX[1]-width,0))
            left:setAnchorPoint(cc.p(0,0))
            local right = display.newSprite(spRes):addTo(self)
            right:setScaleX(-1)
            right:setPosition(cc.p(_levelCon.lineX[2]+width+16,0))
            right:setAnchorPoint(cc.p(0,0))
        end
    end
    
    local _roomBgVo = RoomBgs[_levelCon.roomBgs[_idx]] or {}
    local _ornaments = Ornaments[_levelCon.ornaments[_idx]] or {}
    local _diamonds = Coins[_levelCon.coins[_idx]] or {}
    local _goods = RoomGoods[_levelCon.roomGoods[_idx]] or {}
    
    if _roomBgVo.gap then
        self.roomGap = _roomBgVo.gap
    else
        self.roomGap = 0
    end
    
    if _roomBgVo.type then
        self.m_type = _roomBgVo.type
    else
        self.m_type = false
    end

    --房间内地板墙壁
    self:initBlock(_roomBgVo)
    --房间装饰
    self:initOrnament(_ornaments)
    --房间内钻石
    local isShow = false
    if dArr and (dArr[1] == _idx or (#dArr == 2 and dArr[2] == _idx) or (#dArr == 3 and dArr[3] == _idx)) then
    	isShow = true
    end
    self:initDiamonds(_diamonds,isShow)
    local isGoodsShow = false
    if gFloor and gFloor == _idx then
    	isGoodsShow = true
    end
    self:initGoods(_goods,isGoodsShow)
    
    if _idx == #_levelCon.roomBgs and self.roomType ~= MAPROOM_TYPE.Running then
        local count = cc.LabelAtlas:_create()
        count:initWithString(_floorNum,"count/Count_4.png",17,25,string.byte("0"))
        count:setPosition(cc.p(Room_Size.width*0.5+Room_Distance.x,Room_Size.height*0.5+8))
        count:setAnchorPoint(0.5,0.5)
        count:setScaleX(2)
        count:setScaleY(1.5)
        self:addChild(count)
    end
    
end

--@param:墙壁和地板和背景
function MapRoom:initBlock(_roomBgVo)
    if _roomBgVo.bg then
        for k=1, #_roomBgVo.bg do
            local info = _roomBgVo.bg[k]
            local bg = display.newSprite(info.res)
            self:addChild(bg)
            bg:setAnchorPoint(cc.p(0,1))
            bg:setPosition(cc.p(info.x,info.y))
        end
    end
    if _roomBgVo.wallLeftRight then
        for j=1, #_roomBgVo.wallLeftRight do
            local info = _roomBgVo.wallLeftRight[j]
            local type = Tools.Split("0"..info.res,"#")
            local wall = PoolManager.getCacheObjByType(CACHE_TYPE[type[2]])
            if not wall then
                wall = PhysicSprite.new(info.res)
                wall:setCahceType(CACHE_TYPE[info.res])
                local tag
                if info.type == RoomWall_Type.Left then
                    tag = ELEMENT_TAG.WALLLEFT
                else
                    tag = ELEMENT_TAG.WALLRIGHT
                end
                self:addPhysicsBody(wall,tag)
                wall:retain()
            end
            self:addChild(wall)
            local wallSize = wall:getCascadeBoundingBox().size
            wall:setAnchorPoint(cc.p(0.5,0.5))
            wall:setPosition(cc.p(info.x+wallSize.width*0.5,info.y+wallSize.height*0.5))
            table.insert(self.m_blocks,wall)
        end
        if #_roomBgVo.wallLeftRight == 2 then
            self.isCloseRoom = true
            self.wallDirection = OpenWallType.Close
        else
            self.isCloseRoom = false
            if #_roomBgVo.wallLeftRight == 1 then
                if _roomBgVo.wallLeftRight[1].x < display.cx then
                    self.wallDirection = OpenWallType.Right
                else
                    self.wallDirection = OpenWallType.Left
                end
            elseif #_roomBgVo.wallLeftRight == 0 then
                self.wallDirection = OpenWallType.All
            end
        end
    end
    if _roomBgVo.floor then
        self.lastWidth = 0
        self.lastX = 0
        self.firstX = 0
        for k=1, #_roomBgVo.floor do
            local info = _roomBgVo.floor[k]
            local type = Tools.Split("0"..info.res,"#")
            local floor = PoolManager.getCacheObjByType(CACHE_TYPE[type[2]])
            if not floor then
                floor = PhysicSprite.new(info.res)
                floor:setCahceType(CACHE_TYPE[info.res])
                self:addPhysicsBody(floor,ELEMENT_TAG.FLOOR)
                floor:retain()
            end
            self:addChild(floor)
            local floorSize = floor:getCascadeBoundingBox().size
            floor:setAnchorPoint(cc.p(0.5,0.5))
            floor:setPosition(cc.p(info.x+floorSize.width*0.5,info.y+floorSize.height*0.5))
            table.insert(self.m_blocks,floor)
            self.lastWidth = floorSize.width
            self.lastX = info.x
            if k == 1 then
                self.firstX = info.x
            end
        end
        self.roomWidth = self.lastX-self.firstX+self.lastWidth
    end
end

--创建房间装饰
function MapRoom:initOrnament(_roomBgVo)
    if _roomBgVo.bg then
        self.window = {}
        for i=1, #_roomBgVo.bg do
            local info = _roomBgVo.bg[i]
            local bg
            if info.type and info.type == RoomBg_Type.Full then
                bg = PhysicSprite.new(info.res):addTo(self)
                table.insert(self.bgArr,bg)
            elseif info.type and info.type == RoomBg_Type.Window then
                bg = PhysicSprite.new(info.res):addTo(self)
                table.insert(self.bgArr,bg)
                table.insert(self.window,info.res)
                if not Game_Visible then
                    bg:setSpriteFrame("Room_bg_2.png")
                end
            else
                bg = PhysicSprite.new(info.res):addTo(self)
            end
            bg:setAnchorPoint(cc.p(0,0))
            bg:setPosition(cc.p(info.x,info.y))
        end
    end
    if _roomBgVo.ornament then
        for var=1,#_roomBgVo.ornament do
            local data=_roomBgVo.ornament[var]
            local sprite=display.newSprite(data.res):addTo(self)
            table.insert(self.ornament,sprite)
            sprite:setPosition(data.x,data.y)
            sprite:setAnchorPoint(cc.p(0,0))
            sprite:setVisible(Game_Visible)
        end
    end
end

--创建钻石
function MapRoom:initDiamonds(diamondCon,isShow)
    if diamondCon and #diamondCon>0 and isShow then
        self.m_diamonds = {}
        for var=1,#diamondCon do
            local _diamondObj = diamondCon[var]
            if _diamondObj then
                local diamond = PoolManager.getCacheObjByType(CACHE_TYPE.Diamond)
                if not diamond then
                    diamond = DiamondElement.new({res=_diamondObj.res})
                    diamond:setCahceType(CACHE_TYPE.Diamond)
                    diamond:retain()
                end
                local dismondSize = diamond:getCascadeBoundingBox().size
                local x = math.random(Room_Distance.x+50+dismondSize.width,display.right-Room_Distance.x-50-dismondSize.width)
--                Tools.printDebug("-------brj 房间钻石x坐标：",x)
                diamond:setPosition(x,_diamondObj.y)
                diamond:setGroup(self.m_floorNum)
                diamond:setAnchorPoint(cc.p(0,0))
                table.insert(self.m_diamonds,diamond)
                GameController.addGoldBody(diamond)
            end
        end
    end
end
--创建道具
function MapRoom:initGoods(goodCon,isShow)
    if isShow then
        for var=1,#goodCon do
            local id = math.random(1,#GoodsConfig)
            local good=GoodsElement.new(id):addTo(self)
            local goodSize = good:getCascadeBoundingBox().size
            local x = math.random(self.firstX+50+goodSize.width,self.lastX+self.lastWidth-50-goodSize.width)
--            Tools.printDebug("-------brj 道具x坐标：",x)
            good:setPosition(x+goodSize.width*0.5,goodCon[var].y+goodSize.height*0.5)
            table.insert(self.m_goods,good)
            table.insert(self.m_blocks,good)
--            GameController.addGoodBody(good)
        end
    end
end

function MapRoom:addPhysicsBody(_node,tag)
    if _node then
        local size,blockBody
        size=_node:getCascadeBoundingBox().size
        blockBody = cc.PhysicsBody:createBox(size,cc.PhysicsMaterial(Block_DENSITY, Block_ELASTICITY,Block_FRICTION))
        blockBody:setMass(Block_MASS)
        blockBody:setDynamic(false)
        if tag == ELEMENT_TAG.FLOOR then
            blockBody:setCategoryBitmask(0x01)
            blockBody:setContactTestBitmask(0x1111)
            blockBody:setCollisionBitmask(0x03)
        else
            blockBody:setCategoryBitmask(0x03)
            blockBody:setContactTestBitmask(0x1111)
            blockBody:setCollisionBitmask(0x03)
        end
        blockBody:retain()
        _node:setSize(size)
        blockBody:setTag(tag)
        _node:setPhysicsBody(blockBody)
    end
end

--设置坐标
--_isJustBody：是否调整刚体坐标
function MapRoom:initPosition(_x,_y,_isJustBody)
    self.roomX = _x
    if _y ~= 0 and _isJustBody then
        for i=#self.m_blocks, 1, -1 do
            local _block = self.m_blocks[i]
            if not tolua.isnull(_block) then
                _block:setPositionY(_y+_block:getPositionY())
                _block:setPositionX(_x+_block:getPositionX())
            else
                table.remove(self.m_blocks,i)
            end
        end

        self:setPosition(_x,_y)
    else
        self:setPosition(_x,_y)
--        Tools.printDebug("brj ----------------------横跑房间坐标： ",self.m_index,_x)
    end
    local _parent = self:getParent()
    if self.m_diamonds then
        for key, var in pairs(self.m_diamonds) do
            if not tolua.isnull(var) then
                local x,y = var:getPosition()
                var:setPosition(x+_x,y+_y)
                _parent:addChild(var,MAP_ZORDER_MAX+MAP_ROOM_MAX)
                var:setCameraMask(2)
            end
        end
    end
end

--获取横跑房间的x坐标
function MapRoom:getRoomX()
    return self.roomX
end

--获取房间中的物体块表
function MapRoom:getBlocks(parameters)
    return self.m_blocks
end

--获取房间号
function MapRoom:getRoomIndex()
    return self.m_floorNum
end

--获取房间大小
function MapRoom:getSize()
    return Room_Size
end

--玩家进入房间
function MapRoom:intoRoom(parameters)
    Tools.printDebug("brj 玩家进入房间 roomIndx=",self.m_floorNum)
    
end

--获得所有装饰物对象
function MapRoom:getAllOrnament()
    return self.ornament
end

--获得所有房间整块背景图
function MapRoom:getAllRoomBgs()
    return self.bgArr
end

--获取当前方面窗户
function MapRoom:getWindowBgs()
    return self.window
end

--获取当前房间所属类型
function MapRoom:getCurRoomType()
    return self.roomType
end

--获取横跑房间的间隙
function MapRoom:getRoomGap()
	return self.roomGap
end

--获取横跑房间的宽度
function MapRoom:getRoomWidth()
    return self.roomWidth
end

--获取横跑房间的阶层值
function MapRoom:getRunningRoomFloorType()
    return self.m_type
end

--获取横跑楼层的方向
function MapRoom:getRunningDistance()
    return self.roomDistance
end

--获取房间索引号
function MapRoom:getRoomKey()
    return self.m_index
end

--是否为封闭房间
function MapRoom:getRoomCloseValue()
    return self.isCloseRoom
end

--获取当前房间所属楼层总层数
function MapRoom:getRoomsCount()
    if not self.m_curLevelCon.roomBgs then
    	return 0
    end
    return #self.m_curLevelCon.roomBgs
end

--获取房间开口方向
function MapRoom:getSingleOpenWallDir()
    return self.wallDirection
end

--销毁
function MapRoom:dispose(parameters)
    --销毁layer层的特殊刚体
    if self.m_curLevelCon.roomType == MAPROOM_TYPE.Special and self.m_index == 10 then
        if not tolua.isnull(self:getParent()) then
            if not tolua.isnull(self:getParent():getParent()) then
                self:getParent():getParent():disposeSpecial(math.floor(self.m_floorNum/10))
--                Tools.printDebug("----------brj 这里可能有执行：",math.floor(self.m_floorNum/10))
            end
        end
    end

    self.m_cacheBodys = nil
    if self.m_diamonds then
        for key, var in pairs(self.m_diamonds) do
            if not tolua.isnull(var) then
                --此处是过滤该数组中已经被其它楼层应用了防止消除
                if var:getGroup() == self.m_floorNum then
                    var:dispose()
                end
            end
        end
    end
    for key, var in pairs(self.m_blocks) do
        if (not tolua.isnull(var)) and var.dispose then
            --此处是过滤该数组中已经被其它楼层应用了防止消除
            if var:getParent() == self then
                var:dispose()
            end
        end
    end
    self.m_blocks = {}
    self.bgArr = {}
    self.window = {}
    
    self.ornament = {}
    
    self:removeFromParent(true)
end

return MapRoom