local L0_1, L1_1
L0_1 = {}
Frame = L0_1
L0_1 = Frame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  L3_2 = _G
  L3_2 = L3_2.setmetatable
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  return L2_2
end

L0_1.setup_metatable = L1_1
L0_1 = Frame

function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_metatable
  return L1_2(L2_2)
end

L0_1.inherit = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = {}
  A1_2.children = L2_2
  L2_2 = A1_2.x
  if not L2_2 then
    L2_2 = 0
  end
  A1_2.x = L2_2
  L2_2 = A1_2.y
  if not L2_2 then
    L2_2 = 0
  end
  A1_2.y = L2_2
  L2_2 = A1_2.physicsObject
  if L2_2 ~= nil then
    L2_2 = gamelua
    L2_2 = L2_2.physicsToScreenTransform
    L3_2 = A1_2.physicsObject
    L3_2 = L3_2.x
    L4_2 = A1_2.physicsObject
    L4_2 = L4_2.y
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    A1_2.y = L3_2
    A1_2.x = L2_2
  end
  L2_2 = A1_2.scaleX
  if not L2_2 then
    L2_2 = 1
  end
  A1_2.scaleX = L2_2
  L2_2 = A1_2.scaleY
  if not L2_2 then
    L2_2 = 1
  end
  A1_2.scaleY = L2_2
  L2_2 = A1_2.angle
  if not L2_2 then
    L2_2 = 0
  end
  A1_2.angle = L2_2
  L2_2 = A1_2.name
  if not L2_2 then
    L2_2 = "UNDEFINED"
  end
  A1_2.name = L2_2
  L2_2 = A1_2.w
  if not L2_2 then
    L2_2 = 0
  end
  A1_2.w = L2_2
  L2_2 = A1_2.h
  if not L2_2 then
    L2_2 = 0
  end
  A1_2.h = L2_2
  L2_2 = A0_2.visible
  if not L2_2 then
    L2_2 = true
  end
  A0_2.visible = L2_2
  L2_2 = A0_2.active
  if not L2_2 then
    L2_2 = true
  end
  A0_2.active = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_metatable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.init
  L2_2(L3_2)
  return A1_2
end

L0_1.new = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.children
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.addChild = L1_1
L0_1 = Frame

function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.children = L1_2
end

L0_1.removeAllChildren = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.children
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.children
    L9_2 = L9_2[L7_2]
    if L9_2 == A1_2 then
      L2_2 = L7_2
    end
  end
  if L2_2 ~= nil then
    L4_2 = A0_2.children
    L3_2 = L4_2[L2_2]
    L4_2 = _G
    L4_2 = L4_2.table
    L4_2 = L4_2.remove
    L5_2 = A0_2.children
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
  return L3_2
end

L0_1.removeChild = L1_1
L0_1 = Frame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.children
  L2_2 = A0_2.children
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.remove
  L3_2 = A0_2.children
  L4_2 = A0_2.children
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  return L1_2
end

L0_1.popChild = L1_1
L0_1 = Frame

function L1_1(A0_2)
  local L1_2
end

L0_1.init = L1_1
L0_1 = Frame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Frame
  L2_2 = Frame
  L2_2 = L2_2.entryCounts
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.entryCounts = L2_2
  L1_2 = Frame
  L2_2 = Frame
  L2_2 = L2_2.entryCounts
  L2_2 = L2_2 + 1
  L1_2.entryCounts = L2_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.children
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.onEntry
    L6_2(L7_2)
  end
end

L0_1.onEntry = L1_1
L0_1 = Frame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.children
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.layout
    L6_2(L7_2)
  end
end

L0_1.layout = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.children
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.alpha = A1_2
  end
end

L0_1.setAlpha = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.children
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    if L7_2 ~= nil then
      L7_2 = L6_2.name
      if L7_2 == A1_2 then
        return L6_2
      end
    end
  end
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.children
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.getChild
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    result = L7_2
    L7_2 = result
    if L7_2 ~= nil then
      L7_2 = result
      L7_2 = L7_2.name
      if L7_2 == A1_2 then
        L7_2 = result
        return L7_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.getChild = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2.children
  L3_2 = #L3_2
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.children
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.visible
    if L8_2 == true then
      L8_2 = L7_2.active
      if L8_2 == true then
        L9_2 = L7_2
        L8_2 = L7_2.onKeyEvent
        L10_2 = A1_2
        L11_2 = A2_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2)
        if L8_2 ~= nil then
          L11_2 = L8_2
          L12_2 = L9_2
          L13_2 = L10_2
          return L11_2, L12_2, L13_2
        end
      end
    end
  end
end

L0_1.onKeyEvent = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A0_2.children
  L4_2 = #L4_2
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2.children
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2.visible
    if L9_2 == true then
      L9_2 = L8_2.active
      if L9_2 == true then
        L10_2 = L8_2
        L9_2 = L8_2.onPointerEvent
        L11_2 = A1_2
        L12_2 = A0_2.x
        L12_2 = A2_2 - L12_2
        L13_2 = A0_2.y
        L13_2 = A3_2 - L13_2
        L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        if L9_2 ~= nil then
          L12_2 = L9_2
          L13_2 = L10_2
          L14_2 = L11_2
          return L12_2, L13_2, L14_2
        end
      end
    end
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  return L4_2, L5_2, L6_2
end

L0_1.onPointerEvent = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.physicsObject
  if L3_2 ~= nil then
    L4_2 = gamelua
    L4_2 = L4_2.physicsToScreenTransform
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    A0_2.y = L5_2
    A0_2.x = L4_2
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.children
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.active
    if L9_2 == true then
      L10_2 = L8_2
      L9_2 = L8_2.update
      L11_2 = A1_2
      L12_2 = A2_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end

L0_1.update = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if not A1_2 then
    A1_2 = 0
  end
  if not A2_2 then
    A2_2 = 0
  end
  if not A3_2 then
    A3_2 = 1
  end
  if not A4_2 then
    A4_2 = 1
  end
  if not A5_2 then
    A5_2 = 0
  end
  L6_2 = _G
  L6_2 = L6_2.ipairs
  L7_2 = A0_2.children
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.visible
    if L11_2 == true then
      L12_2 = L10_2
      L11_2 = L10_2.draw
      L13_2 = A0_2.x
      L13_2 = A1_2 + L13_2
      L14_2 = A0_2.y
      L14_2 = A2_2 + L14_2
      L15_2 = A0_2.scaleX
      L15_2 = A3_2 * L15_2
      L16_2 = A0_2.scaleY
      L16_2 = A4_2 * L16_2
      L17_2 = A0_2.angle
      L17_2 = A5_2 + L17_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
end

L0_1.draw = L1_1
L0_1 = Frame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Frame
  L2_2 = Frame
  L2_2 = L2_2.entryCounts
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.entryCounts = L2_2
  L1_2 = Frame
  L2_2 = Frame
  L2_2 = L2_2.entryCounts
  L2_2 = L2_2 - 1
  L1_2.entryCounts = L2_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.children
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.onExit
    L6_2(L7_2)
  end
end

L0_1.onExit = L1_1
L0_1 = Frame

function L1_1(A0_2, A1_2)
  A0_2.scaleX = A1_2
  A0_2.scaleY = A1_2
end

L0_1.setScale = L1_1
