--[[
角色界面
]]
local BaseUI = require("game.view.BaseUI")
local RoleView = class("RoleView",BaseUI)

local CommonUI = require("game.view.Common.CommonUI")
local RoleItem = require("game.view.role.RoleItem")

function RoleView:ctor(parameters)
    RoleView.super.ctor(self)

    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)
    self.m_roleUi = cc.uiloader:load("json/RoleView.json")
    self:addChild(self.m_roleUi)

    local commonui = CommonUI.new():addTo(self)
    commonui:setPosition(cc.p(10,display.top-70))
    
    self.m_curRole = GameDataManager.getFightRole() -- 当前出战角色
    self.RoleUnActSkill = {GoodsConfig[7],GoodsConfig[8],GoodsConfig[9],GoodsConfig[10],GoodsConfig[11]}
    self:initRole()
    self:LoadRole(self.m_curRole)--角色数据初始化

    --启用监听
    self:setNodeEventEnabled(true)

end

function RoleView:initRole(parameters)
    self.listPandel = cc.uiloader:seekNodeByName(self.m_roleUi,"Panel_5")
    self.Panel_role = cc.uiloader:seekNodeByName(self.m_roleUi,"Panel_role")
    --图片
    self.RoleImg = cc.uiloader:seekNodeByName(self.m_roleUi,"RoleImg")
    self.RoleImg:setButtonEnabled(false)
    --等级
    self.RoleLV = cc.uiloader:seekNodeByName(self.m_roleUi,"RoleLV")
    self.RoleName = cc.uiloader:seekNodeByName(self.m_roleUi,"RoleName")--名字
    self.RoleDes = cc.uiloader:seekNodeByName(self.m_roleUi,"RoleDes")--描述
    self.Lock = cc.uiloader:seekNodeByName(self.m_roleUi,"Lock")--是否解锁
    
    self.UpgradeBtn = cc.uiloader:seekNodeByName(self.m_roleUi,"UpgradeBtn")--升级按钮
    self.UpgradeBtn:onButtonClicked(function(event)
    
    end)
    self.UpgradeType = cc.uiloader:seekNodeByName(self.m_roleUi,"UpgradeType")--升级花费的类型
    self.UpgradeType:setButtonEnabled(false)
    self.UpgradeType:setContentSize(cc.size(30,30))
    self.UpgradeCount = cc.uiloader:seekNodeByName(self.m_roleUi,"UpgradeCount")--升级需要的钱
    self.MaxgradeBtn = cc.uiloader:seekNodeByName(self.m_roleUi,"MaxgradeBtn")--一键满级
    self.MaxgradeBtn:onButtonClicked(function(event)

    end)
    self.MaxgradeCount = cc.uiloader:seekNodeByName(self.m_roleUi,"Label_20")--一键满级花费
    self.buyPrice = cc.uiloader:seekNodeByName(self.m_roleUi,"Label_13")--购买价格
    
    self.LeftBtn = cc.uiloader:seekNodeByName(self.m_roleUi,"LeftBtn")--左按钮
    self.LeftBtn:onButtonClicked(function(event)
        
    end)
    self.RightBtn = cc.uiloader:seekNodeByName(self.m_roleUi,"RightBtn")--右按钮
    self.RightBtn:onButtonClicked(function(event)

    end)
    
    self.RoleBuy = cc.uiloader:seekNodeByName(self.m_roleUi,"RoleBuy")--购买
    self.RoleBuy:onButtonClicked(function(event)
        
    end)
    
    for var=1, #RoleConfig do
        self["roleDot"..var] = display.newDrawNode():addTo(self.Panel_role)
        self["roleDot"..var]:drawDot(cc.p(648+(var-1)*38,126),
            6, cc.c4f(64/255, 20/255, 153/255, 1))
    end
    self.m_dot = {}
    
    --创建listview
    self.m_listSize = self.listPandel:getCascadeBoundingBox().size
    self.lv = cc.ui.UIListView.new {
        bgScale9 = true,
        viewRect = cc.rect(0, 0, self.m_listSize.width, self.m_listSize.height),
        direction = cc.ui.UIScrollView.DIRECTION_VERTICAL}
        :onTouch(handler(self, self.touchListener))
        :addTo(self.listPandel)
        
    for var=1, #self.RoleUnActSkill do
        self["skill"..var] = nil
    end
    Tools.delayCallFunc(0.1,function()
        for var=1, #self.RoleUnActSkill do
            local item = self.lv:newItem()
            local content = RoleItem.new(self.RoleUnActSkill[var])
            self["skill"..var] = content
            content:setTouchEnabled(false)
            content:setContentSize(self.m_listSize.width, 100)
            item:setItemSize(self.m_listSize.width, 100)
            item:addContent(content)
            self.lv:addItem(item)
        end
        self.lv:reload()
    end)
end

function RoleView:LoadRole(id)
    local roleCon = RoleConfig[id]
    self.m_roleHave = GameDataManager.getRoleModle(id)   --是否拥有当前角色
    if self.m_roleHave then
    	self.Lock:setVisible(false)
        self.UpgradeBtn:setVisible(true)
        self.MaxgradeBtn:setVisible(true)
        self.RoleBuy:setVisible(false)
        GameDataManager.setCurFightRole(id)
    else
        self.Lock:setVisible(true)
        self.UpgradeBtn:setVisible(false)
        self.MaxgradeBtn:setVisible(false)
        self.RoleBuy:setVisible(true)
    end
    self.RoleImg:setButtonImage("disabled",roleCon.roleImg)
    self.RoleName:setString(roleCon.roleName)
    self.RoleDes:setString(roleCon.roleDes)
    self.MaxgradeCount:setString(roleCon.quickMaxPrice.."元")
    self.buyPrice:setString(roleCon.rmb.."元")
    
    if #self.m_dot>0 then
        self.m_dot[#self.m_dot]:drawDot(cc.p(648+(id-1)*38,126),
            6, cc.c4f(64/255, 20/255, 153/255, 1))
        table.remove(self.m_dot,#self.m_dot)
    end
    self["roleDot"..roleCon.id]:drawDot(cc.p(648+(id-1)*38,126),
        6, cc.c4f(1, 1, 1, 1))
    self.m_dot[#self.m_dot+1] = self["roleDot"..roleCon.id]
    
    self:updateRoleLv(id,self.m_roleLv)
end

function RoleView:updateRoleLv(id,level)
	Tools.printDebug("-----当前角色和等级：",id,level)
	local roleLvCon = RoleLvs[id][level]
    if not roleLvCon then
        self.UpgradeBtn:setVisible(false)
        self.MaxgradeBtn:setVisible(false)
        self.RoleBuy:setVisible(false)
        return
    end
    GameDataManager.updateUserLv(id,level)
    if roleLvCon.upgrade.type == UPGRADE_TYPE.Gold then
	   self.UpgradeType:setButtonImage("disabled","Common/Common_gold.png")
	elseif roleLvCon.upgrade.type == UPGRADE_TYPE.Dimond then
        self.UpgradeType:setButtonImage("disabled","Common/Common_diamond.png")
	end
    self.UpgradeCount:setString(roleLvCon.upgrade.Num)
    self.m_roleLv = GameDataManager.getRoleModle(id).roleLv
    self.RoleLV:setString("LV."..self.m_roleLv)
    
    for var=1, #self.RoleUnActSkill do
        local basic = GameDataManager.getUnActSkillTime(id,level,self.RoleUnActSkill[var].type)
        local total = GameDataManager.getUnActSkillTime(id,#RoleLvs[id],self.RoleUnActSkill[var].type)
        self["skill"..var]:updateProcess(basic/total)
    end
end

function RoleView:touchListener(event)
	
end

--关闭界面调用
function RoleView:toClose(_clean)
    RoleView.super.toClose(self,_clean)
end

--清理数据
function RoleView:onCleanup()
    for key, var in pairs(self.RoleUnActSkill) do
        if not tolua.isnull(var) then
            var:removeFromParent()
        end
    end
    for var=1, #self.RoleUnActSkill do
        self["skill"..var] = nil
    end
    self.RoleUnActSkill = {}
    
    for key, var in pairs(self.m_dot) do
        if not tolua.isnull(var) then
            var:removeFromParent()
        end
    end
    self.m_dot = {}
end

return RoleView