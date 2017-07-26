
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

MapGroupConfigC[1]= 
    { 
        _id=1, 
        roomBgs={11,17,15,18,15,9,3,12,4,1}, --房间背景地面
        ornaments={33,28,19,16,25,7,6,18,14,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 
    
MapGroupConfigC[2]= 
    { 
        _id=2, 
        roomBgs={3,2,2,8,13,14,18,19,7,1}, --房间背景地面
        ornaments={41,23,36,9,10,15,24,31,18,4}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
    } 
    
MapGroupConfigC[3]= 
    { 
        _id=3, 
        roomBgs={17,15,9,17,15,4,2,8,3,1}, --房间背景地面
        ornaments={11,6,38,26,45,12,19,22,36,4}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
    } 
    
MapGroupConfigC[4]= 
    { 
        _id=4, 
        roomBgs={13,14,18,19,7,2,8,17,15,9}, --房间背景地面
        ornaments={13,26,31,22,17,8,16,35,42,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[5]= 
    { 
        _id=5, 
        roomBgs={3,2,8,11,17,15,9,17,15,9}, --房间背景地面
        ornaments={37,18,23,45,16,28,33,15,42,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 
  
MapGroupConfigC[6]= 
    { 
        _id=6, 
        roomBgs={17,19,15,14,18,7,8,3,8,11}, --房间背景地面
        ornaments={22,35,48,17,12,16,8,10,19,2}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[7]= 
    { 
        _id=7, 
        roomBgs={11,11,3,12,18,15,18,7,2,1}, --房间背景地面
        ornaments={16,31,24,15,38,41,11,9,10,4}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[8]= 
    { 
        _id=8, 
        roomBgs={11,17,10,3,2,12,4,16,7,1}, --房间背景地面
        ornaments={8,15,36,20,35,42,34,16,19,2}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[9]= 
    { 
        _id=9, 
        roomBgs={3,12,18,7,2,8,3,16,15,9}, --房间背景地面
        ornaments={11,24,8,10,19,35,32,11,6,2}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[10]= 
    { 
        _id=10, 
        roomBgs={3,16,15,18,15,18,7,12,5,1}, --房间背景地面
        ornaments={7,42,37,33,22,11,10,8,7,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[11]= 
    { 
        _id=11, 
        roomBgs={11,13,9,17,15,18,15,18,7,1}, --房间背景地面
        ornaments={6,25,21,30,44,29,37,18,17,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[12]= 
    { 
        _id=12, 
        roomBgs={11,13,9,17,15,9,3,16,15,9}, --房间背景地面
        ornaments={16,20,19,8,38,40,45,16,9,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[13]= 
    { 
        _id=13, 
        roomBgs={13,18,15,5,8,17,7,12,5,1}, --房间背景地面
        ornaments={16,27,32,48,6,14,22,35,18,2}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[14]= 
    { 
        _id=14, 
        roomBgs={3,12,18,15,9,17,15,18,7,1}, --房间背景地面
        ornaments={34,28,33,17,10,29,30,45,11,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[15]= 
    { 
        _id=15, 
        roomBgs={17,15,18,7,12,5,16,7,2,1}, --房间背景地面
        ornaments={35,42,47,16,35,18,19,24,35,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    }
    
MapGroupConfigC[16]= 
    { 
        _id=16, 
        roomBgs={11,17,19,7,8,11,13,5,2,1}, --房间背景地面
        ornaments={33,21,17,10,8,9,42,50,48,2}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[17]= 
    { 
        _id=17, 
        roomBgs={11,3,2,8,13,18,15,14,5,1}, --房间背景地面
        ornaments={14,35,28,36,44,49,50,19,47,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[18]= 
    { 
        _id=18, 
        roomBgs={3,8,13,14,5,12,18,19,7,1}, --房间背景地面
        ornaments={6,16,34,28,14,19,22,35,18,2}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[19]= 
    { 
        _id=19, 
        roomBgs={17,15,9,3,8,13,9,3,2,1}, --房间背景地面
        ornaments={15,34,42,25,28,30,19,8,7,4}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

MapGroupConfigC[20]= 
    { 
        _id=20, 
        roomBgs={3,2,8,11,3,2,8,3,2,1}, --房间背景地面
        ornaments={6,17,14,25,32,18,9,10,18,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
    } 

 MapGroupConfigC[21]= 
    { 
        _id=21, 
        roomBgs={201,201,201,201,201,201,201,201,201,1}, --房间背景地面
        ornaments={201,202,201,202,201,202,201,202,201,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        left = {2,5,9},     --左边默认停留的楼层位置
        right = {3,7,9},    --右边默认停留的楼层位置
        lineX = {},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 20,     --权重
    } 

     MapGroupConfigC[22]= 
    { 
        _id=22, 
        roomBgs={201,201,201,201,201,201,201,201,201,1}, --房间背景地面
        ornaments={201,202,201,202,201,202,201,202,201,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 20,     --权重
    } 

MapGroupConfigC[23]= 
    { 
        _id=23, 
        roomBgs={421,416,414,417,414,408,402,411,403,407}, --房间背景地面
        ornaments={333,328,319,316,325,307,306,318,314,303}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,1,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[24]= 
    { 
        _id=24, 
        roomBgs={3,401,401,407,412,413,417,418,418,409}, --房间背景地面
        ornaments={341,323,336,309,310,315,324,331,318,304}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50, --权重
    } 

MapGroupConfigC[25]= 
    { 
        _id=25, 
        roomBgs={421,414,408,416,414,403,401,407,402,408}, --房间背景地面
        ornaments={311,306,338,326,345,312,319,322,336,304}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50, --权重
    } 
    
MapGroupConfigC[26]= 
    { 
        _id=26, 
        roomBgs={420,413,417,418,406,401,407,416,414,408}, --房间背景地面
        ornaments={313,326,331,322,317,308,316,335,342,303}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[27]= 
    { 
        _id=27, 
        roomBgs={3,401,407,410,416,414,408,416,414,408}, --房间背景地面
        ornaments={337,318,323,345,316,328,333,315,342,303}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 
  
MapGroupConfigC[28]= 
    { 
        _id=28, 
        roomBgs={421,418,414,413,417,406,407,402,407,410}, --房间背景地面
        ornaments={322,335,348,317,312,316,308,310,319,302}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[29]= 
    { 
        _id=29, 
        roomBgs={419,410,402,411,417,414,417,406,401,407}, --房间背景地面
        ornaments={316,331,324,315,338,341,311,309,310,304}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[30]= 
    { 
        _id=30, 
        roomBgs={419,416,409,402,401,411,403,415,406,407}, --房间背景地面
        ornaments={308,315,336,320,335,342,334,316,319,302}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[31]= 
    { 
        _id=31, 
        roomBgs={3,411,417,406,401,407,402,415,414,408}, --房间背景地面
        ornaments={311,324,308,310,319,335,332,311,306,302}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[32]= 
    { 
        _id=32, 
        roomBgs={3,415,414,417,414,417,406,411,404,407}, --房间背景地面
        ornaments={307,342,337,333,322,311,310,308,307,301}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[33]= 
    { 
        _id=33, 
        roomBgs={419,412,408,416,414,417,414,417,406,407}, --房间背景地面
        ornaments={306,325,321,330,344,329,337,318,317,301}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[34]= 
    { 
        _id=34, 
        roomBgs={419,412,408,416,414,408,402,415,414,408}, --房间背景地面
        ornaments={316,320,319,308,338,340,345,316,309,303}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[35]= 
    { 
        _id=35, 
        roomBgs={420,417,414,404,407,416,406,411,404,407}, --房间背景地面
        ornaments={316,327,332,348,306,314,322,335,318,302}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[36]= 
    { 
        _id=36, 
        roomBgs={3,411,417,414,408,416,414,417,406,407}, --房间背景地面
        ornaments={334,328,333,317,310,329,330,345,311,301}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[37]= 
    { 
        _id=37, 
        roomBgs={421,414,417,406,411,404,415,406,401,407}, --房间背景地面
        ornaments={335,342,347,316,335,318,319,324,335,303}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    }
    
MapGroupConfigC[38]= 
    { 
        _id=38, 
        roomBgs={419,416,418,406,407,410,412,404,401,408}, --房间背景地面
        ornaments={333,321,317,310,308,309,342,350,348,302}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[39]= 
    { 
        _id=39, 
        roomBgs={419,402,401,407,412,417,414,413,404,407}, --房间背景地面
        ornaments={314,335,328,336,344,349,350,319,347,303}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[40]= 
    { 
        _id=40, 
        roomBgs={3,407,412,413,404,411,417,418,406,407}, --房间背景地面
        ornaments={306,316,334,328,314,319,322,335,318,302}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[41]= 
    { 
        _id=41, 
        roomBgs={421,414,408,402,407,412,408,402,401,407}, --房间背景地面
        ornaments={315,334,342,325,328,330,319,308,307,304}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 

MapGroupConfigC[42]= 
    { 
        _id=42, 
        roomBgs={3,401,407,410,402,401,407,402,401,407}, --房间背景地面
        ornaments={306,317,314,325,332,318,309,310,318,301}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
    } 
