--[[
音效管理类
]]
local AudioManager = {}

AudioManager.Music_Path = "music/"
--AudioManager.Music_Suffix = ".ogg"

--背景音乐类型
AudioManager.Ground_Music_Type=
    {
        --主界面背景音乐
        Main_Bg = "bg.mp3",
        --战斗场景音乐
        Fight_Bg = "bg.mp3",
    }
--音效类型
AudioManager.Sound_Effect_Type=
    {
        Button_Click_Sound = "button.wav",--按钮点击
        Dead_Sound = "fevertime.wav",   --死亡
        GameOver_Sound = "gameover.wav",    --游戏结束
        Rocket_Sound = "rocket.wav",  --火箭冲刺
        Phantom_Sound = "phantom.wav",   --幻影
        Jump_Sound = "jump.wav",  --跳跃
        Diamond_Sound = "diamond.wav",  --获得钻石
        Magnet_Sound = "magnet.wav",  --吸铁石
    }

--游戏战斗中的音效，加此项是为了在游戏中弹出界面时要屏蔽战斗音效
local fightSoundOff = false --战斗音效是否处于关闭中
local fightSound={}
fightSound[AudioManager.Sound_Effect_Type.Rocket_Sound] = 1
fightSound[AudioManager.Sound_Effect_Type.Jump_Sound] = 1
fightSound[AudioManager.Sound_Effect_Type.Magnet_Sound] = 1
fightSound[AudioManager.Sound_Effect_Type.Phantom_Sound] = 1


--循环音效记录表
AudioManager.Sound_Mark={}

--预加载音乐文件
function AudioManager.preLoadMusic(_musicType)
    audio.preloadMusic(AudioManager.Music_Path.._musicType)
end

--预加载音效文件
function AudioManager.preLoadSound(_musicType)
    audio.preloadSound(AudioManager.Music_Path.._musicType)
end
function AudioManager.unLoadSound(_musicType)
    audio.unloadSound(AudioManager.Music_Path.._musicType)
end

--播放背景音乐
--_musicType音乐类型
--_isLoop是否循环
--_force强制播放
function AudioManager.playGroundMusic(_musicType,_isLoop,_force)
    _isLoop = _isLoop or false
    audio.playMusic(AudioManager.Music_Path.._musicType,_isLoop)
    if GameDataManager.isMusicOpen()==false and (not _force) then
        audio.pauseMusic()
    end
end
--暂停背景音乐
function AudioManager.pauseMusic()
    if GameDataManager.isMusicOpen() then
        audio.pauseMusic()
	end
end
--恢复暂停的背景音乐
function AudioManager.resumeMusic()
    if GameDataManager.isMusicOpen() then
        audio.resumeMusic()
    end
end

--播放音效
--_soundType音效类型
--_isLoop是否循环
function AudioManager.playSoundEffect(_soundType,_isLoop)
    if fightSoundOff and fightSound[_soundType] then
        return
    end
    _isLoop = _isLoop or false
    if _isLoop==true then
        local markObj = AudioManager.Sound_Mark[_soundType]
        if markObj==nil or markObj.num==0 then
            if GameDataManager.isSoundOpen() then
                AudioManager.Sound_Mark[_soundType]={num=1,handler=audio.playSound(AudioManager.Music_Path.._soundType,_isLoop)}
            else
                AudioManager.Sound_Mark[_soundType]={num=1}
            end
        else
            markObj.num=markObj.num+1
        end
    else
        if GameDataManager.isSoundOpen() then
            local markObj = AudioManager.Sound_Mark[AudioManager.Sound_Effect_Type.Rocket_Sound]
            if markObj and markObj.num>0 then
                --播放火箭音效时不播放其它音效
                return
            end
            audio.playSound(AudioManager.Music_Path.._soundType,_isLoop)
        end
    end

end

--设置战斗音效是否生效，true生效，flase不生效
function AudioManager.setFightSoundEnable(_enable)
    --    _enable = _enable or true
    fightSoundOff = not _enable
    if GameDataManager.isSoundOpen() then
        if _enable then
            audio.resumeAllSounds()
        else
            audio.pauseAllSounds()
        end
    end
end

function AudioManager.stopSoundEffect(_soundType)
    local markObj = AudioManager.Sound_Mark[_soundType]
    if markObj and markObj.num>0 then
        markObj.num=markObj.num-1
        if markObj.num<=0 then
            markObj.num = 0
            if GameDataManager.isSoundOpen() then
                audio.stopSound(markObj.handler)
            end
        end
    end
end

function AudioManager.stopAllSounds()
    audio.stopAllSounds()
end

--[[
停止声音
默认控制音乐和音效
@param   type 1:仅控制音乐           2:仅控制音效
]]
function AudioManager.stop(type)
    if type==nil then
        audio.pauseMusic()
        audio.stopAllSounds()

        GameDataManager.setMusic(false)
        GameDataManager.setSound(false)
    elseif type==1 then
        audio.pauseMusic()
        GameDataManager.setMusic(false)
    elseif type==2 then
        audio.stopAllSounds()
        GameDataManager.setSound(false)
    end
end


--[[
打开声音
默认控制音乐和音效
@param   type 1:仅控制音乐           2:仅控制音效
]]
function AudioManager.open(parameters)
    --	for key,value in pairs(AudioManager.Music_Mark) do
    --        value.handler=audio.playMusic(AudioManager.Music_Path..key,true)
    --	end
--    if GameController.isInPause() then
--        return
--    end
    if parameters==nil then
        GameDataManager.setMusic(true)
        GameDataManager.setSound(true)
        if not GameController.isInPause() then
            audio.rewindMusic()
            for key,value in pairs(AudioManager.Sound_Mark) do
                if value.num>0 then
                    value.handler=audio.playSound(AudioManager.Music_Path..key,true)
                end
            end
        end
    elseif parameters==1 then
        GameDataManager.setMusic(true)
        if not GameController.isInPause() then
            audio.rewindMusic()
        end
    elseif parameters==2 then
        GameDataManager.setSound(true)
        if not GameController.isInPause() then
            for key,value in pairs(AudioManager.Sound_Mark) do
                if value.num>0 then
                    value.handler=audio.playSound(AudioManager.Music_Path..key,true)
                end
            end
        end
    end
end

--停止音乐
function AudioManager.stopAudio(type)
    if type==nil then
        audio.pauseMusic()
        audio.stopAllSounds()
    elseif type==1 then
        audio.pauseMusic()
    elseif type==2 then
        audio.stopAllSounds()
    end
end


function AudioManager.clear(_soundType)
    local markObj = AudioManager.Sound_Mark[_soundType]
    if markObj and markObj.num>0 then
        if GameDataManager.isSoundOpen() and markObj.handler then
            audio.stopSound(markObj.handler)
        end
        markObj.num=0
    end
end

function AudioManager.clearAll()
    audio.stopAllSounds()
    AudioManager.Sound_Mark={}
end

return AudioManager