local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CameraRing = L0_1
L0_1 = CameraRing

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.topImg = L1_2
  L1_2 = A0_2.topImg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ICON_RING_PART"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.topImg
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = CameraRing

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.scale
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = A0_2.topImg
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.layout
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.layout = L1_1
L0_1 = CameraRing

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.topImg
  L2_2.alpha = A1_2
end

L0_1.setAlpha = L1_1
