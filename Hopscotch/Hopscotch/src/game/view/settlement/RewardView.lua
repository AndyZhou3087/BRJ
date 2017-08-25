--[[
奖励界面
]]
local BaseUI = require("game.view.BaseUI")
local RewardView = class("RewardView",BaseUI)

local Scheduler = require("framework.scheduler")

math.randomseed(os.time())   --初始化随机种子

--local fireworkPos = {cc.p(display.cx,display.cy),cc.p(display.left+130,display.cy+310),cc.p(display.right-100,display.cy+190),cc.p(display.left+200,display.cy-300),cc.p(display.right-100,display.cy-300)}
--local fireworkOrder = {{2,3,4,5},{2,4,5,3},{3,4,2,5},{3,5,2,4},{4,2,3,5},{4,5,3,2},{5,2,4,3},{5,3,2,4}}

function RewardView:ctor(parameters)
    RewardView.super.ctor(self)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    if not tolua.isnull(parameters.view) then
    	parameters.view:toClose(true)
    end

    local bg = display.newColorLayer(cc.c4b(255,255,255,1)):addTo(self)
    self.bg = display.newColorLayer(cc.c4b(255,255,255,130)):addTo(self)

    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("effect/lb0.png", "effect/lb0.plist" , "effect/lb.ExportJson" )
    self._mon = ccs.Armature:create("lb")
    self:addChild(self._mon)
    self._mon:setPosition(cc.p(display.cx,display.cy))
    self._mon:getAnimation():play("cd")
    
    local function moveEvent(armatureBack,movementType,movementID)
        if movementID=="cd" and movementType==ccs.MovementEventType.complete then --动画结束后执行
            self._mon:getAnimation():play("dj")
        elseif movementID=="dj" and movementType==ccs.MovementEventType.complete then --动画结束后执行
            self:getReward(parameters)
        end
    end
    self._mon:getAnimation():setMovementEventCallFunc(moveEvent)
    
    self.bg:setTouchEnabled(false)
    self.bg:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            if not self.touchClick then
                self.touchClick = true
                GameDataManager.generatePlayerVo()  --产生新的角色数据对象
                app:enterLoadScene()
                Tools.delayCallFunc(0.1,function()
                    app:enterGameScene()
                end)
            end
            return true
        elseif event.name == "ended" then
        end
    end)
end

function RewardView:getReward(parameters)
    self.bg:setTouchEnabled(true)
    
    --粒子特效
    local m_effect=cc.ParticleSystemQuad:create("effect/cc.plist"):addTo(self)
    m_effect:setScale(1)
    m_effect:setAutoRemoveOnFinish(false)
    m_effect:setDuration(-1)
    m_effect:setPosition(cc.p(display.cx,display.cy)) 
--    local i = math.random(1,#fireworkOrder)
    self.handler1 = Tools.delayCallFunc(0.4,function()
        local m_effect=cc.ParticleSystemQuad:create("effect/cc.plist"):addTo(self)
        m_effect:setAutoRemoveOnFinish(false)
        local x = math.random(150,display.cx-150)
        local y = math.random(display.cy+150,display.top-150)
        m_effect:setPosition(cc.p(x,y))
    end)
    self.handler2 = Tools.delayCallFunc(0.8,function()
        local m_effect=cc.ParticleSystemQuad:create("effect/cc.plist"):addTo(self)
        m_effect:setAutoRemoveOnFinish(false)
        local x = math.random(display.cx+150,display.right-150)
        local y = math.random(display.cy+150,display.top-150)
        m_effect:setPosition(cc.p(x,y))
    end)
    self.handler3 = Tools.delayCallFunc(1.2,function()
        local m_effect=cc.ParticleSystemQuad:create("effect/cc.plist"):addTo(self)
        m_effect:setAutoRemoveOnFinish(false)
        local x = math.random(150,display.cx-150)
        local y = math.random(150,display.cy-150)
        m_effect:setPosition(cc.p(x,y))
    end)
    self.handler4 = Tools.delayCallFunc(1.6,function()
        local m_effect=cc.ParticleSystemQuad:create("effect/cc.plist"):addTo(self)
        m_effect:setAutoRemoveOnFinish(false)
        local x = math.random(display.cx+150,display.right-150)
        local y = math.random(150,display.cy-150)
        m_effect:setPosition(cc.p(x,y))
    end)
    

    local spriteBg = display.newSprite("ui/rewardBg.png"):addTo(self)
    spriteBg:setPosition(cc.p(display.cx,display.cy))
    local rotate = cc.RotateBy:create(2,360)
    local forever = cc.RepeatForever:create(rotate)
    spriteBg:runAction(forever)

    local name
    local sprite
    --1为人物
    if parameters._type == 1 then
        sprite = display.newSprite(RoleConfig[parameters._id].roleImg):addTo(self)
        local animation = cc.AnimationCache:getInstance():getAnimation(RoleConfig[parameters._id].armatureName)
        local animate = cc.Animate:create(animation)
        local seq = cc.RepeatForever:create(animate)
        sprite:runAction(seq)
        name = display.newSprite(RoleConfig[parameters._id].giftName):addTo(self)
        GameDataManager.setCurFightRole(parameters._id)
    elseif parameters._type == 2 then
        sprite = display.newSprite(SceneConfig[parameters._id].sceneIcon):addTo(self)
        name = display.newSprite(SceneConfig[parameters._id].giftName):addTo(self)
        GameDataManager.setCurFightScene(parameters._id)
    end
    sprite:setPosition(cc.p(display.cx,display.cy))
    name:setPosition(cc.p(display.cx,display.cy+170))
--    name:setColor(cc.c3b(0,0,0))
end

--清理数据
function RewardView:onCleanup()
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
end


--关闭界面调用
function RewardView:toClose(_clean)
    RewardView.super.toClose(self,_clean)
end

return RewardView