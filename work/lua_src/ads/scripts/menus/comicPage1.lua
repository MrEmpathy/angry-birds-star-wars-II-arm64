local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.AnimatedTutorial
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
comicPage1 = L0_1
L0_1 = comicPage1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.name
  A0_2.name = L2_2
  L2_2 = A1_2.levelName
  A0_2.levelName = L2_2
  L2_2 = A1_2.currentFolder
  A0_2.currentFolder = L2_2
  L2_2 = A1_2.animName
  A0_2.animName = L2_2
  L2_2 = ui
  L2_2 = L2_2.AnimatedTutorial
  L2_2 = L2_2.new
  L3_2 = A0_2
  L4_2 = A0_2.animName
  L5_2 = false
  return L2_2(L3_2, L4_2, L5_2)
end

L0_1.new = L1_1
L0_1 = comicPage1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.AnimatedTutorial
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.alpha = 1
  A0_2.loopAnimation = false
  A0_2.isComic = true
end

L0_1.init = L1_1
L0_1 = comicPage1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isComicWatched
  L3_2 = A0_2.levelName
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.gotoLevelFromComic
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.getLevelMetadata
      L2_2 = A0_2.levelName
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2.episodeEndComic
      if not L1_2 then
        goto lbl_34
      end
    end
    L1_2 = gamelua
    L1_2 = L1_2.setLevelName
    L2_2 = "LevelSelection"
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.queueEvent
    L3_2 = {}
    L4_2 = gamelua
    L4_2 = L4_2.events
    L4_2 = L4_2.EID_CHANGE_SCENE
    L3_2.id = L4_2
    L3_2.target = "GameScene"
    L1_2(L2_2, L3_2)
  else
    ::lbl_34::
    L1_2 = gamelua
    L1_2 = L1_2.getEpisodeMetadata
    L2_2 = A0_2.currentFolder
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.levelsAvailableInFree
    L2_2 = gamelua
    L2_2 = L2_2.g_isRegistered
    if not L2_2 then
      if not L1_2 then
        goto lbl_53
      end
      L2_2 = gamelua
      L2_2 = L2_2.currentLevel
      if not (L1_2 > L2_2) then
        goto lbl_53
      end
    end
    L2_2 = gamelua
    L2_2 = L2_2.setNextLevel
    L2_2()
    goto lbl_69
    ::lbl_53::
    L2_2 = gamelua
    L2_2 = L2_2.setLevelName
    L3_2 = "LevelSelection"
    L2_2(L3_2)
    L2_2 = gamelua
    L2_2.g_openUpsell = true
    L2_2 = gamelua
    L2_2 = L2_2.eventManager
    L3_2 = L2_2
    L2_2 = L2_2.queueEvent
    L4_2 = {}
    L5_2 = gamelua
    L5_2 = L5_2.events
    L5_2 = L5_2.EID_CHANGE_SCENE
    L4_2.id = L5_2
    L4_2.target = "GameScene"
    L2_2(L3_2, L4_2)
  end
  ::lbl_69::
  L1_2 = gamelua
  L1_2.gotoLevelFromComic = false
end

L0_1.exitComic = L1_1
L0_1 = comicPage1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "RETURN" then
      L5_2 = A0_2
      L4_2 = A0_2.skipOrCloseComic
      L4_2(L5_2)
    elseif A2_2 == "S" then
      L4_2 = L3_2
      L5_2 = meta
      L6_2 = item
      return L4_2, L5_2, L6_2
    end
  end
  L4_2 = -1
  return L4_2
end

L0_1.onKeyEvent = L1_1
L0_1 = comicPage1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "close"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.visible
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.GameScene
    L2_2 = L1_2
    L1_2 = L1_2.endTransition
    L1_2(L2_2)
    L1_2 = g_animations
    L2_2 = A0_2.animName
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.duration
    L2_2 = A0_2.time
    if L1_2 > L2_2 then
      A0_2.time = L1_2
    end
    A0_2.tutorialSkipped = true
    L2_2 = A0_2.flashAnimations
    if L2_2 then
      L2_2 = _G
      L2_2 = L2_2.pairs
      L3_2 = A0_2.flashAnimations
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = gamelua
        L7_2 = L7_2.cutsceneSeek
        L8_2 = L6_2.name
        L9_2 = 60
        L7_2(L8_2, L9_2)
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "close"
    L2_2 = L2_2(L3_2, L4_2)
    L2_2.visible = true
  else
    L2_2 = A0_2
    L1_2 = A0_2.exitComic
    L1_2(L2_2)
  end
end

L0_1.skipOrCloseComic = L1_1
L0_1 = comicPage1

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  if A1_2 == "LRELEASE" then
    L5_2 = A0_2
    L4_2 = A0_2.skipOrCloseComic
    L4_2(L5_2)
  end
end

L0_1.onPointerEvent = L1_1
L0_1 = comicPage1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.comicFinished
  L2_2 = A0_2.levelName
  L3_2 = A0_2.currentFolder
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.AnimatedTutorial
  L1_2 = L1_2.stopAllPlayedAudio
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.AnimatedTutorial
  L1_2 = L1_2.stopFlash
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
