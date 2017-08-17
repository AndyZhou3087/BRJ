--[[
奖励界面
]]
local BaseUI = require("game.view.BaseUI")
local RewardView = class("RewardView",BaseUI)

function RewardView:ctor(parameters)
    RewardView.super.ctor(self)

    if not tolua.isnull(parameters.view) then
    	parameters.view:toClose(true)
    end

    local bg = display.newColorLayer(cc.c4b(255,255,255,130)):addTo(self)

    Tools.delayCallFunc(3,function()
        self:getReward(parameters)
    end)

    bg:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        if event.name == "began" then
            if not self.touchClick then
                self.touchClick = true
                Tools.printDebug("-------------------进入主界面")
                app:enterMainScene()
            end
            return true
        elseif event.name == "ended" then
        end
    end)
end

function RewardView:getReward(parameters)
    local spriteBg = display.newSprite("ui/rewardBg.png"):addTo(self)
    spriteBg:setPosition(cc.p(display.cx,display.cy))
    local rotate = cc.RotateBy:create(1,360)
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
        name = display.newSprite(RoleConfig[parameters._id].roleName):addTo(self)
    elseif parameters._type == 2 then
        sprite = display.newSprite(SceneConfig[parameters._id].sceneIcon):addTo(self)
        name = display.newSprite(SceneConfig[parameters._id].sceneName):addTo(self)
    end
    sprite:setPosition(cc.p(display.cx,display.cy))
    name:setPosition(cc.p(display.cx,display.cy+170))
    name:setColor(cc.c3b(0,0,0))
end


--关闭界面调用
function RewardView:toClose(_clean)
    RewardView.super.toClose(self,_clean)
end

return RewardView