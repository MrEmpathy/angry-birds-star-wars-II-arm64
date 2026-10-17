local L0_1, L1_1
L0_1 = false
cameraDisabled = L0_1
L0_1 = 0.1
g_panningLimit = L0_1
L0_1 = true
g_delayedBirdFocusLost = L0_1
L0_1 = 3
g_delayedBirdFocusLostTimeLimit = L0_1
L0_1 = 3.5
g_cameraSpringForceConstant = L0_1
L0_1 = 2
g_cameraSpringForceConstantNoTarget = L0_1
L0_1 = false
g_showCameraDebugData = L0_1
L0_1 = 2
g_defaultCameraResetTime = L0_1
L0_1 = 150
g_minSweepSpeed = L0_1
L0_1 = 350
g_minSweepSpeedMenu = L0_1
L0_1 = 3000
g_maxSweepSpeed = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 0
  castleCameraTimer = L0_2
end

initCamera = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = ignoreCameraMovement
  if not L1_2 then
    L1_2 = isInGameMode
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = isComicLevel
      if not L1_2 then
        L1_2 = gameCamera
        L2_2 = L1_2
        L1_2 = L1_2.updateZoomLevel
        L3_2 = zoomLevel
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = g_delayedBirdFocusLost
  if L1_2 then
    L1_2 = 1
    while true do
      L2_2 = gameCamera
      L3_2 = L2_2
      L2_2 = L2_2.getNumOfCameraTargetObjects
      L2_2 = L2_2(L3_2)
      if not (L1_2 <= L2_2) then
        break
      end
      L2_2 = gameCamera
      L2_2 = L2_2.cameraTargetObjects
      L2_2 = L2_2[L1_2]
      L3_2 = L2_2.delayedRemovalTimer
      if L3_2 ~= nil then
        L3_2 = L2_2.delayedRemovalTimer
        L3_2 = L3_2 - A0_2
        L2_2.delayedRemovalTimer = L3_2
        L3_2 = L2_2.delayedRemovalTimer
        if L3_2 <= 0 then
          L3_2 = gameCamera
          L4_2 = L3_2
          L3_2 = L3_2.removeCameraTargetObject
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
          L1_2 = L1_2 - 1
        end
      end
      L1_2 = L1_2 + 1
    end
  end
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

updateCamera = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = cameraShakeOn
  if L1_2 then
    L1_2 = gameCamera
    L2_2 = L1_2
    L1_2 = L1_2.getCameraByIndex
    L3_2 = 2
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.sx
    if L1_2 ~= 0 then
      L2_2 = screen
      L3_2 = screen
      L3_2 = L3_2.x
      L4_2 = g_cameraShakePosition
      L4_2 = L4_2.x
      L5_2 = worldScale
      L4_2 = L4_2 * L5_2
      L4_2 = L4_2 / L1_2
      L3_2 = L3_2 + L4_2
      L2_2.x = L3_2
      L2_2 = screen
      L3_2 = screen
      L3_2 = L3_2.y
      L4_2 = g_cameraShakePosition
      L4_2 = L4_2.y
      L5_2 = worldScale
      L4_2 = L4_2 * L5_2
      L4_2 = L4_2 / L1_2
      L3_2 = L3_2 + L4_2
      L2_2.y = L3_2
    end
  end
end

gameCameraEffects = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.leftCamera
  L2_2 = A0_2.rightCamera
  L3_2 = A0_2.topCamera
  L4_2 = A0_2.bottomCamera
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.abs
  L6_2 = L2_2.px
  L7_2 = L1_2.px
  L6_2 = L6_2 - L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2.right
  L7_2 = L1_2.left
  L6_2 = L6_2 - L7_2
  L5_2 = L5_2 / L6_2
  L6_2 = getLevelMetadata
  L7_2 = levelName
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.cameraLimitsMultiplier
  if not L6_2 then
    L6_2 = 0.75
  end
  L5_2 = L5_2 * L6_2
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.abs
  L7_2 = L4_2.px
  L8_2 = L3_2.px
  L7_2 = L7_2 - L8_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2.bottom
  L8_2 = L3_2.top
  L7_2 = L7_2 - L8_2
  L6_2 = L6_2 / L7_2
  L7_2 = getLevelMetadata
  L8_2 = levelName
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.cameraLimitsMultiplier
  if not L7_2 then
    L7_2 = 0.75
  end
  L6_2 = L6_2 * L7_2
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.max
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = gameWorldScale
  L7_2 = L7_2 * L8_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.min
  L9_2 = L1_2.left
  L10_2 = L1_2.screenWidth
  L10_2 = L10_2 * L7_2
  L9_2 = L9_2 - L10_2
  L10_2 = L1_2.left
  L11_2 = screenWidth
  L11_2 = L11_2 * L7_2
  L10_2 = L10_2 - L11_2
  L8_2 = L8_2(L9_2, L10_2)
  leftLimitWorld = L8_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.max
  L9_2 = L2_2.right
  L10_2 = L2_2.screenWidth
  L10_2 = L10_2 * L7_2
  L9_2 = L9_2 + L10_2
  L10_2 = L2_2.right
  L11_2 = screenWidth
  L11_2 = L11_2 * L7_2
  L10_2 = L10_2 + L11_2
  L8_2 = L8_2(L9_2, L10_2)
  rightLimitWorld = L8_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.min
  L9_2 = L3_2.top
  L10_2 = L3_2.screenHeight
  L10_2 = L10_2 * L7_2
  L9_2 = L9_2 - L10_2
  L10_2 = L3_2.top
  L11_2 = screenHeight
  L11_2 = L11_2 * L7_2
  L10_2 = L10_2 - L11_2
  L8_2 = L8_2(L9_2, L10_2)
  topLimitWorld = L8_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.max
  L9_2 = L4_2.bottom
  L10_2 = L4_2.screenHeight
  L10_2 = L10_2 * L7_2
  L9_2 = L9_2 + L10_2
  L10_2 = L4_2.bottom
  L11_2 = screenHeight
  L11_2 = L11_2 * L7_2
  L10_2 = L10_2 + L11_2
  L8_2 = L8_2(L9_2, L10_2)
  bottomLimitWorld = L8_2
  L8_2 = worldToPhysicsTransform
  L9_2 = leftLimitWorld
  L10_2 = rightLimitWorld
  L8_2, L9_2 = L8_2(L9_2, L10_2)
  L10_2 = worldToPhysicsTransform
  L11_2 = topLimitWorld
  L12_2 = bottomLimitWorld
  L10_2, L11_2 = L10_2(L11_2, L12_2)
  L12_2 = levelLeftEdgePhysics
  oldLevelLeftEdgePhysics = L12_2
  L12_2 = levelRightEdgePhysics
  oldLevelRightEdgePhysics = L12_2
  L12_2 = levelTopEdgePhysics
  oldLevelTopEdgePhysics = L12_2
  L12_2 = levelBottomEdgePhysics
  oldLevelBottomEdgePhysics = L12_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.max
  L13_2 = levelRightEdgePhysics
  L14_2 = L9_2
  L12_2 = L12_2(L13_2, L14_2)
  levelRightEdgePhysics = L12_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.min
  L13_2 = levelLeftEdgePhysics
  L14_2 = L8_2
  L12_2 = L12_2(L13_2, L14_2)
  levelLeftEdgePhysics = L12_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.max
  L13_2 = levelBottomEdgePhysics
  L14_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2)
  levelBottomEdgePhysics = L12_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.min
  L13_2 = levelTopEdgePhysics
  L14_2 = L10_2
  L12_2 = L12_2(L13_2, L14_2)
  levelTopEdgePhysics = L12_2
  L12_2 = setCameraLimits
  L13_2 = levelRightEdgePhysics
  L14_2 = levelLeftEdgePhysics
  L13_2 = L13_2 - L14_2
  L12_2(L13_2)
  L12_2 = {}
  L12_2.top = 5
  L12_2.bottom = 5
  L12_2.left = 5
  L12_2.right = 5
  L13_2 = blockTable
  L13_2 = L13_2.themes
  L14_2 = currentTheme
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.whenZoomingOutKeepLevelAtCenter
  if not L13_2 then
    L12_2.top = 8
  end
  L13_2 = getLevelMetadata
  L14_2 = levelName
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2.edgeLimits
  if L13_2 then
    L13_2 = getLevelMetadata
    L14_2 = levelName
    L13_2 = L13_2(L14_2)
    L12_2 = L13_2.edgeLimits
  end
  L13_2 = setLevelLimits
  L14_2 = L12_2.left
  L14_2 = L8_2 - L14_2
  L15_2 = L12_2.top
  L15_2 = L10_2 - L15_2
  L16_2 = L12_2.right
  L16_2 = L9_2 + L16_2
  L17_2 = L12_2.bottom
  L17_2 = L11_2 + L17_2
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.abs
  L14_2 = rightLimitWorld
  L15_2 = leftLimitWorld
  L14_2 = L14_2 - L15_2
  L13_2 = L13_2(L14_2)
  maxLevelWidthWorld = L13_2
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.abs
  L14_2 = bottomLimitWorld
  L15_2 = topLimitWorld
  L14_2 = L14_2 - L15_2
  L13_2 = L13_2(L14_2)
  maxLevelHeightWorld = L13_2
  L13_2 = screenWidth
  L14_2 = maxLevelWidthWorld
  L13_2 = L13_2 / L14_2
  minWorldXScale = L13_2
  L13_2 = screenHeight
  L14_2 = maxLevelHeightWorld
  L13_2 = L13_2 / L14_2
  minWorldYScale = L13_2
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.min
  L14_2 = minWorldXScale
  L15_2 = minWorldYScale
  L13_2 = L13_2(L14_2, L15_2)
  minWorldScale = L13_2
  L13_2 = gameCamera
  L14_2 = L13_2
  L13_2 = L13_2.setLevelLimitsWorld
  L15_2 = leftLimitWorld
  L16_2 = topLimitWorld
  L17_2 = rightLimitWorld
  L18_2 = bottomLimitWorld
  L19_2 = minWorldScale
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end

recalculateLevelLimits = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.getSliderPosition
  L3_2 = screen
  L3_2 = L3_2.x
  L4_2 = screen
  L4_2 = L4_2.y
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = gameCamera
  L3_2 = L2_2
  L2_2 = L2_2.moveBetweenCameras
  L4_2 = L1_2
  L5_2 = -A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = gameCamera
  L3_2 = L2_2
  L2_2 = L2_2.removeAllCameraTargetObjects
  L2_2(L3_2)
  L2_2 = isInGameMode
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = gameCamera
    L3_2 = L2_2
    L2_2 = L2_2.setCameraFunction
    L4_2 = "ingameCamera"
    L2_2(L3_2, L4_2)
  else
    L2_2 = gameCamera
    L3_2 = L2_2
    L2_2 = L2_2.setCameraFunction
    L4_2 = "menuCamera"
    L2_2(L3_2, L4_2)
  end
  L2_2 = false
  allowResetToBirdCamera = L2_2
end

moveToBirdCamera = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L0_2.strength = -1
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = levelGoals
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.strength
    L7_2 = L0_2.strength
    if L6_2 > L7_2 then
      L0_2 = L5_2
    else
      L6_2 = L5_2.strength
      L7_2 = L0_2.strength
      if L6_2 == L7_2 then
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.random
        L6_2 = L6_2()
        L6_2 = L6_2 * 2
        if 1 < L6_2 then
          L0_2 = L5_2
        end
      end
    end
  end
  L1_2 = L0_2.strength
  if L1_2 == -1 then
    return
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L4_2 = blockTable
  L4_2 = L4_2.blocks
  L5_2 = L0_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.levelFailedCameraOffset
  if L4_2 then
    L2_2 = L4_2.x
    L3_2 = L4_2.y
  end
  L5_2 = physicsToWorldTransform
  L6_2 = L0_2.x
  L6_2 = L6_2 + L2_2
  L7_2 = L0_2.y
  L7_2 = L7_2 + L3_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  L1_2.py = L6_2
  L1_2.px = L5_2
  L1_2.sx = 1
  L5_2 = L1_2.sx
  L1_2.sy = L5_2
  L5_2 = screenWidth
  L5_2 = L5_2 * 0.1
  L1_2.screenWidth = L5_2
  L5_2 = screenHeight
  L5_2 = L5_2 * 0.1
  L1_2.screenHeight = L5_2
  L1_2.removeAfterFocusLost = true
  L1_2.forceCameraZoomLevel = true
  L5_2 = gameCamera
  L6_2 = L5_2
  L5_2 = L5_2.addCameraToIndex
  L7_2 = "levelFailed"
  L8_2 = L1_2
  L9_2 = 100
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = true
  ignoreCameraSweep = L5_2
  L5_2 = gameCamera
  L6_2 = L5_2
  L5_2 = L5_2.moveToCamera
  L7_2 = "levelFailed"
  L8_2 = vLength
  L9_2 = screen
  L9_2 = L9_2.x
  L10_2 = L1_2.px
  L9_2 = L9_2 - L10_2
  L10_2 = screen
  L10_2 = L10_2.y
  L11_2 = L1_2.py
  L10_2 = L10_2 - L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2 = L8_2 * 1.5
  L5_2(L6_2, L7_2, L8_2)
end

initLevelFailedCamera = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = {}
  L6_2 = physicsToWorldTransform
  L7_2 = A0_2
  L8_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L5_2.py = L7_2
  L5_2.px = L6_2
  L5_2.sx = A2_2
  L5_2.sy = A2_2
  L6_2 = screenWidth
  L6_2 = L6_2 * 0.1
  L5_2.screenWidth = L6_2
  L6_2 = screenHeight
  L6_2 = L6_2 * 0.1
  L5_2.screenHeight = L6_2
  L5_2.removeAfterFocusLost = true
  L5_2.forceCameraZoomLevel = true
  L6_2 = gameCamera
  L7_2 = L6_2
  L6_2 = L6_2.addCameraToIndex
  L8_2 = "tempCamera_"
  L9_2 = A4_2
  L8_2 = L8_2 .. L9_2
  L9_2 = L5_2
  L10_2 = A4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = true
  ignoreCameraSweep = L6_2
  L6_2 = gameCamera
  L7_2 = L6_2
  L6_2 = L6_2.moveToCamera
  L8_2 = "tempCamera_"
  L9_2 = A4_2
  L8_2 = L8_2 .. L9_2
  L9_2 = A3_2
  L6_2(L7_2, L8_2, L9_2)
end

createAndMoveToCamera = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = g_resolutionWarningShown
  if L0_2 then
    return
  end
  L0_2 = 0.01
  L1_2 = g_usingGestureControls
  if not L1_2 then
    L1_2 = gameCamera
    L2_2 = L1_2
    L1_2 = L1_2.getCurrentCameraFunction
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
    if L1_2 == "levelStartCamera" then
      L1_2 = cursor
      L1_2 = L1_2.x
      L2_2 = 1 - L0_2
      L3_2 = screenWidth
      L2_2 = L2_2 * L3_2
      if L1_2 >= L2_2 then
        L1_2 = updatePCCameraPanningToDirection
        L2_2 = true
        L1_2(L2_2)
      else
        L1_2 = cursor
        L1_2 = L1_2.x
        L2_2 = screenWidth
        L2_2 = L0_2 * L2_2
        if L1_2 <= L2_2 then
          L1_2 = updatePCCameraPanningToDirection
          L2_2 = false
          L1_2(L2_2)
        end
      end
    end
  end
end

updatePCCameraPanning = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 2
  L2_2 = gameCamera
  L2_2 = L2_2.startCamera
  L2_2 = L2_2.px
  L3_2 = gameCamera
  L3_2 = L3_2.endCamera
  L3_2 = L3_2.px
  if L2_2 > L3_2 then
    A0_2 = not A0_2
  end
  if A0_2 then
    L2_2 = gameCamera
    L2_2 = L2_2.cameraAnimationSlider
    if 1 <= L2_2 then
      L2_2 = gameCamera
      L3_2 = L2_2
      L2_2 = L2_2.getNumberOfCameras
      L2_2 = L2_2(L3_2)
      if 2 < L2_2 then
        L2_2 = gameCamera
        L3_2 = L2_2
        L2_2 = L2_2.setActiveCamerasByIndex
        L4_2 = gameCamera
        L4_2 = L4_2.endCameraIndex
        L5_2 = gameCamera
        L5_2 = L5_2.endCameraIndex
        L5_2 = L5_2 + 1
        L2_2(L3_2, L4_2, L5_2)
      end
    end
    L2_2 = vLength
    L3_2 = gameCamera
    L3_2 = L3_2.startCamera
    L3_2 = L3_2.px
    L4_2 = gameCamera
    L4_2 = L4_2.endCamera
    L4_2 = L4_2.px
    L3_2 = L3_2 - L4_2
    L4_2 = gameCamera
    L4_2 = L4_2.startCamera
    L4_2 = L4_2.py
    L5_2 = gameCamera
    L5_2 = L5_2.endCamera
    L5_2 = L5_2.py
    L4_2 = L4_2 - L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 * L1_2
    sweepSpeed = L2_2
    L2_2 = gameCamera
    L3_2 = L2_2
    L2_2 = L2_2.getSliderPosition
    L4_2 = screen
    L4_2 = L4_2.x
    L5_2 = screen
    L5_2 = L5_2.y
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = gameCamera
    L4_2 = L3_2
    L3_2 = L3_2.moveBetweenCameras
    L5_2 = L2_2
    L6_2 = sweepSpeed
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = gameCamera
    L2_2 = L2_2.cameraAnimationSlider
    if L2_2 <= 0 then
      L2_2 = gameCamera
      L3_2 = L2_2
      L2_2 = L2_2.getNumberOfCameras
      L2_2 = L2_2(L3_2)
      if 2 < L2_2 then
        L2_2 = gameCamera
        L3_2 = L2_2
        L2_2 = L2_2.setActiveCamerasByIndex
        L4_2 = gameCamera
        L4_2 = L4_2.startCameraIndex
        L4_2 = L4_2 - 1
        L5_2 = gameCamera
        L5_2 = L5_2.startCameraIndex
        L2_2(L3_2, L4_2, L5_2)
      end
    end
    L2_2 = vLength
    L3_2 = gameCamera
    L3_2 = L3_2.startCamera
    L3_2 = L3_2.px
    L4_2 = gameCamera
    L4_2 = L4_2.endCamera
    L4_2 = L4_2.px
    L3_2 = L3_2 - L4_2
    L4_2 = gameCamera
    L4_2 = L4_2.startCamera
    L4_2 = L4_2.py
    L5_2 = gameCamera
    L5_2 = L5_2.endCamera
    L5_2 = L5_2.py
    L4_2 = L4_2 - L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 * L1_2
    sweepSpeed = L2_2
    L2_2 = gameCamera
    L3_2 = L2_2
    L2_2 = L2_2.getSliderPosition
    L4_2 = screen
    L4_2 = L4_2.x
    L5_2 = screen
    L5_2 = L5_2.y
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = gameCamera
    L4_2 = L3_2
    L3_2 = L3_2.moveBetweenCameras
    L5_2 = L2_2
    L6_2 = sweepSpeed
    L6_2 = -L6_2
    L3_2(L4_2, L5_2, L6_2)
  end
end

updatePCCameraPanningToDirection = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = g_toggleLevelCameraControl
  if L1_2 == true then
    L1_2 = true
    ignoreCameraMovement = L1_2
    L1_2 = true
    ignoreCameraSweep = L1_2
    return
  end
  ignoreCameraMovement = A0_2
  ignoreCameraSweep = A0_2
end

toggleCameraControl = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = gameCamera
  L3_2 = L2_2
  L2_2 = L2_2.getNumOfCameraTargetObjects
  L2_2 = L2_2(L3_2)
  if 0 < L2_2 then
    L2_2 = isKeyPressed
    L3_2 = "LBUTTON"
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = gameCamera
      L3_2 = L2_2
      L2_2 = L2_2.getCameraTargetObject
      L4_2 = 1
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = physicsToScreenTransform
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L3_2, L4_2 = L3_2(L4_2, L5_2)
      L5_2 = screen
      L5_2 = L5_2.x
      L5_2 = L3_2 - L5_2
      L6_2 = screen
      L6_2 = L6_2.y
      L6_2 = L4_2 - L6_2
      L7_2 = vLength
      L8_2 = L5_2
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = screenWidth
      L8_2 = L8_2 * 0.01
      if L7_2 > L8_2 then
        L7_2 = screen
        L8_2 = screen
        L9_2 = screen
        L9_2 = L9_2.x
        L10_2 = L5_2 * A1_2
        L11_2 = screenWidth
        L10_2 = L10_2 * L11_2
        L10_2 = L10_2 * 0.2
        L9_2 = L9_2 + L10_2
        L10_2 = L6_2 * A1_2
        L11_2 = screenHeight
        L10_2 = L10_2 * L11_2
        L10_2 = L10_2 * 0.2
        L8_2.y = L10_2
        L7_2.x = L9_2
      else
        L7_2 = screen
        L8_2 = screen
        L9_2 = L3_2
        L8_2.y = L4_2
        L7_2.x = L9_2
      end
  end
  else
    L2_2 = gameCamera
    L2_2 = L2_2.removeAllCameraTargetObjects
    L2_2()
    L2_2 = gameCamera
    L3_2 = L2_2
    L2_2 = L2_2.setCameraFunction
    L4_2 = "ingame"
    L2_2(L3_2, L4_2)
  end
end

mightyEagleCamera = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.x
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L3_2 = L3_2()
  L4_2 = A1_2.speed
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 - L3_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L3_2 = L3_2()
  L4_2 = A1_2.speed
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  A1_2.x = L2_2
  L2_2 = A1_2.y
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L3_2 = L3_2()
  L4_2 = A1_2.speed
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 - L3_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L3_2 = L3_2()
  L4_2 = A1_2.speed
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  A1_2.y = L2_2
end

cameraShakeModeMightyEagle = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A3_2 ~= 0 then
    L4_2 = _G
    L4_2 = L4_2.table
    L4_2 = L4_2.insert
    L5_2 = g_cameraShakes
    L6_2 = {}
    L6_2.x = 0
    L6_2.y = 0
    L6_2.rotation = 0
    L7_2 = A1_2 or L7_2
    if not A1_2 then
      L7_2 = 5
    end
    L8_2 = gameWorldScale
    L7_2 = L7_2 * L8_2
    L7_2 = L7_2 * 0.1
    L6_2.speed = L7_2
    L7_2 = A2_2 or L7_2
    if not A2_2 then
      L7_2 = 2
    end
    L6_2.maxDistortion = L7_2
    L7_2 = A3_2 or L7_2
    if not A3_2 then
      L7_2 = 1
    end
    L6_2.timer = L7_2
    L7_2 = A3_2 or L7_2
    if not A3_2 then
      L7_2 = 1
    end
    L6_2.lifeTime = L7_2
    L7_2 = A0_2 or L7_2
    if not A0_2 then
      L7_2 = cameraShakeModeRandom
    end
    L6_2.updateFunction = L7_2
    L6_2.running = true
    L4_2(L5_2, L6_2)
    L4_2 = g_cameraShakes
    L5_2 = g_cameraShakes
    L5_2 = #L5_2
    L4_2 = L4_2[L5_2]
    return L4_2
  end
end

addCameraShake = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.timer
  if 0 < L2_2 then
    L2_2 = A1_2.lifeTime
    if L2_2 ~= 0 then
      L2_2 = A1_2.x
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.random
      L3_2 = L3_2()
      L3_2 = L3_2 - 0.5
      L4_2 = A1_2.speed
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * A0_2
      L4_2 = A1_2.timer
      L3_2 = L3_2 * L4_2
      L4_2 = A1_2.lifeTime
      L3_2 = L3_2 / L4_2
      L2_2 = L2_2 + L3_2
      A1_2.x = L2_2
      L2_2 = A1_2.y
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.random
      L3_2 = L3_2()
      L3_2 = L3_2 - 0.5
      L4_2 = A1_2.speed
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * A0_2
      L4_2 = A1_2.timer
      L3_2 = L3_2 * L4_2
      L4_2 = A1_2.lifeTime
      L3_2 = L3_2 / L4_2
      L2_2 = L2_2 + L3_2
      A1_2.y = L2_2
    end
  end
  L2_2 = A1_2.timer
  L2_2 = L2_2 - A0_2
  A1_2.timer = L2_2
end

cameraShakeModeRandom = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.timer
  if 0 < L2_2 then
    L2_2 = A1_2.lifeTime
    if L2_2 ~= 0 then
      L2_2 = A1_2.rotation
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.random
      L3_2 = L3_2()
      L4_2 = A1_2.speed
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * A0_2
      L2_2 = L2_2 + L3_2
      A1_2.rotation = L2_2
      L2_2 = _G
      L2_2 = L2_2.math
      L2_2 = L2_2.sin
      L3_2 = A1_2.rotation
      L2_2 = L2_2(L3_2)
      L3_2 = A1_2.maxDistortion
      L2_2 = L2_2 * L3_2
      L3_2 = A1_2.timer
      L2_2 = L2_2 * L3_2
      L3_2 = A1_2.lifeTime
      L2_2 = L2_2 / L3_2
      A1_2.x = L2_2
      L2_2 = _G
      L2_2 = L2_2.math
      L2_2 = L2_2.random
      L2_2 = L2_2()
      L2_2 = L2_2 - 0.5
      L3_2 = A1_2.maxDistortion
      L2_2 = L2_2 * L3_2
      L3_2 = A1_2.timer
      L2_2 = L2_2 * L3_2
      L3_2 = A1_2.lifeTime
      L2_2 = L2_2 / L3_2
      A1_2.y = L2_2
    end
  end
  L2_2 = A1_2.timer
  L2_2 = L2_2 - A0_2
  A1_2.timer = L2_2
end

cameraShakeModeSine = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = g_cameraShakes
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = g_cameraShakePosition
  L1_2.x = 0
  L1_2 = g_cameraShakePosition
  L1_2.y = 0
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = g_cameraShakes
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.running
    if L6_2 then
      L6_2 = L5_2.updateFunction
      if L6_2 ~= nil then
        L6_2 = L5_2.updateFunction
        L7_2 = A0_2
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
      L6_2 = L5_2.maxDistortion
      L7_2 = L5_2.timer
      L6_2 = L6_2 * L7_2
      L7_2 = L5_2.lifeTime
      L6_2 = L6_2 / L7_2
      L7_2 = L5_2.x
      if L6_2 < L7_2 then
        L5_2.x = L6_2
      else
        L7_2 = L5_2.x
        L8_2 = -L6_2
        if L7_2 < L8_2 then
          L7_2 = -L6_2
          L5_2.x = L7_2
        end
      end
      L7_2 = L5_2.y
      if L6_2 < L7_2 then
        L5_2.y = L6_2
      else
        L7_2 = L5_2.y
        L8_2 = -L6_2
        if L7_2 < L8_2 then
          L7_2 = -L6_2
          L5_2.y = L7_2
        end
      end
      L7_2 = g_cameraShakePosition
      L8_2 = g_cameraShakePosition
      L8_2 = L8_2.x
      L9_2 = L5_2.x
      L8_2 = L8_2 + L9_2
      L7_2.x = L8_2
      L7_2 = g_cameraShakePosition
      L8_2 = g_cameraShakePosition
      L8_2 = L8_2.y
      L9_2 = L5_2.y
      L8_2 = L8_2 + L9_2
      L7_2.y = L8_2
    end
  end
  L1_2 = 1
  while true do
    L2_2 = g_cameraShakes
    L2_2 = #L2_2
    if not (L1_2 <= L2_2) then
      break
    end
    L2_2 = g_cameraShakes
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.timer
    if L2_2 <= 0 then
      L2_2 = _G
      L2_2 = L2_2.table
      L2_2 = L2_2.remove
      L3_2 = g_cameraShakes
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    else
      L1_2 = L1_2 + 1
    end
  end
end

updateCameraShake = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = gameCamera
  L3_2 = L2_2
  L2_2 = L2_2.getTempEndCamera
  L2_2 = L2_2(L3_2)
  L3_2 = gameCamera
  L4_2 = L3_2
  L3_2 = L3_2.getTempStartCamera
  L3_2 = L3_2(L4_2)
  L4_2 = 0.5
  cameraStartTime = L4_2
  L4_2 = getLevelMetadata
  L5_2 = levelName
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.drawCameraPoints
  if L4_2 then
    L4_2 = myCameras
    if L4_2 == nil then
      L4_2 = objects
      L4_2 = L4_2.castleCameraData
      L5_2 = deviceModel
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.otherCameras
      myCameras = L4_2
      L4_2 = 0
      changeCameraTimer = L4_2
      L4_2 = levelName
      L5_2 = getEpisodeSelectionLevelName
      L5_2 = L5_2()
      if L4_2 ~= L5_2 then
        L4_2 = levelName
        if L4_2 ~= "LevelSelection" then
          goto lbl_144
        end
      end
      L4_2 = 0
      L5_2 = levelName
      L6_2 = getEpisodeSelectionLevelName
      L6_2 = L6_2()
      if L5_2 == L6_2 then
        L5_2 = SettingsWrapper
        L6_2 = L5_2
        L5_2 = L5_2.getLastOpenedEpisode
        L5_2 = L5_2(L6_2)
        L4_2 = L5_2
        L5_2 = g_defaultCameraChangeSpeedLimit
        L5_2 = L5_2 * 8
        g_cameraChangeSpeedLimit = L5_2
        L5_2 = g_defaultCameraAnimationFriction
        L5_2 = L5_2 * 8
        g_cameraAnimationFriction = L5_2
        L5_2 = g_defaultMinVelocityMenu
        L5_2 = L5_2 * 2
        g_minVelocityMenu = L5_2
      else
        L5_2 = SettingsWrapper
        L6_2 = L5_2
        L5_2 = L5_2.getLastLevelPage
        L7_2 = currentFolder
        L5_2 = L5_2(L6_2, L7_2)
        L4_2 = L5_2
        L5_2 = g_defaultCameraChangeSpeedLimit
        g_cameraChangeSpeedLimit = L5_2
        L5_2 = g_defaultCameraAnimationFriction
        g_cameraAnimationFriction = L5_2
        L5_2 = g_defaultMinVelocityMenu
        g_minVelocityMenu = L5_2
      end
      L5_2 = levelName
      if L5_2 == "LevelSelection" then
        L5_2 = currentFolder
        if L5_2 ~= "chapter_bonus_light" then
          L5_2 = currentFolder
          if L5_2 ~= "chapter_bonus_dark" then
            goto lbl_83
          end
        end
        L5_2 = g_defaultCameraChangeSpeedLimit
        L5_2 = L5_2 * 3
        g_cameraChangeSpeedLimit = L5_2
        L5_2 = g_defaultCameraAnimationFriction
        L5_2 = L5_2 * 3
        g_cameraAnimationFriction = L5_2
        L5_2 = g_defaultMinVelocityMenu
        L5_2 = L5_2 * 2
        g_minVelocityMenu = L5_2
      end
      ::lbl_83::
      if L4_2 == nil then
        L4_2 = 0
      end
      L5_2 = 0
      cameraStartTime = L5_2
      L5_2 = 0
      castleCameraTimer = L5_2
      L5_2 = gameCamera
      L6_2 = L5_2
      L5_2 = L5_2.linkCameras
      L7_2 = "bird"
      L8_2 = "castle"
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = gameCamera
      L6_2 = L5_2
      L5_2 = L5_2.getNumberOfCameras
      L5_2 = L5_2(L6_2)
      if 2 < L5_2 then
        L6_2 = "castle"
        L7_2 = ""
        L8_2 = 3
        L9_2 = L5_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = ""
          L13_2 = L11_2
          L7_2 = L12_2 .. L13_2
          L12_2 = gameCamera
          L13_2 = L12_2
          L12_2 = L12_2.linkCameras
          L14_2 = L6_2
          L15_2 = L7_2
          L12_2(L13_2, L14_2, L15_2)
          L6_2 = L7_2
        end
      end
      L6_2 = gameCamera
      L7_2 = L6_2
      L6_2 = L6_2.calculateResolutionCorrectCameras
      L6_2(L7_2)
      if L4_2 == 0 then
        L6_2 = gameCamera
        L7_2 = L6_2
        L6_2 = L6_2.setActiveCamerasByIndex
        L8_2 = L4_2 + 1
        L9_2 = L4_2 + 2
        L6_2(L7_2, L8_2, L9_2)
      else
        L6_2 = gameCamera
        L7_2 = L6_2
        L6_2 = L6_2.setActiveCamerasByIndex
        L8_2 = L4_2
        L9_2 = L4_2 + 1
        L6_2(L7_2, L8_2, L9_2)
      end
      L6_2 = gameCamera
      L7_2 = L6_2
      L6_2 = L6_2.updateActiveCameras
      L6_2(L7_2)
      L6_2 = gameCamera
      L7_2 = L6_2
      L6_2 = L6_2.setViewToCameraByIndex
      L8_2 = L4_2 + 1
      L6_2(L7_2, L8_2)
      L6_2 = gameCamera
      L7_2 = L6_2
      L6_2 = L6_2.setCameraFunction
      L8_2 = "menuCamera"
      L6_2(L7_2, L8_2)
      return
    end
  end
  ::lbl_144::
  L4_2 = levelName
  if L4_2 == "LevelSelection" then
    L4_2 = castleCameraTimer
    L5_2 = cameraStartTime
    if not (L4_2 < L5_2) then
      goto lbl_222
    end
    L4_2 = L2_2.px
    L5_2 = L2_2.py
    L6_2 = g_oldLevelName
    L7_2 = levelName
    if L6_2 == L7_2 then
      L6_2 = numberOfAttemptsInLevel
      if L6_2 ~= 0 then
        L6_2 = startedFromEditor
        if not L6_2 then
          goto lbl_166
        end
      end
    end
    L6_2 = L2_2.sx
    worldScale = L6_2
    goto lbl_171
    ::lbl_166::
    L6_2 = gameCamera
    L7_2 = L6_2
    L6_2 = L6_2.getTempEndCamera
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.sx
    worldScale = L6_2
    ::lbl_171::
    L6_2 = screen
    L6_2.x = L4_2
    L6_2 = screen
    L6_2.y = L5_2
    L6_2 = castleCameraTimer
    L6_2 = L6_2 + A1_2
    castleCameraTimer = L6_2
    L6_2 = storeCameraPosition
    L6_2()
    return
  else
    L4_2 = levelName
    L5_2 = getEpisodeSelectionLevelName
    L5_2 = L5_2()
    if L4_2 == L5_2 then
      return
    else
      L4_2 = castleCameraTimer
      if L4_2 < 2 then
        L4_2 = L2_2.px
        L5_2 = L2_2.py
        L6_2 = g_oldLevelName
        L7_2 = levelName
        if L6_2 == L7_2 then
          L6_2 = numberOfAttemptsInLevel
          if L6_2 ~= 0 then
            L6_2 = startedFromEditor
            if not L6_2 then
              goto lbl_207
            end
          end
        end
        L6_2 = L2_2.sx
        worldScale = L6_2
        goto lbl_212
        ::lbl_207::
        L6_2 = gameCamera
        L7_2 = L6_2
        L6_2 = L6_2.getTempEndCamera
        L6_2 = L6_2(L7_2)
        L6_2 = L6_2.sx
        worldScale = L6_2
        ::lbl_212::
        L6_2 = screen
        L6_2.x = L4_2
        L6_2 = screen
        L6_2.y = L5_2
        L6_2 = castleCameraTimer
        L6_2 = L6_2 + A1_2
        castleCameraTimer = L6_2
        L6_2 = storeCameraPosition
        L6_2()
        return
      end
    end
  end
  ::lbl_222::
  L4_2 = g_defaultCameraChangeSpeedLimit
  g_cameraChangeSpeedLimit = L4_2
  L4_2 = g_defaultCameraAnimationFriction
  g_cameraAnimationFriction = L4_2
  L4_2 = g_defaultMinVelocityMenu
  g_minVelocityMenu = L4_2
  L4_2 = 0
  castleCameraTimer = L4_2
  L4_2 = gameCamera
  L4_2.cameraAnimationSliderTarget = 0
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.abs
  L5_2 = vLength
  L6_2 = L2_2.px
  L7_2 = L3_2.px
  L6_2 = L6_2 - L7_2
  L7_2 = L2_2.py
  L8_2 = L3_2.py
  L7_2 = L7_2 - L8_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = -L4_2
  velocity = L4_2
  L4_2 = gameCamera
  L5_2 = L4_2
  L4_2 = L4_2.getSliderPosition
  L6_2 = screen
  L6_2 = L6_2.x
  L7_2 = screen
  L7_2 = L7_2.y
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = gameCamera
  L6_2 = L5_2
  L5_2 = L5_2.moveBetweenCameras
  L7_2 = L4_2
  L8_2 = velocity
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = gameCamera
  L6_2 = L5_2
  L5_2 = L5_2.setCameraFunction
  L7_2 = "ingameCamera"
  L5_2(L6_2, L7_2)
end

levelStartCamera = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = setCameraTargetObject
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L1_2(L2_2)
end

setCameraTarget = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = gameCamera
    L2_2 = L1_2
    L1_2 = L1_2.addCameraTargetObject
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = gameCamera
    L2_2 = L1_2
    L1_2 = L1_2.removeAllCameraTargetObjects
    L1_2(L2_2)
  end
end

setCameraTargetObject = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.removeCameraTargetObject
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

removeCameraTargetObject = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.getCameraTargetObject
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end

getCameraTargetObject = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = gameCamera
  L1_2 = L0_2
  L0_2 = L0_2.storeCameraPosition
  L2_2 = screen
  L2_2 = L2_2.x
  L3_2 = screen
  L3_2 = L3_2.y
  L4_2 = worldScale
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

storeCameraPosition = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.setAllowInput
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = processManager
  L1_2 = L0_2
  L0_2 = L0_2.insertAction
  L2_2 = {}
  L2_2.name = "appearTutorialFromLeft"
  L2_2.finished = false
  L2_2.item = nil
  L2_2.start = 0
  L2_2.duration = 1.7
  L3_2 = {}
  L2_2.meta = L3_2
  
  function L3_2(A0_3, A1_3, A2_3, A3_3, A4_3)
  end
  
  L2_2.action = L3_2
  
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = menuManager
    L1_3 = L0_3
    L0_3 = L0_3.setAllowInput
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  
  L2_2.onFinish = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = processManager
  L1_2 = L0_2
  L0_2 = L0_2.start
  L0_2(L1_2)
  L0_2 = true
  leftSweep = L0_2
  L0_2 = -500
  sweepSpeed = L0_2
  L0_2 = gameCamera
  L1_2 = L0_2
  L0_2 = L0_2.getCurrentCameraIndex
  L0_2 = L0_2(L1_2)
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.setActiveCamerasByIndex
  L3_2 = L0_2
  L4_2 = L0_2 + 1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.setViewToCameraByIndex
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.setCameraFunction
  L3_2 = "menuCamera"
  L1_2(L2_2, L3_2)
  L1_2 = 0
  cameraStartTime = L1_2
  L1_2 = 0
  castleCameraTimer = L1_2
end

sweepCameraRight = L0_1
