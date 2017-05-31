
--======================以下为房间列表配置(每十层房间配置)=============================
MapGroupConfig={}

MAPROOM_TYPE = 
{
    Common = 1,   --普通
    Lean = 2,     --倾斜类型
    Special = 3,   --特殊类型吊杆
    Running = 4,  --横向奔跑类型
}

--此为关卡配置说明，最好不要删除
--{
--    _id = 1,   
--    --房间背景、地板与墙体数组,此id对应RoomsBgConfig配置文件,填0则视为对应楼层不出现
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
MapGroupConfig[1]= 
    { 
        _id=1, 
        roomBgs={1,1,1,1,1,1,1,1,1,1}, --房间背景
        ornaments={0,0,0,0,0,0,0,0,0,0}, ---小挂件
        coins={0,10,2,23,24,8,19,0,14,18}, ---金币
        roomGoods={0,0,0,0,0,34,0,0,0,0}, ---道具
        type = MAPROOM_TYPE.Common,
        distance = 0,
    } 