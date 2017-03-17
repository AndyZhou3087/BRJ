--[[
结算界面
]]
local BaseUI = require("game.view.BaseUI")
local FightOver = class("FightOver",BaseUI)

function FightOver:ctor(parm)
    FightOver.super.ctor(self)

    --阴影层
    self.m_bg = display.newColorLayer(cc.c4b(0,0,0,OPACITY)):addTo(self)
    self.m_fightover = cc.uiloader:load("json/jiesuan.json")
    self:addChild(self.m_fightover)

    self.m_curLevel,self.m_levelIdx = GameDataManager.getCurLevelId()    --当前关卡


    --判断是胜利还是失败
    if parm.type == 1 then
        self:toWin()
    elseif parm.type == 2 then
        self:toFail()
--        self:init()
--        self:Clearing()
--        self:starEffect(3)
    end


    --启用onCleanup函数
    self:setNodeEventEnabled(true)
end

function FightOver:toFail()

end

function FightOver:init()
    AudioManager.playGroundMusic(AudioManager.Ground_Music_Type.Game_Win_Bg,false)--播放胜利的背景音乐
    self.m_point = cc.uiloader:seekNodeByName(self.m_fightover,"point")        --得到分数
    self.m_golds = cc.uiloader:seekNodeByName(self.m_fightover,"golds")        --得到的金币
    self.m_lv = GameDataManager.getOriginPlayerVo().m_level                    --得到当前等级
    self.m_goldsx = cc.uiloader:seekNodeByName(self.m_fightover,"goldsx")   --得到金币翻倍百分比整数
    self.m_rolehead = cc.uiloader:seekNodeByName(self.m_fightover,"role_head")      --头像显示
    --添加过关界面关闭按钮
    local _winclose = cc.uiloader:seekNodeByName(self.m_fightover,"winclose")
    _winclose:onButtonClicked(function(_event)
        self:closeUI()
    end)
    --设置角色logo
    self.m_roleSize = self.m_rolehead:getCascadeBoundingBox().size
    local _roleimg = display.newSprite(RoleConfig[GameDataManager.getFightRole()].unLockPhoto)
    _roleimg:setPosition(self.m_roleSize.width/2,self.m_roleSize.height/2)
    self.m_rolehead:addChild(_roleimg)
    local j3,j4= math.modf(GameDataManager.getPlayerVo().m_coin_rate)
    --金币加成
    self.m_goldsx:setString(j3)
    self.m_levelGolds = GameDataManager.getLevelCoin()       --关卡内所得到的金币
    print("角色翻倍值",GameDataManager.getPlayerVo().m_coin_rate)
    print("基础金币",self.m_levelGolds)
    self.m_allGolds = math.ceil(self.m_levelGolds+GameDataManager.getPlayerVo().m_coin_rate/100*self.m_levelGolds)   --关卡内翻倍后的金币
end

function FightOver:Clearing()
	--无尽模式结算界面
    local _curScore = math.floor(GameDataManager.getLevelScore())  --本关得分
    print(_curScore)
    self.m_point:setString(_curScore)
    self.m_golds:setString(self.m_allGolds)
    GameDataManager.addGold(self.m_allGolds)
    local _nextbtn = cc.uiloader:seekNodeByName(self.m_fightover,"nextbtn")
    _nextbtn:onButtonClicked(function(_event)
        self:closeUI()
    end)
end

--过关胜利界面
function FightOver:toWin()
    self:init()
    --  local _goldsx2 = cc.uiloader:seekNodeByName(self.m_fightover,"goldsx2")    --得到金币翻倍百分比小数
    local _curChapter = GameDataManager.getCurChapter()  --当前章节
    local stone1 = 0
    local stone2 = 0
    local stone3 = 0
    --先计算任务得分情况
    local _tasks = SelectLevel[self.m_curLevel].tasks or {}
    local _maxNum = #_tasks
    if _maxNum > 3 then
        _maxNum = 3
    end
    for var = 1,_maxNum do
        local _curTaskObj = Tasks[_tasks[var]]    --当前任务
        if _curTaskObj then
            local task_img_panle =  cc.uiloader:seekNodeByName(self.m_fightover,"task_img"..var)  --任务图标
            local task_img_panleWH = task_img_panle:getCascadeBoundingBox().size
            local task_img = display.newSprite(_curTaskObj.img)
            task_img:setScale(0.54)
            task_img:setPosition(task_img_panleWH.width/2,task_img_panleWH.height/2)
            task_img_panle:addChild(task_img)

            local task_name_panle = cc.uiloader:seekNodeByName(self.m_fightover,"task_name"..var) --任务名称
            local task_name_panleWH = task_name_panle:getCascadeBoundingBox().size
            local task_name = display.newSprite(_curTaskObj.name)
            task_name:setScale(0.54)
            task_name:setPosition(task_name_panleWH.width/2,task_name_panleWH.height/2)
            task_name_panle:addChild(task_name)

            local task_win =  cc.uiloader:seekNodeByName(self.m_fightover,"task_win"..var) --任务完成
            local task_win_points = cc.uiloader:seekNodeByName(self.m_fightover,"task_score"..var) --任务完成分数
            local task_lose = cc.uiloader:seekNodeByName(self.m_fightover,"task_lose"..var)  --任务失败


            if GameController.isTaskFinish(_curTaskObj.type) == true then
                task_win:setVisible(true)
                task_win_points:setString(_curTaskObj.score)
                GameDataManager.addLevelScore(_curTaskObj.score,true)
                print("增加的分数",_curTaskObj.score)
                --                print("分数",math.floor(GameDataManager.getLevelScore()))
                --                GameDataManager.saveLevelData()
                --                print("保存后的分数",math.floor(GameDataManager.getLevelScore()))
                --                _point:setString(math.floor(GameDataManager.getLevelScore()))
            else
                task_lose:setVisible(true)
            end
        end

    end
    local _isFirst,_starNum,_firstMaxStar = GameDataManager.saveLevelData()  --存储关卡数据
    self.m_curStarNum = _starNum
    self.m_point:setString(math.floor(GameDataManager.getLevelScore()))

    if _firstMaxStar then
        GameDataManager.addPoints(FirstMaxStar_Points)
    end

    
    if _isFirst == true then
        local _leveCon = SelectLevel[self.m_curLevel]
        if _leveCon then
            local _addPower = _leveCon.powerAward[_starNum]
            if _addPower then
                GameDataManager.addPower(_addPower)
            end
            local _addGold = _leveCon.coinAwardFirst[_starNum]     --首次通关金币奖励
            if _addGold then
                GameDataManager.addGold(_addGold+self.m_allGolds)
                self.m_golds:setString(self.m_allGolds+_addGold)
            end
        end
    else
        local _coins = self.m_allGolds+SelectLevel[self.m_curLevel].coinAward
        GameDataManager.addGold(_coins)
        self.m_golds:setString(tostring(_coins))  --关卡配置的金币
    end
    self.m_win:setVisible(true)
    --_goldsx2:setString(j4*10)
    local _curScore = math.floor(GameDataManager.getLevelScore())  --本关得分

    self.m_point:setString(_curScore)
    print("关卡内得分",_curScore)
    
    self:starEffect(_starNum)
   
    --添加石头掉落2016年3月30日19:19:22
    for var = 1,3 do
        self["stone"..var] = cc.uiloader:seekNodeByName(self.m_fightover,"good"..var)
    end
    local curNum = math.random(1, 100)
    print("随机数为:",curNum)
    if _curChapter ==1 then
        print("第一章")
        if curNum <= 10 then
            print("裂魂石+1")
            GameDataManager.addGoods(18,1)
            self["stone1"]:setString(1)
        end

    elseif _curChapter ==2 then
        print("第二章")
        if curNum <= 20 then
            print("裂魂石+1")
            GameDataManager.addGoods(18,1)
            self["stone1"]:setString(1)
        end

    elseif _curChapter ==3 then
        print("第三章")
        if curNum <= 50 then
            print("裂魂石+1")
            GameDataManager.addGoods(18,1)
            self["stone1"]:setString(1)
        end
        if curNum <= 10 then
            print("强魄石+1")
            GameDataManager.addGoods(19,1)
            self["stone2"]:setString(1)
        end

    elseif _curChapter ==4 then
        print("第四章")
        if curNum <= 60 then
            print("裂魂石+1")
            GameDataManager.addGoods(18,1)
            self["stone1"]:setString(1)
        end
        if curNum <= 25 then
            print("强魄石+1")
            GameDataManager.addGoods(19,1)
            self["stone2"]:setString(1)
        end
        if curNum <= 2 then
            print("彩钻+1")
            GameDataManager.addGoods(20,1)
            self["stone3"]:setString(1)
        end

    elseif _curChapter ==5 then
        print("第五章")
        if curNum <= 65 then
            print("裂魂石+1")
            GameDataManager.addGoods(18,1)
            self["stone1"]:setString(1)
        end
        if curNum <= 40 then
            print("强魄石+1")
            GameDataManager.addGoods(19,1)
            self["stone2"]:setString(1)
        end
        if curNum <= 5 then
            print("彩钻+1")
            GameDataManager.addGoods(20,1)
            self["stone3"]:setString(1)
        end
    else
        print("没有得到裂魂石")
    end

    --添加进入下一关按钮
    local _nextbtn = cc.uiloader:seekNodeByName(self.m_fightover,"nextbtn")

    --当前章节关卡数量
    local _chapter = Chapter[GameDataManager.getCurChapter()]
    local _levelMaxIdx = table.getn(_chapter.levels)
    _nextbtn:onButtonClicked(function(_event)
        if GameDataManager.getUlockLevelsNum() <= 1 and _isFirst == true then
            app:enterMainScene()
            self:toClose(true)
            return
        end
        if  self.m_levelIdx < _levelMaxIdx then
            GameDataManager.setCurLevelId(_chapter.levels[self.m_levelIdx+1],self.m_levelIdx+1)
            MAIN_UNLOCK = true
            app:enterMainScene()
            print("解锁值",self.m_guide,FUNC_TYPE.Pet_Func)
            --if self.m_guide ~= FUNC_TYPE.Pet_Func then
            Tools.delayCallFunc(0.01,function()
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_LOAD,{method=2,})
            end)
            Tools.delayCallFunc(1,function()
                GameDispatcher:dispatch(EventNames.EVENT_OPEN_LEVELSELECT,GameDataManager.getCurChapter())
            end)

            if GameDataManager.getStarAward(GameDataManager.getCurChapter()) > 0 and GameDataManager.getCurChapter() == 1 then
                Tools.delayCallFunc(1.5,function()
                    GameDispatcher:dispatch(EventNames.EVENT_OPEN_STAR,true)
                    GameDispatcher:dispatch(EventNames.EVENT_LOADING_OVER)
                    GameDispatcher:dispatch(EventNames.EVENT_MAIN_LOCK)
                    MAIN_UNLOCK = false
                end)
            else
                Tools.delayCallFunc(1.5,function()
                    GameDispatcher:dispatch(EventNames.EVENT_OPEN_READY,GAME_TYPE.LevelMode)
                    GameDispatcher:dispatch(EventNames.EVENT_LOADING_OVER)
                    GameDispatcher:dispatch(EventNames.EVENT_MAIN_LOCK)
                    MAIN_UNLOCK = false
                end)
            end
            --end
            self:toClose(true)
        else
            --此处是否有新章节开启
            if self.isFirst and _chapter.chapterID~=_chapter.nextChapID then
                local _nextChapter = Chapter[_chapter.nextChapID]
                if _nextChapter and _nextChapter.open then
                    self.m_newChapter = true
                end
            end
            self:closeUI()
        end

    end)
    --    --开启宠物引导
    --    if GameDataManager.getUlockLevelsNum() == PET_LEVEL
    --        and DataPersistence.getAttribute("Pet_guide") == true then
    --        DataPersistence.updateAttribute("Pet_guide",false)
    --        _nextbtn:setButtonEnabled(false)
    --        _winclose:setButtonEnabled(false)
    --        Tools.delayCallFunc(2,function()
    --            GameDispatcher:dispatch(EventNames.EVENT_UNLOCK_VIEW,{unlockPet=true})
    --        end)
    --    end
end

function FightOver:starEffect(_starNum)
    self.m_effect = cc.uiloader:seekNodeByName(self.m_fightover,"effect")
    local _ex,ey =self.m_effect:getPosition()
    ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("effect/star_eff0.png","effect/star_eff0.plist","effect/star_eff.ExportJson")
    local _effectS =ccs.Armature:create("star_eff"):addTo(self.m_effect)
    _effectS:getAnimation():play("Animation1")
    self.m_delayHandle = Tools.delayCallFunc(0.5,function()
        --        local _curStar = GameDataManager.getLevelStar(self.m_curLevel)
        ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("effect/chuangguanchenggong0.png","effect/chuangguanchenggong0.plist","effect/chuangguanchenggong.ExportJson")
        local _star =ccs.Armature:create("chuangguanchenggong"):addTo(self,20)
        _star:setPosition(display.cx,display.cy-20)
        _star:getAnimation():play("Animation".._starNum)

        ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("effect/chuangguanchenggong20.png","effect/chuangguanchenggong20.plist","effect/chuangguanchenggong2.ExportJson")
        local _star2 =ccs.Armature:create("chuangguanchenggong2"):addTo(self,20)
        _star2:setPosition(display.cx,display.cy-20)
        _star2:setVisible(false)
        if _starNum == 3 then
            _star2:setVisible(true)
            _star2:getAnimation():play("Animation4")
        end

        _star:getAnimation():setFrameEventCallFunc(handler(self,self.starSound))
    end)
end

function FightOver:starSound(_bone,_evt,_begin,_end)
    for var = 1,self.m_curStarNum do
        if _evt == "star_sound"..var then
            AudioManager.playSoundEffect(AudioManager.Sound_Effect_Type["Star_Sound"..var])
        end
    end
end

function FightOver:closeUI()
    if self.m_newChapter == true then
        Tools.delayCallFunc(1,function()
            GameDispatcher:dispatch(EventNames.EVENT_UNLOCK_CHAPTER)
        end)
    end
    self:toClose(true)
    app:enterMainScene()
end

function FightOver:onCleanup()
    AudioManager.setFightSoundEnable(true)
    if self.m_delayHandle then
        scheduler.unscheduleGlobal(self.m_delayHandle)
        self.m_delayHandle = nil
    end
    GameDispatcher:removeListenerByName(EventNames.EVENT_ROLE_LEVEL)
end

--添加到舞台时调用
function FightOver:addedToScene()
end

--关闭界面调用
function FightOver:toClose(_clean)
    FightOver.super.toClose(self,_clean)
end

return FightOver