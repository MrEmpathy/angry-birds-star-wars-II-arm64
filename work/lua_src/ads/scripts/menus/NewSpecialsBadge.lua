local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
NewSpecialsBadge = L0_1
L0_1 = NewSpecialsBadge

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "badge"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.badge = L1_2
  L1_2 = A0_2.badge
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ICON_SHOP_SALE_TAG"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.badge
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "text"
  L4_2 = gamelua
  L4_2 = L4_2.getFontPrice
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.text = L1_2
  L1_2 = A0_2.text
  L1_2.text = "!"
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.text
  L1_2(L2_2, L3_2)
end

L0_1.init = L1_1
L0_1 = NewSpecialsBadge

function L1_1(A0_2, A1_2)
  A0_2.scale = A1_2
end

L0_1.setScale = L1_1
L0_1 = NewSpecialsBadge

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.text
  L2_2 = A0_2.badge
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L1_2 = A0_2.text
  L2_2 = A0_2.badge
  L2_2 = L2_2.y
  L1_2.y = L2_2
  L1_2 = A0_2.text
  L2_2 = L1_2
  L1_2 = L1_2.setScale
  L3_2 = A0_2.scale
  L3_2 = L3_2 * 5
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.badge
  L2_2 = L1_2
  L1_2 = L1_2.setScale
  L3_2 = A0_2.scale
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.layout = L1_1
L0_1 = NewSpecialsBadge

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
