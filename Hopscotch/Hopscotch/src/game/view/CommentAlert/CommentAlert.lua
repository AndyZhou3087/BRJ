--[[
好评界面
]]
local BaseUI = require("game.view.BaseUI")
local CommentAlert = class("CommentAlert",BaseUI)

function CommentAlert:ctor(parameters)
    CommentAlert.super.ctor(self)

    local bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY*0.5)):addTo(self)

    self.m_json = cc.uiloader:load("json/CommentAlert.json")
    self:addChild(self.m_json)

    self.nextBtn = cc.uiloader:seekNodeByName(self.m_json,"nextBtn")
    self.nextBtn:onButtonClicked(function (event)
        self:toClose(true)
    end)
    
    self.refuseBtn = cc.uiloader:seekNodeByName(self.m_json,"refuseBtn")
    self.refuseBtn:onButtonClicked(function (event)
        DataPersistence.updateAttribute("favourableCommentAlert",true)
        self:toClose(true)
    end)
    
    self.okBtn = cc.uiloader:seekNodeByName(self.m_json,"okBtn")
    self.okBtn:onButtonClicked(function (event)
        SDKUtil.favourableCommentAlert({callback=function(_res)
            if SDKUtil.PayResult.Comment == _res then
                DataPersistence.updateAttribute("favourableCommentAlert",true)
                self:toClose(true)
            end
        end})
    end)

end


--关闭界面调用
function CommentAlert:toClose(_clean)
    CommentAlert.super.toClose(self,_clean)
end

return CommentAlert