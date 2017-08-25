--[[
特殊楼层钢架元素
]]
local BaseElement = require("game.view.element.BaseElement")
local SpecialElement=class("SpecialElement",BaseElement)    

local PhysicSprite=require("game.custom.PhysicSprite")
local Special_MATERIAL=cc.PhysicsMaterial(0,0,0)


function SpecialElement:ctor(arr,lineSprite,type)
    SpecialElement.super.ctor(self)

    self.lineSprite = lineSprite
    self.arrMove = arr
    self.moveCount = 1
    local res = SceneConfig[GameDataManager.getFightScene()].specailRes2
    self.m_img = PhysicSprite.new(res):addTo(self)
    self:addBody(cc.p(0,0))
    
    local dis = 0
    if type == 1 then
    	dis = 12
    else
        dis = -12
        self.m_img:setScaleX(-1)
    end
    local shake = cc.MoveBy:create(1.5,cc.p(dis,0))
    local shake2 = cc.MoveBy:create(1.5,cc.p(-dis,0))
    local seq = cc.Sequence:create(shake,shake2)
    local repeat1 = cc.RepeatForever:create(seq)
    self.m_img:runAction(repeat1)

end  

function SpecialElement:addBody(_offset)
    local size=self.m_img:getCascadeBoundingBox()
    self.m_body=cc.PhysicsBody:createBox(size,Special_MATERIAL,_offset)
    self.m_body:setCategoryBitmask(0x03)
    self.m_body:setContactTestBitmask(0x1111)
    self.m_body:setCollisionBitmask(0x03)
    self.m_body:setDynamic(false)
    self.m_body:setTag(ELEMENT_TAG.SPECIAL_TAG)
    self:setPhysicsBody(self.m_body)
end

function SpecialElement:resetPosCount()
    self.moveCount = 1
    self.lineSprite:resetPosCount()
end

--被碰触
function SpecialElement:collision()
    if self.moveCount == #self.arrMove then
    	return
    end
    if self.isMove then
    	return
    end
    self.isMove = true
    self:stopAllActions()
    local x,y = self:getPosition()
    local count_1 = self.moveCount
    self.moveCount = self.moveCount + 1
    local _y = (self.arrMove[self.moveCount]-self.arrMove[count_1])*Room_Size.height
    local move = cc.MoveTo:create(0.2,cc.p(x,y+_y))
    local callfunc = cc.CallFunc:create(function()
        self.isMove = false
    end)
    local seq = cc.Sequence:create(move,callfunc)
    self:runAction(seq)
    if not tolua.isnull(self.lineSprite) then
    	self.lineSprite:moveUp()
    end
end

function SpecialElement:dispose()
    if not tolua.isnull(self.lineSprite) then
        self.lineSprite:dispose()
    end
    self:stopAllActions()
    self.super.dispose(self)
end

return SpecialElement