--[[
游戏数据管理类
]]

local GameDataManager = {}
--local GoodsVo = require("app.data.GoodsVo")
--local ModleVo = require("app.data.ModleVo")
--local playerVo = clone(require("app.data.PlayerVo"))

--=================玩家数据
local userData = {}
local modleDic = {}--角色表
local curFightModle = 1  --出战角色

local music=false
local sound=false

--初始化玩家数据
function GameDataManager.init()
    userData.gold = DataPersistence.getAttribute("user_gold")    --金牌
    userData.diamond = DataPersistence.getAttribute("user_diamond") --钻石
    
--    GameDataManager.initPlayerVo() --初始化角色数据
end

function GameDataManager.isMusicOpen()
    return music
end

function GameDataManager.isSoundOpen()
    return sound
end

function GameDataManager.setMusic(isOpen)
    music=isOpen
end

function GameDataManager.setSound(isOpen)
    sound=isOpen
end

--减金币
function GameDataManager.costGold(_value)
    if userData.gold >= _value then
        userData.gold = userData.gold - _value
        print("当前金币",GameDataManager.getGold())
--        GameDispatcher:dispatch(EventNames.EVENT_UPDATE_GOLD)
        GameDataManager.SaveData()
        return true
    else
        return false
    end
end

--增加金币
function GameDataManager.addGold(_value)
    userData.gold = userData.gold + _value
    print("当前金币",GameDataManager.getGold())
--    GameDispatcher:dispatch(EventNames.EVENT_UPDATE_GOLD)
    GameDataManager.SaveData()
    return true
end

--获取金币
function GameDataManager.getGold()
    return userData.gold
end

--减钻石
function GameDataManager.costDiamond(_value)
    if userData.diamond >= _value then
        userData.diamond = userData.diamond-_value
        print("当前钻石",GameDataManager.getDiamond())
--        GameDispatcher:dispatch(EventNames.EVENT_UPDATE_DIAMOND)
        GameDataManager.SaveData()
        return true
    else
        return false
    end
end

--增加钻石
function GameDataManager.addDiamond(_value)
    userData.diamond = userData.diamond+_value
    print("当前钻石",GameDataManager.getDiamond())
--    GameDispatcher:dispatch(EventNames.EVENT_UPDATE_DIAMOND)
    GameDataManager.SaveData()
    return true
end

--获取钻石
function GameDataManager.getDiamond()
    return userData.diamond
end

--===================道具相关
local goodsList={}
--初始化物品
function GameDataManager:initGoodsData()
    goodsList = DataPersistence.getAttribute("goods_list")  --物品列表
end

--[[添加道具
@param1 道具id
@param2 道具数量
]]
function GameDataManager.addGoods(_goodsId,_num)
    print("添加道具----------------------------",_goodsId)
    _num = _num or 1
    for key, var in pairs(goodsList) do
        if var.id == _goodsId then
            var.num = var.num + _num
            return
        end
    end
    local _goodsVo = clone(GoodsVo)
    _goodsVo.id = _goodsId
    _goodsVo.num = _num
    table.insert(goodsList,_goodsVo)
    GameDataManager.SaveData()
    GameDispatcher:dispatch(EventNames.EVENT_FIGHT_UPDATE_PROP,_goodsId)
end

--使用道具,此方法要检测玩家背包内是否拥有该道具(主动使用)
function GameDataManager.useGoods(_goodsId)
    print("使用道具",_goodsId)
    for key, var in pairs(goodsList) do
        if var.id==_goodsId then
            if GameDataManager.useGoodsExp(_goodsId) then
                var.num = var.num - 1
                if var.num <= 0 then
                    table.remove(goodsList,key)
                end
                --刷新道具
                GameDispatcher:dispatch(EventNames.EVENT_FIGHT_UPDATE_PROP,_goodsId)
                return true
            else
                return false
            end
        end
    end
    GameDataManager.SaveData()
    return false
end

--使用道具，此方法不检测背包内是否有该道具(场景内直接使用)
function GameDataManager.useGoodsExp(_goodsId)
    local goodsCon = GoodsConfig[_goodsId]
    if goodsCon then
        if goodsCon.type == GOODS_TYPE.MadCow then
            print("使用疯牛药剂")
            GameDispatcher:dispatch(EventNames.EVENT_MAD_RUN,{time = goodsCon.time,index = goodsCon.speedIndex})
        elseif goodsCon.type == GOODS_TYPE.TopSpeed then
            print("使用急速飞行")
            GameDispatcher:dispatch(EventNames.EVENT_TOP_FLY,{time = goodsCon.time,index = goodsCon.speedIndex,radius = goodsCon.radius})
        elseif goodsCon.type == GOODS_TYPE.DoubleScore then
            print("使用双倍得分")
            GameController.doubleScore = 2
        elseif goodsCon.type == GOODS_TYPE.Relive then
            print("生命接力")
            --  GameDataManager.addGoods(_goodsId,1)
            GameDispatcher:dispatch(EventNames.EVENT_LIFE,{time = goodsCon.time})
        elseif goodsCon.type == GOODS_TYPE.Protect then
            print("使用保护罩")
            GameDispatcher:dispatch(EventNames.EVENT_PROTECT,{time = goodsCon.time})
        end
        return true
    else
        printf(" error 找不到id=%d的道具配置",_goodsId)
        return false
    end
end

--获取物品数量
function GameDataManager.getGoodsNum(_goodsId)
    for key, var in pairs(goodsList) do
        if var.id==_goodsId then
            return var.num
        end
    end
    return 0
end

--重置物品数量
function GameDataManager.resetGoodsNum(_goodsId)
   local _resetNum = 0 
    for key, var in pairs(goodsList) do
        if var.id == _goodsId then
            var.num = _resetNum
            return
        end
    end
    local _goodsVo = clone(GoodsVo)
    _goodsVo.id = _goodsId
    _goodsVo.num = _resetNum
    table.insert(goodsList,_goodsVo)
    GameDataManager.SaveData()
end

--===================================角色相关
--初始化角色信息
function GameDataManager.initPlayerVo()
    local roleConfig = RoleConfig[curFightModle]
    if roleConfig then
        playerVo.m_roleId = curFightModle
    end
end


--解锁角色
function GameDataManager.addModle(_roleId)
    if modleDic[_roleId] then
        return
    end
    local _modleVo = clone(ModleVo)
    _modleVo.roleId = _roleId
    modleDic[_roleId] = _modleVo
    if modleDic[_roleId] then
        modleDic[_roleId].isOwn = true
    end
end

--是否拥有角色[检测是否为nil]
function GameDataManager.getRoleModle(_roleId)
    return modleDic[_roleId]
end

--设置当前出战角色模型
function GameDataManager.setCurFightModle(_modleid)
    curFightModle = _modleid
    GameDataManager.SaveData()
end

--获取当前出战角色模型
function GameDataManager.getFightModle()
    return curFightModle
end

--=================================战斗相关

local km_F = 0
local gold_F = 0
--添加米数(当前游戏)
function GameDataManager.addKm(_km)
    km_F = _km
    GameDispatcher:dispatch(EventNames.EVENT_FIGHT_UPDATE_KM,km_F)
    return true
end

--返回游戏米数
function GameDataManager.getKm()
    return km_F
end

--初始化游戏米数
function GameDataManager.initKm()
    km_F=0
end

--初始化游戏中得到的金币
function GameDataManager.initGoldF()
    gold_F = 0
end

--添加游戏中得到的金币(当前游戏)
function GameDataManager.addGoldF(_gold)
    gold_F= gold_F+_gold
    GameDispatcher:dispatch(EventNames.EVENT_FIGHT_UPDATE_GOLD,_gold)
    return true
end

--返回游戏中得到的金币
function GameDataManager.getGoldF()
    return gold_F
end

function GameDataManager.getAllScore(_dis)
    local _score = 0
    if _dis >= DistanceS.move then
        _score = (DistanceC.move-DistanceD.move)*DistanceD.index + (DistanceB.move-DistanceC.move)*DistanceC.index + (DistanceA.move-DistanceB.move)*DistanceB.index
            + (DistanceS.move-DistanceA.move)*DistanceA.index + (_dis-DistanceS.move)*DistanceS.index
    elseif _dis >= DistanceA.move then
        _score = (DistanceC.move-DistanceD.move)*DistanceD.index + (DistanceB.move-DistanceC.move)*DistanceC.index + (DistanceA.move-DistanceB.move)*DistanceB.index
            + (_dis-DistanceA.move)*DistanceA.index
    elseif _dis >= DistanceB.move then
        _score = (DistanceC.move-DistanceD.move)*DistanceD.index + (DistanceB.move-DistanceC.move)*DistanceC.index + (_dis-DistanceB.move)*DistanceB.index
    elseif _dis >= DistanceC.move then
        _score = (DistanceC.move-DistanceD.move)*DistanceD.index + (_dis-DistanceC.move)*DistanceC.index
    elseif _dis >= DistanceD.move then
        _score = (_dis-DistanceD.move)*DistanceD.index
    end
    --分数取整(GameController.doubleScore为是否使用双倍道具)
    _score=math.ceil(_score*GameController.doubleScore)
    --保存游戏最高分数
    if _score> GameDataManager.getRecord()then
        print("刷新记录",_score)
        GameDataManager.saveRecord(_score)
    end
    return _score
end

--=============================================================礼包相关
local oem={}

--初始礼包信息
function GameDataManager.initOemData()
    oem.curTable = DataPersistence.getAttribute("oem")
end

--购买礼包
function GameDataManager.buyGift()
    local _curTime = TimeUtil.getDate()
	--购买日期记录
    oem.curTable.year = _curTime.year
    oem.curTable.month = _curTime.month
    oem.curTable.day = _curTime.day-1
    --领取次数记录
    oem.curTable.numS=30
    GameDataManager.SaveData()
    print("礼包购买日期",oem.curTable.year,oem.curTable.month,oem.curTable.day,"剩余领取次数",oem.curTable.numS)
end

--领取礼包
function GameDataManager.updateGift()
    local _curTime = TimeUtil.getDate()
    --领取日期记录
    oem.curTable.year = _curTime.year
    oem.curTable.month = _curTime.month
    oem.curTable.day = _curTime.day
    --领取次数记录
    oem.curTable.numS=oem.curTable.numS-1
    GameDataManager.SaveData()
    print("领取礼包日期",oem.curTable.year,oem.curTable.month,oem.curTable.day,"剩余领取次数",oem.curTable.numS)
end

--当天是否领取了礼包
function GameDataManager.isDateGift()
    if oem.curTable.day==TimeUtil.getDate().day and oem.curTable.month==TimeUtil.getDate().month and oem.curTable.year==TimeUtil.getDate().year then 
        return true
    else
        return false
    end
end

--获得礼包的领取次数 
function GameDataManager.getGiftCount()

    if oem.curTable.numS <=0 then
        --print("没有开通时直接返回")
        return oem.curTable.numS
    else
        local old = os.time({year=oem.curTable.year,month=oem.curTable.month,day=oem.curTable.day,hour=0})
        local cur = os.time({year=TimeUtil.getDate().year,month=TimeUtil.getDate().month,day=TimeUtil.getDate().day,hour=0})  
        local pass = math.floor((cur-old)/(3600*24))
        
        if pass>oem.curTable.numS or pass<0 then
        	oem.curTable.numS= 0
        elseif pass==1 or pass==0 then 
            return oem.curTable.numS 
        elseif pass>1 then 
            oem.curTable.numS=oem.curTable.numS-pass+1
            oem.curTable.year = TimeUtil.getDate().year
            oem.curTable.month =TimeUtil.getDate().month
            oem.curTable.day = TimeUtil.getDate().day-1
            GameDataManager.SaveData()
        end
        return oem.curTable.numS         
    end                 
end

--游戏数据保存
function GameDataManager.SaveData(parameters)
    DataPersistence.updateAttribute("user_gold",userData.gold)
    DataPersistence.updateAttribute("user_diamond",userData.diamond)
    DataPersistence.updateAttribute("user_modle",curFightModle)
    local modleList = {}
    for key, var in pairs(modleDic) do
        table.insert(modleList,var)
    end
    DataPersistence.updateAttribute("modle_list",modleList)
    DataPersistence.updateAttribute("record",userData.record)
    DataPersistence.updateAttribute("oem",oem.curTable)
    DataPersistence.toSaveData()
end



return GameDataManager