--[[
商城界面
]]
local BaseUI = require("game.view.BaseUI")
local ShopView = class("ShopView",BaseUI)

function ShopView:ctor(parameters)
    ShopView.super.ctor(self)

    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)

    self.m_json = cc.uiloader:load("json/ShopView.json")
    self:addChild(self.m_json)
    
    local Diamond = cc.uiloader:seekNodeByName(self.m_json,"Diamond")
    Diamond:setPositionY(display.top-34)
    local Image_6 = cc.uiloader:seekNodeByName(self.m_json,"Image_6")
    Image_6:setPositionY(display.bottom+107)
    
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
        
    end)
    
    --弹礼包
    local RightBtn = cc.uiloader:seekNodeByName(self.m_json,"RightBtn")
    local RightImg = cc.uiloader:seekNodeByName(self.m_json,"RightImg")
    RightImg:setButtonEnabled(false)
    RightBtn:onButtonPressed(function(_event)    --按下
        RightImg:setButtonImage("disabled","shop/shop_gift_2.png")
    end)
    RightBtn:onButtonRelease(function(_event)    --触摸离开
        RightImg:setButtonImage("disabled","shop/shop_gift_1.png")
    end)
    RightBtn:onButtonClicked(function (event)
        Tools.printDebug("brj hopscotch 礼包弹出")

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

    end)
    
    --角色购买
    self.roleBuy = cc.uiloader:seekNodeByName(self.m_json,"roleBuy")
    self.priceImg_role = cc.uiloader:seekNodeByName(self.m_json,"priceImg_role")
    self.priceImg_role:setButtonEnabled(false)
    self.roleBuy:onButtonPressed(function(_event)    --按下
        self.priceImg_role:setPositionY(self.priceImg_role:getPositionY()-8)
    end)
    self.roleBuy:onButtonRelease(function(_event)    --触摸离开
        self.priceImg_role:setPositionY(self.priceImg_role:getPositionY()+8)
    end)
    self.roleBuy:onButtonClicked(function (event)
        Tools.printDebug("brj hopscotch 购买 角色")

    end)
    
    --场景购买
    self.sceneBuy = cc.uiloader:seekNodeByName(self.m_json,"sceneBuy")
    self.priceImg_scene = cc.uiloader:seekNodeByName(self.m_json,"priceImg_scene")
    self.priceImg_scene:setButtonEnabled(false)
    self.sceneBuy:onButtonPressed(function(_event)    --按下
        self.priceImg_scene:setPositionY(self.priceImg_scene:getPositionY()-8)
    end)
    self.sceneBuy:onButtonRelease(function(_event)    --触摸离开
        self.priceImg_scene:setPositionY(self.priceImg_scene:getPositionY()+8)
    end)
    self.sceneBuy:onButtonClicked(function (event)
        Tools.printDebug("brj hopscotch 购买 场景")

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
        Tools.printDebug("brj hopscotch 购买 钻石")

    end)
    
    --listitem 高度142

end


--关闭界面调用
function ShopView:toClose(_clean)
    ShopView.super.toClose(self,_clean)
end

return ShopView