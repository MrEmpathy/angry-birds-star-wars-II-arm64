local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
TabButton = L0_1
L0_1 = TabButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bg = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2.suffix = "SITH"
  else
    A0_2.suffix = "LIGHT"
  end
  L1_2 = A0_2.bg
  L2_2 = {}
  L3_2 = "BOX_LEFT_FLAP_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.left = L3_2
  L3_2 = "BOX_MIDDLE_FLAP_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.center = L3_2
  L3_2 = "BOX_RIGHT_FLAP_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.right = L3_2
  L1_2.components = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.bg
  L1_2(L2_2, L3_2)
  A0_2.selected = false
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "title"
  L4_2 = A0_2.tabText
  L3_2.text = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.title
  L1_2(L2_2, L3_2)
end

L0_1.init = L1_1
L0_1 = TabButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.selected
  if L2_2 ~= A1_2 then
    L2_2 = gamelua
    L2_2 = L2_2.playAudio
    L3_2 = "ui_button_general_01"
    L2_2(L3_2)
  end
  A0_2.selected = A1_2
  L2_2 = A0_2.selected
  if not L2_2 then
    L2_2 = A0_2.bg
    L3_2 = {}
    L4_2 = "BOX_LEFT_FLAP_BEHIND_"
    L5_2 = A0_2.suffix
    L4_2 = L4_2 .. L5_2
    L3_2.left = L4_2
    L4_2 = "BOX_MIDDLE_FLAP_BEHIND_"
    L5_2 = A0_2.suffix
    L4_2 = L4_2 .. L5_2
    L3_2.center = L4_2
    L4_2 = "BOX_RIGHT_FLAP_BEHIND_"
    L5_2 = A0_2.suffix
    L4_2 = L4_2 .. L5_2
    L3_2.right = L4_2
    L2_2.components = L3_2
  else
    L2_2 = A0_2.bg
    L3_2 = {}
    L4_2 = "BOX_LEFT_FLAP_"
    L5_2 = A0_2.suffix
    L4_2 = L4_2 .. L5_2
    L3_2.left = L4_2
    L4_2 = "BOX_MIDDLE_FLAP_"
    L5_2 = A0_2.suffix
    L4_2 = L4_2 .. L5_2
    L3_2.center = L4_2
    L4_2 = "BOX_RIGHT_FLAP_"
    L5_2 = A0_2.suffix
    L4_2 = L4_2 .. L5_2
    L3_2.right = L4_2
    L2_2.components = L3_2
  end
end

L0_1.setSelected = L1_1
L0_1 = TabButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L2_2 = L1_2
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.title
  L3_2 = -6 * L1_2
  L2_2.y = L3_2
  L2_2 = A0_2.title
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = L1_2 * 0.8
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = A0_2.bg
  L3_2 = L3_2.components
  L3_2 = L3_2.center
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.max
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 * 0.1
  L6_2 = A0_2.title
  L6_2 = L6_2.width
  L7_2 = gamelua
  L7_2 = L7_2.getFontScale
  L7_2 = L7_2()
  L6_2 = L6_2 * L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.bg
  L6_2 = L5_2
  L5_2 = L5_2.setSize
  L7_2 = L4_2
  L8_2 = L3_2 * L1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2.bg
  L5_2 = L5_2.width
  L6_2 = A0_2.bg
  L7_2 = L6_2
  L6_2 = L6_2.getLeftBlockW
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.bg
  L7_2 = L6_2
  L6_2 = L6_2.getRightBlockW
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 + L6_2
  A0_2.w = L5_2
  L5_2 = A0_2.bg
  L5_2 = L5_2.height
  A0_2.h = L5_2
end

L0_1.layout = L1_1
L0_1 = TabButton

function L1_1(A0_2)
  local L1_2
end

L0_1.onEntry = L1_1
L0_1 = TabButton

function L1_1(A0_2)
  local L1_2
end

L0_1.onExit = L1_1
L0_1 = TabButton

function L1_1(A0_2, A1_2, A2_2)
end

L0_1.onKeyEvent = L1_1
L0_1 = TabButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.x
  L4_2 = A0_2.w
  L4_2 = L4_2 * 0.5
  L3_2 = L3_2 - L4_2
  L3_2 = A1_2 - L3_2
  L4_2 = A0_2.y
  L5_2 = A0_2.h
  L5_2 = L5_2 * 0.5
  L4_2 = L4_2 - L5_2
  L4_2 = A2_2 - L4_2
  L5_2 = 0
  L6_2 = A0_2.w
  L7_2 = 0
  L8_2 = A0_2.h
  if L3_2 >= L5_2 and L3_2 <= L6_2 and L4_2 >= L7_2 and L4_2 <= L8_2 then
    L9_2 = true
    return L9_2
  end
  L9_2 = false
  return L9_2
end

L0_1.hitTest = L1_1
L0_1 = TabButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == "LPRESS" then
    L5_2 = A0_2
    L4_2 = A0_2.hitTest
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      A0_2.pressed = true
  end
  elseif A1_2 == "LRELEASE" then
    L5_2 = A0_2
    L4_2 = A0_2.hitTest
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      L4_2 = A0_2.pressed
      if L4_2 then
        A0_2.pressed = false
        L4_2 = A0_2.returnValue
        L5_2 = A0_2
        L6_2 = A0_2
        return L4_2, L5_2, L6_2
      end
    end
  end
end

L0_1.onPointerEvent = L1_1
L0_1 = TabButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.title
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.setScale = L1_1
L0_1 = TabButton

function L1_1(A0_2, A1_2)
end

L0_1.update = L1_1
L0_1 = TabButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.draw
  L2_2 = A0_2
  L3_2 = x
  L4_2 = y
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.draw = L1_1
