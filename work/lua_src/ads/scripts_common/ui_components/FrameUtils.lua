local L0_1, L1_1
L0_1 = {}
FrameUtils = L0_1
L0_1 = FrameUtils
L1_1 = {}
L0_1.layoutList = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = A0_2
  L4_2 = A0_2.getParameters
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2)
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = A1_2.y
  L15_2 = A2_2.y
  if L14_2 > L15_2 then
    L12_2 = A2_2
    L13_2 = A1_2
  end
  L14_2 = L12_2.y
  L15_2 = L12_2.h
  L16_2 = L12_2.py
  L15_2 = L15_2 - L16_2
  L14_2 = L14_2 + L15_2
  L15_2 = L13_2.y
  L16_2 = L13_2.py
  L15_2 = L15_2 - L16_2
end

L0_1.layoutBetween = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A0_2
  L3_2 = A0_2.getParameters
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2, L6_2)
  L11_2 = A2_2.x
  L11_2 = L11_2 - L7_2
  L13_2 = A0_2
  L12_2 = A0_2.getRightCoords
  L14_2 = L7_2
  L15_2 = L8_2
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + L3_2
  return L11_2
end

L0_1.layoutRight = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2.getParameters
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2, L6_2)
  L11_2 = A2_2.x
  L11_2 = L11_2 - L7_2
  L11_2 = L11_2 - L3_2
  return L11_2
end

L0_1.layoutLeft = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = A0_2
  L3_2 = A0_2.getItemPivot
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.getItemBounds
  L7_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if A2_2 == nil then
    L7_2 = L3_2
    L8_2 = L5_2
    L9_2 = L4_2
    L10_2 = L6_2
    return L7_2, L8_2, L9_2, L10_2
  end
  L8_2 = A0_2
  L7_2 = A0_2.getItemPivot
  L9_2 = A2_2
  L7_2, L8_2 = L7_2(L8_2, L9_2)
  L10_2 = A0_2
  L9_2 = A0_2.getItemBounds
  L11_2 = A2_2
  L9_2, L10_2 = L9_2(L10_2, L11_2)
  L11_2 = L3_2
  L12_2 = L5_2
  L13_2 = L4_2
  L14_2 = L6_2
  L15_2 = L7_2
  L16_2 = L9_2
  L17_2 = L8_2
  L18_2 = L10_2
  return L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
end

L0_1.getParameters = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2.getParameters
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2, L6_2)
  L11_2 = A2_2.y
  L11_2 = L11_2 - L9_2
  L11_2 = L11_2 + L10_2
  L11_2 = L11_2 + L5_2
  return L11_2
end

L0_1.layoutBelow = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2.getParameters
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2, L6_2)
  L11_2 = A2_2.y
  L11_2 = L11_2 - L9_2
  L11_2 = L11_2 - L5_2
  return L11_2
end

L0_1.layoutAbove = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A2_2 - A1_2
  L3_2 = A1_2 + L3_2
  return L3_2
end

L0_1.getRightCoords = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A2_2 - A1_2
  L3_2 = A1_2 + L3_2
  return L3_2
end

L0_1.getBottomCoords = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.text
  if L2_2 ~= nil then
    L2_2 = A1_2.textBoxSize
    L3_2 = A1_2.scaleX
    L2_2 = L2_2 * L3_2
    if not L2_2 then
      L2_2 = 1
    end
    L4_2 = A1_2
    L3_2 = A1_2.getHeight
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2.scaleY
    L3_2 = L3_2 * L4_2
    if not L3_2 then
      L3_2 = 1
    end
    return L2_2, L3_2
  else
    L2_2 = _G
    L2_2 = L2_2.assert
    L3_2 = A1_2.image
    L3_2 = L3_2 ~= nil
    L4_2 = "sprite is nil for this item"
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getSpriteBounds
    L3_2 = A1_2.image
    L2_2, L3_2 = L2_2(L3_2)
    L4_2 = A1_2.scaleX
    L4_2 = L2_2 * L4_2
    L5_2 = A1_2.scaleY
    L5_2 = L3_2 * L5_2
    return L4_2, L5_2
  end
end

L0_1.getItemBounds = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.text
  if L2_2 ~= nil then
    L2_2 = 0
    L3_2 = 0
    L4_2 = A1_2.hanchor
    if L4_2 == "RIGHT" then
      L4_2 = A1_2.textBoxSize
      L5_2 = A1_2.scaleX
      L4_2 = L4_2 * L5_2
      L2_2 = L4_2 or L2_2
      if not L4_2 then
        L2_2 = 1
      end
    else
      L4_2 = A1_2.hanchor
      if L4_2 == "LEFT" then
        L2_2 = 0
      else
        L4_2 = A1_2.textBoxSize
        L4_2 = L4_2 * 0.5
        L5_2 = A1_2.scaleX
        L4_2 = L4_2 * L5_2
        L2_2 = L4_2 or L2_2
        if not L4_2 then
          L2_2 = 1
        end
      end
    end
    L4_2 = A1_2.vanchor
    if L4_2 == "TOP" then
      L3_2 = 0
    else
      L4_2 = A1_2.vanchor
      if L4_2 == "BOTTOM" then
        L5_2 = A1_2
        L4_2 = A1_2.getHeight
        L4_2 = L4_2(L5_2)
        L5_2 = A1_2.scaleY
        L4_2 = L4_2 * L5_2
        L3_2 = L4_2 or L3_2
        if not L4_2 then
          L3_2 = 1
        end
      else
        L5_2 = A1_2
        L4_2 = A1_2.getHeight
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2 * 0.5
        L5_2 = A1_2.scaleY
        L4_2 = L4_2 * L5_2
        L3_2 = L4_2 or L3_2
        if not L4_2 then
          L3_2 = 1
        end
      end
    end
    L4_2 = L2_2
    L5_2 = L3_2
    return L4_2, L5_2
  else
    L2_2 = _G
    L2_2 = L2_2.assert
    L3_2 = A1_2.image
    L3_2 = L3_2 ~= nil
    L4_2 = "sprite is nil for this item"
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getSpritePivot
    L3_2 = A1_2.image
    L2_2, L3_2 = L2_2(L3_2)
    L4_2 = A1_2.scaleX
    L4_2 = L2_2 * L4_2
    L5_2 = A1_2.scaleY
    L5_2 = L3_2 * L5_2
    return L4_2, L5_2
  end
end

L0_1.getItemPivot = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A1_2.item
  L3_2 = A1_2.x
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = A1_2.y
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = A1_2.w
  if not L5_2 then
    L5_2 = 0
  end
  L6_2 = A1_2.h
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = A1_2.padding
  if not L7_2 then
    L7_2 = 0
  end
  L8_2 = A1_2.vanchor
  if not L8_2 then
    L8_2 = "VCENTER"
  end
  L9_2 = A1_2.hanchor
  if not L9_2 then
    L9_2 = "HCENTER"
  end
  L10_2 = 0
  if L8_2 == "BOTTOM" then
    L11_2 = L4_2 + L6_2
    L12_2 = L2_2.py
    L11_2 = L11_2 - L12_2
    L10_2 = L11_2 - L7_2
  elseif L8_2 == "TOP" then
    L11_2 = L2_2.py
    L11_2 = L4_2 + L11_2
    L10_2 = L11_2 + L7_2
  elseif L8_2 == "VCENTER" then
    L11_2 = A1_2.h
    L11_2 = L11_2 * 0.5
    L10_2 = L4_2 + L11_2
  end
  L11_2 = 0
  if L9_2 == "LEFT" then
    L12_2 = L2_2.px
    L12_2 = L3_2 + L12_2
    L11_2 = L12_2 + L7_2
  elseif L9_2 == "RIGHT" then
    L12_2 = L3_2 + L5_2
    L13_2 = L2_2.px
    L12_2 = L12_2 - L13_2
    L11_2 = L12_2 - L7_2
  elseif L9_2 == "HCENTER" then
    L12_2 = L5_2 * 0.5
    L11_2 = L3_2 + L12_2
  end
  L12_2 = L11_2
  L13_2 = L10_2
  return L12_2, L13_2
end

L0_1.layoutWithAnchors = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A1_2.item
  L3_2 = A1_2.x
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = A1_2.y
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = A1_2.w
  if not L5_2 then
    L5_2 = 0
  end
  L6_2 = A1_2.h
  if not L6_2 then
    L6_2 = 0
  end
  L7_2 = L2_2.scaleX
  if not L7_2 then
    L7_2 = L2_2.scaleY
    if not L7_2 then
      L7_2 = 1
    end
  end
  L8_2 = A1_2.padding
  if not L8_2 then
    L8_2 = 0
  end
  L9_2 = A1_2.vanchor
  if not L9_2 then
    L9_2 = "VCENTER"
  end
  L10_2 = A1_2.hanchor
  if not L10_2 then
    L10_2 = "HCENTER"
  end
  L11_2 = 0
  if L9_2 == "BOTTOM" then
    L12_2 = L4_2 + L6_2
    L13_2 = L2_2.py
    L13_2 = L13_2 * L7_2
    L12_2 = L12_2 - L13_2
    L11_2 = L12_2 - L8_2
  elseif L9_2 == "TOP" then
    L12_2 = L2_2.py
    L12_2 = L12_2 * L7_2
    L12_2 = L4_2 + L12_2
    L11_2 = L12_2 + L8_2
  elseif L9_2 == "VCENTER" then
    L12_2 = A1_2.h
    L12_2 = L12_2 * 0.5
    L11_2 = L4_2 + L12_2
  end
  L12_2 = 0
  if L10_2 == "LEFT" then
    L13_2 = L2_2.px
    L13_2 = L13_2 * L7_2
    L13_2 = L3_2 + L13_2
    L12_2 = L13_2 + L8_2
  elseif L10_2 == "RIGHT" then
    L13_2 = L3_2 + L5_2
    L14_2 = L2_2.px
    L14_2 = L14_2 * L7_2
    L13_2 = L13_2 - L14_2
    L12_2 = L13_2 - L8_2
  elseif L10_2 == "HCENTER" then
    L13_2 = L5_2 * 0.5
    L12_2 = L3_2 + L13_2
  end
  L13_2 = L12_2
  L14_2 = L11_2
  return L13_2, L14_2
end

L0_1.layoutWithScaledAnchors = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = A1_2.padding
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = A1_2.items
  if not L5_2 then
    L5_2 = FrameUtils
    L5_2 = L5_2.layoutList
  end
  if L5_2 ~= nil then
    if L5_2 == nil then
      goto lbl_20
    end
    L6_2 = #L5_2
    if L6_2 ~= 0 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L6_2 = A1_2.vanchor
  L7_2 = A1_2.hanchor
  L8_2 = A1_2.direction
  if not L8_2 then
    L8_2 = "HORIZONTAL"
  end
  L9_2 = 1
  L10_2 = #L5_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L5_2[L12_2]
    L13_2 = L13_2.w
    L13_2 = L2_2 + L13_2
    L2_2 = L13_2 + L4_2
    L13_2 = L5_2[L12_2]
    L13_2 = L13_2.h
    L13_2 = L3_2 + L13_2
    L3_2 = L13_2 + L4_2
  end
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  if L8_2 == "HORIZONTAL" then
    L10_2 = "x"
    L11_2 = "y"
    L13_2 = A1_2.x
    L14_2 = L2_2 * 0.5
    L13_2 = L13_2 - L14_2
    A1_2.x = L13_2
    L13_2 = FrameUtils
    L12_2 = L13_2.layoutRight
  elseif L8_2 == "VERTICAL" then
    L10_2 = "y"
    L11_2 = "x"
    if L6_2 == "VCENTER" then
      L13_2 = A1_2.y
      L14_2 = L3_2 * 0.5
      L13_2 = L13_2 - L14_2
      A1_2.y = L13_2
    end
    L13_2 = FrameUtils
    L12_2 = L13_2.layoutBelow
  else
    L13_2 = _G
    L13_2 = L13_2.assert
    L14_2 = false
    L15_2 = "invalid alignment direction, use HORIZONTAL or VERTICAL"
    L13_2(L14_2, L15_2)
  end
  L13_2 = 1
  L14_2 = #L5_2
  L15_2 = 1
  for L16_2 = L13_2, L14_2, L15_2 do
    L17_2 = FrameUtils
    L18_2 = L17_2
    L17_2 = L17_2.getParameters
    L19_2 = L5_2[L16_2]
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2)
    L21_2 = L5_2[L16_2]
    L22_2 = A1_2[L11_2]
    L21_2[L11_2] = L22_2
    if not L9_2 then
      L21_2 = L5_2[L16_2]
      L22_2 = A1_2[L10_2]
      L22_2 = L22_2 + L4_2
      L21_2[L10_2] = L22_2
    else
      L21_2 = L5_2[L16_2]
      L22_2 = L12_2
      L23_2 = FrameUtils
      L24_2 = L5_2[L16_2]
      L25_2 = L9_2
      L22_2 = L22_2(L23_2, L24_2, L25_2)
      L22_2 = L22_2 + L4_2
      L21_2[L10_2] = L22_2
    end
    L9_2 = L5_2[L16_2]
  end
  L13_2 = 1
  L14_2 = #L5_2
  L15_2 = 1
  for L16_2 = L13_2, L14_2, L15_2 do
    L17_2 = FrameUtils
    L18_2 = L17_2
    L17_2 = L17_2.getParameters
    L19_2 = L5_2[L16_2]
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2)
    if L6_2 == "TOP" then
      L21_2 = L5_2[L16_2]
      L22_2 = L5_2[L16_2]
      L22_2 = L22_2.y
      L22_2 = L22_2 + L19_2
      L21_2.y = L22_2
    end
    if L7_2 == "LEFT" then
      L21_2 = L5_2[L16_2]
      L22_2 = L5_2[L16_2]
      L22_2 = L22_2.x
      L22_2 = L22_2 + L17_2
      L21_2.x = L22_2
    end
  end
  L13_2 = FrameUtils
  L14_2 = {}
  L13_2.layoutList = L14_2
end

L0_1.flowLayout = L1_1
L0_1 = FrameUtils

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = FrameUtils
  L3_2 = L3_2.layoutList
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.queueForLayout = L1_1
