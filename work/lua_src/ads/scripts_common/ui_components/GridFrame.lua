local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
GridFrame = L0_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2.grid = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.children = nil
end

L0_1.init = L1_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L3_2 = A0_2
  L2_2 = A0_2.getChildren
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.onEntry
    L6_2(L7_2)
  end
end

L0_1.onEntry = L1_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = 0
    if 1 < L5_2 then
      L9_2 = A0_2
      L8_2 = A0_2.getMaxH
      L10_2 = L5_2 - 1
      L8_2 = L8_2(L9_2, L10_2)
      L1_2 = L1_2 + L8_2
    end
    L8_2 = 1
    L9_2 = #L6_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = A0_2.grid
      L12_2 = L12_2[L5_2]
      L12_2 = L12_2[L11_2]
      L12_2.x = L7_2
      L12_2.y = L1_2
      L13_2 = L12_2.w
      L7_2 = L7_2 + L13_2
    end
  end
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L4_2 = A0_2
  L3_2 = A0_2.getChildren
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.layout
    L7_2(L8_2)
  end
end

L0_1.layout = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L6_2 = A0_2
  L5_2 = A0_2.getChildren
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.onPointerEvent
    L11_2 = A1_2
    L12_2 = A0_2.x
    L12_2 = A2_2 - L12_2
    L13_2 = A0_2.y
    L13_2 = A3_2 - L13_2
    L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if L9_2 ~= nil then
      L11_2 = L9_2
      L12_2 = L10_2
      return L11_2, L12_2
    end
  end
end

L0_1.onPointerEvent = L1_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L3_2 = A0_2
  L2_2 = A0_2.getChildren
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.onExit
    L6_2(L7_2)
  end
end

L0_1.onExit = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L5_2 = A0_2
  L4_2 = A0_2.getChildren
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.update
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end

L0_1.update = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = _G
  L6_2 = L6_2.ipairs
  L8_2 = A0_2
  L7_2 = A0_2.getChildren
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.draw
    L13_2 = A0_2.x
    L13_2 = A1_2 + L13_2
    L14_2 = A0_2.y
    L14_2 = A2_2 + L14_2
    L15_2 = A3_2
    L16_2 = A4_2
    L17_2 = A5_2
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L6_2 = A0_2.px
  if not L6_2 then
    L6_2 = 0
  end
  A0_2.px = L6_2
  L6_2 = A0_2.py
  if not L6_2 then
    L6_2 = 0
  end
  A0_2.py = L6_2
end

L0_1.draw = L1_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.getMaxH
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L1_2 = L1_2 + L7_2
  end
  return L1_2
end

L0_1.getGridHeight = L1_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.grid
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.getMaxW
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L1_2 = L1_2 + L7_2
  end
  return L1_2
end

L0_1.getGridWidth = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.getChildren
  L2_2 = L2_2(L3_2)
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.name
    if L8_2 ~= nil and L6_2 == A1_2 then
      return L7_2
    end
  end
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.getChild
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    result = L8_2
    L8_2 = result
    if L8_2 ~= nil then
      L8_2 = result
      L8_2 = L8_2.name
      if L8_2 == A1_2 then
        L8_2 = result
        return L8_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end

L0_1.getChild = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2.initializeInsert
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.grid
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2[A1_2]
  L5_2 = A3_2.w
  if not L5_2 then
    L5_2 = 0
  end
  L4_2.w = L5_2
  L4_2 = A0_2.grid
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2[A1_2]
  L5_2 = A3_2.h
  if not L5_2 then
    L5_2 = 0
  end
  L4_2.h = L5_2
  L4_2 = A0_2.grid
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.addChild
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end

L0_1.insert = L1_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  ret = L1_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.grid
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.ipairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = _G
      L11_2 = L11_2.table
      L11_2 = L11_2.insert
      L12_2 = ret
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L1_2 = ret
  return L1_2
end

L0_1.getChildren = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.grid
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2[A1_2]
  return L3_2
end

L0_1.getCell = L1_1
L0_1 = GridFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.grid = L1_2
end

L0_1.reset = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = 1
  L4_2 = A0_2.grid
  L4_2 = L4_2[A1_2]
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.grid
    L7_2 = L7_2[A1_2]
    L7_2 = L7_2[L6_2]
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.max
    L9_2 = L2_2
    L10_2 = L7_2.h
    L8_2 = L8_2(L9_2, L10_2)
    L2_2 = L8_2
    if L7_2 ~= nil then
      L8_2 = L7_2.children
      L8_2 = L8_2[1]
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.max
      L10_2 = L2_2
      L11_2 = L8_2.h
      L9_2 = L9_2(L10_2, L11_2)
      L2_2 = L9_2
    end
  end
  return L2_2
end

L0_1.getMaxH = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = 1
  L4_2 = A0_2.grid
  L4_2 = L4_2[A1_2]
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.grid
    L7_2 = L7_2[A1_2]
    L7_2 = L7_2[L6_2]
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.max
    L9_2 = L2_2
    L10_2 = L7_2.w
    L8_2 = L8_2(L9_2, L10_2)
    L2_2 = L8_2
    if L7_2 ~= nil then
      L8_2 = L7_2.children
      L8_2 = L8_2[1]
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.max
      L10_2 = L2_2
      L11_2 = L8_2.w
      L9_2 = L9_2(L10_2, L11_2)
      L2_2 = L9_2
    end
  end
  return L2_2
end

L0_1.getMaxW = L1_1
L0_1 = GridFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.grid
  L3_2 = #L3_2
  if A2_2 > L3_2 then
    L3_2 = 1
    L4_2 = A2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2.grid
      L7_2 = L7_2[L6_2]
      if L7_2 == nil then
        L7_2 = A0_2.grid
        L8_2 = {}
        L7_2[L6_2] = L8_2
      end
    end
  end
  L3_2 = A0_2.grid
  L3_2 = L3_2[A2_2]
  L4_2 = #L3_2
  if A1_2 > L4_2 then
    L4_2 = 1
    L5_2 = A1_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      if L8_2 == nil then
        L8_2 = gamelua
        L8_2 = L8_2.ui
        L8_2 = L8_2.Frame
        L9_2 = L8_2
        L8_2 = L8_2.new
        L8_2 = L8_2(L9_2)
        L8_2.w = 0
        L8_2.y = 0
        L3_2[L7_2] = L8_2
      end
    end
  end
end

L0_1.initializeInsert = L1_1
