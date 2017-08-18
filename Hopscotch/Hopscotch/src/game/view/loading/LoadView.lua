--[[
加载界面
]]
local BaseUI = require("game.view.BaseUI")
local LoadView = class("LoadView",BaseUI)
local Scheduler = require("framework.scheduler")

math.randomseed(os.time())   --初始化随机种子

function LoadView:ctor(parameters)
    LoadView.super.ctor(self)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    self.m_json = cc.uiloader:load("json/MainUI.json")
    self:addChild(self.m_json)

    self.bg = display.newSprite("loading/bg.jpg"):addTo(self)
    self.bg:setAnchorPoint(cc.p(0,0))
    self.bg:setPosition(cc.p(0,0))
    
    self.Image_2 = cc.uiloader:seekNodeByName(self.m_json,"Image_2")
    self.Image_2:setPositionY(display.bottom+108)
    
    local logo = display.newSprite("loading/Logo.png"):addTo(self.bg)
    logo:setPosition(cc.p(display.cx,display.top-250))
    
    self.shop = cc.uiloader:seekNodeByName(self.m_json,"Button_left")
    self.shop2 = cc.uiloader:seekNodeByName(self.m_json,"shopBtn")
    self.shop2:setButtonEnabled(false)
    self.tv = cc.uiloader:seekNodeByName(self.m_json,"Button_right")
    self.tv2 = cc.uiloader:seekNodeByName(self.m_json,"tvBtn")
    self.tv2:setButtonEnabled(false)
    
    --购物车按钮
    self.shop:onButtonPressed(function(_event)    --按下
        self.shop2:setButtonImage("disabled","main/Main_shop_2.png")
    end)
    self.shop:onButtonRelease(function(_event)    --触摸离开
        self.shop2:setButtonImage("disabled","main/Main_shop_1.png")
    end)
    self.shop:onButtonClicked(function (event)
        GameDispatcher:dispatch(EventNames.EVENT_OPEN_SHOP)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)
    
    --tv按钮
    self.tv:onButtonPressed(function(_event)    --按下
        self.tv2:setButtonImage("disabled","main/Main_tv_2.png")
    end)
    self.tv:onButtonRelease(function(_event)    --触摸离开
        self.tv2:setButtonImage("disabled","main/Main_tv_1.png")
    end)
    self.tv:onButtonClicked(function (event)
        Tools.printDebug("--------brj 点击获得礼包")
        local type = math.random(1,3)
        if type == 1 then
            local count = math.random(VideoDiamond[1],VideoDiamond[2])
            GameDataManager.addDiamond(count)
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得"..count.."钻石"})
        elseif type == 2 then
            local id = math.random(1,#RoleConfig)
            GameDataManager.unLockModle(id,true)
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得新角色"})
        elseif type == 3 then
            local id = math.random(1,#SceneConfig)
            GameDataManager.unLockScene(id,true)
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得新场景"})
        end
        self:freeLogic()
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)

--    self:setTouchEnabled(true)
    self:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            if not self.touchClick then
                self.touchClick = true
                Tools.printDebug("-------------------进入主场景")
                GameDataManager.generatePlayerVo()  --产生新的角色数据对象
                app:enterGameScene()
            end
            AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
            return true
        elseif event.name == "ended" then
        end
    end)
    
    self.countDown = 0
    self.countDownLabel = cc.uiloader:seekNodeByName(self.m_json,"BitmapLabel_14")
    self.countDownLabel:setColor(cc.c3b(50,222,255))
    self:updateTime()
    
    LoadResManager.toLoadPlayerRes(handler(self,self.playerResFinish))
    
end

function LoadView:showAni(parameters)
    self.finger = display.newSprite("loading/click.png"):addTo(self)
    local animation = cc.AnimationCache:getInstance():getAnimation("clickAni")
    local animate = cc.Animate:create(animation)
    local seq = cc.RepeatForever:create(animate)
    self.finger:runAction(seq)
    self.finger:setPosition(cc.p(display.cx,display.bottom+190))
end

function LoadView:freeLogic()
    self.countDown = FreeRemainTime
    GameDataManager.setFreeEndTime(TimeUtil.getTimeStamp(),self.countDown)
    self.countDownLabel:setString("")
    self.tv:setButtonEnabled(false)
    self.countDownLabel:setVisible(true)
    self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
end

function LoadView:updateTime()
    local time1,time2 = GameDataManager.getFreeEndTime()
    if TimeUtil.getTimeStamp() - time1 >= time2 then
        self.tv:setButtonEnabled(true)
        self.countDownLabel:setVisible(false)
    else
        self.countDown = time2 - (TimeUtil.getTimeStamp() - time1)
        GameDataManager.setReviveEndTime(TimeUtil.getTimeStamp(),self.countDown)
        self.countDownLabel:setVisible(true)
        self.countDownLabel:setString("")
        self.tv:setButtonEnabled(false)
        self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
    end
end

function LoadView:updateCountDown()
    self.countDown = self.countDown - 1
    GameDataManager.setFreeEndTime(TimeUtil.getTimeStamp(),self.countDown)
    self.countDownLabel:setString(string.format("%02d:%02d:%02d",self.countDown/3600,(self.countDown%3600)/60,self.countDown%60))
    if self.countDown <= 0 then
        self.countDown = 0
        self.tv:setButtonEnabled(true)
        self.countDownLabel:setVisible(false)
        GameDataManager.setFreeEndTime(0,0)
        if self.m_Handler then
            Scheduler.unscheduleGlobal(self.m_Handler)
            self.m_Handler=nil
        end
    end
end

function LoadView:playerResFinish()
    Tools.delayCallFunc(1,function()
        local fadeOut = cc.FadeOut:create(1.5)
        local callfunc = cc.CallFunc:create(function()
            self:setTouchEnabled(true)
            
            --角色跑
            self:roleMove()
            --屏幕字幕闪现
            self:showAni()
        end)
        local seq = cc.Sequence:create(fadeOut,callfunc)
        self.bg:runAction(seq)
    end)
end

function LoadView:roleMove()
    local res = RoleConfig[1].roleImg
    local _actionName = RoleConfig[1].armatureName
    local jump = RoleConfig[1].jumpName
    
    local node = display.newNode():addTo(self)
    node:setPosition(cc.p(display.right+100,display.bottom+350))
    local role = display.newSprite(res):addTo(node)
    
    local animation = cc.AnimationCache:getInstance():getAnimation(_actionName)
    local animate = cc.Animate:create(animation)
    local rf = cc.RepeatForever:create(animate)
    role:runAction(rf)
    role:setColor(cc.c3b(40,50,66))

    local move = cc.MoveTo:create(1,cc.p(display.cx+100,display.bottom+350))
    local toJump = cc.JumpBy:create(0.3,cc.p(0,0),180,1)
    local call = cc.CallFunc:create(function()
--        role:stopAllActions()
--        local animation2 = cc.AnimationCache:getInstance():getAnimation(jump)
--        local animate2 = cc.Animate:create(animation2)
--        role:runAction(animate2)
    end)
    local mm = cc.MoveBy:create(0.3,cc.p(-200,0))
    local spawn = cc.Spawn:create(toJump,call,mm)
    local move2 = cc.MoveTo:create(1,cc.p(-100,display.bottom+350))
    local call2 = cc.CallFunc:create(function()
        role:stopAllActions()
        local animation3 = cc.AnimationCache:getInstance():getAnimation(_actionName)
        local animate3 = cc.Animate:create(animation3)
        local rf2 = cc.RepeatForever:create(animate3)
        role:runAction(rf2)
    end)
    local spawn2 = cc.Spawn:create(move2,call2)
    local seq = cc.Sequence:create(move,spawn,spawn2)
    local callfunc = cc.CallFunc:create(function()
        node:setPosition(cc.p(display.right+100,display.bottom+350))
    end)
    local seq2 = cc.Sequence:create(seq,callfunc)
    local rff = cc.Repeat:create(seq2,3)
    node:runAction(rff)
end

--清理数据
function LoadView:onCleanup()
    if self.m_Handler then
        Scheduler.unscheduleGlobal(self.m_Handler)
        self.m_Handler=nil
    end
end

--关闭界面调用
function LoadView:toClose(_clean)
    LoadView.super.toClose(self,_clean)
end

return LoadView