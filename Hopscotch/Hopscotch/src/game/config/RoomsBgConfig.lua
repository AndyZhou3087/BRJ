--[[
房间背景、地板、墙体配置
]]

--房间大小
Room_Size = cc.size(692,99)--坐标：x:[29,721]

Room_Distance = cc.p(29,721)

Grid_Size = cc.size(90,90)

RoomBg_Type = 
{
    Half = 1,   --左右边背景为半块图片
    Full = 2,   --中间为整块图片
    All = 3,    --全局背景图
}

RoomWall_Type = 
{
    Left = 1,
    Right = 2,
}

RoomBgs = {}
RoomBgs[1]=
    {
        bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=17,type = RoomBg_Type.All},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16,type = RoomWall_Type.Left},{res="#Room_wall.png",x=Room_Distance.x+675,y=16,type = RoomWall_Type.Right},},--左右两侧墙壁
        floor = {{res="#Room_floor_3.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_4.png",x=Room_Distance.x+17+94*7,y=0},},--地板
    }
RoomBgs[2]=
    {
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},{res="#Room_bg_2.png",x=Room_Distance.x+17+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+17+94+47,y=16,type = RoomBg_Type.Full},{res="#Room_bg_2.png",x=Room_Distance.x+17+94*2+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+17+94*3+47,y=16,type = RoomBg_Type.Full},{res="#Room_bg_2.png",x=Room_Distance.x+17+94*4+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+17+94*5+47,y=16,type = RoomBg_Type.Full},{res="#Room_bg_3.png",x=Room_Distance.x+17+94*6+47,y=16,type = RoomBg_Type.Half},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+675,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_6.png",x=Room_Distance.x+17+94*7,y=0},},--地板
    }
    
RoomBgs[3]=
    {
        bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.All},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        wallLeftRight = {{res="#Room_wall.png",x=Room_Distance.x+0,y=16},{res="#Room_wall.png",x=Room_Distance.x+675,y=16},},--左右两侧墙壁
        floor = {{res="#Room_floor_5.png",x=Room_Distance.x+0,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*2,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*3,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*4,y=0},{res="#Room_floor_7.png",x=Room_Distance.x+17+94*5,y=0},
            {res="#Room_floor_7.png",x=Room_Distance.x+17+94*6,y=0},{res="#Room_floor_6.png",x=Room_Distance.x+17+94*7,y=0},},--地板
    }
    

--横跑房间配置
RoomBgs[1001]=
    {
        bg = {{res="",x=0,y=0},},--房间背景
        wallLeftRight = {{res="",x=0,y=0},},--左右两侧墙壁
        floor = {{res="",x=0,y=0},},--地板
        type = 0,   --横跑时的桥梁配置，0：水平方向一致，1：垂直方向一致，2：水平垂直均不一致
    }