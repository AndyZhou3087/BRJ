--[[
工具类
]]
local Tools = {}

local Scheduler = require("framework.scheduler")

-- 秒转时分秒 Tools.secToFromat(91) 返回 "00:01:31"
function Tools.secToFromat(sec)
    local h,lastT = math.modf(sec/60/60);
    local mTemp = math.modf(sec/60);
    local m = mTemp%60;
    local s = sec%60;
    return Tools.numTo0Fromat(h, 2)..":"..Tools.numTo0Fromat(m, 2)..":"..Tools.numTo0Fromat(s, 2)
end

--转换为分秒
function Tools.secToFromat2(sec)
	local mTemp = math.modf(sec/60);
	local m = mTemp%60;
	local s = sec%60;
	return Tools.numTo0Fromat(m,2)..":"..Tools.numTo0Fromat(s, 2)
end

-- 位数不足用0补齐,如：Tools.numTo0Fromat(82, 4) 返回 "0082"
function Tools.numTo0Fromat(value, len)
    local strValue = tostring(value);
    if string.len(strValue)>=len then
        return strValue;
    else
        local last0len = len - string.len(strValue);
        local last0str = string.rep("0", last0len);
        return last0str..strValue
    end
end

--获取程序启动运行的时间以秒为单位
function Tools.getSysTime()
    return os.clock()
end

--延迟调用函数
function Tools.delayCallFunc(_delayTime,_callFunc)
    return Scheduler.performWithDelayGlobal(_callFunc,_delayTime)
end

--创建华康海报体文本
function Tools.newHuaKangLable(_options)
    _options.font = Tools.Font_HuaKangHB_Path
    return display.newTTFLabel(_options)
end

--截取table数组
function Tools.subTables(_arr,_num)
    local _res = {}
    _num = _num>#_arr and #_arr or _num
    for i=1, _num do
        table.insert(_res,i,_arr[1])
        table.remove(_arr,1)
    end
    return _res
end
--检测元素是否在table数组或字典里
--@param1:待检测元素
--@param2:目标数组字典
--@return:有的话返回元素所在索引，没有则返回nil
function Tools.checkInTables(_element,_arr)
    for key, var in pairs(_arr) do
        if _element == var then
    		return key
    	end
    end
    return
end

--获取文件名  
function Tools.stripPath(filename)  
    return string.match(filename, ".+/([^/]*%.%w+)$") -- *nix system  
        --return string.match(filename, “.+\\([^\\]*%.%w+)$”) — *nix system  
end

function Tools.printDebug(...)
	if PrintDebug then
        print(...)
	end
end

return Tools