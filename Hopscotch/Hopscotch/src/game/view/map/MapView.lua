--[[
地图界面
]]
local MapView = class("MapView",function()
    return display.newNode()
end)

local Scheduler = require("framework.scheduler")

function MapView:ctor(parameters)
    self:setTouchSwallowEnabled(false)

    self.m_mapView = cc.uiloader:load("json/MapView.json")
    self:addChild(self.m_mapView)
    
    local Image_2 = cc.uiloader:seekNodeByName(self.m_mapView,"Image_2")
    Image_2:setPositionY(display.top-34)
    local Image_2_0 = cc.uiloader:seekNodeByName(self.m_mapView,"Image_2_0")
    Image_2_0:setPositionY(display.top-84)

    self.DiamondCount = cc.uiloader:seekNodeByName(self.m_mapView,"DiamondCount")
    self.DiamondCount:setString(GameDataManager.getDiamond())
    
    self.RecordScroe = cc.uiloader:seekNodeByName(self.m_mapView,"RecordScroe")
    self.RecordScroe:setString(GameDataManager.getRecord())
    
    self.Score = cc.uiloader:seekNodeByName(self.m_mapView,"Score")
    self.Score:setPositionY(display.top-144)
    self.Score:setString(1)
    
    self.PauseBtn = cc.uiloader:seekNodeByName(self.m_mapView,"PauseBtn")
    self.PauseBtn:setPositionY(display.top-62)
    local pause = cc.uiloader:seekNodeByName(self.m_mapView,"Button_9")
    pause:setButtonEnabled(false)
    self.PauseBtn:onButtonPressed(function(_event)    --按下
        pause:setButtonImage("disabled","pause/pause_2.png")
    end)
    self.PauseBtn:onButtonRelease(function(_event)    --触摸离开
        pause:setButtonImage("disabled","pause/pause_1.png")
    end)
    self.PauseBtn:onButtonClicked(function (event)
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_PAUSE)
    end)
    
    
    self.proBg = cc.uiloader:seekNodeByName(self.m_mapView,"Image_9")
    self.proBg:setPositionY(display.top-56)
    --进度条
    local fill = display.newSprite("ui/Time_process.png")
    self.process = display.newProgressTimer(fill, display.PROGRESS_TIMER_BAR):addTo(self.proBg)
    self.process:setMidpoint(cc.p(0, 0.5))
    self.process:setBarChangeRate(cc.p(1,0))
    self.process:setPosition(self.proBg:getContentSize().width/2, self.proBg:getContentSize().height/2)
    self.process:setPercentage(100)
    

    --监听钻石
    self.diamondHandler = GameDispatcher:addListener(EventNames.EVENT_DIAMOND_CHANGE,handler(self,self.updateDiamond))
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_FLOOR,handler(self,self.updateFloor))
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_BEST,handler(self,self.updateBestFloor))
    GameDispatcher:addListener(EventNames.EVENT_CLOSE_TIME,handler(self,self.startProcess))
    GameDispatcher:addListener(EventNames.EVENT_STOP_COUNTDOWN,handler(self,self.stopProcess))
end

function MapView:updateDiamond()
    self.DiamondCount:setString(GameDataManager.getDiamond())
end

function MapView:updateFloor()
    if self.Score then
        self.Score:setString(GameDataManager.getPoints())
    end
end

function MapView:updateBestFloor()
    if self.RecordScroe then
        self.RecordScroe:setString(GameDataManager.getRecord())
    end
end

--进度条显示
function MapView:startProcess(parm)
    local time1,time2
    if parm.data.floor >= Map_Grade.floor_S then
    	time1 = Map_ProcessTime.s[1]
        time2 = Map_ProcessTime.s[2]
    elseif parm.data.floor >= Map_Grade.floor_A then
        time1 = Map_ProcessTime.a[1]
        time2 = Map_ProcessTime.a[2]
    elseif parm.data.floor >= Map_Grade.floor_B then
        time1 = Map_ProcessTime.b[1]
        time2 = Map_ProcessTime.b[2]
    elseif parm.data.floor >= Map_Grade.floor_C then
        time1 = Map_ProcessTime.c[1]
        time2 = Map_ProcessTime.c[2]
    else
        time1 = Map_ProcessTime.d[1]
        time2 = Map_ProcessTime.d[2]
    end
    self.process:stopAllActions()
    self.process:setPercentage(100)
    if self.timeHandler then
        Scheduler.unscheduleGlobal(self.timeHandler)
        self.timeHandler=nil
    end
    self.timeHandler = Tools.delayCallFunc(time1,function()
        local to = cc.ProgressTo:create(time2, 0)
        local callfunc = cc.CallFunc:create(function()
            GameDispatcher:dispatch(EventNames.EVENT_GAME_OVER)
        end)
        local seq = cc.Sequence:create(to,callfunc)
        self.process:runAction(seq)
    end)
end

function MapView:stopProcess()
    self.process:stopAllActions()
    self.process:setPercentage(100)
    if self.timeHandler then
        Scheduler.unscheduleGlobal(self.timeHandler)
        self.timeHandler=nil
    end
end

function MapView:dispose(parameters)
    GameDispatcher:removeListenerByHandle(self.diamondHandler)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_BEST)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_FLOOR)
    GameDispatcher:removeListenerByName(EventNames.EVENT_CLOSE_TIME)
    GameDispatcher:removeListenerByName(EventNames.EVENT_STOP_COUNTDOWN)
    
    if self.timeHandler then
        Scheduler.unscheduleGlobal(self.timeHandler)
        self.timeHandler=nil
    end

    self:removeFromParent(true)
end

return MapView