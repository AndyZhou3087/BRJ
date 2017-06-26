--[[
背景移动
]]
local BackGroundMove = class("BackGroundMove", function()
    return display.newNode()
end)

--parm@1:传入场景id
function BackGroundMove:ctor(_sceneId)
    self.sceneId = _sceneId
    
    
    self.map_1 = display.newSprite("map/Scene_".._sceneId.."/Map_frame_2.png"):addTo(self)
    self.map_1:setAnchorPoint(cc.p(0,0))
    self.map_1:setPosition(cc.p(0,0))
    local height = self.map_1:getCascadeBoundingBox().size.height
    
    self.map_2 = display.newSprite("map/Scene_".._sceneId.."/Map_frame_4.png"):addTo(self)
    self.map_2:setAnchorPoint(cc.p(0,0))
    self.map_2:setPosition(cc.p(0,height))
    local height2 = self.map_2:getCascadeBoundingBox().size.height
    
    self.map_3 = display.newSprite("map/Scene_".._sceneId.."/Map_frame_3.png")
    self:addChild(self.map_3,1)
    self.map_3:setAnchorPoint(cc.p(0,0))
    self.map_3:setPosition(cc.p(0,height+height2))
    local height3 = self.map_3:getCascadeBoundingBox().size.height
    
    self.map_4 = display.newSprite("map/Scene_".._sceneId.."/Map_frame_1.png"):addTo(self)
    self.map_4:setAnchorPoint(cc.p(0,0))
    self.map_4:setPosition(cc.p(0,height+height2+32))
    local height4 = self.map_4:getCascadeBoundingBox().size.height
    
    self.map_5 = display.newSprite("map/Scene_".._sceneId.."/Map_build_5.png"):addTo(self)
    self.map_5:setAnchorPoint(cc.p(0,0))
    self.map_5:setPosition(cc.p(0,self.map_4:getPositionY()+height4))
    local height5 = self.map_5:getCascadeBoundingBox().size.height - 324
    
    self.map_6 = display.newSprite("map/Scene_".._sceneId.."/Map_tree_1.png"):addTo(self)
    self.map_6:setAnchorPoint(cc.p(0,0))
    self.map_6:setPosition(cc.p(0,height+height2+30))
    
    self.map_7 = display.newSprite("map/Scene_".._sceneId.."/Map_tree_2.png"):addTo(self)
    self.map_7:setAnchorPoint(cc.p(0,0))
    self.map_7:setPosition(cc.p(550,height+height2+30))
    
    self.map_11 = display.newSprite("map/Map_bg.jpg"):addTo(self)
    self.map_11:setAnchorPoint(cc.p(0,0))
    self.map_11:setPosition(cc.p(0,self.map_5:getPositionY()+height5))
    
    self.map_8 = display.newSprite("map/Scene_".._sceneId.."/Map_build_1.png"):addTo(self)
    self.map_8:setAnchorPoint(cc.p(0,0))
    self.map_8:setPosition(cc.p(0,self.map_5:getPositionY()+height5))
    local width = self.map_8:getCascadeBoundingBox().size.width

    self.map_9 = display.newSprite("map/Scene_".._sceneId.."/Map_build_3.png"):addTo(self)
    self.map_9:setAnchorPoint(cc.p(0,0))
    self.map_9:setPosition(cc.p(width+10,self.map_5:getPositionY()+height5))
    
    self.map_10 = display.newSprite("map/Scene_".._sceneId.."/Map_build_2.png"):addTo(self)
    self.map_10:setAnchorPoint(cc.p(1,0))
    self.map_10:setPosition(cc.p(display.right+90,self.map_5:getPositionY()+height5))
    
    self.map_12 = display.newSprite("map/Scene_".._sceneId.."/Map_build_4.png"):addTo(self)
    self.map_12:setAnchorPoint(cc.p(0,0))
    self.map_12:setPosition(cc.p(display.cx-80,self.map_5:getPositionY()+height5))
    
    local height6 = self.map_9:getCascadeBoundingBox().size.height - 170
    self.cloud_1 = display.newSprite("map/Scene_".._sceneId.."/Map_cloud_3.png"):addTo(self)
    self.cloud_1:setAnchorPoint(cc.p(0,0))
    self.cloud_1:setPosition(cc.p(10,self.map_9:getPositionY()+height6))
    
    self.cloud_2 = display.newSprite("map/Scene_".._sceneId.."/Map_cloud_1.png"):addTo(self)
    self.cloud_2:setAnchorPoint(cc.p(0,0))
    self.cloud_2:setPosition(cc.p(display.cx-10,self.map_9:getPositionY()+height6+20))
    
    self.cloud_3 = display.newSprite("map/Scene_".._sceneId.."/Map_cloud_2.png"):addTo(self)
    self.cloud_3:setAnchorPoint(cc.p(0,0))
    self.cloud_3:setPosition(cc.p(display.cx-170,self.map_9:getPositionY()+height6-80))
    
    self.cloud_4 = display.newSprite("map/Scene_".._sceneId.."/Map_cloud_2.png"):addTo(self)
    self.cloud_4:setAnchorPoint(cc.p(0,0))
    self.cloud_4:setPosition(cc.p(display.cx-50,self.map_9:getPositionY()+height6+110))
end

function BackGroundMove:onEnter()
end

function BackGroundMove:onExit()
end

function BackGroundMove:dispose()

end

return BackGroundMove
