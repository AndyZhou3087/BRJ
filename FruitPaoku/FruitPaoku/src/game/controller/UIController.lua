
local UIController = class("UIController")

function UIController:ctor()
    --监听关卡界面打开
--    GameDispatcher:addListener(EventNames.EVENT_OPEN_LEVELSELECT,handler(self,self.openSelectUI))
--  
--    --商店界面打开
--    GameDispatcher:addListener(EventNames.EVENT_OPEN_SHOP,handler(self,self.openShop))
--    
--    --首充界面打开
--    GameDispatcher:addListener(EventNames.EVENT_OPEN_GREENERGIFT,handler(self,self.openGreener))
end

--打开关卡选择界面
function UIController:openSelectUI(par)
    print("chshl Open levelselect!")
	local _levelSelectUI = LevelSelectView.new(par)
    _levelSelectUI:setPosition((display.width-_levelSelectUI:getSize().width)*0.5,(display.height-_levelSelectUI:getSize().height)*0.5)
    _levelSelectUI:show(UI_ZORDER.VIEW_ZORDER)
    --AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.UI_Open_Sound,false)
end


--打开商店界面
function UIController:openShop(parameters)
    print("chshl Open the shop!")
    local _shopUI = ShopView.new(parameters.data)
    _shopUI:show(UI_ZORDER.VIEW_ZORDER)
end


--打开首充礼包界面
function UIController:openGreener(id)
    print("hc Open the Greener!")
    local _greenerUI = GreenerGiftView.new(id.data)
    _greenerUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开遮罩界面
function UIController:openClipp(parameters)
    print("chshl Open the shop!")
    local _clippUI = ClippingView.new(parameters.data)
    _clippUI:show(UI_ZORDER.TIPS_ZORDER)
end

--飘字
function UIController:flyText(parameters)
    local _flyUi = FlyText.new(parameters.data)
    _flyUi:show(UI_ZORDER.TIPS_ZORDER)
end

----游戏提示
--function  UIController:gameTitle(parameters)
--    local _titleUi = GameTitle.new(parameters.data)
--    _titleUi:show(UI_ZORDER.VIEW_ZORDER)
--end

--打开读取界面
function UIController:openLoad(parameters)
	print("loading View")
	local _loadUi = LoadingView.new(parameters.data)
    _loadUi:show(UI_ZORDER.TIPS_ZORDER)
end


--打开解锁界面
function UIController:unlockView(parameters)
    local _unlock = NewUserGuide.new(parameters.data)
    _unlock:show(UI_ZORDER.VIEW_ZORDER)
end

--打开签到界面
function UIController:openSign()
    print("chshl Open the sign!")
    local _SigninUI = SignUI.new(par)
    _SigninUI:setPosition((display.width-_SigninUI:getSize().width)*0.5,(display.height-_SigninUI:getSize().height)*0.5)
    _SigninUI:show(UI_ZORDER.VIEW_ZORDER)
end

----打开抽奖界面
--function UIController:openLottery()
--    print("chshl Open the lottery!")
--end

--打开设置界面
function UIController:openSetting()
    local _setUi = SetUi.new()
    _setUi:show(UI_ZORDER.ALERT_ZORDER)
end

--打开挑战模式界面
function UIController:openChallenge()
    print("chshl Open the challenge!")
end

--打开角色界面
function UIController:openRole(par)
    print("chshl Open the role!")
    local _roleSelectUI = ShopView.new(par.data)
    _roleSelectUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开新版角色界面
function UIController:openRoleNew(par)
    local _roleView = RoleNew.new(par.data)
    _roleView:show(UI_ZORDER.VIEW_ZORDER)
end
--打开二级角色界面openRoleMsg
function UIController:openRoleMsg(par)
    local _roleMsgUI = RoleMsg.new(par.data)
    _roleMsgUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开宠物界面
function UIController:openPet(par)
    print("chshl Open the pet!")
    local _petUI = PetUI.new(par.data)
    _petUI:show(UI_ZORDER.VIEW_ZORDER)
--    local _roleSelectUI = ShopView.new(par.data)
--    _roleSelectUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开工厂界面
function UIController:openFactory()
    print("chshl Open the factory!")
end



--打开星星领取界面
function UIController:openStar(par)
    print("星星奖励")
    local _starUI = StarAward.new(par.data)
    _starUI:show(UI_ZORDER.VIEW_ZORDER)
end


--打开体力界面
function UIController:openPower(par)
    print("chshl Open the power!")
    local _powerUI = PowerUI.new(par.data)
    _powerUI:show(UI_ZORDER.VIEW_ZORDER)
end


--购买优惠礼包（食物工厂）
function UIController:onBuyGift()
    printInfo("chshl 购买礼包！")        
    self.m_main:updateTop()
end

--购买加速
function UIController:onBuyAccel(par)
    print("chshl 购买加速！")
    local id=par.data.id
     local machineInfo=DataPersistence.getAttribute("machine_info")
    machineInfo[id].timeLeave=0
    DataPersistence.updateAttribute("machine_info",machineInfo)
    GameDispatcher:dispatch(EventNames.EVENT_DIAMOND_CHANGE)
    GameDispatcher:dispatch(EventNames.EVENT_BTN_CHANGE)
    GameDispatcher:dispatch(EventNames.EVENT_FOOD,{id=par.data.id})
end

--打开食物工厂界面
function UIController:openFood()
    print("chshl Open foodfactory!")
    local _factoryUI=FoodFactoryUI.new()
    _factoryUI:show(UI_ZORDER.VIEW_ZORDER)

    --self.m_fact=_factoryUI
end

--打开道具购买界面
function UIController:openBuyProp(prop)
    local _propUI = BuyProp.new(prop.data)
    _propUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开战斗结算界面
function UIController:openOver(parm)
    AudioManager.setFightSoundEnable(false)
    local _foverUI =FightOver.new(parm.data)
    _foverUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开复活界面
function UIController:openFuhuo(parm)
    AudioManager.setFightSoundEnable(false)
    local _fuhuoUI = FuHuo.new(parm.data)
    _fuhuoUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开战斗准备界面
function UIController:openReady(parm)
    local _ReadyUI =DistributionFight.new(parm.data)
    _ReadyUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开战斗准备任务说明界面
function UIController:openTaskPs(parm)
    AudioManager.setFightSoundEnable(false)
    local _taskUI = TaskPs.new(parm.data)
    _taskUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开暂停结算界面
function UIController:openPause(parm)
    local _PauseUI =PauseUI.new(parm.data)
    _PauseUI:show(UI_ZORDER.ALERT_ZORDER)
end

--打开gm界面
function UIController:openGMView(parameters)
    local _gmUI =GMView.new()
    _gmUI:show(UI_ZORDER.VIEW_ZORDER)
end

--打开地图预览界面
function UIController:openMapPreview(parameters)
    AudioManager.setFightSoundEnable(false)
    local _preView = MapPreview.new()
    _preView:show(UI_ZORDER.VIEW_ZORDER)
end

--打开击杀怪物提示界面
function UIController:openMonsterTips(parameters)
    if not tolua.isnull(self.m_monTips) then
    	self.m_monTips:dispose()
    	Tools.delayCallFunc(0.001,function()
            self.m_monTips = MonsterTips.new(parameters.data)
            self.m_monTips:show(UI_ZORDER.VIEW_ZORDER)
            local _size = self.m_monTips:getSize()
            self.m_monTips:setPosition(display.width-_size.width,display.height-_size.height-60)
    	end)
    else
        self.m_monTips = MonsterTips.new(parameters.data)
        self.m_monTips:show(UI_ZORDER.VIEW_ZORDER)
        local _size = self.m_monTips:getSize()
        self.m_monTips:setPosition(display.width-_size.width,display.height-_size.height-60)
    end
end

--打开章节选择界面
function UIController:openChapterUI(parameters)
    local _chapter = ChapterView.new()
    _chapter:show(UI_ZORDER.VIEW_ZORDER)
end

--打开功能解锁提示界面
function UIController:openUnlockTips(parameters)
    local _unLock = UnLockTips.new(parameters.data)
    _unLock:show(UI_ZORDER.VIEW_ZORDER)
end

--打开道具属性界面
function UIController:openPropsUI(parameters)
    local propsUI = PropsUI.new(parameters.data)
    propsUI:show(UI_ZORDER.ALERT_ZORDER)
end
--打开技能突破界面
function UIController:openAdvanceUI(parameters)
    local m_advanceUI = AdvanceUI.new(parameters.data)
    m_advanceUI:show(UI_ZORDER.ALERT_ZORDER)
end

--打开游戏提示界面
function UIController:openFloorTips(parameters)
    if not tolua.isnull(self.m_floorTips) then
        self.m_floorTips:dispose()
        Tools.delayCallFunc(0.001,function()
            self.m_floorTips = FloorTips.new(parameters.data)
            self.m_floorTips:show(UI_ZORDER.VIEW_ZORDER)
        end)
    else
        self.m_floorTips = FloorTips.new(parameters.data)
        self.m_floorTips:show(UI_ZORDER.VIEW_ZORDER)
    end
end

--打开楼层强制提示界面
function UIController:openForceTips(parameters)
    AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Force_Tips)
    
    local _forceTips = ForceTips.new(parameters.data)
    _forceTips:show(UI_ZORDER.VIEW_ZORDER)
end

--打开排行榜界面
function UIController:openRankView(parameters)
    local _rankView = RankView.new()
    _rankView:show(UI_ZORDER.VIEW_ZORDER)
    if string.len(GameDataManager.AccountName) < 1 then
    	self:openRankName()
    end
end

--打开排行榜起名界面
function UIController:openRankName(parameters)
    local _rankName = RankName.new()
    _rankName:show(UI_ZORDER.VIEW_ZORDER)
end

--打开累积充值奖励领取界面
function UIController:openChargeAward(parameters)
    local _chargeView = ChargeAward.new()
    _chargeView:show(UI_ZORDER.VIEW_ZORDER)
end

--打开积分抽奖界面
function UIController:openPointsRaffle(parameters)
    local _pointsRaffle = PointsRaffle.new()
    _pointsRaffle:show(UI_ZORDER.VIEW_ZORDER)
end

--打开积分抽十次界面
function UIController:openRaffleResult(parameters)
    local _raffleResult = RaffleResult.new()
    _raffleResult:show(UI_ZORDER.VIEW_ZORDER)
end

--打开积分获取规则界面
function UIController:openPointsInfo(parameters)
    local _pointsInfo = PointsInfo.new()
    _pointsInfo:show(UI_ZORDER.VIEW_ZORDER)
end

--打开失败界面
function UIController:openFailUI(parameters)
    local _fail = FailUI.new()
    _fail:show(UI_ZORDER.VIEW_ZORDER)
end

function UIController:openReward(parameters)
    local _ward = FloorReward.new(parameters.data)
    _ward:show(UI_ZORDER.VIEW_ZORDER)
end

return UIController