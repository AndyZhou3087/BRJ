--[[
角色皮肤信息配置
]]

--角色移动速度
ROLE_SPEED = 150

--角色状态
PLAYER_STATE=
    {
        Slow = 1,--迟钝药水
        Magnet = 2,--磁铁
        Rocket = 3,   --火箭
        Phantom = 4,  --幻影
    }
--角色动作
PLAYER_ACTION=
    {
        Run = "pao",    --跑动
        Jump = "tiao", --跳
        Attack  = "gongji" ,     -- 攻击
        Down = "luodi",   --落地
    }

RoleConfig={}

RoleConfig[1]=
    {
        id = 1,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_1.jpg",   --角色图片
        roleName = "shop/rolename_1.png",
        roleDes = "奥特曼",  --角色描述
        rmb = 0,   --人民币购买价格
    }

RoleConfig[2]=
    {
        id = 2,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_2.jpg",   --角色图片
        roleName = "shop/rolename_2.png",
        roleDes = "钢铁侠",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[3]=
    {
        id = 3,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_3.jpg",   --角色图片
        roleName = "shop/rolename_3.png",
        roleDes = "黑豹",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[4]=
    {
        id = 4,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_4.jpg",   --角色图片
        roleName = "shop/rolename_4.png",
        roleDes = "死侍",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[5]=
    {
        id = 5,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_5.jpg",   --角色图片
        roleName = "shop/rolename_5.png",
        roleDes = "闪电侠",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[6]=
    {
        id = 6,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_6.jpg",   --角色图片
        roleName = "shop/rolename_6.png",
        roleDes = "蜘蛛侠",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[7]=
    {
        id = 7,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_7.jpg",   --角色图片
        roleName = "shop/rolename_7.png",
        roleDes = "金刚狼",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[8]=
    {
        id = 8,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_8.jpg",   --角色图片
        roleName = "shop/rolename_8.png",
        roleDes = "绿巨人",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[9]=
    {
        id = 9,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_9.jpg",   --角色图片
        roleName = "shop/rolename_9.png",
        roleDes = "美国队长",  --角色描述
        rmb = 6,   --人民币购买价格
    }
    
RoleConfig[10]=
    {
        id = 10,
        armatureName = false,   --动画工程名
        roleImg = "shop/role_10.jpg",   --角色图片
        roleName = "shop/rolename_10.png",
        roleDes = "小丑",  --角色描述
        rmb = 6,   --人民币购买价格
    }