--[[
商店界面
]]
local BaseUI = require("game.view.BaseUI")
local RoleView = class("RoleView",BaseUI)

local CommonUI = require("game.view.Common.CommonUI")

function RoleView:ctor(parameters)
    RoleView.super.ctor(self)

    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)
    self.m_roleUi = cc.uiloader:load("json/RoleView.json")
    self:addChild(self.m_roleUi)


    --启用监听
    self:setNodeEventEnabled(true)

end

--关闭界面调用
function RoleView:toClose(_clean)
    RoleView.super.toClose(self,_clean)
end

--清理数据
function RoleView:onCleanup()

end

return RoleView