local L0_1, L1_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = {}
  g_loopedTables = L4_2
  L4_2 = p_fndTables
  L5_2 = A0_2
  L6_2 = A2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = {}
  g_loopedTables = L4_2
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = p_find
    L10_2 = L8_2
    L11_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L10_2 = L9_2
      L11_2 = L8_2
      return L10_2, L11_2
    end
  end
end

find = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L6_2 == A1_2 then
      L8_2 = _G
      L8_2 = L8_2.table
      L8_2 = L8_2.insert
      L9_2 = A2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L8_2 = _G
    L8_2 = L8_2.type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 == "table" then
      L8_2 = g_loopedTables
      L8_2 = L8_2[L6_2]
      if not L8_2 then
        L8_2 = g_loopedTables
        L9_2 = _G
        L9_2 = L9_2.tostring
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L8_2[L9_2] = true
        L8_2 = p_fndTables
        L9_2 = L7_2
        L10_2 = A1_2
        L11_2 = A2_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end

p_fndTables = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 == A1_2 then
      return L6_2
    end
    L7_2 = _G
    L7_2 = L7_2.type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 == "table" then
      L7_2 = p_find
      L8_2 = L6_2
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        return L7_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end

p_find = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = find_key
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= nil
  return L2_2
end

contains = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A1_2 == L6_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end

find_key = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.string
    L7_2 = L7_2.rep
    L8_2 = " "
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L5_2
    L9_2 = ": "
    L7_2 = L7_2 .. L8_2 .. L9_2
    formatting = L7_2
    L7_2 = _G
    L7_2 = L7_2.type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 == "table" then
      L7_2 = print
      L8_2 = formatting
      L7_2(L8_2)
      L7_2 = tprint
      L8_2 = L6_2
      L9_2 = A1_2 + 1
      L7_2(L8_2, L9_2)
    else
      L7_2 = print
      L8_2 = formatting
      L9_2 = L6_2
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
  end
end

tprint = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = _G
  L2_2 = L2_2.type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L2_2 = {}
    L1_2 = L2_2
    L2_2 = _G
    L2_2 = L2_2.pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = deepCopy
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L1_2[L5_2] = L7_2
    end
  else
    L1_2 = A0_2
  end
  return L1_2
end

deepCopy = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + L6_2
  end
  return L1_2
end

accumulate = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 == "table" then
      L7_2 = assert
      L8_2 = A0_2[L5_2]
      if L8_2 then
        L8_2 = _G
        L8_2 = L8_2.type
        L9_2 = A0_2[L5_2]
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2 == "table"
      end
      L7_2(L8_2)
      L7_2 = print
      L8_2 = " Merge : Table value, k = "
      L9_2 = _G
      L9_2 = L9_2.tostring
      L10_2 = L5_2
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
      L7_2 = A0_2[L5_2]
      if not L7_2 then
        L7_2 = {}
        A0_2[L5_2] = L7_2
      end
      L7_2 = merge
      L8_2 = A0_2[L5_2]
      L9_2 = A1_2[L5_2]
      L7_2(L8_2, L9_2)
    else
      A0_2[L5_2] = L6_2
      L7_2 = print
      L8_2 = " Merged : k = "
      L9_2 = L5_2
      L10_2 = " v = "
      L11_2 = _G
      L11_2 = L11_2.tostring
      L12_2 = L6_2
      L11_2 = L11_2(L12_2)
      L12_2 = "\n"
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
      L7_2(L8_2)
    end
  end
end

merge = L0_1
L0_1 = {}
Set = L0_1
L0_1 = Set

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = _G
    L8_2 = L8_2.pairs
    L9_2 = A1_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      if L7_2 == L12_2 then
        L13_2 = _G
        L13_2 = L13_2.table
        L13_2 = L13_2.insert
        L14_2 = L2_2
        L15_2 = L7_2
        L13_2(L14_2, L15_2)
      end
    end
  end
  return L2_2
end

L0_1.intersection = L1_1
L0_1 = Set

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = false
    L9_2 = _G
    L9_2 = L9_2.pairs
    L10_2 = A1_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      if L7_2 == L13_2 then
        L8_2 = true
        break
      end
    end
    if not L8_2 then
      L9_2 = _G
      L9_2 = L9_2.table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end

L0_1.difference = L1_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "USD" then
    L2_2 = "$"
    L3_2 = _G
    L3_2 = L3_2.string
    L3_2 = L3_2.format
    L4_2 = "%.2f"
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2 .. L3_2
    return L2_2
  elseif A1_2 == "USD-string" then
    L2_2 = "USD "
    L3_2 = _G
    L3_2 = L3_2.string
    L3_2 = L3_2.format
    L4_2 = "%.2f"
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2 .. L3_2
    return L2_2
  end
end

formatCurrency = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.floor
  L2_2 = A0_2 / 60
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.string
  L2_2 = L2_2.format
  L3_2 = "%02u"
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.floor
  L5_2 = A0_2 % 60
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = _G
  L3_2 = L3_2.string
  L3_2 = L3_2.format
  L4_2 = "%02u"
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.floor
  L6_2 = A0_2 % 1
  L6_2 = L6_2 * 100
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  return L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
end

countdownTimeParts = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end

countKeys = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = false
    return L6_2
  end
  L1_2 = true
  return L1_2
end

tableEmpty = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L8_2 = A0_2 + A2_2
  L9_2 = A4_2 + A6_2
  L10_2 = A1_2 + A3_2
  L11_2 = A5_2 + A7_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.max
  L13_2 = A0_2
  L14_2 = A4_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.min
  L14_2 = L8_2
  L15_2 = L9_2
  L13_2 = L13_2(L14_2, L15_2)
  if L12_2 > L13_2 then
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    return L14_2, L15_2, L16_2, L17_2
  else
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.min
    L15_2 = L10_2
    L16_2 = L11_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = _G
    L15_2 = L15_2.math
    L15_2 = L15_2.max
    L16_2 = A1_2
    L17_2 = A5_2
    L15_2 = L15_2(L16_2, L17_2)
    if L14_2 < L15_2 then
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0
      L19_2 = 0
      return L16_2, L17_2, L18_2, L19_2
    else
      L16_2 = L12_2
      L17_2 = L15_2
      L18_2 = L13_2 - L12_2
      L19_2 = L14_2 - L15_2
      return L16_2, L17_2, L18_2, L19_2
    end
  end
end

intersectingRectangle = L0_1
