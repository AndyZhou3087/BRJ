--[[
背景移动
]]
local BackGroundMove = class("BackGroundMove", function()
    return display.newNode()
end)

--parm@1:传入场景id
function BackGroundMove:ctor(_sceneId)
    self.sceneId = _sceneId
    
    self.sceneBg = cc.uiloader:load("json/SceneBg_".._sceneId..".json")
    self:addChild(self.sceneBg)
    
    --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差}
    local sceneID = GameDataManager.getFightScene()
    self.offset = SceneConfig[sceneID].offset
    
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
    self.lastPandelPosY = self.panel1PosY
    self.panel2PosX,self.panel2PosY = self.Panel_2:getPosition()
    self.lastPande2PosY = self.panel2PosY
    self.panel2Pos2X,self.panel2Pos2Y = self.Panel_2_0:getPosition()
    self.lastPande2_0PosY = self.panel2Pos2Y
    self.panel3PosX,self.panel3PosY = self.Panel_3:getPosition()
    self.lastPande3PosY = self.panel3PosY
    self.panel3Pos2X,self.panel3Pos2Y = self.Panel_3_0:getPosition()
    self.lastPande3_0PosY = self.panel3Pos2Y
    
    self.panel2Size = self.Panel_2:getCascadeBoundingBox().size
    self.panel3Size = self.Panel_3:getCascadeBoundingBox().size

    
end

function BackGroundMove:bgMapMove(cameraPos,type)
    local bgMoveSpeed_1 = 0
    local bgMoveSpeed_2 = 0
    if not GameController.isInState(PLAYER_STATE.Rocket) and not GameController.isInState(PLAYER_STATE.StartRocket) then
        if type == MAPROOM_TYPE.Running then
            bgMoveSpeed_1 = RunBgMove_1
            bgMoveSpeed_2 = RunBgMove_2
        else
            bgMoveSpeed_1 = BgMove_1
            bgMoveSpeed_2 = BgMove_2
        end
    else
        bgMoveSpeed_1 = BgMove_1
        bgMoveSpeed_2 = BgMove_2
    end
    if self.lastCameraPos then
        local bx,by = self.Panel_1:getPosition()
        local bgx,bgy = self.Panel_2:getPosition()
        local bgx2,bgy2 = self.Panel_2_0:getPosition()
        local bgx3,bgy3 = self.Panel_3:getPosition()
        local bgx4,bgy4 = self.Panel_3_0:getPosition()
        if self.lastCameraPos.x ~= cameraPos.x then
            self.Panel_1:setPositionX(cameraPos.x+self.offset[5])
        end
        --左右移动
        if cameraPos.x > self.lastCameraPos.x then
            self.Panel_2:setPositionX(bgx+bgMoveSpeed_2*0.1)
            self.Panel_2_0:setPositionX(bgx2+bgMoveSpeed_2*0.1)
            self.Panel_3:setPositionX(bgx3+bgMoveSpeed_1*0.1)
            self.Panel_3_0:setPositionX(bgx4+bgMoveSpeed_1*0.1)
            local bgx,bgy = self.Panel_2:getPosition()
            local bgx2,bgy2 = self.Panel_2_0:getPosition()
--            Tools.printDebug("------brj 背景移动~！！！！！！ ：",bgx,cameraPos.x - self.panel2Size.width + self.offset[7],bgx2,cameraPos.x - self.panel2Size.width + self.offset[7])
            if bgx <= cameraPos.x - self.panel2Size.width + self.offset[7] then
                self.Panel_2:setPositionX(bgx2+self.panel2Size.width-self.offset[6])
                self.Panel_2_0:setLocalZOrder(1)
                self.Panel_2:setLocalZOrder(2)
            end
            if bgx2 <= cameraPos.x - self.panel2Size.width + self.offset[7] then
                self.Panel_2_0:setPositionX(bgx+self.panel2Size.width-self.offset[6])
                self.Panel_2:setLocalZOrder(1)
                self.Panel_2_0:setLocalZOrder(2)
            end
            local bgx3,bgy3 = self.Panel_3:getPosition()
            local bgx4,bgy4 = self.Panel_3_0:getPosition()
            if bgx3 <= cameraPos.x - self.panel3Size.width then
                self.Panel_3:setPositionX(bgx4+self.panel3Size.width+self.offset[2])
            end
            if bgx4 <= cameraPos.x - self.panel3Size.width then
                self.Panel_3_0:setPositionX(bgx3+self.panel3Size.width+self.offset[2])
            end
        elseif cameraPos.x < self.lastCameraPos.x then
            self.Panel_2:setPositionX(bgx-bgMoveSpeed_2*0.1)
            self.Panel_2_0:setPositionX(bgx2-bgMoveSpeed_2*0.1)
            self.Panel_3:setPositionX(bgx3-bgMoveSpeed_1*0.1)
            self.Panel_3_0:setPositionX(bgx4-bgMoveSpeed_1*0.1)
            if bgx - self.offset[1] >= cameraPos.x + display.width then
                self.Panel_2:setPositionX(self.Panel_2_0:getPositionX()-self.panel2Size.width+self.offset[6])
                self.Panel_2_0:setLocalZOrder(2)
                self.Panel_2:setLocalZOrder(1)
            end
            if bgx2 - self.offset[1] >= cameraPos.x + display.width then
                self.Panel_2_0:setPositionX(self.Panel_2:getPositionX()-self.panel2Size.width+self.offset[6])
                self.Panel_2:setLocalZOrder(2)
                self.Panel_2_0:setLocalZOrder(1)
            end
            if bgx3 >= cameraPos.x + display.width then
                self.Panel_3:setPositionX(self.Panel_3_0:getPositionX()-self.panel3Size.width-self.offset[2])
            end
            if bgx4 >= cameraPos.x + display.width then
                self.Panel_3_0:setPositionX(self.Panel_3:getPositionX()-self.panel3Size.width-self.offset[2])
            end
        end
    end
    self.lastCameraPos = cameraPos
end


--背景纵向移动(普通楼层类型)
--parm@1:当前楼层位置
--parm@2:位置差(当前背景与楼层相差的距离)
--parm@3:摄像机当年位置
function BackGroundMove:bgPortraitMove(_pos,_dis,_mx,_value)
    local value = _value or 1

    local x,y = self.Panel_1:getPosition()
    self.Panel_1:stopAllActions()
    local move1 = cc.MoveTo:create(RoleJumpCameraMoveTime*value,cc.p(_pos.x+self.offset[5],self.lastPandelPosY+Room_Size.height*Rdt_2))
    self.Panel_1:runAction(move1)
    self.lastPandelPosY = self.lastPandelPosY+Room_Size.height*Rdt_2

    local p2x,p2y = self.Panel_2:getPosition()
    self.Panel_2:stopAllActions()
    local move2 = cc.MoveTo:create(RoleJumpCameraMoveTime*value,cc.p(p2x,self.lastPande2PosY+Room_Size.height*Rdt_2))
    self.Panel_2:runAction(move2)
    self.lastPande2PosY = self.lastPande2PosY+Room_Size.height*Rdt_2
    local p2x2,p2y2 = self.Panel_2_0:getPosition()
    self.Panel_2_0:stopAllActions()
    local move2_2 = cc.MoveTo:create(RoleJumpCameraMoveTime*value,cc.p(p2x2,self.lastPande2_0PosY+Room_Size.height*Rdt_2))
    self.Panel_2_0:runAction(move2_2)
    self.lastPande2_0PosY = self.lastPande2_0PosY+Room_Size.height*Rdt_2

    local p3x,p3y = self.Panel_3:getPosition()
    self.Panel_3:stopAllActions()
    local move3 = cc.MoveTo:create(RoleJumpCameraMoveTime*value,cc.p(p3x,self.lastPande3PosY+Room_Size.height*Rdt_1))
    self.Panel_3:runAction(move3)
    self.lastPande3PosY = self.lastPande3PosY+Room_Size.height*Rdt_2
    local p3x2,p3y2 = self.Panel_3_0:getPosition()
    self.Panel_3_0:stopAllActions()
    local move3_2 = cc.MoveTo:create(RoleJumpCameraMoveTime*value,cc.p(p3x2,self.lastPande3_0PosY+Room_Size.height*Rdt_1))
    self.Panel_3_0:runAction(move3_2)
    self.lastPande3_0PosY = self.lastPande3_0PosY+Room_Size.height*Rdt_2
end


--背景纵向移动(第一层横跑)
--parm@1:当前楼层位置
--parm@2:位置差(当前背景与楼层相差的距离)
--parm@3:摄像机当年位置
function BackGroundMove:bgPortraitRunningMove(_curPosY,_dis,_mx)
    local p1x,p1y = self.Panel_1:getPosition()
    self.Panel_1:stopAllActions()
    local move1 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(_mx+self.offset[5],p1y+Room_Size.height*Rdt_2))
    self.Panel_1:runAction(move1)

    local p2x,p2y = self.Panel_2:getPosition()
    self.Panel_2:stopAllActions()
    local move2 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(p2x,p2y+Room_Size.height*Rdt_2))
    self.Panel_2:runAction(move2)
    local p2x2,p2y2 = self.Panel_2_0:getPosition()
    self.Panel_2_0:stopAllActions()
    local move2_2 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(p2x2,p2y2+Room_Size.height*Rdt_2))
    self.Panel_2_0:runAction(move2_2)
    
    local p3x,p3y = self.Panel_3:getPosition()
    self.Panel_3:stopAllActions()
    local move3 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(p3x,p3y+Room_Size.height*Rdt_1))
    self.Panel_3:runAction(move3)
    local p3x2,p3y2 = self.Panel_3_0:getPosition()
    self.Panel_3_0:stopAllActions()
    local move3_2 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(p3x2,p3y2+Room_Size.height*Rdt_1))
    self.Panel_3_0:runAction(move3_2)
end

--横跑过程中背景纵向移动
--parm@1:_posY要移动的Y轴位置
--parm@2:距离差
function BackGroundMove:toRunCameraMove(_pos,_dis,_floor)
    local p1x,p1y = self.Panel_1:getPosition()
    self.Panel_1:stopAllActions()
    local mo = cc.MoveBy:create(RoleJumpCameraMoveTime,cc.p(0,Room_Size.height*Rdt_2))
    self.Panel_1:runAction(mo)

    if _floor % 10 ~= 0 then
        local bx,by = self.Panel_2:getPosition()
        self.Panel_2:stopAllActions()
        local move = cc.MoveBy:create(RoleJumpCameraMoveTime,cc.p(0,Room_Size.height*Rdt_2))
        self.Panel_2:runAction(move)
        local bx2,by2 = self.Panel_2_0:getPosition()
        self.Panel_2_0:stopAllActions()
        local move2 = cc.MoveBy:create(RoleJumpCameraMoveTime,cc.p(0,Room_Size.height*Rdt_2))
        self.Panel_2_0:runAction(move2)

        local p3x,p3y = self.Panel_3:getPosition()
        self.Panel_3:stopAllActions()
        local p_move = cc.MoveBy:create(RoleJumpCameraMoveTime,cc.p(0,Room_Size.height*Rdt_1))
        self.Panel_3:runAction(p_move)
        local p3x2,p3y2 = self.Panel_3_0:getPosition()
        self.Panel_3_0:stopAllActions()
        local p_move2 = cc.MoveBy:create(RoleJumpCameraMoveTime,cc.p(0,Room_Size.height*Rdt_1))
        self.Panel_3_0:runAction(p_move2)
    else
        local bx,by = self.Panel_2:getPosition()
        self.Panel_2:stopAllActions()
        local move = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(bx,by+Room_Size.height*Rdt_2))
        self.Panel_2:runAction(move)
        local bx2,by2 = self.Panel_2_0:getPosition()
        self.Panel_2_0:stopAllActions()
        local move2 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(bx2,by2+Room_Size.height*Rdt_2))
        self.Panel_2_0:runAction(move2)
        local p3x,p3y = self.Panel_3:getPosition()
        self.Panel_3:stopAllActions()
        local p_move = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(p3x,p3y+Room_Size.height*Rdt_1))
        self.Panel_3:runAction(p_move)
        local p3x2,p3y2 = self.Panel_3_0:getPosition()
        self.Panel_3_0:stopAllActions()
        local p_move2 = cc.MoveTo:create(RoleJumpCameraMoveTime,cc.p(p3x2,p3y2+Room_Size.height*Rdt_1))
        self.Panel_3_0:runAction(p_move2)
        self.lastPandelPosY = p1y+Room_Size.height*Rdt_2
        self.lastPande2PosY = by+Room_Size.height*Rdt_2
        self.lastPande2_0PosY = by2+Room_Size.height*Rdt_2
        self.lastPande3PosY = p3y+Room_Size.height*Rdt_1
        self.lastPande3_0PosY = p3y2+Room_Size.height*Rdt_1
    end
    
end


--背景回到原点
function BackGroundMove:toBackOrigin()
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
    
    self.lastPandelPosY = self.panel1PosY
    self.lastPande2PosY = self.panel2PosY
    self.lastPande2_0PosY = self.panel2Pos2Y
    self.lastPande3PosY = self.panel3PosY
    self.lastPande3_0PosY = self.panel3Pos2Y
end

function BackGroundMove:onEnter()
end

function BackGroundMove:onExit()
end

function BackGroundMove:dispose()

end

return BackGroundMove
