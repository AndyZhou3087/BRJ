--[[
成就任务
]]
local BaseUI = require("game.view.BaseUI")
local AchieveQuest = class("AchieveQuest",BaseUI)

local Scheduler = require("framework.scheduler")
local CommonUI = require("game.view.Common.CommonUI")
local AchieveQuestItem = require("game.view.AchieveQuest.AchieveQuestItem")

function AchieveQuest:ctor()
    AchieveQuest.super.ctor(self)

    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)
    self.m_json = cc.uiloader:load("json/AchieveQuest.json")
    self:addChild(self.m_json)
    
    local commonui = CommonUI.new():addTo(self)
    commonui:setPosition(cc.p(0,display.top-60))
    
    local Image_2_0 = cc.uiloader:seekNodeByName(self.m_json,"Image_2_0")
    Image_2_0:setPositionX(display.cx)
    
    local QuestDay = cc.uiloader:seekNodeByName(self.m_json,"QuestDay")
    local Achieve = cc.uiloader:seekNodeByName(self.m_json,"Achieve")
    local QuestLabel = cc.uiloader:seekNodeByName(self.m_json,"QuestLabel")
    QuestLabel:setButtonEnabled(false)
    local AchieveLabel = cc.uiloader:seekNodeByName(self.m_json,"AchieveLabel")
    AchieveLabel:setButtonEnabled(false)
    QuestDay:setButtonEnabled(false)
    Achieve:setButtonEnabled(true)
    QuestDay:onButtonClicked(function(_event)
        QuestDay:setButtonEnabled(false)
        Achieve:setButtonEnabled(true)
        QuestLabel:setButtonImage("disabled","ui/Quest_day2.png")
        AchieveLabel:setButtonImage("disabled","ui/Achieve_1.png")
        self:initContent(1)
    end)
    Achieve:onButtonClicked(function(_event)
        QuestDay:setButtonEnabled(true)
        Achieve:setButtonEnabled(false)
        QuestLabel:setButtonImage("disabled","ui/Quest_day1.png")
        AchieveLabel:setButtonImage("disabled","ui/Achieve_2.png")
        self:initContent(2)
    end)
    
    local listContent = cc.uiloader:seekNodeByName(self.m_json,"list_panel")
    self.m_listSize = listContent:getCascadeBoundingBox().size
    self.lv = cc.ui.UIListView.new {
        bgScale9 = true,
        viewRect = cc.rect(0, 0, self.m_listSize.width, self.m_listSize.height),
        direction = cc.ui.UIScrollView.DIRECTION_VERTICAL}
--        :onTouch(handler(self, self.touchListener))
        :addTo(listContent)
end

function AchieveQuest:initContent(type)
    local AchieveQuestCon
	if type == 1 then  --每日任务
        
    elseif type == 2 then  --成就
        AchieveQuestCon = AchieveConfig
	end
    self.lv:removeAllItems()
    Tools.delayCallFunc(0.1,function()
        for i=1,#AchieveQuestCon do
            local item = self.lv:newItem()
            local content = AchieveQuestItem.new({type=type,config=AchieveQuestCon[i]})
            content:setTouchEnabled(false)
            content:setContentSize(self.m_listSize.width, 100)
            item:setItemSize(self.m_listSize.width, 100)
            item:addContent(content)
            self.lv:addItem(item)
        end
        self.lv:reload()
    end)
end

--关闭界面调用
function AchieveQuest:toClose(_clean)
    AchieveQuest.super.toClose(self,_clean)
end

return AchieveQuest