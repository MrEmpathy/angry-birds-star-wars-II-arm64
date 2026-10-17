local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
BGBox = L0_1
L0_1 = BGBox

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.x = 0
  A0_2.y = 0
  A0_2.width = 500
  A0_2.height = 500
  A0_2.hanchor = "HCENTER"
  A0_2.vanchor = "VCENTER"
  L1_2 = A0_2.suffix
  if not L1_2 then
    L1_2 = "NORMAL"
  end
  A0_2.suffix = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setSprites
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = BGBox

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = A0_2.suffix
  end
  L3_2 = {}
  L4_2 = "BOX_TOP_LEFT_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.topLeft = L4_2
  L4_2 = "BOX_MIDDLE_TOP_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.topMiddle = L4_2
  L4_2 = "BOX_TOP_RIGHT_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.topRight = L4_2
  L4_2 = "BOX_MIDDLE_LEFT_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.left = L4_2
  L4_2 = "BOX_CENTER_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.center = L4_2
  L4_2 = "BOX_MIDDLE_RIGHT_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.right = L4_2
  L4_2 = "BOX_BOTTOM_LEFT_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomLeft = L4_2
  L4_2 = "BOX_MIDDLE_BOTTOM_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomMiddle = L4_2
  L4_2 = "BOX_BOTTOM_RIGHT_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomRight = L4_2
  A0_2.components = L3_2
end

L0_1.setSprites = L1_1
L0_1 = BGBox

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.components
  L2_2 = L2_2.topMiddle
  L1_2, L2_2 = L1_2(L2_2)
  return L2_2
end

L0_1.getTopBlockH = L1_1
L0_1 = BGBox

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.components
  L2_2 = L2_2.bottomMiddle
  L1_2, L2_2 = L1_2(L2_2)
  return L2_2
end

L0_1.getBottomBlockH = L1_1
L0_1 = BGBox

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.components
  L2_2 = L2_2.right
  L1_2, L2_2 = L1_2(L2_2)
  return L1_2
end

L0_1.getRightBlockW = L1_1
L0_1 = BGBox

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.components
  L2_2 = L2_2.left
  L1_2, L2_2 = L1_2(L2_2)
  return L1_2
end

L0_1.getLeftBlockW = L1_1
L0_1 = BGBox

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.width
  L3_2 = A0_2
  L2_2 = A0_2.getRightBlockW
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 + L2_2
  L3_2 = A0_2
  L2_2 = A0_2.getLeftBlockW
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2.height
  L4_2 = A0_2
  L3_2 = A0_2.getTopBlockH
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 + L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getBottomBlockH
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 + L3_2
  return L1_2, L2_2
end

L0_1.getSize = L1_1
L0_1 = BGBox

function L1_1(A0_2, A1_2, A2_2)
  A0_2.width = A1_2
  A0_2.height = A2_2
end

L0_1.setSize = L1_1
L0_1 = BGBox

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.ignoreRenderState
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.setRenderState
    L4_2 = 0
    L5_2 = 0
    L6_2 = 1
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = gamelua
    L3_2 = L3_2.drawBoxNative
    L4_2 = A0_2.components
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.floor
    L6_2 = A0_2.x
    L6_2 = L6_2 + A1_2
    L5_2 = L5_2(L6_2)
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.floor
    L7_2 = A0_2.y
    L7_2 = L7_2 + A2_2
    L6_2 = L6_2(L7_2)
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.floor
    L8_2 = A0_2.width
    L7_2 = L7_2(L8_2)
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.floor
    L9_2 = A0_2.height
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2.hanchor
    L10_2 = A0_2.vanchor
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L3_2 = gamelua
    L3_2 = L3_2.drawBoxNative
    L4_2 = A0_2.components
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.floor
    L6_2 = A0_2.x
    L6_2 = L6_2 + A1_2
    L5_2 = L5_2(L6_2)
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.floor
    L7_2 = A0_2.y
    L7_2 = L7_2 + A2_2
    L6_2 = L6_2(L7_2)
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.floor
    L8_2 = A0_2.width
    L7_2 = L7_2(L8_2)
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.floor
    L9_2 = A0_2.height
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2.hanchor
    L10_2 = A0_2.vanchor
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
