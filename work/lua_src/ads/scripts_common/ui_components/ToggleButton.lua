local L0_1, L1_1
L0_1 = ScallableButton
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ToggleButton = L0_1
L0_1 = ToggleButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ScallableButton
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.state = 1
  L1_2 = {}
  A0_2.toggle_images = L1_2
end

L0_1.init = L1_1
L0_1 = ToggleButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = ScallableButton
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L6_2 == A0_2 then
    L7_2 = A0_2.state
    L7_2 = L7_2 + 1
    A0_2.state = L7_2
    L7_2 = A0_2.state
    L8_2 = A0_2.states
    L8_2 = #L8_2
    if L7_2 > L8_2 then
      A0_2.state = 1
    end
    L7_2 = ScallableButton
    L7_2 = L7_2.setImage
    L8_2 = A0_2
    L9_2 = A0_2.states
    L10_2 = A0_2.state
    L9_2 = L9_2[L10_2]
    L10_2 = A0_2.disabled_image
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = ToggleButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2.states = A1_2
  L3_2 = ScallableButton
  L3_2 = L3_2.setImage
  L4_2 = A0_2
  L5_2 = A0_2.state
  L5_2 = A1_2[L5_2]
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.setImage = L1_1
L0_1 = ToggleButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.state = A1_2
  L2_2 = ScallableButton
  L2_2 = L2_2.setImage
  L3_2 = A0_2
  L4_2 = A0_2.states
  L5_2 = A0_2.state
  L4_2 = L4_2[L5_2]
  L5_2 = disabled_image
  L2_2(L3_2, L4_2, L5_2)
end

L0_1.setState = L1_1
