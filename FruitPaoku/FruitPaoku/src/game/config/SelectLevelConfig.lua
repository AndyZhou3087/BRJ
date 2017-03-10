--[[
关卡路点配置
]]

--======================以下为关卡列表配置=============================
SelectLevel={}
--此为关卡配置说明，最好不要删除
--{
--    _id = 1,
--    costPower = 1,  --所消耗体力
--    coinAward = 50, --金币奖励
--    powerAward = 0,   --体力奖励
--    --开局前道具展示 
--    goods = {9,10,11,12},
--   
--    obstacle=13,   --障碍物，此id对应ObsGroupConfig中配置文件，填0表示无障碍
--    coins = 0,    --金币, 此id对应CoinsConfig配置文件，填0表示无
--    goods=0,      --道具  此id对应GoodGroupConfig配置文件,填0表示无道具
--    gap = 500,    --每组之间的间隔差距，单位:像素
--    endPoint = 5000,  --终点距离，单位：像素
--}
SelectLevel[1]= 
{ 
    _id=1, 
    costPower=1,
    coinAward=false, --金币奖励
    powerAward=false, --体力奖励
    goods={0,0,0,0,0,0}, --开局道具
    obstacle=13,   --障碍物，此id对应ObsGroupConfig中配置文件，填0表示无障碍
    coins = 0,    --金币, 此id对应CoinsConfig配置文件，填0表示无
    goods=0,      --道具  此id对应GoodGroupConfig配置文件,填0表示无道具
    gap = 500,    --每组之间的间隔差距，单位:像素
    endPoint = 5000,  --终点距离，单位：像素
}
