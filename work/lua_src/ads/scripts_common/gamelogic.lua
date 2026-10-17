local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = print
    L3_2 = "adding update function with name: "
    L4_2 = A0_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = L0_1
    L2_2[A0_2] = A1_2
  end
end

addUpdateFunction = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
end

removeUpdateFunction = L1_1
L1_1 = loadLuaFile
L2_1 = scriptPath
L3_1 = "/settingsWrapper.lua"
L2_1 = L2_1 .. L3_1
L3_1 = ""
L4_1 = false
L5_1 = false
L1_1(L2_1, L3_1, L4_1, L5_1)
L1_1 = loadLuaFile
L2_1 = scriptPath
L3_1 = "/game.lua"
L2_1 = L2_1 .. L3_1
L3_1 = ""
L4_1 = false
L5_1 = false
L1_1(L2_1, L3_1, L4_1, L5_1)
L1_1 = loadLuaFile
L2_1 = scriptPath
L3_1 = "/camera.lua"
L2_1 = L2_1 .. L3_1
L3_1 = ""
L4_1 = false
L5_1 = false
L1_1(L2_1, L3_1, L4_1, L5_1)
L1_1 = eggsplorationEnabled
if L1_1 then
  L1_1 = loadLuaFileToObject
  L2_1 = scriptPath
  L3_1 = "/eggsploration/EggsplorationMainMenu.lua"
  L2_1 = L2_1 .. L3_1
  L3_1 = _G
  L4_1 = "Eggsploration"
  L1_1(L2_1, L3_1, L4_1)
end
L1_1 = this
L1_1 = L1_1.steam
if L1_1 ~= nil then
  L1_1 = loadLuaFileToObject
  L2_1 = commonScriptPath
  L3_1 = "/timer.lua"
  L2_1 = L2_1 .. L3_1
  L3_1 = this
  L4_1 = "util"
  L1_1(L2_1, L3_1, L4_1)
  L1_1 = loadLuaFileToObject
  L2_1 = commonScriptPath
  L3_1 = "/steam.lua"
  L2_1 = L2_1 .. L3_1
  L3_1 = this
  L4_1 = "Steam"
  L1_1(L2_1, L3_1, L4_1)
  L1_1 = this
  L1_1 = L1_1.Steam
  L2_1 = L1_1
  L1_1 = L1_1.init
  L1_1(L2_1)
end
L1_1 = this
L1_1 = L1_1.marketplace
if L1_1 ~= nil then
  L1_1 = loadLuaFileToObject
  L2_1 = commonScriptPath
  L3_1 = "/Marketplace.lua"
  L2_1 = L2_1 .. L3_1
  L3_1 = this
  L3_1 = L3_1.marketplace
  L4_1 = ""
  L1_1(L2_1, L3_1, L4_1)
end
L1_1 = true
postHighscores = L1_1
L1_1 = true
deterministicPhysics = L1_1
L1_1 = false
DEBUG_POINTER_EVENTS = L1_1
L1_1 = false
usingCameraDummy = L1_1
L1_1 = {}
g_forceFunctions = L1_1
L1_1 = {}
g_queuedEventCalls = L1_1
L1_1 = false
g_blockLevelMusic = L1_1
L1_1 = true
g_mouseAvailable = L1_1
L1_1 = false
g_safeToQuit = L1_1
L1_1 = false
g_isWindowSnapped = L1_1
L1_1 = 0
g_scoreAddedTime = L1_1
L1_1 = {}
L1_1.enabled = true
L1_1.visible = false
g_aimingAidAttributes = L1_1
L1_1 = {}
L1_1.cursorToUse = nil
L1_1.framesToProfile = 22
L2_1 = screenWidth
L2_1 = 1536 / L2_1
L1_1.minDistanceToResumeDrag = L2_1
L2_1 = screenWidth
L2_1 = 51.2 / L2_1
L1_1.maxDistanceToPutDragOnHold = L2_1
L1_1.currentDragDistance = 0
L1_1.onHold = false
L2_1 = {}
L1_1.lastFramesPositions = L2_1
L2_1 = {}
L1_1.lastFramesTimes = L2_1
g_aimingAidCursor = L1_1
L1_1 = nil
wasAudioPlaying = L1_1
L1_1 = nil
gameCamera = L1_1
L1_1 = false
rovioNewsIsShown = L1_1
L1_1 = false
rovioNewsIsLoaded = L1_1
L1_1 = {}
L1_1.enableDebugging = false
L1_1.birdRemovalTime = 0
g_killingVolumeAttributes = L1_1
L1_1 = {}
g_killingVolumeOffsets = L1_1
L1_1 = g_killingVolumeOffsets
L2_1 = {}
L2_1.width = 0.05
L2_1.height = 0.05
L1_1.ipad = L2_1
L1_1 = g_killingVolumeOffsets
L2_1 = {}
L2_1.width = 0.05
L2_1.height = 0.05
L1_1.iphone = L2_1
L1_1 = g_killingVolumeOffsets
L2_1 = {}
L2_1.width = 0.05
L2_1.height = 0.05
L1_1.default = L2_1
L1_1 = false
g_usingGestureControls = L1_1
L1_1 = releaseBuild
if L1_1 then
  L1_1 = false
  showEditor = L1_1
  L1_1 = true
  postHighscores = L1_1
  L1_1 = false
  DEBUG_POINTER_EVENTS = L1_1
end
L1_1 = screenWidth
L1_1 = 15 * L1_1
L1_1 = L1_1 / 480
tapRadius = L1_1
L1_1 = {}
g_debugLines = L1_1
L1_1 = {}
g_debugPoints = L1_1
L1_1 = 0
slingShotAngle = L1_1
L1_1 = gameWorldScale
if not L1_1 then
  L1_1 = 1
end
gameWorldScale = L1_1
L1_1 = gameWorldScale
L2_1 = g_slingShotScaleMultiplier
if not L2_1 then
  L2_1 = 1
end
L1_1 = L1_1 * L2_1
slingshotScale = L1_1
L1_1 = ""
fpsString = L1_1
L1_1 = {}
L1_1.mouseDragTime = -1
L1_1.targetDragTime = 0.5
L1_1.minDragTime = 0.02
L1_1.lastPressedX = -1
L1_1.lastPressedY = -1
L1_1.cummulativeDragX = 0
L1_1.cummulativeDragY = 0
L1_1.dragFromTouch = false
L1_1.dragFromMouse = false
g_mouseDragAttributes = L1_1
L1_1 = {}
L1_1.enabled = true
L1_1.dragging = false
L1_1.lastCursorX = -1
L1_1.lastCursorY = -1
L1_1.previousTouchCount = 0
L1_1.elapsedTimeAtRest = 0
L1_1.targetRestTime = 0.01
L2_1 = {}
L2_1.x = nil
L2_1.y = nil
L1_1.dragStartPosPhysics = L2_1
L2_1 = {}
L2_1.x = nil
L2_1.y = nil
L1_1.dragLastPosPhysics = L2_1
L1_1.touchOneID = nil
L2_1 = slingshotScale
L2_1 = 3 * L2_1
L1_1.shootMinLength = L2_1
L1_1.disabledForBirdSpecialty = false
L1_1.needsNewTouchToDrag = false
g_birdDragOnTouchAttributes = L1_1
L1_1 = deviceModel
if L1_1 == "roku" then
  L1_1 = 0.05
  if L1_1 then
    goto lbl_223
  end
end
L1_1 = 0
::lbl_223::
g_safeArea = L1_1
L1_1 = deviceModel
L1_1 = L1_1 == "roku"
disableAllLinks = L1_1
L1_1 = deviceModel
L1_1 = L1_1 == "roku"
useAccelerometerControls = L1_1
L1_1 = {}
g_registrationURLs = L1_1
L1_1 = {}
activeSensors = L1_1
L1_1 = {}
previousCursorPoint = L1_1
L1_1 = 0.15
defaultPhysicsDrag = L1_1
L1_1 = 0.4
minorPhysicsDrag = L1_1
L1_1 = 0.05
defaultBirdsDrag = L1_1
L1_1 = 3
birdDragTimer = L1_1
L1_1 = 1
shootingTreshold = L1_1
L1_1 = gameWorldScale
L1_1 = 1 * L1_1
dragVelocityThreshold = L1_1
L1_1 = {}
L1_1.r = 255
L1_1.g = 255
L1_1.b = 255
velocityDebugColor = L1_1
L1_1 = true
g_lineGravityVisualization = L1_1
L1_1 = 0.75
maxInputWaitingTime = L1_1
L1_1 = 1
birdCollisionMultiplier = L1_1
L1_1 = {}
L1_1.NORMAL_OBJECT = 1
L1_1.BIRD = 2
L1_1.COIN = 4
L1_1.AIMING_AID = 8
L1_1.BIRD_UNAFFECTED_BY_GRAVITY = 16
L1_1.FORCE_OBJECT = 32
L1_1.IGNOREGRAVITY = 64
L1_1.YODA_FORCE_OBJECT = 128
L1_1.HOVERING_OBJECT = 256
g_gravityFiltersCategories = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = "NORMAL_OBJECT"
L4_1 = "BIRD"
L5_1 = "AIMING_AID"
L6_1 = "FORCE_OBJECT"
L7_1 = "HOVERING_OBJECT"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L1_1.GRAVITATION_SENSOR = L2_1
L2_1 = {}
L3_1 = "NORMAL_OBJECT"
L2_1[1] = L3_1
L1_1.BLACK_HOLE_SENSOR = L2_1
L2_1 = {}
L3_1 = "COIN"
L2_1[1] = L3_1
L1_1.COIN_SUCKER_SENSOR = L2_1
L2_1 = {}
L3_1 = "NORMAL_OBJECT"
L2_1[1] = L3_1
L1_1.DYNAMIC_GRAVITATION_SENSOR = L2_1
g_gravityFiltersNameMasks = L1_1
L1_1 = {}
g_gravityFiltersMasks = L1_1
L1_1 = false
g_inMainMenu = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = menuManager
  if L1_2 ~= nil then
    L1_2 = menuManager
    L2_2 = L1_2
    L1_2 = L1_2.getRoot
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      goto lbl_12
    end
  end
  L1_2 = true
  do return L1_2 end
  goto lbl_46
  ::lbl_12::
  L1_2 = g_inMainMenu
  if L1_2 then
    L1_2 = menuManager
    L2_2 = L1_2
    L1_2 = L1_2.getRoot
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.children
    if L1_2 then
      L1_2 = _G
      L1_2 = L1_2.pairs
      L2_2 = menuManager
      L3_2 = L2_2
      L2_2 = L2_2.getRoot
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.children
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = L5_2.requireInput
        if L6_2 then
          if A0_2 then
            L6_2 = print
            L7_2 = "Not safe to quit: frame "
            L8_2 = L5_2.name
            L9_2 = " requires input"
            L7_2 = L7_2 .. L8_2 .. L9_2
            L6_2(L7_2)
          end
          L6_2 = false
          return L6_2
        end
      end
    end
    L1_2 = true
    return L1_2
  end
  ::lbl_46::
  if A0_2 then
    L1_2 = print
    L2_2 = "Not safe to quit: not in main menu"
    L1_2(L2_2)
  end
  L1_2 = false
  return L1_2
end

isSafeToQuit = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = g_aimingAidCursor
  L1_2 = screenWidth
  L1_2 = 1536 / L1_2
  L0_2.minDistanceToResumeDrag = L1_2
  L0_2 = g_aimingAidCursor
  L1_2 = screenWidth
  L1_2 = 51.2 / L1_2
  L0_2.maxDistanceToPutDragOnHold = L1_2
  L0_2 = startedFromEditor
  if L0_2 ~= true then
    L0_2 = {}
    L1_2 = screenWidth
    L1_2 = L1_2 * 0.5
    L0_2.x = L1_2
    L1_2 = screenHeight
    L1_2 = L1_2 * 0.5
    L0_2.y = L1_2
    L0_2.top = 0
    L0_2.left = 0
    L1_2 = screenHeight
    L0_2.bottom = L1_2
    L1_2 = screenWidth
    L0_2.right = L1_2
    screen = L0_2
  end
  L0_2 = screenHeight
  L0_2 = L0_2 / 320
  L0_2 = 320 * L0_2
  bannerWidth = L0_2
  L0_2 = screenHeight
  L0_2 = L0_2 / 320
  L0_2 = 48 * L0_2
  bannerHeight = L0_2
  L0_2 = screenHeight
  L0_2 = L0_2 * 0.5
  L0_2 = L0_2 + 70
  continueButtonY = L0_2
  L0_2 = screenWidth
  L0_2 = 15 * L0_2
  L0_2 = L0_2 / 480
  tapRadius = L0_2
  L0_2 = g_usingNewCamera
  if not L0_2 then
    L0_2 = isInGameMode
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = doItAllCamera
      L1_2 = 0
      L0_2(L1_2)
    end
  end
  L0_2 = g_usingNewCamera
  if L0_2 then
    L0_2 = gameCamera
    if L0_2 then
      L0_2 = true
      g_skipEpisodeCameraMovement = L0_2
      L0_2 = updateCamera
      L1_2 = 0
      L0_2(L1_2)
      L0_2 = false
      g_skipEpisodeCameraMovement = L0_2
    end
  end
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = gameCamera
    if L0_2 then
      L0_2 = native_resetThemeSystem
      L0_2()
      L0_2 = gameCamera
      L1_2 = L0_2
      L0_2 = L0_2.getEdgeCameras
      L0_2 = L0_2(L1_2)
      L1_2 = recalculateLevelLimits
      L2_2 = L0_2
      L1_2(L2_2)
    end
  end
end

resolutionChanged = L1_1
L1_1 = deviceModel
if L1_1 == "metro" then
  function L1_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2
    
    L1_2 = eventManager
    if L1_2 ~= nil then
      if A0_2 == "FILLED" or A0_2 == "FULL" then
        L1_2 = eventManager
        L2_2 = L1_2
        L1_2 = L1_2.notify
        L3_2 = {}
        L4_2 = events
        L4_2 = L4_2.EID_METRO_VIEW_FULL
        L3_2.id = L4_2
        L3_2.state = A0_2
        L1_2(L2_2, L3_2)
      elseif A0_2 == "SNAP_LEFT" or A0_2 == "SNAP_RIGHT" then
        L1_2 = eventManager
        L2_2 = L1_2
        L1_2 = L1_2.notify
        L3_2 = {}
        L4_2 = events
        L4_2 = L4_2.EID_METRO_VIEW_SNAPPED
        L3_2.id = L4_2
        L3_2.state = A0_2
        L1_2(L2_2, L3_2)
      end
    end
  end
  
  setMetroWindowState = L1_1
end

function L1_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  if L0_2 ~= "ios" then
    L0_2 = deviceModel
  end
  L0_2 = L0_2 == "ipad"
  return L0_2
end

isIpad3 = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = this
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    L1_2 = _G
    L1_2 = L1_2.type
    L2_2 = this
    L2_2 = L2_2[A0_2]
    L1_2 = L1_2(L2_2)
    if L1_2 == "function" then
      L1_2 = this
      L1_2 = L1_2[A0_2]
      return L1_2()
    end
  end
  return A0_2
end

getNextLevelName = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = levelName
  if L1_2 == nil then
    levelName = A0_2
  else
    queuedLevelName = A0_2
  end
end

setLevelName = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = levelFolder
  if L1_2 == nil then
    levelFolder = A0_2
  else
    queuedLevelFolder = A0_2
  end
end

setLevelFolder = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = currentFolder
  if L1_2 == nil then
    currentFolder = A0_2
  else
    queuedCurrentFolder = A0_2
  end
end

setCurrentFolder = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = currentLevel
  if L1_2 == nil then
    currentLevel = A0_2
  else
    queuedCurrentLevel = A0_2
  end
end

setCurrentLevel = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = currentPack
  if L1_2 == nil then
    currentPack = A0_2
  else
    queuedCurrentPack = A0_2
  end
end

setCurrentLevelPack = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  if A0_2 ~= nil then
    L1_2 = res
    L1_2 = L1_2.useFont
    L2_2 = A0_2
    L1_2(L2_2)
  end
end

setFont = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_gravityFiltersNameMasks
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = 0
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L4_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = g_gravityFiltersCategories
      L11_2 = L11_2[L10_2]
      L12_2 = performBitwiseOr
      L13_2 = L5_2
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      L5_2 = L12_2
    end
    L6_2 = g_gravityFiltersMasks
    L6_2[L3_2] = L5_2
  end
end

setupFilterMasks = L1_1
L1_1 = setupFilterMasks
L1_1()

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = initializeManufacturer
  L0_2()
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isAndroidPremium
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = print
    L1_2 = "Overriding isPremium state from settings"
    L0_2(L1_2)
    L0_2 = true
    isPremium = L0_2
  else
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.storeAndroidPremium
    L2_2 = isPremium
    L0_2(L1_2, L2_2)
  end
  L0_2 = print
  L1_2 = "Screen resolution is "
  L2_2 = screenWidth
  L3_2 = "x"
  L4_2 = screenHeight
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  L0_2(L1_2)
  L0_2 = isHDVersion
  if L0_2 == true then
    L0_2 = print
    L1_2 = "HD is enabled"
    L0_2(L1_2)
  else
    L0_2 = isHDVersion
    if L0_2 == false then
      L0_2 = print
      L1_2 = "HD is disabled"
      L0_2(L1_2)
    else
      L0_2 = _G
      L0_2 = L0_2.assert
      L1_2 = isHDVersion
      L1_2 = L1_2 == nil
      L0_2(L1_2)
      L0_2 = print
      L1_2 = "HD is undefined"
      L0_2(L1_2)
    end
  end
  L0_2 = _G
  L0_2 = L0_2.math
  L0_2 = L0_2.randomseed
  L1_2 = _G
  L1_2 = L1_2.os
  L1_2 = L1_2.time
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L0_2 = {}
  L1_2 = "1"
  L2_2 = "2"
  L3_2 = "3"
  L4_2 = "4"
  L5_2 = "5"
  L6_2 = "6"
  L7_2 = "7"
  L8_2 = "8"
  L9_2 = "9"
  L10_2 = "0"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L0_2[10] = L10_2
  numberKeys = L0_2
  L0_2 = {}
  L1_2 = screenWidth
  L1_2 = L1_2 * 0.5
  L0_2.x = L1_2
  L1_2 = screenHeight
  L1_2 = L1_2 * 0.5
  L0_2.y = L1_2
  L0_2.top = 0
  L0_2.left = 0
  L1_2 = screenHeight
  L0_2.bottom = L1_2
  L1_2 = screenWidth
  L0_2.right = L1_2
  screen = L0_2
  L0_2 = initCamera
  L0_2()
  L0_2 = screenWidth
  oldScreenWidth = L0_2
  L0_2 = screenHeight
  oldScreenHeight = L0_2
  L0_2 = screenHeight
  L0_2 = L0_2 / 320
  L0_2 = 320 * L0_2
  bannerWidth = L0_2
  L0_2 = screenHeight
  L0_2 = L0_2 / 320
  L0_2 = 48 * L0_2
  bannerHeight = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  rubberBandPos = L0_2
  L0_2 = 0
  rubberBandSpeed = L0_2
  L0_2 = {}
  floatingScores = L0_2
  L0_2 = {}
  objectCounts = L0_2
  L0_2 = {}
  scoreTable = L0_2
  L0_2 = 0
  draggingSpeed = L0_2
  L0_2 = 0
  draggingSpeed = L0_2
  L0_2 = {}
  L0_2.x = -1
  L0_2.y = -1
  draggingStartPosPhysics = L0_2
  L0_2 = {}
  L0_2.x = -1
  L0_2.y = -1
  draggingStartPosWorld = L0_2
  L0_2 = {}
  L0_2.x = -1
  L0_2.y = -1
  draggingStartPosScreen = L0_2
  L0_2 = {}
  selectedObjects = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  selectedObjectPos = L0_2
  L0_2 = nil
  selectedBird = L0_2
  L0_2 = nil
  objectToAdd = L0_2
  L0_2 = 0
  objectToAddAngle = L0_2
  L0_2 = nil
  currentGroup = L0_2
  L0_2 = 0
  doubleClickTimer = L0_2
  L0_2 = 0
  quadClickTimer = L0_2
  L0_2 = 0
  quadClickCounter = L0_2
  L0_2 = 0
  gameTimer = L0_2
  L0_2 = 0
  levelCompleteTimer = L0_2
  L0_2 = 0
  birdBuffTimer = L0_2
  L0_2 = 1
  currentBirdIndex = L0_2
  L0_2 = nil
  currentBirdName = L0_2
  L0_2 = nil
  flyingBird = L0_2
  L0_2 = false
  birdSpecialtyAvailable = L0_2
  L0_2 = 0
  particleAmount = L0_2
  L0_2 = 0
  blockMoveTimer = L0_2
  L0_2 = cursor
  L1_2 = cursor
  L2_2 = 0
  L1_2.y = 0
  L0_2.x = L2_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  cursorPhysics = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  cursorWorld = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  oldCursorWorld = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  oldCursor = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  tapPosWorld = L0_2
  L0_2 = 1500
  springConstant = L0_2
  L0_2 = 50
  springDampening = L0_2
  L0_2 = 1
  difficultyLevel = L0_2
  L0_2 = 0
  score = L0_2
  L0_2 = 0
  zoomLevel = L0_2
  L0_2 = -800
  defaultForce = L0_2
  L0_2 = 100
  blockDestroyedScoreIncrement = L0_2
  L0_2 = 20
  physicsToWorld = L0_2
  L0_2 = physicsToWorld
  L0_2 = 1 / L0_2
  physicsScale = L0_2
  L0_2 = slingshotScale
  L0_2 = 2.2 * L0_2
  shootRange = L0_2
  L0_2 = screenHeight
  L0_2 = L0_2 * 0.5
  L0_2 = L0_2 + 70
  continueButtonY = L0_2
  L0_2 = 1
  oldScale = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  levelStartPosition = L0_2
  L0_2 = {}
  L0_2.x = 0
  L0_2.y = 0
  animationScreen = L0_2
  L0_2 = 1
  animationWorldScale = L0_2
  L0_2 = setPhysicsSimulationScale
  L1_2 = physicsToWorld
  L0_2(L1_2)
  L0_2 = setLevelName
  L1_2 = ""
  L0_2(L1_2)
  L0_2 = 0
  levelStartTimer = L0_2
  L0_2 = 5
  collisionParticleForceThreshold = L0_2
  L0_2 = true
  levelSaved = L0_2
  L0_2 = false
  selectionRectActive = L0_2
  L0_2 = false
  birdFired = L0_2
  L0_2 = true
  maxZoomLevel = L0_2
  L0_2 = {}
  particles = L0_2
  L0_2 = {}
  elementAnimations = L0_2
  L0_2 = "CURSOR_HAND_POINT"
  g_currentCursorName = L0_2
  L0_2 = 0
  g_wheelSpeed = L0_2
  L0_2 = 0
  g_gestureMenuTriggered = L0_2
  L0_2 = false
  g_gestureMenuCursorHide = L0_2
  L0_2 = initializeGame
  L0_2()
end

initParams = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = deviceManufacturer
  if L0_2 ~= nil then
    L0_2 = print
    L1_2 = "Device manufacturer is "
    L2_2 = deviceManufacturer
    L1_2 = L1_2 .. L2_2
    L0_2(L1_2)
    L0_2 = _G
    L0_2 = L0_2.string
    L0_2 = L0_2.lower
    L1_2 = deviceManufacturer
    L0_2 = L0_2(L1_2)
    L1_2 = _G
    L1_2 = L1_2.string
    L1_2 = L1_2.find
    L2_2 = L0_2
    L3_2 = "samsung"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = print
      L2_2 = "Samsung device detected"
      L1_2(L2_2)
      L1_2 = true
      isUsingSamsungDevice = L1_2
    else
      L1_2 = false
      isUsingSamsungDevice = L1_2
    end
  else
    L0_2 = print
    L1_2 = "Device manufacturer is undefined"
    L0_2(L1_2)
    L0_2 = false
    isUsingSamsungDevice = L0_2
    return
  end
end

initializeManufacturer = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = _G
  L0_2 = L0_2.assert
  L1_2 = isUsingSamsungDevice
  L1_2 = L1_2 ~= nil
  L0_2(L1_2)
  L0_2 = deviceModel
  L0_2 = L0_2 == "android" and L0_2
  return L0_2
end

isAndroidSamsungDevice = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = deviceModel
  if L1_2 == "iphone4" then
    L1_2 = true
    changeResolution = L1_2
    if A0_2 == true then
      L1_2 = wantedResolution
      if L1_2 ~= "FULL" then
        L1_2 = screenWidth
        L1_2 = L1_2 * 2
        screenWidth = L1_2
        L1_2 = screenHeight
        L1_2 = L1_2 * 2
        screenHeight = L1_2
        L1_2 = "FULL"
        wantedResolution = L1_2
        L1_2 = setMenuParticlesScale
        L2_2 = 2
        L1_2(L2_2)
      end
    else
      L1_2 = wantedResolution
      if L1_2 ~= "HALF" then
        L1_2 = screenWidth
        L1_2 = L1_2 / 2
        screenWidth = L1_2
        L1_2 = screenHeight
        L1_2 = L1_2 / 2
        screenHeight = L1_2
        L1_2 = "HALF"
        wantedResolution = L1_2
        L1_2 = setMenuParticlesScale
        L2_2 = 1
        L1_2(L2_2)
      end
    end
  end
end

changeRetinaResolution = L1_1
L1_1 = false
g_drawLoadingScreen = L1_1
L1_1 = ""
g_actionActionAfterLoadingScreen = L1_1
L1_1 = {}
g_loadingScreenLevelAttributes = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = audioGroups
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.math
    L1_2 = L1_2.random
    L2_2 = 1
    L3_2 = audioGroups
    L3_2 = L3_2[A0_2]
    L3_2 = #L3_2
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = audioGroups
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[L1_2]
    return L2_2
  end
  return A0_2
end

getAudioName = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = audioGroups
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = 1
    L3_2 = #L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = _G
      L6_2 = L6_2.res
      L6_2 = L6_2.isAudioPlaying
      L7_2 = L1_2[L5_2]
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = L1_2[L5_2]
        return L6_2
      end
    end
  else
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.isAudioPlaying
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return A0_2
    end
  end
  L2_2 = nil
  return L2_2
end

isAudioPlaying = L1_1

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L6_2 = audioGroups
  if L6_2 then
    L6_2 = audioGroups
    L5_2 = L6_2[A0_2]
  end
  if L5_2 then
    L6_2 = L5_2.delay
    if L6_2 then
      L6_2 = L5_2.nextTimePlay
      if L6_2 then
        L6_2 = L5_2.nextTimePlay
        L7_2 = time
        if L6_2 > L7_2 then
          return
      end
      else
        L6_2 = time
        L7_2 = _G
        L7_2 = L7_2.math
        L7_2 = L7_2.random
        L8_2 = L5_2.delay
        L8_2 = L8_2[1]
        L8_2 = L8_2 * 100
        L9_2 = L5_2.delay
        L9_2 = L9_2[2]
        L9_2 = L9_2 * 100
        L7_2 = L7_2(L8_2, L9_2)
        L7_2 = L7_2 / 100
        L6_2 = L6_2 + L7_2
        L5_2.nextTimePlay = L6_2
      end
    end
    L6_2 = L5_2.noOverlap
    if L6_2 then
      L6_2 = 1
      L7_2 = #L5_2
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = res
        L10_2 = L10_2.isAudioPlaying
        L11_2 = L5_2[L9_2]
        L10_2 = L10_2(L11_2)
        if L10_2 then
          return
        end
      end
    end
    L6_2 = getAudioName
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    A0_2 = L6_2
  end
  L6_2 = nil
  L7_2 = audioData
  if L7_2 then
    L7_2 = audioData
    L7_2 = L7_2.sounds
    L6_2 = L7_2[A0_2]
  end
  if L6_2 then
    A3_2 = L6_2.channel
    L7_2 = audioData
    L7_2 = L7_2.sounds
    L7_2 = L7_2[A0_2]
    A1_2 = L7_2.volume
    if A1_2 == nil then
      L7_2 = audioData
      L7_2 = L7_2.channelVolume
      A1_2 = L7_2[A3_2]
    end
    if A2_2 == nil then
      L7_2 = L6_2.flag
      if L7_2 then
        L7_2 = audioData
        L7_2 = L7_2.sounds
        L7_2 = L7_2[A0_2]
        A2_2 = L7_2.flag
      end
    end
  end
  if A3_2 == nil then
    A3_2 = 4
  end
  if A1_2 == nil then
    A1_2 = 1
  end
  if A2_2 == nil then
    A2_2 = false
  end
  L7_2 = getLevelMetadata
  L8_2 = levelName
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.audioFilters
  L8_2 = false
  if not A4_2 and L7_2 ~= nil then
    L9_2 = audioFilters
    if L9_2 then
      L9_2 = _G
      L9_2 = L9_2.pairs
      L10_2 = L7_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = _G
        L14_2 = L14_2.pairs
        L15_2 = audioFilters
        L15_2 = L15_2[L13_2]
        L14_2, L15_2, L16_2 = L14_2(L15_2)
        for L17_2, L18_2 in L14_2, L15_2, L16_2 do
          L19_2 = audioGroups
          L19_2 = L19_2[L18_2]
          if L19_2 then
            L19_2 = 1
            L20_2 = audioGroups
            L20_2 = L20_2[L18_2]
            L20_2 = #L20_2
            L21_2 = 1
            for L22_2 = L19_2, L20_2, L21_2 do
              L23_2 = audioGroups
              L23_2 = L23_2[L18_2]
              L23_2 = L23_2[L22_2]
              if A0_2 == L23_2 then
                L8_2 = true
              end
            end
          end
          if A0_2 == L18_2 or L8_2 then
            L19_2 = playAudioNative
            L20_2 = A0_2
            L21_2 = A1_2
            L22_2 = A2_2
            L23_2 = A3_2
            L19_2(L20_2, L21_2, L22_2, L23_2)
            return A0_2
          end
        end
      end
  end
  else
    L9_2 = playAudioNative
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = A3_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  return A0_2
end

playAudio = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L1_2 = _G
    L1_2 = L1_2.ipairs
    L2_2 = A0_2
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = isAudioPlaying
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = stopAudio
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
end

stopAudioByFilter = L1_1
L1_1 = _G
L1_1 = L1_1.ResourceManager
L1_1 = L1_1.native_playAudio
playAudioNative = L1_1
L1_1 = res
L2_1 = playAudio
L1_1.playAudio = L2_1
L1_1 = _G
L1_1 = L1_1.res
L1_1 = L1_1.stopAudio
stopAudio = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = g_drawLoadingScreen
  if L0_2 then
    L0_2 = 1
    L1_2 = deviceModel
    if L1_2 ~= "iphone4" then
      L1_2 = isIpad3
      L1_2 = L1_2()
      if not L1_2 then
        goto lbl_13
      end
    end
    L0_2 = 2
    ::lbl_13::
    L1_2 = setRenderState
    L2_2 = 0
    L3_2 = 0
    L4_2 = L0_2
    L5_2 = L0_2
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = _G
    L1_2 = L1_2.res
    L1_2 = L1_2.drawSprite
    L2_2 = "LOADING_BADGE"
    L3_2 = screenWidth
    L3_2 = L3_2 * 0.5
    L3_2 = L3_2 / L0_2
    L4_2 = screenHeight
    L4_2 = L4_2 * 0.5
    L4_2 = L4_2 / L0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = setRenderState
    L2_2 = 0
    L3_2 = 0
    L4_2 = 1
    L5_2 = 1
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = g_actionActionAfterLoadingScreen
    if L1_2 == "INITIALIZE_GAME" then
      L1_2 = startGame
      L2_2 = g_loadingScreenLevelAttributes
      L2_2 = L2_2.levelPack
      L3_2 = g_loadingScreenLevelAttributes
      L3_2 = L3_2.levelNumber
      L1_2(L2_2, L3_2)
      L1_2 = false
      g_drawLoadingScreen = L1_2
    else
      L1_2 = g_actionActionAfterLoadingScreen
      if L1_2 == "INITIALIZE_GAME_AFTER_CUTSCENE" then
        L1_2 = eventManager
        L2_2 = L1_2
        L1_2 = L1_2.notify
        L3_2 = {}
        L4_2 = events
        L4_2 = L4_2.EID_CHANGE_SCENE
        L3_2.id = L4_2
        L3_2.target = "GameScene"
        L1_2(L2_2, L3_2)
        L1_2 = false
        g_drawLoadingScreen = L1_2
      else
        L1_2 = g_actionActionAfterLoadingScreen
        if L1_2 == "INITIALIZE_GAME_AFTER_RELOAD_FROM_GAME" then
          L1_2 = eventManager
          L2_2 = L1_2
          L1_2 = L1_2.notify
          L3_2 = {}
          L4_2 = events
          L4_2 = L4_2.EID_CHANGE_SCENE
          L3_2.id = L4_2
          L3_2.target = "GameScene"
          L1_2(L2_2, L3_2)
          L1_2 = false
          g_drawLoadingScreen = L1_2
        else
          L1_2 = g_actionActionAfterLoadingScreen
          if L1_2 == "INITIALIZE_GAME_AFTER_RELOAD_FROM_PAUSE_MENU" then
            L1_2 = resumingOldLevel
            if not L1_2 then
              L1_2 = startedFromEditor
              if not L1_2 then
                L1_2 = setLevelName
                L2_2 = actions
                L2_2 = L2_2.myLevels
                L3_2 = currentFolder
                L2_2 = L2_2[L3_2]
                L3_2 = currentLevel
                L2_2 = L2_2[L3_2]
                L1_2(L2_2)
              end
            else
              L1_2 = currentFolder
              if L1_2 ~= "bonus" then
              end
            end
            L1_2 = eventManager
            L2_2 = L1_2
            L1_2 = L1_2.notify
            L3_2 = {}
            L4_2 = events
            L4_2 = L4_2.EID_CHANGE_SCENE
            L3_2.id = L4_2
            L3_2.target = "GameScene"
            L1_2(L2_2, L3_2)
            L1_2 = false
            g_drawLoadingScreen = L1_2
          else
            L1_2 = g_actionActionAfterLoadingScreen
            if L1_2 == "INITIALIZE_GAME_AFTER_RELOAD_FROM_LEVEL_FAILED_MENU" then
              L1_2 = eventManager
              L2_2 = L1_2
              L1_2 = L1_2.notify
              L3_2 = {}
              L4_2 = events
              L4_2 = L4_2.EID_CHANGE_SCENE
              L3_2.id = L4_2
              L3_2.target = "GameScene"
              L1_2(L2_2, L3_2)
              L1_2 = false
              g_drawLoadingScreen = L1_2
            else
              L1_2 = g_actionActionAfterLoadingScreen
              if L1_2 == "INITIALIZE_GAME_AFTER_RELOAD_FROM_LEVEL_COMPLETE_MENU" then
                L1_2 = eventManager
                L2_2 = L1_2
                L1_2 = L1_2.notify
                L3_2 = {}
                L4_2 = events
                L4_2 = L4_2.EID_CHANGE_SCENE
                L3_2.id = L4_2
                L3_2.target = "GameScene"
                L1_2(L2_2, L3_2)
                L1_2 = false
                g_drawLoadingScreen = L1_2
              else
                L1_2 = g_actionActionAfterLoadingScreen
                if L1_2 == "INITIALIZE_CUTSCENE_AFTER_LEVEL_FINISHED" then
                  L1_2 = gotoCutscene
                  L1_2()
                  L1_2 = false
                  g_drawLoadingScreen = L1_2
                end
              end
            end
          end
        end
      end
    end
  end
end

drawLoadingScreen = L1_1

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  g_drawLoadingScreen = L2_2
  L2_2 = g_loadingScreenLevelAttributes
  L2_2.levelPack = A0_2
  L2_2 = g_loadingScreenLevelAttributes
  L2_2.levelNumber = A1_2
  L2_2 = "INITIALIZE_GAME"
  g_actionActionAfterLoadingScreen = L2_2
end

setLevelLoading = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  g_drawLoadingScreen = L0_2
  L0_2 = "INITIALIZE_GAME_AFTER_CUTSCENE"
  g_actionActionAfterLoadingScreen = L0_2
end

setLevelLoadingAfterCutscene = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  g_drawLoadingScreen = L0_2
  L0_2 = "INITIALIZE_GAME_AFTER_RELOAD_FROM_GAME"
  g_actionActionAfterLoadingScreen = L0_2
end

setLevelLoadingAfterRestartFromGame = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  g_drawLoadingScreen = L0_2
  L0_2 = "INITIALIZE_GAME_AFTER_RELOAD_FROM_PAUSE_MENU"
  g_actionActionAfterLoadingScreen = L0_2
end

setLevelLoadingAfterRestartFromPauseMenu = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  g_drawLoadingScreen = L0_2
  L0_2 = "INITIALIZE_GAME_AFTER_RELOAD_FROM_LEVEL_FAILED_MENU"
  g_actionActionAfterLoadingScreen = L0_2
end

setLevelLoadingAfterRestartFromLevelFailedMenu = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  g_drawLoadingScreen = L0_2
  L0_2 = "INITIALIZE_GAME_AFTER_RELOAD_FROM_LEVEL_COMPLETE_MENU"
  g_actionActionAfterLoadingScreen = L0_2
end

setLevelLoadingAfterRestartFromLevelCompleteMenu = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  g_drawLoadingScreen = L0_2
  L0_2 = "INITIALIZE_CUTSCENE_AFTER_LEVEL_FINISHED"
  g_actionActionAfterLoadingScreen = L0_2
end

setCutsceneLoadingAfterLevelFinished = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = deviceModel
  if L1_2 == "windows" then
    L1_2 = g_registrationPage
    L2_2 = L1_2
    L1_2 = L1_2.keyReceivedFromServer
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

keyReceivedFromServer = L1_1

function L1_1(A0_2, A1_2)
  g_latestVersion = A0_2
  g_latestVersionUrl = A1_2
end

latestVersionNumberReceived = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = g_registrationPage
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  L0_2 = true
  g_isGameUnlocked = L0_2
end

gameRegistrationSuccessful = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = g_registrationPage
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
end

gameRegistrationCancel = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  L0_2 = L0_2 == "windows"
  return L0_2
end

isPCVersion = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = g_mouseAvailable
    L0_2 = not L0_2
  end
  return L0_2
end

isPCTouchState = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  L0_2 = L0_2 == "android"
  return L0_2
end

isAndroidVersion = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  L0_2 = L0_2 == "iphone"
  return L0_2
end

isIOSVersion = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = isIOSVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = isLiteVersion
  end
  return L0_2
end

isIOSFree = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = isIOSFree
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.getPurchase
    L2_2 = g_freeUnlockIapID
    L0_2 = L0_2(L1_2, L2_2)
    L0_2 = not L0_2
  end
  return L0_2
end

isIOSFreeLocked = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_UPDATE_AVAILABLE
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
end

PCupdateAvailableCallback = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = g_updateCheckEnabled
  if L0_2 then
    L0_2 = deviceModel
    if L0_2 == "windows" then
      L0_2 = g_updateChecked
      if not L0_2 then
        L0_2 = checkForUpdates
        L0_2()
      end
      L0_2 = true
      g_updateChecked = L0_2
    end
  end
end

PCCheckForUpdatesOnce = L1_1

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "title"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = A2_2
  L7_2(L8_2, L9_2)
  L7_2 = ui
  L7_2 = L7_2.ConfirmPrompt
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "confirmPrompt"
  L9_2.suffix = "EAGLE_PURCHASE"
  L9_2.title = L6_2
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.getString
  L11_2 = "TEXTS_BASIC"
  L12_2 = A1_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.content = L10_2
  L10_2 = events
  L10_2 = L10_2.EID_OPEN_URL
  L9_2.returnValue = L10_2
  L10_2 = A5_2 or L10_2
  if not A5_2 then
    L10_2 = nil
  end
  L9_2.closeCallback = L10_2
  L10_2 = {}
  L10_2.url = A0_2
  L10_2.urlVariable = A4_2
  L9_2.meta = L10_2
  L9_2.inMenuSpace = A3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = eventManager
  L9_2 = L8_2
  L8_2 = L8_2.notify
  L10_2 = {}
  L11_2 = events
  L11_2 = L11_2.EID_PUSH_FRAME
  L10_2.id = L11_2
  L10_2.target = L7_2
  L8_2(L9_2, L10_2)
end

openURL = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = "AB Space gamelogic.lua"
  luaName = L0_2
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/MenuManager.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "MenuManager"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/events.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "events"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/events.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.events
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/EventManager.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "EventManager"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = EventManager
  L0_2 = L0_2.EventManager
  L1_2 = L0_2
  L0_2 = L0_2.new
  L0_2 = L0_2(L1_2)
  eventManager = L0_2
  L0_2 = MenuManager
  L0_2 = L0_2.MenuManager
  L1_2 = L0_2
  L0_2 = L0_2.new
  L0_2 = L0_2(L1_2)
  menuManager = L0_2
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_CHANGE_SCENE
  L3_2 = menuManager
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_PUSH_FRAME
  L3_2 = menuManager
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_POP_FRAME
  L3_2 = menuManager
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/ui_components/PCEventManager.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L3_2 = "PCEventManager"
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = PCEventManager
    L0_2 = L0_2.PCEventManager
    L1_2 = L0_2
    L0_2 = L0_2.new
    L0_2 = L0_2(L1_2)
    PCEventManager = L0_2
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_SHOW_REGISTRATION_DIALOG
    L3_2 = PCEventManager
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_UPDATE_AVAILABLE
    L3_2 = PCEventManager
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_UPDATE_GAME
    L3_2 = PCEventManager
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = deviceModel
  if L0_2 ~= "metro" then
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_EXIT_GAME
    L3_2 = exitEventListener
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_EXIT_CONFIRMED
    L3_2 = exitEventListener
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = deviceModel
  if L0_2 ~= "wp8" then
    L0_2 = deviceModel
    if L0_2 ~= "wp7" then
      goto lbl_145
    end
  end
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/WP8EventManager.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "WP8EventManager"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = WP8EventManager
  L0_2 = L0_2.WP8EventManager
  L1_2 = L0_2
  L0_2 = L0_2.new
  L0_2 = L0_2(L1_2)
  WP8EventManager = L0_2
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_SHOW_REGISTRATION_DIALOG
  L3_2 = WP8EventManager
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_UPDATE_AVAILABLE
  L3_2 = WP8EventManager
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_UPDATE_GAME
  L3_2 = WP8EventManager
  L0_2(L1_2, L2_2, L3_2)
  ::lbl_145::
end

initializeMenuEngine = L1_1
L1_1 = {}

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_EXIT_GAME
  if L2_2 == L3_2 then
    L2_2 = deviceModel
    if L2_2 == "metro" then
      goto lbl_87
    end
    L2_2 = deviceModel
    if L2_2 == "roku" then
    else
      L2_2 = deviceModel
      if L2_2 ~= "android" then
        L2_2 = isPCVersion
        L2_2 = L2_2()
        if not L2_2 then
          goto lbl_55
        end
      end
      L2_2 = closeOnCancelKeyExitPromptHandler
      closeOnCancelKeyHandlerTemp = L2_2
      L2_2 = isPCVersion
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = nil
        closeOnCancelKeyHandlerTemp = L2_2
      end
      L2_2 = ui
      L2_2 = L2_2.ConfirmPrompt
      L3_2 = L2_2
      L2_2 = L2_2.new
      L4_2 = {}
      L5_2 = _G
      L5_2 = L5_2.res
      L5_2 = L5_2.getString
      L6_2 = "TEXTS_BASIC"
      L7_2 = "TEXT_EXIT_CONFIRM"
      L5_2 = L5_2(L6_2, L7_2)
      L4_2.content = L5_2
      L5_2 = events
      L5_2 = L5_2.EID_EXIT_CONFIRMED
      L4_2.returnValue = L5_2
      L5_2 = closeOnCancelKeyHandlerTemp
      L4_2.closeOnCancelKeyHandler = L5_2
      L4_2.inMenuSpace = true
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_PUSH_FRAME
      L5_2.id = L6_2
      L5_2.target = L2_2
      L3_2(L4_2, L5_2)
      goto lbl_87
      ::lbl_55::
      L2_2 = deviceModel
      if L2_2 == "wp8" then
        L2_2 = saveSettings
        L2_2()
        L2_2 = savePersistentLuaFileWrapper
        L3_2 = "highscores.lua"
        L4_2 = "highscores"
        L2_2(L3_2, L4_2)
        L2_2 = savePurchases
        L2_2()
      end
      L2_2 = requestExit
      L2_2()
    end
  else
    L2_2 = A1_2.id
    L3_2 = events
    L3_2 = L3_2.EID_EXIT_CONFIRMED
    if L2_2 == L3_2 then
      L2_2 = deviceModel
      if L2_2 == "windows" then
        L2_2 = saveSettings
        L2_2()
        L2_2 = savePersistentLuaFileWrapper
        L3_2 = "highscores.lua"
        L4_2 = "highscores"
        L2_2(L3_2, L4_2)
        L2_2 = savePurchases
        L2_2()
      end
      L2_2 = requestExit
      L2_2()
    end
  end
  ::lbl_87::
end

L1_1.eventTriggered = L2_1
exitEventListener = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  if L0_2 == "android" then
    L0_2 = false
    return L0_2
  else
    L0_2 = true
    return L0_2
  end
end

closeOnCancelKeyExitPromptHandler = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/soundManager.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "soundManager"
  L0_2(L1_2, L2_2, L3_2)
end

initializeSoundManager = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = g_use_ads
  if L0_2 then
    L0_2 = print
    L1_2 = "gamelogic - initAds()"
    L0_2(L1_2)
    L0_2 = loadLuaFile
    L1_2 = commonScriptPath
    L2_2 = "/subsystems/adsSubsystem.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = ""
    L3_2 = false
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = AdsSubSystem
    L1_2 = L0_2
    L0_2 = L0_2.new
    L0_2 = L0_2(L1_2)
    adSystem = L0_2
  end
end

initAds = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    return
  end
  L2_2 = nil
  if A1_2 ~= nil then
    L3_2 = _G
    L3_2 = L3_2.debug
    if L3_2 == nil then
      L3_2 = "Assertion failed: "
      L4_2 = A1_2
      L5_2 = " and no trace available"
      L2_2 = L3_2 .. L4_2 .. L5_2
    else
      L3_2 = "Assertion failed: "
      L4_2 = A1_2
      L5_2 = "\n"
      L6_2 = _G
      L6_2 = L6_2.debug
      L6_2 = L6_2.traceback
      L6_2 = L6_2()
      L2_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    end
  else
    L3_2 = _G
    L3_2 = L3_2.debug
    if L3_2 == nil then
      L2_2 = "Assertion failed and debug is null"
    else
      L3_2 = "Assertion failed. "
      L4_2 = _G
      L4_2 = L4_2.debug
      L4_2 = L4_2.traceback
      L4_2 = L4_2()
      L2_2 = L3_2 .. L4_2
    end
  end
  L3_2 = print
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = _G
  L3_2 = L3_2.error
  L4_2 = L2_2
  L3_2(L4_2)
end

assertWithStackTrace = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = enableAssertions
  if L0_2 then
    L0_2 = print
    L1_2 = "assertions enabled"
    L0_2(L1_2)
    L0_2 = _G
    L1_2 = assertWithStackTrace
    L0_2.assert = L1_2
  else
    L0_2 = print
    L1_2 = "assertions disabled"
    L0_2(L1_2)
    L0_2 = _G
    
    function L1_2()
      local L0_3, L1_3
    end
    
    L0_2.assert = L1_2
  end
end

initAssertions = L1_1
L1_1 = initParams
L1_1()
L1_1 = initAssertions
L1_1()
L1_1 = initializeMenuEngine
L1_1()
L1_1 = initializeGameMenus
L1_1()
L1_1 = loadGameCenter
L1_1()
L1_1 = loadLuaFile
L2_1 = scriptPath
L3_1 = "/gamescene.lua"
L2_1 = L2_1 .. L3_1
L3_1 = ""
L4_1 = false
L5_1 = false
L1_1(L2_1, L3_1, L4_1, L5_1)
L1_1 = {}
assetLoadList = L1_1
L1_1 = {}
loadlist = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = loadlist
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L1_2 = loadLuaFileToObject
    L2_2 = imagePath
    L3_2 = "/"
    L4_2 = A0_2
    L5_2 = "/loadlist.lua"
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
    L3_2 = this
    L3_2 = L3_2.loadlist
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = print
    L2_2 = "Loading load list: "
    L3_2 = imagePath
    L4_2 = "/"
    L5_2 = A0_2
    L6_2 = "/loadlist.lua"
    L7_2 = "\n"
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = this
    L2_2 = L2_2.loadlist
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.assetLoadList
    L2_2 = L2_2[A0_2]
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = this
      L6_2 = L6_2.loadlist
      L6_2 = L6_2[A0_2]
      L6_2[L4_2] = L5_2
    end
    L1_2 = this
    L1_2 = L1_2.loadlist
    L1_2 = L1_2[A0_2]
    L1_2.assetLoadList = nil
  end
end

loadLoadList = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = loadLoadList
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = loadlist
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2[2]
      if L8_2 == 0 then
        L8_2 = _G
        L8_2 = L8_2.ResourceManager
        L8_2 = L8_2.native_createSpriteSheet
        L9_2 = imagePath
        L10_2 = "/"
        L11_2 = A0_2
        L12_2 = "/"
        L13_2 = L7_2[1]
        L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
        L8_2(L9_2)
      else
        L8_2 = L7_2[2]
        if L8_2 == 1 then
          L8_2 = _G
          L8_2 = L8_2.res
          L8_2 = L8_2.createCompoSpriteSet
          L9_2 = imagePath
          L10_2 = "/"
          L11_2 = A0_2
          L12_2 = "/"
          L13_2 = L7_2[1]
          L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
          L8_2(L9_2)
        else
          L8_2 = L7_2[2]
          if L8_2 == 2 then
          end
        end
      end
    end
  end
end

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = print
    L7_2 = "---- Loading assets for group : "
    L8_2 = L5_2
    L9_2 = " --- \n"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L6_2(L7_2)
    L6_2 = selectAssetProfile
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = L1_1
    L8_2 = L6_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = showEditor
    if L7_2 then
      L7_2 = isIOSFree
      L7_2 = L7_2()
      if not L7_2 then
        L7_2 = deviceModel
        L7_2 = not L7_2
        if L7_2 == "android" then
          L7_2 = L6_2
          L8_2 = "_free"
          L6_2 = L7_2 .. L8_2
          L7_2 = L1_1
          L8_2 = L6_2
          L9_2 = L5_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
end

loadAssets = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = selectAssetProfile
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = loadLoadList
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = loadlist
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2[L5_2]
    if L7_2 then
      L8_2 = _G
      L8_2 = L8_2.ipairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = L12_2[2]
        if L13_2 == 0 then
          L13_2 = _G
          L13_2 = L13_2.ResourceManager
          L13_2 = L13_2.native_releaseSpriteSheet
          L14_2 = imagePath
          L15_2 = "/"
          L16_2 = L6_2
          L17_2 = "/"
          L18_2 = L12_2[1]
          L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
          L13_2(L14_2)
        else
          L13_2 = L12_2[2]
          if L13_2 == 1 then
            L13_2 = _G
            L13_2 = L13_2.res
            L13_2 = L13_2.releaseCompoSpriteSet
            L14_2 = imagePath
            L15_2 = "/"
            L16_2 = L6_2
            L17_2 = "/"
            L18_2 = L12_2[1]
            L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
            L13_2(L14_2)
          else
            L13_2 = L12_2[2]
            if L13_2 == 2 then
            end
          end
        end
      end
    end
  end
end

releaseAssets = L2_1
L2_1 = loadAssets
loadImages = L2_1
L2_1 = loadAssets
loadCompoSprites = L2_1
L2_1 = releaseAssets
releaseImages = L2_1
L2_1 = releaseAssets
releaseCompoSprites = L2_1
L2_1 = 0
mainMenuBGMoved = L2_1

function L2_1()
  local L0_2, L1_2
  L0_2 = 0
  mainMenuBGMoved = L0_2
end

resetBGInitialPosition = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setFullScreen
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getFullScreen
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L0_2(L1_2, L2_2)
  L0_2 = setFullScreenMode
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getFullScreen
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2)
end

toggleFullScreen = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = getLevelMetadata
  L1_2 = levelName
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.audioLoadList
  if L1_2 ~= nil then
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = L0_2.audioLoadList
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = levelSpecificAudio
      L6_2 = L6_2[L5_2]
      if L6_2 ~= nil then
        L6_2 = loadSounds
        L7_2 = levelSpecificAudio
        L7_2 = L7_2[L5_2]
        L6_2(L7_2)
      end
    end
  end
end

loadSpecificLevelAudioAssets = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = res
    L6_2 = L6_2.createAudio
    L7_2 = audioPath
    L8_2 = L5_2.path
    L7_2 = L7_2 .. L8_2
    L8_2 = L5_2.name
    L6_2(L7_2, L8_2)
  end
end

loadSounds = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = saveLuaFile
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

saveLuaFileWrapper = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = RovioAccount
  if L2_2 then
    L2_2 = RovioAccount
    L2_2 = L2_2.isAccountLoggedIn
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = CloudSync
      L2_2 = L2_2.dont_sync
      if not L2_2 then
        if A1_2 == "settings" then
          L2_2 = "settings_"
          L3_2 = RovioAccount
          L3_2 = L3_2.profile
          L3_2 = L3_2.id
          L4_2 = ".lua"
          A0_2 = L2_2 .. L3_2 .. L4_2
          L2_2 = loadTableFromFile
          L3_2 = "settings.lua"
          L4_2 = "localAccountSettings"
          L2_2(L3_2, L4_2)
          L2_2 = RASettingsManager
          L3_2 = L2_2
          L2_2 = L2_2.combineSettings
          L4_2 = localAccountSettings
          L5_2 = RASettingsManager
          L6_2 = L5_2
          L5_2 = L5_2.cleanSyncableSettings
          L7_2 = settings
          L5_2 = L5_2(L6_2, L7_2)
          L6_2 = true
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
          localAccountSettings = L2_2
          L2_2 = savePersistentLuaFile
          L3_2 = "settings.lua"
          L4_2 = "localAccountSettings"
          L2_2(L3_2, L4_2)
          L2_2 = RASettingsManager
          L3_2 = L2_2
          L2_2 = L2_2.cleanLocalSettings
          L4_2 = settings
          L2_2 = L2_2(L3_2, L4_2)
          accountSettings = L2_2
          A1_2 = "accountSettings"
        elseif A1_2 == "highscores" then
          L2_2 = "highscores_"
          L3_2 = RovioAccount
          L3_2 = L3_2.profile
          L3_2 = L3_2.id
          L4_2 = ".lua"
          A0_2 = L2_2 .. L3_2 .. L4_2
        end
      end
    end
  end
  L2_2 = savePersistentLuaFile
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

savePersistentLuaFileWrapper = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = menuManager
    if L0_2 then
      L0_2 = splashShown
      if L0_2 then
        L0_2 = deviceModel
        if L0_2 ~= "metro" then
          L0_2 = screenWidth
          if not (L0_2 < 1024) then
            L0_2 = screenHeight
            if not (L0_2 < 600) then
              goto lbl_54
            end
          end
          L0_2 = g_resolutionWarningShown
          if not L0_2 then
            L0_2 = true
            g_resolutionWarningShown = L0_2
            L0_2 = isInGameMode
            L0_2 = L0_2()
            if L0_2 then
              L0_2 = isPhysicsEnabled
              L0_2 = L0_2()
            end
            g_isPhysicsEnabledBeforeResolutionWarning = L0_2
            L0_2 = isInGameMode
            L0_2 = L0_2()
            if L0_2 then
              L0_2 = setPhysicsEnabled
              L1_2 = false
              L0_2(L1_2)
            end
            L0_2 = notificationsFrame
            if L0_2 then
              L1_2 = ResolutionWarning
              L2_2 = L1_2
              L1_2 = L1_2.new
              L3_2 = 1024
              L4_2 = 600
              L1_2 = L1_2(L2_2, L3_2, L4_2)
              L3_2 = L0_2
              L2_2 = L0_2.addChild
              L4_2 = L1_2
              L2_2(L3_2, L4_2)
              L3_2 = L1_2
              L2_2 = L1_2.onEntry
              L2_2(L3_2)
              L3_2 = L1_2
              L2_2 = L1_2.layout
              L2_2(L3_2)
            end
          end
          ::lbl_54::
          L0_2 = screenWidth
          if 1024 <= L0_2 then
            L0_2 = screenHeight
            if 600 <= L0_2 then
              L0_2 = g_resolutionWarningShown
              if L0_2 then
                L0_2 = false
                g_resolutionWarningShown = L0_2
                L0_2 = g_isPhysicsEnabledBeforeResolutionWarning
                if L0_2 then
                  L0_2 = isPausePageVisible
                  L0_2 = L0_2()
                  if not L0_2 then
                    L0_2 = isInGameMode
                    L0_2 = L0_2()
                    if L0_2 then
                      L0_2 = setPhysicsEnabled
                      L1_2 = g_isPhysicsEnabledBeforeResolutionWarning
                      L0_2(L1_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

handleResolutionPopup = L2_1
L2_1 = releaseBuild
L2_1 = not L2_1
showFps = L2_1
L2_1 = true
showBG = L2_1
L2_1 = false
showSleepingObjects = L2_1
L2_1 = 0
fpsTimer = L2_1
L2_1 = 0
fpsFrames = L2_1
L2_1 = 0
fps = L2_1
L2_1 = {}
L2_1.timer = 0
L2_1.maxStep = 0
L2_1.message = "0.00ms"
physicsCounters = L2_1
L2_1 = 0
g_physicsUpdateMillis = L2_1
L2_1 = 0
zoomLevel = L2_1
L2_1 = {}
L3_1 = 1
L4_1 = 1
L5_1 = 1
L6_1 = 1
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
POINTER_DEBUG_COLOR = L2_1
L2_1 = 2
POINTER_DEBUG_FADE_MAX_TIME = L2_1
L2_1 = {}
DEBUG_EVENTS_QUEUE = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = isSafeToQuit
  L2_2 = L2_2()
  g_safeToQuit = L2_2
  L2_2 = keyHold
  L2_2 = L2_2.CONTROL
  if L2_2 then
    L2_2 = keyPressed
    L2_2 = L2_2.I
    if L2_2 then
      L2_2 = newProfiler
      if L2_2 then
        L2_2 = g_profiler
        if not L2_2 then
          L2_2 = print
          L3_2 = "Starting profiler"
          L2_2(L3_2)
          L2_2 = newProfiler
          L2_2 = L2_2()
          g_profiler = L2_2
          L2_2 = g_profiler
          L3_2 = L2_2
          L2_2 = L2_2.start
          L2_2(L3_2)
        else
          L2_2 = print
          L3_2 = "Stopping profiler"
          L2_2(L3_2)
          L2_2 = g_profiler
          L3_2 = L2_2
          L2_2 = L2_2.stop
          L2_2(L3_2)
          L2_2 = _G
          L2_2 = L2_2.io
          L2_2 = L2_2.open
          L3_2 = "pepperfish.txt"
          L4_2 = "w+"
          L2_2 = L2_2(L3_2, L4_2)
          L3_2 = g_profiler
          L4_2 = L3_2
          L3_2 = L3_2.report
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
          L4_2 = L2_2
          L3_2 = L2_2.close
          L3_2(L4_2)
          L3_2 = nil
          g_profiler = L3_2
        end
      end
    end
  end
  L2_2 = {}
  g_keyPressed = L2_2
  L2_2 = {}
  g_keyHold = L2_2
  L2_2 = {}
  g_keyReleased = L2_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = keyPressed
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = g_keyPressed
    L7_2[L5_2] = L6_2
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = keyReleased
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = g_keyReleased
    L7_2[L5_2] = L6_2
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = keyHold
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = g_keyHold
    L7_2[L5_2] = L6_2
  end
  L2_2 = adSystem
  if L2_2 then
    L2_2 = adSystem
    L3_2 = L2_2
    L2_2 = L2_2.update
    L4_2 = A0_2
    L5_2 = time
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = pause
  L2_2 = L2_2.updatePause
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.tick
  L2_2(L3_2)
  L2_2 = processManager
  if L2_2 ~= nil then
    L2_2 = g_resolutionWarningShown
    if not L2_2 then
      L2_2 = processManager
      L3_2 = L2_2
      L2_2 = L2_2.update
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = setLocale
  if L2_2 then
    L2_2 = releaseBuild
    if L2_2 == false then
      L2_2 = startedFromEditor
      if not L2_2 then
        L2_2 = keyHold
        L2_2 = L2_2.CONTROL
        if L2_2 then
          L2_2 = nil
          L3_2 = keyPressed
          L3_2 = L3_2["1"]
          if L3_2 then
            L3_2 = setLocale
            L4_2 = "en_EN"
            L3_2(L4_2)
            L3_2 = menuManager
            if L3_2 then
              L3_2 = menuManager
              L4_2 = L3_2
              L3_2 = L3_2.getRoot
              L3_2 = L3_2(L4_2)
              if L3_2 then
                L3_2 = menuManager
                L4_2 = L3_2
                L3_2 = L3_2.getRoot
                L3_2 = L3_2(L4_2)
                L4_2 = L3_2
                L3_2 = L3_2.layout
                L3_2(L4_2)
              end
            end
          else
            L3_2 = keyPressed
            L3_2 = L3_2["2"]
            if L3_2 then
              L3_2 = setLocale
              L4_2 = "fr_FR"
              L3_2(L4_2)
              L3_2 = menuManager
              if L3_2 then
                L3_2 = menuManager
                L4_2 = L3_2
                L3_2 = L3_2.getRoot
                L3_2 = L3_2(L4_2)
                if L3_2 then
                  L3_2 = menuManager
                  L4_2 = L3_2
                  L3_2 = L3_2.getRoot
                  L3_2 = L3_2(L4_2)
                  L4_2 = L3_2
                  L3_2 = L3_2.layout
                  L3_2(L4_2)
                end
              end
            else
              L3_2 = keyPressed
              L3_2 = L3_2["3"]
              if L3_2 then
                L3_2 = setLocale
                L4_2 = "it_IT"
                L3_2(L4_2)
                L3_2 = menuManager
                if L3_2 then
                  L3_2 = menuManager
                  L4_2 = L3_2
                  L3_2 = L3_2.getRoot
                  L3_2 = L3_2(L4_2)
                  if L3_2 then
                    L3_2 = menuManager
                    L4_2 = L3_2
                    L3_2 = L3_2.getRoot
                    L3_2 = L3_2(L4_2)
                    L4_2 = L3_2
                    L3_2 = L3_2.layout
                    L3_2(L4_2)
                  end
                end
              else
                L3_2 = keyPressed
                L3_2 = L3_2["4"]
                if L3_2 then
                  L3_2 = setLocale
                  L4_2 = "de_DE"
                  L3_2(L4_2)
                  L3_2 = menuManager
                  if L3_2 then
                    L3_2 = menuManager
                    L4_2 = L3_2
                    L3_2 = L3_2.getRoot
                    L3_2 = L3_2(L4_2)
                    if L3_2 then
                      L3_2 = menuManager
                      L4_2 = L3_2
                      L3_2 = L3_2.getRoot
                      L3_2 = L3_2(L4_2)
                      L4_2 = L3_2
                      L3_2 = L3_2.layout
                      L3_2(L4_2)
                    end
                  end
                else
                  L3_2 = keyPressed
                  L3_2 = L3_2["5"]
                  if L3_2 then
                    L3_2 = setLocale
                    L4_2 = "es_ES"
                    L3_2(L4_2)
                    L3_2 = menuManager
                    if L3_2 then
                      L3_2 = menuManager
                      L4_2 = L3_2
                      L3_2 = L3_2.getRoot
                      L3_2 = L3_2(L4_2)
                      if L3_2 then
                        L3_2 = menuManager
                        L4_2 = L3_2
                        L3_2 = L3_2.getRoot
                        L3_2 = L3_2(L4_2)
                        L4_2 = L3_2
                        L3_2 = L3_2.layout
                        L3_2(L4_2)
                      end
                    end
                  else
                    L3_2 = keyPressed
                    L3_2 = L3_2["6"]
                    if L3_2 then
                      L3_2 = setLocale
                      L4_2 = "ja_JP"
                      L3_2(L4_2)
                      L3_2 = menuManager
                      if L3_2 then
                        L3_2 = menuManager
                        L4_2 = L3_2
                        L3_2 = L3_2.getRoot
                        L3_2 = L3_2(L4_2)
                        if L3_2 then
                          L3_2 = menuManager
                          L4_2 = L3_2
                          L3_2 = L3_2.getRoot
                          L3_2 = L3_2(L4_2)
                          L4_2 = L3_2
                          L3_2 = L3_2.layout
                          L3_2(L4_2)
                        end
                      end
                    else
                      L3_2 = keyPressed
                      L3_2 = L3_2["7"]
                      if L3_2 then
                        L3_2 = setLocale
                        L4_2 = "pt_BR"
                        L3_2(L4_2)
                        L3_2 = menuManager
                        if L3_2 then
                          L3_2 = menuManager
                          L4_2 = L3_2
                          L3_2 = L3_2.getRoot
                          L3_2 = L3_2(L4_2)
                          if L3_2 then
                            L3_2 = menuManager
                            L4_2 = L3_2
                            L3_2 = L3_2.getRoot
                            L3_2 = L3_2(L4_2)
                            L4_2 = L3_2
                            L3_2 = L3_2.layout
                            L3_2(L4_2)
                          end
                        end
                      else
                        L3_2 = keyPressed
                        L3_2 = L3_2["8"]
                        if L3_2 then
                          L3_2 = setLocale
                          L4_2 = "ru_RU"
                          L3_2(L4_2)
                          L3_2 = menuManager
                          if L3_2 then
                            L3_2 = menuManager
                            L4_2 = L3_2
                            L3_2 = L3_2.getRoot
                            L3_2 = L3_2(L4_2)
                            if L3_2 then
                              L3_2 = menuManager
                              L4_2 = L3_2
                              L3_2 = L3_2.getRoot
                              L3_2 = L3_2(L4_2)
                              L4_2 = L3_2
                              L3_2 = L3_2.layout
                              L3_2(L4_2)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = deviceModel
  if L2_2 == "osx" then
    L2_2 = OSX
    L2_2 = L2_2.updateTrackpad
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = useAccelerometerControls
    if L2_2 then
      L2_2 = motionremote
      L2_2 = L2_2.update
      L2_2()
    end
  end
  L2_2 = time
  if L2_2 then
    L2_2 = time
    L2_2 = L2_2 + A0_2
    if L2_2 then
      goto lbl_309
    end
  end
  L2_2 = 0
  ::lbl_309::
  time = L2_2
  L2_2 = playtimeCounter
  if L2_2 then
    L2_2 = playtimeCounter
    L2_2 = L2_2 + A0_2
    if L2_2 then
      goto lbl_318
    end
  end
  L2_2 = 0
  ::lbl_318::
  playtimeCounter = L2_2
  L2_2 = false
  doubleClick = L2_2
  L2_2 = DEBUG_POINTER_EVENTS
  if L2_2 then
    L2_2 = _G
    L2_2 = L2_2.pairs
    L3_2 = DEBUG_EVENTS_QUEUE
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.elapsed
      L7_2 = L7_2 - A0_2
      L6_2.elapsed = L7_2
      L7_2 = L6_2.elapsed
      if L7_2 < 0 then
        L7_2 = _G
        L7_2 = L7_2.table
        L7_2 = L7_2.remove
        L8_2 = DEBUG_EVENTS_QUEUE
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = DEBUG_POINTER_EVENTS
  if L2_2 then
    L2_2 = isKeyPressed
    L3_2 = "LBUTTON"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_361
    end
  end
  L2_2 = isKeyHold
  L3_2 = "LBUTTON"
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = isKeyReleased
    L3_2 = "LBUTTON"
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_433
    end
  end
  ::lbl_361::
  L2_2 = isKeyPressed
  L3_2 = "LBUTTON"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = isKeyReleased
    L3_2 = "LBUTTON"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = {}
      L3_2 = 1
      L4_2 = 0
      L5_2 = 0
      L6_2 = 1
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L2_2[4] = L6_2
      POINTER_DEBUG_COLOR = L2_2
  end
  else
    L2_2 = isKeyPressed
    L3_2 = "LBUTTON"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = {}
      L3_2 = 1
      L4_2 = 1
      L5_2 = 0
      L6_2 = 1
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L2_2[4] = L6_2
      POINTER_DEBUG_COLOR = L2_2
    else
      L2_2 = isKeyReleased
      L3_2 = "LBUTTON"
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = {}
        L3_2 = 1
        L4_2 = 0
        L5_2 = 1
        L6_2 = 1
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L2_2[3] = L5_2
        L2_2[4] = L6_2
        POINTER_DEBUG_COLOR = L2_2
      else
        L2_2 = isKeyHold
        L3_2 = "LBUTTON"
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = {}
          L3_2 = 0
          L4_2 = 1
          L5_2 = 0
          L6_2 = 1
          L2_2[1] = L3_2
          L2_2[2] = L4_2
          L2_2[3] = L5_2
          L2_2[4] = L6_2
          POINTER_DEBUG_COLOR = L2_2
        end
      end
    end
  end
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = DEBUG_EVENTS_QUEUE
  L4_2 = {}
  L5_2 = cursor
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L5_2 = cursor
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L5_2 = POINTER_DEBUG_COLOR
  L4_2.color = L5_2
  L5_2 = POINTER_DEBUG_FADE_MAX_TIME
  L4_2.elapsed = L5_2
  L2_2(L3_2, L4_2)
  ::lbl_433::
  L2_2 = keyReleased
  L2_2 = L2_2.F7
  if L2_2 then
    L2_2 = cheatsEnabled
    if L2_2 then
      L2_2 = deviceModel
      if L2_2 ~= "iphone" then
        L2_2 = deviceModel
        if L2_2 ~= "iphone4" then
          L2_2 = deviceModel
          if L2_2 ~= "ipad" then
            L2_2 = deviceModel
            if L2_2 == "ios" then
            end
          end
        end
      end
    end
  end
  L2_2 = doubleClickTimer
  if L2_2 == nil then
    L2_2 = 0
    doubleClickTimer = L2_2
  end
  L2_2 = isKeyPressed
  L3_2 = "LBUTTON"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = doubleClickState
    if L2_2 ~= 2 then
      L2_2 = 1
      doubleClickState = L2_2
      L2_2 = 0.5
      doubleClickTimer = L2_2
    else
      L2_2 = 3
      doubleClickState = L2_2
    end
  else
    L2_2 = doubleClickTimer
    if 0 < L2_2 then
      L2_2 = isKeyReleased
      L3_2 = "LBUTTON"
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = doubleClickState
        if L2_2 == 1 then
          L2_2 = 2
          doubleClickState = L2_2
        else
          L2_2 = doubleClickState
          if L2_2 == 3 then
            L2_2 = true
            doubleClick = L2_2
          end
        end
      end
    end
  end
  L2_2 = doubleClickTimer
  L2_2 = L2_2 - A0_2
  doubleClickTimer = L2_2
  L2_2 = doubleClickTimer
  if L2_2 <= 0 then
    L2_2 = 0
    doubleClickTimer = L2_2
    L2_2 = 0
    doubleClickState = L2_2
  end
  L2_2 = isKeyHold
  L3_2 = "LBUTTON"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = "CURSOR_HAND_CLICK"
    g_currentCursorName = L2_2
  else
    L2_2 = "CURSOR_HAND_POINT"
    g_currentCursorName = L2_2
  end
  L2_2 = menuManager
  L3_2 = L2_2
  L2_2 = L2_2.getRoot
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L2_2 = menuManager
    L3_2 = L2_2
    L2_2 = L2_2.update
    L4_2 = A0_2
    L5_2 = time
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = updateAudioRampVolume
  L3_2 = A0_2
  L4_2 = time
  L2_2(L3_2, L4_2)
  L2_2 = keyPressed
  L2_2 = L2_2.F
  if L2_2 then
    L2_2 = releaseBuild
    if not L2_2 then
      L2_2 = showFps
      L2_2 = not L2_2
      showFps = L2_2
    end
  end
  L2_2 = keyHold
  L2_2 = L2_2.CONTROL
  if L2_2 then
    L2_2 = reloadLua
    if L2_2 then
      L2_2 = keyPressed
      L2_2 = L2_2.R
      if L2_2 then
        L2_2 = reloadLua
        L2_2()
      end
    end
  end
  L2_2 = keyPressed
  L2_2 = L2_2["9"]
  if L2_2 then
    L2_2 = releaseBuild
    if not L2_2 then
      L2_2 = showEditor
      if L2_2 then
        L2_2 = showBG
        L2_2 = not L2_2
        showBG = L2_2
      end
    end
  end
  L2_2 = keyPressed
  L2_2 = L2_2["8"]
  if L2_2 then
    L2_2 = releaseBuild
    if not L2_2 then
      L2_2 = showSleepingObjects
      L2_2 = not L2_2
      showSleepingObjects = L2_2
    end
  end
  L2_2 = keyPressed
  L2_2 = L2_2["7"]
  if L2_2 then
    L2_2 = releaseBuild
    if not L2_2 then
      L2_2 = g_showCameraDebugData
      L2_2 = not L2_2
      g_showCameraDebugData = L2_2
    end
  end
  L2_2 = showFps
  if L2_2 then
    L2_2 = fpsTimer
    if 1 <= L2_2 then
      L2_2 = fpsFrames
      L3_2 = fpsTimer
      L2_2 = L2_2 / L3_2
      fps = L2_2
      L2_2 = 0
      fpsTimer = L2_2
      L2_2 = 0
      fpsFrames = L2_2
    end
    L2_2 = _G
    L2_2 = L2_2.string
    L2_2 = L2_2.format
    L3_2 = "%.1f"
    L4_2 = fps
    L2_2 = L2_2(L3_2, L4_2)
    fpsString = L2_2
    L2_2 = fpsTimer
    L2_2 = L2_2 + A1_2
    fpsTimer = L2_2
    L2_2 = fpsFrames
    L2_2 = L2_2 + 1
    fpsFrames = L2_2
    L2_2 = physicsCounters
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.max
    L4_2 = physicsCounters
    L4_2 = L4_2.maxStep
    L5_2 = g_physicsUpdateMillis
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.maxStep = L3_2
    L2_2 = physicsCounters
    L3_2 = physicsCounters
    L3_2 = L3_2.timer
    L3_2 = L3_2 + A1_2
    L2_2.timer = L3_2
    L2_2 = physicsCounters
    L2_2 = L2_2.timer
    if 0.2 <= L2_2 then
      L2_2 = physicsCounters
      L3_2 = _G
      L3_2 = L3_2.string
      L3_2 = L3_2.format
      L4_2 = "%.2fms"
      L5_2 = physicsCounters
      L5_2 = L5_2.maxStep
      L3_2 = L3_2(L4_2, L5_2)
      L2_2.message = L3_2
      L2_2 = physicsCounters
      L2_2.maxStep = 0
      L2_2 = physicsCounters
      L2_2.timer = 0
    end
  end
  L2_2 = oldScreenWidth
  if L2_2 ~= nil then
    L2_2 = oldScreenHeight
    if L2_2 ~= nil then
      goto lbl_650
    end
  end
  L2_2 = screenWidth
  oldScreenWidth = L2_2
  L2_2 = screenHeight
  oldScreenHeight = L2_2
  ::lbl_650::
  L2_2 = achievementsFrameUpdate
  L2_2()
  L2_2 = gamerService
  if L2_2 then
    L2_2 = gamerService
    L3_2 = L2_2
    L2_2 = L2_2.update
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = Steam
  if L2_2 then
    L2_2 = Steam
    L3_2 = L2_2
    L2_2 = L2_2.update
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = deviceModel
  if L2_2 ~= "windows" then
    L2_2 = deviceModel
    if L2_2 ~= "osx" then
      goto lbl_700
    end
  end
  L2_2 = isInFullScreenMode
  L2_2 = L2_2()
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getFullScreen
  L3_2 = L3_2(L4_2)
  if L3_2 ~= L2_2 then
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.setFullScreen
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = screenDimensionsChanges
    L3_2()
    L3_2 = cancelBirdDrag
    L3_2()
  end
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getFullScreen
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.setScreenWidth
    L5_2 = screenWidth
    L3_2(L4_2, L5_2)
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.setScreenHeight
    L5_2 = screenHeight
    L3_2(L4_2, L5_2)
  end
  ::lbl_700::
  L2_2 = oldScreenWidth
  L3_2 = screenWidth
  if L2_2 == L3_2 then
    L2_2 = oldScreenHeight
    L3_2 = screenHeight
    if L2_2 == L3_2 then
      goto lbl_732
    end
  end
  L2_2 = screenDimensionsChanges
  L2_2()
  L2_2 = screenWidth
  oldScreenWidth = L2_2
  L2_2 = screenHeight
  oldScreenHeight = L2_2
  L2_2 = menuManager
  if L2_2 then
    L2_2 = menuManager
    L3_2 = L2_2
    L2_2 = L2_2.getRoot
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = menuManager
      L3_2 = L2_2
      L2_2 = L2_2.getRoot
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.layout
      L2_2(L3_2)
    end
  end
  L2_2 = notificationsFrame
  L3_2 = L2_2
  L2_2 = L2_2.layout
  L2_2(L3_2)
  L2_2 = handleResolutionPopup
  L2_2()
  ::lbl_732::
  L2_2 = notificationsFrame
  L3_2 = L2_2
  L2_2 = L2_2.update
  L4_2 = A0_2
  L5_2 = time
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = isPCVersion
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = draggedTotal
    if L2_2 == nil then
      L2_2 = {}
      draggedTotal = L2_2
      L2_2 = draggedTotal
      L3_2 = cursor
      L3_2 = L3_2.x
      L2_2.lastX = L3_2
      L2_2 = draggedTotal
      L3_2 = cursor
      L3_2 = L3_2.y
      L2_2.lastY = L3_2
      L2_2 = draggedTotal
      L2_2.distanceX = 0
      L2_2 = draggedTotal
      L2_2.distanceY = 0
    end
    L2_2 = isKeyHold
    L3_2 = "LBUTTON"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = draggedTotal
      L3_2 = draggedTotal
      L3_2 = L3_2.distanceX
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.abs
      L5_2 = cursor
      L5_2 = L5_2.x
      L6_2 = draggedTotal
      L6_2 = L6_2.lastX
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 + L4_2
      L2_2.distanceX = L3_2
      L2_2 = draggedTotal
      L3_2 = draggedTotal
      L3_2 = L3_2.distanceY
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.abs
      L5_2 = cursor
      L5_2 = L5_2.y
      L6_2 = draggedTotal
      L6_2 = L6_2.lastY
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 + L4_2
      L2_2.distanceY = L3_2
      L2_2 = draggedTotal
      L3_2 = cursor
      L3_2 = L3_2.x
      L2_2.lastX = L3_2
      L2_2 = draggedTotal
      L3_2 = cursor
      L3_2 = L3_2.y
      L2_2.lastY = L3_2
    else
      L2_2 = draggedTotal
      L3_2 = cursor
      L3_2 = L3_2.x
      L2_2.lastX = L3_2
      L2_2 = draggedTotal
      L3_2 = cursor
      L3_2 = L3_2.y
      L2_2.lastY = L3_2
      L2_2 = draggedTotal
      L2_2.distanceX = 0
      L2_2 = draggedTotal
      L2_2.distanceY = 0
    end
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2
    L8_2 = A0_2
    L9_2 = time
    L7_2(L8_2, L9_2)
  end
end

update = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = objects
  L0_2 = L0_2.frameObjects
  if L0_2 ~= nil then
    L0_2 = _G
    L0_2 = L0_2.pairs
    L1_2 = objects
    L1_2 = L1_2.frameObjects
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L6_2 = L4_2
      L5_2 = L4_2.layout
      L5_2(L6_2)
    end
  end
end

layoutFrames = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = objects
  L0_2 = L0_2.frameObjects
  if L0_2 ~= nil then
    L0_2 = _G
    L0_2 = L0_2.pairs
    L1_2 = objects
    L1_2 = L1_2.frameObjects
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L6_2 = L4_2
      L5_2 = L4_2.onEntry
      L5_2(L6_2)
    end
  end
end

onEntryFrames = L2_1

function L2_1()
  local L0_2, L1_2
  L0_2 = layoutFrames
  L0_2()
  L0_2 = currentCamera
  if L0_2 ~= nil then
    L0_2 = recalculateCameraLimits
    L0_2()
    L0_2 = updateCurrentCameras
    L1_2 = currentCamera
    L0_2(L1_2)
  end
  L0_2 = g_usingNewCamera
  if L0_2 then
    L0_2 = gameCamera
    if L0_2 ~= nil then
      L0_2 = gameCamera
      L1_2 = L0_2
      L0_2 = L0_2.resolutionChanged
      L0_2(L1_2)
      L0_2 = gameCamera
      L1_2 = L0_2
      L0_2 = L0_2.updateActiveCameras
      L0_2(L1_2)
    end
  end
end

screenDimensionsChanges = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = handleGestureButtonVisibility
  L0_2()
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.draw
    L0_2(L1_2)
  end
  L0_2 = notificationsFrame
  L1_2 = L0_2
  L0_2 = L0_2.draw
  L0_2(L1_2)
  L0_2 = native_drawNotificationParticles
  L0_2()
  L0_2 = showFps
  if L0_2 then
    L0_2 = 1
    L1_2 = getFontScale
    if L1_2 then
      L1_2 = getFontScale
      L1_2 = L1_2()
      L0_2 = L1_2
    end
    L1_2 = setFont
    L2_2 = "FONT_SPACE_BASIC"
    L1_2(L2_2)
    L1_2 = setRenderState
    L2_2 = 0
    L3_2 = 0
    L4_2 = L0_2
    L5_2 = L0_2
    L6_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = res
    L1_2 = L1_2.drawString
    L2_2 = ""
    L3_2 = fpsString
    L4_2 = screenWidth
    L4_2 = L4_2 * 0.5
    L4_2 = L4_2 / L0_2
    L5_2 = screenHeight
    L5_2 = L5_2 / L0_2
    L6_2 = "BOTTOM"
    L7_2 = "HCENTER"
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = res
    L1_2 = L1_2.drawString
    L2_2 = ""
    L3_2 = physicsCounters
    L3_2 = L3_2.message
    L4_2 = screenWidth
    L4_2 = L4_2 * 0.3
    L4_2 = L4_2 / L0_2
    L5_2 = screenHeight
    L5_2 = L5_2 / L0_2
    L6_2 = "BOTTOM"
    L7_2 = "RIGHT"
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = g_usedTextureMemory
    if L1_2 then
      L1_2 = _G
      L1_2 = L1_2.string
      L1_2 = L1_2.format
      L2_2 = "%.2fmb"
      L3_2 = g_usedTextureMemory
      L3_2 = L3_2 / 1024
      L3_2 = L3_2 / 1024
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = res
      L2_2 = L2_2.drawString
      L3_2 = ""
      L4_2 = L1_2
      L5_2 = screenWidth
      L5_2 = L5_2 * 0.6
      L5_2 = L5_2 / L0_2
      L6_2 = screenHeight
      L6_2 = L6_2 / L0_2
      L7_2 = "BOTTOM"
      L8_2 = "LEFT"
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
    L1_2 = g_usedAudioMemory
    if L1_2 then
      L1_2 = _G
      L1_2 = L1_2.string
      L1_2 = L1_2.format
      L2_2 = "%.2fmb"
      L3_2 = g_usedAudioMemory
      L3_2 = L3_2 / 1024
      L3_2 = L3_2 / 1024
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = res
      L2_2 = L2_2.drawString
      L3_2 = ""
      L4_2 = L1_2
      L5_2 = screenWidth
      L5_2 = L5_2 * 0.8
      L5_2 = L5_2 / L0_2
      L6_2 = screenHeight
      L6_2 = L6_2 / L0_2
      L7_2 = "BOTTOM"
      L8_2 = "LEFT"
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
  L0_2 = 1
  L1_2 = g_debugLines
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = drawLine2D
    L5_2 = 0
    L6_2 = g_debugLines
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.y
    L7_2 = screenWidth
    L8_2 = g_debugLines
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.y
    L9_2 = 2
    L10_2 = 255
    L11_2 = 0
    L12_2 = 0
    L13_2 = 255
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = drawLine2D
    L5_2 = g_debugLines
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.x
    L6_2 = 0
    L7_2 = g_debugLines
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.x
    L8_2 = screenHeight
    L9_2 = 2
    L10_2 = 0
    L11_2 = 255
    L12_2 = 0
    L13_2 = 255
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L0_2 = 1
  L1_2 = g_debugPoints
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = 5
    L5_2 = drawLine2D
    L6_2 = g_debugPoints
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.x
    L6_2 = L6_2 - L4_2
    L7_2 = g_debugPoints
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.y
    L8_2 = g_debugPoints
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.x
    L8_2 = L8_2 + L4_2
    L9_2 = g_debugPoints
    L9_2 = L9_2[L3_2]
    L9_2 = L9_2.y
    L10_2 = 2
    L11_2 = 255
    L12_2 = 0
    L13_2 = 0
    L14_2 = 255
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = drawLine2D
    L6_2 = g_debugPoints
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.x
    L7_2 = g_debugPoints
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.y
    L7_2 = L7_2 - L4_2
    L8_2 = g_debugPoints
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.x
    L9_2 = g_debugPoints
    L9_2 = L9_2[L3_2]
    L9_2 = L9_2.y
    L9_2 = L9_2 + L4_2
    L10_2 = 2
    L11_2 = 0
    L12_2 = 255
    L13_2 = 0
    L14_2 = 255
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L0_2 = useAccelerometerControls
  if L0_2 then
    L0_2 = motionremote
    L0_2 = L0_2.drawCursor
    L0_2()
  else
    L0_2 = showCursor
    if not L0_2 then
      L0_2 = isPCVersion
      L0_2 = L0_2()
      if L0_2 then
        L0_2 = drawPCCursor
        L0_2()
      end
    end
  end
  L0_2 = drawLoadingScreen
  L0_2()
  L0_2 = DEBUG_POINTER_EVENTS
  if L0_2 then
    L0_2 = _G
    L0_2 = L0_2.pairs
    L1_2 = DEBUG_EVENTS_QUEUE
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L5_2 = L4_2.elapsed
      L6_2 = POINTER_DEBUG_FADE_MAX_TIME
      L5_2 = L5_2 / L6_2
      L6_2 = 2
      L7_2 = drawRect
      L8_2 = L4_2.color
      L8_2 = L8_2[1]
      L9_2 = L4_2.color
      L9_2 = L9_2[2]
      L10_2 = L4_2.color
      L10_2 = L10_2[3]
      L11_2 = L5_2
      L12_2 = L4_2.x
      L12_2 = L12_2 - L6_2
      L13_2 = L4_2.y
      L13_2 = L13_2 - L6_2
      L14_2 = L4_2.x
      L14_2 = L14_2 + L6_2
      L15_2 = L4_2.y
      L15_2 = L15_2 + L6_2
      L16_2 = true
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
  L0_2 = luaRovioShelf
  if L0_2 then
    L0_2 = luaRovioShelf
    L0_2 = L0_2.render
    L0_2()
  end
end

draw = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = isInGameMode
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = menuManager
      L1_2 = L0_2
      L0_2 = L0_2.getRoot
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        return
      end
      L1_2 = OSX
      L1_2 = L1_2.using_mouse
      if not L1_2 then
        L1_2 = isInFullScreenMode
        L1_2 = L1_2()
        L1_2 = not L1_2
      end
      L3_2 = L0_2
      L2_2 = L0_2.getChild
      L4_2 = "pauseButton"
      L2_2 = L2_2(L3_2, L4_2)
      L4_2 = L0_2
      L3_2 = L0_2.getChild
      L5_2 = "restartButton"
      L3_2 = L3_2(L4_2, L5_2)
      if L2_2 then
        L5_2 = L2_2
        L4_2 = L2_2.setVisible
        L6_2 = L1_2
        L4_2(L5_2, L6_2)
      end
      if L3_2 then
        L5_2 = L3_2
        L4_2 = L3_2.setVisible
        L6_2 = L1_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end

handleGestureButtonVisibility = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = layoutFrames
  L0_2()
  L0_2 = gameCenterEnabled
  if L0_2 then
    L0_2 = gameCenter
    if L0_2 then
      L0_2 = gameCenter
      L0_2 = L0_2.leaderboards
      if L0_2 then
        L0_2 = leaderboards
        if L0_2 then
          L0_2 = isLiteVersion
          if not L0_2 then
          end
          L0_2 = levelOrder
          if L0_2 then
            L0_2 = postTotalHighScores
            L0_2()
          end
        end
      end
    end
  end
  L0_2 = {}
  L1_2 = SettingsWrapper
  L1_2 = L1_2.getLastTimeGamePaused
  if L1_2 ~= nil then
    L1_2 = getTimeDifference
    L2_2 = getCurrentTime
    L2_2 = L2_2()
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.getLastTimeGamePaused
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L0_2 = L1_2
  end
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_GAME_RESUMED
  L3_2.id = L4_2
  L4_2 = L0_2.seconds
  L3_2.differenceInSeconds = L4_2
  L1_2(L2_2, L3_2)
end

gameResumed = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = calculatePlaytime
  L0_2()
  L0_2 = updateLastTimeGamePaused
  L0_2()
  L0_2 = saveSettings
  L0_2()
  L0_2 = savePersistentLuaFileWrapper
  L1_2 = "highscores.lua"
  L2_2 = "highscores"
  L0_2(L1_2, L2_2)
  L0_2 = savePersistentLuaFileWrapper
  L1_2 = "bi_data.lua"
  L2_2 = "bi_data"
  L0_2(L1_2, L2_2)
  L0_2 = savePurchases
  L0_2()
  L0_2 = menuManager
  if L0_2 ~= nil then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L0_2 = menuManager
      L1_2 = L0_2
      L0_2 = L0_2.getRoot
      L0_2 = L0_2(L1_2)
      L0_2 = L0_2.name
      if L0_2 == "GameScene" then
      end
    end
  end
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_GAME_PAUSED
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
end

gamePaused = L2_1

function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = savePersistentLuaFileWrapper
  L1_2 = "settings.lua"
  L2_2 = "settings"
  L0_2(L1_2, L2_2)
end

saveSettings = L2_1

function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = SettingsWrapper
  L0_2 = L0_2.setLastTimeGamePaused
  if L0_2 ~= nil then
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.setLastTimeGamePaused
    L2_2 = getCurrentTime
    L2_2 = L2_2()
    L0_2(L1_2, L2_2)
  end
end

updateLastTimeGamePaused = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isAudioEnabled
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = res
    L0_2 = L0_2.stopAudioOutput
    L0_2()
    L0_2 = setEffectsVolume
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = setMusicVolume
    L1_2 = 0
    L0_2(L1_2)
  else
    L0_2 = res
    L0_2 = L0_2.startAudioOutput
    L0_2 = L0_2()
    if not L0_2 then
      L0_2 = isPCVersion
      L0_2 = L0_2()
      if L0_2 == true then
        L0_2 = res
        L0_2 = L0_2.createAudioOutput
        L1_2 = 2
        L2_2 = 16
        L3_2 = 44100
        L0_2(L1_2, L2_2, L3_2)
      else
        L0_2 = res
        L0_2 = L0_2.createAudioOutput
        L1_2 = 1
        L2_2 = 16
        L3_2 = 16000
        L0_2(L1_2, L2_2, L3_2)
      end
    end
    L0_2 = setEffectsVolume
    L1_2 = 1
    L0_2(L1_2)
    L0_2 = setMusicVolume
    L1_2 = 1
    L0_2(L1_2)
  end
  L0_2 = savePersistentLuaFileWrapper
  L1_2 = "settings.lua"
  L2_2 = "settings"
  L0_2(L1_2, L2_2)
end

initializeMenu = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = highscores
  if L2_2 ~= nil then
    L2_2 = 1
    L3_2 = levelOrder
    L3_2 = L3_2[A0_2]
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = levelOrder
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2[L5_2]
      L7_2 = highscores
      L7_2 = L7_2[L6_2]
      if L7_2 ~= nil then
        L7_2 = highscores
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.score
        if L7_2 then
          L7_2 = highscores
          L7_2 = L7_2[L6_2]
          L7_2 = L7_2.score
          if 0 < L7_2 then
            L7_2 = highscores
            L7_2 = L7_2[L6_2]
            L7_2 = L7_2.completed
            if L7_2 == true then
              L7_2 = _G
              L7_2 = L7_2.math
              L7_2 = L7_2.max
              L8_2 = L1_2
              L9_2 = L5_2 + 1
              L7_2 = L7_2(L8_2, L9_2)
              L1_2 = L7_2
            end
          end
        end
      end
    end
  end
  return L1_2
end

getLastOpenLevelOfLevelPackFromHighscores = L2_1

function L2_1(A0_2)
  local L1_2
  L1_2 = highscores
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = highscores
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.eagleScore
    if not L1_2 then
      L1_2 = 0
    end
    return L1_2
  end
  L1_2 = 0
  return L1_2
end

getEagleScoreFromHighscores = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = getLevelEagleScoreLimit
  L1_2 = levelName
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = _G
    L1_2 = L1_2.math
    L1_2 = L1_2.floor
    L2_2 = _G
    L2_2 = L2_2.math
    L2_2 = L2_2.min
    L3_2 = score
    L4_2 = L0_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 / L0_2
    L2_2 = L2_2 * 100
    L1_2 = L1_2(L2_2)
    return L1_2
  end
  L1_2 = 100
  return L1_2
end

getEaglePercentageScore = L2_1

function L2_1(A0_2)
  local L1_2
  L1_2 = starTable
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    L1_2 = starTable
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.eagleScore
    if not L1_2 then
      L1_2 = starTable
      L1_2 = L1_2.default
      L1_2 = L1_2.eagleScore
    end
    return L1_2
  else
    L1_2 = starTable
    L1_2 = L1_2.default
    L1_2 = L1_2.eagleScore
    return L1_2
  end
end

getLevelEagleScoreLimit = L2_1

function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L1_2 = startedFromEditor
  if not L1_2 then
    L1_2 = getEpisodeMetadata
    L2_2 = currentFolder
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2.alwaysInEagleMode
  end
  L1_2 = numMightyEaglesShot
  L1_2 = 0 < L1_2 or L1_2
  return L1_2
end

isEagleUsedInLevel = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = assert
  L3_2 = A1_2 ~= nil and 1 <= A1_2 and A1_2 <= 3
  L4_2 = "Wrong  number of stars"
  L2_2(L3_2, L4_2)
  if A1_2 == 1 then
    L2_2 = 0
    return L2_2
  elseif A1_2 == 2 then
    L2_2 = starTable
    L2_2 = L2_2[A0_2]
    if L2_2 ~= nil then
      L2_2 = starTable
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.silverScore
      if not L2_2 then
        L2_2 = starTable
        L2_2 = L2_2.default
        L2_2 = L2_2.silverScore
      end
      return L2_2
    else
      L2_2 = starTable
      L2_2 = L2_2.default
      L2_2 = L2_2.silverScore
      return L2_2
    end
  elseif A1_2 == 3 then
    L2_2 = starTable
    L2_2 = L2_2[A0_2]
    if L2_2 ~= nil then
      L2_2 = starTable
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.goldScore
      if not L2_2 then
        L2_2 = starTable
        L2_2 = L2_2.default
        L2_2 = L2_2.goldScore
      end
      return L2_2
    else
      L2_2 = starTable
      L2_2 = L2_2.default
      L2_2 = L2_2.goldScore
      return L2_2
    end
  end
end

getLevelStarScoreLimit = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = highscores
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    L1_2 = highscores
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.score
    if L1_2 == nil then
      L1_2 = powerups
      if not L1_2 then
        goto lbl_64
      end
      L1_2 = highscores
      L1_2 = L1_2[A0_2]
      L1_2 = L1_2.powerUpScore
      if L1_2 == nil then
        goto lbl_64
      end
    end
    L1_2 = getLevelMetadata
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.type
    if L1_2 ~= "comic" then
      L1_2 = powerups
      if L1_2 then
        L1_2 = highscores
        L1_2 = L1_2[A0_2]
        L1_2 = L1_2.powerUpScore
        if L1_2 ~= nil then
          L1_2 = highscores
          L1_2 = L1_2[A0_2]
          L1_2 = L1_2.powerUpScore
          L2_2 = highscores
          L2_2 = L2_2[A0_2]
          L2_2 = L2_2.score
          if L1_2 <= L2_2 then
            L3_2 = getLevelStars
            L4_2 = A0_2
            L5_2 = highscores
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.score
            return L3_2(L4_2, L5_2)
          elseif L1_2 > L2_2 then
            L3_2 = getLevelStars
            L4_2 = A0_2
            L5_2 = highscores
            L5_2 = L5_2[A0_2]
            L5_2 = L5_2.powerUpScore
            return L3_2(L4_2, L5_2)
          end
        end
      end
      L1_2 = getLevelStars
      L2_2 = A0_2
      L3_2 = highscores
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.score
      return L1_2(L2_2, L3_2)
    end
  end
  ::lbl_64::
  L1_2 = 0
  return L1_2
end

getLevelStarsFromHighscores = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = getLevelMetadata
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.type
  if L2_2 ~= "comic" then
    L2_2 = starTable
    L2_2 = L2_2[A0_2]
    if not L2_2 then
      L2_2 = starTable
      L2_2 = L2_2.default
    end
    if A1_2 and L2_2 then
      L3_2 = L2_2.goldScore
      if A1_2 >= L3_2 then
        L3_2 = 3
        return L3_2
      else
        L3_2 = L2_2.silverScore
        if A1_2 >= L3_2 then
          L3_2 = 2
          return L3_2
        elseif 0 < A1_2 then
          L3_2 = 1
          return L3_2
        end
      end
    end
  end
  L2_2 = 0
  return L2_2
end

getLevelStars = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2 * 0.6
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2 * 0.6
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2 * 0.6
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2 * 0.6
  L3_2 = 3
  L1_2(L2_2, L3_2)
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2 * 0.6
  L3_2 = 4
  L1_2(L2_2, L3_2)
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2 * 0.6
  L3_2 = 5
  L1_2(L2_2, L3_2)
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2 * 0.6
  L3_2 = 6
  L1_2(L2_2, L3_2)
end

setEffectsVolume = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = res
  L1_2 = L1_2.setTrackVolume
  L2_2 = A0_2
  L3_2 = 7
  L1_2(L2_2, L3_2)
end

setMusicVolume = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = audioRampVolume
  if L2_2 then
    L2_2 = audioRampVolume
    L3_2 = audioRampLength
    L3_2 = A0_2 / L3_2
    L2_2 = L2_2 + L3_2
    audioRampVolume = L2_2
    L2_2 = audioRampVolume
    if L2_2 <= 0 then
      L2_2 = _G
      L2_2 = L2_2.res
      L2_2 = L2_2.stopAudioOutput
      L2_2()
      L2_2 = nil
      audioRampVolume = L2_2
    else
      L2_2 = audioRampVolume
      if 1 < L2_2 then
        L2_2 = nil
        audioRampVolume = L2_2
      else
        L2_2 = setMusicVolume
        L3_2 = audioRampVolume
        L4_2 = audioRampVolume
        L3_2 = L3_2 * L4_2
        L2_2(L3_2)
        L2_2 = setEffectsVolume
        L3_2 = audioRampVolume
        L4_2 = audioRampVolume
        L3_2 = L3_2 * L4_2
        L2_2(L3_2)
      end
    end
  end
end

updateAudioRampVolume = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = cameraAnimationSliderTarget
  L1_2 = minWorldScale
  L2_2 = nil
  if L0_2 == 0 then
    L3_2 = objects
    L3_2 = L3_2.birdCameraData
    L4_2 = deviceModel
    L3_2 = L3_2[L4_2]
    L2_2 = L3_2.sx
  else
    L3_2 = objects
    L3_2 = L3_2.castleCameraData
    L4_2 = deviceModel
    L3_2 = L3_2[L4_2]
    L2_2 = L3_2.sx
  end
  L3_2 = native_toggleZoomSteps
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = gameCamera
  L6_2 = L6_2.currentZoomedScale
  L7_2 = 3
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

toggleZoom = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L0_2 = worldToPhysicsTransform
  L1_2 = objects
  L1_2 = L1_2.castleCameraData
  L2_2 = deviceModel
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.left
  L2_2 = objects
  L2_2 = L2_2.castleCameraData
  L3_2 = deviceModel
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.bottom
  L0_2, L1_2 = L0_2(L1_2, L2_2)
  L2_2 = 0
  L3_2 = -1
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = repopulationLayers
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.timer
    if 0 < L9_2 then
      L9_2 = L8_2.timer
      L9_2 = L9_2 - 0.1
      L8_2.timer = L9_2
    else
      L9_2 = L8_2.repopulationTimer
      if not L9_2 then
        L9_2 = 1
      end
      L8_2.timer = L9_2
      L9_2 = objects
      L9_2 = L9_2.castleCameraData
      L10_2 = deviceModel
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.screenWidth
      L10_2 = objects
      L10_2 = L10_2.castleCameraData
      L11_2 = deviceModel
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.screenHeight
      L9_2 = L9_2 * 0.5
      L10_2 = L10_2 * 0.5
      L2_2 = L8_2.layer
      L11_2 = L8_2.elements
      L11_2 = L11_2.amount
      if not L11_2 then
        L11_2 = 0
      end
      L12_2 = L8_2.elements
      L12_2 = L12_2.scale
      if not L12_2 then
        L12_2 = 0
      end
      if 1 < L11_2 then
        L13_2 = deviceModel
        if L13_2 == "iphone" then
          goto lbl_63
        end
      end
      L13_2 = deviceModel
      ::lbl_63::
      if L13_2 == "iphone4" then
        L13_2 = L8_2.elements
        L13_2 = L13_2.amount
        L11_2 = L13_2 / 2
      end
      L13_2 = L8_2.elements
      L13_2 = L13_2.w
      if not L13_2 then
        L13_2 = 1
      end
      L14_2 = L8_2.elements
      L14_2 = L14_2.h
      if not L14_2 then
        L14_2 = 1
      end
      L15_2 = L8_2.elements
      L15_2 = L15_2.x
      if not L15_2 then
        L15_2 = 0
      end
      L16_2 = L8_2.elements
      L16_2 = L16_2.y
      if not L16_2 then
        L16_2 = 0
      end
      L17_2 = objects
      L17_2 = L17_2.castleCameraData
      L18_2 = deviceModel
      L17_2 = L17_2[L18_2]
      L17_2 = L17_2.screenWidth
      L17_2 = L15_2 * L17_2
      L18_2 = objects
      L18_2 = L18_2.castleCameraData
      L19_2 = deviceModel
      L18_2 = L18_2[L19_2]
      L18_2 = L18_2.screenHeight
      L16_2 = L16_2 * L18_2
      L15_2 = L17_2
      L17_2 = L9_2 * L13_2
      L10_2 = L10_2 * L14_2
      L9_2 = L17_2
      L17_2 = 1
      L18_2 = L11_2
      L19_2 = 1
      for L20_2 = L17_2, L18_2, L19_2 do
        L21_2 = 0
        L22_2 = L8_2.elements
        L22_2 = L22_2.randomRotation
        if L22_2 then
          L22_2 = _G
          L22_2 = L22_2.math
          L22_2 = L22_2.random
          L23_2 = 0
          L24_2 = _G
          L24_2 = L24_2.math
          L24_2 = L24_2.pi
          L24_2 = L24_2 * 2
          L22_2 = L22_2(L23_2, L24_2)
          L21_2 = L22_2
        end
        L22_2 = L8_2.scale
        L22_2 = L22_2 * L12_2
        L23_2 = _G
        L23_2 = L23_2.math
        L23_2 = L23_2.random
        L23_2 = L23_2()
        L23_2 = 0.5 - L23_2
        L23_2 = L23_2 * 2
        L24_2 = L8_2.elements
        L24_2 = L24_2.variation
        L23_2 = L23_2 * L24_2
        L22_2 = L22_2 + L23_2
        L23_2 = L8_2.elements
        L23_2 = L23_2.sprites
        L24_2 = _G
        L24_2 = L24_2.math
        L24_2 = L24_2.random
        L25_2 = 1
        L26_2 = L8_2.elements
        L26_2 = L26_2.sprites
        L26_2 = #L26_2
        L24_2 = L24_2(L25_2, L26_2)
        L23_2 = L23_2[L24_2]
        L24_2 = {}
        L25_2 = L8_2.elements
        L25_2 = L25_2.isAnimation
        L24_2.isAnimation = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.bLoop
        L24_2.bLoop = L25_2
        L25_2 = _G
        L25_2 = L25_2.math
        L25_2 = L25_2.random
        L26_2 = -L9_2
        L27_2 = L9_2
        L25_2 = L25_2(L26_2, L27_2)
        L25_2 = L15_2 + L25_2
        L24_2.x = L25_2
        L25_2 = _G
        L25_2 = L25_2.math
        L25_2 = L25_2.random
        L26_2 = -L10_2
        L27_2 = L10_2
        L25_2 = L25_2(L26_2, L27_2)
        L25_2 = L16_2 + L25_2
        L24_2.y = L25_2
        L24_2.angle = L21_2
        L24_2.layer = L2_2
        L25_2 = {}
        L25_2.x = L22_2
        L25_2.y = L22_2
        L24_2.scale = L25_2
        L24_2.sprite = L23_2
        L25_2 = L23_2
        L26_2 = L20_2
        L25_2 = L25_2 .. L26_2
        L24_2.name = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.velX
        L24_2.velX = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.velY
        if not L25_2 then
          L25_2 = 0
        end
        L24_2.velY = L25_2
        L24_2.scaleSpeed = 0
        L25_2 = L8_2.elements
        L25_2 = L25_2.sprites
        L24_2.animation = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.animDelay
        L24_2.animDelay = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.startingDelay
        L24_2.startingDelay = L25_2
        L25_2 = addRandomThemeSprite
        L26_2 = L24_2.name
        L27_2 = L24_2
        L25_2(L26_2, L27_2)
      end
      L3_2 = -L3_2
    end
  end
end

rePopulateWithRandomThemeSprites = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L0_2 = worldToPhysicsTransform
  L1_2 = objects
  L1_2 = L1_2.castleCameraData
  L2_2 = deviceModel
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.left
  L2_2 = objects
  L2_2 = L2_2.castleCameraData
  L3_2 = deviceModel
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.bottom
  L0_2, L1_2 = L0_2(L1_2, L2_2)
  L2_2 = 0
  L3_2 = -1
  L4_2 = {}
  repopulationLayers = L4_2
  L4_2 = 1
  repopulationTimer = L4_2
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = blockTable
  L5_2 = L5_2.themes
  L6_2 = currentTheme
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.bgLayers
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.elements
    if L9_2 then
      L9_2 = objects
      L9_2 = L9_2.castleCameraData
      L10_2 = deviceModel
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.screenWidth
      L10_2 = objects
      L10_2 = L10_2.castleCameraData
      L11_2 = deviceModel
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.screenHeight
      L9_2 = L9_2 * 0.5
      L10_2 = L10_2 * 0.5
      L11_2 = L8_2.repopulate
      if L11_2 then
        L8_2.layer = L2_2
        L11_2 = L8_2.repopulationTimer
        if not L11_2 then
          L11_2 = 1
        end
        L8_2.timer = L11_2
        L11_2 = repopulationLayers
        L11_2[L7_2] = L8_2
      end
      L11_2 = L8_2.elements
      L11_2 = L11_2.amount
      if not L11_2 then
        L11_2 = 0
      end
      L12_2 = L8_2.elements
      L12_2 = L12_2.scale
      if not L12_2 then
        L12_2 = 0
      end
      if 1 < L11_2 then
        L13_2 = deviceModel
        if L13_2 ~= "iphone" then
          L13_2 = deviceModel
          if L13_2 ~= "iphone4" then
            goto lbl_73
          end
        end
        L11_2 = L11_2 / 2
      end
      ::lbl_73::
      L13_2 = L8_2.elements
      L13_2 = L13_2.w
      if not L13_2 then
        L13_2 = 1
      end
      L14_2 = L8_2.elements
      L14_2 = L14_2.h
      if not L14_2 then
        L14_2 = 1
      end
      L15_2 = L8_2.elements
      L15_2 = L15_2.x
      if not L15_2 then
        L15_2 = 0
      end
      L16_2 = L8_2.elements
      L16_2 = L16_2.y
      if not L16_2 then
        L16_2 = 0
      end
      L17_2 = objects
      L17_2 = L17_2.castleCameraData
      L18_2 = deviceModel
      L17_2 = L17_2[L18_2]
      L17_2 = L17_2.screenWidth
      L17_2 = L15_2 * L17_2
      L18_2 = objects
      L18_2 = L18_2.castleCameraData
      L19_2 = deviceModel
      L18_2 = L18_2[L19_2]
      L18_2 = L18_2.screenHeight
      L16_2 = L16_2 * L18_2
      L15_2 = L17_2
      L17_2 = L9_2 * L13_2
      L10_2 = L10_2 * L14_2
      L9_2 = L17_2
      L17_2 = 1
      L18_2 = L11_2
      L19_2 = 1
      for L20_2 = L17_2, L18_2, L19_2 do
        L21_2 = 0
        L22_2 = L8_2.elements
        L22_2 = L22_2.randomRotation
        if L22_2 then
          L22_2 = _G
          L22_2 = L22_2.math
          L22_2 = L22_2.random
          L23_2 = 0
          L24_2 = _G
          L24_2 = L24_2.math
          L24_2 = L24_2.pi
          L24_2 = L24_2 * 2
          L22_2 = L22_2(L23_2, L24_2)
          L21_2 = L22_2
        end
        L22_2 = L8_2.scale
        L22_2 = L22_2 * L12_2
        L23_2 = _G
        L23_2 = L23_2.math
        L23_2 = L23_2.random
        L23_2 = L23_2()
        L23_2 = 0.5 - L23_2
        L23_2 = L23_2 * 2
        L24_2 = L8_2.elements
        L24_2 = L24_2.variation
        L23_2 = L23_2 * L24_2
        L22_2 = L22_2 + L23_2
        L23_2 = L8_2.elements
        L23_2 = L23_2.sprites
        L24_2 = _G
        L24_2 = L24_2.math
        L24_2 = L24_2.random
        L25_2 = 1
        L26_2 = L8_2.elements
        L26_2 = L26_2.sprites
        L26_2 = #L26_2
        L24_2 = L24_2(L25_2, L26_2)
        L23_2 = L23_2[L24_2]
        L24_2 = {}
        L25_2 = L8_2.elements
        L25_2 = L25_2.isAnimation
        L24_2.isAnimation = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.bLoop
        L24_2.bLoop = L25_2
        L25_2 = _G
        L25_2 = L25_2.math
        L25_2 = L25_2.random
        L26_2 = -L9_2
        L27_2 = L9_2
        L25_2 = L25_2(L26_2, L27_2)
        L25_2 = L15_2 + L25_2
        L24_2.x = L25_2
        L25_2 = _G
        L25_2 = L25_2.math
        L25_2 = L25_2.random
        L26_2 = -L10_2
        L27_2 = L10_2
        L25_2 = L25_2(L26_2, L27_2)
        L25_2 = L16_2 + L25_2
        L24_2.y = L25_2
        L24_2.angle = L21_2
        L24_2.layer = L2_2
        L25_2 = {}
        L25_2.x = L22_2
        L25_2.y = L22_2
        L24_2.scale = L25_2
        L24_2.sprite = L23_2
        L25_2 = L23_2
        L26_2 = L20_2
        L25_2 = L25_2 .. L26_2
        L24_2.name = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.velX
        L24_2.velX = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.velY
        if not L25_2 then
          L25_2 = 0
        end
        L24_2.velY = L25_2
        L24_2.scaleSpeed = 0
        L25_2 = L8_2.elements
        L25_2 = L25_2.sprites
        L24_2.animation = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.animDelay
        L24_2.animDelay = L25_2
        L25_2 = L8_2.elements
        L25_2 = L25_2.startingDelay
        L24_2.startingDelay = L25_2
        L25_2 = addRandomThemeSprite
        L26_2 = L24_2.name
        L27_2 = L24_2
        L25_2(L26_2, L27_2)
      end
      L2_2 = L2_2 + 1
      L3_2 = -L3_2
    end
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = blockTable
  L5_2 = L5_2.themes
  L6_2 = currentTheme
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.fgLayers
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.elements
    if L9_2 then
      L9_2 = 0
      L10_2 = 0
      L11_2 = L8_2.elements
      L11_2 = L11_2.amount
      if L11_2 then
        L11_2 = L8_2.elements
        L11_2 = L11_2.scale
        L10_2 = L11_2 or L10_2
        if not L11_2 then
          L10_2 = 0
        end
        L11_2 = deviceModel
        if L11_2 ~= "iphone" then
          L11_2 = deviceModel
          if L11_2 ~= "iphone4" then
            goto lbl_246
          end
        end
        L11_2 = L8_2.elements
        L11_2 = L11_2.amount
        L9_2 = L11_2 / 2
        goto lbl_248
        ::lbl_246::
        L11_2 = L8_2.elements
        L9_2 = L11_2.amount
      end
      ::lbl_248::
      L11_2 = 1
      L12_2 = L9_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = 0
        L16_2 = L8_2.elements
        L16_2 = L16_2.randomRotation
        if L16_2 then
          L16_2 = _G
          L16_2 = L16_2.math
          L16_2 = L16_2.random
          L17_2 = 0
          L18_2 = _G
          L18_2 = L18_2.math
          L18_2 = L18_2.pi
          L18_2 = L18_2 * 2
          L16_2 = L16_2(L17_2, L18_2)
          L15_2 = L16_2
        end
        L16_2 = L8_2.scale
        L16_2 = L16_2 * L10_2
        L17_2 = _G
        L17_2 = L17_2.math
        L17_2 = L17_2.random
        L17_2 = L17_2()
        L17_2 = 0.5 - L17_2
        L17_2 = L17_2 * 2
        L18_2 = L8_2.elements
        L18_2 = L18_2.variation
        L17_2 = L17_2 * L18_2
        L16_2 = L16_2 + L17_2
        L17_2 = L8_2.elements
        L17_2 = L17_2.sprites
        L18_2 = _G
        L18_2 = L18_2.math
        L18_2 = L18_2.random
        L19_2 = 1
        L20_2 = L8_2.elements
        L20_2 = L20_2.sprites
        L20_2 = #L20_2
        L18_2 = L18_2(L19_2, L20_2)
        L17_2 = L17_2[L18_2]
        L18_2 = {}
        L19_2 = L8_2.elements
        L19_2 = L19_2.isAnimation
        L18_2.isAnimation = L19_2
        L19_2 = L8_2.elements
        L19_2 = L19_2.bLoop
        L18_2.bLoop = L19_2
        L19_2 = _G
        L19_2 = L19_2.math
        L19_2 = L19_2.random
        L20_2 = w
        L20_2 = -L20_2
        L21_2 = w
        L19_2 = L19_2(L20_2, L21_2)
        L18_2.x = L19_2
        L19_2 = _G
        L19_2 = L19_2.math
        L19_2 = L19_2.random
        L20_2 = h
        L20_2 = -L20_2
        L21_2 = h
        L19_2 = L19_2(L20_2, L21_2)
        L18_2.y = L19_2
        L18_2.angle = L15_2
        L18_2.layer = L2_2
        L19_2 = {}
        L19_2.x = L16_2
        L19_2.y = L16_2
        L18_2.scale = L19_2
        L18_2.sprite = L17_2
        L19_2 = L17_2
        L20_2 = L14_2
        L19_2 = L19_2 .. L20_2
        L18_2.name = L19_2
        L19_2 = L8_2.elements
        L19_2 = L19_2.velX
        L18_2.velX = L19_2
        L19_2 = L8_2.elements
        L19_2 = L19_2.velY
        if not L19_2 then
          L19_2 = 0
        end
        L18_2.velY = L19_2
        L18_2.scaleSpeed = 0
        L19_2 = L8_2.elements
        L19_2 = L19_2.sprites
        L18_2.animation = L19_2
        L19_2 = L8_2.elements
        L19_2 = L19_2.animDelay
        L18_2.animDelay = L19_2
        L19_2 = L8_2.elements
        L19_2 = L19_2.startingDelay
        L18_2.startingDelay = L19_2
        L19_2 = addRandomThemeSprite
        L20_2 = L18_2.name
        L21_2 = L18_2
        L19_2(L20_2, L21_2)
      end
      L2_2 = L2_2 + 1
      L3_2 = -L3_2
    end
  end
end

populateWithRandomThemeSprites = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = A1_2
  L3_2 = L2_2.horFlip
  if not L3_2 then
    L3_2 = false
  end
  L4_2 = L2_2.sprite
  L5_2 = 1
  L6_2 = 1
  L7_2 = L2_2.angleVel
  if not L7_2 then
    L7_2 = 0
  end
  L8_2 = L2_2.scale
  if L8_2 ~= nil then
    L8_2 = L2_2.scale
    L8_2 = L8_2.x
    L5_2 = L8_2 or L5_2
    if not L8_2 then
      L5_2 = 1
    end
    L8_2 = L2_2.scale
    L8_2 = L8_2.y
    L6_2 = L8_2 or L6_2
    if not L8_2 then
      L6_2 = 1
    end
  end
  L8_2 = 1
  L9_2 = 0
  L2_2.scaleX = L5_2
  L2_2.scaleY = L6_2
  L10_2 = L2_2.sprite
  L2_2.spriteName = L10_2
  L10_2 = L2_2.isAnimation
  if L10_2 then
    L10_2 = createThemeAnimation
    L11_2 = L2_2
    L10_2(L11_2)
  else
    L10_2 = createThemeSprite
    L11_2 = L2_2.name
    L12_2 = L4_2
    L13_2 = L2_2.x
    L14_2 = L2_2.y
    L15_2 = L5_2
    L16_2 = L6_2
    L17_2 = L2_2.angle
    L18_2 = L2_2.layer
    L19_2 = L2_2.scaleSpeed
    L20_2 = L3_2
    L21_2 = L2_2.velX
    L22_2 = L2_2.velY
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  end
  L10_2 = themeSpriteObjects
  L11_2 = {}
  L12_2 = L2_2.x
  L11_2.x = L12_2
  L12_2 = L2_2.y
  L11_2.y = L12_2
  L12_2 = L2_2.name
  L11_2.name = L12_2
  L12_2 = L2_2.definition
  L11_2.definition = L12_2
  L12_2 = L2_2.scale
  if not L12_2 then
    L12_2 = {}
    L12_2.x = 1
    L12_2.y = 1
  end
  L11_2.scale = L12_2
  L12_2 = L2_2.angle
  L11_2.angle = L12_2
  L12_2 = L2_2.layer
  L11_2.layer = L12_2
  L11_2.horFlip = L3_2
  L10_2[A0_2] = L11_2
  L10_2 = res
  L10_2 = L10_2.getSpriteBounds
  L11_2 = L4_2
  L10_2, L11_2 = L10_2(L11_2)
  L12_2 = 0.92
  L13_2 = physicsScale
  L13_2 = L10_2 * L13_2
  L10_2 = L13_2 * L12_2
  L13_2 = physicsScale
  L13_2 = L11_2 * L13_2
  L11_2 = L13_2 * L12_2
  L13_2 = themeSpriteObjects
  L13_2 = L13_2[A0_2]
  L13_2.width = L10_2
  L13_2 = themeSpriteObjects
  L13_2 = L13_2[A0_2]
  L13_2.height = L11_2
end

addRandomThemeSprite = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = print
  L4_2 = "ADDING THEME SPRITE, NAME = "
  L5_2 = A0_2
  L6_2 = "\n"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = blockTable
  L4_2 = L4_2.blocks
  L5_2 = L3_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.horFlip
  if not L4_2 then
    L4_2 = false
  end
  L5_2 = blockTable
  L5_2 = L5_2.blocks
  L6_2 = L3_2.definition
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.sprite
  if not L5_2 then
    L6_2 = blockTable
    L6_2 = L6_2.blocks
    L7_2 = L3_2.definition
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.damageSprites
    if L6_2 then
      L6_2 = blockTable
      L6_2 = L6_2.blocks
      L7_2 = L3_2.definition
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.damageSprites
      L5_2 = L6_2.damage1
    end
  end
  L6_2 = blockTable
  L6_2 = L6_2.blocks
  L7_2 = L3_2.definition
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.angleVel
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = L3_2.scale
  L7_2 = L7_2.x
  if not L7_2 then
    L7_2 = 1
  end
  L8_2 = L3_2.scale
  L8_2 = L8_2.y
  if not L8_2 then
    L8_2 = 1
  end
  L9_2 = createThemeSprite
  L10_2 = L3_2.name
  L11_2 = L5_2
  L12_2 = L3_2.x
  L13_2 = L3_2.y
  L14_2 = L7_2
  L15_2 = L8_2
  L16_2 = L3_2.angle
  L17_2 = L3_2.layer
  L18_2 = 0
  L19_2 = false
  L20_2 = 0
  L21_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L9_2 = startedFromEditor
  if L9_2 then
    L9_2 = ui
    L9_2 = L9_2.EditorScene
    L9_2 = L9_2.createEditableSprite
    L10_2 = L3_2
    L9_2(L10_2)
  end
end

addThemeSprite = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A2_2 then
    L3_2 = actions
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.params
    L3_2 = L3_2.timer
    A2_2 = L3_2 or A2_2
    if not L3_2 then
      A2_2 = 0
    end
  end
  L3_2 = _G
  L3_2 = L3_2.table
  L3_2 = L3_2.insert
  L4_2 = g_queuedEventCalls
  L5_2 = {}
  L5_2.actionName = A0_2
  L5_2.params = A1_2
  L5_2.timer = A2_2
  L3_2(L4_2, L5_2)
end

addEventCall = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = g_queuedEventCalls
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.actionName
    if L6_2 == A0_2 then
      L6_2 = _G
      L6_2 = L6_2.table
      L6_2 = L6_2.remove
      L7_2 = g_queuedEventCalls
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = eventCalls
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.actionName
    if L6_2 == A0_2 then
      L6_2 = _G
      L6_2 = L6_2.table
      L6_2 = L6_2.remove
      L7_2 = eventCalls
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  end
end

removeEventCall = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = eventCalls
  if L1_2 ~= nil then
    L1_2 = _G
    L1_2 = L1_2.ipairs
    L2_2 = g_queuedEventCalls
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = _G
      L6_2 = L6_2.table
      L6_2 = L6_2.insert
      L7_2 = eventCalls
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
    L1_2 = {}
    g_queuedEventCalls = L1_2
    L1_2 = _G
    L1_2 = L1_2.ipairs
    L2_2 = eventCalls
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.timer
      if L6_2 <= 0 then
        L6_2 = L5_2.expired
        if not L6_2 then
          L6_2 = actions
          L7_2 = L5_2.actionName
          L6_2 = L6_2[L7_2]
          if L6_2 ~= nil then
            L6_2 = L5_2.params
            if L6_2 == nil then
              L6_2 = {}
              L5_2.params = L6_2
            end
            L6_2 = L5_2.params
            L6_2.dt = A0_2
            L6_2 = _G
            L6_2 = L6_2.assert
            L7_2 = actions
            L8_2 = L5_2.actionName
            L7_2 = L7_2[L8_2]
            L7_2 = L7_2 ~= nil
            L8_2 = "Failed to find action "
            L9_2 = L5_2.actionName
            L8_2 = L8_2 .. L9_2
            L6_2(L7_2, L8_2)
            L6_2 = actions
            L7_2 = L5_2.actionName
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.action
            L7_2 = L5_2.params
            L6_2(L7_2)
            L5_2.expired = true
          end
      end
      else
        L6_2 = L5_2.timer
        L6_2 = L6_2 - A0_2
        L5_2.timer = L6_2
      end
    end
    L1_2 = 1
    L2_2 = eventCalls
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = eventCalls
      L5_2 = L5_2[L4_2]
      if L5_2 then
        L6_2 = L5_2.expired
        if L6_2 then
          L6_2 = _G
          L6_2 = L6_2.table
          L6_2 = L6_2.remove
          L7_2 = eventCalls
          L8_2 = L4_2
          L6_2(L7_2, L8_2)
          L4_2 = L4_2 - 1
        end
      end
    end
  end
end

updateEventCalls = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A2_2 then
    L4_2 = actions
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.params
    A2_2 = L4_2.timer
  end
  if 0 < A2_2 then
    L4_2 = addEventCall
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    if A3_2 == nil then
      L4_2 = updateCalls
      L4_2 = #L4_2
      A3_2 = L4_2 + 1
    end
    L4_2 = {}
    L5_2 = _G
    L5_2 = L5_2.pairs
    L6_2 = A1_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L4_2[L8_2] = L9_2
    end
    L5_2 = updateCalls
    L6_2 = {}
    L6_2.actionName = A0_2
    L6_2.params = L4_2
    L6_2.timer = A2_2
    L5_2[A3_2] = L6_2
  end
end

addUpdateCall = L2_1

function L2_1(A0_2)
  local L1_2
  L1_2 = updateCalls
  L1_2[A0_2] = nil
end

removeUpdateCall = L2_1

function L2_1(A0_2)
  local L1_2
  L1_2 = updateCalls
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2 ~= nil
  return L1_2
end

hasUpdateCall = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = currentFolder
  L1_2 = levelName
  if L1_2 ~= "LevelSelection" then
    L1_2 = levelName
    L2_2 = getEpisodeSelectionLevelName
    L2_2 = L2_2()
    if L1_2 ~= L2_2 then
      L1_2 = levelName
      if L1_2 ~= "Credits" then
        L1_2 = levelName
        if L1_2 ~= "MainMenu" then
          L1_2 = _G
          L1_2 = L1_2.pairs
          L2_2 = actions
          L2_2 = L2_2.myLevels
          L1_2, L2_2, L3_2 = L1_2(L2_2)
          for L4_2, L5_2 in L1_2, L2_2, L3_2 do
            L6_2 = _G
            L6_2 = L6_2.pairs
            L7_2 = L5_2
            L6_2, L7_2, L8_2 = L6_2(L7_2)
            for L9_2, L10_2 in L6_2, L7_2, L8_2 do
              L11_2 = levelName
              if L10_2 == L11_2 then
                currentFolder = L4_2
                L11_2 = "levels/"
                L12_2 = currentFolder
                L13_2 = "/"
                L11_2 = L11_2 .. L12_2 .. L13_2
                levelFolder = L11_2
                L11_2 = levelFolder
                L12_2 = L10_2
                L11_2 = L11_2 .. L12_2
                return L11_2
              end
            end
          end
        end
      end
    end
  end
end

checkGetLevelFileName = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 ~= "MainMenu" then
    L1_2 = getEpisodeSelectionLevelName
    L1_2 = L1_2()
    if A0_2 ~= L1_2 and A0_2 ~= "Credits" then
      goto lbl_11
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_11::
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L3_2 = currentFolder
  L2_2 = L2_2[L3_2]
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

isLevelInCurrentFolder = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.counts
    L9_2 = L7_2.what
    L8_2 = L8_2[L9_2]
    if not L8_2 then
      L8_2 = 0
    end
    L9_2 = L7_2.what
    L10_2 = "_"
    L11_2 = A2_2
    L9_2 = L9_2 .. L10_2 .. L11_2
    L10_2 = L7_2.with
    L11_2 = _G
    L11_2 = L11_2.assert
    L12_2 = A0_2.world
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2 ~= nil
    L13_2 = "block naming is not sequential"
    L11_2(L12_2, L13_2)
    L11_2 = _G
    L11_2 = L11_2.assert
    L12_2 = A0_2.world
    L12_2 = L12_2[L10_2]
    L12_2 = L12_2 == nil
    L13_2 = "attempting to overwrite existing block"
    L11_2(L12_2, L13_2)
    L11_2 = A0_2.world
    L12_2 = A0_2.world
    L12_2 = L12_2[L9_2]
    L11_2[L10_2] = L12_2
    L11_2 = A0_2.world
    L11_2 = L11_2[L10_2]
    L11_2.name = L10_2
    L11_2 = A0_2.world
    L11_2 = L11_2[L10_2]
    L12_2 = L7_2.with
    L11_2.definition = L12_2
    L11_2 = A0_2.world
    L11_2[L9_2] = nil
    L11_2 = A0_2.counts
    L12_2 = L7_2.with
    L11_2[L12_2] = 1
    L11_2 = A0_2.counts
    L12_2 = L7_2.what
    L13_2 = A0_2.counts
    L14_2 = L7_2.what
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2 - 1
    L11_2[L12_2] = L13_2
    L11_2 = "^"
    L12_2 = L7_2.what
    L13_2 = "_[0-9]+$"
    L11_2 = L11_2 .. L12_2 .. L13_2
    L12_2 = _G
    L12_2 = L12_2.pairs
    L13_2 = A0_2.joints
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    for L15_2, L16_2 in L12_2, L13_2, L14_2 do
      L17_2 = _G
      L17_2 = L17_2.assert
      L18_2 = _G
      L18_2 = L18_2.string
      L18_2 = L18_2.find
      L19_2 = L16_2.end1
      L20_2 = L11_2
      L18_2 = L18_2(L19_2, L20_2)
      L18_2 = _G
      L18_2 = L18_2.string
      L18_2 = L18_2.find
      L19_2 = L16_2.end2
      L20_2 = L11_2
      L18_2 = L18_2(L19_2, L20_2)
      L18_2 = not L18_2 and L18_2
      L19_2 = "replacing blocks with joints attached is not supported"
      L17_2(L18_2, L19_2)
    end
  end
end

replaceSocialLinks = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.counts
    L8_2 = L6_2.what
    L7_2 = L7_2[L8_2]
    if not L7_2 then
      L7_2 = 0
    end
    L8_2 = A0_2.counts
    L9_2 = L6_2.with
    L8_2 = L8_2[L9_2]
    if not L8_2 then
      L8_2 = 0
    end
    L9_2 = 1
    L10_2 = L7_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L6_2.what
      L14_2 = "_"
      L15_2 = _G
      L15_2 = L15_2.tostring
      L16_2 = L12_2
      L15_2 = L15_2(L16_2)
      L13_2 = L13_2 .. L14_2 .. L15_2
      L14_2 = L6_2.with
      L15_2 = "_"
      L16_2 = _G
      L16_2 = L16_2.tostring
      L17_2 = L12_2
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2 + L8_2
      L14_2 = L14_2 .. L15_2 .. L16_2
      L15_2 = _G
      L15_2 = L15_2.assert
      L16_2 = A0_2.world
      L16_2 = L16_2[L13_2]
      L16_2 = L16_2 ~= nil
      L17_2 = "block naming is not sequential"
      L15_2(L16_2, L17_2)
      L15_2 = _G
      L15_2 = L15_2.assert
      L16_2 = A0_2.world
      L16_2 = L16_2[L14_2]
      L16_2 = L16_2 == nil
      L17_2 = "attempting to overwrite existing block"
      L15_2(L16_2, L17_2)
      L15_2 = A0_2.world
      L16_2 = A0_2.world
      L16_2 = L16_2[L13_2]
      L15_2[L14_2] = L16_2
      L15_2 = A0_2.world
      L15_2 = L15_2[L14_2]
      L15_2.name = L14_2
      L15_2 = A0_2.world
      L15_2 = L15_2[L14_2]
      L16_2 = L6_2.with
      L15_2.definition = L16_2
      L15_2 = A0_2.world
      L15_2[L13_2] = nil
    end
    if 0 < L7_2 then
      L9_2 = A0_2.counts
      L10_2 = L6_2.with
      L11_2 = A0_2.counts
      L12_2 = L6_2.what
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2 + L8_2
      L9_2[L10_2] = L11_2
      L9_2 = A0_2.counts
      L10_2 = L6_2.what
      L9_2[L10_2] = nil
      L9_2 = "^"
      L10_2 = L6_2.what
      L11_2 = "_[0-9]+$"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L10_2 = _G
      L10_2 = L10_2.pairs
      L11_2 = A0_2.joints
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = _G
        L15_2 = L15_2.assert
        L16_2 = _G
        L16_2 = L16_2.string
        L16_2 = L16_2.find
        L17_2 = L14_2.end1
        L18_2 = L9_2
        L16_2 = L16_2(L17_2, L18_2)
        L16_2 = _G
        L16_2 = L16_2.string
        L16_2 = L16_2.find
        L17_2 = L14_2.end2
        L18_2 = L9_2
        L16_2 = L16_2(L17_2, L18_2)
        L16_2 = not L16_2 and L16_2
        L17_2 = "replacing blocks with joints attached is not supported"
        L15_2(L16_2, L17_2)
      end
    end
  end
end

replaceBlocks = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.counts
    L7_2 = L7_2[L6_2]
    if not L7_2 then
      L7_2 = 0
    end
    L8_2 = 1
    L9_2 = L7_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L6_2
      L13_2 = "_"
      L14_2 = _G
      L14_2 = L14_2.tostring
      L15_2 = L11_2
      L14_2 = L14_2(L15_2)
      L12_2 = L12_2 .. L13_2 .. L14_2
      L13_2 = _G
      L13_2 = L13_2.assert
      L14_2 = A0_2.world
      L14_2 = L14_2[L12_2]
      L14_2 = L14_2 ~= nil
      L15_2 = "block naming is not sequential"
      L13_2(L14_2, L15_2)
      L13_2 = A0_2.world
      L13_2[L12_2] = nil
    end
    if 0 < L7_2 then
      L8_2 = A0_2.counts
      L8_2[L6_2] = nil
      L8_2 = "^"
      L9_2 = L6_2
      L10_2 = "_[0-9]+$"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L9_2 = _G
      L9_2 = L9_2.pairs
      L10_2 = A0_2.joints
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = _G
        L14_2 = L14_2.string
        L14_2 = L14_2.find
        L15_2 = L13_2.end1
        L16_2 = L8_2
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          L14_2 = _G
          L14_2 = L14_2.string
          L14_2 = L14_2.find
          L15_2 = L13_2.end2
          L16_2 = L8_2
          L14_2 = L14_2(L15_2, L16_2)
          if not L14_2 then
            goto lbl_66
          end
        end
        L14_2 = A0_2.joints
        L14_2[L12_2] = nil
        ::lbl_66::
      end
    end
  end
end

filterBlocks = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = startedFromEditor
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = blockTable
  L1_2 = L1_2.blocks
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.supportedPlatforms
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = L1_2.supportedPlatforms
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = deviceModel
    if L6_2 == L7_2 then
      L7_2 = L1_2.supportedManufacturer
      if L7_2 == nil then
        L7_2 = true
        return L7_2
      else
        L7_2 = L1_2.supportedManufacturer
        L8_2 = deviceManufacturer
        L7_2 = L7_2 == L8_2
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end

isObjectAvailableForDevice = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L2_2 = objects
  L2_2 = L2_2.birdCameraData
  L3_2 = deviceModel
  L2_2 = L2_2[L3_2]
  L3_2 = objects
  L3_2 = L3_2.castleCameraData
  L4_2 = deviceModel
  L3_2 = L3_2[L4_2]
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.min
  L5_2 = L2_2.py
  L6_2 = L3_2.py
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.max
  L6_2 = L2_2.py
  L7_2 = L3_2.py
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = nil
  L7_2 = nil
  L8_2 = L2_2.px
  L9_2 = L3_2.px
  if L8_2 < L9_2 then
    L8_2 = L2_2.px
    L9_2 = L2_2.screenWidth
    L9_2 = L9_2 * 0.5
    L10_2 = L2_2.sx
    L9_2 = L9_2 / L10_2
    L6_2 = L8_2 - L9_2
    L8_2 = L3_2.px
    L9_2 = L3_2.screenWidth
    L9_2 = L9_2 * 0.5
    L10_2 = L3_2.sx
    L9_2 = L9_2 / L10_2
    L7_2 = L8_2 + L9_2
  else
    L8_2 = L3_2.px
    L9_2 = L3_2.screenWidth
    L9_2 = L9_2 * 0.5
    L10_2 = L3_2.sx
    L9_2 = L9_2 / L10_2
    L6_2 = L8_2 - L9_2
    L8_2 = L2_2.px
    L9_2 = L2_2.screenWidth
    L9_2 = L9_2 * 0.5
    L10_2 = L2_2.sx
    L9_2 = L9_2 / L10_2
    L7_2 = L8_2 + L9_2
  end
  L8_2 = L7_2 - L6_2
  L8_2 = L8_2 * 0.5
  L8_2 = L6_2 + L8_2
  L9_2 = L5_2 - L4_2
  L9_2 = L9_2 * 0.5
  L9_2 = L4_2 + L9_2
  L10_2 = screenWidth
  L10_2 = L10_2 * 0.5
  L11_2 = minWorldScale
  L10_2 = L10_2 / L11_2
  L10_2 = L8_2 - L10_2
  L11_2 = screenWidth
  L11_2 = L11_2 * 0.5
  L12_2 = minWorldScale
  L11_2 = L11_2 / L12_2
  L11_2 = L8_2 + L11_2
  L12_2 = screenHeight
  L12_2 = L12_2 * 0.5
  L13_2 = minWorldScale
  L12_2 = L12_2 / L13_2
  L12_2 = L9_2 - L12_2
  L13_2 = screenHeight
  L13_2 = L13_2 * 0.5
  L14_2 = minWorldScale
  L13_2 = L13_2 / L14_2
  L13_2 = L9_2 + L13_2
  L14_2 = worldToPhysicsTransform
  L15_2 = L10_2
  L16_2 = L12_2
  L14_2, L15_2 = L14_2(L15_2, L16_2)
  L16_2 = worldToPhysicsTransform
  L17_2 = L11_2
  L18_2 = L13_2
  L16_2, L17_2 = L16_2(L17_2, L18_2)
  L18_2 = {}
  g_killingVolumePhysics = L18_2
  L18_2 = g_killingVolumePhysics
  L18_2.left = L14_2
  L18_2 = g_killingVolumePhysics
  L18_2.right = L16_2
  L18_2 = g_killingVolumePhysics
  L18_2.top = L15_2
  L18_2 = g_killingVolumePhysics
  L18_2.bottom = L17_2
  L18_2 = _G
  L18_2 = L18_2.math
  L18_2 = L18_2.abs
  L19_2 = L16_2 - L14_2
  L18_2 = L18_2(L19_2)
  L19_2 = _G
  L19_2 = L19_2.math
  L19_2 = L19_2.abs
  L20_2 = L15_2 - L17_2
  L19_2 = L19_2(L20_2)
  L20_2 = L18_2 * 0.5
  L20_2 = L14_2 + L20_2
  L21_2 = L19_2 * 0.5
  L21_2 = L15_2 + L21_2
  L22_2 = g_killingVolumeOffsets
  L23_2 = deviceModel
  L22_2 = L22_2[L23_2]
  if not L22_2 then
    L22_2 = g_killingVolumeOffsets
    L22_2 = L22_2.default
  end
  if not A0_2 then
    A0_2 = L22_2.width
  end
  if not A1_2 then
    A1_2 = L22_2.height
  end
  L23_2 = L18_2 * A0_2
  L18_2 = L18_2 + L23_2
  L23_2 = L19_2 * A1_2
  L19_2 = L19_2 + L23_2
  L23_2 = L18_2 * 0.8
  L19_2 = L19_2 * 0.8
  L18_2 = L23_2
  L23_2 = g_killingVolumePhysics
  L24_2 = L18_2 * 0.5
  L24_2 = L20_2 - L24_2
  L23_2.left = L24_2
  L23_2 = g_killingVolumePhysics
  L24_2 = L18_2 * 0.5
  L24_2 = L20_2 + L24_2
  L23_2.right = L24_2
  L23_2 = g_killingVolumePhysics
  L24_2 = L19_2 * 0.5
  L24_2 = L21_2 - L24_2
  L23_2.top = L24_2
  L23_2 = g_killingVolumePhysics
  L24_2 = L19_2 * 0.5
  L24_2 = L21_2 + L24_2
  L23_2.bottom = L24_2
  L23_2 = createBox
  L24_2 = "killingBox"
  L25_2 = ""
  L26_2 = L20_2
  L27_2 = L21_2
  L28_2 = L18_2
  L29_2 = L19_2
  L30_2 = 0
  L31_2 = 1
  L32_2 = 1
  L33_2 = true
  L34_2 = false
  L35_2 = 0
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
  L23_2 = setObjectParameter
  L24_2 = "killingBox"
  L25_2 = 19
  L26_2 = 1
  L23_2(L24_2, L25_2, L26_2)
  L23_2 = setAsSensor
  L24_2 = "killingBox"
  L25_2 = true
  L23_2(L24_2, L25_2)
end

addKillingBox = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = setupDeviceTutorials
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = objects
  L2_2 = L2_2.world
  if L2_2 ~= nil then
    L2_2 = _G
    L2_2 = L2_2.pairs
    L3_2 = objects
    L3_2 = L3_2.world
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = objects
      L7_2 = L7_2.world
      L8_2 = L6_2.name
      L7_2 = L7_2[L8_2]
      if L7_2 ~= nil then
        L7_2 = objects
        L7_2 = L7_2.world
        L8_2 = L6_2.name
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.controllable
        if L7_2 then
          L7_2 = objects
          L7_2 = L7_2.world
          L8_2 = L6_2.name
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.definition
          L7_2 = L1_2[L7_2]
          if L7_2 ~= true then
            L7_2 = setupTutorial
            L8_2 = L6_2.name
            L9_2 = A0_2
            L7_2(L8_2, L9_2)
          end
          L7_2 = objects
          L7_2 = L7_2.world
          L8_2 = L6_2.name
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.definition
          L1_2[L7_2] = true
        end
      end
    end
  end
end

setupLevelTutorials = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = setupDeviceTutorials
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = birds
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.shot
    if not L7_2 then
      L7_2 = _G
      L7_2 = L7_2.table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.startNumber
    L3_3 = A1_3.startNumber
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.definition
    L8_2 = L2_2[L8_2]
    if not L8_2 then
      L8_2 = setupTutorial
      L9_2 = L7_2.name
      L10_2 = A0_2
      L8_2(L9_2, L10_2)
      L8_2 = L7_2.definition
      L2_2[L8_2] = true
    end
  end
end

setupBirdTutorials = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = menuManager
    L2_2 = L1_2
    L1_2 = L1_2.getRoot
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.getChild
    L3_2 = "gameHud"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.returnToGame
      L2_2(L3_2)
    end
  end
  L1_2 = OSX
  L1_2 = L1_2.using_mouse
  if not L1_2 then
    L1_2 = isInFullScreenMode
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = setupTutorial
      L2_2 = "gesture_shoot"
      L3_2 = A0_2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = setupTutorial
      L2_2 = "gesture_camera"
      L3_2 = A0_2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = setupTutorial
      L2_2 = "gesture_menu"
      L3_2 = A0_2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = setupTutorial
      L2_2 = "gesture_zoom"
      L3_2 = A0_2
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = deviceModel
  if L1_2 == "roku" then
    L1_2 = setupTutorial
    L2_2 = "roku_camera_pan"
    L3_2 = A0_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = setupTutorial
    L2_2 = "roku_camera_zoom"
    L3_2 = A0_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end

setupDeviceTutorials = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = newPortals
  if not L0_2 then
    return
  end
  L0_2 = 1
  L1_2 = newPortals
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = newPortals
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2.link
    if L5_2 == nil then
      L5_2 = 1
      L6_2 = newPortals
      L6_2 = #L6_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = L4_2.definition
        L10_2 = newPortals
        L10_2 = L10_2[L8_2]
        L10_2 = L10_2.definition
        if L9_2 == L10_2 then
          L9_2 = newPortals
          L9_2 = L9_2[L8_2]
          if L4_2 ~= L9_2 then
            L9_2 = newPortals
            L9_2 = L9_2[L8_2]
            L4_2.link = L9_2
          end
        end
      end
    end
  end
  L0_2 = nil
  newPortals = L0_2
end

connectPortals = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = setCurrentLevelPack
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = setLevelName
  L3_2 = levelOrder
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L2_2(L3_2)
  L2_2 = levelName
  L3_2 = g_oldLevelName
  if L2_2 ~= L3_2 then
    L2_2 = 0
    numberOfAttemptsInLevel = L2_2
  end
  L2_2 = setLevelFolder
  L3_2 = levelPath
  L4_2 = "/"
  L5_2 = A0_2
  L6_2 = "/"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "LEVEL FOLDER "
  L4_2 = levelFolder
  L5_2 = " Name: "
  L6_2 = levelName
  L7_2 = "\n"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L2_2(L3_2)
  L2_2 = print
  L3_2 = " changing scene to game with level: "
  L4_2 = levelFolder
  L5_2 = " / "
  L6_2 = levelName
  L7_2 = "\n"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L2_2(L3_2)
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_CHANGE_SCENE
  L4_2.id = L5_2
  L4_2.target = "GameScene"
  L2_2(L3_2, L4_2)
end

startGame = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = objects
  L2_2 = L2_2.compounds
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.name
    if L6_2 == A0_2 then
      return L5_2
    end
  end
  L1_2 = nil
  return L1_2
end

getCompoundObjectDefinition = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = {}
  L2_2 = objects
  L2_2 = L2_2.counts
  L2_2 = L2_2.compound
  if L2_2 == nil then
    L2_2 = objects
    L2_2 = L2_2.counts
    L2_2.compound = 0
  end
  L2_2 = objects
  L2_2 = L2_2.counts
  L3_2 = objects
  L3_2 = L3_2.counts
  L3_2 = L3_2.compound
  L3_2 = L3_2 + 1
  L2_2.compound = L3_2
  L2_2 = "compound_"
  L3_2 = objects
  L3_2 = L3_2.counts
  L3_2 = L3_2.compound
  L2_2 = L2_2 .. L3_2
  L1_2.name = L2_2
  L1_2.breakable = true
  L1_2.strength = 10
  L1_2.type = "compound"
  L3_2 = {}
  L1_2.blocks = L3_2
  L1_2.material = "tempCompound"
  L3_2 = 10000
  L4_2 = 10000
  L5_2 = -10000
  L6_2 = -10000
  L7_2 = nil
  L8_2 = nil
  L9_2 = #A0_2
  L10_2 = 1
  L11_2 = L9_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = A0_2[L13_2]
    L14_2 = L14_2.x
    L15_2 = A0_2[L13_2]
    L15_2 = L15_2.y
    L16_2 = _G
    L16_2 = L16_2.math
    L16_2 = L16_2.min
    L17_2 = L3_2
    L18_2 = L14_2
    L16_2 = L16_2(L17_2, L18_2)
    L3_2 = L16_2
    L16_2 = _G
    L16_2 = L16_2.math
    L16_2 = L16_2.min
    L17_2 = L4_2
    L18_2 = L15_2
    L16_2 = L16_2(L17_2, L18_2)
    L4_2 = L16_2
    L16_2 = _G
    L16_2 = L16_2.math
    L16_2 = L16_2.max
    L17_2 = L5_2
    L18_2 = L14_2
    L16_2 = L16_2(L17_2, L18_2)
    L5_2 = L16_2
    L16_2 = _G
    L16_2 = L16_2.math
    L16_2 = L16_2.max
    L17_2 = L6_2
    L18_2 = L15_2
    L16_2 = L16_2(L17_2, L18_2)
    L6_2 = L16_2
  end
  L10_2 = L5_2 - L3_2
  L10_2 = L10_2 * 0.5
  L7_2 = L3_2 + L10_2
  L10_2 = L6_2 - L4_2
  L10_2 = L10_2 * 0.5
  L8_2 = L4_2 + L10_2
  L1_2.x = L7_2
  L1_2.y = L8_2
  L1_2.angle = 0
  L10_2 = 1
  L11_2 = L9_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = {}
    L15_2 = A0_2[L13_2]
    L15_2 = L15_2.definition
    L14_2.definition = L15_2
    L15_2 = A0_2[L13_2]
    L15_2 = L15_2.x
    L15_2 = L15_2 - L7_2
    L14_2.x = L15_2
    L15_2 = A0_2[L13_2]
    L15_2 = L15_2.y
    L15_2 = L15_2 - L8_2
    L14_2.y = L15_2
    L15_2 = A0_2[L13_2]
    L15_2 = L15_2.angle
    L14_2.angle = L15_2
    L15_2 = _G
    L15_2 = L15_2.table
    L15_2 = L15_2.insert
    L16_2 = L1_2.blocks
    L17_2 = L14_2
    L15_2(L16_2, L17_2)
  end
  return L1_2
end

createCompoundObjectTableFromSingles = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = createObject
  L6_2 = blockTable
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = scaleFactor
  L9_2 = A2_2 * L9_2
  L10_2 = scaleFactor
  L10_2 = A3_2 * L10_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = setRotation
  L7_2 = A0_2
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L6_2 = blockTable
  L6_2 = L6_2.blocks
  L6_2 = L6_2[A1_2]
  L7_2 = blockTable
  L7_2 = L7_2.materials
  L8_2 = L6_2.material
  L7_2 = L7_2[L8_2]
  L8_2 = setMaterial
  L9_2 = A0_2
  L10_2 = L6_2.material
  L8_2(L9_2, L10_2)
end

spawnNewObject = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = {}
  L4_2 = A2_2.x
  L3_2.x = L4_2
  L4_2 = A2_2.y
  L3_2.y = L4_2
  L4_2 = A2_2.angle
  L3_2.angle = L4_2
  L3_2.type = "compound"
  L4_2 = A1_2.name
  L3_2.name = L4_2
  L4_2 = A0_2.materials
  L4_2 = L4_2.tempCompound
  L3_2.material = L4_2
  L4_2 = {}
  L3_2.children = L4_2
  L4_2 = 0.92
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = A1_2.blocks
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = {}
    L11_2 = L9_2.x
    L10_2.x = L11_2
    L11_2 = L9_2.y
    L10_2.y = L11_2
    L11_2 = L9_2.angle
    L10_2.angle = L11_2
    L11_2 = L9_2.definition
    L10_2.definition = L11_2
    L11_2 = A0_2.blocks
    L12_2 = L9_2.definition
    L11_2 = L11_2[L12_2]
    L10_2.blockData = L11_2
    L11_2 = L10_2.blockData
    L11_2 = L11_2.sprite
    if L11_2 ~= nil then
      L11_2 = _G
      L11_2 = L11_2.res
      L11_2 = L11_2.getSpriteBounds
      L12_2 = L10_2.blockData
      L12_2 = L12_2.sprite
      L11_2, L12_2 = L11_2(L12_2)
      L13_2 = 0.92
      L14_2 = 1
      L15_2 = L10_2.blockData
      L15_2 = L15_2.type
      if L15_2 == "box" then
        L15_2 = L10_2.blockData
        L15_2 = L15_2.width
        if L15_2 ~= nil then
          L15_2 = L10_2.blockData
          L15_2 = L15_2.height
          if L15_2 ~= nil then
            goto lbl_70
          end
        end
        L15_2 = L10_2.blockData
        L16_2 = physicsScale
        L16_2 = L11_2 * L16_2
        L16_2 = L16_2 * L4_2
        L15_2.width = L16_2
        L15_2 = L10_2.blockData
        L16_2 = physicsScale
        L16_2 = L12_2 * L16_2
        L16_2 = L16_2 * L4_2
        L15_2.height = L16_2
      else
        ::lbl_70::
        L15_2 = L10_2.blockData
        L15_2 = L15_2.type
        if L15_2 == "circle" then
          L15_2 = L10_2.blockData
          L15_2 = L15_2.radius
          if L15_2 == nil then
            L15_2 = L10_2.blockData
            L16_2 = L11_2 * 0.5
            L17_2 = physicsScale
            L16_2 = L16_2 * L17_2
            L16_2 = L16_2 * L4_2
            L15_2.radius = L16_2
        end
        else
          L15_2 = L10_2.blockData
          L15_2 = L15_2.type
          if L15_2 == "polygon" then
            L15_2 = {}
            L10_2.worldVertices = L15_2
            L15_2 = L10_2.blockData
            L15_2 = L15_2.density
            if L15_2 == 0 then
              L13_2 = 1
            end
            L15_2 = _G
            L15_2 = L15_2.res
            L15_2 = L15_2.getSpriteBounds
            L16_2 = L10_2.blockData
            L16_2 = L16_2.sprite
            L15_2, L16_2 = L15_2(L16_2)
            L12_2 = L16_2
            L11_2 = L15_2
            L15_2 = L10_2.blockData
            L15_2 = L15_2.width
            if L15_2 ~= nil then
              L15_2 = L10_2.blockData
              L15_2 = L15_2.height
              if L15_2 ~= nil then
                L15_2 = L10_2.blockData
                L11_2 = L15_2.width
                L15_2 = L10_2.blockData
                L12_2 = L15_2.height
            end
            else
              L15_2 = physicsScale
              L15_2 = L11_2 * L15_2
              L15_2 = L15_2 * L13_2
              L11_2 = L15_2 * L14_2
              L15_2 = physicsScale
              L15_2 = L12_2 * L15_2
              L15_2 = L15_2 * L13_2
              L12_2 = L15_2 * L14_2
            end
            L15_2 = _G
            L15_2 = L15_2.pairs
            L16_2 = L10_2.blockData
            L16_2 = L16_2.vertices
            L15_2, L16_2, L17_2 = L15_2(L16_2)
            for L18_2, L19_2 in L15_2, L16_2, L17_2 do
              L20_2 = {}
              L21_2 = L19_2.x
              L21_2 = L21_2 * L11_2
              L22_2 = L11_2 * 0.5
              L21_2 = L21_2 - L22_2
              L20_2.x = L21_2
              L21_2 = L19_2.y
              L21_2 = L21_2 * L12_2
              L22_2 = L12_2 * 0.5
              L21_2 = L21_2 - L22_2
              L20_2.y = L21_2
              L21_2 = _G
              L21_2 = L21_2.table
              L21_2 = L21_2.insert
              L22_2 = L10_2.worldVertices
              L23_2 = L20_2
              L21_2(L22_2, L23_2)
            end
          end
        end
      end
    end
    L11_2 = _G
    L11_2 = L11_2.table
    L11_2 = L11_2.insert
    L12_2 = L3_2.children
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L5_2 = createCompoundBodyFromTable
  L6_2 = L3_2
  L5_2(L6_2)
end

createCompoundObjectFromDefinition = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2
  L7_2 = clearShapesArray
  L7_2()
  L7_2 = {}
  L8_2 = objects
  L8_2 = L8_2.counts
  L8_2 = L8_2.compound
  if L8_2 == nil then
    L8_2 = objects
    L8_2 = L8_2.counts
    L8_2.compound = 0
  end
  L8_2 = objects
  L8_2 = L8_2.counts
  L9_2 = objects
  L9_2 = L9_2.counts
  L9_2 = L9_2.compound
  L9_2 = L9_2 + 1
  L8_2.compound = L9_2
  L8_2 = "compound_"
  L9_2 = objects
  L9_2 = L9_2.counts
  L9_2 = L9_2.compound
  L8_2 = L8_2 .. L9_2
  L7_2.name = L8_2
  L9_2 = {}
  L7_2.counts = L9_2
  L9_2 = A0_2.materials
  L9_2 = L9_2[A2_2]
  L10_2 = L9_2.density
  L11_2 = L9_2.friction
  L12_2 = L9_2.restitution
  L13_2 = L9_2.controllable
  L14_2 = L9_2.z_order
  L15_2 = L9_2.collision
  L16_2 = L9_2.strength
  L17_2 = L9_2.defence
  L18_2 = L9_2.damageFactors
  L19_2 = 10000
  L20_2 = 10000
  L21_2 = -10000
  L22_2 = -10000
  L23_2 = nil
  L24_2 = nil
  L25_2 = #A1_2
  if 0 < L25_2 then
    if 1 < L25_2 then
      L26_2 = 1
      L27_2 = L25_2
      L28_2 = 1
      for L29_2 = L26_2, L27_2, L28_2 do
        L30_2 = A3_2[L29_2]
        L31_2 = A4_2[L29_2]
        L32_2 = _G
        L32_2 = L32_2.math
        L32_2 = L32_2.min
        L33_2 = L19_2
        L34_2 = L30_2
        L32_2 = L32_2(L33_2, L34_2)
        L19_2 = L32_2
        L32_2 = _G
        L32_2 = L32_2.math
        L32_2 = L32_2.min
        L33_2 = L20_2
        L34_2 = L31_2
        L32_2 = L32_2(L33_2, L34_2)
        L20_2 = L32_2
        L32_2 = _G
        L32_2 = L32_2.math
        L32_2 = L32_2.max
        L33_2 = L21_2
        L34_2 = L30_2
        L32_2 = L32_2(L33_2, L34_2)
        L21_2 = L32_2
        L32_2 = _G
        L32_2 = L32_2.math
        L32_2 = L32_2.max
        L33_2 = L22_2
        L34_2 = L31_2
        L32_2 = L32_2(L33_2, L34_2)
        L22_2 = L32_2
      end
      L26_2 = L21_2 - L19_2
      L26_2 = L26_2 * 0.5
      L23_2 = L19_2 + L26_2
      L26_2 = L22_2 - L20_2
      L26_2 = L26_2 * 0.5
      L24_2 = L20_2 + L26_2
    else
      L26_2 = i
      L23_2 = A3_2[L26_2]
      L26_2 = i
      L24_2 = A4_2[L26_2]
    end
  else
    return
  end
  L26_2 = 1
  L27_2 = L25_2
  L28_2 = 1
  for L29_2 = L26_2, L27_2, L28_2 do
    L30_2 = ""
    L31_2 = A3_2[L29_2]
    L31_2 = L31_2 - L23_2
    L32_2 = A4_2[L29_2]
    L32_2 = L32_2 - L24_2
    L33_2 = A5_2[L29_2]
    L34_2 = A6_2[L29_2]
    L35_2 = A1_2[L29_2]
    L36_2 = A0_2.blocks
    L36_2 = L36_2[L35_2]
    L37_2 = 1
    L38_2 = nil
    L39_2 = nil
    if L14_2 == nil then
      L14_2 = 0
    end
    L40_2 = L36_2.sprite
    L41_2 = L36_2.controllable
    if L41_2 then
      L41_2 = L36_2.sprites
      if L41_2 ~= nil then
        L41_2 = L36_2.sprites
        L40_2 = L41_2.default
      end
    end
    L41_2 = 1
    L42_2 = 1
    L43_2 = 0.92
    if L40_2 == nil then
      L44_2 = L36_2.damageSprites
      if L44_2 ~= nil then
        L44_2 = L36_2.damageSprites
        L44_2 = L44_2.damage1
        L40_2 = L44_2.sprite
      end
    end
    L44_2 = L36_2.type
    if L44_2 ~= "box" then
      L44_2 = L36_2.type
      if L44_2 ~= "polygon" then
        L44_2 = L36_2.type
        if L44_2 ~= "line" then
          L44_2 = L36_2.type
          if L44_2 ~= "circle" then
            goto lbl_286
          end
        end
      end
    end
    if L40_2 ~= "" and L40_2 ~= nil then
      L44_2 = res
      L44_2 = L44_2.getSpriteBounds
      L45_2 = L40_2
      L44_2, L45_2 = L44_2(L45_2)
      L42_2 = L45_2
      L41_2 = L44_2
      L44_2 = res
      L44_2 = L44_2.getSpritePivot
      L45_2 = L40_2
      L44_2, L45_2 = L44_2(L45_2)
      L39_2 = L45_2
      L38_2 = L44_2
    end
    L44_2 = L36_2.density
    if L44_2 == 0 then
      L43_2 = 1
    end
    L44_2 = L36_2.width
    if L44_2 ~= nil then
      L44_2 = L36_2.height
      if L44_2 ~= nil then
        L41_2 = L36_2.width
        L42_2 = L36_2.height
    end
    else
      L44_2 = physicsScale
      L44_2 = L41_2 * L44_2
      L44_2 = L44_2 * L43_2
      L41_2 = L44_2 * L37_2
      L44_2 = physicsScale
      L44_2 = L42_2 * L44_2
      L44_2 = L44_2 * L43_2
      L42_2 = L44_2 * L37_2
    end
    if L15_2 == nil then
      L15_2 = true
    end
    L44_2 = L36_2.type
    if L44_2 == "box" then
      L44_2 = addBoxToCompoundList
      L45_2 = L40_2
      L46_2 = L31_2
      L47_2 = L32_2
      L48_2 = L33_2
      L49_2 = L41_2
      L50_2 = L42_2
      L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2)
    else
      L44_2 = L36_2.type
      if L44_2 ~= "polygon" then
        L44_2 = L36_2.type
        if L44_2 ~= "line" then
          goto lbl_252
        end
      end
      L44_2 = clearVertices
      L44_2()
      L44_2 = L36_2.vertices
      if L44_2 ~= nil then
        L44_2 = 1
        L45_2 = L36_2.vertices
        L45_2 = #L45_2
        L46_2 = 1
        for L47_2 = L44_2, L45_2, L46_2 do
          L48_2 = L36_2.vertices
          L48_2 = L48_2[L47_2]
          L49_2 = addVertex
          L50_2 = L48_2.x
          L50_2 = L50_2 * L41_2
          L51_2 = L41_2 * 0.5
          L50_2 = L50_2 - L51_2
          L51_2 = L48_2.y
          L51_2 = L51_2 * L42_2
          L52_2 = L42_2 * 0.5
          L51_2 = L51_2 - L52_2
          L49_2(L50_2, L51_2)
        end
      end
      L44_2 = L36_2.type
      if L44_2 == "polygon" then
        L44_2 = addPolygonToCompoundList
        L45_2 = L40_2
        L46_2 = L31_2
        L47_2 = L32_2
        L48_2 = L33_2
        L49_2 = L41_2
        L50_2 = L42_2
        L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2)
      else
        L44_2 = L36_2.type
        if L44_2 == "line" then
          L44_2 = addLineToCompoundList
          L45_2 = L40_2
          L46_2 = L31_2
          L47_2 = L32_2
          L48_2 = L33_2
          L49_2 = L41_2
          L50_2 = L42_2
          L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2)
          goto lbl_277
          ::lbl_252::
          L44_2 = L36_2.type
          if L44_2 == "circle" then
            L44_2 = L41_2 * 0.5
            L45_2 = physicsScale
            L44_2 = L44_2 * L45_2
            L44_2 = L44_2 * L43_2
            L41_2 = L44_2 * L37_2
            L44_2 = L36_2.radius
            if L44_2 ~= nil then
              L41_2 = L36_2.radius
            end
            if L15_2 == nil then
              L15_2 = true
            end
            if L34_2 ~= nil then
              L41_2 = L34_2
            end
            L44_2 = addCircleToCompoundList
            L45_2 = L40_2
            L46_2 = L31_2
            L47_2 = L32_2
            L48_2 = L33_2
            L49_2 = L41_2
            L44_2(L45_2, L46_2, L47_2, L48_2, L49_2)
          end
        end
      end
    end
    ::lbl_277::
    L44_2 = setCompoundShapeLinearDamping
    L45_2 = L30_2
    L46_2 = defaultPhysicsDrag
    L44_2(L45_2, L46_2)
    L44_2 = setCompoundShapeParameter
    L45_2 = L30_2
    L46_2 = 5
    L47_2 = L37_2
    L44_2(L45_2, L46_2, L47_2)
    ::lbl_286::
    L44_2 = L36_2.disableImmovableCollisions
    if L44_2 then
      L44_2 = setCompoundShapeParameter
      L45_2 = L30_2
      L46_2 = 15
      L47_2 = 1
      L44_2(L45_2, L46_2, L47_2)
    end
  end
  L26_2 = createCompoundObject
  L27_2 = L8_2
  L28_2 = L23_2
  L29_2 = L24_2
  L30_2 = 0
  L31_2 = L10_2
  L32_2 = L11_2
  L33_2 = L12_2
  L34_2 = L15_2
  L35_2 = L13_2
  L36_2 = L14_2
  L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  return L8_2
end

createCompoundObject = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2
  L11_2 = ""
  L12_2 = A0_2.blocks
  L12_2 = L12_2[A1_2]
  if L12_2 == nil then
    if A1_2 ~= nil then
      L13_2 = assert
      L14_2 = false
      L15_2 = "createObject: no definition for "
      L16_2 = A1_2
      L15_2 = L15_2 .. L16_2
      L13_2(L14_2, L15_2)
    else
      L13_2 = assert
      L14_2 = false
      L15_2 = "createObject: objectDefinition is nil"
      L13_2(L14_2, L15_2)
    end
    return
  end
  L13_2 = A0_2.materials
  L14_2 = L12_2.material
  L13_2 = L13_2[L14_2]
  L14_2 = L12_2.density
  L15_2 = L12_2.friction
  L16_2 = L12_2.restitution
  L17_2 = L12_2.controllable
  L18_2 = L12_2.strength
  L19_2 = L12_2.defence
  L20_2 = L12_2.damageFactors
  L21_2 = L12_2.levelGoal
  L22_2 = L12_2.collision
  L23_2 = L12_2.damageFactors
  L24_2 = L12_2.useLegacyCollisionPath
  L25_2 = L12_2.z_order
  L26_2 = L12_2.scale
  if not L26_2 then
    L26_2 = 1
  end
  L27_2 = L12_2.shotPattern
  L28_2 = screenHeight
  if L28_2 <= 240 and (A1_2 == "BLOCK_EULA_LINK_BUBBLE" or A1_2 == "BLOCK_PRIVACY_LINK_BUBBLE") then
    A8_2 = L26_2 * 1.8
    A9_2 = A8_2
  end
  L28_2 = A8_2 or L28_2
  if not A8_2 then
    L28_2 = L12_2.scaleX
    if not L28_2 then
      L28_2 = L12_2.scale
      if not L28_2 then
        L28_2 = 1
      end
    end
  end
  L29_2 = A9_2 or L29_2
  if not A9_2 then
    L29_2 = L12_2.scaleY
    if not L29_2 then
      L29_2 = L12_2.scale
      if not L29_2 then
        L29_2 = 1
      end
    end
  end
  L30_2 = L12_2.enableFlipping
  L31_2 = L12_2.horFlip
  L32_2 = L12_2.isSensor
  L33_2 = L12_2.sensorType
  L34_2 = L12_2.isWater
  L35_2 = nil
  L36_2 = nil
  L37_2 = L12_2.ignoreClassicGravity
  if L13_2 ~= nil then
    if L14_2 == nil then
      L14_2 = L13_2.density
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.density = L14_2
    end
    if L15_2 == nil then
      L15_2 = L13_2.friction
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.friction = L15_2
      L38_2 = _G
      L38_2 = L38_2.assert
      L39_2 = L15_2 ~= nil
      L40_2 = "object without friction "
      L41_2 = A1_2
      L42_2 = ", material: "
      L43_2 = A0_2.blocks
      L43_2 = L43_2[A1_2]
      L43_2 = L43_2.material
      L40_2 = L40_2 .. L41_2 .. L42_2 .. L43_2
      L38_2(L39_2, L40_2)
      if L15_2 == nil then
        L15_2 = 0
      end
    end
    if L16_2 == nil then
      L16_2 = L13_2.restitution
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.restitution = L16_2
    end
    if L17_2 == nil then
      L17_2 = L13_2.controllable
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.controllable = L17_2
    end
    if L18_2 == nil then
      L18_2 = L13_2.strength
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.strength = L18_2
    end
    if L19_2 == nil then
      L19_2 = L13_2.defence
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.defence = L19_2
    end
    if L23_2 == nil then
      L23_2 = L13_2.damageFactors
      if L23_2 == nil then
      end
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.damageFactors = L23_2
    end
    if L25_2 == nil then
      L25_2 = L13_2.z_order
      L38_2 = A0_2.blocks
      L38_2 = L38_2[A1_2]
      L38_2.z_order = L25_2
    end
    if L32_2 == nil then
      L32_2 = L13_2.isSensor
    end
    if L33_2 == nil then
      L33_2 = L13_2.sensorType
    end
    if L22_2 == nil then
      L22_2 = L13_2.collision
    end
    if L37_2 == nil then
      L37_2 = L13_2.ignoreClassicGravity
    end
  end
  if L25_2 == nil then
    L25_2 = 0
    L38_2 = A0_2.blocks
    L38_2 = L38_2[A1_2]
    L38_2.z_order = L25_2
  end
  L38_2 = countsSaved
  if L38_2 == false or A2_2 == nil and A2_2 ~= "BirdSimulation" then
    L38_2 = objects
    L38_2 = L38_2.counts
    L38_2 = L38_2[A1_2]
    if L38_2 == nil then
      L38_2 = objects
      L38_2 = L38_2.counts
      L38_2[A1_2] = 0
    end
    L38_2 = objects
    L38_2 = L38_2.counts
    L39_2 = objects
    L39_2 = L39_2.counts
    L39_2 = L39_2[A1_2]
    L39_2 = L39_2 + 1
    L38_2[A1_2] = L39_2
    L38_2 = A1_2
    L39_2 = "_"
    L40_2 = objects
    L40_2 = L40_2.counts
    L40_2 = L40_2[A1_2]
    L11_2 = L38_2 .. L39_2 .. L40_2
  else
    L11_2 = A2_2
  end
  L38_2 = L12_2.sprite
  L39_2 = applyLocalization
  if L39_2 then
    L39_2 = applyLocalization
    L39_2 = L39_2()
    if L39_2 then
      L39_2 = L12_2.localized
      if L39_2 then
        L39_2 = _G
        L39_2 = L39_2.res
        L39_2 = L39_2.getString
        L40_2 = "TEXTS_BASIC"
        L41_2 = L12_2.sprite
        L39_2 = L39_2(L40_2, L41_2)
        L38_2 = L39_2
      end
    end
  end
  L39_2 = L12_2.controllable
  if L39_2 then
    L39_2 = L12_2.sprites
    if L39_2 ~= nil then
      L39_2 = L12_2.sprites
      L38_2 = L39_2.default
    end
  end
  L39_2 = 1
  L40_2 = 1
  L41_2 = 0.92
  if L38_2 == nil then
    L42_2 = L12_2.damageSprites
    if L42_2 ~= nil then
      L42_2 = L12_2.damageSprites
      L42_2 = L42_2.damage1
      L38_2 = L42_2.sprite
    end
  end
  L42_2 = L12_2.type
  if L42_2 == "box" then
    if L38_2 ~= "" and L38_2 ~= nil then
      L42_2 = res
      L42_2 = L42_2.getSpriteBounds
      L43_2 = L38_2
      L42_2, L43_2 = L42_2(L43_2)
      L40_2 = L43_2
      L39_2 = L42_2
      L42_2 = res
      L42_2 = L42_2.getSpritePivot
      L43_2 = L38_2
      L42_2, L43_2 = L42_2(L43_2)
      L36_2 = L43_2
      L35_2 = L42_2
    end
    L42_2 = L12_2.density
    if L42_2 == 0 then
      L41_2 = 1
    end
    L42_2 = L12_2.width
    if L42_2 ~= nil then
      L42_2 = L12_2.height
      if L42_2 ~= nil then
        L39_2 = L12_2.width
        L40_2 = L12_2.height
    end
    else
      L42_2 = physicsScale
      L42_2 = L39_2 * L42_2
      L42_2 = L42_2 * L41_2
      L39_2 = L42_2 * L28_2
      L42_2 = physicsScale
      L42_2 = L40_2 * L42_2
      L42_2 = L42_2 * L41_2
      L40_2 = L42_2 * L29_2
    end
    if A6_2 ~= nil and A7_2 ~= nil then
      L42_2 = L12_2.saveWidthAndHeight
      if L42_2 then
        L39_2 = A6_2
        L40_2 = A7_2
      else
        L42_2 = A6_2 * L41_2
        L39_2 = L42_2 * L26_2
        L42_2 = A7_2 * L41_2
        L40_2 = L42_2 * L26_2
      end
    end
    if L22_2 == nil then
      L22_2 = true
    end
    L42_2 = createBox
    L43_2 = L11_2
    L44_2 = L38_2
    L45_2 = A3_2
    L46_2 = A4_2
    L47_2 = L39_2
    L48_2 = L40_2
    L49_2 = L14_2
    L50_2 = L15_2
    L51_2 = L16_2
    L52_2 = L22_2
    L53_2 = L17_2
    L54_2 = L25_2
    L42_2(L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2)
    if L17_2 then
      L42_2 = setLinearDamping
      L43_2 = L11_2
      L44_2 = 0
      L42_2(L43_2, L44_2)
    else
      L42_2 = setLinearDamping
      L43_2 = L11_2
      L44_2 = defaultPhysicsDrag
      L42_2(L43_2, L44_2)
    end
    L42_2 = setObjectParameter
    L43_2 = L11_2
    L44_2 = 5
    L45_2 = L26_2
    L42_2(L43_2, L44_2, L45_2)
    if A8_2 ~= nil then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 17
      L45_2 = L28_2
      L42_2(L43_2, L44_2, L45_2)
    end
    if A9_2 ~= nil then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 18
      L45_2 = L29_2
      L42_2(L43_2, L44_2, L45_2)
    end
    if L30_2 == true then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 9
      L45_2 = 1
      L42_2(L43_2, L44_2, L45_2)
    end
    if L31_2 == true then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 8
      L45_2 = 1
      L42_2(L43_2, L44_2, L45_2)
    end
  end
  L42_2 = L12_2.type
  if L42_2 ~= "polygon" then
    L42_2 = L12_2.type
    if L42_2 ~= "line" then
      goto lbl_504
    end
  end
  if L38_2 ~= "" and L38_2 ~= nil then
    L42_2 = res
    L42_2 = L42_2.getSpriteBounds
    L43_2 = L38_2
    L42_2, L43_2 = L42_2(L43_2)
    L40_2 = L43_2
    L39_2 = L42_2
    L42_2 = res
    L42_2 = L42_2.getSpritePivot
    L43_2 = L38_2
    L42_2, L43_2 = L42_2(L43_2)
    L36_2 = L43_2
    L35_2 = L42_2
  end
  L42_2 = L12_2.density
  if L42_2 == 0 then
    L41_2 = 1
  end
  L42_2 = L12_2.width
  if L42_2 ~= nil then
    L42_2 = L12_2.height
    if L42_2 ~= nil then
      L39_2 = L12_2.width
      L40_2 = L12_2.height
  end
  else
    L42_2 = physicsScale
    L42_2 = L39_2 * L42_2
    L42_2 = L42_2 * L41_2
    L39_2 = L42_2 * L28_2
    L42_2 = physicsScale
    L42_2 = L40_2 * L42_2
    L42_2 = L42_2 * L41_2
    L40_2 = L42_2 * L29_2
  end
  L42_2 = L12_2.useOptionalDimensions
  if L42_2 and A6_2 ~= nil and A7_2 ~= nil then
    L42_2 = physicsScale
    L42_2 = A6_2 * L42_2
    L39_2 = L42_2 * L26_2
    L42_2 = physicsScale
    L42_2 = A7_2 * L42_2
    L40_2 = L42_2 * L26_2
  end
  if L22_2 == nil then
    L22_2 = true
  end
  L42_2 = clearVertices
  L42_2()
  L42_2 = A10_2 or L42_2
  if not A10_2 then
    L42_2 = L12_2.vertices
  end
  if L42_2 ~= nil then
    L43_2 = 1
    L44_2 = #L42_2
    L45_2 = 1
    for L46_2 = L43_2, L44_2, L45_2 do
      L47_2 = L42_2[L46_2]
      L48_2 = addVertex
      L49_2 = L47_2.x
      L49_2 = L49_2 * L39_2
      L50_2 = L39_2 * 0.5
      L49_2 = L49_2 - L50_2
      L50_2 = L47_2.y
      L50_2 = L50_2 * L40_2
      L51_2 = L40_2 * 0.5
      L50_2 = L50_2 - L51_2
      L48_2(L49_2, L50_2)
    end
  end
  L43_2 = L12_2.type
  if L43_2 == "polygon" then
    L43_2 = createPolygon
    L44_2 = L11_2
    L45_2 = L38_2
    L46_2 = A3_2
    L47_2 = A4_2
    L48_2 = L39_2
    L49_2 = L40_2
    L50_2 = L14_2
    L51_2 = L15_2
    L52_2 = L16_2
    L53_2 = L22_2
    L54_2 = L17_2
    L55_2 = L25_2
    L43_2(L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
  else
    L43_2 = L12_2.type
    if L43_2 == "line" then
      L43_2 = createLineShape
      L44_2 = L11_2
      L45_2 = L38_2
      L46_2 = A3_2
      L47_2 = A4_2
      L48_2 = L39_2
      L49_2 = L40_2
      L50_2 = L14_2
      L51_2 = L15_2
      L52_2 = L16_2
      L53_2 = L22_2
      L54_2 = L17_2
      L55_2 = L25_2
      L43_2(L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
    end
  end
  if L17_2 then
    L43_2 = setLinearDamping
    L44_2 = L11_2
    L45_2 = 0
    L43_2(L44_2, L45_2)
  else
    L43_2 = setLinearDamping
    L44_2 = L11_2
    L45_2 = defaultPhysicsDrag
    L43_2(L44_2, L45_2)
  end
  L43_2 = setObjectParameter
  L44_2 = L11_2
  L45_2 = 5
  L46_2 = L26_2
  L43_2(L44_2, L45_2, L46_2)
  if A8_2 ~= nil then
    L43_2 = setObjectParameter
    L44_2 = L11_2
    L45_2 = 17
    L46_2 = L28_2
    L43_2(L44_2, L45_2, L46_2)
  end
  if A9_2 ~= nil then
    L43_2 = setObjectParameter
    L44_2 = L11_2
    L45_2 = 18
    L46_2 = L29_2
    L43_2(L44_2, L45_2, L46_2)
  end
  if L30_2 == true then
    L43_2 = setObjectParameter
    L44_2 = L11_2
    L45_2 = 9
    L46_2 = 1
    L43_2(L44_2, L45_2, L46_2)
  end
  if L31_2 == true then
    L43_2 = setObjectParameter
    L44_2 = L11_2
    L45_2 = 8
    L46_2 = 1
    L43_2(L44_2, L45_2, L46_2)
  end
  ::lbl_504::
  L42_2 = L12_2.type
  if L42_2 == "circle" then
    L42_2 = res
    L42_2 = L42_2.getSpriteBounds
    L43_2 = L38_2
    L42_2, L43_2 = L42_2(L43_2)
    L40_2 = L43_2
    L39_2 = L42_2
    L42_2 = res
    L42_2 = L42_2.getSpritePivot
    L43_2 = L38_2
    L42_2, L43_2 = L42_2(L43_2)
    L36_2 = L43_2
    L35_2 = L42_2
    L42_2 = L39_2 * 0.5
    L43_2 = physicsScale
    L42_2 = L42_2 * L43_2
    L42_2 = L42_2 * L41_2
    L39_2 = L42_2 * L28_2
    L42_2 = L12_2.radius
    if L42_2 ~= nil then
      L39_2 = L12_2.radius
    else
      L12_2.radius = L39_2
    end
    if L22_2 == nil then
      L22_2 = true
    end
    if A5_2 ~= nil then
      L39_2 = A5_2
    end
    L42_2 = createCircle
    L43_2 = L11_2
    L44_2 = L38_2
    L45_2 = A3_2
    L46_2 = A4_2
    L47_2 = L39_2
    L48_2 = L14_2
    L49_2 = L15_2
    L50_2 = L16_2
    L51_2 = L22_2
    L52_2 = L17_2
    L53_2 = L25_2
    L42_2(L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2)
    if L17_2 then
      L42_2 = setLinearDamping
      L43_2 = L11_2
      L44_2 = 0
      L42_2(L43_2, L44_2)
    else
      L42_2 = setLinearDamping
      L43_2 = L11_2
      L44_2 = defaultPhysicsDrag
      L42_2(L43_2, L44_2)
    end
    L42_2 = setObjectParameter
    L43_2 = L11_2
    L44_2 = 5
    L45_2 = L26_2
    L42_2(L43_2, L44_2, L45_2)
    if A8_2 ~= nil then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 17
      L45_2 = L28_2
      L42_2(L43_2, L44_2, L45_2)
    end
    if A9_2 ~= nil then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 18
      L45_2 = L29_2
      L42_2(L43_2, L44_2, L45_2)
    end
    if L30_2 == true then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 9
      L45_2 = 1
      L42_2(L43_2, L44_2, L45_2)
    end
    if L31_2 == true then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 8
      L45_2 = 1
      L42_2(L43_2, L44_2, L45_2)
    end
    if L17_2 then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L42_2.useLegacyCollisionPath = L24_2
    end
  end
  if L32_2 then
    L42_2 = setAsSensor
    L43_2 = L11_2
    L44_2 = true
    L42_2(L43_2, L44_2)
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.sensorType = L33_2
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.isSensor = L32_2
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.isWater = L34_2
    if L34_2 then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.waterDensityZeroLevel
      L42_2.waterDensityZeroLevel = L43_2
    end
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L43_2 = L12_2.isEmittedParticle
    L42_2.isEmittedParticle = L43_2
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L43_2 = L12_2.isSword
    L42_2.isSword = L43_2
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2 = L42_2.sensorType
    if L42_2 == "gravitation" then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.gravitationMinForce
      L42_2.gravitationMinForce = L43_2
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.gravitationMaxForce
      L42_2.gravitationMaxForce = L43_2
    end
    L42_2 = L12_2.type
    if L42_2 == "box" then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L42_2 = L42_2.isEmittedParticle
      if not L42_2 then
        L42_2 = objects
        L42_2 = L42_2.world
        L42_2 = L42_2[L11_2]
        L42_2 = L42_2.isSword
        if not L42_2 then
          goto lbl_682
        end
      end
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.height
      if not L43_2 then
        L43_2 = 1
      end
      L42_2.height = L43_2
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.width
      if not L43_2 then
        L43_2 = 1
      end
      L42_2.width = L43_2
      goto lbl_705
      ::lbl_682::
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.height
      L42_2.height = L43_2
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.width
      L42_2.width = L43_2
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.forceAngle
      if not L43_2 then
        L43_2 = 0
      end
      L42_2.forceAngle = L43_2
    else
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L42_2.radius = L39_2
    end
    ::lbl_705::
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L43_2 = L12_2.ignoreBirds
    L42_2.ignoreBirds = L43_2
    L42_2 = objects
    L42_2 = L42_2.sensorList
    L42_2 = L42_2[L33_2]
    if L42_2 ~= nil then
      L42_2 = objects
      L42_2 = L42_2.sensorList
      L42_2 = L42_2[L33_2]
      L43_2 = objects
      L43_2 = L43_2.world
      L43_2 = L43_2[L11_2]
      L42_2[L11_2] = L43_2
    end
    L42_2 = L12_2.canBeEdited
    if L42_2 then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L42_2 = L42_2.sensorType
      if L42_2 == "stream" then
        L42_2 = objects
        L42_2 = L42_2.world
        L42_2 = L42_2[L11_2]
        L43_2 = L12_2.nodes
        L42_2.nodes = L43_2
        L42_2 = objects
        L42_2 = L42_2.world
        L42_2 = L42_2[L11_2]
        L43_2 = L12_2.radius
        L42_2.radius = L43_2
        L42_2 = objects
        L42_2 = L42_2.world
        L42_2 = L42_2[L11_2]
        L43_2 = L12_2.force
        L42_2.force = L43_2
        L42_2 = objects
        L42_2 = L42_2.world
        L42_2 = L42_2[L11_2]
        L43_2 = L12_2.vertices
        L42_2.vertices = L43_2
        L42_2 = print
        L43_2 = "LOADING STREAM NODES:"
        L42_2(L43_2)
        L42_2 = _G
        L42_2 = L42_2.pairs
        L43_2 = objects
        L43_2 = L43_2.world
        L43_2 = L43_2[L11_2]
        L43_2 = L43_2.nodes
        L42_2, L43_2, L44_2 = L42_2(L43_2)
        for L45_2, L46_2 in L42_2, L43_2, L44_2 do
          L47_2 = print
          L48_2 = "x: "
          L49_2 = L46_2.x
          L50_2 = " Y: "
          L51_2 = L46_2.y
          L48_2 = L48_2 .. L49_2 .. L50_2 .. L51_2
          L47_2(L48_2)
        end
      end
    end
    L42_2 = setObjectParameter
    L43_2 = L11_2
    L44_2 = 20
    L45_2 = 1
    L42_2(L43_2, L44_2, L45_2)
    if L33_2 == "gravitation" then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 21
      L45_2 = 2
      L42_2(L43_2, L44_2, L45_2)
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 25
      L45_2 = L12_2.gravitationMinForce
      L42_2(L43_2, L44_2, L45_2)
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 26
      L45_2 = L12_2.gravitationMaxForce
      L42_2(L43_2, L44_2, L45_2)
    elseif L33_2 == "stream" then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 21
      L45_2 = 3
      L42_2(L43_2, L44_2, L45_2)
    end
    L42_2 = L12_2.gravityCollisionMask
    if L42_2 ~= nil then
      L42_2 = g_gravityFiltersMasks
      L43_2 = L12_2.gravityCollisionMask
      L42_2 = L42_2[L43_2]
      if L42_2 ~= nil then
        L42_2 = setSensorGravityMask
        L43_2 = L11_2
        L44_2 = g_gravityFiltersMasks
        L45_2 = L12_2.gravityCollisionMask
        L44_2 = L44_2[L45_2]
        L42_2(L43_2, L44_2)
      end
    end
    L42_2 = L12_2.active
    if L42_2 == true then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L42_2.active = true
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 22
      L45_2 = 1
      L42_2(L43_2, L44_2, L45_2)
    else
      L42_2 = L12_2.active
      if L42_2 == false then
        L42_2 = objects
        L42_2 = L42_2.world
        L42_2 = L42_2[L11_2]
        L42_2.active = false
        L42_2 = setObjectParameter
        L43_2 = L11_2
        L44_2 = 22
        L45_2 = 0
        L42_2(L43_2, L44_2, L45_2)
      end
    end
    L42_2 = L12_2.type
    if L42_2 == "box" then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 24
      L45_2 = 1
      L42_2(L43_2, L44_2, L45_2)
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 28
      L45_2 = L12_2.width
      if not L45_2 then
        L45_2 = 1
      end
      L42_2(L43_2, L44_2, L45_2)
      L42_2 = L12_2.forceAngle
      if L42_2 ~= nil then
        L42_2 = setObjectParameter
        L43_2 = L11_2
        L44_2 = 29
        L45_2 = L12_2.forceAngle
        L42_2(L43_2, L44_2, L45_2)
      end
    else
      L42_2 = L12_2.type
      if L42_2 == "polygon" then
      else
        L42_2 = setObjectParameter
        L43_2 = L11_2
        L44_2 = 24
        L45_2 = 0
        L42_2(L43_2, L44_2, L45_2)
        L42_2 = setObjectParameter
        L43_2 = L11_2
        L44_2 = 27
        L45_2 = L39_2
        L42_2(L43_2, L44_2, L45_2)
      end
    end
  end
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.resistsExplosion
  L42_2.resistsExplosion = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onTriggerExit
  L42_2.onTriggerExit = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onTriggerEnter
  L42_2.onTriggerEnter = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onJointRemoved
  L42_2.onJointRemoved = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onCollisionEnter
  L42_2.onCollisionEnter = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onDestroyed
  L42_2.onDestroyed = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onCreated
  L42_2.onCreated = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onCollisionExit
  L42_2.onCollisionExit = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onReceivedExplosionDamage
  L42_2.onReceivedExplosionDamage = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onReceivedExplosionForce
  L42_2.onReceivedExplosionForce = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onReceivedFreezeForce
  L42_2.onReceivedFreezeForce = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.onDamageStateChanged
  L42_2.onDamageStateChanged = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.saveWidthAndHeight
  L42_2.saveWidthAndHeight = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2 = L42_2.onCreated
  if L42_2 ~= nil then
    L42_2 = L12_2.episodeType
    if L42_2 then
      L42_2 = fireAction
      L43_2 = objects
      L43_2 = L43_2.world
      L43_2 = L43_2[L11_2]
      L43_2 = L43_2.onCreated
      L44_2 = {}
      L44_2.name = L11_2
      L42_2(L43_2, L44_2)
    else
      L42_2 = _G
      L42_2 = L42_2.type
      L43_2 = objects
      L43_2 = L43_2.world
      L43_2 = L43_2[L11_2]
      L43_2 = L43_2.onCreated
      L42_2 = L42_2(L43_2)
      if L42_2 == "table" then
        L42_2 = _G
        L42_2 = L42_2.ipairs
        L43_2 = objects
        L43_2 = L43_2.world
        L43_2 = L43_2[L11_2]
        L43_2 = L43_2.onCreated
        L42_2, L43_2, L44_2 = L42_2(L43_2)
        for L45_2, L46_2 in L42_2, L43_2, L44_2 do
          L47_2 = addEventCall
          L48_2 = L46_2
          L49_2 = {}
          L49_2.name = L11_2
          L47_2(L48_2, L49_2)
        end
      else
        L42_2 = addEventCall
        L43_2 = objects
        L43_2 = L43_2.world
        L43_2 = L43_2[L11_2]
        L43_2 = L43_2.onCreated
        L44_2 = {}
        L44_2.name = L11_2
        L42_2(L43_2, L44_2)
      end
    end
  end
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.shotPattern = L27_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = objects
  L43_2 = L43_2.world
  L43_2 = L43_2[L11_2]
  L43_2 = L43_2.x
  L42_2.startingX = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = objects
  L43_2 = L43_2.world
  L43_2 = L43_2[L11_2]
  L43_2 = L43_2.y
  L42_2.startingY = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = objects
  L43_2 = L43_2.world
  L43_2 = L43_2[L11_2]
  L43_2 = L43_2.angle
  L42_2.startingAngle = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = getCurrentTime
  L43_2 = L43_2()
  L42_2.timeCreated = L43_2
  L42_2 = L12_2.gravityFilterCategory
  if L42_2 ~= nil then
    L42_2 = g_gravityFiltersCategories
    L43_2 = L12_2.gravityFilterCategory
    L42_2 = L42_2[L43_2]
    if L42_2 ~= nil and L11_2 ~= "BirdSimulation" then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.gravityFilterCategory
      L42_2.gravityFilterCategory = L43_2
      L42_2 = setObjectGravityCategory
      L43_2 = L11_2
      L44_2 = g_gravityFiltersCategories
      L45_2 = L12_2.gravityFilterCategory
      L44_2 = L44_2[L45_2]
      L42_2(L43_2, L44_2)
    end
  end
  if L37_2 ~= nil then
    if L37_2 then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 16
      L45_2 = 1
      L42_2(L43_2, L44_2, L45_2)
    else
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 16
      L45_2 = 0
      L42_2(L43_2, L44_2, L45_2)
    end
  end
  L42_2 = L12_2.collisionGroupName
  if L42_2 ~= nil then
    L42_2 = collisionGroupNameToNumber
    if L42_2 then
      L42_2 = setObjectParameter
      L43_2 = L11_2
      L44_2 = 36
      L45_2 = collisionGroupNameToNumber
      L46_2 = L12_2.collisionGroupName
      L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2 = L45_2(L46_2)
      L42_2(L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
    end
  end
  L42_2 = L12_2.collisionGroupIndex
  if L42_2 then
    L42_2 = setObjectParameter
    L43_2 = L11_2
    L44_2 = 36
    L45_2 = L12_2.collisionGroupIndex
    L42_2(L43_2, L44_2, L45_2)
  end
  L42_2 = L12_2.collideOnlyWithMaterials
  if L42_2 then
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L43_2 = L12_2.collideOnlyWithMaterials
    L42_2.collisionMaterials = L43_2
    L42_2 = native_setBlockCollisionEnabled
    L43_2 = L11_2
    L44_2 = false
    L42_2(L43_2, L44_2)
  end
  L42_2 = L12_2.ignoreCollisionWithMaterials
  if L42_2 then
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L43_2 = L12_2.ignoreCollisionWithMaterials
    L42_2.ignoreCollisionMaterials = L43_2
    L42_2 = native_setIgnoreCollisionWithMaterials
    L43_2 = L11_2
    L44_2 = true
    L42_2(L43_2, L44_2)
  end
  L42_2 = L12_2.scoreMultiplier
  if L42_2 then
    L42_2 = native_setScoreMultiplier
    L43_2 = L11_2
    L44_2 = L12_2.scoreMultiplier
    L42_2(L43_2, L44_2)
  end
  L42_2 = L12_2.canBeEdited
  if L42_2 then
    L42_2 = L12_2.explosionRadius
    if L42_2 ~= nil then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.explosionRadius
      L42_2.explosionRadius = L43_2
    end
    L42_2 = L12_2.explosionForce
    if L42_2 ~= nil then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.explosionForce
      L42_2.explosionForce = L43_2
    end
    L42_2 = L12_2.explosionDamageRadius
    if L42_2 ~= nil then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.explosionDamageRadius
      L42_2.explosionDamageRadius = L43_2
    end
    L42_2 = L12_2.explosionDamage
    if L42_2 ~= nil then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.explosionDamage
      L42_2.explosionDamage = L43_2
    end
    L42_2 = L12_2.startingForce
    if L42_2 ~= nil then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.startingForce
      L42_2.startingForce = L43_2
    end
    L42_2 = L12_2.forceAngle
    if L42_2 ~= nil then
      L42_2 = objects
      L42_2 = L42_2.world
      L42_2 = L42_2[L11_2]
      L43_2 = L12_2.forceAngle
      L42_2.forceAngle = L43_2
    end
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.canBeEdited = true
  end
  L42_2 = L12_2.disableImmovableCollisions
  if L42_2 then
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.disableImmovableCollisions = true
    L42_2 = setObjectParameter
    L43_2 = L11_2
    L44_2 = 15
    L45_2 = 1
    L42_2(L43_2, L44_2, L45_2)
  end
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.damageFactors = L23_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.definition = A1_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.damageSprite = L38_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.controllable = L17_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.strength = L18_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.defence = L19_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.material
  L42_2.material = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L43_2 = L12_2.themed
  L42_2.themed = L43_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.levelGoal = L21_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.spritePivotX = L35_2
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2.spritePivotY = L36_2
  L42_2 = native_setWaterDensity
  L43_2 = L11_2
  L44_2 = getWaterDensity
  L45_2 = objects
  L45_2 = L45_2.world
  L45_2 = L45_2[L11_2]
  L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2 = L44_2(L45_2)
  L42_2(L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
  L42_2 = L12_2.editableAttributes
  if L42_2 then
    L42_2 = _G
    L42_2 = L42_2.ipairs
    L43_2 = L12_2.editableAttributes
    L42_2, L43_2, L44_2 = L42_2(L43_2)
    for L45_2, L46_2 in L42_2, L43_2, L44_2 do
      L47_2 = L12_2[L46_2]
      if L47_2 ~= nil then
        L47_2 = objects
        L47_2 = L47_2.world
        L47_2 = L47_2[L11_2]
        L48_2 = L12_2[L46_2]
        L47_2[L46_2] = L48_2
      end
    end
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L43_2 = L12_2.editableAttributes
    L42_2.editableAttributes = L43_2
  end
  L42_2 = L12_2.animations
  if L42_2 ~= nil then
    L42_2 = initObjectAnimation
    L43_2 = objects
    L43_2 = L43_2.world
    L43_2 = L43_2[L11_2]
    L44_2 = L12_2
    L42_2(L43_2, L44_2)
  end
  if L33_2 and L33_2 == "portal" then
    L42_2 = newPortals
    if L42_2 == nil then
      L42_2 = {}
      newPortals = L42_2
    end
    L42_2 = newPortals
    L43_2 = newPortals
    L43_2 = #L43_2
    L43_2 = L43_2 + 1
    L44_2 = objects
    L44_2 = L44_2.world
    L44_2 = L44_2[L11_2]
    L42_2[L43_2] = L44_2
  end
  L42_2 = L12_2.emitParticles
  if L42_2 then
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.emitParticles = true
  end
  L42_2 = objects
  L42_2 = L42_2.world
  L42_2 = L42_2[L11_2]
  L42_2 = L42_2.isSensor
  if L42_2 then
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2 = L42_2.sensorType
    if L42_2 == "killing" then
      goto lbl_1309
    end
  end
  L42_2 = L12_2.saveWidthAndHeight
  ::lbl_1309::
  if L42_2 and A7_2 ~= nil and A6_2 ~= nil then
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.height = A7_2
    L42_2 = objects
    L42_2 = L42_2.world
    L42_2 = L42_2[L11_2]
    L42_2.width = A6_2
  end
  L42_2 = L12_2.ignoresScore
  if L42_2 then
    L42_2 = native_setIgnoresScore
    L43_2 = L11_2
    L44_2 = true
    L42_2(L43_2, L44_2)
  end
  if L17_2 then
    L42_2 = actions
    if L42_2 then
      L42_2 = actions
      L42_2 = L42_2.handleStateChange
      if L42_2 then
        L42_2 = actions
        L42_2 = L42_2.handleStateChange
        L43_2 = L11_2
        L44_2 = L12_2.states
        if L44_2 then
          L44_2 = L12_2.states
          L44_2 = L44_2.default
        end
        L42_2(L43_2, L44_2)
      end
    end
  end
  return L11_2
end

createObject = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.currentAnimation
  if L3_2 ~= A2_2 then
    L3_2 = A1_2.animations
    L3_2 = L3_2[A2_2]
    L4_2 = L3_2.frameTime
    if L4_2 ~= nil then
      A0_2.currentAnimation = A2_2
      A0_2.currentSubAnimation = 1
      L4_2 = L3_2.idleTime
      if L4_2 ~= nil then
        L4_2 = _G
        L4_2 = L4_2.math
        L4_2 = L4_2.random
        L5_2 = L3_2.idleTime
        L5_2 = L5_2[1]
        L5_2 = L5_2 * 100
        L6_2 = L3_2.idleTime
        L6_2 = L6_2[2]
        L6_2 = L6_2 * 100
        L4_2 = L4_2(L5_2, L6_2)
        L4_2 = L4_2 / 100
        A0_2.idleTimer = L4_2
      end
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.random
      L5_2 = 1
      L6_2 = L3_2.sprites
      L7_2 = A0_2.currentSubAnimation
      L6_2 = L6_2[L7_2]
      L6_2 = #L6_2
      L4_2 = L4_2(L5_2, L6_2)
      A0_2.animFrame = L4_2
      L4_2 = L3_2.sprites
      L5_2 = A0_2.currentSubAnimation
      L4_2 = L4_2[L5_2]
      L5_2 = A0_2.animFrame
      L4_2 = L4_2[L5_2]
      L5_2 = setSprite
      L6_2 = A0_2.name
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.random
      L6_2 = L3_2.frameTime
      L6_2 = L6_2[1]
      L6_2 = L6_2 * 100
      L7_2 = L3_2.frameTime
      L7_2 = L7_2[2]
      L7_2 = L7_2 * 100
      L5_2 = L5_2(L6_2, L7_2)
      L5_2 = L5_2 / 100
      A0_2.animFrameTime = L5_2
      L5_2 = L3_2.disableRotation
      A0_2.disableRotation = L5_2
      L5_2 = A0_2.disableRotation
      if L5_2 == true then
        L5_2 = setObjectParameter
        L6_2 = A0_2.name
        L7_2 = 10
        L8_2 = 1
        L5_2(L6_2, L7_2, L8_2)
      else
        L5_2 = setObjectParameter
        L6_2 = A0_2.name
        L7_2 = 10
        L8_2 = 0
        L5_2(L6_2, L7_2, L8_2)
      end
      L5_2 = createAnimationParticles
      L6_2 = A0_2
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
      return L4_2
    end
    L4_2 = ""
    return L4_2
  else
    L3_2 = A1_2.animations
    L4_2 = A0_2.currentAnimation
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.sprites
    L4_2 = A0_2.currentSubAnimation
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2.animFrame
    L3_2 = L3_2[L4_2]
    return L3_2
  end
end

setObjectAnimation = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.animations
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.particles
  if L3_2 == nil then
    return
  end
  L3_2 = A1_2.animations
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.particles
  if L3_2 then
    L4_2 = fireAction
    L5_2 = "spawnParticles"
    L6_2 = {}
    L7_2 = A0_2.name
    L6_2.name = L7_2
    L6_2.particles = L3_2
    L4_2(L5_2, L6_2)
  end
end

createAnimationParticles = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = A1_2.animations
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_2[L10_2]
    L11_2 = L11_2.defaultAnim
    if L11_2 == true then
      L2_2 = L10_2
    end
    L11_2 = L6_2[L10_2]
    L11_2 = L11_2.deathAnim
    if L11_2 == true then
      L3_2 = L10_2
    end
    L11_2 = L6_2[L10_2]
    L11_2 = L11_2.laughAnim
    if L11_2 == true then
      L4_2 = L10_2
    end
    L11_2 = L6_2[L10_2]
    L11_2 = L11_2.laughJointedAnim
    if L11_2 == true then
      L5_2 = L10_2
    end
  end
  A0_2.defaultAnim = L2_2
  A0_2.deathAnim = L3_2
  A0_2.laughAnim = L4_2
  A0_2.laughJointedAnim = L5_2
  L7_2 = L6_2[L2_2]
  L7_2 = L7_2.frameTime
  if L7_2 ~= nil then
    A0_2.currentAnimation = L2_2
    A0_2.currentSubAnimation = 1
    L7_2 = L6_2[L2_2]
    L7_2 = L7_2.idleTime
    if L7_2 ~= nil then
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.random
      L8_2 = L6_2[L2_2]
      L8_2 = L8_2.idleTime
      L8_2 = L8_2[1]
      L8_2 = L8_2 * 100
      L9_2 = L6_2[L2_2]
      L9_2 = L9_2.idleTime
      L9_2 = L9_2[2]
      L9_2 = L9_2 * 100
      L7_2 = L7_2(L8_2, L9_2)
      L7_2 = L7_2 / 100
      A0_2.idleTimer = L7_2
    end
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.random
    L8_2 = 1
    L9_2 = L6_2[L2_2]
    L9_2 = L9_2.sprites
    L10_2 = A0_2.currentSubAnimation
    L9_2 = L9_2[L10_2]
    L9_2 = #L9_2
    L7_2 = L7_2(L8_2, L9_2)
    A0_2.animFrame = L7_2
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.random
    L8_2 = L6_2[L2_2]
    L8_2 = L8_2.frameTime
    L8_2 = L8_2[1]
    L8_2 = L8_2 * 100
    L9_2 = L6_2[L2_2]
    L9_2 = L9_2.frameTime
    L9_2 = L9_2[2]
    L9_2 = L9_2 * 100
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2 / 100
    A0_2.animFrameTime = L7_2
    L7_2 = L6_2[L2_2]
    L7_2 = L7_2.disableRotation
    A0_2.disableRotation = L7_2
    L7_2 = A0_2.disableRotation
    if L7_2 == true then
      L7_2 = setObjectParameter
      L8_2 = A0_2.name
      L9_2 = 10
      L10_2 = 1
      L7_2(L8_2, L9_2, L10_2)
    else
      L7_2 = setObjectParameter
      L8_2 = A0_2.name
      L9_2 = 10
      L10_2 = 0
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end

initObjectAnimation = L2_1

function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = checkDirectory
  L1_2 = levelFolder
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = createDirectory
    L1_2 = levelFolder
    L0_2(L1_2)
  end
  L0_2 = checkDirectory
  L1_2 = levelFolder
  L2_2 = "temp/"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = createDirectory
    L1_2 = levelFolder
    L2_2 = "temp/"
    L1_2 = L1_2 .. L2_2
    L0_2(L1_2)
  end
end

checkDirectories = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = 1000000
  L6_2 = -1000000
  L7_2 = 1000000
  L8_2 = -1000000
  L9_2 = _G
  L9_2 = L9_2.pairs
  L10_2 = A0_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L13_2.width
    L15_2 = L13_2.height
    if L14_2 == nil then
      L14_2 = L13_2.radius
      L15_2 = L13_2.radius
    else
      L14_2 = L14_2 * 0.5
      L15_2 = L15_2 * 0.5
    end
    L16_2 = L13_2.x
    L16_2 = L16_2 - L14_2
    if L5_2 > L16_2 then
      L16_2 = L13_2.x
      L5_2 = L16_2 - L14_2
    end
    L16_2 = L13_2.x
    L16_2 = L16_2 + L14_2
    if L6_2 < L16_2 then
      L16_2 = L13_2.x
      L6_2 = L16_2 + L14_2
    end
    L16_2 = L13_2.y
    L16_2 = L16_2 - L15_2
    if L7_2 > L16_2 then
      L16_2 = L13_2.y
      L7_2 = L16_2 - L15_2
    end
    L16_2 = L13_2.y
    L16_2 = L16_2 + L15_2
    if L8_2 < L16_2 then
      L16_2 = L13_2.y
      L8_2 = L16_2 + L15_2
    end
  end
  L1_2 = L6_2 - L5_2
  L2_2 = L8_2 - L7_2
  L9_2 = L6_2 + L5_2
  L3_2 = L9_2 * 0.5
  L9_2 = L8_2 + L7_2
  L4_2 = L9_2 * 0.5
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L1_2
  L12_2 = L2_2
  return L9_2, L10_2, L11_2, L12_2
end

getObjectListBounds = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L5_2 = 1000000
  L6_2 = -1000000
  L7_2 = 1000000
  L8_2 = -1000000
  L9_2 = _G
  L9_2 = L9_2.pairs
  L10_2 = A0_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L13_2.width
    L15_2 = L13_2.height
    L16_2 = L13_2.angle
    if L14_2 == nil then
      L14_2 = L13_2.radius
      L15_2 = L13_2.radius
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.min
      L18_2 = L5_2
      L19_2 = L13_2.x
      L20_2 = L13_2.radius
      L19_2 = L19_2 - L20_2
      L17_2 = L17_2(L18_2, L19_2)
      L5_2 = L17_2
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.max
      L18_2 = L6_2
      L19_2 = L13_2.x
      L20_2 = L13_2.radius
      L19_2 = L19_2 + L20_2
      L17_2 = L17_2(L18_2, L19_2)
      L6_2 = L17_2
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.min
      L18_2 = L7_2
      L19_2 = L13_2.y
      L20_2 = L13_2.radius
      L19_2 = L19_2 - L20_2
      L17_2 = L17_2(L18_2, L19_2)
      L7_2 = L17_2
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.max
      L18_2 = L8_2
      L19_2 = L13_2.y
      L20_2 = L13_2.radius
      L19_2 = L19_2 + L20_2
      L17_2 = L17_2(L18_2, L19_2)
      L8_2 = L17_2
    else
      L17_2 = {}
      L18_2 = transformCoordinates
      L19_2 = L16_2
      L20_2 = L14_2 * 0.5
      L20_2 = -L20_2
      L21_2 = L15_2 * 0.5
      L18_2 = L18_2(L19_2, L20_2, L21_2)
      L19_2 = transformCoordinates
      L20_2 = L16_2
      L21_2 = L14_2 * 0.5
      L22_2 = L15_2 * 0.5
      L19_2 = L19_2(L20_2, L21_2, L22_2)
      L20_2 = transformCoordinates
      L21_2 = L16_2
      L22_2 = L14_2 * 0.5
      L22_2 = -L22_2
      L23_2 = L15_2 * 0.5
      L23_2 = -L23_2
      L20_2 = L20_2(L21_2, L22_2, L23_2)
      L21_2 = transformCoordinates
      L22_2 = L16_2
      L23_2 = L14_2 * 0.5
      L24_2 = L15_2 * 0.5
      L24_2 = -L24_2
      L21_2 = L21_2(L22_2, L23_2, L24_2)
      L22_2 = _G
      L22_2 = L22_2.table
      L22_2 = L22_2.insert
      L23_2 = L17_2
      L24_2 = L18_2
      L22_2(L23_2, L24_2)
      L22_2 = _G
      L22_2 = L22_2.table
      L22_2 = L22_2.insert
      L23_2 = L17_2
      L24_2 = L19_2
      L22_2(L23_2, L24_2)
      L22_2 = _G
      L22_2 = L22_2.table
      L22_2 = L22_2.insert
      L23_2 = L17_2
      L24_2 = L20_2
      L22_2(L23_2, L24_2)
      L22_2 = _G
      L22_2 = L22_2.table
      L22_2 = L22_2.insert
      L23_2 = L17_2
      L24_2 = L21_2
      L22_2(L23_2, L24_2)
      L22_2 = _G
      L22_2 = L22_2.pairs
      L23_2 = L17_2
      L22_2, L23_2, L24_2 = L22_2(L23_2)
      for L25_2, L26_2 in L22_2, L23_2, L24_2 do
        L27_2 = _G
        L27_2 = L27_2.math
        L27_2 = L27_2.min
        L28_2 = L5_2
        L29_2 = L13_2.x
        L30_2 = L26_2.x
        L29_2 = L29_2 + L30_2
        L27_2 = L27_2(L28_2, L29_2)
        L5_2 = L27_2
        L27_2 = _G
        L27_2 = L27_2.math
        L27_2 = L27_2.max
        L28_2 = L6_2
        L29_2 = L13_2.x
        L30_2 = L26_2.x
        L29_2 = L29_2 + L30_2
        L27_2 = L27_2(L28_2, L29_2)
        L6_2 = L27_2
        L27_2 = _G
        L27_2 = L27_2.math
        L27_2 = L27_2.min
        L28_2 = L7_2
        L29_2 = L13_2.y
        L30_2 = L26_2.y
        L29_2 = L29_2 + L30_2
        L27_2 = L27_2(L28_2, L29_2)
        L7_2 = L27_2
        L27_2 = _G
        L27_2 = L27_2.math
        L27_2 = L27_2.max
        L28_2 = L8_2
        L29_2 = L13_2.y
        L30_2 = L26_2.y
        L29_2 = L29_2 + L30_2
        L27_2 = L27_2(L28_2, L29_2)
        L8_2 = L27_2
      end
    end
  end
  L1_2 = L6_2 - L5_2
  L2_2 = L8_2 - L7_2
  L9_2 = L1_2 * 0.5
  L3_2 = L5_2 + L9_2
  L9_2 = L2_2 * 0.5
  L4_2 = L7_2 + L9_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L1_2
  L12_2 = L2_2
  return L9_2, L10_2, L11_2, L12_2
end

getSelectedObjects = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = blockTable
  L2_2 = L2_2.blocks
  L3_2 = A0_2.definition
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.noSelectInEditor
    if L3_2 then
      L3_2 = print
      L4_2 = "noSelectInEditor set for "
      L5_2 = A0_2.definition
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      return
    end
  end
  L3_2 = false
  L4_2 = 1
  L5_2 = selectedObjects
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = selectedObjects
    L8_2 = L8_2[L7_2]
    if L8_2 == A0_2 then
      if A1_2 then
        L8_2 = _G
        L8_2 = L8_2.table
        L8_2 = L8_2.remove
        L9_2 = selectedObjects
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
      L3_2 = true
      L8_2 = selectedObjects
      L7_2 = #L8_2
    end
  end
  if not L3_2 then
    L4_2 = _G
    L4_2 = L4_2.table
    L4_2 = L4_2.insert
    L5_2 = selectedObjects
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

addObjectToSelection = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  while true do
    L2_2 = floatingScores
    L2_2 = #L2_2
    if not (L1_2 <= L2_2) then
      break
    end
    L2_2 = floatingScores
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2.time
    L3_2 = L3_2 + A0_2
    L2_2.time = L3_2
    L3_2 = L2_2.time
    if L3_2 < 0.25 then
      L3_2 = L2_2.maxScale
      L4_2 = L2_2.time
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 / 0.25
      L2_2.xs = L3_2
    else
      L3_2 = L2_2.time
      L4_2 = L2_2.lifetime
      L4_2 = L4_2 - 0.25
      if L3_2 < L4_2 then
        L3_2 = L2_2.maxScale
        L2_2.xs = L3_2
      else
        L3_2 = L2_2.maxScale
        L4_2 = L2_2.lifetime
        L5_2 = L2_2.time
        L4_2 = L4_2 - L5_2
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 / 0.25
        L2_2.xs = L3_2
      end
    end
    L3_2 = floatingScores
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.time
    L4_2 = floatingScores
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2.lifetime
    if L3_2 > L4_2 then
      L3_2 = _G
      L3_2 = L3_2.table
      L3_2 = L3_2.remove
      L4_2 = floatingScores
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    else
      L1_2 = L1_2 + 1
    end
  end
end

updateFloatingScores = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  score = L1_2
  L1_2 = false
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = scoreTable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = score
    L8_2 = L6_2.score
    L7_2 = L7_2 + L8_2
    score = L7_2
    L1_2 = true
  end
  L2_2 = g_threeStarsCheat
  if L2_2 == true then
    L2_2 = starTable
    L3_2 = levelName
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = starTable
      L3_2 = levelName
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.goldScore
      if L2_2 ~= nil then
        L2_2 = starTable
        L3_2 = levelName
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.goldScore
        score = L2_2
      end
    end
  end
  if L1_2 then
  end
end

updateScore = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L8_2 = L4_2 * L5_2
  L8_2 = L8_2 / L6_2
  L8_2 = L8_2 + L7_2
  return L8_2
end

tweenLinear = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L5_2 = L5_2 / L6_2
  L8_2 = L4_2 * L5_2
  L8_2 = L8_2 * L5_2
  L8_2 = L8_2 * L5_2
  L8_2 = L8_2 + L7_2
  return L8_2
end

tweenEaseCubicIn = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L8_2 = L5_2 / L6_2
  L5_2 = L8_2 - 1
  L8_2 = L5_2 * L5_2
  L8_2 = L8_2 * L5_2
  L8_2 = L8_2 + 1
  L8_2 = L4_2 * L8_2
  L8_2 = L8_2 + L7_2
  return L8_2
end

tweenEaseCubicOut = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L8_2 = L6_2 / 2
  L5_2 = L5_2 / L8_2
  if L5_2 < 1 then
    L8_2 = L4_2 / 2
    L9_2 = L5_2 * L5_2
    L9_2 = L9_2 * L5_2
    L8_2 = L8_2 * L9_2
    L8_2 = L8_2 + L7_2
    return L8_2
  end
  L5_2 = L5_2 - 2
  L8_2 = L4_2 / 2
  L9_2 = L5_2 * L5_2
  L9_2 = L9_2 * L5_2
  L9_2 = L9_2 + 2
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 + L7_2
  return L8_2
end

tweenEaseCubicInOut = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L5_2 = L5_2 / L6_2
  if L5_2 < 0.36363637 then
    L8_2 = L4_2 * 7.5625
    L8_2 = L8_2 * L5_2
    L8_2 = L8_2 * L5_2
    L8_2 = L8_2 + L7_2
    return L8_2
  elseif L5_2 < 0.72727275 then
    L5_2 = L5_2 - 0.54545456
    L8_2 = 7.5625 * L5_2
    L8_2 = L8_2 * L5_2
    L8_2 = L8_2 + 0.75
    L8_2 = L4_2 * L8_2
    L8_2 = L8_2 + L7_2
    return L8_2
  elseif L5_2 < 0.90909094 then
    L5_2 = L5_2 - 0.8181818
    L8_2 = 7.5625 * L5_2
    L8_2 = L8_2 * L5_2
    L8_2 = L8_2 + 0.9375
    L8_2 = L4_2 * L8_2
    L8_2 = L8_2 + L7_2
    return L8_2
  else
    L5_2 = L5_2 - 0.95454544
    L8_2 = 7.5625 * L5_2
    L8_2 = L8_2 * L5_2
    L8_2 = L8_2 + 0.984375
    L8_2 = L4_2 * L8_2
    L8_2 = L8_2 + L7_2
    return L8_2
  end
end

tweenEaseBounceOut = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = 10 ^ A1_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A0_2 * L2_2
  L4_2 = L4_2 + 0.5
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / L2_2
  return L3_2
end

roundNumber = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end

isKeyInList = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = saveLuaFileWrapper
    L1_2 = "gamepurchases.lua"
    L2_2 = "g_gamePurchasesTable"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = saveLuaFileWrapper
    L1_2 = "eaglepurchases.lua"
    L2_2 = "g_eaglePurchasesTable"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = g_saveGamePurchasesOnPC
  if L0_2 then
    L0_2 = isPCVersion
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = saveLuaFileWrapper
      L1_2 = "gamepurchases.lua"
      L2_2 = "g_gamePurchasesTable"
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  L0_2 = saveLuaFileWrapper
  L1_2 = "episodepurchases.lua"
  L2_2 = "g_episodePurchasesTable"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end

savePurchases = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_POP_FRAME
  L5_2.id = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_PUSH_FRAME
  L5_2.id = L6_2
  L6_2 = EaglePurchasePage
  L7_2 = L6_2
  L6_2 = L6_2.new
  L6_2 = L6_2(L7_2)
  L5_2.target = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = true
  g_disableGameupdate = L3_2
  L3_2 = purchaseMightyEagle
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

startMEPurchaseFlow = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_POP_FRAME
  L5_2.id = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_PUSH_FRAME
  L5_2.id = L6_2
  L6_2 = EaglePurchasePage
  L7_2 = L6_2
  L6_2 = L6_2.new
  L6_2 = L6_2(L7_2)
  L5_2.target = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = purchaseEpisode
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

startEpisodePurchaseFlow = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_POP_FRAME
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_PUSH_FRAME
  L3_2.id = L4_2
  L4_2 = EaglePurchasePage
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L3_2.target = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = purchaseFullVersion
  L2_2 = A0_2
  L1_2(L2_2)
end

startFullVersionPurchaseFlow = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_PUSH_FRAME
  L2_2.id = L3_2
  L3_2 = EaglePurchasePage
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L2_2.target = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = purchaseAdRemoval
  L0_2()
end

startRemoveAdsPurchaseFlow = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = playAudio
    L2_2 = previousMusicName
    L1_2(L2_2)
  else
    L1_2 = _G
    L1_2 = L1_2.res
    L1_2 = L1_2.stopAudio
    L2_2 = previousMusicName
    L1_2(L2_2)
  end
end

toggleCurrentMusic = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = blockTable
  L0_2 = L0_2.themes
  L1_2 = objects
  L1_2 = L1_2.theme
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.music
  musicToPlayNow = L0_2
  L0_2 = blockTable
  L0_2 = L0_2.themes
  L1_2 = objects
  L1_2 = L1_2.theme
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.musicVolume
  if not L0_2 then
    L0_2 = 1
  end
  L1_2 = getLevelMetadata
  L2_2 = levelName
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.musicName
  if L1_2 then
    musicToPlayNow = L1_2
  end
  L2_2 = getLevelMetadata
  L3_2 = levelName
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.playMainMusic
  if L2_2 then
    L2_2 = getTitleTheme
    L2_2 = L2_2()
    musicToPlayNow = L2_2
  end
  L2_2 = previousMusicName
  if L2_2 then
    L2_2 = previousMusicName
    L3_2 = musicToPlayNow
    if L2_2 ~= L3_2 then
      L2_2 = _G
      L2_2 = L2_2.res
      L2_2 = L2_2.stopAudio
      L3_2 = previousMusicName
      L2_2(L3_2)
      L2_2 = nil
      previousMusicName = L2_2
    end
  end
  L2_2 = musicToPlayNow
  if L2_2 then
    L2_2 = res
    L2_2 = L2_2.isAudioPlaying
    L3_2 = musicToPlayNow
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = playAudio
      L3_2 = musicToPlayNow
      L4_2 = L0_2
      L2_2(L3_2, L4_2)
      L2_2 = musicToPlayNow
      previousMusicName = L2_2
    end
  end
end

handleLevelMusic = L2_1
L2_1 = false
g_singleStep = L2_1
L2_1 = gameWorldScale
L3_1 = 2.5
L2_1 = L3_1 * L2_1
L3_1 = useAccelerometerControls
if L3_1 then
  L3_1 = 5.4
  L3_1 = L2_1 / L3_1
  if L3_1 then
    goto lbl_672
  end
end
L3_1 = 0.25
::lbl_672::

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vLength
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_1
  L4_2 = L3_1
  L3_2 = L3_2 / L4_2
  L4_2 = 1
  if L2_2 > L3_2 then
    L4_2 = L3_2 / L2_2
  end
  L5_2 = A0_2 * L4_2
  L6_2 = A1_2 * L4_2
  return L5_2, L6_2
end

limitDragVector = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = limitDragVector
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = vLength
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_1
  L5_2 = L5_2 * L6_2
  L6_2 = A2_2.powerModifier
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2 * L6_2
  L6_2 = defaultForce
  L7_2 = physicsScale
  L6_2 = L6_2 * L7_2
  L7_2 = A2_2.mass
  L6_2 = L6_2 * L7_2
  L6_2 = L6_2 * 1.25
  L7_2 = A2_2.flocker
  if L7_2 then
    L7_2 = A2_2.speedReductionPercentage
    if L7_2 then
      L7_2 = A2_2.speedReductionPercentage
      L5_2 = L5_2 * L7_2
    end
  end
  L7_2 = A2_2.flocker
  if L7_2 then
    L7_2 = powerups
    L7_2 = L7_2.getLaunchVectorForFlockers
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_43
    end
  end
  L7_2 = normalizeVector
  L8_2 = L3_2
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  ::lbl_43::
  L8_2 = L5_2 * L6_2
  L9_2 = L7_2.x
  L9_2 = L9_2 * L8_2
  L10_2 = L7_2.y
  L10_2 = L10_2 * L8_2
  L7_2.y = L10_2
  L7_2.x = L9_2
  return L7_2
end

calculateImpulseVectorForBird = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = g_aimingAidCursor
  L1_2 = L2_2.cursorToUse
  L2_2 = distance
  L3_2 = levelStartPosition
  L3_2 = L3_2.x
  L4_2 = levelStartPosition
  L4_2 = L4_2.y
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = slingshotScale
  L3_2 = 1 * L3_2
  if not (L2_2 < L3_2) then
    L3_2 = g_birdDragOnTouchAttributes
    L3_2 = L3_2.shootMinLength
    if not (L2_2 < L3_2) then
      goto lbl_27
    end
  end
  L3_2 = ClearSimulationTrajectory
  L3_2()
  L3_2 = clearAimingAid
  L4_2 = 1
  L3_2(L4_2)
  L3_2 = g_aimingAidAttributes
  L3_2.visible = false
  do return end
  ::lbl_27::
  L3_2 = g_aimingAidAttributes
  L3_2 = L3_2.visible
  if L3_2 == false then
    L3_2 = populateAimingAid
    L3_2()
  end
  L3_2 = g_aimingAidAttributes
  L3_2.visible = true
  L3_2 = setSelectedBirdDuringSimulation
  L4_2 = selectedBird
  L4_2 = L4_2.name
  L3_2(L4_2)
  L3_2 = "BirdSimulation"
  L4_2 = objects
  L4_2 = L4_2.world
  L4_2 = L4_2[L3_2]
  if L4_2 == nil then
    L4_2 = createObject
    L5_2 = blockTable
    L6_2 = selectedBird
    L6_2 = L6_2.definition
    L7_2 = L3_2
    L8_2 = selectedBird
    L8_2 = L8_2.x
    L9_2 = selectedBird
    L9_2 = L9_2.y
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = setObjectGravityCategory
    L6_2 = L3_2
    L7_2 = g_gravityFiltersCategories
    L7_2 = L7_2.AIMING_AID
    L5_2(L6_2, L7_2)
  end
  L4_2 = objects
  L4_2 = L4_2.world
  L4_2 = L4_2[L3_2]
  L5_2 = birds
  L6_2 = currentBirdName
  L5_2 = L5_2[L6_2]
  if L4_2 and L5_2 then
    L6_2 = copyBirdValuesFromLiveBird
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = g_aimingAidCursor
  L6_2 = L6_2.cursorToUse
  L6_2 = L6_2.x
  L7_2 = levelStartPosition
  L7_2 = L7_2.x
  L6_2 = L6_2 - L7_2
  L7_2 = g_aimingAidCursor
  L7_2 = L7_2.cursorToUse
  L7_2 = L7_2.y
  L8_2 = levelStartPosition
  L8_2 = L8_2.y
  L7_2 = L7_2 - L8_2
  L8_2 = calculateImpulseVectorForBird
  L9_2 = L6_2
  L10_2 = L7_2
  L11_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = setActive
  L10_2 = L3_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = setPosition
  L10_2 = L3_2
  L11_2 = selectedBird
  L11_2 = L11_2.x
  L12_2 = selectedBird
  L12_2 = L12_2.y
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = setVelocity
  L10_2 = L3_2
  L11_2 = 0
  L12_2 = 0
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = applyImpulse
  L10_2 = L3_2
  L11_2 = L8_2.x
  L12_2 = L8_2.y
  L13_2 = g_aimingAidCursor
  L13_2 = L13_2.cursorToUse
  L13_2 = L13_2.x
  L14_2 = g_aimingAidCursor
  L14_2 = L14_2.cursorToUse
  L14_2 = L14_2.y
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = setAngularVelocity
  L10_2 = L3_2
  L11_2 = 0
  L9_2(L10_2, L11_2)
  L9_2 = native_setWaterDensity
  L10_2 = L3_2
  L11_2 = getWaterDensity
  L12_2 = selectedBird
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = ClearSimulationTrajectory
  L9_2()
  L9_2 = updateBirdTrajectoryTable
  L9_2()
  L9_2 = removeObject
  L10_2 = L3_2
  L9_2(L10_2)
  L9_2 = objects
  L9_2 = L9_2.world
  L9_2[L3_2] = nil
  L9_2 = birds
  L9_2[L3_2] = nil
  L9_2 = otherBirds
  L9_2[L3_2] = nil
  L9_2 = animatedObjects
  L9_2[L3_2] = nil
end

simulateTrajectory = L4_1

function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.powerModifier
  if L2_2 then
    L2_2 = A1_2.powerModifier
    A0_2.powerModifier = L2_2
  end
end

copyBirdValuesFromLiveBird = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.definition
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.densityInWater
  if not L2_2 then
    L2_2 = blockTable
    L2_2 = L2_2.materials
    L3_2 = L1_2.material
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.densityInWater
    if not L2_2 then
      L2_2 = L1_2.density
      if not L2_2 then
        L2_2 = blockTable
        L2_2 = L2_2.materials
        L3_2 = L1_2.material
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.density
      end
    end
  end
  L3_2 = assert
  L4_2 = L2_2 ~= nil
  L5_2 = "Could not get water density for "
  L6_2 = A0_2.definition
  L7_2 = ".\n"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  return L2_2
end

getWaterDensity = L4_1
L4_1 = 0
currentMenuMotorSpeed = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = _G
  L0_2 = L0_2.res
  L0_2 = L0_2.isAudioPlaying
  L1_2 = "score_count"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = _G
    L0_2 = L0_2.res
    L0_2 = L0_2.stopAudio
    L1_2 = "score_count"
    L0_2(L1_2)
  end
  L0_2 = actions
  L0_2 = L0_2.loadLevelSelectionMenu
  L0_2 = L0_2.action
  L0_2()
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.queueEvent
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_CHANGE_SCENE
  L2_2.id = L3_2
  L2_2.target = "GameScene"
  L0_2(L1_2, L2_2)
end

returnToLevelSelection = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = levelName
  if L0_2 ~= "MainMenu" then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2
    L0_2 = L0_2.getChild
    L2_2 = "gameHud"
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L2_2 = L0_2
      L1_2 = L0_2.getChild
      L3_2 = "pausePage"
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2.visible
      if L1_2 then
        L2_2 = L0_2
        L1_2 = L0_2.returnToGame
        L1_2(L2_2)
      else
        L2_2 = L0_2
        L1_2 = L0_2.showPauseMenu
        L1_2(L2_2)
      end
    end
  end
end

togglePausePage = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = levelName
  if L0_2 == "MainMenu" then
    L0_2 = false
    return L0_2
  else
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2
    L0_2 = L0_2.getChild
    L2_2 = "gameHud"
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L2_2 = L0_2
      L1_2 = L0_2.getChild
      L3_2 = "pausePage"
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2.visible
      if L1_2 then
        L1_2 = true
        return L1_2
      else
        L1_2 = false
        return L1_2
      end
    else
      L1_2 = false
      return L1_2
    end
  end
end

isPausePageVisible = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = levelName
  if L0_2 == "MainMenu" then
    L0_2 = false
    return L0_2
  else
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2
    L0_2 = L0_2.getChild
    L2_2 = "gameHud"
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L2_2 = L0_2
      L1_2 = L0_2.getChild
      L3_2 = "pausePage"
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2.show
      if L1_2 then
        L1_2 = true
        return L1_2
      else
        L1_2 = false
        return L1_2
      end
    else
      L1_2 = false
      return L1_2
    end
  end
end

isPausePageShowing = L4_1

function L4_1(A0_2)
  local L1_2
  L1_2 = g_keyPressed
  if L1_2 then
    L1_2 = g_keyPressed
    L1_2 = L1_2[A0_2]
  end
  return L1_2
end

isKeyPressed = L4_1

function L4_1(A0_2)
  local L1_2
  L1_2 = g_keyHold
  if L1_2 then
    L1_2 = g_keyHold
    L1_2 = L1_2[A0_2]
  end
  return L1_2
end

isKeyHold = L4_1

function L4_1(A0_2)
  local L1_2
  L1_2 = g_keyReleased
  if L1_2 then
    L1_2 = g_keyReleased
    L1_2 = L1_2[A0_2]
  end
  return L1_2
end

isKeyReleased = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = true
  mightyEagleDisabled = L0_2
end

disableME = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.emotionsDisabled
  if not L2_2 then
    L2_2 = getObjectDefinition
    L3_2 = A0_2.name
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2.inDamagedState
    if L3_2 then
      L3_2 = A0_2.isInflated
      if L3_2 then
        A0_2.currentState = "inflatedDamagedState"
      else
        L3_2 = A0_2.insideWater
        if L3_2 then
          L3_2 = L2_2.stateAnimations
          if L3_2 then
            L3_2 = L2_2.stateAnimations
            L3_2 = L3_2.underwaterDamagedState
            if L3_2 then
              L3_2 = A0_2.insideBubble
              if not L3_2 then
                L3_2 = A0_2.insideSmallBubble
                if not L3_2 then
                  A0_2.currentState = "underwaterDamagedState"
              end
            end
          end
        end
        else
          A0_2.currentState = "damagedState"
        end
      end
    else
      L3_2 = A0_2.isInflated
      if L3_2 then
        A0_2.currentState = "inflatedState"
      else
        L3_2 = A0_2.insideWater
        if L3_2 then
          L3_2 = L2_2.stateAnimations
          if L3_2 then
            L3_2 = L2_2.stateAnimations
            L3_2 = L3_2.underwaterState
            if L3_2 then
              L3_2 = A0_2.insideBubble
              if not L3_2 then
                L3_2 = A0_2.insideSmallBubble
                if not L3_2 then
                  A0_2.currentState = "underwaterState"
              end
            end
          end
        end
        else
          A0_2.currentState = A1_2
        end
      end
    end
  end
end

setCurrentState = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.definition
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.specialParticles
  if L1_2 ~= nil then
    L2_2 = L1_2[1]
    if L2_2 == nil then
      L2_2 = {}
      L3_2 = L1_2
      L2_2[1] = L3_2
      L1_2 = L2_2
    end
    L2_2 = _G
    L2_2 = L2_2.pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = particleTable
      L7_2 = L7_2.particles
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.amount
      particleAmount = L7_2
      L7_2 = particleAmount
      if not L7_2 then
        L7_2 = 12
      end
      particleAmount = L7_2
      L7_2 = particleTable
      L7_2 = L7_2.particles
      L7_2 = L7_2[L6_2]
      L8_2 = 1
      L9_2 = A0_2.flocker
      if L9_2 then
        L9_2 = particleAmount
        L10_2 = A0_2.particleAmountFactor
        L9_2 = L9_2 * L10_2
        particleAmount = L9_2
        L9_2 = particleAmount
        L10_2 = A0_2.specialParticleScaleFactor
        L8_2 = L9_2 * L10_2
      end
      L9_2 = putParticles
      L10_2 = {}
      L11_2 = A0_2.name
      L10_2.objectName = L11_2
      L10_2.particles = L6_2
      L11_2 = particleAmount
      L10_2.amount = L11_2
      L11_2 = L7_2.minScaleBegin
      L11_2 = L11_2 * L8_2
      L10_2.minScaleBegin = L11_2
      L11_2 = L7_2.maxScaleBegin
      L11_2 = L11_2 * L8_2
      L10_2.maxScaleBegin = L11_2
      L11_2 = L7_2.minScaleEnd
      L11_2 = L11_2 * L8_2
      L10_2.minScaleEnd = L11_2
      L11_2 = L7_2.maxScaleEnd
      L11_2 = L11_2 * L8_2
      L10_2.maxScaleEnd = L11_2
      L9_2(L10_2)
    end
  end
end

addBirdSpecialParticles = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = g_aimingAidCursor
  L0_2.cursorToUse = nil
  L0_2 = g_aimingAidCursor
  L0_2.timeOnMaxSpeed = 0
  L0_2 = g_aimingAidCursor
  L1_2 = {}
  L0_2.lastFramesPositions = L1_2
  L0_2 = g_aimingAidCursor
  L1_2 = {}
  L0_2.lastFramesTimes = L1_2
  L0_2 = g_aimingAidCursor
  L0_2.currentDragDistance = 0
  L0_2 = g_aimingAidCursor
  L0_2.onHold = false
end

clearDraggingCursor = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = g_aimingAidCursor
  L2_2 = L2_2.lastFramesPositions
  L2_2 = #L2_2
  L3_2 = g_aimingAidCursor
  L3_2 = L3_2.framesToProfile
  if L2_2 == L3_2 then
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.remove
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.lastFramesPositions
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.remove
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.lastFramesTimes
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.insert
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.lastFramesPositions
    L4_2 = {}
    L5_2 = cursorPhysics
    L5_2 = L5_2.x
    L4_2.x = L5_2
    L5_2 = cursorPhysics
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.insert
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.lastFramesTimes
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.insert
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.lastFramesPositions
    L4_2 = {}
    L5_2 = cursorPhysics
    L5_2 = L5_2.x
    L4_2.x = L5_2
    L5_2 = cursorPhysics
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.insert
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.lastFramesTimes
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = g_aimingAidCursor
    L3_2 = {}
    L4_2 = cursorPhysics
    L4_2 = L4_2.x
    L3_2.x = L4_2
    L4_2 = cursorPhysics
    L4_2 = L4_2.y
    L3_2.y = L4_2
    L2_2.cursorToUse = L3_2
    return
  end
  L2_2 = g_aimingAidCursor
  L2_2 = L2_2.onHold
  if L2_2 then
    L2_2 = distance
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.lastFramesPositions
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.framesToProfile
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.x
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesPositions
    L5_2 = g_aimingAidCursor
    L5_2 = L5_2.framesToProfile
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.y
    L5_2 = g_aimingAidCursor
    L5_2 = L5_2.lastFramesPositions
    L6_2 = g_aimingAidCursor
    L6_2 = L6_2.framesToProfile
    L6_2 = L6_2 - 1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.x
    L6_2 = g_aimingAidCursor
    L6_2 = L6_2.lastFramesPositions
    L7_2 = g_aimingAidCursor
    L7_2 = L7_2.framesToProfile
    L7_2 = L7_2 - 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.y
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = g_aimingAidCursor
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.currentDragDistance
    L4_2 = L4_2 + L2_2
    L3_2.currentDragDistance = L4_2
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.currentDragDistance
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.minDistanceToResumeDrag
    if L3_2 > L4_2 then
      L3_2 = g_aimingAidCursor
      L3_2.onHold = false
      L3_2 = g_aimingAidCursor
      L3_2.removedHoldTime = A0_2
      L3_2 = g_aimingAidCursor
      L3_2.currentDragDistance = 0
    end
  else
    L2_2 = 0
    L3_2 = 2
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesPositions
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = distance
      L8_2 = g_aimingAidCursor
      L8_2 = L8_2.lastFramesPositions
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.x
      L9_2 = g_aimingAidCursor
      L9_2 = L9_2.lastFramesPositions
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.y
      L10_2 = g_aimingAidCursor
      L10_2 = L10_2.lastFramesPositions
      L11_2 = L6_2 - 1
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.x
      L11_2 = g_aimingAidCursor
      L11_2 = L11_2.lastFramesPositions
      L12_2 = L6_2 - 1
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.y
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L2_2 = L2_2 + L7_2
    end
    L3_2 = g_aimingAidCursor
    L3_2 = L3_2.maxDistanceToPutDragOnHold
    if L2_2 < L3_2 then
      L3_2 = g_aimingAidCursor
      L3_2.onHold = true
      L3_2 = g_aimingAidCursor
      L3_2.currentDragDistance = 0
    else
      L3_2 = g_aimingAidCursor
      L4_2 = {}
      L3_2.cursorToUse = L4_2
      L3_2 = isPCVersion
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = g_aimingAidCursor
        L3_2 = L3_2.cursorToUse
        L4_2 = cursorPhysics
        L4_2 = L4_2.x
        L3_2.x = L4_2
        L3_2 = g_aimingAidCursor
        L3_2 = L3_2.cursorToUse
        L4_2 = cursorPhysics
        L4_2 = L4_2.y
        L3_2.y = L4_2
      else
        L3_2 = g_aimingAidCursor
        L3_2 = L3_2.lastFramesPositions
        L3_2 = #L3_2
        L4_2 = g_aimingAidCursor
        L4_2 = L4_2.removedHoldTime
        if L4_2 then
          L4_2 = g_aimingAidCursor
          L4_2 = L4_2.removedHoldTime
          L4_2 = A0_2 - L4_2
          if L4_2 < 0.5 and 5 < L3_2 then
            L3_2 = L3_2 - 5
            if 5 < L3_2 then
              L3_2 = L3_2 - 5
            end
          end
        end
        L4_2 = g_aimingAidCursor
        L4_2 = L4_2.cursorToUse
        L5_2 = g_aimingAidCursor
        L5_2 = L5_2.lastFramesPositions
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.x
        L4_2.x = L5_2
        L4_2 = g_aimingAidCursor
        L4_2 = L4_2.cursorToUse
        L5_2 = g_aimingAidCursor
        L5_2 = L5_2.lastFramesPositions
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.y
        L4_2.y = L5_2
      end
    end
  end
end

updateDraggingCursor = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A2_2 then
    A2_2 = cursorPhysics
  end
  L3_2 = g_aimingAidCursor
  L3_2 = L3_2.lastFramesPositions
  L3_2 = #L3_2
  L4_2 = g_aimingAidCursor
  L4_2 = L4_2.framesToProfile
  if L3_2 == L4_2 then
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.remove
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesPositions
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.remove
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesTimes
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.insert
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesPositions
    L5_2 = {}
    L6_2 = A2_2.x
    L5_2.x = L6_2
    L6_2 = A2_2.y
    L5_2.y = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.insert
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesTimes
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.insert
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesPositions
    L5_2 = {}
    L6_2 = A2_2.x
    L5_2.x = L6_2
    L6_2 = A2_2.y
    L5_2.y = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.insert
    L4_2 = g_aimingAidCursor
    L4_2 = L4_2.lastFramesTimes
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = g_aimingAidCursor
    L4_2 = {}
    L5_2 = A2_2.x
    L4_2.x = L5_2
    L5_2 = A2_2.y
    L4_2.y = L5_2
    L3_2.cursorToUse = L4_2
    return
  end
  L3_2 = g_aimingAidCursor
  L4_2 = {}
  L3_2.cursorToUse = L4_2
  L3_2 = isPCVersion
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = useAccelerometerControls
    if not L3_2 then
      goto lbl_89
    end
  end
  L3_2 = g_aimingAidCursor
  L3_2 = L3_2.cursorToUse
  L4_2 = A2_2.x
  L3_2.x = L4_2
  L3_2 = g_aimingAidCursor
  L3_2 = L3_2.cursorToUse
  L4_2 = A2_2.y
  L3_2.y = L4_2
  goto lbl_121
  ::lbl_89::
  L3_2 = g_aimingAidCursor
  L3_2 = L3_2.lastFramesPositions
  L3_2 = #L3_2
  L4_2 = g_aimingAidCursor
  L4_2 = L4_2.lastFramesPositions
  L4_2 = #L4_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = g_aimingAidCursor
    L8_2 = L8_2.lastFramesTimes
    L8_2 = L8_2[L7_2]
    L8_2 = A0_2 - L8_2
    if L8_2 < 0.1 then
      L3_2 = L3_2 - 1
    end
  end
  L4_2 = g_aimingAidCursor
  L4_2 = L4_2.cursorToUse
  L5_2 = g_aimingAidCursor
  L5_2 = L5_2.lastFramesPositions
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = g_aimingAidCursor
  L4_2 = L4_2.cursorToUse
  L5_2 = g_aimingAidCursor
  L5_2 = L5_2.lastFramesPositions
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.y
  L4_2.y = L5_2
  ::lbl_121::
end

updateDraggingCursorLagOnly = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = handleBirdIsBeingMoved
  L1_2()
  if A0_2 then
    L1_2 = levelCompleted
    if not L1_2 then
      L1_2 = levelFailed
      if not L1_2 then
        L1_2 = g_aimingAidAttributes
        L1_2 = L1_2.enabled
        if L1_2 then
          L1_2 = simulateTrajectory
          L1_2()
        end
      end
    end
  end
  L1_2 = ClearSimulationTrajectory
  L1_2()
  L1_2 = setPosition
  L2_2 = A0_2.name
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.definition
  if L1_2 == "ME_BAIT" then
    L1_2 = assert
    L2_2 = getEpisodeMetadata
    L3_2 = currentFolder
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.alwaysInEagleMode
    L2_2 = L2_2 ~= true
    L3_2 = "ME_BAIT used in Feather level."
    L1_2(L2_2, L3_2)
    L1_2 = numMightyEaglesShot
    L1_2 = L1_2 + 1
    numMightyEaglesShot = L1_2
    L1_2 = menuManager
    L2_2 = L1_2
    L1_2 = L1_2.getRoot
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.reduceEagle
    L1_2(L2_2)
  end
  L1_2 = blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.definition
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.onLaunched
  if L1_2 ~= nil then
    L1_2 = _G
    L1_2 = L1_2.type
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    L3_2 = A0_2.definition
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.onLaunched
    L1_2 = L1_2(L2_2)
    if L1_2 == "table" then
      L1_2 = _G
      L1_2 = L1_2.ipairs
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = A0_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.onLaunched
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = addEventCall
        L7_2 = L5_2
        L8_2 = {}
        L9_2 = A0_2.name
        L8_2.name = L9_2
        L6_2(L7_2, L8_2)
      end
    else
      L1_2 = addEventCall
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = A0_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.onLaunched
      L3_2 = {}
      L4_2 = A0_2.name
      L3_2.name = L4_2
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = getNextBird
  L2_2 = A0_2.startNumber
  L2_2 = L2_2 + 1
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L1_2 = disableME
    L1_2()
  end
  L1_2 = g_aimingAidCursor
  L1_2 = L1_2.cursorToUse
  L1_2 = L1_2.x
  L2_2 = levelStartPosition
  L2_2 = L2_2.x
  L1_2 = L1_2 - L2_2
  L2_2 = g_aimingAidCursor
  L2_2 = L2_2.cursorToUse
  L2_2 = L2_2.y
  L3_2 = levelStartPosition
  L3_2 = L3_2.y
  L2_2 = L2_2 - L3_2
  L3_2 = calculateImpulseVectorForBird
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = {}
  L5_2 = g_aimingAidCursor
  L5_2 = L5_2.cursorToUse
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L5_2 = g_aimingAidCursor
  L5_2 = L5_2.cursorToUse
  L5_2 = L5_2.y
  L4_2.y = L5_2
  g_savedBirdShotData = L4_2
  L4_2 = setActive
  L5_2 = A0_2.name
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = setPosition
  L5_2 = A0_2.name
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = setVelocity
  L5_2 = A0_2.name
  L6_2 = 0
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = applyImpulse
  L5_2 = A0_2.name
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = g_aimingAidCursor
  L8_2 = L8_2.cursorToUse
  L8_2 = L8_2.x
  L9_2 = g_aimingAidCursor
  L9_2 = L9_2.cursorToUse
  L9_2 = L9_2.y
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = setAngularVelocity
  L5_2 = A0_2.name
  L6_2 = 0
  L4_2(L5_2, L6_2)
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.birdShot
  L4_2(L5_2)
  L4_2 = checkForBirdsShotAchievement
  L4_2()
  L4_2 = timeWithoutLevelGoals
  if L4_2 ~= nil then
    L4_2 = -6
    timeWithoutLevelGoals = L4_2
    L4_2 = 6
    g_scoreAddedTime = L4_2
    L4_2 = startedFromEditor
    if not L4_2 then
      L4_2 = getLevelMetadata
      L5_2 = actions
      L5_2 = L5_2.myLevels
      L6_2 = currentFolder
      L5_2 = L5_2[L6_2]
      L6_2 = currentLevel
      L5_2 = L5_2[L6_2]
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2.additionalLevelTime
      if L5_2 then
        L5_2 = isLastBird
        L6_2 = A0_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = g_scoreAddedTime
          L6_2 = L4_2.additionalLevelTime
          L5_2 = L5_2 + L6_2
          g_scoreAddedTime = L5_2
        end
      end
    end
  end
  L4_2 = enableGravityForBird
  L5_2 = A0_2.name
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.angle
  A0_2.resetAngle = L4_2
end

applyForceToSelectedBird = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = birds
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.shot
    if not L6_2 then
      L6_2 = L5_2.name
      L7_2 = A0_2.name
      if L6_2 ~= L7_2 then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = true
  return L1_2
end

isLastBird = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = L1_2.triggerEvents
    if L2_2 then
      L2_2 = _G
      L2_2 = L2_2.pairs
      L3_2 = L1_2.triggerEvents
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = fireObjectTriggerEvents
        L8_2 = A0_2
        L9_2 = {}
        L9_2.obj = L1_2
        L10_2 = L5_2
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end

fireAllObjectTriggerEvents = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if not A2_2 then
    return
  end
  L3_2 = A1_2.obj
  if L3_2 == nil then
    L4_2 = A1_2.name
    if L4_2 then
      L4_2 = objects
      L4_2 = L4_2.world
      L5_2 = A1_2.name
      L3_2 = L4_2[L5_2]
    end
  end
  if L3_2 then
    L4_2 = L3_2.name
    if L4_2 then
      L4_2 = objects
      L4_2 = L4_2.world
      L5_2 = L3_2.name
      L4_2 = L4_2[L5_2]
      if L4_2 then
        L4_2 = objects
        L4_2 = L4_2.world
        L5_2 = L3_2.name
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.triggerEvents
        if L4_2 then
          L4_2 = L3_2.triggerEvents
          L4_2 = L4_2[A2_2]
          if L4_2 then
            L4_2 = _G
            L4_2 = L4_2.pairs
            L5_2 = L3_2.triggerEvents
            L5_2 = L5_2[A2_2]
            L4_2, L5_2, L6_2 = L4_2(L5_2)
            for L7_2, L8_2 in L4_2, L5_2, L6_2 do
              L9_2 = objects
              L9_2 = L9_2.world
              L9_2 = L9_2[L7_2]
              if L9_2 then
                L10_2 = {}
                L10_2.obj = L9_2
                L11_2 = _G
                L11_2 = L11_2.ipairs
                L12_2 = L8_2
                L11_2, L12_2, L13_2 = L11_2(L12_2)
                for L14_2, L15_2 in L11_2, L12_2, L13_2 do
                  L16_2 = fireAction
                  L17_2 = L15_2
                  L18_2 = L10_2
                  L16_2(L17_2, L18_2)
                end
              end
            end
          end
        end
      end
    end
  end
end

fireObjectTriggerEvents = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = actions
  L3_2 = L3_2[A0_2]
  if L3_2 ~= nil then
    A1_2.dt = 0
    L3_2 = fireObjectTriggerEvents
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = actions
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.action
    L4_2 = A1_2
    L3_2(L4_2)
  end
end

fireAction = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = selectedBird
  L0_2 = L0_2.originalPosX
  if L0_2 then
    L0_2 = selectedBird
    L0_2 = L0_2.originalPosY
    if L0_2 then
      goto lbl_17
    end
  end
  L0_2 = selectedBird
  L1_2 = selectedBird
  L1_2 = L1_2.x
  L0_2.originalPosX = L1_2
  L0_2 = selectedBird
  L1_2 = selectedBird
  L1_2 = L1_2.y
  L0_2.originalPosY = L1_2
  ::lbl_17::
  L0_2 = previousCursorPoint
  L1_2 = selectedBird
  L1_2 = L1_2.x
  L0_2.x = L1_2
  L0_2 = previousCursorPoint
  L1_2 = selectedBird
  L1_2 = L1_2.y
  L0_2.y = L1_2
  L0_2 = _G
  L0_2 = L0_2.assert
  L1_2 = selectedBird
  L1_2 = L1_2 ~= nil
  L0_2(L1_2)
  L0_2 = blockTable
  L0_2 = L0_2.blocks
  L1_2 = selectedBird
  L1_2 = L1_2.definition
  L0_2 = L0_2[L1_2]
  L1_2 = setAimingAidSprite
  L2_2 = L0_2.aimingAidSprite
  L1_2(L2_2)
end

handleBirdSelected = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = cursorPhysics
  L1_2 = g_useNewBirdLaunch
  if L1_2 then
    L1_2 = g_aimingAidCursor
    L0_2 = L1_2.cursorToUse
  end
  L1_2 = selectedBird
  if L1_2 ~= nil then
    L1_2 = {}
    L2_2 = L0_2.x
    L3_2 = levelStartPosition
    L3_2 = L3_2.x
    L2_2 = L2_2 - L3_2
    L1_2.x = L2_2
    L2_2 = L0_2.y
    L3_2 = levelStartPosition
    L3_2 = L3_2.y
    L2_2 = L2_2 - L3_2
    L1_2.y = L2_2
    L2_2 = vLength
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L2_2 = L2_2(L3_2, L4_2)
    if 0 < L2_2 then
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.min
      L4_2 = 1
      L5_2 = selectedBird
      L5_2 = L5_2.controlRadius
      L5_2 = L5_2 / L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = setPosition
      L5_2 = selectedBird
      L5_2 = L5_2.name
      L6_2 = levelStartPosition
      L6_2 = L6_2.x
      L7_2 = L1_2.x
      L7_2 = L7_2 * L3_2
      L6_2 = L6_2 + L7_2
      L7_2 = levelStartPosition
      L7_2 = L7_2.y
      L8_2 = L1_2.y
      L8_2 = L8_2 * L3_2
      L7_2 = L7_2 + L8_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = setRotation
      L5_2 = selectedBird
      L5_2 = L5_2.name
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.pi
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.atan2
      L8_2 = L1_2.y
      L9_2 = L1_2.x
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L6_2 + L7_2
      L4_2(L5_2, L6_2)
    else
      L3_2 = setPosition
      L4_2 = selectedBird
      L4_2 = L4_2.name
      L5_2 = levelStartPosition
      L5_2 = L5_2.x
      L6_2 = levelStartPosition
      L6_2 = L6_2.y
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end

handleBirdIsBeingMoved = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = selectedBird
  if L0_2 ~= nil then
    L0_2 = selectedBird
    L0_2 = L0_2.dragStartedTimer
    if L0_2 then
      L0_2 = selectedBird
      L0_2.dragStartedTimer = nil
    end
    L0_2 = setPosition
    L1_2 = selectedBird
    L1_2 = L1_2.name
    L2_2 = levelStartPosition
    L2_2 = L2_2.x
    L3_2 = levelStartPosition
    L3_2 = L3_2.y
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = setRotation
    L1_2 = selectedBird
    L1_2 = L1_2.name
    L2_2 = slingShotAngle
    if not L2_2 then
      L2_2 = 0
    end
    L0_2(L1_2, L2_2)
    L0_2 = g_birdDragOnTouchAttributes
    L0_2.dragging = false
    L0_2 = nil
    selectedBird = L0_2
    L0_2 = "CURSOR_HAND_POINT"
    g_currentCursorName = L0_2
    L0_2 = rubberBandPos
    L1_2 = levelStartPosition
    L1_2 = L1_2.x
    L0_2.x = L1_2
    L0_2 = rubberBandPos
    L1_2 = levelStartPosition
    L1_2 = L1_2.y
    L0_2.y = L1_2
    L0_2 = 0
    rubberBandSpeed = L0_2
    L0_2 = 0
    rubberBandLength = L0_2
    L0_2 = clearAimingAid
    L1_2 = 1
    L0_2(L1_2)
  end
end

cancelBirdDrag = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = screen
  L0_2 = L0_2.x
  L1_2 = screenWidth
  L1_2 = L1_2 * 0.45
  L2_2 = worldScale
  L3_2 = slingshotScale
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 / L2_2
  L0_2 = L0_2 - L1_2
  L1_2 = physicsToWorldTransform
  L2_2 = levelStartPosition
  L2_2 = L2_2.x
  L3_2 = levelStartPosition
  L3_2 = L3_2.y
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L0_2 < L1_2
  return L3_2
end

isTouchDragAllowed = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = isKeyPressed
  L3_2 = "LBUTTON"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = g_mouseDragAttributes
    L2_2.lastPressedX = -1
    L2_2 = g_mouseDragAttributes
    L2_2.lastPressedY = -1
    L2_2 = g_mouseDragAttributes
    L2_2.dragFromMouse = false
    L2_2 = g_mouseDragAttributes
    L2_2.mouseDragTime = 0
    L2_2 = g_mouseDragAttributes
    L2_2.cummulativeDragX = 0
    L2_2 = g_mouseDragAttributes
    L2_2.cummulativeDragY = 0
  else
    L2_2 = isKeyHold
    L3_2 = "LBUTTON"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = g_mouseDragAttributes
      L2_2.dragFromMouse = true
      L2_2 = g_mouseDragAttributes
      L2_2.dragFromTouch = false
      L2_2 = false
      if L2_2 == false then
        L3_2 = t_cursorOnHUDButtons
        if L3_2 == false then
          L3_2 = "CURSOR_HAND_GRAB"
          g_currentCursorName = L3_2
        end
      end
      L3_2 = g_mouseDragAttributes
      L3_2 = L3_2.lastPressedX
      if L3_2 < 0 then
        L3_2 = cursor
        L3_2 = L3_2.x
        g_mouseDragStartX = L3_2
        L3_2 = g_mouseDragAttributes
        L3_2.mouseDragTime = 0
        L3_2 = g_mouseDragAttributes
        L3_2.cummulativeDragX = 0
        L3_2 = g_mouseDragAttributes
        L3_2.cummulativeDragY = 0
        L3_2 = g_mouseDragAttributes
        L4_2 = cursor
        L4_2 = L4_2.x
        L3_2.lastPressedX = L4_2
        L3_2 = g_mouseDragAttributes
        L4_2 = cursor
        L4_2 = L4_2.y
        L3_2.lastPressedY = L4_2
      else
        L3_2 = g_mouseDragAttributes
        L3_2 = L3_2.mouseDragTime
        L4_2 = g_mouseDragAttributes
        L4_2 = L4_2.targetDragTime
        if L3_2 < L4_2 then
          L3_2 = g_mouseDragAttributes
          L4_2 = g_mouseDragAttributes
          L4_2 = L4_2.cummulativeDragX
          L5_2 = cursor
          L5_2 = L5_2.x
          L6_2 = g_mouseDragAttributes
          L6_2 = L6_2.lastPressedX
          L5_2 = L5_2 - L6_2
          L4_2 = L4_2 + L5_2
          L3_2.cummulativeDragX = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = g_mouseDragAttributes
          L4_2 = L4_2.cummulativeDragY
          L5_2 = cursor
          L5_2 = L5_2.y
          L6_2 = g_mouseDragAttributes
          L6_2 = L6_2.lastPressedY
          L5_2 = L5_2 - L6_2
          L4_2 = L4_2 + L5_2
          L3_2.cummulativeDragY = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = g_mouseDragAttributes
          L4_2 = L4_2.mouseDragTime
          L4_2 = L4_2 + A0_2
          L3_2.mouseDragTime = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = cursor
          L4_2 = L4_2.x
          L3_2.lastPressedX = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = cursor
          L4_2 = L4_2.y
          L3_2.lastPressedY = L4_2
        else
          L3_2 = g_mouseDragAttributes
          L4_2 = g_mouseDragAttributes
          L4_2 = L4_2.mouseDragTime
          L5_2 = g_mouseDragAttributes
          L5_2 = L5_2.targetDragTime
          L4_2 = L4_2 % L5_2
          L3_2.mouseDragTime = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = cursor
          L4_2 = L4_2.x
          L5_2 = g_mouseDragAttributes
          L5_2 = L5_2.lastPressedX
          L4_2 = L4_2 - L5_2
          L3_2.cummulativeDragX = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = cursor
          L4_2 = L4_2.y
          L5_2 = g_mouseDragAttributes
          L5_2 = L5_2.lastPressedY
          L4_2 = L4_2 - L5_2
          L3_2.cummulativeDragY = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = cursor
          L4_2 = L4_2.x
          L3_2.lastPressedX = L4_2
          L3_2 = g_mouseDragAttributes
          L4_2 = cursor
          L4_2 = L4_2.y
          L3_2.lastPressedY = L4_2
        end
      end
    else
      L2_2 = isKeyReleased
      L3_2 = "LBUTTON"
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = g_mouseDragAttributes
        L2_2.lastPressedX = -1
        L2_2 = g_mouseDragAttributes
        L2_2.lastPressedY = -1
        L2_2 = g_mouseDragAttributes
        L2_2.dragFromMouse = false
      end
    end
  end
end

updatePCMouseDragging = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = touchcount
  if L2_2 == 2 then
    L2_2 = SettingsWrapper
    L2_2 = L2_2.getFullScreen
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = g_gesturePausePage
      L2_2 = L2_2.touchOneID
      if L2_2 == nil then
        L2_2 = _G
        L2_2 = L2_2.pairs
        L3_2 = touches
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = g_gesturePausePage
          L7_2.touchOneID = L5_2
          break
        end
        L2_2 = g_gesturePausePage
        L3_2 = touches
        L4_2 = g_gesturePausePage
        L4_2 = L4_2.touchOneID
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.x
        L2_2.currentDragX = L3_2
        L2_2 = g_gesturePausePage
        L3_2 = touches
        L4_2 = g_gesturePausePage
        L4_2 = L4_2.touchOneID
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.y
        L2_2.currentDragY = L3_2
      end
      L2_2 = g_gesturePausePage
      L2_2 = L2_2.touchOneID
      if L2_2 ~= nil then
        L2_2 = touches
        L3_2 = g_gesturePausePage
        L3_2 = L3_2.touchOneID
        L2_2 = L2_2[L3_2]
        if L2_2 then
          L2_2 = g_gesPrevX
          if not L2_2 then
            L2_2 = touches
            L3_2 = g_gesturePausePage
            L3_2 = L3_2.touchOneID
            L2_2 = L2_2[L3_2]
            L2_2 = L2_2.x
          end
          g_gesPrevX = L2_2
          L2_2 = g_gesPrevY
          if not L2_2 then
            L2_2 = touches
            L3_2 = g_gesturePausePage
            L3_2 = L3_2.touchOneID
            L2_2 = L2_2[L3_2]
            L2_2 = L2_2.y
          end
          g_gesPrevY = L2_2
          L2_2 = touches
          L3_2 = g_gesturePausePage
          L3_2 = L3_2.touchOneID
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.x
          L3_2 = g_gesPrevX
          L2_2 = L2_2 - L3_2
          g_gesDragX = L2_2
          L2_2 = touches
          L3_2 = g_gesturePausePage
          L3_2 = L3_2.touchOneID
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.y
          L3_2 = g_gesPrevY
          L2_2 = L2_2 - L3_2
          g_gesDragY = L2_2
          L2_2 = touches
          L3_2 = g_gesturePausePage
          L3_2 = L3_2.touchOneID
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.x
          g_gesPrevX = L2_2
          L2_2 = touches
          L3_2 = g_gesturePausePage
          L3_2 = L3_2.touchOneID
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.y
          g_gesPrevY = L2_2
          L2_2 = 30
          L3_2 = 5
          L4_2 = g_gesturePausePage
          L4_2 = L4_2.visible
          if not L4_2 then
            L4_2 = g_animLevel
            if not L4_2 then
              L4_2 = distance
              L5_2 = 0
              L6_2 = 0
              L7_2 = g_gesDragX
              L8_2 = g_gesDragY
              L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
              if L2_2 < L4_2 then
                L4_2 = _G
                L4_2 = L4_2.math
                L4_2 = L4_2.abs
                L5_2 = g_gesDragX
                L4_2 = L4_2(L5_2)
                L4_2 = L3_2 * L4_2
                L5_2 = _G
                L5_2 = L5_2.math
                L5_2 = L5_2.abs
                L6_2 = g_gesDragY
                L5_2 = L5_2(L6_2)
                if L4_2 < L5_2 then
                  L4_2 = g_gesturePausePage
                  L5_2 = L4_2
                  L4_2 = L4_2.open
                  L4_2(L5_2)
                end
              end
            end
          end
        end
      end
  end
  else
    L2_2 = g_gesturePausePage
    L2_2.touchOneID = nil
    L2_2 = nil
    g_gesPrevX = L2_2
    L2_2 = nil
    g_gesPrevY = L2_2
  end
end

updatePCGesturePause = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = multitouchSweep
  L2_2 = L2_2.isSweepping
  if L2_2 == true then
    L2_2 = multitouchSweep
    L2_2 = L2_2.sweepAxis
    if L2_2 == "x" then
      L2_2 = multitouchSweep
      L2_2 = L2_2.sweepOffsetX
      L3_2 = g_usingNewCamera
      if L3_2 then
        L3_2 = worldScale
        L3_2 = L2_2 / L3_2
        L4_2 = gameCamera
        L5_2 = L4_2
        L4_2 = L4_2.panCamera
        L6_2 = L3_2
        L7_2 = L3_2
        L8_2 = true
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L3_2 = objects
        L3_2 = L3_2.castleCameraData
        L4_2 = deviceModel
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.px
        L4_2 = objects
        L4_2 = L4_2.birdCameraData
        L5_2 = deviceModel
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.px
        L3_2 = L3_2 - L4_2
        if 1 < L3_2 then
          L4_2 = worldScale
          L4_2 = L3_2 * L4_2
          L4_2 = L2_2 / L4_2
          L5_2 = cameraAnimationSlider
          L5_2 = L5_2 - L4_2
          cameraAnimationSlider = L5_2
        end
        L4_2 = _G
        L4_2 = L4_2.math
        L4_2 = L4_2.max
        L5_2 = 0
        L6_2 = cameraAnimationSlider
        L4_2 = L4_2(L5_2, L6_2)
        cameraAnimationSlider = L4_2
        L4_2 = _G
        L4_2 = L4_2.math
        L4_2 = L4_2.min
        L5_2 = 1
        L6_2 = cameraAnimationSlider
        L4_2 = L4_2(L5_2, L6_2)
        cameraAnimationSlider = L4_2
        L4_2 = cameraAnimationSlider
        if 0.5 < L4_2 then
          L4_2 = 1
          cameraAnimationSliderTarget = L4_2
        else
          L4_2 = 0
          cameraAnimationSliderTarget = L4_2
        end
      end
    end
  end
end

updateMultitouchSweep = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[A0_2]
    L2_2 = L1_2.rotateWhileFlying
    if L2_2 ~= nil then
      L2_2 = L1_2.rotateWhileFlying
      if not L2_2 then
        return
      end
    end
    L2_2 = _G
    L2_2 = L2_2.math
    L2_2 = L2_2.atan2
    L3_2 = L1_2.yVel
    L4_2 = L1_2.xVel
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = setRotation
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end

rotateFlyingBird = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = setGameOn
  L1_2 = isInGameMode
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = setPhysicsEnabled
  L1_2 = true
  L0_2(L1_2)
end

enableGameUpdate = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getLevelProgress
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 >= L2_2 then
    L2_2 = actions
    L2_2 = L2_2.myLevels
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    L3_2 = getLevelMetadata
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.episodeEndComic
    if not L3_2 then
      L3_2 = loginfo
      L4_2 = "storeLevelProgress() LEVEL PROGRESS STORED"
      L3_2(L4_2)
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.setLevelProgress
      L5_2 = A0_2
      L6_2 = A1_2 + 1
      L3_2(L4_2, L5_2, L6_2)
      return
    end
  end
  L2_2 = loginfo
  L3_2 = "storeLevelProgress() level progress not stored"
  L2_2(L3_2)
end

storeLevelProgress = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = platformSupportsME
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = getLevelMetadata
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.rewardEagles
    if L1_2 ~= nil then
      L2_2 = L1_2.amount
      if L2_2 ~= nil then
        L2_2 = SettingsWrapper
        L3_2 = L2_2
        L2_2 = L2_2.isEaglesRewardedFrom
        L4_2 = A0_2
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= true then
          L2_2 = SettingsWrapper
          L3_2 = L2_2
          L2_2 = L2_2.setEaglesRewarderFrom
          L4_2 = A0_2
          L2_2(L3_2, L4_2)
          L2_2 = fireAction
          L3_2 = "setMEAdvertPossible"
          L4_2 = {}
          L2_2(L3_2, L4_2)
          L2_2 = addMightyEagles
          L3_2 = L1_2.amount
          L2_2(L3_2)
        end
      end
    end
  end
end

checkRewardMightyEagles = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = actions
  L3_2 = L3_2.myLevels
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = getLevelMetadata
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.type
    if L7_2 ~= "comic" then
      L7_2 = getLevelMetadata
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.ignoreScore
      if L7_2 ~= true then
        if A1_2 then
          L7_2 = getLevelMetadata
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L7_2 = L7_2.lastLevelOfEpisode
          if L7_2 then
        end
        else
          L7_2 = highscores
          L8_2 = highscores
          L8_2 = L8_2[L6_2]
          if not L8_2 then
            L8_2 = {}
          end
          L7_2[L6_2] = L8_2
          L7_2 = highscores
          L7_2 = L7_2[L6_2]
          L7_2.score = 1000000000
          L7_2 = highscores
          L7_2 = L7_2[L6_2]
          L7_2.eagleScore = 100
        end
      end
    end
  end
end

cheatAllThreeStars = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = highscores
  L1_2 = levelName
  L0_2 = L0_2[L1_2]
  L0_2.score = 999999
  L0_2 = highscores
  L1_2 = levelName
  L0_2 = L0_2[L1_2]
  L0_2.eagleScore = 100
end

cheatThreeStarsCurrentLevel = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = clearAimingAid
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = enableAimingAid
  L2_2 = false
  L1_2(L2_2)
  L1_2 = levelCompleted
  if L1_2 then
    L1_2 = birdBuffTimer
    L1_2 = L1_2 - A0_2
    birdBuffTimer = L1_2
    L1_2 = birdBuffTimer
    if L1_2 < 0 then
      L1_2 = getNextBird
      L2_2 = birdsLeftCounter
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L2_2 = birdsLeftCounter
        L2_2 = L2_2 + 1
        birdsLeftCounter = L2_2
        L2_2 = birdsLeftScoreIncrement
        L3_2 = getObjectDefinition
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = L3_2.birdLeftScore
        if L4_2 then
          L2_2 = L3_2.birdLeftScore
        end
        L4_2 = scoreTable
        L4_2 = L4_2.birds
        L5_2 = scoreTable
        L5_2 = L5_2.birds
        L5_2 = L5_2.score
        L5_2 = L5_2 + L2_2
        L4_2.score = L5_2
        L4_2 = objects
        L4_2 = L4_2.world
        L4_2 = L4_2[L1_2]
        L5_2 = addLeftoverBirdScore
        if L5_2 then
          L5_2 = addLeftoverBirdScore
          L6_2 = L4_2.definition
          L7_2 = L2_2
          L5_2(L6_2, L7_2)
        end
        L5_2 = hasBirdsLeftInSlingShot
        L5_2 = L5_2()
        if L5_2 then
          L5_2 = L3_2.sounds
          L5_2 = L5_2.idle
          if L5_2 then
            L5_2 = playAudio
            L6_2 = L3_2.sounds
            L6_2 = L6_2.idle
            L5_2(L6_2)
          else
            L5_2 = playAudio
            L6_2 = "bird_misc"
            L5_2(L6_2)
          end
        end
        L5_2 = _G
        L5_2 = L5_2.table
        L5_2 = L5_2.insert
        L6_2 = floatingScores
        L7_2 = {}
        L7_2.birdScore = true
        L8_2 = L4_2.x
        L7_2.x = L8_2
        L8_2 = L4_2.y
        L9_2 = gameWorldScale
        L9_2 = 4 * L9_2
        L8_2 = L8_2 - L9_2
        L7_2.y = L8_2
        L8_2 = getObjectDefinition
        L9_2 = L1_2
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2.sprites
        L8_2 = L8_2.score
        L7_2.sprite = L8_2
        L7_2.score = L2_2
        L7_2.time = 0
        L7_2.lifetime = 0.9
        L7_2.maxScale = 1
        L7_2.xs = 0
        L5_2(L6_2, L7_2)
        L5_2 = 0.5
        birdBuffTimer = L5_2
      else
        L2_2 = levelCompleteTimer
        L2_2 = L2_2 - A0_2
        levelCompleteTimer = L2_2
      end
      L2_2 = updateScore
      L3_2 = A0_2
      L2_2(L3_2)
      L2_2 = quadClick
      if L2_2 == true then
        L2_2 = getLevelStarScoreLimit
        L3_2 = levelName
        L4_2 = 3
        L2_2 = L2_2(L3_2, L4_2)
        score = L2_2
        L2_2 = eagleBaitLaunched
        if L2_2 == true then
          L2_2 = starTable
          L3_2 = levelName
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.eagleScore
          score = L2_2
        end
      end
    end
  else
    L1_2 = levelCompleteTimer
    L1_2 = L1_2 - A0_2
    levelCompleteTimer = L1_2
  end
  L1_2 = levelCompleteTimer
  if L1_2 <= 0 then
    L1_2 = resetEventSystem
    if L1_2 then
      L1_2 = resetEventSystem
      L1_2()
    else
      L1_2 = false
      g_blockLevelMusic = L1_2
      L1_2 = gotoLevelEnding
      L1_2()
    end
  end
end

updateLevelEnding = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = loginfo
  L2_2 = [[

 ---------- init level complete ----------- 
 ]]
  L1_2(L2_2)
  L1_2 = startedFromEditor
  if not L1_2 then
    L1_2 = editor
    if L1_2 == nil then
      L1_2 = checkForLevelCompleteRewards
      L1_2()
    end
  end
  L1_2 = currentMusic
  if L1_2 ~= nil then
    L1_2 = res
    L1_2 = L1_2.isAudioPlaying
    L2_2 = currentMusic
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = res
      L1_2 = L1_2.stopAudio
      L2_2 = currentMusic
      L1_2(L2_2)
    end
  end
  L1_2 = previousMusicName
  if L1_2 ~= nil then
    L1_2 = res
    L1_2 = L1_2.isAudioPlaying
    L2_2 = previousMusicName
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = res
      L1_2 = L1_2.stopAudio
      L2_2 = previousMusicName
      L1_2(L2_2)
    end
  end
  L1_2 = rubberBandPos
  L2_2 = levelStartPosition
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L1_2 = rubberBandPos
  L2_2 = levelStartPosition
  L2_2 = L2_2.y
  L1_2.y = L2_2
  L1_2 = 0
  rubberBandSpeed = L1_2
  L1_2 = true
  levelCompleted = L1_2
  L1_2 = currentBirdIndex
  birdsLeftCounter = L1_2
  L1_2 = disableME
  L1_2()
  L1_2 = levelObjectives
  if L1_2 then
    L1_2 = levelObjectives
    L1_2 = L1_2.isObjectiveCompleted
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = eventManager
      L2_2 = L1_2
      L1_2 = L1_2.notify
      L3_2 = {}
      L4_2 = events
      L4_2 = L4_2.EID_LEVEL_OBJECTIVES_COMPLETED
      L3_2.id = L4_2
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = powerups
  if L1_2 then
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_POWERUP_CLOSE_SLIDER
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = currentBirdName
  if L1_2 ~= nil then
    L1_2 = objects
    L1_2 = L1_2.world
    L2_2 = currentBirdName
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.shot
    if L1_2 ~= true then
      L1_2 = objects
      L1_2 = L1_2.world
      L2_2 = currentBirdName
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.isLastChanceBird
      if not L1_2 then
        goto lbl_99
      end
    end
  end
  L1_2 = birdsLeftCounter
  L1_2 = L1_2 + 1
  birdsLeftCounter = L1_2
  ::lbl_99::
  if not A0_2 then
    L1_2 = playAudio
    L2_2 = "level_clear_military"
    L1_2(L2_2)
  end
  L1_2 = stopAudioByFilter
  L2_2 = audioFilters
  L2_2 = L2_2.levelEndFilters
  L1_2(L2_2)
  L1_2 = levelCompleteDelay
  if not L1_2 then
    L1_2 = 1
  end
  levelCompleteTimer = L1_2
  L1_2 = 1
  birdBuffTimer = L1_2
  L1_2 = true
  g_blockLevelMusic = L1_2
  L1_2 = 5
  g_cameraSpringForceConstantNoTarget = L1_2
  L1_2 = dontMoveToBirdCameraWhenFinished
  if not L1_2 then
    L1_2 = g_usingNewCamera
    if L1_2 then
      L1_2 = activateLevelEndCamera
      L1_2()
    else
      L1_2 = moveToBirdCamera
      L2_2 = objects
      L2_2 = L2_2.castleCameraData
      L3_2 = deviceModel
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.px
      L3_2 = objects
      L3_2 = L3_2.birdCameraData
      L4_2 = deviceModel
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.px
      L2_2 = L2_2 - L3_2
      L1_2(L2_2)
    end
  end
  L1_2 = selectedBird
  if L1_2 ~= nil then
    L1_2 = selectedBird
    L1_2 = L1_2.name
    if L1_2 ~= nil then
      L1_2 = selectedBird
      L1_2 = L1_2.name
      if L1_2 ~= "" then
        L1_2 = cancelBirdDrag
        L1_2()
      end
    end
  end
end

initLevelComplete = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = levelFailed
  if not L1_2 then
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_LEVEL_FAILED_INITIALIZED
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_LEVEL_WILL_END
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = true
  levelFailed = L1_2
  L1_2 = blockTable
  L1_2 = L1_2.themes
  L2_2 = currentTheme
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.levelFailedSound
  if L1_2 ~= nil then
    L2_2 = res
    L2_2 = L2_2.isAudioPlaying
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= true then
      L2_2 = playAudio
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
  L2_2 = g_usingNewCamera
  if L2_2 then
    L2_2 = levelFailedTimer
    if L2_2 == 0 then
      L2_2 = initLevelFailedCamera
      L2_2()
    end
  end
  L2_2 = stopAudioByFilter
  L3_2 = audioFilters
  L3_2 = L3_2.levelEndFilters
  L2_2(L3_2)
  L2_2 = levelFailedTimer
  L2_2 = L2_2 + A0_2
  levelFailedTimer = L2_2
  L2_2 = levelFailedTimer
  L3_2 = levelFailedDelay
  if not L3_2 then
    L3_2 = 1.5
  end
  if L2_2 > L3_2 then
    L2_2 = print
    L3_2 = "SETTING LEVEL FAILED"
    L2_2(L3_2)
    L2_2 = 0.5
    levelCompleteTimer = L2_2
  end
end

initLevelFailed = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = initializeEventSystem
  L0_2()
  L0_2 = initializeMenu
  L0_2()
  L0_2 = loadSubsystems
  L0_2()
  L0_2 = initSubsystems
  L0_2()
  L0_2 = updateValues
  L0_2()
  L0_2 = setPhysicsEnabled
  L1_2 = false
  L0_2(L1_2)
  L0_2 = _G
  L0_2 = L0_2.math
  L0_2 = L0_2.cos
  cos = L0_2
  L0_2 = _G
  L0_2 = L0_2.math
  L0_2 = L0_2.sin
  sin = L0_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.increaseSessionNumber
  L0_2(L1_2)
  L0_2 = biCheckDailyActiveNewUser
  L0_2()
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_GAME_INITIALIZED
  L2_2.id = L3_2
  L3_2 = screenWidth
  L2_2.screenWidth = L3_2
  L3_2 = screenHeight
  L2_2.screenHeight = L3_2
  L3_2 = customerString
  L2_2.customerString = L3_2
  L3_2 = deviceModel
  L2_2.deviceModel = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getGamePurchasedFrom
  L0_2 = L0_2(L1_2)
  if L0_2 == nil then
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.setGamePurchasedFrom
    L2_2 = customerString
    L0_2(L1_2, L2_2)
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.notify
    L2_2 = {}
    L3_2 = events
    L3_2 = L3_2.EID_FLURRY_GAME_PURCHASED_FROM
    L2_2.id = L3_2
    L3_2 = customerString
    L2_2.from = L3_2
    L0_2(L1_2, L2_2)
  end
end

initializeGame = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/subsystemsapi.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "subsystemsapi"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/subsystems/subsystems.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "subsystems"
  L0_2(L1_2, L2_2, L3_2)
end

loadSubsystems = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "gamelogic - initSubsystems()"
  L0_2(L1_2)
  L0_2 = initAds
  L0_2()
  L0_2 = showEditor
  if L0_2 ~= true then
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/flurry.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.subsystems
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
end

initSubsystems = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = bi_data
  if not L0_2 then
    L0_2 = {}
  end
  bi_data = L0_2
  L0_2 = bi_data
  L1_2 = bi_data
  L1_2 = L1_2.root
  if not L1_2 then
    L1_2 = {}
  end
  L0_2.root = L1_2
  L0_2 = bi_data
  L0_2 = L0_2.root
  L0_2 = L0_2.first_launch_date
  if not L0_2 then
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.notify
    L2_2 = {}
    L3_2 = events
    L3_2 = L3_2.EID_BI_NEW_USER
    L2_2.id = L3_2
    L0_2(L1_2, L2_2)
    L0_2 = getCurrentTime
    L0_2 = L0_2()
    L0_2.hour = 0
    L0_2.minutes = 0
    L0_2.seconds = 0
    L1_2 = bi_data
    L1_2 = L1_2.root
    L1_2.first_launch_date = L0_2
  else
    L0_2 = getTimeDifference
    L1_2 = getCurrentTime
    L1_2 = L1_2()
    L2_2 = bi_data
    L2_2 = L2_2.root
    L2_2 = L2_2.first_launch_date
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = L0_2.days
    if 1 <= L1_2 then
      L1_2 = eventManager
      L2_2 = L1_2
      L1_2 = L1_2.notify
      L3_2 = {}
      L4_2 = events
      L4_2 = L4_2.EID_BI_RETENTION
      L3_2.id = L4_2
      L4_2 = L0_2.days
      L3_2.differenceInDays = L4_2
      L1_2(L2_2, L3_2)
    end
  end
  L0_2 = bi_data
  L0_2 = L0_2.root
  L0_2 = L0_2.last_launch_date
  if not L0_2 then
    L0_2 = bi_data
    L0_2 = L0_2.root
    L1_2 = getCurrentTime
    L1_2 = L1_2()
    L0_2.last_launch_date = L1_2
  else
    L0_2 = getTimeDifference
    L1_2 = getCurrentTime
    L1_2 = L1_2()
    L2_2 = bi_data
    L2_2 = L2_2.root
    L2_2 = L2_2.last_launch_date
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = L0_2.days
    if 1 <= L1_2 then
      L1_2 = eventManager
      L2_2 = L1_2
      L1_2 = L1_2.notify
      L3_2 = {}
      L4_2 = events
      L4_2 = L4_2.EID_BI_DAILY_ACTIVE
      L3_2.id = L4_2
      L4_2 = L0_2.days
      L3_2.differenceInDays = L4_2
      L1_2(L2_2, L3_2)
    end
  end
  L0_2 = savePersistentLuaFileWrapper
  L1_2 = "bi_data.lua"
  L2_2 = "bi_data"
  L0_2(L1_2, L2_2)
end

biCheckDailyActiveNewUser = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setAudioEnabled
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isAudioEnabled
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "metroSnapAudioToggle: "
  L2_2 = _G
  L2_2 = L2_2.tostring
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.isAudioEnabled
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isAudioEnabled
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = _G
    L0_2 = L0_2.res
    L0_2 = L0_2.stopAudioOutput
    L0_2()
    L0_2 = nil
    audioRampVolume = L0_2
    L0_2 = nil
    audioRampLength = L0_2
  else
    L0_2 = nil
    audioRampVolume = L0_2
    L0_2 = nil
    audioRampLength = L0_2
    L0_2 = res
    L0_2 = L0_2.startAudioOutput
    L0_2 = L0_2()
    if not L0_2 then
      L0_2 = isPCVersion
      L0_2 = L0_2()
      if L0_2 == true then
        L0_2 = res
        L0_2 = L0_2.createAudioOutput
        L1_2 = 2
        L2_2 = 16
        L3_2 = 44100
        L0_2(L1_2, L2_2, L3_2)
      else
        L0_2 = res
        L0_2 = L0_2.createAudioOutput
        L1_2 = 1
        L2_2 = 16
        L3_2 = 16000
        L0_2(L1_2, L2_2, L3_2)
      end
    end
    L0_2 = g_blockLevelMusic
    if not L0_2 then
      L0_2 = handleLevelMusic
      L0_2()
    end
  end
end

metroSnapToggleAudio = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = ""
  L1_2 = ""
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getDolbyProfileIndex
  L2_2 = L2_2(L3_2)
  L3_2 = getDolbyProfileCount
  L3_2 = L3_2()
  L3_2 = L3_2 - 2
  if L2_2 < L3_2 then
    L3_2 = enableDolby
    L4_2 = true
    L3_2(L4_2)
    L2_2 = L2_2 + 1
    L3_2 = print
    L4_2 = "change Dolby setting to ("
    L5_2 = L2_2
    L6_2 = "): "
    L7_2 = _G
    L7_2 = L7_2.tostring
    L8_2 = getDolbyProfileName
    L9_2 = L2_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L3_2(L4_2)
    L3_2 = getText
    L4_2 = "TEXT_DOLBY_SWITCH"
    L3_2 = L3_2(L4_2)
    L0_2 = L3_2
    L3_2 = _G
    L3_2 = L3_2.tostring
    L4_2 = getDolbyProfileName
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2 = L3_2
    L3_2 = setDolbyProfile
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.setDolbyProfileIndex
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = print
    L4_2 = "Turn off Dolby"
    L3_2(L4_2)
    L3_2 = getText
    L4_2 = "TEXT_DOLBY_OFF"
    L3_2 = L3_2(L4_2)
    L0_2 = L3_2
    L1_2 = ""
    L3_2 = enableDolby
    L4_2 = false
    L3_2(L4_2)
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.setDolbyProfileIndex
    L5_2 = -1
    L3_2(L4_2, L5_2)
  end
  L3_2 = notificationsFrame
  L4_2 = L3_2
  L3_2 = L3_2.getChild
  L5_2 = "dolbyPopup"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.close
    L4_2(L5_2)
  end
  L4_2 = ui
  L4_2 = L4_2.DolbyPopup
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.isGuest = false
  L6_2.descriptionText = L1_2
  L7_2 = getButtonImageName
  L8_2 = "rovioIDLoggedInButton"
  L9_2 = SettingsWrapper
  L10_2 = L9_2
  L9_2 = L9_2.isDarkSide
  L9_2, L10_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.icon = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.getChild
  L7_2 = "title"
  L5_2 = L5_2(L6_2, L7_2)
  L5_2.text = L0_2
  L4_2.name = "dolbyPopup"
  L5_2 = notificationsFrame
  L6_2 = L5_2
  L5_2 = L5_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.onEntry
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.layout
  L5_2(L6_2)
  L5_2 = true
  g_showingSoundPopup = L5_2
end

toggleDolby = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setAudioEnabled
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isAudioEnabled
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "toggleAudio: "
  L2_2 = _G
  L2_2 = L2_2.tostring
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.isAudioEnabled
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isAudioEnabled
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = 1
    audioRampVolume = L0_2
    L0_2 = -1
    audioRampLength = L0_2
  else
    L0_2 = nil
    audioRampVolume = L0_2
    L0_2 = nil
    audioRampLength = L0_2
    L0_2 = res
    L0_2 = L0_2.startAudioOutput
    L0_2 = L0_2()
    if not L0_2 then
      L0_2 = isPCVersion
      L0_2 = L0_2()
      if L0_2 == true then
        L0_2 = res
        L0_2 = L0_2.createAudioOutput
        L1_2 = 2
        L2_2 = 16
        L3_2 = 44100
        L0_2(L1_2, L2_2, L3_2)
      else
        L0_2 = res
        L0_2 = L0_2.createAudioOutput
        L1_2 = 1
        L2_2 = 16
        L3_2 = 16000
        L0_2(L1_2, L2_2, L3_2)
      end
    end
    L0_2 = setEffectsVolume
    L1_2 = 1
    L0_2(L1_2)
    L0_2 = setMusicVolume
    L1_2 = 1
    L0_2(L1_2)
    L0_2 = g_blockLevelMusic
    if not L0_2 then
      L0_2 = handleLevelMusic
      L0_2()
    end
  end
end

toggleAudio = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isAudioEnabled
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setState
    L3_2 = 1
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setState
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
end

setAudioButtonState = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = currentBirdIndex
  L1_2 = L1_2 + 1
  L2_2 = nextBirdTimer
  if 0 < L2_2 then
    L2_2 = nextBirdTimer
    L2_2 = L2_2 - A0_2
    nextBirdTimer = L2_2
    L2_2 = nextBirdTimer
    if L2_2 <= 0 then
      L2_2 = getNextBird
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 ~= nil then
        L2_2 = birdFired
        if L2_2 then
          L2_2 = false
          birdFired = L2_2
          L2_2 = true
          fillInNextBird = L2_2
          L2_2 = nil
          selectedBird = L2_2
        end
      else
        L2_2 = false
        allowResetToBirdCamera = L2_2
      end
    end
  end
  L2_2 = fillInNextBird
  if L2_2 == true then
    L2_2 = birdToSlingshotBirdName
    if L2_2 == nil then
      L2_2 = 0
      birdToSlingshotAnimationTimer = L2_2
      L2_2 = getNextBird
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      birdToSlingshotBirdName = L2_2
      L2_2 = birdToSlingshotBirdName
      if L2_2 == nil then
        L2_2 = startedFromEditor
        if L2_2 == true then
          L2_2 = _G
          L2_2 = L2_2.assert
          L3_2 = false
          L4_2 = "No Birds in level!!"
          L2_2(L3_2, L4_2)
          return
        end
      end
      L2_2 = birdToSlingshotBirdName
      if L2_2 ~= nil then
        L2_2 = setObjectParameter
        L3_2 = birdToSlingshotBirdName
        L4_2 = 2
        L5_2 = 1
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = objects
        L2_2 = L2_2.world
        L3_2 = birdToSlingshotBirdName
        L2_2 = L2_2[L3_2]
        L2_2.jumpTimer = 10000
        L2_2 = objects
        L2_2 = L2_2.world
        L3_2 = birdToSlingshotBirdName
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.jumpOn
        if L2_2 == true then
          L2_2 = objects
          L2_2 = L2_2.world
          L3_2 = birdToSlingshotBirdName
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.oldY
          birdToSlingshotAnimationStartY = L2_2
          L2_2 = objects
          L2_2 = L2_2.world
          L3_2 = birdToSlingshotBirdName
          L2_2 = L2_2[L3_2]
          L3_2 = objects
          L3_2 = L3_2.world
          L4_2 = birdToSlingshotBirdName
          L3_2 = L3_2[L4_2]
          L3_2 = L3_2.oldY
          L2_2.y = L3_2
          L2_2 = objects
          L2_2 = L2_2.world
          L3_2 = birdToSlingshotBirdName
          L2_2 = L2_2[L3_2]
          L2_2.jumpOn = false
        end
        L2_2 = objects
        L2_2 = L2_2.world
        L3_2 = birdToSlingshotBirdName
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.x
        birdToSlingshotAnimationStartX = L2_2
        L2_2 = objects
        L2_2 = L2_2.world
        L3_2 = birdToSlingshotBirdName
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.y
        birdToSlingshotAnimationStartY = L2_2
        L2_2 = levelStartPosition
        L2_2 = L2_2.y
        L3_2 = objects
        L3_2 = L3_2.world
        L4_2 = birdToSlingshotBirdName
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.y
        L2_2 = L2_2 - L3_2
        L2_2 = L2_2 * 1.33
        birdToSlingshotAnimationHeight = L2_2
      end
    end
    L2_2 = timeAttackObjectiveEnabled
    if L2_2 then
      L2_2 = 1.5
      if L2_2 then
        goto lbl_123
      end
    end
    L2_2 = 1
    ::lbl_123::
    L3_2 = birdToSlingshotAnimationTimer
    L4_2 = A0_2 * L2_2
    L3_2 = L3_2 + L4_2
    birdToSlingshotAnimationTimer = L3_2
    L3_2 = objects
    L3_2 = L3_2.world
    L4_2 = birdToSlingshotBirdName
    L3_2 = L3_2[L4_2]
    if L3_2 == nil then
      return
    end
    L4_2 = setPosition
    L5_2 = L3_2.name
    L6_2 = birdToSlingshotAnimationStartX
    L7_2 = birdToSlingshotAnimationTimer
    L7_2 = 1 - L7_2
    L6_2 = L6_2 * L7_2
    L7_2 = levelStartPosition
    L7_2 = L7_2.x
    L8_2 = birdToSlingshotAnimationTimer
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L7_2 = birdToSlingshotAnimationStartY
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.sin
    L9_2 = birdToSlingshotAnimationAngle
    L10_2 = birdToSlingshotAnimationTimer
    L9_2 = L9_2 * L10_2
    L8_2 = L8_2(L9_2)
    L9_2 = birdToSlingshotAnimationHeight
    L8_2 = L8_2 * L9_2
    L7_2 = L7_2 + L8_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = setRotation
    L5_2 = L3_2.name
    L6_2 = L3_2.angle
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.pi
    L7_2 = L7_2 * 2
    L7_2 = L7_2 * A0_2
    L6_2 = L6_2 + L7_2
    L4_2(L5_2, L6_2)
    L4_2 = setActive
    L5_2 = L3_2.name
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = birdToSlingshotAnimationTimer
    if 1 <= L4_2 then
      L4_2 = resumingOldLevel
      if L4_2 then
        L4_2 = currentFolder
        if L4_2 ~= "bonus" then
          return
        end
      end
      L4_2 = nil
      birdToSlingshotBirdName = L4_2
      L4_2 = 0
      birdToSlingshotAnimationTimer = L4_2
      L4_2 = false
      fillInNextBird = L4_2
      L4_2 = true
      birdReady = L4_2
      L4_2 = currentBirdIndex
      L4_2 = L4_2 + 1
      currentBirdIndex = L4_2
      L4_2 = getNextBird
      L5_2 = currentBirdIndex
      L4_2 = L4_2(L5_2)
      currentBirdName = L4_2
      L4_2 = setPosition
      L5_2 = currentBirdName
      L6_2 = levelStartPosition
      L6_2 = L6_2.x
      L7_2 = slingshotScale
      L7_2 = 0.1 * L7_2
      L6_2 = L6_2 - L7_2
      L7_2 = levelStartPosition
      L7_2 = L7_2.y
      L8_2 = slingshotScale
      L8_2 = 0.1 * L8_2
      L7_2 = L7_2 - L8_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = rubberBandPos
      L5_2 = rubberBandPos
      L6_2 = levelStartPosition
      L6_2 = L6_2.x
      L7_2 = slingshotScale
      L7_2 = 0.1 * L7_2
      L6_2 = L6_2 - L7_2
      L7_2 = levelStartPosition
      L7_2 = L7_2.y
      L8_2 = slingshotScale
      L8_2 = 0.1 * L8_2
      L7_2 = L7_2 - L8_2
      L5_2.y = L7_2
      L4_2.x = L6_2
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.atan2
      L5_2 = -0.1
      L6_2 = 0.1
      L4_2 = L4_2(L5_2, L6_2)
      rubberBandAngle = L4_2
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.abs
      L5_2 = distance
      L6_2 = objects
      L6_2 = L6_2.birdCameraData
      L7_2 = deviceModel
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.px
      L7_2 = objects
      L7_2 = L7_2.birdCameraData
      L8_2 = deviceModel
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.py
      L8_2 = objects
      L8_2 = L8_2.castleCameraData
      L9_2 = deviceModel
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.px
      L9_2 = objects
      L9_2 = L9_2.castleCameraData
      L10_2 = deviceModel
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.py
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.abs
      L6_2 = distance
      L7_2 = screen
      L7_2 = L7_2.x
      L8_2 = screen
      L8_2 = L8_2.y
      L9_2 = objects
      L9_2 = L9_2.birdCameraData
      L10_2 = deviceModel
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.px
      L10_2 = objects
      L10_2 = L10_2.birdCameraData
      L11_2 = deviceModel
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.py
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.min
      L7_2 = 1
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.max
      L9_2 = 0.25
      L10_2 = L5_2 / L4_2
      L10_2 = 1 - L10_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L7_2 = hasBirdsLeftInSlingShot
      L7_2 = L7_2()
      if L7_2 then
        L7_2 = g_disableBirdToSlingshotSound
        if not L7_2 then
          L7_2 = res
          L7_2 = L7_2.playAudio
          L8_2 = "bird_next_military"
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
      L7_2 = setRotation
      L8_2 = currentBirdName
      L9_2 = slingShotAngle
      L7_2(L8_2, L9_2)
      L7_2 = setVelocity
      L8_2 = currentBirdName
      L9_2 = 0
      L10_2 = 0
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = events
      L10_2 = L10_2.EID_NEXT_BIRD_READY
      L9_2.id = L10_2
      L7_2(L8_2, L9_2)
    end
  end
end

animateBirdToSlingShot = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = birds
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.controllable
    if L5_2 then
      L5_2 = L4_2.shot
      if not L5_2 then
        L5_2 = L4_2.definition
        if L5_2 ~= "ME_BAIT" then
          L5_2 = true
          return L5_2
        end
      end
    end
  end
  L0_2 = false
  return L0_2
end

hasBirdsLeftInSlingShot = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = checkLevelFailed
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = levelGoals
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.laughJointedAnim
      if L6_2 ~= nil then
        L6_2 = L5_2.currentAnimation
        L7_2 = L5_2.laughJointedAnim
        if L6_2 ~= L7_2 then
          L6_2 = checkJointsForObject
          L7_2 = L5_2.name
          L6_2 = L6_2(L7_2)
          if L6_2 ~= false then
            L6_2 = setAnimation
            L7_2 = L5_2.name
            L8_2 = L5_2.laughJointedAnim
            L6_2(L7_2, L8_2)
        end
      end
      else
        L6_2 = L5_2.laughAnim
        if L6_2 ~= nil then
          L6_2 = L5_2.currentAnimation
          L7_2 = L5_2.laughAnim
          if L6_2 ~= L7_2 then
            L6_2 = L5_2.currentAnimation
            L7_2 = L5_2.laughJointedAnim
            if L6_2 ~= L7_2 then
              L6_2 = setAnimation
              L7_2 = L5_2.name
              L8_2 = L5_2.laughAnim
              L6_2(L7_2, L8_2)
            end
          end
        end
      end
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = animatedObjects
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = true
    L7_2 = checkStillInWorld
    L8_2 = L5_2.name
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = animatedObjects
      L8_2 = L5_2.name
      L7_2[L8_2] = nil
      L6_2 = false
    end
    L7_2 = nil
    if L6_2 then
      L8_2 = getObjectDefinition
      L9_2 = L5_2.name
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    if L6_2 then
      L8_2 = L7_2.useStateAnimations
      if L8_2 then
        L8_2 = L7_2.stateAnimations
        L9_2 = L5_2.currentState
        L8_2 = L8_2[L9_2]
        if L8_2 == nil then
          goto lbl_503
        end
        L8_2 = L5_2.currentSubAnimation
        if L8_2 == nil then
          goto lbl_503
        end
        L8_2 = L5_2.disableAnimations
        if L8_2 == true then
          goto lbl_503
        end
        L8_2 = L5_2.animFrameTime
        if L8_2 == nil then
          L8_2 = _G
          L8_2 = L8_2.math
          L8_2 = L8_2.random
          L9_2 = L7_2.stateAnimations
          L10_2 = L5_2.currentState
          L9_2 = L9_2[L10_2]
          L9_2 = L9_2.frameTime
          L9_2 = L9_2[1]
          L9_2 = L9_2 * 100
          L10_2 = L7_2.stateAnimations
          L11_2 = L5_2.currentState
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.frameTime
          L10_2 = L10_2[2]
          L10_2 = L10_2 * 100
          L8_2 = L8_2(L9_2, L10_2)
          L8_2 = L8_2 / 100
          L5_2.animFrameTime = L8_2
        end
        L8_2 = L5_2.animTimer
        if L8_2 == nil then
          L8_2 = L5_2.animFrameTime
          L5_2.animTimer = L8_2
        end
        L8_2 = L5_2.animTimer
        L8_2 = L8_2 - A0_2
        L5_2.animTimer = L8_2
        L8_2 = L5_2.idleTimer
        if L8_2 ~= nil then
          L8_2 = L5_2.idleTimer
          L8_2 = L8_2 - A0_2
          L5_2.idleTimer = L8_2
        end
        L8_2 = L5_2.animTimer
        if not (L8_2 < 0) then
          goto lbl_503
        end
        L8_2 = L5_2.animFrame
        L8_2 = L8_2 + 1
        L5_2.animFrame = L8_2
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.random
        L9_2 = L7_2.stateAnimations
        L10_2 = L5_2.currentState
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.frameTime
        L9_2 = L9_2[1]
        L9_2 = L9_2 * 100
        L10_2 = L7_2.stateAnimations
        L11_2 = L5_2.currentState
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.frameTime
        L10_2 = L10_2[2]
        L10_2 = L10_2 * 100
        L8_2 = L8_2(L9_2, L10_2)
        L8_2 = L8_2 / 100
        L5_2.animTimer = L8_2
        L8_2 = L7_2.stateAnimations
        L9_2 = L5_2.currentState
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.sprites
        L9_2 = L5_2.currentSubAnimation
        L8_2 = L8_2[L9_2]
        if L8_2 ~= nil then
          L8_2 = L5_2.animFrame
          L9_2 = L7_2.stateAnimations
          L10_2 = L5_2.currentState
          L9_2 = L9_2[L10_2]
          L9_2 = L9_2.sprites
          L10_2 = L5_2.currentSubAnimation
          L9_2 = L9_2[L10_2]
          L9_2 = #L9_2
          if L8_2 > L9_2 then
            L5_2.animFrame = 1
            L8_2 = L5_2.idleTimer
            if L8_2 < 0 then
              L8_2 = L5_2.currentSubAnimation
              if L8_2 == 1 then
                L8_2 = L7_2.stateAnimations
                L9_2 = L5_2.currentState
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.defaultAnim
                if L8_2 == true then
                  L8_2 = L7_2.stateAnimations
                  L9_2 = L5_2.currentState
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.sprites
                  L8_2 = #L8_2
                  if 1 < L8_2 then
                    L8_2 = _G
                    L8_2 = L8_2.math
                    L8_2 = L8_2.random
                    L9_2 = 2
                    L10_2 = L7_2.stateAnimations
                    L11_2 = L5_2.currentState
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.sprites
                    L10_2 = #L10_2
                    L8_2 = L8_2(L9_2, L10_2)
                    L5_2.currentSubAnimation = L8_2
                    L8_2 = L7_2.stateAnimations
                    L9_2 = L5_2.currentState
                    L8_2 = L8_2[L9_2]
                    L8_2 = L8_2.sprites
                    L9_2 = L5_2.currentSubAnimation
                    L8_2 = L8_2[L9_2]
                    L8_2 = L8_2.sound
                    if L8_2 ~= nil then
                      L8_2 = res
                      L8_2 = L8_2.playAudio
                      L9_2 = L7_2.stateAnimations
                      L10_2 = L5_2.currentState
                      L9_2 = L9_2[L10_2]
                      L9_2 = L9_2.sprites
                      L10_2 = L5_2.currentSubAnimation
                      L9_2 = L9_2[L10_2]
                      L9_2 = L9_2.sound
                      L8_2(L9_2)
                      L8_2 = _G
                      L8_2 = L8_2.math
                      L8_2 = L8_2.random
                      L9_2 = L7_2.stateAnimations
                      L10_2 = L5_2.currentState
                      L9_2 = L9_2[L10_2]
                      L9_2 = L9_2.idleTime
                      L9_2 = L9_2[1]
                      L9_2 = L9_2 * 100
                      L10_2 = L7_2.stateAnimations
                      L11_2 = L5_2.currentState
                      L10_2 = L10_2[L11_2]
                      L10_2 = L10_2.idleTime
                      L10_2 = L10_2[2]
                      L10_2 = L10_2 * 100
                      L8_2 = L8_2(L9_2, L10_2)
                      L8_2 = L8_2 / 100
                      L5_2.idleTimer = L8_2
                    end
                end
              end
            end
            else
              L8_2 = L5_2.currentSubAnimation
              if 1 < L8_2 then
                L5_2.currentSubAnimation = 1
                L8_2 = L7_2.stateAnimations
                L9_2 = L5_2.currentState
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.idleTime
                if L8_2 ~= nil then
                  L8_2 = _G
                  L8_2 = L8_2.math
                  L8_2 = L8_2.random
                  L9_2 = L7_2.stateAnimations
                  L10_2 = L5_2.currentState
                  L9_2 = L9_2[L10_2]
                  L9_2 = L9_2.idleTime
                  L9_2 = L9_2[1]
                  L9_2 = L9_2 * 100
                  L10_2 = L7_2.stateAnimations
                  L11_2 = L5_2.currentState
                  L10_2 = L10_2[L11_2]
                  L10_2 = L10_2.idleTime
                  L10_2 = L10_2[2]
                  L10_2 = L10_2 * 100
                  L8_2 = L8_2(L9_2, L10_2)
                  L8_2 = L8_2 / 100
                  L5_2.idleTimer = L8_2
                end
              end
            end
          end
        end
        L8_2 = L7_2.stateAnimations
        L9_2 = L5_2.currentState
        L8_2 = L8_2[L9_2]
        if L8_2 ~= nil then
          L8_2 = L7_2.stateAnimations
          L9_2 = L5_2.currentState
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.sprites
          L9_2 = L5_2.currentSubAnimation
          L8_2 = L8_2[L9_2]
          if L8_2 ~= nil then
            L8_2 = setSprite
            L9_2 = L5_2.name
            L10_2 = L7_2.stateAnimations
            L11_2 = L5_2.currentState
            L10_2 = L10_2[L11_2]
            L10_2 = L10_2.sprites
            L11_2 = L5_2.currentSubAnimation
            L10_2 = L10_2[L11_2]
            L11_2 = L5_2.animFrame
            L10_2 = L10_2[L11_2]
            L8_2(L9_2, L10_2)
          end
        end
        L8_2 = L7_2.stateAnimations
        L9_2 = L5_2.currentState
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.sound
        if L8_2 == nil then
          goto lbl_503
        end
        L8_2 = L7_2.stateAnimations
        L9_2 = L5_2.currentState
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.sound
        L8_2 = L8_2.playSoundsInOrder
        if L8_2 then
          L8_2 = audioGroups
          L9_2 = L7_2.stateAnimations
          L10_2 = L5_2.currentState
          L9_2 = L9_2[L10_2]
          L9_2 = L9_2.sound
          L9_2 = L9_2.name
          L8_2 = L8_2[L9_2]
          L9_2 = L5_2.currentSoundIndex
          if L9_2 then
            L9_2 = L5_2.currentSoundIndex
            L9_2 = L9_2 + 1
            if L9_2 then
              goto lbl_308
            end
          end
          L9_2 = 1
          ::lbl_308::
          L5_2.currentSoundIndex = L9_2
          L9_2 = L5_2.currentSoundIndex
          L10_2 = #L8_2
          if L9_2 <= L10_2 then
            L9_2 = L5_2.currentSoundIndex
            if L9_2 then
              goto lbl_317
            end
          end
          L9_2 = 1
          ::lbl_317::
          L5_2.currentSoundIndex = L9_2
          L9_2 = L5_2.currentSoundIndex
          L9_2 = L9_2 % 2
          L10_2 = L5_2.animFrame
          L10_2 = L10_2 % 2
          if L9_2 == L10_2 then
            L9_2 = L5_2.currentSoundIndex
            L9_2 = L9_2 + 1
            L5_2.currentSoundIndex = L9_2
            L9_2 = L5_2.currentSoundIndex
            L10_2 = #L8_2
            if L9_2 > L10_2 then
              L9_2 = L5_2.currentSoundIndex
              L9_2 = L9_2 - 2
              L5_2.currentSoundIndex = L9_2
            end
          end
          L9_2 = L5_2.currentSoundIndex
          L9_2 = L8_2[L9_2]
          L5_2.currentSound = L9_2
        else
          L8_2 = L7_2.stateAnimations
          L9_2 = L5_2.currentState
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.sound
          L8_2 = L8_2.name
          L5_2.currentSound = L8_2
        end
        L8_2 = res
        L8_2 = L8_2.playAudio
        L9_2 = L5_2.currentSound
        L8_2(L9_2)
    end
    elseif L6_2 then
      L8_2 = L7_2.animations
      if L8_2 ~= nil then
        L8_2 = L5_2.currentAnimation
        if L8_2 ~= nil then
          L8_2 = L5_2.currentSubAnimation
          if L8_2 ~= nil then
            L8_2 = L5_2.disableAnimations
            if L8_2 ~= true then
              L8_2 = L5_2.animTimer
              L8_2 = L8_2 - A0_2
              L5_2.animTimer = L8_2
              L8_2 = L5_2.idleTimer
              if L8_2 ~= nil then
                L8_2 = L5_2.idleTimer
                L8_2 = L8_2 - A0_2
                L5_2.idleTimer = L8_2
              end
              L8_2 = L5_2.animTimer
              if L8_2 < 0 then
                L8_2 = L5_2.animFrame
                L8_2 = L8_2 + 1
                L5_2.animFrame = L8_2
                L8_2 = L5_2.animFrameTime
                L5_2.animTimer = L8_2
                L8_2 = L5_2.animFrame
                L9_2 = L7_2.animations
                L10_2 = L5_2.currentAnimation
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.sprites
                L10_2 = L5_2.currentSubAnimation
                L9_2 = L9_2[L10_2]
                L9_2 = #L9_2
                if L8_2 > L9_2 then
                  L5_2.animFrame = 1
                  L8_2 = L5_2.idleTimer
                  if L8_2 < 0 then
                    L8_2 = L5_2.currentSubAnimation
                    if L8_2 == 1 then
                      L8_2 = L7_2.animations
                      L9_2 = L5_2.currentAnimation
                      L8_2 = L8_2[L9_2]
                      L8_2 = L8_2.defaultAnim
                      if L8_2 == true then
                        L8_2 = L7_2.animations
                        L9_2 = L5_2.currentAnimation
                        L8_2 = L8_2[L9_2]
                        L8_2 = L8_2.sprites
                        L8_2 = #L8_2
                        if 1 < L8_2 then
                          L8_2 = _G
                          L8_2 = L8_2.math
                          L8_2 = L8_2.random
                          L9_2 = 2
                          L10_2 = L7_2.animations
                          L11_2 = L5_2.currentAnimation
                          L10_2 = L10_2[L11_2]
                          L10_2 = L10_2.sprites
                          L10_2 = #L10_2
                          L8_2 = L8_2(L9_2, L10_2)
                          L5_2.currentSubAnimation = L8_2
                          L8_2 = L7_2.animations
                          L9_2 = L5_2.currentAnimation
                          L8_2 = L8_2[L9_2]
                          L8_2 = L8_2.sprites
                          L9_2 = L5_2.currentSubAnimation
                          L8_2 = L8_2[L9_2]
                          L8_2 = L8_2.sound
                          if L8_2 ~= nil then
                            L8_2 = playAudio
                            L9_2 = L7_2.animations
                            L10_2 = L5_2.currentAnimation
                            L9_2 = L9_2[L10_2]
                            L9_2 = L9_2.sprites
                            L10_2 = L5_2.currentSubAnimation
                            L9_2 = L9_2[L10_2]
                            L9_2 = L9_2.sound
                            L8_2(L9_2)
                          end
                      end
                    end
                  end
                  else
                    L8_2 = L5_2.currentSubAnimation
                    if 1 < L8_2 then
                      L5_2.currentSubAnimation = 1
                      L8_2 = L7_2.animations
                      L9_2 = L5_2.currentAnimation
                      L8_2 = L8_2[L9_2]
                      L8_2 = L8_2.idleTime
                      if L8_2 ~= nil then
                        L8_2 = _G
                        L8_2 = L8_2.math
                        L8_2 = L8_2.random
                        L9_2 = L7_2.animations
                        L10_2 = L5_2.currentAnimation
                        L9_2 = L9_2[L10_2]
                        L9_2 = L9_2.idleTime
                        L9_2 = L9_2[1]
                        L9_2 = L9_2 * 100
                        L10_2 = L7_2.animations
                        L11_2 = L5_2.currentAnimation
                        L10_2 = L10_2[L11_2]
                        L10_2 = L10_2.idleTime
                        L10_2 = L10_2[2]
                        L10_2 = L10_2 * 100
                        L8_2 = L8_2(L9_2, L10_2)
                        L8_2 = L8_2 / 100
                        L5_2.idleTimer = L8_2
                      end
                    end
                  end
                end
                L8_2 = setSprite
                L9_2 = L5_2.name
                L10_2 = L7_2.animations
                L11_2 = L5_2.currentAnimation
                L10_2 = L10_2[L11_2]
                L10_2 = L10_2.sprites
                L11_2 = L5_2.currentSubAnimation
                L10_2 = L10_2[L11_2]
                L11_2 = L5_2.animFrame
                L10_2 = L10_2[L11_2]
                L8_2(L9_2, L10_2)
                L8_2 = L5_2.currentSound
                if L8_2 ~= nil then
                  L8_2 = L7_2.animations
                  L9_2 = L5_2.currentAnimation
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.sound
                  L8_2 = L8_2.loop
                  if L8_2 == true then
                    L8_2 = res
                    L8_2 = L8_2.isAudioPlaying
                    L9_2 = L5_2.currentSound
                    L8_2 = L8_2(L9_2)
                    if L8_2 ~= true then
                      L8_2 = playAudio
                      L9_2 = L7_2.animations
                      L10_2 = L5_2.currentAnimation
                      L9_2 = L9_2[L10_2]
                      L9_2 = L9_2.sound
                      L9_2 = L9_2.name
                      L8_2 = L8_2(L9_2)
                      L5_2.currentSound = L8_2
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    ::lbl_503::
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = birds
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.shot
    if L6_2 ~= true then
      L6_2 = L5_2.animTimer
      L6_2 = L6_2 - A0_2
      L5_2.animTimer = L6_2
      L6_2 = L5_2.animTimer
      if L6_2 < 0 then
        L6_2 = L5_2.animOn
        if L6_2 == true then
          L6_2 = L5_2.disableAnimations
          if not L6_2 then
            L6_2 = _G
            L6_2 = L6_2.math
            L6_2 = L6_2.random
            L7_2 = 10
            L8_2 = 150
            L6_2 = L6_2(L7_2, L8_2)
            L6_2 = L6_2 / 100
            L5_2.animTimer = L6_2
            L5_2.animOn = false
        end
        else
          L6_2 = _G
          L6_2 = L6_2.math
          L6_2 = L6_2.random
          L7_2 = 10
          L8_2 = 20
          L6_2 = L6_2(L7_2, L8_2)
          L6_2 = L6_2 / 100
          L5_2.animTimer = L6_2
          L6_2 = _G
          L6_2 = L6_2.math
          L6_2 = L6_2.random
          L7_2 = 1
          L8_2 = 4
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = nil
          if L6_2 == 1 then
            L8_2 = blockTable
            L8_2 = L8_2.blocks
            L9_2 = L5_2.definition
            L8_2 = L8_2[L9_2]
            L7_2 = L8_2.spriteYell
            L8_2 = physicsToWorldTransform
            L9_2 = levelStartPosition
            L9_2 = L9_2.x
            L10_2 = levelStartPosition
            L10_2 = L10_2.y
            L8_2, L9_2 = L8_2(L9_2, L10_2)
            L10_2 = vLength
            L11_2 = screen
            L11_2 = L11_2.x
            L11_2 = L11_2 - L8_2
            L12_2 = screen
            L12_2 = L12_2.y
            L12_2 = L12_2 - L9_2
            L10_2 = L10_2(L11_2, L12_2)
            L11_2 = slingshotScale
            L11_2 = 1000 * L11_2
            L11_2 = L10_2 / L11_2
            L11_2 = 1 - L11_2
            if 0 < L11_2 then
              L12_2 = hasBirdsLeftInSlingShot
              L12_2 = L12_2()
              if L12_2 then
                L12_2 = getObjectDefinition
                L13_2 = L5_2.name
                L12_2 = L12_2(L13_2)
                L13_2 = L12_2.sounds
                L13_2 = L13_2.idle
                if L13_2 then
                  L13_2 = res
                  L13_2 = L13_2.playAudio
                  L14_2 = L12_2.sounds
                  L14_2 = L14_2.idle
                  L15_2 = L11_2
                  L13_2(L14_2, L15_2)
                else
                  L13_2 = playAudio
                  L14_2 = "bird_misc"
                  L15_2 = L11_2
                  L13_2(L14_2, L15_2)
                end
              end
            end
          else
            L8_2 = blockTable
            L8_2 = L8_2.blocks
            L9_2 = L5_2.definition
            L8_2 = L8_2[L9_2]
            L7_2 = L8_2.spriteBlink
          end
          L8_2 = L5_2.disableAnimations
          if not L8_2 then
            if L7_2 ~= nil then
              L8_2 = setSprite
              L9_2 = L5_2.name
              L10_2 = L7_2
              L8_2(L9_2, L10_2)
            end
            L5_2.animOn = true
          end
        end
      end
    else
      L6_2 = _G
      L6_2 = L6_2.type
      L7_2 = L5_2.sprite
      L6_2 = L6_2(L7_2)
      if L6_2 == "table" then
        L6_2 = L5_2.animTimer
        L6_2 = L6_2 - A0_2
        L5_2.animTimer = L6_2
        L6_2 = L5_2.animTimer
        if L6_2 < 0 then
          L6_2 = L5_2.animFrame
          L6_2 = L6_2 + 1
          L5_2.animFrame = L6_2
          L6_2 = L5_2.animFrame
          L7_2 = L5_2.sprite
          L7_2 = L7_2.frames
          L7_2 = #L7_2
          if L6_2 > L7_2 then
            L5_2.animFrame = 1
            L6_2 = physicsToWorldTransform
            L7_2 = L5_2.x
            L8_2 = L5_2.y
            L6_2, L7_2 = L6_2(L7_2, L8_2)
            L8_2 = vLength
            L9_2 = screen
            L9_2 = L9_2.x
            L9_2 = L9_2 - L6_2
            L10_2 = screen
            L10_2 = L10_2.y
            L10_2 = L10_2 - L7_2
            L8_2 = L8_2(L9_2, L10_2)
            L9_2 = slingshotScale
            L9_2 = 10000 * L9_2
            L9_2 = L8_2 / L9_2
            L9_2 = 1 - L9_2
            if 0 < L9_2 then
              L10_2 = playAudio
              L11_2 = blockTable
              L11_2 = L11_2.blocks
              L12_2 = L5_2.definition
              L11_2 = L11_2[L12_2]
              L11_2 = L11_2.sounds
              L11_2 = L11_2.specialLoop
              L12_2 = L9_2
              L10_2(L11_2, L12_2)
            end
          end
          L6_2 = L5_2.sprite
          L6_2 = L6_2.frameTime
          L5_2.animTimer = L6_2
          L6_2 = setSprite
          L7_2 = L5_2.name
          L8_2 = L5_2.sprite
          L8_2 = L8_2.frames
          L9_2 = L5_2.animFrame
          L8_2 = L8_2[L9_2]
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
end

updateCharacterAnimations = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = themeSpriteObjects
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = blockTable
    L6_2 = L6_2.blocks
    L7_2 = L5_2.definition
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L7_2 = L6_2.animations
      if L7_2 ~= nil then
        L7_2 = L5_2.currentAnimation
        if L7_2 ~= nil then
          L7_2 = L5_2.currentSubAnimation
          if L7_2 ~= nil then
            L7_2 = L5_2.animTimer
            L7_2 = L7_2 - A0_2
            L5_2.animTimer = L7_2
            L7_2 = L5_2.animTimer
            if L7_2 < 0 then
              L7_2 = L5_2.animFrame
              L7_2 = L7_2 + 1
              L5_2.animFrame = L7_2
              L7_2 = L5_2.animFrameTime
              L5_2.animTimer = L7_2
              L7_2 = L5_2.animFrame
              L8_2 = L6_2.animations
              L9_2 = L5_2.currentAnimation
              L8_2 = L8_2[L9_2]
              L8_2 = L8_2.sprites
              L9_2 = L5_2.currentSubAnimation
              L8_2 = L8_2[L9_2]
              L8_2 = #L8_2
              if L7_2 > L8_2 then
                L5_2.animFrame = 1
              end
              L7_2 = setThemeSprite
              L8_2 = L5_2.name
              L9_2 = L6_2.animations
              L10_2 = L5_2.currentAnimation
              L9_2 = L9_2[L10_2]
              L9_2 = L9_2.sprites
              L10_2 = L5_2.currentSubAnimation
              L9_2 = L9_2[L10_2]
              L10_2 = L5_2.animFrame
              L9_2 = L9_2[L10_2]
              L10_2 = L5_2.layer
              L7_2(L8_2, L9_2, L10_2)
            end
          end
        end
      end
    end
  end
end

updateThemeSpriteAnimations = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L8_2 = 1
  L9_2 = A7_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.cos
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.pi
    L13_2 = L13_2 * 2
    L13_2 = L13_2 / A7_2
    L13_2 = L13_2 * L11_2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2 * A6_2
    L12_2 = A4_2 + L12_2
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.sin
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.pi
    L14_2 = L14_2 * 2
    L14_2 = L14_2 / A7_2
    L14_2 = L14_2 * L11_2
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 * A6_2
    L13_2 = A5_2 + L13_2
    L14_2 = print
    L15_2 = "FACE CIRCLE OUT!!!!"
    L16_2 = A4_2
    L17_2 = ","
    L18_2 = A5_2
    L19_2 = ","
    L20_2 = A6_2
    L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
    L14_2(L15_2)
    L14_2 = drawLine2D
    L15_2 = A4_2
    L16_2 = A5_2
    L17_2 = L12_2
    L18_2 = L13_2
    L19_2 = 1
    L20_2 = A0_2
    L21_2 = A1_2
    L22_2 = A2_2
    L23_2 = A3_2
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  end
end

drawFakeCircle = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  if L0_2 ~= nil then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L2_2 = L0_2
      L1_2 = L0_2.getChild
      L3_2 = "EpisodeRewardPage"
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2 ~= nil
      return L1_2
    end
  end
end

isRewardPageShowing = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  if L0_2 ~= nil then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L2_2 = L0_2
      L1_2 = L0_2.getChild
      L3_2 = "MEPage"
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2 ~= nil
      return L1_2
    end
  end
end

isMightyEaglePurchasePageShowing = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  if L0_2 ~= nil then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L2_2 = L0_2
      L1_2 = L0_2.getChild
      L3_2 = "eaglePurchasePage"
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2 ~= nil
      return L1_2
    end
  end
end

isEaglePurchaseSpinnerPageShowing = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = objects
  L0_2 = L0_2.castleCameraData
  L1_2 = deviceModel
  L0_2 = L0_2[L1_2]
  L1_2 = objects
  L1_2 = L1_2.birdCameraData
  L2_2 = deviceModel
  L1_2 = L1_2[L2_2]
  L2_2 = worldScale
  L3_2 = minWorldScale
  if L2_2 < L3_2 then
    L2_2 = minWorldScale
    worldScale = L2_2
    L2_2 = setWorldScale
    L3_2 = worldScale
    L2_2(L3_2)
  end
  L2_2 = screen
  L2_2 = L2_2.x
  L3_2 = screenWidth
  L3_2 = L3_2 * 0.5
  L4_2 = worldScale
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = screen
  L3_2 = L3_2.x
  L4_2 = screenWidth
  L4_2 = L4_2 * 0.5
  L5_2 = worldScale
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2 - L4_2
  L4_2 = screen
  L4_2 = L4_2.y
  L5_2 = screenHeight
  L5_2 = L5_2 * 0.5
  L6_2 = worldScale
  L5_2 = L5_2 / L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = screen
  L5_2 = L5_2.y
  L6_2 = screenHeight
  L6_2 = L6_2 * 0.5
  L7_2 = worldScale
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 - L6_2
  L6_2 = g_useLevelLimits
  if L6_2 then
    L6_2 = rightLimitWorld
    if L2_2 > L6_2 then
      L6_2 = screen
      L7_2 = screen
      L7_2 = L7_2.x
      L8_2 = rightLimitWorld
      L8_2 = L8_2 - L2_2
      L7_2 = L7_2 + L8_2
      L6_2.x = L7_2
    end
  end
  L6_2 = g_useLevelLimits
  if L6_2 then
    L6_2 = leftLimitWorld
    if L3_2 < L6_2 then
      L6_2 = screen
      L7_2 = screen
      L7_2 = L7_2.x
      L8_2 = leftLimitWorld
      L8_2 = L8_2 - L3_2
      L7_2 = L7_2 + L8_2
      L6_2.x = L7_2
    end
  end
  L6_2 = g_useLevelLimits
  if L6_2 then
    L6_2 = bottomLimitWorld
    if L4_2 > L6_2 then
      L6_2 = screen
      L7_2 = screen
      L7_2 = L7_2.y
      L8_2 = bottomLimitWorld
      L8_2 = L8_2 - L4_2
      L7_2 = L7_2 + L8_2
      L6_2.y = L7_2
    end
  end
  L6_2 = g_useLevelLimits
  if L6_2 then
    L6_2 = topLimitWorld
    if L5_2 < L6_2 then
      L6_2 = screen
      L7_2 = screen
      L7_2 = L7_2.y
      L8_2 = topLimitWorld
      L8_2 = L8_2 - L5_2
      L7_2 = L7_2 + L8_2
      L6_2.y = L7_2
    end
  end
  L6_2 = L2_2 - L3_2
  L7_2 = L4_2 - L5_2
  L8_2 = maxLevelWidthWorld
  if L6_2 > L8_2 then
    L8_2 = screen
    L9_2 = leftLimitWorld
    L10_2 = rightLimitWorld
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 * 0.5
    L8_2.x = L9_2
  end
  L8_2 = maxLevelHeightWorld
  if L7_2 > L8_2 then
    L8_2 = screen
    L9_2 = bottomLimitWorld
    L10_2 = topLimitWorld
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 * 0.5
    L8_2.y = L9_2
  end
  L8_2 = g_showCameraDebugData
  if L8_2 then
    L8_2 = g_currentCameraVisualization
    L9_2 = screen
    L9_2 = L9_2.x
    L8_2.x = L9_2
    L8_2 = g_currentCameraVisualization
    L9_2 = screen
    L9_2 = L9_2.y
    L8_2.y = L9_2
  end
  L8_2 = cameraShakeOn
  if L8_2 then
    L8_2 = screen
    L9_2 = screen
    L9_2 = L9_2.x
    L10_2 = g_cameraShakePosition
    L10_2 = L10_2.x
    L11_2 = worldScale
    L10_2 = L10_2 * L11_2
    L11_2 = L0_2.sx
    L10_2 = L10_2 / L11_2
    L9_2 = L9_2 + L10_2
    L8_2.x = L9_2
    L8_2 = screen
    L9_2 = screen
    L9_2 = L9_2.y
    L10_2 = g_cameraShakePosition
    L10_2 = L10_2.y
    L11_2 = worldScale
    L10_2 = L10_2 * L11_2
    L11_2 = L0_2.sx
    L10_2 = L10_2 / L11_2
    L9_2 = L9_2 + L10_2
    L8_2.y = L9_2
  end
end

repositionScreen = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A2_2 - A0_2
  L7_2 = A2_2 - A0_2
  L6_2 = L6_2 * L7_2
  L7_2 = A3_2 - A1_2
  L8_2 = A3_2 - A1_2
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  if L6_2 == 0 then
    L7_2 = vLength
    L8_2 = A4_2 - A0_2
    L9_2 = A5_2 - A1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = 0.5
    return L7_2, L8_2
  end
  L7_2 = dotProduct
  L8_2 = A4_2 - A0_2
  L9_2 = A5_2 - A1_2
  L10_2 = A2_2 - A0_2
  L11_2 = A3_2 - A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = L7_2 / L6_2
  if L7_2 < 0 then
    L8_2 = vLength
    L9_2 = A4_2 - A0_2
    L10_2 = A5_2 - A1_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L7_2
    return L8_2, L9_2
  elseif 1 < L7_2 then
    L8_2 = vLength
    L9_2 = A4_2 - A2_2
    L10_2 = A5_2 - A3_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L7_2
    return L8_2, L9_2
  end
  L8_2 = A2_2 - A0_2
  L8_2 = L7_2 * L8_2
  L8_2 = A0_2 + L8_2
  L9_2 = A3_2 - A1_2
  L9_2 = L7_2 * L9_2
  L9_2 = A1_2 + L9_2
  L10_2 = vLength
  L11_2 = A4_2 - L8_2
  L12_2 = A5_2 - L9_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L7_2
  return L10_2, L11_2
end

distancePointToLineSegment = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = selectedObjects
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = setPosition
    L8_2 = L6_2.name
    L9_2 = L6_2.x
    L10_2 = physicsScale
    L10_2 = A0_2 * L10_2
    L9_2 = L9_2 + L10_2
    L10_2 = L6_2.y
    L11_2 = physicsScale
    L11_2 = A1_2 * L11_2
    L10_2 = L10_2 + L11_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = setSleeping
    L8_2 = L6_2.name
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  L2_2 = false
  levelSaved = L2_2
end

setPositions = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = oldScale
  L1_2 = worldScale
  if L0_2 ~= L1_2 then
    L0_2 = cursor
    L0_2 = L0_2.x
    L1_2 = oldScale
    L0_2 = L0_2 / L1_2
    L1_2 = screen
    L1_2 = L1_2.left
    L0_2 = L0_2 + L1_2
    L1_2 = cursor
    L1_2 = L1_2.y
    L2_2 = oldScale
    L1_2 = L1_2 / L2_2
    L2_2 = screen
    L2_2 = L2_2.top
    L1_2 = L1_2 + L2_2
    L2_2 = worldScale
    L2_2 = L0_2 * L2_2
    L3_2 = cursor
    L3_2 = L3_2.x
    L2_2 = L2_2 - L3_2
    L3_2 = worldScale
    L2_2 = L2_2 / L3_2
    L3_2 = worldScale
    L3_2 = L1_2 * L3_2
    L4_2 = cursor
    L4_2 = L4_2.y
    L3_2 = L3_2 - L4_2
    L4_2 = worldScale
    L3_2 = L3_2 / L4_2
    L4_2 = screen
    L5_2 = screenWidth
    L5_2 = L5_2 * 0.5
    L6_2 = worldScale
    L5_2 = L5_2 / L6_2
    L5_2 = L2_2 + L5_2
    L4_2.x = L5_2
    L4_2 = screen
    L5_2 = screenHeight
    L5_2 = L5_2 * 0.5
    L6_2 = worldScale
    L5_2 = L5_2 / L6_2
    L5_2 = L3_2 + L5_2
    L4_2.y = L5_2
  end
  L0_2 = worldScale
  oldScale = L0_2
end

updateScale = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = objects
  L2_2 = L2_2.joints
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.end1
    if L6_2 ~= A0_2 then
      L6_2 = L5_2.end2
      if L6_2 ~= A0_2 then
        goto lbl_14
      end
    end
    do return L5_2 end
    ::lbl_14::
  end
  L1_2 = false
  return L1_2
end

checkJointsForObject = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = objects
  L4_2 = L4_2.world
  L4_2 = L4_2[A0_2]
  L5_2 = L4_2.destroyed
  if L5_2 ~= true then
    L5_2 = blockTable
    L5_2 = L5_2.blocks
    L6_2 = L4_2.definition
    L5_2 = L5_2[L6_2]
    L6_2 = L4_2.defaultAnim
    anim = L6_2
    L6_2 = L5_2.animations
    if L6_2 ~= nil then
      L6_2 = L4_2.currentAnimation
      L7_2 = L4_2.laughAnim
      if L6_2 ~= L7_2 then
        L6_2 = L4_2.currentAnimation
        L7_2 = L4_2.laughJointedAnim
        if L6_2 ~= L7_2 then
          L6_2 = L5_2.useDamageAnimations
          if not L6_2 then
            L6_2 = false
            L7_2 = 1
            L8_2 = L5_2.animations
            L8_2 = #L8_2
            L9_2 = 1
            for L10_2 = L7_2, L8_2, L9_2 do
              L11_2 = L5_2.animations
              L11_2 = L11_2[L10_2]
              v = L11_2
              L11_2 = _G
              L11_2 = L11_2.pairs
              L12_2 = v
              L12_2 = L12_2.triggers
              L11_2, L12_2, L13_2 = L11_2(L12_2)
              for L14_2, L15_2 in L11_2, L12_2, L13_2 do
                L16_2 = L4_2.strength
                L17_2 = L5_2.strength
                L16_2 = L16_2 / L17_2
                L16_2 = L16_2 * 100
                L17_2 = L15_2.minVel
                if L17_2 ~= nil then
                  L17_2 = L15_2.minVel
                  if not (A1_2 >= L17_2) then
                    goto lbl_94
                  end
                end
                L17_2 = L15_2.maxVel
                if L17_2 ~= nil then
                  L17_2 = L15_2.maxVel
                  if not (A1_2 <= L17_2) then
                    goto lbl_94
                  end
                end
                L17_2 = L15_2.minAngle
                if L17_2 ~= nil then
                  L17_2 = L15_2.minAngle
                  if not (A2_2 >= L17_2) then
                    goto lbl_94
                  end
                end
                L17_2 = L15_2.maxAngle
                if L17_2 ~= nil then
                  L17_2 = L15_2.maxAngle
                  if not (A2_2 <= L17_2) then
                    goto lbl_94
                  end
                end
                L17_2 = L15_2.minStrength
                if L17_2 ~= nil then
                  L17_2 = L15_2.minStrength
                  if not (L16_2 >= L17_2) then
                    goto lbl_94
                  end
                end
                L17_2 = L15_2.maxStrength
                if L17_2 ~= nil then
                  L17_2 = L15_2.maxStrength
                  if not (L16_2 <= L17_2) then
                    goto lbl_94
                  end
                end
                L17_2 = L15_2.jointed
                if L17_2 then
                  L17_2 = checkJointsForObject
                  L18_2 = A0_2
                  L17_2 = L17_2(L18_2)
                  if L17_2 == false then
                end
                else
                  anim = L10_2
                  L6_2 = true
                  break
                end
                ::lbl_94::
              end
              if L6_2 then
                break
              end
            end
            L7_2 = anim
            if L7_2 ~= nil then
              L7_2 = L4_2.currentAnimation
              L8_2 = anim
              if L7_2 ~= L8_2 then
                L7_2 = L4_2.nextAnimation
                L8_2 = anim
                if L7_2 ~= L8_2 then
                  L7_2 = overrideThreshold
                  if L7_2 ~= true then
                    goto lbl_250
                  end
                end
                L7_2 = L4_2.animThresholdTimer
                L7_2 = L7_2 - A3_2
                L4_2.animThresholdTimer = L7_2
                L7_2 = L4_2.animThresholdTimer
                if not (L7_2 <= 0) then
                  L7_2 = overrideThreshold
                  if L7_2 ~= true then
                    goto lbl_270
                  end
                end
                L7_2 = anim
                L4_2.currentAnimation = L7_2
                L7_2 = L5_2.animations
                L8_2 = anim
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.defaultAnim
                if L7_2 == true then
                  L4_2.currentSubAnimation = 1
                  L7_2 = L5_2.animations
                  L8_2 = anim
                  L7_2 = L7_2[L8_2]
                  L7_2 = L7_2.idleTime
                  if L7_2 ~= nil then
                    L7_2 = _G
                    L7_2 = L7_2.math
                    L7_2 = L7_2.random
                    L8_2 = L5_2.animations
                    L9_2 = anim
                    L8_2 = L8_2[L9_2]
                    L8_2 = L8_2.idleTime
                    L8_2 = L8_2[1]
                    L8_2 = L8_2 * 100
                    L9_2 = L5_2.animations
                    L10_2 = anim
                    L9_2 = L9_2[L10_2]
                    L9_2 = L9_2.idleTime
                    L9_2 = L9_2[2]
                    L9_2 = L9_2 * 100
                    L7_2 = L7_2(L8_2, L9_2)
                    L7_2 = L7_2 / 100
                    L4_2.idleTimer = L7_2
                  end
                else
                  L7_2 = _G
                  L7_2 = L7_2.math
                  L7_2 = L7_2.random
                  L8_2 = 1
                  L9_2 = L5_2.animations
                  L10_2 = anim
                  L9_2 = L9_2[L10_2]
                  L9_2 = L9_2.sprites
                  L9_2 = #L9_2
                  L7_2 = L7_2(L8_2, L9_2)
                  L4_2.currentSubAnimation = L7_2
                end
                L4_2.animFrame = 1
                L7_2 = _G
                L7_2 = L7_2.math
                L7_2 = L7_2.random
                L8_2 = L5_2.animations
                L9_2 = anim
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.frameTime
                L8_2 = L8_2[1]
                L8_2 = L8_2 * 100
                L9_2 = L5_2.animations
                L10_2 = anim
                L9_2 = L9_2[L10_2]
                L9_2 = L9_2.frameTime
                L9_2 = L9_2[2]
                L9_2 = L9_2 * 100
                L7_2 = L7_2(L8_2, L9_2)
                L7_2 = L7_2 / 100
                L4_2.animFrameTime = L7_2
                L7_2 = L5_2.animations
                L8_2 = anim
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.disableRotation
                if L7_2 == true then
                  L4_2.disableRotation = true
                  L7_2 = setObjectParameter
                  L8_2 = A0_2
                  L9_2 = 10
                  L10_2 = 1
                  L7_2(L8_2, L9_2, L10_2)
                else
                  L4_2.disableRotation = nil
                  L7_2 = setObjectParameter
                  L8_2 = A0_2
                  L9_2 = 10
                  L10_2 = 0
                  L7_2(L8_2, L9_2, L10_2)
                end
                L7_2 = L5_2.animations
                L8_2 = anim
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.fatal
                if L7_2 == true then
                  L4_2.strength = 0.1
                end
                L7_2 = L5_2.animations
                L8_2 = anim
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.destroyJoints
                if L7_2 == true then
                  L7_2 = removeJointsFromObject
                  L8_2 = A0_2
                  L7_2(L8_2)
                end
                L7_2 = L4_2.currentSound
                if L7_2 ~= nil then
                  L7_2 = _G
                  L7_2 = L7_2.res
                  L7_2 = L7_2.stopAudio
                  L8_2 = L4_2.currentSound
                  L7_2(L8_2)
                  L4_2.currentSound = nil
                end
                L7_2 = L5_2.animations
                L8_2 = anim
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.sound
                if L7_2 ~= nil then
                  L7_2 = getAudioName
                  L8_2 = L5_2.animations
                  L9_2 = anim
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.sound
                  L8_2 = L8_2.name
                  L7_2 = L7_2(L8_2)
                  L4_2.currentSound = L7_2
                  L7_2 = res
                  L7_2 = L7_2.playAudio
                  L8_2 = L4_2.currentSound
                  L7_2(L8_2)
                  goto lbl_270
                  ::lbl_250::
                  L7_2 = anim
                  L4_2.nextAnimation = L7_2
                  L7_2 = _G
                  L7_2 = L7_2.math
                  L7_2 = L7_2.random
                  L8_2 = L5_2.animations
                  L9_2 = anim
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.thresholdTime
                  L8_2 = L8_2[1]
                  L8_2 = L8_2 * 100
                  L9_2 = L5_2.animations
                  L10_2 = anim
                  L9_2 = L9_2[L10_2]
                  L9_2 = L9_2.thresholdTime
                  L9_2 = L9_2[2]
                  L9_2 = L9_2 * 100
                  L7_2 = L7_2(L8_2, L9_2)
                  L7_2 = L7_2 / 100
                  L4_2.animThresholdTimer = L7_2
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_270::
end

selectObjectAnimation = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L3_2 = blockTable
  L3_2 = L3_2.blocks
  L4_2 = L2_2.definition
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.useStateAnimations
  if L4_2 then
    L2_2.currentAnimation = A1_2
    L4_2 = L3_2.stateAnimations
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2.defaultAnim
    if L4_2 == true then
      L2_2.currentSubAnimation = 1
      L4_2 = L3_2.stateAnimations
      L4_2 = L4_2[A1_2]
      L4_2 = L4_2.idleTime
      if L4_2 ~= nil then
        L4_2 = _G
        L4_2 = L4_2.math
        L4_2 = L4_2.random
        L5_2 = L3_2.stateAnimations
        L5_2 = L5_2[A1_2]
        L5_2 = L5_2.idleTime
        L5_2 = L5_2[1]
        L5_2 = L5_2 * 100
        L6_2 = L3_2.stateAnimations
        L6_2 = L6_2[A1_2]
        L6_2 = L6_2.idleTime
        L6_2 = L6_2[2]
        L6_2 = L6_2 * 100
        L4_2 = L4_2(L5_2, L6_2)
        L4_2 = L4_2 / 100
        L2_2.idleTimer = L4_2
      end
    else
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.random
      L5_2 = 1
      L6_2 = L3_2.stateAnimations
      L6_2 = L6_2[A1_2]
      L6_2 = L6_2.sprites
      L6_2 = #L6_2
      L4_2 = L4_2(L5_2, L6_2)
      L2_2.currentSubAnimation = L4_2
    end
    L2_2.animFrame = 1
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.random
    L5_2 = L3_2.stateAnimations
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2.frameTime
    L5_2 = L5_2[1]
    L5_2 = L5_2 * 100
    L6_2 = L3_2.stateAnimations
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.frameTime
    L6_2 = L6_2[2]
    L6_2 = L6_2 * 100
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 / 100
    L2_2.animFrameTime = L4_2
    L4_2 = L3_2.stateAnimations
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2.disableRotation
    if L4_2 == true then
      L2_2.disableRotation = true
      L4_2 = setObjectParameter
      L5_2 = A0_2
      L6_2 = 10
      L7_2 = 1
      L4_2(L5_2, L6_2, L7_2)
    else
      L2_2.disableRotation = nil
      L4_2 = setObjectParameter
      L5_2 = A0_2
      L6_2 = 10
      L7_2 = 0
      L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = L2_2.currentSound
    if L4_2 ~= nil then
      L4_2 = _G
      L4_2 = L4_2.res
      L4_2 = L4_2.stopAudio
      L5_2 = L2_2.currentSound
      L4_2(L5_2)
      L2_2.currentSound = nil
    end
    L4_2 = L3_2.stateAnimations
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2.sound
    if L4_2 ~= nil then
      L4_2 = res
      L4_2 = L4_2.playAudio
      L5_2 = L3_2.stateAnimations
      L5_2 = L5_2[A1_2]
      L5_2 = L5_2.sound
      L5_2 = L5_2.name
      L4_2 = L4_2(L5_2)
      L2_2.currentSound = L4_2
    end
  else
    L4_2 = L3_2.animations
    if L4_2 ~= nil then
      L4_2 = L3_2.animations
      L4_2 = L4_2[A1_2]
      if L4_2 ~= nil then
        L2_2.currentAnimation = A1_2
        L4_2 = L3_2.animations
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2.defaultAnim
        if L4_2 == true then
          L2_2.currentSubAnimation = 1
          L4_2 = L3_2.animations
          L4_2 = L4_2[A1_2]
          L4_2 = L4_2.idleTime
          if L4_2 ~= nil then
            L4_2 = _G
            L4_2 = L4_2.math
            L4_2 = L4_2.random
            L5_2 = L3_2.animations
            L5_2 = L5_2[A1_2]
            L5_2 = L5_2.idleTime
            L5_2 = L5_2[1]
            L5_2 = L5_2 * 100
            L6_2 = L3_2.animations
            L6_2 = L6_2[A1_2]
            L6_2 = L6_2.idleTime
            L6_2 = L6_2[2]
            L6_2 = L6_2 * 100
            L4_2 = L4_2(L5_2, L6_2)
            L4_2 = L4_2 / 100
            L2_2.idleTimer = L4_2
          end
        else
          L4_2 = _G
          L4_2 = L4_2.math
          L4_2 = L4_2.random
          L5_2 = 1
          L6_2 = L3_2.animations
          L6_2 = L6_2[A1_2]
          L6_2 = L6_2.sprites
          L6_2 = #L6_2
          L4_2 = L4_2(L5_2, L6_2)
          L2_2.currentSubAnimation = L4_2
        end
        L2_2.animFrame = 1
        L4_2 = _G
        L4_2 = L4_2.math
        L4_2 = L4_2.random
        L5_2 = L3_2.animations
        L5_2 = L5_2[A1_2]
        L5_2 = L5_2.frameTime
        L5_2 = L5_2[1]
        L5_2 = L5_2 * 100
        L6_2 = L3_2.animations
        L6_2 = L6_2[A1_2]
        L6_2 = L6_2.frameTime
        L6_2 = L6_2[2]
        L6_2 = L6_2 * 100
        L4_2 = L4_2(L5_2, L6_2)
        L4_2 = L4_2 / 100
        L2_2.animFrameTime = L4_2
        L4_2 = L3_2.animations
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2.disableRotation
        if L4_2 == true then
          L2_2.disableRotation = true
          L4_2 = setObjectParameter
          L5_2 = A0_2
          L6_2 = 10
          L7_2 = 1
          L4_2(L5_2, L6_2, L7_2)
        else
          L2_2.disableRotation = nil
          L4_2 = setObjectParameter
          L5_2 = A0_2
          L6_2 = 10
          L7_2 = 0
          L4_2(L5_2, L6_2, L7_2)
        end
        L4_2 = L2_2.currentSound
        if L4_2 ~= nil then
          L4_2 = _G
          L4_2 = L4_2.res
          L4_2 = L4_2.stopAudio
          L5_2 = L2_2.currentSound
          L4_2(L5_2)
          L2_2.currentSound = nil
        end
        L4_2 = L3_2.animations
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2.sound
        if L4_2 ~= nil then
          L4_2 = res
          L4_2 = L4_2.playAudio
          L5_2 = L3_2.animations
          L5_2 = L5_2[A1_2]
          L5_2 = L5_2.sound
          L5_2 = L5_2.name
          L4_2 = L4_2(L5_2)
          L2_2.currentSound = L4_2
        end
      end
    end
  end
end

setAnimation = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L3_2 = blockTable
  L3_2 = L3_2.blocks
  L4_2 = L2_2.definition
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.animations
  if L4_2 ~= nil then
    L4_2 = 1
    L5_2 = L3_2.animations
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2.animations
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.name
      if L8_2 == A1_2 then
        L8_2 = L7_2
        L9_2 = setAnimation
        L10_2 = A0_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
        return
      end
    end
  end
end

setAnimationByName = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = getObjectDefinition
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.animations
  if L2_2 ~= nil then
    L2_2 = 1
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[A0_2]
    L3_2.defaultAnim = L2_2
    L3_2 = L1_2.animations
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.frameTime
    if L3_2 ~= nil then
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L3_2.currentAnimation = L2_2
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L3_2.currentSubAnimation = 1
      L3_2 = L1_2.animations
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2.idleTime
      if L3_2 ~= nil then
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A0_2]
        L4_2 = _G
        L4_2 = L4_2.math
        L4_2 = L4_2.random
        L5_2 = L1_2.animations
        L5_2 = L5_2[L2_2]
        L5_2 = L5_2.idleTime
        L5_2 = L5_2[1]
        L5_2 = L5_2 * 100
        L6_2 = L1_2.animations
        L6_2 = L6_2[L2_2]
        L6_2 = L6_2.idleTime
        L6_2 = L6_2[2]
        L6_2 = L6_2 * 100
        L4_2 = L4_2(L5_2, L6_2)
        L4_2 = L4_2 / 100
        L3_2.idleTimer = L4_2
      end
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.random
      L5_2 = 1
      L6_2 = L1_2.animations
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.sprites
      L7_2 = objects
      L7_2 = L7_2.world
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.currentSubAnimation
      L6_2 = L6_2[L7_2]
      L6_2 = #L6_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.animFrame = L4_2
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.random
      L5_2 = L1_2.animations
      L5_2 = L5_2[L2_2]
      L5_2 = L5_2.frameTime
      L5_2 = L5_2[1]
      L5_2 = L5_2 * 100
      L6_2 = L1_2.animations
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.frameTime
      L6_2 = L6_2[2]
      L6_2 = L6_2 * 100
      L4_2 = L4_2(L5_2, L6_2)
      L4_2 = L4_2 / 100
      L3_2.animFrameTime = L4_2
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L4_2 = L1_2.animations
      L4_2 = L4_2[L2_2]
      L4_2 = L4_2.disableRotation
      L3_2.disableRotation = L4_2
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.disableRotation
      if L3_2 == true then
        L3_2 = setObjectParameter
        L4_2 = A0_2
        L5_2 = 10
        L6_2 = 1
        L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = setObjectParameter
        L4_2 = A0_2
        L5_2 = 10
        L6_2 = 0
        L3_2(L4_2, L5_2, L6_2)
      end
    end
    L3_2 = animatedObjects
    L4_2 = objects
    L4_2 = L4_2.world
    L4_2 = L4_2[A0_2]
    L3_2[A0_2] = L4_2
    L3_2 = setObjectParameter
    L4_2 = A0_2
    L5_2 = 13
    L6_2 = 1
    L3_2(L4_2, L5_2, L6_2)
  end
end

startAnimations = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2)
  local L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A0_2]
  L11_2 = objects
  L11_2 = L11_2.world
  L11_2 = L11_2[A1_2]
  L12_2 = false
  L13_2 = false
  L14_2 = blockTable
  L14_2 = L14_2.blocks
  L15_2 = L10_2.definition
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.stopAnimationsAfterCollision
  if L14_2 then
    L14_2 = objects
    L14_2 = L14_2.animatedObjects
    L14_2[A0_2] = nil
  end
  L14_2 = blockTable
  L14_2 = L14_2.blocks
  L15_2 = L11_2.definition
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.stopAnimationsAfterCollision
  if L14_2 then
    L14_2 = objects
    L14_2 = L14_2.animatedObjects
    L14_2[A1_2] = nil
  end
  L14_2 = L10_2.onCollisionEnter
  if L14_2 ~= nil then
    L14_2 = _G
    L14_2 = L14_2.type
    L15_2 = L10_2.onCollisionEnter
    L14_2 = L14_2(L15_2)
    if L14_2 == "table" then
      L14_2 = _G
      L14_2 = L14_2.ipairs
      L15_2 = L10_2.onCollisionEnter
      L14_2, L15_2, L16_2 = L14_2(L15_2)
      for L17_2, L18_2 in L14_2, L15_2, L16_2 do
        L19_2 = fireAction
        L20_2 = L18_2
        L21_2 = {}
        L21_2.name = A0_2
        L21_2.obj = L10_2
        L21_2.other = A1_2
        L21_2.force = A2_2
        L21_2.wasDamageDone = A3_2
        L21_2.dot = A4_2
        L21_2.resultDamage = A5_2
        L21_2.collisionPointX = A6_2
        L21_2.collisionPointY = A7_2
        L21_2.collisionNormalX = A8_2
        L21_2.collisionNormalY = A9_2
        L22_2 = "onCollisionEnter"
        L19_2(L20_2, L21_2, L22_2)
      end
    else
      L14_2 = fireAction
      L15_2 = L10_2.onCollisionEnter
      L16_2 = {}
      L16_2.name = A0_2
      L16_2.obj = L10_2
      L16_2.other = A1_2
      L16_2.force = A2_2
      L16_2.wasDamageDone = A3_2
      L16_2.dot = A4_2
      L16_2.resultDamage = A5_2
      L16_2.collisionPointX = A6_2
      L16_2.collisionPointY = A7_2
      L16_2.collisionNormalX = A8_2
      L16_2.collisionNormalY = A9_2
      L17_2 = "onCollisionEnter"
      L14_2(L15_2, L16_2, L17_2)
    end
  end
  L14_2 = L11_2.onCollisionEnter
  if L14_2 ~= nil then
    L14_2 = _G
    L14_2 = L14_2.type
    L15_2 = L11_2.onCollisionEnter
    L14_2 = L14_2(L15_2)
    if L14_2 == "table" then
      L14_2 = _G
      L14_2 = L14_2.ipairs
      L15_2 = L11_2.onCollisionEnter
      L14_2, L15_2, L16_2 = L14_2(L15_2)
      for L17_2, L18_2 in L14_2, L15_2, L16_2 do
        L19_2 = fireAction
        L20_2 = L18_2
        L21_2 = {}
        L21_2.name = A1_2
        L21_2.obj = L11_2
        L21_2.other = A0_2
        L21_2.force = A2_2
        L21_2.wasDamageDone = A3_2
        L21_2.dot = A4_2
        L21_2.resultDamage = A5_2
        L21_2.collisionPointX = A6_2
        L21_2.collisionPointY = A7_2
        L21_2.collisionNormalX = A8_2
        L21_2.collisionNormalY = A9_2
        L22_2 = "onCollisionEnter"
        L19_2(L20_2, L21_2, L22_2)
      end
    else
      L14_2 = fireAction
      L15_2 = L11_2.onCollisionEnter
      L16_2 = {}
      L16_2.name = A1_2
      L16_2.obj = L11_2
      L16_2.other = A0_2
      L16_2.force = A2_2
      L16_2.wasDamageDone = A3_2
      L16_2.dot = A4_2
      L16_2.resultDamage = A5_2
      L16_2.collisionPointX = A6_2
      L16_2.collisionPointY = A7_2
      L16_2.collisionNormalX = A8_2
      L16_2.collisionNormalY = A9_2
      L17_2 = "onCollisionEnter"
      L14_2(L15_2, L16_2, L17_2)
    end
  end
  L14_2 = blockTable
  L14_2 = L14_2.blocks
  L15_2 = L10_2.definition
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.collisionSpawn
  if L14_2 ~= nil then
    L14_2 = {}
    L15_2 = blockTable
    L15_2 = L15_2.blocks
    L16_2 = L10_2.definition
    L15_2 = L15_2[L16_2]
    L14_2.definition = L15_2
    L15_2 = L10_2.x
    L14_2.x = L15_2
    L15_2 = L10_2.y
    L14_2.y = L15_2
    L15_2 = L10_2.angle
    L14_2.angle = L15_2
    L15_2 = {}
    L16_2 = L14_2.definition
    L16_2 = L16_2.collisionSpawn
    L15_2.spawnedObjects = L16_2
    L15_2.info = L14_2
    L16_2 = spawnList
    L17_2 = spawnList
    L17_2 = #L17_2
    L17_2 = L17_2 + 1
    L16_2[L17_2] = L15_2
  end
  L14_2 = blockTable
  L14_2 = L14_2.blocks
  L15_2 = L11_2.definition
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.collisionSpawn
  if L14_2 ~= nil then
    L14_2 = {}
    L15_2 = blockTable
    L15_2 = L15_2.blocks
    L16_2 = L11_2.definition
    L15_2 = L15_2[L16_2]
    L14_2.definition = L15_2
    L15_2 = L11_2.x
    L14_2.x = L15_2
    L15_2 = L11_2.y
    L14_2.y = L15_2
    L15_2 = L11_2.angle
    L14_2.angle = L15_2
    L15_2 = {}
    L16_2 = L14_2.definition
    L16_2 = L16_2.collisionSpawn
    L15_2.spawnedObjects = L16_2
    L15_2.info = L14_2
    L16_2 = spawnList
    L17_2 = spawnList
    L17_2 = #L17_2
    L17_2 = L17_2 + 1
    L16_2[L17_2] = L15_2
  end
  if A3_2 then
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.max
    L15_2 = g_defaultCameraResetTime
    L16_2 = cameraResetTimer
    if not L16_2 then
      L16_2 = 0
    end
    L14_2 = L14_2(L15_2, L16_2)
    cameraResetTimer = L14_2
    if 25 < A2_2 then
      L14_2 = blockTable
      L14_2 = L14_2.blocks
      L15_2 = L10_2.definition
      L14_2 = L14_2[L15_2]
      L15_2 = blockTable
      L15_2 = L15_2.blocks
      L16_2 = L11_2.definition
      L15_2 = L15_2[L16_2]
      L16_2 = 0
      L17_2 = L10_2.strength
      L18_2 = L14_2.strength
      if L17_2 ~= L18_2 then
        L16_2 = L14_2.strength
      end
      L17_2 = L11_2.strength
      L18_2 = L15_2.strength
      if L17_2 ~= L18_2 then
        L17_2 = _G
        L17_2 = L17_2.math
        L17_2 = L17_2.max
        L18_2 = L16_2
        L19_2 = L15_2.strength
        L17_2 = L17_2(L18_2, L19_2)
        L16_2 = L17_2
      end
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.min
      L18_2 = L16_2
      L19_2 = A2_2
      L17_2 = L17_2(L18_2, L19_2)
      L16_2 = L17_2
      L17_2 = 3000000
      L18_2 = _G
      L18_2 = L18_2.math
      L18_2 = L18_2.min
      L19_2 = L16_2 * L16_2
      L19_2 = L19_2 * L16_2
      L20_2 = L17_2
      L18_2 = L18_2(L19_2, L20_2)
      L19_2 = addCameraShake
      L20_2 = cameraShakeModeSine
      L21_2 = gameWorldScale
      L21_2 = 150 * L21_2
      L22_2 = L18_2 / L17_2
      L22_2 = L22_2 * 5
      L23_2 = gameWorldScale
      L22_2 = L22_2 * L23_2
      L23_2 = L18_2 / L17_2
      L23_2 = L23_2 * 0.5
      L19_2(L20_2, L21_2, L22_2, L23_2)
    end
    L14_2 = getDamageSprite
    L15_2 = L10_2
    L16_2 = blockTable
    L16_2 = L16_2.blocks
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = L14_2.sprite
    L16_2 = L10_2.damageSprite
    if L15_2 ~= L16_2 then
      L10_2.damageSprite = L15_2
      L16_2 = L14_2.blink
      L10_2.blinkSprite = L16_2
      L16_2 = L14_2.smile
      L10_2.smileSprite = L16_2
      L16_2 = blockTable
      L16_2 = L16_2.materials
      L17_2 = getObjectDefinition
      L18_2 = A0_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.material
      L16_2 = L16_2[L17_2]
      L16_2 = L16_2.damageSound
      if L16_2 ~= nil then
        L16_2 = res
        L16_2 = L16_2.playAudio
        L17_2 = blockTable
        L17_2 = L17_2.materials
        L18_2 = getObjectDefinition
        L19_2 = A0_2
        L18_2 = L18_2(L19_2)
        L18_2 = L18_2.material
        L17_2 = L17_2[L18_2]
        L17_2 = L17_2.damageSound
        L16_2(L17_2)
        L12_2 = true
      end
    end
    if not A4_2 then
      L16_2 = createDamageParticles
      L17_2 = L11_2
      L18_2 = blockTable
      L18_2 = L18_2.blocks
      L19_2 = L11_2.strength
      L19_2 = L19_2 + A5_2
      L16_2(L17_2, L18_2, L19_2)
      L16_2 = updateDamageSprite
      L17_2 = L11_2
      L16_2(L17_2)
    end
    L16_2 = L10_2.definition
    if L16_2 ~= "compound" then
      L16_2 = getObjectDefinition
      L17_2 = A0_2
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.damageParticles
      if L16_2 ~= nil then
        L17_2 = putParticles
        L18_2 = {}
        L18_2.objectName = A0_2
        L18_2.particles = L16_2
        L19_2 = _G
        L19_2 = L19_2.math
        L19_2 = L19_2.ceil
        L20_2 = A2_2 / 10
        L19_2 = L19_2(L20_2)
        L18_2.amount = L19_2
        L17_2(L18_2)
      end
    end
    L16_2 = L11_2.definition
    if L16_2 ~= "compound" then
      L16_2 = getObjectDefinition
      L17_2 = A1_2
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.damageParticles
      damageParticles = L16_2
      L16_2 = damageParticles
      if L16_2 ~= nil then
        L16_2 = putParticles
        L17_2 = {}
        L17_2.objectName = A1_2
        L18_2 = damageParticles
        L17_2.particles = L18_2
        L18_2 = _G
        L18_2 = L18_2.math
        L18_2 = L18_2.ceil
        L19_2 = A2_2 / 10
        L18_2 = L18_2(L19_2)
        L17_2.amount = L18_2
        L16_2(L17_2)
      end
    end
    L16_2 = L10_2.levelGoal
    if L16_2 then
      L16_2 = L10_2.strength
      L17_2 = blockTable
      L17_2 = L17_2.blocks
      L18_2 = L10_2.definition
      L17_2 = L17_2[L18_2]
      L17_2 = L17_2.strength
      L16_2 = L16_2 / L17_2
      L17_2 = g_levelGoalDamageStatePercent
      if not L17_2 then
        L17_2 = 0.5
      end
      if L16_2 < L17_2 then
        L17_2 = setPigDamageState
        L18_2 = L10_2
        L17_2(L18_2)
      end
    end
    L16_2 = L11_2.levelGoal
    if L16_2 then
      L16_2 = L11_2.strength
      L17_2 = blockTable
      L17_2 = L17_2.blocks
      L18_2 = L11_2.definition
      L17_2 = L17_2[L18_2]
      L17_2 = L17_2.strength
      L16_2 = L16_2 / L17_2
      L17_2 = g_levelGoalDamageStatePercent
      if not L17_2 then
        L17_2 = 0.5
      end
      if L16_2 < L17_2 then
        L17_2 = setPigDamageState
        L18_2 = L11_2
        L17_2(L18_2)
      end
    end
  end
  L14_2 = collisionSoundForceThreshold
  if A2_2 > L14_2 then
    L14_2 = nil
    L15_2 = nil
    L16_2 = L10_2.definition
    if L16_2 ~= "compound" then
      L16_2 = blockTable
      L16_2 = L16_2.materials
      L17_2 = getObjectDefinition
      L18_2 = A0_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.material
      L14_2 = L16_2[L17_2]
    end
    L16_2 = L11_2.definition
    if L16_2 ~= "compound" then
      L16_2 = blockTable
      L16_2 = L16_2.materials
      L17_2 = getObjectDefinition
      L18_2 = A1_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.material
      L15_2 = L16_2[L17_2]
    end
    if L12_2 ~= true and L14_2 ~= nil then
      L16_2 = blockTable
      L16_2 = L16_2.materials
      L17_2 = getObjectDefinition
      L18_2 = A0_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.material
      L16_2 = L16_2[L17_2]
      L16_2 = L16_2.collisionSound
      if L16_2 ~= nil then
        L16_2 = blockTable
        L16_2 = L16_2.materials
        L17_2 = getObjectDefinition
        L18_2 = A0_2
        L17_2 = L17_2(L18_2)
        L17_2 = L17_2.material
        L16_2 = L16_2[L17_2]
        L16_2 = L16_2.collisionSound
        L17_2 = getObjectDefinition
        L18_2 = A0_2
        L17_2 = L17_2(L18_2)
        L17_2 = L17_2.collisionSound
        if L17_2 then
          L16_2 = L17_2
        end
        L18_2 = g_levelTimer
        if 1 < L18_2 then
          L18_2 = res
          L18_2 = L18_2.playAudio
          L19_2 = L16_2
          L18_2(L19_2)
        end
      end
    end
    if L13_2 ~= true and L15_2 ~= nil and L15_2 ~= L14_2 then
      L16_2 = blockTable
      L16_2 = L16_2.materials
      L17_2 = getObjectDefinition
      L18_2 = A1_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.material
      L16_2 = L16_2[L17_2]
      L16_2 = L16_2.collisionSound
      if L16_2 ~= nil then
        L16_2 = blockTable
        L16_2 = L16_2.materials
        L17_2 = getObjectDefinition
        L18_2 = A1_2
        L17_2 = L17_2(L18_2)
        L17_2 = L17_2.material
        L16_2 = L16_2[L17_2]
        L16_2 = L16_2.collisionSound
        L17_2 = getObjectDefinition
        L18_2 = A1_2
        L17_2 = L17_2(L18_2)
        L17_2 = L17_2.collisionSound
        if L17_2 then
          L16_2 = L17_2
        end
        L18_2 = g_levelTimer
        if 1 < L18_2 then
          L18_2 = res
          L18_2 = L18_2.playAudio
          L19_2 = L16_2
          L18_2(L19_2)
        end
      end
    end
    L16_2 = checkTwoWayLevelGoalPopAchievement
    L17_2 = L10_2
    L18_2 = L11_2
    L19_2 = levelName
    L16_2(L17_2, L18_2, L19_2)
  end
end

blockCollision = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.currentState
  if L1_2 and L1_2 ~= "damagedState" then
    L2_2 = createLevelGoalDamageParticles
    L3_2 = A0_2
    L4_2 = blockTable
    L4_2 = L4_2.blocks
    L2_2(L3_2, L4_2)
  end
  A0_2.inDamagedState = true
  L2_2 = setCurrentState
  L3_2 = A0_2
  L4_2 = "damagedState"
  L2_2(L3_2, L4_2)
end

setPigDamageState = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = getDamageSprite
  L2_2 = A0_2
  L3_2 = blockTable
  L3_2 = L3_2.blocks
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.sprite
  L3_2 = A0_2.damageSprite
  if L2_2 ~= L3_2 then
    A0_2.damageSprite = L2_2
    L3_2 = L1_2.blink
    A0_2.blinkSprite = L3_2
    L3_2 = L1_2.smile
    A0_2.smileSprite = L3_2
    L3_2 = blockTable
    L3_2 = L3_2.materials
    L4_2 = getObjectDefinition
    L5_2 = A0_2.name
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.material
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.damageSound
    if L3_2 ~= nil then
      L3_2 = true
      obj2SoundPlayed = L3_2
      L3_2 = res
      L3_2 = L3_2.playAudio
      L4_2 = blockTable
      L4_2 = L4_2.materials
      L5_2 = getObjectDefinition
      L6_2 = A0_2.name
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.material
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.damageSound
      L3_2(L4_2)
    end
  end
end

updateDamageSprite = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2.objectName
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.amount
  if not L4_2 then
    L4_2 = 1
  end
  L5_2 = A0_2.particles
  L6_2 = A0_2.w
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = A0_2.h
  if not L7_2 then
    L7_2 = 1
  end
  L8_2 = A0_2.angle
  if not L8_2 then
    L8_2 = 0
  end
  L9_2 = A0_2.screenX
  if not L9_2 then
    L9_2 = A0_2.screenY
    if not L9_2 then
      goto lbl_33
    end
  end
  L9_2 = screenToPhysicsTransform
  L10_2 = A0_2.screenX
  L11_2 = A0_2.screenY
  L9_2, L10_2 = L9_2(L10_2, L11_2)
  L3_2 = L10_2
  L2_2 = L9_2
  ::lbl_33::
  L9_2 = A0_2.worldX
  if not L9_2 then
    L9_2 = A0_2.worldY
    if not L9_2 then
      goto lbl_45
    end
  end
  L9_2 = worldToPhysicsTransform
  L10_2 = A0_2.worldX
  L11_2 = A0_2.worldY
  L9_2, L10_2 = L9_2(L10_2, L11_2)
  L3_2 = L10_2
  L2_2 = L9_2
  ::lbl_45::
  L9_2 = A0_2.layer
  if not L9_2 then
    A0_2.layer = 0
  end
  if L1_2 then
    L9_2 = objects
    L9_2 = L9_2.world
    L9_2 = L9_2[L1_2]
    if L9_2 == nil then
      return
    end
    L2_2 = L9_2.x
    L3_2 = L9_2.y
    L10_2 = L9_2.radius
    if L10_2 == nil then
      L10_2 = physicsToWorldTransform
      L11_2 = L9_2.width
      L12_2 = L9_2.height
      L10_2, L11_2 = L10_2(L11_2, L12_2)
      L7_2 = L11_2
      L6_2 = L10_2
    else
      L10_2 = physicsToWorldTransform
      L11_2 = L9_2.radius
      L11_2 = L11_2 * 2
      L12_2 = L9_2.radius
      L12_2 = L12_2 * 2
      L10_2, L11_2 = L10_2(L11_2, L12_2)
      L7_2 = L11_2
      L6_2 = L10_2
    end
    L10_2 = getAngle
    L11_2 = L1_2
    L10_2 = L10_2(L11_2)
    L8_2 = L10_2
  end
  L9_2 = _G
  L9_2 = L9_2.type
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  if L9_2 ~= "table" then
    L9_2 = {}
    L10_2 = L5_2
    L9_2[1] = L10_2
    L5_2 = L9_2
  end
  L9_2 = _G
  L9_2 = L9_2.pairs
  L10_2 = L5_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = physicsToWorldTransform
    L15_2 = L2_2
    L16_2 = L3_2
    L14_2, L15_2 = L14_2(L15_2, L16_2)
    L16_2 = particleTable
    L16_2 = L16_2.particles
    L16_2 = L16_2[L13_2]
    if L16_2 == nil then
    else
      L17_2 = A0_2.useAmountInDefinition
      if L17_2 then
        L17_2 = L16_2.amount
        L4_2 = L17_2 or L4_2
        if not L17_2 then
        end
      end
      A0_2.definitionName = L13_2
      A0_2.amount = L4_2
      A0_2.x = L14_2
      A0_2.y = L15_2
      A0_2.w = L6_2
      A0_2.h = L7_2
      A0_2.angle = L8_2
      L17_2 = A0_2.layer
      A0_2.mode = L17_2
      L17_2 = _G
      L17_2 = L17_2.particles
      L17_2 = L17_2.native_addParticlesWithMode
      L18_2 = A0_2
      L17_2(L18_2)
    end
  end
end

putParticles = L4_1

function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = removeObject
  L2_2 = A0_2.name
  L1_2(L2_2)
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2[L2_2] = nil
  A0_2.emitter = nil
  L1_2 = deadBlocks
  L2_2 = A0_2.name
  L1_2[L2_2] = nil
  L1_2 = g_birdEmitterTargets
  if L1_2 then
    L1_2 = g_birdEmitterTargets
    L2_2 = A0_2.name
    L1_2[L2_2] = nil
  end
  L1_2 = removeUpdateCall
  L2_2 = A0_2.name
  L1_2(L2_2)
end

destroyEmitter = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L1_2 = print
    L2_2 = "getObjectDefinition () failed for "
    L3_2 = A0_2
    L4_2 = "\n"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
    return
  end
  L1_2 = blockTable
  L1_2 = L1_2.blocks
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.definition
  L1_2 = L1_2[L2_2]
  return L1_2
end

getObjectDefinition = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = birds
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.controllable
    if L6_2 then
      L6_2 = L5_2.startNumber
      if A0_2 >= L6_2 then
        L6_2 = removeBird
        L7_2 = L5_2
        L6_2(L7_2)
      else
        L6_2 = L5_2.startNumber
        L6_2 = L6_2 - A0_2
        L5_2.startNumber = L6_2
      end
    end
  end
end

changeBirdNumbers = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = getNextBird
  L1_2 = 1
  L0_2 = L0_2(L1_2)
  currentBirdName = L0_2
  L0_2 = currentBirdName
  if L0_2 == nil then
    L0_2 = changeBirdNumbers
    L1_2 = 1
    L0_2(L1_2)
    L0_2 = restartBirdOrder
    L0_2()
  end
end

restartBirdOrder = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = birds
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.controllable
    if L6_2 then
      L6_2 = L5_2.startNumber
      if A0_2 >= L6_2 then
        L6_2 = true
        return L6_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

checkBirdNumbers = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = currentBirdName
  if L0_2 ~= nil then
    L0_2 = numMightyEaglesCalled
    L0_2 = L0_2 + 1
    numMightyEaglesCalled = L0_2
    L0_2 = createObject
    L1_2 = blockTable
    L2_2 = "ME_BAIT"
    L3_2 = "ME_BAIT"
    L4_2 = numMightyEaglesCalled
    L3_2 = L3_2 .. L4_2
    L4_2 = objects
    L4_2 = L4_2.world
    L5_2 = currentBirdName
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.x
    L5_2 = objects
    L5_2 = L5_2.world
    L6_2 = currentBirdName
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.y
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L1_2 = setupTutorial
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L2_2 = objects
    L2_2 = L2_2.world
    L3_2 = currentBirdName
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.startNumber
    L1_2.startNumber = L2_2
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L1_2.controlRadius = 5.5
    L1_2 = birds
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[L0_2]
    L1_2[L0_2] = L2_2
    L1_2 = objects
    L1_2 = L1_2.world
    L2_2 = currentBirdName
    L1_2 = L1_2[L2_2]
    L1_2.ignoreTutorialPowerUsage = true
    L1_2 = destroyObject
    L2_2 = currentBirdName
    L3_2 = true
    L1_2(L2_2, L3_2)
    currentBirdName = L0_2
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_NEXT_BIRD_READY
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L1_2.damageDone = 0
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L2_2 = _G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L3_2 = 10
    L4_2 = 30
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 / 10
    L1_2.animTimer = L2_2
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L2_2 = _G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L3_2 = 10
    L4_2 = 30
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 / 10
    L1_2.jumpTimer = L2_2
    L1_2 = menuManager
    L2_2 = L1_2
    L1_2 = L1_2.getRoot
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.updateMELeft
    L1_2(L2_2)
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.originalPosX
    if L1_2 then
      L1_2 = objects
      L1_2 = L1_2.world
      L1_2 = L1_2[L0_2]
      L1_2 = L1_2.originalPosY
      if L1_2 then
        goto lbl_121
      end
    end
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[L0_2]
    L2_2 = L2_2.x
    L1_2.originalPosX = L2_2
    L1_2 = objects
    L1_2 = L1_2.world
    L1_2 = L1_2[L0_2]
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[L0_2]
    L2_2 = L2_2.y
    L1_2.originalPosY = L2_2
    ::lbl_121::
    L1_2 = getNextBird
    L2_2 = currentBirdIndex
    L2_2 = L2_2 + 1
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = objects
      L2_2 = L2_2.world
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2.definition
      if L2_2 ~= "ME_BAIT" then
        goto lbl_135
      end
    end
    L2_2 = disableME
    L2_2()
  end
  ::lbl_135::
end

replaceSelectedBirdWithME = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 1
  L1_2 = 7
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = getNextBird
    L5_2 = currentBirdIndex
    L5_2 = L5_2 + L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = objects
      L5_2 = L5_2.world
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.definition
      if L5_2 ~= "ME_BAIT" then
        L5_2 = numMightyEaglesCalled
        L5_2 = L5_2 + 1
        numMightyEaglesCalled = L5_2
        L5_2 = createObject
        L6_2 = blockTable
        L7_2 = "ME_BAIT"
        L8_2 = "ME_BAIT"
        L9_2 = numMightyEaglesCalled
        L8_2 = L8_2 .. L9_2
        L9_2 = objects
        L9_2 = L9_2.world
        L9_2 = L9_2[L4_2]
        L9_2 = L9_2.x
        L10_2 = objects
        L10_2 = L10_2.world
        L10_2 = L10_2[L4_2]
        L10_2 = L10_2.y
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L6_2 = setupTutorial
        L7_2 = L5_2
        L6_2(L7_2)
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L4_2]
        L7_2 = L7_2.startNumber
        L6_2.startNumber = L7_2
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L6_2.controlRadius = 5.5
        L6_2 = birds
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L5_2]
        L6_2[L5_2] = L7_2
        L6_2 = birds
        L6_2[L4_2] = nil
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L4_2]
        L6_2.ignoreTutorialPowerUsage = true
        L6_2 = destroyObject
        L7_2 = L4_2
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L6_2.controllable = true
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L6_2.damageDone = 0
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L7_2 = _G
        L7_2 = L7_2.math
        L7_2 = L7_2.random
        L8_2 = 10
        L9_2 = 30
        L7_2 = L7_2(L8_2, L9_2)
        L7_2 = L7_2 / 10
        L6_2.animTimer = L7_2
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L7_2 = _G
        L7_2 = L7_2.math
        L7_2 = L7_2.random
        L8_2 = 10
        L9_2 = 30
        L7_2 = L7_2(L8_2, L9_2)
        L7_2 = L7_2 / 10
        L6_2.jumpTimer = L7_2
        L6_2 = setObjectParameter
        L7_2 = L4_2
        L8_2 = 2
        L9_2 = 0
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.originalPosX
        if L6_2 then
          L6_2 = objects
          L6_2 = L6_2.world
          L6_2 = L6_2[L5_2]
          L6_2 = L6_2.originalPosY
          if L6_2 then
            goto lbl_128
          end
        end
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.x
        L6_2.originalPosX = L7_2
        L6_2 = objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.y
        L6_2.originalPosY = L7_2
        ::lbl_128::
        L6_2 = getNextBird
        L7_2 = currentBirdIndex
        L7_2 = L7_2 + L3_2
        L7_2 = L7_2 + 1
        L6_2 = L6_2(L7_2)
        if L6_2 ~= nil then
          L7_2 = objects
          L7_2 = L7_2.world
          L7_2 = L7_2[L6_2]
          L7_2 = L7_2.definition
          if L7_2 ~= "ME_BAIT" then
            goto lbl_144
          end
        end
        L7_2 = disableME
        L7_2()
        goto lbl_145
        ::lbl_144::
        return
      end
    end
    ::lbl_145::
  end
  L0_2 = disableME
  L0_2()
end

replaceNextBirdWithME = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = birds
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.definition
    if L5_2 ~= "ME_BAIT" then
      L5_2 = L3_2
      if L5_2 ~= nil then
        L6_2 = createObject
        L7_2 = blockTable
        L8_2 = "ME_BAIT"
        L9_2 = "ME_BAIT"
        L10_2 = numMightyEaglesCalled
        L9_2 = L9_2 .. L10_2
        L10_2 = objects
        L10_2 = L10_2.world
        L10_2 = L10_2[L5_2]
        L10_2 = L10_2.x
        L11_2 = objects
        L11_2 = L11_2.world
        L11_2 = L11_2[L5_2]
        L11_2 = L11_2.y
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        L7_2 = setupTutorial
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L8_2 = objects
        L8_2 = L8_2.world
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2.startNumber
        L7_2.startNumber = L8_2
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L7_2.controlRadius = 5.5
        L7_2 = birds
        L8_2 = objects
        L8_2 = L8_2.world
        L8_2 = L8_2[L6_2]
        L7_2[L6_2] = L8_2
        L7_2 = birds
        L7_2[L5_2] = nil
        L7_2 = destroyObject
        L8_2 = L5_2
        L9_2 = true
        L7_2(L8_2, L9_2)
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L7_2.controllable = true
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L7_2.damageDone = 0
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.random
        L9_2 = 10
        L10_2 = 30
        L8_2 = L8_2(L9_2, L10_2)
        L8_2 = L8_2 / 10
        L7_2.animTimer = L8_2
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.random
        L9_2 = 10
        L10_2 = 30
        L8_2 = L8_2(L9_2, L10_2)
        L8_2 = L8_2 / 10
        L7_2.jumpTimer = L8_2
        L7_2 = setObjectParameter
        L8_2 = L5_2
        L9_2 = 2
        L10_2 = 0
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.originalPosX
        if L7_2 then
          L7_2 = objects
          L7_2 = L7_2.world
          L7_2 = L7_2[L6_2]
          L7_2 = L7_2.originalPosY
          if L7_2 then
            goto lbl_116
          end
        end
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L8_2 = objects
        L8_2 = L8_2.world
        L8_2 = L8_2[L6_2]
        L8_2 = L8_2.x
        L7_2.originalPosX = L8_2
        L7_2 = objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        L8_2 = objects
        L8_2 = L8_2.world
        L8_2 = L8_2[L6_2]
        L8_2 = L8_2.y
        L7_2.originalPosY = L8_2
      end
    end
    ::lbl_116::
  end
  L0_2 = disableME
  L0_2()
end

swapBirdWithME = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = birds
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.controllable
    if L6_2 then
      L6_2 = L5_2.startNumber
      if L6_2 == A0_2 then
        return L4_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end

getNextBird = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = g_delayLevelComplete
  if L1_2 then
    L1_2 = g_delayLevelComplete
    if 0 < L1_2 then
      L1_2 = g_delayLevelComplete
      L1_2 = L1_2 - A0_2
      g_delayLevelComplete = L1_2
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = levelObjectives
  if L1_2 then
    L1_2 = levelObjectives
    L1_2 = L1_2.isObjectiveCompleted
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = timeWithoutLevelGoals
  if not L1_2 then
    L1_2 = 0
  end
  timeWithoutLevelGoals = L1_2
  L1_2 = g_scoreAddedTime
  if not L1_2 then
    L1_2 = 0
  end
  g_scoreAddedTime = L1_2
  L1_2 = g_scoreAddedTime
  L1_2 = L1_2 - A0_2
  g_scoreAddedTime = L1_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = levelGoals
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.levelGoal
    if L6_2 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = g_scoreAddedTime
  if L1_2 < 0 then
    L1_2 = true
    return L1_2
  end
  L1_2 = timeWithoutLevelGoals
  if 12 < L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end

checkLevelComplete = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = levelObjectives
  if L1_2 then
    L1_2 = levelObjectives
    L1_2 = L1_2.isObjectiveFailed
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = birds
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.controllable
    if L7_2 then
      L1_2 = true
      L7_2 = L6_2.hasCollided
      if L7_2 ~= true then
        L7_2 = false
        return L7_2
      end
    end
  end
  L2_2 = timeWithoutLevelGoals
  if L2_2 ~= nil then
    L2_2 = true
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = levelGoals
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.levelGoal
      if L8_2 then
        L2_2 = false
      end
    end
    if L2_2 then
      L3_2 = false
      return L3_2
    end
  end
  if A0_2 then
    L2_2 = g_scoreAddedTime
    if L2_2 ~= nil then
      L2_2 = g_scoreAddedTime
      if A0_2 > L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  else
    L2_2 = g_scoreAddedTime
    if L2_2 ~= nil then
      L2_2 = g_scoreAddedTime
      if L2_2 < 0 then
        L2_2 = true
        return L2_2
      end
    end
  end
  L2_2 = false
  return L2_2
end

checkLevelFailed = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.definition
  if L2_2 ~= nil then
    L2_2 = A0_2.definition
    if L2_2 ~= "" then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2.definition
  L2_2 = A1_2[L2_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2.definition
  L2_2 = A1_2[L2_2]
  L2_2 = L2_2.stateAnimations
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2.definition
  L2_2 = A1_2[L2_2]
  L2_2 = L2_2.stateAnimations
  L2_2 = L2_2.damagedState
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2.definition
  L2_2 = A1_2[L2_2]
  L2_2 = L2_2.stateAnimations
  L2_2 = L2_2.damagedState
  L2_2 = L2_2.damageParticles
  if L2_2 == nil then
    return
  end
  L2_2 = particleTable
  L2_2 = L2_2.particles
  L3_2 = A0_2.definition
  L3_2 = A1_2[L3_2]
  L3_2 = L3_2.stateAnimations
  L3_2 = L3_2.damagedState
  L3_2 = L3_2.damageParticles
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.amount
  if not L2_2 then
    L2_2 = 10
  end
  L3_2 = putParticles
  L4_2 = {}
  L5_2 = A0_2.name
  L4_2.objectName = L5_2
  L5_2 = A0_2.definition
  L5_2 = A1_2[L5_2]
  L5_2 = L5_2.stateAnimations
  L5_2 = L5_2.damagedState
  L5_2 = L5_2.damageParticles
  L4_2.particles = L5_2
  L4_2.amount = L2_2
  L3_2(L4_2)
end

createLevelGoalDamageParticles = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2.definition
  if L3_2 ~= nil then
    L3_2 = A0_2.definition
    if L3_2 ~= "" then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A0_2.definition
  L3_2 = A1_2[L3_2]
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2.definition
  L3_2 = A1_2[L3_2]
  L3_2 = L3_2.damageSprites
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2.strength
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2.strength
  L4_2 = A0_2.definition
  L4_2 = A1_2[L4_2]
  L4_2 = L4_2.strength
  L3_2 = L3_2 / L4_2
  L3_2 = L3_2 * 100
  L4_2 = A0_2.definition
  L4_2 = A1_2[L4_2]
  L4_2 = L4_2.strength
  L4_2 = A2_2 / L4_2
  L4_2 = L4_2 * 100
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = A0_2.definition
  L6_2 = A1_2[L6_2]
  L6_2 = L6_2.damageSprites
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.min
    if L3_2 > L10_2 then
      L10_2 = L9_2.max
      if L3_2 <= L10_2 then
        L10_2 = L9_2.max
        if L4_2 > L10_2 then
          L10_2 = L9_2.particles
          if L10_2 then
            L10_2 = particleTable
            L10_2 = L10_2.particles
            L11_2 = L9_2.particles
            L10_2 = L10_2[L11_2]
            L10_2 = L10_2.amount
            if not L10_2 then
              L10_2 = 10
            end
            L11_2 = putParticles
            L12_2 = {}
            L13_2 = A0_2.name
            L12_2.objectName = L13_2
            L13_2 = L9_2.particles
            L12_2.particles = L13_2
            L12_2.amount = L10_2
            L11_2(L12_2)
            return
          end
        end
      end
    end
  end
end

createDamageParticles = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = A0_2.strength
  L6_2 = A1_2.strength
  L5_2 = L5_2 / L6_2
  L5_2 = L5_2 * 100
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A1_2.animations
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.min
    if L3_2 >= L9_2 then
      L9_2 = L8_2.max
      if L3_2 <= L9_2 then
        L9_2 = A0_2.currentAnimation
        L10_2 = A0_2.currentAnimation
        if L7_2 > L10_2 then
          L9_2 = L7_2
        end
        L10_2 = setObjectAnimation
        L11_2 = A0_2
        L12_2 = A1_2
        L13_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        A2_2.sprite = L10_2
        return A2_2
      end
    end
  end
  return A2_2
end

getAndSetDamageAnimationSprite = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = A0_2.sprite
  L2_2.sprite = L3_2
  L3_2 = A0_2.sprite
  L2_2.blink = L3_2
  L3_2 = A0_2.sprite
  L2_2.smile = L3_2
  L3_2 = A0_2.definition
  if L3_2 ~= nil then
    L3_2 = A0_2.definition
    if L3_2 ~= "" then
      goto lbl_15
    end
  end
  do return L2_2 end
  ::lbl_15::
  L3_2 = A0_2.definition
  L3_2 = A1_2[L3_2]
  if L3_2 == nil then
    return L2_2
  end
  L3_2 = A0_2.definition
  L3_2 = A1_2[L3_2]
  L3_2 = L3_2.useDamageAnimations
  if L3_2 then
    L3_2 = getAndSetDamageAnimationSprite
    L4_2 = A0_2
    L5_2 = A0_2.definition
    L5_2 = A1_2[L5_2]
    L6_2 = L2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.definition
  L3_2 = A1_2[L3_2]
  L3_2 = L3_2.damageSprites
  if L3_2 == nil then
    return L2_2
  end
  L3_2 = A0_2.strength
  if L3_2 == nil then
    return L2_2
  end
  L3_2 = nil
  L4_2 = A0_2.initial_strength
  if L4_2 then
    L3_2 = A0_2.initial_strength
  else
    L4_2 = A0_2.definition
    L4_2 = A1_2[L4_2]
    L3_2 = L4_2.strength
  end
  L4_2 = A0_2.strength
  L4_2 = L4_2 / L3_2
  L4_2 = L4_2 * 100
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = A0_2.definition
  L6_2 = A1_2[L6_2]
  L6_2 = L6_2.damageSprites
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.min
    if L4_2 > L10_2 then
      L10_2 = L9_2.max
      if L4_2 <= L10_2 then
        L10_2 = A0_2.sprite
        L11_2 = L9_2.sprite
        if L10_2 ~= L11_2 then
          L10_2 = setSprite
          L11_2 = A0_2.name
          L12_2 = L9_2.sprite
          L10_2(L11_2, L12_2)
          L10_2 = L9_2.sprite
          L2_2.sprite = L10_2
          L10_2 = L9_2.sprite
          L2_2.blink = L10_2
          L10_2 = L9_2.sprite
          L2_2.smile = L10_2
          L10_2 = L9_2.blinkSprite
          if L10_2 ~= nil then
            L10_2 = L9_2.blinkSprite
            L2_2.blink = L10_2
          end
          L10_2 = L9_2.smileSprite
          if L10_2 ~= nil then
            L10_2 = L9_2.smileSprite
            L2_2.smile = L10_2
          end
          L10_2 = A0_2.definition
          L10_2 = A1_2[L10_2]
          L10_2 = L10_2.onDamageStateChanged
          if L10_2 then
            L10_2 = fireAction
            L11_2 = A0_2.definition
            L11_2 = A1_2[L11_2]
            L11_2 = L11_2.onDamageStateChanged
            L12_2 = {}
            L13_2 = A0_2.name
            L12_2.name = L13_2
            L13_2 = "onDamageStateChanged"
            L10_2(L11_2, L12_2, L13_2)
          end
          return L2_2
        end
      end
    end
  end
  return L2_2
end

getDamageSprite = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = getSquaredDistanceFromOBBToPoint
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L14_2 = A6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = {}
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.sqrt
  L10_2 = L7_2.distance
  L9_2 = L9_2(L10_2)
  L8_2.distance = L9_2
  L9_2 = L7_2.pointX
  L8_2.pointX = L9_2
  L9_2 = L7_2.pointY
  L8_2.pointY = L9_2
  return L8_2
end

getDistanceFromOBBToPoint = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L7_2 = A5_2 - A0_2
  L8_2 = A6_2 - A1_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = {}
  L12_2 = {}
  L13_2 = A2_2 / 2
  L14_2 = A3_2 / 2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L13_2 = A4_2
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.cos
  L15_2 = L13_2
  L14_2 = L14_2(L15_2)
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.sin
  L16_2 = L13_2
  L15_2 = L15_2(L16_2)
  L16_2 = _G
  L16_2 = L16_2.math
  L16_2 = L16_2.cos
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.pi
  L17_2 = L17_2 * 0.5
  L17_2 = L13_2 + L17_2
  L16_2 = L16_2(L17_2)
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.sin
  L18_2 = _G
  L18_2 = L18_2.math
  L18_2 = L18_2.pi
  L18_2 = L18_2 * 0.5
  L18_2 = L13_2 + L18_2
  L17_2 = L17_2(L18_2)
  L18_2 = vNormalize
  L19_2 = L14_2
  L20_2 = L15_2
  L18_2, L19_2 = L18_2(L19_2, L20_2)
  L15_2 = L19_2
  L14_2 = L18_2
  L18_2 = vNormalize
  L19_2 = L16_2
  L20_2 = L17_2
  L18_2, L19_2 = L18_2(L19_2, L20_2)
  L17_2 = L19_2
  L16_2 = L18_2
  L18_2 = {}
  L18_2.x = L14_2
  L18_2.y = L15_2
  L19_2 = {}
  L19_2.x = L16_2
  L19_2.y = L17_2
  L20_2 = {}
  L21_2 = L18_2
  L22_2 = L19_2
  L20_2[1] = L21_2
  L20_2[2] = L22_2
  L21_2 = 0
  L22_2 = 1
  L23_2 = 1
  for L24_2 = L21_2, L22_2, L23_2 do
    L25_2 = L24_2 + 1
    L26_2 = dotProduct
    L27_2 = L7_2
    L28_2 = L8_2
    L29_2 = L24_2 + 1
    L29_2 = L20_2[L29_2]
    L29_2 = L29_2.x
    L30_2 = L24_2 + 1
    L30_2 = L20_2[L30_2]
    L30_2 = L30_2.y
    L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
    L11_2[L25_2] = L26_2
    L25_2 = L24_2 + 1
    L25_2 = L11_2[L25_2]
    L26_2 = L24_2 + 1
    L26_2 = L12_2[L26_2]
    L26_2 = -L26_2
    if L25_2 < L26_2 then
      L25_2 = L24_2 + 1
      L25_2 = L11_2[L25_2]
      L26_2 = L24_2 + 1
      L26_2 = L12_2[L26_2]
      L10_2 = L25_2 + L26_2
      L25_2 = L10_2 * L10_2
      L9_2 = L9_2 + L25_2
      L25_2 = L24_2 + 1
      L26_2 = L24_2 + 1
      L26_2 = L12_2[L26_2]
      L26_2 = -L26_2
      L11_2[L25_2] = L26_2
    else
      L25_2 = L24_2 + 1
      L25_2 = L11_2[L25_2]
      L26_2 = L24_2 + 1
      L26_2 = L12_2[L26_2]
      if L25_2 > L26_2 then
        L25_2 = L24_2 + 1
        L25_2 = L11_2[L25_2]
        L26_2 = L24_2 + 1
        L26_2 = L12_2[L26_2]
        L10_2 = L25_2 - L26_2
        L25_2 = L10_2 * L10_2
        L9_2 = L9_2 + L25_2
        L25_2 = L24_2 + 1
        L26_2 = L24_2 + 1
        L26_2 = L12_2[L26_2]
        L11_2[L25_2] = L26_2
      end
    end
  end
  L21_2 = {}
  L21_2.x = A0_2
  L21_2.y = A1_2
  L22_2 = 0
  L23_2 = 1
  L24_2 = 1
  for L25_2 = L22_2, L23_2, L24_2 do
    L26_2 = L21_2.x
    L27_2 = L25_2 + 1
    L27_2 = L11_2[L27_2]
    L28_2 = L25_2 + 1
    L28_2 = L20_2[L28_2]
    L28_2 = L28_2.x
    L27_2 = L27_2 * L28_2
    L26_2 = L26_2 + L27_2
    L21_2.x = L26_2
    L26_2 = L21_2.y
    L27_2 = L25_2 + 1
    L27_2 = L11_2[L27_2]
    L28_2 = L25_2 + 1
    L28_2 = L20_2[L28_2]
    L28_2 = L28_2.y
    L27_2 = L27_2 * L28_2
    L26_2 = L26_2 + L27_2
    L21_2.y = L26_2
  end
  L22_2 = {}
  L22_2.distance = L9_2
  L23_2 = L21_2.x
  L22_2.pointX = L23_2
  L23_2 = L21_2.y
  L22_2.pointY = L23_2
  return L22_2
end

getSquaredDistanceFromOBBToPoint = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  L2_2 = freezingObjects
  if L2_2 ~= nil then
    L2_2 = freezingObjects
    L2_2 = L2_2.objects
    if L2_2 ~= nil then
      L2_2 = _G
      L2_2 = L2_2.pairs
      L3_2 = freezingObjects
      L3_2 = L3_2.objects
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        if L5_2 == A0_2 then
          L7_2 = worldToPhysicsTransform
          L8_2 = res
          L8_2 = L8_2.getSpriteBounds
          L9_2 = L1_2.sprite
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2)
          L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          L9_2 = particleTable
          L9_2 = L9_2.particles
          L9_2 = L9_2.lightBuff
          if L9_2 == nil then
            return
          end
          L10_2 = physicsToWorldTransform
          L11_2 = L1_2.x
          L12_2 = L6_2.icicle
          L12_2 = L12_2.x
          L11_2 = L11_2 + L12_2
          L12_2 = L1_2.y
          L13_2 = L6_2.icicle
          L13_2 = L13_2.y
          L12_2 = L12_2 + L13_2
          L10_2, L11_2 = L10_2(L11_2, L12_2)
          L12_2 = putParticles
          L13_2 = {}
          L13_2.particles = "lightBuff"
          L13_2.amount = 5
          L13_2.x = L10_2
          L13_2.y = L11_2
          L13_2.w = L7_2
          L13_2.h = L8_2
          L13_2.minVel = 150
          L13_2.maxVel = 150
          L14_2 = L6_2.icicle
          L14_2 = L14_2.angle
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.pi
          L14_2 = L14_2 - L15_2
          L14_2 = L14_2 * 180
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.pi
          L14_2 = L14_2 / L15_2
          L13_2.minAngleEmitter = L14_2
          L14_2 = L6_2.icicle
          L14_2 = L14_2.angle
          L14_2 = L14_2 * 180
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.pi
          L14_2 = L14_2 / L15_2
          L13_2.maxAngleEmitter = L14_2
          L12_2(L13_2)
          L12_2 = applyImpulse
          L13_2 = L5_2
          L14_2 = L6_2.x
          L15_2 = L6_2.force
          L14_2 = L14_2 * L15_2
          L15_2 = L6_2.y
          L16_2 = L6_2.force
          L15_2 = L15_2 * L16_2
          L16_2 = L6_2.pointX
          L17_2 = L6_2.pointY
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L12_2 = freezingObjects
          L12_2 = L12_2.objects
          L12_2[L5_2] = nil
        end
      end
    end
  end
end

checkFreezingObjects = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = false
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.timer
    if L8_2 <= 0 then
      L8_2 = objects
      L8_2 = L8_2.world
      L8_2 = L8_2[L6_2]
      if L8_2 ~= nil then
        L8_2 = objects
        L8_2 = L8_2.world
        L8_2 = L8_2[L6_2]
        v = L8_2
        L8_2 = v
        if L8_2 then
          L8_2 = v
          L8_2 = L8_2.levelGoal
          if L8_2 then
            L8_2 = v
            L9_2 = v
            L9_2 = L9_2.spriteUnfreeze
            L8_2.sprite = L9_2
            L8_2 = setSprite
            L9_2 = L6_2
            L10_2 = v
            L10_2 = L10_2.sprite
            L8_2(L9_2, L10_2)
            L8_2 = v
            L9_2 = v
            L9_2 = L9_2.materialUnfreeze
            L8_2.material = L9_2
            L8_2 = v
            L8_2.disableAnimations = false
            L8_2 = v
            L8_2.frozenFromBomb = false
          end
        end
        L8_2 = worldToPhysicsTransform
        L9_2 = res
        L9_2 = L9_2.getSpriteBounds
        L10_2 = v
        L10_2 = L10_2.sprite
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2)
        L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        L10_2 = particleTable
        L10_2 = L10_2.particles
        L10_2 = L10_2.lightBuff
        L11_2 = print
        L12_2 = "Adding particles lightBuff "
        L13_2 = L7_2.icicle
        L13_2 = L13_2.angle
        L14_2 = "\n"
        L12_2 = L12_2 .. L13_2 .. L14_2
        L11_2(L12_2)
        if L10_2 == nil then
          return
        end
        L11_2 = physicsToWorldTransform
        L12_2 = v
        L12_2 = L12_2.x
        L13_2 = L7_2.icicle
        L13_2 = L13_2.x
        L12_2 = L12_2 + L13_2
        L13_2 = v
        L13_2 = L13_2.y
        L14_2 = L7_2.icicle
        L14_2 = L14_2.y
        L13_2 = L13_2 + L14_2
        L11_2, L12_2 = L11_2(L12_2, L13_2)
        L13_2 = putParticles
        L14_2 = {}
        L14_2.particles = "lightBuff"
        L14_2.amount = 5
        L14_2.x = L11_2
        L14_2.y = L12_2
        L14_2.w = L8_2
        L14_2.h = L9_2
        L14_2.minVel = 150
        L14_2.maxVel = 150
        L15_2 = L7_2.icicle
        L15_2 = L15_2.angle
        L16_2 = _G
        L16_2 = L16_2.math
        L16_2 = L16_2.pi
        L15_2 = L15_2 - L16_2
        L15_2 = L15_2 * 180
        L16_2 = _G
        L16_2 = L16_2.math
        L16_2 = L16_2.pi
        L15_2 = L15_2 / L16_2
        L14_2.minAngleEmitter = L15_2
        L15_2 = L7_2.icicle
        L15_2 = L15_2.angle
        L15_2 = L15_2 * 180
        L16_2 = _G
        L16_2 = L16_2.math
        L16_2 = L16_2.pi
        L15_2 = L15_2 / L16_2
        L14_2.maxAngleEmitter = L15_2
        L13_2(L14_2)
        L13_2 = print
        L14_2 = "FREEZING "
        L15_2 = v
        L15_2 = L15_2.definition
        L16_2 = "material: "
        L17_2 = blockTable
        L17_2 = L17_2.blocks
        L18_2 = v
        L18_2 = L18_2.definition
        L17_2 = L17_2[L18_2]
        L17_2 = L17_2.material
        L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
        L13_2(L14_2)
        L13_2 = applyImpulse
        L14_2 = L6_2
        L15_2 = L7_2.x
        L16_2 = L7_2.force
        L15_2 = L15_2 * L16_2
        L16_2 = L7_2.y
        L17_2 = L7_2.force
        L16_2 = L16_2 * L17_2
        L17_2 = L7_2.pointX
        L18_2 = L7_2.pointY
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        A0_2[L6_2] = nil
    end
    else
      L8_2 = L7_2.timer
      L8_2 = L8_2 - A1_2
      L7_2.timer = L8_2
      L2_2 = true
    end
  end
  return L2_2
end

freezeObjects = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  if L2_2 ~= nil then
    L3_2 = addEventCall
    L4_2 = "destroy"
    L5_2 = {}
    L5_2.name = A0_2
    L6_2 = 1.5
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L2_2.sprite
    L2_2.spriteUnfreeze = L3_2
    L3_2 = L2_2.material
    L2_2.materialUnfreeze = L3_2
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = L2_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.spriteFreeze
    L2_2.sprite = L3_2
    L2_2.material = "glass"
    L2_2.disableAnimations = true
    L3_2 = setSprite
    L4_2 = A0_2
    L5_2 = L2_2.sprite
    L3_2(L4_2, L5_2)
    L2_2.enteredState = false
    L3_2 = setCurrentState
    L4_2 = L2_2
    L5_2 = "frozenState"
    L3_2(L4_2, L5_2)
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[A0_2]
    L4_2 = freezingObjects
    if not L4_2 then
      L4_2 = {}
      L4_2.timer = 5.95
      L5_2 = L3_2.x
      L4_2.x = L5_2
      L5_2 = L3_2.y
      L4_2.y = L5_2
      L5_2 = {}
      L4_2.objects = L5_2
      L4_2.sx = 0.25
      L4_2.sy = 0.25
      freezingObjects = L4_2
    end
    L4_2 = putParticles
    L5_2 = {}
    L6_2 = L3_2.name
    L5_2.objectName = L6_2
    L5_2.particles = "iceExplosion"
    L4_2(L5_2)
    L4_2 = 0
    L5_2 = 0
    L6_2 = L2_2.width
    if L6_2 ~= nil then
      L6_2 = L2_2.height
      if L6_2 ~= nil then
        L6_2 = L2_2.width
        L5_2 = L2_2.height
        L4_2 = L6_2
    end
    else
      L6_2 = L2_2.radius
      if L6_2 ~= nil then
        L6_2 = L2_2.radius
        L5_2 = L2_2.radius
        L4_2 = L6_2
      else
        L6_2 = res
        L6_2 = L6_2.getSpriteBounds
        L7_2 = blockTable
        L7_2 = L7_2.blocks
        L8_2 = L2_2.definition
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.sprite
        L6_2, L7_2 = L6_2(L7_2)
        L5_2 = L7_2
        L4_2 = L6_2
        L6_2 = worldToPhysicsTransform
        L7_2 = L4_2
        L8_2 = L5_2
        L6_2, L7_2 = L6_2(L7_2, L8_2)
        L5_2 = L7_2
        L4_2 = L6_2
      end
    end
    L6_2 = getSquaredDistanceFromOBBToPoint
    L7_2 = L2_2.x
    L8_2 = L2_2.y
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = L2_2.angle
    L12_2 = L3_2.x
    L13_2 = L3_2.y
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.sqrt
    L8_2 = L6_2.distance
    L7_2 = L7_2(L8_2)
    L8_2 = 0
    L9_2 = 0
    if L7_2 == 0 then
      L8_2 = 0
      L9_2 = -1
    else
      L10_2 = vNormalize
      L11_2 = L6_2.pointX
      L12_2 = L2_2.x
      L11_2 = L11_2 - L12_2
      L12_2 = L6_2.pointY
      L13_2 = L2_2.y
      L12_2 = L12_2 - L13_2
      L10_2, L11_2 = L10_2(L11_2, L12_2)
      L9_2 = L11_2
      L8_2 = L10_2
    end
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.random
    L11_2 = 1
    L12_2 = 3
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = _G
    L11_2 = L11_2.math
    L11_2 = L11_2.random
    L12_2 = 1
    L13_2 = 5
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = worldToPhysicsTransform
    L13_2 = res
    L13_2 = L13_2.getSpriteBounds
    L14_2 = L2_2.sprite
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L13_2(L14_2)
    L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L14_2 = L2_2.angle
    L15_2 = _G
    L15_2 = L15_2.math
    L15_2 = L15_2.atan2
    L16_2 = L8_2
    L17_2 = L9_2
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = freezingObjects
    L16_2 = L16_2.objects
    L17_2 = {}
    L17_2.force = 0
    L17_2.x = L8_2
    L17_2.y = L9_2
    L18_2 = L6_2.pointX
    L17_2.pointX = L18_2
    L18_2 = L6_2.pointY
    L17_2.pointY = L18_2
    L18_2 = {}
    L19_2 = "P_ICICLE_"
    L20_2 = _G
    L20_2 = L20_2.string
    L20_2 = L20_2.format
    L21_2 = "%d"
    L22_2 = L10_2
    L20_2 = L20_2(L21_2, L22_2)
    L19_2 = L19_2 .. L20_2
    L18_2.sprite = L19_2
    L18_2.angle = L14_2
    L19_2 = L8_2 * L12_2
    L19_2 = L19_2 * 0.25
    L18_2.x = L19_2
    L19_2 = L9_2 * L13_2
    L19_2 = L19_2 * 0.25
    L18_2.y = L19_2
    L17_2.icicle = L18_2
    L18_2 = {}
    L17_2.icicles = L18_2
    L18_2 = _G
    L18_2 = L18_2.math
    L18_2 = L18_2.random
    L18_2 = L18_2()
    L17_2.timer = L18_2
    L16_2[A0_2] = L17_2
    L16_2 = 1
    L17_2 = L11_2
    L18_2 = 1
    for L19_2 = L16_2, L17_2, L18_2 do
      L20_2 = _G
      L20_2 = L20_2.math
      L20_2 = L20_2.random
      L21_2 = 1
      L22_2 = 3
      L20_2 = L20_2(L21_2, L22_2)
      L10_2 = L20_2
      L20_2 = _G
      L20_2 = L20_2.math
      L20_2 = L20_2.random
      L20_2 = L20_2()
      L20_2 = L20_2 * 0.4
      L21_2 = _G
      L21_2 = L21_2.math
      L21_2 = L21_2.random
      L21_2 = L21_2()
      L21_2 = L21_2 * 0.4
      L20_2 = L20_2 - L21_2
      L21_2 = blockTable
      L21_2 = L21_2.blocks
      L22_2 = L2_2.definition
      L21_2 = L21_2[L22_2]
      L21_2 = L21_2.type
      L21_2 = L21_2 == "polygon"
      L22_2 = freezingObjects
      L22_2 = L22_2.objects
      L22_2 = L22_2[A0_2]
      L22_2 = L22_2.icicles
      L23_2 = {}
      L24_2 = "P_ICICLE_"
      L25_2 = _G
      L25_2 = L25_2.string
      L25_2 = L25_2.format
      L26_2 = "%d"
      L27_2 = L10_2
      L25_2 = L25_2(L26_2, L27_2)
      L24_2 = L24_2 .. L25_2
      L23_2.sprite = L24_2
      L23_2.angle = L14_2
      L23_2.dm = L20_2
      L23_2.side = L21_2
      L22_2[L19_2] = L23_2
    end
    L2_2.unfreezable = A1_2
  end
end

freezePig = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A1_2.definition
    L9_2 = L9_2.ignoreIncrement
    if L9_2 then
      L9_2 = A1_2.angle
      L3_2 = -L9_2
    else
      L9_2 = A1_2.angle
      L9_2 = -L9_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.pi
      L10_2 = L10_2 * 2
      L10_2 = L10_2 * L2_2
      L11_2 = #A0_2
      L10_2 = L10_2 / L11_2
      L3_2 = L9_2 + L10_2
    end
    L9_2 = {}
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.sin
    L11_2 = L3_2
    L10_2 = L10_2(L11_2)
    L9_2.x = L10_2
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.cos
    L11_2 = L3_2
    L10_2 = L10_2(L11_2)
    L9_2.y = L10_2
    L10_2 = vNormalize
    L11_2 = L9_2.x
    L12_2 = L9_2.y
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    L9_2.y = L11_2
    L9_2.x = L10_2
    L10_2 = A1_2.x
    L11_2 = A1_2.y
    L12_2 = A1_2.definition
    L12_2 = L12_2.spawnPositions
    if L12_2 then
      L12_2 = A1_2.definition
      L12_2 = L12_2.spawnPositions
      L12_2 = L12_2[L7_2]
      if L12_2 then
        L13_2 = L12_2[1]
        L14_2 = L12_2[2]
        L15_2 = _G
        L15_2 = L15_2.math
        L15_2 = L15_2.sqrt
        L16_2 = L12_2[1]
        L17_2 = L12_2[1]
        L16_2 = L16_2 * L17_2
        L17_2 = L12_2[2]
        L18_2 = L12_2[2]
        L17_2 = L17_2 * L18_2
        L16_2 = L16_2 + L17_2
        L15_2 = L15_2(L16_2)
        L16_2 = _G
        L16_2 = L16_2.math
        L16_2 = L16_2.cos
        L17_2 = A1_2.angle
        L16_2 = L16_2(L17_2)
        L16_2 = L13_2 * L16_2
        L17_2 = _G
        L17_2 = L17_2.math
        L17_2 = L17_2.sin
        L18_2 = A1_2.angle
        L17_2 = L17_2(L18_2)
        L17_2 = L14_2 * L17_2
        L16_2 = L16_2 - L17_2
        L17_2 = _G
        L17_2 = L17_2.math
        L17_2 = L17_2.sin
        L18_2 = A1_2.angle
        L17_2 = L17_2(L18_2)
        L17_2 = L13_2 * L17_2
        L18_2 = _G
        L18_2 = L18_2.math
        L18_2 = L18_2.cos
        L19_2 = A1_2.angle
        L18_2 = L18_2(L19_2)
        L18_2 = L14_2 * L18_2
        L17_2 = L17_2 + L18_2
        L10_2 = L10_2 + L16_2
        L11_2 = L11_2 + L17_2
        L18_2 = vNormalize
        L19_2 = L16_2
        L20_2 = L17_2
        L18_2, L19_2 = L18_2(L19_2, L20_2)
        L9_2.y = L19_2
        L9_2.x = L18_2
      end
    end
    L12_2 = nil
    L13_2 = A1_2.definition
    L13_2 = L13_2.spawnAngles
    if L13_2 then
      L13_2 = A1_2.definition
      L13_2 = L13_2.spawnAngles
      L12_2 = L13_2[L7_2]
    end
    L13_2 = A1_2.definition
    L13_2 = L13_2.spawnDistance
    if L13_2 then
      L13_2 = L9_2.x
      L14_2 = A1_2.definition
      L14_2 = L14_2.spawnDistance
      L13_2 = L13_2 * L14_2
      L10_2 = L10_2 + L13_2
      L13_2 = L9_2.y
      L14_2 = A1_2.definition
      L14_2 = L14_2.spawnDistance
      L13_2 = L13_2 * L14_2
      L11_2 = L11_2 + L13_2
    end
    L13_2 = createObject
    L14_2 = blockTable
    L15_2 = L8_2
    L16_2 = blockTable
    L16_2 = L16_2.blocks
    L16_2 = L16_2[L8_2]
    L16_2 = L16_2.name
    L17_2 = L10_2
    L18_2 = L11_2
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L14_2 = getLevelMetadata
    L15_2 = levelName
    L14_2 = L14_2(L15_2)
    L14_2 = L14_2.objectsDestroyableByTap
    if L14_2 then
      L14_2 = objects
      L14_2 = L14_2.destroyableByTap
      L15_2 = objects
      L15_2 = L15_2.destroyableByTap
      L15_2 = #L15_2
      L15_2 = L15_2 + 1
      L14_2[L15_2] = L13_2
      L14_2 = objects
      L14_2 = L14_2.world
      L14_2 = L14_2[L13_2]
      L14_2.isMainMenuObject = true
    end
    L14_2 = objects
    L14_2 = L14_2.world
    L14_2 = L14_2[L13_2]
    L14_2 = L14_2.blinkTimer
    L15_2 = _G
    L15_2 = L15_2.math
    L15_2 = L15_2.random
    L16_2 = 5
    L17_2 = 30
    L15_2 = L15_2(L16_2, L17_2)
    L15_2 = L15_2 / 10
    if L14_2 == L15_2 then
      L14_2 = levelGoals
      L15_2 = objects
      L15_2 = L15_2.world
      L15_2 = L15_2[L13_2]
      L14_2[L13_2] = L15_2
      L14_2 = objects
      L14_2 = L14_2.world
      L14_2 = L14_2[L13_2]
      L14_2.timeInState = 0
      L14_2 = objects
      L14_2 = L14_2.world
      L14_2 = L14_2[L13_2]
      L14_2.maxTimeInState = 0
      L14_2 = setObjectParameter
      L15_2 = L13_2
      L16_2 = 1
      L17_2 = 1
      L14_2(L15_2, L16_2, L17_2)
    end
    L14_2 = blockTable
    L14_2 = L14_2.blocks
    L14_2 = L14_2[L8_2]
    L14_2 = L14_2.levelGoal
    if L14_2 then
      L14_2 = levelGoals
      L15_2 = objects
      L15_2 = L15_2.world
      L15_2 = L15_2[L13_2]
      L14_2[L13_2] = L15_2
      L14_2 = setObjectParameter
      L15_2 = L13_2
      L16_2 = 1
      L17_2 = 1
      L14_2(L15_2, L16_2, L17_2)
    end
    L14_2 = A1_2.definition
    L14_2 = L14_2.spawnExplosionForce
    if not L14_2 then
      L14_2 = A1_2.definition
      L14_2 = L14_2.explosionForce
    end
    L15_2 = L14_2
    L16_2 = A1_2.definition
    L16_2 = L16_2.addMovingSpeedFromParent
    if L16_2 then
      L16_2 = A1_2.xVel
      if L16_2 ~= nil then
        L16_2 = A1_2.yVel
        if L16_2 ~= nil then
          L16_2 = setVelocity
          L17_2 = L13_2
          L18_2 = A1_2.xVel
          L19_2 = A1_2.yVel
          L16_2(L17_2, L18_2, L19_2)
        end
      end
    end
    L16_2 = A1_2.definition
    L16_2 = L16_2.addRotationSpeedFromParent
    if L16_2 then
      L16_2 = A1_2.angularVelocity
      if L16_2 then
        L16_2 = setAngularVelocity
        L17_2 = L13_2
        L18_2 = A1_2.angularVelocity
        L16_2(L17_2, L18_2)
      end
    end
    L16_2 = applyImpulse
    L17_2 = L13_2
    L18_2 = L9_2.x
    L18_2 = L18_2 * L14_2
    L19_2 = L9_2.y
    L19_2 = L19_2 * L15_2
    L20_2 = objects
    L20_2 = L20_2.world
    L20_2 = L20_2[L13_2]
    L20_2 = L20_2.x
    L21_2 = objects
    L21_2 = L21_2.world
    L21_2 = L21_2[L13_2]
    L21_2 = L21_2.y
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
    L2_2 = L2_2 + 1
    L16_2 = startAnimations
    L17_2 = L13_2
    L16_2(L17_2)
    L16_2 = L13_2
    L17_2 = objects
    L17_2 = L17_2.world
    L17_2 = L17_2[L13_2]
    L18_2 = blockTable
    L18_2 = L18_2.blocks
    L19_2 = L17_2.definition
    L18_2 = L18_2[L19_2]
    if L18_2 ~= nil then
      L18_2 = blockTable
      L18_2 = L18_2.blocks
      L19_2 = L17_2.definition
      L18_2 = L18_2[L19_2]
      L18_2 = L18_2.animateRotation
      if L18_2 == true then
        L18_2 = objects
        L18_2 = L18_2.animatedObjects
        L19_2 = L17_2.name
        L18_2[L16_2] = L19_2
        L18_2 = objects
        L18_2 = L18_2.world
        L18_2 = L18_2[L16_2]
        L18_2.animateRotation = true
        L18_2 = blockTable
        L18_2 = L18_2.blocks
        L19_2 = L17_2.definition
        L18_2 = L18_2[L19_2]
        L18_2 = L18_2.minRotationFrequency
        if L18_2 ~= nil then
          L18_2 = blockTable
          L18_2 = L18_2.blocks
          L19_2 = L17_2.definition
          L18_2 = L18_2[L19_2]
          L18_2 = L18_2.maxRotationFrequency
          if L18_2 ~= nil then
            L18_2 = objects
            L18_2 = L18_2.world
            L18_2 = L18_2[L16_2]
            L19_2 = _G
            L19_2 = L19_2.math
            L19_2 = L19_2.random
            L20_2 = blockTable
            L20_2 = L20_2.blocks
            L21_2 = L17_2.definition
            L20_2 = L20_2[L21_2]
            L20_2 = L20_2.minRotationFrequency
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = L17_2.definition
            L21_2 = L21_2[L22_2]
            L21_2 = L21_2.maxRotationFrequency
            L19_2 = L19_2(L20_2, L21_2)
            L20_2 = _G
            L20_2 = L20_2.math
            L20_2 = L20_2.pi
            L19_2 = L19_2 * L20_2
            L19_2 = L19_2 / 180
            L18_2.rotationFrequency = L19_2
            L18_2 = objects
            L18_2 = L18_2.world
            L18_2 = L18_2[L16_2]
            L19_2 = _G
            L19_2 = L19_2.math
            L19_2 = L19_2.random
            L20_2 = blockTable
            L20_2 = L20_2.blocks
            L21_2 = L17_2.definition
            L20_2 = L20_2[L21_2]
            L20_2 = L20_2.minRotationAmplitude
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = L17_2.definition
            L21_2 = L21_2[L22_2]
            L21_2 = L21_2.maxRotationAmplitude
            L19_2 = L19_2(L20_2, L21_2)
            L20_2 = _G
            L20_2 = L20_2.math
            L20_2 = L20_2.pi
            L19_2 = L19_2 * L20_2
            L19_2 = L19_2 / 180
            L18_2.rotationAmplitude = L19_2
          end
        end
      end
    end
    L18_2 = A1_2.keepOriginalVelocity
    if L18_2 then
      L18_2 = freezePig
      L19_2 = L17_2.name
      L18_2(L19_2)
    end
    L18_2 = A1_2.definition
    L18_2 = L18_2.copySpawnAngleFromParent
    if L18_2 then
      L12_2 = A1_2.angle
    end
    L18_2 = A1_2.definition
    L18_2 = L18_2.spawnedObjectsKeepRotation
    if L18_2 then
      L18_2 = A1_2.objAngle
      L19_2 = A1_2.objAngle
      if not L19_2 then
        L19_2 = A1_2.definition
        L18_2 = L19_2.objAngle
      end
    end
    if L12_2 then
      L18_2 = L12_2
      L19_2 = A1_2.definition
      L19_2 = L19_2.spawnAddAngles
      if L19_2 then
        L19_2 = A1_2.definition
        L19_2 = L19_2.spawnAddAngles
        L19_2 = L19_2[L7_2]
        L20_2 = _G
        L20_2 = L20_2.math
        L20_2 = L20_2.pi
        L19_2 = L19_2 * L20_2
        L19_2 = L19_2 / 180
        L18_2 = L18_2 + L19_2
      end
      L19_2 = setRotation
      L20_2 = L13_2
      L21_2 = L18_2
      L19_2(L20_2, L21_2)
    end
    L18_2 = A1_2.definition
    L18_2 = L18_2.spawnedObjectsAreCameraTargets
    if L18_2 then
      L18_2 = keepAsCameraTarget
      L19_2 = L13_2
      L18_2(L19_2)
    end
    L18_2 = A1_2.definition
    L18_2 = L18_2.spawnedObjectsAreAffectedByForceMultipliers
    if L18_2 then
      L18_2 = native_setTimeSinceCollision
      L19_2 = L13_2
      L20_2 = 0
      L18_2(L19_2, L20_2)
      L18_2 = native_setAffectedByForceMultipliers
      L19_2 = L13_2
      L20_2 = true
      L18_2(L19_2, L20_2)
    end
  end
end

spawnObjects = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if A6_2 ~= nil then
    L7_2 = res
    L7_2 = L7_2.playAudio
    L8_2 = A6_2
    L7_2(L8_2)
  end
  L7_2 = physicsToWorldTransform
  L8_2 = A0_2
  L9_2 = A1_2
  L7_2, L8_2 = L7_2(L8_2, L9_2)
  L9_2 = putParticles
  L10_2 = {}
  L10_2.particles = "explosion"
  L10_2.amount = 1
  L10_2.x = L7_2
  L10_2.y = L8_2
  L10_2.w = 4
  L10_2.h = 4
  L9_2(L10_2)
  L9_2 = putParticles
  L10_2 = {}
  L10_2.particles = "explosionBuff"
  L10_2.amount = 1
  L10_2.x = L7_2
  L10_2.y = L8_2
  L10_2.w = 4
  L10_2.h = 4
  L9_2(L10_2)
  L9_2 = _G
  L9_2 = L9_2.pairs
  L10_2 = objects
  L10_2 = L10_2.world
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = vLength
    L15_2 = L13_2.x
    L15_2 = L15_2 - A0_2
    L16_2 = L13_2.y
    L16_2 = L16_2 - A1_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = vNormalize
    L16_2 = L13_2.x
    L16_2 = L16_2 - A0_2
    L17_2 = L13_2.y
    L17_2 = L17_2 - A1_2
    L15_2, L16_2 = L15_2(L16_2, L17_2)
    if A3_2 > L14_2 then
      L17_2 = physicsScale
      L17_2 = L17_2 * A2_2
      L17_2 = L17_2 / L14_2
      L18_2 = applyImpulse
      L19_2 = L12_2
      L20_2 = L15_2 * L17_2
      L21_2 = L16_2 * L17_2
      L22_2 = L13_2.x
      L23_2 = L13_2.y
      L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
    end
    if A5_2 > L14_2 then
      L17_2 = L13_2.defence
      if L17_2 ~= nil then
        L17_2 = L13_2.defence
        L18_2 = A4_2 / L14_2
        if L17_2 < L18_2 then
          L17_2 = L13_2.strength
          L18_2 = L13_2.strength
          L19_2 = A4_2 / L14_2
          L18_2 = L18_2 - L19_2
          L13_2.strength = L18_2
          L18_2 = createDamageParticles
          L19_2 = L13_2
          L20_2 = blockTable
          L20_2 = L20_2.blocks
          L21_2 = L17_2
          L18_2(L19_2, L20_2, L21_2)
          L18_2 = getDamageSprite
          L19_2 = L13_2
          L20_2 = blockTable
          L20_2 = L20_2.blocks
          L18_2 = L18_2(L19_2, L20_2)
          L19_2 = L18_2.sprite
          L13_2.damageSprite = L19_2
          L19_2 = L18_2.blink
          L13_2.blinkSprite = L19_2
          L19_2 = L18_2.smile
          L13_2.smileSprite = L19_2
        end
      end
    end
  end
end

makeClickExplosion = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = physicsScale
  L1_2 = worldScale
  L0_2 = L0_2 / L1_2
  return L0_2
end

screenToPhysicsScale = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = physicsScale
  L2_2 = A0_2 * L2_2
  L3_2 = physicsScale
  L3_2 = A1_2 * L3_2
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end

worldToPhysicsTransform = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = screen
  L2_2 = L2_2.left
  L2_2 = A0_2 - L2_2
  L3_2 = worldScale
  L2_2 = L2_2 * L3_2
  L3_2 = screen
  L3_2 = L3_2.top
  L3_2 = A1_2 - L3_2
  L4_2 = worldScale
  L3_2 = L3_2 * L4_2
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end

worldToScreenTransform = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = worldScale
  L2_2 = A0_2 / L2_2
  L3_2 = screen
  L3_2 = L3_2.left
  L2_2 = L2_2 + L3_2
  L3_2 = worldScale
  L3_2 = A1_2 / L3_2
  L4_2 = screen
  L4_2 = L4_2.top
  L3_2 = L3_2 + L4_2
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end

screenToWorldTransform = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = physicsToWorld
  L2_2 = A0_2 * L2_2
  L3_2 = physicsToWorld
  L3_2 = A1_2 * L3_2
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end

physicsToWorldTransform = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = physicsToWorldTransform
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = worldToScreenTransform
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end

physicsToScreenTransform = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = screenToWorldTransform
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = worldToPhysicsTransform
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end

screenToPhysicsTransform = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2 - A0_2
  L5_2 = A3_2 - A1_2
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.sqrt
  L7_2 = L4_2 * L4_2
  L8_2 = L5_2 * L5_2
  L7_2 = L7_2 + L8_2
  return L6_2(L7_2)
end

distance = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = distance
  L3_2 = 0
  L4_2 = 0
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = {}
  L4_2 = A0_2 / L2_2
  L3_2.x = L4_2
  L4_2 = A1_2 / L2_2
  L3_2.y = L4_2
  return L3_2
end

normalizeVector = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2 * A2_2
  L5_2 = A1_2 * A3_2
  L4_2 = L4_2 + L5_2
  return L4_2
end

dotProduct = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2
  if A7_2 and A8_2 then
    if A7_2 == "HCENTER" then
      L9_2 = A2_2 * 0.5
      A0_2 = A0_2 - L9_2
    elseif A7_2 == "LEFT" then
      A0_2 = A0_2 + A2_2
    elseif A7_2 == "RIGHT" then
      A0_2 = A0_2 - A2_2
    end
    if A8_2 == "VCENTER" then
      L9_2 = A3_2 * 0.5
      A1_2 = A1_2 - L9_2
    elseif A8_2 == "TOP" then
      A1_2 = A1_2 + A3_2
    elseif A8_2 == "BOTTOM" then
      A1_2 = A1_2 - A3_2
    end
  end
  if A4_2 >= A0_2 then
    L9_2 = A0_2 + A2_2
    if A4_2 < L9_2 and A5_2 >= A1_2 then
      L9_2 = A1_2 + A3_2
      if A5_2 < L9_2 then
        L9_2 = true
        return L9_2
      end
    end
  end
  L9_2 = false
  return L9_2
end

checkBounds = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = #A2_2
  L4_2 = 1
  L5_2 = 0
  while true do
    L6_2 = #A2_2
    if not (L4_2 <= L6_2) then
      break
    end
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.min
    L7_2 = A2_2[L3_2]
    L7_2 = L7_2.y
    L8_2 = A2_2[L4_2]
    L8_2 = L8_2.y
    L6_2 = L6_2(L7_2, L8_2)
    if A1_2 > L6_2 then
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.max
      L7_2 = A2_2[L3_2]
      L7_2 = L7_2.y
      L8_2 = A2_2[L4_2]
      L8_2 = L8_2.y
      L6_2 = L6_2(L7_2, L8_2)
      if A1_2 <= L6_2 then
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.max
        L7_2 = A2_2[L3_2]
        L7_2 = L7_2.x
        L8_2 = A2_2[L4_2]
        L8_2 = L8_2.x
        L6_2 = L6_2(L7_2, L8_2)
        if A0_2 <= L6_2 then
          L6_2 = A2_2[L3_2]
          L6_2 = L6_2.y
          L7_2 = A2_2[L4_2]
          L7_2 = L7_2.y
          if L6_2 ~= L7_2 then
            L6_2 = A2_2[L3_2]
            L6_2 = L6_2.y
            L6_2 = A1_2 - L6_2
            L7_2 = A2_2[L4_2]
            L7_2 = L7_2.x
            L8_2 = A2_2[L3_2]
            L8_2 = L8_2.x
            L7_2 = L7_2 - L8_2
            L6_2 = L6_2 * L7_2
            L7_2 = A2_2[L4_2]
            L7_2 = L7_2.y
            L8_2 = A2_2[L3_2]
            L8_2 = L8_2.y
            L7_2 = L7_2 - L8_2
            L6_2 = L6_2 / L7_2
            L7_2 = A2_2[L3_2]
            L7_2 = L7_2.x
            L6_2 = L6_2 + L7_2
            L7_2 = A2_2[L3_2]
            L7_2 = L7_2.x
            L8_2 = A2_2[L4_2]
            L8_2 = L8_2.x
            if L7_2 == L8_2 or A0_2 < L6_2 then
              L5_2 = L5_2 + 1
            end
          end
        end
      end
    end
    L3_2 = L4_2
    L4_2 = L4_2 + 1
  end
  L6_2 = L5_2 % 2
  if L6_2 == 0 then
    L6_2 = false
    return L6_2
  end
  L6_2 = true
  return L6_2
end

testPointInPolygon = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2 * A2_2
  L5_2 = A1_2 * A3_2
  L4_2 = L4_2 - L5_2
  return L4_2
end

dampedSpring = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A0_2 - A4_2
  L7_2 = A3_2 - A5_2
  L6_2 = L6_2 * L7_2
  L7_2 = A1_2 - A5_2
  L8_2 = A2_2 - A4_2
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 - L7_2
  return L6_2
end

signed2DTriArea = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L11_2 = signed2DTriArea
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = A6_2
  L17_2 = A7_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = signed2DTriArea
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = A2_2
  L16_2 = A3_2
  L17_2 = A4_2
  L18_2 = A5_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if L11_2 ~= 0 and L12_2 ~= 0 then
    L13_2 = L11_2 * L12_2
    if L13_2 < 0 then
      L13_2 = signed2DTriArea
      L14_2 = A4_2
      L15_2 = A5_2
      L16_2 = A6_2
      L17_2 = A7_2
      L18_2 = A0_2
      L19_2 = A1_2
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L14_2 = L13_2 + L12_2
      L14_2 = L14_2 - L11_2
      if L13_2 ~= 0 and L14_2 ~= 0 then
        L15_2 = L13_2 * L14_2
        if L15_2 < 0 then
          if A8_2 == true then
            L15_2 = L13_2 - L14_2
            L15_2 = L13_2 / L15_2
            intersectionValue = L15_2
            L15_2 = {}
            L16_2 = intersectionValue
            L17_2 = A2_2 - A0_2
            L16_2 = L16_2 * L17_2
            L16_2 = A0_2 + L16_2
            L15_2.x = L16_2
            L16_2 = intersectionValue
            L17_2 = A3_2 - A1_2
            L16_2 = L16_2 * L17_2
            L16_2 = A1_2 + L16_2
            L15_2.y = L16_2
            L10_2 = L15_2
          end
          L15_2 = true
          L16_2 = L9_2
          L17_2 = L10_2
          return L15_2, L16_2, L17_2
        end
      end
    end
  end
  L13_2 = false
  return L13_2
end

test2DSegmentSegment = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.sqrt
  L3_2 = A0_2 * A0_2
  L4_2 = A1_2 * A1_2
  L3_2 = L3_2 + L4_2
  L2_2 = L2_2(L3_2)
  return L2_2
end

vLength = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.sqrt
  L3_2 = A0_2 * A0_2
  L4_2 = A1_2 * A1_2
  L3_2 = L3_2 + L4_2
  L2_2 = L2_2(L3_2)
  if L2_2 == 0 then
    L3_2 = 0
    L4_2 = 1
    return L3_2, L4_2
  end
  L3_2 = A0_2 / L2_2
  L4_2 = A1_2 / L2_2
  return L3_2, L4_2
end

vNormalize = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.cos
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.angle
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.sin
  L3_2 = objects
  L3_2 = L3_2.world
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.angle
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2, L2_2, L3_2
end

getForwardV = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.cos
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.startingAngle
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.sin
  L3_2 = objects
  L3_2 = L3_2.world
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.startingAngle
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2, L2_2, L3_2
end

getStartingForwardV = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.cos
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.startingAngle
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.sin
  L3_2 = objects
  L3_2 = L3_2.world
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.startingAngle
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2, L2_2, L3_2
end

getStartingUpV = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.sin
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.angle
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.cos
  L3_2 = objects
  L3_2 = L3_2.world
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.angle
  L2_2 = L2_2(L3_2)
  L2_2 = -L2_2
  return L1_2, L2_2
end

getUpV = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = getWorldNumber
  L2_2 = currentFolder
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = getRenderedLevelNumber
  L3_2 = currentFolder
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L2_2 = 0
  end
  L3_2 = getLevelNamePrefix
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = getLevelMetadata
  L5_2 = levelName
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.levelNumberSuffix
  if not L4_2 then
    L4_2 = L2_2
  end
  L5_2 = L3_2
  L6_2 = "-"
  L7_2 = L4_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  g_currentLevelString = L5_2
end

setupCurrentLevelString = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = getWorldNumber
  L2_2 = currentFolder
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = getEpisodeMetadata
  L3_2 = currentFolder
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.levelNumberPrefix
  if not L2_2 then
    L2_2 = L1_2
  end
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "table" then
    L3_2 = getEpisodeMetadata
    L4_2 = currentFolder
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.levelNumberAdjustment
    if A0_2 > L3_2 then
      L2_2 = L2_2[2]
    else
      L2_2 = L2_2[1]
    end
  end
  return L2_2
end

getLevelNamePrefix = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = actions
  L0_2 = L0_2.myLevels
  L1_2 = currentFolder
  L0_2 = L0_2[L1_2]
  L1_2 = objects
  L1_2 = L1_2.previousLevel
  if L1_2 ~= nil then
    L1_2 = setCurrentFolder
    L2_2 = returnFolderId
    L1_2(L2_2)
    L1_2 = setCurrentLevel
    L2_2 = returnLevelNumber
    L1_2(L2_2)
    L1_2 = setLevelFolder
    L2_2 = returnFolder
    L1_2(L2_2)
    L1_2 = setLevelName
    L2_2 = actions
    L2_2 = L2_2.myLevels
    L3_2 = returnFolderId
    L2_2 = L2_2[L3_2]
    L3_2 = returnLevelNumber
    L2_2 = L2_2[L3_2]
    L1_2(L2_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_CHANGE_SCENE
    L3_2.id = L4_2
    L3_2.target = "GameScene"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = currentLevel
  if L1_2 < 2 then
    return
  end
  L1_2 = getNextLevelName
  L2_2 = currentLevel
  L2_2 = L2_2 - 1
  L2_2 = L0_2[L2_2]
  L1_2 = L1_2(L2_2)
  L2_2 = setCurrentLevel
  L3_2 = currentLevel
  L3_2 = L3_2 - 1
  L2_2(L3_2)
  L2_2 = setLevelName
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = setupCurrentLevelString
  L3_2 = currentLevel
  L3_2 = L3_2 - 1
  L2_2(L3_2)
  L2_2 = getPageNumber
  L3_2 = currentFolder
  L4_2 = currentLevel
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 - 1
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.setLastLevelPage
  L5_2 = currentFolder
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_CHANGE_SCENE
  L5_2.id = L6_2
  L5_2.target = "GameScene"
  L3_2(L4_2, L5_2)
end

setPreviousLevel = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L3_2 = currentFolder
  L2_2 = L2_2[L3_2]
  L3_2 = objects
  L3_2 = L3_2.previousLevel
  if L3_2 ~= nil then
    L3_2 = setCurrentFolder
    L4_2 = returnFolderId
    L3_2(L4_2)
    L3_2 = setCurrentLevel
    L4_2 = returnLevelNumber
    L3_2(L4_2)
    L3_2 = setLevelFolder
    L4_2 = returnFolder
    L3_2(L4_2)
    L3_2 = setLevelName
    L4_2 = actions
    L4_2 = L4_2.myLevels
    L5_2 = returnFolderId
    L4_2 = L4_2[L5_2]
    L5_2 = returnLevelNumber
    L4_2 = L4_2[L5_2]
    L3_2(L4_2)
    L3_2 = eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = events
    L6_2 = L6_2.EID_CHANGE_SCENE
    L5_2.id = L6_2
    L5_2.target = "GameScene"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = isBuildUnlocked
  L3_2 = L3_2()
  if L3_2 ~= true then
    L3_2 = isIapEnabled
    L3_2 = L3_2()
    if L3_2 then
      L3_2 = A0_2 or L3_2
      if not A0_2 then
        L3_2 = currentFolder
      end
      L4_2 = actions
      L4_2 = L4_2.myLevels
      L4_2 = L4_2[L3_2]
      L5_2 = getEpisodeMetadataWithParam
      L6_2 = L3_2
      L7_2 = "iapPurchaseId"
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = getEpisodeMetadata
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.iapPurchase
      if L6_2 and L5_2 ~= nil then
        L6_2 = SettingsWrapper
        L7_2 = L6_2
        L6_2 = L6_2.isEpisodePurchased
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 ~= true then
          L6_2 = A1_2 or L6_2
          if not A1_2 then
            L6_2 = getNextLevelName
            L7_2 = currentLevel
            L7_2 = L7_2 + 1
            L7_2 = L4_2[L7_2]
            L6_2 = L6_2(L7_2)
          end
          L7_2 = getLevelMetadata
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L7_2 = L7_2.unlockedAsDefault
          if L7_2 ~= true then
            L7_2 = setLevelName
            L8_2 = getEpisodeMetadata
            L9_2 = L3_2
            L8_2 = L8_2(L9_2)
            L8_2 = L8_2.advertisementLevelName
            L7_2(L8_2)
            L7_2 = currentFolder
            if L3_2 ~= L7_2 then
              L7_2 = setCurrentFolder
              L8_2 = L3_2
              L7_2(L8_2)
              L7_2 = setLevelFolder
              L8_2 = "levels/"
              L9_2 = L3_2
              L10_2 = "/"
              L8_2 = L8_2 .. L9_2 .. L10_2
              L7_2(L8_2)
            end
            L7_2 = true
            g_showEpisodePurchaseDialog = L7_2
            L7_2 = "Trial level"
            g_showEpisodePurchaseDialogFrom = L7_2
            L7_2 = eventManager
            L8_2 = L7_2
            L7_2 = L7_2.notify
            L9_2 = {}
            L10_2 = events
            L10_2 = L10_2.EID_CHANGE_SCENE
            L9_2.id = L10_2
            L9_2.target = "GameScene"
            L7_2(L8_2, L9_2)
            return
          end
        end
      end
    end
  end
  L3_2 = getEpisodeMetadata
  L4_2 = currentFolder
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.openLevelsLimit
  if L3_2 ~= nil then
    L3_2 = getEpisodeMetadata
    L4_2 = currentFolder
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.openLevelsLimit
    L3_2 = L3_2 + 2
    L4_2 = currentLevel
    L4_2 = L4_2 + 1
    if L3_2 <= L4_2 then
      L3_2 = setLevelName
      L4_2 = "LevelSelection"
      L3_2(L4_2)
      L3_2 = eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_CHANGE_SCENE
      L5_2.id = L6_2
      L5_2.target = "GameScene"
      L3_2(L4_2, L5_2)
      L3_2 = eventManager
      L4_2 = L3_2
      L3_2 = L3_2.queueEvent
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_SCROLL_RIGHT
      L5_2.id = L6_2
      L3_2(L4_2, L5_2)
      return
    end
  end
  if not A1_2 then
    L3_2 = getLevelMetadata
    L4_2 = levelName
    L3_2 = L3_2(L4_2)
    A1_2 = L3_2.nextLevelName
  end
  if not A0_2 then
    L3_2 = getLevelMetadata
    L4_2 = levelName
    L3_2 = L3_2(L4_2)
    A0_2 = L3_2.nextLevelFolder
  end
  if A0_2 and A1_2 then
    L3_2 = setLevelFolder
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = setLevelName
    L4_2 = getNextLevelName
    L5_2 = A1_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = events
    L6_2 = L6_2.EID_CHANGE_SCENE
    L5_2.id = L6_2
    L5_2.target = "GameScene"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = getNextLevelName
  L4_2 = currentLevel
  L4_2 = L4_2 + 1
  L4_2 = L2_2[L4_2]
  L3_2 = L3_2(L4_2)
  L4_2 = setCurrentLevel
  L5_2 = currentLevel
  L5_2 = L5_2 + 1
  L4_2(L5_2)
  L4_2 = setLevelName
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = setupCurrentLevelString
  L5_2 = currentLevel
  L5_2 = L5_2 + 1
  L4_2(L5_2)
  L4_2 = getPageNumber
  L5_2 = currentFolder
  L6_2 = currentLevel
  L6_2 = L6_2 + 1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 - 1
  L5_2 = SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.setLastLevelPage
  L7_2 = currentFolder
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = eventManager
  L6_2 = L5_2
  L5_2 = L5_2.notify
  L7_2 = {}
  L8_2 = events
  L8_2 = L8_2.EID_CHANGE_SCENE
  L7_2.id = L8_2
  L7_2.target = "GameScene"
  L5_2(L6_2, L7_2)
end

setNextLevel = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = objects
  L0_2 = L0_2.previousLevel
  L0_2 = L0_2 ~= nil
  return L0_2
end

isReturnLevelAvailable = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.sensorB
  if L1_2 ~= nil then
    L1_2 = setPosition
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.sensorB
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.x
    L4_2 = objects
    L4_2 = L4_2.world
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.y
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.sensorA
  if L1_2 ~= nil then
    L1_2 = setPosition
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.sensorA
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.x
    L4_2 = objects
    L4_2 = L4_2.world
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.y
    L1_2(L2_2, L3_2, L4_2)
  end
end

updateMySensor = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 ~= nil then
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[A0_2]
    if L3_2 == nil then
      L4_2 = "Object "
      L5_2 = A0_2
      L6_2 = " not found in the world. Stack trace: "
      L7_2 = _G
      L7_2 = L7_2.debug
      L7_2 = L7_2.traceback
      L7_2 = L7_2()
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
      L5_2 = print
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = _G
      L5_2 = L5_2.assert
      L6_2 = false
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    else
      L4_2 = deadBlocks
      L4_2[A0_2] = L3_2
      L3_2.strength = 0
      L3_2.ignoreGameplayActions = A1_2
      L3_2.ignoreOnDestroyed = A2_2
    end
  else
    L3_2 = "Attempted to destroy a nil object. Stack trace: "
    L4_2 = _G
    L4_2 = L4_2.debug
    L4_2 = L4_2.traceback
    L4_2 = L4_2()
    L3_2 = L3_2 .. L4_2
    L4_2 = print
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = _G
    L4_2 = L4_2.assert
    L5_2 = false
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end

destroyObject = L4_1

function L4_1(A0_2)
  local L1_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2 ~= nil
  return L1_2
end

checkStillInWorld = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = objects
  L3_2 = L3_2.world
  L3_2 = L3_2[A0_2]
  L3_2[A1_2] = A2_2
end

attachEventListener = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil and A2_2 ~= nil then
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.insert
    L4_2 = floatingScores
    L5_2 = {}
    L5_2.x = A1_2
    L5_2.y = A2_2
    L6_2 = ""
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2.text = L6_2
    L5_2.score = A0_2
    L5_2.time = 0
    L5_2.lifetime = 0.6
    L6_2 = A0_2 / 3000
    L6_2 = 0.25 + L6_2
    L5_2.maxScale = L6_2
    L5_2.xs = 0
    L3_2(L4_2, L5_2)
  end
  L3_2 = scoreTable
  L3_2 = L3_2.blocks
  L4_2 = scoreTable
  L4_2 = L4_2.blocks
  L4_2 = L4_2.score
  L4_2 = L4_2 + A0_2
  L3_2.score = L4_2
end

addScore = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  if L2_2 ~= nil then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.onCollisionExit
    if L2_2 ~= nil then
      L2_2 = fireAction
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.onCollisionExit
      L4_2 = {}
      L4_2.name = A0_2
      L4_2.other = A1_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.onCollisionExit
    if L2_2 ~= nil then
      L2_2 = fireAction
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2.onCollisionExit
      L4_2 = {}
      L4_2.name = A1_2
      L4_2.other = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end

exitCollision = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  if L2_2 ~= nil then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.onTriggerExit
    if L2_2 ~= nil then
      L2_2 = _G
      L2_2 = L2_2.type
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.onTriggerExit
      L2_2 = L2_2(L3_2)
      if L2_2 == "table" then
        L2_2 = _G
        L2_2 = L2_2.ipairs
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2.onTriggerExit
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = fireAction
          L8_2 = L6_2
          L9_2 = {}
          L9_2.name = A0_2
          L9_2.other = A1_2
          L7_2(L8_2, L9_2)
        end
      else
        L2_2 = fireAction
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2.onTriggerExit
        L4_2 = {}
        L4_2.name = A0_2
        L4_2.other = A1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.onTriggerExit
    if L2_2 ~= nil then
      L2_2 = _G
      L2_2 = L2_2.type
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2.onTriggerExit
      L2_2 = L2_2(L3_2)
      if L2_2 == "table" then
        L2_2 = _G
        L2_2 = L2_2.ipairs
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A1_2]
        L3_2 = L3_2.onTriggerExit
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = fireAction
          L8_2 = L6_2
          L9_2 = {}
          L9_2.name = A1_2
          L9_2.other = A0_2
          L7_2(L8_2, L9_2)
        end
      else
        L2_2 = fireAction
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A1_2]
        L3_2 = L3_2.onTriggerExit
        L4_2 = {}
        L4_2.name = A1_2
        L4_2.other = A0_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end

exitTriggerCollision = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  if L2_2 ~= nil then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.onTriggerEnter
    if L2_2 ~= nil then
      L2_2 = _G
      L2_2 = L2_2.type
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.onTriggerEnter
      L2_2 = L2_2(L3_2)
      if L2_2 == "table" then
        L2_2 = _G
        L2_2 = L2_2.ipairs
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2.onTriggerEnter
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = fireAction
          L8_2 = L6_2
          L9_2 = {}
          L9_2.name = A0_2
          L9_2.other = A1_2
          L7_2(L8_2, L9_2)
        end
      else
        L2_2 = fireAction
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2.onTriggerEnter
        L4_2 = {}
        L4_2.name = A0_2
        L4_2.other = A1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.onTriggerEnter
    if L2_2 ~= nil then
      L2_2 = _G
      L2_2 = L2_2.type
      L3_2 = objects
      L3_2 = L3_2.world
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2.onTriggerEnter
      L2_2 = L2_2(L3_2)
      if L2_2 == "table" then
        L2_2 = _G
        L2_2 = L2_2.ipairs
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A1_2]
        L3_2 = L3_2.onTriggerEnter
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = fireAction
          L8_2 = L6_2
          L9_2 = {}
          L9_2.name = A1_2
          L9_2.other = A0_2
          L7_2(L8_2, L9_2)
        end
      else
        L2_2 = fireAction
        L3_2 = objects
        L3_2 = L3_2.world
        L3_2 = L3_2[A1_2]
        L3_2 = L3_2.onTriggerEnter
        L4_2 = {}
        L4_2.name = A1_2
        L4_2.other = A0_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end

enterCollision = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = objects
  L0_2 = L0_2.world
  return L0_2
end

getObjectsInWorld = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = {}
  L5_2.page = A2_2
  L5_2.state = A1_2
  L5_2.percentage = 0
  L5_2.speedIn = A3_2
  L5_2.speedOut = A4_2
  L5_2.name = A0_2
  L6_2 = elementAnimations
  L6_2[A0_2] = L5_2
end

newAnimation = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = elementAnimations
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.state
    if L6_2 == "ENTERING" then
      L6_2 = L5_2.percentage
      L7_2 = L5_2.speedIn
      L7_2 = L7_2 * A0_2
      L6_2 = L6_2 + L7_2
      L5_2.percentage = L6_2
      L6_2 = L5_2.percentage
      if 100 < L6_2 then
        L5_2.percentage = 100
        L5_2.state = "VISIBLE"
        L6_2 = L5_2.page
        L6_2.state = "READY"
      end
    else
      L6_2 = L5_2.state
      if L6_2 == "VISIBLE" then
      else
        L6_2 = L5_2.state
        if L6_2 == "EXITING" then
          L6_2 = L5_2.percentage
          L7_2 = L5_2.speedOut
          L7_2 = L7_2 * A0_2
          L6_2 = L6_2 - L7_2
          L5_2.percentage = L6_2
          L6_2 = L5_2.percentage
          if L6_2 < 0 then
            L5_2.percentage = 0
            L5_2.state = "HIDDEN"
            L6_2 = L5_2.page
            L6_2.state = "DISABLED"
          end
        end
      end
    end
  end
end

updateAnimations = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = elementAnimations
  L2_2 = L2_2[A0_2]
  if A1_2 == "ENTERING" then
    L3_2 = L2_2.state
    if L3_2 == "HIDDEN" then
      L2_2.state = A1_2
      L2_2.percentage = 0
      L3_2 = L2_2.page
      L3_2.state = "DISABLED"
    else
      L3_2 = L2_2.state
      if L3_2 == "EXITING" then
        L2_2.state = A1_2
      end
    end
  elseif A1_2 == "VISIBLE" then
    L3_2 = L2_2.state
    if L3_2 ~= "ENTERING" then
      L3_2 = L2_2.state
      if L3_2 ~= "HIDDEN" then
        L3_2 = L2_2.state
      end
    end
    if L3_2 == "EXITING" then
      L2_2.state = A1_2
      L2_2.percentage = 100
      L3_2 = L2_2.page
      L3_2.state = "READY"
    end
  elseif A1_2 == "EXITING" then
    L3_2 = L2_2.state
    if L3_2 == "VISIBLE" then
      L2_2.state = A1_2
      L2_2.percentage = 100
      L3_2 = L2_2.page
      L3_2.state = "READY"
    else
      L3_2 = L2_2.state
      if L3_2 == "ENTERING" then
        L2_2.state = A1_2
      end
    end
  elseif A1_2 == "HIDDEN" then
    L3_2 = L2_2.state
    if L3_2 ~= "ENTERING" then
      L3_2 = L2_2.state
      if L3_2 ~= "VISIBLE" then
        L3_2 = L2_2.state
        if L3_2 ~= "EXITING" then
          goto lbl_64
        end
      end
    end
    L2_2.state = A1_2
    L2_2.percentage = 0
    L3_2 = L2_2.page
    L3_2.state = "DISABLED"
  end
  ::lbl_64::
end

setAnimationState = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = print
  L2_2 = ":::::: SetPostedStatus for episode: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = gameCenterEnabled
  if L1_2 then
    L1_2 = gameCenter
    if L1_2 then
      L1_2 = gameCenter
      L1_2 = L1_2.leaderboards
      if L1_2 then
        L1_2 = leaderboards
        if L1_2 then
          L1_2 = getLeaderboardNameForEpisode
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          L2_2 = getLeaderboardNameForTotalScore
          L2_2 = L2_2()
          if L1_2 then
            L3_2 = leaderboards
            L3_2 = L3_2[L1_2]
            if L3_2 then
              L3_2 = gameCenter
              L3_2 = L3_2.leaderboards
              L4_2 = leaderboards
              L4_2 = L4_2[L1_2]
              L3_2 = L3_2[L4_2]
              if L3_2 then
                L3_2 = print
                L4_2 = "Setting posted status to false for leaderboard "
                L5_2 = L1_2
                L6_2 = "\n"
                L4_2 = L4_2 .. L5_2 .. L6_2
                L3_2(L4_2)
                L3_2 = gameCenter
                L3_2 = L3_2.leaderboards
                L4_2 = leaderboards
                L4_2 = L4_2[L1_2]
                L3_2 = L3_2[L4_2]
                L3_2.posted = false
              end
            end
          end
          L3_2 = leaderboards
          L3_2 = L3_2[L2_2]
          if L3_2 then
            L3_2 = gameCenter
            L3_2 = L3_2.leaderboards
            L4_2 = leaderboards
            L4_2 = L4_2[L2_2]
            L3_2 = L3_2[L4_2]
            if L3_2 then
              L3_2 = print
              L4_2 = "Setting posted status to false for total leaderboard with name: "
              L5_2 = L2_2
              L4_2 = L4_2 .. L5_2
              L3_2(L4_2)
              L3_2 = gameCenter
              L3_2 = L3_2.leaderboards
              L4_2 = leaderboards
              L4_2 = L4_2[L2_2]
              L3_2 = L3_2[L4_2]
              L3_2.posted = false
            end
          end
          L3_2 = powerups
          if L3_2 then
            L3_2 = getLeaderboardNameForEpisode
            L4_2 = A0_2
            L5_2 = true
            L3_2 = L3_2(L4_2, L5_2)
            powerUpLBoardName = L3_2
            L3_2 = getLeaderboardNameForTotalScore
            L4_2 = true
            L3_2 = L3_2(L4_2)
            powerUpLBoardNameTotal = L3_2
            L3_2 = leaderboards
            L4_2 = powerUpLBoardName
            L3_2 = L3_2[L4_2]
            if L3_2 then
              L3_2 = gameCenter
              L3_2 = L3_2.leaderboards
              L4_2 = leaderboards
              L5_2 = powerUpLBoardName
              L4_2 = L4_2[L5_2]
              L3_2 = L3_2[L4_2]
              if L3_2 then
                L3_2 = print
                L4_2 = "Setting posted status to false for powerup leaderboard "
                L5_2 = powerUpLBoardName
                L4_2 = L4_2 .. L5_2
                L3_2(L4_2)
                L3_2 = gameCenter
                L3_2 = L3_2.leaderboards
                L4_2 = leaderboards
                L5_2 = powerUpLBoardName
                L4_2 = L4_2[L5_2]
                L3_2 = L3_2[L4_2]
                L3_2.posted = false
              end
            end
            L3_2 = leaderboards
            L4_2 = powerUpLBoardNameTotal
            L3_2 = L3_2[L4_2]
            if L3_2 then
              L3_2 = gameCenter
              L3_2 = L3_2.leaderboards
              L4_2 = leaderboards
              L5_2 = powerUpLBoardNameTotal
              L4_2 = L4_2[L5_2]
              L3_2 = L3_2[L4_2]
              if L3_2 then
                L3_2 = print
                L4_2 = "Setting posted status to false for powerup total leaderboard with name: "
                L5_2 = powerUpLBoardNameTotal
                L4_2 = L4_2 .. L5_2
                L3_2(L4_2)
                L3_2 = gameCenter
                L3_2 = L3_2.leaderboards
                L4_2 = leaderboards
                L5_2 = powerUpLBoardNameTotal
                L4_2 = L4_2[L5_2]
                L3_2 = L3_2[L4_2]
                L3_2.posted = false
              end
            end
          end
        end
      end
    end
  end
end

setPostedStatus = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = playtimeCounter
  if L0_2 == nil then
    L0_2 = 0
    playtimeCounter = L0_2
  end
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setPlaytime
  L2_2 = playtimeCounter
  L0_2(L1_2, L2_2)
  L0_2 = 0
  playtimeCounter = L0_2
end

calculatePlaytime = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = print
  L1_2 = "gamelogic refreshLocalGameCenterData \n"
  L0_2(L1_2)
  L0_2 = gameCenterEnabled
  if L0_2 then
    L0_2 = leaderboards
    if L0_2 then
      L0_2 = _G
      L0_2 = L0_2.pairs
      L1_2 = leaderboards
      L0_2, L1_2, L2_2 = L0_2(L1_2)
      for L3_2, L4_2 in L0_2, L1_2, L2_2 do
        L5_2 = getLeaderboardScoresForRange
        L6_2 = L4_2
        L7_2 = 1
        L8_2 = 1
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
end

refreshLocalGameCenterData = L4_1

function L4_1()
  local L0_2, L1_2
end

setIndicatorPositions = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2
  L0_2 = L0_2.getChild
  L2_2 = "mainMenu"
  L0_2 = L0_2(L1_2, L2_2)
  return L0_2
end

getMainMenuInstance = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  if L0_2 == nil then
    return
  end
  L0_2 = getMainMenuInstance
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.setGameCenterEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = print
    L2_2 = "enableGameCenter - failed to get main menu instance"
    L1_2(L2_2)
  end
end

enableGameCenter = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  if L0_2 == nil then
    return
  end
  L0_2 = getMainMenuInstance
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.setGameCenterEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = print
    L2_2 = "disableGameCenter - failed to get main menu instance"
    L1_2(L2_2)
  end
end

disableGameCenter = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "gamelogic hideLoadingInitGameCenter"
  L0_2(L1_2)
end

hideLoadingInitGameCenter = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "gamelogic hideLoadingLeaderboards"
  L0_2(L1_2)
  L0_2 = getMainMenuInstance
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.refreshGameCenterButtons
    L1_2(L2_2)
  end
end

hideLoadingLeaderboards = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "gamelogic hideloadingAchievements"
  L0_2(L1_2)
  L0_2 = getMainMenuInstance
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.refreshGameCenterButtons
    L1_2(L2_2)
  end
end

hideLoadingAchievements = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = getMainMenuInstance
  L0_2 = L0_2()
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.refreshGameCenterButtons
    L1_2(L2_2)
  end
end

refreshGameCenterButtons = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.cos
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.sin
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = L3_2 * A1_2
  L7_2 = -L4_2
  L7_2 = L7_2 * A2_2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L4_2 * A1_2
  L7_2 = L3_2 * A2_2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  return L5_2
end

transformCoordinates = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = actions
  L0_2 = L0_2 ~= nil
  return L0_2
end

isInGameMode = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = isInGameMode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = g_tutorialShowing
    if not L0_2 then
      L0_2 = isLevelEnded
      L0_2 = L0_2()
      if not L0_2 then
        L0_2 = isRewardPageShowing
        L0_2 = L0_2()
        if not L0_2 then
          goto lbl_18
        end
      end
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_18::
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2
  L0_2 = L0_2.getChild
  L2_2 = "gameHud"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.getChild
    L3_2 = "pausePage"
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.visible
    if L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = true
  return L1_2
end

isInGameplay = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = actions
  L0_2 = L0_2 ~= nil
  return L0_2
end

isInComic = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2
  L0_2 = L0_2.getChild
  L2_2 = "LevelEnd"
  L0_2 = L0_2(L1_2, L2_2)
  L0_2 = L0_2 ~= nil
  return L0_2
end

isLevelEnded = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = setObjectGravityCategory
    L3_2 = A0_2
    L4_2 = g_gravityFiltersCategories
    L4_2 = L4_2.BIRD
    L2_2(L3_2, L4_2)
  else
    L2_2 = setObjectGravityCategory
    L3_2 = A0_2
    L4_2 = g_gravityFiltersCategories
    L4_2 = L4_2.BIRD_UNAFFECTED_BY_GRAVITY
    L2_2(L3_2, L4_2)
  end
end

enableGravityForBird = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = assert
  L2_2 = A0_2 ~= nil
  L3_2 = "levelName name is nil"
  L1_2(L2_2, L3_2)
  L1_2 = actions
  if L1_2 then
    L1_2 = actions
    L1_2 = L1_2.myLevelsMetadata
    L1_2 = L1_2[A0_2]
    if L1_2 ~= nil then
      L1_2 = actions
      L1_2 = L1_2.myLevelsMetadata
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  L1_2 = {}
  return L1_2
end

getLevelMetadata = L4_1

function L4_1(A0_2)
  local L1_2
  L1_2 = actions
  L1_2 = L1_2.myEpisodesMetadata
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    L1_2 = actions
    L1_2 = L1_2.myEpisodesMetadata
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = {}
  return L1_2
end

getEpisodeMetadata = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = actions
  L4_2 = L4_2.myLevelsMetadata
  L4_2 = L4_2 ~= nil
  L3_2(L4_2)
  L3_2 = actions
  L3_2 = L3_2.myLevelsMetadata
  L3_2 = L3_2[L2_2]
  if L3_2 ~= nil then
    L3_2 = actions
    L3_2 = L3_2.myLevelsMetadata
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.type
    if L3_2 == "comic" then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end

isLevelComic = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = actions
  L2_2 = L2_2.myLevelsMetadata
  L3_2 = actions
  L3_2 = L3_2.myLevels
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L2_2 = actions
    L2_2 = L2_2.myLevelsMetadata
    L3_2 = actions
    L3_2 = L3_2.myLevels
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.starsUnlockLimit
    if L2_2 then
      L2_2 = actions
      L2_2 = L2_2.myLevelsMetadata
      L3_2 = actions
      L3_2 = L3_2.myLevels
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2[A1_2]
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.starsUnlockLimit
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end

getStarsRequiredToOpenLevel = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A0_2 ~= nil
  L4_2 = "folder is nil at getRenderedLevelNumber"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2 ~= nil
  L4_2 = "levelNumber is nil at getRenderedLevelNumber"
  L2_2(L3_2, L4_2)
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = isLevelComic
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = 1
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = actions
  L4_2 = L4_2.myLevels
  L4_2 = L4_2[A0_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if A1_2 <= L6_2 then
      break
    end
    L8_2 = isLevelComic
    L9_2 = A0_2
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = getEpisodeMetadata
  L4_2 = currentFolder
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.levelNumberAdjustment
  if L3_2 and L2_2 > L3_2 then
    L2_2 = L2_2 - L3_2
  end
  return L2_2
end

getRenderedLevelNumber = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 == false then
    L2_2 = _G
    L2_2 = L2_2.debug
    if L2_2 ~= nil then
      L2_2 = print
      L3_2 = _G
      L3_2 = L3_2.debug
      L3_2 = L3_2.traceback
      L3_2, L4_2 = L3_2()
      L2_2(L3_2, L4_2)
    else
      L2_2 = print
      L3_2 = "Assertion failed but debug is unavailable"
      L2_2(L3_2)
    end
    L2_2 = _G
    L2_2 = L2_2.assert
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end

assert = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = actions
  L3_2 = L3_2.myLevelsMetadata
  L3_2 = L3_2[L2_2]
  if L3_2 ~= nil then
    L3_2 = actions
    L3_2 = L3_2.myLevelsMetadata
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.lastLevelOfEpisode
    return L3_2
  end
  L3_2 = false
  return L3_2
end

isLastLevelOfEpisode = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = false
  return L0_2
end

isEagleEnabled = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = highscores
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = highscores
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.eagleScore
    if L3_2 then
      L3_2 = highscores
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2.eagleScore
      if 100 <= L3_2 then
        L3_2 = 2
        return L3_2
    end
    else
      L3_2 = highscores
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2.eagleScore
      if L3_2 then
        L3_2 = highscores
        L3_2 = L3_2[L2_2]
        L3_2 = L3_2.eagleScore
        if 50 <= L3_2 then
          L3_2 = 1
          return L3_2
        end
      end
    end
  end
  L3_2 = 0
  return L3_2
end

doesLevelHaveFeather = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = highscores
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = highscores
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.powerUpScore
    if L3_2 then
      L3_2 = highscores
      L3_2 = L3_2[L2_2]
      L3_2 = L3_2.powerUpScore
      if 0 < L3_2 then
        L3_2 = true
        return L3_2
      end
    end
  end
  L3_2 = false
  return L3_2
end

isLevelCompletedWithPowerups = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = platformSupportsME
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.isMightyEagleEnabled
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = SettingsWrapper
      L1_2 = L0_2
      L0_2 = L0_2.isMEAdvertEnabled
      L0_2 = L0_2(L1_2)
    end
    return L0_2
  end
  L0_2 = false
  return L0_2
end

showEagleUIElements = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = isIapEnabled
  return L0_2()
end

platformSupportsME = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "WARNING: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "\n"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
end

logwarning = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "ERROR: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "\n"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
end

logerror = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "INFO: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "\n"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
end

loginfo = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L5_2 = L5_2 / L6_2
  L8_2 = L4_2 * L5_2
  L8_2 = L8_2 * L5_2
  L8_2 = L8_2 * L5_2
  L8_2 = L8_2 + L7_2
  return L8_2
end

tweenEaseCubicIn = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L8_2 = L5_2 / L6_2
  L5_2 = L8_2 - 1
  L8_2 = L5_2 * L5_2
  L8_2 = L8_2 * L5_2
  L8_2 = L8_2 + 1
  L8_2 = L4_2 * L8_2
  L8_2 = L8_2 + L7_2
  return L8_2
end

tweenEaseCubicOut = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A3_2
  L7_2 = A1_2
  L8_2 = L6_2 / 2
  L5_2 = L5_2 / L8_2
  if L5_2 < 1 then
    L8_2 = L4_2 / 2
    L9_2 = L5_2 * L5_2
    L9_2 = L9_2 * L5_2
    L8_2 = L8_2 * L9_2
    L8_2 = L8_2 + L7_2
    return L8_2
  end
  L5_2 = L5_2 - 2
  L8_2 = L4_2 / 2
  L9_2 = L5_2 * L5_2
  L9_2 = L9_2 * L5_2
  L9_2 = L9_2 + 2
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 + L7_2
  return L8_2
end

tweenEaseCubicInOut = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = getLevelMetadata
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = actions
  L4_2 = L4_2.myPages
  L4_2 = L4_2[A0_2]
  L5_2 = 1
  L6_2 = _G
  L6_2 = L6_2.pairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    if L10_2 < A1_2 then
      L5_2 = L5_2 + 1
    end
  end
  if L5_2 < 1 then
    L5_2 = 1
    L6_2 = logwarning
    L7_2 = " cannot calculate page number correctly, myPages in levelOrder.lua might be out of date"
    L6_2(L7_2)
  end
  if L3_2 then
    L6_2 = L3_2.isAlternativePathLevel
    if L6_2 then
      L6_2 = L3_2.levelPage
      if not L6_2 then
        L6_2 = L5_2
      end
      return L6_2
  end
  else
    return L5_2
  end
end

getPageNumber = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = print
  L2_2 = "Printing array:"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.type
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 == "table" then
      L6_2 = printArray
      L7_2 = L5_2
      L6_2(L7_2)
    else
      L6_2 = print
      L7_2 = L4_2
      L8_2 = ": "
      L9_2 = _G
      L9_2 = L9_2.tostring
      L10_2 = L5_2
      L9_2 = L9_2(L10_2)
      L7_2 = L7_2 .. L8_2 .. L9_2
      L6_2(L7_2)
    end
  end
end

printArray = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "********** requestAd called"
  L0_2(L1_2)
end

requestAd = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = releaseBuild
  if L1_2 ~= true then
    L1_2 = logwarning
    L2_2 = "onLoadLuaFileFail() "
    L3_2 = _G
    L3_2 = L3_2.tostring
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = g_warningMessages
    if not L1_2 then
      L1_2 = {}
    end
    g_warningMessages = L1_2
    L1_2 = _G
    L1_2 = L1_2.table
    L1_2 = L1_2.insert
    L2_2 = g_warningMessages
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

onLoadLuaFileFail = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2 ~= nil
  L3_2 = "invalid parameter"
  L1_2(L2_2, L3_2)
  L1_2 = setLevelFolder
  L2_2 = "levels/"
  L1_2(L2_2)
  L1_2 = setLevelName
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_CHANGE_SCENE
  L3_2.id = L4_2
  L3_2.target = "GameScene"
  L1_2(L2_2, L3_2)
end

gotoMenuLevel = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_ABOUT_MENU_OPENED
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = gotoMenuLevel
  L1_2 = "Credits"
  L0_2(L1_2)
end

gotoCredits = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = _G
  L1_2 = L1_2.os
  L1_2 = L1_2.date
  L2_2 = "%d"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 * 1
  L0_2.d = L1_2
  L1_2 = _G
  L1_2 = L1_2.os
  L1_2 = L1_2.date
  L2_2 = "%H"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 * 1
  L0_2.h = L1_2
  L1_2 = _G
  L1_2 = L1_2.os
  L1_2 = L1_2.date
  L2_2 = "%M"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 * 1
  L0_2.m = L1_2
  L1_2 = _G
  L1_2 = L1_2.os
  L1_2 = L1_2.date
  L2_2 = "%S"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 * 1
  L0_2.s = L1_2
  return L0_2
end

currentTime = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.h
  L2_2 = L2_2 * 60
  L2_2 = L2_2 * 60
  L3_2 = A1_2.m
  L3_2 = L3_2 * 60
  L2_2 = L2_2 + L3_2
  L3_2 = A1_2.s
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.h
  L3_2 = L3_2 * 60
  L3_2 = L3_2 * 60
  L4_2 = A0_2.m
  L4_2 = L4_2 * 60
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.s
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.d
  L5_2 = A1_2.d
  if L4_2 ~= L5_2 then
    L3_2 = L3_2 + 86400
  end
  L4_2 = L3_2 - L2_2
  return L4_2
end

timeDiff = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ""
  L2_2 = _G
  L2_2 = L2_2.string
  L2_2 = L2_2.format
  L3_2 = "%d"
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.floor
  L5_2 = A0_2 / 3600
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = _G
  L3_2 = L3_2.string
  L3_2 = L3_2.format
  L4_2 = "%d"
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.floor
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.fmod
  L7_2 = A0_2
  L8_2 = 3600
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 / 60
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = _G
  L4_2 = L4_2.string
  L4_2 = L4_2.format
  L5_2 = "%d"
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.fmod
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.fmod
  L8_2 = A0_2
  L9_2 = 3600
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = 60
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if 3600 <= A0_2 then
    L5_2 = "00"
    L6_2 = L3_2
    L3_2 = L5_2 .. L6_2
    L5_2 = _G
    L5_2 = L5_2.string
    L5_2 = L5_2.sub
    L6_2 = L3_2
    L7_2 = #L3_2
    L7_2 = L7_2 - 1
    L8_2 = #L3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2 = L5_2
    L5_2 = "00"
    L6_2 = L4_2
    L4_2 = L5_2 .. L6_2
    L5_2 = _G
    L5_2 = L5_2.string
    L5_2 = L5_2.sub
    L6_2 = L4_2
    L7_2 = #L4_2
    L7_2 = L7_2 - 1
    L8_2 = #L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L5_2 = L2_2
    L6_2 = ":"
    L7_2 = L3_2
    L8_2 = ":"
    L9_2 = L4_2
    L1_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  else
    L5_2 = "00"
    L6_2 = L4_2
    L4_2 = L5_2 .. L6_2
    L5_2 = _G
    L5_2 = L5_2.string
    L5_2 = L5_2.sub
    L6_2 = L4_2
    L7_2 = #L4_2
    L7_2 = L7_2 - 1
    L8_2 = #L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L5_2 = L3_2
    L6_2 = ":"
    L7_2 = L4_2
    L1_2 = L5_2 .. L6_2 .. L7_2
  end
  return L1_2
end

formatTime = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = actions
  L1_2 = L1_2.myLevels
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = getEpisodeMetadata
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.eggsteroidEpisode
  if not L2_2 then
    L2_2 = L1_2.antennaEggEpisode
    if not L2_2 then
      L2_2 = L1_2.featherBonusEpisode
      if not L2_2 then
        L2_2 = _G
        L2_2 = L2_2.ipairs
        L3_2 = actions
        L3_2 = L3_2.myLevels
        L3_2 = L3_2[A0_2]
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = getLevelMetadata
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L7_2 = L7_2.lastLevelOfEpisode
          if L7_2 then
            L7_2 = highscores
            L7_2 = L7_2[L6_2]
            if L7_2 == nil then
              L7_2 = false
              return L7_2
            end
            L7_2 = highscores
            L7_2 = L7_2[L6_2]
            L7_2 = L7_2.score
            if L7_2 == nil then
              L7_2 = highscores
              L7_2 = L7_2[L6_2]
              L7_2 = L7_2.eaglescore
              if L7_2 == nil then
                L7_2 = false
                return L7_2
              end
            end
          end
        end
    end
  end
  else
    L2_2 = _G
    L2_2 = L2_2.ipairs
    L3_2 = actions
    L3_2 = L3_2.myLevels
    L3_2 = L3_2[A0_2]
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = getLevelMetadata
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 ~= nil then
        L8_2 = L7_2.ignoreScore
        if not L8_2 then
          L8_2 = true
          L9_2 = L7_2.deviceRestrictions
          if L9_2 then
            L8_2 = false
            L9_2 = _G
            L9_2 = L9_2.ipairs
            L10_2 = L7_2.deviceRestrictions
            L9_2, L10_2, L11_2 = L9_2(L10_2)
            for L12_2, L13_2 in L9_2, L10_2, L11_2 do
              L14_2 = deviceManufacturer
              if L13_2 == L14_2 then
                L8_2 = true
                break
              end
            end
          end
          if L8_2 then
            L9_2 = highscores
            L9_2 = L9_2[L6_2]
            if L9_2 == nil then
              L9_2 = false
              return L9_2
            end
            L9_2 = highscores
            L9_2 = L9_2[L6_2]
            L9_2 = L9_2.score
            if L9_2 == nil then
              L9_2 = highscores
              L9_2 = L9_2[L6_2]
              L9_2 = L9_2.eaglescore
              if L9_2 == nil then
                L9_2 = false
                return L9_2
              end
            end
          end
        end
      end
    end
  end
  L2_2 = true
  return L2_2
end

isEpisodeCompleted = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = customerString
  if L1_2 ~= "rovio" then
    L1_2 = A0_2
    L2_2 = "_"
    L3_2 = customerString
    L1_2 = L1_2 .. L2_2 .. L3_2
    return L1_2
  end
  return A0_2
end

appendCustomerString = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = _G
  L3_2 = L3_2.string
  L3_2 = L3_2.find
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil and 1 <= L3_2 then
    L5_2 = _G
    L5_2 = L5_2.string
    L5_2 = L5_2.gsub
    L6_2 = A0_2
    L7_2 = "(%"
    L8_2 = A1_2
    L9_2 = ")"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L8_2 = A2_2
    return L5_2(L6_2, L7_2, L8_2)
  end
  return A0_2
end

replaceTextOccurrencesInString = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.areaAngle
  if L1_2 == nil then
    A0_2.areaAngle = 0
  else
    L1_2 = g_lineGravityVisualization
    if not L1_2 then
      L1_2 = A0_2.areaAngle
      L1_2 = L1_2 + 0.003
      A0_2.areaAngle = L1_2
    end
  end
  L1_2 = A0_2.areaScale
  if L1_2 == nil then
    A0_2.areaScale = 0
    A0_2.increesingScale = true
  else
    L1_2 = A0_2.increesingScale
    if L1_2 then
      L1_2 = A0_2.areaScale
      if 0.004 < L1_2 then
        A0_2.increesingScale = false
      else
        L1_2 = A0_2.areaScale
        L1_2 = L1_2 + 3.0E-4
        A0_2.areaScale = L1_2
      end
    else
      L1_2 = A0_2.areaScale
      if L1_2 < -0.004 then
        A0_2.increesingScale = true
      else
        L1_2 = A0_2.areaScale
        L1_2 = L1_2 - 3.0E-4
        A0_2.areaScale = L1_2
      end
    end
  end
  L1_2 = physicsToScreenTransform
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = 0
  L4_2 = blockTable
  L4_2 = L4_2.blocks
  L5_2 = A0_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.type
  if L4_2 == "box" then
    L4_2 = startedFromEditor
    if L4_2 then
      L4_2 = drawGravityFieldBounds
      L5_2 = A0_2
      L4_2(L5_2)
    end
  else
    L3_2 = A0_2.radius
    L4_2 = L3_2 * 3
    L5_2 = worldScale
    L4_2 = L4_2 * L5_2
    L4_2 = L4_2 * 0.019
    L5_2 = L3_2 * 3
    L6_2 = worldScale
    L5_2 = L5_2 * L6_2
    L5_2 = L5_2 * 0.019
    L6_2 = A0_2.areaAngle
    L7_2 = 1
    L8_2 = 4
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = setRenderState
      L12_2 = L1_2 / L4_2
      L13_2 = L2_2 / L5_2
      L14_2 = L4_2
      L15_2 = L5_2
      L16_2 = L10_2 - 1
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.pi
      L16_2 = L16_2 * L17_2
      L16_2 = L16_2 * 0.5
      L16_2 = L6_2 + L16_2
      L17_2 = res
      L17_2 = L17_2.getSpritePivot
      L18_2 = blockTable
      L18_2 = L18_2.themes
      L19_2 = currentTheme
      L18_2 = L18_2[L19_2]
      L18_2 = L18_2.gravitySliceSprite
      L17_2, L18_2, L19_2 = L17_2(L18_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L11_2 = _G
      L11_2 = L11_2.res
      L11_2 = L11_2.drawSprite
      L12_2 = blockTable
      L12_2 = L12_2.themes
      L13_2 = currentTheme
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.gravitySliceSprite
      L13_2 = 0
      L14_2 = 0
      L11_2(L12_2, L13_2, L14_2)
    end
    L7_2 = A0_2.areaAngle
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.pi
    L8_2 = L8_2 * 0.25
    L6_2 = L7_2 + L8_2
    L7_2 = 1
    L8_2 = 4
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = setRenderState
      L12_2 = L1_2 / L4_2
      L13_2 = L2_2 / L5_2
      L14_2 = L4_2
      L15_2 = L5_2
      L16_2 = L10_2 - 1
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.pi
      L16_2 = L16_2 * L17_2
      L16_2 = L16_2 * 0.5
      L16_2 = L6_2 + L16_2
      L17_2 = res
      L17_2 = L17_2.getSpritePivot
      L18_2 = blockTable
      L18_2 = L18_2.themes
      L19_2 = currentTheme
      L18_2 = L18_2[L19_2]
      L18_2 = L18_2.gravitySliceSprite
      L17_2, L18_2, L19_2 = L17_2(L18_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L11_2 = _G
      L11_2 = L11_2.res
      L11_2 = L11_2.drawSprite
      L12_2 = blockTable
      L12_2 = L12_2.themes
      L13_2 = currentTheme
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.gravitySliceSprite
      L13_2 = 0
      L14_2 = 0
      L11_2(L12_2, L13_2, L14_2)
    end
  end
end

drawGravityBubble = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    return
  end
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A0_2.lines
  L4_2 = L4_2 ~= nil
  L5_2 = "text item not clipped"
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = A0_2.lines
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.lines
    L7_2 = L7_2[L6_2]
    L8_2 = replaceTextOccurrencesInString
    L9_2 = A0_2.lines
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.text
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.text = L8_2
  end
end

replaceTextOccurrences = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    return
  end
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getString
  L3_2 = "TEXTS_BASIC"
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L6_2 % 2
      if L8_2 == 1 then
        L8_2 = _G
        L8_2 = L8_2.string
        L8_2 = L8_2.gsub
        L9_2 = L2_2
        L10_2 = L7_2
        L11_2 = L6_2 + 1
        L11_2 = A1_2[L11_2]
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L2_2 = L8_2
      end
    end
  end
  return L2_2
end

getText = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = false
  L3_2 = getLevelMetadata
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.episodeEndComic
  if L3_2 then
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.isComicWatched
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= true then
      L4_2 = getLevelMetadata
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2.showEpisodeCompleteDialog
    end
    L4_2 = getLevelMetadata
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.lastComicOfGame
    L5_2 = eventManager
    L6_2 = L5_2
    L5_2 = L5_2.queueEvent
    L7_2 = {}
    L8_2 = events
    L8_2 = L8_2.EID_INIT_EPISODE_COMPLETED_ACTIONS
    L7_2.id = L8_2
    L7_2.showDialogs = L2_2
    L7_2.comicWatched = L3_2
    L7_2.lastComicOfGame = L4_2
    L5_2(L6_2, L7_2)
  end
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.storeComicWatched
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end

comicFinished = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = releaseBuild
  L0_2 = L0_2 ~= true
  return L0_2
end

isBuildUnlocked = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = physicsToScreenTransform
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2.width
  gr = L3_2
  L3_2 = worldScale
  L3_2 = L3_2 / 100
  L4_2 = setRenderState
  L5_2 = L1_2 / L3_2
  L6_2 = L2_2 / L3_2
  L7_2 = L3_2
  L8_2 = L3_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = physicsToWorldTransform
  L5_2 = A0_2.width
  L5_2 = L5_2 * 0.5
  L5_2 = L5_2 * 100
  L6_2 = A0_2.height
  L6_2 = L6_2 * 0.5
  L6_2 = L6_2 * 100
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = transformCoordinates
  L7_2 = A0_2.angle
  L8_2 = -L4_2
  L9_2 = -L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = transformCoordinates
  L8_2 = A0_2.angle
  L9_2 = L4_2
  L10_2 = -L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = transformCoordinates
  L9_2 = A0_2.angle
  L10_2 = -L4_2
  L11_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = transformCoordinates
  L10_2 = A0_2.angle
  L11_2 = L4_2
  L12_2 = L5_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = transformCoordinates
  L11_2 = A0_2.angle
  L12_2 = 0
  L13_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = transformCoordinates
  L12_2 = A0_2.angle
  L13_2 = 0
  L14_2 = -L5_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = drawLine2D
  L13_2 = L6_2.x
  L14_2 = L6_2.y
  L15_2 = L7_2.x
  L16_2 = L7_2.y
  L17_2 = gameWorldScale
  L17_2 = 2 * L17_2
  L18_2 = 255
  L19_2 = 255
  L20_2 = 255
  L21_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L12_2 = drawLine2D
  L13_2 = L7_2.x
  L14_2 = L7_2.y
  L15_2 = L9_2.x
  L16_2 = L9_2.y
  L17_2 = gameWorldScale
  L17_2 = 2 * L17_2
  L18_2 = 255
  L19_2 = 255
  L20_2 = 255
  L21_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L12_2 = drawLine2D
  L13_2 = L9_2.x
  L14_2 = L9_2.y
  L15_2 = L8_2.x
  L16_2 = L8_2.y
  L17_2 = gameWorldScale
  L17_2 = 2 * L17_2
  L18_2 = 255
  L19_2 = 255
  L20_2 = 255
  L21_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L12_2 = drawLine2D
  L13_2 = L8_2.x
  L14_2 = L8_2.y
  L15_2 = L6_2.x
  L16_2 = L6_2.y
  L17_2 = gameWorldScale
  L17_2 = 2 * L17_2
  L18_2 = 255
  L19_2 = 255
  L20_2 = 255
  L21_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L12_2 = drawLine2D
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L11_2.x
  L16_2 = L11_2.y
  L17_2 = gameWorldScale
  L17_2 = 2 * L17_2
  L18_2 = 255
  L19_2 = 255
  L20_2 = 255
  L21_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
end

drawGravityFieldBounds = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = {}
  g_forceFunctions = L0_2
end

clearLuaForceFunctions = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = _G
  L0_2 = L0_2.ipairs
  L1_2 = g_forceFunctions
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2
    L5_2()
  end
end

applyForcesAtPhysicsStep = L4_1

function L4_1(A0_2)
  local L1_2
end

mightyEagleNotificationCallback = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = _G
  L5_2 = L5_2.table
  L5_2 = L5_2.insert
  L6_2 = g_forceFunctions
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = objects
    L0_3 = L0_3.world
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    if L0_3 ~= nil then
      L0_3 = applyForceNative
      L1_3 = A0_2
      L2_3 = A1_2
      L3_3 = A2_2
      L4_3 = A3_2
      L5_3 = A4_2
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    end
  end
  
  L5_2(L6_2, L7_2)
end

applyForce = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.end1
    if L8_2 then
      L8_2 = L7_2.end2
      if L8_2 then
        L8_2 = L7_2.end1
        if L8_2 ~= A1_2 then
          L8_2 = L7_2.end2
          if L8_2 ~= A1_2 then
            goto lbl_44
          end
        end
        L8_2 = L7_2.end1
        if L8_2 ~= A1_2 then
          L8_2 = _G
          L8_2 = L8_2.table
          L8_2 = L8_2.insert
          L9_2 = L2_2
          L10_2 = objects
          L10_2 = L10_2.world
          L11_2 = L7_2.end1
          L10_2 = L10_2[L11_2]
          L8_2(L9_2, L10_2)
        else
          L8_2 = L7_2.end2
          if L8_2 ~= A1_2 then
            L8_2 = _G
            L8_2 = L8_2.table
            L8_2 = L8_2.insert
            L9_2 = L2_2
            L10_2 = objects
            L10_2 = L10_2.world
            L11_2 = L7_2.end2
            L10_2 = L10_2[L11_2]
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
    ::lbl_44::
  end
  return L2_2
end

getJointedObjects = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = 1
    L7_2 = #A1_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = A0_2[L5_2]
      L11_2 = A1_2[L9_2]
      if L10_2 == L11_2 then
        L10_2 = print
        L11_2 = "filter out graphics needed for comics - filtering out: "
        L12_2 = A1_2[L9_2]
        L11_2 = L11_2 .. L12_2
        L10_2(L11_2)
        L10_2 = _G
        L10_2 = L10_2.table
        L10_2 = L10_2.remove
        L11_2 = A1_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
end

filterOutNeededGraphics = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = currentTheme
  if A0_2 == L1_2 then
    L1_2 = loginfo
    L2_2 = "checkAndLoadTheme() theme remains the same ("
    L3_2 = _G
    L3_2 = L3_2.tostring
    L4_2 = currentTheme
    L3_2 = L3_2(L4_2)
    L4_2 = " = "
    L5_2 = _G
    L5_2 = L5_2.tostring
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = ")\n"
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
    L1_2(L2_2)
  else
    L1_2 = loginfo
    L2_2 = "checkAndLoadTheme() changing theme from "
    L3_2 = _G
    L3_2 = L3_2.tostring
    L4_2 = currentTheme
    L3_2 = L3_2(L4_2)
    L4_2 = " to "
    L5_2 = _G
    L5_2 = L5_2.tostring
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
    L1_2(L2_2)
  end
  L1_2 = getLevelMetadata
  L2_2 = levelName
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.additinalLoadGroups
  if L1_2 then
    L1_2 = releaseImages
    L2_2 = {}
    L3_2 = g_defaultLoadGroups
    L3_2 = L3_2.ingame
    L2_2[1] = L3_2
    L1_2(L2_2)
    L1_2 = loadImages
    L2_2 = getLevelMetadata
    L3_2 = levelName
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.additinalLoadGroups
    L1_2(L2_2)
    L1_2 = showEditor
    if not L1_2 then
      L1_2 = getLevelMetadata
      L2_2 = levelName
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2.additinalLoadGroups
      g_releaseGroups = L1_2
    end
  else
    L1_2 = loadImages
    L2_2 = {}
    L3_2 = g_defaultLoadGroups
    L3_2 = L3_2.ingame
    L2_2[1] = L3_2
    L1_2(L2_2)
  end
  L1_2 = currentTheme
  if L1_2 ~= A0_2 then
    L1_2 = currentTheme
    if L1_2 ~= nil then
      L1_2 = loginfo
      L2_2 = " ------- Releasing old theme: "
      L3_2 = _G
      L3_2 = L3_2.tostring
      L4_2 = currentTheme
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = blockTable
      L1_2 = L1_2.themes
      L2_2 = currentTheme
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.loadListGroup
      L2_2 = getLevelMetadata
      L3_2 = levelName
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.additinalLoadGroups
      if L2_2 ~= nil then
        L2_2 = blockTable
        L2_2 = L2_2.themes
        L3_2 = currentTheme
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.loadListGroup
        L3_2 = {}
        L1_2 = L3_2
        L3_2 = 1
        L4_2 = #L2_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = _G
          L7_2 = L7_2.table
          L7_2 = L7_2.insert
          L8_2 = L1_2
          L9_2 = L2_2[L6_2]
          L7_2(L8_2, L9_2)
        end
        L3_2 = filterOutNeededGraphics
        L4_2 = getLevelMetadata
        L5_2 = levelName
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.additinalLoadGroups
        L5_2 = L1_2
        L3_2(L4_2, L5_2)
      end
      L2_2 = releaseImages
      L3_2 = L1_2
      L2_2(L3_2)
    end
    L1_2 = loginfo
    L2_2 = " ---------- Loading theme: "
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = loadImages
    L2_2 = blockTable
    L2_2 = L2_2.themes
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.loadListGroup
    L1_2(L2_2)
    currentTheme = A0_2
  end
end

checkAndLoadTheme = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = find_key
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= nil
  return L2_2
end

contains = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A1_2 == L6_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end

find_key = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  possibleInstalledApps = L3_2
  L3_2 = importJSONToLuaTable
  L4_2 = A2_2
  L5_2 = "possibleInstalledApps"
  L3_2(L4_2, L5_2)
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.setInstalledApps
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = getCurrentTime
  L7_2 = L7_2()
  L8_2 = possibleInstalledApps
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = print
  L4_2 = "Installed Apps received: "
  L5_2 = A0_2
  L6_2 = " with a ttl of "
  L7_2 = A1_2
  L8_2 = "\n"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L3_2(L4_2)
end

setInstalledApps = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setInstalledApps
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = getTimeDifferenceInSeconds
  L2_2 = getCurrentTime
  L2_2 = L2_2()
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getInstalledAppsLastCheck
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = print
  L3_2 = "Installed Apps checked offline: "
  L4_2 = A0_2
  L5_2 = ". Next app list update in "
  L6_2 = SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.getInstalledAppsTTL
  L6_2 = L6_2(L7_2)
  L7_2 = L1_2 / 3600
  L6_2 = L6_2 - L7_2
  L7_2 = " hours.\n"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L2_2(L3_2)
end

setInstalledAppsOffline = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_JOINT_REMOVED
  L3_2.id = L4_2
  L3_2.jointName = A0_2
  L1_2(L2_2, L3_2)
end

lua_onBeforeJointRemove = L4_1

function L4_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = print
    L2_2 = "Twitter Window Closed and message sent!"
    L1_2(L2_2)
  else
    L1_2 = print
    L2_2 = "Twitter window closed and message NOT sent!"
    L1_2(L2_2)
  end
end

twitterWindowClosed = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_PAYMENT_PROVIDER_SELECTED
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
end

onPaymentProviderSelected = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = checkStillInWorld
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A0_2]
    L2_2.active = A1_2
    L3_2 = getObjectDefinition
    L4_2 = L2_2.name
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.onActiveStateChange
    if L4_2 then
      L4_2 = fireAction
      L5_2 = L3_2.onActiveStateChange
      L6_2 = {}
      L6_2.name = A0_2
      L6_2.active = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end

setGameObjectActive = L4_1
