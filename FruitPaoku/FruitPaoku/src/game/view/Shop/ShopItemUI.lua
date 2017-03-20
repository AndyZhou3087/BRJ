--[[
商店内容
]]
local ShopItemUI = class("ShopItemUI",function()
    return display.newNode()
end)

function ShopItemUI:ctor(shopId)

    --启用onCleanup函数
    self:setNodeEventEnabled(true)

    for var=1, 4 do
    	self:initContent(ShopConfig[(shopId-1)*4+var])
    end

end

--道具
function ShopItemUI:initContent(shopConfig)
    local content = cc.uiloader:load("ui/propListItem.json")
    self:addChild(content)
    content:setPosition(cc.p(0,0))
    --图片
    local bottom = cc.uiloader:seekNodeByName(content,"Button_2")
    bottom:setTouchSwallowEnabled(false)
    bottom:setButtonEnabled(false)
    bottom:setButtonImage("disabled",self.m_con.img)
    --文字
    local label = cc.uiloader:seekNodeByName(content,"Button_3")
    label:setTouchSwallowEnabled(false)
    label:setButtonEnabled(false)
    label:setButtonImage("disabled",self.m_con.labelImage)
    --道具功能描述
    local word = cc.uiloader:seekNodeByName(content,"Label_4")
    word:setString(self.m_con.detail)
    word:setWidth(200)
    word:getContentSize()
    --    local _lable = display.newTTFLabel({
    --        text=self.m_con.detail,
    --        size = 20,
    --        color = cc.c3b(139, 36, 19),
    --        align = cc.TEXT_ALIGNMENT_LEFT,
    --    })
    --    _lable:setAnchorPoint(0,0.5)
    --    _lable:setPosition(cc.p(142,73))
    --    content:addChild(_lable)
    --    _lable:getContentSize()
    --购买价格
    local pcount = cc.uiloader:seekNodeByName(content,"AtlasLabel_7")
    pcount:setString(self.m_con.price)
    --购买按钮
    local btnBuy = cc.uiloader:seekNodeByName(content,"Button_5")
    btnBuy:setTouchSwallowEnabled(false)
    btnBuy:onButtonClicked(function(event)
        if GameDataManager.getGoodsNum(self.m_con.id)<999 then
            if GameDataManager.getDiamond()>=self.m_con.price then
                AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type.Buy_Sound)
                GameDataManager.costDiamond(self.m_con.price)
                GameDataManager.addGoods(self.m_con.id,1)
                GameDataManager.addPoints(self.m_con.price*Diamond_Points)--花费钻石买道具赠送积分
                GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text="购买成功"})
            else
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_PROPUI,self.m_con)
            end
        else
            GameDispatcher:dispatch(EventNames.EVENT_FLY_TEXT,{text ="道具数量已达上限"})
        end
    end)

end


function ShopItemUI:onCleanup(parameters)
    if self.propFrame then
        GameDispatcher:removeListenerByHandle(self.propFrame)
        self.propFrame = nil
    end
end

function ShopItemUI:toClose(_clean)
    self:removeFromParent(_clean)
end

return ShopItemUI