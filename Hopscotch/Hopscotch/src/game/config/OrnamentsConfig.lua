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


--七块地板    1-50
--六块半地板 51-100
--六块地板   101-150
--五块半地板 151-200
--五块地板   201-250
--四块半地板 251-300
--四块地板   301-350
--三块半地板 351-400
--三块地板   401-450



--===================================================================================================================七块
--黄色楼层，三电梯
Ornaments[1]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=350,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，两电梯
Ornaments[2]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[3]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[4]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=550,y=16}}
    }

--普通楼层，四窗户
Ornaments[5]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[6]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[7]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=600,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[8]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[9]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[10]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[11]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[12]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[13]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[14]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[15]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=550,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[16]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[17]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[18]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[19]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=600,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[20]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[21]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[22]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[23]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[24]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[25]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[26]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[27]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=550,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[28]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[29]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[30]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[31]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=250,y=16},{res="#Room_ornament_4.png",x=550,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[32]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[33]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[34]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_1.png",x=300,y=16},{res="#Room_ornament_2.png",x=450,y=16},{res="#Room_ornament_3.png",x=600,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[35]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[36]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[37]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=500,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[38]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=550,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[39]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_6.png",x=550,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[40]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_4.png",x=300,y=16},{res="#Room_ornament_3.png",x=500,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[41]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=350,y=16},{res="#Room_ornament_6.png",x=550,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[42]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[43]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[44]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_6.png",x=550,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[45]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[46]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_2.png",x=450,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[47]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16},{res="#Room_ornament_4.png",x=500,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[48]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[49]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_1.png",x=500,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[50]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+16+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+10+94*6+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_3.png",x=550,y=16}}
    }


--=======================================================================================================六块半
--黄色楼层，三电梯
Ornaments[51]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+39+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+38+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+37+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+35+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+34+94*6-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=350,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，两电梯
Ornaments[52]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+39+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+38+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+37+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+35+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+34+94*6-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[53]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+39+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+38+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+37+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+35+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+34+94*6-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[54]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+39+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+38+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+37+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+35+94*5,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+34+94*6-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=550,y=16}}
    }

--普通楼层，四窗户
Ornaments[55]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[56]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[57]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[58]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[59]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[60]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[61]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[62]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[63]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[64]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[65]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=500,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[66]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[67]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[68]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[69]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[70]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[71]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[72]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[73]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[74]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[75]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[76]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[77]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=500,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[78]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[79]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[80]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[81]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=250,y=16},{res="#Room_ornament_4.png",x=500,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[82]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[83]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[84]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_1.png",x=300,y=16},{res="#Room_ornament_2.png",x=400,y=16},{res="#Room_ornament_3.png",x=500,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[85]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[86]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[87]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=500,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[88]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=500,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[89]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_6.png",x=500,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[90]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_4.png",x=300,y=16},{res="#Room_ornament_3.png",x=500,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[91]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=350,y=16},{res="#Room_ornament_6.png",x=500,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[92]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[93]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[94]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_6.png",x=500,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[95]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[96]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_2.png",x=450,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[97]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16},{res="#Room_ornament_4.png",x=500,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[98]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[99]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_1.png",x=500,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[100]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+36+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+35+94*4+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+34+94*5+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_3.png",x=500,y=16}}
    }

--===================================================================================================================六块
--黄色楼层，三电梯
Ornaments[101]=
    {
        bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+63+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+62+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+61+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+60+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+59+94*5,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=350,y=16},{res="#Room_ornament_5.png",x=460,y=16}}
    }

--黄色楼层，两电梯
Ornaments[102]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+63+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+62+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+61+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+60+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+59+94*5,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=480,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[103]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+63+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+62+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+61+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+60+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+59+94*5,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_5.png",x=440,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[104]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+63+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+62+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+61+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+60+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+59+94*5,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，三窗户
Ornaments[105]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+62+47+94,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+47+94*2,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+47+94*3,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，三窗户中间沙发
Ornaments[106]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[107]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=460,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[108]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[109]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[110]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[111]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[112]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[113]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[114]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[115]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=470,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[116]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[117]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[118]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[119]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=440,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[120]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[121]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[122]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[123]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[124]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[125]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[126]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[127]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=450,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[128]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[129]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[130]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[131]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=250,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[132]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[133]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[134]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_1.png",x=280,y=16},{res="#Room_ornament_2.png",x=360,y=16},{res="#Room_ornament_3.png",x=480,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[135]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[136]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[137]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=440,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[138]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=470,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[139]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_6.png",x=480,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[140]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_4.png",x=300,y=16},{res="#Room_ornament_3.png",x=490,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[141]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=350,y=16},{res="#Room_ornament_6.png",x=470,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[142]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[143]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[144]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[145]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[146]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_2.png",x=450,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[147]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[148]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[149]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[150]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+60+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+59+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+58+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }


--========================================================================================================五块半
--黄色楼层，三电梯
Ornaments[151]=
    {
        bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+86+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+85+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+83+94*4,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+82+94*5-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=300,y=16},{res="#Room_ornament_5.png",x=450,y=16}}
    }

--黄色楼层，两电梯
Ornaments[152]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+86+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+85+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+83+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+82+94*5-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=480,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[153]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+86+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+85+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+83+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+82+94*5-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_5.png",x=440,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[154]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+86+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+85+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+83+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+82+94*5-47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，三窗户
Ornaments[155]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+85+47+94,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+47+94*2,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+47+94*3,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，三窗户中间沙发
Ornaments[156]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[157]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=460,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[158]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[159]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[160]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[161]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[162]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[163]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[164]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[165]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=470,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[166]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[167]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[168]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[169]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=440,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[170]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=150,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[171]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[172]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[173]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[174]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[175]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[176]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[177]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=450,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[178]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[179]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[180]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[181]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=250,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[182]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[183]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[184]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_1.png",x=280,y=16},{res="#Room_ornament_2.png",x=360,y=16},{res="#Room_ornament_3.png",x=480,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[185]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[186]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[187]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=440,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[188]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=470,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[189]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_6.png",x=480,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[190]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_4.png",x=300,y=16},{res="#Room_ornament_3.png",x=490,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[191]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_2.png",x=350,y=16},{res="#Room_ornament_6.png",x=470,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[192]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[193]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[194]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[195]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=150,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[196]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_2.png",x=450,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[197]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[198]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=150,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[199]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[200]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+83+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+82+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=150,y=16},{res="#Room_ornament_1.png",x=400,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--================================================================================================五块
--黄色楼层，三电梯
Ornaments[201]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	     {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	     {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
	     },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=200,y=16},{res="#Room_ornament_5.png",x=330,y=16},{res="#Room_ornament_5.png",x=460,y=16}}
    }

--黄色楼层，两电梯
Ornaments[202]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=230,y=16},{res="#Room_ornament_5.png",x=460,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[203]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=230,y=16},{res="#Room_ornament_6.png",x=340,y=16},{res="#Room_ornament_5.png",x=460,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[204]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=230,y=16},{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，四窗户
Ornaments[205]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，三窗户中间沙发
Ornaments[206]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[207]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[208]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window}, 
	      {res="#Room_window_1.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=190,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[209]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[210]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[211]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16},{res="#Room_ornament_1.png",x=360,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[212]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=270,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[213]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=240,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[214]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[215]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=430,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[216]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=230,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[217]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[218]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[219]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[220]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=300,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[221]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[222]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=300,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[223]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[224]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=350,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[225]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16},{res="#Room_ornament_2.png",x=340,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[226]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[227]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=350,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[228]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=240,y=16},{res="#Room_ornament_3.png",x=370,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[229]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=260,y=16},{res="#Room_ornament_4.png",x=440,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[230]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[231]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=250,y=16},{res="#Room_ornament_4.png",x=470,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[232]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[233]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[234]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_1.png",x=300,y=16},{res="#Room_ornament_2.png",x=380,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[235]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[236]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[237]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[238]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_2.png",x=420,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[239]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[240]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=220,y=16},{res="#Room_ornament_4.png",x=340,y=16},{res="#Room_ornament_3.png",x=450,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[241]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_2.png",x=330,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[242]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[243]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[244]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=270,y=16},{res="#Room_ornament_6.png",x=450,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[245]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_4.png",x=430,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[246]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_2.png",x=450,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[247]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[248]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[249]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=220,y=16},{res="#Room_ornament_1.png",x=330,y=16},{res="#Room_ornament_1.png",x=440,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[250]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+15+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+14+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+13+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+12+94*4+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+11+94*5+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=220,y=16},{res="#Room_ornament_1.png",x=330,y=16},{res="#Room_ornament_3.png",x=440,y=16}}
    }

--================================================================================================四块半
--黄色楼层，三电梯
Ornaments[251]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40+94,y=16,},--X+134
	     {res="#Room_bg_1.png",x=Room_Distance.x+39+94*2,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+38+94*3,y=16,},
	     {res="#Room_bg_1.png",x=Room_Distance.x+37+94*4,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4+47,y=16,},--X+459
	     },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=200,y=16},{res="#Room_ornament_5.png",x=330,y=16},{res="#Room_ornament_5.png",x=430,y=16}}
    }

--黄色楼层，两电梯
Ornaments[252]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+39+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+38+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+37+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4+47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=210,y=16},{res="#Room_ornament_5.png",x=420,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[253]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+39+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+38+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+37+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4+47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=220,y=16},{res="#Room_ornament_6.png",x=330,y=16},{res="#Room_ornament_5.png",x=440,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[254]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+40+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+39+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+38+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+37+94*4,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+36+94*4+47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=230,y=16},{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，四窗户
Ornaments[255]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，三窗户中间沙发
Ornaments[256]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[257]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[258]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window}, 
	      {res="#Room_window_1.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=190,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[259]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[260]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[261]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16},{res="#Room_ornament_1.png",x=360,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[262]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=270,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[263]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=240,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[264]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=220,y=16},{res="#Room_ornament_6.png",x=440,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[265]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=430,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[266]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=230,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[267]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[268]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[269]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[270]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=300,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[271]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[272]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=300,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[273]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[274]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=350,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[275]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_2.png",x=340,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[276]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[277]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=350,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[278]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=240,y=16},{res="#Room_ornament_3.png",x=370,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[279]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_4.png",x=440,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[280]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[281]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_4.png",x=440,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[282]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[283]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=180,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[284]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_1.png",x=280,y=16},{res="#Room_ornament_2.png",x=340,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[285]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[286]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[287]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[288]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_2.png",x=420,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[289]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=260,y=16},{res="#Room_ornament_6.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[290]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=220,y=16},{res="#Room_ornament_4.png",x=330,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[291]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_2.png",x=320,y=16},{res="#Room_ornament_6.png",x=440,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[292]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[293]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[294]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[295]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_4.png",x=430,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[296]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_2.png",x=440,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[297]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[298]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[299]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=220,y=16},{res="#Room_ornament_1.png",x=330,y=16},{res="#Room_ornament_1.png",x=440,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[300]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+40+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+39+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+38+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+37+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+36+94*4+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=220,y=16},{res="#Room_ornament_1.png",x=330,y=16},{res="#Room_ornament_3.png",x=440,y=16}}
    }


--================================================================================================四块
--黄色楼层，三电梯
Ornaments[301]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64+94,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+63+94*2,y=16,},
	     {res="#Room_bg_1.png",x=Room_Distance.x+62+94*3,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+61+94*4,y=16,},--X+459
	     },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=200,y=16},{res="#Room_ornament_5.png",x=330,y=16},{res="#Room_ornament_5.png",x=410,y=16}}
    }

--黄色楼层，两电梯
Ornaments[302]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+63+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+62+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+61+94*4,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=210,y=16},{res="#Room_ornament_5.png",x=420,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[303]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+63+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+62+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+61+94*4,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=200,y=16},{res="#Room_ornament_6.png",x=320,y=16},{res="#Room_ornament_5.png",x=400,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[304]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+64+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+63+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+62+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+61+94*4,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=230,y=16},{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，四窗户
Ornaments[305]=
{
        bg = {{res="#Room_window_3.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+63+94*2,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+62+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+61+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，三窗户中间沙发
Ornaments[306]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[307]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[308]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window}, 
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=220,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[309]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[310]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[311]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16},{res="#Room_ornament_1.png",x=360,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[312]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=270,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[313]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=210,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[314]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	     {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[315]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=400,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[316]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[317]=
{
        bg = {
	      {res="#Room_window_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+63+94*2,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+62+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+61+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[318]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[319]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[320]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=300,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[321]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[322]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=300,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[323]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[324]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	     {res="#Room_window_1.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=350,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[325]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_2.png",x=340,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[326]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_2.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[327]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=350,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[328]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=240,y=16},{res="#Room_ornament_3.png",x=370,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[329]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+61+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[330]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[331]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=200,y=16},{res="#Room_ornament_4.png",x=410,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[332]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[333]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=240,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[334]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16},{res="#Room_ornament_1.png",x=280,y=16},{res="#Room_ornament_2.png",x=340,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[335]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[336]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*3,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[337]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[338]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_2.png",x=420,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[339]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=260,y=16},{res="#Room_ornament_6.png",x=420,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[340]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_4.png",x=300,y=16},{res="#Room_ornament_3.png",x=410,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[341]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_2.png",x=300,y=16},{res="#Room_ornament_6.png",x=420,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[342]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[343]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[344]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[345]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_2.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_4.png",x=410,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[346]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_1.png",x=Room_Distance.x+60+94*4,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_2.png",x=420,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[347]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=200,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[348]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[349]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=210,y=16},{res="#Room_ornament_1.png",x=330,y=16},{res="#Room_ornament_1.png",x=410,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[350]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+64+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+63+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+62+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+61+94*3+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+60+94*4+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=210,y=16},{res="#Room_ornament_1.png",x=320,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--================================================================================================三块半
--黄色楼层，三电梯
Ornaments[351]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87+94,y=16,},--X+134
	     {res="#Room_bg_1.png",x=Room_Distance.x+86+94*2,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+85+94*3,y=16,},
	     {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3+47,y=16,},
	     },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=220,y=16},{res="#Room_ornament_5.png",x=330,y=16},{res="#Room_ornament_5.png",x=430,y=16}}
    }

--黄色楼层，两电梯
Ornaments[352]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+86+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+85+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3+47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=230,y=16},{res="#Room_ornament_5.png",x=420,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[353]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+86+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+85+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3+47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=220,y=16},{res="#Room_ornament_6.png",x=330,y=16},{res="#Room_ornament_5.png",x=440,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[354]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+87+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+86+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+85+94*3,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+84+94*3+47,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=230,y=16},{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，四窗户
Ornaments[355]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，三窗户中间沙发
Ornaments[356]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[357]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[358]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window}, 
	      {res="#Room_window_1.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=300,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[359]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[360]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[361]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=240,y=16},{res="#Room_ornament_1.png",x=380,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[362]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=270,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[363]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=240,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[364]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=240,y=16},{res="#Room_ornament_6.png",x=440,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[365]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=430,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[366]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=230,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[367]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[368]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[369]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[370]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_4.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=300,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[371]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[372]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=300,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[373]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=250,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[374]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=350,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[375]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16},{res="#Room_ornament_2.png",x=380,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[376]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[377]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=350,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[378]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=240,y=16},{res="#Room_ornament_3.png",x=370,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[379]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_4.png",x=440,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[380]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[381]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=250,y=16},{res="#Room_ornament_4.png",x=440,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[382]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[383]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=260,y=16},{res="#Room_ornament_2.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[384]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_2.png",x=340,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[385]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[386]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16},{res="#Room_ornament_3.png",x=390,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[387]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=240,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[388]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_2.png",x=420,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[389]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=260,y=16},{res="#Room_ornament_6.png",x=430,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[390]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=240,y=16},{res="#Room_ornament_4.png",x=330,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[391]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16},{res="#Room_ornament_6.png",x=440,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[392]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=270,y=16},{res="#Room_ornament_1.png",x=450,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[393]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[394]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16},{res="#Room_ornament_6.png",x=440,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[395]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=220,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[396]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=200,y=16},{res="#Room_ornament_2.png",x=440,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[397]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=260,y=16},{res="#Room_ornament_6.png",x=300,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[398]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[399]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=270,y=16},{res="#Room_ornament_1.png",x=330,y=16},{res="#Room_ornament_1.png",x=440,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[400]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+87+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+86+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+85+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+84+94*3+47,y=16,type = RoomBg_Type.Full},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_1.png",x=330,y=16},{res="#Room_ornament_3.png",x=440,y=16}}
    }

--================================================================================================三块
--黄色楼层，三电梯
Ornaments[401]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+110+94,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+109+94*2,y=16,},
	     {res="#Room_bg_1.png",x=Room_Distance.x+108+94*3,y=16,},
	     },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=240,y=16},{res="#Room_ornament_5.png",x=330,y=16},{res="#Room_ornament_5.png",x=420,y=16}}
    }

--黄色楼层，两电梯
Ornaments[402]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+110+94,y=16,},
	     {res="#Room_bg_1.png",x=Room_Distance.x+109+94*2,y=16,},
             {res="#Room_bg_1.png",x=Room_Distance.x+108+94*3,y=16,},
	     },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=250,y=16},{res="#Room_ornament_5.png",x=420,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[403]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+110+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+109+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+108+94*3,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=250,y=16},{res="#Room_ornament_6.png",x=330,y=16},{res="#Room_ornament_5.png",x=410,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[404]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+110+94,y=16,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+109+94*2,y=16,},
              {res="#Room_bg_1.png",x=Room_Distance.x+108+94*3,y=16,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=260,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，四窗户
Ornaments[405]=
{
        bg = {{res="#Room_window_3.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+109+94*2,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_2.png",x=Room_Distance.x+108+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，三窗户中间沙发
Ornaments[406]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[407]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[408]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window}, 
	      {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[409]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=350,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[410]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=370,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[411]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16},{res="#Room_ornament_1.png",x=380,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[412]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=270,y=16},{res="#Room_ornament_1.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[413]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=260,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[414]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	     {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=260,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-柜子
Ornaments[415]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=400,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[416]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

    --普通楼层，四窗户
Ornaments[417]=
{
        bg = {
	      {res="#Room_window_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+109+94*2,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+108+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，四窗户中间沙发
Ornaments[418]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=350,y=16}}
    }

--普通楼层，三窗户沙发
Ornaments[419]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_4.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16}}
    }

--普通楼层，沙发三窗户
Ornaments[420]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_3.png",x=300,y=16}}
    }

--普通楼层，办公桌三窗户
Ornaments[421]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=330,y=16}}
    }

--普通楼层，窗户-办公-办公-窗户
Ornaments[422]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=380,y=16}}
    }

--普通楼层，窗户-沙发-办公-窗户
Ornaments[423]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=300,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-柜子-办公-窗户
Ornaments[424]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=290,y=16},{res="#Room_ornament_6.png",x=380,y=16}}
    }

--普通楼层，窗户-柜子-柜子-窗户
Ornaments[425]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=270,y=16},{res="#Room_ornament_2.png",x=360,y=16}}
    }

--普通楼层，窗户-柜子-沙发-窗户
Ornaments[426]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-办公
Ornaments[427]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_1.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=350,y=16}}
    }


--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[428]=
{
        bg = {
	      {res="#Room_bg_2.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+109+94*2,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_1.png",x=Room_Distance.x+108+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=280,y=16},{res="#Room_ornament_3.png",x=370,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[429]=
{
        bg = {
	      {res="#Room_bg_2.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94*2,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_4.png",x=Room_Distance.x+108+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=250,y=16},{res="#Room_ornament_4.png",x=400,y=16}}
    }

--普通楼层，窗户-窗户-窗户-窗户-窗户
Ornaments[430]=
{
        bg = {
              {res="#Room_window_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Window},
	      {res="#Room_window_3.png",x=Room_Distance.x+109+94*2,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+108+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {}
    }

--普通楼层，窗户-柜子-柜子
Ornaments[431]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=280,y=16},{res="#Room_ornament_4.png",x=410,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[432]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=300,y=16},{res="#Room_ornament_3.png",x=370,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[433]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=240,y=16},{res="#Room_ornament_3.png",x=380,y=16}}
    }

--普通楼层，办公桌-柜子-柜子-柜子
Ornaments[434]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=280,y=16},{res="#Room_ornament_2.png",x=340,y=16},{res="#Room_ornament_3.png",x=400,y=16}}
    }

--普通楼层，柜子-窗户-窗户-柜子
Ornaments[435]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=380,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[436]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_1.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_2.png",x=260,y=16},{res="#Room_ornament_3.png",x=360,y=16}}
    }

--普通楼层，窗户-窗户-沙发
Ornaments[437]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=330,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[438]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_2.png",x=400,y=16}}
    }

--普通楼层，沙发-窗户-窗户-沙发
Ornaments[439]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=260,y=16},{res="#Room_ornament_6.png",x=420,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户-窗户
Ornaments[440]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=250,y=16},{res="#Room_ornament_4.png",x=370,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，办公桌-窗户-窗户-办公桌-办公桌
Ornaments[441]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=260,y=16},{res="#Room_ornament_2.png",x=340,y=16},{res="#Room_ornament_6.png",x=410,y=16}}
    }

--普通楼层，办公桌-柜子-窗户-窗户
Ornaments[442]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16},{res="#Room_ornament_1.png",x=420,y=16}}
    }

--普通楼层，办公桌-窗户-柜子-沙发
Ornaments[443]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_1.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=270,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，窗户-沙发-窗户-沙发
Ornaments[444]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_4.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=270,y=16},{res="#Room_ornament_6.png",x=400,y=16}}
    }

--普通楼层，办公桌-柜子-沙发-窗户
Ornaments[445]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
	      {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_2.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=240,y=16},{res="#Room_ornament_6.png",x=320,y=16},{res="#Room_ornament_4.png",x=450,y=16}}
    }

--普通楼层，窗户-办公桌-沙发-窗户
Ornaments[446]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_1.png",x=Room_Distance.x+107+94*3,y=16,type = RoomBg_Type.Window},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=280,y=16},{res="#Room_ornament_2.png",x=420,y=16}}
    }

--普通楼层，办公桌-沙发-窗户-沙发
Ornaments[447]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_bg_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_window_4.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_1.png",x=260,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_4.png",x=470,y=16}}
    }

--普通楼层，窗户-柜子-窗户-办公桌
Ornaments[448]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_2.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_window_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_4.png",x=270,y=16},{res="#Room_ornament_3.png",x=420,y=16}}
    }

--普通楼层，窗户-沙发-柜子-办工桌
Ornaments[449]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
	      {res="#Room_window_3.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
              {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=260,y=16},{res="#Room_ornament_1.png",x=370,y=16},{res="#Room_ornament_1.png",x=440,y=16}}
    }
  
--普通楼层，沙发-柜子-窗户-沙发
Ornaments[450]=
{
        bg = {{res="#Room_bg_4.png",x=Room_Distance.x+110+94,y=16,type = RoomBg_Type.Half},
              {res="#Room_window_4.png",x=Room_Distance.x+109+94+47,y=16,type = RoomBg_Type.Window},
	      {res="#Room_bg_2.png",x=Room_Distance.x+108+94*2+47,y=16,type = RoomBg_Type.Full},
              {res="#Room_bg_3.png",x=Room_Distance.x+107+94*3+47,y=16,type = RoomBg_Type.Half},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
	  ornament = {{res="#Room_ornament_6.png",x=260,y=16},{res="#Room_ornament_1.png",x=370,y=16},{res="#Room_ornament_3.png",x=430,y=16}}
    }






























































































































































































































































































































































































































































































































--================================================================================================================
--钢架楼层第一层
Ornaments[2001]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+18,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+33,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+110,y=17},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+203,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+219,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+294,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+384,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+399,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+472,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+564,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+578,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+653,y=17},
	      },
    }

--钢架楼层第二层
Ornaments[2002]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+18,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+110,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+126,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+203,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+294,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+309,y=16},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+384,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+472,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+488,y=16},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+564,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+653,y=17},
	      },
    }

--==============================================================================
--六块砖和六块半钻
--钢架楼层第一层
Ornaments[2101]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+62,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+77,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+154,y=17},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+247,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+263,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+338,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+428,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+443,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+516,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+608,y=17},
	      },
    }

--钢架楼层第二层
Ornaments[2102]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+62,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+154,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+170,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+247,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+338,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+353,y=16},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+428,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+516,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+532,y=16},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+606,y=17},
	      },
    }

--==============================================================================
--五块砖和五块半砖
--钢架楼层第一层
Ornaments[2201]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+107,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+122,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+199,y=17},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+292,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+308,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+383,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+473,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+488,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+561,y=17},
	      },
    }

--钢架楼层第二层
Ornaments[2202]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+107,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+198,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+215,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+292,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+383,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+398,y=16},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+473,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+561,y=17},
	      },
    }

--=====================================================================================
--四块砖和四块半
--钢架楼层第一层
Ornaments[2301]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+152,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+167,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+244,y=17},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+337,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+353,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+428,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+518,y=17},
	      },
    }

--钢架楼层第二层
Ornaments[2302]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+152,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+243,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+259,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+337,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+428,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+443,y=16},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+518,y=17},
	      },
    }

--=====================================================================================
--三块砖和三块半
--钢架楼层第一层
Ornaments[2401]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+197,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+212,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+289,y=17},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+382,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+398,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+473,y=17},
	      },
    }

--钢架楼层第二层
Ornaments[2402]=
{
        bg = {{res="#Room_specialbg_5.png",x=Room_Distance.x+197,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+290,y=17},
	      {res="#Room_specialbg_2.png",x=Room_Distance.x+306,y=16},
              {res="#Room_specialbg_5.png",x=Room_Distance.x+382,y=17},
	      {res="#Room_specialbg_5.png",x=Room_Distance.x+473,y=17},
	      },
    }



