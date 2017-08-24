--[[
SDK工具类
]]
local SDKUtil = {}

SDKUtil.PayResult=
{
        Success = "success",
        Fail = "fail",
}

SDKUtil.EventId = 
{
    Role = "Role",
        Scene = "Scene",
        StartGame = "StartGame",
        Gift = "Gift",
}

local UMPaySource = 21 --友盟付费来源，友盟后台定义21代表爱贝支付

local luaj,luaoc

if device.platform == "android" then
    luaj = require("framework.luaj")
elseif device.platform == "ios" then
    luaoc = require("framework.luaoc")
end

local className = "com/kxx/util/Util"
--pay方法(int goodsId,String orderId,int callFunc)
local methodName = "pay"

--调用平台支付方法
--_data:{goodsId=xx,orderId=xx,callback=xx}
function SDKUtil.toPay(_data)
    local params = {_data.goodsId,_data.orderId,_data.callback}
    local sigs = "(Ljava/lang/String;Ljava/lang/String;I)V"
	if luaj then
        luaj.callStaticMethod(className,methodName,params,sigs)
		return
	end
    if luaoc then
        luaoc.callStaticMethod(className,methodName,params)
        return
	end
    _data.callback(SDKUtil.PayResult.Success)
end

--获取唯一订单id
function SDKUtil.getOrderId(_goodsId)
    _goodsId = _goodsId or math.random(1,10000)
    return "20170310"..tostring(_goodsId)..TimeUtil.getTimeStamp()..os.clock()..math.random(1,10000)
end

local ocClassName = "UnityAdsMana"
local videoMethodName = "showVungleAds"

--初始化vungleSdk
function SDKUtil.initVungleSdk()
    local params = {}
    local _params = {}
    local sigs = "V"
    if luaj then
        luaj.callStaticMethod(className,videoMethodName,params,sigs)
        return
    end
    if luaoc then
        luaoc.callStaticMethod(ocClassName,"initVungleSdk",_params)
        return
    end
end

--看视频得钻石
function SDKUtil.getDiamondByVideo(_data)
    local params = {_data.callback}
    local _params = {callback = _data.callback}
    local sigs = "(I)V"
    if luaj then
        luaj.callStaticMethod(className,videoMethodName,params,sigs)
        return
    end
    if luaoc then
        luaoc.callStaticMethod(ocClassName,videoMethodName,_params)
        return
    end
    _data.callback(SDKUtil.PayResult.Success)
end

--eventId 自定义事件ID 
function SDKUtil.umentOnEvent(eventId,id)
    local params = {eventId,id}
    local _params = {eventId = eventId,id = id}
    local sigs = "(Ljava/lang/String;I)V"
    if luaj then
        luaj.callStaticMethod(className,"umentOnEvent",params,sigs)
        return
    end
    if luaoc then
        luaoc.callStaticMethod(ocClassName,"umentOnEvent",_params)
        return
    end
end

--eventId 自定义事件ID 
function SDKUtil.umentOnEventEx(eventId)
    local params = {eventId}
    local _params = {eventId = eventId}
    local sigs = "(Ljava/lang/String;)V"
    if luaj then
        luaj.callStaticMethod(className,"umentOnEventEx",params,sigs)
        return
    end
    if luaoc then
        luaoc.callStaticMethod(ocClassName,"umentOnEventEx",_params)
        return
    end
end


--获取最优档位礼包以及vip包月信息
function SDKUtil.giftPop(_data)
    local params = {_data.callback}
    local sigs = "(I)V"
    if luaj then
        luaj.callStaticMethod(className,"getGift",params,sigs)
        return
    end
    if luaoc then
        luaoc.callStaticMethod(className,"getGift",params)
        return
    end
    _data.callback("rzjxkp.lb.15|rzjxkp.lb.10.1|rzjxkp.tc.20#0|rzjxkp.by.30")
end

--获取领取/购买按钮
function SDKUtil.getGameGiftTaggleParam(_data)
    local params = {_data.callback}
    local sigs = "(I)V"
    if luaj then
        luaj.callStaticMethod(className,"getGameGiftTaggleParam",params,sigs)
        return
    end
    if luaoc then
        luaoc.callStaticMethod(className,"getGameGiftTaggleParam",params)
        return
    end
    _data.callback("1")
end

--退出游戏
function SDKUtil.exitGame()
    GameDataManager.SaveData()
    
    local params = {}
    local sigs = "()V"
    if luaj then
        luaj.callStaticMethod(className,"exitGame",params,sigs)
        return
    end
    os.exit(0)
end

return SDKUtil