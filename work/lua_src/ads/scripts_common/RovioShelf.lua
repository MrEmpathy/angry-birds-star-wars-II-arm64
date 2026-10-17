local L0_1, L1_1, L2_1
L0_1 = {}
luaRovioShelf = L0_1
L0_1 = luaRovioShelf

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = RovioShelf
  L1_2 = L1_2.setAllowed
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.setAllowed = L1_1
L0_1 = luaRovioShelf

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioShelf
  L0_2 = L0_2.isCapturingInput
  return L0_2()
end

L0_1.isCapturingInput = L1_1
L0_1 = luaRovioShelf

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = RovioShelf
  L2_2 = L2_2.update
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.update = L1_1
L0_1 = luaRovioShelf

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioShelf
  L0_2 = L0_2.render
  L0_2()
end

L0_1.render = L1_1
L0_1 = luaRovioShelf

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioShelf
  L0_2 = L0_2.openShelf
  return L0_2()
end

L0_1.openShelf = L1_1
L0_1 = addUpdateFunction
L1_1 = "RovioShelf"
L2_1 = luaRovioShelf
L2_1 = L2_1.update
L0_1(L1_1, L2_1)
