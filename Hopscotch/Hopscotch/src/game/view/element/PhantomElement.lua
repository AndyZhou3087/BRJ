--[[
幻影角色
]]
local BaseElement = require("game.view.element.BaseElement")
local PhantomElement=class("PhantomElement",BaseElement)    

local PhysicSprite = require("game.custom.PhysicSprite")

local DelayNum=0.2/cc.Director:getInstance():getAnimationInterval()   --幻影跟随人物的距离
local Dis=20    --幻影的上跳速度
local Repair=2

function PhantomElement:ctor(scaleX)
    PhantomElement.super.ctor(self)

    self.m_scale=scaleX
    self.m_p={}
    self.m_y={}
    
    self.m_curModle = GameDataManager.getFightRole()
    local modle = RoleConfig[self.m_curModle].armatureName
    local res = RoleConfig[self.m_curModle].roleImg
    if modle then
        self.m_armature = display.newSprite(res):addTo(self)
        self:createModle(modle)
        self.m_armature:setScale(0.45)
    else
        self.m_armature = PhysicSprite.new(res):addTo(self)
        self.m_armature:setScale(0.45)
    end
--    self:setCameraMask(2)
end

--创建模型动画
function PhantomElement:createModle(_actionName)
    local animation = cc.AnimationCache:getInstance():getAnimation(_actionName)
    local animate = cc.Animate:create(animation)
    local seq = cc.RepeatForever:create(animate)
    self.m_armature:runAction(seq)
    self.m_armature:setOpacity(255*0.5)
end

--幻影跟随
function PhantomElement:follow(p,key)
    table.insert(self.m_p,p)

--    Tools.printDebug("----------- brj ----------幻影角色：",#self.m_p,DelayNum*key,key)
    if #self.m_p>DelayNum*key then
        local x=self:getPositionX()

        local to=0

        if #self.m_p>DelayNum*key+1 then
            for var=1,Repair do
                table.remove(self.m_p,1)
            end
            to=self.m_p[Repair]
        else
            to=self.m_p[1]
            table.remove(self.m_p,1)
        end

        self:setPositionX(to.x)

        if to.x<x then
            self:setScaleX(self.m_scale)
        else
            self:setScaleX(-self.m_scale)
        end

        if #self.m_y~=0 then
            local dest=self.m_y[1].y
--            Tools.printDebug("----------- brj 幻影坐标2222222222222222：",#self.m_y)
            local y=self:getPositionY()
            local toY=0

            if dest<y then
                toY=y-Dis
                if toY<dest then
                    toY=dest
                end
            else
                toY=y+Dis
                if toY>dest then
                    toY=dest 
                end
            end

            if toY==dest then
                table.remove(self.m_y,1)
            end

            self:setPositionY(toY)
        end

    end
end

function PhantomElement:add(value)
    table.insert(self.m_y,{y=value})
end

function PhantomElement:getFinalPos()
    return self.m_p[#self.m_p]
end

function PhantomElement:clearTable()
    self.m_p={}
    self.m_y={}
end

function PhantomElement:dispose()

    self.super.dispose(self)
end


return PhantomElement