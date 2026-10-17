local L0_1, L1_1
L0_1 = {}
BinaryHeap = L0_1
L0_1 = BinaryHeap
L1_1 = BinaryHeap
L0_1.__index = L1_1
L0_1 = BinaryHeap

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L0_2.values = L1_2
  L1_2 = _G
  L1_2 = L1_2.setmetatable
  L2_2 = L0_2
  L3_2 = BinaryHeap
  L1_2(L2_2, L3_2)
  return L0_2
end

L0_1.new = L1_1
L0_1 = BinaryHeap

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.values
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = _G
  L4_2 = L4_2.table
  L4_2 = L4_2.insert
  L5_2 = A0_2.values
  L6_2 = L3_2
  L7_2 = {}
  L7_2.key = A1_2
  L7_2.value = A2_2
  L4_2(L5_2, L6_2, L7_2)
  if L3_2 == 1 then
    return
  end
  while true do
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.floor
    L5_2 = L3_2 * 0.5
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.values
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.key
    if A1_2 < L5_2 then
      L5_2 = A0_2.values
      L6_2 = A0_2.values
      L7_2 = A0_2.values
      L7_2 = L7_2[L3_2]
      L8_2 = A0_2.values
      L8_2 = L8_2[L4_2]
      L6_2[L3_2] = L8_2
      L5_2[L4_2] = L7_2
      L3_2 = L4_2
      if L3_2 == 1 then
        break
      end
    else
      break
    end
  end
end

L0_1.insert = L1_1
L0_1 = BinaryHeap

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.values
  L1_2 = #L1_2
  if L1_2 == 0 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2.values
  L2_2 = L2_2[1]
  L2_2 = L2_2.value
  L3_2 = A0_2.values
  L4_2 = A0_2.values
  L4_2 = L4_2[L1_2]
  L3_2[1] = L4_2
  L3_2 = A0_2.values
  L3_2 = L3_2[1]
  L3_2 = L3_2.key
  L4_2 = _G
  L4_2 = L4_2.table
  L4_2 = L4_2.remove
  L5_2 = A0_2.values
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = 1
  while true do
    L5_2 = 2 * L4_2
    L6_2 = 2 * L4_2
    L6_2 = L6_2 + 1
    L7_2 = A0_2.values
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2.values
    L8_2 = L8_2[L6_2]
    L9_2 = nil
    if L7_2 ~= nil then
      L10_2 = L7_2.key
      if not (L3_2 < L10_2) then
        goto lbl_46
      end
    end
    if L8_2 == nil then
      break
    end
    L10_2 = L8_2.key
    if L3_2 < L10_2 then
      break
    else
      L9_2 = L6_2
      goto lbl_60
      ::lbl_46::
      if L8_2 ~= nil then
        L10_2 = L8_2.key
        if not (L3_2 < L10_2) then
          goto lbl_53
        end
      end
      L9_2 = L5_2
      goto lbl_60
      ::lbl_53::
      L10_2 = L7_2.key
      L11_2 = L8_2.key
      if L10_2 < L11_2 then
        L9_2 = L5_2
      else
        L9_2 = L6_2
      end
    end
    ::lbl_60::
    L10_2 = A0_2.values
    L11_2 = A0_2.values
    L12_2 = A0_2.values
    L12_2 = L12_2[L9_2]
    L13_2 = A0_2.values
    L13_2 = L13_2[L4_2]
    L11_2[L9_2] = L13_2
    L10_2[L4_2] = L12_2
    L4_2 = L9_2
  end
  return L2_2
end

L0_1.remove = L1_1
L0_1 = BinaryHeap

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.values
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  else
    L1_2 = A0_2.values
    L1_2 = L1_2[1]
    L1_2 = L1_2.key
    return L1_2
  end
end

L0_1.peek = L1_1
L0_1 = {}
Timer = L0_1
L0_1 = Timer
L1_1 = Timer
L0_1.__index = L1_1
L0_1 = Timer

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = BinaryHeap
  L2_2 = L2_2.new
  L2_2 = L2_2()
  L1_2.delayed = L2_2
  L1_2.time = A0_2
  L2_2 = _G
  L2_2 = L2_2.setmetatable
  L3_2 = L1_2
  L4_2 = Timer
  L2_2(L3_2, L4_2)
  return L1_2
end

L0_1.new = L1_1
L0_1 = Timer

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2.delayed
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.time
  L6_2 = L6_2 + A3_2
  L7_2 = {}
  L7_2.event = A1_2
  L7_2.listener = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.once = L1_1
L0_1 = Timer

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.time
  L3_2 = L3_2 + A1_2
  A0_2.time = L3_2
  while true do
    L3_2 = A0_2.delayed
    L4_2 = L3_2
    L3_2 = L3_2.peek
    L3_2 = L3_2(L4_2)
    if L3_2 == nil then
      break
    end
    L4_2 = A0_2.time
    if L3_2 < L4_2 then
      L4_2 = A0_2.delayed
      L5_2 = L4_2
      L4_2 = L4_2.remove
      L4_2 = L4_2(L5_2)
      L5_2 = _G
      L5_2 = L5_2.type
      L6_2 = L4_2.listener
      L5_2 = L5_2(L6_2)
      if L5_2 == "function" then
        L5_2 = L4_2.listener
        L6_2 = L4_2.event
        L5_2(L6_2)
      else
        L5_2 = L4_2.listener
        L6_2 = L5_2
        L5_2 = L5_2.eventTriggered
        L7_2 = L4_2.event
        L5_2(L6_2, L7_2)
      end
    else
      break
    end
  end
end

L0_1.update = L1_1
