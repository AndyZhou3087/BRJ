local SetView = require("game.view.set.SetUI")
local PauseView = require("game.view.pause.PauseUI")

local UIController = class("UIController")

function UIController:ctor()
    --监听设置界面打开
    GameDispatcher:addListener(EventNames.EVENT_OPEN_SET,handler(self,self.openSetUI))
    
    GameDispatcher:addListener(EventNames.EVENT_OPEN_PAUSE,handler(self,self.openPauseUI))
end

--打开设置界面
function UIController:openSetUI(parameters)
    Tools.printDebug("chshl Open the openSetUI!")
    local _setUI = SetView.new(parameters.data)
    _setUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开暂停界面
function UIController:openPauseUI(parameters)
    local _pauseUI = PauseView.new(parameters.data)
    _pauseUI:show(UI_ZORDER.VIEW_ZORDER)
end

return UIController