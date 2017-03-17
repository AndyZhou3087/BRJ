--[[
障碍类
]]

local Scheduler = require("framework.scheduler")
local BaseElement = require("game.view.element.BaseElement")
local Obstacle=class("Obstacle",BaseElement)    

local PhysicSprite=require("game.custom.PhysicSprite")
local Special_MATERIAL=cc.PhysicsMaterial(0,0,0)
local ObstacleVo = require("game.data.ObstacleVo")


function Obstacle:ctor(id)
    Obstacle.super.ctor(self)
	
    local obCon = ObstacleConfig[id]
    if obCon then
        self:makeVo(obCon)
        self.m_id=obCon.id
        self.obcon = nil
        local _size = nil
        local offset = cc.p(0,0)
        
        if obCon.isAnimate then
            ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("armature/"..obCon.armatureName.."0.png", "armature/"..obCon.armatureName.."0.plist" , "armature/"..obCon.armatureName..".ExportJson" )
            self.obcon = ccs.Armature:create(obCon.armatureName)
            self:addChild(self.obcon)
            
            _size = cc.size(self.obcon:getCascadeBoundingBox().size.width*0.8,self.obcon:getCascadeBoundingBox().size.height*0.8)
        
            self:addBody(obCon,_size,offset)
        else
            self.obcon= PhysicSprite.new(obCon.res)
            self:addChild(self.obcon)
            
            _size = self.obcon:getCascadeBoundingBox().size
--            _size = cc.size(self.obcon:getCascadeBoundingBox().size.width*0.8,self.obcon:getCascadeBoundingBox().size.height*0.8)

--            if self.m_vo.m_type == OBSTACLE_TYPE.bigdoor then
--                offset = cc.p(0,150)
--                _size = cc.size(self.obcon:getCascadeBoundingBox().size.width*0.8,self.obcon:getCascadeBoundingBox().size.height*0.3)
--            elseif self.m_vo.m_type == OBSTACLE_TYPE.smalldoor then
--                offset = cc.p(0,100)
--                _size = cc.size(self.obcon:getCascadeBoundingBox().size.width*0.8,self.obcon:getCascadeBoundingBox().size.height*0.4)
--            elseif self.m_vo.m_type == OBSTACLE_TYPE.rail then
--                offset = cc.p(0,35)
--            end

            self:addBody(obCon,_size,offset)
            
        end
        
        self.obcon:setAnchorPoint(cc.p(0.5,0.5))
        
--        ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("armature/suipian0.png", "armature/suipian0.plist" , "armature/suipian.ExportJson" )
--        self.m_dEffect = ccs.Armature:create("suipian")
--        self:addChild(self.m_dEffect)
--        self.m_dEffect:getAnimation():setMovementEventCallFunc(handler(self,self.armatureMoveEvent))
        
    end
	
end

function Obstacle:addBody(obcon,size,_offset)
    self.m_body=cc.PhysicsBody:createBox(size,Special_MATERIAL,_offset)
    self.m_body:setCategoryBitmask(0x1111)
    self.m_body:setContactTestBitmask(0x1111)
    self.m_body:setCollisionBitmask(0x0000)
    self.m_body:setDynamic(false)
    self.m_body:setTag(ELEMENT_TAG.OBSTACLE)
    self:setPhysicsBody(self.m_body)
end

--转化为数据对象
function Obstacle:makeVo(_obconfig)
    self.m_obCon = _obconfig
    if _obconfig then
        self.m_vo = clone(ObstacleVo)
        self.m_vo.m_id = _obconfig.id   --障碍id
        self.m_vo.m_type = _obconfig.type     --类型
        self.m_vo.m_time = _obconfig.time  
        self.m_vo.m_att = _obconfig.att  
    end
end

--获取对象数据
function Obstacle:getVo()
    return self.m_vo
end

function Obstacle:armatureMoveEvent(armatureBack,movementType,movementID)
--    if movementID == "suipian" and movementType==ccs.MovementEventType.complete then   
--        if not tolua.isnull(self) then
--            self:dispose()
--        end
--	end
end

function Obstacle:collision(_type)
    if self.m_vo.m_type == OBSTACLE_TYPE.special then
        GameDispatcher:dispatch(EventNames.EVENT_PLAYER_ATTACKED,{isSpecial = true,att = self.m_vo.m_att})
    else
        GameDispatcher:dispatch(EventNames.EVENT_PLAYER_ATTACKED,{isSpecial = false,att = self.m_vo.m_att})
    end
    
    --        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Obstacle_Sound)
    --消除动画
end

function Obstacle:dispose(parameters)
    self.super.dispose(self)
end

return Obstacle