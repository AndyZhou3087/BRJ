--[[
地图房间
]]
local MapRoom = class("MapRoom",function()
    return display.newNode()
end)
local PhysicSprite = require("game.view.customUI.PhysicSprite")

--@param1:房间编号
--@param2:房间的配置id
function MapRoom:ctor(_idx,_levelCon,roomAmount)
    --物理块儿
    self.m_blocks = {}
    self.m_cacheBodys = {} --缓存的刚体数组
    self.m_monsters = {}
    self.m_traps = {}
    --    self.m_golds={}
    self.m_goods={}
    self.m_specials={}
    self.m_missile = {}
    self.m_index = _idx
    self.m_roomAmount=roomAmount    --关卡房间总数
    self.m_warning={}
    self.m_warningAmount=0
    self.m_curLevelCon = _levelCon
    
    
    local _roomBgVo
    local _ornaments
    local _coins
    local _goods
    local _specials
    local _elements
    local _trapMons
    if GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
        _roomBgVo = RoomBgs[_levelCon.roomBgs]
        self.m_roomType = _roomBgVo.roomType
        _ornaments = Ornaments[_levelCon.ornaments] or {}
        _coins = Coins[_levelCon.coins] or {}
        _goods = RoomGoods[_levelCon.roomGoods] or {}
        _specials = Specials[_levelCon.specials] or {}
        _elements = Elements[_levelCon.elements] or {}
        _trapMons = TrapMons[_levelCon.trapmonster] or {}
        self.m_missiles = Missiles[_levelCon.missiles]
    elseif GAME_TYPE_CONTROL == GAME_TYPE.LevelMode then
        _roomBgVo = RoomBgs[_levelCon.roomBgs[_idx]]
        self.m_roomType = _roomBgVo.roomType
        _ornaments = Ornaments[_levelCon.ornaments[_idx]] or {}
        _coins = Coins[_levelCon.coins[_idx]] or {}
        _goods = RoomGoods[_levelCon.roomGoods[_idx]] or {}
        _specials = Specials[_levelCon.specials[_idx]] or {}
        _elements = Elements[_levelCon.elements[_idx]] or {}
        _trapMons = TrapMons[_levelCon.trapmonster[_idx]] or {}
        self.m_missiles = Missiles[_levelCon.missiles[_idx]]
    end
    
--    --    _roomID=_roomID or Room_Type.Normal_Type
--    self.m_roomCon = Rooms[_roomID]
--    if not self.m_roomCon then
--        printf("chjh error 找不到id=%d的楼层配置",_roomID)
--        return
--    end

    --    local bgImg=display.newSprite(self.m_roomCon.roomBg):addTo(self)

    --房间内背景改为随机显示
    local _indx = 1
    if _roomBgVo.bgRand then
        _indx = _roomBgVo.bgRand[math.random(1,#_roomBgVo.bgRand)]
    end
    self.m_roomCache = CACHE_TYPE["Room_Bg".._indx]
    self.m_bgImg = PoolManager.getCacheObjByType(self.m_roomCache)
    if not self.m_bgImg then
        self.m_bgImg=display.newSprite(MapBg_Path.._indx..".png")
--        self.m_bgImg:setPosition(Room_Size.width*0.5,Room_Size.height-bgSize.height*0.5)
        self.m_bgImg:retain()
    end
    local bgSize=self.m_bgImg:getCascadeBoundingBox().size
    self.m_bgImg:setPosition(Room_Size.width*0.5,Block_H*2+bgSize.height*0.5)
    self:addChild(self.m_bgImg)
--    local bgImg=display.newSprite(MapBg_Path.._indx..".png"):addTo(self)
--    local bgSize=bgImg:getCascadeBoundingBox()
--    bgImg:setPosition(Room_Size.width/2.0,Room_Size.height-bgSize.height/2.0)

    --    self.m_batchNode = display.newBatchNode("map/room/room.png",20)
    --初始化废墟
    --    local ruins=display.newSprite("map/wall/ruins.png"):addTo(self)
    self.m_ruinsCache = CACHE_TYPE.Room_Ruins
    self.m_ruins = PoolManager.getCacheObjByType(self.m_ruinsCache)
    if not self.m_ruins then
        self.m_ruins = display.newSprite("#ruins.png")
        local ruinsSize=self.m_ruins:getCascadeBoundingBox()
        self.m_ruins:setPosition(Room_Size.width/2.0,ruinsSize.height/2.0)
        self.m_ruins:retain()
    end
    self:addChild(self.m_ruins)
--    local ruins=display.newSprite("#ruins.png"):addTo(self)
--    local ruinsSize=ruins:getCascadeBoundingBox()
--    ruins:setPosition(Room_Size.width/2.0,ruinsSize.height/2.0)--Room_Size.height/2.0)

    self:initOrnament(_ornaments)
    self:initBlock(_roomBgVo)
    
    self:initSpecial(_specials)
    self:initTrap(_trapMons)
    self:initElement(_elements)

    self:initCoins(_coins)
    self:initGoods(_goods)
    
    if _idx==1 then
        local roof=display.newSprite("map/room/roof.png"):addTo(self)
        roof:setPosition(Room_Size.width/2.0,Room_Size.height)
    end
end

--@param:1是地板，2是天花板
--@param2:
--@param3:
--retrun:当前坐标
function MapRoom:initBlock(_roomBgVo)
    --    _direct = _direct or 1
    local _x = Block_W*0.5
    local _y = Block_H*0.5

    local floor=1
    local middleStr = Room_Floor[self.m_roomType]  --"#"..string.match(Room_Floor[roomType], ".+/([^/]*)$")
    local wallPath = "#bottom_"--"map/wall/bottom_"
    local windPath = "#window_left"--"map/window/window_left"

    --初始化墙壁
    local function wallFunc(_type)
        local _bottom1
        local pre

        if _type==1 then
            _type = "Wall_Bottom_"
        else
            _type = "Wall_Top_"
        end
        
        
        local _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."L_1"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."left3.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."L_1"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)

        _x = _x+Block_W

        pre=_bottom1

        _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."L_2"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."left4.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."L_2"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)

        pre.m_behind=_bottom1
        _bottom1.m_pre=pre

        _x = _x+Block_W+Block_W*Block_Middle_Num

        _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."R_1"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."right3.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."R_1"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)
        _x = _x+Block_W

        pre=_bottom1

        _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."R_2"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."right4.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."R_2"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)

        pre.m_behind=_bottom1
        _bottom1.m_pre=pre
        _x = Block_W*0.5
        _y = _y + Block_H

        _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."L_3"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."left1.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."L_3"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)
        _x = _x+Block_W

        pre=_bottom1

        _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."L_4"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."left2.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."L_4"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)
        _x = _x+Block_W+Block_W*Block_Middle_Num

        pre.m_behind=_bottom1
        _bottom1.m_pre=pre

        _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."R_3"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."right1.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."R_3"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)

        _x = _x+Block_W

        pre=_bottom1

        _bottom1 = PoolManager.getCacheObjByType(CACHE_TYPE[_type.."R_4"])
        if not _bottom1 then
            _bottom1 = PhysicSprite.new(wallPath.."right2.png")
            _bottom1:setCahceType(CACHE_TYPE[_type.."R_4"])
            self:addPhysicsBody(_bottom1,ELEMENT_TAG.NORMAL_WALL_TAG)
            _bottom1:retain()
        end
        _bottom1:setPosition(_x,_y)
        self:addChild(_bottom1)
        table.insert(self.m_blocks,_bottom1)

        pre.m_behind=_bottom1
        _bottom1.m_pre=pre
    end

    --初始化地板
    local function floorFunc()
        if self.m_roomType==Room_Type.Normal_Type or self.m_roomType==Room_Type.Alien_Type then
            --木地板
            local _floorType
            local _middleType
            if floor == 1 then
                if self.m_roomType==Room_Type.Normal_Type then
                    _floorType = "Normal_Floor_Top"
                    _middleType = "Normal_Floor_Middle1_"
                else
                    _floorType = "Alien_Floor_Top"
                    _middleType = "Alien_Floor_Middle1_"
                end
            else
                if self.m_roomType==Room_Type.Normal_Type then
                    _floorType = "Normal_Floor_Bottom"
                    _middleType = "Normal_Floor_Middle2_"
                else
                    _floorType = "Alien_Floor_Bottom"
                    _middleType = "Alien_Floor_Middle2_"
                end
            end
            
            local pre
        
            local _floorLeft1 = PoolManager.getCacheObjByType(CACHE_TYPE[_floorType.."1"])
            if not _floorLeft1 then
                _floorLeft1 = PhysicSprite.new(middleStr..floor.."-1.png")
                _floorLeft1:setCahceType(CACHE_TYPE[_floorType.."1"])
                self:addPhysicsBody(_floorLeft1,ELEMENT_TAG.NORMAL_WALL_TAG)
                _floorLeft1:retain()
            end
            _floorLeft1:setPosition(_x,_y)
            self:addChild(_floorLeft1)
            table.insert(self.m_blocks,_floorLeft1)
            _x = _x+Block_W


            pre=_floorLeft1

            local _floorLeft2 = PoolManager.getCacheObjByType(CACHE_TYPE[_floorType.."2"])
            if not _floorLeft2 then
                _floorLeft2 = PhysicSprite.new(middleStr..floor.."-2.png")
                _floorLeft2:setCahceType(CACHE_TYPE[_floorType.."2"])
                self:addPhysicsBody(_floorLeft2,ELEMENT_TAG.NORMAL_WALL_TAG)
                _floorLeft2:retain()
            end
            _floorLeft2:setPosition(_x,_y)
            self:addChild(_floorLeft2)
            table.insert(self.m_blocks,_floorLeft2)
            _x = _x+Block_W

            pre.m_behind=_floorLeft2
            _floorLeft2.m_pre=pre


            local _middle
            local _temp=_x

            local numFloor


            for i=1,Block_Middle_Num do
                if i==1 then
                    pre=_floorLeft2
                else
                    pre=_middle
                end
                _middle = PoolManager.getCacheObjByType(CACHE_TYPE[_middleType..i])
                if not _middle then
                    _middle = PhysicSprite.new(middleStr..floor.."_mid"..i..".png")
                    self:addPhysicsBody(_middle,ELEMENT_TAG.NORMAL_WALL_TAG)
                    _middle:setCahceType(CACHE_TYPE[_middleType..i])
                    _middle:retain()
                    --                    print("chjh middle=",tostring(_middle))
                end
                _middle:setPosition(_x,_y)
                table.insert(self.m_blocks,_middle)

                pre.m_behind=_middle
                _middle.m_pre=pre

                if i~=math.ceil(Block_Middle_Num*0.5) or floor~=1 then
                    self:addChild(_middle)
                else
                    if GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
                        self.countText = self.m_index
                    elseif GAME_TYPE_CONTROL == GAME_TYPE.LevelMode then
                        self.countText = self.m_roomAmount-self.m_index+1
                    end
                    local _lable = display.newTTFLabel({
                        text=self.countText,
                        size = 30,
                        color = cc.c3b(255, 255, 255), -- 使用白色,
                        align = cc.TEXT_ALIGNMENT_LEFT,
                    })
                    _lable:setAnchorPoint(0,0)
                    _lable:setPosition(_middle:getCascadeBoundingBox().size.width*0.5,0)
                    _middle:addChild(_lable)
                    _lable:getContentSize() --NND，不加这句刺激一下内部构造，摄像机会看不见

                    numFloor=_middle
                end
                _x = _x+Block_W
            end

            if floor==1 then
                self:addChild(numFloor)
            end
            pre=_middle
            local _floorRight1 = PoolManager.getCacheObjByType(CACHE_TYPE[_floorType.."3"])
            if not _floorRight1 then
                _floorRight1 = PhysicSprite.new(middleStr..floor.."-3.png")
                _floorRight1:setCahceType(CACHE_TYPE[_floorType.."3"])
                self:addPhysicsBody(_floorRight1,ELEMENT_TAG.NORMAL_WALL_TAG)
                _floorRight1:retain()
            end
            _floorRight1:setPosition(_x,_y)
            self:addChild(_floorRight1)
            table.insert(self.m_blocks,_floorRight1)
            _x = _x+Block_W

            pre.m_behind=_floorRight1
            _floorRight1.m_pre=pre

            pre=_floorRight1

            local _floorRight2 = PoolManager.getCacheObjByType(CACHE_TYPE[_floorType.."4"])
            if not _floorRight2 then
                _floorRight2 = PhysicSprite.new(middleStr..floor.."-4.png")
                _floorRight2:setCahceType(CACHE_TYPE[_floorType.."4"])
                self:addPhysicsBody(_floorRight2,ELEMENT_TAG.NORMAL_WALL_TAG)
                _floorRight2:retain()
            end
            _floorRight2:setPosition(_x,_y)
            self:addChild(_floorRight2)
            table.insert(self.m_blocks,_floorRight2)

            pre.m_behind=_floorRight2
            _floorRight2.m_pre=pre
        else
            --石头地板或者钢铁地板
            local _middle
            local str=middleStr..floor.."-"
            local tag=(self.m_roomType==Room_Type.Stone_Type and ELEMENT_TAG.STONE_WALL_TAG) or ELEMENT_TAG.IRON_WALL_TAG
            local _temp=_x
            local num=Block_Middle_Num+4
            local pre
            local numFloor
            local _type
            if floor == 1 then
                _type = tag==ELEMENT_TAG.STONE_WALL_TAG and "Stone_Floor_Bottom" or "Iron_Floor_Bottom"
            else
                _type = tag==ELEMENT_TAG.STONE_WALL_TAG and "Stone_Floor_Top" or "Iron_Floor_Top"
            end

            for i=1,num do
                if i~=1 then
                    pre=_middle
                end

                local value=(i+1)%2+1
                _middle = PoolManager.getCacheObjByType(CACHE_TYPE[_type..tostring(value)])
                if not _middle then
                    _middle = PhysicSprite.new(str..value..".png")
                    self:addPhysicsBody(_middle,tag)
                    _middle:setCahceType(CACHE_TYPE[_type..tostring(value)])
                    _middle:retain()
                end
                _middle:setPosition(_x,_y)
                table.insert(self.m_blocks,_middle)

                if i~=1 then
                    pre.m_behind=_middle
                    _middle.m_pre=pre
                end

                if i~=math.ceil(num*0.5) or floor~=1 then
                    self:addChild(_middle)
                else
                    if GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
                        self.countText = self.m_index
                    elseif GAME_TYPE_CONTROL == GAME_TYPE.LevelMode then
                        self.countText = self.m_roomAmount-self.m_index+1
                    end
                    local _lable = display.newTTFLabel({
                        text=self.countText,
                        size = 30,
                        color = cc.c3b(255, 255, 255), -- 使用白色,
                        align = cc.TEXT_ALIGNMENT_LEFT,
                    })
                    _lable:setAnchorPoint(0,0)
                    _lable:setPosition(_middle:getCascadeBoundingBox().size.width*0.5,0)
                    _middle:addChild(_lable)
                    _lable:getContentSize() --NND，不加这句刺激一下内部构造，摄像机会看不见

                    numFloor=_middle
                end
                _x = _x+Block_W
            end

            if floor==1 then
                self:addChild(numFloor)
            end
        end
    end

    local function windowFunc(bIsLeft)
        local _cacheType
        if bIsLeft then
        	_cacheType = "Window_L_"   --CACHE_TYPE.Window_L_1
        else
            _cacheType = "Window_R_"
        end
        local height=0
        for var=Window_Num,1,-1 do
            local sprite = PoolManager.getCacheObjByType(CACHE_TYPE[_cacheType..tostring(var)])
            if not sprite then
                local res=windPath..var..".png"
                sprite=PhysicSprite.new(res)
                self:addPhysicsBody(sprite,ELEMENT_TAG.WINDOW_TAG)
                sprite:setCahceType(CACHE_TYPE[_cacheType..tostring(var)])
                sprite:retain()
            end
            sprite:addTo(self)

            --            if var~=math.floor(Window_Num/2.0) and var~=math.floor(Window_Num/2.0)-1 and var~=1 then
            --            end


            local size=sprite:getCascadeBoundingBox().size

            --            if var~=math.floor(Window_Num/2.0) and var~=math.floor(Window_Num/2.0)-1 and var~=1 then
--            self:addPhysicsBody(sprite,ELEMENT_TAG.WINDOW_TAG)
            table.insert(self.m_blocks,sprite)
            --            end

            if var==Window_Num then
                if bIsLeft==true then
                    _x=Block_W-3
                else
                    _x=Room_Size.width-Block_W+5
                end
            end

            _y=_y+size.height/2.0

            --            if var~=math.floor(Window_Num/2.0) and var~=math.floor(Window_Num/2.0)-1 and var~=1 then
            sprite:setPosition(_x,_y)
            --            end

            _y=_y+size.height/2.0
            height=height+size.height
        end
        return height
    end

    --初始化地板
    floorFunc()

    _x=Block_W*0.5
    _y=_y+Block_H

    floor=2

    floorFunc()

    local amount=#self.m_blocks
    local num=4+Block_Middle_Num
    for var=1,num do
        self.m_blocks[amount-num*2+var].m_up=self.m_blocks[amount-num+var]
    end
    
--    --初始化底部墙壁
--    _x=Block_W*0.5
--    _y=_y+Block_H
--
--    wallFunc(1)
--
--    --初始化窗户
--    _x = Block_W*2
--    _y = _y + Block_H*0.5
--
--    local h=windowFunc(true)
--    _y=_y-h
--    _x=Room_Size.width-Block_W*2
--
--    windPath="#window_right"
--    windowFunc(false)
--
--    --初始化顶部墙壁
--    wallPath="#top_"
--
--    _x=Block_W*0.5
--    _y=_y+Block_H*0.5
--
--    wallFunc(2)

    local _wallL,_wallR = 1,1
    if _roomBgVo.wallLeft then
        _wallL = _roomBgVo.wallLeft[math.random(1,#_roomBgVo.wallLeft)]
    end
    if _roomBgVo.wallRight then
        _wallR = _roomBgVo.wallRight[math.random(1,#_roomBgVo.wallRight)]
    end
    local _wallSp = display.newSprite("#wall".._wallL..".png")
    local _size = _wallSp:getCascadeBoundingBox().size
    _wallSp:setPosition(_size.width*0.5,Block_H*2+_size.height*0.5)
    self:addChild(_wallSp)
    
    _wallSp = display.newSprite("#wall".._wallR..".png")
    _size = _wallSp:getCascadeBoundingBox().size
    _wallSp:setScaleX(-1)
    _wallSp:setPosition(Room_Size.width-_size.width*0.5,Block_H*2+_size.height*0.5)
    self:addChild(_wallSp)

    return _x,_y
end

--创建金币
function MapRoom:initCoins(goldCon)
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
                    print("------------金币对象：",gold)
                    gold:setCoinValue(_num)
                end
                gold:setPosition(_goldObj.x,_goldObj.y)
                gold:setGroup(self.m_index) 
                table.insert(self.m_golds,gold)
                GameController.addGoldBody(gold)
            end
        end
    end
end
--创建道具
function MapRoom:initGoods(goodCon)
    for var=1,#goodCon do
        --        local good=Food.new({res=goodCon[var].res,type=2,goodID=goodCon[var].id}):addTo(self)
        local good=GoodsElement.new(goodCon[var].id):addTo(self)
--        local good=GoodsElement.new({goodsId=goodCon[var].id,res=GoodsConfig[goodCon[var].id].img}):addTo(self)
        good:setPosition(goodCon[var].x,goodCon[var].y)
        table.insert(self.m_goods,good)
        table.insert(self.m_blocks,good)
        GameController.addGoodBody(good)
    end
end

--创建房间元素
function MapRoom:initElement(_elements)
    for var=1, #_elements do
        local _elemenVo = _elements[var]
        local _monCon = MonsterConfig[_elemenVo.monsterId]
        if _monCon then
            local _monster = Monster.new(_elemenVo.monsterId)
--            local _monSize = _monster:getCascadeBoundingBox().size
            _monster:setPosition(_elemenVo.x,_elemenVo.y)
            self:addChild(_monster)

            if _monCon.type == MONSTER_TYPE.Boss_Type then
                self.b_handler = Tools.delayCallFunc(0.1,function()
                    _monster:retain()
                    local point = self:convertToWorldSpace(cc.p(_monster:getPosition()))
                    local m_point = self:getParent():convertToNodeSpace(point)
                    _monster:removeFromParent(false)
                    self:getParent():addChild(_monster,self.m_roomAmount-1)
                    _monster:setPosition(m_point)
                end)
--                GameDispatcher:dispatch(EventNames.EVENT_BOSS_WARNING)
                GameDataManager.addBoss()
            else
                table.insert(self.m_monsters,_monster)
                table.insert(self.m_blocks,_monster)
            end
        else
            printf("chjh erro 找不到id=%d的怪物配置",_elemenVo.monsterId)
        end
    end
end

--创建房间陷阱怪
function MapRoom:initTrap(_trapMons)
    if _trapMons==nil then
    	return
    end
    for var=1, #_trapMons do
        local _elemenVo = _trapMons[var]
        local _monCon = TrapConfig[_elemenVo.trapId]
        if _monCon then
            local _monster = TrapMonsterElement.new(_elemenVo.trapId)
--            local _monSize = _monster:getCascadeBoundingBox().size
            _monster:setPosition(_elemenVo.x,_elemenVo.y)
            self:addChild(_monster)
            table.insert(self.m_traps,_monster)
            table.insert(self.m_blocks,_monster)
        else
            printf("chjh erro 找不到id=%d的怪物配置",_elemenVo.monsterId)
        end
    end
end

--创建房间装饰
function MapRoom:initOrnament(ornament)
--    local ornament=self.m_roomCon.ornaments
    for var=1,#ornament do
        local data=ornament[var]
        local sprite=display.newSprite(data.res):addTo(self)
        sprite:setPosition(data.x,data.y)
    end
end

--创建特殊障碍
function MapRoom:initSpecial(specialCon)
--    local specialCon=self.m_roomCon.specials

    for var=1,#specialCon do
        local data=specialCon[var]
        if data.type==SPECIAL_TYPE.Sprint_Type then
            local dustbin=DustbinElement.new(data):addTo(self)
            dustbin:setPosition(data.x,data.y)
            table.insert(self.m_specials,dustbin)
            table.insert(self.m_blocks,dustbin)
        elseif data.type==SPECIAL_TYPE.Button_Type then
            local btn=LaserButton.new(data):addTo(self)
            btn:setPosition(data.x,data.y)
            table.insert(self.m_specials,btn)
            table.insert(self.m_blocks,btn)
        elseif data.type==SPECIAL_TYPE.Laser_Type then
            local laser=LaserElement.new(data):addTo(self,1)
            laser:setPosition(data.x,data.y)
            table.insert(self.m_specials,laser)
            table.insert(self.m_blocks,laser)
        elseif data.type==SPECIAL_TYPE.End_Type then
            local door=DoorElement.new(data):addTo(self)
            door:setPosition(data.x,data.y)
            table.insert(self.m_specials,door)
            table.insert(self.m_blocks,door)
        elseif data.type==SPECIAL_TYPE.Slide_Type then
            local slide=SlideElement.new(data):addTo(self)
            slide:setPosition(data.x,data.y)
            table.insert(self.m_specials,slide)
            table.insert(self.m_blocks,slide)
        elseif data.type==SPECIAL_TYPE.Exit_Type then
            local exit=ExitElement.new(data):addTo(self)
            exit:setPosition(data.x,data.y)
            table.insert(self.m_specials,exit)
            table.insert(self.m_blocks,exit)
        elseif data.type==SPECIAL_TYPE.Alien_Type then
            local alien=AlienElement.new(data):addTo(self)
            alien:setPosition(data.x,data.y)
            table.insert(self.m_specials,alien)
            table.insert(self.m_blocks,alien)
        else
            local special=SpecialElement.new(data):addTo(self)
            special:setPosition(data.x,data.y)
            table.insert(self.m_specials,special)
            table.insert(self.m_blocks,special)
            if data.type==SPECIAL_TYPE.Egg_Type then
                GameController.addEggBody(special)
--            elseif data.type==SPECIAL_TYPE.Another_Type then
--                GameController.addAnotherBody(special)
            end
        end
    end
end

function MapRoom:addPhysicsBody(_node,tag)
    if _node then
        local size,blockBody,needCreat
        if tag==ELEMENT_TAG.WINDOW_TAG then
            size=_node:getCascadeBoundingBox().size
            --            needCreat = true
        else
            size=cc.size(Block_W,Block_H)
            --            blockBody = PoolManager.getCacheObj()
            --            needCreat = not blockBody
        end
        --        if needCreat then
        blockBody = cc.PhysicsBody:createBox(size,
            cc.PhysicsMaterial(Block_DENSITY, Block_ELASTICITY,Block_FRICTION))
        blockBody:setMass(Block_MASS)
        blockBody:setDynamic(false)
        blockBody:setCategoryBitmask(0x1111)
        blockBody:setContactTestBitmask(0x1111)
--        if tag~=ELEMENT_TAG.WINDOW_TAG then
            --                PoolManager.addCache(blockBody)
            blockBody:retain()
            --                table.insert(self.m_cacheBodys,blockBody)
--        end

        _node:setSize(size)
        --        else
        --            _node:setSize(size)
        --
        --            table.insert(self.m_cacheBodys,blockBody)
        --        end

        local tag=tag or ELEMENT_TAG.NORMAL_WALL_TAG
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


--获取房间中的怪物
function MapRoom:getMonsters(parameters)
    return self.m_monsters
end

--获取房间中的陷阱怪
function MapRoom:getTrapMonsters(parameters)
    return self.m_traps
end

--获取房间中的导弹
function MapRoom:getMissile(parameters)
    return self.m_missile
end
--获取房间中的物体块表
function MapRoom:getBlocks(parameters)
    return self.m_blocks
end

--获取房间号
function MapRoom:getRoomIndex()
    return self.m_index
end

--获取房间大小
function MapRoom:getSize()
    return Room_Size
end

--玩家进入房间
function MapRoom:intoRoom(parameters)
    GameController.CurRoomIdx = self.m_index
    
    if GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
        local floors = EndlessMode.room_Type
        if floors[self.m_index].isReward then
            if not GameDataManager.isTodayGetFloor(self.m_index) then
                GameDataManager.toGetFloorWard(self.m_index)
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_REWARD,floors[self.m_index])
            end
        end
        
    end


--    --传入boss随主角移动事件
--    GameDispatcher:dispatch(EventNames.EVENT_BOSS_FOLLOW,{parent=self})
    --监测怪物预警执行动作
    GameDispatcher:dispatch(EventNames.EVENT_MONSTER_TIP)
--    --判断怪物是否掉落楼层
--    GameDispatcher:dispatch(EventNames.EVENT_MONSTER_FLOP)
    --机械蜂、
    if GameController.isInState(PLAYER_STATE.Bee) then
        print("玩家处于机械蜂状态需要检测房间")
    	GameDispatcher:dispatch(EventNames.EVENT_BEE_ROOM)
    end
      
    GameController.CurRoomType = self.m_roomType
    --房间楼层
    local _curFloor = self.m_roomAmount-self:getRoomIndex()+1
    
    GameController.CurLastRoomIdx = _curFloor
    
    local _tipObj,_forceObj
    if GAME_TYPE_CONTROL == GAME_TYPE.LevelMode then
        if self.m_curLevelCon.roomTips then
            _tipObj = FloorTips[self.m_curLevelCon.roomTips[self.m_index]]
        end
        if self.m_curLevelCon.forceTips then
            _forceObj = ForceTips[self.m_curLevelCon.forceTips[self.m_index]]
        end

        --    if _tipObj and (not self.m_visited) then
        --        GameDispatcher:dispatch(EventNames.EVENT_GAME_TITLE,{floor=true,number=_curFloor})
        --    end
        --    if _curFloor ==50 or _curFloor ==25 or _curFloor == 10 or _curFloor ==5 then
        --        if not self.m_visited then
        --            print("楼层提示")
        --            GameDispatcher:dispatch(EventNames.EVENT_GAME_TITLE,{floor=true,number=_curFloor})
        --        end
        --    end

        if not self.m_visited then
            GameController.addTargetNum(1,Task_Type.Normal_Type)
            GameController.addTargetNum(1,Task_Type.Time_Type)
            if _tipObj then
                if _tipObj.chageMusic then
                    AudioManager.playGroundMusic(AudioManager.Ground_Music_Type.Mon_Raid,true)
                end
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_FLOORTIPS,_tipObj)
            end
            if _forceObj and (not GameDataManager.isHaveTips(_forceObj.id)) then
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_FORCETIPS,_forceObj)
            end
        end

        self.m_visited = true
    end
    

    self:startMissile()
end


function MapRoom:startMissile()
    --开始导弹发射倒计时
    if self.m_handlerMissile then
        scheduler.unscheduleGlobal(self.m_handlerMissile)
        self.m_handlerMissile=nil
    end
    
    if self.m_missiles and self.m_missiles.fireTime then
        self.m_handlerMissile=Tools.delayCallFunc(self.m_missiles.fireTime-Flash_Time,function()
            self:addMissile()
        end)
    end
end


function MapRoom:stopMissile(parameters)
    if self.m_handlerMissile then
        scheduler.unscheduleGlobal(self.m_handlerMissile)
        self.m_handlerMissile=nil
    end

    if self.m_handlerWarning then
        scheduler.unscheduleGlobal(self.m_handlerWarning)
        self.m_handlerWarning=nil
    end
end

--产生新的导弹位置
function MapRoom:newPosition()
    local res=math.random(0,1)
    local pos=cc.p(0,0)
    local direction=0
    if res<0.5 then
        direction=MISSILE_DIRECTION.Left
    else
        direction=MISSILE_DIRECTION.Right
    end

    if direction==MISSILE_DIRECTION.Left then
        pos.x=0
    else
        pos.x=display.width
    end

    pos.y=math.random(0,Room_Size.height)
    
    return pos,direction
end

--添加导弹提示
function MapRoom:addMissile()
    self.m_warningAmount=self.m_warningAmount+1
    local parent=self:getParent()
    local warning=WarningElement.new(tostring(self.m_warningAmount)):addTo(parent,self.m_roomAmount-1)

    local pos,direction=self:newPosition()

    local pW=self:convertToWorldSpace(pos)
    local pN=parent:convertToNodeSpace(pW)

    local x=pN.x
    local size=warning:getCascadeBoundingBox()
    if direction==MISSILE_DIRECTION.Left then
        x=x+size.width/2.0
    else
        x=x-size.width/2.0
    end

    warning:setPosition(x,pN.y)
    warning:flash()
    self.m_missile = {}
    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Missile_Warning_Sound)

    --闪烁完毕后添加导弹并发射
    local handler=Tools.delayCallFunc(Flash_Time,function()
        self.m_warning[warning:getID()]=nil
        warning:dispose()
        local missile=MissileElement.new({time=self.m_missiles.fireSpeed,direction=direction}):addTo(parent,self.m_roomAmount-1)
        missile:setPosition(pN)
        missile:fire()
        table.insert(self.m_missile,missile)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Missile_Sound)

    end)
    self.m_warning[tostring(self.m_warningAmount)]={_warning=warning,_handler=handler}

    --下一个提示的倒计时
    if self.m_handlerWarning then
        scheduler.unscheduleGlobal(self.m_handlerWarning)
        self.m_handlerWarning=nil
    end

    self.m_handlerWarning=Tools.delayCallFunc(Flash_Time+self.m_missiles.fireSpeed+self.m_missiles.fireStep,function()
        self:addMissile()
    end)
end

--玩家离开房间
function MapRoom:leaveRoom(parameters)
    print("chjh 玩家离开房间 roomIndx=",self.m_index)

    self:stopMissile()
end


function MapRoom:setSleep(isSleep)
    if self.m_isSleep~=isSleep then
        self.m_isSleep=isSleep

        for var,value in ipairs(self.m_monsters) do
            if not tolua.isnull(value) then
                local body=value:getPhysicsBody()
                if body:isDynamic()==true then
                    if isSleep==true then
                        if not self.m_oldLimit then
                            self.m_oldLimit=body:getVelocityLimit()
                        end
                        body:setVelocityLimit(0)
                    else
                        body:setVelocityLimit(self.m_oldLimit)
                    end
                end
            end
        end
        for var,value in ipairs(self.m_traps) do
            if not tolua.isnull(value) then
                local body=value:getPhysicsBody()
                if body:isDynamic()==true then
                    if isSleep==true then
                        if not self.m_oldLimit then
                            self.m_oldLimit=body:getVelocityLimit()
                        end
                        body:setVelocityLimit(0)
                    else
                        body:setVelocityLimit(self.m_oldLimit)
                    end
                end
            end
        end
        
        for key, value in pairs(self.m_specials) do
            if not tolua.isnull(value) then
                local body=value:getPhysicsBody()
                if body:isDynamic()==true then
                    if isSleep==true then
                        if not self.m_oldLimit then
                            self.m_oldLimit=body:getVelocityLimit()
                        end
                        body:setVelocityLimit(0)
                    else
                        body:setVelocityLimit(self.m_oldLimit)
                    end
                end
            end
        end
        
    end
end

--是否被访问过
function MapRoom:isVisited(parameters)
    return self.m_visited or self.m_index==1
end

--获取地板数组
function MapRoom:getFloors()
    return self.m_floors
end

--销毁
function MapRoom:dispose(parameters)
    self.m_cacheBodys = nil
    if self.m_golds then
        for key, var in pairs(self.m_golds) do
            if not tolua.isnull(var) then
                --此处是过滤该数组中已经被其它楼层应用了防止消除
                if var:getGroup() == self.m_index then
                    var:dispose()
                end
            end
        end
    end
    if self.m_monsters then
        for key, var in pairs(self.m_monsters) do
            if not tolua.isnull(var) then
                var:dispose()
            end
        end
    end
    if self.m_traps then
        for key, var in pairs(self.m_traps) do
            if not tolua.isnull(var) then
                var:dispose()
            end
        end
    end
    if self.m_missile then
        for key, var in pairs(self.m_missile) do
            if not tolua.isnull(var) then
                var:dispose()
            end
        end
    end  
    if self.m_specials then
        for key, var in pairs(self.m_specials) do
            if not tolua.isnull(var) then
                var:dispose()
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

    if self.m_handlerWarning then
        scheduler.unscheduleGlobal(self.m_handlerWarning)
        self.m_handlerWarning=nil
    end
    if self.b_handler then
        scheduler.unscheduleGlobal(self.b_handler)
        self.b_handler=nil
    end

    if self.m_handlerMissile then
        scheduler.unscheduleGlobal(self.m_handlerMissile)
        self.m_handlerMissile=nil
    end

    for key,value in pairs(self.m_warning) do
        if not tolua.isnull(value._warning) then
            value._warning:dispose()
            scheduler.unscheduleGlobal(value._handler)
        end
    end
    if self.m_bgImg then
        self.m_bgImg:removeFromParent()
        PoolManager.putCacheObjByType(self.m_roomCache,self.m_bgImg)
    end
    if self.m_ruins then
        self.m_ruins:removeFromParent()
        PoolManager.putCacheObjByType(self.m_ruinsCache,self.m_ruins)
    end
    
    self:removeFromParent(true)
end

return MapRoom