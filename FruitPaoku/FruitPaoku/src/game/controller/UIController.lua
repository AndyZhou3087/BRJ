
local UIController = class("UIController")

local FightReadyUI = require("game.view.fightReady.FightReadyUI")

function UIController:ctor()
    --打开战斗准备界面
    GameDispatcher:addListener(EventNames.EVENT_OPEN_READY,handler(self,self.openReady))
end

--打开战斗准备界面
function UIController:openReady(parm)
    local _ReadyUI =FightReadyUI.new(parm.data)
    _ReadyUI:show(UI_ZORDER.VIEW_ZORDER)
end

return UIController