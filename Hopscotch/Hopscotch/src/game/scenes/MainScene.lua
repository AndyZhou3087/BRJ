
local LoadView = require("game.view.loading.LoadView")

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    self:initData()
--    cc.ui.UILabel.new({
--            UILabelType = 2, text = "Hello, World", size = 64})
--        :align(display.CENTER, display.cx, display.cy)
--        :addTo(self)

    self.loading = LoadView.new()
    self:addChild(self.loading)
end

--数据初始化
function MainScene:initData()
    GameDataManager.initUserData()
    GameDataManager.saveGameData()
    TimeUtil.init()
end

function MainScene:onEnter()
    if GameDataManager.isMusicOpen()==false then
        AudioManager.open(1)
    end
    if GameDataManager.isSoundOpen()==false then
        AudioManager.open(2)
    end
--    AudioManager.playGroundMusic(AudioManager.Ground_Music_Type.Main_Bg,true)
    if not tolua.isnull(self.loading) then
        self.loading:addedToScene()
    end
end

function MainScene:onExit()
end

return MainScene
