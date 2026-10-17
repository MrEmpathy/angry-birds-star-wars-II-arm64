local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
GesturePausePage = L0_1
L0_1 = GesturePausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "buttonMenu"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "TRACKPADMENU_LEVELSELECT"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "buttonResume"
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "TRACKPADMENU_RESUME"
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L3_2.name = "buttonRestart"
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "TRACKPADMENU_RESTART"
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2.visible = false
  A0_2.touchOneID = nil
  A0_2.selection = 0
  A0_2.currentDragX = 0
  A0_2.currentDragY = 0
  A0_2.prevX = 0
  A0_2.prevY = 0
end

L0_1.init = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.touches
  L2_2 = A0_2.touchOneID
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.x
  A0_2.prevX = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.touches
  L2_2 = A0_2.touchOneID
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.y
  A0_2.prevY = L1_2
  A0_2.selection = 0
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
  A0_2.visible = true
end

L0_1.open = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2)
  local L1_2
  A0_2.visible = false
end

L0_1.close = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = 120
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonMenu"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L3_2 = L3_2 * 0.5
  L2_2.x = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonMenu"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L3_2 = L3_2 * 0.5
  L3_2 = L3_2 - L1_2
  L2_2.y = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonResume"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L3_2 = L3_2 * 0.5
  L2_2.x = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonResume"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L3_2 = L3_2 * 0.5
  L2_2.y = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonRestart"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L3_2 = L3_2 * 0.5
  L2_2.x = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonRestart"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L3_2 = L3_2 * 0.5
  L3_2 = L3_2 + L1_2
  L2_2.y = L3_2
end

L0_1.layout = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.visible
  if not L3_2 then
    return
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.updateTouchOne
  L3_2(L4_2)
  L3_2 = A0_2.selection
  L4_2 = A0_2.currentDragY
  L4_2 = L4_2 / 50
  L3_2 = L3_2 + L4_2
  A0_2.selection = L3_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.max
  L5_2 = A0_2.selection
  L6_2 = -2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.selection = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.updateImages
  L6_2 = A0_2
  L5_2 = A0_2.clampedSelection
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.touchOneID
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.triggerSelection
    L6_2 = A0_2
    L5_2 = A0_2.clampedSelection
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.close
    L3_2(L4_2)
  end
end

L0_1.update = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = gamelua
  L3_2 = L3_2.touches
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.touchOneID
    if L5_2 == L7_2 then
      L1_2 = true
      break
    end
  end
  if L1_2 then
    L2_2 = gamelua
    L2_2 = L2_2.touches
    L3_2 = A0_2.touchOneID
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.x
    L3_2 = A0_2.prevX
    L2_2 = L2_2 - L3_2
    A0_2.currentDragX = L2_2
    L2_2 = gamelua
    L2_2 = L2_2.touches
    L3_2 = A0_2.touchOneID
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.y
    L3_2 = A0_2.prevY
    L2_2 = L2_2 - L3_2
    A0_2.currentDragY = L2_2
    L2_2 = gamelua
    L2_2 = L2_2.touches
    L3_2 = A0_2.touchOneID
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.x
    A0_2.prevX = L2_2
    L2_2 = gamelua
    L2_2 = L2_2.touches
    L3_2 = A0_2.touchOneID
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.y
    A0_2.prevY = L2_2
  end
end

L0_1.updateTouchOne = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.selection
  if 1 <= L1_2 then
    L1_2 = 1
    return L1_2
  else
    L1_2 = A0_2.selection
    if L1_2 <= -1 then
      L1_2 = -1
      return L1_2
    else
      L1_2 = 0
      return L1_2
    end
  end
end

L0_1.clampedSelection = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonMenu"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "TRACKPADMENU_LEVELSELECT"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonResume"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "TRACKPADMENU_RESUME"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "buttonRestart"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "TRACKPADMENU_RESTART"
  L2_2(L3_2, L4_2)
  if A1_2 == -1 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "buttonMenu"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.setImage
    L4_2 = "BTN_TRACKPADMENU_LEVELSELECT_HIGHLIGHT"
    L2_2(L3_2, L4_2)
  elseif A1_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "buttonResume"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.setImage
    L4_2 = "BTN_TRACKPADMENU_RESUME_HIGHLIGHT"
    L2_2(L3_2, L4_2)
  elseif A1_2 == 1 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "buttonRestart"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.setImage
    L4_2 = "BTN_TRACKPADMENU_RESTART_HIGHLIGHT"
    L2_2(L3_2, L4_2)
  end
end

L0_1.updateImages = L1_1
L0_1 = GesturePausePage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == -1 then
    L2_2 = gamelua
    L2_2 = L2_2.actions
    L2_2 = L2_2.loadLevelSelectionMenu
    L2_2 = L2_2.action
    L2_2()
    L2_2 = gamelua
    L2_2.g_gestureMenuTriggered = 1.2
    L2_2 = gamelua
    L2_2.g_gestureMenuCursorHide = true
  elseif A1_2 == 1 then
    L2_2 = gamelua
    L2_2 = L2_2.eventManager
    L3_2 = L2_2
    L2_2 = L2_2.queueEvent
    L4_2 = {}
    L5_2 = gamelua
    L5_2 = L5_2.events
    L5_2 = L5_2.EID_LEVEL_RESTART_CLICKED
    L4_2.id = L5_2
    L4_2.from = "Pause"
    L2_2(L3_2, L4_2)
  end
end

L0_1.triggerSelection = L1_1
