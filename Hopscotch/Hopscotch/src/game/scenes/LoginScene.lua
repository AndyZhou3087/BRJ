
local LoadView = require("game.view.loading.LoadView")

local LoginScene = class("LoginScene", function()
    return display.newScene("LoginScene")
end)

function LoginScene:ctor()
    self:initData()
    
    SDKUtil.initVungleSdk()

    self.loading = LoadView.new()
    self:addChild(self.loading)
end

--数据初始化
function LoginScene:initData()
    GameDataManager.initUserData()
    GameDataManager.saveGameData()
    TimeUtil.init()
end

function LoginScene:onEnter()
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

function LoginScene:onExit()
end

--场景销毁
function LoginScene:onCleanup()
    GameDataManager.saveGameData()
end

return LoginScene
