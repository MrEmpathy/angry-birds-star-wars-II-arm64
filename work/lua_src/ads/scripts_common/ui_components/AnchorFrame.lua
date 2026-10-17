local L0_1, L1_1, L2_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
AnchorFrame = L0_1

function L0_1(A0_2, A1_2)
  local L2_2
  if A1_2 == "TOP" or A1_2 == "VCENTER" or A1_2 == "BOTTOM" then
    L2_2 = {}
    L2_2.TOP = 0
    L2_2.VCENTER = 0.5
    L2_2.BOTTOM = 1
    L2_2 = L2_2[A1_2]
    A0_2.vanchor = L2_2
  elseif A1_2 == "LEFT" or A1_2 == "HCENTER" or A1_2 == "RIGHT" then
    L2_2 = {}
    L2_2.LEFT = 0
    L2_2.HCENTER = 0.5
    L2_2.RIGHT = 1
    L2_2 = L2_2[A1_2]
    A0_2.hanchor = L2_2
  end
end

L1_1 = AnchorFrame

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.hanchor
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.hanchor = L1_2
  L1_2 = A0_2.vanchor
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.vanchor = L1_2
  L1_2 = A0_2.width
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.width = L1_2
  L1_2 = A0_2.height
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.height = L1_2
end

L1_1.init = L2_1
L1_1 = AnchorFrame

function L2_1(A0_2, A1_2, A2_2)
  A0_2.width = A1_2
  A0_2.height = A2_2
end

L1_1.setSize = L2_1
L1_1 = AnchorFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "table" then
    L3_2 = A1_2.x
    if not L3_2 then
      L3_2 = A0_2.hanchor
    end
    A0_2.hanchor = L3_2
    L3_2 = A1_2.y
    if not L3_2 then
      L3_2 = A0_2.vanchor
    end
    A0_2.vanchor = L3_2
  else
    L3_2 = L0_1
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = L0_1
    L4_2 = A0_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end

L1_1.setAnchors = L2_1
L1_1 = AnchorFrame

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2.width
  L5_2 = A0_2.hanchor
  L5_2 = -L5_2
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2.height
  L6_2 = A0_2.vanchor
  L6_2 = -L6_2
  L5_2 = L5_2 * L6_2
  L6_2 = ui
  L6_2 = L6_2.Frame
  L6_2 = L6_2.onPointerEvent
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2 - L4_2
  L10_2 = A3_2 - L5_2
  return L6_2(L7_2, L8_2, L9_2, L10_2)
end

L1_1.onPointerEvent = L2_1
L1_1 = AnchorFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.width
  L4_2 = A0_2.hanchor
  L4_2 = -L4_2
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.height
  L5_2 = A0_2.vanchor
  L5_2 = -L5_2
  L4_2 = L4_2 * L5_2
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.draw
  L6_2 = A0_2
  L7_2 = A1_2 + L3_2
  L8_2 = A2_2 + L4_2
  L5_2(L6_2, L7_2, L8_2)
end

L1_1.draw = L2_1
