--[[
背景移动
]]
local BackGround = class("BackGround", function()
    return display.newNode()
end)

--parm@1:传入场景id
function BackGround:ctor(_sceneId)
    self.sceneId = _sceneId

    self.sceneBg = cc.uiloader:load("json/SceneBg_".._sceneId..".json")
    self:addChild(self.sceneBg)

    --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差}
    if GameDataManager.getFightScene() == 1 then
        self.offset = {-32,50,413,1000,0,32}
    elseif GameDataManager.getFightScene() == 5 then
        self.offset = {0,50,1918,2229,-207,87}
    elseif GameDataManager.getFightScene() == 2 then
        self.offset = {0,50,379,-200,0,285}
    end

    self.Panel_1 = cc.uiloader:seekNodeByName(self.sceneBg,"Panel_1")
    self.Panel_1:setPositionY(display.bottom)
    self.Panel_1_0 = cc.uiloader:seekNodeByName(self.sceneBg,"Panel_1_0")
    self.Panel_1_0:setPositionY(display.bottom)
    self.Panel_1_0:setCameraMask(2)
    self.Panel_2 = cc.uiloader:seekNodeByName(self.sceneBg,"Panel_2")
    self.Panel_2:setPositionY(display.bottom+self.offset[3])
    self.Panel_3 = cc.uiloader:seekNodeByName(self.sceneBg,"Panel_3")
    self.Panel_3:setPositionY(display.bottom+self.offset[4])
    self.Panel_2_0 = cc.uiloader:seekNodeByName(self.sceneBg,"Panel_2_0")
    self.Panel_2_0:setPositionY(display.bottom+self.offset[3])
    self.Panel_3_0 = cc.uiloader:seekNodeByName(self.sceneBg,"Panel_3_0")
    self.Panel_3_0:setPositionY(display.bottom+self.offset[4])

    self.panel1PosX,self.panel1PosY = self.Panel_1:getPosition()
    self.panel2PosX,self.panel2PosY = self.Panel_2:getPosition()
    self.panel2Pos2X,self.panel2Pos2Y = self.Panel_2_0:getPosition()
    self.panel3PosX,self.panel3PosY = self.Panel_3:getPosition()
    self.panel3Pos2X,self.panel3Pos2Y = self.Panel_3_0:getPosition()

    self.panel2Size = self.Panel_2:getCascadeBoundingBox().size
    self.panel3Size = self.Panel_3:getCascadeBoundingBox().size

    --开启定时器
    self:scheduleUpdate()
    self:addNodeEventListener(cc.NODE_ENTER_FRAME_EVENT, handler(self, self.onEnterFrame))
end

function BackGround:onEnterFrame(dt)
    if self.roomType ~= MAPROOM_TYPE.Running then
        if self.cameraPos then
            self.Panel_1:setPosition(cc.p(self.cameraPos.x+self.offset[5],self.cameraPos.y*0.9))
            local p2x,p2y = self.Panel_2:getPosition()
            self.Panel_2:setPosition(cc.p(p2x+(self.cameraPos.x+self.offset[1]-p2x)*0.9,self.cameraPos.y*0.9+self.offset[3]))
            local p2x2,p2y2 = self.Panel_2_0:getPosition()
            self.Panel_2_0:setPosition(cc.p(p2x2+(self.cameraPos.x+self.offset[1]-p2x2)*0.9,self.cameraPos.y*0.9+self.offset[3]))
            if p2x+(self.cameraPos.x+self.offset[1]-p2x)*0.9 > self.cameraPos.x + display.width + self.offset[1] then
                self.Panel_2:setPositionX(p2x2+(self.cameraPos.x+self.offset[1]-p2x)*0.9-self.panel2Size.width+self.offset[6])
                self.Panel_2_0:setLocalZOrder(2)
                self.Panel_2:setLocalZOrder(1)
            end
            Tools.printDebug("---------brj 跳房子  背景位置：",self.cameraPos.y*0.9)
            if p2x2+(self.cameraPos.x+self.offset[1]-p2x2)*0.9 > self.cameraPos.x + display.width + self.offset[1]  then
                self.Panel_2_0:setPositionX(p2x+(self.cameraPos.x+self.offset[1]-p2x2)*0.9-self.panel2Size.width+self.offset[6])
                self.Panel_2_0:setLocalZOrder(1)
                self.Panel_2:setLocalZOrder(2)
            end
            if p2x+(self.cameraPos.x+self.offset[1]-p2x)*0.9 < self.cameraPos.x - self.panel2Size.width then
                self.Panel_2:setPositionX(p2x2+(self.cameraPos.x+self.offset[1]-p2x)*0.9+self.panel2Size.width-self.offset[6])
                self.Panel_2_0:setLocalZOrder(2)
                self.Panel_2:setLocalZOrder(1)
            end
            if p2x2+(self.cameraPos.x+self.offset[1]-p2x2)*0.9 < self.cameraPos.x - self.panel2Size.width then
                self.Panel_2_0:setPositionX(p2x+(self.cameraPos.x+self.offset[1]-p2x2)*0.9+self.panel2Size.width-self.offset[6])
                self.Panel_2_0:setLocalZOrder(1)
                self.Panel_2:setLocalZOrder(2)
            end
            local p3x,p3y = self.Panel_3:getPosition()
            self.Panel_3:setPosition(cc.p(p3x+(self.cameraPos.x-p3x)*0.95,self.cameraPos.y*0.95+self.offset[4]))
            local p3x2,p3y2 = self.Panel_3_0:getPosition()
            self.Panel_3_0:setPosition(cc.p(p3x2+(self.cameraPos.x-p3x2)*0.95,self.cameraPos.y*0.95+self.offset[4]))
            if p3x+(self.cameraPos.x-p3x)*0.95 > self.cameraPos.x + display.width then
                self.Panel_3:setPositionX(p3x2+(self.cameraPos.x-p3x)*0.95-self.panel3Size.width-self.offset[2])
            end
            if p3x2+(self.cameraPos.x-p3x2)*0.95 > self.cameraPos.x + display.width then
                self.Panel_3_0:setPositionX(p3x+(self.cameraPos.x-p3x2)*0.95-self.panel3Size.width-self.offset[2])
            end
            if p3x+(self.cameraPos.x-p3x)*0.95 < self.cameraPos.x - self.panel3Size.width then
                self.Panel_3:setPositionX(p3x2+(self.cameraPos.x-p3x)*0.95+self.panel3Size.width+self.offset[2])
            end
            if p3x2+(self.cameraPos.x-p3x2)*0.9 < self.cameraPos.x - self.panel3Size.width then
                self.Panel_3_0:setPositionX(p3x+(self.cameraPos.x-p3x2)*0.95+self.panel3Size.width+self.offset[2])
            end
        end
    end
end

--背景移动时得到的数据
--parameters@1:当年房间属于上跳还是横跑
--parameters@2:当前角色的坐标
--parameters@3:当前房间的位置
--parameters@4:当前摄像机位置
function BackGround:backMove(parameters)
    self.roomType = parameters.roomType
    self.playerPos = parameters.playerPos
    self.floorPos = parameters.floorPos
    self.cameraPos = parameters.cameraPos
    self.value = parameters.value
end

--背景回到原点
function BackGround:toBackOrigin()
    self.Panel_1:stopAllActions()
    local m = cc.MoveTo:create(0.5,cc.p(self.panel1PosX,self.panel1PosY))
    self.Panel_1:runAction(m)

    self.Panel_2:stopAllActions()
    local move = cc.MoveTo:create(0.5,cc.p(self.panel2PosX,self.panel2PosY))
    self.Panel_2:runAction(move)
    self.Panel_2_0:stopAllActions()
    local move2 = cc.MoveTo:create(0.5,cc.p(self.panel2Pos2X,self.panel2Pos2Y))
    self.Panel_2_0:runAction(move2)

    self.Panel_3:stopAllActions()
    local move3 = cc.MoveTo:create(0.5,cc.p(self.panel3PosX,self.panel3PosY))
    self.Panel_3:runAction(move3)
    self.Panel_3_0:stopAllActions()
    local move4 = cc.MoveTo:create(0.5,cc.p(self.panel3Pos2X,self.panel3Pos2Y))
    self.Panel_3_0:runAction(move4)
end

function BackGround:onEnter()
end

function BackGround:onExit()
end

function BackGround:dispose()
    --移除帧事件
    self:removeNodeEventListenersByEvent(cc.NODE_ENTER_FRAME_EVENT)
end

return BackGround
