--[[
地图房间
]]
local MapRoom = class("MapRoom",function()
    return display.newNode()
end)
local PhysicSprite = require("game.custom.PhysicSprite")
local Scheduler = require("framework.scheduler")

local Block_DENSITY = 0
local Block_FRICTION = 0
local Block_ELASTICITY = 0
local Block_MASS = 400

--@param1:房间编号
--@param2:房间的配置id
function MapRoom:ctor(_idx,_levelCon,_floorNum)
    --物理块儿
    self.m_blocks = {}
    self.m_cacheBodys = {} --缓存的刚体数组
    self.m_goods={}
    self.bgArr = {}   --存放当前房间整块格子的背景图
    self.floorArr = {}   --存放当前房间所有地板刚体
    self.m_index = _idx
    self.m_curLevelCon = _levelCon
    self.m_floorNum = _floorNum
    
    
    local _roomBgVo = RoomBgs[_levelCon.roomBgs[_idx]] or {}
    local _ornaments = Ornaments[_levelCon.ornaments[_idx]] or {}
    local _diamonds = Coins[_levelCon.coins[_idx]] or {}
    local _goods = RoomGoods[_levelCon.roomGoods[_idx]] or {}


    --房间内背景
    self:initBlock(_roomBgVo)
    --房间装饰
    self:initOrnament(_ornaments)
    --房间内钻石
    self:initDiamonds(_diamonds)
    self:initGoods(_goods)
    
end

--@param:墙壁和地板和背景
function MapRoom:initBlock(_roomBgVo)
    if _roomBgVo.bg then
        for i=1, #_roomBgVo.bg do
            local info = _roomBgVo.bg[i]
            local bg = PhysicSprite.new(info.res):addTo(self)
            bg:setAnchorPoint(cc.p(0,0))
            bg:setPosition(cc.p(info.x,info.y))
            if info.type and info.type == RoomBg_Type.Full then
                self.bgArr[#self.bgArr+1] = bg
            end
        end
    end
    if _roomBgVo.wallLeftRight then
        for j=1, #_roomBgVo.wallLeftRight do
            local info = _roomBgVo.wallLeftRight[j]
            local wall = PoolManager.getCacheObjByType(CACHE_TYPE[info.res])
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
    end
    if _roomBgVo.floor then
        for k=1, #_roomBgVo.floor do
            local info = _roomBgVo.floor[k]
            local floor = PoolManager.getCacheObjByType(CACHE_TYPE[info.res])
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
        end
    end
end

--创建钻石
function MapRoom:initDiamonds(goldCon)
    if goldCon and #goldCon>0 then
        self.m_golds = {}
        for var=1,#goldCon do
            local _goldObj = goldCon[var]
            if _goldObj then
                local _num = _goldObj.value or 1
                local _type = _goldObj.type or Coin_Type.Coin_Small
                local gold,chType
                if _type == Coin_Type.Coin_Small then
                    gold = PoolManager.getCacheObjByType(CACHE_TYPE.Coin)
                    chType = CACHE_TYPE.Coin
                else
                    gold = PoolManager.getCacheObjByType(CACHE_TYPE.Coin_Big)
                    chType = CACHE_TYPE.Coin_Big
                end
                if not gold then
                    gold = CoinElement.new({res=_goldObj.res,value=_num})
                    gold:setCahceType(chType)
                    gold:retain()
                else
                    Tools.printDebug("------------金币对象：",gold)
                    gold:setCoinValue(_num)
                end
                gold:setPosition(_goldObj.x,_goldObj.y)
                gold:setGroup(self.m_floorNum) 
                table.insert(self.m_golds,gold)
                GameController.addGoldBody(gold)
            end
        end
    end
end
--创建道具
function MapRoom:initGoods(goodCon)
    for var=1,#goodCon do
        local good=GoodsElement.new(goodCon[var].id):addTo(self)
        good:setPosition(goodCon[var].x,goodCon[var].y)
        table.insert(self.m_goods,good)
        table.insert(self.m_blocks,good)
--        GameController.addGoodBody(good)
    end
end

--创建房间装饰
function MapRoom:initOrnament(ornament)
    for var=1,#ornament do
        local data=ornament[var]
        local sprite=display.newSprite(data.res):addTo(self)
        sprite:setPosition(data.x,data.y)
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
            self.floorArr[#self.floorArr+1] = blockBody
        end
        blockBody:setCategoryBitmask(0x1111)
        blockBody:setContactTestBitmask(0x1111)
        blockBody:retain()
        _node:setSize(size)
        blockBody:setTag(tag)
        _node:setPhysicsBody(blockBody)
    end
end

--设置坐标
--_isJustBody：是否调整刚体坐标
function MapRoom:initPosition(_x,_y,_isJustBody)
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
    end
    local _parent = self:getParent()
    if self.m_golds then
        for key, var in pairs(self.m_golds) do
            if not tolua.isnull(var) then
                local x,y = var:getPosition()
                var:setPosition(x+_x,y+_y)
                _parent:addChild(var,MAP_ZORDER_MAX)
                var:setCameraMask(2)
            end
        end
    end
end

--获取房间中的地板刚体表
function MapRoom:getFloorBody(parameters)
    return self.floorArr
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


--销毁
function MapRoom:dispose(parameters)
    self.m_cacheBodys = nil
    if self.m_golds then
        for key, var in pairs(self.m_golds) do
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
    self.floorArr = {}
    self.bgArr = {}

--    if self.m_bgImg then
--        self.m_bgImg:removeFromParent()
--        PoolManager.putCacheObjByType(self.m_roomCache,self.m_bgImg)
--    end
    
    self:removeFromParent(true)
end

return MapRoom