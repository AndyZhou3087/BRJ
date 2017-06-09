--[[
加载界面
]]
local BaseUI = require("game.view.BaseUI")
local LoadView = class("LoadView",BaseUI)
local Scheduler = require("framework.scheduler")

function LoadView:ctor(parameters)
    LoadView.super.ctor(self)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    self.m_json = cc.uiloader:load("json/MainUI.json")
    self:addChild(self.m_json)

    local bg = display.newSprite("loading/bg.jpg"):addTo(self)
    bg:setAnchorPoint(cc.p(0,0))
    bg:setPosition(cc.p(0,0))
    
    self.Image_2 = cc.uiloader:seekNodeByName(self.m_json,"Image_2")
    self.Image_2:setPositionY(display.bottom+108)
    
    local logo = display.newSprite("loading/Logo.png"):addTo(bg)
    logo:setPosition(cc.p(display.cx,display.top-400))
    
    Tools.delayCallFunc(1,function()
        local fadeOut = cc.FadeOut:create(1.5)
        local callfunc = cc.CallFunc:create(function()
            self:setTouchEnabled(true)
        end)
        local seq = cc.Sequence:create(fadeOut,callfunc)
        bg:runAction(seq)
    end)
    
    self.shop = cc.uiloader:seekNodeByName(self.m_json,"Button_left")
    self.shop:setButtonEnabled(false)
    self.shop2 = cc.uiloader:seekNodeByName(self.m_json,"shopBtn")
    self.tv = cc.uiloader:seekNodeByName(self.m_json,"Button_right")
    self.tv:setButtonEnabled(false)
    self.tv2 = cc.uiloader:seekNodeByName(self.m_json,"tvBtn")
    
    --购物车按钮
    self.shop2:onButtonPressed(function(_event)    --按下
        self.shop:setButtonImage("disabled","common/Button_press.png")
    end)
    self.shop2:onButtonRelease(function(_event)    --触摸离开
        self.shop:setButtonImage("disabled","common/Button_up.png")
    end)
    self.shop2:onButtonClicked(function (event)
        
    end)
    
    --tv按钮
    self.tv2:onButtonPressed(function(_event)    --按下
        self.tv:setButtonImage("disabled","common/Button_press.png")
    end)
    self.tv2:onButtonRelease(function(_event)    --触摸离开
        self.tv:setButtonImage("disabled","common/Button_up.png")
    end)
    self.tv2:onButtonClicked(function (event)
--        --测试界面
--        GameDispatcher:dispatch(EventNames.EVENT_OPEN_SHOP)
    end)

--    self:setTouchEnabled(true)
    self:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            Tools.printDebug("-------------------进入主场景")
            GameDataManager.generatePlayerVo()  --产生新的角色数据对象
            app:enterGameScene()
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