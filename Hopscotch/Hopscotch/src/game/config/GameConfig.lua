--游戏公用配置文件

MapSize = cc.size(750,1334)

--测试输出
PrintDebug = true

--初始钻石
InitDiamond = 20

--连续操作硬值时间,单位:秒（大于此值视为有效的滑动）
Sequent_Click_Time = 0.05

--金币移动速度
GOLD_SPEED=40

--地图当前ZOder
MAP_ZORDER_MAX=0

--阴影程度
OPACITY=160

--初始化房间数
MAP_ROOM_INIT_NUM = 30
--地图房间最大数
MAP_ROOM_MAX = 50

--获取礼物花费钻石的数量
DiamondSpendReward = 100

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
