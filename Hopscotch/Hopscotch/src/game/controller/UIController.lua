local SetView = require("game.view.set.SetUI")
local PauseView = require("game.view.pause.PauseUI")
local SettlementView = require("game.view.settlement.SettlementUI")
local ShopView = require("game.view.shop.ShopView")
local FlyText = require("game.view.flyText.FlyText")
local RocketView = require("game.view.map.RocketView")
local ReviveView = require("game.view.revive.ReviveView")
local RewardView = require("game.view.settlement.RewardView")

local UIController = class("UIController")

function UIController:ctor()
    --监听设置界面打开
    GameDispatcher:addListener(EventNames.EVENT_OPEN_SET,handler(self,self.openSetUI))
    --暂停
    GameDispatcher:addListener(EventNames.EVENT_OPEN_PAUSE,handler(self,self.openPauseUI))
    --结算
    GameDispatcher:addListener(EventNames.EVENT_OPEN_SETTLEMENT,handler(self,self.openSettlementUI))
    --商城
    GameDispatcher:addListener(EventNames.EVENT_OPEN_SHOP,handler(self,self.openShopUI))
    --飘字
    GameDispatcher:addListener(EventNames.EVENT_FLY_TEXT,handler(self,self.flyText))
    --火箭界面
    GameDispatcher:addListener(EventNames.EVENT_ROCKET_VIEW,handler(self,self.rocketView))
    --复活界面
    GameDispatcher:addListener(EventNames.EVENT_REVIVE_VIEW,handler(self,self.openReviveView))
    --奖励界面
    GameDispatcher:addListener(EventNames.EVENT_OPEN_REWARD,handler(self,self.openRewardView))
end

--打开设置界面
function UIController:openSetUI(parameters)
    local _setUI = SetView.new(parameters.data)
    _setUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开暂停界面
function UIController:openPauseUI(parameters)
    local _pauseUI = PauseView.new(parameters.data)
    _pauseUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开结算界面
function UIController:openSettlementUI(parameters)
    local _settlementUI = SettlementView.new(parameters.data)
    _settlementUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开商城界面
function UIController:openShopUI(parameters)
    local _shopUI = ShopView.new(parameters.data)
    _shopUI:show(UI_ZORDER.VIEW_ZORDER)
end

--飘字
function UIController:flyText(parameters)
    local _flyUi = FlyText.new(parameters.data)
    _flyUi:show(UI_ZORDER.TIPS_ZORDER)
end

--火箭界面
function UIController:rocketView(parameters)
    local _flyUi = RocketView.new(parameters.data)
    _flyUi:show(UI_ZORDER.VIEW_ZORDER)
end

--复活界面
function UIController:openReviveView(parameters)
    local _flyUi = ReviveView.new(parameters.data)
    _flyUi:show(UI_ZORDER.VIEW_ZORDER)
end

--复活界面
function UIController:openRewardView(parameters)
    local _rewardUi = RewardView.new(parameters.data)
    _rewardUi:show(UI_ZORDER.VIEW_ZORDER)
end

return UIController