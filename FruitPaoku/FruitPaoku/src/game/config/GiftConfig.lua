--[[
角色礼包配置
]]

GiftConfig = {}

GIFT_TYPE =
{
    Role = 1,
    Vip = 2,
    Common = 3,
}

GiftConfig[1] = 
{
    id = 1,
    type = GIFT_TYPE.Role,
    roleId = 2,
    roleImg = "ui/RoleDes_1.png",
    bg = "ui/Rolebg_1.jpg",
    titleImg = "ui/RoleGift_banner3.png",
    frameImg = "ui/RoleGift_frame1.png",
    caseImg = "ui/RoleGift_f1.png",
    roleDes = "见习忍者用户专属礼包",
    roleHead = "ui/RoleHead_1.png",
    rewardImg = "ui/RoleCost_1.png",
    price = 6,
    reward = {role = 2,diamond = 60},
    payId = Payment.RoleGift_1,
}

GiftConfig[2] = 
    {
        id = 2,
        type = GIFT_TYPE.Role,
        roleId = 3,
        roleImg = "ui/RoleDes_4.png",
        bg = "ui/Rolebg_4.jpg",
        titleImg = "ui/RoleGift_banner2.png",
        frameImg = "ui/RoleGift_frame4.png",
        caseImg = "ui/RoleGift_f3.png",
        roleDes = "忍者老师用户专属礼包",
        roleHead = "ui/RoleHead_4.png",
        rewardImg = "ui/RoleCost_2.png",
        price = 10,
        reward = {role = 3,dayDiamond = 10},
        payId = Payment.RoleGift_2,
    }
    
GiftConfig[3] = 
    {
        id = 3,
        type = GIFT_TYPE.Role,
        roleId = 4,
        roleImg = "ui/RoleDes_3.png",
        bg = "ui/Rolebg_3.jpg",
        titleImg = "ui/RoleGift_banner2.png",
        frameImg = "ui/RoleGift_frame3.png",
        caseImg = "ui/RoleGift_f3.png",
        roleDes = "精英忍者用户专属礼包",
        roleHead = "ui/RoleHead_3.png",
        rewardImg = "ui/RoleCost_3.png",
        price = 15,
        reward = {role = 4,dayDiamond = 20},
        payId = Payment.RoleGift_3,
    }
    
GiftConfig[4] = 
    {
        id = 4,
        type = GIFT_TYPE.Role,
        roleId = 5,
        roleImg = "ui/RoleDes_2.png",
        bg = "ui/Rolebg_2.jpg",
        titleImg = "ui/RoleGift_banner1.png",
        frameImg = "ui/RoleGift_frame2.png",
        caseImg = "ui/RoleGift_f1.png",
        roleDes = "忍者教授用户专属礼包",
        roleHead = "ui/RoleHead_2.png",
        rewardImg = "ui/RoleCost_4.png",
        price = 20,
        reward = {role = 5,dayDiamond = 30},
        payId = Payment.RoleGift_4,
    }
    
GiftConfig[5] = 
    {
        id = 5,
        type = GIFT_TYPE.Vip,
--        roleId = 5,
--        roleImg = "ui/RoleDes_2.png",
--        bg = "ui/Rolebg_2.jpg",
--        titleImg = "ui/RoleGift_banner1.png",
--        frameImg = "ui/RoleGift_frame2.png",
--        caseImg = "ui/RoleGift_f1.png",
--        roleDes = "忍者教授用户专属礼包",
--        roleHead = "ui/RoleHead_2.png",
--        rewardImg = "ui/RoleCost_4.png",
        title = "新手VIP",
        price = 8,
        dayDiamond = 6,
        payId = Payment.VipGift_1,
    }
    
GiftConfig[6] = 
    {
        id = 6,
        type = GIFT_TYPE.Vip,
        --        roleId = 5,
        --        roleImg = "ui/RoleDes_2.png",
        --        bg = "ui/Rolebg_2.jpg",
        --        titleImg = "ui/RoleGift_banner1.png",
        --        frameImg = "ui/RoleGift_frame2.png",
        --        caseImg = "ui/RoleGift_f1.png",
        --        roleDes = "忍者教授用户专属礼包",
        --        roleHead = "ui/RoleHead_2.png",
        --        rewardImg = "ui/RoleCost_4.png",
        title = "银牌VIP",
        price = 10,
        dayDiamond = 10,
        payId = Payment.VipGift_2,
    }
    
GiftConfig[7] = 
    {
        id = 7,
        type = GIFT_TYPE.Vip,
        --        roleId = 5,
        --        roleImg = "ui/RoleDes_2.png",
        --        bg = "ui/Rolebg_2.jpg",
        --        titleImg = "ui/RoleGift_banner1.png",
        --        frameImg = "ui/RoleGift_frame2.png",
        --        caseImg = "ui/RoleGift_f1.png",
        --        roleDes = "忍者教授用户专属礼包",
        --        roleHead = "ui/RoleHead_2.png",
        --        rewardImg = "ui/RoleCost_4.png",
        title = "金牌VIP",
        price = 15,
        dayDiamond = 15,
        payId = Payment.VipGift_3,
    }
    
GiftConfig[8] = 
    {
        id = 8,
        type = GIFT_TYPE.Vip,
        --        roleId = 5,
        --        roleImg = "ui/RoleDes_2.png",
        --        bg = "ui/Rolebg_2.jpg",
        --        titleImg = "ui/RoleGift_banner1.png",
        --        frameImg = "ui/RoleGift_frame2.png",
        --        caseImg = "ui/RoleGift_f1.png",
        --        roleDes = "忍者教授用户专属礼包",
        --        roleHead = "ui/RoleHead_2.png",
        --        rewardImg = "ui/RoleCost_4.png",
        title = "钻石VIP",
        price = 20,
        dayDiamond = 25,
        payId = Payment.VipGift_4,
    }
    
GiftConfig[9] = 
    {
        id = 9,
        type = GIFT_TYPE.Vip,
        --        roleId = 5,
        --        roleImg = "ui/RoleDes_2.png",
        --        bg = "ui/Rolebg_2.jpg",
        --        titleImg = "ui/RoleGift_banner1.png",
        --        frameImg = "ui/RoleGift_frame2.png",
        --        caseImg = "ui/RoleGift_f1.png",
        --        roleDes = "忍者教授用户专属礼包",
        --        roleHead = "ui/RoleHead_2.png",
        --        rewardImg = "ui/RoleCost_4.png",
        title = "尊贵VIP",
        price = 30,
        dayDiamond = 50,
        payId = Payment.VipGift_5,
    }