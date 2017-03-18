
local UIController = class("UIController")

local FightReadyUI = require("game.view.fightReady.FightReadyUI")
local FlyText = require("game.view.flyText.FlyText")
local Pause = require("game.view.Pause.Pause")
local FightOver = require("game.view.FightOver.FightOver")

function UIController:ctor()
    --打开战斗准备界面
    GameDispatcher:addListener(EventNames.EVENT_OPEN_READY,handler(self,self.openReady))
    
    --飘字
    GameDispatcher:addListener(EventNames.EVENT_FLY_TEXT,handler(self,self.flyText))
    
    --打开暂停界面
    GameDispatcher:addListener(EventNames.EVENT_OPEN_PAUSE,handler(self,self.openPause))
    
    --结算
    GameDispatcher:addListener(EventNames.EVENT_OPEN_OVER,handler(self,self.openFightOver))
end

--打开战斗准备界面
function UIController:openReady(parm)
    local _ReadyUI =FightReadyUI.new(parm.data)
    _ReadyUI:show(UI_ZORDER.VIEW_ZORDER)
end

--飘字
function UIController:flyText(parameters)
    local _flyUi = FlyText.new(parameters.data)
    _flyUi:show(UI_ZORDER.TIPS_ZORDER)
end

function UIController:openPause(parameters)
    local _pauseUI = Pause.new()
    _pauseUI:show(UI_ZORDER.VIEW_ZORDER)
end

function UIController:openFightOver(parameters)
    local _overUI = FightOver.new(parameters.data)
    _overUI:show(UI_ZORDER.VIEW_ZORDER)
end

return UIController