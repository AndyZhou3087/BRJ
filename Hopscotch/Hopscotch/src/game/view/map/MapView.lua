--[[
地图界面
]]
local MapView = class("MapView",function()
    return display.newNode()
end)

local Scheduler = require("framework.scheduler")

function MapView:ctor(parameters)
    self:setTouchSwallowEnabled(false)

    self.m_mapView = cc.uiloader:load("json/MapView.json")
    self:addChild(self.m_mapView)
    
    local Image_2 = cc.uiloader:seekNodeByName(self.m_mapView,"Image_2")
    Image_2:setPositionY(display.top-34)
    local Image_2_0 = cc.uiloader:seekNodeByName(self.m_mapView,"Image_2_0")
    Image_2_0:setPositionY(display.top-84)
    self.Image_10 = cc.uiloader:seekNodeByName(self.m_mapView,"Image_10")
    self.Image_10:setPositionY(display.bottom+106)
    
    self:fingerAct()

    self.DiamondCount = cc.uiloader:seekNodeByName(self.m_mapView,"DiamondCount")
    self.DiamondCount:setString(GameDataManager.getDiamond())
    
    self.RecordScroe = cc.uiloader:seekNodeByName(self.m_mapView,"RecordScroe")
    self.RecordScroe:setString(GameDataManager.getRecord())
    
    self.Score = cc.uiloader:seekNodeByName(self.m_mapView,"Score")
--    self.Score:setPositionY(display.top-144)
    self.Score:setPositionY(display.top-65)
    self.Score:setString(1)
    
    self.PauseBtn = cc.uiloader:seekNodeByName(self.m_mapView,"PauseBtn")
    self.PauseBtn:setPositionY(display.top-62)
    local pause = cc.uiloader:seekNodeByName(self.m_mapView,"Button_9")
    pause:setButtonEnabled(false)
    self.PauseBtn:onButtonPressed(function(_event)    --按下
        pause:setButtonImage("disabled","pause/pause_2.png")
    end)
    self.PauseBtn:onButtonRelease(function(_event)    --触摸离开
        pause:setButtonImage("disabled","pause/pause_1.png")
    end)
    self.PauseBtn:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_PAUSE)
        --测试
--        GameDispatcher:dispatch(EventNames.EVENT_ROLE_REVIVE)
    end)
    
    self.shop = cc.uiloader:seekNodeByName(self.m_mapView,"Button_left")
    self.shop2 = cc.uiloader:seekNodeByName(self.m_mapView,"shop")
    self.shop2:setButtonEnabled(false)
    self.rocket = cc.uiloader:seekNodeByName(self.m_mapView,"Button_right")
    self.rocket2 = cc.uiloader:seekNodeByName(self.m_mapView,"rocketBtn")
    self.rocket2:setButtonEnabled(false)

    --购物车按钮
    self.shop:onButtonPressed(function(_event)    --按下
        self.shop2:setButtonImage("disabled","main/Main_shop_2.png")
    end)
    self.shop:onButtonRelease(function(_event)    --触摸离开
        self.shop2:setButtonImage("disabled","main/Main_shop_1.png")
    end)
    self.shop:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_SHOP)
    end)

    --火箭按钮
    self.rocket:onButtonPressed(function(_event)    --按下
        self.rocket2:setButtonImage("disabled","rocket/Rocket_2.png")
    end)
    self.rocket:onButtonRelease(function(_event)    --触摸离开
        self.rocket2:setButtonImage("disabled","rocket/Rocket_1.png")
    end)
    self.rocket:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("--------brj 打开开局冲刺界面")
        if not self.openClick then
        	self.openClick = true
            self:openRocketView()
        end
    end)
    
    --设置按钮
    self.icon_set = cc.uiloader:seekNodeByName(self.m_mapView,"icon_set")
    self.icon_set:setButtonEnabled(false)
    self.Button_set = cc.uiloader:seekNodeByName(self.m_mapView,"Button_set")
    self.Button_set:setButtonEnabled(false)
    self.Button_set:onButtonPressed(function(_event)    --按下
        self.icon_set:setButtonImage("disabled","settlement/setIcon_1.png")
    end)
    self.Button_set:onButtonRelease(function(_event)    --触摸离开
        self.icon_set:setButtonImage("disabled","settlement/setIcon_2.png")
    end)
    self.Button_set:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_SET,{animation = true})
    end)
    
    
    self.proBg = cc.uiloader:seekNodeByName(self.m_mapView,"Image_9")
    self.proBg:setPositionY(display.top-56)
    self.proBg:setVisible(false)
    --进度条
    local fill = display.newSprite("ui/Time_process.png")
    self.process = display.newProgressTimer(fill, display.PROGRESS_TIMER_BAR):addTo(self.proBg)
    self.process:setMidpoint(cc.p(0, 0.5))
    self.process:setBarChangeRate(cc.p(1,0))
    self.process:setPosition(self.proBg:getContentSize().width/2, self.proBg:getContentSize().height/2)
    self.process:setPercentage(100)
    
    
    self.countDown = 0  
    self.countDownLabel = cc.uiloader:seekNodeByName(self.m_mapView,"BitmapLabel_14")
    self.countDownLabel:setVisible(false)
    self.countDownLabel:setColor(cc.c3b(50,222,255))
    self.countDownLabel:setString((self.countDown/60)..":"..(self.countDown%60))
    self:updateStartTime()


    --监听钻石
    self.diamondHandler = GameDispatcher:addListener(EventNames.EVENT_DIAMOND_CHANGE,handler(self,self.updateDiamond))
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_FLOOR,handler(self,self.updateFloor))
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_BEST,handler(self,self.updateBestFloor))
    GameDispatcher:addListener(EventNames.EVENT_CLOSE_TIME,handler(self,self.startProcess))
    GameDispatcher:addListener(EventNames.EVENT_STOP_COUNTDOWN,handler(self,self.stopProcess))
    GameDispatcher:addListener(EventNames.EVENT_HIDE_BOTTOM,handler(self,self.hideBottom))
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_STARTROCKET,handler(self,self.updateStartRocket))
    self.m_background = GameDispatcher:addListener(EventNames.EVENT_BACKGROUND,handler(self,self.enterBackground))

end

function MapView:enterBackground()
    GameDataManager.setStartEndTime(TimeUtil.getTimeStamp(),self.countDown)
end

function MapView:updateStartTime()
    local time1,time2 = GameDataManager.getStartEndTime()
    if GameDataManager.getStartCount()==2 then
        if TimeUtil.getTimeStamp() - time1 >= time2 then
            self.rocket:setButtonEnabled(true)
            self.countDownLabel:setVisible(false)
            GameDataManager.resetStartCount()
        else
            self.countDown = time2 - (TimeUtil.getTimeStamp() - time1)
            GameDataManager.setStartEndTime(TimeUtil.getTimeStamp(),self.countDown)
            self.countDownLabel:setVisible(true)
            self.countDownLabel:setString(string.format("%02d:%02d",self.countDown/60,self.countDown%60))
            self.rocket:setButtonEnabled(false)
            self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
        end
    end
end

function MapView:updateStartRocket()
    if GameDataManager.getStartCount() == 2 then
        self.countDown = CountDownTime
        GameDataManager.setStartEndTime(TimeUtil.getTimeStamp(),self.countDown)
        self.countDownLabel:setString(string.format("%02d:%02d",self.countDown/60,self.countDown%60))
        self.rocket:setButtonEnabled(false)
        self.countDownLabel:setVisible(true)
        self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
    end
end

function MapView:updateCountDown()
    self.countDown = self.countDown - 1
    GameDataManager.setStartEndTime(TimeUtil.getTimeStamp(),self.countDown)
    self.countDownLabel:setString(string.format("%02d:%02d",self.countDown/60,self.countDown%60))
    if self.countDown <= 0 then
        self.countDown = 0
        self.rocket:setButtonEnabled(true)
        self.countDownLabel:setVisible(false)
        GameDataManager.resetStartCount()
        if self.m_Handler then
            Scheduler.unscheduleGlobal(self.m_Handler)
            self.m_Handler=nil
        end
    end
end

function MapView:fingerAct()
    self.finger = display.newSprite("effect/guide_1.png"):addTo(self)
    local animation = cc.AnimationCache:getInstance():getAnimation("guide")
    local animate = cc.Animate:create(animation)
    local seq = cc.RepeatForever:create(animate)
    self.finger:runAction(seq)
--    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("effect/szc0.png", "effect/szc0.plist" , "effect/szc.ExportJson" )
--    self.finger = ccs.Armature:create("szc")
--    self:addChild(self.finger)
--    self.finger:getAnimation():playWithIndex(0)
    self.finger:setPosition(cc.p(display.cx,display.bottom+250))
end

function MapView:hideBottom(parm)
    self.Image_10:stopAllActions()
    if parm.data then
        self.finger:setVisible(true)
        self.Button_set:setButtonEnabled(false)
        local move = cc.MoveBy:create(0.2,cc.p(0,220))
        self.Image_10:runAction(move)
        local move2 = cc.MoveBy:create(0.2,cc.p(0,220))
        self.countDownLabel:runAction(move2)
    else
        self.finger:setVisible(false)
        self.Button_set:setButtonEnabled(true)
        local move = cc.MoveBy:create(0.2,cc.p(0,-220))
        self.Image_10:runAction(move)
        local move2 = cc.MoveBy:create(0.2,cc.p(0,-220))
        self.countDownLabel:runAction(move2)
    end
end

--打开火箭冲刺界面
function MapView:openRocketView()
    self.Image_10:stopAllActions()
    self.finger:setVisible(false)
    local move = cc.MoveBy:create(0.1,cc.p(0,-220))
    local callfunc = cc.CallFunc:create(function()
        self.openClick = false
        GameDispatcher:dispatch(EventNames.EVENT_ROCKET_VIEW)
    end)
    local seq = cc.Sequence:create(move,callfunc)
    self.Image_10:runAction(seq)
end

function MapView:updateDiamond()
    self.DiamondCount:setString(GameDataManager.getDiamond())
end

function MapView:updateFloor()
    if self.Score then
        self.Score:setString(GameDataManager.getPoints())
    end
end

function MapView:updateBestFloor()
    if self.RecordScroe then
        self.RecordScroe:setString(GameDataManager.getRecord())
    end
end

--进度条显示
function MapView:startProcess(parm)
    local time1,time2
    if parm.data.floor >= Map_Grade.floor_S then
    	time1 = Map_ProcessTime.s[1]
        time2 = Map_ProcessTime.s[2]
    elseif parm.data.floor >= Map_Grade.floor_A then
        time1 = Map_ProcessTime.a[1]
        time2 = Map_ProcessTime.a[2]
    elseif parm.data.floor >= Map_Grade.floor_B then
        time1 = Map_ProcessTime.b[1]
        time2 = Map_ProcessTime.b[2]
    elseif parm.data.floor >= Map_Grade.floor_C then
        time1 = Map_ProcessTime.c[1]
        time2 = Map_ProcessTime.c[2]
    else
        time1 = Map_ProcessTime.d[1]
        time2 = Map_ProcessTime.d[2]
    end
    self.process:stopAllActions()
    self.process:setPercentage(100)
    if self.timeHandler then
        Scheduler.unscheduleGlobal(self.timeHandler)
        self.timeHandler=nil
    end
    self.timeHandler = Tools.delayCallFunc(time1,function()
        local to = cc.ProgressTo:create(time2, 0)
        local callfunc = cc.CallFunc:create(function()
            GameDispatcher:dispatch(EventNames.EVENT_GAME_OVER)
        end)
        local seq = cc.Sequence:create(to,callfunc)
        self.process:runAction(seq)
    end)
end

function MapView:stopProcess()
    self.process:stopAllActions()
    self.process:setPercentage(100)
    if self.timeHandler then
        Scheduler.unscheduleGlobal(self.timeHandler)
        self.timeHandler=nil
    end
end

function MapView:dispose(parameters)
    GameDispatcher:removeListenerByHandle(self.diamondHandler)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_BEST)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_FLOOR)
    GameDispatcher:removeListenerByName(EventNames.EVENT_CLOSE_TIME)
    GameDispatcher:removeListenerByName(EventNames.EVENT_STOP_COUNTDOWN)
    GameDispatcher:removeListenerByName(EventNames.EVENT_HIDE_BOTTOM)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_STARTROCKET)
    GameDispatcher:removeListenerByHandle(self.m_background)
    
    if self.timeHandler then
        Scheduler.unscheduleGlobal(self.timeHandler)
        self.timeHandler=nil
    end
    
    if self.m_Handler then
        Scheduler.unscheduleGlobal(self.m_Handler)
        self.m_Handler=nil
    end

    self:removeFromParent(true)
end

return MapView