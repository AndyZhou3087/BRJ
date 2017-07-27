
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

MapGroupC = {ROOMBGSIZE_TYPE.Six_1,ROOMBGSIZE_TYPE.Six}

--六块半地板普通楼层1-30
--六块地板普通楼层31-60
--六块半地板钢架楼层61-80
--六块地板钢架楼层81-100

--==========================================================================六块半地板楼层
MapGroupConfigC[1]= 
    { 
        _id=1, 
        roomBgs={41,47,45,48,45,39,33,42,34,38}, --房间背景地面
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
        ornaments={81,93,66,79,90,65,54,81,68,54}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
    
MapGroupConfigC[3]= 
    { 
        _id=3, 
        roomBgs={52,45,39,47,45,34,32,38,33,38}, --房间背景地面
        ornaments={71,66,88,96,55,62,89,72,66,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
    
MapGroupConfigC[4]= 
    { 
        _id=4, 
        roomBgs={51,44,48,49,37,32,38,47,45,39}, --房间背景地面
        ornaments={93,66,81,72,57,58,66,95,72,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
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
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
  
MapGroupConfigC[6]= 
    { 
        _id=6, 
        roomBgs={52,49,45,44,48,37,38,33,38,41}, --房间背景地面
        ornaments={62,75,58,97,82,76,68,90,99,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[7]= 
    { 
        _id=7, 
        roomBgs={50,41,33,42,48,45,48,37,32,38}, --房间背景地面
        ornaments={86,71,64,85,78,91,100,59,70,54}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[8]= 
    { 
        _id=8, 
        roomBgs={50,47,40,33,32,42,34,46,37,38}, --房间背景地面
        ornaments={84,75,96,70,65,92,74,56,89,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
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
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
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
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[11]= 
    { 
        _id=11, 
        roomBgs={50,43,39,47,45,48,45,48,37,38}, --房间背景地面
        ornaments={66,55,71,80,64,79,87,98,57,51}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[12]= 
    { 
        _id=12, 
        roomBgs={50,43,39,47,45,39,33,46,45,39}, --房间背景地面
        ornaments={56,80,79,68,88,70,65,96,89,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[13]= 
    { 
        _id=13, 
        roomBgs={51,48,45,35,38,47,37,42,35,38}, --房间背景地面
        ornaments={66,57,82,98,86,94,82,75,68,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
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
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[15]= 
    { 
        _id=15, 
        roomBgs={52,45,48,37,42,35,46,37,32,38}, --房间背景地面
        ornaments={85,62,77,56,95,88,79,64,85,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    }
    
MapGroupConfigC[16]= 
    { 
        _id=16, 
        roomBgs={51,47,49,37,38,41,43,35,32,38}, --房间背景地面
        ornaments={73,61,57,80,68,97,62,90,58,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[17]= 
    { 
        _id=17, 
        roomBgs={51,33,32,38,43,48,45,44,35,38}, --房间背景地面
        ornaments={94,75,78,66,54,59,90,69,87,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
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
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

MapGroupConfigC[19]= 
    { 
        _id=19, 
        roomBgs={52,45,39,33,38,43,39,33,32,38}, --房间背景地面
        ornaments={65,74,82,95,88,60,79,98,97,54}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
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
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 
--=========================================================================六块地板楼层
MapGroupConfigC[31]= 
    { 
        _id=31, 
        roomBgs={41,47,45,48,45,39,33,42,34,38}, --房间背景地面
        ornaments={83,78,79,56,92,67,76,58,94,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
    
MapGroupConfigC[32]= 
    { 
        _id=32, 
        roomBgs={33,32,32,38,43,44,48,49,37,38}, --房间背景地面
        ornaments={81,93,66,79,90,65,54,81,68,54}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
    
MapGroupConfigC[33]= 
    { 
        _id=33, 
        roomBgs={52,45,39,47,45,34,32,38,33,38}, --房间背景地面
        ornaments={71,66,88,96,55,62,89,72,66,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
    
MapGroupConfigC[34]= 
    { 
        _id=34, 
        roomBgs={51,44,48,49,37,32,38,47,45,39}, --房间背景地面
        ornaments={93,66,81,72,57,58,66,95,72,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[35]= 
    { 
        _id=35, 
        roomBgs={33,32,38,41,47,45,39,47,45,39}, --房间背景地面
        ornaments={67,58,73,85,76,68,93,85,72,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
  
MapGroupConfigC[36]= 
    { 
        _id=36, 
        roomBgs={52,49,45,44,48,37,38,33,38,41}, --房间背景地面
        ornaments={62,75,58,97,82,76,68,90,99,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[37]= 
    { 
        _id=37, 
        roomBgs={50,41,33,42,48,45,48,37,32,38}, --房间背景地面
        ornaments={86,71,64,85,78,91,100,59,70,54}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[38]= 
    { 
        _id=38, 
        roomBgs={50,47,40,33,32,42,34,46,37,38}, --房间背景地面
        ornaments={84,75,96,70,65,92,74,56,89,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[39]= 
    { 
        _id=39, 
        roomBgs={33,42,48,37,32,38,33,46,45,39}, --房间背景地面
        ornaments={61,74,88,90,69,55,72,81,66,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[40]= 
    { 
        _id=40, 
        roomBgs={33,46,45,48,45,48,37,42,35,38}, --房间背景地面
        ornaments={97,62,57,73,82,91,60,68,87,51}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[41]= 
    { 
        _id=41, 
        roomBgs={50,43,39,47,45,48,45,48,37,38}, --房间背景地面
        ornaments={66,55,71,80,64,79,87,98,57,51}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[42]= 
    { 
        _id=42, 
        roomBgs={50,43,39,47,45,39,33,46,45,39}, --房间背景地面
        ornaments={56,80,79,68,88,70,65,96,89,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[43]= 
    { 
        _id=43, 
        roomBgs={51,48,45,35,38,47,37,42,35,38}, --房间背景地面
        ornaments={66,57,82,98,86,94,82,75,68,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[44]= 
    { 
        _id=44, 
        roomBgs={33,42,48,45,39,47,45,48,37,38}, --房间背景地面
        ornaments={94,88,63,57,70,69,90,85,71,51}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[45]= 
    { 
        _id=45, 
        roomBgs={52,45,48,37,42,35,46,37,32,38}, --房间背景地面
        ornaments={85,62,77,56,95,88,79,64,85,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    }
    
MapGroupConfigC[46]= 
    { 
        _id=46, 
        roomBgs={51,47,49,37,38,41,43,35,32,38}, --房间背景地面
        ornaments={73,61,57,80,68,97,62,90,58,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[47]= 
    { 
        _id=47, 
        roomBgs={51,33,32,38,43,48,45,44,35,38}, --房间背景地面
        ornaments={94,75,78,66,54,59,90,69,87,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[48]= 
    { 
        _id=48, 
        roomBgs={33,38,43,44,35,42,48,49,37,38}, --房间背景地面
        ornaments={86,66,74,68,94,89,72,65,98,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[49]= 
    { 
        _id=49, 
        roomBgs={52,45,39,33,38,43,39,33,32,38}, --房间背景地面
        ornaments={65,74,82,95,88,60,79,98,97,54}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

MapGroupConfigC[50]= 
    { 
        _id=50, 
        roomBgs={33,32,38,41,33,32,38,33,32,38}, --房间背景地面
        ornaments={86,97,94,85,72,68,89,100,98,51}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

--=========================================================================六块半钢架楼层
 MapGroupConfigC[61]= 
    { 
        _id=61,
        roomBgs={2002,2002,2002,2002,2002,2002,2002,2002,2002,38}, --房间背景地面
        ornaments={2101,2102,2101,2102,2101,2102,2101,2102,2101,53}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+24,Room_Distance.x+645},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Six_1,
    } 

     MapGroupConfigC[62]= 
    { 
        _id=62, 
        roomBgs={2002,2002,2002,2002,2002,2002,2002,2002,2002,38}, --房间背景地面
        ornaments={2102,2101,2102,2101,2102,2101,2102,2101,2102,52}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
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
MapGroupConfigC[81]= 
    { 
        _id=81, 
         roomBgs={2003,2003,2003,2003,2003,2003,2003,2003,2003,68}, --房间背景地面
        ornaments={2101,2102,2101,2102,2101,2102,2101,2102,2101,102}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 

     MapGroupConfigC[82]= 
    { 
        _id=82, 
        roomBgs={2003,2003,2003,2003,2003,2003,2003,2003,2003,68}, --房间背景地面
        ornaments={2102,2101,2102,2101,2102,2101,2102,2101,2102,101}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+48,Room_Distance.x+623},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Six,
    } 
