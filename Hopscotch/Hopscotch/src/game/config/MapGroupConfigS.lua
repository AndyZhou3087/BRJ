--======================以下为房间列表配置(每十层房间配置)=============================
MapGroupConfigS={}

--此为关卡配置说明，最好不要删除
--{
--    _id = 1,   
--    --房间背景、地板与墙体数组,此id对应RoomsBgConfig配置文件,填0则视为对应楼层不出现(若为奔跑类型则取RoomFloorConfig中配置文件)
--    roomBgs = {1,2,1,2,1,2,3},
--   
--    --房间装饰物,此id对应OrnamentsConfig配置文件,填0则视为对应楼层不出现
--    ornaments = {1,1,1,1,1,1,1},
--   
--    --房间金币,此id对应CoinsConfig配置文件,填0则视为对应楼层不出现
--    coins = {0,0,0,1,1,0,0},
--   
--    --房间物品,此id对应RoomGoodsConfig配置文件,填0则视为对应楼层不出现
--    roomGoods = {0,0,0,0,0,1,0},
--}

MapGroupS = {ROOMBGSIZE_TYPE.Four,ROOMBGSIZE_TYPE.Three_1,ROOMBGSIZE_TYPE.Three} --500+层


--四块地板普通楼层1-30
--三块半地板过渡层31-60
--三块半地板普通楼层61-90
--三块地板过渡层91-120
--三块地板普通楼层121-150
--四块地板钢架楼层151-170
--三块半地板钢架楼层171-190
--三块地板钢架楼层191-210
--三块半向右倾斜211-230
--三块半向左倾斜231-250

--==========防止连续出现钢价层特殊楼层
MapGroupConfigS[9999]= 
    { 
        _id=9999, 
        roomBgs={191,197,195,198,195,189,183,192,185,188}, --房间背景地面
        ornaments={333,328,319,316,325,307,316,318,314,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    }

MapGroupConfigS[8888]= 
    { 
        _id=8888, 
        roomBgs={221,227,225,228,225,219,213,222,215,218}, --房间背景地面
        ornaments={373,388,369,376,385,397,386,368,374,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 0,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    }

MapGroupConfigS[7777]= 
    { 
        _id=7777, 
        roomBgs={251,257,255,258,255,249,243,252,245,248}, --房间背景地面
        ornaments={433,428,419,416,425,427,416,418,414,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    }

--========================================================================四块地板楼层1-30
MapGroupConfigS[1]= 
    { 
        _id=1, 
        roomBgs={191,197,195,198,195,189,183,192,185,188}, --房间背景地面
        ornaments={333,328,319,316,325,307,316,318,314,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
    
MapGroupConfigS[2]= 
    { 
        _id=2, 
        roomBgs={183,182,182,188,193,194,198,199,187,188}, --房间背景地面
        ornaments={341,323,336,329,310,315,324,331,318,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
    
MapGroupConfigS[3]= 
    { 
        _id=3, 
        roomBgs={197,195,189,197,195,185,182,188,183,188}, --房间背景地面
        ornaments={311,336,338,326,345,312,319,322,336,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
    
MapGroupConfigS[4]= 
    { 
        _id=4, 
        roomBgs={193,194,198,199,187,182,188,197,195,189}, --房间背景地面
        ornaments={313,326,331,322,317,328,316,335,342,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[5]= 
    { 
        _id=5, 
        roomBgs={183,182,188,191,197,195,189,197,195,189}, --房间背景地面
        ornaments={337,318,323,345,316,328,333,315,342,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
  
MapGroupConfigS[6]= 
    { 
        _id=6, 
        roomBgs={197,199,195,194,198,187,188,183,188,191}, --房间背景地面
        ornaments={322,335,348,317,312,316,348,320,319,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[7]= 
    { 
        _id=7, 
        roomBgs={191,191,183,192,198,195,198,187,182,188}, --房间背景地面
        ornaments={316,331,324,315,338,341,311,339,310,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[8]= 
    { 
        _id=8, 
        roomBgs={191,197,190,183,182,192,185,196,187,188}, --房间背景地面
        ornaments={328,315,336,320,335,342,334,316,319,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[9]= 
    { 
        _id=9, 
        roomBgs={183,192,198,187,182,188,183,196,195,189}, --房间背景地面
        ornaments={311,324,308,310,319,335,332,311,326,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[10]= 
    { 
        _id=10, 
        roomBgs={183,196,195,198,195,198,187,192,194,189}, --房间背景地面
        ornaments={327,342,337,333,322,311,310,348,327,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[11]= 
    { 
        _id=11, 
        roomBgs={191,193,189,197,195,198,195,198,187,188}, --房间背景地面
        ornaments={316,325,321,330,344,329,337,318,317,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[12]= 
    { 
        _id=12, 
        roomBgs={191,193,189,197,195,189,183,196,195,189}, --房间背景地面
        ornaments={316,320,319,328,338,340,345,316,319,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[13]= 
    { 
        _id=13, 
        roomBgs={193,198,195,185,188,197,187,192,185,188}, --房间背景地面
        ornaments={316,327,332,348,326,314,322,335,318,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[14]= 
    { 
        _id=14, 
        roomBgs={183,192,198,195,189,197,195,198,187,188}, --房间背景地面
        ornaments={334,328,333,317,310,329,330,345,311,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[15]= 
    { 
        _id=15, 
        roomBgs={197,195,198,187,192,185,196,187,182,188}, --房间背景地面
        ornaments={335,342,347,316,335,318,319,324,335,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    }
    
MapGroupConfigS[16]= 
    { 
        _id=16, 
        roomBgs={191,197,199,187,188,191,193,185,182,188}, --房间背景地面
        ornaments={333,321,317,310,328,339,342,350,348,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[17]= 
    { 
        _id=17, 
        roomBgs={191,183,182,188,193,198,195,194,185,188}, --房间背景地面
        ornaments={314,335,328,336,344,349,350,319,347,303}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[18]= 
    { 
        _id=18, 
        roomBgs={183,188,193,194,185,192,198,199,187,188}, --房间背景地面
        ornaments={336,316,334,328,314,319,322,335,318,302}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[19]= 
    { 
        _id=19, 
        roomBgs={197,195,189,183,188,193,189,183,182,188}, --房间背景地面
        ornaments={315,334,342,325,328,330,319,328,337,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

MapGroupConfigS[20]= 
    { 
        _id=20, 
        roomBgs={183,182,188,191,183,182,188,183,182,188}, --房间背景地面
        ornaments={336,317,314,325,332,318,349,310,318,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

--=========================================================================三块半楼板过渡层31-60

MapGroupConfigS[31]= 
    { 
        _id=31, 
        roomBgs={230,227,225,228,225,219,213,222,215,218}, --房间背景地面
        ornaments={376,358,379,386,392,367,376,398,374,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 
    
MapGroupConfigS[32]= 
    { 
        _id=32, 
        roomBgs={183,212,212,218,223,224,228,229,217,218}, --房间背景地面
        ornaments={391,378,365,359,390,395,384,371,368,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 
    
MapGroupConfigS[33]= 
    { 
        _id=33, 
        roomBgs={232,225,219,227,225,215,212,218,213,218}, --房间背景地面
        ornaments={392,356,378,386,395,362,359,372,396,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 
    
MapGroupConfigS[34]= 
    { 
        _id=34, 
        roomBgs={231,224,228,229,217,212,218,227,225,219}, --房间背景地面
        ornaments={373,376,381,362,357,398,396,375,362,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[35]= 
    { 
        _id=35, 
        roomBgs={183,212,218,221,227,225,219,227,225,219}, --房间背景地面
        ornaments={387,378,363,385,396,378,363,375,362,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 
  
MapGroupConfigS[36]= 
    { 
        _id=36, 
        roomBgs={232,229,225,224,228,217,218,213,218,221}, --房间背景地面
        ornaments={362,365,398,387,372,366,398,390,379,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[37]= 
    { 
        _id=37, 
        roomBgs={230,221,213,222,228,225,228,217,212,218}, --房间背景地面
        ornaments={388,361,396,355,388,371,390,399,400,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[38]= 
    { 
        _id=38, 
        roomBgs={230,227,220,213,212,222,215,226,217,218}, --房间背景地面
        ornaments={374,355,366,370,385,372,364,386,399,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[39]= 
    { 
        _id=39, 
        roomBgs={183,222,228,217,212,218,213,226,225,219}, --房间背景地面
        ornaments={361,384,378,360,359,375,382,391,396,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[40]= 
    { 
        _id=40, 
        roomBgs={183,226,225,228,225,228,229,225,224,219}, --房间背景地面
        ornaments={357,382,377,363,362,391,360,358,357,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[41]= 
    { 
        _id=41, 
        roomBgs={230,223,228,229,225,228,225,228,217,218}, --房间背景地面
        ornaments={396,375,381,400,394,389,377,368,387,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[42]= 
    { 
        _id=42, 
        roomBgs={230,223,219,227,225,219,213,226,225,219}, --房间背景地面
        ornaments={378,380,379,368,388,370,365,396,389,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[43]= 
    { 
        _id=43, 
        roomBgs={231,228,225,215,218,227,217,222,215,218}, --房间背景地面
        ornaments={395,357,362,378,386,394,362,375,358,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[44]= 
    { 
        _id=44, 
        roomBgs={183,222,228,225,219,227,225,228,217,218}, --房间背景地面
        ornaments={384,388,373,367,390,399,380,375,361,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[45]= 
    { 
        _id=45, 
        roomBgs={232,225,228,217,222,215,226,217,212,218}, --房间背景地面
        ornaments={368,382,377,366,355,398,389,374,365,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    }
    
MapGroupConfigS[46]= 
    { 
        _id=46, 
        roomBgs={231,228,229,217,218,221,223,215,212,218}, --房间背景地面
        ornaments={373,381,377,360,358,397,372,360,388,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[47]= 
    { 
        _id=47, 
        roomBgs={231,214,212,218,223,228,225,224,215,218}, --房间背景地面
        ornaments={394,385,368,376,394,359,400,379,387,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    }

MapGroupConfigS[48]= 
    { 
        _id=48, 
        roomBgs={183,218,223,224,215,222,228,229,217,218}, --房间背景地面
        ornaments={385,386,374,358,364,399,382,375,368,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[49]= 
    { 
        _id=49, 
        roomBgs={232,225,219,213,218,223,219,213,212,218}, --房间背景地面
        ornaments={369,374,382,375,368,390,359,358,377,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[50]= 
    { 
        _id=50, 
        roomBgs={183,212,218,221,213,212,218,213,212,218}, --房间背景地面
        ornaments={376,377,384,365,392,358,379,360,388,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[51]= 
    { 
        _id=51, 
        roomBgs={183,218,223,42,35,222,228,229,217,218}, --房间背景地面
        ornaments={386,376,384,78,364,399,382,375,358,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[52]= 
    { 
        _id=52, 
        roomBgs={232,225,219,213,6,11,7,3,212,218}, --房间背景地面
        ornaments={355,374,362,395,24,17,30,388,357,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 

MapGroupConfigS[53]= 
    { 
        _id=53, 
        roomBgs={230,2,218,221,213,10,4,212,218,221}, --房间背景地面
        ornaments={398,9,384,375,362,17,49,390,358,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
	transit = true,
    } 


--=========================================================================三块半地板楼普通层61-90
MapGroupConfigS[61]= 
    { 
        _id=61, 
        roomBgs={221,227,225,228,225,219,213,222,215,218}, --房间背景地面
        ornaments={373,388,369,376,385,397,386,368,374,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	
    } 
    
MapGroupConfigS[62]= 
    { 
        _id=62, 
        roomBgs={213,212,212,218,223,224,228,229,217,218}, --房间背景地面
        ornaments={361,373,386,399,370,365,374,381,398,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	
    } 
    
MapGroupConfigS[63]= 
    { 
        _id=63, 
        roomBgs={227,225,219,227,225,215,212,218,213,218}, --房间背景地面
        ornaments={371,396,358,376,365,392,389,372,356,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,

    } 
    
MapGroupConfigS[64]= 
    { 
        _id=64, 
        roomBgs={223,224,228,229,217,212,218,227,225,219}, --房间背景地面
        ornaments={383,386,361,372,397,358,386,375,392,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[65]= 
    { 
        _id=65, 
        roomBgs={213,212,218,221,227,225,219,227,225,219}, --房间背景地面
        ornaments={387,368,373,385,396,388,373,365,392,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 
  
MapGroupConfigS[66]= 
    { 
        _id=66, 
        roomBgs={227,229,225,224,228,217,218,213,218,221}, --房间背景地面
        ornaments={372,359,378,387,392,396,388,370,369,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[67]= 
    { 
        _id=67, 
        roomBgs={221,221,213,222,228,225,228,217,212,218}, --房间背景地面
        ornaments={366,371,384,395,388,391,361,359,360,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[68]= 
    { 
        _id=68, 
        roomBgs={221,227,220,213,212,222,215,226,217,218}, --房间背景地面
        ornaments={358,365,386,370,375,392,384,376,389,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[69]= 
    { 
        _id=69, 
        roomBgs={213,222,228,217,212,218,213,226,225,219}, --房间背景地面
        ornaments={361,384,358,360,399,385,372,361,396,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[70]= 
    { 
        _id=70, 
        roomBgs={213,226,225,228,225,228,217,222,224,219}, --房间背景地面
        ornaments={357,382,387,363,372,361,360,358,397,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[71]= 
    { 
        _id=71, 
        roomBgs={221,223,219,227,225,228,225,228,217,218}, --房间背景地面
        ornaments={376,375,381,360,359,369,377,398,367,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[72]= 
    { 
        _id=72, 
        roomBgs={221,223,219,227,225,219,213,226,225,219}, --房间背景地面
        ornaments={366,370,369,378,388,360,395,386,359,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[73]= 
    { 
        _id=73, 
        roomBgs={223,228,225,215,218,227,217,222,215,218}, --房间背景地面
        ornaments={366,357,382,378,366,394,382,375,368,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[74]= 
    { 
        _id=74, 
        roomBgs={213,222,228,225,219,227,225,228,217,218}, --房间背景地面
        ornaments={374,368,393,387,370,369,390,375,361,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[75]= 
    { 
        _id=75, 
        roomBgs={227,225,228,217,222,215,226,217,212,218}, --房间背景地面
        ornaments={375,382,397,366,365,398,359,364,359,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    }
    
MapGroupConfigS[76]= 
    { 
        _id=76, 
        roomBgs={221,227,229,217,218,221,223,215,212,218}, --房间背景地面
        ornaments={373,381,367,370,358,399,362,370,388,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[77]= 
    { 
        _id=77, 
        roomBgs={221,213,212,218,223,228,225,224,215,218}, --房间背景地面
        ornaments={374,365,388,369,384,392,371,389,367,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[78]= 
    { 
        _id=78, 
        roomBgs={213,218,223,224,215,222,228,229,217,218}, --房间背景地面
        ornaments={356,376,384,398,364,379,382,375,368,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[79]= 
    { 
        _id=79, 
        roomBgs={227,225,219,213,218,223,219,213,212,218}, --房间背景地面
        ornaments={375,364,382,375,368,370,389,398,367,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[80]= 
    { 
        _id=80, 
        roomBgs={213,212,218,221,213,212,218,213,212,218}, --房间背景地面
        ornaments={356,367,374,385,392,388,379,380,368,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

--=========================================================================三块楼板过渡层91-120
MapGroupConfigS[91]= 
    { 
        _id=91, 
        roomBgs={260,257,255,258,255,249,243,252,245,248}, --房间背景地面
        ornaments={426,408,429,436,442,427,436,448,414,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 
    
MapGroupConfigS[92]= 
    { 
        _id=92, 
        roomBgs={213,242,242,248,253,254,258,259,247,248}, --房间背景地面
        ornaments={441,428,405,419,420,445,444,431,428,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 
    
MapGroupConfigS[93]= 
    { 
        _id=93, 
        roomBgs={262,255,249,257,255,245,242,248,243,248}, --房间背景地面
        ornaments={431,416,428,436,445,412,429,432,446,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 
    
MapGroupConfigS[94]= 
    { 
        _id=94, 
        roomBgs={261,254,258,259,247,242,248,257,255,249}, --房间背景地面
        ornaments={433,436,441,422,407,448,446,435,422,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[95]= 
    { 
        _id=95, 
        roomBgs={213,242,248,251,257,255,249,257,255,249}, --房间背景地面
        ornaments={437,428,423,435,446,438,423,435,422,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 
  
MapGroupConfigS[96]= 
    { 
        _id=96, 
        roomBgs={262,259,255,254,258,247,248,243,248,251}, --房间背景地面
        ornaments={442,415,448,437,422,416,448,440,429,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[97]= 
    { 
        _id=97, 
        roomBgs={260,251,243,252,258,255,258,247,242,248}, --房间背景地面
        ornaments={418,411,444,405,438,431,440,449,450,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[98]= 
    { 
        _id=98, 
        roomBgs={260,257,250,243,242,252,245,256,247,248}, --房间背景地面
        ornaments={408,405,416,420,435,422,414,436,449,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[99]= 
    { 
        _id=99, 
        roomBgs={213,252,258,247,242,248,243,256,255,249}, --房间背景地面
        ornaments={431,444,418,420,409,425,432,441,446,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[100]= 
    { 
        _id=100, 
        roomBgs={213,256,255,258,255,258,259,255,254,249}, --房间背景地面
        ornaments={437,442,427,413,412,441,410,408,407,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[101]= 
    { 
        _id=101, 
        roomBgs={260,253,258,259,255,258,255,258,247,248}, --房间背景地面
        ornaments={436,425,431,450,444,449,427,438,407,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[102]= 
    { 
        _id=102, 
        roomBgs={260,253,249,257,255,249,243,256,255,249}, --房间背景地面
        ornaments={418,420,439,418,428,430,445,436,429,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[103]= 
    { 
        _id=103, 
        roomBgs={261,258,255,245,248,257,247,252,245,248}, --房间背景地面
        ornaments={435,407,412,428,436,444,412,425,438,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[104]= 
    { 
        _id=104, 
        roomBgs={213,252,258,255,249,257,255,258,247,248}, --房间背景地面
        ornaments={444,438,423,417,440,429,430,425,411,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[105]= 
    { 
        _id=105, 
        roomBgs={262,255,258,247,252,245,256,247,242,248}, --房间背景地面
        ornaments={428,432,427,416,405,448,439,414,425,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    }
    
MapGroupConfigS[106]= 
    { 
        _id=106, 
        roomBgs={261,258,259,247,248,251,253,245,242,248}, --房间背景地面
        ornaments={413,431,427,440,438,427,422,430,418,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
        transit_1=true,
    } 

MapGroupConfigS[107]= 
    { 
        _id=107, 
        roomBgs={261,244,242,248,253,258,255,254,245,248}, --房间背景地面
        ornaments={444,415,428,436,444,409,440,439,427,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    }

MapGroupConfigS[108]= 
    { 
        _id=108, 
        roomBgs={213,248,253,254,245,252,258,259,247,248}, --房间背景地面
        ornaments={406,436,424,438,424,449,432,415,428,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[109]= 
    { 
        _id=109, 
        roomBgs={262,255,249,243,248,253,249,243,242,248}, --房间背景地面
        ornaments={439,424,432,415,428,440,439,428,427,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[110]= 
    { 
        _id=110, 
        roomBgs={213,242,248,251,243,242,248,243,242,248}, --房间背景地面
        ornaments={416,427,434,445,422,438,429,430,428,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[111]= 
    { 
        _id=111, 
        roomBgs={213,248,253,42,35,252,258,259,247,248}, --房间背景地面
        ornaments={426,436,424,94,425,439,412,425,438,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[112]= 
    { 
        _id=112, 
        roomBgs={262,255,249,243,6,11,7,3,242,248}, --房间背景地面
        ornaments={425,434,412,425,17,48,32,418,427,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

MapGroupConfigS[113]= 
    { 
        _id=113, 
        roomBgs={260,2,248,251,243,10,4,242,248,251}, --房间背景地面
        ornaments={408,39,436,415,422,16,50,420,438,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
	transit_1=true,
    } 

--=========================================================================三块地板楼普通121-150
MapGroupConfigS[121]= 
    { 
        _id=121, 
        roomBgs={251,257,255,258,255,249,243,252,245,248}, --房间背景地面
        ornaments={433,428,419,416,425,427,416,418,414,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 
    
MapGroupConfigS[122]= 
    { 
        _id=122, 
        roomBgs={243,242,242,248,253,254,258,259,247,248}, --房间背景地面
        ornaments={441,423,436,409,410,415,424,431,418,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 
    
MapGroupConfigS[123]= 
    { 
        _id=123, 
        roomBgs={257,255,249,257,255,245,242,248,243,248}, --房间背景地面
        ornaments={411,416,438,426,445,412,419,422,436,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5, --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 
    
MapGroupConfigS[124]= 
    { 
        _id=124, 
        roomBgs={253,254,258,259,247,242,248,257,255,249}, --房间背景地面
        ornaments={413,426,431,422,417,408,416,435,442,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[125]= 
    { 
        _id=125, 
        roomBgs={243,242,248,251,257,255,249,257,255,249}, --房间背景地面
        ornaments={437,418,423,445,416,428,433,415,442,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 
  
MapGroupConfigS[126]= 
    { 
        _id=126, 
        roomBgs={257,259,255,254,258,247,248,243,248,251}, --房间背景地面
        ornaments={422,435,448,417,412,416,408,410,419,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[127]= 
    { 
        _id=127, 
        roomBgs={251,251,243,252,258,255,258,247,242,248}, --房间背景地面
        ornaments={416,431,424,415,438,441,411,429,410,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[128]= 
    { 
        _id=128, 
        roomBgs={251,257,250,243,242,252,245,256,247,248}, --房间背景地面
        ornaments={428,415,436,420,435,442,434,416,419,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[129]= 
    { 
        _id=129, 
        roomBgs={243,252,258,247,242,248,243,256,255,249}, --房间背景地面
        ornaments={411,424,428,410,419,435,432,411,436,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[130]= 
    { 
        _id=130, 
        roomBgs={243,256,255,258,255,258,247,252,245,248}, --房间背景地面
        ornaments={427,442,437,433,422,411,410,418,427,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[131]= 
    { 
        _id=131, 
        roomBgs={251,253,249,257,255,258,255,258,247,248}, --房间背景地面
        ornaments={436,425,421,430,444,429,437,418,417,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[132]= 
    { 
        _id=132, 
        roomBgs={251,253,249,257,255,249,243,256,255,249}, --房间背景地面
        ornaments={416,420,419,418,438,440,445,416,409,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[133]= 
    { 
        _id=133, 
        roomBgs={253,258,255,245,248,257,247,252,245,248}, --房间背景地面
        ornaments={416,427,432,448,416,414,422,435,418,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[134]= 
    { 
        _id=134, 
        roomBgs={243,252,258,255,249,257,255,258,247,248}, --房间背景地面
        ornaments={434,428,433,417,410,429,430,445,411,401}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[135]= 
    { 
        _id=135, 
        roomBgs={257,255,258,247,252,245,256,247,242,248}, --房间背景地面
        ornaments={435,442,447,416,435,418,419,424,435,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    }
    
MapGroupConfigS[136]= 
    { 
        _id=136, 
        roomBgs={251,258,259,247,248,251,253,245,242,248}, --房间背景地面
        ornaments={433,421,417,410,408,429,442,450,448,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[137]= 
    { 
        _id=137, 
        roomBgs={251,243,242,248,253,258,255,254,245,248}, --房间背景地面
        ornaments={414,435,428,436,444,449,450,419,447,403}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[138]= 
    { 
        _id=138, 
        roomBgs={243,248,253,254,245,252,258,259,247,248}, --房间背景地面
        ornaments={416,416,434,428,414,419,422,435,418,402}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[139]= 
    { 
        _id=139, 
        roomBgs={257,255,249,243,248,253,249,243,242,248}, --房间背景地面
        ornaments={415,434,442,425,428,430,419,408,427,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

MapGroupConfigS[140]= 
    { 
        _id=140, 
        roomBgs={243,242,248,251,243,242,248,243,242,248}, --房间背景地面
        ornaments={416,417,414,425,432,418,429,410,418,404}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Common,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 5,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 


--=========================================================================四块钢架楼层151-170
 MapGroupConfigS[151]= 
    { 
        _id=151, 
        roomBgs={3007,3007,3007,3007,3007,3007,3007,3007,3007,188}, --房间背景地面
        ornaments={2301,2302,2301,2302,2301,2302,2301,2302,2301,301}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {2,5,9},     --左边默认停留的楼层位置
        right = {3,7,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+142,Room_Distance.x+530},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 

     MapGroupConfigS[152]= 
    { 
        _id=152, 
        roomBgs={3007,3007,3007,3007,3007,3007,3007,3007,3007,188}, --房间背景地面
        ornaments={2302,2301,2302,2301,2302,2301,2302,2301,2302,304}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+142,Room_Distance.x+530},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Four,
    } 
--=======================================================================三块半钢架楼层171-190
MapGroupConfigS[171]= 
    { 
        _id=171, 
         roomBgs={3008,3008,3008,3008,3008,3008,3008,3008,3008,218}, --房间背景地面
        ornaments={2401,2402,2401,2402,2401,2402,2401,2402,2401,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+164,Room_Distance.x+506},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

     MapGroupConfigS[172]= 
    { 
        _id=172, 
        roomBgs={3008,3008,3008,3008,3008,3008,3008,3008,3008,218}, --房间背景地面
        ornaments={2402,2401,2402,2401,2402,2401,2402,2401,2402,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+164,Room_Distance.x+506},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 
  
--=======================================================================三块钢架楼层191-210
MapGroupConfigS[191]= 
    { 
        _id=191, 
         roomBgs={3009,3009,3009,3009,3009,3009,3009,3009,3009,38}, --房间背景地面
        ornaments={2401,2402,2401,2402,2401,2402,2401,2402,2401,53}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+188,Room_Distance.x+483},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 

     MapGroupConfigS[192]= 
    { 
        _id=192, 
        roomBgs={3009,3009,3009,3009,3009,3009,3009,3009,3009,38}, --房间背景地面
        ornaments={2402,2401,2402,2401,2402,2401,2402,2401,2402,52}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, --钻石(随机出现层数、次数和位置)
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Special,
        left = {3,6,8},     --左边默认停留的楼层位置
        right = {2,4,9},    --右边默认停留的楼层位置
        lineX = {Room_Distance.x+188,Room_Distance.x+483},    --钢架线离边距的距离
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 0,        --房间x轴倾斜距离(单位：像素)
        probability = 50,     --权重
        bgType = ROOMBGSIZE_TYPE.Three,
    } 
--==========================================================================三块半向右倾斜211-230
MapGroupConfigS[211]= 
    { 
        _id=211, 
        roomBgs={2021,2025,2021,2026,2027,2031,2029,2023,2022,218}, --房间背景地面
        ornaments={367,375,386,394,371,387,375,362,398,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[212]= 
    { 
        _id=212, 
        roomBgs={2021,2026,2027,2031,2030,2024,2026,2027,2023,218}, --房间背景地面
        ornaments={379,365,366,374,381,397,385,372,368,351}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[213]= 
    { 
        _id=213, 
        roomBgs={2028,2023,2026,2031,2029,2031,2029,2023,2022,218}, --房间背景地面
        ornaments={376,365,366,384,391,377,385,362,358,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[214]= 
    { 
        _id=214, 
        roomBgs={2028,2031,2030,2030,2029,2027,2023,2026,2031,218}, --房间背景地面
        ornaments={381,375,396,364,371,357,365,382,398,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[215]= 
    { 
        _id=215, 
        roomBgs={2028,2027,2027,2031,2030,2030,2029,2023,2022,218}, --房间背景地面
        ornaments={383,375,376,364,391,387,355,372,368,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = 20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

--===========================================================================三块半向左倾斜231-250
MapGroupConfigS[231]= 
    { 
        _id=231, 
        roomBgs={2041,2045,2048,2051,2049,2044,2046,2051,2049,218}, --房间背景地面
        ornaments={387,375,366,394,371,367,355,392,378,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[232]= 
    { 
        _id=232, 
        roomBgs={2041,2042,2046,2046,2051,2050,2049,2044,2050,218}, --房间背景地面
        ornaments={359,365,376,364,391,387,375,362,358,353}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[233]= 
    { 
        _id=233, 
        roomBgs={2041,2045,2045,2048,2046,2051,2050,2043,2046,218}, --房间背景地面
        ornaments={356,375,366,384,391,397,385,372,378,352}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[234]= 
    { 
        _id=234, 
        roomBgs={2048,2051,2050,2049,2051,2049,2044,2050,2049,218}, --房间背景地面
        ornaments={381,375,376,364,391,357,355,382,378,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 

MapGroupConfigS[235]= 
    { 
        _id=235, 
        roomBgs={2048,2051,2050,2049,2051,2049,2051,2049,2051,218}, --房间背景地面
        ornaments={373,365,356,384,371,397,365,382,378,354}, ---小挂件
        coins={1,1,1,1,1,1,1,1,1,1}, ---钻石
        roomGoods={1,1,1,1,1,1,1,1,1,1}, ---道具
        roomType = MAPROOM_TYPE.Lean,
        direction = false,       --当类型为奔跑类型时的方向，非奔跑类型可不加此参数
        distance = -20,        --房间x轴倾斜距离(单位：像素)
        probability = 30,     --权重
        bgType = ROOMBGSIZE_TYPE.Three_1,
    } 
