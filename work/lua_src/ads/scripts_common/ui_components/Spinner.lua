local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
Spinner = L0_1
L0_1 = Spinner

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.name = "Spinner"
  A0_2.timer = 0
  A0_2.angle = 0
  A0_2.scale = 1
  L1_2 = A0_2.sprite
  if not L1_2 then
    L1_2 = "IN_APP_LOADING"
  end
  A0_2.sprite = L1_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpritePivot
  L2_2 = A0_2.sprite
  L1_2, L2_2 = L1_2(L2_2)
  A0_2.py = L2_2
  A0_2.px = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = spinner
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = Spinner

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.timer
  L3_2 = L3_2 + A1_2
  A0_2.timer = L3_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A0_2.timer
  L4_2 = L4_2 * 10
  L4_2 = L4_2 / 0.5235983
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * 0.5235983
  A0_2.angle = L3_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = Spinner

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = A0_2.scale
  L6_2 = L6_2 * A3_2
  L7_2 = A0_2.scale
  L7_2 = L7_2 * A4_2
  L8_2 = gamelua
  L8_2 = L8_2.setRenderState
  L9_2 = A0_2.x
  L9_2 = L9_2 + A1_2
  L9_2 = L9_2 / L6_2
  L10_2 = A0_2.y
  L10_2 = L10_2 + A2_2
  L10_2 = L10_2 / L7_2
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = A0_2.angle
  L14_2 = A0_2.px
  L15_2 = A0_2.py
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.drawSprite
  L9_2 = A0_2.sprite
  L10_2 = 0
  L11_2 = 0
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = gamelua
  L8_2 = L8_2.setRenderState
  L9_2 = 0
  L10_2 = 0
  L11_2 = 1
  L12_2 = 1
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

L0_1.draw = L1_1
L0_1 = Spinner

function L1_1(A0_2, A1_2)
  A0_2.scale = A1_2
end

L0_1.setScale = L1_1
