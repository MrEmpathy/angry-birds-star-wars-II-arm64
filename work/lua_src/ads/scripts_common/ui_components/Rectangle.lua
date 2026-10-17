local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
Rectangle = L0_1
L0_1 = Rectangle

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.width
  if not L1_2 then
    L1_2 = 1
  end
  A0_2.width = L1_2
  L1_2 = A0_2.height
  if not L1_2 then
    L1_2 = 1
  end
  A0_2.height = L1_2
  L1_2 = A0_2.centered
  if not L1_2 then
    L1_2 = false
  end
  A0_2.centered = L1_2
  A0_2.r = 0
  A0_2.g = 0
  A0_2.b = 0
  A0_2.a = 1
end

L0_1.init = L1_1
L0_1 = Rectangle

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = gamelua
  L3_2 = L3_2.setRenderState
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.x
  L3_2 = A1_2 + L3_2
  L4_2 = A0_2.y
  L4_2 = A2_2 + L4_2
  L5_2 = A0_2.centered
  if L5_2 then
    L5_2 = A0_2.width
    L5_2 = L5_2 / 2
    L3_2 = L3_2 - L5_2
    L5_2 = A0_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
  end
  L5_2 = gamelua
  L5_2 = L5_2.drawRect
  L6_2 = A0_2.r
  L7_2 = A0_2.g
  L8_2 = A0_2.b
  L9_2 = A0_2.a
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = A0_2.width
  L12_2 = L3_2 + L12_2
  L13_2 = A0_2.height
  L13_2 = L4_2 + L13_2
  L14_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.draw
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end

L0_1.draw = L1_1
