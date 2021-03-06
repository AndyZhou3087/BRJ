--[[
选择界面
]]
local BaseUI = require("game.view.BaseUI")
local SelectUI = class("SelectUI",BaseUI)

local SelectItem = require("game.view.Select.SelectItem")
local Scheduler = require("framework.scheduler")
local CommonUI = require("game.view.Common.CommonUI")

function SelectUI:ctor()
    SelectUI.super.ctor(self) 
    self:init()
    --启用onCleanup函数
    self:setNodeEventEnabled(true)
end

--初始化
function SelectUI:init(parameters)
    self.m_json = cc.uiloader:load("json/SelectUI.json")
    self:addChild(self.m_json)

    self.itemArr = {}

    local emptyNode = cc.Node:create()
    emptyNode:setAnchorPoint(0,0)

    self.scrollView = cc.ui.UIScrollView.new({viewRect = cc.rect(0,0,display.width,display.height)})
        :addScrollNode(emptyNode)
        :setDirection(cc.ui.UIScrollView.DIRECTION_HORIZONTAL)
        :onScroll(handler(self, self.scrollListener))
        :addTo(self)
        
    for var=1, #SelectOtherConfig do
        local otherConfig = SelectOtherConfig[var]
        local sprite = display.newSprite(otherConfig.res):addTo(emptyNode)
        sprite:setAnchorPoint(0,0)
        sprite:pos(otherConfig.x,otherConfig.y)
    end
    for var=1, #SelectLevel do
        local selConfig = SelectLevel[var]
        local sel = SelectItem.new(selConfig):addTo(emptyNode)
        sel:setAnchorPoint(0,0)
        sel:setContentSize(100, 100)
        sel:pos(selConfig.pos.x,selConfig.pos.y)
        self.itemArr[var] = sel
    end

    local commonui = CommonUI.new({isSelect = true}):addTo(self)
    commonui:setPosition(cc.p(0,display.top-60))
    
    --签到
    self.signHandler = Tools.delayCallFunc(0.1,function()
        if not GameDataManager.isDateSign() and GameController.getSignPop() then
        	GameDispatcher:dispatch(EventNames.EVENT_OPEN_SIGNUI)
        end
    end)
    
    --结算界面返回到地图弹礼包
    if GameController.isFightOverBack then
        GameController.isFightOverBack = false
        Tools.delayCallFunc(0.5,function()
            local id,gId,eid = GameController.getCurGiftId()
            if GiftConfig[gId] then
                if GameController.isBackMap then
                    GameDispatcher:dispatch(EventNames.EVENT_OPEN_COMMONGIFT,{giftId = gId,animation = true})
                else
                    local curLevel = GameDataManager.getCurLevelId()
                    if curLevel%3 == 0 then
                        GameDispatcher:dispatch(EventNames.EVENT_OPEN_COMMONGIFT,{giftId = gId,animation = true})
                    end
                end
            end
        end)
    end

    self:moveScrollView()
    
--    self.ooh = Scheduler.scheduleGlobal(handler(self,self.onEnterFrame),FrameTime)
end

function SelectUI:onEnterFrame()
    print("000000000000000000000---------------------  ",self.scrollView.scrollNode:getPositionX())
end

function SelectUI:moveScrollView(parameters)
    --当前要闯的关卡记录
    local x,y = self.itemArr[GameDataManager.getNextFightDataId()]:getPosition()
    local wordPos = self.itemArr[GameDataManager.getNextFightDataId()]:getParent():convertToWorldSpace(cc.p(x,y))
    if wordPos.x <= display.cx then
    	return
    end
    --上一个完成关卡记录
    local lx,ly = self.itemArr[GameDataManager.getUlockLevelsNum()]:getPosition()
    local lwordPos = self.itemArr[GameDataManager.getUlockLevelsNum()]:getParent():convertToWorldSpace(cc.p(lx,ly))
    local dis = x-lx
    if -wordPos.x+display.cx <= (display.width - GroupSize.width)-2061 then
        self.scrollView.scrollNode:setPositionX((display.width - GroupSize.width)-2061)
    else
        self.scrollView.scrollNode:setPositionX(-lwordPos.x+display.cx)
        transition.moveBy(self.scrollView.scrollNode,{time = 0.5,x=-dis,y=0})
    end
end

function SelectUI:scrollListener(event)
	
end

--关闭界面调用
function SelectUI:dispose(_clean)
    if self.signHandler then
        Scheduler.unscheduleGlobal(self.signHandler)
        self.signHandler = nil
    end
    GameController.isBackMap = false
    SelectUI.super.toClose(self,_clean)
end

--清理数据
function SelectUI:onCleanup()
    if self.signHandler then
        Scheduler.unscheduleGlobal(self.signHandler)
        self.signHandler = nil
    end
    GameController.isBackMap = false
    GameDataManager.SaveData()
end
return SelectUI