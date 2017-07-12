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

--============================================================================================================================================================================
--黄色楼层，三电梯
Ornaments[1]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,type = RoomBg_Type.Half,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=350,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，两电梯
Ornaments[2]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,type = RoomBg_Type.Half,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
         ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，两电梯一沙发
Ornaments[3]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,type = RoomBg_Type.Half,},
	      },--房间背景(背景窗户随机其实是在有背景图的几张图随机抽取一张替换图片为窗户)
        ornament = {{res="#Room_ornament_5.png",x=150,y=16},{res="#Room_ornament_6.png",x=350,y=16},{res="#Room_ornament_5.png",x=550,y=16}}
    }

--黄色楼层，一电梯一沙发
Ornaments[4]=
    {
       bg = {{res="#Room_bg_1.png",x=Room_Distance.x+17,y=16,type = RoomBg_Type.Half,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+16+94,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+15+94*2,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+14+94*3,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+13+94*4,y=16,type = RoomBg_Type.Full,},
	      {res="#Room_bg_1.png",x=Room_Distance.x+12+94*5,y=16,type = RoomBg_Type.Full,},
              {res="#Room_bg_1.png",x=Room_Distance.x+11+94*6,y=16,type = RoomBg_Type.Half,},
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


--================================================================================================================
--钢架楼层，A款式第一层
Ornaments[201]=
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

--钢架楼层，A款式第二层
Ornaments[202]=
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



