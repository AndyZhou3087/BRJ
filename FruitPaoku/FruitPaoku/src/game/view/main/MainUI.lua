--[[
主界面
]]
local BaseUI = require("game.view.BaseUI")
local MainUI = class("MainUI",BaseUI)

local Scheduler = require("framework.scheduler")

function MainUI:ctor()
    MainUI.super.ctor(self) 
    
    --获取礼包接口
    if not GameController.getMainSign() then
        self:getGift()
        self:getGameGiftTaggleParam()
        self:getSpecialProductInfo()
    end

    self:init()
    
--    if (display.widthInPixels == 1024 and display.heightInPixels == 768) or (display.widthInPixels == 2048 and display.heightInPixels == 1536) then
--    	GAME_RESOLUTION_CONTROL = RESOLUTION_TYPE.pad
--    end
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)
end

--初始化
function MainUI:init(parameters)
    self.m_json = cc.uiloader:load("json/MainUI.json")
    self:addChild(self.m_json)

    self.Panel_8 = cc.uiloader:seekNodeByName(self.m_json,"Panel_8")
    self.Panel_8:setScale(display.right/GroupSize.width)
    self.Panel_8:setPositionX(display.cx)
    
    self.Image_21 = cc.uiloader:seekNodeByName(self.m_json,"Image_21")
--    self.Image_21:setScale(display.right/GroupSize.width)
    self.Image_21:setPositionX(display.cx)
    
    self.Label_23 = cc.uiloader:seekNodeByName(self.m_json,"Label_23")
    self.ProgressBar = cc.uiloader:seekNodeByName(self.m_json,"ProgressBar")
    self.ProgressBar:setPercent(0)

    local Label_8 = cc.uiloader:seekNodeByName(self.m_json,"Label_8")
    Label_8:setPositionX(display.left+130)

    local Endlessbtn = cc.uiloader:seekNodeByName(self.m_json,"Endlessbtn")
    Endlessbtn:onButtonPressed(function(_event)    --按下
--        _event.target:setScale(1.1)
    end)
    Endlessbtn:onButtonRelease(function(_event)    --触摸离开
--        _event.target:setScale(1)
    end)
    Endlessbtn:onButtonClicked(function(event)
--        Endlessbtn:setButtonEnabled(false)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        GAME_TYPE_CONTROL = GAME_TYPE.EndlessMode
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_READY,GAME_TYPE.EndlessMode)
    end)
    
    local Levelbtn = cc.uiloader:seekNodeByName(self.m_json,"Levelbtn")
    Levelbtn:onButtonPressed(function(_event)    --按下
    end)
    Levelbtn:onButtonRelease(function(_event)    --触摸离开
    end)
    Levelbtn:onButtonClicked(function(event)
        Levelbtn:setButtonEnabled(false)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        if self.m_unlockNum <= 0 then
            GameDataManager.setCurLevelId(1,1)
        end
        GAME_TYPE_CONTROL = GAME_TYPE.LevelMode
        GameController.setSignPop(true)
        app:enterSelectScene()
    end)

    self.Setbtn = cc.uiloader:seekNodeByName(self.m_json,"Setbtn")
    self.Setbtn:setPositionX(display.right-40)
    self.Setbtn:onButtonClicked(function(event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        self:MusicSoundSet()
    end)
    
    local id,gId = GameController.getCurGiftId()  --获取可用礼包计费点
    self.GiftBtn = cc.uiloader:seekNodeByName(self.m_json,"GiftBtn")
    self.GiftBtn:setVisible(false)
    local GiftWord = cc.uiloader:seekNodeByName(self.m_json,"GiftWord")
    GiftWord:setButtonEnabled(false) 
    if GiftConfig[id] then
        self.GiftBtn:setButtonImage("normal",GiftConfig[id].icon)
        self.GiftBtn:setButtonImage("pressed",GiftConfig[id].icon)
        GiftWord:setButtonImage("disabled",GiftConfig[id].iconName)
    end
    self.GiftBtn:onButtonClicked(function(event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_COMMONGIFT,{giftId = id,animation = true})
    end)
    
    
    self.m_unlockNum = GameDataManager.getUlockLevelsNum()
    
    if GameController.getMainSign() then
        self.Panel_8:setVisible(true)
        self.Image_21:setVisible(false)
    else
        --首次进入游戏
        self.Panel_8:setVisible(false)
        self.Image_21:setVisible(true)
        self.loadCount = 0
        self.loadHandler = Scheduler.scheduleGlobal(handler(self,self.onEnterFrame),0.05)
    end
    
    GameDispatcher:addListener(EventNames.EVENT_GIFT_UPDATE,handler(self,self.updateGiftUI))
end

function MainUI:getGift()
    SDKUtil.giftPop({callback=function(_stringId)
        if _stringId then
            GameController.getGiftIdByPayCode(_stringId)
        else
            Tools.printDebug("---------------获取礼包id失败")
        end
    end})
end

function MainUI:getGameGiftTaggleParam()
    SDKUtil.getGameGiftTaggleParam({callback=function(_stringId)
        if _stringId then
            local mode = tonumber(_stringId)
            GameController.buyOrReceive = mode
        else
            Tools.printDebug("---------------获取购买领取按钮模式失败：",_stringId)
        end
    end})
end

function MainUI:getSpecialProductInfo()
    SDKUtil.getSpecialProductInfo({callback=function(resultCode)
        if resultCode then
            self.isMonth = resultCode
            if tonumber(resultCode) == 1 then
                GameDataManager.renewVip(true)
            else
                GameDataManager.renewVip(false)
            end
        end
    end})
end

function MainUI:updateGiftUI()
    local id,gId = GameController.getCurGiftId()  --获取可用礼包计费点
    if GiftConfig[id].type == GIFT_TYPE.Vip then
        if self.isMonth==1 or GameDataManager.isMonthVip(id) then
            self.GiftBtn:setVisible(false)
        end
    end
end

function MainUI:onEnterFrame(parameters)
    self.loadCount = self.loadCount + 1
    self.Label_23:setString("玩命加载中...("..self.loadCount.."%)")
    self.ProgressBar:setPercent(self.loadCount)
    if self.loadCount >= 100 then
    	self.loadCount = 0
        if self.loadHandler then
            Scheduler.unscheduleGlobal(self.loadHandler)
            self.loadHandler = nil
        end
        if DataPersistence.getAttribute("first_into") then
            Tools.printDebug("---------------第一次进入")
            --直接进入第一关战斗
            GameDataManager.setCurLevelId(1,1)
            GameDataManager.generatePlayerVo()  --产生新的角色数据对象
            app:enterGameScene()
        else
            self.Panel_8:setVisible(true)
            self.Image_21:setVisible(false)
            self:giftFunc()
            self.GiftBtn:setVisible(true)
            self:updateGiftUI()
        end
    end
end

function MainUI:giftFunc(parameters)
	--购买角色礼包后每日领取
    Tools.delayCallFunc(0.1,function()
        GameDataManager.updateGift()
    end)
    
    --购买vip礼包后每日领取
    Tools.delayCallFunc(0.3,function()
        GameDataManager.updateVipGift()
    end)
    
    --礼包弹出
    self.vipGiftHandler = Tools.delayCallFunc(0.5,function()
        local id,gId = GameController.getCurGiftId()  --获取的vip可用礼包计费点
        if GiftConfig[id] then 
            if GiftConfig[id].type == GIFT_TYPE.Vip then
                if self.isMonth ~= 1 and not GameDataManager.isMonthVip(id) then
                    GameDispatcher:dispatch(EventNames.EVENT_OPEN_COMMONGIFT,{giftId = id,animation = true})
                end
            else
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_COMMONGIFT,{giftId = id,animation = true})
            end
        end
    end)
end

function MainUI:MusicSoundSet( ... )
    if GameDataManager.isMusicOpen() then
        AudioManager.stop()
        Tools.printDebug("音乐关")
        self.Setbtn:setButtonImage("normal","ui/Set_button2.png")
        return
    else
        Tools.printDebug("音乐开")
        AudioManager.open()
        self.Setbtn:setButtonImage("normal","ui/Set_button1.png")
        return
    end
end

function MainUI:scaleAction(par)
    local scal = cc.ScaleTo:create(0.7,1.1)
    local scal2 = cc.ScaleTo:create(0.7,1)
    local time = cc.DelayTime:create(2)
    local s = cc.Sequence:create(scal,scal2,time)
    local repet = cc.RepeatForever:create(s)
    par:runAction(repet)
end

function MainUI:giftAction(par)
    local scal = cc.RotateBy:create(0.1,-45)
    local scal2 = cc.RotateBy:create(0.1,45)
    local scal3 = cc.RotateBy:create(0.1,45)
    local scal4 = cc.RotateBy:create(0.1,-45)
    local time = cc.DelayTime:create(2)
    local s = cc.Sequence:create(scal,scal2,scal3,scal4,time)
    local repet = cc.RepeatForever:create(s)
    par:runAction(repet)
end

--关闭界面调用
function MainUI:toClose(_clean)
    if self.loadHandler then
        Scheduler.unscheduleGlobal(self.loadHandler)
        self.loadHandler = nil
    end
    if self.vipGiftHandler then
        Scheduler.unscheduleGlobal(self.vipGiftHandler)
        self.vipGiftHandler = nil
    end
    GameDispatcher:removeListenerByName(EventNames.EVENT_GIFT_UPDATE)
    MainUI.super.toClose(self,_clean)
end

--清理数据
function MainUI:onCleanup()
    GameController.setMainSign(false)
    if self.loadHandler then
        Scheduler.unscheduleGlobal(self.loadHandler)
        self.loadHandler = nil
    end
    if self.vipGiftHandler then
        Scheduler.unscheduleGlobal(self.vipGiftHandler)
        self.vipGiftHandler = nil
    end
    GameDispatcher:removeListenerByName(EventNames.EVENT_GIFT_UPDATE)
    GameDataManager.SaveData()
end
return MainUI