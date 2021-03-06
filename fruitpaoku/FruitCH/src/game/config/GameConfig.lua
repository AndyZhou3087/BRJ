--游戏公用配置文件

PrintDebug = true

SelectItemCount = 15

GroupSize = cc.size(960,540)   --每一组配置的大小

--初始速度
initSpeed = 32
--移动速度
MoveSpeed = initSpeed

--地图背景资源
GameBgRes = "Common/GameBg.jpg"

--前期无障碍缓存距离，单位：像素
CacheDis = 200

--每秒移动像素
Pixel = 320
--每秒路程，单位:米
Miles = 10

--金币移动速度
GOLD_SPEED=10

--地图当前ZOder
MAP_ZORDER_MAX=0

--阴影程度
OPACITY=166

--商城是否打开
OPEN_SHOP = false

--是否处于新手引导中（战斗引导结束后的结算界面，和战斗准备界面）
GUIDE_ING = false

MAP_GROUP_INIT_NUM = 2    --初始化组合数

--转盘相关
--LOTTERY_SET = {
--    TIME = 1.2,--单位：秒
--    LENG = 1440,--所转圈数 (360为一圈  所配的值应整除360)
--    TIME_TWO = 1.2, --2次圈数和长度
--    LENG_TWO = 720, --
--    TIME_THREE = 1.2,
--    LENG_THREE = 360,
--    OVER = 1.2,--单位：秒 最后一圈所转的秒数  (所配置时间还需加上当前抽到物品的距离/10 eg:当前抽到的物品为8  则为0.8+当前配置时间)
--}

--角色保护时间（单位：秒）
GuardTime = 3

--游戏类型
GAME_TYPE = 
    {
        LevelMode = 1 , --关卡模式
        EndlessMode = 2 , --无尽模式
    }
--游戏类型控制
GAME_TYPE_CONTROL = GAME_TYPE.LevelMode

GAMEOVER_TYPE =
{
    Win = 1,
    Fail = 2,
}

--界面层级配置
UI_ZORDER =
    {
        VIEW_ZORDER = 10,  --普通界面层级
        ALERT_ZORDER = 20,  --弹框界面层级
        TIPS_ZORDER = 30,  --提示信息层级
        DEBUG_ZORDER = 40,  --调试信息容器层级
    }


--元素tag定义
ELEMENT_TAG=
    {
        PLAYER_TAG = 1,  --角色
        Edge_Top = 2,  --上边界
        Edge_Down = 3,  --下边界
        OBSTACLE = 4,    --障碍
        GOLD_TAG = 5,   --金币
        GOOD_TAG = 6,    --道具
    }

GOON_TAG =
    {
        MadCow  =1, --疯牛
        TopSpeed=2, --急速飞行
        Protect =3, --保护罩
        Springs =4, --弹簧
        DropLife = 5,--掉血
        InitTime=6,
        KeepTime= 7,
        All = 8,

    }

--缓存元素类型
CACHE_TYPE=
    {
        Coin = 1,
        Sliver = 2,
        Copper = 3,
    }
