local L0_1, L1_1
L0_1 = {}
MenuManager = L0_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = _G
  L2_2 = L2_2.setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = {}
  A0_2.links = L2_2
  A0_2.currentRoot = nil
  L2_2 = screenWidth
  A0_2.screenWidth = L2_2
  L2_2 = screenHeight
  A0_2.screenHeight = L2_2
  A0_2.queudRoot = nil
  A0_2.allowInput = true
  A0_2.updateEnabled = true
  A0_2.delegateBackClicks = true
  A0_2.rootCount = 0
  A0_2.targetObject = nil
  return A1_2
end

L0_1.new = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2 ~= nil
  L4_2 = "event was nil in eventTriggered"
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHANGE_SCENE
  if L2_2 == L3_2 then
    A0_2.targetObject = nil
    L2_2 = _G
    L2_2 = L2_2.assert
    L3_2 = A1_2.target
    L3_2 = L3_2 ~= nil
    L4_2 = "no target for event"
    L2_2(L3_2, L4_2)
    A0_2.delegateBackClicks = true
    A0_2.sceneChanging = true
    L2_2 = _G
    L2_2 = L2_2.type
    L3_2 = A1_2.target
    L2_2 = L2_2(L3_2)
    if L2_2 == "table" then
      L3_2 = A0_2
      L2_2 = A0_2.changeRoot
      L4_2 = A1_2.target
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.handleResult
      L4_2 = A1_2.target
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_PUSH_FRAME
  if L2_2 == L3_2 then
    A0_2.targetObject = nil
    L2_2 = nil
    L3_2 = A0_2.queudRoot
    if not L3_2 then
      L3_2 = A0_2.currentRoot
    end
    L4_2 = _G
    L4_2 = L4_2.type
    L5_2 = A1_2.target
    L4_2 = L4_2(L5_2)
    if L4_2 == "string" then
      L4_2 = A0_2.links
      L5_2 = A1_2.target
      L4_2 = L4_2[L5_2]
      L2_2 = L4_2.instance
    else
      L2_2 = A1_2.target
    end
    L4_2 = gamelua
    L4_2 = L4_2.eventManager
    L5_2 = L4_2
    L4_2 = L4_2.notify
    L6_2 = {}
    L7_2 = gamelua
    L7_2 = L7_2.events
    L7_2 = L7_2.EID_FRAME_PUSHED
    L6_2.id = L7_2
    L6_2.frame = L2_2
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.addChild
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.queudRoot
    if L3_2 ~= L4_2 then
      L5_2 = L2_2
      L4_2 = L2_2.onEntry
      L4_2(L5_2)
      L5_2 = L2_2
      L4_2 = L2_2.layout
      L4_2(L5_2)
    end
  end
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_POP_FRAME
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.popFrame
    L4_2 = A1_2.target
    L2_2(L3_2, L4_2)
  end
end

L0_1.eventTriggered = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.currentRoot
  if not L2_2 then
    L2_2 = A0_2.queudRoot
  end
  A0_2.targetObject = nil
  if A1_2 ~= nil then
    L3_2 = L2_2.children
    L4_2 = L2_2.children
    L4_2 = #L4_2
    L3_2 = L3_2[L4_2]
    if L3_2 ~= nil then
      L4_2 = L3_2.name
      if L4_2 == A1_2 then
        L5_2 = L2_2
        L4_2 = L2_2.popChild
        L4_2 = L4_2(L5_2)
        L6_2 = L4_2
        L5_2 = L4_2.onExit
        L5_2(L6_2)
        return L4_2
      end
    end
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.popChild
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.onExit
  L4_2(L5_2)
  return L3_2
end

L0_1.popFrame = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2, A2_2, ...)
  local L4_2, L5_2
  L4_2 = A0_2.links
  L5_2 = {}
  L5_2.type = "link"
  L5_2.instance = A2_2
  L4_2[A1_2] = L5_2
end

L0_1.addLink = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.links
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = A0_2.links
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.instance
    return L2_2
  end
  L2_2 = nil
  return L2_2
end

L0_1.getLink = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.links
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2.type
  if L4_2 == "link" then
    L5_2 = A0_2
    L4_2 = A0_2.changeRoot
    L6_2 = L3_2.instance
    L4_2(L5_2, L6_2)
  end
end

L0_1.handleResult = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.currentRoot
  if not L2_2 then
    L2_2 = A0_2.queudRoot
  end
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = L2_2 ~= nil
  L5_2 = "no root to set visible"
  L3_2(L4_2, L5_2)
  L2_2.visible = true
end

L0_1.setRootVisible = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.changeRoot
  L3_2 = nil
  L1_2(L2_2, L3_2)
end

L0_1.deactivate = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.currentRoot
  if not L1_2 then
    L1_2 = A0_2.queudRoot
  end
  return L1_2
end

L0_1.getRoot = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.getRoot
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = L1_2 ~= nil
  L2_2(L3_2)
  L2_2 = L1_2.children
  L3_2 = L1_2.children
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  return L2_2
end

L0_1.getTopFrame = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.currentRoot = A1_2
  if A1_2 ~= nil then
    L2_2 = gamelua
    L2_2 = L2_2.ui
    L2_2 = L2_2.Frame
    L2_2 = L2_2.entryCounts
    if L2_2 ~= nil then
    end
    L2_2 = A0_2.currentRoot
    L3_2 = L2_2
    L2_2 = L2_2.onEntry
    L2_2(L3_2)
    L2_2 = A0_2.currentRoot
    L3_2 = L2_2
    L2_2 = L2_2.layout
    L2_2(L3_2)
    A0_2.sceneChanging = false
    L2_2 = A0_2.rootCount
    L2_2 = L2_2 + 1
    A0_2.rootCount = L2_2
    L2_2 = gamelua
    L2_2 = L2_2.eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = gamelua
    L5_2 = L5_2.events
    L5_2 = L5_2.EID_MENUMANAGER_ROOT_CHANGED
    L4_2.id = L5_2
    L4_2.root = A1_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.setRoot = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    L3_2 = A0_2.currentRoot
    if L3_2 ~= nil then
      L3_2 = A0_2.currentRoot
      L4_2 = L3_2
      L3_2 = L3_2.onExit
      L3_2(L4_2)
    end
    A0_2.currentRoot = nil
  end
  if not A2_2 then
    A0_2.queudRoot = A1_2
  else
    L4_2 = A0_2
    L3_2 = A0_2.setRoot
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.changeRoot = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.currentRoot
  L1_2 = L1_2 ~= nil
  return L1_2
end

L0_1.isMenuActive = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.currentRoot
  if L1_2 ~= nil then
    L1_2 = A0_2.currentRoot
    L2_2 = L1_2
    L1_2 = L1_2.onExit
    L1_2(L2_2)
    L1_2 = A0_2.currentRoot
    L2_2 = L1_2
    L1_2 = L1_2.onEntry
    L1_2(L2_2)
    L1_2 = A0_2.currentRoot
    L2_2 = L1_2
    L1_2 = L1_2.layout
    L1_2(L2_2)
  end
end

L0_1.refreshCurrentRoot = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.currentRoot
  if L1_2 ~= nil then
    L1_2 = A0_2.currentRoot
    L2_2 = L1_2
    L1_2 = L1_2.layout
    L1_2(L2_2)
  end
end

L0_1.gameResumed = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.isPCVersion
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.isPCTouchState
    L1_2 = L1_2()
  end
  L1_2 = gamelua
  L1_2 = L1_2.deviceModel
  L1_2 = gamelua
  L1_2 = L1_2.motionremote
  L1_2 = L1_2.isCursorVisible
  L1_2 = not L1_2 or L1_2
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = gamelua
    L2_2 = L2_2.keyReleased
    L2_2 = L2_2.LBUTTON
    L2_2 = gamelua
    L2_2 = L2_2.keyHold
    L2_2 = L2_2.LBUTTON
    L2_2 = gamelua
    L2_2 = L2_2.keyPressed
    L2_2 = L2_2.LBUTTON
    L2_2 = not L2_2 and L2_2
  end
  return L2_2
end

L0_1.isHovering = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.updateEnabled
  if not L3_2 then
    return
  end
  L3_2 = false
  L4_2 = A0_2.queudRoot
  if L4_2 ~= nil then
    L4_2 = A0_2.currentRoot
    if L4_2 ~= nil then
      L4_2 = A0_2.currentRoot
      L5_2 = L4_2
      L4_2 = L4_2.onExit
      L4_2(L5_2)
      A0_2.currentRoot = nil
    end
    L5_2 = A0_2
    L4_2 = A0_2.setRoot
    L6_2 = A0_2.queudRoot
    L4_2(L5_2, L6_2)
    A0_2.queudRoot = nil
    L3_2 = true
  end
  L4_2 = A0_2.currentRoot
  if L4_2 ~= nil then
    L4_2 = A0_2.screenWidth
    L5_2 = gamelua
    L5_2 = L5_2.screenWidth
    if L4_2 == L5_2 then
      L4_2 = A0_2.screenHeight
      L5_2 = gamelua
      L5_2 = L5_2.screenHeight
      if L4_2 == L5_2 then
        goto lbl_43
      end
    end
    L4_2 = A0_2.currentRoot
    L5_2 = L4_2
    L4_2 = L4_2.layout
    L4_2(L5_2)
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    A0_2.screenWidth = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.screenHeight
    A0_2.screenHeight = L4_2
    ::lbl_43::
    A0_2.delegatingKey = false
    if not L3_2 then
      L4_2 = A0_2.queudRoot
      if L4_2 == nil then
        L5_2 = A0_2
        L4_2 = A0_2.delegateKeyEvents
        L4_2(L5_2)
        L4_2 = A0_2.delegatingKey
        if L4_2 then
          L5_2 = A0_2
          L4_2 = A0_2.isHovering
          L4_2 = L4_2(L5_2)
          if not L4_2 then
            goto lbl_60
          end
        end
        L5_2 = A0_2
        L4_2 = A0_2.delegateClicks
        L4_2(L5_2)
      end
    end
    ::lbl_60::
    L4_2 = A0_2.currentRoot
    L5_2 = L4_2
    L4_2 = L4_2.update
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end

L0_1.update = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.currentRoot
  if L1_2 ~= nil then
    L1_2 = A0_2.currentRoot
    L1_2 = L1_2.backgroundColour
    if L1_2 then
      L2_2 = gamelua
      L2_2 = L2_2.setBGColor
      L3_2 = L1_2.r
      L4_2 = L1_2.g
      L5_2 = L1_2.b
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = A0_2.currentRoot
    L3_2 = L2_2
    L2_2 = L2_2.draw
    L4_2 = 0
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.draw = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  A0_2.allowInput = A1_2
end

L0_1.setAllowInput = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2)
  A0_2.updateEnabled = A1_2
end

L0_1.setUpdateEnabled = L1_1
L0_1 = MenuManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2.delegatingKey = true
  L3_2 = A0_2.currentRoot
  L4_2 = L3_2
  L3_2 = L3_2.onKeyEvent
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.onKeyEvent = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.sceneChanging
  if L1_2 ~= true then
    L1_2 = A0_2.allowInput
    if L1_2 then
      L1_2 = A0_2.delegateBackClicks
      if L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.g_resolutionWarningShown
        if not L1_2 then
          L1_2 = A0_2.currentRoot
          if L1_2 ~= nil then
            L1_2 = _G
            L1_2 = L1_2.pairs
            L2_2 = gamelua
            L2_2 = L2_2.keyPressed
            L1_2, L2_2, L3_2 = L1_2(L2_2)
            for L4_2, L5_2 in L1_2, L2_2, L3_2 do
              L6_2 = gamelua
              L6_2 = L6_2.keyPressed
              L6_2 = L6_2[L4_2]
              if L6_2 and L4_2 ~= "LBUTTON" and L4_2 ~= "RBUTTON" then
                L7_2 = A0_2
                L6_2 = A0_2.onKeyEvent
                L8_2 = "PRESS"
                L9_2 = L4_2
                L6_2(L7_2, L8_2, L9_2)
              end
            end
            L1_2 = _G
            L1_2 = L1_2.pairs
            L2_2 = gamelua
            L2_2 = L2_2.keyReleased
            L1_2, L2_2, L3_2 = L1_2(L2_2)
            for L4_2, L5_2 in L1_2, L2_2, L3_2 do
              L6_2 = gamelua
              L6_2 = L6_2.keyReleased
              L6_2 = L6_2[L4_2]
              if L6_2 and L4_2 ~= "LBUTTON" and L4_2 ~= "RBUTTON" then
                L7_2 = A0_2
                L6_2 = A0_2.onKeyEvent
                L8_2 = "RELEASE"
                L9_2 = L4_2
                L6_2(L7_2, L8_2, L9_2)
              end
            end
          end
        end
      end
    end
  end
end

L0_1.delegateKeyEvents = L1_1
L0_1 = MenuManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.sceneChanging
  if L1_2 ~= true then
    L1_2 = A0_2.allowInput
    if L1_2 then
      L1_2 = A0_2.currentRoot
      if L1_2 ~= nil then
        L1_2 = gamelua
        L1_2 = L1_2.g_resolutionWarningShown
        if not L1_2 then
          L1_2 = gamelua
          L1_2 = L1_2.keyPressed
          L1_2 = L1_2.LBUTTON
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "LPRESS"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L6_2 = A0_2.target
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          end
          L1_2 = gamelua
          L1_2 = L1_2.keyHold
          L1_2 = L1_2.LBUTTON
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "LHOLD"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L6_2 = A0_2.target
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          end
          L1_2 = gamelua
          L1_2 = L1_2.keyReleased
          L1_2 = L1_2.LBUTTON
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "LRELEASE"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L6_2 = A0_2.target
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          end
          L2_2 = A0_2
          L1_2 = A0_2.isHovering
          L1_2 = L1_2(L2_2)
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "HOVER"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          end
          L1_2 = gamelua
          L1_2 = L1_2.cursor
          L1_2 = L1_2.wheelTriggered
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "WHEEL"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          end
          L1_2 = gamelua
          L1_2 = L1_2.keyPressed
          L1_2 = L1_2.RBUTTON
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "RPRESS"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L6_2 = A0_2.target
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          end
          L1_2 = gamelua
          L1_2 = L1_2.keyHold
          L1_2 = L1_2.RBUTTON
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "RHOLD"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L6_2 = A0_2.target
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          end
          L1_2 = gamelua
          L1_2 = L1_2.keyReleased
          L1_2 = L1_2.RBUTTON
          if L1_2 then
            L1_2 = A0_2.currentRoot
            L2_2 = L1_2
            L1_2 = L1_2.onPointerEvent
            L3_2 = "RRELEASE"
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            L5_2 = gamelua
            L5_2 = L5_2.cursor
            L5_2 = L5_2.y
            L6_2 = A0_2.target
            L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          end
        end
      end
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.g_resolutionWarningShown
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.g_IDPopupShown
    if not L1_2 then
      goto lbl_195
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.keyPressed
  L1_2 = L1_2.LBUTTON
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.notificationsFrame
    L2_2 = L1_2
    L1_2 = L1_2.onPointerEvent
    L3_2 = "LPRESS"
    L4_2 = gamelua
    L4_2 = L4_2.cursor
    L4_2 = L4_2.x
    L5_2 = gamelua
    L5_2 = L5_2.cursor
    L5_2 = L5_2.y
    L6_2 = A0_2.target
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.keyReleased
  L1_2 = L1_2.LBUTTON
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.notificationsFrame
    L2_2 = L1_2
    L1_2 = L1_2.onPointerEvent
    L3_2 = "LRELEASE"
    L4_2 = gamelua
    L4_2 = L4_2.cursor
    L4_2 = L4_2.x
    L5_2 = gamelua
    L5_2 = L5_2.cursor
    L5_2 = L5_2.y
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.isHovering
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.notificationsFrame
    L2_2 = L1_2
    L1_2 = L1_2.onPointerEvent
    L3_2 = "HOVER"
    L4_2 = gamelua
    L4_2 = L4_2.cursor
    L4_2 = L4_2.x
    L5_2 = gamelua
    L5_2 = L5_2.cursor
    L5_2 = L5_2.y
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  ::lbl_195::
end

L0_1.delegateClicks = L1_1
