
--======================以下为房间列表配置(每十层房间配置)=============================
MapGroupConfigB={}

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

MapGroupB = {ROOMBGSIZE_TYPE.Six,ROOMBGSIZE_TYPE.Five_1,ROOMBGSIZE_TYPE.Five}  --151-300层

--六块地板普通楼层1-30
--五块半过渡层31-60
--五块半地板普通楼层61-90
--五块过渡层91-120
--五块地板普通楼层121-150
--六块地板钢架楼层151-170
--五块半地板钢架楼层171-1200
--五块地板钢架楼层2011-230
--五块半向右倾斜231-240
--五块半向左倾斜241-250

--==========防止连续出现钢价层特殊楼层
MapGroupConfigB[9999]= 
    { 
        _id=9999, 
        roomBgs={71,77,75,78,75,69,63,72,65,68}, --房间背景地面
        ornaments={123,118,139,146,122,137,116,108,114,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    }

MapGroupConfigB[8888]= 
    { 
        _id=8888, 
        roomBgs={101,107,105,108,105,99,93,102,95,98}, --房间背景地面
        ornaments={183,178,169,186,175,167,196,178,184,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    }
    
MapGroupConfigB[7777]= 
    { 
        _id=7777, 
        roomBgs={131,137,135,138,135,129,123,132,125,128}, --房间背景地面
        ornaments={233,228,219,216,225,207,206,218,214,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    }


--强制过渡层
MapGroupConfigB[10000]= 
    { 
        _id=10000, 
        roomBgs={6,15,5,72,78,75,78,67,62,68}, --房间背景地面
        ornaments={26,21,134,145,108,131,120,139,140,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 


--==========================================================================六块地板楼层1-30
MapGroupConfigB[1]= 
    { 
        _id=1, 
        roomBgs={71,77,75,78,75,69,63,72,65,68}, --房间背景地面
        ornaments={123,118,139,146,122,137,116,108,114,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
    
MapGroupConfigB[2]= 
    { 
        _id=2, 
        roomBgs={63,62,62,68,73,74,78,79,67,68}, --房间背景地面
        ornaments={121,133,136,119,130,145,124,131,108,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
    
MapGroupConfigB[3]= 
    { 
        _id=3, 
        roomBgs={77,75,69,77,75,65,62,68,63,68}, --房间背景地面
        ornaments={131,126,108,116,145,132,109,142,136,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
    
MapGroupConfigB[4]= 
    { 
        _id=4, 
        roomBgs={73,74,78,79,67,62,68,77,75,69}, --房间背景地面
        ornaments={123,136,111,142,137,148,106,135,142,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[5]= 
    { 
        _id=5, 
        roomBgs={63,62,68,71,77,75,69,77,75,69}, --房间背景地面
        ornaments={127,138,143,135,106,128,143,115,132,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
  
MapGroupConfigB[6]= 
    { 
        _id=6, 
        roomBgs={77,79,75,74,78,67,68,63,68,71}, --房间背景地面
        ornaments={143,124,108,147,132,146,128,130,109,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[7]= 
    { 
        _id=7, 
        roomBgs={71,71,63,72,78,75,78,67,62,68}, --房间背景地面
        ornaments={116,121,134,145,108,131,120,139,140,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[8]= 
    { 
        _id=8, 
        roomBgs={71,77,70,63,62,72,65,76,67,68}, --房间背景地面
        ornaments={114,125,106,140,135,122,134,146,109,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[9]= 
    { 
        _id=9, 
        roomBgs={63,72,78,67,62,68,63,76,75,69}, --房间背景地面
        ornaments={111,124,138,140,109,125,132,141,136,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[10]= 
    { 
        _id=10, 
        roomBgs={63,76,75,78,75,78,67,72,64,68}, --房间背景地面
        ornaments={107,132,127,113,142,131,150,128,107,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[11]= 
    { 
        _id=11, 
        roomBgs={71,73,69,77,75,78,75,78,67,68}, --房间背景地面
        ornaments={106,125,131,140,124,119,107,148,127,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[12]= 
    { 
        _id=12, 
        roomBgs={71,73,69,77,75,69,63,76,75,69}, --房间背景地面
        ornaments={116,130,129,108,148,130,115,116,139,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[13]= 
    { 
        _id=13, 
        roomBgs={73,78,75,65,68,77,67,72,65,68}, --房间背景地面
        ornaments={136,147,142,138,126,114,122,135,108,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[14]= 
    { 
        _id=14, 
        roomBgs={63,72,78,75,69,77,75,78,67,68}, --房间背景地面
        ornaments={114,108,123,107,130,109,150,145,131,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[15]= 
    { 
        _id=15, 
        roomBgs={77,75,78,79,75,65,76,67,62,68}, --房间背景地面
        ornaments={115,122,147,136,145,128,109,134,145,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    }
    
MapGroupConfigB[16]= 
    { 
        _id=16, 
        roomBgs={73,78,79,67,68,71,73,65,62,68}, --房间背景地面
        ornaments={113,121,107,140,148,137,122,150,108,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[17]= 
    { 
        _id=17, 
        roomBgs={73,65,62,68,73,78,75,74,65,68}, --房间背景地面
        ornaments={114,125,138,106,144,139,140,129,107,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[18]= 
    { 
        _id=18, 
        roomBgs={63,68,73,74,65,72,78,79,67,68}, --房间背景地面
        ornaments={126,136,144,148,134,129,112,145,108,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[19]= 
    { 
        _id=19, 
        roomBgs={77,75,69,63,68,73,69,63,62,68}, --房间背景地面
        ornaments={105,134,122,105,148,150,139,107,124,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[20]= 
    { 
        _id=20, 
        roomBgs={63,62,68,71,63,62,68,63,62,68}, --房间背景地面
        ornaments={126,147,114,135,112,108,149,150,137,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[21]= 
    { 
        _id=21, 
        roomBgs={63,68,73,42,35,72,78,79,67,68}, --房间背景地面
        ornaments={146,116,124,75,144,139,122,145,105,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[22]= 
    { 
        _id=22, 
        roomBgs={77,75,69,63,6,11,7,3,62,68}, --房间背景地面
        ornaments={105,114,142,135,38,40,29,138,147,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[23]= 
    { 
        _id=23, 
        roomBgs={63,2,68,71,63,42,68,63,68,71}, --房间背景地面
        ornaments={135,37,124,105,142,78,109,150,108,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
--=========================================================================五块半过渡楼层31-60
MapGroupConfigB[31]= 
    { 
        _id=31, 
        roomBgs={110,107,105,108,105,99,93,102,95,98}, --房间背景地面
        ornaments={166,158,179,186,192,167,176,198,174,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 
    
MapGroupConfigB[32]= 
    { 
        _id=32, 
        roomBgs={63,92,92,98,103,104,108,109,97,98}, --房间背景地面
        ornaments={171,178,165,159,190,195,184,171,168,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 
    
MapGroupConfigB[33]= 
    { 
        _id=33, 
        roomBgs={112,105,99,107,105,95,92,98,93,98}, --房间背景地面
        ornaments={171,156,178,186,195,162,159,172,196,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 
    
MapGroupConfigB[34]= 
    { 
        _id=34, 
        roomBgs={111,104,108,109,97,92,98,107,105,99}, --房间背景地面
        ornaments={173,176,181,162,157,198,196,175,162,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[35]= 
    { 
        _id=35, 
        roomBgs={63,92,98,101,107,105,99,107,105,99}, --房间背景地面
        ornaments={167,178,163,185,196,178,163,175,162,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 
  
MapGroupConfigB[36]= 
    { 
        _id=36, 
        roomBgs={112,109,105,104,108,97,98,93,98,101}, --房间背景地面
        ornaments={182,165,198,187,172,166,198,190,179,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[37]= 
    { 
        _id=37, 
        roomBgs={110,101,93,102,108,105,108,97,92,98}, --房间背景地面
        ornaments={196,161,194,155,188,171,190,199,200,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[38]= 
    { 
        _id=38, 
        roomBgs={110,107,100,93,92,102,95,106,97,98}, --房间背景地面
        ornaments={164,155,166,170,185,172,164,186,199,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[39]= 
    { 
        _id=39, 
        roomBgs={63,102,108,97,92,98,93,106,105,99}, --房间背景地面
        ornaments={181,184,178,160,159,175,182,191,196,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[40]= 
    { 
        _id=40, 
        roomBgs={63,106,105,108,105,108,109,105,104,99}, --房间背景地面
        ornaments={197,182,177,163,162,191,160,158,157,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[41]= 
    { 
        _id=41, 
        roomBgs={110,103,108,109,105,108,105,108,97,98}, --房间背景地面
        ornaments={176,175,181,200,194,189,177,168,187,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[42]= 
    { 
        _id=42, 
        roomBgs={110,103,99,107,105,99,93,106,105,99}, --房间背景地面
        ornaments={186,180,179,168,188,170,165,196,189,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[43]= 
    { 
        _id=43, 
        roomBgs={111,108,105,95,98,107,97,102,95,98}, --房间背景地面
        ornaments={195,157,162,178,186,194,162,175,158,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[44]= 
    { 
        _id=44, 
        roomBgs={63,102,108,105,99,107,105,108,97,98}, --房间背景地面
        ornaments={184,188,173,167,190,199,180,175,161,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[45]= 
    { 
        _id=45, 
        roomBgs={112,105,108,97,102,95,106,97,92,98}, --房间背景地面
        ornaments={175,182,177,166,155,198,189,174,165,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    }
    
MapGroupConfigB[46]= 
    { 
        _id=46, 
        roomBgs={111,108,109,97,98,101,103,95,92,98}, --房间背景地面
        ornaments={183,181,177,160,158,197,172,160,188,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[47]= 
    { 
        _id=47, 
        roomBgs={111,94,92,98,103,108,105,104,95,98}, --房间背景地面
        ornaments={174,185,168,176,194,159,200,179,187,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[48]= 
    { 
        _id=48, 
        roomBgs={63,98,103,104,95,102,108,109,97,98}, --房间背景地面
        ornaments={176,186,174,158,164,199,182,175,168,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[49]= 
    { 
        _id=49, 
        roomBgs={112,105,99,93,98,103,99,93,92,98}, --房间背景地面
        ornaments={175,174,182,175,168,190,159,158,177,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[50]= 
    { 
        _id=50, 
        roomBgs={63,92,98,101,93,92,98,93,92,98}, --房间背景地面
        ornaments={166,177,184,165,192,158,179,160,188,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[51]= 
    { 
        _id=51, 
        roomBgs={63,98,103,42,35,102,108,109,97,98}, --房间背景地面
        ornaments={196,176,184,55,164,199,182,175,158,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[52]= 
    { 
        _id=52, 
        roomBgs={112,105,99,93,6,11,7,3,92,98}, --房间背景地面
        ornaments={185,174,162,195,28,30,19,188,157,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

MapGroupConfigB[53]= 
    { 
        _id=53, 
        roomBgs={110,2,98,101,93,12,4,92,98,101}, --房间背景地面
        ornaments={176,37,184,175,162,28,19,190,158,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
	transit = true,
    } 

--=========================================================================五块半地板楼层61-90
MapGroupConfigB[61]= 
    { 
        _id=61, 
        roomBgs={101,107,105,108,105,99,93,102,95,98}, --房间背景地面
        ornaments={183,178,169,186,175,167,196,178,184,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 
    
MapGroupConfigB[62]= 
    { 
        _id=62, 
        roomBgs={93,92,92,98,103,104,108,109,97,98}, --房间背景地面
        ornaments={191,163,176,199,180,155,164,191,178,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 
    
MapGroupConfigB[63]= 
    { 
        _id=63, 
        roomBgs={107,105,99,107,105,95,92,98,93,98}, --房间背景地面
        ornaments={191,186,178,186,195,172,199,182,176,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 
    
MapGroupConfigB[64]= 
    { 
        _id=64, 
        roomBgs={103,104,108,109,97,92,98,107,105,99}, --房间背景地面
        ornaments={193,156,161,172,167,188,176,195,182,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[65]= 
    { 
        _id=65, 
        roomBgs={93,92,98,101,107,105,99,107,105,99}, --房间背景地面
        ornaments={177,168,193,155,186,178,163,185,192,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 
  
MapGroupConfigB[66]= 
    { 
        _id=66, 
        roomBgs={107,109,105,104,108,97,98,93,98,101}, --房间背景地面
        ornaments={172,185,168,157,192,166,178,160,189,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[67]= 
    { 
        _id=67, 
        roomBgs={101,101,93,102,108,105,108,97,92,98}, --房间背景地面
        ornaments={156,181,174,165,188,191,161,179,180,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[68]= 
    { 
        _id=68, 
        roomBgs={101,107,100,93,92,102,95,106,97,98}, --房间背景地面
        ornaments={198,175,186,190,155,192,164,176,189,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[69]= 
    { 
        _id=69, 
        roomBgs={93,102,108,97,92,98,93,106,105,99}, --房间背景地面
        ornaments={171,184,178,180,169,175,192,191,186,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[70]= 
    { 
        _id=70, 
        roomBgs={93,106,105,108,105,108,97,102,104,99}, --房间背景地面
        ornaments={187,192,157,163,182,171,160,178,197,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[71]= 
    { 
        _id=71, 
        roomBgs={101,103,99,107,105,108,105,108,97,98}, --房间背景地面
        ornaments={156,155,171,180,164,199,157,168,187,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[72]= 
    { 
        _id=72, 
        roomBgs={101,103,99,107,105,99,93,106,105,99}, --房间背景地面
        ornaments={166,200,199,178,158,180,195,166,179,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[73]= 
    { 
        _id=73, 
        roomBgs={103,108,105,95,98,107,97,102,95,98}, --房间背景地面
        ornaments={169,187,159,168,196,194,175,164,178,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[74]= 
    { 
        _id=74, 
        roomBgs={93,102,108,105,99,107,105,108,97,98}, --房间背景地面
        ornaments={157,178,163,197,200,199,170,185,191,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[75]= 
    { 
        _id=75, 
        roomBgs={107,105,108,97,102,95,106,97,92,98}, --房间背景地面
        ornaments={175,182,157,196,175,188,194,184,175,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    }
    
MapGroupConfigB[76]= 
    { 
        _id=76, 
        roomBgs={101,107,109,97,98,101,103,95,92,98}, --房间背景地面
        ornaments={173,161,197,180,158,196,182,200,178,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[77]= 
    { 
        _id=77, 
        roomBgs={101,93,92,98,103,108,105,104,95,98}, --房间背景地面
        ornaments={184,165,178,186,164,169,170,199,187,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[78]= 
    { 
        _id=78, 
        roomBgs={93,98,103,104,95,102,108,109,97,98}, --房间背景地面
        ornaments={156,176,184,178,164,159,192,175,168,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[79]= 
    { 
        _id=79, 
        roomBgs={107,105,99,93,98,103,99,93,92,98}, --房间背景地面
        ornaments={155,164,172,165,178,160,159,168,187,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[80]= 
    { 
        _id=80, 
        roomBgs={93,92,98,101,93,92,98,93,92,98}, --房间背景地面
        ornaments={186,157,194,175,162,178,189,170,158,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    }
MapGroupConfigB[81]= 
    { 
        _id=81, 
        roomBgs={93,98,103,10,4,102,108,109,97,98}, --房间背景地面
        ornaments={186,166,174,25,184,189,172,165,198,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[82]= 
    { 
        _id=82, 
        roomBgs={107,105,99,93,6,11,7,3,92,98}, --房间背景地面
        ornaments={165,164,182,165,38,41,27,188,197,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[83]= 
    { 
        _id=83, 
        roomBgs={2,2,98,101,93,102,2,92,98,101}, --房间背景地面
        ornaments={26,197,174,185,172,158,39,200,198,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

--=========================================================================五块过渡楼层91-120
MapGroupConfigB[91]= 
    { 
        _id=91, 
         roomBgs={141,138,135,138,135,138,135,129,133,129}, --房间背景地面
        ornaments={223,248,239,246,222,217,236,248,224,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 
    
MapGroupConfigB[92]= 
    { 
        _id=92, 
        roomBgs={93,122,122,128,133,134,138,139,127,128}, --房间背景地面
        ornaments={211,223,206,209,240,235,224,241,248,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 
    
MapGroupConfigB[93]= 
    { 
        _id=93, 
        roomBgs={142,135,129,137,135,125,122,128,123,128}, --房间背景地面
        ornaments={221,226,238,206,245,242,239,222,236,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 
    
MapGroupConfigB[94]= 
    { 
        _id=94, 
        roomBgs={141,134,138,139,127,122,128,137,135,129}, --房间背景地面
        ornaments={237,236,213,222,247,238,226,215,242,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[95]= 
    { 
        _id=95, 
        roomBgs={93,122,128,131,137,135,129,137,135,129}, --房间背景地面
        ornaments={217,228,213,235,246,228,223,245,232,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 
  
MapGroupConfigB[96]= 
    { 
        _id=96, 
        roomBgs={142,139,135,134,138,127,128,123,128,131}, --房间背景地面
        ornaments={242,235,218,207,222,216,238,240,229,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[97]= 
    { 
        _id=97, 
        roomBgs={140,131,123,132,138,135,138,127,122,128}, --房间背景地面
        ornaments={236,211,244,235,208,221,250,249,210,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[98]= 
    { 
        _id=98, 
        roomBgs={140,137,130,123,122,132,125,136,127,128}, --房间背景地面
        ornaments={244,245,206,230,225,242,234,246,219,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[99]= 
    { 
        _id=99, 
        roomBgs={93,132,138,127,122,128,123,136,135,129}, --房间背景地面
        ornaments={231,224,228,220,209,215,232,241,226,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[100]= 
    { 
        _id=100, 
        roomBgs={93,136,135,138,135,138,139,135,134,129}, --房间背景地面
        ornaments={227,232,217,243,222,211,230,208,227,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[101]= 
    { 
        _id=101, 
        roomBgs={140,133,138,139,135,138,135,138,127,128}, --房间背景地面
        ornaments={216,225,231,240,224,239,227,218,247,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[102]= 
    { 
        _id=102, 
        roomBgs={140,133,129,137,135,129,123,136,135,129}, --房间背景地面
        ornaments={226,207,219,228,238,240,225,246,229,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[103]= 
    { 
        _id=103, 
        roomBgs={141,138,135,125,128,137,127,132,125,128}, --房间背景地面
        ornaments={233,227,212,208,246,234,242,235,228,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[104]= 
    { 
        _id=104, 
        roomBgs={93,132,138,135,129,137,135,138,127,128}, --房间背景地面
        ornaments={214,238,223,247,250,229,210,235,221,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[105]= 
    { 
        _id=105, 
        roomBgs={142,135,138,127,132,125,136,127,122,128}, --房间背景地面
        ornaments={209,242,207,226,215,248,239,224,245,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    }
    
MapGroupConfigB[106]= 
    { 
        _id=106, 
        roomBgs={141,138,139,127,128,131,133,125,122,128}, --房间背景地面
        ornaments={212,221,247,250,208,237,222,240,208,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[107]= 
    { 
        _id=107, 
        roomBgs={141,124,122,128,133,138,135,134,125,128}, --房间背景地面
        ornaments={244,245,228,216,224,219,220,249,207,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[108]= 
    { 
        _id=108, 
        roomBgs={93,128,133,134,125,132,138,139,127,128}, --房间背景地面
        ornaments={206,216,224,238,214,249,232,205,248,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[109]= 
    { 
        _id=109, 
        roomBgs={142,135,129,123,128,133,129,123,122,128}, --房间背景地面
        ornaments={225,214,232,225,248,230,209,248,227,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[110]= 
    { 
        _id=110, 
        roomBgs={93,122,128,131,123,122,128,123,122,128}, --房间背景地面
        ornaments={236,217,244,225,212,208,249,220,208,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[111]= 
    { 
        _id=111, 
        roomBgs={93,128,123,42,35,132,138,139,127,128}, --房间背景地面
        ornaments={206,216,257,75,234,209,222,235,248,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[112]= 
    { 
        _id=112, 
        roomBgs={142,135,129,123,6,11,7,3,122,128}, --房间背景地面
        ornaments={205,224,232,245,34,17,11,208,227,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

MapGroupConfigB[113]= 
    { 
        _id=113, 
        roomBgs={140,2,128,131,123,10,4,122,128,131}, --房间背景地面
        ornaments={226,24,234,225,232,37,29,240,238,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
	transit_1=true,
    } 

--=========================================================================五块地板楼层121-150
MapGroupConfigB[121]= 
    { 
        _id=121, 
        roomBgs={131,137,135,138,135,129,123,132,125,128}, --房间背景地面
        ornaments={233,228,219,216,225,207,206,218,214,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
    
MapGroupConfigB[122]= 
    { 
        _id=122, 
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
    
MapGroupConfigB[123]= 
    { 
        _id=123, 
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
    
MapGroupConfigB[124]= 
    { 
        _id=124, 
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

MapGroupConfigB[125]= 
    { 
        _id=125, 
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
  
MapGroupConfigB[126]= 
    { 
        _id=126, 
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

MapGroupConfigB[127]= 
    { 
        _id=127, 
        roomBgs={131,131,123,132,138,135,138,127,122,128}, --房间背景地面
        ornaments={216,231,224,215,238,241,211,209,210,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[128]= 
    { 
        _id=128, 
        roomBgs={131,137,130,123,122,132,125,136,127,128}, --房间背景地面
        ornaments={208,215,236,220,235,242,234,216,219,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[129]= 
    { 
        _id=129, 
        roomBgs={123,132,138,127,122,128,123,136,135,129}, --房间背景地面
        ornaments={211,224,208,210,219,235,232,211,206,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[130]= 
    { 
        _id=130, 
        roomBgs={123,136,135,138,135,138,127,132,134,129}, --房间背景地面
        ornaments={237,242,237,233,222,211,210,208,247,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[131]= 
    { 
        _id=131, 
        roomBgs={131,133,129,137,135,138,135,138,127,128}, --房间背景地面
        ornaments={246,225,221,230,244,229,237,218,217,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[132]= 
    { 
        _id=132, 
        roomBgs={131,133,129,137,135,129,123,136,135,129}, --房间背景地面
        ornaments={216,220,219,238,238,240,245,216,249,203}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[133]= 
    { 
        _id=133, 
        roomBgs={133,138,135,125,128,137,127,132,125,128}, --房间背景地面
        ornaments={216,227,232,248,246,214,222,235,218,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[134]= 
    { 
        _id=134, 
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

MapGroupConfigB[135]= 
    { 
        _id=135, 
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
    
MapGroupConfigB[136]= 
    { 
        _id=136, 
        roomBgs={131,137,139,127,128,131,133,125,122,128}, --房间背景地面
        ornaments={233,221,217,210,208,249,242,250,248,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[137]= 
    { 
        _id=137, 
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

MapGroupConfigB[138]= 
    { 
        _id=138, 
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

MapGroupConfigB[139]= 
    { 
        _id=139, 
        roomBgs={137,135,129,123,128,133,129,123,122,128}, --房间背景地面
        ornaments={215,234,242,225,228,230,219,208,237,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[140]= 
    { 
        _id=140, 
        roomBgs={123,122,128,131,123,122,128,123,122,128}, --房间背景地面
        ornaments={236,217,214,225,232,218,249,210,228,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
MapGroupConfigB[141]= 
    { 
        _id=141, 
        roomBgs={123,128,133,10,4,132,138,139,127,128}, --房间背景地面
        ornaments={246,237,244,37,28,245,232,215,218,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[142]= 
    { 
        _id=142, 
        roomBgs={137,135,129,123,6,11,7,3,122,128}, --房间背景地面
        ornaments={215,234,242,225,38,40,39,28,207,204}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[143]= 
    { 
        _id=143, 
        roomBgs={2,122,128,131,123,10,4,122,128,131}, --房间背景地面
        ornaments={6,237,214,236,227,38,45,250,248,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 


--=========================================================================六块钢架楼层151-170
MapGroupConfigB[151]= 
    { 
        _id=151, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2103,2108,2107,2102,2109,2104,2101,2110,2105,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,6},     --左边默认停留的楼层位置
        right = {3,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[152]= 
    { 
        _id=152, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2108,2103,2106,2109,2104,2107,2102,2101,2106,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,6},     --左边默认停留的楼层位置
        right = {4,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[153]= 
    { 
        _id=153, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2105,2106,2107,2102,2103,2104,2109,2108,2101,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,6},     --左边默认停留的楼层位置
        right = {4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[154]= 
    { 
        _id=154, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2106,2103,2104,2107,2108,2109,2110,2101,2104,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,6},     --左边默认停留的楼层位置
        right = {5,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[155]= 
    { 
        _id=155, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2105,2106,2107,2102,2109,2110,2103,2106,2105,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,6},     --左边默认停留的楼层位置
        right = {3,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[156]= 
    { 
        _id=156, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2108,2101,2106,2109,2104,2103,2108,2105,2110,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,8},     --左边默认停留的楼层位置
        right = {5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[157]= 
    { 
        _id=157, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2103,2106,2105,2104,2107,2108,2109,2102,2105,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,5,9},     --左边默认停留的楼层位置
        right = {3,8,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[158]= 
    { 
        _id=158, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2106,2101,2108,2107,2106,2103,2104,2105,2102,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,6,8},     --左边默认停留的楼层位置
        right = {4,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[159]= 
    { 
        _id=159, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2109,2104,2105,2102,2107,2106,2103,2104,2105,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,5,8},     --左边默认停留的楼层位置
        right = {3,6},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[160]= 
    { 
        _id=160, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2106,2103,2108,2105,2104,2107,2110,2101,2104,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,7},     --左边默认停留的楼层位置
        right = {1,5},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[161]= 
    { 
        _id=161, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2113,2116,2117,2114,2115,2116,2113,2114,2119,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,4,9},     --左边默认停留的楼层位置
        right = {2,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[162]= 
    { 
        _id=162, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2116,2111,2114,2115,2118,2117,2120,2119,2114,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,5,8},     --左边默认停留的楼层位置
        right = {2,6,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[163]= 
    { 
        _id=163, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2113,2116,2117,2112,2119,2114,2115,2116,2111,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,9},     --左边默认停留的楼层位置
        right = {3,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[164]= 
    { 
        _id=164, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2116,2113,2114,2117,2112,2115,2114,2119,2120,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,5,9},     --左边默认停留的楼层位置
        right = {4,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[165]= 
    { 
        _id=165, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2113,2118,2115,2114,2111,2116,2117,2112,2119,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,8},     --左边默认停留的楼层位置
        right = {1,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[166]= 
    { 
        _id=166, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2118,2111,2116,2113,2112,2113,2114,2115,2118,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,7},     --左边默认停留的楼层位置
        right = {1,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[167]= 
    { 
        _id=167, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2115,2112,2117,2116,2119,2120,2115,2114,2117,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,9},     --左边默认停留的楼层位置
        right = {3,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[168]= 
    { 
        _id=168, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2118,2113,2120,2113,2116,2115,2118,2113,2112,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[169]= 
    { 
        _id=169, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2117,2112,2115,2114,2113,2116,2119,2112,2119,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,9},     --左边默认停留的楼层位置
        right = {3,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigB[170]= 
    { 
        _id=170, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2114,2111,2116,2113,2118,2111,2120,2119,2116,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
--=======================================================================五块半钢架楼层171-200
MapGroupConfigB[171]= 
    { 
        _id=171, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2203,2208,2207,2204,2209,2202,2205,2210,2207,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,4,9},     --左边默认停留的楼层位置
        right = {2,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[172]= 
    { 
        _id=172, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2206,2203,2208,2205,2210,2207,2204,2201,2208,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,7,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[173]= 
    { 
        _id=173, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2203,2204,2205,2210,2207,2202,2205,2204,2203,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,8},     --左边默认停留的楼层位置
        right = {2,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[174]= 
    { 
        _id=174, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2208,2201,2206,2207,2210,2203,2206,2205,2208,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,5,9},     --左边默认停留的楼层位置
        right = {1,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[175]= 
    { 
        _id=175, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2209,2204,2205,2208,2203,2206,2205,2202,2207,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,5,7},     --左边默认停留的楼层位置
        right = {1,6,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[176]= 
    { 
        _id=176, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2208,2209,2206,2203,2204,2207,2210,2203,2204,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,5,8},     --左边默认停留的楼层位置
        right = {1,6,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[177]= 
    { 
        _id=177, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2205,2208,2203,2210,2209,2206,2205,2208,2203,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,8},     --左边默认停留的楼层位置
        right = {1,6},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[178]= 
    { 
        _id=178, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2204,2203,2206,2207,2208,2209,2210,2202,2206,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,6},     --左边默认停留的楼层位置
        right = {4,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[179]= 
    { 
        _id=179, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2209,2202,2203,2206,2205,2204,2207,2208,2203,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,4},     --左边默认停留的楼层位置
        right = {3,7},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[180]= 
    { 
        _id=180, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2210,2203,2206,2205,2208,2207,2206,2201,2204,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,8},     --左边默认停留的楼层位置
        right = {4,6,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[181]= 
    { 
        _id=181, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2211,2214,2217,2218,2219,2220,2215,2214,2213,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,4,8},     --左边默认停留的楼层位置
        right = {2,6,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[182]= 
    { 
        _id=182, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2216,2213,2218,2215,2220,2219,2218,2217,2216,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,6,9},     --左边默认停留的楼层位置
        right = {1,4,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[183]= 
    { 
        _id=183, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2211,2216,2215,2218,2219,2212,2215,2220,2211,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,5,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[184]= 
    { 
        _id=184, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2214,2213,2218,2215,2220,2217,2218,2211,2216,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,4,8},     --左边默认停留的楼层位置
        right = {3,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[185]= 
    { 
        _id=185, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2215,2214,2217,2218,2213,2218,2211,2220,2219,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,5,8},     --左边默认停留的楼层位置
        right = {4,6,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[186]= 
    { 
        _id=186, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2218,2211,2216,2213,2218,2215,2220,2213,2214,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,9},     --左边默认停留的楼层位置
        right = {1,5,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[187]= 
    { 
        _id=187, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2217,2220,2215,2218,2213,2216,2215,2220,2211,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {5,7,9},     --左边默认停留的楼层位置
        right = {2,6,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[188]= 
    { 
        _id=188, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2214,2215,2216,2217,2220,2217,2212,2213,2216,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,6,8},     --左边默认停留的楼层位置
        right = {5,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[189]= 
    { 
        _id=189, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2215,2216,2217,2212,2219,2214,2213,2216,2211,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[190]= 
    { 
        _id=190, 
        roomBgs={3004,3004,3004,3004,3004,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2214,2215,2218,2211,2216,2213,2214,2215,2220,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[191]= 
    { 
        _id=191, 
        roomBgs={3004,3004,30041,30042,30041,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={2214,22013,22011,22012,22011,2218,2213,2216,2215,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,5,8},     --左边默认停留的楼层位置
        right = {1,4,7},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[192]= 
    { 
        _id=192, 
        roomBgs={3004,3004,3004,30042,30041,30042,30042,3004,3004,98}, --房间背景地面
        ornaments={2216,2213,22014,22012,22011,22012,22012,2218,2213,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,8},     --左边默认停留的楼层位置
        right = {4,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[193]= 
    { 
        _id=193, 
        roomBgs={3004,30042,30042,30041,30042,3004,3004,3004,3004,98}, --房间背景地面
        ornaments={22014,22012,22012,22011,22012,2215,2218,2217,2212,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,4},     --左边默认停留的楼层位置
        right = {2,7},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[194]= 
    { 
        _id=194, 
        roomBgs={3004,3004,30041,30042,30042,30041,30042,30041,3004,98}, --房间背景地面
        ornaments={2202,22013,22011,22011,22012,22011,22012,22011,2202,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,8},     --左边默认停留的楼层位置
        right = {2,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[195]= 
    { 
        _id=195, 
        roomBgs={3004,30042,30041,30041,30042,30041,30042,30041,3004,98}, --房间背景地面
        ornaments={22014,22012,22011,22011,22012,22011,22012,22011,2201,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,5,7},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+70,Room_Distance.x+599},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

--=======================================================================五块钢架楼层201-230
MapGroupConfigB[201]= 
    { 
        _id=201, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2203,2208,2207,2204,2205,2210,2201,2208,2209,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,9},     --左边默认停留的楼层位置
        right = {2,5,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[202]= 
    { 
        _id=202, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2206,2203,2208,2205,2204,2209,2210,2201,2204,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,8},     --左边默认停留的楼层位置
        right = {2,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 
  
MapGroupConfigB[203]= 
    { 
        _id=203, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2207,2206,2203,2208,2207,2202,2209,2204,2205,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,7,8},     --左边默认停留的楼层位置
        right = {1,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[204]= 
    { 
        _id=204, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2204,2203,2206,2207,22010,2203,2208,2205,2206,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,7,9},     --左边默认停留的楼层位置
        right = {1,4,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[205]= 
    { 
        _id=205, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2205,2206,2207,2202,2209,2204,2205,2210,2203,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,5,8},     --左边默认停留的楼层位置
        right = {1,4,7},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[206]= 
    { 
        _id=206, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2206,2203,2208,2205,2210,2209,2206,2203,2202,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {1,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[207]= 
    { 
        _id=207, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2203,2206,2201,2208,2209,2204,2207,2206,2203,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {1,4,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[208]= 
    { 
        _id=208, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2208,2203,2206,2205,2206,2203,2208,2201,2204,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,8},     --左边默认停留的楼层位置
        right = {2,5,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[209]= 
    { 
        _id=209, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2205,2208,2203,2206,2207,2210,2203,2206,2207,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,8},     --左边默认停留的楼层位置
        right = {1,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[210]= 
    { 
        _id=210, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2208,2205,2206,2209,2204,2205,2206,2203,2202,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,8},     --左边默认停留的楼层位置
        right = {1,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[211]= 
    { 
        _id=211, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2213,2218,2217,2212,2215,2220,2211,2218,2213,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {1,5,8},     --左边默认停留的楼层位置
        right = {4,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[212]= 
    { 
        _id=212, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2218,2211,2216,2219,2214,2217,2212,2215,2214,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,7,8},     --左边默认停留的楼层位置
        right = {2,5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[213]= 
    { 
        _id=213, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2213,2216,2215,2218,2217,2214,2219,2212,2213,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,6,9},     --左边默认停留的楼层位置
        right = {2,4,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[214]= 
    { 
        _id=214, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2216,2211,2218,2213,2214,2215,2212,2217,2218,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,8},     --左边默认停留的楼层位置
        right = {1,6},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[215]= 
    { 
        _id=215, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2217,2214,2215,2214,2219,2214,2213,2220,2219,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,8},     --左边默认停留的楼层位置
        right = {2,6},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[216]= 
    { 
        _id=216, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2208,2203,2206,2209,2204,2203,2208,2205,2206,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[217]= 
    { 
        _id=217, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2203,2206,2209,2202,2207,2206,2205,2204,2203,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,8},     --左边默认停留的楼层位置
        right = {1,6},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[218]= 
    { 
        _id=218, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2206,2207,2204,2205,2208,2203,2202,2205,2204,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {5,9},     --左边默认停留的楼层位置
        right = {2,7},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[219]= 
    { 
        _id=219, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2203,2208,2207,2206,2205,2204,2203,2202,2209,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[220]= 
    { 
        _id=220, 
        roomBgs={3005,3005,3005,3005,3005,3005,3005,3005,3005,128}, --房间背景地面
        ornaments={2204,2209,2206,2207,2202,2207,2204,2203,2208,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[221]= 
    { 
        _id=221, 
        roomBgs={3005,30051,30052,30051,30052,30051,3005,3005,3005,128}, --房间背景地面
        ornaments={22013,22011,22012,22011,22012,22011,2207,2206,2209,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,6},     --左边默认停留的楼层位置
        right = {3,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[222]= 
    { 
        _id=222, 
        roomBgs={3005,30051,30051,30051,30052,30052,30051,30052,3005,128}, --房间背景地面
        ornaments={22013,22011,22011,22011,22012,22012,22011,22012,2208,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,7},     --左边默认停留的楼层位置
        right = {5,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[223]= 
    { 
        _id=223, 
        roomBgs={3005,30052,30051,30052,30051,30051,30052,3005,3005,128}, --房间背景地面
        ornaments={22014,22012,22011,22012,22011,22011,22012,2206,2203,201}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,9},     --左边默认停留的楼层位置
        right = {2,4,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[224]= 
    { 
        _id=224, 
        roomBgs={3005,30051,30051,30052,30052,30051,30052,3005,3005,128}, --房间背景地面
        ornaments={22013,22011,22011,22012,22012,22011,22012,2207,2206,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6},     --左边默认停留的楼层位置
        right = {4,7},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

MapGroupConfigB[225]= 
    { 
        _id=225, 
        roomBgs={3005,30052,30052,30051,30052,30051,30051,30052,3005,128}, --房间背景地面
        ornaments={22014,22012,22012,22011,22012,22011,22011,22012,2208,202}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {4,7,9},     --左边默认停留的楼层位置
        right = {2,5,8},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+94,Room_Distance.x+575},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Five,
    } 

--==========================================================================五块半向右倾斜231-240
MapGroupConfigB[231]= 
    { 
        _id=231, 
        roomBgs={1041,1045,1041,1046,1047,1051,1049,1043,1042,98}, --房间背景地面
        ornaments={167,175,186,194,171,187,175,162,198,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[232]= 
    { 
        _id=232, 
        roomBgs={1041,1046,1047,1051,1050,1044,1046,1047,1043,98}, --房间背景地面
        ornaments={179,165,166,174,181,197,185,172,168,151}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[233]= 
    { 
        _id=233, 
        roomBgs={1048,1043,1046,1051,1049,1051,1049,1043,1042,98}, --房间背景地面
        ornaments={176,165,166,184,191,177,185,162,158,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[234]= 
    { 
        _id=234, 
        roomBgs={1048,1051,1050,1050,1049,1047,1043,1046,1051,98}, --房间背景地面
        ornaments={181,175,196,164,171,157,165,182,198,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[235]= 
    { 
        _id=235, 
        roomBgs={1048,1047,1047,1051,1050,1050,1049,1043,1042,98}, --房间背景地面
        ornaments={183,175,176,164,191,187,155,172,168,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

--===========================================================================五块半向左倾斜241-250
MapGroupConfigB[241]= 
    { 
        _id=241, 
        roomBgs={1061,1065,1068,1064,1066,1064,1066,1071,1069,98}, --房间背景地面
        ornaments={187,175,166,194,171,167,155,192,178,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[242]= 
    { 
        _id=242, 
        roomBgs={1061,1062,1066,1066,1071,1070,1069,1064,1070,98}, --房间背景地面
        ornaments={159,165,176,164,191,187,175,162,158,153}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[243]= 
    { 
        _id=243, 
        roomBgs={1061,1065,1065,1068,1066,1071,1070,1063,1066,98}, --房间背景地面
        ornaments={156,175,166,184,191,197,185,172,178,152}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[244]= 
    { 
        _id=244, 
        roomBgs={1068,1071,1070,1069,1071,1069,1064,1070,1069,98}, --房间背景地面
        ornaments={181,175,176,164,191,157,155,182,178,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 

MapGroupConfigB[245]= 
    { 
        _id=245, 
        roomBgs={1068,1071,1070,1069,1071,1069,1071,1069,1071,98}, --房间背景地面
        ornaments={173,165,156,184,171,197,165,182,178,154}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Five_1,
    } 
