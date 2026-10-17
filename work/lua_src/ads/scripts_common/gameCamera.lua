local L0_1, L1_1
L0_1 = true
g_useLevelLimits = L0_1
L0_1 = true
g_useLeftLimit = L0_1
L0_1 = true
g_useRightLimit = L0_1
L0_1 = false
g_useSkyLimit = L0_1
L0_1 = true
g_useGroundLimit = L0_1
L0_1 = true
g_limitAnimationBetweenCameras = L0_1
L0_1 = true
g_allowFreeZoom = L0_1
L0_1 = 200
g_targetObjectOverEdgeRemovalDistance = L0_1
L0_1 = 3.5
g_cameraSpringForceConstant = L0_1
L0_1 = 2
g_cameraSpringForceConstantNoTarget = L0_1
L0_1 = 450
g_defaultCameraChangeSpeedLimit = L0_1
L0_1 = g_defaultCameraChangeSpeedLimit
g_cameraChangeSpeedLimit = L0_1
L0_1 = 300
g_defaultCameraAnimationFriction = L0_1
L0_1 = g_defaultCameraAnimationFriction
g_cameraAnimationFriction = L0_1
L0_1 = gameWorldScale
L0_1 = 350 * L0_1
g_cameraTargetScreenEdgePadding = L0_1
L0_1 = 450
g_defaultMinVelocityMenu = L0_1
L0_1 = g_defaultMinVelocityMenu
g_minVelocityMenu = L0_1
L0_1 = 3000
g_maxVelocity = L0_1
L0_1 = {}
L0_1.x = 0
L0_1.y = 0
g_currentCameraVisualization = L0_1
L0_1 = {}
g_cameraAnimationVisualization = L0_1
L0_1 = {}
g_cameraAnimationVisualizationWithBoundaries = L0_1
L0_1 = 1
g_panningModeClassic = L0_1
L0_1 = 2
g_panningModeLinear = L0_1
L0_1 = 3
g_panningModeFree = L0_1
L0_1 = 1
g_tweeningLinearClassic = L0_1
L0_1 = 2
g_tweeningLinear = L0_1
L0_1 = 3
g_tweeningEaseIn = L0_1
L0_1 = 4
g_tweeningEaseOut = L0_1
L0_1 = 5
g_tweeningEaseInOut = L0_1
L0_1 = 1
g_linkPrevious = L0_1
L0_1 = 2
g_linkNext = L0_1
L0_1 = {}
Camera = L0_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = {}
  A1_2.cameraTargetObjects = L2_2
  A1_2.cameraTargetObjectRemoved = false
  L2_2 = {}
  A1_2.cameraFunctions = L2_2
  L2_2 = {}
  A1_2.callbacks = L2_2
  A1_2.currentCameraFunction = nil
  A1_2.currentCameraFunctionName = nil
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  A1_2.animationScreen = L2_2
  A1_2.animationWorldScale = 1
  A1_2.animationWorldScale2 = 1
  A1_2.cameraAnimationSlider = 0
  L2_2 = {}
  A1_2.deltaCameraValues = L2_2
  L2_2 = {}
  A1_2.originalCameras = L2_2
  L2_2 = {}
  A1_2.resolutionCorrectedCameras = L2_2
  A1_2.velocity = 0
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  L2_2.sx = 0
  L2_2.timer = 0
  A1_2.panDelta = L2_2
  L2_2 = g_panningModeClassic
  A1_2.panningMode = L2_2
  A1_2.allowCameraAnimation = true
  A1_2.isPanningCamera = false
  A1_2.isSwipingCamera = false
  A1_2.moveToClosestCameraAfterPanning = false
  L2_2 = g_tweeningLinearClassic
  A1_2.tweeningMode = L2_2
  L2_2 = {}
  A1_2.startCamera = L2_2
  L2_2 = {}
  A1_2.endCamera = L2_2
  A1_2.startCameraIndex = -1
  A1_2.endCameraIndex = -1
  L2_2 = {}
  A1_2.levelLimits = L2_2
  A1_2.zoomPulse = false
  A1_2.maxZoomLevel = true
  A1_2.oldZoomLevel = 0
  A1_2.currentZoomedScale = 1
  L2_2 = _G
  L2_2 = L2_2.setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L3_2 = A1_2
  L2_2 = A1_2.init
  L2_2(L3_2)
  return A1_2
end

L0_1.new = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.px = 0
  L1_2.py = 0
  L1_2.sx = 0
  L1_2.timer = 0
  A0_2.deltaCameraValues = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.registerCameraFunction
  L3_2 = "ingameCamera"
  L4_2 = Camera
  L4_2 = L4_2.ingameCamera
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.registerCameraFunction
  L3_2 = "menuCamera"
  L4_2 = Camera
  L4_2 = L4_2.menuCamera
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.init = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end

L0_1.isInitialized = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2
  A0_2.gameEngine = A1_2
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.g_minSweepSpeedMenu
  g_minVelocityMenu = L2_2
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.g_maxSweepSpeed
  g_maxVelocity = L2_2
end

L0_1.setGameEngine = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A0_2.levelLimits
  L6_2.left = A1_2
  L6_2 = A0_2.levelLimits
  L6_2.top = A2_2
  L6_2 = A0_2.levelLimits
  L6_2.right = A3_2
  L6_2 = A0_2.levelLimits
  L6_2.bottom = A4_2
  L6_2 = A0_2.levelLimits
  L6_2.minScale = A5_2
  L6_2 = A0_2.levelLimits
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.abs
  L8_2 = A3_2 - A1_2
  L7_2 = L7_2(L8_2)
  L6_2.maxLevelWidth = L7_2
  L6_2 = A0_2.levelLimits
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.abs
  L8_2 = A4_2 - A2_2
  L7_2 = L7_2(L8_2)
  L6_2.maxLevelHeight = L7_2
end

L0_1.setLevelLimitsWorld = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.cameraFunctions
  L2_2 = L2_2[A1_2]
  A0_2.currentCameraFunction = L2_2
  L2_2 = A0_2.currentCameraFunction
  if L2_2 ~= nil then
    A0_2.currentCameraFunctionName = A1_2
  else
    A0_2.currentCameraFunctionName = nil
  end
end

L0_1.setCameraFunction = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.cameraFunctions
  L3_2[A1_2] = A2_2
end

L0_1.registerCameraFunction = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.currentCameraFunctionName
  return L1_2
end

L0_1.getCurrentCameraFunction = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.callbacks
  L3_2[A1_2] = A2_2
end

L0_1.registerCallback = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.callbacks
  L2_2[A1_2] = nil
end

L0_1.removeCallback = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.cameraTargetObjectRemoved
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.getNumOfCameraTargetObjects
    L2_2 = L2_2(L3_2)
    if L2_2 == 0 then
      A0_2.cameraTargetObjectRemoved = false
      L2_2 = A0_2.isPanningCamera
      if L2_2 == false then
        L2_2 = A0_2.isSwipingCamera
        if L2_2 == false then
          L2_2 = A0_2.gameEngine
          L2_2 = L2_2.screen
          L2_2 = L2_2.x
          L3_2 = A0_2.gameEngine
          L3_2 = L3_2.screen
          L3_2 = L3_2.y
          L4_2 = A0_2.gameEngine
          L4_2 = L4_2.worldScale
          L6_2 = A0_2
          L5_2 = A0_2.storeCameraPosition
          L7_2 = L2_2
          L8_2 = L3_2
          L9_2 = L4_2
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L6_2 = A0_2
          L5_2 = A0_2.moveToClosestCamera
          L7_2 = L2_2
          L8_2 = L3_2
          L5_2(L6_2, L7_2, L8_2)
        end
      end
    end
  end
  L2_2 = A0_2.currentCameraFunction
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.currentCameraFunction
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.startedFromEditor
  if not L2_2 then
    L2_2 = A0_2.currentCameraFunction
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.forceScreenLimits
      L2_2(L3_2)
    end
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2.callbacks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2
    L8_2 = A1_2
    L7_2(L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.defaultCamera
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.g_showCameraDebugData
  if L2_2 then
    L2_2 = g_currentCameraVisualization
    L3_2 = A0_2.gameEngine
    L3_2 = L3_2.screen
    L3_2 = L3_2.x
    L2_2.x = L3_2
    L2_2 = g_currentCameraVisualization
    L3_2 = A0_2.gameEngine
    L3_2 = L3_2.screen
    L3_2 = L3_2.y
    L2_2.y = L3_2
  end
end

L0_1.update = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2
  A0_2.isPanningCamera = false
  A0_2.isSwipingCamera = false
end

L0_1.resetControlFlags = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = assert
  L5_2 = A0_2
  L4_2 = A0_2.getCameraIndex
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 < 0
  L5_2 = "Trying to add camera with same name! ("
  L6_2 = A1_2
  L7_2 = ")"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.originalCameras
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2.addCameraToIndex
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.addCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2.originalCameras
  L5_2 = {}
  L4_2[A3_2] = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L4_2.name = A1_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.px
  L4_2.px = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.py
  L4_2.py = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.sx
  L4_2.sx = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.sy
  L4_2.sy = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.px
  L6_2 = A2_2.screenWidth
  L6_2 = L6_2 * 0.5
  L7_2 = A2_2.sx
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 - L6_2
  L4_2.left = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.px
  L6_2 = A2_2.screenWidth
  L6_2 = L6_2 * 0.5
  L7_2 = A2_2.sx
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 + L6_2
  L4_2.right = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.py
  L6_2 = A2_2.screenHeight
  L6_2 = L6_2 * 0.5
  L7_2 = A2_2.sy
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 - L6_2
  L4_2.top = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.py
  L6_2 = A2_2.screenHeight
  L6_2 = L6_2 * 0.5
  L7_2 = A2_2.sy
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 + L6_2
  L4_2.bottom = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.screenWidth
  L4_2.screenWidth = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.screenHeight
  L4_2.screenHeight = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L5_2 = A2_2.otherCameras
  L4_2.otherCameras = L5_2
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L4_2.prev = nil
  L4_2 = A2_2.prev
  if L4_2 ~= nil then
    L4_2 = A0_2.originalCameras
    L4_2 = L4_2[A3_2]
    L5_2 = {}
    L6_2 = A2_2.prev
    L6_2 = L6_2.name
    L5_2.name = L6_2
    L6_2 = A2_2.prev
    L6_2 = L6_2.callback
    L5_2.callback = L6_2
    L4_2.prev = L5_2
  end
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L4_2.next = nil
  L4_2 = A2_2.next
  if L4_2 ~= nil then
    L4_2 = A0_2.originalCameras
    L4_2 = L4_2[A3_2]
    L5_2 = {}
    L6_2 = A2_2.next
    L6_2 = L6_2.name
    L5_2.name = L6_2
    L6_2 = A2_2.next
    L6_2 = L6_2.callback
    L5_2.callback = L6_2
    L4_2.next = L5_2
  end
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L4_2.removeAfterFocusLost = false
  L4_2 = A2_2.removeAfterFocusLost
  if L4_2 ~= nil then
    L4_2 = A0_2.originalCameras
    L4_2 = L4_2[A3_2]
    L5_2 = A2_2.removeAfterFocusLost
    L4_2.removeAfterFocusLost = L5_2
  end
  L4_2 = A0_2.originalCameras
  L4_2 = L4_2[A3_2]
  L4_2.forceCameraZoomLevel = false
  L4_2 = A2_2.forceCameraZoomLevel
  if L4_2 ~= nil then
    L4_2 = A0_2.originalCameras
    L4_2 = L4_2[A3_2]
    L5_2 = A2_2.forceCameraZoomLevel
    L4_2.forceCameraZoomLevel = L5_2
  end
  L4_2 = A0_2.resolutionCorrectedCameras
  L6_2 = A0_2
  L5_2 = A0_2.getResolutionCorrectCameraData
  L7_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2[A3_2] = L5_2
end

L0_1.addCameraToIndex = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.getCameraIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.startCamera
  L3_2 = L3_2.name
  L4_2 = A0_2.endCamera
  L4_2 = L4_2.name
  L5_2 = assert
  L6_2 = A0_2.startCameraIndex
  L6_2 = L2_2 ~= L6_2
  L7_2 = "Trying to remove camera that is current target!"
  L5_2(L6_2, L7_2)
  if 0 < L2_2 then
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.remove
    L6_2 = A0_2.originalCameras
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.remove
    L6_2 = A0_2.resolutionCorrectedCameras
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.getCameraIndex
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.startCameraIndex = L5_2
    L6_2 = A0_2
    L5_2 = A0_2.getCameraIndex
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.endCameraIndex = L5_2
    L6_2 = A0_2
    L5_2 = A0_2.updateActiveCameras
    L5_2(L6_2)
  end
end

L0_1.removeCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2.getCameraIndex
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getCameraIndex
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if L4_2 ~= -1 and L5_2 ~= -1 then
    L6_2 = A0_2.originalCameras
    L6_2 = L6_2[L4_2]
    L7_2 = {}
    L7_2.name = A2_2
    L7_2.callback = A3_2
    L6_2.next = L7_2
    L6_2 = A0_2.originalCameras
    L6_2 = L6_2[L5_2]
    L7_2 = {}
    L7_2.name = A1_2
    L7_2.callback = A3_2
    L6_2.prev = L7_2
  end
end

L0_1.linkCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L6_2 = A0_2
  L5_2 = A0_2.getCameraIndex
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 ~= -1 then
    L6_2 = g_linkPrevious
    if A3_2 == L6_2 then
      L6_2 = A0_2.originalCameras
      L6_2 = L6_2[L5_2]
      L7_2 = {}
      L7_2.name = A2_2
      L7_2.callback = A4_2
      L6_2.prev = L7_2
    else
      L6_2 = g_linkNext
      if A3_2 == L6_2 then
        L6_2 = A0_2.originalCameras
        L6_2 = L6_2[L5_2]
        L7_2 = {}
        L7_2.name = A2_2
        L7_2.callback = A4_2
        L6_2.next = L7_2
      end
    end
  end
end

L0_1.setCameraLink = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.getCameraIndex
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= -1 then
    L4_2 = g_linkPrevious
    if A2_2 == L4_2 then
      L4_2 = A0_2.originalCameras
      L4_2 = L4_2[L3_2]
      L4_2.prev = nil
    else
      L4_2 = g_linkNext
      if A2_2 == L4_2 then
        L4_2 = A0_2.originalCameras
        L4_2 = L4_2[L3_2]
        L4_2.next = nil
      end
    end
  end
end

L0_1.removeCameraLink = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.getCamera
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getCamera
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2.next
  L6_2 = second
  if L5_2 == L6_2 then
    L5_2 = L4_2.prev
    if L5_2 == A1_2 then
      L3_2.next = nil
      L4_2.prev = nil
      L5_2 = true
      return L5_2
    end
  end
  L5_2 = false
  return L5_2
end

L0_1.removeLinks = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.originalCameras
  L3_2 = L3_2[A1_2]
  L3_2.name = A2_2
end

L0_1.setCameraName = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.getCameraIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = assert
  L4_2 = L2_2 ~= -1
  L5_2 = "Camera named "
  L6_2 = A1_2
  L7_2 = " was not found!"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.getCameraByIndex
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end

L0_1.getCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2.originalCameras
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = -1
  return L2_2
end

L0_1.getCameraIndex = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = assert
  L3_2 = A0_2.resolutionCorrectedCameras
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2 ~= nil
  L4_2 = "Invalid camera index!"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.resolutionCorrectedCameras
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getCameraByIndex = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.originalCameras
  L1_2 = #L1_2
  return L1_2
end

L0_1.getNumberOfCameras = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.calculateResolutionCorrectCameras
  L1_2(L2_2)
end

L0_1.resolutionChanged = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2.originalCameras
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.resolutionCorrectedCameras
    L8_2 = A0_2
    L7_2 = A0_2.getResolutionCorrectCameraData
    L9_2 = L4_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2[L4_2] = L7_2
  end
end

L0_1.calculateResolutionCorrectCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.originalCameras
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = assert
    L3_2 = false
    L4_2 = "Incorrect Camera index: "
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = A0_2.originalCameras
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screenWidth
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screenHeight
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.name
  L2_2.name = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.px
  L2_2.px = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.py
  L2_2.py = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.screenWidth
  L2_2.screenWidth = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.screenHeight
  L2_2.screenHeight = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.sx
  L2_2.sx = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.sy
  L2_2.sy = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.otherCameras
  L2_2.otherCameras = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.prev
  L2_2.prev = L6_2
  L6_2 = L3_2[A1_2]
  L6_2 = L6_2.next
  L2_2.next = L6_2
  L6_2 = L2_2.screenWidth
  L7_2 = L2_2.screenHeight
  L6_2 = L6_2 / L7_2
  L7_2 = L4_2 / L5_2
  if L6_2 <= L7_2 then
    L8_2 = L2_2.sx
    L8_2 = L8_2 * L5_2
    L9_2 = L2_2.screenHeight
    L8_2 = L8_2 / L9_2
    L2_2.sx = L8_2
    L8_2 = L2_2.sy
    L8_2 = L8_2 * L5_2
    L9_2 = L2_2.screenHeight
    L8_2 = L8_2 / L9_2
    L2_2.sy = L8_2
  else
    L8_2 = L2_2.sx
    L8_2 = L8_2 * L4_2
    L9_2 = L2_2.screenWidth
    L8_2 = L8_2 / L9_2
    L2_2.sx = L8_2
    L8_2 = L2_2.sy
    L8_2 = L8_2 * L4_2
    L9_2 = L2_2.screenWidth
    L8_2 = L8_2 / L9_2
    L2_2.sy = L8_2
  end
  L2_2.screenWidth = L4_2
  L2_2.screenHeight = L5_2
  L8_2 = L2_2.px
  L9_2 = L4_2 * 0.5
  L10_2 = L2_2.sx
  L9_2 = L9_2 / L10_2
  L8_2 = L8_2 - L9_2
  L2_2.left = L8_2
  L8_2 = L2_2.px
  L9_2 = L4_2 * 0.5
  L10_2 = L2_2.sx
  L9_2 = L9_2 / L10_2
  L8_2 = L8_2 + L9_2
  L2_2.right = L8_2
  L8_2 = L2_2.py
  L9_2 = L5_2 * 0.5
  L10_2 = L2_2.sy
  L9_2 = L9_2 / L10_2
  L8_2 = L8_2 - L9_2
  L2_2.top = L8_2
  L8_2 = L2_2.py
  L9_2 = L5_2 * 0.5
  L10_2 = L2_2.sy
  L9_2 = L9_2 / L10_2
  L8_2 = L8_2 + L9_2
  L2_2.bottom = L8_2
  L8_2 = L3_2[A1_2]
  L8_2 = L8_2.forceCameraZoomLevel
  L2_2.forceCameraZoomLevel = L8_2
  return L2_2
end

L0_1.getResolutionCorrectCameraData = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.resolutionCorrectedCameras
  L1_2 = L1_2[1]
  L2_2 = A0_2.resolutionCorrectedCameras
  L2_2 = L2_2[1]
  L3_2 = A0_2.resolutionCorrectedCameras
  L3_2 = L3_2[1]
  L4_2 = A0_2.resolutionCorrectedCameras
  L4_2 = L4_2[1]
  L5_2 = 2
  L6_2 = A0_2.resolutionCorrectedCameras
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2.resolutionCorrectedCameras
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2.left
    L11_2 = L1_2.left
    L1_2 = L9_2 or L1_2
    if not (L10_2 < L11_2) or not L9_2 then
    end
    L10_2 = L9_2.right
    L11_2 = L2_2.right
    L2_2 = L9_2 or L2_2
    if not (L10_2 > L11_2) or not L9_2 then
    end
    L10_2 = L9_2.top
    L11_2 = L3_2.top
    L3_2 = L9_2 or L3_2
    if not (L10_2 < L11_2) or not L9_2 then
    end
    L10_2 = L9_2.bottom
    L11_2 = L4_2.bottom
    L4_2 = L9_2 or L4_2
    if not (L10_2 > L11_2) or not L9_2 then
    end
  end
  L5_2 = {}
  L5_2.leftCamera = L1_2
  L5_2.rightCamera = L2_2
  L5_2.topCamera = L3_2
  L5_2.bottomCamera = L4_2
  return L5_2
end

L0_1.getEdgeCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2.getCameraIndex
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getCameraIndex
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.setActiveCamerasByIndex
  L7_2 = L3_2
  L8_2 = L4_2
  return L5_2(L6_2, L7_2, L8_2)
end

L0_1.setActiveCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 < 1 then
    L3_2 = false
    return L3_2
  end
  if A2_2 < 1 then
    L3_2 = false
    return L3_2
  end
  L3_2 = assert
  L4_2 = A1_2 ~= A2_2
  L5_2 = "Trying to set same camera to start and end camera! Camera name: "
  L6_2 = A0_2.originalCameras
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.name
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.startCameraIndex
  if L3_2 == A1_2 then
    L3_2 = A0_2.endCameraIndex
    if L3_2 == A2_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = A0_2.originalCameras
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L3_2 = A0_2.originalCameras
    L3_2 = L3_2[A2_2]
    if L3_2 ~= nil then
      goto lbl_38
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_38::
  L3_2 = A0_2.startCameraIndex
  L4_2 = A0_2.endCameraIndex
  A0_2.startCameraIndex = A1_2
  A0_2.endCameraIndex = A2_2
  L6_2 = A0_2
  L5_2 = A0_2.updateActiveCameras
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getSliderPosition
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.screen
  L7_2 = L7_2.x
  L8_2 = A0_2.gameEngine
  L8_2 = L8_2.screen
  L8_2 = L8_2.y
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2.cameraAnimationSlider = L5_2
  L5_2 = A0_2.panningMode
  L6_2 = g_panningModeClassic
  if L5_2 ~= L6_2 then
    L5_2 = A0_2.panningMode
    L6_2 = g_panningModeLinear
    if L5_2 ~= L6_2 then
      goto lbl_65
    end
  end
  L5_2 = A0_2.panDelta
  L5_2.x = 0
  L5_2 = A0_2.panDelta
  L5_2.y = 0
  ::lbl_65::
  L5_2 = A0_2.panningMode
  L6_2 = g_panningModeFree
  if L5_2 == L6_2 then
    L5_2 = A0_2.startCamera
    L6_2 = A0_2.endCamera
    L8_2 = A0_2
    L7_2 = A0_2.getAnimatedCamera
    L9_2 = L5_2
    L10_2 = L6_2
    L11_2 = A0_2.cameraAnimationSlider
    L12_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = A0_2.panDelta
    L9_2 = A0_2.gameEngine
    L9_2 = L9_2.screen
    L9_2 = L9_2.x
    L10_2 = L7_2.px
    L9_2 = L9_2 - L10_2
    L8_2.x = L9_2
    L8_2 = A0_2.panDelta
    L9_2 = A0_2.gameEngine
    L9_2 = L9_2.screen
    L9_2 = L9_2.y
    L10_2 = L7_2.py
    L9_2 = L9_2 - L10_2
    L8_2.y = L9_2
  end
  if 0 < L3_2 then
    L5_2 = A0_2.originalCameras
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.removeAfterFocusLost
    if L5_2 == true then
      L5_2 = A0_2.startCameraIndex
      if L3_2 ~= L5_2 then
        L5_2 = A0_2.endCameraIndex
        if L3_2 ~= L5_2 then
          L6_2 = A0_2
          L5_2 = A0_2.removeCamera
          L7_2 = A0_2.originalCameras
          L7_2 = L7_2[L3_2]
          L7_2 = L7_2.name
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
  if 0 < L4_2 then
    L5_2 = A0_2.originalCameras
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.removeAfterFocusLost
    if L5_2 == true then
      L5_2 = A0_2.startCameraIndex
      if L4_2 ~= L5_2 then
        L5_2 = A0_2.endCameraIndex
        if L4_2 ~= L5_2 then
          L6_2 = A0_2
          L5_2 = A0_2.removeCamera
          L7_2 = A0_2.originalCameras
          L7_2 = L7_2[L4_2]
          L7_2 = L7_2.name
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
  L5_2 = true
  return L5_2
end

L0_1.setActiveCamerasByIndex = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.getTempStartCamera
  L1_2 = L1_2(L2_2)
  A0_2.startCamera = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.getTempEndCamera
  L1_2 = L1_2(L2_2)
  A0_2.endCamera = L1_2
  L1_2 = A0_2.gameEngine
  L1_2 = L1_2.objects
  L1_2 = L1_2.birdCameraData
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.deviceModel
  L3_2 = A0_2.resolutionCorrectedCameras
  L4_2 = A0_2.startCameraIndex
  L3_2 = L3_2[L4_2]
  L1_2[L2_2] = L3_2
  L1_2 = A0_2.gameEngine
  L1_2 = L1_2.objects
  L1_2 = L1_2.castleCameraData
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.deviceModel
  L3_2 = A0_2.resolutionCorrectedCameras
  L4_2 = A0_2.endCameraIndex
  L3_2 = L3_2[L4_2]
  L1_2[L2_2] = L3_2
end

L0_1.updateActiveCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.getCameraIndex
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.setViewToCameraByIndex
  L6_2 = L3_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.setViewToCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = assert
  L4_2 = A0_2.startCameraIndex
  L4_2 = A1_2 == L4_2
  L5_2 = "Trying to set view to camera that is not active!"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.resolutionCorrectedCameras
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2.gameEngine
  L5_2 = L3_2.sx
  L4_2.worldScale = L5_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screen
  L5_2 = L3_2.px
  L4_2.x = L5_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screen
  L5_2 = L3_2.py
  L4_2.y = L5_2
  L4_2 = A0_2.startCameraIndex
  if A1_2 == L4_2 then
    A0_2.cameraAnimationSlider = 0
    A0_2.cameraAnimationSliderTarget = 0
  end
  L4_2 = A0_2.endCameraIndex
  if A1_2 == L4_2 then
    A0_2.cameraAnimationSlider = 1
    A0_2.cameraAnimationSliderTarget = 1
  end
  L5_2 = A0_2
  L4_2 = A0_2.storeCameraPosition
  L6_2 = L3_2.px
  L7_2 = L3_2.py
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = L3_2.sx
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.defaultCamera
  L4_2(L5_2)
end

L0_1.setViewToCameraByIndex = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.cameraAnimationSlider
  if 0.5 < L1_2 then
    L1_2 = A0_2.endCameraIndex
    return L1_2
  else
    L1_2 = A0_2.startCameraIndex
    return L1_2
  end
end

L0_1.getCurrentCameraIndex = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2.animationScreen
  L4_2.x = A1_2
  L4_2 = A0_2.animationScreen
  L4_2.y = A2_2
  A0_2.animationWorldScale = A3_2
  A0_2.animationWorldScale2 = A3_2
end

L0_1.storeCameraPosition = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2.deltaCameraValues
  L4_2.px = A1_2
  L4_2 = A0_2.deltaCameraValues
  L4_2.py = A2_2
  L4_2 = A0_2.deltaCameraValues
  L4_2.sx = A3_2
  L4_2 = A0_2.deltaCameraValues
  L4_2.timer = 1
end

L0_1.storeDeltaCamera = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.deltaCameraValues
  return L1_2
end

L0_1.getDeltaCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.cameraTargetObjects
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    L8_2 = A1_2.name
    if L7_2 == L8_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.isCameraTargetObject = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.cameraTargetObjects
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    L8_2 = A1_2.name
    if L7_2 == L8_2 then
      return L5_2
    end
  end
  L2_2 = -1
  return L2_2
end

L0_1.indexOfCameraTargetObject = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.isCameraTargetObject
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.cameraTargetObjects
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end

L0_1.addCameraTargetObject = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.indexOfCameraTargetObject
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if 0 < L2_2 then
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.remove
    L4_2 = A0_2.cameraTargetObjects
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    A0_2.cameraTargetObjectRemoved = true
    L4_2 = A0_2
    L3_2 = A0_2.storeDeltaCamera
    L5_2 = A0_2.gameEngine
    L5_2 = L5_2.screen
    L5_2 = L5_2.x
    L6_2 = A0_2.gameEngine
    L6_2 = L6_2.screen
    L6_2 = L6_2.y
    L7_2 = A0_2.gameEngine
    L7_2 = L7_2.worldScale
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end

L0_1.removeCameraTargetObject = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.cameraTargetObjects
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    A0_2.cameraTargetObjects = L1_2
    A0_2.cameraTargetObjectRemoved = true
    L2_2 = A0_2
    L1_2 = A0_2.storeDeltaCamera
    L3_2 = A0_2.gameEngine
    L3_2 = L3_2.screen
    L3_2 = L3_2.x
    L4_2 = A0_2.gameEngine
    L4_2 = L4_2.screen
    L4_2 = L4_2.y
    L5_2 = A0_2.gameEngine
    L5_2 = L5_2.worldScale
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end

L0_1.removeAllCameraTargetObjects = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.cameraTargetObjects
  L1_2 = #L1_2
  return L1_2
end

L0_1.getNumOfCameraTargetObjects = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.cameraTargetObjects
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getCameraTargetObject = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.removeAllCameraTargetObjects
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.addCameraTargetObject
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.setCameraTargetObject = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  A0_2.allowCameraAnimation = A1_2
end

L0_1.setAllowCameraAnimation = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.resolutionCorrectedCameras
  L3_2 = A0_2.endCameraIndex
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.resolutionCorrectedCameras
  L4_2 = A0_2.startCameraIndex
  L3_2 = L3_2[L4_2]
  A0_2.currentZoomedScale = A1_2
  A0_2.maxZoomLevel = false
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.max
  L5_2 = L3_2.sx
  L6_2 = L2_2.sx
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.currentZoomedScale
  if L4_2 <= L5_2 then
    A0_2.currentZoomedScale = L4_2
    A0_2.maxZoomLevel = true
  end
  L5_2 = A0_2.currentZoomedScale
  L6_2 = A0_2.levelLimits
  L6_2 = L6_2.minScale
  if L5_2 < L6_2 then
    L5_2 = A0_2.levelLimits
    L5_2 = L5_2.minScale
    A0_2.currentZoomedScale = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.updateActiveCameras
  L5_2(L6_2)
end

L0_1.setZoomScale = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.oldZoomLevel
  if L2_2 ~= A1_2 then
    L2_2 = A0_2.oldZoomLevel
    L2_2 = A1_2 - L2_2
    L3_2 = A0_2.currentZoomedScale
    L3_2 = L3_2 + L2_2
    L5_2 = A0_2
    L4_2 = A0_2.setZoomScale
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    A0_2.oldZoomLevel = A1_2
  end
end

L0_1.updateZoomLevel = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.ignoreCameraMovement
  if L2_2 then
    return
  end
  L2_2 = A0_2.startCamera
  L3_2 = A0_2.endCamera
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.abs
  L5_2 = A0_2.velocity
  L4_2 = L4_2(L5_2)
  L5_2 = g_minVelocityMenu
  if L4_2 > L5_2 then
    L5_2 = 1
    L6_2 = A0_2.velocity
    if L6_2 < 0 then
      L5_2 = -1
    end
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.abs
    L7_2 = L3_2.px
    L8_2 = L2_2.px
    L7_2 = L7_2 - L8_2
    L6_2 = L6_2(L7_2)
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.abs
    L8_2 = L3_2.py
    L9_2 = L2_2.py
    L8_2 = L8_2 - L9_2
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2.gameEngine
    L8_2 = L8_2.vLength
    L9_2 = L6_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2 * 0.333
    L10_2 = g_cameraChangeSpeedLimit
    if L9_2 > L10_2 then
      L10_2 = g_cameraChangeSpeedLimit
      L9_2 = L10_2 * 0.8
    end
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.abs
    L11_2 = A0_2.velocity
    L10_2 = L10_2(L11_2)
    if L9_2 <= L10_2 then
      L10_2 = A0_2.velocity
      L11_2 = g_cameraAnimationFriction
      L11_2 = L11_2 * A1_2
      L11_2 = L11_2 * L5_2
      L10_2 = L10_2 - L11_2
      A0_2.velocity = L10_2
    end
  end
  L5_2 = g_skipEpisodeCameraMovement
  if not L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.getSliderPosition
    L7_2 = screen
    L7_2 = L7_2.x
    L8_2 = screen
    L8_2 = L8_2.y
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = false
    if L5_2 < 0 then
      L7_2 = g_cameraChangeSpeedLimit
      if not (L4_2 > L7_2) then
        L7_2 = A0_2.isPanningCamera
        if not L7_2 then
          goto lbl_87
        end
      end
      L7_2 = L2_2.prev
      if L7_2 ~= nil then
        L8_2 = A0_2
        L7_2 = A0_2.setActiveCameras
        L9_2 = L2_2.prev
        L9_2 = L9_2.name
        L10_2 = L2_2.name
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2 = L7_2
        goto lbl_89
        ::lbl_87::
        A0_2.velocity = 0
        A0_2.isSwipingCamera = false
      end
    end
    ::lbl_89::
    if 1 < L5_2 then
      L7_2 = g_cameraChangeSpeedLimit
      if not (L4_2 > L7_2) then
        L7_2 = A0_2.isPanningCamera
        if not L7_2 then
          goto lbl_107
        end
      end
      L7_2 = L3_2.next
      if L7_2 ~= nil then
        L8_2 = A0_2
        L7_2 = A0_2.setActiveCameras
        L9_2 = L3_2.name
        L10_2 = L3_2.next
        L10_2 = L10_2.name
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L6_2 = L7_2
        goto lbl_109
        ::lbl_107::
        A0_2.velocity = 0
        A0_2.isSwipingCamera = false
      end
    end
  end
  ::lbl_109::
  L5_2 = g_tweeningLinear
  A0_2.tweeningMode = L5_2
  A0_2.moveToClosestCameraAfterPanning = true
  L6_2 = A0_2
  L5_2 = A0_2.cameraAnimation
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end

L0_1.menuCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.ignoreCameraMovement
  if L2_2 then
    return
  end
  L2_2 = g_tweeningEaseOut
  A0_2.tweeningMode = L2_2
  A0_2.moveToClosestCameraAfterPanning = false
  L3_2 = A0_2
  L2_2 = A0_2.cameraAnimation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.ingameCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.next
  L2_2 = L2_2.callback
  if L2_2 ~= nil then
    L2_2 = A1_2.next
    L2_2 = L2_2.callback
    L2_2()
  end
end

L0_1.moveToNextCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.prev
  L2_2 = L2_2.callback
  if L2_2 ~= nil then
    L2_2 = A1_2.prev
    L2_2 = L2_2.callback
    L2_2()
  end
end

L0_1.moveToPreviousCamera = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = A0_2.resolutionCorrectedCameras
  L3_2 = A0_2.endCameraIndex
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.resolutionCorrectedCameras
  L4_2 = A0_2.startCameraIndex
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.name
  L1_2.name = L4_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.isInGameMode
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2.maxZoomLevel
    if not L4_2 then
      L4_2 = L3_2.forceCameraZoomLevel
      if not L4_2 then
        goto lbl_24
      end
    end
  end
  L4_2 = L3_2.sx
  L1_2.sx = L4_2
  goto lbl_26
  ::lbl_24::
  L4_2 = A0_2.currentZoomedScale
  L1_2.sx = L4_2
  ::lbl_26::
  L4_2 = L1_2.sx
  L5_2 = L3_2.sx
  if L4_2 > L5_2 then
    L4_2 = L3_2.sx
    L1_2.sx = L4_2
  end
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.max
  L5_2 = A0_2.levelLimits
  L5_2 = L5_2.minScale
  L6_2 = L1_2.sx
  L4_2 = L4_2(L5_2, L6_2)
  L1_2.sx = L4_2
  L4_2 = L1_2.sx
  L1_2.sy = L4_2
  L4_2 = L1_2.sx
  L5_2 = A0_2.levelLimits
  L5_2 = L5_2.minScale
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.sx
  L6_2 = A0_2.levelLimits
  L6_2 = L6_2.minScale
  L5_2 = L5_2 - L6_2
  L4_2 = L4_2 / L5_2
  L5_2 = L3_2.py
  L1_2.py = L5_2
  L5_2 = L3_2.px
  L1_2.px = L5_2
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.isInGameMode
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = g_allowFreeZoom
    if not L5_2 then
      L5_2 = L3_2.py
      L6_2 = L4_2 * 0.5
      L6_2 = 0.5 + L6_2
      L5_2 = L5_2 * L6_2
      L6_2 = L2_2.py
      L7_2 = L4_2 * 0.5
      L7_2 = 0.5 - L7_2
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 + L6_2
      L1_2.py = L5_2
      L5_2 = L3_2.px
      L6_2 = L4_2 * 0.5
      L6_2 = 0.5 + L6_2
      L5_2 = L5_2 * L6_2
      L6_2 = L2_2.px
      L7_2 = L4_2 * 0.5
      L7_2 = 0.5 - L7_2
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 + L6_2
      L1_2.px = L5_2
    end
  end
  L5_2 = L1_2.py
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screenHeight
  L6_2 = L6_2 * 0.5
  L7_2 = L1_2.sx
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = L1_2.py
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.5
  L8_2 = L1_2.sx
  L7_2 = L7_2 / L8_2
  L6_2 = L6_2 - L7_2
  L7_2 = L1_2.px
  L8_2 = A0_2.gameEngine
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 * 0.5
  L9_2 = L1_2.sx
  L8_2 = L8_2 / L9_2
  L7_2 = L7_2 - L8_2
  L8_2 = L1_2.px
  L9_2 = A0_2.gameEngine
  L9_2 = L9_2.screenWidth
  L9_2 = L9_2 * 0.5
  L10_2 = L1_2.sx
  L9_2 = L9_2 / L10_2
  L8_2 = L8_2 + L9_2
  L9_2 = L8_2 - L7_2
  L10_2 = L5_2 - L6_2
  L11_2 = L3_2.screenWidth
  L1_2.screenWidth = L11_2
  L11_2 = L3_2.screenHeight
  L1_2.screenHeight = L11_2
  L11_2 = L3_2.prev
  L1_2.prev = L11_2
  L11_2 = L3_2.next
  L1_2.next = L11_2
  L11_2 = g_allowFreeZoom
  if L11_2 then
    L11_2 = g_useSkyLimit
    if L11_2 then
      L11_2 = A0_2.levelLimits
      L11_2 = L11_2.top
      if L6_2 < L11_2 then
        L11_2 = L1_2.py
        L12_2 = A0_2.levelLimits
        L12_2 = L12_2.top
        L12_2 = L12_2 - L6_2
        L11_2 = L11_2 + L12_2
        L1_2.py = L11_2
      end
    end
    L11_2 = g_useGroundLimit
    if L11_2 then
      L11_2 = A0_2.levelLimits
      L11_2 = L11_2.bottom
      if L5_2 > L11_2 then
        L11_2 = L1_2.py
        L12_2 = A0_2.levelLimits
        L12_2 = L12_2.bottom
        L12_2 = L12_2 - L5_2
        L11_2 = L11_2 + L12_2
        L1_2.py = L11_2
      end
    end
    L11_2 = g_useLeftLimit
    if L11_2 then
      L11_2 = A0_2.levelLimits
      L11_2 = L11_2.left
      if L7_2 < L11_2 then
        L11_2 = L1_2.px
        L12_2 = A0_2.levelLimits
        L12_2 = L12_2.left
        L12_2 = L12_2 - L7_2
        L11_2 = L11_2 + L12_2
        L1_2.px = L11_2
      end
    end
    L11_2 = g_useRightLimit
    if L11_2 then
      L11_2 = A0_2.levelLimits
      L11_2 = L11_2.right
      if L8_2 > L11_2 then
        L11_2 = L1_2.px
        L12_2 = A0_2.levelLimits
        L12_2 = L12_2.right
        L12_2 = L12_2 - L8_2
        L11_2 = L11_2 + L12_2
        L1_2.px = L11_2
      end
    end
    L11_2 = g_useLeftLimit
    if L11_2 then
      L11_2 = g_useRightLimit
      if L11_2 then
        L11_2 = A0_2.levelLimits
        L11_2 = L11_2.maxLevelWidth
        if L9_2 > L11_2 then
          L11_2 = A0_2.levelLimits
          L11_2 = L11_2.left
          L12_2 = A0_2.levelLimits
          L12_2 = L12_2.right
          L11_2 = L11_2 + L12_2
          L11_2 = L11_2 * 0.5
          L1_2.px = L11_2
        end
      end
    end
    L11_2 = g_useSkyLimit
    if L11_2 then
      L11_2 = g_useGroundLimit
      if L11_2 then
        L11_2 = A0_2.levelLimits
        L11_2 = L11_2.maxLevelHeight
        if L10_2 > L11_2 then
          L11_2 = A0_2.levelLimits
          L11_2 = L11_2.bottom
          L12_2 = A0_2.levelLimits
          L12_2 = L12_2.top
          L11_2 = L11_2 + L12_2
          L11_2 = L11_2 * 0.5
          L1_2.py = L11_2
        end
      end
    end
  end
  return L1_2
end

L0_1.getTempStartCamera = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2.resolutionCorrectedCameras
  L3_2 = A0_2.endCameraIndex
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.resolutionCorrectedCameras
  L4_2 = A0_2.startCameraIndex
  L3_2 = L3_2[L4_2]
  L4_2 = L2_2.name
  L1_2.name = L4_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.isInGameMode
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2.maxZoomLevel
    if not L4_2 then
      L4_2 = L2_2.forceCameraZoomLevel
      if not L4_2 then
        goto lbl_24
      end
    end
  end
  L4_2 = L2_2.sx
  L1_2.sx = L4_2
  goto lbl_26
  ::lbl_24::
  L4_2 = A0_2.currentZoomedScale
  L1_2.sx = L4_2
  ::lbl_26::
  L4_2 = L1_2.sx
  L5_2 = L2_2.sx
  if L4_2 > L5_2 then
    L4_2 = L2_2.sx
    L1_2.sx = L4_2
  end
  L4_2 = L1_2.sx
  L5_2 = A0_2.levelLimits
  L5_2 = L5_2.minScale
  if L4_2 < L5_2 then
    L4_2 = A0_2.levelLimits
    L4_2 = L4_2.minScale
    L1_2.sx = L4_2
  end
  L4_2 = L1_2.sx
  L1_2.sy = L4_2
  L4_2 = L2_2.px
  L1_2.px = L4_2
  L4_2 = L2_2.py
  L1_2.py = L4_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.isInGameMode
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = g_allowFreeZoom
    if not L4_2 then
      L4_2 = L1_2.sx
      L5_2 = A0_2.levelLimits
      L5_2 = L5_2.minScale
      L4_2 = L4_2 - L5_2
      L5_2 = L2_2.sx
      L6_2 = A0_2.levelLimits
      L6_2 = L6_2.minScale
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2 / L5_2
      L5_2 = L2_2.py
      L6_2 = L4_2 * 0.5
      L6_2 = 0.5 + L6_2
      L5_2 = L5_2 * L6_2
      L6_2 = L3_2.py
      L7_2 = L4_2 * 0.5
      L7_2 = 0.5 - L7_2
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 + L6_2
      L1_2.py = L5_2
      L5_2 = L2_2.px
      L6_2 = L4_2 * 0.5
      L6_2 = 0.5 + L6_2
      L5_2 = L5_2 * L6_2
      L6_2 = L3_2.px
      L7_2 = L4_2 * 0.5
      L7_2 = 0.5 - L7_2
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 + L6_2
      L1_2.px = L5_2
    end
  end
  L4_2 = _G
  L4_2 = L4_2.assert
  L5_2 = L1_2.sx
  L5_2 = L5_2 ~= 0
  L4_2(L5_2)
  L4_2 = L1_2.py
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screenHeight
  L5_2 = L5_2 * 0.5
  L6_2 = L1_2.sx
  L5_2 = L5_2 / L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = L1_2.py
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screenHeight
  L6_2 = L6_2 * 0.5
  L7_2 = L1_2.sx
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 - L6_2
  L6_2 = L1_2.px
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.screenWidth
  L7_2 = L7_2 * 0.5
  L8_2 = L1_2.sx
  L7_2 = L7_2 / L8_2
  L6_2 = L6_2 + L7_2
  L7_2 = L1_2.px
  L8_2 = A0_2.gameEngine
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 * 0.5
  L9_2 = L1_2.sx
  L8_2 = L8_2 / L9_2
  L7_2 = L7_2 - L8_2
  L8_2 = L6_2 - L7_2
  L9_2 = L4_2 - L5_2
  L10_2 = L2_2.screenWidth
  L1_2.screenWidth = L10_2
  L10_2 = L2_2.screenHeight
  L1_2.screenHeight = L10_2
  L10_2 = L2_2.prev
  L1_2.prev = L10_2
  L10_2 = L2_2.next
  L1_2.next = L10_2
  L10_2 = g_allowFreeZoom
  if L10_2 then
    L10_2 = g_useRightLimit
    if L10_2 then
      L10_2 = A0_2.levelLimits
      L10_2 = L10_2.right
      if L6_2 > L10_2 then
        L10_2 = L1_2.px
        L11_2 = A0_2.levelLimits
        L11_2 = L11_2.right
        L11_2 = L11_2 - L6_2
        L10_2 = L10_2 + L11_2
        L1_2.px = L10_2
      end
    end
    L10_2 = g_useLeftLimit
    if L10_2 then
      L10_2 = A0_2.levelLimits
      L10_2 = L10_2.left
      if L7_2 < L10_2 then
        L10_2 = L1_2.px
        L11_2 = A0_2.levelLimits
        L11_2 = L11_2.left
        L11_2 = L11_2 - L7_2
        L10_2 = L10_2 + L11_2
        L1_2.px = L10_2
      end
    end
    L10_2 = A0_2.levelLimits
    L10_2 = L10_2.bottom
    if L4_2 > L10_2 then
      L10_2 = L1_2.py
      L11_2 = A0_2.levelLimits
      L11_2 = L11_2.bottom
      L11_2 = L11_2 - L4_2
      L10_2 = L10_2 + L11_2
      L1_2.py = L10_2
    end
    L10_2 = g_useGroundLimit
    if L10_2 then
      L10_2 = g_useSkyLimit
      if L10_2 then
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.top
        if L5_2 < L10_2 then
          L10_2 = L1_2.py
          L11_2 = A0_2.levelLimits
          L11_2 = L11_2.top
          L11_2 = L11_2 - L5_2
          L10_2 = L10_2 + L11_2
          L1_2.py = L10_2
        end
      end
    end
    L10_2 = g_useLeftLimit
    if L10_2 then
      L10_2 = g_useRightLimit
      if L10_2 then
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.maxLevelWidth
        if L8_2 > L10_2 then
          L10_2 = A0_2.levelLimits
          L10_2 = L10_2.left
          L11_2 = A0_2.levelLimits
          L11_2 = L11_2.right
          L10_2 = L10_2 + L11_2
          L10_2 = L10_2 * 0.5
          L1_2.px = L10_2
        end
      end
    end
    L10_2 = g_useSkyLimit
    if L10_2 then
      L10_2 = g_useGroundLimit
      if L10_2 then
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.maxLevelHeight
        if L9_2 > L10_2 then
          L10_2 = A0_2.levelLimits
          L10_2 = L10_2.bottom
          L11_2 = A0_2.levelLimits
          L11_2 = L11_2.top
          L10_2 = L10_2 + L11_2
          L10_2 = L10_2 * 0.5
          L1_2.py = L10_2
        end
      end
    end
  end
  return L1_2
end

L0_1.getTempEndCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = 1
  L5_2 = 0.25
  L6_2 = A0_2.cameraAnimationSlider
  L7_2 = A0_2.tweeningMode
  L8_2 = g_tweeningEaseOut
  if L7_2 == L8_2 then
    if L5_2 > L6_2 and A2_2 < 0 then
      L7_2 = 1 / L5_2
      L4_2 = L6_2 * L7_2
    else
      L7_2 = 1 - L5_2
      if L6_2 > L7_2 and 0 < A2_2 then
        L7_2 = 1 - L6_2
        L8_2 = 1 / L5_2
        L4_2 = L7_2 * L8_2
      end
    end
  end
  A2_2 = A2_2 * L4_2
  return A2_2
end

L0_1.handleTweening = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2
  L2_2 = A0_2.endCamera
  L3_2 = A0_2.startCamera
  L4_2 = A0_2.cameraAnimationSlider
  L5_2 = A0_2.cameraAnimationSliderTarget
  L6_2 = A0_2.velocity
  L7_2 = 0.3
  L8_2 = 0.001
  L9_2 = A0_2.levelLimits
  L9_2 = L9_2.left
  L10_2 = A0_2.levelLimits
  L10_2 = L10_2.right
  L11_2 = A0_2.levelLimits
  L11_2 = L11_2.top
  L12_2 = A0_2.levelLimits
  L12_2 = L12_2.bottom
  L13_2 = A0_2.gameEngine
  L13_2 = L13_2.screenWidth
  L14_2 = A0_2.gameEngine
  L14_2 = L14_2.screenHeight
  L15_2 = A0_2.gameEngine
  L15_2 = L15_2.worldScale
  if L2_2 ~= nil and L3_2 ~= nil then
    L16_2 = g_cameraSpringForceConstant
    L16_2 = A1_2 * L16_2
    L17_2 = g_cameraSpringForceConstant
    L17_2 = A1_2 * L17_2
    L18_2 = {}
    L18_2.x = 0
    L18_2.y = 0
    L19_2 = nil
    L20_2 = nil
    L21_2 = nil
    L22_2 = _G
    L22_2 = L22_2.math
    L22_2 = L22_2.abs
    L23_2 = L2_2.px
    L24_2 = L3_2.px
    L23_2 = L23_2 - L24_2
    L22_2 = L22_2(L23_2)
    L19_2 = L22_2
    L22_2 = _G
    L22_2 = L22_2.math
    L22_2 = L22_2.abs
    L23_2 = L2_2.py
    L24_2 = L3_2.py
    L23_2 = L23_2 - L24_2
    L22_2 = L22_2(L23_2)
    L20_2 = L22_2
    if L20_2 < 1 then
      L20_2 = 1
    end
    if L19_2 < 1 then
      L19_2 = 1
    end
    if L20_2 <= L19_2 then
      L21_2 = L19_2
    else
      L21_2 = L20_2
    end
    L22_2 = A0_2.deltaCameraValues
    L23_2 = A0_2.deltaCameraValues
    L23_2 = L23_2.timer
    L23_2 = L23_2 - A1_2
    L22_2.timer = L23_2
    L22_2 = A0_2.deltaCameraValues
    L22_2 = L22_2.timer
    if L22_2 < 0 then
      L22_2 = A0_2.deltaCameraValues
      L22_2.timer = 0
    end
    L23_2 = A0_2
    L22_2 = A0_2.getNumOfCameraTargetObjects
    L22_2 = L22_2(L23_2)
    if L22_2 == 0 then
      L22_2 = g_cameraSpringForceConstantNoTarget
      L16_2 = A1_2 * L22_2
      L22_2 = A0_2.gameEngine
      L22_2 = L22_2.isPCVersion
      L22_2 = L22_2()
      L22_2 = not L22_2
      L23_2 = A0_2.allowCameraAnimation
      if not L23_2 then
        L6_2 = 0
        L7_2 = 0
      end
      L24_2 = A0_2
      L23_2 = A0_2.handleTweening
      L25_2 = A1_2
      L26_2 = L6_2
      L27_2 = L21_2
      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
      L6_2 = L23_2
      L23_2 = A0_2.isPanningCamera
      if not L23_2 then
        L23_2 = A0_2.isSwipingCamera
        if not L23_2 and L22_2 then
          L23_2 = L5_2 - L4_2
          L23_2 = L23_2 * L7_2
          L4_2 = L4_2 + L23_2
      end
      else
        L23_2 = A0_2.isSwipingCamera
        if not L23_2 then
          L23_2 = A0_2.isPanningCamera
          if not L23_2 then
            goto lbl_125
          end
        end
        L16_2 = 0.5
        if 0 <= L4_2 and L4_2 <= 1 then
          L17_2 = L16_2
        end
      end
      ::lbl_125::
      L23_2 = A0_2.isPanningCamera
      if L23_2 == false then
        L23_2 = A0_2.panDelta
        L24_2 = A0_2.panDelta
        L24_2 = L24_2.x
        L24_2 = L24_2 * L7_2
        L23_2.x = L24_2
        L23_2 = A0_2.panDelta
        L24_2 = A0_2.panDelta
        L24_2 = L24_2.y
        L24_2 = L24_2 * L7_2
        L23_2.y = L24_2
        L23_2 = A0_2.panDelta
        L24_2 = A0_2.panDelta
        L24_2 = L24_2.sx
        L24_2 = L24_2 * L7_2
        L23_2.sx = L24_2
      end
      if L6_2 ~= 0 then
        L23_2 = A1_2 * L6_2
        L23_2 = L23_2 / L21_2
        L4_2 = L4_2 + L23_2
      end
      cameraAnimationScaleSlider = L4_2
      L23_2 = _G
      L23_2 = L23_2.math
      L23_2 = L23_2.max
      L24_2 = 0
      L25_2 = _G
      L25_2 = L25_2.math
      L25_2 = L25_2.min
      L26_2 = L4_2
      L27_2 = 1
      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2 = L25_2(L26_2, L27_2)
      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
      L24_2 = A0_2.deltaCameraValues
      L24_2 = L24_2.timer
      L25_2 = A0_2.gameEngine
      L25_2 = L25_2.isInGameMode
      L25_2 = L25_2()
      if L25_2 then
        L25_2 = _G
        L25_2 = L25_2.math
        L25_2 = L25_2.abs
        L26_2 = L5_2 - L23_2
        L25_2 = L25_2(L26_2)
        L24_2 = L24_2 * L25_2
      end
      L25_2 = L3_2.sx
      L26_2 = L2_2.sx
      L27_2 = L3_2.sx
      L26_2 = L26_2 - L27_2
      L27_2 = cameraAnimationScaleSlider
      L26_2 = L26_2 * L27_2
      L25_2 = L25_2 + L26_2
      L26_2 = A0_2.panDelta
      L26_2 = L26_2.sx
      L25_2 = L25_2 + L26_2
      L26_2 = 1 - L24_2
      L25_2 = L25_2 * L26_2
      L26_2 = A0_2.deltaCameraValues
      L26_2 = L26_2.sx
      L26_2 = L26_2 * L24_2
      L25_2 = L25_2 + L26_2
      if L8_2 > L4_2 then
        L26_2 = L3_2.sx
        L27_2 = A0_2.panDelta
        L27_2 = L27_2.sx
        L26_2 = L26_2 + L27_2
        L27_2 = 1 - L24_2
        L26_2 = L26_2 * L27_2
        L27_2 = A0_2.deltaCameraValues
        L27_2 = L27_2.sx
        L27_2 = L27_2 * L24_2
        L25_2 = L26_2 + L27_2
        L26_2 = L3_2.prev
        if L26_2 ~= nil then
          L27_2 = A0_2
          L26_2 = A0_2.moveToPreviousCamera
          L28_2 = L3_2
          L26_2(L27_2, L28_2)
        else
          A0_2.velocity = 0
          A0_2.isSwipingCamera = false
        end
      else
        L26_2 = 1 - L8_2
        if L4_2 > L26_2 then
          L26_2 = L2_2.sx
          L27_2 = A0_2.panDelta
          L27_2 = L27_2.sx
          L26_2 = L26_2 + L27_2
          L27_2 = 1 - L24_2
          L26_2 = L26_2 * L27_2
          L27_2 = A0_2.deltaCameraValues
          L27_2 = L27_2.sx
          L27_2 = L27_2 * L24_2
          L25_2 = L26_2 + L27_2
          L26_2 = L2_2.next
          if L26_2 ~= nil then
            L27_2 = A0_2
            L26_2 = A0_2.moveToNextCamera
            L28_2 = L2_2
            L26_2(L27_2, L28_2)
          else
            A0_2.velocity = 0
            A0_2.isSwipingCamera = false
          end
        end
      end
      L26_2 = L3_2.px
      L27_2 = L2_2.px
      L28_2 = L3_2.px
      L27_2 = L27_2 - L28_2
      L27_2 = L27_2 * L4_2
      L26_2 = L26_2 + L27_2
      L27_2 = A0_2.panDelta
      L27_2 = L27_2.x
      L26_2 = L26_2 + L27_2
      L27_2 = 1 - L24_2
      L26_2 = L26_2 * L27_2
      L27_2 = A0_2.deltaCameraValues
      L27_2 = L27_2.px
      L27_2 = L27_2 * L24_2
      L26_2 = L26_2 + L27_2
      L27_2 = L3_2.py
      L28_2 = L2_2.py
      L29_2 = L3_2.py
      L28_2 = L28_2 - L29_2
      L28_2 = L28_2 * L4_2
      L27_2 = L27_2 + L28_2
      L28_2 = A0_2.panDelta
      L28_2 = L28_2.y
      L27_2 = L27_2 + L28_2
      L28_2 = 1 - L24_2
      L27_2 = L27_2 * L28_2
      L28_2 = A0_2.deltaCameraValues
      L28_2 = L28_2.py
      L28_2 = L28_2 * L24_2
      L27_2 = L27_2 + L28_2
      L28_2 = A0_2.animationScreen
      L29_2 = A0_2.animationScreen
      L29_2 = L29_2.x
      L30_2 = A0_2.animationScreen
      L30_2 = L30_2.x
      L30_2 = L30_2 - L26_2
      L30_2 = L30_2 * L16_2
      L29_2 = L29_2 - L30_2
      L28_2.x = L29_2
      L28_2 = A0_2.animationScreen
      L29_2 = A0_2.animationScreen
      L29_2 = L29_2.y
      L30_2 = A0_2.animationScreen
      L30_2 = L30_2.y
      L30_2 = L30_2 - L27_2
      L30_2 = L30_2 * L16_2
      L29_2 = L29_2 - L30_2
      L28_2.y = L29_2
      L28_2 = A0_2.animationWorldScale
      L29_2 = A0_2.animationWorldScale
      L29_2 = L29_2 - L25_2
      L29_2 = L29_2 * L17_2
      L28_2 = L28_2 - L29_2
      A0_2.animationWorldScale = L28_2
      L28_2 = A0_2.gameEngine
      L28_2 = L28_2.screen
      L29_2 = A0_2.animationScreen
      L29_2 = L29_2.x
      L28_2.x = L29_2
      L28_2 = A0_2.gameEngine
      L28_2 = L28_2.screen
      L29_2 = A0_2.animationScreen
      L29_2 = L29_2.y
      L28_2.y = L29_2
      L28_2 = A0_2.gameEngine
      L29_2 = A0_2.animationWorldScale
      L28_2.worldScale = L29_2
    end
    L23_2 = A0_2
    L22_2 = A0_2.getNumOfCameraTargetObjects
    L22_2 = L22_2(L23_2)
    if 0 < L22_2 then
      L23_2 = A0_2
      L22_2 = A0_2.getCameraTargetObject
      L24_2 = 1
      L22_2 = L22_2(L23_2, L24_2)
      L23_2 = A0_2.gameEngine
      L23_2 = L23_2.physicsToWorldTransform
      L24_2 = L22_2.x
      L25_2 = L22_2.y
      L23_2, L24_2 = L23_2(L24_2, L25_2)
      if L20_2 <= L19_2 then
        L25_2 = g_limitAnimationBetweenCameras
        if L25_2 == true then
          L25_2 = L22_2.xVel
          L26_2 = L2_2.px
          L27_2 = L3_2.px
          L26_2 = L26_2 - L27_2
          L25_2 = L25_2 * L26_2
          if 0 <= L25_2 then
            goto lbl_327
          end
        end
        L25_2 = g_limitAnimationBetweenCameras
        ::lbl_327::
        if L25_2 == false then
          L25_2 = _G
          L25_2 = L25_2.math
          L25_2 = L25_2.abs
          L26_2 = L22_2.xVel
          L25_2 = L25_2(L26_2)
          L26_2 = A0_2.gameEngine
          L26_2 = L26_2.physicsToWorld
          L25_2 = L25_2 * L26_2
          L25_2 = L25_2 * A1_2
          L25_2 = L25_2 * 10
          L25_2 = L25_2 / L19_2
          L4_2 = L4_2 + L25_2
        end
      else
        L25_2 = g_limitAnimationBetweenCameras
        if L25_2 == true then
          L25_2 = L22_2.yVel
          L26_2 = L2_2.py
          L27_2 = L3_2.py
          L26_2 = L26_2 - L27_2
          L25_2 = L25_2 * L26_2
          if 0 <= L25_2 then
            goto lbl_353
          end
        end
        L25_2 = g_limitAnimationBetweenCameras
        ::lbl_353::
        if L25_2 == false then
          L25_2 = _G
          L25_2 = L25_2.math
          L25_2 = L25_2.abs
          L26_2 = L22_2.yVel
          L25_2 = L25_2(L26_2)
          L26_2 = A0_2.gameEngine
          L26_2 = L26_2.physicsToWorld
          L25_2 = L25_2 * L26_2
          L25_2 = L25_2 * A1_2
          L25_2 = L25_2 * 10
          L25_2 = L25_2 / L20_2
          L4_2 = L4_2 + L25_2
        end
      end
      L25_2 = _G
      L25_2 = L25_2.math
      L25_2 = L25_2.max
      L26_2 = 0
      L27_2 = _G
      L27_2 = L27_2.math
      L27_2 = L27_2.min
      L28_2 = L4_2
      L29_2 = 1
      L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2 = L27_2(L28_2, L29_2)
      L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
      L4_2 = L25_2
      L25_2 = L3_2.sx
      L26_2 = L2_2.sx
      L27_2 = L3_2.sx
      L26_2 = L26_2 - L27_2
      L26_2 = L26_2 * L4_2
      L25_2 = L25_2 + L26_2
      L26_2 = L3_2.px
      L27_2 = L2_2.px
      L28_2 = L3_2.px
      L27_2 = L27_2 - L28_2
      L27_2 = L27_2 * L4_2
      L26_2 = L26_2 + L27_2
      L27_2 = L3_2.py
      L28_2 = L2_2.py
      L29_2 = L3_2.py
      L28_2 = L28_2 - L29_2
      L28_2 = L28_2 * L4_2
      L27_2 = L27_2 + L28_2
      L28_2 = A0_2.animationWorldScale
      L29_2 = A0_2.animationWorldScale
      L29_2 = L29_2 - L25_2
      L29_2 = L29_2 * L16_2
      L28_2 = L28_2 - L29_2
      A0_2.animationWorldScale = L28_2
      L28_2 = A0_2.animationScreen
      L29_2 = A0_2.animationScreen
      L29_2 = L29_2.x
      L30_2 = A0_2.animationScreen
      L30_2 = L30_2.x
      L30_2 = L30_2 - L26_2
      L30_2 = L30_2 * L16_2
      L29_2 = L29_2 - L30_2
      L28_2.x = L29_2
      L28_2 = A0_2.animationScreen
      L29_2 = A0_2.animationScreen
      L29_2 = L29_2.y
      L30_2 = A0_2.animationScreen
      L30_2 = L30_2.y
      L30_2 = L30_2 - L27_2
      L30_2 = L30_2 * L16_2
      L29_2 = L29_2 - L30_2
      L28_2.y = L29_2
      L28_2 = A0_2.animationScreen
      L28_2 = L28_2.x
      L29_2 = L13_2 * 0.5
      L30_2 = A0_2.animationWorldScale
      L29_2 = L29_2 / L30_2
      L28_2 = L28_2 - L29_2
      L29_2 = A0_2.animationScreen
      L29_2 = L29_2.y
      L30_2 = L14_2 * 0.5
      L31_2 = A0_2.animationWorldScale
      L30_2 = L30_2 / L31_2
      L29_2 = L29_2 - L30_2
      L30_2 = A0_2.animationScreen
      L30_2 = L30_2.x
      L31_2 = L13_2 * 0.5
      L32_2 = A0_2.animationWorldScale
      L31_2 = L31_2 / L32_2
      L30_2 = L30_2 + L31_2
      L31_2 = A0_2.animationScreen
      L31_2 = L31_2.y
      L32_2 = L14_2 * 0.5
      L33_2 = A0_2.animationWorldScale
      L32_2 = L32_2 / L33_2
      L31_2 = L31_2 + L32_2
      L32_2 = _G
      L32_2 = L32_2.math
      L32_2 = L32_2.min
      L33_2 = L28_2
      L34_2 = g_cameraTargetScreenEdgePadding
      L34_2 = L23_2 - L34_2
      L32_2 = L32_2(L33_2, L34_2)
      L33_2 = _G
      L33_2 = L33_2.math
      L33_2 = L33_2.min
      L34_2 = L29_2
      L35_2 = g_cameraTargetScreenEdgePadding
      L35_2 = L24_2 - L35_2
      L33_2 = L33_2(L34_2, L35_2)
      L34_2 = _G
      L34_2 = L34_2.math
      L34_2 = L34_2.max
      L35_2 = L30_2
      L36_2 = g_cameraTargetScreenEdgePadding
      L36_2 = L23_2 + L36_2
      L34_2 = L34_2(L35_2, L36_2)
      L35_2 = _G
      L35_2 = L35_2.math
      L35_2 = L35_2.max
      L36_2 = L31_2
      L37_2 = g_cameraTargetScreenEdgePadding
      L37_2 = L24_2 + L37_2
      L35_2 = L35_2(L36_2, L37_2)
      L36_2 = 1
      while true do
        L38_2 = A0_2
        L37_2 = A0_2.getNumOfCameraTargetObjects
        L37_2 = L37_2(L38_2)
        if not (L36_2 <= L37_2) then
          break
        end
        L38_2 = A0_2
        L37_2 = A0_2.getCameraTargetObject
        L39_2 = L36_2
        L37_2 = L37_2(L38_2, L39_2)
        L38_2 = A0_2.gameEngine
        L38_2 = L38_2.physicsToWorldTransform
        L39_2 = L37_2.x
        L40_2 = L37_2.y
        L38_2, L39_2 = L38_2(L39_2, L40_2)
        L40_2 = _G
        L40_2 = L40_2.math
        L40_2 = L40_2.min
        L41_2 = L32_2
        L42_2 = g_cameraTargetScreenEdgePadding
        L42_2 = L38_2 - L42_2
        L40_2 = L40_2(L41_2, L42_2)
        L32_2 = L40_2
        L40_2 = _G
        L40_2 = L40_2.math
        L40_2 = L40_2.min
        L41_2 = L33_2
        L42_2 = g_cameraTargetScreenEdgePadding
        L42_2 = L39_2 - L42_2
        L40_2 = L40_2(L41_2, L42_2)
        L33_2 = L40_2
        L40_2 = _G
        L40_2 = L40_2.math
        L40_2 = L40_2.max
        L41_2 = L34_2
        L42_2 = g_cameraTargetScreenEdgePadding
        L42_2 = L38_2 + L42_2
        L40_2 = L40_2(L41_2, L42_2)
        L34_2 = L40_2
        L40_2 = _G
        L40_2 = L40_2.math
        L40_2 = L40_2.max
        L41_2 = L35_2
        L42_2 = g_cameraTargetScreenEdgePadding
        L42_2 = L39_2 + L42_2
        L40_2 = L40_2(L41_2, L42_2)
        L35_2 = L40_2
        L40_2 = g_useLevelLimits
        if L40_2 then
          L40_2 = _G
          L40_2 = L40_2.math
          L40_2 = L40_2.max
          L41_2 = L9_2
          L42_2 = L32_2
          L40_2 = L40_2(L41_2, L42_2)
          L32_2 = L40_2
          L40_2 = _G
          L40_2 = L40_2.math
          L40_2 = L40_2.min
          L41_2 = L10_2
          L42_2 = L34_2
          L40_2 = L40_2(L41_2, L42_2)
          L34_2 = L40_2
          L40_2 = _G
          L40_2 = L40_2.math
          L40_2 = L40_2.max
          L41_2 = L11_2
          L42_2 = L33_2
          L40_2 = L40_2(L41_2, L42_2)
          L33_2 = L40_2
          L40_2 = _G
          L40_2 = L40_2.math
          L40_2 = L40_2.min
          L41_2 = L12_2
          L42_2 = L35_2
          L40_2 = L40_2(L41_2, L42_2)
          L35_2 = L40_2
        end
        L40_2 = g_targetObjectOverEdgeRemovalDistance
        L41_2 = L12_2 + L40_2
        if not (L39_2 >= L41_2) then
          L41_2 = L11_2 - L40_2
          if not (L39_2 <= L41_2) then
            goto lbl_558
          end
        end
        L42_2 = A0_2
        L41_2 = A0_2.removeCameraTargetObject
        L43_2 = L37_2
        L41_2(L42_2, L43_2)
        L36_2 = L36_2 - 1
        ::lbl_558::
        L41_2 = L10_2 + L40_2
        if not (L38_2 >= L41_2) then
          L41_2 = L9_2 - L40_2
          if not (L38_2 <= L41_2) then
            goto lbl_568
          end
        end
        L42_2 = A0_2
        L41_2 = A0_2.removeCameraTargetObject
        L43_2 = L37_2
        L41_2(L42_2, L43_2)
        L36_2 = L36_2 - 1
        ::lbl_568::
        L36_2 = L36_2 + 1
      end
      L37_2 = _G
      L37_2 = L37_2.math
      L37_2 = L37_2.abs
      L38_2 = L34_2 - L32_2
      L38_2 = L13_2 / L38_2
      L37_2 = L37_2(L38_2)
      L38_2 = _G
      L38_2 = L38_2.math
      L38_2 = L38_2.abs
      L39_2 = L35_2 - L33_2
      L39_2 = L14_2 / L39_2
      L38_2 = L38_2(L39_2)
      L39_2 = _G
      L39_2 = L39_2.math
      L39_2 = L39_2.min
      L40_2 = L37_2
      L41_2 = L38_2
      L39_2 = L39_2(L40_2, L41_2)
      L40_2 = A0_2.animationWorldScale
      if L39_2 > L40_2 then
        L39_2 = A0_2.animationWorldScale
      end
      L40_2 = L34_2 + L32_2
      L40_2 = L40_2 * 0.5
      L18_2.x = L40_2
      L40_2 = L35_2 + L33_2
      L40_2 = L40_2 * 0.5
      L18_2.y = L40_2
      L40_2 = A0_2.gameEngine
      L40_2 = L40_2.screen
      L41_2 = A0_2.gameEngine
      L41_2 = L41_2.screen
      L41_2 = L41_2.x
      L42_2 = A0_2.gameEngine
      L42_2 = L42_2.screen
      L42_2 = L42_2.x
      L43_2 = L18_2.x
      L42_2 = L42_2 - L43_2
      L42_2 = L42_2 * L16_2
      L41_2 = L41_2 - L42_2
      L40_2.x = L41_2
      L40_2 = A0_2.gameEngine
      L40_2 = L40_2.screen
      L41_2 = A0_2.gameEngine
      L41_2 = L41_2.screen
      L41_2 = L41_2.y
      L42_2 = A0_2.gameEngine
      L42_2 = L42_2.screen
      L42_2 = L42_2.y
      L43_2 = L18_2.y
      L42_2 = L42_2 - L43_2
      L42_2 = L42_2 * L16_2
      L41_2 = L41_2 - L42_2
      L40_2.y = L41_2
      L40_2 = A0_2.animationWorldScale2
      L41_2 = A0_2.animationWorldScale2
      L41_2 = L41_2 - L39_2
      L41_2 = L41_2 * L16_2
      L40_2 = L40_2 - L41_2
      A0_2.animationWorldScale2 = L40_2
      L40_2 = A0_2.gameEngine
      L41_2 = A0_2.animationWorldScale2
      L40_2.worldScale = L41_2
      L40_2 = A0_2.gameEngine
      L40_2 = L40_2.g_showCameraDebugData
      if L40_2 then
        L40_2 = g_cameraAnimationVisualization
        L41_2 = A0_2.animationScreen
        L41_2 = L41_2.x
        L40_2.x = L41_2
        L40_2 = g_cameraAnimationVisualization
        L41_2 = A0_2.animationScreen
        L41_2 = L41_2.y
        L40_2.y = L41_2
        L40_2 = g_cameraAnimationVisualization
        L40_2.left = L28_2
        L40_2 = g_cameraAnimationVisualization
        L40_2.right = L30_2
        L40_2 = g_cameraAnimationVisualization
        L40_2.top = L29_2
        L40_2 = g_cameraAnimationVisualization
        L40_2.bottom = L31_2
        L40_2 = g_cameraAnimationVisualizationWithBoundaries
        L41_2 = L32_2 + L34_2
        L41_2 = L41_2 * 0.5
        L40_2.x = L41_2
        L40_2 = g_cameraAnimationVisualizationWithBoundaries
        L41_2 = L33_2 + L35_2
        L41_2 = L41_2 * 0.5
        L40_2.y = L41_2
        L40_2 = g_cameraAnimationVisualizationWithBoundaries
        L40_2.left = L32_2
        L40_2 = g_cameraAnimationVisualizationWithBoundaries
        L40_2.right = L34_2
        L40_2 = g_cameraAnimationVisualizationWithBoundaries
        L40_2.top = L33_2
        L40_2 = g_cameraAnimationVisualizationWithBoundaries
        L40_2.bottom = L35_2
      end
    end
  end
  A0_2.cameraAnimationSlider = L4_2
  A0_2.cameraAnimationSliderTarget = L5_2
end

L0_1.cameraAnimation = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.worldScale
  L3_2 = A0_2.gameEngine
  L3_2 = L3_2.screenWidth
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screenHeight
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screen
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screen
  L6_2 = L6_2.x
  L7_2 = L3_2 * 0.5
  L7_2 = L7_2 / L2_2
  L6_2 = L6_2 - L7_2
  L5_2.left = L6_2
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screen
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screen
  L6_2 = L6_2.y
  L7_2 = L4_2 * 0.5
  L7_2 = L7_2 / L2_2
  L6_2 = L6_2 - L7_2
  L5_2.top = L6_2
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screen
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screen
  L6_2 = L6_2.x
  L7_2 = L3_2 * 0.5
  L7_2 = L7_2 / L2_2
  L6_2 = L6_2 + L7_2
  L5_2.right = L6_2
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screen
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screen
  L6_2 = L6_2.y
  L7_2 = L4_2 * 0.5
  L7_2 = L7_2 / L2_2
  L6_2 = L6_2 + L7_2
  L5_2.bottom = L6_2
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.setWorldScale
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.setTopLeft
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screen
  L6_2 = L6_2.left
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.screen
  L7_2 = L7_2.top
  L5_2(L6_2, L7_2)
end

L0_1.defaultCamera = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.gameEngine
  L1_2 = L1_2.worldScale
  L2_2 = A0_2.levelLimits
  L2_2 = L2_2.minScale
  if L1_2 < L2_2 then
    L1_2 = A0_2.gameEngine
    L2_2 = A0_2.levelLimits
    L2_2 = L2_2.minScale
    L1_2.worldScale = L2_2
  end
  L1_2 = A0_2.gameEngine
  L1_2 = L1_2.screenWidth
  L2_2 = A0_2.gameEngine
  L2_2 = L2_2.screenHeight
  L3_2 = A0_2.gameEngine
  L3_2 = L3_2.worldScale
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screen
  L4_2 = L4_2.x
  L5_2 = L1_2 * 0.5
  L5_2 = L5_2 / L3_2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screen
  L5_2 = L5_2.x
  L6_2 = L1_2 * 0.5
  L6_2 = L6_2 / L3_2
  L5_2 = L5_2 - L6_2
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.screen
  L6_2 = L6_2.y
  L7_2 = L2_2 * 0.5
  L7_2 = L7_2 / L3_2
  L6_2 = L6_2 + L7_2
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.screen
  L7_2 = L7_2.y
  L8_2 = L2_2 * 0.5
  L8_2 = L8_2 / L3_2
  L7_2 = L7_2 - L8_2
  L8_2 = g_useLevelLimits
  if L8_2 then
    L8_2 = g_useRightLimit
    if L8_2 then
      L8_2 = A0_2.levelLimits
      L8_2 = L8_2.right
      if L4_2 > L8_2 then
        L8_2 = A0_2.gameEngine
        L8_2 = L8_2.screen
        L9_2 = A0_2.gameEngine
        L9_2 = L9_2.screen
        L9_2 = L9_2.x
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.right
        L10_2 = L10_2 - L4_2
        L9_2 = L9_2 + L10_2
        L8_2.x = L9_2
      end
    end
    L8_2 = g_useLeftLimit
    if L8_2 then
      L8_2 = A0_2.levelLimits
      L8_2 = L8_2.left
      if L5_2 < L8_2 then
        L8_2 = A0_2.gameEngine
        L8_2 = L8_2.screen
        L9_2 = A0_2.gameEngine
        L9_2 = L9_2.screen
        L9_2 = L9_2.x
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.left
        L10_2 = L10_2 - L5_2
        L9_2 = L9_2 + L10_2
        L8_2.x = L9_2
      end
    end
    L8_2 = g_useGroundLimit
    if L8_2 then
      L8_2 = A0_2.levelLimits
      L8_2 = L8_2.bottom
      if L6_2 > L8_2 then
        L8_2 = A0_2.gameEngine
        L8_2 = L8_2.screen
        L9_2 = A0_2.gameEngine
        L9_2 = L9_2.screen
        L9_2 = L9_2.y
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.bottom
        L10_2 = L10_2 - L6_2
        L9_2 = L9_2 + L10_2
        L8_2.y = L9_2
      end
    end
    L8_2 = g_useSkyLimit
    if L8_2 then
      L8_2 = A0_2.levelLimits
      L8_2 = L8_2.top
      if L7_2 < L8_2 then
        L8_2 = A0_2.gameEngine
        L8_2 = L8_2.screen
        L9_2 = A0_2.gameEngine
        L9_2 = L9_2.screen
        L9_2 = L9_2.y
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.top
        L10_2 = L10_2 - L7_2
        L9_2 = L9_2 + L10_2
        L8_2.y = L9_2
      end
    end
    L8_2 = L4_2 - L5_2
    L9_2 = L6_2 - L7_2
    L10_2 = g_useRightLimit
    if L10_2 then
      L10_2 = g_useLeftLimit
      if L10_2 then
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.maxLevelWidth
        if L8_2 > L10_2 then
          L10_2 = A0_2.gameEngine
          L10_2 = L10_2.screen
          L11_2 = A0_2.levelLimits
          L11_2 = L11_2.left
          L12_2 = A0_2.levelLimits
          L12_2 = L12_2.right
          L11_2 = L11_2 + L12_2
          L11_2 = L11_2 * 0.5
          L10_2.x = L11_2
        end
      end
    end
    L10_2 = g_useGroundLimit
    if L10_2 then
      L10_2 = g_useSkyLimit
      if L10_2 then
        L10_2 = A0_2.levelLimits
        L10_2 = L10_2.maxLevelHeight
        if L9_2 > L10_2 then
          L10_2 = A0_2.gameEngine
          L10_2 = L10_2.screen
          L11_2 = A0_2.levelLimits
          L11_2 = L11_2.bottom
          L12_2 = A0_2.levelLimits
          L12_2 = L12_2.top
          L11_2 = L11_2 + L12_2
          L11_2 = L11_2 * 0.5
          L10_2.y = L11_2
        end
      end
    end
  end
end

L0_1.forceScreenLimits = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not (A1_2 < 1) then
    L3_2 = A0_2.originalCameras
    L3_2 = #L3_2
    if not (A1_2 > L3_2) then
      goto lbl_9
    end
  end
  L3_2 = 0
  do return L3_2 end
  ::lbl_9::
  if not (A2_2 < 1) then
    L3_2 = A0_2.originalCameras
    L3_2 = #L3_2
    if not (A2_2 > L3_2) then
      goto lbl_17
    end
  end
  L3_2 = 0
  do return L3_2 end
  ::lbl_17::
  L3_2 = A0_2.resolutionCorrectedCameras
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2.resolutionCorrectedCameras
  L4_2 = L4_2[A2_2]
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.vLength
  L6_2 = L4_2.px
  L7_2 = L3_2.px
  L6_2 = L6_2 - L7_2
  L7_2 = L4_2.py
  L8_2 = L3_2.py
  L7_2 = L7_2 - L8_2
  return L5_2(L6_2, L7_2)
end

L0_1.getCameraDistance = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2.startCamera
  L5_2 = A0_2.endCamera
  L7_2 = A0_2
  L6_2 = A0_2.getSliderPositionFromCameras
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

L0_1.getSliderPosition = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.abs
  L9_2 = L7_2.px
  L10_2 = L6_2.px
  L9_2 = L9_2 - L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.abs
  L10_2 = L7_2.py
  L11_2 = L6_2.py
  L10_2 = L10_2 - L11_2
  L9_2 = L9_2(L10_2)
  L10_2 = nil
  if L8_2 > L9_2 then
    if L8_2 == 0 then
      L11_2 = 0.5
      return L11_2
    end
    L11_2 = L6_2.px
    L11_2 = A3_2 - L11_2
    L12_2 = L7_2.px
    L13_2 = L6_2.px
    L12_2 = L12_2 - L13_2
    L10_2 = L11_2 / L12_2
  else
    if L9_2 == 0 then
      L11_2 = 0.5
      return L11_2
    end
    L11_2 = L6_2.py
    L11_2 = A4_2 - L11_2
    L12_2 = L7_2.py
    L13_2 = L6_2.py
    L12_2 = L12_2 - L13_2
    L10_2 = L11_2 / L12_2
  end
  if A5_2 == true then
    L11_2 = _G
    L11_2 = L11_2.math
    L11_2 = L11_2.max
    L12_2 = 0
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.min
    L14_2 = L10_2
    L15_2 = 1
    L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
    return L11_2(L12_2, L13_2, L14_2, L15_2)
  end
  return L10_2
end

L0_1.getSliderPositionFromCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A3_2
  if A4_2 == true then
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.max
    L7_2 = 0
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.min
    L9_2 = A3_2
    L10_2 = 1
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
  end
  L6_2 = A1_2.sx
  L7_2 = A2_2.sx
  L8_2 = A1_2.sx
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 * L5_2
  L6_2 = L6_2 + L7_2
  L7_2 = A1_2.px
  L8_2 = A2_2.px
  L9_2 = A1_2.px
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 * L5_2
  L7_2 = L7_2 + L8_2
  L8_2 = A1_2.py
  L9_2 = A2_2.py
  L10_2 = A1_2.py
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 * L5_2
  L8_2 = L8_2 + L9_2
  L9_2 = {}
  L9_2.px = L7_2
  L9_2.py = L8_2
  L9_2.sx = L6_2
  return L9_2
end

L0_1.getAnimatedCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = 100000000
  L4_2 = 100000000
  L5_2 = 1
  L6_2 = -1
  L7_2 = 1
  L8_2 = A0_2.originalCameras
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2.resolutionCorrectedCameras
    L11_2 = L11_2[L10_2]
    L12_2 = A0_2.gameEngine
    L12_2 = L12_2.vLength
    L13_2 = L11_2.px
    L13_2 = A1_2 - L13_2
    L14_2 = L11_2.py
    L14_2 = A2_2 - L14_2
    L12_2 = L12_2(L13_2, L14_2)
    if L3_2 > L12_2 then
      L4_2 = shortestDistace
      L3_2 = L12_2
      L6_2 = L5_2
      L5_2 = L10_2
    elseif L12_2 > L3_2 and L12_2 < L4_2 then
      L4_2 = L12_2
      L6_2 = L10_2
    end
  end
  L7_2 = L5_2
  L8_2 = L6_2
  L9_2 = L3_2
  return L7_2, L8_2, L9_2
end

L0_1.findClosestCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = 100000000
  L4_2 = 1
  L5_2 = 1
  L6_2 = A0_2.originalCameras
  L6_2 = #L6_2
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2.resolutionCorrectedCameras
    L9_2 = L9_2[L8_2]
    L10_2 = A0_2.resolutionCorrectedCameras
    L11_2 = L8_2 + 1
    L10_2 = L10_2[L11_2]
    L11_2 = A0_2.gameEngine
    L11_2 = L11_2.distancePointToLineSegment
    L12_2 = L9_2.px
    L13_2 = L9_2.py
    L14_2 = L10_2.px
    L15_2 = L10_2.py
    L16_2 = A1_2
    L17_2 = A2_2
    L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    if L3_2 > L11_2 then
      L3_2 = L11_2
      L4_2 = L8_2
    end
  end
  L5_2 = L4_2
  L6_2 = L4_2 + 1
  L7_2 = L3_2
  return L5_2, L6_2, L7_2
end

L0_1.findClosestCameraPair = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = 100000000
  L4_2 = 1
  L5_2 = 1
  L6_2 = A0_2.resolutionCorrectedCameras
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2.resolutionCorrectedCameras
    L9_2 = L9_2[L8_2]
    L10_2 = A0_2.gameEngine
    L10_2 = L10_2.vLength
    L11_2 = L9_2.px
    L11_2 = A1_2 - L11_2
    L12_2 = L9_2.py
    L12_2 = A2_2 - L12_2
    L10_2 = L10_2(L11_2, L12_2)
    if L3_2 > L10_2 then
      L3_2 = L10_2
      L4_2 = L8_2
    end
  end
  L5_2 = L4_2
  L6_2 = L3_2
  return L5_2, L6_2
end

L0_1.findClosestCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2.getCameraIndex
  L7_2 = A1_2.name
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.gameEngine
  L6_2 = L6_2.vLength
  L7_2 = A1_2.px
  L7_2 = L7_2 - A3_2
  L8_2 = A1_2.py
  L8_2 = L8_2 - A4_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.vLength
  L8_2 = A2_2.px
  L8_2 = L8_2 - A3_2
  L9_2 = A2_2.py
  L9_2 = L9_2 - A4_2
  L7_2 = L7_2(L8_2, L9_2)
  if L6_2 > L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2.getCameraIndex
    L10_2 = A2_2.name
    L8_2 = L8_2(L9_2, L10_2)
    L5_2 = L8_2
  end
  return L5_2
end

L0_1.findClosestCameraFrom = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2.findClosestCameraFrom
  L5_2 = A0_2.startCamera
  L6_2 = A0_2.endCamera
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.startCameraIndex
  if L3_2 == L4_2 then
    A0_2.cameraAnimationSliderTarget = 0
  else
    A0_2.cameraAnimationSliderTarget = 1
  end
end

L0_1.moveToClosestCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = A0_2.startCamera
  L5_2 = A0_2.endCamera
  L6_2 = L5_2.px
  L7_2 = L4_2.px
  L6_2 = L6_2 - L7_2
  L7_2 = L5_2.py
  L8_2 = L4_2.py
  L7_2 = L7_2 - L8_2
  A0_2.velocity = 0
  A0_2.isSwipingCamera = false
  L8_2 = A0_2.isPanningCamera
  if L8_2 == false then
    L8_2 = A0_2.gameEngine
    L8_2 = L8_2.distancePointToLineSegment
    L9_2 = L4_2.px
    L10_2 = L4_2.py
    L11_2 = L5_2.px
    L12_2 = L5_2.py
    L13_2 = A0_2.gameEngine
    L13_2 = L13_2.screen
    L13_2 = L13_2.x
    L14_2 = A0_2.gameEngine
    L14_2 = L14_2.screen
    L14_2 = L14_2.y
    L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L11_2 = A0_2
    L10_2 = A0_2.getAnimatedCamera
    L12_2 = L4_2
    L13_2 = L5_2
    L14_2 = L9_2
    L15_2 = true
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L11_2 = _G
    L11_2 = L11_2.math
    L11_2 = L11_2.max
    L12_2 = 0
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.min
    L14_2 = 1
    L15_2 = L9_2
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2, L15_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    A0_2.cameraAnimationSlider = L11_2
    L11_2 = A0_2.panDelta
    L12_2 = A0_2.gameEngine
    L12_2 = L12_2.screen
    L12_2 = L12_2.x
    L13_2 = L10_2.px
    L12_2 = L12_2 - L13_2
    L11_2.x = L12_2
    L11_2 = A0_2.panDelta
    L12_2 = A0_2.gameEngine
    L12_2 = L12_2.screen
    L12_2 = L12_2.y
    L13_2 = L10_2.py
    L12_2 = L12_2 - L13_2
    L11_2.y = L12_2
    L11_2 = A0_2.panDelta
    L12_2 = A0_2.gameEngine
    L12_2 = L12_2.worldScale
    L13_2 = L10_2.sx
    L12_2 = L12_2 - L13_2
    L11_2.sx = L12_2
  end
  A0_2.isPanningCamera = true
  L8_2 = A0_2.panningMode
  L9_2 = g_panningModeClassic
  if L8_2 ~= L9_2 then
    L8_2 = A0_2.panningMode
    L9_2 = g_panningModeLinear
    if L8_2 ~= L9_2 then
      goto lbl_149
    end
  end
  L8_2 = A0_2.gameEngine
  L8_2 = L8_2.vLength
  L9_2 = L6_2
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  if 0 < L8_2 then
    L8_2 = A0_2.gameEngine
    L8_2 = L8_2.normalizeVector
    L9_2 = L6_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = A0_2.gameEngine
    L9_2 = L9_2.dotProduct
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = L8_2.x
    L13_2 = L8_2.y
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L11_2 = A0_2
    L10_2 = A0_2.getAnimatedCamera
    L12_2 = L4_2
    L13_2 = L5_2
    L14_2 = A0_2.cameraAnimationSlider
    L15_2 = true
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L11_2 = A0_2.gameEngine
    L11_2 = L11_2.distancePointToLineSegment
    L12_2 = L4_2.px
    L13_2 = L4_2.py
    L14_2 = L5_2.px
    L15_2 = L5_2.py
    L16_2 = L10_2.px
    L17_2 = A0_2.panDelta
    L17_2 = L17_2.x
    L16_2 = L16_2 + L17_2
    L17_2 = L10_2.py
    L18_2 = A0_2.panDelta
    L18_2 = L18_2.y
    L17_2 = L17_2 + L18_2
    L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L14_2 = A0_2
    L13_2 = A0_2.getCameraDistance
    L15_2 = A0_2.startCameraIndex
    L16_2 = A0_2.endCameraIndex
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = g_panningLimit
    L13_2 = L13_2 * L14_2
    L14_2 = 1
    if 0 < L11_2 and 0 < L13_2 then
      L15_2 = L12_2 * L9_2
      if L15_2 < 0 then
        if L11_2 > L13_2 then
          L11_2 = L13_2
        end
        L15_2 = L13_2 - L11_2
        L14_2 = L15_2 / L13_2
      end
    end
    L15_2 = A0_2.panDelta
    L16_2 = A0_2.panDelta
    L16_2 = L16_2.x
    L17_2 = L8_2.x
    L17_2 = L9_2 * L17_2
    L17_2 = L17_2 * L14_2
    L16_2 = L16_2 - L17_2
    L15_2.x = L16_2
    L15_2 = A0_2.panDelta
    L16_2 = A0_2.panDelta
    L16_2 = L16_2.y
    L17_2 = L8_2.y
    L17_2 = L9_2 * L17_2
    L17_2 = L17_2 * L14_2
    L16_2 = L16_2 - L17_2
    L15_2.y = L16_2
  end
  ::lbl_149::
  L8_2 = A0_2.panningMode
  L9_2 = g_panningModeFree
  if L8_2 == L9_2 then
    L8_2 = A0_2.panDelta
    L9_2 = A0_2.panDelta
    L9_2 = L9_2.x
    L9_2 = L9_2 - A1_2
    L8_2.x = L9_2
    L8_2 = A0_2.panDelta
    L9_2 = A0_2.panDelta
    L9_2 = L9_2.y
    L9_2 = L9_2 - A2_2
    L8_2.y = L9_2
    L8_2 = A0_2.panDelta
    L8_2.timer = 1
  end
  L9_2 = A0_2
  L8_2 = A0_2.getAnimatedCamera
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = A0_2.cameraAnimationSlider
  L13_2 = true
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = A0_2.gameEngine
  L9_2 = L9_2.distancePointToLineSegment
  L10_2 = L4_2.px
  L11_2 = L4_2.py
  L12_2 = L5_2.px
  L13_2 = L5_2.py
  L14_2 = L8_2.px
  L15_2 = A0_2.panDelta
  L15_2 = L15_2.x
  L14_2 = L14_2 + L15_2
  L15_2 = L8_2.py
  L16_2 = A0_2.panDelta
  L16_2 = L16_2.y
  L15_2 = L15_2 + L16_2
  L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L12_2 = A0_2
  L11_2 = A0_2.getCameraDistance
  L13_2 = A0_2.startCameraIndex
  L14_2 = A0_2.endCameraIndex
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = g_panningLimit
  L11_2 = L11_2 * L12_2
  if 0 <= L10_2 and L10_2 <= 1 then
    L13_2 = A0_2
    L12_2 = A0_2.getAnimatedCamera
    L14_2 = L4_2
    L15_2 = L5_2
    L16_2 = L10_2
    L17_2 = true
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L13_2 = A0_2.panDelta
    L14_2 = L12_2.sx
    L15_2 = L8_2.sx
    L14_2 = L14_2 - L15_2
    L13_2.sx = L14_2
  end
  if L9_2 > L11_2 then
    if 0 <= L10_2 and L10_2 <= 1 then
      L12_2 = A0_2.gameEngine
      L12_2 = L12_2.vLength
      L13_2 = L5_2.px
      L14_2 = L4_2.px
      L13_2 = L13_2 - L14_2
      L14_2 = L5_2.py
      L15_2 = L4_2.py
      L14_2 = L14_2 - L15_2
      L12_2 = L12_2(L13_2, L14_2)
      if 0 < L12_2 then
        L13_2 = L5_2.py
        L14_2 = L4_2.py
        L13_2 = L13_2 - L14_2
        L13_2 = L13_2 / L12_2
        L14_2 = L5_2.px
        L15_2 = L4_2.px
        L14_2 = L14_2 - L15_2
        L14_2 = L14_2 / L12_2
        L15_2 = 1
        L16_2 = 1
        L17_2 = A0_2.panDelta
        L17_2 = L17_2.x
        if L17_2 ~= 0 then
          L17_2 = A0_2.panDelta
          L17_2 = L17_2.x
          L18_2 = _G
          L18_2 = L18_2.math
          L18_2 = L18_2.abs
          L19_2 = A0_2.panDelta
          L19_2 = L19_2.x
          L18_2 = L18_2(L19_2)
          L15_2 = L17_2 / L18_2
        end
        L17_2 = A0_2.panDelta
        L17_2 = L17_2.y
        if L17_2 ~= 0 then
          L17_2 = A0_2.panDelta
          L17_2 = L17_2.y
          L18_2 = _G
          L18_2 = L18_2.math
          L18_2 = L18_2.abs
          L19_2 = A0_2.panDelta
          L19_2 = L19_2.y
          L18_2 = L18_2(L19_2)
          L16_2 = L17_2 / L18_2
        end
        L17_2 = A0_2.panDelta
        L18_2 = A0_2.panDelta
        L18_2 = L18_2.x
        L19_2 = L9_2 - L11_2
        L19_2 = L13_2 * L19_2
        L19_2 = L19_2 * L15_2
        L18_2 = L18_2 - L19_2
        L17_2.x = L18_2
        L17_2 = A0_2.panDelta
        L18_2 = A0_2.panDelta
        L18_2 = L18_2.y
        L19_2 = L9_2 - L11_2
        L19_2 = L14_2 * L19_2
        L19_2 = L19_2 * L16_2
        L18_2 = L18_2 - L19_2
        L17_2.y = L18_2
      end
    end
    if L10_2 < 0 then
      L12_2 = A0_2.gameEngine
      L12_2 = L12_2.vLength
      L13_2 = L8_2.px
      L14_2 = A0_2.panDelta
      L14_2 = L14_2.x
      L13_2 = L13_2 + L14_2
      L14_2 = L4_2.px
      L13_2 = L13_2 - L14_2
      L14_2 = L8_2.py
      L15_2 = A0_2.panDelta
      L15_2 = L15_2.y
      L14_2 = L14_2 + L15_2
      L15_2 = L4_2.py
      L14_2 = L14_2 - L15_2
      L12_2 = L12_2(L13_2, L14_2)
      if 0 < L12_2 then
        L13_2 = L4_2.px
        L14_2 = L8_2.px
        L15_2 = A0_2.panDelta
        L15_2 = L15_2.x
        L14_2 = L14_2 + L15_2
        L13_2 = L13_2 - L14_2
        L13_2 = L13_2 / L12_2
        L14_2 = L4_2.py
        L15_2 = L8_2.py
        L16_2 = A0_2.panDelta
        L16_2 = L16_2.y
        L15_2 = L15_2 + L16_2
        L14_2 = L14_2 - L15_2
        L14_2 = L14_2 / L12_2
        L15_2 = A0_2.panDelta
        L16_2 = A0_2.panDelta
        L16_2 = L16_2.x
        L17_2 = L9_2 - L11_2
        L17_2 = L13_2 * L17_2
        L16_2 = L16_2 + L17_2
        L15_2.x = L16_2
        L15_2 = A0_2.panDelta
        L16_2 = A0_2.panDelta
        L16_2 = L16_2.y
        L17_2 = L9_2 - L11_2
        L17_2 = L14_2 * L17_2
        L16_2 = L16_2 + L17_2
        L15_2.y = L16_2
      end
    end
    if 1 < L10_2 then
      L12_2 = A0_2.gameEngine
      L12_2 = L12_2.vLength
      L13_2 = L8_2.px
      L14_2 = A0_2.panDelta
      L14_2 = L14_2.x
      L13_2 = L13_2 + L14_2
      L14_2 = L5_2.px
      L13_2 = L13_2 - L14_2
      L14_2 = L8_2.py
      L15_2 = A0_2.panDelta
      L15_2 = L15_2.y
      L14_2 = L14_2 + L15_2
      L15_2 = L5_2.py
      L14_2 = L14_2 - L15_2
      L12_2 = L12_2(L13_2, L14_2)
      if 0 < L12_2 then
        L13_2 = L5_2.px
        L14_2 = L8_2.px
        L15_2 = A0_2.panDelta
        L15_2 = L15_2.x
        L14_2 = L14_2 + L15_2
        L13_2 = L13_2 - L14_2
        L13_2 = L13_2 / L12_2
        L14_2 = L5_2.py
        L15_2 = L8_2.py
        L16_2 = A0_2.panDelta
        L16_2 = L16_2.y
        L15_2 = L15_2 + L16_2
        L14_2 = L14_2 - L15_2
        L14_2 = L14_2 / L12_2
        L15_2 = A0_2.panDelta
        L16_2 = A0_2.panDelta
        L16_2 = L16_2.x
        L17_2 = L9_2 - L11_2
        L17_2 = L13_2 * L17_2
        L16_2 = L16_2 + L17_2
        L15_2.x = L16_2
        L15_2 = A0_2.panDelta
        L16_2 = A0_2.panDelta
        L16_2 = L16_2.y
        L17_2 = L9_2 - L11_2
        L17_2 = L14_2 * L17_2
        L16_2 = L16_2 + L17_2
        L15_2.y = L16_2
      end
    end
  end
end

L0_1.panCamera = L1_1
L0_1 = Camera

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L1_2 = A0_2.isPanningCamera
  if L1_2 == true then
    A0_2.isPanningCamera = false
    L1_2 = A0_2.startCamera
    L2_2 = A0_2.endCamera
    L4_2 = A0_2
    L3_2 = A0_2.getAnimatedCamera
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = A0_2.cameraAnimationSlider
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2.panDelta
    L4_2 = L4_2.x
    L5_2 = L3_2.px
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2.panDelta
    L5_2 = L5_2.y
    L6_2 = L3_2.py
    L5_2 = L5_2 + L6_2
    L6_2 = A0_2.moveToClosestCameraAfterPanning
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.getSliderPosition
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = true
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      A0_2.cameraAnimationSlider = L6_2
      L8_2 = A0_2
      L7_2 = A0_2.moveToClosestCamera
      L9_2 = L4_2
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    else
      L6_2 = A0_2.startCamera
      L6_2 = L6_2.name
      if L6_2 == "bird" then
        L7_2 = A0_2
        L6_2 = A0_2.setAllowCameraAnimation
        L8_2 = false
        L6_2(L7_2, L8_2)
        L7_2 = A0_2
        L6_2 = A0_2.getSliderPosition
        L8_2 = L4_2
        L9_2 = L5_2
        L10_2 = true
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        A0_2.cameraAnimationSlider = L6_2
        L8_2 = A0_2
        L7_2 = A0_2.getAnimatedCamera
        L9_2 = L1_2
        L10_2 = L2_2
        L11_2 = A0_2.cameraAnimationSlider
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L3_2 = L7_2
        L7_2 = A0_2.panDelta
        L7_2.x = 0
        L7_2 = A0_2.panDelta
        L7_2.y = 0
        L7_2 = A0_2.gameEngine
        L7_2 = L7_2.physicsToWorldTransform
        L8_2 = A0_2.gameEngine
        L8_2 = L8_2.levelStartPosition
        L8_2 = L8_2.x
        L9_2 = A0_2.gameEngine
        L9_2 = L9_2.levelStartPosition
        L9_2 = L9_2.y
        L7_2, L8_2 = L7_2(L8_2, L9_2)
        L9_2 = 25
        L10_2 = 0.25
        L11_2 = L6_2
        L12_2 = L3_2
        L13_2 = L12_2.py
        L14_2 = A0_2.gameEngine
        L14_2 = L14_2.screenHeight
        L14_2 = L14_2 * 0.5
        L15_2 = L12_2.sx
        L14_2 = L14_2 / L15_2
        L13_2 = L13_2 + L14_2
        L14_2 = L12_2.py
        L15_2 = A0_2.gameEngine
        L15_2 = L15_2.screenHeight
        L15_2 = L15_2 * 0.5
        L16_2 = L12_2.sx
        L15_2 = L15_2 / L16_2
        L14_2 = L14_2 - L15_2
        L15_2 = L12_2.px
        L16_2 = A0_2.gameEngine
        L16_2 = L16_2.screenWidth
        L16_2 = L16_2 * 0.5
        L17_2 = L12_2.sx
        L16_2 = L16_2 / L17_2
        L15_2 = L15_2 - L16_2
        L16_2 = L12_2.px
        L17_2 = A0_2.gameEngine
        L17_2 = L17_2.screenWidth
        L17_2 = L17_2 * 0.5
        L18_2 = L12_2.sx
        L17_2 = L17_2 / L18_2
        L16_2 = L16_2 + L17_2
        L17_2 = A0_2.gameEngine
        L17_2 = L17_2.screenWidth
        L18_2 = L12_2.sx
        L17_2 = L17_2 / L18_2
        L18_2 = A0_2.gameEngine
        L18_2 = L18_2.screenHeight
        L19_2 = L12_2.sx
        L18_2 = L18_2 / L19_2
        L19_2 = _G
        L19_2 = L19_2.math
        L19_2 = L19_2.abs
        L20_2 = L2_2.px
        L21_2 = L1_2.px
        L20_2 = L20_2 - L21_2
        L19_2 = L19_2(L20_2)
        L20_2 = _G
        L20_2 = L20_2.math
        L20_2 = L20_2.abs
        L21_2 = L2_2.py
        L22_2 = L1_2.py
        L21_2 = L21_2 - L22_2
        L20_2 = L20_2(L21_2)
        if L19_2 > L20_2 then
          L21_2 = 0
          L22_2 = 1
          L23_2 = L1_2.px
          L24_2 = L2_2.px
          if L23_2 < L24_2 then
            L23_2 = L7_2 - L9_2
            L21_2 = L23_2 - L15_2
          else
            L23_2 = L7_2 + L9_2
            L21_2 = L23_2 - L16_2
            L22_2 = -1
          end
          L23_2 = L9_2 * L10_2
          L23_2 = L7_2 + L23_2
          if L15_2 < L23_2 then
            L23_2 = L7_2 - L9_2
            if L15_2 > L23_2 then
              goto lbl_148
            end
          end
          L23_2 = L9_2 * L10_2
          L23_2 = L7_2 - L23_2
          if L16_2 > L23_2 then
            L23_2 = L7_2 + L9_2
            ::lbl_148::
            if L16_2 < L23_2 then
              L23_2 = L21_2 * L22_2
              L23_2 = L17_2 - L23_2
              L24_2 = L12_2.sx
              L24_2 = L24_2 * L17_2
              L24_2 = L24_2 / L23_2
              L26_2 = A0_2
              L25_2 = A0_2.setZoomScale
              L27_2 = L24_2
              L25_2(L26_2, L27_2)
              L1_2 = A0_2.startCamera
              L2_2 = A0_2.endCamera
              L25_2 = L2_2.px
              L26_2 = L1_2.px
              L25_2 = L25_2 - L26_2
              L26_2 = L2_2.py
              L27_2 = L1_2.py
              L26_2 = L26_2 - L27_2
              L27_2 = L12_2.px
              L28_2 = L21_2 * 0.5
              L27_2 = L27_2 + L28_2
              L28_2 = L12_2.py
              L29_2 = L21_2 * 0.5
              L29_2 = L29_2 * L26_2
              L29_2 = L29_2 / L25_2
              L28_2 = L28_2 + L29_2
              L30_2 = A0_2
              L29_2 = A0_2.getSliderPosition
              L31_2 = L27_2
              L32_2 = L28_2
              L33_2 = true
              L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2)
              A0_2.cameraAnimationSlider = L29_2
              L31_2 = A0_2
              L30_2 = A0_2.setZoomScale
              L32_2 = L24_2
              L30_2(L31_2, L32_2)
            end
          end
        else
          L21_2 = 0
          L22_2 = 1
          L23_2 = L1_2.py
          L24_2 = L2_2.py
          if L23_2 < L24_2 then
            L23_2 = L8_2 - L9_2
            L21_2 = L23_2 - L14_2
          else
            L23_2 = L8_2 + L9_2
            L21_2 = L23_2 - L13_2
            L22_2 = -1
          end
          L23_2 = L9_2 * L10_2
          L23_2 = L8_2 + L23_2
          if L14_2 < L23_2 then
            L23_2 = L8_2 - L9_2
            if L14_2 > L23_2 then
              goto lbl_208
            end
          end
          L23_2 = L9_2 * L10_2
          L23_2 = L8_2 - L23_2
          if L13_2 > L23_2 then
            L23_2 = L8_2 + L9_2
            ::lbl_208::
            if L13_2 < L23_2 then
              L23_2 = L21_2 * L22_2
              L23_2 = L18_2 - L23_2
              L24_2 = L12_2.sx
              L24_2 = L24_2 * L18_2
              L24_2 = L24_2 / L23_2
              L26_2 = A0_2
              L25_2 = A0_2.setZoomScale
              L27_2 = L24_2
              L25_2(L26_2, L27_2)
              L1_2 = A0_2.startCamera
              L2_2 = A0_2.endCamera
              L25_2 = L2_2.px
              L26_2 = L1_2.px
              L25_2 = L25_2 - L26_2
              L26_2 = L2_2.py
              L27_2 = L1_2.py
              L26_2 = L26_2 - L27_2
              L27_2 = L12_2.px
              L28_2 = L21_2 * 0.5
              L28_2 = L28_2 * L26_2
              L28_2 = L28_2 / L25_2
              L27_2 = L27_2 + L28_2
              L28_2 = L12_2.py
              L29_2 = L21_2 * 0.5
              L28_2 = L28_2 + L29_2
              L30_2 = A0_2
              L29_2 = A0_2.getSliderPosition
              L31_2 = L27_2
              L32_2 = L28_2
              L33_2 = true
              L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2)
              A0_2.cameraAnimationSlider = L29_2
              L31_2 = A0_2
              L30_2 = A0_2.setZoomScale
              L32_2 = L24_2
              L30_2(L31_2, L32_2)
            end
          end
        end
      end
    end
  end
end

L0_1.panningStopped = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.startCamera
  L4_2 = A0_2.endCamera
  A0_2.isSwipingCamera = true
  A0_2.isPanningCamera = false
  L6_2 = A0_2
  L5_2 = A0_2.setAllowCameraAnimation
  L7_2 = true
  L5_2(L6_2, L7_2)
  A0_2.velocity = A2_2
  A0_2.cameraAnimationSlider = A1_2
  L6_2 = A0_2
  L5_2 = A0_2.storeCameraPosition
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.screen
  L7_2 = L7_2.x
  L8_2 = A0_2.gameEngine
  L8_2 = L8_2.screen
  L8_2 = L8_2.y
  L9_2 = A0_2.gameEngine
  L9_2 = L9_2.worldScale
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2.py
  L6_2 = L4_2.py
  L5_2 = L5_2 - L6_2
  L6_2 = L4_2.px
  L7_2 = L3_2.px
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.vLength
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  if 0 < L7_2 then
    L5_2 = L5_2 / L7_2
    L6_2 = L6_2 / L7_2
    L8_2 = A0_2.gameEngine
    L8_2 = L8_2.dotProduct
    L9_2 = A0_2.panDelta
    L9_2 = L9_2.x
    L10_2 = A0_2.panDelta
    L10_2 = L10_2.y
    L11_2 = L5_2
    L12_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = A0_2.panDelta
    L10_2 = L5_2 * L8_2
    L9_2.x = L10_2
    L9_2 = A0_2.panDelta
    L10_2 = L6_2 * L8_2
    L9_2.y = L10_2
    L9_2 = A0_2.panDelta
    L9_2.sx = 0
  end
  if 0 <= A2_2 then
    A0_2.cameraAnimationSliderTarget = 1
  else
    A0_2.cameraAnimationSliderTarget = 0
  end
end

L0_1.moveBetweenCameras = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.moveToCameraByIndex
  L6_2 = A0_2
  L5_2 = A0_2.getCameraIndex
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.moveToCamera = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screen
  L4_2 = L4_2.x
  L3_2.px = L4_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screen
  L4_2 = L4_2.y
  L3_2.py = L4_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.worldScale
  L3_2.sx = L4_2
  L4_2 = L3_2.sx
  L3_2.sy = L4_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screenWidth
  L3_2.screenWidth = L4_2
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screenHeight
  L3_2.screenHeight = L4_2
  L3_2.removeAfterFocusLost = true
  L5_2 = A0_2
  L4_2 = A0_2.addCameraToIndex
  L6_2 = "temp"
  L8_2 = A0_2
  L7_2 = A0_2.getNumberOfCameras
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 + 1
  L6_2 = L6_2 .. L7_2
  L7_2 = L3_2
  L8_2 = 99
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.setActiveCamerasByIndex
  L6_2 = 99
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.removeAllCameraTargetObjects
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.moveBetweenCameras
  L6_2 = 0
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.moveToCameraByIndex = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 == "Classic" then
    L2_2 = g_panningModeClassic
    A0_2.panningMode = L2_2
  end
  if A1_2 == "Linear" then
    L2_2 = g_panningModeLinear
    A0_2.panningMode = L2_2
  end
  L2_2 = g_panningModeFree
  A0_2.panningMode = L2_2
end

L0_1.setPanningMode = L1_1
L0_1 = Camera

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L2_2 = A0_2.startCamera
  L3_2 = A0_2.endCamera
  L4_2 = A0_2.gameEngine
  L4_2 = L4_2.screenWidth
  L4_2 = L4_2 * 0.5
  L4_2 = L4_2 / A1_2
  L5_2 = A0_2.gameEngine
  L5_2 = L5_2.screenHeight
  L5_2 = L5_2 * 0.5
  L5_2 = L5_2 / A1_2
  L6_2 = 0.5
  L7_2 = A0_2.gameEngine
  L7_2 = L7_2.drawLine2D
  L8_2 = L2_2.px
  L9_2 = L2_2.py
  L10_2 = L3_2.px
  L11_2 = L3_2.py
  L12_2 = L6_2
  L13_2 = 148
  L14_2 = 123
  L15_2 = 38
  L16_2 = 255
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A0_2.animationScreen
  L8_2 = A0_2.gameEngine
  L8_2 = L8_2.drawLine2D
  L9_2 = L7_2.x
  L9_2 = L9_2 - 15
  L10_2 = L7_2.y
  L10_2 = L10_2 - 15
  L11_2 = L7_2.x
  L11_2 = L11_2 + 15
  L12_2 = L7_2.y
  L12_2 = L12_2 + 15
  L13_2 = L6_2
  L14_2 = 0
  L15_2 = 255
  L16_2 = 38
  L17_2 = 255
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = A0_2.gameEngine
  L8_2 = L8_2.drawLine2D
  L9_2 = L7_2.x
  L9_2 = L9_2 + 15
  L10_2 = L7_2.y
  L10_2 = L10_2 - 15
  L11_2 = L7_2.x
  L11_2 = L11_2 - 15
  L12_2 = L7_2.y
  L12_2 = L12_2 + 15
  L13_2 = L6_2
  L14_2 = 0
  L15_2 = 255
  L16_2 = 38
  L17_2 = 255
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = L2_2.px
  L9_2 = L3_2.px
  L10_2 = L2_2.px
  L9_2 = L9_2 - L10_2
  L10_2 = A0_2.cameraAnimationSliderTarget
  L9_2 = L9_2 * L10_2
  L8_2 = L8_2 + L9_2
  L9_2 = L2_2.py
  L10_2 = L3_2.py
  L11_2 = L2_2.py
  L10_2 = L10_2 - L11_2
  L11_2 = A0_2.cameraAnimationSliderTarget
  L10_2 = L10_2 * L11_2
  L9_2 = L9_2 + L10_2
  L10_2 = A0_2.gameEngine
  L10_2 = L10_2.drawLine2D
  L11_2 = L8_2
  L12_2 = L9_2 - 25
  L13_2 = L8_2
  L14_2 = L9_2 + 25
  L15_2 = L6_2
  L16_2 = 0
  L17_2 = 255
  L18_2 = 138
  L19_2 = 255
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = L2_2.px
  L11_2 = L3_2.px
  L12_2 = L2_2.px
  L11_2 = L11_2 - L12_2
  L12_2 = A0_2.cameraAnimationSlider
  L11_2 = L11_2 * L12_2
  L8_2 = L10_2 + L11_2
  L10_2 = L2_2.py
  L11_2 = L3_2.py
  L12_2 = L2_2.py
  L11_2 = L11_2 - L12_2
  L12_2 = A0_2.cameraAnimationSlider
  L11_2 = L11_2 * L12_2
  L9_2 = L10_2 + L11_2
  L10_2 = A0_2.gameEngine
  L10_2 = L10_2.drawLine2D
  L11_2 = L8_2
  L12_2 = L9_2 - 18
  L13_2 = L8_2
  L14_2 = L9_2 + 18
  L15_2 = L6_2
  L16_2 = 248
  L17_2 = 64
  L18_2 = 64
  L19_2 = 255
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = A0_2.gameEngine
  L10_2 = L10_2.drawRectLines
  L11_2 = g_currentCameraVisualization
  L11_2 = L11_2.x
  L11_2 = L11_2 - L4_2
  L12_2 = g_currentCameraVisualization
  L12_2 = L12_2.y
  L12_2 = L12_2 - L5_2
  L13_2 = g_currentCameraVisualization
  L13_2 = L13_2.x
  L13_2 = L13_2 + L4_2
  L14_2 = g_currentCameraVisualization
  L14_2 = L14_2.y
  L14_2 = L14_2 + L5_2
  L15_2 = 3
  L16_2 = 255
  L17_2 = 255
  L18_2 = 255
  L19_2 = 255
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = gameCamera
  L11_2 = L10_2
  L10_2 = L10_2.getDeltaCamera
  L10_2 = L10_2(L11_2)
  L11_2 = A0_2.gameEngine
  L11_2 = L11_2.drawLine2D
  L12_2 = L10_2.px
  L13_2 = L10_2.py
  L13_2 = L13_2 - 15
  L14_2 = L10_2.px
  L15_2 = L10_2.py
  L15_2 = L15_2 + 15
  L16_2 = L6_2
  L17_2 = 148
  L18_2 = 123
  L19_2 = 38
  L20_2 = 255
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = A0_2.gameEngine
  L11_2 = L11_2.drawLine2D
  L12_2 = L10_2.px
  L12_2 = L12_2 - 15
  L13_2 = L10_2.py
  L14_2 = L10_2.px
  L14_2 = L14_2 + 15
  L15_2 = L10_2.py
  L16_2 = L6_2
  L17_2 = 148
  L18_2 = 123
  L19_2 = 38
  L20_2 = 255
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = A0_2.startCamera
  L12_2 = 256
  L13_2 = 256
  L14_2 = 64
  L15_2 = A0_2.gameEngine
  L15_2 = L15_2.drawRectLines
  L16_2 = L11_2.px
  L17_2 = L11_2.screenWidth
  L17_2 = L17_2 * 0.5
  L18_2 = L11_2.sx
  L17_2 = L17_2 / L18_2
  L16_2 = L16_2 - L17_2
  L17_2 = L11_2.py
  L18_2 = L11_2.screenHeight
  L18_2 = L18_2 * 0.5
  L19_2 = L11_2.sy
  L18_2 = L18_2 / L19_2
  L17_2 = L17_2 - L18_2
  L18_2 = L11_2.px
  L19_2 = L11_2.screenWidth
  L19_2 = L19_2 * 0.5
  L20_2 = L11_2.sx
  L19_2 = L19_2 / L20_2
  L18_2 = L18_2 + L19_2
  L19_2 = L11_2.py
  L20_2 = L11_2.screenHeight
  L20_2 = L20_2 * 0.5
  L21_2 = L11_2.sy
  L20_2 = L20_2 / L21_2
  L19_2 = L19_2 + L20_2
  L20_2 = L6_2 * 2
  L21_2 = L12_2
  L22_2 = L13_2
  L23_2 = L14_2
  L24_2 = 255
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L11_2 = A0_2.endCamera
  L15_2 = A0_2.gameEngine
  L15_2 = L15_2.drawRectLines
  L16_2 = L11_2.px
  L17_2 = L11_2.screenWidth
  L17_2 = L17_2 * 0.5
  L18_2 = L11_2.sx
  L17_2 = L17_2 / L18_2
  L16_2 = L16_2 - L17_2
  L17_2 = L11_2.py
  L18_2 = L11_2.screenHeight
  L18_2 = L18_2 * 0.5
  L19_2 = L11_2.sy
  L18_2 = L18_2 / L19_2
  L17_2 = L17_2 - L18_2
  L18_2 = L11_2.px
  L19_2 = L11_2.screenWidth
  L19_2 = L19_2 * 0.5
  L20_2 = L11_2.sx
  L19_2 = L19_2 / L20_2
  L18_2 = L18_2 + L19_2
  L19_2 = L11_2.py
  L20_2 = L11_2.screenHeight
  L20_2 = L20_2 * 0.5
  L21_2 = L11_2.sy
  L20_2 = L20_2 / L21_2
  L19_2 = L19_2 + L20_2
  L20_2 = L6_2 * 2
  L21_2 = L12_2
  L22_2 = L13_2
  L23_2 = L14_2
  L24_2 = 255
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L11_2 = _G
  L11_2 = L11_2.pairs
  L12_2 = A0_2.resolutionCorrectedCameras
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  for L14_2, L15_2 in L11_2, L12_2, L13_2 do
    L16_2 = 256
    L17_2 = 256
    L18_2 = 256
    L19_2 = A0_2.originalCameras
    L19_2 = L19_2[L14_2]
    L19_2 = L19_2.removeAfterFocusLost
    if L19_2 == false then
      L16_2 = 64
      L17_2 = 64
      L18_2 = 255
    end
    L19_2 = L15_2.name
    L20_2 = A0_2.startCamera
    L20_2 = L20_2.name
    if L19_2 ~= L20_2 then
      L19_2 = L15_2.name
      L20_2 = A0_2.endCamera
      L20_2 = L20_2.name
      if L19_2 ~= L20_2 then
        goto lbl_258
      end
    end
    L16_2 = 32
    L17_2 = 255
    L18_2 = 32
    ::lbl_258::
    L19_2 = A0_2.originalCameras
    L19_2 = L19_2[L14_2]
    L19_2 = L19_2.removeAfterFocusLost
    if L19_2 == true then
      L16_2 = 255
      L17_2 = 255
      L18_2 = 0
    end
    L19_2 = A0_2.gameEngine
    L19_2 = L19_2.drawRectLines
    L20_2 = L15_2.px
    L21_2 = L15_2.screenWidth
    L21_2 = L21_2 * 0.5
    L22_2 = L15_2.sx
    L21_2 = L21_2 / L22_2
    L20_2 = L20_2 - L21_2
    L21_2 = L15_2.py
    L22_2 = L15_2.screenHeight
    L22_2 = L22_2 * 0.5
    L23_2 = L15_2.sy
    L22_2 = L22_2 / L23_2
    L21_2 = L21_2 - L22_2
    L22_2 = L15_2.px
    L23_2 = L15_2.screenWidth
    L23_2 = L23_2 * 0.5
    L24_2 = L15_2.sx
    L23_2 = L23_2 / L24_2
    L22_2 = L22_2 + L23_2
    L23_2 = L15_2.py
    L24_2 = L15_2.screenHeight
    L24_2 = L24_2 * 0.5
    L25_2 = L15_2.sy
    L24_2 = L24_2 / L25_2
    L23_2 = L23_2 + L24_2
    L24_2 = L6_2 * 2
    L25_2 = L16_2
    L26_2 = L17_2
    L27_2 = L18_2
    L28_2 = 255
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  end
  L11_2 = A0_2.gameEngine
  L11_2 = L11_2.drawLine2D
  L12_2 = A0_2.levelLimits
  L12_2 = L12_2.left
  L13_2 = A0_2.levelLimits
  L13_2 = L13_2.top
  L14_2 = A0_2.levelLimits
  L14_2 = L14_2.left
  L15_2 = A0_2.levelLimits
  L15_2 = L15_2.bottom
  L16_2 = L6_2
  L17_2 = 255
  L18_2 = 23
  L19_2 = 8
  L20_2 = 255
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = A0_2.gameEngine
  L11_2 = L11_2.drawLine2D
  L12_2 = A0_2.levelLimits
  L12_2 = L12_2.right
  L13_2 = A0_2.levelLimits
  L13_2 = L13_2.top
  L14_2 = A0_2.levelLimits
  L14_2 = L14_2.right
  L15_2 = A0_2.levelLimits
  L15_2 = L15_2.bottom
  L16_2 = L6_2
  L17_2 = 255
  L18_2 = 23
  L19_2 = 8
  L20_2 = 255
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = A0_2.gameEngine
  L11_2 = L11_2.drawLine2D
  L12_2 = A0_2.levelLimits
  L12_2 = L12_2.left
  L13_2 = A0_2.levelLimits
  L13_2 = L13_2.bottom
  L14_2 = A0_2.levelLimits
  L14_2 = L14_2.right
  L15_2 = A0_2.levelLimits
  L15_2 = L15_2.bottom
  L16_2 = L6_2
  L17_2 = 23
  L18_2 = 255
  L19_2 = 8
  L20_2 = 255
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = A0_2.gameEngine
  L11_2 = L11_2.drawLine2D
  L12_2 = A0_2.levelLimits
  L12_2 = L12_2.left
  L13_2 = A0_2.levelLimits
  L13_2 = L13_2.top
  L14_2 = A0_2.levelLimits
  L14_2 = L14_2.right
  L15_2 = A0_2.levelLimits
  L15_2 = L15_2.top
  L16_2 = L6_2
  L17_2 = 255
  L18_2 = 23
  L19_2 = 8
  L20_2 = 255
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A0_2
  L11_2 = A0_2.getNumOfCameraTargetObjects
  L11_2 = L11_2(L12_2)
  if 0 < L11_2 then
    L11_2 = g_cameraAnimationVisualization
    L12_2 = L11_2.left
    if L12_2 ~= nil then
      L12_2 = A0_2.gameEngine
      L12_2 = L12_2.drawRectLines
      L13_2 = L11_2.left
      L14_2 = L11_2.top
      L15_2 = L11_2.right
      L16_2 = L11_2.bottom
      L17_2 = L6_2 * 2
      L18_2 = 255
      L19_2 = 255
      L20_2 = 0
      L21_2 = 0.5
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    end
    L11_2 = g_cameraAnimationVisualizationWithBoundaries
    L12_2 = L11_2.left
    if L12_2 ~= nil then
      L12_2 = A0_2.gameEngine
      L12_2 = L12_2.drawRectLines
      L13_2 = L11_2.left
      L14_2 = L11_2.top
      L15_2 = L11_2.right
      L16_2 = L11_2.bottom
      L17_2 = L6_2 * 2
      L18_2 = 128
      L19_2 = 255
      L20_2 = 0
      L21_2 = 0.5
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    end
    L12_2 = 1
    L14_2 = A0_2
    L13_2 = A0_2.getNumOfCameraTargetObjects
    L13_2 = L13_2(L14_2)
    L14_2 = 1
    for L15_2 = L12_2, L13_2, L14_2 do
      L17_2 = A0_2
      L16_2 = A0_2.getCameraTargetObject
      L18_2 = L15_2
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = A0_2.gameEngine
      L17_2 = L17_2.physicsToWorldTransform
      L18_2 = L16_2.x
      L19_2 = L16_2.y
      L17_2, L18_2 = L17_2(L18_2, L19_2)
      L19_2 = A0_2.gameEngine
      L19_2 = L19_2.drawLine2D
      L20_2 = L17_2
      L21_2 = L18_2 - 25
      L22_2 = L17_2
      L23_2 = L18_2 + 25
      L24_2 = L6_2 * 1.5
      L25_2 = 32
      L26_2 = 255
      L27_2 = 32
      L28_2 = 255
      L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L19_2 = A0_2.gameEngine
      L19_2 = L19_2.drawLine2D
      L20_2 = L17_2 - 25
      L21_2 = L18_2
      L22_2 = L17_2 + 25
      L23_2 = L18_2
      L24_2 = L6_2 * 1.5
      L25_2 = 32
      L26_2 = 255
      L27_2 = 32
      L28_2 = 255
      L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L19_2 = A0_2.gameEngine
      L19_2 = L19_2.drawRectLines
      L20_2 = L17_2 - 20
      L21_2 = L18_2 - 20
      L22_2 = L17_2 + 20
      L23_2 = L18_2 + 20
      L24_2 = L6_2 * 1.5
      L25_2 = 32
      L26_2 = 255
      L27_2 = 32
      L28_2 = 0.5
      L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    end
  end
end

L0_1.drawDebugVisualization = L1_1
