local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
RectBox = L0_1
L0_1 = RectBox

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
L0_1 = RectBox

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.left = A1_2
  A0_2.right = A2_2
  A0_2.top = A3_2
  A0_2.bottom = A4_2
end

L0_1.setPosition = L1_1
L0_1 = RectBox

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.r = A1_2
  A0_2.g = A2_2
  A0_2.b = A3_2
  A0_2.a = A4_2
end

L0_1.setColor = L1_1
L0_1 = RectBox

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.left
  L3_2 = A1_2 > L3_2
  return L3_2
end

L0_1.isPosInside = L1_1
L0_1 = RectBox

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.transition
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.transition
  if L4_2 < 0.2 then
    return
  end
  L4_2 = "CHARACTER_MENU_CORNER_POSITIVE_1"
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
  L23_2 = nil
  L24_2 = A0_2.rows
  if 2 < L24_2 then
    L24_2 = _G
    L24_2 = L24_2.math
    L24_2 = L24_2.floor
    L25_2 = L10_2 * 0.77
    L25_2 = L20_2 + L25_2
    L25_2 = L25_2 + L8_2
    L24_2 = L24_2(L25_2)
    L23_2 = L24_2
  else
    L23_2 = L22_2
  end
  L24_2 = _G
  L24_2 = L24_2.math
  L24_2 = L24_2.floor
  L25_2 = L10_2 * 0.7
  L25_2 = L23_2 - L25_2
  L25_2 = L25_2 - L8_2
  L24_2 = L24_2(L25_2)
  L25_2 = _G
  L25_2 = L25_2.math
  L25_2 = L25_2.floor
  L26_2 = L10_2 * 0.7
  L26_2 = L23_2 - L26_2
  L25_2 = L25_2(L26_2)
  L26_2 = _G
  L26_2 = L26_2.math
  L26_2 = L26_2.floor
  L27_2 = L23_2 - L8_2
  L26_2 = L26_2(L27_2)
  if L25_2 > L26_2 then
    L26_2 = L25_2
  end
  L27_2 = _G
  L27_2 = L27_2.math
  L27_2 = L27_2.floor
  L28_2 = L9_2 * 1.15
  L28_2 = L13_2 - L28_2
  L27_2 = L27_2(L28_2)
  L28_2 = _G
  L28_2 = L28_2.math
  L28_2 = L28_2.floor
  L29_2 = L9_2 * 1.15
  L29_2 = L13_2 - L29_2
  L29_2 = L29_2 + L7_2
  L28_2 = L28_2(L29_2)
  if L13_2 < L28_2 then
    L28_2 = L13_2
  end
  L29_2 = gamelua
  L29_2 = L29_2.setRenderState
  L30_2 = 0
  L31_2 = 0
  L32_2 = L3_2
  L33_2 = L3_2
  L34_2 = 0
  L35_2 = 0
  L36_2 = 0
  L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
  L29_2 = _G
  L29_2 = L29_2.res
  L29_2 = L29_2.drawSprite
  L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_1"
  L31_2 = L12_2
  L32_2 = L18_2
  L29_2(L30_2, L31_2, L32_2)
  L29_2 = _G
  L29_2 = L29_2.res
  L29_2 = L29_2.drawSprite
  L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_3"
  L31_2 = L12_2
  L32_2 = L19_2 - 1
  L29_2(L30_2, L31_2, L32_2)
  L29_2 = A0_2.multiLine
  if L29_2 then
    L29_2 = A0_2.showSideSwitchButton
    if not L29_2 then
      L29_2 = _G
      L29_2 = L29_2.res
      L29_2 = L29_2.drawSprite
      L30_2 = "CHARACTER_MENU_CORNER_NEGATIVE"
      L31_2 = L13_2
      L32_2 = L20_2 - 1
      L29_2(L30_2, L31_2, L32_2)
    end
    L29_2 = A0_2.showSideSwitchButton
    if L29_2 then
      L29_2 = A0_2.rows
      if L29_2 < 3 then
        goto lbl_227
      end
    end
    L29_2 = _G
    L29_2 = L29_2.res
    L29_2 = L29_2.drawSprite
    L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_3"
    L31_2 = L14_2
    L32_2 = L21_2 - 1
    L29_2(L30_2, L31_2, L32_2)
  end
  ::lbl_227::
  L29_2 = _G
  L29_2 = L29_2.res
  L29_2 = L29_2.drawSprite
  L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_2"
  L31_2 = L15_2 - 1
  L32_2 = L18_2
  L29_2(L30_2, L31_2, L32_2)
  L29_2 = A0_2.multiLine
  if L29_2 then
    L29_2 = _G
    L29_2 = L29_2.res
    L29_2 = L29_2.drawSprite
    L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_4"
    L31_2 = L15_2 - 1
    L32_2 = L21_2 - 1
    L29_2(L30_2, L31_2, L32_2)
  else
    L29_2 = _G
    L29_2 = L29_2.res
    L29_2 = L29_2.drawSprite
    L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_4"
    L31_2 = L15_2 - 1
    L32_2 = L19_2 - 1
    L29_2(L30_2, L31_2, L32_2)
  end
  L29_2 = gamelua
  L29_2 = L29_2.drawRect
  L30_2 = A0_2.r
  L31_2 = A0_2.g
  L32_2 = A0_2.b
  L33_2 = A0_2.a
  L34_2 = L12_2
  L35_2 = L17_2
  L36_2 = L15_2
  L37_2 = L18_2
  L38_2 = true
  L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  L29_2 = gamelua
  L29_2 = L29_2.drawRect
  L30_2 = A0_2.r
  L31_2 = A0_2.g
  L32_2 = A0_2.b
  L33_2 = A0_2.a
  L34_2 = L11_2
  L35_2 = L18_2
  L36_2 = L16_2
  L37_2 = L19_2
  L38_2 = true
  L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  L29_2 = A0_2.multiLine
  if L29_2 then
    L29_2 = gamelua
    L29_2 = L29_2.drawRect
    L30_2 = A0_2.r
    L31_2 = A0_2.g
    L32_2 = A0_2.b
    L33_2 = A0_2.a
    L34_2 = L12_2
    L35_2 = L19_2
    L36_2 = L16_2
    L37_2 = L20_2
    L38_2 = true
    L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  else
    L29_2 = gamelua
    L29_2 = L29_2.drawRect
    L30_2 = A0_2.r
    L31_2 = A0_2.g
    L32_2 = A0_2.b
    L33_2 = A0_2.a
    L34_2 = L12_2
    L35_2 = L19_2
    L36_2 = L15_2
    L37_2 = L20_2
    L38_2 = true
    L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  end
  L29_2 = A0_2.multiLine
  if L29_2 then
    L29_2 = gamelua
    L29_2 = L29_2.drawRect
    L30_2 = A0_2.r
    L31_2 = A0_2.g
    L32_2 = A0_2.b
    L33_2 = A0_2.a
    L34_2 = L13_2
    L35_2 = L20_2
    L36_2 = L16_2
    L37_2 = L21_2
    L38_2 = true
    L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
    L29_2 = A0_2.showSideSwitchButton
    if L29_2 then
      L29_2 = A0_2.rows
      if L29_2 < 3 then
        L29_2 = gamelua
        L29_2 = L29_2.drawRect
        L30_2 = A0_2.r
        L31_2 = A0_2.g
        L32_2 = A0_2.b
        L33_2 = A0_2.a
        L34_2 = L13_2
        L35_2 = L21_2
        L36_2 = L15_2
        L37_2 = L22_2
        L38_2 = true
        L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
    end
    else
      L29_2 = gamelua
      L29_2 = L29_2.drawRect
      L30_2 = A0_2.r
      L31_2 = A0_2.g
      L32_2 = A0_2.b
      L33_2 = A0_2.a
      L34_2 = L14_2
      L35_2 = L21_2
      L36_2 = L15_2
      L37_2 = L22_2
      L38_2 = true
      L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
    end
  end
  L29_2 = A0_2.showSideSwitchButton
  if L29_2 then
    L29_2 = A0_2.sideSwitchButtonVisible
    if L29_2 then
      L29_2 = _G
      L29_2 = L29_2.res
      L29_2 = L29_2.drawSprite
      L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_1"
      L31_2 = L28_2
      L32_2 = L25_2
      L29_2(L30_2, L31_2, L32_2)
      L29_2 = _G
      L29_2 = L29_2.res
      L29_2 = L29_2.drawSprite
      L30_2 = "CHARACTER_MENU_CORNER_POSITIVE_3"
      L31_2 = L28_2
      L32_2 = L26_2 - 1
      L29_2(L30_2, L31_2, L32_2)
      L29_2 = gamelua
      L29_2 = L29_2.drawRect
      L30_2 = A0_2.r
      L31_2 = A0_2.g
      L32_2 = A0_2.b
      L33_2 = A0_2.a
      L34_2 = L28_2
      L35_2 = L24_2
      L36_2 = L13_2
      L37_2 = L25_2
      L38_2 = true
      L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
      L29_2 = gamelua
      L29_2 = L29_2.drawRect
      L30_2 = A0_2.r
      L31_2 = A0_2.g
      L32_2 = A0_2.b
      L33_2 = A0_2.a
      L34_2 = L27_2
      L35_2 = L25_2
      L36_2 = L13_2
      L37_2 = L26_2
      L38_2 = true
      L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
      L29_2 = gamelua
      L29_2 = L29_2.drawRect
      L30_2 = A0_2.r
      L31_2 = A0_2.g
      L32_2 = A0_2.b
      L33_2 = A0_2.a
      L34_2 = L28_2
      L35_2 = L26_2
      L36_2 = L13_2
      L37_2 = L23_2
      L38_2 = true
      L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
      L29_2 = L24_2
      L30_2 = _G
      L30_2 = L30_2.res
      L30_2 = L30_2.getSpriteBounds
      L31_2 = "BOX_MIDDLE_LEFT_CHARMENU_SHADOW"
      L30_2, L31_2 = L30_2(L31_2)
      while L23_2 > L29_2 do
        L32_2 = _G
        L32_2 = L32_2.res
        L32_2 = L32_2.drawSprite
        L33_2 = "BOX_MIDDLE_LEFT_CHARMENU_SHADOW"
        L34_2 = L13_2
        L35_2 = L29_2
        L32_2(L33_2, L34_2, L35_2)
        L29_2 = L29_2 + L31_2
      end
    end
  end
  L29_2 = ui
  L29_2 = L29_2.Frame
  L29_2 = L29_2.draw
  L30_2 = A0_2
  L31_2 = L5_2
  L32_2 = L6_2
  L29_2(L30_2, L31_2, L32_2)
end

L0_1.draw = L1_1
