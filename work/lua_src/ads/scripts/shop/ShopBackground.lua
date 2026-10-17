local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ShopBackground = L0_1
L0_1 = ShopBackground
L1_1 = {}
L2_1 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_1"
L3_1 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_2"
L4_1 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_3"
L5_1 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_4"
L6_1 = "BOX_MIDDLE_LEFT_CHARMENU_SHADOW"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L0_1.sprites = L1_1
L0_1 = ShopBackground

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.left = 0
  A0_2.right = 100
  A0_2.top = 0
  A0_2.bottom = 100
  A0_2.r = 0
  A0_2.g = 0
  A0_2.b = 0
  A0_2.a = 1
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = ShopBackground

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.left = A1_2
  A0_2.right = A2_2
  A0_2.top = A3_2
  A0_2.bottom = A4_2
end

L0_1.setPosition = L1_1
L0_1 = ShopBackground

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.r = A1_2
  A0_2.g = A2_2
  A0_2.b = A3_2
  A0_2.a = A4_2
end

L0_1.setColor = L1_1
L0_1 = ShopBackground

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.left
  L3_2 = A1_2 > L3_2
  L4_2 = gamelua
  L4_2 = L4_2.getUIScale
  L4_2 = L4_2()
  L5_2 = A0_2.tableAreaLeft
  if not L5_2 then
    L5_2 = 0
  end
  L5_2 = A1_2 > L5_2
  L6_2 = L3_2 or L6_2
  if not L3_2 then
    L6_2 = L5_2
  end
  return L6_2
end

L0_1.isPosInside = L1_1
L0_1 = ShopBackground

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.transition
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.transition
  if L4_2 < 0.2 then
    return
  end
  L4_2 = ShopBackground
  L4_2 = L4_2.sprites
  L4_2 = L4_2[1]
  L5_2 = A0_2.x
  L5_2 = L5_2 + A1_2
  L6_2 = A0_2.y
  L6_2 = L6_2 + A2_2
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.getSpriteBounds
  L8_2 = L4_2
  L7_2, L8_2 = L7_2(L8_2)
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getSpriteBounds
  L10_2 = "BTN_GALLERY_LIGHT"
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.floor
  L12_2 = A0_2.left
  L12_2 = L5_2 + L12_2
  L12_2 = L12_2 / L3_2
  L13_2 = L9_2 * 1.15
  L12_2 = L12_2 - L13_2
  L11_2 = L11_2(L12_2)
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.left
  L13_2 = L5_2 + L13_2
  L13_2 = L13_2 / L3_2
  L13_2 = L13_2 + L7_2
  L14_2 = L9_2 * 1.15
  L13_2 = L13_2 - L14_2
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.floor
  L14_2 = A0_2.left
  L14_2 = L5_2 + L14_2
  L14_2 = L14_2 / L3_2
  L13_2 = L13_2(L14_2)
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.floor
  L15_2 = A0_2.left
  L15_2 = L5_2 + L15_2
  L15_2 = L15_2 / L3_2
  L15_2 = L15_2 + L7_2
  L14_2 = L14_2(L15_2)
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.floor
  L16_2 = A0_2.right
  L16_2 = L5_2 + L16_2
  L16_2 = L16_2 / L3_2
  L16_2 = L16_2 - L7_2
  L15_2 = L15_2(L16_2)
  L16_2 = _G
  L16_2 = L16_2.math
  L16_2 = L16_2.floor
  L17_2 = A0_2.right
  L17_2 = L5_2 + L17_2
  L17_2 = L17_2 / L3_2
  L16_2 = L16_2(L17_2)
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.floor
  L18_2 = A0_2.top
  L18_2 = L6_2 + L18_2
  L18_2 = L18_2 / L3_2
  L17_2 = L17_2(L18_2)
  L18_2 = _G
  L18_2 = L18_2.math
  L18_2 = L18_2.floor
  L19_2 = A0_2.top
  L19_2 = L6_2 + L19_2
  L19_2 = L19_2 / L3_2
  L19_2 = L19_2 + L8_2
  L18_2 = L18_2(L19_2)
  L19_2 = _G
  L19_2 = L19_2.math
  L19_2 = L19_2.floor
  L20_2 = A0_2.top
  L20_2 = L6_2 + L20_2
  L20_2 = L20_2 / L3_2
  L21_2 = L10_2 * 0.8
  L20_2 = L20_2 + L21_2
  L19_2 = L19_2(L20_2)
  L20_2 = _G
  L20_2 = L20_2.math
  L20_2 = L20_2.floor
  L21_2 = A0_2.top
  L21_2 = L6_2 + L21_2
  L21_2 = L21_2 / L3_2
  L22_2 = L10_2 * 0.8
  L21_2 = L21_2 + L22_2
  L21_2 = L21_2 + L8_2
  L20_2 = L20_2(L21_2)
  L21_2 = _G
  L21_2 = L21_2.math
  L21_2 = L21_2.floor
  L22_2 = A0_2.bottom
  L22_2 = L6_2 + L22_2
  L22_2 = L22_2 / L3_2
  L22_2 = L22_2 - L8_2
  L21_2 = L21_2(L22_2)
  L22_2 = _G
  L22_2 = L22_2.math
  L22_2 = L22_2.floor
  L23_2 = A0_2.bottom
  L23_2 = L6_2 + L23_2
  L23_2 = L23_2 / L3_2
  L22_2 = L22_2(L23_2)
  if L18_2 > L19_2 then
    L19_2 = L18_2
  end
  L23_2 = _G
  L23_2 = L23_2.math
  L23_2 = L23_2.floor
  L24_2 = L9_2 * 1.15
  L24_2 = L13_2 - L24_2
  L23_2 = L23_2(L24_2)
  L24_2 = _G
  L24_2 = L24_2.math
  L24_2 = L24_2.floor
  L25_2 = L9_2 * 1.15
  L25_2 = L13_2 - L25_2
  L25_2 = L25_2 + L7_2
  L24_2 = L24_2(L25_2)
  if L13_2 < L24_2 then
    L24_2 = L13_2
  end
  L25_2 = _G
  L25_2 = L25_2.math
  L25_2 = L25_2.floor
  L26_2 = L10_2 * 0.77
  L26_2 = L20_2 + L26_2
  L26_2 = L26_2 + L8_2
  L25_2 = L25_2(L26_2)
  L26_2 = _G
  L26_2 = L26_2.math
  L26_2 = L26_2.floor
  L27_2 = L10_2 * 0.7
  L27_2 = L25_2 - L27_2
  L27_2 = L27_2 - L8_2
  L26_2 = L26_2(L27_2)
  L27_2 = _G
  L27_2 = L27_2.math
  L27_2 = L27_2.floor
  L28_2 = L10_2 * 0.7
  L28_2 = L25_2 - L28_2
  L27_2 = L27_2(L28_2)
  L28_2 = _G
  L28_2 = L28_2.math
  L28_2 = L28_2.floor
  L29_2 = L25_2 - L8_2
  L28_2 = L28_2(L29_2)
  if L27_2 > L28_2 then
    L28_2 = L27_2
  end
  L29_2 = _G
  L29_2 = L29_2.math
  L29_2 = L29_2.floor
  L30_2 = L10_2 * 1.3
  L30_2 = L25_2 + L30_2
  L29_2 = L29_2(L30_2)
  L30_2 = _G
  L30_2 = L30_2.math
  L30_2 = L30_2.floor
  L31_2 = L10_2 * 0.7
  L31_2 = L29_2 - L31_2
  L31_2 = L31_2 - L8_2
  L30_2 = L30_2(L31_2)
  L31_2 = _G
  L31_2 = L31_2.math
  L31_2 = L31_2.floor
  L32_2 = L10_2 * 0.7
  L32_2 = L29_2 - L32_2
  L31_2 = L31_2(L32_2)
  L32_2 = _G
  L32_2 = L32_2.math
  L32_2 = L32_2.floor
  L33_2 = L29_2 - L8_2
  L32_2 = L32_2(L33_2)
  if L31_2 > L32_2 then
    L32_2 = L31_2
  end
  L33_2 = L29_2 * L3_2
  L33_2 = L33_2 - L6_2
  A0_2.tabAreaBottom = L33_2
  L33_2 = -L9_2
  L33_2 = L33_2 * 0.65
  L33_2 = L33_2 * L3_2
  A0_2.tableAreaLeft = L33_2
  L33_2 = gamelua
  L33_2 = L33_2.setRenderState
  L34_2 = 0
  L35_2 = 0
  L36_2 = L3_2
  L37_2 = L3_2
  L38_2 = 0
  L39_2 = 0
  L40_2 = 0
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[1]
  L35_2 = L12_2
  L36_2 = L18_2
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[3]
  L35_2 = L12_2
  L36_2 = L19_2 - 1
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[3]
  L35_2 = L14_2
  L36_2 = L21_2 - 1
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[2]
  L35_2 = L15_2 - 1
  L36_2 = L18_2
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[4]
  L35_2 = L15_2 - 1
  L36_2 = L21_2 - 1
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L12_2
  L39_2 = L17_2
  L40_2 = L15_2
  L41_2 = L18_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L11_2
  L39_2 = L18_2
  L40_2 = L16_2
  L41_2 = L19_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L12_2
  L39_2 = L19_2
  L40_2 = L16_2
  L41_2 = L20_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L13_2
  L39_2 = L20_2
  L40_2 = L16_2
  L41_2 = L21_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L14_2
  L39_2 = L21_2
  L40_2 = L15_2
  L41_2 = L22_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[1]
  L35_2 = L24_2
  L36_2 = L27_2
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[3]
  L35_2 = L24_2
  L36_2 = L28_2 - 1
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[1]
  L35_2 = L24_2
  L36_2 = L31_2
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _G
  L33_2 = L33_2.res
  L33_2 = L33_2.drawSprite
  L34_2 = ShopBackground
  L34_2 = L34_2.sprites
  L34_2 = L34_2[3]
  L35_2 = L24_2
  L36_2 = L32_2 - 1
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L24_2
  L39_2 = L26_2
  L40_2 = L13_2
  L41_2 = L27_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L23_2
  L39_2 = L27_2
  L40_2 = L13_2
  L41_2 = L28_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L24_2
  L39_2 = L28_2
  L40_2 = L13_2
  L41_2 = L25_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L24_2
  L39_2 = L30_2
  L40_2 = L13_2
  L41_2 = L31_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L23_2
  L39_2 = L31_2
  L40_2 = L13_2
  L41_2 = L32_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = gamelua
  L33_2 = L33_2.drawRect
  L34_2 = A0_2.r
  L35_2 = A0_2.g
  L36_2 = A0_2.b
  L37_2 = A0_2.a
  L38_2 = L24_2
  L39_2 = L32_2
  L40_2 = L13_2
  L41_2 = L29_2
  L42_2 = true
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
  L33_2 = {}
  L34_2 = {}
  L35_2 = CharacterMenuShop
  L35_2 = L35_2.TAB_CHARACTERS
  L34_2.tab = L35_2
  L34_2.startY = L17_2
  L34_2.endY = L20_2
  L34_2.selectedY1 = L18_2
  L35_2 = L19_2 - 1
  L34_2.selectedY2 = L35_2
  L35_2 = {}
  L36_2 = CharacterMenuShop
  L36_2 = L36_2.TAB_BIRD_SIDE_SHOP
  L35_2.tab = L36_2
  L35_2.startY = L26_2
  L35_2.endY = L25_2
  L35_2.selectedY1 = L27_2
  L36_2 = L28_2 - 1
  L35_2.selectedY2 = L36_2
  L36_2 = {}
  L37_2 = CharacterMenuShop
  L37_2 = L37_2.TAB_PORK_SIDE_SHOP
  L36_2.tab = L37_2
  L36_2.startY = L30_2
  L36_2.endY = L29_2
  L36_2.selectedY1 = L31_2
  L37_2 = L32_2 - 1
  L36_2.selectedY2 = L37_2
  L33_2[1] = L34_2
  L33_2[2] = L35_2
  L33_2[3] = L36_2
  L34_2 = _G
  L34_2 = L34_2.ipairs
  L35_2 = L33_2
  L34_2, L35_2, L36_2 = L34_2(L35_2)
  for L37_2, L38_2 in L34_2, L35_2, L36_2 do
    L39_2 = A0_2.selectedTab
    L40_2 = L38_2.tab
    if L39_2 ~= L40_2 then
      L39_2 = L38_2.startY
      L40_2 = _G
      L40_2 = L40_2.res
      L40_2 = L40_2.getSpriteBounds
      L41_2 = ShopBackground
      L41_2 = L41_2.sprites
      L41_2 = L41_2[5]
      L40_2, L41_2 = L40_2(L41_2)
      while true do
        L42_2 = L38_2.endY
        if not (L39_2 < L42_2) then
          break
        end
        L42_2 = _G
        L42_2 = L42_2.res
        L42_2 = L42_2.drawSprite
        L43_2 = ShopBackground
        L43_2 = L43_2.sprites
        L43_2 = L43_2[5]
        L44_2 = L13_2
        L45_2 = L39_2
        L42_2(L43_2, L44_2, L45_2)
        L39_2 = L39_2 + L41_2
      end
    else
      L39_2 = L38_2.selectedY1
      L40_2 = _G
      L40_2 = L40_2.res
      L40_2 = L40_2.getSpriteBounds
      L41_2 = "CHARACTER_MENU_SHINE_MIDDLE_1"
      L40_2, L41_2 = L40_2(L41_2)
      while true do
        L42_2 = L38_2.selectedY2
        if not (L39_2 < L42_2) then
          break
        end
        L42_2 = _G
        L42_2 = L42_2.res
        L42_2 = L42_2.drawSprite
        L43_2 = "CHARACTER_MENU_SHINE_MIDDLE_1"
        L44_2 = L24_2
        L45_2 = L39_2
        L42_2(L43_2, L44_2, L45_2)
        L39_2 = L39_2 + L41_2
      end
      L42_2 = _G
      L42_2 = L42_2.res
      L42_2 = L42_2.drawSprite
      L43_2 = "CHARACTER_MENU_SHINE_CORNER_1"
      L44_2 = L24_2
      L45_2 = L38_2.selectedY1
      L42_2(L43_2, L44_2, L45_2)
      L42_2 = _G
      L42_2 = L42_2.res
      L42_2 = L42_2.drawSprite
      L43_2 = "CHARACTER_MENU_SHINE_CORNER_2"
      L44_2 = L24_2
      L45_2 = L38_2.selectedY2
      L42_2(L43_2, L44_2, L45_2)
    end
  end
  L34_2 = ui
  L34_2 = L34_2.Frame
  L34_2 = L34_2.draw
  L35_2 = A0_2
  L36_2 = L5_2
  L37_2 = L6_2
  L34_2(L35_2, L36_2, L37_2)
end

L0_1.draw = L1_1
L0_1 = ShopBackground

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2.isPosInside
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L4_2 = "BLOCK"
    L5_2 = nil
    L6_2 = A0_2
    return L4_2, L5_2, L6_2
  end
end

L0_1.onPointerEvent = L1_1
