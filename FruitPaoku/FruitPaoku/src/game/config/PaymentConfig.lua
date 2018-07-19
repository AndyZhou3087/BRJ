--[[
支付相关配置文件
]]
Payment=
{
        Diamond_1 = "rz001", --1元20钻商品
        Diamond_2 = "rz002", --3元66钻商品
        Diamond_3 = "rz003", --8元128钻商品
        Diamond_4 = "rz004", --12元188钻商品
        Diamond_5 = "rz014", --18元288钻商品
        Diamond_6 = "rz015", --25元388钻商品
        Diamond_7 = "rz016", --30元588钻商品
        Gift_1 = "rz006", --1元金币礼包
        Gift_2 = "rz007", --30元钻石礼包
        Power_1 = "rz005", --无限体力
        Power_2 = 8, --1点体力
        Revive = 9,  --复活6元
        
        --角色满级支付id
        RoleLevel_1 = "rz012",  --6元
        RoleLevel_2 = "rz012",
        RoleLevel_3 = "rz012",
        RoleLevel_4 = "rz012",
        RoleLevel_5 = "rz012",       
        
        --购买角色礼包支付id
        RoleGift_1 = "rz008",  --6元
        RoleGift_2 = "rz009",  --12元
        RoleGift_3 = "rz010",  --18元
        RoleGift_4 = "rz011",  --25元
        
        --vip礼包支付
        VipGift_1 = "rzjxkp.by.8", --8元
        VipGift_2 = "rzjxkp.by.10", --10元
        VipGift_3 = "rzjxkp.by.15", --15元
        VipGift_4 = "rzjxkp.by.20", --20元
        VipGift_5 = "rzjxkp.by.30", --30元
        
        --其它礼包(首页出现)
        NewGift = "rzjxkp.lb.6",  --6元新手礼包
        ProGift = "rzjxkp.lb.8",  --8元进阶礼包
        PropsGift = "rzjxkp.lb.10",  --10元道具大礼包
        WealthGift = "rzjxkp.lb.15",  --15元财富大礼包
        LuxuryGift = "rzjxkp.lb.20",   --20元豪华大礼包
        --游戏中出现
        NewGift_1 = "rzjxkp.lb.6.1",  --6元新手礼包
        ProGift_1 = "rzjxkp.lb.8.1",  --8元进阶礼包
        PropsGift_1 = "rzjxkp.lb.10.1",  --10元道具大礼包
        WealthGift_1 = "rzjxkp.lb.15.1",  --15元财富大礼包
        LuxuryGift_1 = "rzjxkp.lb.20.1",   --20元豪华大礼包
        GoldGift = "rzjxkp.lb.2.1",  --2元金币礼包
        DiamondGift = "rzjxkp.lb.30.1",   --30元钻石礼包
        
        --退出游戏出现
        Exit_NewGift = "rzjxkp.tc.6",
        Exit_ProGift = "rzjxkp.tc.8",
        Exit_PropsGift = "rzjxkp.tc.10",
        Exit_WealthGift = "rzjxkp.tc.15",
        Exit_LuxuryGift = "rzjxkp.tc.20",
        Exit_GoldGift = "rzjxkp.tc.2",
        Exit_DiamondGift = "rzjxkp.tc.30",
        
--        --获取对应物品价格,单位:分，如果是钻石商品则额外会返回钻石数量
--        getPrice = function(_itemId)
--            if Payment.Diamond_1==_itemId then
--        		return 100,12
--        	elseif Payment.Diamond_1_1==_itemId then
--                return 100,20
--            elseif Payment.Diamond_2==_itemId  then
--                return 600,78
--            elseif Payment.Diamond_2_1==_itemId then
--                return 600,120
--            elseif Payment.Diamond_3==_itemId  then
--                return 1000,138
--            elseif Payment.Diamond_3_1==_itemId then
--                return 1000,200
--            elseif Payment.Diamond_4==_itemId  then
--                return 2000,280
--            elseif Payment.Diamond_4_1==_itemId then
--                return 2000,400
--            elseif Payment.Month_Gift == _itemId  then
--                return 2000,"vip_gift",280
--            elseif Payment.Limit_Gift == _itemId  then
--                return 1000,"limit_gift",138
--            elseif Payment.Fresh_Gift == _itemId  then
--                return 100,"fresh_gift",188
--            elseif Payment.Relive == _itemId  then
--                return 200,"relive",20
--            else
--                return 0,0
--        	end
--        end,
}

    
