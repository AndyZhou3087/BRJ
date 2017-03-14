
local SelectItem = class("SelectItem",function()
    return display.newNode()
end)

function SelectItem:ctor(parameters)
    self.parm = parameters

    local chapterBtn = cc.ui.UIPushButton.new(parameters.res, {scale9 = true})
        :setButtonSize(parameters.rect[1],parameters.rect[2])
        :onButtonClicked(function(event)
            print("chjh button click")
            print("----------关卡：",parameters._id)
        end)
        :addTo(self)
    chapterBtn:setTouchSwallowEnabled(false)
    chapterBtn:setAnchorPoint(0,0)
    chapterBtn:setPosition(cc.p(parameters.pos.x,parameters.pos.y))
    
end

function SelectItem:onCleanup(parameters)

end

function SelectItem:dispose(_clean)
    self:removeFromParent(_clean)
end

return SelectItem