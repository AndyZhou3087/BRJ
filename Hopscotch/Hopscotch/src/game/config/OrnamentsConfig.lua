--[[
房间装饰物配置
]]

RoomBg_Type = 
    {
        Half = 1,   --左右边背景为半块图片
        Full = 2,   --中间为整块图片
        All = 3,    --全局背景图
        Window = 4,   --窗户背景
    }

Ornaments = {}
Ornaments[1]=
    {
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},{res="#Room_bg_2.png",x=Room_Distance.x+17+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_window_4.png",x=Room_Distance.x+16+94+47,y=16,type = RoomBg_Type.Window},{res="#Room_bg_2.png",x=Room_Distance.x+15+94*2+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+14+94*3+47,y=16,type = RoomBg_Type.Full},{res="#Room_bg_2.png",x=Room_Distance.x+13+94*4+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+12+94*5+47,y=16,type = RoomBg_Type.Full},{res="#Room_bg_3.png",x=Room_Distance.x+11+94*6+47,y=16,type = RoomBg_Type.Half},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }
Ornaments[2]=
    {
        bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+17+94,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+16+94*2,y=16},
            {res="#Room_bg_1.png",x=Room_Distance.x+15+94*3,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+14+94*4,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+13+94*5,y=16},
            {res="#Room_bg_1.png",x=Room_Distance.x+12+94*6,y=16},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }
    
Ornaments[3]=
    {
        bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+17+94,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+16+94*2,y=16},
            {res="#Room_bg_1.png",x=Room_Distance.x+15+94*3,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+14+94*4,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+13+94*5,y=16},
            {res="#Room_bg_1.png",x=Room_Distance.x+12+94*6,y=16},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }
    
Ornaments[4]=
    {
        bg = {{res="#Room_bg_2.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Full},{res="#Room_window_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Window},
            {res="#Room_bg_2.png",x=Room_Distance.x+15+94*2,y=16,type = RoomBg_Type.Full},{res="#Room_bg_2.png",x=Room_Distance.x+14+94*3,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+13+94*4,y=16,type = RoomBg_Type.Full},{res="#Room_bg_2.png",x=Room_Distance.x+12+94*5,y=16,type = RoomBg_Type.Full},},--房间背景
        ornament = {}
    }
    
Ornaments[5]=
    {
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},{res="#Room_bg_2.png",x=Room_Distance.x+17+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_window_4.png",x=Room_Distance.x+16+94+47,y=16,type = RoomBg_Type.Window},{res="#Room_bg_2.png",x=Room_Distance.x+15+94*2+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+14+94*3+47,y=16,type = RoomBg_Type.Full},{res="#Room_bg_2.png",x=Room_Distance.x+13+94*4+47,y=16,type = RoomBg_Type.Full},
            {res="#Room_bg_2.png",x=Room_Distance.x+12+94*5+47,y=16,type = RoomBg_Type.Full},{res="#Room_bg_3.png",x=Room_Distance.x+11+94*6+47,y=16,type = RoomBg_Type.Half},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {}
    }
    
Ornaments[6]=
    {
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+57,y=16},{res="#Room_specialbg_1.png",x=Room_Distance.x+57+16,y=85,type = RoomBg_Type.Full},
            {res="#Room_specialbg_5.png",x=Room_Distance.x+57+16+78,y=16},{res="#Room_specialbg_5.png",x=Room_Distance.x+57+94*2,y=16},
            {res="#Room_specialbg_5.png",x=Room_Distance.x+57+94*3,y=16},{res="#Room_specialbg_5.png",x=Room_Distance.x+57+94*4,y=16},
            {res="#Room_specialbg_5.png",x=Room_Distance.x+57+94*5,y=16},{res="#Room_specialbg_5.png",x=Room_Distance.x+57+94*6,y=16},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }
    
Ornaments[7]=
    {
        bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17+57,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+17+94+10,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+16+94+57,y=16},
            {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2+57,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+14+94*3+57,y=16},{res="#Room_bg_1.png",x=Room_Distance.x+13+94*4+57,y=16},
            {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5+57,y=16},},--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }