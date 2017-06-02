--[[
房间背景、地板、墙体配置
]]

--房间大小
Room_Size = cc.size(750,90)

Grid_Size = cc.size(90,90)

RoomBgs = {}
RoomBgs[1]=
    {
        bg = {{res="",x=0,y=0},},--房间背景
        wallLeftRight = {{res="",x=0,y=0},},--左右两侧墙壁
        floor = {{res="",x=0,y=0},},--地板
    }
    

--横跑房间配置
RoomBgs[1001]=
    {
        bg = {{res="",x=0,y=0},},--房间背景
        wallLeftRight = {{res="",x=0,y=0},},--左右两侧墙壁
        floor = {{res="",x=0,y=0},},--地板
        type = 0,   --横跑时的桥梁配置，0：水平方向一致，1：垂直方向一致，2：水平垂直均不一致
    }