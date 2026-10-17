local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
BackgroundBox = L0_1
L0_1 = BackgroundBox

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.x = 0
  A0_2.y = 0
  A0_2.visible = true
  A0_2.locked = false
  A0_2.hanchor = "HCENTER"
  A0_2.vanchor = "VCENTER"
  A0_2.width = 0
  A0_2.height = 0
end

L0_1.init = L1_1
L0_1 = BackgroundBox

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A0_2.visible
  if L5_2 == false then
    return
  end
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = 1
  end
  L6_2 = A0_2.scaleX
  A3_2 = L5_2 * L6_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = 1
  end
  L6_2 = A0_2.scaleY
  A4_2 = L5_2 * L6_2
  L5_2 = gamelua
  L5_2 = L5_2.setRenderState
  L6_2 = 0
  L7_2 = 0
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = gamelua
  L5_2 = L5_2.drawBoxNative
  L6_2 = A0_2.components
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.x
  L8_2 = L8_2 + A1_2
  L8_2 = L8_2 / A3_2
  L7_2 = L7_2(L8_2)
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.floor
  L9_2 = A0_2.y
  L9_2 = L9_2 + A2_2
  L9_2 = L9_2 / A4_2
  L8_2 = L8_2(L9_2)
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.floor
  L10_2 = A0_2.width
  L9_2 = L9_2(L10_2)
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = A0_2.height
  L10_2 = L10_2(L11_2)
  L11_2 = A0_2.hanchor
  L12_2 = A0_2.vanchor
  L13_2 = nil
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

L0_1.drawSelf = L1_1
L0_1 = BackgroundBox

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2.drawSelf
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.draw
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end

L0_1.draw = L1_1
