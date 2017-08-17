--[[
场景配置
]]

SceneConfig={}

SceneConfig[1]=
    {
        id = 1,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_1.png",
        sceneIcon = "shop/scene_1.png",
        priceRes = "shop/price_6.png",
        des = "战争废墟",
        rmb = 0,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        bgColor = {cc.c4b(170,97,140,255),cc.c4b(247,220,221,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        offset = {-32,50,394,1300,0,32,0},--{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差}
    }

SceneConfig[2]=
    {
        id = 2,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_2.png",
        sceneIcon = "shop/scene_2.png",
        priceRes = "shop/price_6.png",
        des = "黄沙万里",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_2,
        bgColor = {cc.c4b(145,196,224,255),cc.c4b(102,195,229,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        offset = {0,50,379,-300,0,285,0},
    }

SceneConfig[3]=
    {
        id = 3,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_3.png",
        sceneIcon = "shop/scene_3.png",
        priceRes = "shop/price_6.png",
        des = "海底",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_3,
        bgColor = {cc.c4b(1,189,255,255),cc.c4b(62,237,255,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Scene_sea.png",
        --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差}
        offset = {0,0,521,343,0,0,0},
    }

SceneConfig[4]=
    {
        id = 4,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_4.png",
        sceneIcon = "shop/scene_4.png",
        priceRes = "shop/price_6.png",
        des = "奇幻森林",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_4,
        bgColor = {cc.c4b(122,242,245,255),cc.c4b(28,227,243,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        offset = {0,0,400,0,0,0,0},
    }

SceneConfig[5]=
    {
        id = 5,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_5.png",
        sceneIcon = "shop/scene_5.png",
        priceRes = "shop/price_6.png",
        des = "冰天雪地",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_5,
        bgColor = {cc.c4b(232,237,253,255),cc.c4b(93,196,248,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差,panel2偏移差}
        offset = {0,0,827,1000,-46,0,0},
    }
    
SceneConfig[6]=
    {
        id = 6,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_6.png",
        sceneIcon = "shop/scene_6.png",
        priceRes = "shop/price_6.png",
        des = "魔幻城堡",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_6,
        bgColor = {cc.c4b(226,251,72,255),cc.c4b(121,208,221,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差,panel2偏移差}
        offset = {0,0,850,800,0,0,0},
    }
    
SceneConfig[7]=
    {
        id = 7,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_7.png",
        sceneIcon = "shop/scene_7.png",
        priceRes = "shop/price_6.png",
        des = "太空历险",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_7,
        bgColor = {cc.c4b(5,18,36,255),cc.c4b(4,9,16,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差,panel2偏移差}
        offset = {0,113,343,1000,0,0,0},
    }
    
SceneConfig[8]=
    {
        id = 8,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_8.png",
        sceneIcon = "shop/scene_8.png",
        priceRes = "shop/price_6.png",
        des = "万里长城",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_8,
        bgColor = {cc.c4b(123,203,220,255),cc.c4b(44,190,232,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差,panel2偏移差}
        offset = {0,0,343,1000,0,0,0},
    }
    
SceneConfig[9]=
    {
        id = 9,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_9.png",
        sceneIcon = "shop/scene_9.png",
        priceRes = "shop/price_6.png",
        des = "探索月球",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_9,
        bgColor = {cc.c4b(9,134,185,255),cc.c4b(3,30,39,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差,panel2偏移差}
        offset = {0,0,0,1000,0,0,0},
    }
    
SceneConfig[10]=
    {
        id = 10,
        type = Shop_Type.scene,
        sceneName = "shop/scenename_10.png",
        sceneIcon = "shop/scene_10.png",
        priceRes = "shop/price_6.png",
        des = "儿童乐园",
        rmb = 6,   --人民币购买价格
        diamond = 50,   --钻石购买价格
        payId = Payment.Scene_10,
        bgColor = {cc.c4b(226,244,184,255),cc.c4b(95,197,148,255)},
        specailRes = "#Room_special_3.png",
        specailRes2 = "#Room_special_1.png",
        --{panel2的偏移量，panel3的距离差，panel2的初始高度，panel3的初始高度，panel1位置的偏移量,panel2的距离差,panel2偏移差}
        offset = {0,0,700,1700,0,0,0},
    }