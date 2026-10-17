local L0_1, L1_1, L2_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.gamerservices
L1_1 = L0_1.Window

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getSize
  L1_2, L2_2 = L1_2(L2_2)
  L4_2 = A0_2
  L3_2 = A0_2.getScaling
  L3_2 = L3_2(L4_2)
  L4_2 = 55 * L3_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = L4_2
  L8_2 = L2_2 - L4_2
  return L5_2, L6_2, L7_2, L8_2
end

L1_1.backgroundContentRect = L2_1
