--[[
火箭元素
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

end  

function RocketElement:dispose()
    self:stopAllActions()
    self.super.dispose(self)
end

return RocketElement