local L0_1, L1_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.sin
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.cos
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 * A0_2
  L6_2 = L3_2 * A1_2
  L5_2 = L5_2 - L6_2
  L6_2 = L3_2 * A0_2
  L7_2 = L4_2 * A1_2
  L6_2 = L6_2 + L7_2
  return L5_2, L6_2
end

vec2Rotate = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.atan2
  L5_2 = dotProduct
  L6_2 = -A1_2
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = dotProduct
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

vec2AngleBetween = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.cos
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.sin
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  return L1_2, L2_2, L3_2
end

vec2FromAngle = L0_1
