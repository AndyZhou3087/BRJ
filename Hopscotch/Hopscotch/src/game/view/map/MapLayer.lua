--[[
地图层
]]
local MapRoom = require("game.view.map.MapRoom")
--local Player = require("game.view.element.Player")
local Scheduler = require("framework.scheduler")
--local CoinElement=require("game.view.element.CoinElement")
--local DiamondElement=require("game.view.element.DiamondElement")

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
    self.m_fragment={}

    self.m_chaceRooms = {}  --房间缓存数组
    GameController.setRooms(self.m_chaceRooms)
    
    self.m_curZOrder = MAP_ZORDER_MAX   --房间当前显示层级

    self.m_operations = {}

--    self:setTouchEnabled(false)
--    self:setTouchSwallowEnabled(false)
--
--    self.m_bg = display.newSprite("map/bg/bg.jpg")
--    self:addChild(self.m_bg)
--    self.m_bg:align(display.CENTER, display.cx, display.cy)
--
--    --房间层
--    self.m_roomNode = display.newNode()
--    self.m_roomNode:setTouchEnabled(false)
--    self.m_roomNode:setTouchSwallowEnabled(false)
--    self:addChild(self.m_roomNode)

--    self:initRooms()

--    self.m_camera = cc.Camera:createOrthographic(display.width,display.height,0,1)
--    self.m_camera:setCameraFlag(cc.CameraFlag.USER1)
--    self:addChild(self.m_camera)
--    self.m_camera:setPosition3D(cc.vec3(0, 0, 0))

--    self.m_player = Player.new()
--    self:addChild(self.m_player,MAP_ZORDER_MAX+1)
--    GameController.setCurPlayer(self.m_player)

--    self.m_isMoving = false
--    self.m_isDown = false
--    self.m_isUp = false


    --监听范围破坏
--    GameDispatcher:addListener(EventNames.EVENT_AREA_DAMAGE,handler(self,self.damageHandle))

    self:setCameraMask(2)

end

--进行弹跳
function MapLayer:toJump()
    self.m_isDown = false
    self.m_isUp = false
    if #self.m_operations > 0 then
        self.m_isDrawing = true
        local _obj = table.remove(self.m_operations,1)
        if _obj[1] == Slide_Type.Slide_Up then
            self.m_isUp = true
            self.m_player:toJump()
            if self.m_gup == true then
                self.m_gup = false
                GameDispatcher:dispatch(EventNames.EVENT_CLOSE_GUIDE,{up = false,})
            end
        else
            self.m_isDown = true
            self.m_player:toDown()
            if self.m_gdown == true then
                self.m_gdown = false
                GameDispatcher:dispatch(EventNames.EVENT_CLOSE_GUIDE,{down = false,})
            end
        end
    end
end
--触摸
local lastTouchTime = 0
local firstTouchTime = 0
function MapLayer:touchFunc(event)
    if tolua.isnull(self.m_player) or self.m_player:getVo().m_hp<=0 or self.m_player:getWalk()==true then
        return true
    end
    if event.name == "began" then
        
        return true
    elseif event.name == "ended" then
        
    elseif event.name == "moved" then
        
    end
    return true
end

--转向
function MapLayer:turnDirection(_slideType)
    if tolua.isnull(self.m_player) or self.m_player:isDead() then
    	return
    end
    local _scaleX=self.m_player:getScaleX()
    if Slide_Type.Slide_Left == _slideType then
        self.m_player:setVelocity(cc.p(-self.m_player:getVo().m_speed,0))
        self.m_player:setScaleX(math.abs(_scaleX))
        if not tolua.isnull(self.m_guide) then
                self.m_guide:toClose(true)
                self.m_guide=nil
        end
        return
    end
    if Slide_Type.Slide_Right == _slideType then
        self.m_player:setVelocity(cc.p(self.m_player:getVo().m_speed,0))
        self.m_player:setScaleX(-1*math.abs(_scaleX))
        if not tolua.isnull(self.m_guide) then
            self.m_guide:toClose(true)
            self.m_guide=nil
        end
        return
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

--帧函数
function MapLayer:onEnterFrame(dt)
    --移动金币
    GameController.attract()
  
    if tolua.isnull(self.m_player) then
        if not tolua.isnull(self.m_rocket) then
            self.m_rocket:removeFromParent(true)
        end
        return
    end

    if tolua.isnull(self.m_player.m_body) then
        return
    end

    if  self.m_player:isDead() then
        return
    end

    --上抛时跳跃无效--滞空状态时跳跃无效
    if self.m_player:isInState(PLAYER_STATE.Thrown) or self.m_player:isInState(PLAYER_STATE.Hover) then
        self.m_isDown = false
        self.m_isUp = false
        self.m_isDrawing = false
        self.m_player:setDrawing(false)
        self.m_player:setDoubleJump(false)
    end

    local bpx,bpy = self.m_player:getPosition()
    local _size = self.m_player:getSize()

    self.m_player:update(dt,bpx,bpy)

    local bIsReturn=false
    if bpx <= 20 then
        bpx=64+_size.width*0.5
        bIsReturn=true
    end
    if  bpx >= (display.width-20)  then
        bpx=display.width-64-_size.width*0.5
        bIsReturn=true
    end
    if bIsReturn==true then
        local _scaleX=self.m_player:getScaleX()
        self.m_player:setVelocity(cc.p(_scaleX/math.abs(_scaleX)*self.m_player:getVo().m_speed,0))
        self.m_player:setScaleX(-1*_scaleX)
        self.m_player:collision()
    end
    if bpy-_size.height*0.5<self.m_mapEndY+Blank then
        bpy=self.m_mapEndY+64+Blank+_size.height*0.5
        bIsReturn = true
    end
    if bIsReturn then
        self.m_player:setPosition(bpx,bpy)
    end

    local _body = self.m_player:getBody()
    local _p = _body:getPosition()
    local _veloc = _body:getVelocity()
    local _scaleX = self.m_player:getScaleX()
    local _add = -1*_scaleX/math.abs(_scaleX)  --因为人物默认是向左的，所以乘以-1
    if self.m_player:isInState(PLAYER_STATE.Thrown) then
        self.m_physicWorld:rayCast(handler(self,self.rayCastFunc),cc.p(_p.x,_p.y),cc.p(_p.x,_p.y+_size.height*0.5+Raycast_DisY))
    else
        self.m_physicWorld:rayCast(handler(self,self.rayCastFunc),cc.p(_p.x,_p.y),cc.p(_p.x,_p.y-_size.height*0.5-Raycast_DisY))
    end

    if _p.x <= 32  then
        self.m_player:setVelocity(cc.p(self.m_player:getVo().m_speed,0))
        self.m_player:setScaleX(-1*math.abs(_scaleX))
    end
    if _p.x >= (display.width-32) then
        self.m_player:setVelocity(cc.p(-self.m_player:getVo().m_speed,0))
        self.m_player:setScaleX(math.abs(_scaleX))
    end
    --    print("chjh p.x=，bpx=,pwy=",_p.x,bpx,self.m_player:convertToWorldSpace(cc.p(0,0)).y)

    if self.m_oldX==bpx and self.m_oldY==bpy then
        self.m_staticTime = self.m_staticTime + dt
    else
        self.m_staticTime = 0
    end
    self.m_oldX = bpx
    self.m_oldY = bpy

    local roomIndex = math.floor(self.m_player:getPositionY()/Room_Size.height)
    if roomIndex~=self.m_lastRoomIdx then
        --        local _room = self:getRoomByIdx(MAP_ROOM_INIT_NUM-self.m_lastRoomIdx)
        if MAP_ROOM_INIT_NUM-self.m_lastRoomIdx==1 and self.m_isSleep==true then
            self.m_isSleep=false
            for var=1,#self.m_chaceRooms do
                self.m_chaceRooms[var]:setSleep(false)
            end
        end

        if not tolua.isnull(self.m_lastRoom) then
            self.m_lastRoom:leaveRoom()
            self.m_obstacleL=nil
            self.m_obstacleR=nil
        end
        local _room = self:getRoomByIdx(MAP_ROOM_INIT_NUM-roomIndex)

        self.m_room=_room

        if _room then
            --防止重复计分
            if not _room:isVisited() then
                GameDataManager.addLevelScore(Level_Score.Floor_Score)
            end

            _room:intoRoom()

            if GameDataManager.getUlockLevelsNum() <= 0 and MAP_ROOM_INIT_NUM-roomIndex <= 5 and tolua.isnull(self.m_guide) then
                self.m_guide=GuideView.new():addTo(self:getParent(),MAP_ZORDER_MAX+1)
            end
            
--            if GameDataManager.getUlockLevelsNum() <= 0 and GameController.CurRoomIdx==5 then
--                self.m_guideLR=GuideLR.new():addTo(GameController.getRoomByIdx(GameController.CurRoomIdx),1000)
--            end

            if not tolua.isnull(self.m_guide) then
                if MAP_ROOM_INIT_NUM-roomIndex <= 5 then
                    self.m_guide:setType(MAP_ROOM_INIT_NUM-roomIndex)
                else
                    self.m_guide:toClose(true)
                    self.m_guide=nil
                end
            end
        end
        self.m_lastRoomIdx = roomIndex
        self.m_lastRoom = _room
    end

    if self.m_player:getPositionY()<=(roomIndex*Room_Size.height+64+_size.height) then
        if roomIndex < self.m_lastFarRoomIdx then
            local _nums = math.abs(roomIndex-self.m_lastFarRoomIdx)
            self.m_lastFarRoomIdx = roomIndex
            for var=1, _nums do
                self:addNewRooms()
            end
        end
    end

    --已经显示到最后一层房间则摄像机不再跟随
    local curCamaraY = self.m_camera:getPositionY();
    if curCamaraY > self.m_mapEndY then
        --        local curPlayerY = self.m_player:getPositionY()
        -- 主角速度
        local playerSpeed = bpy - self.m_lastPlayerY;

        local camaraSpeed = 0;
        local camaraEndY = bpy - self.m_camarTopY;

        local disY = camaraEndY - curCamaraY;

        -- 缓动下落速度
        local minSpeed = disY/100;

        -- 主角是否在屏幕中间
        local bottomMinDis = bpy-self.m_camarTopY;
        local topMidDis = bpy-self.m_camarBotY  --(display.height-self.m_camarTopY);
        if (disY>0 and bottomMinDis<curCamaraY) or (disY<0 and topMidDis>curCamaraY) then
            camaraSpeed = minSpeed;
        else
            if playerSpeed==0 then
                camaraSpeed = minSpeed;
            else
                camaraSpeed = playerSpeed;
            end
        end

        local camaraY = curCamaraY + camaraSpeed;
        self.m_camera:setPositionY(camaraY)

        self.m_bg:setPositionY(camaraY+display.height*0.5)
        self.edgeLeft:setPositionY(camaraY)
        self.edgeRight:setPositionY(camaraY)

        GameController.CurCamaraY = curCamaraY

        self.m_lastPlayerY = bpy --self.m_player:getPositionY()
    end

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
    --    print("chjh beginCallBack bodyA,bodyB",tostring(bodyA),tostring(bodyB))
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
    
    if player and player:getVo().m_hp <= 0 then
        self.m_isUp=false
        self.m_isDown=false
        self.m_isDrawing = false
        return true
    end
    --弹出界面时角色无敌状态
    if player and player:isInState(PLAYER_STATE.InvinState) then
        self.m_isUp=false
        self.m_isDown=false
        return true
    end

    if (not player) or player:isDead() then
        return true   --参与碰撞的没有玩家
    end

    if tolua.isnull(obstacle) then
        return false
    else
        if obstacle.getSize~=nil then
            obstacleS=obstacle:getSize()
        else
            obstacleS=obstacle:getCascadeBoundingBox()
        end

        obstacleScale=obstacle:getScaleX()
    end

    _size=player:getSize()

    if obstacleTag==ELEMENT_TAG.NORMAL_WALL_TAG and not tolua.isnull(obstacle) and obstacle:isDestroy()  then
        return false
    end

    local _hitP = cc.p(playerBP.x,playerBP.y-player:getSize().height)

    --玩家在火箭状态下
    if (player:isInState(PLAYER_STATE.Rocket) or player:isInState(PLAYER_STATE.SuperRocket)) and not tolua.isnull(self.m_rocket) then
        if tolua.isnull(obstacle) then
            return false
        end
        if obstacleTag==ELEMENT_TAG.MONSTER_TAG then
            if obstacle:getVo().m_type ~= MONSTER_TYPE.Boss_Type then
                obstacle:collision(SprintAtt,true,obstacle:getBodyY(),true)
            end
        elseif obstacleTag==ELEMENT_TAG.IRON_WALL_TAG then
            if player:isInState(PLAYER_STATE.Rocket) then
                player:toStopRocket()
            else
                player:toStopSuperRocket()
            end
            return true
        else
            obstacle:collision()
        end
        local tagT={[ELEMENT_TAG.NORMAL_WALL_TAG]=1,[ELEMENT_TAG.STONE_WALL_TAG]=2}

        self:checkToDamageBody(_hitP,SprintDA,tagT)
        return false
    end

    local back=function(obstacleY,playerY)
        local _x = -1
        local _scaleX = player:getScaleX()
        if conData.normal.x < 0 then
            _x = -1
        else
            _x = 1
        end

        if obstacleY+obstacleOff.y >= playerY and math.abs(obstacleBP.x-playerBP.x+obstacleOff.x)>=(obstacleS.width+_size.width)/2.0-15 then
            if obstacleTag==ELEMENT_TAG.MONSTER_TAG or obstacleTag==ELEMENT_TAG.NORMAL_WALL_TAG
                or obstacleTag==ELEMENT_TAG.STONE_WALL_TAG or obstalceTag==ELEMENT_TAG.IRON_WALL_TAG
                or obstacleTag==ELEMENT_TAG.WINDOW_TAG or obstacleTag==ELEMENT_TAG.TRAPMONSTER_TAG then


                    if obstacleTag==ELEMENT_TAG.NORMAL_WALL_TAG or obstacleTag==ELEMENT_TAG.STONE_WALL_TAG
                        or obstacleTag==ELEMENT_TAG.IRON_WALL_TAG or obstacleTag==ELEMENT_TAG.BOSSBOMB_TAG then
                        local vel=self.m_player:getBody():getVelocity()

                        if playerBP.x<obstacleBP.x then
                            if tolua.isnull(obstacle.m_pre) then
                                self.m_player:setVelocity(cc.p(-self.m_player:getVo().m_speed,vel.y))
                                self.m_player:setScaleX(math.abs(_scaleX))
                                self.m_player:collision()
                                self.m_obstacleR=obstacle
                            else
                                if playerBP.y>obstacleBP.y then
                                    local oldX,oldY = player:getPosition()
                                    player:setPositionY(oldY+32*0.5+_size.height*0.5) --此处是把陷入地板的角色拔出来，也是以前导致瞬移出现的元凶
                                end
                            end
                        else
                            if tolua.isnull(obstacle.m_behind) then
                                self.m_player:setVelocity(cc.p(self.m_player:getVo().m_speed,vel.y))
                                self.m_player:setScaleX(-math.abs(_scaleX))
                                self.m_player:collision()
                                self.m_obstacleL=obstacle
                            else
                                if playerBP.y>obstacleBP.y and not tolua.isnull(obstacle) then
                                    local oldX,oldY = player:getPosition()
                                    player:setPositionY(oldY+32*0.5+_size.height*0.5) --此处是把陷入地板的角色拔出来，也是以前导致瞬移出现的元凶
                                end
                            end
                        end
                    else
                        local vel=self.m_player:getBody():getVelocity()

                        if playerBP.x<obstacleBP.x then
                            self.m_player:setVelocity(cc.p(-self.m_player:getVo().m_speed,vel.y))
                            self.m_player:setScaleX(math.abs(_scaleX))
                            self.m_player:collision()
                            self.m_obstacleR=obstacle
                        else
                            self.m_player:setVelocity(cc.p(self.m_player:getVo().m_speed,vel.y))
                            self.m_player:setScaleX(-math.abs(_scaleX))
                            self.m_player:collision()
                            self.m_obstacleL=obstacle
                        end
                    end
            end
        end
    end

    if self.m_player:isInState(PLAYER_STATE.WalkMachine) and (obstacleTag==ELEMENT_TAG.TRAPMONSTER_TAG or obstacleTag==ELEMENT_TAG.DUSTBIN_TAG)  then
        if not tolua.isnull(obstacle) then
            obstacle:dispose(true)
            return true
        end
    end

    --对rayCastFuncX碰撞方向遗漏再次检测，由于探测只是一条线，所以前方可能探测不全
    if conData.normal.x~=0 and (not self.m_isUp) and (not self.m_isDown) then
        --        local _x = -1
        local _size = player:getSize()
        back(obstacleBP.y,playerBP.y-_size.height*0.4)
    end

    --由于探测仅是一条线，防止漏网之鱼
    local isUpOrDown=0
    if self.m_player:isUpDrawing()==true then
        isUpOrDown=1
    elseif self.m_player:isDownDrawing()==true then
        isUpOrDown=2
    end

    if isUpOrDown~=0 then
        local _vo = player:getVo()
        local DA=player:getDA()

        if obstacleTag==ELEMENT_TAG.NORMAL_WALL_TAG then
            if isUpOrDown==2 then
                self.m_addFragment=true
                obstacle:collision()

                if self.m_player:isInState(PLAYER_STATE.Invincible) then
                    local tagT={[ELEMENT_TAG.NORMAL_WALL_TAG]=1,[ELEMENT_TAG.STONE_WALL_TAG]=2}
                    self:checkToDamageBody(_hitP,DA,tagT)
                else
                    self:checkToDamageBody(_hitP,DA,{[ELEMENT_TAG.NORMAL_WALL_TAG]=1})
                end
                --                local pos=self.m_player:getBody():getPosition()
                --                pos.y=pos.y-self.m_player.m_size.height/2.0-32
                --                self:addFragment(pos)

                --此为墙体碰撞也要改变其方向
                if obstacleBP.y > playerBP.y then
                    print("chjh ---------此处碰撞应改变方向--")
                    back(obstacleBP.y+obstacleS.height/2.0,playerBP.y-_size.height/2.0)
                else
                    self.m_player:setDrawing(false)
                end

                return false
            else
                self.m_player:setDrawing(false)
                back(obstacleBP.y+obstacleS.height/2.0,playerBP.y-_size.height/2.0)
                return true
            end
        end
    end
    --检测跳跃结束
    --    if player:isDown() then
    --    print("2222222222222222222222222",self.m_isDrawing)
    if self.m_isDrawing == true then
        if self.m_player:isToUp() then
            back(obstacleBP.y +obstacleS.height/2.0,playerBP.y-_size.height/2.0)
            return true
        end

        local _vo = player:getVo()
        local DA=player:getDA()
        self.m_player:toPlay(PLAYER_ACTION.Run)
        self.m_isDrawing = false

        local bIsDown=self.m_isDown or self.m_isUp

        if bIsDown==true then
            self.m_isDown = false
            self.m_isUp=false
        end
    else
        local _vo = player:getVo()
        self:toJump()
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
    print("chjh bodyA,bodyB",tostring(bodyA),tostring(bodyB))
end
function MapLayer:collisionSeperateCallBack(parameters)
    local conData = parameters:getContactData()
    local bodyA = parameters:getShapeA():getBody()
    local bodyB = parameters:getShapeB():getBody()
    local tagA = bodyA:getTag()
    local tagB = bodyB:getTag()
    print("chjh seperate bodyA,bodyB",tostring(bodyA),tostring(bodyB))
end

function MapLayer:initPlayerPos(parameters)
    local _mapSize = self:getCascadeBoundingBox().size
    --    self.m_mapFirstY = self:getPositionY()
    --    self.m_playerSize = self.m_player:getCascadeBoundingBox().size
    --    self.m_player:getBody():setPosition(cc.p(340,900))
    local _playerY = _mapSize.height-(Room_Size.height+150-64-26)
    self.m_player:setPosition(display.cx,_playerY)
    self.m_camarTopY = display.height-340--_y
    self.m_camarBotY = Normal_Camara_BottomY
    self.m_lastPlayerY = _playerY --self.m_player:convertToWorldSpace(cc.p(0,0)).y;

    self.m_physicWorld = display.getRunningScene():getPhysicsWorld()
    self:scheduleUpdate()

    self.m_camera:setPositionY(_playerY-480)--(_mapSize.height-display.height)--(_playerY-480)
    self.m_event = cc.EventListenerPhysicsContact:create()
    self.m_event:registerScriptHandler(handler(self,self.collisionBeginCallBack), cc.Handler.EVENT_PHYSICS_CONTACT_BEGIN)
    --    self.m_event:registerScriptHandler(handler(self,self.collisionPresolveCallBack), cc.Handler.EVENT_PHYSICS_CONTACT_PRESOLVE)

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

    --玩家在火箭状态下
    if (self.m_player:isInState(PLAYER_STATE.Rocket) or self.m_player:isInState(PLAYER_STATE.SuperRocket)) and not tolua.isnull(self.m_rocket) then
        if _tag==ELEMENT_TAG.MONSTER_TAG then
            if _bnode:getVo().m_type ~= MONSTER_TYPE.Boss_Type then
                _bnode:collision(SprintAtt,true,_bnode:getBodyY(),true)
            end
        elseif _tag==ELEMENT_TAG.IRON_WALL_TAG then
            if self.m_player:isInState(PLAYER_STATE.Rocket) then
                self.m_player:toStopRocket()
            else
                self.m_player:toStopSuperRocket()
            end
            return true
        else
            _bnode:collision()
        end
        local tagT={[ELEMENT_TAG.NORMAL_WALL_TAG]=1,[ELEMENT_TAG.STONE_WALL_TAG]=2}

        self:checkToDamageBody(_hitP,SprintDA,tagT)
        return false
    end
    return true
end
--
function MapLayer:rayCastFuncX(_world,_p1,_p2,_p3)
    --    print("chjh _p1.normal.x,y",_p1.normal.x,_p1.normal.y)
    --冲刺状态下不做方向
    --    if self.m_player:isInState(PLAYER_STATE.Sprint) then
    --        return true
    --    end
    --    self.m_rayCastXT = os.clock()
    local _body = _p1.shape:getBody()
    local _bnode = _body:getNode()
    local _tag = _body:getTag()
    local _scaleX = self.m_player:getScaleX()
    local playerBP=self.m_player:getBody():getPosition()
    local obstacleBP=_body:getPosition()
    local att=self.m_player:getAtt()
    --    print("player.scalex=",_scaleX)
    --    local _x
    --    if _p1.normal.x>0 then
    --    	_x = 1
    --    else
    --        _x = -1
    --    end
    if (not _bnode) or _tag==ELEMENT_TAG.PLAYER_TAG then
        return true
    end

    local bIsResist=false   --是否有碰到障碍

    --添加了启跳中碰到障碍物更改方向，但破坏地板下落中不需改变方向，窗户直接换向
    if bIsResist and ((not self.m_isUp) and (not self.m_isDown) or self.m_player:isToUp()) or _tag==ELEMENT_TAG.WINDOW_TAG then
        self.m_checkedDir = true
        if _tag==ELEMENT_TAG.NORMAL_WALL_TAG or _tag==ELEMENT_TAG.STONE_WALL_TAG or _tag==ELEMENT_TAG.IRON_WALL_TAG then
            local vel=self.m_player:getBody():getVelocity()

            if playerBP.x<obstacleBP.x then
                if tolua.isnull(_bnode.m_pre) then
                    self.m_player:setVelocity(cc.p(-self.m_player:getVo().m_speed,vel.y))
                    self.m_player:setScaleX(math.abs(_scaleX))
                    self.m_player:collision()
                    self.m_obstacleR=_bnode

                    return false
                end
            else
                if tolua.isnull(_bnode.m_behind) then
                    self.m_player:setVelocity(cc.p(self.m_player:getVo().m_speed,vel.y))
                    self.m_player:setScaleX(-math.abs(_scaleX))
                    self.m_player:collision()
                    self.m_obstacleL=_bnode

                    return false
                end
            end
        else
            local vel=self.m_player:getBody():getVelocity()
            if playerBP.x<obstacleBP.x then
                self.m_player:setVelocity(cc.p(-self.m_player:getVo().m_speed,vel.y))
                self.m_player:setScaleX(math.abs(_scaleX))
                self.m_player:collision()
                self.m_obstacleR=_bnode
            else
                self.m_player:setVelocity(cc.p(self.m_player:getVo().m_speed,vel.y))
                self.m_player:setScaleX(-math.abs(_scaleX))
                self.m_player:collision()
                self.m_obstacleL=_bnode
            end

            return false
        end

    end
    self.m_checkedDir = false
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
        --        self:addNewRooms()
        --        local _room = MapRoom.new(var,1)
        if GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
            if self.endlessCon[var].type == Room_Hell.D then
                self.m_levelCon = RoomsD[math.random(1,#RoomsD)]
                print("房间类型D","随机房间号id",math.random(1,#RoomsD))
            elseif self.endlessCon[var].type == Room_Hell.C then
                self.m_levelCon = RoomsC[math.random(1,#RoomsC)]
                print("房间类型C","随机房间号id",math.random(1,#RoomsC))
            elseif self.endlessCon[var].type == Room_Hell.B then
                self.m_levelCon = RoomsB[math.random(1,#RoomsB)]
                print("房间类型B","随机房间号id",math.random(1,#RoomsB))
            elseif self.endlessCon[var].type == Room_Hell.A then
                self.m_levelCon = RoomsA[math.random(1,#RoomsA)]
                print("房间类型A","随机房间号id",math.random(1,#RoomsA))
            elseif self.endlessCon[var].type == Room_Hell.S then
                self.m_levelCon = RoomsS[math.random(1,#RoomsS)]
                print("房间类型S","随机房间号id",math.random(1,#RoomsS))
            elseif self.endlessCon[var].type == Room_Hell.SS then
                self.m_levelCon = RoomsSS[math.random(1,#RoomsSS)]
                print("房间类型SS","随机房间号id",math.random(1,#RoomsSS))
            elseif self.endlessCon[var].type == Room_Hell.I then
                self.m_levelCon = RoomsI[math.random(1,#RoomsI)]
                print("房间类型I","随机房间号id",math.random(1,#RoomsI))
            elseif self.endlessCon[var].type == Room_Hell.O then
                self.m_levelCon = RoomsO[math.random(1,#RoomsO)]
                print("房间类型O","随机房间号id",math.random(1,#RoomsO))
            end
        end
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