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

    --得到当前关卡
    self.m_currentl = GameDataManager.getCurLevelId()

    --分数
    self.m_score = cc.uiloader:seekNodeByName(self.m_mapView,"AtlasLabel_17")
    self.m_score:setString(0)

    -- 暂停按钮
    local pauseBtn = cc.uiloader:seekNodeByName(self.m_mapView,"PauseBtn")
    pauseBtn:onButtonClicked(function(_event)
--        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound,false)
        Tools.printDebug("暂停")
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_PAUSE)
    end)

    --钻石
    self.m_Diamond = cc.uiloader:seekNodeByName(self.m_mapView,"Diamond")
    self.m_Diamond:setString(GameDataManager.getDiamond())
    local DiamondBtn = cc.uiloader:seekNodeByName(self.m_mapView,"DiamondBtn")
    DiamondBtn:onButtonClicked(function(_event)
        Tools.printDebug("-----------钻石购买")
    end)

    --金币
    self.m_goldNum = cc.uiloader:seekNodeByName(self.m_mapView,"Gold") --金币数量
    self.m_goldNum:setString(self.mcurLevelCoin)
    local GoldBtn = cc.uiloader:seekNodeByName(self.m_mapView,"GoldBtn")
    GoldBtn:onButtonClicked(function(_event)
        Tools.printDebug("-----------金币购买")
    end)
    
    local jumpBtn = cc.uiloader:seekNodeByName(self.m_mapView,"JumpBtn")
    jumpBtn:onButtonClicked(function(_event)
        GameController.getCurPlayer():toPlay(PLAYER_ACTION.Jump,0)
        GameController.getCurPlayer():toMove()
    end)


    --监听金币
    GameDispatcher:addListener(EventNames.EVENT_FIGHT_UPDATE_GOLD,handler(self,self.updateGold))
    --监听分数
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_SCORE,handler(self,self.updateScore))

end

--更新金币
function MapView:updateGold(par)
    self.m_goldNum:setString(par.data.coin)

    local _animationType = par.data.animation
    if _animationType == true  then
        local scale1 = cc.ScaleTo:create(0.1,1.2)
        local scale2 = cc.ScaleTo:create(0.1,1)
        local scales = cc.Sequence:create(scale1,scale2)
        self.m_goldNum:runAction(scales)
    end
end

--更新分数
function MapView:updateScore(parm)
    --当前分数
    local m_score = parm.data
    self.m_score:setString(m_score)
end


function MapView:dispose(parameters)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_SCORE)
    GameDispatcher:removeListenerByName(EventNames.EVENT_FIGHT_UPDATE_GOLD)

    self:removeFromParent(true)
end

return MapView