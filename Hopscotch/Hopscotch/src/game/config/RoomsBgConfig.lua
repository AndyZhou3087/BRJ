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
RoomBgs[1001]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+15+94*2-16,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+13+94*5,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_5.png",x=Room_Distance.x+94*2-1,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_6.png",x=Room_Distance.x+13+94*5,y=0},},--地板
    }
    
RoomBgs[1002]=
    {
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+15+94*2-16,y=15,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+13+94*5,y=15,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {
            {res="#Room_floor_5.png",x=Room_Distance.x+94*2-1,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+15+94*2,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+13+94*4,y=0},
            {res="#Room_floor_6.png",x=Room_Distance.x+13+94*5,y=0},},--地板
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
		 },--地板/
    }


--==============================双向倾斜===========================

RoomBgs[101]=
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
RoomBgs[102]=
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

RoomBgs[103]=
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
RoomBgs[201]=
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

RoomBgs[202]=
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
RoomBgs[301]=
    {
        wallLeftRight = {},--左右两侧墙壁
        floor = {{res="#Room_floor_7.png",x=Room_Distance.x+14,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+14+94,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*2,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+14+94*3,y=0},
                 {res="#Room_floor_7.png",x=Room_Distance.x+14+94*4,y=0},
	         {res="#Room_floor_7.png",x=Room_Distance.x+14+94*5,y=0},},--地板
        type = 2,   --横跑时的桥梁配置，0：水平方向一致，1：垂直方向一致，2：水平垂直均不一致
        gap = 30,    --横跑房间之间的间隙
    }
    
RoomBgs[302]=
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
    
RoomBgs[303]=
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
    
RoomBgs[304]=
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
RoomBgs[305]=
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
    