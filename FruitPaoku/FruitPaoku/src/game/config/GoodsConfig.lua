--[[
道具配置
]]

GoodsConfig = {}

GOODS_TYPE =
    {
        MadCow = 1,   --疯牛药剂
        TopSpeed = 2,   --极速飞行
        Protect = 3,   --保护罩
        DoubleScore = 4,     --双倍得分
        Relive = 5,    --生命接力/复活
    }

GoodsConfig[1]=
    {
        id = 1,
        type = GOODS_TYPE.MadCow,       --道具类型
        discrebe = "疯牛药剂",
        res = "ui/good_3.png",
        time = 8,   --时间
        speedIndex = 2,    --速度加快倍数
        msg = "化身重甲疯牛，所向披靡",     --道具信息
        cost = 25   --道具价格
    }

GoodsConfig[2]=
    {
        id = 2,
        type = GOODS_TYPE.TopSpeed,       --道具类型
        discrebe = "极速飞行",
        res = "ui/good_2.png",
        time = 5,   --飞行时间
        speedIndex = 3,    --速度加快倍数
        radius = 320,   --吸收金币道具范围
        msg = "急速飞行一段时间,自带磁铁功能",
        cost = 10   --道具价格
    }

GoodsConfig[3]=
    {
        id = 3,
        type = GOODS_TYPE.Protect,       --道具类型
        discrebe = "保护罩",
        res = "ui/good_1.png",
        time = 15,   --护盾
        msg = "保护主角,吸收一次伤害",
        cost = 5   --道具价格
    }

GoodsConfig[4]=
    {
        id = 4,
        type = GOODS_TYPE.DoubleScore,       --道具类型
        discrebe = "双倍得分",
        res = "ui/fight_5.png",
        cost = 500,   --价格
    }

GoodsConfig[5]=
    {
        id = 5,
        type = GOODS_TYPE.Relive,       --道具类型
        discrebe = "生命接力",
        res = "ui/fight_4.png",
        cost = 800,   --价格
        time = 3,   --时间
    }
    