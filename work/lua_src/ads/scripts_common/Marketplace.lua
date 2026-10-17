local L0_1, L1_1, L2_1
L0_1 = this
if L0_1 == nil then
  L0_1 = _ENV
end
if L0_1 == nil then
  L1_1 = _G
  L1_1 = L1_1.getfenv
  L2_1 = 1
  L1_1 = L1_1(L2_1)
  L0_1 = L1_1
end

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.isTrialNative
  return L1_2()
end

L0_1.isTrial = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.showMarketplaceNative
  L1_2()
end

L0_1.showMarketplace = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.buyFullVersionNative
  L1_2()
end

L0_1.buyFullVersion = L1_1
