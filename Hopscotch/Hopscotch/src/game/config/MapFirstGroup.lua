
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
--        probability = 500,     --权重
--        bgType = ROOMBGSIZE_TYPE.Seven,
--    } 


MapFirstGroup[1]= 
    { 
        _id=1, 
        roomBgs={1,17,19,7,8,11,13,9,3,1}, --房间背景地面
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
        roomBgs={1,3,2,8,13,18,15,9,17,10}, --房间背景地面
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
        roomBgs={1,11,13,14,18,15,18,19,7,1}, --房间背景地面
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
        roomBgs={1,13,9,3,8,13,9,3,2,1}, --房间背景地面
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
        roomBgs={1,3,8,11,3,2,8,3,2,1}, --房间背景地面
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
        roomBgs={98,1066,2051,2050,2043,2045,2046,2047,2048,218}, --房间背景地面
        ornaments={159,165,356,384,371,397,365,382,378,354}, ---小挂件
        coins={0,0,0,0,0,0,0,0,0,0}, ---钻石
        roomGoods={0,0,0,0,0,0,0,0,0,0}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Seven,
    } 
