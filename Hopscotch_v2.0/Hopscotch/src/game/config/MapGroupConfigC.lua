
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
        roomBgs={3,8,13,14,5,12,18,19,7,1}, --房间背景地面
        ornaments={6,16,34,28,14,19,22,35,18,2}, ---小挂件
        coins={0,0,1,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 3,     --权重
    } 

MapGroupConfigC[24]= 
    { 
        _id=24, 
        roomBgs={13,18,15,5,8,17,7,12,5,1}, --房间背景地面
        ornaments={16,27,32,48,6,14,22,35,18,2}, ---小挂件
        coins={0,0,0,0,0,0,0,0,1,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 3,     --权重
    } 

MapGroupConfigC[25]= 
    { 
        _id=25, 
        roomBgs={17,15,18,7,12,5,16,7,2,1}, --房间背景地面
        ornaments={35,42,47,16,35,18,19,24,35,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,1,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 3,     --权重
    }
