--[[
战斗配置界面
]]
local BaseUI = require("game.view.BaseUI")
local CommonUI = class("FightReadyUI",BaseUI)

local Scheduler = require("framework.scheduler")

function CommonUI:ctor()
    CommonUI.super.ctor(self)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    self.CommonUI = cc.uiloader:load("json/CommonUI.json")
    self:addChild(self.CommonUI)
    
    local powerbtn = cc.uiloader:seekNodeByName(self.CommonUI,"Powerbtn")
    powerbtn:onButtonClicked(function(event)
        print("-----------体力购买")
    end)
    
    local goldbtn = cc.uiloader:seekNodeByName(self.CommonUI,"Goldbtn")
    goldbtn:onButtonClicked(function(event)
        print("-----------金币购买")
    end)
    
    local diamondbtn = cc.uiloader:seekNodeByName(self.CommonUI,"Diabtn")
    diamondbtn:onButtonClicked(function(event)
        print("-----------钻石购买")
    end)
    
    local backbtn = cc.uiloader:seekNodeByName(self.CommonUI,"Backbtn")
    backbtn:onButtonClicked(function(event)
        print("-----------返回")
        self:getParent():toClose(true)
    end)
    
    self.goldCount = cc.uiloader:seekNodeByName(self.CommonUI,"GoldCount")
    self.goldCount:setString(GameDataManager.getGold())
    
    self.diaCount = cc.uiloader:seekNodeByName(self.CommonUI,"DiaCount")
    self.diaCount:setString(GameDataManager.getDiamond())
    
    self.recoverLab = cc.uiloader:seekNodeByName(self.CommonUI,"Label_1")
    self.redPar = cc.uiloader:seekNodeByName(self.CommonUI,"Image_1")
    
    for var=1, 5 do
        self["red_"..var] = cc.uiloader:seekNodeByName(self.CommonUI,"red_"..var)
        self["red_"..var]:setVisible(true)
    end
    
    self:showPower()
    
    self.m_timeChange = GameDispatcher:addListener(EventNames.EVENT_NET_TIME_CHANGE,handler(self,self.timeChange))
    GameDispatcher:addListener(EventNames.EVENT_POWER_CHANGE,handler(self,self.powerChanged))
end

function CommonUI:showPower(parameters)
    local powerNow=GameDataManager.getPower()
    for var=powerNow+1, 5 do
        self["red_"..var]:setVisible(false)
    end
	self:initPower()
end

--体力改变
function CommonUI:powerChanged(parameters)
    local _power = GameDataManager.getPower()
    self.redPar:removeAllChildren()
    for var=_power+1, 5 do
        self["red_"..var]:setVisible(false)
    end
    if _power < USER_POWER_MAX then
        self:toCheckPower(GameDataManager.getPowerEndTime()-TimeUtil.getTimeStamp())
    else
        if self.m_powerHandle then
            Scheduler.unscheduleGlobal(self.m_powerHandle)
            self.m_powerHandle = nil
        end
        self.recoverLab:setVisible(false)
    end
end

function CommonUI:timeChange(parameters)
    self:initPower()
end

function CommonUI:initPower(parameters)
    if self.m_powerHandle then
        Scheduler.unscheduleGlobal(self.m_powerHandle)
        self.m_powerHandle = nil
    end
    if GameDataManager.getPower() >= USER_POWER_MAX then
        self.recoverLab:setVisible(false)
        return
    end
    local curTime = TimeUtil.getTimeStamp()
    local powerEndT = GameDataManager.getPowerEndTime()
    printf("initPower 当前体力= %d ",GameDataManager.getPower())
    if curTime >= powerEndT then
        self.recoverLab:setVisible(false)
        if GameDataManager.getPower() < USER_POWER_MAX then
            local _power = GameDataManager.addPower(USER_POWER_MAX-GameDataManager.getPower())
        end
    else
        local _leftTime = powerEndT-curTime
        local _leftPower = math.ceil(_leftTime/POWER_RECOVER_TIME)
        self.m_powerTime = math.fmod(_leftTime,POWER_RECOVER_TIME)
        if (USER_POWER_MAX-_leftPower) == GameDataManager.getPower() then
            self:toCheckPower(_leftTime)
        else
            GameDataManager.addPower(USER_POWER_MAX-_leftPower-GameDataManager.getPower())
        end
    end
end

function CommonUI:toCheckPower(_recoverTime)
    if (not self.m_powerHandle) and _recoverTime>0 then
        self.m_powerTime = math.fmod(_recoverTime,POWER_RECOVER_TIME)
        if self.m_powerTime == 0 then
            self.m_powerTime = POWER_RECOVER_TIME
        end
        self.recoverLab:setString(string.format("%02d:%02d恢复1点",self.m_powerTime/60,self.m_powerTime%60))--((self.m_powerTime/60)..":"..(self.m_powerTime%60).."恢复1点")--(string.format("%02d:%02d恢复1点",self.m_powerTime/60,self.m_powerTime%60))
        self.recoverLab:setVisible(true)
        self.m_powerHandle = Scheduler.scheduleGlobal(handler(self,self.updatePower), 1)
    end
end

function CommonUI:updatePower(parameters)
    self.m_powerTime = self.m_powerTime - 1
    if self.m_powerTime <= 0 then
        self.m_powerTime = 0
        self.m_powerHandle = nil
        Scheduler.unscheduleGlobal(self.m_powerHandle)
        GameDataManager.addPower(1)
    end
    self.recoverLab:setString(string.format("%02d:%02d恢复1点",self.m_powerTime/60,self.m_powerTime%60))--((self.m_powerTime/60)..":"..(self.m_powerTime%60).."恢复1点")--(string.format("%02d:%02d恢复1点",self.m_powerTime/60,self.m_powerTime%60))
end

--添加到舞台时调用
function CommonUI:addedToScene()
end

function CommonUI:onCleanup(parameters)
    GameDispatcher:removeListenerByHandle(self.m_timeChange)
    GameDispatcher:removeListenerByName(EventNames.EVENT_POWER_CHANGE)

    if self.m_powerHandle then
        Scheduler.unscheduleGlobal(self.m_powerHandle)
        self.m_powerHandle = nil
    end
end

--关闭界面调用
function CommonUI:toClose(_clean)
    GameDispatcher:removeListenerByHandle(self.m_timeChange)
    GameDispatcher:removeListenerByName(EventNames.EVENT_POWER_CHANGE)
    
    if self.m_powerHandle then
        Scheduler.unscheduleGlobal(self.m_powerHandle)
        self.m_powerHandle = nil
    end
    CommonUI.super.toClose(self,_clean)
end

return CommonUI