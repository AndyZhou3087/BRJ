--[[
地图层
]]
local Scheduler = require("framework.scheduler")
local Player = require("game.view.element.Player")

local MapLayer = class("MapLayer",function()
    local pLayer = cc.Layer:create()
    return pLayer
end)

local BackGroundMove = require("game.custom.BackGroundMove")
--local MapGroup = require("app.view.map.MapGroup")

function MapLayer:ctor(parameters)

    GameController.setSpeed(MoveSpeed)
    self.m_backbg = BackGroundMove.new(GameBgRes,0,MoveSpeed):addTo(self)

    self.group = {}
    self.pexel = 0
    
    self.m_curZOrder = MAP_ZORDER_MAX + 1

    self.m_roomsNum = MAP_GROUP_INIT_NUM

--    self:initRooms()
    
    self.m_player = Player.new()
    self:addChild(self.m_player,MAP_ZORDER_MAX+1)
    self.m_player:setPosition(display.cx-100,display.cy-240)

end

function MapLayer:initRooms()
    if GAME_TYPE_CONTROL == GAME_TYPE.LevelMode then
        self.m_levelCon = SelectLevel[GameDataManager.getCurLevelId()]
    elseif GAME_TYPE_CONTROL == GAME_TYPE.EndlessMode then
        -- self.endlessCon = EndlessMode.room_Type
        -- self.m_levelCon = self.endlessCon
        -- self.curRooms = self.endlessCon
    end
end

--触摸
function MapLayer:touchFunc(event)
--    if GameController.isDead then
--        return true
--    end


    if event.name == "began" or event.name == "added" then
        self.m_player:toPlay(PLAYER_ACTION.Jump,0)
        self.m_player:toMove()
        return true
    elseif event.name == "ended" then
        
    elseif event.name == "removed" then

    elseif event.name == "moved" then

    end
    return true
end

--碰撞开始触发
function MapLayer:collisionBeginCallBack(parameters)
--    if GameController.isDead then
--        return true
--    end

    print("碰撞检测")
    local conData = parameters:getContactData()
    local bodyA = parameters:getShapeA():getBody()
    local bodyB = parameters:getShapeB():getBody()
    local tagA = bodyA:getTag()
    local tagB = bodyB:getTag()
    local player,playerBP,playerTag,_size,playerBody
    local obstacle,obstacleBP,obstacleTag,obstacleBody
    local obstacleS,obstacleScale
    local obstacleOff

    if tagB == ELEMENT_TAG.OBSTACLE then
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
    if tagA == ELEMENT_TAG.OBSTACLE then
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


function MapLayer:initPhyPos(parameters)
    self.m_event = cc.EventListenerPhysicsContact:create()
    self.m_event:registerScriptHandler(handler(self,self.collisionBeginCallBack), cc.Handler.EVENT_PHYSICS_CONTACT_BEGIN)
    self:getEventDispatcher():addEventListenerWithFixedPriority(self.m_event,1)
    self.m_timer = Scheduler.scheduleGlobal(handler(self,self.onEnterFrame),0.01)

    --初始化几组障碍，不能在ctor的时候调用
--    self:initGroups()
end

--帧函数
function MapLayer:onEnterFrame(dt)

    --移动金币
--    GameController.attract()

--    local bpx,bpy = self.m_player:getPosition()
--    self.m_player:update(dt,bpx,bpy)

    --跑了多少米换算公式
   self.pexel = self.pexel + MoveSpeed*0.1/(Pixel/Miles)
    --    print("[[[[[[[[[[[[[[[[[     ",self.pexel)

   local cur = math.floor(self.pexel)
   GameDataManager.addKm(cur)
--
--    if GameDataManager.getRecord()<=0 then
--        self:initGuide()
--        self.leftMile = GuideLeft
--        self.rightMile = GuideRight
--    end

end

--地图销毁
function MapLayer:dispose(parameters)
    --移除碰撞事件
    self:getEventDispatcher():removeEventListener(self.m_event)

    self:removeFromParent(true)
end

return MapLayer