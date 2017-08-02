--[[
特殊楼层钢架元素
]]
local BaseElement = require("game.view.element.BaseElement")
local RocketElement=class("RocketElement",BaseElement)    


function RocketElement:ctor(arr,lineSprite)
    RocketElement.super.ctor(self)

    self.m_rocketEffect = display.newSprite("rocket/rocket.png"):addTo(self)
    
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("effect/hj10.png", "effect/hj10.plist" , "effect/hj1.ExportJson" )
    self.m_rocketEffect = ccs.Armature:create("hj1")
    self:addChild(self.m_rocketEffect)
    self.m_rocketEffect:getAnimation():playWithIndex(0)
    
--    local function toRotation()
--        local time = math.random(8,15)
--        transition.rotateTo(self.m_rocketEffect,{time=time*0.1,rotate=degrees,onComplete=function()
--            toRotation()
--        end})
--    end
--    toRotation()
--    
--    local move = cc.MoveBy:create(0.3,cc.p(200,0))
--    local move5 = cc.MoveBy:create(0.3,cc.p(0,0))
--    local move2 = cc.MoveBy:create(0.3,cc.p(-200,0))
--    local move3 = cc.MoveBy:create(0.3,cc.p(-200,0))
--    local move6 = cc.MoveBy:create(0.3,cc.p(0,0))
--    local move4 = cc.MoveBy:create(0.3,cc.p(200,0))
--    local rotate = cc.RotateTo:create(0.1,5)
--    local rotate2 = cc.RotateTo:create(0.1,-5)
--    local seq = cc.Sequence:create(rotate,rotate2)
--    local repeatF = cc.RepeatForever:create(seq)
--    self.m_rocketEffect:runAction(repeatF)

end  

function RocketElement:dispose()
    self:stopAllActions()
    self.super.dispose(self)
end

return RocketElement