--[[
火箭界面
]]

local BaseUI = require("game.view.BaseUI")
local ReviveView = class("ReviveView",BaseUI)

local Scheduler = require("framework.scheduler")

function ReviveView:ctor(parameters)
    ReviveView.super.ctor(self)

    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    local bg = display.newColorLayer(cc.c4b(255,255,255,OPACITY)):addTo(self)

    self.m_mapView = cc.uiloader:load("json/ReviveView.json")
    self:addChild(self.m_mapView)


    self.Image_110 = cc.uiloader:seekNodeByName(self.m_mapView,"Image_110")
    self.Image_110:setPositionY(display.bottom-500)

    self.costDiamond = cc.uiloader:seekNodeByName(self.m_mapView,"AtlasLabel_18")
    self.costDiamond:setString(CostSpringDiamond)

    self.tvRocket = cc.uiloader:seekNodeByName(self.m_mapView,"tvRocket")
    self.tvRocket:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("--------brj 看视频冲刺")
        if not self.touchClick then
            self.touchClick = true
            if GameDataManager.isMusicOpen() then
                audio.pauseMusic()
            end
            if GameDataManager.isSoundOpen() then
                audio.pauseAllSounds()
            end
            SDKUtil.getDiamondByVideo({callback=function(_res)
                if GameDataManager.isMusicOpen() then
                    audio.resumeMusic()
                end
                if GameDataManager.isSoundOpen() then
                    audio.resumeAllSounds()
                end
                if SDKUtil.PayResult.Success == _res then
                    self:toClose(true)
                    GameDispatcher:dispatch(EventNames.EVENT_ROLE_REVIVE)
                    GameDataManager.addReviveCount()
                    GameDataManager.setRevive(true)
                else
                    GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="冲刺失败"})
                end
            end})
        end
    end)

    self.diamondRocket = cc.uiloader:seekNodeByName(self.m_mapView,"diamondRocket")
    self.diamondRocket:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("--------brj 花费钻石冲刺")
        if GameDataManager.getDiamond()>=CostSpringDiamond then
            GameDataManager.costDiamond(CostSpringDiamond)
            self:toClose(true)
            GameDispatcher:dispatch(EventNames.EVENT_ROLE_REVIVE)
            GameDataManager.setRevive(true)
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
    
    self.countDown = 0
    self.countDownLabel = cc.uiloader:seekNodeByName(self.m_mapView,"BitmapLabel_13")
    self.countDownLabel:setVisible(false)
    self.countDownLabel:setColor(cc.c3b(50,222,255))
--    self.countDownLabel:setString((self.countDown/60)..":"..(self.countDown%60))
    self:updateReviveTime()

    local move2 = cc.MoveTo:create(0.15,cc.p(0,0))
    self.Image_110:runAction(move2)
    
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_REVIVE,handler(self,self.updateRevive))
    self.m_background = GameDispatcher:addListener(EventNames.EVENT_BACKGROUND,handler(self,self.enterBackground))
end

function ReviveView:enterBackground()
    GameDataManager.setStartEndTime(TimeUtil.getTimeStamp(),self.countDown)
end

function ReviveView:updateReviveTime()
    local time1,time2 = GameDataManager.getReviveEndTime()
    if GameDataManager.getReviveCount()==2 then
        if TimeUtil.getTimeStamp() - time1 >= time2 then
            self.tvRocket:setButtonEnabled(true)
            self.countDownLabel:setVisible(false)
            GameDataManager.resetReviveCount()
        else
            self.countDown = time2 - (TimeUtil.getTimeStamp() - time1)
            GameDataManager.setReviveEndTime(TimeUtil.getTimeStamp(),self.countDown)
            self.countDownLabel:setVisible(true)
            self.countDownLabel:setString("")
            self.tvRocket:setButtonEnabled(false)
            self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
        end
    end
end

function ReviveView:updateRevive()
    if GameDataManager.getReviveCount() == 2 then
        self.countDown = CountDownTime
        GameDataManager.setReviveEndTime(TimeUtil.getTimeStamp(),self.countDown)
        self.countDownLabel:setString("")
        self.tvRocket:setButtonEnabled(false)
        self.countDownLabel:setVisible(true)
        self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
    end
end

function ReviveView:updateCountDown()
    self.countDown = self.countDown - 1
    GameDataManager.setReviveEndTime(TimeUtil.getTimeStamp(),self.countDown)
    self.countDownLabel:setString(string.format("%02d:%02d",self.countDown/60,self.countDown%60))
    if self.countDown <= 0 then
        self.countDown = 0
        self.tvRocket:setButtonEnabled(true)
        self.countDownLabel:setVisible(false)
        GameDataManager.resetReviveCount()
        if self.m_Handler then
            Scheduler.unscheduleGlobal(self.m_Handler)
            self.m_Handler=nil
        end
    end
end

--关闭火箭冲刺界面
function ReviveView:closeRocketView()
    self.Image_110:stopAllActions()
    local move = cc.MoveTo:create(0.15,cc.p(0,display.bottom-500))
    local callfunc = cc.CallFunc:create(function()
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_SETTLEMENT)
        self:toClose(true)
    end)
    local seq = cc.Sequence:create(move,callfunc)
    self.Image_110:runAction(seq)
    
    local move2 = cc.MoveBy:create(0.15,cc.p(0,-220))
    self.countDownLabel:runAction(move2)
end

function ReviveView:onCleanup(parameters)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_REVIVE)
    GameDispatcher:removeListenerByHandle(self.m_background)
    
    if self.m_Handler then
        Scheduler.unscheduleGlobal(self.m_Handler)
        self.m_Handler=nil
    end
end

--关闭界面调用
function ReviveView:toClose(_clean)
    ReviveView.super.toClose(self,_clean)
end

return ReviveView