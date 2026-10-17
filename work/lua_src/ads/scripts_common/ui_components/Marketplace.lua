local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = ui
L0_1 = L0_1.AnchorFrame
L1_1 = {}
marketplace = L1_1
L1_1 = 0.8
L2_1 = 0.91

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2 = L1_2.getmetatable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = marketplace
  L2_2 = L2_2.AchievementBox
  if L1_2 ~= L2_2 then
    L2_2 = marketplace
    L2_2 = L2_2.LeaderboardEntry
    if L1_2 ~= L2_2 then
      goto lbl_25
    end
  end
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
  do return L4_2, L5_2 end
  goto lbl_37
  ::lbl_25::
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
  ::lbl_37::
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

L5_1 = marketplace
L6_1 = ui
L6_1 = L6_1.Frame
L7_1 = L6_1
L6_1 = L6_1.new
L6_1 = L6_1(L7_1)
L5_1.Buttons = L6_1
L5_1 = marketplace
L5_1 = L5_1.Buttons

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = {}
  L2_2.name = "btnBuy"
  L2_2.returnValue = "BUY"
  L2_2.enabledImage = "BUY_BUTTON"
  L2_2.spinner = true
  L1_2.buy = L2_2
  A0_2.definitions = L1_2
  L1_2 = {}
  A0_2.buttons = L1_2
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
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L5_1.onEntry = L6_1

function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.print
  L2_2 = "Buttons:onExit()\n"
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L5_1.onExit = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_GAME_RESUMED
  if L2_2 == L3_2 then
    L2_2 = A0_2.service
    L3_2 = L2_2
    L2_2 = L2_2.isTrial
    L2_2 = L2_2(L3_2)
    L2_2 = not L2_2
    if L2_2 then
      L3_2 = A0_2.buttons
      L3_2 = L3_2.buy
      L3_2.visible = false
      L3_2 = gamelua
      L3_2.g_isRegistered = true
      L3_2 = gamelua
      L3_2 = L3_2.eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_FREE_VERSION_UNLOCKED
      L5_2.id = L6_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = gamelua
    L3_2 = L3_2.eventManager
    L4_2 = L3_2
    L3_2 = L3_2.removeEventListener
    L5_2 = gamelua
    L5_2 = L5_2.events
    L5_2 = L5_2.EID_GAME_RESUMED
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
end

L5_1.eventTriggered = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.getButton
  L3_2 = "btnBuy"
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
  L6_2 = L3_2 * 0.7
  L6_2 = L5_2 - L6_2
  L7_2 = {}
  L8_2 = {}
  L8_2.x = L4_2
  L8_2.y = L6_2
  L7_2.buy = L8_2
  L8_2 = A0_2.buttonLayout
  if not L8_2 then
    L8_2 = {}
  end
  A0_2.buttonLayout = L8_2
  L8_2 = _G
  L8_2 = L8_2.pairs
  L9_2 = L7_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = A0_2.buttonLayout
    L13_2 = L13_2[L11_2]
    if L13_2 == nil then
      L13_2 = A0_2.buttonLayout
      L13_2[L11_2] = L12_2
    end
    L13_2 = A0_2.buttons
    L13_2 = L13_2[L11_2]
    L14_2 = L12_2.x
    L13_2.x = L14_2
    L13_2 = A0_2.buttons
    L13_2 = L13_2[L11_2]
    L14_2 = L12_2.y
    L13_2.y = L14_2
  end
  L8_2 = A0_2.service
  L9_2 = L8_2
  L8_2 = L8_2.isTrial
  L8_2 = L8_2(L9_2)
  if L8_2 == false then
    L8_2 = A0_2.buttons
    L8_2 = L8_2.buy
    L8_2.visible = false
  end
end

L5_1.layout = L6_1

function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "BUY" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.addEventListener
    L9_2 = gamelua
    L9_2 = L9_2.events
    L9_2 = L9_2.EID_GAME_RESUMED
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2.service
    L8_2 = L7_2
    L7_2 = L7_2.showMarketplace
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
