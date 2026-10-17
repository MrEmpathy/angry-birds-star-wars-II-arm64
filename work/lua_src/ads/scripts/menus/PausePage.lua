local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
Frame = L0_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
PausePage = L0_1
L0_1 = 0.2
g_pausePageW = L0_1
L0_1 = true
g_noAudioOnPausePage = L0_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = PausePage

function L1_1()
  local L0_2, L1_2
  L0_2 = _G
  L0_2 = L0_2.res
  L0_2 = L0_2.getSpriteBounds
  L1_2 = "MENU_PAUSE_BG_DARK"
  L0_2 = L0_2(L1_2)
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L0_2 = L0_2 * L1_2
  return L0_2
end

L0_1.getTotalW = L1_1
L0_1 = PausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  A0_2.show = false
  L1_2 = A0_2.extendState
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.extendState = L1_2
  A0_2.extendSpeed = 5
  A0_2.visible = false
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "dummyFrame"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "outline"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.isDarkSide
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setImage
    L5_2 = "MENU_PAUSE_BG_DARK"
    L3_2(L4_2, L5_2)
  else
    L4_2 = L2_2
    L3_2 = L2_2.setImage
    L5_2 = "MENU_PAUSE_BG_LIGHT"
    L3_2(L4_2, L5_2)
  end
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "buttonBackToMenu"
  L5_2.returnValue = "BACK_TO_LEVEL_SELECTION"
  L5_2.activateOnRelease = true
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = gamelua
  L6_2 = L6_2.getButtonImageName
  L7_2 = "pauseMenuBackToMenuButton"
  L8_2 = gamelua
  L8_2 = L8_2.objects
  L8_2 = L8_2.isDarkSideLevel
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "buttonResume"
  L6_2.returnValue = "BACK_TO_GAME"
  L6_2.activateOnRelease = true
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = gamelua
  L7_2 = L7_2.getButtonImageName
  L8_2 = "pauseMenuResumeButton"
  L9_2 = gamelua
  L9_2 = L9_2.objects
  L9_2 = L9_2.isDarkSideLevel
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.ScallableButton
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "buttonTutorials"
  L7_2.returnValue = "SHOW_TUTORIALS"
  L7_2.activateOnRelease = true
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "pauseMenuTutorialsButton"
  L10_2 = gamelua
  L10_2 = L10_2.objects
  L10_2 = L10_2.isDarkSideLevel
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = L1_2
  L6_2 = L1_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.ToggleButton
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "buttonSounds"
  L8_2.returnValue = "TOGGLE_SOUNDS"
  L8_2.activateOnRelease = true
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = {}
  L10_2 = gamelua
  L10_2 = L10_2.getButtonImageName
  L11_2 = "pauseMenuSoundsOnButton"
  L12_2 = gamelua
  L12_2 = L12_2.objects
  L12_2 = L12_2.isDarkSideLevel
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = gamelua
  L11_2 = L11_2.getButtonImageName
  L12_2 = "pauseMenuSoundsOffButton"
  L13_2 = gamelua
  L13_2 = L13_2.objects
  L13_2 = L13_2.isDarkSideLevel
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2, L13_2)
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L9_2[5] = L14_2
  L9_2[6] = L15_2
  L9_2[7] = L16_2
  L9_2[8] = L17_2
  L9_2[9] = L18_2
  L7_2(L8_2, L9_2)
  L8_2 = L1_2
  L7_2 = L1_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.ScallableButton
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "buttonRestart"
  L9_2.returnValue = "RESTART_LEVEL"
  L9_2.activateOnRelease = true
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.setImage
  L10_2 = gamelua
  L10_2 = L10_2.getButtonImageName
  L11_2 = "pauseMenuRestartButton"
  L12_2 = gamelua
  L12_2 = L12_2.objects
  L12_2 = L12_2.isDarkSideLevel
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2, L12_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L9_2 = L1_2
  L8_2 = L1_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = gamelua
  L8_2 = L8_2.ui
  L8_2 = L8_2.Text
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.name = "levelNumberText"
  L11_2 = gamelua
  L11_2 = L11_2.getFontHeadline
  L10_2.font = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L8_2.textBoxSize = L9_2
  L8_2.vanchor = "VCENTER"
  L8_2.hanchor = "HCENTER"
  L10_2 = L1_2
  L9_2 = L1_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = gamelua
  L9_2 = L9_2.adSystem
  if L9_2 ~= nil then
    L9_2 = gamelua
    L9_2 = L9_2.disableRovioNews
    if not L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.getTotalW
      L9_2 = L9_2(L10_2)
      L10_2 = 0
      L11_2 = gamelua
      L11_2 = L11_2.screenWidth
      L11_2 = L11_2 - L9_2
      L12_2 = gamelua
      L12_2 = L12_2.screenHeight
      L13_2 = gamelua
      L13_2 = L13_2.adSystem
      L14_2 = L13_2
      L13_2 = L13_2.initRovioNews
      L15_2 = L9_2
      L16_2 = L10_2
      L17_2 = L11_2
      L18_2 = L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
  A0_2.dummyFrame = L1_2
end

L0_1.init = L1_1
L0_1 = PausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.startedFromEditor
  if L1_2 ~= true then
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_AUDIO_TOGGLED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_FULLSCREEN_AD_SHOWING
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.currentLevel
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.setupCurrentLevelString
    L2_2 = gamelua
    L2_2 = L2_2.currentLevel
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2.g_loginInProgress = false
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "levelNumberText"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.g_currentLevelString
  if not L2_2 then
    L2_2 = "1"
  end
  L1_2.text = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.clip
  L2_2(L3_2)
  L2_2 = Frame
  L2_2 = L2_2.onEntry
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.onEntry = L1_1
L0_1 = PausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "outline"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "dummyFrame"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.screenWidth
  L5_2 = gamelua
  L5_2 = L5_2.screenHeight
  L6_2 = A0_2.dummyFrame
  L7_2 = A0_2.extendState
  L8_2 = PausePage
  L8_2 = L8_2.getTotalW
  L8_2 = L8_2()
  L7_2 = L7_2 * L8_2
  L6_2.x = L7_2
  L6_2 = A0_2.dummyFrame
  L6_2.y = 0
  L6_2 = L2_2.h
  L6_2 = L5_2 / L6_2
  L2_2.scaleY = L6_2
  L2_2.scaleX = L1_2
  L7_2 = L5_2 / 2
  L8_2 = L2_2.h
  L9_2 = L2_2.scaleY
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L8_2 = L5_2 * 0.5
  L8_2 = L8_2 + L7_2
  L2_2.y = L8_2
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "buttonResume"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "buttonRestart"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "buttonBackToMenu"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "buttonTutorials"
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "buttonSounds"
  L12_2 = L12_2(L13_2, L14_2)
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "levelNumberText"
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = L2_2.w
  L14_2 = -L14_2
  L14_2 = L14_2 / 2
  L14_2 = L14_2 * L1_2
  L2_2.x = L14_2
  L14_2 = gamelua
  L14_2 = L14_2.screenHeight
  L14_2 = L14_2 / 2
  L2_2.y = L14_2
  L14_2 = _G
  L14_2 = L14_2.res
  L14_2 = L14_2.getSpriteBounds
  L15_2 = "FRAME_MENU_TOP"
  L14_2, L15_2 = L14_2(L15_2)
  L17_2 = L8_2
  L16_2 = L8_2.setScale
  L18_2 = L1_2
  L16_2(L17_2, L18_2)
  L16_2 = L2_2.w
  L16_2 = -L16_2
  L17_2 = L8_2.w
  L17_2 = L17_2 * 0.6
  L16_2 = L16_2 + L17_2
  L16_2 = L16_2 * L1_2
  L17_2 = L8_2.h
  L17_2 = L17_2 * 0.6
  L17_2 = L17_2 * L1_2
  L18_2 = _G
  L18_2 = L18_2.math
  L18_2 = L18_2.max
  L19_2 = 0
  L20_2 = -1 + L6_2
  L18_2 = L18_2(L19_2, L20_2)
  L18_2 = L18_2 * L15_2
  L17_2 = L17_2 + L18_2
  L8_2.y = L17_2
  L8_2.x = L16_2
  L17_2 = L9_2
  L16_2 = L9_2.setScale
  L18_2 = L1_2
  L16_2(L17_2, L18_2)
  L16_2 = PausePage
  L16_2 = L16_2.getTotalW
  L16_2 = L16_2()
  L16_2 = -L16_2
  L16_2 = L16_2 * 0.55
  L17_2 = gamelua
  L17_2 = L17_2.screenHeight
  L17_2 = L17_2 * 0.5
  L18_2 = L9_2.h
  L18_2 = L18_2 * L6_2
  L17_2 = L17_2 - L18_2
  L9_2.y = L17_2
  L9_2.x = L16_2
  L17_2 = L10_2
  L16_2 = L10_2.setScale
  L18_2 = L1_2
  L16_2(L17_2, L18_2)
  L16_2 = PausePage
  L16_2 = L16_2.getTotalW
  L16_2 = L16_2()
  L16_2 = -L16_2
  L16_2 = L16_2 * 0.55
  L17_2 = gamelua
  L17_2 = L17_2.screenHeight
  L17_2 = L17_2 * 0.5
  L18_2 = L10_2.h
  L18_2 = L18_2 * L6_2
  L17_2 = L17_2 + L18_2
  L10_2.y = L17_2
  L10_2.x = L16_2
  L17_2 = L11_2
  L16_2 = L11_2.setScale
  L18_2 = L1_2
  L16_2(L17_2, L18_2)
  L16_2 = PausePage
  L16_2 = L16_2.getTotalW
  L16_2 = L16_2()
  L16_2 = -L16_2
  L16_2 = L16_2 * 0.6
  L17_2 = L11_2.w
  L17_2 = L17_2 * 0.8
  L17_2 = L17_2 * L1_2
  L16_2 = L16_2 + L17_2
  L17_2 = gamelua
  L17_2 = L17_2.screenHeight
  L18_2 = L11_2.h
  L18_2 = L18_2 * 0.6
  L18_2 = L18_2 * L1_2
  L17_2 = L17_2 - L18_2
  L11_2.y = L17_2
  L11_2.x = L16_2
  L17_2 = L12_2
  L16_2 = L12_2.setScale
  L18_2 = L1_2
  L16_2(L17_2, L18_2)
  L16_2 = L8_2.x
  L17_2 = L11_2.y
  L12_2.y = L17_2
  L12_2.x = L16_2
  L16_2 = gamelua
  L16_2 = L16_2.setFont
  L17_2 = L13_2.font
  L16_2(L17_2)
  L17_2 = L13_2
  L16_2 = L13_2.setScale
  L18_2 = L1_2 * 2.5
  L16_2(L17_2, L18_2)
  L16_2 = PausePage
  L16_2 = L16_2.getTotalW
  L16_2 = L16_2()
  L16_2 = -L16_2
  L16_2 = L16_2 * 0.4
  L17_2 = L8_2.y
  L18_2 = L15_2 * L6_2
  L17_2 = L17_2 + L18_2
  L13_2.y = L17_2
  L13_2.x = L16_2
  L16_2 = Frame
  L16_2 = L16_2.layout
  L17_2 = A0_2
  L16_2(L17_2)
end

L0_1.layout = L1_1
L0_1 = PausePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = gamelua
  L3_2 = L3_2.getDeltaTimeMultiplier
  L3_2 = L3_2()
  A1_2 = A1_2 / L3_2
  L3_2 = A0_2.extendState
  if L3_2 == 0 then
    L3_2 = A0_2.show
    if not L3_2 then
      return
    end
  end
  L3_2 = A0_2.extendState
  if L3_2 < 1 then
    L3_2 = A0_2.show
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.min
      L4_2 = A0_2.extendState
      L5_2 = A0_2.extendSpeed
      L5_2 = L5_2 * A1_2
      L4_2 = L4_2 + L5_2
      L5_2 = 1
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.extendState = L3_2
      L3_2 = A0_2.extendState
      if L3_2 == 1 then
        L3_2 = gamelua
        L3_2 = L3_2.eventManager
        L4_2 = L3_2
        L3_2 = L3_2.notify
        L5_2 = {}
        L6_2 = gamelua
        L6_2 = L6_2.events
        L6_2 = L6_2.EID_PAUSE_PAGE_EXTENDED
        L5_2.id = L6_2
        L3_2(L4_2, L5_2)
      end
  end
  else
    L3_2 = A0_2.extendState
    if 0 < L3_2 then
      L3_2 = A0_2.show
      if not L3_2 then
        L3_2 = _G
        L3_2 = L3_2.math
        L3_2 = L3_2.max
        L4_2 = A0_2.extendState
        L5_2 = A0_2.extendSpeed
        L5_2 = L5_2 * A1_2
        L4_2 = L4_2 - L5_2
        L5_2 = 0
        L3_2 = L3_2(L4_2, L5_2)
        A0_2.extendState = L3_2
        L3_2 = A0_2.extendState
        if L3_2 <= 0 then
          L3_2 = gamelua
          L3_2 = L3_2.eventManager
          L4_2 = L3_2
          L3_2 = L3_2.notify
          L5_2 = {}
          L6_2 = gamelua
          L6_2 = L6_2.events
          L6_2 = L6_2.EID_PAUSE_PAGE_HIDE_COMPLETED
          L5_2.id = L6_2
          L3_2(L4_2, L5_2)
          A0_2.visible = false
        end
      end
    end
  end
  L3_2 = A0_2.visible
  if L3_2 then
    L3_2 = A0_2.show
    if L3_2 then
      L3_2 = A0_2.extendState
      if L3_2 == 1 then
        L3_2 = gamelua
        L3_2 = L3_2.currentMusic
        if L3_2 ~= nil then
          L3_2 = _G
          L3_2 = L3_2.res
          L3_2 = L3_2.isAudioPlaying
          L4_2 = gamelua
          L4_2 = L4_2.currentMusic
          L3_2 = L3_2(L4_2)
          if L3_2 == false then
            L3_2 = _G
            L3_2 = L3_2.res
            L3_2 = L3_2.playAudio
            L4_2 = gamelua
            L4_2 = L4_2.currentMusic
            L3_2(L4_2)
          end
        end
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "buttonBackToMenu"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.dummyFrame
  L5_2 = A0_2.extendState
  L6_2 = PausePage
  L6_2 = L6_2.getTotalW
  L6_2 = L6_2()
  L5_2 = L5_2 * L6_2
  L4_2.x = L5_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.update = L1_1
L0_1 = PausePage

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = A0_2.visible
  if L5_2 == true then
    L5_2 = gamelua
    L5_2 = L5_2.drawRect
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L9_2 = A0_2.extendState
    L9_2 = L9_2 * 0.75
    L10_2 = 0
    L11_2 = 0
    L12_2 = gamelua
    L12_2 = L12_2.screenWidth
    L13_2 = gamelua
    L13_2 = L13_2.screenHeight
    L14_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = gamelua
    L5_2 = L5_2.adSystem
    if L5_2 ~= nil then
      L5_2 = gamelua
      L5_2 = L5_2.disableRovioNews
      if not L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2.getTotalW
        L5_2 = L5_2(L6_2)
        L6_2 = 0
        L7_2 = gamelua
        L7_2 = L7_2.screenWidth
        L8_2 = gamelua
        L8_2 = L8_2.screenHeight
        L9_2 = gamelua
        L9_2 = L9_2.drawRect
        L10_2 = 0
        L11_2 = 0
        L12_2 = 0
        L13_2 = 1
        L14_2 = 0
        L15_2 = 0
        L16_2 = L7_2
        L17_2 = L8_2
        L18_2 = false
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      end
    end
    L5_2 = gamelua
    L5_2 = L5_2.ui
    L5_2 = L5_2.Frame
    L5_2 = L5_2.draw
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end

L0_1.draw = L1_1
L0_1 = PausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.extendState
  if 1 <= L1_2 then
    return
  end
  L1_2 = gamelua
  L1_2 = L1_2.stopAudioByFilter
  L2_2 = gamelua
  L2_2 = L2_2.audioFilters
  L2_2 = L2_2.menuFilters
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.playAudio
  L2_2 = "pause_screen_door_in"
  L1_2(L2_2)
  A0_2.show = true
  A0_2.visible = true
  A0_2.extendState = 0.01
  L1_2 = gamelua
  L1_2 = L1_2.dragStarted
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.cancelBirdDrag
    L1_2()
  end
  L1_2 = gamelua
  L1_2 = L1_2.clearParticlesWithTagNative
  L2_2 = "MENU"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_PAUSE_PAGE_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.menuManager
  L1_2.targetObject = nil
end

L0_1.showPage = L1_1
L0_1 = PausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.playAudio
  L2_2 = "pause_screen_door_out"
  L1_2(L2_2)
  A0_2.show = false
  L1_2 = gamelua
  L1_2 = L1_2.loginfo
  L2_2 = "Closing pause page from hide page()"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_PAUSE_PAGE_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.hidePage = L1_1
L0_1 = PausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.startedFromEditor
  if L1_2 ~= true then
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_AUDIO_TOGGLED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_FULLSCREEN_AD_SHOWING
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = gamelua
  L1_2.g_loginInProgress = false
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.loginfo
  L2_2 = "Closing pause page from onExit()"
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = PausePage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2.blockInput
  if L4_2 then
    L4_2 = "BLOCK"
    L5_2 = nil
    L6_2 = nil
    return L4_2, L5_2, L6_2
  end
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L7_2 = -1
    return L7_2
  end
  L7_2 = g_noAudioOnPausePage
  if L7_2 and L4_2 == "TOGGLE_SOUNDS" then
    L7_2 = gamelua
    L7_2 = L7_2.toggleAudio
    L7_2()
    L7_2 = -1
    return L7_2
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = PausePage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_AUDIO_TOGGLED
  if L2_2 ~= L3_2 then
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_FULLSCREEN_AD_SHOWING
    if L2_2 ~= L3_2 then
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
      if L2_2 ~= L3_2 then
        goto lbl_25
      end
    end
  end
  L2_2 = gamelua
  L2_2 = L2_2.setAudioButtonState
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "buttonSounds"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2)
  ::lbl_25::
end

L0_1.eventTriggered = L1_1
