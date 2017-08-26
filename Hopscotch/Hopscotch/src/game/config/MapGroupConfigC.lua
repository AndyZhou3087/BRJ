
--======================以下为房间列表配置(每十层房间配置)=============================
MapGroupConfigC={}

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

MapGroupC = {ROOMBGSIZE_TYPE.Six_1,ROOMBGSIZE_TYPE.Six}  --51-150层

--六块半地板普通楼层1-30
--六块过渡层31-60
--六块地板普通楼层61-90
--六块半地板钢架楼层91-110
--六块地板钢架楼层111-130
--六块半向右倾斜131-150
--六块半向左倾斜151-170

--==========防止连续出现钢价层特殊楼层
MapGroupConfigC[9999]= 
    { 
        _id=9999, 
        roomBgs={41,47,45,48,45,39,33,42,35,38}, --房间背景地面
        ornaments={83,78,79,56,92,67,76,58,94,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    }
    
MapGroupConfigC[8888]= 
    { 
        _id=8888, 
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

--强制过渡层
MapGroupConfigC[10000]= 
    { 
        _id=10000, 
        roomBgs={18,46,45,48,45,39,33,42,35,38}, --房间背景地面
        ornaments={78,78,79,56,92,67,76,58,94,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

--==========================================================================六块半地板楼层1-30
MapGroupConfigC[1]= 
    { 
        _id=1, 
        roomBgs={41,47,45,48,45,39,33,42,35,38}, --房间背景地面
        ornaments={83,78,79,56,92,67,76,58,94,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
    
MapGroupConfigC[2]= 
    { 
        _id=2, 
        roomBgs={33,32,32,38,43,44,48,49,37,38}, --房间背景地面
        ornaments={81,93,66,79,90,65,59,81,68,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
    
MapGroupConfigC[3]= 
    { 
        _id=3, 
        roomBgs={47,45,39,47,45,34,32,38,33,38}, --房间背景地面
        ornaments={71,66,88,96,55,62,89,72,66,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
    
MapGroupConfigC[4]= 
    { 
        _id=4, 
        roomBgs={43,44,48,49,37,32,38,47,45,39}, --房间背景地面
        ornaments={93,66,81,72,57,58,66,95,72,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[5]= 
    { 
        _id=5, 
        roomBgs={33,32,38,41,47,45,39,47,45,39}, --房间背景地面
        ornaments={67,58,73,85,76,68,93,85,72,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
  
MapGroupConfigC[6]= 
    { 
        _id=6, 
        roomBgs={47,49,45,44,48,37,38,33,38,41}, --房间背景地面
        ornaments={62,75,58,97,82,76,68,90,99,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[7]= 
    { 
        _id=7, 
        roomBgs={41,41,33,42,48,45,48,37,32,38}, --房间背景地面
        ornaments={86,71,64,85,78,91,100,59,70,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[8]= 
    { 
        _id=8, 
        roomBgs={41,47,40,33,32,42,35,46,37,38}, --房间背景地面
        ornaments={84,75,96,70,65,92,74,56,89,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[9]= 
    { 
        _id=9, 
        roomBgs={33,42,48,37,32,38,33,46,45,39}, --房间背景地面
        ornaments={61,74,88,90,69,55,72,81,66,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[10]= 
    { 
        _id=10, 
        roomBgs={33,46,45,48,45,48,37,42,35,38}, --房间背景地面
        ornaments={97,62,57,73,82,91,60,68,87,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[11]= 
    { 
        _id=11, 
        roomBgs={41,43,39,47,45,48,45,48,37,38}, --房间背景地面
        ornaments={66,55,71,80,64,79,87,98,57,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[12]= 
    { 
        _id=12, 
        roomBgs={41,43,39,47,45,39,33,46,45,39}, --房间背景地面
        ornaments={56,80,79,68,88,70,65,96,89,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[13]= 
    { 
        _id=13, 
        roomBgs={43,48,45,35,38,47,37,42,35,38}, --房间背景地面
        ornaments={66,57,82,98,86,94,82,75,68,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[14]= 
    { 
        _id=14, 
        roomBgs={33,42,48,45,39,47,45,48,37,38}, --房间背景地面
        ornaments={94,88,63,57,70,69,90,85,71,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[15]= 
    { 
        _id=15, 
        roomBgs={47,45,48,37,42,35,46,37,32,38}, --房间背景地面
        ornaments={85,62,77,56,95,88,79,64,85,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    }
    
MapGroupConfigC[16]= 
    { 
        _id=16, 
        roomBgs={43,48,49,37,38,41,43,35,32,38}, --房间背景地面
        ornaments={73,61,57,80,68,97,62,90,58,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[17]= 
    { 
        _id=17, 
        roomBgs={43,35,32,38,43,48,45,44,35,38}, --房间背景地面
        ornaments={94,75,78,66,76,59,90,69,87,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[18]= 
    { 
        _id=18, 
        roomBgs={33,38,43,44,35,42,48,49,37,38}, --房间背景地面
        ornaments={86,66,74,68,94,89,72,65,98,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[19]= 
    { 
        _id=19, 
        roomBgs={47,45,39,33,38,43,39,33,32,38}, --房间背景地面
        ornaments={65,74,82,95,88,60,79,98,97,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[20]= 
    { 
        _id=20, 
        roomBgs={33,32,38,41,33,32,38,33,32,38}, --房间背景地面
        ornaments={86,97,94,85,72,68,89,100,98,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
--=========================================================================六块过渡层31-60
MapGroupConfigC[31]= 
    { 
        _id=31, 
        roomBgs={81,78,75,78,75,69,63,72,65,68}, --房间背景地面
        ornaments={113,148,139,146,122,117,136,148,124,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 
    
MapGroupConfigC[32]= 
    { 
        _id=32, 
        roomBgs={33,62,62,68,73,74,78,79,67,68}, --房间背景地面
        ornaments={122,123,106,109,140,135,124,141,148,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 
    
MapGroupConfigC[33]= 
    { 
        _id=33, 
        roomBgs={82,75,69,77,75,64,62,68,63,68}, --房间背景地面
        ornaments={141,126,138,106,145,142,139,122,136,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 
    
MapGroupConfigC[34]= 
    { 
        _id=34, 
        roomBgs={81,74,78,79,67,62,68,77,75,69}, --房间背景地面
        ornaments={129,126,131,122,147,138,126,115,142,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[35]= 
    { 
        _id=35, 
        roomBgs={33,62,68,71,77,75,69,77,75,69}, --房间背景地面
        ornaments={127,128,113,135,146,128,123,145,132,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 
  
MapGroupConfigC[36]= 
    { 
        _id=36, 
        roomBgs={82,79,75,74,78,67,68,63,68,71}, --房间背景地面
        ornaments={142,135,118,107,122,116,138,140,129,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[37]= 
    { 
        _id=37, 
        roomBgs={80,71,63,72,78,75,78,67,62,68}, --房间背景地面
        ornaments={115,111,144,135,108,121,150,149,110,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[38]= 
    { 
        _id=38, 
        roomBgs={80,77,70,63,62,72,65,76,67,68}, --房间背景地面
        ornaments={134,145,106,130,125,142,134,146,119,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[39]= 
    { 
        _id=39, 
        roomBgs={33,72,78,67,62,68,63,76,75,69}, --房间背景地面
        ornaments={111,124,128,120,109,115,132,141,126,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[40]= 
    { 
        _id=40, 
        roomBgs={33,76,75,78,75,78,79,75,74,69}, --房间背景地面
        ornaments={147,132,117,143,122,111,130,108,127,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[41]= 
    { 
        _id=41, 
        roomBgs={80,73,78,79,75,78,75,78,67,68}, --房间背景地面
        ornaments={106,125,131,140,124,139,127,118,147,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[42]= 
    { 
        _id=42, 
        roomBgs={80,73,69,77,75,69,63,76,75,69}, --房间背景地面
        ornaments={126,130,119,128,138,140,115,146,139,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[43]= 
    { 
        _id=43, 
        roomBgs={81,78,75,65,68,77,67,72,65,68}, --房间背景地面
        ornaments={136,127,112,108,146,134,142,135,128,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[44]= 
    { 
        _id=44, 
        roomBgs={33,72,78,75,69,77,75,78,67,68}, --房间背景地面
        ornaments={134,138,123,147,150,129,110,135,121,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[45]= 
    { 
        _id=45, 
        roomBgs={82,75,78,67,72,65,76,67,62,68}, --房间背景地面
        ornaments={105,142,107,126,115,148,139,124,145,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    }
    
MapGroupConfigC[46]= 
    { 
        _id=46, 
        roomBgs={81,78,79,67,68,71,73,65,62,68}, --房间背景地面
        ornaments={143,121,147,150,108,137,122,140,108,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[47]= 
    { 
        _id=47, 
        roomBgs={81,65,62,68,73,78,75,74,65,68}, --房间背景地面
        ornaments={134,145,128,116,136,119,120,149,107,103}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[48]= 
    { 
        _id=48, 
        roomBgs={33,68,73,74,65,72,78,79,67,68}, --房间背景地面
        ornaments={146,116,124,138,114,149,132,105,148,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[49]= 
    { 
        _id=49, 
        roomBgs={82,75,69,63,68,73,69,63,62,68}, --房间背景地面
        ornaments={125,114,132,125,148,130,109,148,127,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[50]= 
    { 
        _id=50, 
        roomBgs={33,62,68,71,63,62,68,63,62,68}, --房间背景地面
        ornaments={126,117,144,125,112,108,149,120,108,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[51]= 
    { 
        _id=51, 
        roomBgs={33,68,73,42,35,72,78,79,67,68}, --房间背景地面
        ornaments={136,106,127,55,114,109,122,135,148,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[52]= 
    { 
        _id=52, 
        roomBgs={82,75,69,63,6,11,7,3,62,68}, --房间背景地面
        ornaments={135,124,132,145,28,30,19,108,127,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 

MapGroupConfigC[53]= 
    { 
        _id=53, 
        roomBgs={80,2,68,71,63,10,4,62,68,71}, --房间背景地面
        ornaments={116,37,134,125,132,28,129,140,108,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
	transit = true,
    } 


--=========================================================================六块普通楼层61-90
MapGroupConfigC[61]= 
    { 
        _id=61, 
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
    
MapGroupConfigC[62]= 
    { 
        _id=62, 
        roomBgs={63,62,62,68,73,74,78,79,67,68}, --房间背景地面
        ornaments={121,133,136,119,130,145,127,131,108,104}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
    
MapGroupConfigC[63]= 
    { 
        _id=63, 
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
    
MapGroupConfigC[64]= 
    { 
        _id=64, 
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

MapGroupConfigC[65]= 
    { 
        _id=65, 
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
  
MapGroupConfigC[66]= 
    { 
        _id=66, 
        roomBgs={77,79,75,74,78,67,68,63,68,71}, --房间背景地面
        ornaments={123,124,108,147,132,146,128,130,109,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[67]= 
    { 
        _id=67, 
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

MapGroupConfigC[68]= 
    { 
        _id=68, 
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

MapGroupConfigC[69]= 
    { 
        _id=69, 
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

MapGroupConfigC[70]= 
    { 
        _id=70, 
        roomBgs={63,76,75,78,75,78,67,72,65,68}, --房间背景地面
        ornaments={107,132,127,113,142,131,150,128,107,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[71]= 
    { 
        _id=71, 
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

MapGroupConfigC[72]= 
    { 
        _id=72, 
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

MapGroupConfigC[73]= 
    { 
        _id=73, 
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

MapGroupConfigC[74]= 
    { 
        _id=74, 
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

MapGroupConfigC[75]= 
    { 
        _id=75, 
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
    
MapGroupConfigC[76]= 
    { 
        _id=76, 
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

MapGroupConfigC[77]= 
    { 
        _id=77, 
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

MapGroupConfigC[78]= 
    { 
        _id=78, 
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

MapGroupConfigC[79]= 
    { 
        _id=79, 
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

MapGroupConfigC[80]= 
    { 
        _id=80, 
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

MapGroupConfigC[81]= 
    { 
        _id=81, 
        roomBgs={63,68,73,42,35,72,78,79,67,68}, --房间背景地面
        ornaments={146,116,124,75,134,139,122,145,105,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[82]= 
    { 
        _id=82, 
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

MapGroupConfigC[83]= 
    { 
        _id=83, 
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
--=========================================================================六块半钢架楼层
 MapGroupConfigC[91]= 
    { 
        _id=91,
        roomBgs={3002,3002,3002,3002,3002,3002,3002,3002,3002,38}, --房间背景地面
        ornaments={2101,2102,2101,2102,2101,2102,2101,2102,2101,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+24,Room_Distance.x+645},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

     MapGroupConfigC[92]= 
    { 
        _id=92, 
        roomBgs={3002,3002,3002,3002,3002,3002,3002,3002,3002,38}, --房间背景地面
        ornaments={2102,2101,2102,2101,2102,2101,2102,2101,2102,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+24,Room_Distance.x+645},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

--=======================================================================六块钢架楼层
MapGroupConfigC[111]= 
    { 
        _id=111, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2101,2102,2101,2102,2101,2102,2101,2102,2101,102}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

     MapGroupConfigC[112]= 
    { 
        _id=112, 
        roomBgs={3003,3003,3003,3003,3003,3003,3003,3003,3003,68}, --房间背景地面
        ornaments={2102,2101,2102,2101,2102,2101,2102,2101,2102,101}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
--==========================================================================六块半向右倾斜131-150
MapGroupConfigC[131]= 
    { 
        _id=131, 
        roomBgs={1001,1005,1001,1006,1007,1011,1009,1003,1002,38}, --房间背景地面
        ornaments={67,75,86,94,71,87,75,62,98,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[132]= 
    { 
        _id=132, 
        roomBgs={1001,1006,1007,1011,1010,1004,1006,1007,1003,38}, --房间背景地面
        ornaments={79,65,66,74,81,97,85,72,68,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[133]= 
    { 
        _id=133, 
        roomBgs={1008,1003,1006,1011,1009,1011,1009,1003,1002,38}, --房间背景地面
        ornaments={76,65,66,84,91,77,85,62,58,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[134]= 
    { 
        _id=134, 
        roomBgs={1008,1011,1010,1010,1009,1007,1003,1006,1011,38}, --房间背景地面
        ornaments={81,75,96,64,71,57,65,82,98,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[135]= 
    { 
        _id=135, 
        roomBgs={1008,1007,1007,1011,1010,1010,1009,1003,1002,38}, --房间背景地面
        ornaments={83,75,76,64,91,87,55,72,68,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

--===========================================================================六块半向左倾斜151-170
MapGroupConfigC[151]= 
    { 
        _id=151, 
        roomBgs={1021,1025,1028,1031,1029,1024,1026,1031,1029,38}, --房间背景地面
        ornaments={87,75,66,94,71,67,55,92,78,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[152]= 
    { 
        _id=152, 
        roomBgs={1021,1022,1026,1026,1031,1030,1029,1024,1030,38}, --房间背景地面
        ornaments={59,65,76,64,91,87,75,62,58,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[153]= 
    { 
        _id=153, 
        roomBgs={1021,1025,1025,1028,1026,1031,1030,1023,1026,38}, --房间背景地面
        ornaments={56,75,66,84,91,97,85,72,78,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[154]= 
    { 
        _id=154, 
        roomBgs={1028,1031,1030,1029,1031,1029,1024,1030,1029,38}, --房间背景地面
        ornaments={81,75,76,64,91,57,55,82,78,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[155]= 
    { 
        _id=155, 
        roomBgs={1028,1031,1030,1029,1031,1029,1031,1029,1031,38}, --房间背景地面
        ornaments={73,65,56,84,71,97,65,82,78,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
