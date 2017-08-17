--[[
结算界面
]]
local BaseUI = require("game.view.BaseUI")
local SettlementUI = class("SettlementUI",BaseUI)

local Scheduler = require("framework.scheduler")

function SettlementUI:ctor(parameters)
    SettlementUI.super.ctor(self)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)
    
    AudioManager.stopAudio(1)

    self.m_json = cc.uiloader:load("json/SettlementUI.json")
    self:addChild(self.m_json)

    self:initTop()
    self:initMiddle()
    self:initBottom()
    
    self:initAction()
    
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_DIAMOND,handler(self,self.updateDiamondCount))
end

function SettlementUI:initAction()
	self.frame_1:setPositionX(-MapSize.width)
    self.frame_2:setPositionX(-MapSize.width)
    self.frame_3:setPositionX(-MapSize.width)
    self.frame_4:setPositionX(-MapSize.width)
    self.bottom:setPositionY(display.bottom-216)
    
    local move1 = cc.MoveBy:create(0.2,cc.p(MapSize.width,0))
    self.frame_1:runAction(move1)
    self.handler1 = Tools.delayCallFunc(0.2,function()
        local move2 = cc.MoveBy:create(0.2,cc.p(MapSize.width,0))
        self.frame_2:runAction(move2)
    end)
    self.handler2 = Tools.delayCallFunc(0.4,function()
        local move3 = cc.MoveBy:create(0.2,cc.p(MapSize.width,0))
        self.frame_3:runAction(move3)
    end)
--    self.handler3 = Tools.delayCallFunc(0.6,function()
--        local move4 = cc.MoveBy:create(0.2,cc.p(MapSize.width,0))
--        self.frame_4:runAction(move4)
--    end)
    self.handler4 = Tools.delayCallFunc(0.6,function()
        local move5 = cc.MoveBy:create(0.2,cc.p(0,216))
        self.bottom:runAction(move5)
    end)
end

function SettlementUI:initTop()
    self.Information = cc.uiloader:seekNodeByName(self.m_json,"Information")
    self.Information:setPositionY(display.top-234)
    self.diamond = cc.uiloader:seekNodeByName(self.m_json,"AtlasLabel_1")
    self.diamond:setString(GameDataManager.getGameDiamond())
    self.score = cc.uiloader:seekNodeByName(self.m_json,"AtlasLabel_2")
    self.score:setString(GameDataManager.getPoints())
    self.bestscore = cc.uiloader:seekNodeByName(self.m_json,"AtlasLabel_3")
    if GameDataManager.getPoints()>=GameDataManager.getRecord() then
        GameDataManager.saveRecord(GameDataManager.getPoints())
    end
    self.bestscore:setString(GameDataManager.getRecord())
end

function SettlementUI:initMiddle()
    self.frame_1 = cc.uiloader:seekNodeByName(self.m_json,"frame_1")
    self.frame_2 = cc.uiloader:seekNodeByName(self.m_json,"frame_2")
    self.frame_3 = cc.uiloader:seekNodeByName(self.m_json,"frame_3")
    self.frame_4 = cc.uiloader:seekNodeByName(self.m_json,"frame_4")
    
    self.framebtn1 = cc.uiloader:seekNodeByName(self.m_json,"framebtn1")
    self.framebtn2 = cc.uiloader:seekNodeByName(self.m_json,"framebtn2")
    self.framebtn3 = cc.uiloader:seekNodeByName(self.m_json,"framebtn3")
    self.framebtn4 = cc.uiloader:seekNodeByName(self.m_json,"framebtn4")
    self.frame_1:setVisible(false)
    self.frame_4:setVisible(false)
    
    --
    self.framebtn1:onButtonClicked(function (event)
        
    end)
    self.framebtn2:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("--------brj 看视频得钻石")
        SDKUtil.getDiamondByVideo({callback=function(_res)
            if SDKUtil.PayResult.Success == _res then
                local diaCount = math.random(VideoDiamond[1],VideoDiamond[2])
                GameDataManager.addDiamond(diaCount)
                GameDataManager.addDiamondCount()
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得"..diaCount.."钻石"})
            else
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获取失败"})
            end
        end})
    end)
    self.framebtn3:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("brj hopscotch 获取奖励")
        if GameDataManager.getDiamond() >= DiamondSpendReward then
            GameDataManager.costDiamond(DiamondSpendReward)
        	local type = math.random(1,2)
        	local id
            if type == 1 then
                id = math.random(1,#RoleConfig)
                GameDataManager.unLockModle(id)
--                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得新角色"})
            elseif type == 2 then
                id = math.random(1,#SceneConfig)
                GameDataManager.unLockScene(id)
--                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得新场景"})
        	end
            GameDispatcher:dispatch(EventNames.EVENT_OPEN_REWARD,{_type = type,_id = id,view = self}) 
        else
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="钻石不足"})
        end
    end)
    self.framebtn4:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("brj hopscotch 五星好评")
    end)
    
    self.countDown = 0
    self.countDownLabel = cc.uiloader:seekNodeByName(self.m_json,"BitmapLabel_14")
    self.countDownLabel:setVisible(false)
    self.countDownLabel:setColor(cc.c3b(50,222,255))
    self:diamondTime()
end

function SettlementUI:initBottom()
    self.bottom = cc.uiloader:seekNodeByName(self.m_json,"bottom")
    self.bottom:setPositionY(display.bottom)
    self.icon_shop = cc.uiloader:seekNodeByName(self.m_json,"icon_shop")
    self.icon_shop:setButtonEnabled(false)
    self.Button_shop = cc.uiloader:seekNodeByName(self.m_json,"Button_shop")
    --购物车按钮
    self.Button_shop:onButtonPressed(function(_event)    --按下
        self.icon_shop:setButtonImage("disabled","main/Main_shop_2.png")
    end)
    self.Button_shop:onButtonRelease(function(_event)    --触摸离开
        self.icon_shop:setButtonImage("disabled","main/Main_shop_1.png")
    end)
    self.Button_shop:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("brj hopscotch 购物车")
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_SHOP)
    end)
    
    --开始按钮
    self.icon_start = cc.uiloader:seekNodeByName(self.m_json,"icon_start")
    self.icon_start:setButtonEnabled(false)
    self.start = cc.uiloader:seekNodeByName(self.m_json,"start")
    self.start:onButtonPressed(function(_event)    --按下
        self.icon_start:setButtonImage("disabled","settlement/Start_btn_2.png")
    end)
    self.start:onButtonRelease(function(_event)    --触摸离开
        self.icon_start:setButtonImage("disabled","settlement/Start_btn_1.png")
    end)
    self.start:onButtonClicked(function (event)
        Tools.printDebug("brj hopscotch 重新开始游戏")
        GameDataManager.generatePlayerVo()  --产生新的角色数据对象
        app:enterLoadScene()
        Tools.delayCallFunc(0.1,function()
            app:enterGameScene()
        end)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)
    
    --设置按钮
    self.icon_set = cc.uiloader:seekNodeByName(self.m_json,"icon_set")
    self.icon_set:setButtonEnabled(false)
    self.Button_set = cc.uiloader:seekNodeByName(self.m_json,"Button_set")
    self.Button_set:onButtonPressed(function(_event)    --按下
        self.icon_set:setButtonImage("disabled","settlement/setIcon_1.png")
    end)
    self.Button_set:onButtonRelease(function(_event)    --触摸离开
        self.icon_set:setButtonImage("disabled","settlement/setIcon_2.png")
    end)
    self.Button_set:onButtonClicked(function (event)
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_SET,{animation = true})
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)
end

function SettlementUI:diamondTime()
    local time1,time2 = GameDataManager.getDiamondEndTime()
    if GameDataManager.getDiamondCount()==2 then
        if TimeUtil.getTimeStamp() - time1 >= time2 then
            self.framebtn2:setButtonEnabled(true)
            self.countDownLabel:setVisible(false)
            GameDataManager.resetDiamondCount()
        else
            self.countDown = time2 - (TimeUtil.getTimeStamp() - time1)
            GameDataManager.setDiamondEndTime(TimeUtil.getTimeStamp(),self.countDown)
            self.countDownLabel:setVisible(true)
            self.countDownLabel:setString("")
            self.framebtn2:setButtonEnabled(false)
            self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
        end
    end
end

function SettlementUI:updateDiamondCount()
    if GameDataManager.getDiamondCount() == 2 then
        self.countDown = CountDownTime
        GameDataManager.setDiamondEndTime(TimeUtil.getTimeStamp(),self.countDown)
        self.countDownLabel:setString("")
        self.framebtn2:setButtonEnabled(false)
        self.countDownLabel:setVisible(true)
        self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
    end
end

function SettlementUI:updateCountDown()
    self.countDown = self.countDown - 1
    GameDataManager.setDiamondEndTime(TimeUtil.getTimeStamp(),self.countDown)
    self.countDownLabel:setString(string.format("%02d:%02d",self.countDown/60,self.countDown%60))
    if self.countDown <= 0 then
        self.countDown = 0
        self.framebtn2:setButtonEnabled(true)
        self.countDownLabel:setVisible(false)
        GameDataManager.resetDiamondCount()
        if self.m_Handler then
            Scheduler.unscheduleGlobal(self.m_Handler)
            self.m_Handler=nil
        end
    end
end

--清理数据
function SettlementUI:onCleanup()
    if self.handler1 then
        Scheduler.unscheduleGlobal(self.handler1)
        self.handler1 = nil
    end
    if self.handler2 then
        Scheduler.unscheduleGlobal(self.handler2)
        self.handler2 = nil
    end
    if self.handler3 then
        Scheduler.unscheduleGlobal(self.handler3)
        self.handler3 = nil
    end
    if self.handler4 then
        Scheduler.unscheduleGlobal(self.handler4)
        self.handler4 = nil
    end
    
    if self.m_Handler then
        Scheduler.unscheduleGlobal(self.m_Handler)
        self.m_Handler=nil
    end
    
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_DIAMOND)
end

--关闭界面调用
function SettlementUI:toClose(_clean)
    SettlementUI.super.toClose(self,_clean)
end

return SettlementUI