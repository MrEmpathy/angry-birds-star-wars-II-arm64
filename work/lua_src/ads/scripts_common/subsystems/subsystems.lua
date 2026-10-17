local L0_1, L1_1
L0_1 = {}
SubSystem = L0_1
L0_1 = SubSystem

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
  L2_2 = A1_2.name
  if not L2_2 then
    L2_2 = "UNDEFINED"
  end
  A1_2.name = L2_2
  L2_2 = _G
  L2_2 = L2_2.setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L3_2 = A1_2
  L2_2 = A1_2.init
  L2_2(L3_2)
  return A1_2
end

L0_1.new = L1_1
L0_1 = SubSystem

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
L0_1 = SubSystem

function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_metatable
  return L1_2(L2_2)
end

L0_1.inherit = L1_1
L0_1 = SubSystem

function L1_1(A0_2, A1_2)
end

L0_1.update = L1_1
L0_1 = SubSystem

function L1_1(A0_2)
  local L1_2
end

L0_1.init = L1_1
L0_1 = SubSystem
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
LinkListener = L0_1
L0_1 = LinkListener

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.events
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_GIFT_PURCHASE_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.APPLE_GIFT_PURCHASE_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_LENOVO_ADFREE_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.LENOVO_NO_ADS_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_AB_SHOP_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.ABSHOP_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_ALEX_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.ALEX_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_PIGGIES_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.BAD_PIGGIES_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_SW_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.AB_STAR_WARS_UPSELL_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_MIGHTY_EAGLE_TRAILER_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.MIGHTY_EAGLE_TRAILER
    L3_2(L4_2)
    L3_2 = gamelua
    L3_2 = L3_2.cheatsEnabled
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.enableMightyEagle
      L3_2()
    end
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_NEWSLETTER_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.NEWSLETTER_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_SEASONS_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.APP_STORE_HALLOWEEN_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_CLASSIC_CLICKED
  if L3_2 == L4_2 then
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L4_2 = L4_2.APP_STORE_FULL_VERSION_URL
    L3_2(L4_2)
  end
  L3_2 = A1_2.id
  L4_2 = L2_2.EID_VIDEO_LINK_CLICKED
  if L3_2 == L4_2 then
    L3_2 = print
    L4_2 = "Link: "
    L5_2 = A1_2.link
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = gamelua
    L3_2 = L3_2.openURL
    L4_2 = gamelua
    L5_2 = A1_2.link
    L4_2 = L4_2[L5_2]
    L3_2(L4_2)
  end
end

L0_1.eventTriggered = L1_1
