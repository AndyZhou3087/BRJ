--游戏公用配置文件

MapSize = cc.size(750,1334)

--测试输出
PrintDebug = false

--阴影程度
OPACITY=160

--初始钻石
InitDiamond = 20

--获取礼物花费钻石的数量
DiamondSpendReward = 100
--冲刺花费数量
CostSpringDiamond = 50

--看视频得钻石随机范围
VideoDiamond = {50,100}
--开局冲刺随机层数
OpenRocketFloor = {80,120}

CountDownTime = 30*60

--免费礼物倒计时
FreeRemainTime = 300*60

--视觉开关
Game_Visible = true

--连续操作硬值时间,单位:秒（大于此值视为有效的滑动）
Sequent_Click_Time = 0.05

--金币移动速度
GOLD_SPEED=26

--横跑出现的层数(每60层出现一次)
RunningFloorNum = 100000
--随机每多少层出现一次
RunningMin = RunningFloorNum
RunningMax = RunningFloorNum+500

--背景移动系数
Rdt_1 = 0.97
Rdt_2 = 0.9
--横跑时背景移动速率
RunBgMove_1 = 52  --移动多即移动慢
RunBgMove_2 = 25
--倾斜跳跃时背景移动速率
BgMove_1 = 10  --移动多即移动慢
BgMove_2 = 6

--每组钻石最多出现的次数
MaxShowCount = 3

--初始化房间数
MAP_ROOM_INIT_NUM = 30
--地图房间最大数
MAXROOM = 50
MAP_ROOM_MAX = MAXROOM
--其它缓存房间最大数
MAP_ROOM_OTHER_MAX = 20

--地图当前ZOder
MAP_ZORDER_MAX=0

OpenWallType = 
    {
        Left = 1,
        Right = 2,
        All = 3,
        Close = 4,
    }


Map_Grade = 
{
    floor_D = 1,    --1-50层，7块砖，6块半砖普通房间，吊车。单向倾斜
    floor_C = 50,   --51-150层，6块半，6块砖，吊车，单向倾斜，双向倾斜。
    floor_B = 150,  --151-300层，6块，5块半，5块，吊车，单向倾斜，双向倾斜。
    floor_A = 300,  --301-500层，5块，四块半，四块，吊车，单向倾斜，双向倾斜。
    floor_S = 500,  --501层+，四块，三块半，三块，吊车，单向倾斜，双向倾斜。
}
MAP_SPEED = 
{
    floor_D = 120,  --角色初始速度
    floor_C = 120,
    floor_B = 120,
    floor_A = 120,
    floor_S = 120,
}

--封闭房间停顿时间
Map_ProcessTime = 
{
    d = {2,3},    --{进入房间x秒后执行倒计时，倒计时时间几秒}
    c = {1.5,2.5},
    b = {1,2},
    a = {0.8,1.5},
    s = {0.5,1},
}

MAPROOM_TYPE = 
    {
        Common = 1,   --普通
        Lean = 2,     --倾斜类型
        Special = 3,   --特殊吊杆类型
        Running = 4,  --横向奔跑类型
        TwoLean = 5,    --双向倾斜
    }
    
--房间背景格子数类型
ROOMBGSIZE_TYPE = 
{
    Two = 1,
    Two_1 = 2,
    Three = 3,
    Three_1 = 4,
    Four = 5,
    Four_1 = 6,
    Five = 7,
    Five_1 = 8,
    Six = 9,
    Six_1 = 10,
    Seven = 11,
}
    
    
--横跑时的方向
MAPRUNNING_TYPE = 
    {
        Left = 1,
        Right = 2,
        Both = 3,
    }

--商城item类型
Shop_Type = 
{
    role = 1,
    scene = 2,
    diamond =3,
}

--弹窗类型
Alert_Type=
    {
        Type_One = 1,   --只有一个按钮
        Type_Two = 2    --两个按钮
    }

--界面层级配置
UI_ZORDER =
    {
        CLIP_ZORDER = 5,  --遮罩层级
        VIEW_ZORDER = 10,  --普通界面层级
        ALERT_ZORDER = 20,  --弹框界面层级
        TIPS_ZORDER = 30,  --提示信息层级
        DEBUG_ZORDER = 40,  --调试信息容器层级
    }


--元素tag定义
ELEMENT_TAG=
    {
        PLAYER_TAG = 1,  --角色
        WALLLEFT = 2,  --左墙壁
        WALLRIGHT = 3,  --右墙壁
        FLOOR = 4,    --普通地板
        DIAMOND_TAG = 6,   --金币
        GOOD_TAG = 7,    --道具
        SPECIAL_TAG = 8,  --特殊钢架
    }

--缓存元素类型
CACHE_TYPE=
    {
        Room_floor_1 = 1,
        Room_floor_2 = 2,
        Room_floor_3 = 3,
        Room_floor_4 = 4,
        Room_floor_5 = 5,
        Room_floor_6 = 6,
        Room_floor_7 = 7,
        Room_wall = 8,
        Diamond = 9,
    }
