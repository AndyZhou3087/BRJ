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

--七块地板楼层1-19
--六块半地板楼层32-52
--六块地板楼层62-82
--五块半地板楼层92-112
--五块地板楼层122-142
--四块半地板楼层152-172
--四块地板楼层182-202
--三块半地板楼层212-232
--三块地板楼层242-262
--单向倾斜1001
--六块半版单向向右倾斜1001-1011
--六块半单向向左倾斜1021-1031
--五块半单向向右倾斜1041-1051
--五块半单向向左倾斜1061-1071
--四块半单向向右倾斜1081-1091
--四块半单向向左倾斜2001-2011
--三块半单向向右倾斜2021-2031
--三块半单向向左倾斜2041-2051
--三块单向向右倾斜2061-2071
--三块单向向左倾斜2081-2091
--钢架2001
--双向倾斜3001

RoomBgs[40012]=
    {
        bg = {
            {res="#RoomRun_bg.png",x=Room_Distance.x+32,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+31+94,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+30+94*2,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+29+94*3,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+28+94*4,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+27+94*5,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+26+94*6-29,y=0},
        },
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0}},--地板
        type = 2,
        gap = 30,
    }
    
RoomBgs[40011]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0}},--地板
        type = 2,
        gap = 30,
    }



--===========================测试双向倾斜========================
RoomBgs[10001]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+15+94*2-16,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+13+94*5,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_5.png",x=Room_Distance.x+94*2-1,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_6.png",x=Room_Distance.x+13+94*5,y=0},},--地板
    }
    
RoomBgs[10002]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }
--===========================测试普通断层房间========================
RoomBgs[10011]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            },--地板
    }

RoomBgs[10012]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            },--地板
    }
RoomBgs[10013]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }
RoomBgs[10014]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},},--地板
    }
RoomBgs[10015]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }
RoomBgs[10016]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }
RoomBgs[10017]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }
RoomBgs[10018]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},},--地板
    }
RoomBgs[10019]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }

--===========================普通房间=============================七块地板楼层1-19
--钢架牵引机楼层
RoomBgs[1]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+667,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+9+94*7,y=0},},--地板
    }

--两侧无墙，地板短。
RoomBgs[2]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_8.png",x=Room_Distance.x+16,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+32,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+31+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+30+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+29+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+28+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+27+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+26+94*6-29,y=0},
		 {res="#Room_floor_9.png",x=Room_Distance.x+25+94*7-29,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[3]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[4]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
                 {res="#Room_floor_9.png",x=Room_Distance.x+25+94*7-29,y=0},
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[5]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_8.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+32,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+31+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+30+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+29+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+28+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+27+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+26+94*6-18,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+25+94*7-18,y=-2},
		 },--地板
    }

--两侧有墙壁，下层无墙壁地板。
RoomBgs[6]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+667,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+7+94*7,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[7]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+667,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+7+94*7,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[8]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+667,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*6,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[9]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+667,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*6,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[10]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6-4,y=0},
		 {res="#Room_floor_9.png",x=Room_Distance.x+25+94*7-29,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[11]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[12]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6-4,y=0},
		 {res="#Room_floor_9.png",x=Room_Distance.x+25+94*7-28,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[13]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[14]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+667,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_8.png",x=Room_Distance.x+16,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+32,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+31+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+30+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+29+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+28+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+27+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+26+94*6-17,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+25+94*7-18,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[15]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+667,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*6,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[16]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+667,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+7+94*7,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[17]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+667,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_8.png",x=Room_Distance.x+16,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+32,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+31+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+30+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+29+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+28+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+27+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+26+94*6-17,y=0},
                 {res="#Room_floor_6.png",x=Room_Distance.x+25+94*7-18,y=-2},
		 },--地板
    }

--===========================普通房间=============================六块半地板32-52

--两侧无墙，地板短。
RoomBgs[32]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47-1,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[33]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[34]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+64-1,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[35]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
                 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[36]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+24,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+23+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+22+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+21+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+20+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+19+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*5+64,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+15+94*6+64,y=-2},
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[37]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[38]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+31+94*6+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[39]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+31+94*6+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[40]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[41]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[42]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47-1,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[43]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[44]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47-1,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[45]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[46]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+31+94*6+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[47]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[48]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+31+94*6+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[49]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板		
    }

--六块半地板，两侧有墙壁，下层7块黄色房间。
RoomBgs[50]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+24,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+645,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--六块半地板，左侧有墙壁，下层7块黄色房间。
RoomBgs[51]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+24,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--六块半地板，右侧有墙壁，下层7块黄色房间。
RoomBgs[52]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+645,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+7+94*7,y=-2},
		 },--地板
    }

--===========================普通房间=============================六块地板62-82

--两侧无墙，地板短。
RoomBgs[62]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5-1,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[63]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[64]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+94*6-17-1,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[65]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5-1,y=0},		
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[66]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[67]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[68]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+56+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[69]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+56+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[70]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[71]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[72]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*5,y=0},	
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[73]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[74]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*5,y=0},	
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[75]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[76]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+56+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[77]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[78]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+56+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[79]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+622,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--六块地板，两侧有墙壁，下层6块半黄色房间。
RoomBgs[80]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+48,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+622,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--六块地板，左侧有墙壁，下层6块半黄色房间。
RoomBgs[81]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+48,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--六块地板，右侧有墙壁，下层6块半黄色房间。
RoomBgs[82]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+622,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+31+94*6+48,y=-2},
		 },--地板
    }

--===========================普通房间=============================五块半地板92-112

--两侧无墙，地板短。
RoomBgs[92]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47-1,y=0},		
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[93]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[94]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*5-30-1,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[95]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47-1,y=0},		
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[96]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[97]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[98]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+78+94*5+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[99]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+78+94*5+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[100]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[101]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[102]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+78+94*4+47,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[103]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[104]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+78+94*4+47,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[105]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[106]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+78+94*5+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[107]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[108]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+78+94*5+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[109]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--五块半地板，两侧有墙壁，下层6块黄色房间。
RoomBgs[110]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+70,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+598,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--五块半地板，左侧有墙壁，下层6块黄色房间。
RoomBgs[111]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+70,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--五块半地板，右侧有墙壁，下层6块黄色房间。
RoomBgs[112]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+598,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+56+94*6,y=-2},
		 },--地板
    }

--===========================普通房间=============================五块地板122-142

--两侧无墙，地板短。
RoomBgs[122]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5-1,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[123]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[124]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5-1,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[125]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5-1,y=0},		
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[126]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[127]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[128]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+574,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+8+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[129]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+574,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+8+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[130]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+574,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[131]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+574,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[132]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5-1,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[133]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[134]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5-1,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[135]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[136]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+574,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+8+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[137]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+574,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[138]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+574,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+8+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，长地板。
RoomBgs[139]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+574,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--五块地板，两侧有墙壁，下层五块半黄色房间。
RoomBgs[140]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+94,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+574,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--五块地板，左侧有墙壁，下层五块半黄色房间。
RoomBgs[141]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+94,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--五块地板，右侧有墙壁，下层五块半黄色房间。
RoomBgs[142]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+574,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+78+94*5+48,y=-2},
		 },--地板
    }

--===========================普通房间=============================四块半地板152-172

--两侧无墙，地板短。
RoomBgs[152]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},--X+134
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47-1,y=0},--X+459
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[153]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[154]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-30-1,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[155]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47-1,y=0},	
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[156]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+23+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+22+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+21+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+20+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94*5-30,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[157]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},--X+134
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
     }

--两侧有墙壁，下层无墙壁地板。
RoomBgs[158]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+32+94*6-46,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[159]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+32+94*6-46,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[160]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[161]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[162]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47-1,y=0},	
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[163]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[164]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47-1,y=0},	
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[165]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[166]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},--X+134
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},--X+459
                 {res="#Room_floor_4.png",x=Room_Distance.x+32+94*6-46,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[167]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[168]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+32+94*6-46,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[169]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},--X+134
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},--X+459
                 {res="#Room_floor_6.png",x=Room_Distance.x+32+94*6-46,y=-2},
		 },--地板
    }

--四块半地板，两侧有墙壁，下层五块黄色房间。
RoomBgs[170]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+117,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+552,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--四块半地板，左侧有墙壁，下层五块黄色房间。
RoomBgs[171]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+117,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }

--四块半地板，右侧有墙壁，下层五块黄色房间。
RoomBgs[172]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+552,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6,y=-2},
		 },--地板
    }


--===========================普通房间=============================四块地板182-202

--两侧无墙，地板短。
RoomBgs[182]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4-1,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[183]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+58+94*5,y=-2},

		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[184]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4+17-1,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[185]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*4,y=0},	
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[186]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+48+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+47+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+46+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+45+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+44+94*4+17,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+43+94*5+15,y=-2},
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[187]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[188]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+58+94*5,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[189]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+58+94*5,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[190]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[191]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[192]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4-1,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[193]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[194]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*4,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[195]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[196]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+58+94*5,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[197]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[198]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+58+94*5,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，长地板。
RoomBgs[199]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
                 {res="#Room_floor_6.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--四块地板，两侧有墙壁，下层四块半黄色房间。
RoomBgs[200]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+142,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+530,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-50,y=-2},--X+553
		 },--地板
    }

--四块地板，左侧有墙壁，下层四块半黄色房间。
RoomBgs[201]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+142,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-50,y=-2},--X+553
		 },--地板
    }

--四块地板，右侧有墙壁，下层四块半黄色房间。
RoomBgs[202]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+530,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=-2},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-50,y=-2},--X+553
		 },--地板
    }


--===========================普通房间=============================三块半地板212-232

--两侧无墙，地板短。
RoomBgs[212]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47-1,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[213]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+82+94*4+47,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[214]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+64-1,y=0},                
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[215]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47-1,y=0},   	
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[216]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+69+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+68+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+67+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66+94*3+64,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+65+94*4+64,y=-2},                
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[217]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
	        {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},
                {res="#Room_floor_2.png",x=Room_Distance.x+82+94*4+47,y=-2},
		},--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[218]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*3+47,y=0},                
		 {res="#Room_floor_4.png",x=Room_Distance.x+82+94*4+47,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[219]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_4.png",x=Room_Distance.x+82+94*4+47,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[220]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_6.png",x=Room_Distance.x+82+94*4+47,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[221]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_6.png",x=Room_Distance.x+82+94*4+47,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[222]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47-1,y=0},  
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[223]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+82+94*4+47,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[224]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47-1,y=0},  
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[225]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+82+94*4+47,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[226]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	        {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},
                {res="#Room_floor_4.png",x=Room_Distance.x+82+94*4+47,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[227]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_6.png",x=Room_Distance.x+82+94*4+47,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[228]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_4.png",x=Room_Distance.x+82+94*4+47,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[229]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+507,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	        {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},
                {res="#Room_floor_6.png",x=Room_Distance.x+82+94*4+47,y=-2},
		 },--地板
    }

--三块半地板，两侧有墙壁，下层四块黄色房间。
RoomBgs[230]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+164,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+507,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--三块半地板，左侧有墙壁，下层四块黄色房间。
RoomBgs[231]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+164,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--三块半地板，右侧有墙壁，下层四块黄色房间。
RoomBgs[232]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+507,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+58+94*5,y=-2},
		 },--地板
    }

--===========================普通房间=============================三块地板242-262

--两侧无墙，地板短。
RoomBgs[242]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3-1,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[243]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[244]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+107+94*3+17-1,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[245]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3-1,y=0},	
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[246]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+94+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+93+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+92+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+92+94*3+17,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*5,y=-2},
		 },--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[247]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[248]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+104+94*4,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[249]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+104+94*4,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[250]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[251]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[252]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3-1,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[253]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[254]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3-1,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[255]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[256]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+104+94*4,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[257]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[258]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+104+94*4,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[259]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+482,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+104+94*4,y=-2},
		 },--地板
    }

--三块地板，两侧有墙壁，下层三块半黄色房间。
RoomBgs[260]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+188,y=13,type = RoomWall_Type.Left},{res="#Room_wall_1.png",x=Room_Distance.x+482,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47-1,y=-2},
		 },--地板
    }

--三块地板，左侧有墙壁，下层三块半黄色房间。
RoomBgs[261]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+188,y=13,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47-1,y=-2},
		 },--地板
    }

--三块地板，右侧有墙壁，下层三块半黄色房间。
RoomBgs[262]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+482,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47-1,y=-2},
		 },--地板
    }
--==============================单向倾斜==========================
--=================================================================六块半向右倾斜1001-1011
--两侧无墙壁，长条
RoomBgs[1001]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+4,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5+46,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+13+94*6+45,y=-2},
		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[1002]=
    {
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*6-27,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[1003]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+4,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*6-27,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[1004]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5+46,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+13+94*6+46,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[1005]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+644,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5+45,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+35+94*6+43,y=0},
		 },--地板
    }

--左侧有墙，
RoomBgs[1006]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5+45,y=0},
		 },--地板
    }

--左侧有墙，下层左侧有墙
RoomBgs[1007]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+24,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+4,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*6-27,y=0},
		 },--地板
    }

--左侧有墙，下层两侧有墙
RoomBgs[1008]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+24,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+4,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5+46,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+13+94*6+46,y=-2},
		 },--地板
    }


--左侧有墙壁，下层右边有墙。
RoomBgs[1009]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5+25,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+34+94*6+24,y=-2},
		 },--地板
    }

--右侧有墙壁，左侧无墙。
RoomBgs[1010]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+644,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*6-27,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+13+94*7-29,y=0},
		 },--地板
    }

--右侧有墙壁，下层左侧有墙。
RoomBgs[1011]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+644,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_1.png",x=Room_Distance.x+4,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+20,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*6-27,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+13+94*7-29,y=0},
                 },--地板
    }

--=================================================================六块半向左倾斜1021-1031
--两侧无墙壁，长条
RoomBgs[1021]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+44,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+60,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5+46,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+53+94*6+46,y=-2},
		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[1022]=
    {
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*6-27,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[1023]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+44,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+60,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5+46,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[1024]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*6-27,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*7-28,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[1025]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5+46,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+33+94*6+46,y=0},
		 },--地板
    }

--右侧有墙，
RoomBgs[1026]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5+46,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+33+94*6+46,y=0},
		 },--地板
    }

--右侧有墙，下层右侧有墙
RoomBgs[1027]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+645,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*6-27,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*7-27,y=-2},
		 },--地板
    }

--右侧有墙，下层两侧有墙
RoomBgs[1028]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+645,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+44,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+60,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5+46,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+53+94*6+46,y=-2},
		 },--地板
    }


--右侧有墙壁，下层左边有墙。
RoomBgs[1029]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+44,y=-2},
	         {res="#Room_floor_7.png",x=Room_Distance.x+60,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*5+26,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+54+94*6+25,y=0},
		 },--地板
    }

--左侧有墙壁，右侧无墙。
RoomBgs[1030]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*6-27,y=0},
		 },--地板
    }

--左侧有墙壁，下层右侧有墙。
RoomBgs[1031]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+24,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*6-27,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*7-27,y=-2},
                 },--地板
    }

--==================================================================五块半向右倾斜1041-1060
--两侧无墙壁，长条
RoomBgs[1041]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+50,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*5+47,y=-2},
		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[1042]=
    {
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+67,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*5-27,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[1043]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+50,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*5-27,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[1044]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+67,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*5+47,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[1045]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+81+94*5-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+78+94*6-46,y=0},
		 },--地板
    }

--左侧有墙，
RoomBgs[1046]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+81+94*5-46,y=0},
		 },--地板
    }

--左侧有墙，下层左侧有墙
RoomBgs[1047]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+70,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+50,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*5-27,y=0},
		 },--地板
    }

--左侧有墙，下层两侧有墙
RoomBgs[1048]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+70,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+50,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*5+47,y=-2},
		 },--地板
    }


--左侧有墙壁，下层右边有墙。
RoomBgs[1049]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*5+47,y=-2},
		 },--地板
    }

--右侧有墙壁，左侧无墙。
RoomBgs[1050]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+67,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4+67,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+59+94*5+67,y=0},
		 },--地板
    }

--右侧有墙壁，下层左侧有墙。
RoomBgs[1051]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_1.png",x=Room_Distance.x+50,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*4+67,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+59+94*5+67,y=0},
                 },--地板
    }

--==================================================================五块半向左倾斜1061-1080
--两侧无墙壁，长条
RoomBgs[1061]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+5+94*6+47,y=-2},
		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[1062]=
    {
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*5-27,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[1063]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5+47,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[1064]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+5+94*6+47,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[1065]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+81+94*5-46,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+78+94*6-46,y=0},
		 },--地板
    }

--右侧有墙，
RoomBgs[1066]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*5-48,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+80+94*6-48,y=0},

		 },--地板
    }

--右侧有墙，下层右侧有墙
RoomBgs[1067]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+598,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+12+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+5+94*6+47,y=-2},
		 },--地板
    }

--右侧有墙，下层两侧有墙
RoomBgs[1068]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+598,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+5+94*6+47,y=-2},
		 },--地板
    }


--右侧有墙壁，下层左边有墙。
RoomBgs[1069]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+598,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+9+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5+27,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+5+94*6+27,y=0},
		 },--地板
    }

--左侧有墙壁，右侧无墙。
RoomBgs[1070]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+8+94*5+47,y=0},
		 },--地板
    }

--左侧有墙壁，下层右侧有墙。
RoomBgs[1071]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+81+94*5-26,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+8+94*6-26,y=-2},
                 },--地板
    }

--==================================================================四块半向右倾斜1081-2000
--两侧无墙壁，长条
RoomBgs[1081]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+97,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+13+94*5+47,y=-2},
		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[1082]=
    {
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+20+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+19+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*5-27,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[1083]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+97,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4+47,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[1084]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+20+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+13+94*5+47,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[1085]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*4+48,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+32+94*5+48,y=0},
		 },--地板
    }

--左侧有墙，
RoomBgs[1086]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*4+48,y=0},
		 },--地板
    }

--左侧有墙，下层左侧有墙
RoomBgs[1087]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+117,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+97,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4+47,y=0},
		 },--地板
    }

--左侧有墙，下层两侧有墙
RoomBgs[1088]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+117,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+97,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+13+94*5+47,y=-2},
		 },--地板
    }


--左侧有墙壁，下层右边有墙。
RoomBgs[1089]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*4+28,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*5+28,y=-2},
		 },--地板
    }

--右侧有墙壁，左侧无墙。
RoomBgs[1090]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+20+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*5-27,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+13+94*6-27,y=0},

		 },--地板
    }

--右侧有墙壁，下层左侧有墙。
RoomBgs[1091]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_1.png",x=Room_Distance.x+97,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+19+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+18+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*5-27,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+13+94*6-27,y=0},
                 },--地板
    }

--==================================================================四块半向左倾斜2001-2020
--两侧无墙壁，长条
RoomBgs[2001]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+137,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*4+48,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+52+94*5+48,y=-2},
		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[2002]=
    {
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*4+48,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[2003]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+137,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*4+48,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[2004]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*4+48,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+52+94*5+48,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[2005]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+117,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*4+48,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+32+94*5+48,y=0},
		 },--地板
    }

--右侧有墙，
RoomBgs[2006]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4+48,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+33+94*5+47,y=0},
		 },--地板
    }

--右侧有墙，下层右侧有墙
RoomBgs[2007]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+552,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-24,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6-27,y=-2},
		 },--地板
    }

--右侧有墙，下层两侧有墙
RoomBgs[2008]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+552,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+137,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+55+94*4+48,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+52+94*5+48,y=-2},
		 },--地板
    }


--右侧有墙壁，下层左边有墙。
RoomBgs[2009]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+552,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+137,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+58+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+57+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+56+94*4+27,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+53+94*5+27,y=0},
		 },--地板
    }

--左侧有墙壁，右侧无墙。
RoomBgs[2010]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_3.png",x=Room_Distance.x+117,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5-27,y=0},
		 },--地板
    }

--左侧有墙壁，下层右侧有墙。
RoomBgs[2011]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+117,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5-26,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+32+94*6-26,y=-2},
                 },--地板
    }

--==================================================================三块半向右倾斜2021-2040
--两侧无墙壁，长条
RoomBgs[2021]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+144,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+62+94*5-47,y=-2},
		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[2022]=
    {
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+67+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+66+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*4-27,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[2023]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+144,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4-46,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[2024]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+67+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*4-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+62+94*5-47,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[2025]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+505,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+164,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*4-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+80+94*5-47,y=0},
		 },--地板
    }

--左侧有墙，
RoomBgs[2026]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+164,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*4-47,y=0},
		 },--地板
    }

--左侧有墙，下层左侧有墙
RoomBgs[2027]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+164,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+144,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4-46,y=0},
		 },--地板
    }

--左侧有墙，下层两侧有墙
RoomBgs[2028]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+164,y=13,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+144,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+62+94*5-47,y=-2},
		 },--地板
    }


--左侧有墙壁，下层右边有墙。
RoomBgs[2029]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+164,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*4-67,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+80+94*5-67,y=-2},
		 },--地板
    }

--右侧有墙壁，左侧无墙。
RoomBgs[2030]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+505,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+67+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+66+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*4-27,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+60+94*5-27,y=0},
		 },--地板
    }

--右侧有墙壁，下层左侧有墙。
RoomBgs[2031]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+505,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_1.png",x=Room_Distance.x+144,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+66+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+65+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+64+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*4-27,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+60+94*5-27,y=0},

                 },--地板
    }

--==================================================================三块半向左倾斜2041-2060
--两侧无墙壁，长条
RoomBgs[2041]=
    {
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90+94,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*5-48,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+9+94*6-48,y=-2},

		 },--地板
    }

--两侧无墙壁，短条
RoomBgs[2042]=
    {
        floor = {

	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*4-47,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[2043]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90+94,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+106+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+105+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+104+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+103+94*4-46,y=0},
		 },--地板
    }


--两侧无墙壁，下层右边有墙。
RoomBgs[2044]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*4-27,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+82+94*5-27,y=-2},
		 },--地板
    }

--两侧有墙壁。
RoomBgs[2045]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+505,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+80+94*5-47,y=0},
		 },--地板
    }

--右侧有墙，
RoomBgs[2046]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+505,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+80+94*5-47,y=0},
		 },--地板
    }

--右侧有墙，下层右侧有墙
RoomBgs[2047]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+505,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*4-27,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+80+94*5-27,y=-2},
		 },--地板
    }

--右侧有墙，下层两侧有墙
RoomBgs[2048]=
    {
        wallLeftRight = {{res="#Room_wall_1.png",x=Room_Distance.x+505,y=13,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90+94,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+10+94*5-48,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+7+94*6-48,y=-2},
		 },--地板
    }


--右侧有墙壁，下层左边有墙。
RoomBgs[2049]=
     {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+505,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+90+94,y=-2},
                 {res="#Room_floor_7.png",x=Room_Distance.x+106+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+105+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+104+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+103+94*4-67,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+100+94*5-67,y=0},
		 },--地板
    }

--左侧有墙壁，右侧无墙。
RoomBgs[2050]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
                 {res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4-46,y=0},
		 },--地板
    }

--左侧有墙壁，下层右侧有墙。
RoomBgs[2051]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4-27,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+80+94*5-27,y=-2},
                 },--地板
    }

--==============================双向倾斜===========================

RoomBgs[10001]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*6,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }
RoomBgs[10002]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right}},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
                 {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

RoomBgs[10003]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},
	         {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }
    
--==============================================================钢架楼层
--七块地板钢架
RoomBgs[3001]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_special_floor.png",x=Room_Distance.x+0,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x-1+94,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-2+94*2,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x-3+94*3,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-4+94*4,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x-5+94*5,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-6+94*6,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-66+94*7-1,y=0},
		 },--地板
    }

--六块半地板钢架
RoomBgs[3002]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_special_floor.png",x=Room_Distance.x+24,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+23+94,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+22+94*2,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+21+94*3,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+20+94*4,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+19+94*5,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+2+94*6-1,y=0},
		 },--地板
    }

--六块地板钢架
RoomBgs[3003]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_special_floor.png",x=Room_Distance.x+48,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+47+94,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+46+94*2,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+45+94*3,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+44+94*4,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+43+94*5,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+43+94*5+34-1,y=0},
                 },--地板
    }
--五块半地板钢架
RoomBgs[3004]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_special_floor.png",x=Room_Distance.x+70,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+69+94,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+68+94*2,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+67+94*3,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+66+94*4,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+52+94*5-1,y=0},
                 },--地板
    }

--五块地板钢架
RoomBgs[3005]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_special_floor.png",x=Room_Distance.x+94,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+93+94,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+92+94*2,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+91+94*3,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+90+94*4,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+28+94*5-1,y=0},
                 },--地板
    }

--四块半地板钢架
RoomBgs[3006]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_special_floor.png",x=Room_Distance.x+117,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+116+94,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+115+94*2,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+114+94*3,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+100+94*4-1,y=0},
                 },--地板
    }

--四块地板钢架
RoomBgs[3007]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_special_floor.png",x=Room_Distance.x+142,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+141+94,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+140+94*2,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+139+94*3,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+77+94*4-1,y=0},
                 },--地板
    }
--三块半地板钢架
RoomBgs[3008]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_special_floor.png",x=Room_Distance.x+166,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+165+94,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+164+94*2,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+147+94*3-1,y=0},
                 },--地板
    }

--三块地板钢架
RoomBgs[3009]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_special_floor.png",x=Room_Distance.x+188,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+187+94,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x+186+94*2,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x+135+94*3-1,y=0},
                 },--地板
    }

--===============================横跑房间===============================
RoomBgs[4001]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+14,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+14+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+14+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*6,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*7,y=0},},--地板
        type = 2,   --横跑时的桥梁配置，0：水平方向一致，1：垂直方向一致，2：水平垂直均不一致
        gap = 80,    --横跑房间之间的间隙
    }
    
RoomBgs[4006]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+14,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*5,y=0},},--地板
        bg = {{res="#RoomRun_bg.png",x=Room_Distance.x+14,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+14+94,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+14+94*2,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+14+94*4,y=0},
            {res="#RoomRun_bg.png",x=Room_Distance.x+14+94*5,y=0},},
        type = 2,   --横跑时的桥梁配置，0：水平方向一致，1：垂直方向一致，2：水平垂直均不一致
        gap = 80,    --横跑房间之间的间隙
    }
    
RoomBgs[4002]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+668,y=16}},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},
	         {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
        type = 2,
	gap = 30,    --横跑房间之间的间隙
    }
    
RoomBgs[4003]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0}},--地板
        type = 2,
        gap = 30,
    }
    
RoomBgs[4004]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16}},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},
	         {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
        type = 2,
	gap = 30,    --横跑房间之间的间隙
    }
RoomBgs[4005]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+668,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},
	         {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
        type = 2,
	gap = 30,    --横跑房间之间的间隙
    }
    