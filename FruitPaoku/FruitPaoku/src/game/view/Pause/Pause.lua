--[[
暂停界面
]]
local BaseUI = require("game.view.BaseUI")
local Pause = class("Pause",BaseUI)

function Pause:ctor(parm)
    Pause.super.ctor(self)
    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)
    GameController.pauseGame() --游戏暂停

    local _pause = cc.uiloader:load("json/PauseUI.json")
    self:addChild(_pause)
    
    
    --继续游戏
    local ContinueBtn=cc.uiloader:seekNodeByName(_pause,"ContinueBtn")
    ContinueBtn:onButtonClicked(function(event)
        GameController.resumeGame()
        self:toClose(true)
    end)
    
    local RestartBtn=cc.uiloader:seekNodeByName(_pause,"RestartBtn")
    RestartBtn:onButtonClicked(function(event)
        
    end)
    
    local BackBtn=cc.uiloader:seekNodeByName(_pause,"BackBtn")
    BackBtn:onButtonClicked(function(event)
        GameController.resumeGame()
        self:toClose(true)
        app:enterSelectScene()
    end)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)
end

--关闭界面调用
function Pause:toClose(_clean)
    Pause.super.toClose(self,true)
end

--清理数据
function Pause:onCleanup()

end

return Pause