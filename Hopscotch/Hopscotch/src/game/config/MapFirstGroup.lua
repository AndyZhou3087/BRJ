
--======================以下为房间列表配置(每十层房间配置)=============================
MapFirstGroup={}

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
--MapFirstGroup[1]= 
--    { 
--        _id=1, 
--        roomBgs={188,232,249,250,251,256,257,258,259,1}, --房间背景地面
--        ornaments={354,446,447,448,449,450,443,444,445,54}, ---小挂件
--        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
--        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
--        roomType = MAPROOM_TYPE.Common,
--        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
--        distance = 0,        --房间x轴倾斜距离(单位：像素)
--        probability = 0,     --权重
--        bgType = ROOMBGSIZE_TYPE.Seven,
--    } 


MapFirstGroup[1]= 
    { 
        _id=1, 
        roomBgs={6,15,17,5,6,9,11,7,3,6}, --房间背景地面
        ornaments={2,6,10,22,35,47,50,49,21,3}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapFirstGroup[2]= 
    { 
        _id=2, 
        roomBgs={6,3,2,6,11,16,13,7,15,8}, --房间背景地面
        ornaments={1,8,10,9,12,31,22,35,40,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapFirstGroup[3]= 
    { 
        _id=3, 
        roomBgs={6,9,11,12,16,13,16,17,5,6}, --房间背景地面
        ornaments={1,23,25,17,18,25,45,31,28,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapFirstGroup[4]= 
    { 
        _id=4, 
        roomBgs={6,11,7,3,6,11,7,3,2,6}, --房间背景地面
        ornaments={1,35,26,14,41,19,18,26,23,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 

MapFirstGroup[5]= 
    { 
        _id=5, 
        roomBgs={6,3,6,9,3,2,6,3,2,6}, --房间背景地面
        ornaments={1,15,36,44,11,27,35,42,18,1}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 
 
MapFirstGroup[6]= 
    { 
        _id=6, 
        roomBgs={110,107,100,93,92,102,95,106,97,98}, --房间背景地面
        ornaments={164,155,166,170,185,172,164,186,199,152}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
    } 
