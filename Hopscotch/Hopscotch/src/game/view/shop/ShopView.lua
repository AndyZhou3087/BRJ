--[[
商城界面
]]
local BaseUI = require("game.view.BaseUI")
local ShopView = class("ShopView",BaseUI)

local CustomListView = require("game.custom.CustomListView")
local ShopItem = require("game.view.shop.ShopItem")

local Scheduler = require("framework.scheduler")

local shopX = {300,450,600,750,900,1050,1200,150,0}
local sceneX = {340,510,680,850,1020,1190,1360,1530,1700,1870,2040,2210,170,0}
local roleX = {300,450,600,750,900,1050,1200,1350,1500,1650,1800,1950,150,0}

function ShopView:ctor(parameters)
    ShopView.super.ctor(self)
    
    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)

    self.m_json = cc.uiloader:load("json/ShopView.json")
    self:addChild(self.m_json)
    
    local Diamond = cc.uiloader:seekNodeByName(self.m_json,"Diamond")
    Diamond:setPositionY(display.top-34)
    local Image_6 = cc.uiloader:seekNodeByName(self.m_json,"Image_6")
    Image_6:setPositionY(display.bottom+107)
    
    self.Panel_role = cc.uiloader:seekNodeByName(self.m_json,"Panel_role")
    self.Panel_role:setPositionY(display.top-395)
    self.Panel_scene = cc.uiloader:seekNodeByName(self.m_json,"Panel_scene")
    self.Panel_scene:setPositionY(display.bottom+420)
--    self.Panel_diamond = cc.uiloader:seekNodeByName(self.m_json,"Panel_diamond")
--    self.Panel_diamond:setPositionY(Image_6:getPositionY()+210)
    
    self.DiamondCount = cc.uiloader:seekNodeByName(self.m_json,"DiamondCount")
    self.DiamondCount:setString(GameDataManager.getDiamond())
    
    --花费钻石获取礼物
    local LeftBtn = cc.uiloader:seekNodeByName(self.m_json,"LeftBtn")
    local LeftImg = cc.uiloader:seekNodeByName(self.m_json,"LeftImg")
    LeftImg:setButtonEnabled(false)
    LeftBtn:onButtonPressed(function(_event)    --按下
        LeftImg:setButtonImage("disabled","shop/shop_box_2.png")
    end)
    LeftBtn:onButtonRelease(function(_event)    --触摸离开
        LeftImg:setButtonImage("disabled","shop/shop_box_1.png")
    end)
    LeftBtn:onButtonClicked(function (event)
        Tools.printDebug("brj hopscotch 花费100钻石获取一个随机礼物")
        if GameDataManager.getDiamond()>=DiamondSpendReward then
        	GameDataManager.costDiamond(DiamondSpendReward)
            --控制随机数种子
            math.randomseed(os.time())
        	--随机弹礼物
            local reward = GameController.getAllReward()
            local i = math.random(1,#reward)
            Tools.printDebug("------brj---type:",reward[i].type,reward[i].id)
            if reward[i].type == Shop_Type.role then
                GameDataManager.unLockModle(reward[i].id)
            elseif reward[i].type == Shop_Type.scene then
                GameDataManager.unLockScene(reward[i].id)
            else
                GameDataManager.addDiamond(reward[i].count)
            end
        else
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="钻石不足"})
        end
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)
    
    --看视频获取礼包
    self.RightBtn = cc.uiloader:seekNodeByName(self.m_json,"RightBtn")
    local RightImg = cc.uiloader:seekNodeByName(self.m_json,"RightImg")
    RightImg:setButtonEnabled(false)
    self.RightBtn:onButtonPressed(function(_event)    --按下
        RightImg:setButtonImage("disabled","shop/shop_gift_2.png")
    end)
    self.RightBtn:onButtonRelease(function(_event)    --触摸离开
        RightImg:setButtonImage("disabled","shop/shop_gift_1.png")
    end)
    self.RightBtn:onButtonClicked(function (event)
        Tools.printDebug("brj hopscotch 礼包弹出")
        local type = math.random(1,3)
        if type == 1 then
            local count = math.random(VideoDiamond[1],VideoDiamond[2])
            GameDataManager.addDiamond(count)
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得"..count.."钻石"})
        elseif type == 2 then
            local id = math.random(1,#RoleConfig)
            GameDataManager.unLockModle(id,true)
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得新角色"})
        elseif type == 3 then
            local id = math.random(1,#SceneConfig)
            GameDataManager.unLockScene(id,true)
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="获得新场景"})
        end
        self:freeLogic()
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)
    
    --开始游戏
    local Startbtn = cc.uiloader:seekNodeByName(self.m_json,"Startbtn")
    local middleImg = cc.uiloader:seekNodeByName(self.m_json,"middleImg")
    middleImg:setButtonEnabled(false)
    Startbtn:onButtonPressed(function(_event)    --按下
        middleImg:setButtonImage("disabled","settlement/Start_btn_2.png")
    end)
    Startbtn:onButtonRelease(function(_event)    --触摸离开
        middleImg:setButtonImage("disabled","settlement/Start_btn_1.png")
    end)
    Startbtn:onButtonClicked(function (event)
        Tools.printDebug("brj hopscotch 开始游戏")
        self:toClose(true)
        GameDataManager.generatePlayerVo()  --产生新的角色数据对象
        app:enterLoadScene()
        Tools.delayCallFunc(0.1,function()
            app:enterGameScene()
        end)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
    end)
    
    --角色购买
    self.roleBuy = cc.uiloader:seekNodeByName(self.m_json,"roleBuy")
    self.rolePrice = cc.uiloader:seekNodeByName(self.m_json,"rolePrice")
    self.priceImg_role = cc.uiloader:seekNodeByName(self.m_json,"priceImg_role")
    self.priceImg_role:setButtonEnabled(false)
    self.roleBuy:onButtonPressed(function(_event)    --按下
        self.priceImg_role:setPositionY(self.priceImg_role:getPositionY()-8)
        self.rolePrice:setPositionY(self.rolePrice:getPositionY()-8)
    end)
    self.roleBuy:onButtonRelease(function(_event)    --触摸离开
        self.priceImg_role:setPositionY(self.priceImg_role:getPositionY()+8)
        self.rolePrice:setPositionY(self.rolePrice:getPositionY()+8)
    end)
    self.roleBuy:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("brj hopscotch 购买 角色")
        if not self.roleMove and not GameDataManager.getRoleModle(self.roleId) then
--            local payId = RoleConfig[self.roleId].payId
--            local oId = SDKUtil.getOrderId(payId)
--            SDKUtil.toPay({goodsId=payId,orderId=oId,callback=function(_res)
--                if SDKUtil.PayResult.Success == _res then
--                    GameDataManager.unLockModle(self.roleId)
--                    GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买成功"})
--                else
--                    GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买失败"})
--                end
--            end})
            if GameDataManager.getDiamond() >= RoleConfig[self.roleId].diamond then
                GameDataManager.costDiamond(RoleConfig[self.roleId].diamond)
                GameDataManager.unLockModle(self.roleId)
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买成功"})
            else
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="钻石不足"})
            end
        end
    end)
    
    --场景购买
    self.sceneBuy = cc.uiloader:seekNodeByName(self.m_json,"sceneBuy")
    self.scenePrice = cc.uiloader:seekNodeByName(self.m_json,"scenePrice")
    self.priceImg_scene = cc.uiloader:seekNodeByName(self.m_json,"priceImg_scene")
    self.priceImg_scene:setButtonEnabled(false)
    self.sceneBuy:onButtonPressed(function(_event)    --按下
        self.priceImg_scene:setPositionY(self.priceImg_scene:getPositionY()-8)
        self.scenePrice:setPositionY(self.scenePrice:getPositionY()-8)
    end)
    self.sceneBuy:onButtonRelease(function(_event)    --触摸离开
        self.priceImg_scene:setPositionY(self.priceImg_scene:getPositionY()+8)
        self.scenePrice:setPositionY(self.scenePrice:getPositionY()+8)
    end)
    self.sceneBuy:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("brj hopscotch 购买 场景")
        if not self.move and not GameDataManager.getSceneModle(self.sceneId) then
--            local payId = SceneConfig[self.sceneId].payId
--            local oId = SDKUtil.getOrderId(payId)
--            SDKUtil.toPay({goodsId=payId,orderId=oId,callback=function(_res)
--                if SDKUtil.PayResult.Success == _res then
--                    GameDataManager.unLockScene(self.sceneId)
--                    GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买成功"})
--                else
--                    GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买失败"})
--                end
--            end})
            if GameDataManager.getDiamond() >= RoleConfig[self.sceneId].diamond then
                GameDataManager.costDiamond(RoleConfig[self.sceneId].diamond)
                GameDataManager.unLockScene(self.sceneId)
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买成功"})
            else
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="钻石不足"})
            end
        end
    end)
    
    --钻石购买
    self.diamondBuy = cc.uiloader:seekNodeByName(self.m_json,"diamondBuy")
    self.priceImg_diamond = cc.uiloader:seekNodeByName(self.m_json,"priceImg_diamond")
    self.priceImg_diamond:setButtonEnabled(false)
    self.diamondBuy:onButtonPressed(function(_event)    --按下
        self.priceImg_diamond:setPositionY(self.priceImg_diamond:getPositionY()-8)
    end)
    self.diamondBuy:onButtonRelease(function(_event)    --触摸离开
        self.priceImg_diamond:setPositionY(self.priceImg_diamond:getPositionY()+8)
    end)
    self.diamondBuy:onButtonClicked(function (event)
        AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Button_Click_Sound)
        Tools.printDebug("brj hopscotch 购买 钻石")
        if not self.moveDia then
            local payId = DiamondConfig[self.diamondId].payId
            local oId = SDKUtil.getOrderId(payId)
            SDKUtil.toPay({goodsId=payId,orderId=oId,callback=function(_res)
                if SDKUtil.PayResult.Success == _res then
                    GameDataManager.addDiamond(DiamondConfig[self.diamondId].count)
                    GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买成功"})
                else
                    GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="购买失败"})
                end
            end})
        end
    end)
    
    --listitem 高度142
    self:initRoleList()
    self:initSceneList()
--    self:initDiamondList()

    GameDispatcher:addListener(EventNames.EVENT_UPDATE_SCENE,handler(self,self.updateScene))
    GameDispatcher:addListener(EventNames.EVENT_DIAMOND_CHANGE,handler(self,self.updateDiamond))
    GameDispatcher:addListener(EventNames.EVENT_UPDATE_ROLE,handler(self,self.updateRole))
    
    
    self.countDown = 0
    self.countDownLabel = cc.uiloader:seekNodeByName(self.m_json,"BitmapLabel_15")
    self.countDownLabel:setColor(cc.c3b(50,222,255))
    self:updateTime()
    
    -----------==============测试
--    self:test()

end

function ShopView:freeLogic()
    self.countDown = FreeRemainTime
    GameDataManager.setFreeEndTime(TimeUtil.getTimeStamp(),self.countDown)
    self.countDownLabel:setString("")
    self.RightBtn:setButtonEnabled(false)
    self.countDownLabel:setVisible(true)
    self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
end

function ShopView:updateTime()
    local time1,time2 = GameDataManager.getFreeEndTime()
    if TimeUtil.getTimeStamp() - time1 >= time2 then
        self.RightBtn:setButtonEnabled(true)
        self.countDownLabel:setVisible(false)
    else
        self.countDown = time2 - (TimeUtil.getTimeStamp() - time1)
        GameDataManager.setReviveEndTime(TimeUtil.getTimeStamp(),self.countDown)
        self.countDownLabel:setVisible(true)
        self.countDownLabel:setString("")
        self.RightBtn:setButtonEnabled(false)
        self.m_Handler = Scheduler.scheduleGlobal(handler(self,self.updateCountDown), 1)
    end
end

function ShopView:updateCountDown()
    self.countDown = self.countDown - 1
    GameDataManager.setFreeEndTime(TimeUtil.getTimeStamp(),self.countDown)
    self.countDownLabel:setString(string.format("%02d:%02d:%02d",self.countDown/3600,(self.countDown%3600)/60,self.countDown%60))
    if self.countDown <= 0 then
        self.countDown = 0
        self.RightBtn:setButtonEnabled(true)
        self.countDownLabel:setVisible(false)
        GameDataManager.setFreeEndTime(0,0)
        if self.m_Handler then
            Scheduler.unscheduleGlobal(self.m_Handler)
            self.m_Handler=nil
        end
    end
end


function ShopView:test()
    self.lv = cc.ui.UIListView.new {
        bgScale9 = true,
        viewRect = cc.rect(0, 0, display.width, 200),
        direction = cc.ui.UIScrollView.DIRECTION_HORIZONTAL}
        :onTouch(handler(self, self.touchListener))
        :addTo(self)
    self.lv:setPosition(cc.p(0,display.cy))
    
    for i=1,#RoleConfig do
        local item = self.lv:newItem()
        local content = display.newSprite(RoleConfig[GameDataManager.getFightRole()].roleImg)
        local size = content:getCascadeBoundingBox().size
        content:setTouchEnabled(false)
        content:setContentSize(size.width, size.height)
        item:setItemSize(size.width*1.5, size.height)
        item:addContent(content)
        self.lv:addItem(item)
    end
    self.lv:reload()
    
    self.ooh = Scheduler.scheduleGlobal(handler(self,self.onEnterFrame),0.01)
end

function ShopView:onEnterFrame()
    print("000000000000000000000---------------------  ",self.lv.scrollNode:getPositionX())
end

function ShopView:touchListener(event)
	
end

function ShopView:initRoleList()
    self.roleId = GameDataManager.getFightRole()
    self.roleName = cc.uiloader:seekNodeByName(self.m_json,"roleName")
    self.roleName:setButtonEnabled(false)
    self.roleLv = CustomListView.new {
        viewRect = cc.rect(0, self.Panel_role:getPositionY()-20, 750, 200),
        direction = cc.ui.UIScrollView.DIRECTION_HORIZONTAL}
        :onTouch(handler(self, self.touchListenerRole))
        :addTo(self)
    self.roleLv:setBounceable(false)
    self.roleLv:enableAreaChange(true)
    
    local roleArr = {0,0}
    for key, var in pairs(RoleConfig) do
        table.insert(roleArr,var.id)
    end
    table.insert(roleArr,0)
    table.insert(roleArr,0)
    
    -- add items
    for i=1,#roleArr do
        local item = self.roleLv:newItem()
        self["roleitem"..i] = ShopItem.new(Shop_Type.role,roleArr[i])
        item:addContent(self["roleitem"..i])
        item:setItemSize(150, 180)
        self.roleLv:addItem(item)
    end
    
    for key, var in ipairs(roleX) do
        self["roleX"..key] = var
    end
    self.roleLv:reload()

    local oldP = self["roleX"..self.roleId]
    local newP = 0
    if self.roleId > 1 then
        newP = oldP-self["roleX3"]
    end
    if self.roleId >=3 then
        newP = self["roleX1"]- oldP
    end
    self.roleLv:scrollToPos(newP, 0)
end

function ShopView:initSceneList()
    self.sceneId = GameDataManager.getFightScene()
    self.sceneName = cc.uiloader:seekNodeByName(self.m_json,"sceneName")
    self.sceneName:setButtonEnabled(false)
    self.sceneBuy = cc.uiloader:seekNodeByName(self.m_json,"sceneBuy")
    
    self.sceneLv = CustomListView.new {
        viewRect = cc.rect(-40, self.Panel_scene:getPositionY(), 850, 200),
        direction = cc.ui.UIScrollView.DIRECTION_HORIZONTAL}
        :onTouch(handler(self, self.touchListenerScene))
        :addTo(self)
    self.sceneLv:setBounceable(false)
    self.sceneLv:enableAreaChange(true)
    
    self.sceneArr = {0,0}
    for key, var in pairs(SceneConfig) do
        table.insert(self.sceneArr,var.id)
    end
    table.insert(self.sceneArr,0)
    table.insert(self.sceneArr,0)

    -- add items
    for i=1,#self.sceneArr do
        local item = self.sceneLv:newItem()
        self["sceneitem"..i] = ShopItem.new(Shop_Type.scene,self.sceneArr[i])
        item:addContent(self["sceneitem"..i])
        item:setItemSize(170, 142)
        self.sceneLv:addItem(item)
    end
    
    for key, var in ipairs(sceneX) do
        self["sceneX"..key] = var
    end
    self.sceneLv:reload()
    
    local oldP = self["sceneX"..self.sceneId]
    local newP = 0
    if self.sceneId > 1 then
        newP = oldP-self["sceneX3"]
    end
    if self.sceneId >=3 then
        newP = self["sceneX1"]- oldP
    end
    self.sceneLv:scrollToPos(newP, 0)
    
    if not GameDataManager.getSceneModle(self.sceneId) then
    	self.sceneBuy:setVisible(true)
    else
        self.sceneBuy:setVisible(false)
    end
end

function ShopView:initDiamondList()
    self.diamondId = 1
    self.diaLv = CustomListView.new {
        viewRect = cc.rect(0, self.Panel_diamond:getPositionY(), 750, 200),
        direction = cc.ui.UIScrollView.DIRECTION_HORIZONTAL}
        :onTouch(handler(self, self.touchListenerDiamond))
        :addTo(self)
    self.diaLv:setBounceable(false)
    self.diaLv:enableAreaChange(true)

    local diaArr = {0,0}
    for key, var in pairs(DiamondConfig) do
        table.insert(diaArr,var.id)
    end
    table.insert(diaArr,0)
    table.insert(diaArr,0)

    -- add items
    for i=1,#diaArr do
        local item = self.diaLv:newItem()
        self["diaitem"..i] = ShopItem.new(Shop_Type.diamond,diaArr[i])
        item:addContent(self["diaitem"..i])
        item:setItemSize(150, 142)
        self.diaLv:addItem(item)
    end
    for key, var in ipairs(shopX) do
        self["diamondX"..key] = var
    end
    self.diaLv:reload()
    
    local oldP = self["diamondX"..self.diamondId]
    local newP = 0
    if self.diamondId > 1 then
        newP = oldP-self["diamondX3"]
    end
    if self.diamondId >=3 then
        newP = self["diamondX1"]- oldP
    end
    self.diaLv:scrollToPos(newP, 0)
end

function ShopView:touchListenerRole(event)
    local listView = event.listView
    if "clicked" == event.name then
        local curClick = event.itemPos
        Tools.printDebug("点击的是",curClick)
        if curClick<3 or curClick>#RoleConfig+2  then
            Tools.printDebug("无效点击")
            return
        end
        local headItem = event.item:getContent()
        local id = headItem:getShopTypeID()
        if self.roleId == id then
            return
        end
        self.roleId = id
        if GameDataManager.getRoleModle(id) then
            GameDataManager.changeRole(id)
            GameDataManager.setCurFightRole(id)
            self.roleBuy:setVisible(false)
        else
            self.roleBuy:setVisible(true)
        end

        self.roleName:setButtonImage("disabled",RoleConfig[id].roleName)
--        self.priceImg_role:setButtonImage("disabled",RoleConfig[id].priceRes)
        self.rolePrice:setString(RoleConfig[id].diamond)

        local oldP = self["roleX"..self.roleId]
        local newP = 0
        if self.roleId > 1 then
            newP = oldP-self["roleX3"]
        end
        if self.roleId >=3 then
            newP = self["roleX1"]- oldP
        end

        self.roleLv:scrollToPos(newP, 0)

        self.roleMove = false
    elseif "itemAppear" ==  event.name then

    elseif "moved" == event.name then
        self.roleMove = true
    elseif "ended" == event.name then

    elseif "scrollStop" == event.name then
        self.roleMove = false
        local headItem = event.item:getContent()
        local id = headItem:getShopTypeID()
        if GameDataManager.getRoleModle(id) then
            GameDataManager.changeRole(id)
            GameDataManager.setCurFightRole(id)
            self.roleBuy:setVisible(false)
        else
            self.roleBuy:setVisible(true)
        end
        self.roleName:setButtonImage("disabled",RoleConfig[id].roleName)
--        self.priceImg_role:setButtonImage("disabled",RoleConfig[id].priceRes)
        self.rolePrice:setString(RoleConfig[id].diamond)
    end
end

function ShopView:touchListenerScene(event)
    local listView = event.listView
    if "clicked" == event.name then
        local curClick = event.itemPos
        Tools.printDebug("点击的是",curClick)
        if curClick<3 or curClick>#SceneConfig+2  then
            Tools.printDebug("无效点击")
            return
        end
        local headItem = event.item:getContent()
        local id = headItem:getShopTypeID()
        if self.sceneId == id then
        	return
        end
        self.sceneId = id
        if GameDataManager.getSceneModle(id) then
            GameDataManager.setCurFightScene(id)
            self.sceneBuy:setVisible(false)
        else
            self.sceneBuy:setVisible(true)
        end
       
        self.sceneName:setButtonImage("disabled",SceneConfig[id].sceneName)
--        self.priceImg_scene:setButtonImage("disabled",SceneConfig[id].priceRes)
        self.scenePrice:setString(SceneConfig[id].diamond)
        
        local oldP = self["sceneX"..self.sceneId]
        local newP = 0
        if self.sceneId > 1 then
            newP = oldP-self["sceneX3"]
        end
        if self.sceneId >=3 then
            newP = self["sceneX1"]- oldP
        end

        self.sceneLv:scrollToPos(newP, 0)
        
        self.move = false
    elseif "itemAppear" ==  event.name then

    elseif "moved" == event.name then
        self.move = true
--        Tools.printDebug("brj listview pos:",self.sceneLv.scrollNode:getPositionX())
    elseif "ended" == event.name then

    elseif "scrollStop" == event.name then
        self.move = false
        local headItem = event.item:getContent()
        local id = headItem:getShopTypeID()
        if GameDataManager.getSceneModle(id) then
            GameDataManager.setCurFightScene(id)
            self.sceneBuy:setVisible(false)
        else
            self.sceneBuy:setVisible(true)
        end
        self.sceneName:setButtonImage("disabled",SceneConfig[id].sceneName)
--        self.priceImg_scene:setButtonImage("disabled",SceneConfig[id].priceRes)
        self.scenePrice:setString(SceneConfig[id].diamond)
    end
end

function ShopView:touchListenerDiamond(event)
    local listView = event.listView
    if "clicked" == event.name then
        local curClick = event.itemPos
        Tools.printDebug("点击的是",curClick)
        if curClick<3 or curClick>#DiamondConfig+2  then
            Tools.printDebug("无效点击")
            return
        end
        local headItem = event.item:getContent()
        local id = headItem:getShopTypeID()
        if self.diamondId == id then
            return
        end
        self.diamondId = id

        self.priceImg_diamond:setButtonImage("disabled",DiamondConfig[id].priceRes)

        local oldP = self["diamondX"..self.diamondId]
        local newP = 0
        if self.diamondId > 1 then
            newP = oldP-self["diamondX3"]
        end
        if self.diamondId >=3 then
            newP = self["diamondX1"]- oldP
        end

        self.diaLv:scrollToPos(newP, 0)

        self.moveDia = false
    elseif "itemAppear" ==  event.name then

    elseif "moved" == event.name then
        self.moveDia = true
    elseif "ended" == event.name then

    elseif "scrollStop" == event.name then
        self.moveDia = false
        local headItem = event.item:getContent()
        local id = headItem:getShopTypeID()
        self.priceImg_diamond:setButtonImage("disabled",DiamondConfig[id].priceRes)
    end
end

function ShopView:updateScene(parm)
    local id = parm.data.id
    self["sceneitem"..(id+2)]:updateSelf()
    self.sceneBuy:setVisible(false)
end

function ShopView:updateRole(parm)
    local id = parm.data.id
    self["roleitem"..(id+2)]:updateSelf()
    self.roleBuy:setVisible(false)
end

function ShopView:updateDiamond()
    self.DiamondCount:setString(GameDataManager.getDiamond())
end

function ShopView:onCleanup(parameters)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_SCENE)
    GameDispatcher:removeListenerByName(EventNames.EVENT_DIAMOND_CHANGE)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_ROLE)
    
    if self.m_Handler then
        Scheduler.unscheduleGlobal(self.m_Handler)
        self.m_Handler=nil
    end
end

--关闭界面调用
function ShopView:toClose(_clean)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_SCENE)
    GameDispatcher:removeListenerByName(EventNames.EVENT_DIAMOND_CHANGE)
    GameDispatcher:removeListenerByName(EventNames.EVENT_UPDATE_ROLE)
    
    ShopView.super.toClose(self,_clean)
end

return ShopView