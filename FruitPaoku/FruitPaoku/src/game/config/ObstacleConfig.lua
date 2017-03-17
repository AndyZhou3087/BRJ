--[[
障碍配置表
]]

ObstacleConfig = {}

OBSTACLE_TYPE = 
{
    static = 1,    --固定
    hide = 2,   --隐藏
    fly = 3,    --飞行
    special = 4,    --特殊
}

ObstacleConfig[1]=
{
    id = 1,
    type = OBSTACLE_TYPE.static,    --障碍类型
    isAnimate = false,           --是否为动画资源
    armatureName = "",
    res = "ui/obscale_1.png",     --资源路径
    att = 1,
}

ObstacleConfig[2]=
    {
        id = 2,
        type = OBSTACLE_TYPE.hide,    --障碍类型
        isAnimate = false,           --是否为动画资源
        armatureName = "",
        res = "ui/obscale_1.png",     --资源路径
        att = 1,
    }
    
ObstacleConfig[3]=
    {
        id = 3,
        type = OBSTACLE_TYPE.fly,    --障碍类型
        isAnimate = false,           --是否为动画资源
        armatureName = "",
        res = "ui/obscale_1.png",     --资源路径
        att = 1,
        speed = 0.3,
        direction = 1,   --飞行方向：1为从下向上，-1为从上向下
    }
    
ObstacleConfig[4]=
    {
        id = 4,
        type = OBSTACLE_TYPE.special,    --障碍类型
        isAnimate = true,           --是否为动画资源
        armatureName = "muban_tanhuang",
        res = "ui/obscale_1.png",     --资源路径
        att = 1,
    }
    