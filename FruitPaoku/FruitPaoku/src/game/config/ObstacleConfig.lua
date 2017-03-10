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
    res = "#hinder_01.png",     --资源路径
}

ObstacleConfig[2]=
    {
        id = 2,
        type = OBSTACLE_TYPE.hide,    --障碍类型
        isAnimate = false,           --是否为动画资源
        armatureName = "",
        res = "#hinder_03.png",     --资源路径
    }
    
ObstacleConfig[3]=
    {
        id = 3,
        type = OBSTACLE_TYPE.fly,    --障碍类型
        isAnimate = false,           --是否为动画资源
        armatureName = "",
        res = "#hinder_02.png",     --资源路径
    }
    
ObstacleConfig[4]=
    {
        id = 4,
        type = OBSTACLE_TYPE.special,    --障碍类型
        isAnimate = true,           --是否为动画资源
        armatureName = "muban_tanhuang",
        res = "#hinder_04.png",     --资源路径
        time = 8,           --特殊障碍技能(单位：s)
    }
    