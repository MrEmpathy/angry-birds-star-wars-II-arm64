local L0_1, L1_1
L0_1 = false
g_queuePauseGame = L0_1
L0_1 = false
g_queueResumeGame = L0_1
L0_1 = false
g_gamePaused = L0_1
L0_1 = false
g_audioWasDisabled = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = true
  g_queuePauseGame = L0_2
  L0_2 = checkCancelBirdDrag
  L0_2()
end

pauseGame = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.selectedBird
  if L0_2 ~= nil then
    L0_2 = gamelua
    L0_2 = L0_2.cancelBirdDrag
    L0_2()
  end
end

checkCancelBirdDrag = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.setPhysicsEnabled
  L1_2 = false
  L0_2(L1_2)
  L0_2 = gamelua
  L0_2 = L0_2.SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isAudioEnabled
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = gamelua
    L0_2 = L0_2.toggleAudio
    L0_2()
    L0_2 = true
    g_audioWasDisabled = L0_2
  else
    L0_2 = false
    g_audioWasDisabled = L0_2
  end
  L0_2 = true
  g_gamePaused = L0_2
end

pauseGameImpl = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = true
  g_queueResumeGame = L0_2
end

resumeGame = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = gamelua
  L0_2 = L0_2.isPausePageVisible
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = gamelua
    L0_2 = L0_2.setPhysicsEnabled
    L1_2 = true
    L0_2(L1_2)
  end
  L0_2 = g_audioWasDisabled
  if L0_2 then
    L0_2 = _G
    L0_2 = L0_2.assert
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isAudioEnabled
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
    L2_2 = "Inconsistent audio enabled state"
    L0_2(L1_2, L2_2)
    L0_2 = gamelua
    L0_2 = L0_2.toggleAudio
    L0_2()
    L0_2 = false
    g_audioWasDisabled = L0_2
  end
  L0_2 = false
  g_gamePaused = L0_2
end

resumeGameImpl = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = g_queuePauseGame
  if L1_2 then
    L1_2 = false
    g_queuePauseGame = L1_2
    L1_2 = pauseGameImpl
    L1_2()
  end
  L1_2 = g_queueResumeGame
  if L1_2 then
    L1_2 = false
    g_queueResumeGame = L1_2
    L1_2 = resumeGameImpl
    L1_2()
  end
end

updatePause = L0_1
