--[[
火箭界面
]]

local BaseUI = require("game.view.BaseUI")
local RocketView = class("RocketView",BaseUI)

local Scheduler = require("framework.scheduler")

function RocketView:ctor(parameters)
    RocketView.super.ctor(self)

    local bg = display.newColorLayer(cc.c4b(255,255,255,OPACITY)):addTo(self)

    self.m_mapView = cc.uiloader:load("json/RocketView.json")
    self:addChild(self.m_mapView)
    
    
    self.Image_110 = cc.uiloader:seekNodeByName(self.m_mapView,"Image_110")
    self.Image_110:setPositionY(display.bottom-500)
    
    self.costDiamond = cc.uiloader:seekNodeByName(self.m_mapView,"AtlasLabel_18")
    self.costDiamond:setString(CostSpringDiamond)
    
    self.tvRocket = cc.uiloader:seekNodeByName(self.m_mapView,"tvRocket")
    self.tvRocket:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("--------brj 看视频冲刺")
        SDKUtil.getDiamondByVideo({callback=function(_res)
            if SDKUtil.PayResult.Success == _res then
                GameDataManager.addStartCount()
                GameDispatcher:dispatch(EventNames.EVENT_START_ROCKET)
                self:toClose(true)
            else
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="冲刺失败"})
            end
        end})
    end)

    self.diamondRocket = cc.uiloader:seekNodeByName(self.m_mapView,"diamondRocket")
    self.diamondRocket:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("--------brj 花费钻石冲刺")
        if GameDataManager.getDiamond()>=CostSpringDiamond then
            GameDataManager.costDiamond(CostSpringDiamond)
            GameDataManager.addStartCount()
            GameDispatcher:dispatch(EventNames.EVENT_START_ROCKET)
            self:toClose(true)
        else
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="钻石不足"})
        end
    end)

    self.Button_12 = cc.uiloader:seekNodeByName(self.m_mapView,"Button_12")
    self.Button_12:setButtonEnabled(false)
    self.closeBtn = cc.uiloader:seekNodeByName(self.m_mapView,"Close")
    --关闭按钮
    self.closeBtn:onButtonPressed(function(_event)    --按下
        self.Button_12:setButtonImage("disabled","common/close_2.png")
    end)
    self.closeBtn:onButtonRelease(function(_event)    --触摸离开
        self.Button_12:setButtonImage("disabled","common/close_1.png")
    end)
    self.closeBtn:onButtonClicked(function (event)
        if not self.closeClick then
            self.closeClick = true
            self:closeRocketView()
        end
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)
    
    local move2 = cc.MoveTo:create(0.15,cc.p(0,0))
    self.Image_110:runAction(move2)
end

--关闭火箭冲刺界面
function RocketView:closeRocketView()
    self.Image_110:stopAllActions()
    local move = cc.MoveTo:create(0.15,cc.p(0,display.bottom-500))
    local callfunc = cc.CallFunc:create(function()
        GameDispatcher:dispatch(EventNames.EVENT_HIDE_BOTTOM,true)
        self:toClose(true)
    end)
    local seq = cc.Sequence:create(move,callfunc)
    self.Image_110:runAction(seq)
end

--关闭界面调用
function RocketView:toClose(_clean)
    RocketView.super.toClose(self,_clean)
end

return RocketView