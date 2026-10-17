local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = ui
L0_1 = L0_1.AnchorFrame
L1_1 = {}
steamLeaderBoards = L1_1
L1_1 = 0.8
L2_1 = 0.91

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2 = L1_2.getmetatable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = steamLeaderBoards
  L2_2 = L2_2.LeaderboardEntry
  if L1_2 == L2_2 then
    L2_2 = A0_2.y
    L3_2 = A0_2.height
    L4_2 = A0_2.vanchor
    L4_2 = -L4_2
    L3_2 = L3_2 * L4_2
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2.height
    L3_2 = L2_2 + L3_2
    L4_2 = L2_2
    L5_2 = L3_2
    return L4_2, L5_2
  else
    L2_2 = ui
    L2_2 = L2_2.ScallableButton
    if L1_2 == L2_2 then
      L2_2 = A0_2.y
      L3_2 = A0_2.py
      L2_2 = L2_2 - L3_2
      L3_2 = A0_2.h
      L3_2 = L2_2 + L3_2
      L4_2 = L2_2
      L5_2 = L3_2
      return L4_2, L5_2
    end
  end
end

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = #A0_2
  if L3_2 == 0 then
    L3_2 = {}
    L4_2 = {}
    L4_2.x = 0
    L4_2.y = 0
    L3_2[1] = L4_2
    return L3_2
  end
  L3_2 = {}
  if not A2_2 then
    A2_2 = 0
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L3_1
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = _G
    L10_2 = L10_2.table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = {}
    L12_2.item = L8_2
    L12_2.x = 0
    L13_2 = L9_2 - A2_2
    L12_2.y = L13_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = L3_1
  L5_2 = #L3_2
  L5_2 = L3_2[L5_2]
  L5_2 = L5_2.item
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = L5_2 - A1_2
  while true do
    L7_2 = #L3_2
    if not (1 < L7_2) then
      break
    end
    L7_2 = #L3_2
    L7_2 = L7_2 - 1
    L7_2 = L3_2[L7_2]
    L7_2 = L7_2.y
    if not (L6_2 <= L7_2) then
      break
    end
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.remove
    L8_2 = L3_2
    L7_2(L8_2)
  end
  return L3_2
end

L5_1 = steamLeaderBoards
L6_1 = ui
L6_1 = L6_1.Frame
L7_1 = L6_1
L6_1 = L6_1.new
L6_1 = L6_1(L7_1)
L5_1.Buttons = L6_1
L5_1 = steamLeaderBoards
L5_1 = L5_1.Buttons

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.spinnersActive = false
  L1_2 = {}
  L2_2 = {}
  L2_2.name = "btnLeaderboards"
  L2_2.returnValue = "LEADERBOARDS"
  L2_2.enabledImage = "BTN_LEADERBOARDS"
  L2_2.disabledImage = "BTN_LEADERBOARDS_DISABLED"
  L1_2.leaderboards = L2_2
  A0_2.definitions = L1_2
  L1_2 = {}
  A0_2.buttons = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.pi
  L1_2 = L1_2 / 6
  A0_2.spinStep = L1_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2.definitions
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = ui
    L6_2 = L6_2.ScallableButton
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L9_2 = L5_2.name
    L8_2.name = L9_2
    L9_2 = L5_2.returnValue
    L8_2.returnValue = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.setImage
    L9_2 = L5_2.enabledImage
    L10_2 = L5_2.disabledImage
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = L5_2.spinner
    if L7_2 then
      L7_2 = ui
      L7_2 = L7_2.Image
      L8_2 = L7_2
      L7_2 = L7_2.new
      L7_2 = L7_2(L8_2)
      L7_2.name = "spinner"
      L7_2.smoothAngle = 0
      L9_2 = L7_2
      L8_2 = L7_2.setImage
      L10_2 = "IN_APP_LOADING"
      L8_2(L9_2, L10_2)
      L7_2.visible = false
      L6_2.spinner = L7_2
      L9_2 = L6_2
      L8_2 = L6_2.addChild
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L7_2 = L5_2.text
    if L7_2 then
      L7_2 = ui
      L7_2 = L7_2.Text
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L9_2.name = "text"
      L10_2 = L5_2.text
      L9_2.text = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.setFont
      L10_2 = "FONT_SPACE_BASIC_SMALL"
      L8_2(L9_2, L10_2)
      L7_2.hanchor = "HCENTER"
      L7_2.vanchor = "VCENTER"
      L9_2 = L6_2
      L8_2 = L6_2.addChild
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L8_2 = A0_2
    L7_2 = A0_2.addButton
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.buttons
    L7_2[L4_2] = L6_2
  end
end

L5_1.init = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_STEAM_ACTION_COMPLETE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L5_1.onEntry = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.print
  L2_2 = "Buttons:onExit()\n"
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_STEAM_ACTION_COMPLETE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L5_1.onExit = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_STEAM_ACTION_COMPLETE
  if L2_2 == L3_2 then
    L2_2 = A1_2.action
    if L2_2 == "LEADERBOARDS" then
      L3_2 = A0_2
      L2_2 = A0_2.setSpin
      L4_2 = "leaderboards"
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L5_1.eventTriggered = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.getButton
  L3_2 = "btnLeaderboards"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = L1_2.enabledImage
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = gamelua
  L4_2 = L4_2.screenWidth
  L4_2 = L4_2 * 0.5
  L5_2 = gamelua
  L5_2 = L5_2.screenHeight
  L6_2 = L3_2 * 0.5
  L6_2 = L5_2 - L6_2
  L7_2 = L3_2 * 2.2
  L7_2 = L5_2 - L7_2
  L8_2 = {}
  L9_2 = {}
  L10_2 = L2_2 * 0
  L10_2 = L4_2 - L10_2
  L9_2.x = L10_2
  L9_2.y = L6_2
  L8_2.leaderboards = L9_2
  L9_2 = A0_2.buttonLayout
  if not L9_2 then
    L9_2 = {}
  end
  A0_2.buttonLayout = L9_2
  L9_2 = _G
  L9_2 = L9_2.pairs
  L10_2 = L8_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = A0_2.buttonLayout
    L14_2 = L14_2[L12_2]
    if L14_2 == nil then
      L14_2 = A0_2.buttonLayout
      L14_2[L12_2] = L13_2
    end
    L14_2 = A0_2.buttons
    L14_2 = L14_2[L12_2]
    L15_2 = L13_2.x
    L14_2.x = L15_2
    L14_2 = A0_2.buttons
    L14_2 = L14_2[L12_2]
    L15_2 = L13_2.y
    L14_2.y = L15_2
  end
  L9_2 = A0_2.buttons
  L9_2 = L9_2.leaderboards
  L10_2 = L9_2
  L9_2 = L9_2.setEnabled
  L11_2 = true
  L9_2(L10_2, L11_2)
end

L5_1.layout = L6_1

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A0_2.buttons
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.spinner
    if L8_2 ~= nil then
      L9_2 = L8_2.visible
      if L9_2 then
        L9_2 = L8_2.smoothAngle
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.pi
        L10_2 = A1_2 * L10_2
        L10_2 = L10_2 * 2
        L9_2 = L9_2 + L10_2
        L8_2.smoothAngle = L9_2
        L9_2 = _G
        L9_2 = L9_2.math
        L9_2 = L9_2.floor
        L10_2 = L8_2.smoothAngle
        L11_2 = A0_2.spinStep
        L10_2 = L10_2 / L11_2
        L9_2 = L9_2(L10_2)
        L10_2 = A0_2.spinStep
        L9_2 = L9_2 * L10_2
        L8_2.angle = L9_2
      end
    end
  end
end

L5_1.update = L6_1

function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "LEADERBOARDS" then
    L7_2 = gamelua
    L7_2 = L7_2.Steam
    L8_2 = L7_2
    L7_2 = L7_2.gotoLeaderboards
    L7_2(L8_2)
    L7_2 = "BLOCK"
    L8_2 = nil
    L9_2 = nil
    return L7_2, L8_2, L9_2
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L5_1.onPointerEvent = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L5_1.addButton = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end

L5_1.getButton = L6_1
L6_1 = steamLeaderBoards
L8_1 = L0_1
L7_1 = L0_1.new
L7_1 = L7_1(L8_1)
L6_1.Window = L7_1
L6_1 = steamLeaderBoards
L6_1 = L6_1.Window
L7_1 = steamLeaderBoards
L9_1 = L0_1
L8_1 = L0_1.new
L8_1 = L8_1(L9_1)
L7_1.WindowBackground = L8_1
L7_1 = steamLeaderBoards
L7_1 = L7_1.WindowBackground

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.image = "MENU_LEVEL_END_BACKGROUND"
  L5_2.name = "flat"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.image = "MENU_RESULT_BG"
  L5_2.name = "frame"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.image = "MENU_LEVEL_END_STARS"
  L5_2.name = "stars"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L7_1.init = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = nil
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "MENU_LEADERBOARD_BACKGROUND"
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 == 0 or L2_2 == nil then
    L4_2 = L7_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L4_2 = L4_2(L5_2)
    L1_2 = L4_2
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.getSpriteBounds
    L5_2 = "MENU_RESULT_BG"
    L4_2, L5_2 = L4_2(L5_2)
    A0_2.bgHeight = L5_2
    A0_2.bgWidth = L4_2
  else
    L4_2 = ui
    L4_2 = L4_2.Image
    L5_2 = L4_2
    L4_2 = L4_2.new
    L4_2 = L4_2(L5_2)
    L1_2 = L4_2
    L5_2 = L1_2
    L4_2 = L1_2.setImage
    L6_2 = "MENU_LEADERBOARD_BACKGROUND"
    L4_2(L5_2, L6_2)
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.getSpriteBounds
    L5_2 = "MENU_LEADERBOARD_BACKGROUND"
    L4_2, L5_2 = L4_2(L5_2)
    A0_2.bgHeight = L5_2
    A0_2.bgWidth = L4_2
  end
  L1_2.name = "background"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.setAnchors
  L6_2 = "HCENTER"
  L7_2 = "VCENTER"
  L4_2(L5_2, L6_2, L7_2)
end

L6_1.init = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2.g_safeToQuit = false
  L1_2 = L0_1
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.print
  L2_2 = "Window:onEntry\n"
  L1_2(L2_2)
end

L6_1.onEntry = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2.g_safeToQuit = true
  L1_2 = L0_1
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.print
  L2_2 = "Window:onExit\n"
  L1_2(L2_2)
end

L6_1.onExit = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  L2_2 = A0_2.bgHeight
  L1_2 = L1_2 / L2_2
  return L1_2
end

L6_1.getScaling = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.bgWidth
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  return L1_2, L2_2
end

L6_1.getSize = L8_1

function L8_1(A0_2, A1_2, A2_2)
end

L6_1.setSize = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.65
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = L0_1
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L6_1.draw = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getSize
  L1_2, L2_2 = L1_2(L2_2)
  L4_2 = A0_2
  L3_2 = A0_2.getScaling
  L3_2 = L3_2(L4_2)
  L4_2 = 20 * L3_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = L4_2
  L8_2 = L2_2 - L4_2
  return L5_2, L6_2, L7_2, L8_2
end

L6_1.backgroundContentRect = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "background"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getSize
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = gamelua
  L4_2 = L4_2.screenWidth
  L4_2 = L4_2 * 0.5
  A0_2.x = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.screenHeight
  L4_2 = L4_2 * 0.5
  A0_2.y = L4_2
  L4_2 = A0_2.bgHeight
  L4_2 = L3_2 / L4_2
  L1_2.scaleY = L4_2
  L1_2.width = L2_2
  L1_2.height = L3_2
  L4_2 = L2_2 * 0.5
  L1_2.x = L4_2
  L4_2 = L3_2 * 0.5
  L1_2.y = L4_2
  L4_2 = L2_2
  A0_2.height = L3_2
  A0_2.width = L4_2
  L4_2 = L0_1
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
end

L6_1.layout = L8_1
L8_1 = _G
L8_1 = L8_1.res
L8_1 = L8_1.createSystemFont
L9_1 = "sysArial"
L10_1 = "Arial"
L11_1 = 18
L12_1 = 255
L13_1 = 255
L14_1 = 255
L15_1 = 255
L16_1 = 1
L8_1(L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1)
L8_1 = steamLeaderBoards
L10_1 = L0_1
L9_1 = L0_1.new
L9_1 = L9_1(L10_1)
L8_1.LeaderboardEntry = L9_1
L8_1 = steamLeaderBoards
L8_1 = L8_1.LeaderboardEntry

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "txtRank"
  L4_2 = "#"
  L5_2 = _G
  L5_2 = L5_2.tostring
  L6_2 = A0_2.rank
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2.text = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "txtGamertag"
  L5_2 = A0_2.gamertag
  L4_2.text = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ui
  L3_2 = L3_2.Text
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "txtScore"
  L6_2 = _G
  L6_2 = L6_2.tostring
  L7_2 = A0_2.score
  L6_2 = L6_2(L7_2)
  L5_2.text = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L1_2
  L4_2 = L1_2.setFont
  L6_2 = "FONT_SPACE_BASIC_SMALL"
  L4_2(L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.setFont
  L6_2 = "sysArial"
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFont
  L6_2 = "FONT_SPACE_BASIC_SMALL"
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L8_1.init = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "txtRank"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "txtGamertag"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "txtScore"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.useFont
  L5_2 = L1_2.font
  L4_2(L5_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getFontLeading
  L4_2 = L4_2()
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.useFont
  L6_2 = L2_2.font
  L5_2(L6_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getFontLeading
  L5_2 = L5_2()
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getStringWidth
  L7_2 = L2_2.text
  L6_2 = L6_2(L7_2)
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.useFont
  L8_2 = L3_2.font
  L7_2(L8_2)
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.getFontLeading
  L7_2 = L7_2()
  A0_2.height = L4_2
  L8_2 = A0_2.width
  if not L8_2 then
    L8_2 = 0
  end
  A0_2.width = L8_2
  L8_2 = A0_2.width
  L8_2 = L8_2 * -0.5
  L1_2.x = L8_2
  L1_2.hanchor = "LEFT"
  L1_2.vanchor = "TOP"
  L8_2 = A0_2.width
  L8_2 = L8_2 * -0.3
  L2_2.x = L8_2
  L2_2.hanchor = "LEFT"
  L2_2.vanchor = "TOP"
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.min
  L9_2 = 0.99
  L10_2 = 180 / L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L2_2.scaleX = L8_2
  L8_2 = A0_2.width
  L8_2 = L8_2 * 0.5
  L3_2.x = L8_2
  L3_2.hanchor = "RIGHT"
  L3_2.vanchor = "TOP"
  L8_2 = L0_1
  L8_2 = L8_2.layout
  L9_2 = A0_2
  L8_2(L9_2)
end

L8_1.layout = L9_1
L9_1 = steamLeaderBoards
L11_1 = L0_1
L10_1 = L0_1.new
L10_1 = L10_1(L11_1)
L9_1.LeaderboardMainPage = L10_1
L9_1 = steamLeaderBoards
L9_1 = L9_1.LeaderboardMainPage

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "scroll"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L5_2 = "link"
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L4_2.name = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "LEADERBOARD_"
  L8_2 = A2_2
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = L4_2.image
  L5_2 = L5_2(L6_2)
  if L5_2 == 0 then
    L6_2 = L4_2
    L5_2 = L4_2.setImage
    L7_2 = "EPISODE_TITLE_5"
    L5_2(L6_2, L7_2)
  end
  L5_2 = _G
  L5_2 = L5_2.table
  L5_2 = L5_2.insert
  L6_2 = A0_2.links
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = "BOARD_"
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L4_2.returnValue = L5_2
  L6_2 = L3_2
  L5_2 = L3_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end

L9_1.addLink = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L0_1
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "header"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "TITLE_NAME_LEADERBOARDS"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScrollFrame
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "scroll"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.scroll_axis = "y"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  A0_2.links = L3_2
  L3_2 = {}
  L4_2 = 1
  L5_2 = gamelua
  L5_2 = L5_2.leaderboards
  L5_2 = L5_2.leaderboardOrder
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = gamelua
    L8_2 = L8_2.leaderboards
    L8_2 = L8_2.leaderboardOrder
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.name
    L9_2 = A0_2.boards
    L9_2 = L9_2[L8_2]
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.addLink
      L11_2 = A0_2.boards
      L11_2 = L11_2[L8_2]
      L11_2 = L11_2.displayName
      L12_2 = A0_2.boards
      L12_2 = L12_2[L8_2]
      L12_2 = L12_2.img
      L9_2(L10_2, L11_2, L12_2)
      L3_2[L8_2] = true
    end
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A0_2.boards
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.displayName
    L9_2 = L9_2.img
    L9_2 = L3_2[L9_2]
    if not L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.addLink
      L11_2 = L8_2.displayName
      L11_2 = L11_2.img
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L4_2 = ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "topBar"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "LEADERBOARD_SEPARATOR_BAR"
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "bottomBar"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = "LEADERBOARD_SEPARATOR_BAR"
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end

L9_1.init = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = A0_2.contentArea
  L1_2 = L1_2.top
  L2_2 = A0_2.contentArea
  L2_2 = L2_2.bottom
  L3_2 = A0_2.width
  L3_2 = L3_2 * 0.5
  L4_2 = 10
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "header"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getSpriteBounds
  L7_2 = L5_2.image
  L6_2, L7_2 = L6_2(L7_2)
  L5_2.x = L3_2
  L8_2 = L7_2 * 0.5
  L8_2 = L1_2 + L8_2
  L5_2.y = L8_2
  L8_2 = L1_2 + L4_2
  L1_2 = L8_2 + L7_2
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getSpriteBounds
  L9_2 = "LEADERBOARD_SEPARATOR_BAR"
  L8_2, L9_2 = L8_2(L9_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "topBar"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L2_1
  L12_2 = A0_2.width
  L11_2 = L11_2 * L12_2
  L11_2 = L11_2 / L8_2
  L10_2.scaleX = L11_2
  L11_2 = 3 / L9_2
  L10_2.scaleY = L11_2
  L10_2.hanchor = "HCENTER"
  L10_2.vanchor = "TOP"
  L10_2.x = L3_2
  L10_2.y = L1_2
  L11_2 = L10_2.scaleY
  L11_2 = L9_2 * L11_2
  L1_2 = L1_2 + L11_2
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "bottomBar"
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L1_1
  L13_2 = A0_2.width
  L12_2 = L12_2 * L13_2
  L12_2 = L12_2 / L8_2
  L11_2.scaleX = L12_2
  L12_2 = 3 / L9_2
  L11_2.scaleY = L12_2
  L11_2.hanchor = "HCENTER"
  L11_2.vanchor = "TOP"
  L11_2.x = L3_2
  L11_2.y = L2_2
  L12_2 = L11_2.scaleY
  L12_2 = L9_2 * L12_2
  L2_2 = L2_2 - L12_2
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "scroll"
  L12_2 = L12_2(L13_2, L14_2)
  L12_2.x = 0
  L12_2.y = L1_2
  L13_2 = A0_2.width
  L12_2.width = L13_2
  L13_2 = L2_2 - L1_2
  L12_2.height = L13_2
  L14_2 = L12_2
  L13_2 = L12_2.setClip
  L15_2 = {}
  L15_2.x = 0
  L16_2 = L12_2.y
  L15_2.y = L16_2
  L16_2 = gamelua
  L16_2 = L16_2.screenWidth
  L15_2.w = L16_2
  L16_2 = L12_2.height
  L15_2.h = L16_2
  L13_2(L14_2, L15_2)
  L13_2 = L4_2 + L1_2
  L14_2 = _G
  L14_2 = L14_2.pairs
  L15_2 = A0_2.links
  L14_2, L15_2, L16_2 = L14_2(L15_2)
  for L17_2, L18_2 in L14_2, L15_2, L16_2 do
    L18_2.x = L3_2
    L18_2.y = L13_2
    L19_2 = _G
    L19_2 = L19_2.res
    L19_2 = L19_2.getSpriteBounds
    L20_2 = L18_2.image
    L19_2, L20_2 = L19_2(L20_2)
    linkHeight = L20_2
    L17_2 = L19_2
    L19_2 = linkHeight
    L19_2 = L13_2 + L19_2
    L13_2 = L19_2 + L4_2
  end
  L14_2 = L0_1
  L14_2 = L14_2.layout
  L15_2 = A0_2
  L14_2(L15_2)
  L14_2 = L4_1
  L15_2 = A0_2.links
  L16_2 = L12_2.height
  L17_2 = 10
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L16_2 = L12_2
  L15_2 = L12_2.setAnchors
  L17_2 = L14_2
  L15_2(L16_2, L17_2)
  L15_2 = L14_2[1]
  L12_2.scroll = L15_2
end

L9_1.layout = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = L0_1
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L7_2 = _G
  L7_2 = L7_2.type
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if L7_2 == "string" then
    L7_2 = _G
    L7_2 = L7_2.string
    L7_2 = L7_2.sub
    L8_2 = L4_2
    L9_2 = 1
    L10_2 = 5
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 == "BOARD" then
      L7_2 = _G
      L7_2 = L7_2.string
      L7_2 = L7_2.sub
      L8_2 = L4_2
      L9_2 = 7
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = gamelua
      L8_2 = L8_2.print
      L9_2 = "LeaderboardMainPage: link clicked to go to "
      L10_2 = L7_2
      L11_2 = "\n"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L8_2(L9_2)
      L8_2 = "BOARD"
      L9_2 = L7_2
      L10_2 = L6_2
      return L8_2, L9_2, L10_2
    end
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L9_1.onPointerEvent = L10_1
L10_1 = steamLeaderBoards
L12_1 = L0_1
L11_1 = L0_1.new
L11_1 = L11_1(L12_1)
L10_1.LeaderboardPage = L11_1
L10_1 = steamLeaderBoards
L10_1 = L10_1.LeaderboardPage

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  A0_2.entries = L1_2
  L1_2 = ui
  L1_2 = L1_2.ScrollFrame
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "scroll"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.scroll_axis = "y"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = nil
  L3_2 = "LEADERBOARD_"
  L4_2 = A0_2.img
  L3_2 = L3_2 .. L4_2
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == 0 then
    L4_2 = ui
    L4_2 = L4_2.Text
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L6_2.name = "header"
    L7_2 = A0_2.header
    L6_2.text = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.setFont
    L5_2 = L2_2.font
    L4_2(L5_2)
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.getFontLeading
    L4_2 = L4_2()
    A0_2.headerHeight = L4_2
  else
    L4_2 = ui
    L4_2 = L4_2.Image
    L5_2 = L4_2
    L4_2 = L4_2.new
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
    L2_2.name = "header"
    L5_2 = L2_2
    L4_2 = L2_2.setImage
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.getSpriteBounds
    L5_2 = L3_2
    L4_2, L5_2 = L4_2(L5_2)
    A0_2.headerHeight = L5_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L2_2.visible = false
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.pi
  L4_2 = L4_2 / 6
  A0_2.spinStep = L4_2
  L4_2 = ui
  L4_2 = L4_2.Text
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "txtLoading"
  L6_2.text = "LOADING"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L5_2 = L5_2(L6_2)
  L5_2.name = "spnLoading"
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = "IN_APP_LOADING"
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "topBar"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = "LEADERBOARD_SEPARATOR_BAR"
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = ui
  L7_2 = L7_2.Image
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "bottomBar"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.setImage
  L10_2 = "LEADERBOARD_SEPARATOR_BAR"
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end

L10_1.init = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2.contentArea
  L1_2 = L1_2.top
  L2_2 = A0_2.contentArea
  L2_2 = L2_2.bottom
  L3_2 = A0_2.width
  L3_2 = L3_2 * 0.5
  L4_2 = 10
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "header"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getSpriteBounds
  L7_2 = L5_2.image
  L6_2, L7_2 = L6_2(L7_2)
  L5_2.x = L3_2
  L8_2 = L7_2 * 0.5
  L8_2 = L1_2 + L8_2
  L5_2.y = L8_2
  L8_2 = L1_2 + L4_2
  L1_2 = L8_2 + L7_2
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getSpriteBounds
  L9_2 = "LEADERBOARD_SEPARATOR_BAR"
  L8_2, L9_2 = L8_2(L9_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "topBar"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L2_1
  L12_2 = A0_2.width
  L11_2 = L11_2 * L12_2
  L11_2 = L11_2 / L8_2
  L10_2.scaleX = L11_2
  L11_2 = 3 / L9_2
  L10_2.scaleY = L11_2
  L10_2.hanchor = "HCENTER"
  L10_2.vanchor = "TOP"
  L10_2.x = L3_2
  L10_2.y = L1_2
  L11_2 = L10_2.scaleY
  L11_2 = L9_2 * L11_2
  L1_2 = L1_2 + L11_2
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "bottomBar"
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L1_1
  L13_2 = A0_2.width
  L12_2 = L12_2 * L13_2
  L12_2 = L12_2 / L8_2
  L11_2.scaleX = L12_2
  L12_2 = 3 / L9_2
  L11_2.scaleY = L12_2
  L11_2.hanchor = "HCENTER"
  L11_2.vanchor = "TOP"
  L11_2.x = L3_2
  L11_2.y = L2_2
  L12_2 = L11_2.scaleY
  L12_2 = L9_2 * L12_2
  L2_2 = L2_2 - L12_2
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "scroll"
  L12_2 = L12_2(L13_2, L14_2)
  L12_2.x = L3_2
  L12_2.y = L1_2
  L13_2 = A0_2.width
  L12_2.width = L13_2
  L13_2 = L2_2 - L1_2
  L12_2.height = L13_2
  L14_2 = L12_2
  L13_2 = L12_2.setClip
  L15_2 = {}
  L15_2.x = 0
  L16_2 = L12_2.y
  L15_2.y = L16_2
  L16_2 = gamelua
  L16_2 = L16_2.screenWidth
  L15_2.w = L16_2
  L16_2 = L12_2.height
  L15_2.h = L16_2
  L13_2(L14_2, L15_2)
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "txtLoading"
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = gamelua
  L14_2 = L14_2.setFont
  L15_2 = L13_2.font
  L14_2(L15_2)
  L14_2 = gamelua
  L14_2 = L14_2.res
  L14_2 = L14_2.getFontLeading
  L14_2 = L14_2()
  L13_2.x = L3_2
  L15_2 = A0_2.height
  L15_2 = L15_2 * 0.5
  L13_2.y = L15_2
  L16_2 = A0_2
  L15_2 = A0_2.getChild
  L17_2 = "spnLoading"
  L15_2 = L15_2(L16_2, L17_2)
  L15_2.smoothAngle = 0
  L15_2.x = L3_2
  L16_2 = L13_2.y
  L17_2 = L14_2 * 1.2
  L16_2 = L16_2 + L17_2
  L15_2.y = L16_2
  L16_2 = L0_1
  L16_2 = L16_2.layout
  L17_2 = A0_2
  L16_2(L17_2)
end

L10_1.layout = L11_1

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "spnLoading"
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.visible
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.getChild
    L5_2 = "spnLoading"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2.smoothAngle
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.pi
    L5_2 = A1_2 * L5_2
    L5_2 = L5_2 * 2
    L4_2 = L4_2 + L5_2
    L3_2.smoothAngle = L4_2
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.floor
    L5_2 = L3_2.smoothAngle
    L6_2 = A0_2.spinStep
    L5_2 = L5_2 / L6_2
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.spinStep
    L4_2 = L4_2 * L5_2
    L3_2.angle = L4_2
  end
end

L10_1.update = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_STEAM_LEADERBOARD_DATA_READY
  if L2_2 == L3_2 then
    L2_2 = A1_2.board
    L3_2 = A0_2.board
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.hideLoadingDisplay
      L2_2(L3_2)
      L2_2 = A1_2.failed
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.showData
        L2_2(L3_2)
      end
    end
  end
end

L10_1.eventTriggered = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "header"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.visible = true
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "spnLoading"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = false
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "txtLoading"
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.visible = false
end

L10_1.hideLoadingDisplay = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_STEAM_LEADERBOARD_DATA_READY
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.service
  L2_2 = L1_2
  L1_2 = L1_2.refreshLeaderboard
  L3_2 = A0_2.board
  L4_2 = A0_2.type
  L5_2 = A0_2.range
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L10_1.onEntry = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_STEAM_LEADERBOARD_DATA_READY
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L10_1.onExit = L11_1
L11_1 = gamelua
L11_1 = L11_1.releaseBuild
if not L11_1 then
  L11_1 = {}
  L10_1.leaderboardExtraEntries = L11_1
end

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.service
  L1_2 = L1_2.leaderboards
  L2_2 = A0_2.board
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.scores
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "scroll"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L8_1
    L2_3 = L1_3
    L1_3 = L1_3.new
    L3_3 = {}
    L4_3 = A0_3.rank
    L3_3.rank = L4_3
    L4_3 = A0_3.name
    L3_3.gamertag = L4_3
    L4_3 = A0_3.score
    L3_3.score = L4_3
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = A0_2
    L2_3 = L2_3.width
    L2_3 = L2_3 * 0.6
    L1_3.width = L2_3
    L3_3 = L1_3
    L2_3 = L1_3.layout
    L2_3(L3_3)
    L3_3 = L1_3
    L2_3 = L1_3.onEntry
    L2_3(L3_3)
    L1_3.x = 0
    L2_3 = L3_2
    L1_3.y = L2_3
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.addChild
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = _G
    L2_3 = L2_3.table
    L2_3 = L2_3.insert
    L3_3 = A0_2
    L3_3 = L3_3.entries
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = L3_2
    L3_3 = L1_3.height
    L2_3 = L2_3 + L3_3
    L3_2 = L2_3
  end
  
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L4_2
    L11_2 = L9_2
    L10_2(L11_2)
  end
  L5_2 = gamelua
  L5_2 = L5_2.releaseBuild
  if not L5_2 then
    L5_2 = _G
    L5_2 = L5_2.pairs
    L6_2 = L10_1
    L6_2 = L6_2.leaderboardExtraEntries
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L4_2
      L11_2 = L9_2
      L10_2(L11_2)
    end
  end
  L5_2 = L4_1
  L6_2 = A0_2.entries
  L7_2 = L2_2.height
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L2_2
  L6_2 = L2_2.setAnchors
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L5_2[1]
  L2_2.scroll = L6_2
end

L10_1.showData = L11_1
L11_1 = steamLeaderBoards
L13_1 = L6_1
L12_1 = L6_1.new
L12_1 = L12_1(L13_1)
L11_1.LeaderboardWindow = L12_1
L11_1 = steamLeaderBoards
L11_1 = L11_1.LeaderboardWindow
L12_1 = {}
L12_1.PAGE_MAIN = 1
L12_1.SCROLL_RIGHT = 2
L12_1.PAGE_BOARD = 3
L12_1.SCROLL_LEFT = 4
L11_1.State = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L6_1
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L9_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "mainPage"
  L4_2 = A0_2.service
  L3_2.service = L4_2
  L4_2 = A0_2.boards
  L3_2.boards = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.mainPage = L1_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L11_1
  L2_2 = L2_2.State
  L2_2 = L2_2.PAGE_MAIN
  A0_2.state = L2_2
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "btnClose"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getEmptyButtonSpriteName
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "btnSymbol"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "ICON_CHECK"
  L4_2(L5_2, L6_2)
  L3_2.vanchor = "VCENTER"
  L3_2.hanchor = "HCENTER"
  L5_2 = L2_2
  L4_2 = L2_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L2_2.returnValue = "CLOSE_LEADERBOARDS"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "btnBack"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2.returnValue = "BACK"
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = gamelua
  L7_2 = L7_2.getEmptyButtonSpriteName
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "iconBack"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = "ICON_BACK"
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setVisible
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.ScallableButton
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "btnPlayer"
  L8_2.meta = "Player"
  L8_2.returnValue = "SWITCH_BOARD"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = ui
  L7_2 = L7_2.ScallableButton
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "btnLeader"
  L9_2.meta = "Leader"
  L9_2.returnValue = "SWITCH_BOARD"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = ui
  L8_2 = L8_2.ScallableButton
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.name = "btnFriends"
  L10_2.meta = "Friends"
  L10_2.returnValue = "SWITCH_BOARD"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L6_2
  L9_2 = L6_2.setImage
  L11_2 = gamelua
  L11_2 = L11_2.getEmptyButtonSpriteName
  L11_2 = L11_2()
  L9_2(L10_2, L11_2)
  L10_2 = L7_2
  L9_2 = L7_2.setImage
  L11_2 = gamelua
  L11_2 = L11_2.getEmptyButtonSpriteName
  L11_2 = L11_2()
  L9_2(L10_2, L11_2)
  L10_2 = L8_2
  L9_2 = L8_2.setImage
  L11_2 = gamelua
  L11_2 = L11_2.getEmptyButtonSpriteName
  L11_2 = L11_2()
  L9_2(L10_2, L11_2)
  L10_2 = L6_2
  L9_2 = L6_2.addChild
  L11_2 = L3_2
  L9_2(L10_2, L11_2)
  L10_2 = L7_2
  L9_2 = L7_2.addChild
  L11_2 = L3_2
  L9_2(L10_2, L11_2)
  L10_2 = L8_2
  L9_2 = L8_2.addChild
  L11_2 = L3_2
  L9_2(L10_2, L11_2)
  L10_2 = A0_2
  L9_2 = A0_2.addChild
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L10_2 = A0_2
  L9_2 = A0_2.addChild
  L11_2 = L7_2
  L9_2(L10_2, L11_2)
  L10_2 = A0_2
  L9_2 = A0_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
end

L11_1.init = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A0_2
  L1_2 = A0_2.getSize
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = 10
  L5_2 = A0_2
  L4_2 = A0_2.backgroundContentRect
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "btnClose"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getSpriteBounds
  L10_2 = L8_2.image
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = L1_2 * 0.9
  L8_2.x = L11_2
  L11_2 = L10_2 * 0.5
  L11_2 = L7_2 - L11_2
  L8_2.y = L11_2
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "btnBack"
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L8_2.x
  L11_2.x = L12_2
  L12_2 = L8_2.y
  L13_2 = L9_2 * 1.1
  L12_2 = L12_2 - L13_2
  L11_2.y = L12_2
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "mainPage"
  L12_2 = L12_2(L13_2, L14_2)
  if L12_2 then
    L14_2 = L12_2
    L13_2 = L12_2.setAnchors
    L15_2 = "HCENTER"
    L16_2 = "TOP"
    L13_2(L14_2, L15_2, L16_2)
    L12_2.width = L1_2
    L12_2.height = L2_2
    L13_2 = L1_2 * 0.5
    L12_2.x = L13_2
    L12_2.y = 0
    L13_2 = {}
    L13_2.top = L6_2
    L13_2.bottom = L7_2
    L12_2.contentArea = L13_2
  end
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "boardPage"
  L13_2 = L13_2(L14_2, L15_2)
  if L13_2 then
    L15_2 = L13_2
    L14_2 = L13_2.setAnchors
    L16_2 = "HCENTER"
    L17_2 = "TOP"
    L14_2(L15_2, L16_2, L17_2)
    L13_2.width = L1_2
    L13_2.height = L2_2
    L14_2 = L1_2 * 0.5
    L13_2.x = L14_2
    L13_2.y = 0
    L14_2 = {}
    L14_2.top = L6_2
    L15_2 = L7_2 - L10_2
    L14_2.bottom = L15_2
    L13_2.contentArea = L14_2
    L15_2 = A0_2
    L14_2 = A0_2.getChild
    L16_2 = "btnPlayer"
    L14_2 = L14_2(L15_2, L16_2)
    L16_2 = A0_2
    L15_2 = A0_2.getChild
    L17_2 = "btnLeader"
    L15_2 = L15_2(L16_2, L17_2)
    L17_2 = A0_2
    L16_2 = A0_2.getChild
    L18_2 = "btnFriends"
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = L1_2 * 0.1
    L14_2.x = L17_2
    L17_2 = L10_2 * 0.5
    L17_2 = L7_2 - L17_2
    L14_2.y = L17_2
    L17_2 = L1_2 * 0.5
    L15_2.x = L17_2
    L17_2 = L10_2 * 0.5
    L17_2 = L7_2 - L17_2
    L15_2.y = L17_2
    L17_2 = L1_2 * 0.9
    L16_2.x = L17_2
    L17_2 = L10_2 * 0.5
    L17_2 = L7_2 - L17_2
    L16_2.y = L17_2
  end
  L14_2 = L6_1
  L14_2 = L14_2.layout
  L15_2 = A0_2
  L14_2(L15_2)
end

L11_1.layout = L12_1

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.service
  L2_2 = L1_2
  L1_2 = L1_2.setLeaderboardsStale
  L1_2(L2_2)
  L1_2 = L6_1
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L11_1.onExit = L12_1

function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = L6_1
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "SWITCH_BOARD" then
    L8_2 = A0_2
    L7_2 = A0_2.removeChild
    L9_2 = A0_2.boardPage
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.boardPage
    L7_2 = L7_2.board
    L8_2 = L10_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.name = "boardPage"
    L11_2 = A0_2.service
    L10_2.service = L11_2
    L10_2.board = L7_2
    L11_2 = A0_2.boards
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2.img
    L10_2.img = L11_2
    L11_2 = A0_2.boards
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2.displayName
    L10_2.header = L11_2
    L10_2.range = 10
    L10_2.type = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    A0_2.boardPage = L8_2
    L9_2 = A0_2.width
    L8_2.width = L9_2
    L9_2 = L11_1
    L9_2 = L9_2.State
    L9_2 = L9_2.PAGE_BOARD
    A0_2.state = L9_2
    L10_2 = A0_2
    L9_2 = A0_2.getChild
    L11_2 = "btnBack"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2
    L9_2 = L9_2.setVisible
    L11_2 = true
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.removeChild
    L11_2 = A0_2.mainPage
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.mainPage
    L10_2 = L9_2
    L9_2 = L9_2.onExit
    L9_2(L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.onEntry
    L9_2(L10_2)
    L10_2 = A0_2
    L9_2 = A0_2.layout
    L9_2(L10_2)
  end
  if L4_2 == "BOARD" then
    L7_2 = A0_2.state
    L8_2 = L11_1
    L8_2 = L8_2.State
    L8_2 = L8_2.PAGE_MAIN
    if L7_2 ~= L8_2 then
      L7_2 = A0_2.state
      L8_2 = L11_1
      L8_2 = L8_2.State
      L8_2 = L8_2.PAGE_BOARD
      if L7_2 ~= L8_2 then
        L7_2 = "BLOCK"
        L8_2 = nil
        L9_2 = nil
        return L7_2, L8_2, L9_2
      end
    end
    L7_2 = L5_2
    L8_2 = L10_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.name = "boardPage"
    L11_2 = A0_2.service
    L10_2.service = L11_2
    L10_2.board = L7_2
    L11_2 = A0_2.boards
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2.img
    L10_2.img = L11_2
    L11_2 = A0_2.boards
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2.displayName
    L10_2.header = L11_2
    L10_2.range = 30
    L10_2.type = "Friends"
    L8_2 = L8_2(L9_2, L10_2)
    A0_2.boardPage = L8_2
    L9_2 = A0_2.width
    L8_2.width = L9_2
    L9_2 = L11_1
    L9_2 = L9_2.State
    L9_2 = L9_2.PAGE_BOARD
    A0_2.state = L9_2
    L10_2 = A0_2
    L9_2 = A0_2.getChild
    L11_2 = "btnBack"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2
    L9_2 = L9_2.setVisible
    L11_2 = true
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.removeChild
    L11_2 = A0_2.mainPage
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.mainPage
    L10_2 = L9_2
    L9_2 = L9_2.onExit
    L9_2(L10_2)
    L10_2 = A0_2
    L9_2 = A0_2.getChild
    L11_2 = "btnPlayer"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2
    L9_2 = L9_2.setVisible
    L11_2 = true
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.getChild
    L11_2 = "btnLeader"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2
    L9_2 = L9_2.setVisible
    L11_2 = true
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.getChild
    L11_2 = "btnFriends"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2
    L9_2 = L9_2.setVisible
    L11_2 = true
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.onEntry
    L9_2(L10_2)
    L10_2 = A0_2
    L9_2 = A0_2.layout
    L9_2(L10_2)
  elseif L4_2 == "BACK" then
    L7_2 = A0_2.state
    L8_2 = L11_1
    L8_2 = L8_2.State
    L8_2 = L8_2.PAGE_BOARD
    if L7_2 ~= L8_2 then
      L7_2 = "BLOCK"
      L8_2 = nil
      L9_2 = nil
      return L7_2, L8_2, L9_2
    end
    L7_2 = L11_1
    L7_2 = L7_2.State
    L7_2 = L7_2.PAGE_MAIN
    A0_2.state = L7_2
    L8_2 = A0_2
    L7_2 = A0_2.removeChild
    L9_2 = A0_2.boardPage
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.addChild
    L9_2 = A0_2.mainPage
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "btnBack"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.setVisible
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.boardPage
    L8_2 = L7_2
    L7_2 = L7_2.onExit
    L7_2(L8_2)
    L7_2 = A0_2.mainPage
    L8_2 = L7_2
    L7_2 = L7_2.onEntry
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "btnPlayer"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.setVisible
    L9_2 = false
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "btnLeader"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.setVisible
    L9_2 = false
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "btnFriends"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.setVisible
    L9_2 = false
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.layout
    L7_2(L8_2)
  elseif L4_2 == "CLOSE_LEADERBOARDS" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_POP_FRAME
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = nil
  return L7_2, L8_2, L9_2
end

L11_1.onPointerEvent = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L3_2 = A0_2.state
    L4_2 = L11_1
    L4_2 = L4_2.State
    L4_2 = L4_2.PAGE_BOARD
    if L3_2 == L4_2 then
      L3_2 = L11_1
      L3_2 = L3_2.State
      L3_2 = L3_2.PAGE_MAIN
      A0_2.state = L3_2
      L4_2 = A0_2
      L3_2 = A0_2.removeChild
      L5_2 = A0_2.boardPage
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.addChild
      L5_2 = A0_2.mainPage
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "btnBack"
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2
      L3_2 = L3_2.setVisible
      L5_2 = false
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.layout
      L3_2(L4_2)
      L3_2 = A0_2.boardPage
      L4_2 = L3_2
      L3_2 = L3_2.onExit
      L3_2(L4_2)
      L3_2 = A0_2.mainPage
      L4_2 = L3_2
      L3_2 = L3_2.onEntry
      L3_2(L4_2)
    else
      L3_2 = A0_2.state
      L4_2 = L11_1
      L4_2 = L4_2.State
      L4_2 = L4_2.PAGE_MAIN
      if L3_2 == L4_2 then
        L3_2 = gamelua
        L3_2 = L3_2.eventManager
        L4_2 = L3_2
        L3_2 = L3_2.notify
        L5_2 = {}
        L6_2 = gamelua
        L6_2 = L6_2.events
        L6_2 = L6_2.EID_POP_FRAME
        L5_2.id = L6_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = "BLOCK"
  L4_2 = nil
  L5_2 = nil
  return L3_2, L4_2, L5_2
end

L11_1.onKeyEvent = L12_1
L12_1 = steamLeaderBoards
L13_1 = ui
L13_1 = L13_1.Frame
L14_1 = L13_1
L13_1 = L13_1.new
L13_1 = L13_1(L14_1)
L12_1.ErrorDialog = L13_1
L12_1 = steamLeaderBoards
L12_1 = L12_1.ErrorDialog

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2.g_safeToQuit = false
end

L12_1.onEntry = L13_1

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2.g_safeToQuit = true
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L12_1.onExit = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgbox"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "txtError"
  L5_2 = A0_2.msg
  L4_2.text = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFont
  L5_2 = "FONT_SPACE_BASIC_SMALL"
  L3_2(L4_2, L5_2)
  L2_2.vanchor = "VCENTER"
  L2_2.hanchor = "HCENTER"
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.actionIcon
  if L3_2 ~= nil then
    L3_2 = ui
    L3_2 = L3_2.ScallableButton
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.name = "btnAction"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.setImage
    L6_2 = A0_2.actionIcon
    L4_2(L5_2, L6_2)
    L3_2.returnValue = "LAUNCH_ACTION"
    L5_2 = L1_2
    L4_2 = L1_2.addChild
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "btnClose"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = gamelua
  L6_2 = L6_2.getEmptyButtonSpriteName
  L6_2, L7_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "btnSymbol"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "ICON_RED_CROSS"
  L5_2(L6_2, L7_2)
  L4_2.vanchor = "VCENTER"
  L4_2.hanchor = "HCENTER"
  L6_2 = L3_2
  L5_2 = L3_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L3_2.returnValue = "CLOSE_GS_ERROR"
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end

L12_1.init = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = gamelua
  L1_2 = L1_2.drawRect
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0.65
  L6_2 = 0
  L7_2 = 0
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L10_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.draw
  L2_2 = A0_2
  L1_2(L2_2)
end

L12_1.draw = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  A0_2.width = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  A0_2.height = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "bgbox"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2.width
  L2_2 = L2_2 * 0.4
  L1_2.width = L2_2
  L2_2 = A0_2.height
  L2_2 = L2_2 * 0.4
  L1_2.height = L2_2
  L2_2 = A0_2.width
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L2_2 = A0_2.height
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.getChild
  L4_2 = "txtError"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2.width
  L3_2 = L3_2 * 0.8
  L2_2.width = L3_2
  L3_2 = L1_2.height
  L3_2 = L3_2 * -0.18
  L2_2.y = L3_2
  L3_2 = L2_2.width
  L2_2.textBoxSize = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.clip
  L3_2(L4_2)
  L2_2.visible = true
  L4_2 = L1_2
  L3_2 = L1_2.getChild
  L5_2 = "btnClose"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_2.width
  L4_2 = L4_2 * 0.4
  L3_2.x = L4_2
  L4_2 = L1_2.height
  L4_2 = L4_2 * 0.5
  L3_2.y = L4_2
  L4_2 = A0_2.actionIcon
  if L4_2 ~= nil then
    L5_2 = L1_2
    L4_2 = L1_2.getChild
    L6_2 = "btnAction"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = _G
    L5_2 = L5_2.res
    L5_2 = L5_2.getSpriteBounds
    L6_2 = L3_2.image
    L5_2, L6_2 = L5_2(L6_2)
    L4_2.x = 0
    L7_2 = L4_2.image
    if L7_2 == "BTN_CHECK" then
      L7_2 = L1_2.width
      L7_2 = -L7_2
      L7_2 = L7_2 * 0.4
      L4_2.x = L7_2
    end
    L7_2 = L3_2.y
    L4_2.y = L7_2
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
end

L12_1.layout = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "RETURN" or A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L5_2 = gamelua
    L5_2 = L5_2.eventManager
    L6_2 = L5_2
    L5_2 = L5_2.notify
    L7_2 = {}
    L8_2 = events
    L8_2 = L8_2.EID_POP_FRAME
    L7_2.id = L8_2
    L5_2(L6_2, L7_2)
    L5_2 = nil
    return L5_2
  end
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end

L12_1.onKeyEvent = L13_1

function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE_STEAM_ERROR" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_POP_FRAME
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "LAUNCH_ACTION" then
    L7_2 = A0_2.action
    L7_2()
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = nil
  return L7_2, L8_2, L9_2
end

L12_1.onPointerEvent = L13_1
