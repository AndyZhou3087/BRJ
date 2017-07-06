--[[
房间背景、地板、墙体配置
]]

--房间大小
Room_Size = cc.size(692,99)--坐标：x:[29,721]

--=====所有坐标x都要从29开始计算(如果为0，则Room_Distance.x+0)
Room_Distance = cc.p(30,722)

Grid_Size = cc.size(90,90)

RoomWall_Type = 
{
    Left = 1,
    Right = 2,
}

RoomBgs = {}

--===========================普通房间和倾斜房间=============================
RoomBgs[1]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+15+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+13+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*6,y=0},{res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }
RoomBgs[2]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right}},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
            {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }
    
RoomBgs[3]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }
    
    
--==============================双向倾斜===========================

RoomBgs[4]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+15+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+13+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*6,y=0},{res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }
RoomBgs[5]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right}},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
            {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

RoomBgs[6]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }
    

--===============================横跑房间配置===============================
RoomBgs[1001]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+14,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94*5,y=0},},--地板
        type = 1,   --横跑时的桥梁配置，0：水平方向一致，1：垂直方向一致，2：水平垂直均不一致
        gap = 80,    --横跑房间之间的间隙
    }
    
RoomBgs[1002]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+14,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+14+94*5,y=0},},--地板
        type = 0,   --横跑时的桥梁配置，0：水平方向一致，1：垂直方向一致，2：水平垂直均不一致
        gap = 80,    --横跑房间之间的间隙
    }
    
RoomBgs[1007]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+668,y=16}},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
        type = 2,
    }
    
RoomBgs[1008]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0}},--地板
        type = 1,
        gap = 80,
    }
    
RoomBgs[1009]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16}},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
        type = 2,
    }
RoomBgs[1010]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
        type = 1,
    }
    
--=============================特殊房间配置=================================
RoomBgs[2001]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_special_floor.png",x=Room_Distance.x+20,y=0},{res="#Room_special_floor.png",x=Room_Distance.x+19+94,y=0},
            {res="#Room_special_floor.png",x=Room_Distance.x+18+94*2,y=0},{res="#Room_special_floor.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_special_floor.png",x=Room_Distance.x+16+94*4,y=0},{res="#Room_special_floor.png",x=Room_Distance.x+15+94*5,y=0},
            {res="#Room_special_floor.png",x=Room_Distance.x+14+94*6,y=0},},--地板
    }
RoomBgs[2010]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+57,y=16},{res="#Room_wall.png",x=Room_Distance.x+631,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+57,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+57,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94+57,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2+57,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3+57,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4+57,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5+57,y=0},
            {res="#Room_floor_4.png",x=Room_Distance.x+10+94*6+57,y=0},},--地板
    }