--======================以下为房间列表配置(每十层房间配置)=============================
MapGroupConfigA={}

--此为关卡配置说明，最好不要删除
--{
--    _id = 1,   
--    --房间背景、地板与墙体数组,此id对应RoomsBgConfig配置文件,填0则视为对应楼层不出现(若为奔跑类型则取RoomFloorConfig中配置文件)
--    roomBgs = {1,2,1,2,1,2,3},
--   
--    --房间装饰物,此id对应OrnamentsConfig配置文件,填0则视为对应楼层不出现
--    ornaments = {1,1,1,1,1,1,1},
--   
--    --房间金币,此id对应CoinsConfig配置文件,填0则视为对应楼层不出现
--    coins = {0,0,0,1,1,0,0},
--   
--    --房间物品,此id对应RoomGoodsConfig配置文件,填0则视为对应楼层不出现
--    roomGoods = {0,0,0,0,0,1,0},
--}

MapGroupA = {ROOMBGSIZE_TYPE.Five,ROOMBGSIZE_TYPE.Four_1,ROOMBGSIZE_TYPE.Four}  --301-500层


--五块地板普通楼层1-30
--四块半过渡层31-60
--四块半地板普通楼层61-90
--四块过渡层91-120
--四块地板普通楼层121-150
--五块地板钢架楼层151-170
--四块半地板钢架楼层171-190
--四块地板钢架楼层191-210
--四块半向右倾斜211-230
--四块半向左倾斜231-250
--==========防止连续出现钢价层特殊楼层
MapGroupConfigA[9999]= 
    { 
        _id=9999,
        roomBgs={131,137,135,138,135,129,123,132,125,128}, --房间背景地面
        ornaments={233,228,219,216,225,207,236,218,214,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    }

MapGroupConfigA[8888]= 
    { 
        _id=8888, 
        roomBgs={161,167,165,168,165,159,153,162,155,158}, --房间背景地面
        ornaments={283,268,279,256,265,287,296,268,274,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    }

MapGroupConfigA[7777]= 
    { 
        _id=7777, 
        roomBgs={191,197,195,198,195,189,183,192,185,188}, --房间背景地面
        ornaments={333,328,319,316,325,307,306,318,314,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    }

--==========================================================================五块地板楼层1-30
MapGroupConfigA[1]= 
    { 
        _id=1, 
        roomBgs={131,137,135,138,135,129,123,132,125,128}, --房间背景地面
        ornaments={233,228,219,216,225,207,236,218,214,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
    
MapGroupConfigA[2]= 
    { 
        _id=2, 
        roomBgs={123,122,122,128,133,134,138,139,127,128}, --房间背景地面
        ornaments={241,223,236,209,210,215,224,231,218,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
    
MapGroupConfigA[3]= 
    { 
        _id=3, 
        roomBgs={137,135,129,137,135,125,122,128,123,128}, --房间背景地面
        ornaments={211,206,238,226,245,212,219,222,236,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
    
MapGroupConfigA[4]= 
    { 
        _id=4, 
        roomBgs={133,134,138,139,127,122,128,137,135,129}, --房间背景地面
        ornaments={213,226,231,222,217,208,216,235,242,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[5]= 
    { 
        _id=5, 
        roomBgs={123,122,128,131,137,135,129,137,135,129}, --房间背景地面
        ornaments={237,218,223,245,216,228,233,215,242,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
  
MapGroupConfigA[6]= 
    { 
        _id=6, 
        roomBgs={137,139,135,134,138,127,128,123,128,131}, --房间背景地面
        ornaments={222,235,248,217,212,216,208,210,219,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[7]= 
    { 
        _id=7, 
        roomBgs={131,131,123,132,138,135,138,127,122,128}, --房间背景地面
        ornaments={216,221,224,215,238,241,211,239,210,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[8]= 
    { 
        _id=8, 
        roomBgs={131,137,130,123,122,132,125,136,127,128}, --房间背景地面
        ornaments={248,215,236,220,235,242,234,216,219,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[9]= 
    { 
        _id=9, 
        roomBgs={123,122,136,127,122,128,123,136,135,129}, --房间背景地面
        ornaments={211,224,208,210,219,235,232,211,246,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[10]= 
    { 
        _id=10, 
        roomBgs={123,136,135,138,135,138,127,132,134,129}, --房间背景地面
        ornaments={237,242,237,233,222,211,210,228,237,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[11]= 
    { 
        _id=11, 
        roomBgs={131,133,129,137,135,138,135,138,127,128}, --房间背景地面
        ornaments={236,225,221,230,244,229,237,218,247,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[12]= 
    { 
        _id=12, 
        roomBgs={131,133,129,137,135,129,123,136,135,129}, --房间背景地面
        ornaments={226,220,219,228,238,240,245,216,239,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[13]= 
    { 
        _id=13, 
        roomBgs={133,138,135,125,128,137,127,132,125,128}, --房间背景地面
        ornaments={246,227,232,248,226,214,222,235,218,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[14]= 
    { 
        _id=14, 
        roomBgs={123,132,138,135,129,137,135,138,127,128}, --房间背景地面
        ornaments={234,228,233,217,210,229,230,245,211,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[15]= 
    { 
        _id=15, 
        roomBgs={137,135,138,127,132,125,136,127,122,128}, --房间背景地面
        ornaments={235,242,247,216,235,218,219,224,235,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    }
    
MapGroupConfigA[16]= 
    { 
        _id=16, 
        roomBgs={131,137,139,127,128,131,133,125,122,128}, --房间背景地面
        ornaments={233,221,217,210,248,239,242,250,248,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[17]= 
    { 
        _id=17, 
        roomBgs={131,123,122,128,133,138,135,134,125,128}, --房间背景地面
        ornaments={214,235,228,236,244,249,250,219,247,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[18]= 
    { 
        _id=18, 
        roomBgs={123,128,133,134,125,132,138,139,127,128}, --房间背景地面
        ornaments={236,216,234,228,214,219,222,235,218,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[19]= 
    { 
        _id=19, 
        roomBgs={137,135,129,123,128,133,129,123,122,128}, --房间背景地面
        ornaments={215,234,242,225,228,230,219,248,217,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigA[20]= 
    { 
        _id=20, 
        roomBgs={123,122,128,131,123,122,128,123,122,128}, --房间背景地面
        ornaments={226,217,234,225,232,218,219,210,218,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

--=========================================================================四块半过渡层31-60
MapGroupConfigA[31]= 
    { 
        _id=31, 
        roomBgs={170,167,165,168,165,159,153,162,155,158}, --房间背景地面
        ornaments={256,258,279,286,292,267,276,298,274,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 
    
MapGroupConfigA[32]= 
    { 
        _id=32, 
        roomBgs={123,152,152,158,163,164,168,169,157,158}, --房间背景地面
        ornaments={271,278,265,259,290,295,284,271,268,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 
    
MapGroupConfigA[33]= 
    { 
        _id=33, 
        roomBgs={172,165,159,167,165,155,152,158,153,158}, --房间背景地面
        ornaments={271,256,278,286,295,262,259,272,296,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 
    
MapGroupConfigA[34]= 
    { 
        _id=34, 
        roomBgs={171,164,168,169,157,152,158,167,165,159}, --房间背景地面
        ornaments={283,276,281,262,257,298,296,275,262,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[35]= 
    { 
        _id=35, 
        roomBgs={123,152,158,161,167,165,159,167,165,159}, --房间背景地面
        ornaments={267,278,263,285,296,278,263,275,262,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 
  
MapGroupConfigA[36]= 
    { 
        _id=36, 
        roomBgs={172,169,165,164,168,157,158,153,158,161}, --房间背景地面
        ornaments={292,265,298,287,272,266,298,290,279,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[37]= 
    { 
        _id=37, 
        roomBgs={170,161,153,162,168,165,168,157,152,158}, --房间背景地面
        ornaments={298,261,294,255,288,271,290,299,300,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[38]= 
    { 
        _id=38, 
        roomBgs={170,167,160,153,152,162,155,166,157,158}, --房间背景地面
        ornaments={274,255,266,270,285,272,264,286,299,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[39]= 
    { 
        _id=39, 
        roomBgs={123,162,168,157,152,158,153,166,165,159}, --房间背景地面
        ornaments={271,284,278,260,259,275,282,291,296,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[40]= 
    { 
        _id=40, 
        roomBgs={123,166,165,168,165,168,169,165,164,159}, --房间背景地面
        ornaments={267,282,277,263,262,291,260,258,257,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[41]= 
    { 
        _id=41, 
        roomBgs={170,163,168,169,165,168,165,168,157,158}, --房间背景地面
        ornaments={266,275,281,300,294,289,277,268,287,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[42]= 
    { 
        _id=42, 
        roomBgs={170,163,159,167,165,159,153,166,165,159}, --房间背景地面
        ornaments={258,280,279,268,288,270,265,296,289,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[43]= 
    { 
        _id=43, 
        roomBgs={171,168,165,155,158,167,157,162,155,158}, --房间背景地面
        ornaments={295,257,262,278,286,294,262,275,258,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[44]= 
    { 
        _id=44, 
        roomBgs={123,162,168,165,159,167,165,168,157,158}, --房间背景地面
        ornaments={284,288,273,267,290,299,280,275,261,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[45]= 
    { 
        _id=45, 
        roomBgs={172,165,168,157,162,155,166,157,152,158}, --房间背景地面
        ornaments={278,282,277,266,255,298,289,274,265,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    }
    
MapGroupConfigA[46]= 
    { 
        _id=46, 
        roomBgs={171,168,169,157,158,161,163,155,152,158}, --房间背景地面
        ornaments={263,281,277,260,258,297,272,260,288,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[47]= 
    { 
        _id=47, 
        roomBgs={171,154,152,158,163,168,165,164,155,158}, --房间背景地面
        ornaments={284,285,268,276,294,259,300,279,287,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    }

MapGroupConfigA[48]= 
    { 
        _id=48, 
        roomBgs={123,158,163,164,155,162,168,169,157,158}, --房间背景地面
        ornaments={296,286,274,258,264,299,282,275,268,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[49]= 
    { 
        _id=49, 
        roomBgs={172,165,159,153,158,163,159,153,152,158}, --房间背景地面
        ornaments={269,274,282,275,268,290,259,258,277,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[50]= 
    { 
        _id=50, 
        roomBgs={123,152,158,161,153,152,158,153,152,158}, --房间背景地面
        ornaments={286,277,284,265,292,258,279,260,288,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[51]= 
    { 
        _id=51, 
        roomBgs={123,158,163,42,35,162,168,169,157,158}, --房间背景地面
        ornaments={276,276,284,55,264,299,282,275,258,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[52]= 
    { 
        _id=52, 
        roomBgs={172,165,159,153,6,11,7,3,152,158}, --房间背景地面
        ornaments={275,274,262,295,48,50,29,288,257,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

MapGroupConfigA[53]= 
    { 
        _id=53, 
         roomBgs={170,2,158,161,153,10,4,152,158,161}, --房间背景地面
        ornaments={268,47,284,275,292,28,39,290,258,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
	transit = true,
    } 

--=========================================================================四块半地板楼层61-90

MapGroupConfigA[61]= 
    { 
        _id=61, 
        roomBgs={161,167,165,168,165,159,153,162,155,158}, --房间背景地面
        ornaments={283,268,279,256,265,287,296,268,274,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 
    
MapGroupConfigA[62]= 
    { 
        _id=62, 
        roomBgs={153,152,152,158,163,164,168,169,157,158}, --房间背景地面
        ornaments={291,273,266,259,290,275,284,291,278,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 
    
MapGroupConfigA[63]= 
    { 
        _id=63, 
        roomBgs={167,165,159,167,165,155,152,158,153,158}, --房间背景地面
        ornaments={291,276,298,258,275,282,259,272,286,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 
    
MapGroupConfigA[64]= 
    { 
        _id=64, 
        roomBgs={163,164,168,169,157,152,158,167,165,159}, --房间背景地面
        ornaments={263,256,281,272,267,294,286,275,282,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[65]= 
    { 
        _id=65, 
        roomBgs={153,152,158,161,167,165,159,167,165,159}, --房间背景地面
        ornaments={257,288,293,275,266,258,293,275,262,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 
  
MapGroupConfigA[66]= 
    { 
        _id=66, 
        roomBgs={167,169,165,164,168,157,158,153,158,161}, --房间背景地面
        ornaments={272,285,268,277,292,286,298,260,279,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[67]= 
    { 
        _id=67, 
        roomBgs={161,161,153,162,168,165,168,157,152,158}, --房间背景地面
        ornaments={266,281,274,295,278,261,281,269,280,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[68]= 
    { 
        _id=68, 
        roomBgs={161,167,160,153,152,162,155,166,157,158}, --房间背景地面
        ornaments={278,264,282,290,264,271,277,289,279,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[69]= 
    { 
        _id=69, 
        roomBgs={153,162,168,157,152,158,153,166,165,159}, --房间背景地面
        ornaments={261,274,258,290,289,285,272,261,296,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[70]= 
    { 
        _id=70, 
        roomBgs={153,166,165,168,165,168,157,162,155,158}, --房间背景地面
        ornaments={257,272,287,263,282,261,280,288,267,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[71]= 
    { 
        _id=71, 
        roomBgs={161,163,159,167,165,168,165,168,157,158}, --房间背景地面
        ornaments={266,275,281,300,294,289,277,258,262,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[72]= 
    { 
        _id=72, 
        roomBgs={161,163,159,167,165,159,153,166,165,159}, --房间背景地面
        ornaments={256,280,279,258,288,300,295,276,259,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[73]= 
    { 
        _id=73, 
        roomBgs={163,168,165,155,158,167,169,165,155,158}, --房间背景地面
        ornaments={276,257,282,258,276,294,282,275,268,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[74]= 
    { 
        _id=74, 
        roomBgs={153,162,168,165,159,167,165,168,157,158}, --房间背景地面
        ornaments={264,288,273,277,300,289,298,275,281,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[75]= 
    { 
        _id=75, 
        roomBgs={167,165,168,157,162,155,166,157,152,158}, --房间背景地面
        ornaments={265,282,277,266,285,278,289,264,275,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    }
    
MapGroupConfigA[76]= 
    { 
        _id=76, 
        roomBgs={161,167,169,157,158,161,163,155,152,158}, --房间背景地面
        ornaments={273,261,257,290,278,289,272,260,278,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[77]= 
    { 
        _id=77, 
        roomBgs={161,153,152,158,163,168,165,164,155,158}, --房间背景地面
        ornaments={284,255,278,266,284,259,260,285,267,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[78]= 
    { 
        _id=78, 
        roomBgs={153,158,163,164,155,162,168,169,157,158}, --房间背景地面
        ornaments={276,256,284,298,274,269,272,265,258,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[79]= 
    { 
        _id=79, 
        roomBgs={167,165,159,153,158,163,159,153,152,158}, --房间背景地面
        ornaments={255,274,282,264,298,300,259,268,277,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[80]= 
    { 
        _id=80, 
        roomBgs={153,152,158,161,153,152,158,153,152,158}, --房间背景地面
        ornaments={256,257,284,275,262,258,299,260,278,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

--=========================================================================四块过渡层91-120
MapGroupConfigA[91]= 
    { 
        _id=91, 
        roomBgs={200,197,195,198,195,189,183,192,185,188}, --房间背景地面
        ornaments={336,348,329,336,342,337,326,318,334,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 
    
MapGroupConfigA[92]= 
    { 
        _id=92, 
        roomBgs={153,182,182,188,193,194,198,199,187,188}, --房间背景地面
        ornaments={321,348,325,339,320,315,324,331,338,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 
    
MapGroupConfigA[93]= 
    { 
        _id=93, 
        roomBgs={202,195,189,197,195,185,182,188,183,188}, --房间背景地面
        ornaments={311,326,318,346,325,312,309,312,346,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 
    
MapGroupConfigA[94]= 
    { 
        _id=94, 
        roomBgs={201,194,198,199,187,182,188,197,195,189}, --房间背景地面
        ornaments={343,306,311,332,347,328,336,325,312,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[95]= 
    { 
        _id=95, 
        roomBgs={153,182,188,191,197,195,189,197,195,189}, --房间背景地面
        ornaments={314,328,333,324,306,328,343,345,312,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 
  
MapGroupConfigA[96]= 
    { 
        _id=96, 
        roomBgs={202,199,195,194,198,187,188,183,188,191}, --房间背景地面
        ornaments={322,315,328,337,342,326,308,320,329,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[97]= 
    { 
        _id=97, 
        roomBgs={200,191,183,192,198,195,198,187,182,188}, --房间背景地面
        ornaments={326,311,314,308,328,331,340,329,340,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[98]= 
    { 
        _id=98, 
        roomBgs={200,197,190,183,182,192,185,196,187,188}, --房间背景地面
        ornaments={334,305,346,320,335,322,314,336,329,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[99]= 
    { 
        _id=99, 
        roomBgs={153,192,198,187,182,188,183,196,195,189}, --房间背景地面
        ornaments={311,324,328,330,319,325,332,321,346,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[100]= 
    { 
        _id=100, 
        roomBgs={153,196,195,198,195,198,199,195,194,189}, --房间背景地面
        ornaments={327,312,327,333,342,311,320,338,327,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[101]= 
    { 
        _id=101, 
        roomBgs={200,193,198,199,195,198,195,198,187,188}, --房间背景地面
        ornaments={336,325,331,340,324,339,327,318,307,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[102]= 
    { 
        _id=102, 
        roomBgs={200,193,189,197,195,189,183,196,195,189}, --房间背景地面
        ornaments={346,330,329,318,348,330,305,316,329,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[103]= 
    { 
        _id=103, 
        roomBgs={201,198,195,185,188,197,187,192,185,188}, --房间背景地面
        ornaments={305,307,322,338,346,344,312,325,328,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[104]= 
    { 
        _id=104, 
        roomBgs={153,192,198,195,189,197,195,198,187,188}, --房间背景地面
        ornaments={334,308,313,327,321,339,340,315,321,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[105]= 
    { 
        _id=105, 
        roomBgs={202,195,198,187,192,185,196,187,182,188}, --房间背景地面
        ornaments={315,312,327,346,325,308,329,314,335,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    }
    
MapGroupConfigA[106]= 
    { 
        _id=106, 
        roomBgs={201,198,199,187,188,191,193,185,182,188}, --房间背景地面
        ornaments={323,311,327,330,318,327,322,330,328,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[107]= 
    { 
        _id=107, 
        roomBgs={201,184,182,188,193,198,195,194,185,188}, --房间背景地面
        ornaments={344,315,328,336,324,309,320,319,327,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[108]= 
    { 
        _id=108, 
        roomBgs={153,188,193,194,185,192,198,199,187,188}, --房间背景地面
        ornaments={326,306,314,338,324,309,322,315,328,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[109]= 
    { 
        _id=109, 
        roomBgs={202,195,189,183,188,193,189,183,182,188}, --房间背景地面
        ornaments={305,324,332,325,328,320,319,318,327,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[110]= 
    { 
        _id=110, 
        roomBgs={153,182,188,191,183,182,188,183,182,188}, --房间背景地面
        ornaments={335,327,334,315,342,308,329,310,338,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[111]= 
    { 
        _id=111, 
        roomBgs={153,188,193,42,35,192,198,199,187,188}, --房间背景地面
        ornaments={346,326,324,75,334,329,312,345,308,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[112]= 
    { 
        _id=112, 
        roomBgs={202,195,189,183,6,11,7,3,182,188}, --房间背景地面
        ornaments={325,324,312,345,32,24,41,348,307,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

MapGroupConfigA[113]= 
    { 
        _id=113, 
         roomBgs={200,2,188,191,183,10,4,182,188,191}, --房间背景地面
        ornaments={316,36,344,315,322,36,25,340,338,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
	transit_1=true,
    } 

--=========================================================================四块地板楼层121-150
MapGroupConfigA[121]= 
    { 
        _id=121, 
        roomBgs={191,197,195,198,195,189,183,192,185,188}, --房间背景地面
        ornaments={333,328,319,316,325,307,306,318,314,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
    
MapGroupConfigA[122]= 
    { 
        _id=122, 
        roomBgs={183,182,182,188,193,194,198,199,187,188}, --房间背景地面
        ornaments={341,323,336,309,310,315,324,331,318,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
    
MapGroupConfigA[123]= 
    { 
        _id=123, 
        roomBgs={197,195,189,197,195,185,182,188,183,188}, --房间背景地面
        ornaments={311,306,338,326,345,312,319,322,336,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
    
MapGroupConfigA[124]= 
    { 
        _id=124, 
        roomBgs={193,194,198,199,187,182,188,197,195,189}, --房间背景地面
        ornaments={313,326,331,322,317,308,316,335,342,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[125]= 
    { 
        _id=125, 
        roomBgs={183,182,188,191,197,195,189,197,195,189}, --房间背景地面
        ornaments={337,318,323,345,316,328,333,315,342,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
  
MapGroupConfigA[126]= 
    { 
        _id=126, 
        roomBgs={197,199,195,194,198,187,188,183,188,191}, --房间背景地面
        ornaments={322,335,348,317,312,316,308,310,319,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[127]= 
    { 
        _id=127, 
        roomBgs={191,191,183,192,198,195,198,187,182,188}, --房间背景地面
        ornaments={316,331,324,315,338,341,311,309,310,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[128]= 
    { 
        _id=128, 
        roomBgs={191,197,190,183,182,192,185,196,187,188}, --房间背景地面
        ornaments={308,315,336,320,335,342,334,316,319,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[129]= 
    { 
        _id=129, 
        roomBgs={183,192,198,187,182,188,183,196,195,189}, --房间背景地面
        ornaments={311,324,308,310,319,335,332,311,306,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[130]= 
    { 
        _id=130, 
        roomBgs={183,196,195,198,195,198,187,192,185,188}, --房间背景地面
        ornaments={307,342,337,333,322,311,310,308,327,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[131]= 
    { 
        _id=131, 
        roomBgs={191,193,189,197,195,198,195,198,187,188}, --房间背景地面
        ornaments={336,325,321,330,344,329,337,318,317,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[132]= 
    { 
        _id=132, 
        roomBgs={191,193,189,197,195,189,183,196,195,189}, --房间背景地面
        ornaments={316,320,319,308,338,340,345,316,329,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[133]= 
    { 
        _id=133, 
        roomBgs={193,198,195,185,188,197,187,192,185,188}, --房间背景地面
        ornaments={316,327,332,348,336,314,322,335,318,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[134]= 
    { 
        _id=134, 
        roomBgs={183,192,198,195,189,197,195,198,187,188}, --房间背景地面
        ornaments={334,328,333,317,310,329,330,345,311,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[135]= 
    { 
        _id=135, 
        roomBgs={197,195,198,187,192,185,196,187,182,188}, --房间背景地面
        ornaments={335,342,347,316,335,318,319,324,335,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    }
    
MapGroupConfigA[136]= 
    { 
        _id=136, 
        roomBgs={191,197,199,187,188,191,193,185,182,188}, --房间背景地面
        ornaments={333,321,317,310,308,329,342,350,348,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[137]= 
    { 
        _id=137, 
        roomBgs={191,183,182,188,193,198,195,194,185,188}, --房间背景地面
        ornaments={314,335,328,336,344,349,350,319,347,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[138]= 
    { 
        _id=138, 
        roomBgs={183,188,193,194,185,192,198,199,187,188}, --房间背景地面
        ornaments={346,316,334,328,314,319,322,335,318,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[139]= 
    { 
        _id=139, 
        roomBgs={197,195,189,183,188,193,189,183,182,188}, --房间背景地面
        ornaments={315,334,342,325,328,330,319,308,327,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[140]= 
    { 
        _id=140, 
        roomBgs={183,182,188,191,183,182,188,183,182,188}, --房间背景地面
        ornaments={316,317,314,325,332,318,329,310,318,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

--=========================================================================五块钢架楼层151-170
 MapGroupConfigA[151]= 
    { 
        _id=151, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2201,2202,2201,2202,2201,2202,2201,2202,2201,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,9},     --左边默认停留的楼层位置
        right = {3,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
--=======================================================================四块半钢架楼层171-190
MapGroupConfigA[171]= 
    { 
        _id=171, 
         roomBgs={3006,3006,3006,3006,3006,3006,3006,3006,3006,158}, --房间背景地面
        ornaments={2301,2302,2301,2302,2301,2302,2301,2302,2301,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+117,Room_Distance.x+553},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[172]= 
    { 
        _id=172, 
        roomBgs={3006,3006,3006,3006,3006,3006,3006,3006,3006,158}, --房间背景地面
        ornaments={2302,2301,2302,2301,2302,2301,2302,2301,2302,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+117,Room_Distance.x+553},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

--=======================================================================四块钢架楼层191-210
MapGroupConfigA[191]= 
    { 
        _id=191, 
         roomBgs={3007,3007,3007,3007,3007,3007,3007,3007,3007,188}, --房间背景地面
        ornaments={2301,2302,2301,2302,2301,2302,2301,2302,2301,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+142,Room_Distance.x+530},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigA[192]= 
    { 
        _id=192, 
        roomBgs={3007,3007,3007,3007,3007,3007,3007,3007,3007,188}, --房间背景地面
        ornaments={2302,2301,2302,2301,2302,2301,2302,2301,2302,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+142,Room_Distance.x+530},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

--==========================================================================四块半向右倾斜211-230
MapGroupConfigA[211]= 
    { 
        _id=211, 
        roomBgs={1081,1085,1081,1086,1087,1091,1089,1083,1082,158}, --房间背景地面
        ornaments={267,275,286,294,271,287,275,262,298,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[212]= 
    { 
        _id=212, 
        roomBgs={1081,1086,1087,1091,1090,1084,1086,1087,1083,158}, --房间背景地面
        ornaments={279,265,266,274,281,297,285,272,268,251}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[213]= 
    { 
        _id=213, 
        roomBgs={1088,1083,1086,1091,1089,1091,1089,1083,1082,158}, --房间背景地面
        ornaments={276,265,266,284,291,277,285,262,258,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[214]= 
    { 
        _id=214, 
        roomBgs={1088,1091,1090,1090,1089,1087,1083,1086,1091,158}, --房间背景地面
        ornaments={281,275,296,264,271,257,265,282,298,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[215]= 
    { 
        _id=215, 
        roomBgs={1088,1087,1087,1091,1090,1090,1089,1083,1082,158}, --房间背景地面
        ornaments={283,275,276,264,291,287,255,272,268,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

--===========================================================================四块半向左倾斜231-250
MapGroupConfigA[231]= 
    { 
        _id=231, 
        roomBgs={2001,2005,2008,2011,2009,2004,2006,2011,2009,158}, --房间背景地面
        ornaments={287,275,266,294,271,267,255,292,278,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[232]= 
    { 
        _id=232, 
        roomBgs={2001,2002,2006,2006,2011,2010,2009,2004,2010,158}, --房间背景地面
        ornaments={259,265,276,264,291,287,275,262,258,253}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[233]= 
    { 
        _id=233, 
        roomBgs={2001,2005,2005,2008,2006,2011,2003,2010,2009,158}, --房间背景地面
        ornaments={256,275,266,284,291,297,285,272,278,252}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[234]= 
    { 
        _id=234, 
        roomBgs={2008,2011,2010,2009,2011,2009,2004,2010,2009,158}, --房间背景地面
        ornaments={281,275,276,264,291,257,255,282,278,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 

MapGroupConfigA[235]= 
    { 
        _id=235, 
        roomBgs={2008,2011,2010,2009,2011,2009,2011,2009,2011,158}, --房间背景地面
        ornaments={273,265,256,284,271,297,265,282,278,254}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Four_1,
    } 
