--[[
角色被动技能
]]
local RoleItem = class("RoleItem",function()
    return display.newNode()
end)

function RoleItem:ctor(config)

    --启用onCleanup函数
    self:setNodeEventEnabled(true)
    
    self:initContent(config)

end

--加载item
function RoleItem:initContent(config)
    local content = cc.uiloader:load("json/RoleItem.json")
    self:addChild(content)
    content:setPosition(cc.p(0,0))

    local img = cc.uiloader:seekNodeByName(content,"Image_1")
    --图片
    local ItemFrame = cc.uiloader:seekNodeByName(content,"ImgBtn")
    ItemFrame:setTouchSwallowEnabled(false)
    ItemFrame:setButtonEnabled(false)
    ItemFrame:setButtonImage("disabled",config.res)

    --名字
    local Describe = cc.uiloader:seekNodeByName(content,"LabelName")
    Describe:setString(config.discrebe)
    --进度条
    self.process = cc.uiloader:seekNodeByName(content,"ProgressBar")
--    self.processTimer = display.newProgressTimer(self.process, display.PROGRESS_TIMER_BAR):addTo(img)

end

function RoleItem:updateProcess(pro)
    local to1 = cc.ProgressTo:create(0.5, pro)
    self.process:runAction(to1)
--    self.process:setPercent(pro)
end

function RoleItem:onCleanup(parameters)
end

function RoleItem:toClose(_clean)
    self:removeFromParent(_clean)
end

return RoleItem