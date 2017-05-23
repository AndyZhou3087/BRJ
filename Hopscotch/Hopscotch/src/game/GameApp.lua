
require("launcher.config")
require("cocos.init")
require("framework.init")

local GameApp = class("GameApp", cc.mvc.AppBase)    --继承AppBase：app = self

function GameApp:ctor()
--    MyApp.super.ctor(self)
    GameApp.super.ctor(self,"GameApp","game")    --替换app目录
end

function GameApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")
    self:enterScene("MainScene")
end

return GameApp
