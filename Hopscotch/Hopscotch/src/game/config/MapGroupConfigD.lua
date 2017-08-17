
--======================以下为房间列表配置(每十层房间配置)=============================
MapGroupConfigD={}

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

MapGroupD = {ROOMBGSIZE_TYPE.Seven,ROOMBGSIZE_TYPE.Six_1}  --1-50层

--七块地板普通楼层1-30
--六块半过渡层31-60
--六块半地板普通楼层61-90
--七块地板钢架楼层91-110
--六块半地板钢架楼层111-130
--六块半向右倾斜131-150
--六块半向左倾斜151-170

--==========防止连续出现钢价层特殊楼层
MapGroupConfigD[9999]= 
    { 
        _id=9999, 
        roomBgs={11,17,15,18,15,9,3,12,5,1}, --房间背景地面
        ornaments={33,28,19,16,25,7,6,18,14,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[8888]= 
    { 
        _id=8888, 
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

--==========================================================================七块地板楼层1-30
MapGroupConfigD[1]= 
    { 
        _id=1, 
        roomBgs={9,15,13,16,13,7,3,10,4,6}, --房间背景地面
        ornaments={33,28,19,16,25,7,6,18,14,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 
    
MapGroupConfigD[2]= 
    { 
        _id=2, 
        roomBgs={3,2,2,6,11,12,16,17,5,6}, --房间背景地面
        ornaments={41,23,36,9,10,15,24,31,18,4}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 
    
MapGroupConfigD[3]= 
    { 
        _id=3, 
        roomBgs={15,13,7,15,13,4,2,6,3,6}, --房间背景地面
        ornaments={11,6,38,26,45,12,19,22,36,4}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 
    
MapGroupConfigD[4]= 
    { 
        _id=4, 
        roomBgs={11,12,16,17,5,2,6,15,13,7}, --房间背景地面
        ornaments={13,26,31,22,17,8,16,35,42,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[5]= 
    { 
        _id=5, 
        roomBgs={3,2,6,9,15,13,7,15,13,7}, --房间背景地面
        ornaments={37,18,23,45,16,28,33,15,42,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 
  
MapGroupConfigD[6]= 
    { 
        _id=6, 
        roomBgs={15,17,13,12,16,5,6,3,6,9}, --房间背景地面
        ornaments={22,35,48,17,12,16,8,10,19,2}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[7]= 
    { 
        _id=7, 
        roomBgs={9,9,3,10,16,13,16,5,2,6}, --房间背景地面
        ornaments={16,31,24,15,38,41,11,9,10,4}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[8]= 
    { 
        _id=8, 
        roomBgs={9,15,8,3,2,10,4,14,5,6}, --房间背景地面
        ornaments={8,15,36,20,35,42,34,16,19,2}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[9]= 
    { 
        _id=9, 
        roomBgs={3,10,16,5,2,6,3,14,13,7}, --房间背景地面
        ornaments={11,24,8,10,19,35,32,11,6,2}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[10]= 
    { 
        _id=10, 
        roomBgs={3,14,13,16,13,16,5,13,10,7}, --房间背景地面
        ornaments={7,42,37,33,22,11,10,8,7,1}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[11]= 
    { 
        _id=11, 
        roomBgs={9,11,7,15,13,16,13,16,5,6}, --房间背景地面
        ornaments={6,25,21,30,44,29,37,18,17,1}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[12]= 
    { 
        _id=12, 
        roomBgs={9,11,7,15,13,7,3,14,13,7}, --房间背景地面
        ornaments={16,20,19,8,38,40,45,16,9,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[13]= 
    { 
        _id=13, 
        roomBgs={11,16,13,4,6,15,5,10,4,6}, --房间背景地面
        ornaments={16,27,32,48,6,14,22,35,18,2}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[14]= 
    { 
        _id=14, 
        roomBgs={3,11,16,13,7,15,13,16,5,6}, --房间背景地面
        ornaments={34,28,33,17,10,29,30,45,11,1}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[15]= 
    { 
        _id=15, 
        roomBgs={15,13,16,5,10,4,14,5,2,6}, --房间背景地面
        ornaments={35,42,47,16,35,18,19,24,35,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    }
    
MapGroupConfigD[16]= 
    { 
        _id=16, 
        roomBgs={9,16,17,5,6,9,11,4,2,6}, --房间背景地面
        ornaments={33,21,17,10,8,9,42,50,48,2}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[17]= 
    { 
        _id=17, 
        roomBgs={9,3,2,6,11,16,13,12,4,6}, --房间背景地面
        ornaments={14,35,28,36,44,49,50,19,47,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[18]= 
    { 
        _id=18, 
        roomBgs={3,6,11,12,4,10,16,17,5,6}, --房间背景地面
        ornaments={6,16,34,28,14,19,22,35,18,2}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[19]= 
    { 
        _id=19, 
        roomBgs={15,13,7,3,6,11,7,3,2,6}, --房间背景地面
        ornaments={15,34,42,25,28,30,19,8,7,4}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapGroupConfigD[20]= 
    { 
        _id=20, 
        roomBgs={3,2,6,9,3,2,6,3,2,6}, --房间背景地面
        ornaments={6,17,14,25,32,18,9,10,18,1}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

--=========================================================================六块半过渡层31-60
MapGroupConfigD[31]= 
    { 
        _id=31, 
        roomBgs={50,47,45,48,45,39,33,42,35,38}, --房间背景地面
        ornaments={73,78,79,56,92,67,76,58,94,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 100,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
        transit = true,
    } 
    
MapGroupConfigD[32]= 
    { 
        _id=32, 
        roomBgs={3,32,32,38,43,44,48,49,37,38}, --房间背景地面
        ornaments={82,93,66,79,90,65,64,81,68,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 
    
MapGroupConfigD[33]= 
    { 
        _id=33, 
        roomBgs={52,45,39,47,45,35,32,38,33,38}, --房间背景地面
        ornaments={61,66,88,96,55,62,89,72,66,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 
    
MapGroupConfigD[34]= 
    { 
        _id=34, 
        roomBgs={51,44,48,49,37,32,38,47,45,39}, --房间背景地面
        ornaments={73,66,81,72,57,58,66,95,72,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[35]= 
    { 
        _id=35, 
        roomBgs={3,32,38,41,47,45,39,47,45,39}, --房间背景地面
        ornaments={77,58,73,85,76,68,93,85,72,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 
  
MapGroupConfigD[36]= 
    { 
        _id=36, 
        roomBgs={52,49,45,44,48,37,38,33,38,41}, --房间背景地面
        ornaments={82,75,58,97,82,76,68,90,99,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,    --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[37]= 
    { 
        _id=37, 
        roomBgs={50,41,33,42,48,45,48,37,32,38}, --房间背景地面
        ornaments={96,71,64,85,78,91,100,59,70,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[38]= 
    { 
        _id=38, 
        roomBgs={50,47,40,33,32,42,35,46,37,38}, --房间背景地面
        ornaments={84,75,96,70,65,92,74,56,89,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[39]= 
    { 
        _id=39, 
        roomBgs={3,42,48,37,32,38,33,46,45,39}, --房间背景地面
        ornaments={81,74,88,90,69,55,72,81,66,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[40]= 
    { 
        _id=40, 
        roomBgs={3,46,45,48,45,48,37,42,44,39}, --房间背景地面
        ornaments={67,62,57,73,82,91,60,68,87,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[41]= 
    { 
        _id=41, 
        roomBgs={50,43,39,47,45,48,45,48,37,38}, --房间背景地面
        ornaments={66,55,71,80,64,79,87,98,57,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[42]= 
    { 
        _id=42, 
        roomBgs={50,43,39,47,45,39,33,46,45,39}, --房间背景地面
        ornaments={56,80,79,68,88,70,65,96,89,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[43]= 
    { 
        _id=43, 
        roomBgs={51,48,45,35,38,47,37,42,35,38}, --房间背景地面
        ornaments={76,57,82,98,86,94,82,75,68,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[44]= 
    { 
        _id=44, 
        roomBgs={3,42,48,45,39,47,45,48,37,38}, --房间背景地面
        ornaments={94,88,63,57,70,69,90,85,71,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[45]= 
    { 
        _id=45, 
        roomBgs={52,45,48,37,42,35,46,37,32,38}, --房间背景地面
        ornaments={85,62,77,56,95,88,79,64,85,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    }
    
MapGroupConfigD[46]= 
    { 
        _id=46, 
        roomBgs={51,48,49,37,38,41,43,35,32,38}, --房间背景地面
        ornaments={93,61,57,80,68,97,62,90,58,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[47]= 
    { 
        _id=47, 
        roomBgs={51,35,32,38,43,48,45,44,35,38}, --房间背景地面
        ornaments={94,75,78,66,57,59,90,69,87,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[48]= 
    { 
        _id=48, 
        roomBgs={3,38,43,44,35,42,48,49,37,38}, --房间背景地面
        ornaments={76,66,74,68,94,89,72,65,98,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[49]= 
    { 
        _id=49, 
        roomBgs={52,45,39,33,38,43,39,33,32,38}, --房间背景地面
        ornaments={65,74,82,95,88,60,79,98,97,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[50]= 
    { 
        _id=50, 
        roomBgs={3,32,38,41,33,32,38,33,32,38}, --房间背景地面
        ornaments={86,97,94,85,72,68,89,100,98,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 10,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[51]= 
    { 
        _id=51, 
        roomBgs={3,38,43,10,4,42,48,49,37,38}, --房间背景地面
        ornaments={86,66,74,25,94,89,72,65,98,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[52]= 
    { 
        _id=52, 
        roomBgs={52,45,39,33,8,13,9,3,32,38}, --房间背景地面
        ornaments={85,64,82,65,28,30,19,88,97,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 

MapGroupConfigD[53]= 
    { 
        _id=53, 
        roomBgs={52,7,38,41,33,12,4,32,38,41}, --房间背景地面
        ornaments={76,67,74,85,72,28,69,100,98,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
	transit = true,
    } 
--=========================================================================六块半普通楼层61-90
MapGroupConfigD[61]= 
    { 
        _id=61, 
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
    
MapGroupConfigD[62]= 
    { 
        _id=62, 
        roomBgs={33,32,32,38,43,44,48,49,37,38}, --房间背景地面
        ornaments={81,93,66,79,90,65,57,81,68,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
    
MapGroupConfigD[63]= 
    { 
        _id=63, 
        roomBgs={47,45,39,47,45,35,32,38,33,38}, --房间背景地面
        ornaments={71,66,88,96,55,62,89,72,66,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
    
MapGroupConfigD[64]= 
    { 
        _id=64, 
        roomBgs={43,44,48,49,37,32,38,47,45,39}, --房间背景地面
        ornaments={93,66,81,72,57,58,66,95,72,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[65]= 
    { 
        _id=65, 
        roomBgs={33,32,38,41,47,45,39,47,45,39}, --房间背景地面
        ornaments={67,58,73,85,76,68,93,85,72,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
  
MapGroupConfigD[66]= 
    { 
        _id=66, 
        roomBgs={47,49,45,44,48,37,38,33,38,41}, --房间背景地面
        ornaments={62,75,58,97,82,76,68,90,99,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[67]= 
    { 
        _id=67, 
        roomBgs={41,41,33,42,48,45,48,37,32,38}, --房间背景地面
        ornaments={86,71,64,85,78,91,100,59,70,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[68]= 
    { 
        _id=68, 
        roomBgs={41,47,40,33,32,42,35,46,37,38}, --房间背景地面
        ornaments={84,75,96,70,65,92,74,56,89,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[69]= 
    { 
        _id=69, 
        roomBgs={33,42,48,37,32,38,33,46,45,39}, --房间背景地面
        ornaments={61,74,88,90,69,55,72,81,66,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[70]= 
    { 
        _id=70, 
        roomBgs={33,46,45,48,45,48,37,42,44,39}, --房间背景地面
        ornaments={97,62,57,73,82,91,60,68,87,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[71]= 
    { 
        _id=71, 
        roomBgs={41,43,39,47,45,48,45,48,37,38}, --房间背景地面
        ornaments={66,55,71,80,64,79,87,98,57,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[72]= 
    { 
        _id=72, 
        roomBgs={41,43,39,47,45,39,33,46,45,39}, --房间背景地面
        ornaments={56,80,79,68,88,70,65,96,89,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[73]= 
    { 
        _id=73, 
        roomBgs={43,48,45,35,38,47,37,42,35,38}, --房间背景地面
        ornaments={66,57,82,98,86,94,82,75,68,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[74]= 
    { 
        _id=74, 
        roomBgs={33,42,48,45,39,47,45,48,37,38}, --房间背景地面
        ornaments={94,88,63,57,70,69,90,85,71,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[75]= 
    { 
        _id=75, 
        roomBgs={47,45,48,37,42,35,46,37,32,38}, --房间背景地面
        ornaments={85,62,77,56,95,88,79,64,85,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    }
    
MapGroupConfigD[76]= 
    { 
        _id=76, 
        roomBgs={43,48,49,37,38,41,43,35,32,38}, --房间背景地面
        ornaments={73,61,57,80,68,97,62,90,58,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[77]= 
    { 
        _id=77, 
        roomBgs={43,35,32,38,43,48,45,44,35,38}, --房间背景地面
        ornaments={94,75,78,66,75,59,90,69,87,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[78]= 
    { 
        _id=78, 
        roomBgs={33,38,43,44,35,42,48,49,37,38}, --房间背景地面
        ornaments={86,66,74,68,94,89,72,65,98,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[79]= 
    { 
        _id=79, 
        roomBgs={47,45,39,33,38,43,39,33,32,38}, --房间背景地面
        ornaments={65,74,82,95,88,60,79,98,97,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[80]= 
    { 
        _id=80, 
        roomBgs={33,32,38,41,33,32,38,33,32,38}, --房间背景地面
        ornaments={86,97,94,85,72,68,89,100,98,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[81]= 
    { 
        _id=81, 
        roomBgs={33,38,43,12,5,42,48,49,37,38}, --房间背景地面
        ornaments={86,66,74,25,79,89,72,65,98,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[82]= 
    { 
        _id=82, 
        roomBgs={47,45,39,33,8,13,9,3,32,38}, --房间背景地面
        ornaments={75,64,82,65,28,30,19,88,97,54}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[83]= 
    { 
        _id=83, 
        roomBgs={33,32,38,41,33,12,4,32,38,41}, --房间背景地面
        ornaments={76,87,74,85,72,28,69,100,98,51}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

--=========================================================================七块钢架楼层91-110
 MapGroupConfigD[91]= 
    { 
        _id=91, 
        roomBgs={3001,3001,3001,3001,3001,3001,3001,3001,3001,6}, --房间背景地面
        ornaments={2001,2002,2001,2002,2001,2002,2001,2002,2001,1}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,9},     --左边默认停留的楼层位置
        right = {3,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+0,Room_Distance.x+668},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

     MapGroupConfigD[92]= 
    { 
        _id=92, 
        roomBgs={3001,3001,3001,3001,3001,3001,3001,3001,3001,6}, --房间背景地面
        ornaments={2002,2001,2002,2001,2002,2001,2002,2001,2002,3}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+0,Room_Distance.x+668},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 
--=======================================================================六块半钢架楼层111-131
MapGroupConfigD[111]= 
    { 
        _id=111, 
        roomBgs={3002,3002,3002,3002,3002,3002,3002,3002,3002,38}, --房间背景地面
        ornaments={2101,2102,2101,2102,2101,2102,2101,2102,2101,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+24,Room_Distance.x+645},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[112]= 
    { 
        _id=112, 
        roomBgs={3002,3002,3002,3002,3002,3002,3002,3002,3002,38}, --房间背景地面
        ornaments={2102,2101,2102,2101,2102,2101,2102,2101,2102,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+24,Room_Distance.x+645},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 15,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

--==========================================================================六块半向右倾斜131-150
MapGroupConfigD[131]= 
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

MapGroupConfigD[132]= 
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

MapGroupConfigD[133]= 
    { 
        _id=133, 
        roomBgs={1008,1003,1006,1010,1007,1011,1008,1001,1002,38}, --房间背景地面
        ornaments={76,65,66,84,91,77,85,62,58,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigD[134]= 
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

MapGroupConfigD[135]= 
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
MapGroupConfigD[151]= 
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

MapGroupConfigD[152]= 
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

MapGroupConfigD[153]= 
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

MapGroupConfigD[154]= 
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

MapGroupConfigD[155]= 
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
