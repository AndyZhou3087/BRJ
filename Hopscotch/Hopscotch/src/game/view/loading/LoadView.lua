--[[
加载界面
]]
local BaseUI = require("game.view.BaseUI")
local LoadView = class("LoadView",BaseUI)
local Scheduler = require(cc.PACKAGE_NAME .. ".scheduler")

function LoadView:ctor(parameters)
    LoadView.super.ctor(self)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    self.m_json = cc.uiloader:load("json/MainUI.json")
    self:addChild(self.m_json)

    local bg = display.newSprite("loading/bg.jpg"):addTo(self)
    bg:setAnchorPoint(cc.p(0,0))
    bg:setPosition(cc.p(0,0))
    
    local logo = display.newSprite("loading/Logo.png"):addTo(bg)
    logo:setPosition(cc.p(display.cx,display.top-400))
    
    Tools.delayCallFunc(1,function()
        local fadeOut = cc.FadeOut:create(1.5)
--        local callfunc = cc.CallFunc:create(function()
--            Tools.printDebug("-------------------消失")
--        end)
--        local seq = cc.Sequence:create(fadeOut,callfunc)
        bg:runAction(fadeOut)
    end)
    
    self.shop = cc.uiloader:seekNodeByName(self.m_json,"Button_left")
    self.shop:setButtonEnabled(false)
    self.shop2 = cc.uiloader:seekNodeByName(self.m_json,"shopBtn")
    self.tv = cc.uiloader:seekNodeByName(self.m_json,"Button_right")
    self.tv:setButtonEnabled(false)
    self.tv2 = cc.uiloader:seekNodeByName(self.m_json,"tvBtn")
    
    --购物车按钮
    self.shop2:onButtonPressed(function(_event)    --按下
        self.shop:setButtonImage("disabled","main/Button_press.png")
    end)
    self.shop2:onButtonRelease(function(_event)    --触摸离开
        self.shop:setButtonImage("disabled","main/Button_up.png")
    end)
    self.shop2:onButtonClicked(function (event)
        
    end)
    
    --tv按钮
    self.tv2:onButtonPressed(function(_event)    --按下
        self.tv:setButtonImage("disabled","main/Button_press.png")
    end)
    self.tv2:onButtonRelease(function(_event)    --触摸离开
        self.tv:setButtonImage("disabled","main/Button_up.png")
    end)
    self.tv2:onButtonClicked(function (event)

    end)

    self:setTouchEnabled(true)
    self:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            Tools.printDebug("-------------------进入主场景")
            return true
        elseif event.name == "ended" then
        end
    end)
end

--清理数据
function LoadView:onCleanup()
   
end

--关闭界面调用
function LoadView:toClose(_clean)
    LoadView.super.toClose(self,_clean)
end

return LoadView