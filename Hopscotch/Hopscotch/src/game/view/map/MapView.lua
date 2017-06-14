--[[
地图界面
]]
local MapView = class("MapView",function()
    return display.newNode()
end)

function MapView:ctor(parameters)
    self:setTouchSwallowEnabled(false)

    self.m_mapView = cc.uiloader:load("json/MapView.json")
    self:addChild(self.m_mapView)

    self.DiamondCount = cc.uiloader:seekNodeByName(self.m_mapView,"DiamondCount")
    self.DiamondCount:setString(GameDataManager.getDiamond())
    
    self.RecordScroe = cc.uiloader:seekNodeByName(self.m_mapView,"RecordScroe")
    self.RecordScroe:setString(GameDataManager.getRecord())
    
    self.Score = cc.uiloader:seekNodeByName(self.m_mapView,"Score")
    self.Score:setString(1)
    
    self.PauseBtn = cc.uiloader:seekNodeByName(self.m_mapView,"PauseBtn")
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

    --监听钻石
    self.diamondHandler = GameDispatcher:addListener(EventNames.EVENT_DIAMOND_CHANGE,handler(self,self.updateDiamond))
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_FLOOR,handler(self,self.updateFloor))
end

function MapView:updateDiamond()
    self.DiamondCount:setString(GameDataManager.getDiamond())
end

function MapView:updateFloor()
	self.Score:setString(GameDataManager.getPoints())
end

function MapView:dispose(parameters)
    GameDispatcher:removeListenerByHandle(self.diamondHandler)

    self:removeFromParent(true)
end

return MapView