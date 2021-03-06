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

--===========================普通房间=============================
--钢架牵引机楼层
RoomBgs[1]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

--两侧无墙，地板短。
RoomBgs[2]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }

--两侧无墙壁，地板长
RoomBgs[3]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[4]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},},--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[5]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},		
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[6]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

--两侧无墙壁，下层右边有墙，左边短地板。
RoomBgs[7]=
    {
        wallLeftRight = {},--左右两侧墙壁
       floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[8]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[9]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[10]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[11]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+668,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
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

--普通左侧有墙壁，短地板。
RoomBgs[12]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[13]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=1},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[14]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[15]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[16]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},},--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[17]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[18]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，长地板。
RoomBgs[19]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+668,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
    }

--===========================普通房间=============================六块半地板

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
		 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[33]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[34]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+64,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[35]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+17+94*6+64,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
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
		 {res="#Room_floor_4.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[39]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+33+94*6+48,y=0},
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
		 {res="#Room_floor_6.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[41]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+33+94*6+48,y=0},
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
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[43]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[44]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
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
		 {res="#Room_floor_4.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[47]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[48]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+33+94*6+48,y=0},
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
		 {res="#Room_floor_6.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板		
    }

--六块半地板，两侧有墙壁，下层7块黄色房间。
RoomBgs[50]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--六块半地板，左侧有墙壁，下层7块黄色房间。
RoomBgs[51]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+24,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
    }

--六块半地板，右侧有墙壁，下层7块黄色房间。
RoomBgs[52]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+645,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+0,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+11+94*6,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*7,y=0},
		 },--地板
    }

--===========================普通房间=============================六块地板

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
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[63]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[64]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+94*6-17,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[65]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},		
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[68]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[69]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[70]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[71]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+59+94*6,y=0},
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
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},	
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[73]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[74]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},	
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[76]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[77]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[78]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[79]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--六块地板，两侧有墙壁，下层6块半黄色房间。
RoomBgs[80]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--六块地板，左侧有墙壁，下层6块半黄色房间。
RoomBgs[81]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+48,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--六块地板，右侧有墙壁，下层6块半黄色房间。
RoomBgs[82]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+623,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+24,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+40,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+35+94*5,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+34+94*5+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+33+94*6+48,y=0},
		 },--地板
    }

--===========================普通房间=============================五块半地板

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
                 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},		
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[93]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[94]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*5-30,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[95]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},		
		 },--地板
    }

--两侧无墙壁，下层右边有墙。
RoomBgs[96]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[98]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[99]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[100]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_3.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[101]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+81+94*5+48,y=0},
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
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[103]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[104]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[106]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[107]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[108]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_5.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[109]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--五块半地板，两侧有墙壁，下层6块黄色房间。
RoomBgs[110]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--五块半地板，左侧有墙壁，下层6块黄色房间。
RoomBgs[111]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+70,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--五块半地板，右侧有墙壁，下层6块黄色房间。
RoomBgs[112]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+599,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+59+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+59+94*6,y=0},
		 },--地板
    }

--===========================普通房间=============================五块地板

--两侧无墙，地板短。
RoomBgs[122]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[123]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[124]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[125]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},		
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+10+94*6,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[128]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+575,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[129]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+575,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[130]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+575,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[131]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+575,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+11+94*6,y=0},
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
	         {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[133]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=1},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[134]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[136]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+575,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[137]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+575,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[138]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+575,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，长地板。
RoomBgs[139]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+575,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--五块地板，两侧有墙壁，下层五块半黄色房间。
RoomBgs[140]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+575,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--五块地板，左侧有墙壁，下层五块半黄色房间。
RoomBgs[141]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+94,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--五块地板，右侧有墙壁，下层五块半黄色房间。
RoomBgs[142]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+575,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+86+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+83+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+82+94*4+47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+81+94*5+48,y=0},
		 },--地板
    }

--===========================普通房间=============================四块半地板

--两侧无墙，地板短。
RoomBgs[152]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},--X+134
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},--X+459
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[153]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[154]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-30,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[155]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},	
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
                 {res="#Room_floor_2.png",x=Room_Distance.x+553,y=0},
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
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},--X+459
                 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-47,y=0},
		 },--地板
     }

--两侧有墙壁，下层无墙壁地板。
RoomBgs[158]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[159]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[160]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[161]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[162]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},	
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[163]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[164]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=16,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},	
		 },--地板
    }

--普通左侧有墙壁，下方右侧有墙，长地板。
RoomBgs[165]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[166]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},--X+134
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},--X+459
                 {res="#Room_floor_4.png",x=Room_Distance.x+36+94*6-47,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[167]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+553,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[168]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+553,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[169]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},--X+134
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},--X+459
                 {res="#Room_floor_6.png",x=Room_Distance.x+36+94*6-47,y=0},
		 },--地板
    }

--四块半地板，两侧有墙壁，下层五块黄色房间。
RoomBgs[170]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--四块半地板，左侧有墙壁，下层五块黄色房间。
RoomBgs[171]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+117,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }

--四块半地板，右侧有墙壁，下层五块黄色房间。
RoomBgs[172]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+553,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+16+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+12+94*5,y=0},
                 {res="#Room_floor_2.png",x=Room_Distance.x+11+94*6,y=0},
		 },--地板
    }


--===========================普通房间=============================四块地板

--两侧无墙，地板短。
RoomBgs[182]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[183]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+60+94*5,y=0},

		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[184]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+60+94*4+17,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[185]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},	
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+43+94*5+17,y=0},
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
                 {res="#Room_floor_2.png",x=Room_Distance.x+60+94*5,y=0},
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
		 {res="#Room_floor_4.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[189]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+60+94*5,y=0},
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
		 {res="#Room_floor_6.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[191]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+60+94*5,y=0},
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
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[193]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[194]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+60+94*5,y=0},
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
                 {res="#Room_floor_4.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[197]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[198]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+60+94*5,y=0},
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
                 {res="#Room_floor_6.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--四块地板，两侧有墙壁，下层四块半黄色房间。
RoomBgs[200]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--四块地板，左侧有墙壁，下层四块半黄色房间。
RoomBgs[201]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+142,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }

--四块地板，右侧有墙壁，下层四块半黄色房间。
RoomBgs[202]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+530,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+23+94,y=0},--X+117
	         {res="#Room_floor_7.png",x=Room_Distance.x+40+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+39+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+38+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+37+94*4,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+36+94*5-47,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+36+94*6-47,y=0},--X+553
		 },--地板
    }


--===========================普通房间=============================三块半地板

--两侧无墙，地板短。
RoomBgs[212]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[213]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[214]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+64,y=0},                
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[215]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},   	
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
                 {res="#Room_floor_2.png",x=Room_Distance.x+65+94*4+64,y=0},                
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
                {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47,y=0},
		},--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[218]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_4.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[219]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_4.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[220]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_6.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[221]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_6.png",x=Room_Distance.x+83+94*4+47,y=0},
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
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},  
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[223]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[224]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},  
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[226]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	        {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},
                {res="#Room_floor_4.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[227]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_6.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[228]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_4.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[229]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	        {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
		{res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},
                {res="#Room_floor_6.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--三块半地板，两侧有墙壁，下层四块黄色房间。
RoomBgs[230]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--三块半地板，左侧有墙壁，下层四块黄色房间。
RoomBgs[231]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+164,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--三块半地板，右侧有墙壁，下层四块黄色房间。
RoomBgs[232]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+506,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+48+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+64+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+63+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+62+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+61+94*4,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+60+94*5,y=0},
		 },--地板
    }

--===========================普通房间=============================三块地板

--两侧无墙，地板短。
RoomBgs[242]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 },--地板
    }

--两侧无墙壁，地板长
RoomBgs[243]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙。
RoomBgs[244]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+107+94*3+17,y=0},
		 },--地板
    }

--两侧无墙壁，下层左边有墙，右边短地板。
RoomBgs[245]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},	
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
                 {res="#Room_floor_2.png",x=Room_Distance.x+13+94*5,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
     }


--两侧有墙壁，下层无墙壁地板。
RoomBgs[248]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--两侧有墙壁，下层左边有墙。
RoomBgs[249]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--两侧有墙壁，下层右边有墙。
RoomBgs[250]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--两侧有墙壁，下层左右有墙。
RoomBgs[251]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--普通左侧有墙壁，短地板。
RoomBgs[252]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
                 },--地板
    }

--普通左侧有墙壁，下方两侧有墙，长地板。
RoomBgs[253]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_2.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--普通左侧有墙壁，下方左侧有墙，短地板。
RoomBgs[254]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
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
		 {res="#Room_floor_2.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--普通右侧有墙壁，短地板。
RoomBgs[256]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左右有墙，长地板。
RoomBgs[257]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方左侧有墙，长地板。
RoomBgs[258]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+94+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_4.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--普通右侧有墙壁，下方右侧有墙，短地板。
RoomBgs[259]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
	         {res="#Room_floor_7.png",x=Room_Distance.x+110+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+109+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+108+94*3,y=0},
		 {res="#Room_floor_6.png",x=Room_Distance.x+107+94*4,y=0},
		 },--地板
    }

--三块地板，两侧有墙壁，下层四块半黄色房间。
RoomBgs[230]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--三块地板，左侧有墙壁，下层四块半黄色房间。
RoomBgs[231]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+188,y=15,type = RoomWall_Type.Left}},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--三块地板，右侧有墙壁，下层四块半黄色房间。
RoomBgs[232]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+483,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_1.png",x=Room_Distance.x+70+94,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+87+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+86+94*2,y=0},
		 {res="#Room_floor_7.png",x=Room_Distance.x+85+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+84+94*3+47,y=0},                
		 {res="#Room_floor_2.png",x=Room_Distance.x+83+94*4+47,y=0},
		 },--地板
    }

--==============================双向倾斜===========================

RoomBgs[1001]=
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
RoomBgs[1002]=
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

RoomBgs[1003]=
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
    
--=============================特殊房间配置=================================
--红钢管，长地板
RoomBgs[2001]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_special_floor.png",x=Room_Distance.x+0,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x-1+94,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-2+94*2,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x-3+94*3,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-4+94*4,y=0},
		 {res="#Room_special_floor.png",x=Room_Distance.x-5+94*5,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-6+94*6,y=0},
                 {res="#Room_special_floor.png",x=Room_Distance.x-66+94*7,y=0},
		 },--地板
    }

RoomBgs[2002]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+57,y=16},{res="#Room_wall.png",x=Room_Distance.x+631,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+57,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+57,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94+57,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2+57,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*3+57,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4+57,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+17+94*5+57,y=0},
                 {res="#Room_floor_4.png",x=Room_Distance.x+10+94*6+57,y=0},},--地板
    }

--===============================横跑房间===============================
RoomBgs[3001]=
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
    
RoomBgs[3006]=
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
    
RoomBgs[3002]=
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
    
RoomBgs[3003]=
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
    
RoomBgs[3004]=
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
RoomBgs[3005]=
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
    