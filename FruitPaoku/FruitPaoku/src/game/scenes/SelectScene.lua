local SelectUI = require("game.view.Select.SelectUI")

local SelectScene = class("SelectScene", function()
    return display.newScene("SelectScene")
end)

function SelectScene:ctor()
    self.m_SelectUI = SelectUI.new()
    self:addChild(self.m_SelectUI)
end

function SelectScene:onEnter()
end

function SelectScene:onExit()
end

return SelectScene
