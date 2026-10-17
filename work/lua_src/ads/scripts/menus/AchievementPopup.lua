local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.BGBox
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
MERewardPopup = L0_1
L0_1 = "POP_SCREEN_LEFT_1"
leftBackgroundSprite = L0_1
L0_1 = "POP_SCREEN_MIDDLE_1"
centerBackgroundSprite = L0_1
L0_1 = "POP_SCREEN_RIGHT_1"
rightBackgroundSprite = L0_1
L0_1 = MERewardPopup

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L4_2.suffix = "EAGLE_PURCHASE"
  L4_2.titleText = A1_2
  L4_2.descriptionText = A2_2
  L4_2.icon = A3_2
  L5_2 = _G
  L5_2 = L5_2.assert
  L6_2 = A0_2 ~= nil
  L5_2(L6_2)
  L5_2 = ui
  L5_2 = L5_2.BGBox
  L5_2 = L5_2.new
  L6_2 = A0_2
  L7_2 = L4_2
  return L5_2(L6_2, L7_2)
end

L0_1.new = L1_1
L0_1 = MERewardPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.hanchor = "RIGHT"
  A0_2.vanchor = "TOP"
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "icon"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = getFontHeadline
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.name = "title"
  L2_2.text = ""
  L2_2.hanchor = "LEFT"
  L2_2.vanchor = "TOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Text
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = getFontBasic
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.name = "description"
  L3_2.text = ""
  L3_2.hanchor = "HCENTER"
  L3_2.vanchor = "TOP"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L0_1.init = L1_1
L0_1 = MERewardPopup

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.SHOW_TIME = 3
  L1_2 = A0_2.SHOW_TIME
  A0_2.timer = L1_2
end

L0_1.onEntry = L1_1
L0_1 = MERewardPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.icon
  L2_2 = L2_2 ~= nil
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 1
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = _G
  L6_2 = L6_2.assert
  L7_2 = A0_2.components
  L7_2 = L7_2 ~= nil
  L6_2(L7_2)
  L6_2 = ui
  L6_2 = L6_2.BGBox
  L6_2 = L6_2.layout
  L7_2 = A0_2
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "title"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "description"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "icon"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2.titleText
  L6_2.text = L9_2
  L9_2 = A0_2.descriptionText
  L7_2.text = L9_2
  L10_2 = L8_2
  L9_2 = L8_2.setImage
  L11_2 = A0_2.icon
  L9_2(L10_2, L11_2)
  L9_2 = setFont
  L10_2 = L6_2.font
  L9_2(L10_2)
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getFontHeight
  L9_2 = L9_2()
  L9_2 = L9_2 * L5_2
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.getStringWidth
  L11_2 = L6_2.text
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * L4_2
  L11_2 = setFont
  L12_2 = L7_2.font
  L11_2(L12_2)
  L11_2 = _G
  L11_2 = L11_2.res
  L11_2 = L11_2.getFontHeight
  L11_2 = L11_2()
  L11_2 = L11_2 * L5_2
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.getStringWidth
  L13_2 = L7_2.text
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2 * L4_2
  L13_2 = _G
  L13_2 = L13_2.res
  L13_2 = L13_2.getSpriteBounds
  L14_2 = A0_2.components
  L14_2 = L14_2.right
  L13_2, L14_2 = L13_2(L14_2)
  L15_2 = _G
  L15_2 = L15_2.res
  L15_2 = L15_2.getSpriteBounds
  L16_2 = L8_2.image
  L15_2, L16_2 = L15_2(L16_2)
  L15_2 = L15_2 * L2_2
  L17_2 = L8_2.h
  L16_2 = L17_2 * L3_2
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.max
  L18_2 = L10_2
  L19_2 = L12_2 + L15_2
  L17_2 = L17_2(L18_2, L19_2)
  L17_2 = L17_2 * 1.2
  A0_2.width = L17_2
  L17_2 = L8_2.h
  L19_2 = L7_2
  L18_2 = L7_2.getFontLeading
  L18_2 = L18_2(L19_2)
  L17_2 = L17_2 + L18_2
  A0_2.height = L17_2
  L17_2 = screenWidth
  L17_2 = L17_2 - L13_2
  A0_2.x = L17_2
  L17_2 = A0_2.width
  L17_2 = L17_2 * -0.5
  L6_2.x = L17_2
  L17_2 = A0_2.height
  L17_2 = L17_2 * 0.1
  L6_2.y = L17_2
  L6_2.scaleX = L4_2
  L6_2.scaleY = L5_2
  L17_2 = A0_2.width
  L17_2 = L17_2 * -0.5
  L18_2 = L8_2.w
  L18_2 = L18_2 * 0.5
  L17_2 = L17_2 - L18_2
  L8_2.x = L17_2
  L17_2 = L8_2.py
  L8_2.y = L17_2
  L8_2.scaleX = L2_2
  L8_2.scaleY = L3_2
  L17_2 = A0_2.width
  L17_2 = -L17_2
  L17_2 = L17_2 * 0.5
  L7_2.x = L17_2
  L17_2 = L8_2.y
  L18_2 = L8_2.h
  L18_2 = L18_2 * 0.5
  L17_2 = L17_2 + L18_2
  L7_2.y = L17_2
  L7_2.scaleX = L4_2
  L7_2.scaleY = L5_2
  L18_2 = L6_2
  L17_2 = L6_2.clip
  L17_2(L18_2)
  L18_2 = L7_2
  L17_2 = L7_2.clip
  L17_2(L18_2)
end

L0_1.layout = L1_1
L0_1 = MERewardPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ui
  L3_2 = L3_2.BGBox
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.darkness
  if not L3_2 then
    L3_2 = 0
  end
  A0_2.darkness = L3_2
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = A0_2.components
  L4_2 = L4_2.right
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = A0_2.timer
  L5_2 = L5_2 - A1_2
  A0_2.timer = L5_2
  L5_2 = screenHeight
  L5_2 = L5_2 * 0.5
  A0_2.y = L5_2
  L5_2 = A0_2.timer
  if 2 < L5_2 then
    L5_2 = A0_2.timer
    L5_2 = L5_2 - 2
    L6_2 = tweenEaseCubicIn
    L7_2 = L5_2
    L8_2 = 0
    L9_2 = 1
    L10_2 = 1
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
    L6_2 = screenWidth
    L6_2 = L6_2 * 0.5
    L7_2 = A0_2.width
    L7_2 = L7_2 * 0.5
    L6_2 = L6_2 + L7_2
    L7_2 = screenWidth
    L8_2 = A0_2.width
    L7_2 = L7_2 + L8_2
    L7_2 = L7_2 * 0.5
    L7_2 = L5_2 * L7_2
    L6_2 = L6_2 + L7_2
    A0_2.x = L6_2
    L6_2 = A0_2.darkness
    L7_2 = A1_2 * 2
    L6_2 = L6_2 + L7_2
    A0_2.darkness = L6_2
  else
    L5_2 = A0_2.timer
    if 1 < L5_2 then
    else
      L5_2 = A0_2.timer
      if 0 < L5_2 then
        L5_2 = A0_2.timer
        L6_2 = tweenEaseCubicOut
        L7_2 = L5_2
        L8_2 = 0
        L9_2 = 1
        L10_2 = 1
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        L5_2 = L6_2
        L6_2 = screenWidth
        L6_2 = L6_2 * 0.5
        L7_2 = A0_2.width
        L7_2 = L7_2 * 0.5
        L6_2 = L6_2 + L7_2
        L7_2 = 1 - L5_2
        L8_2 = screenWidth
        L9_2 = A0_2.width
        L8_2 = L8_2 + L9_2
        L7_2 = L7_2 * L8_2
        L7_2 = L7_2 * 0.5
        L6_2 = L6_2 - L7_2
        A0_2.x = L6_2
        L6_2 = A0_2.darkness
        L7_2 = A1_2 * 2
        L6_2 = L6_2 - L7_2
        A0_2.darkness = L6_2
      else
        L5_2 = notificationsFrame
        L6_2 = L5_2
        L5_2 = L5_2.removeChild
        L7_2 = A0_2
        L5_2(L6_2, L7_2)
      end
    end
  end
end

L0_1.update = L1_1
L0_1 = MERewardPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.darkness
  L5_2 = 0.8
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.max
  L5_2 = L3_2
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = drawRect
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = L3_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = screenWidth
  L12_2 = screenHeight
  L13_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = ui
  L4_2 = L4_2.BGBox
  L4_2 = L4_2.draw
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.draw = L1_1
L0_1 = ui
L0_1 = L0_1.BGBox
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
BannerPopup = L0_1
L0_1 = "POP_SCREEN_LEFT_1"
leftBackgroundSprite = L0_1
L0_1 = "POP_SCREEN_MIDDLE_1"
centerBackgroundSprite = L0_1
L0_1 = "POP_SCREEN_RIGHT_1"
rightBackgroundSprite = L0_1
L0_1 = BannerPopup

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L4_2.titleText = A1_2
  L4_2.descriptionText = A2_2
  L4_2.icon = A3_2
  L5_2 = _G
  L5_2 = L5_2.assert
  L6_2 = A0_2 ~= nil
  L5_2(L6_2)
  L5_2 = ui
  L5_2 = L5_2.BGBox
  L5_2 = L5_2.new
  L6_2 = A0_2
  L7_2 = L4_2
  return L5_2(L6_2, L7_2)
end

L0_1.new = L1_1
L0_1 = BannerPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = leftBackgroundSprite
  L1_2.left = L2_2
  L2_2 = centerBackgroundSprite
  L1_2.center = L2_2
  L2_2 = rightBackgroundSprite
  L1_2.right = L2_2
  A0_2.components = L1_2
  A0_2.hanchor = "RIGHT"
  A0_2.vanchor = "TOP"
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "icon"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = getFontBasic
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.name = "title"
  L2_2.text = ""
  L2_2.hanchor = "HCENTER"
  L2_2.vanchor = "TOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Text
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = getFontBasic
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.name = "description"
  L3_2.text = ""
  L3_2.hanchor = "LEFT"
  L3_2.vanchor = "BOTTOM"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L0_1.init = L1_1
L0_1 = BannerPopup

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.timer = 2.7
end

L0_1.onEntry = L1_1
L0_1 = BannerPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.icon
  L2_2 = L2_2 ~= nil
  L1_2(L2_2)
  L1_2 = getUIScale
  L1_2 = L1_2()
  L2_2 = getFontScale
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L2_2
  L8_2 = _G
  L8_2 = L8_2.assert
  L9_2 = A0_2.components
  L9_2 = L9_2 ~= nil
  L8_2(L9_2)
  L8_2 = ui
  L8_2 = L8_2.BGBox
  L8_2 = L8_2.layout
  L9_2 = A0_2
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "title"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "description"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "icon"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = A0_2.titleText
  L8_2.text = L11_2
  L11_2 = A0_2.descriptionText
  L9_2.text = L11_2
  L12_2 = L10_2
  L11_2 = L10_2.setImage
  L13_2 = A0_2.icon
  L11_2(L12_2, L13_2)
  L11_2 = setFont
  L12_2 = L8_2.font
  L11_2(L12_2)
  L11_2 = _G
  L11_2 = L11_2.res
  L11_2 = L11_2.getFontHeight
  L11_2 = L11_2()
  L11_2 = L11_2 * L7_2
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.getStringWidth
  L13_2 = L8_2.text
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2 * L6_2
  L13_2 = setFont
  L14_2 = L9_2.font
  L13_2(L14_2)
  L13_2 = _G
  L13_2 = L13_2.res
  L13_2 = L13_2.getFontHeight
  L13_2 = L13_2()
  L13_2 = L13_2 * L7_2
  L14_2 = _G
  L14_2 = L14_2.res
  L14_2 = L14_2.getStringWidth
  L15_2 = L9_2.text
  L14_2 = L14_2(L15_2)
  L14_2 = L14_2 * L6_2
  L15_2 = _G
  L15_2 = L15_2.res
  L15_2 = L15_2.getSpriteBounds
  L16_2 = A0_2.components
  L16_2 = L16_2.right
  L15_2, L16_2 = L15_2(L16_2)
  L15_2 = L15_2 * L1_2
  L16_2 = L16_2 * L1_2
  L17_2 = _G
  L17_2 = L17_2.res
  L17_2 = L17_2.getSpriteBounds
  L18_2 = L10_2.image
  L17_2, L18_2 = L17_2(L18_2)
  L17_2 = L17_2 * L4_2
  L18_2 = L18_2 * L5_2
  L19_2 = _G
  L19_2 = L19_2.math
  L19_2 = L19_2.max
  L20_2 = L12_2 + L17_2
  L21_2 = L14_2 + L17_2
  L19_2 = L19_2(L20_2, L21_2)
  L19_2 = L19_2 * 1.1
  A0_2.width = L19_2
  A0_2.height = L16_2
  L19_2 = screenWidth
  L19_2 = L19_2 - L15_2
  A0_2.x = L19_2
  L19_2 = A0_2.width
  L19_2 = -L19_2
  L20_2 = A0_2.height
  L20_2 = L20_2 * 0.25
  L19_2 = L19_2 + L20_2
  L10_2.x = L19_2
  L19_2 = A0_2.height
  L19_2 = L19_2 * 0.5
  L10_2.y = L19_2
  L10_2.scaleX = L4_2
  L10_2.scaleY = L5_2
  L19_2 = L10_2.x
  L20_2 = L17_2 * 0.5
  L19_2 = L19_2 + L20_2
  L20_2 = A0_2.height
  L20_2 = L20_2 * 0.25
  L19_2 = L19_2 + L20_2
  L9_2.x = L19_2
  L19_2 = A0_2.height
  L19_2 = L19_2 * 0.75
  L9_2.y = L19_2
  L19_2 = L6_2 * 2
  L9_2.scaleX = L19_2
  L19_2 = L7_2 * 2
  L9_2.scaleY = L19_2
  L19_2 = A0_2.width
  L19_2 = L19_2 * -0.5
  L8_2.x = L19_2
  L19_2 = A0_2.height
  L19_2 = L19_2 * 0.1
  L8_2.y = L19_2
  L19_2 = L6_2 * 2
  L8_2.scaleX = L19_2
  L19_2 = L7_2 * 2
  L8_2.scaleY = L19_2
  L20_2 = L8_2
  L19_2 = L8_2.clip
  L19_2(L20_2)
  L20_2 = L9_2
  L19_2 = L9_2.clip
  L19_2(L20_2)
end

L0_1.layout = L1_1
L0_1 = BannerPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.BGBox
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.height
  L4_2 = A0_2.timer
  L4_2 = L4_2 - A1_2
  A0_2.timer = L4_2
  L4_2 = A0_2.timer
  if 2.4 < L4_2 then
    L4_2 = screenHeight
    L5_2 = A0_2.timer
    L5_2 = 2.7 - L5_2
    L5_2 = L5_2 / 0.3
    L5_2 = L3_2 * L5_2
    L4_2 = L4_2 - L5_2
    A0_2.y = L4_2
  else
    L4_2 = A0_2.timer
    if 0.4 < L4_2 then
      L4_2 = screenHeight
      L4_2 = L4_2 - L3_2
      A0_2.y = L4_2
    else
      L4_2 = A0_2.timer
      if 0 < L4_2 then
        L4_2 = screenHeight
        L4_2 = L4_2 - L3_2
        L5_2 = A0_2.timer
        L5_2 = 0.4 - L5_2
        L5_2 = L5_2 / 0.3
        L5_2 = L3_2 * L5_2
        L4_2 = L4_2 + L5_2
        A0_2.y = L4_2
      else
        L4_2 = notificationsFrame
        L5_2 = L4_2
        L4_2 = L4_2.removeChild
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end

L0_1.update = L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
AchievementsContainer = L0_1
L0_1 = AchievementsContainer

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2.achievements = L1_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = AchievementsContainer

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.progressFinished = false
  A0_2.progressIndex = nil
  A0_2.timer = 0.5
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = AchievementsContainer

function L1_1(A0_2)
  local L1_2
  A0_2.timer = 0.5
  A0_2.progressIndex = 1
end

L0_1.startProgressBars = L1_1
L0_1 = AchievementsContainer

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2
  L3_2 = nil
  L4_2 = getCurrentQuestProgress
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = getLocalizedText
  L6_2 = L2_2.title
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2[1]
  if L5_2 then
    L5_2 = L2_2.popupLevel
    if not L5_2 then
      L5_2 = getQuestLevel
      L6_2 = L2_2.name
      L5_2 = L5_2(L6_2)
    end
    L6_2 = ui
    L6_2 = L6_2.QuestLine
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L9_2 = L2_2.name
    L8_2.name = L9_2
    L9_2 = L2_2.rewardImage
    if L9_2 then
      L9_2 = L2_2.rewardImage
      L9_2 = L9_2[L5_2]
      if L9_2 then
        goto lbl_32
      end
    end
    L9_2 = nil
    ::lbl_32::
    L8_2.rewardImage = L9_2
    L9_2 = L2_2.rewardImageScale
    if not L9_2 then
      L9_2 = 1
    end
    L8_2.rewardImageScale = L9_2
    L9_2 = L2_2.rewardText
    L9_2 = L9_2[L5_2]
    L8_2.rewardText = L9_2
    L9_2 = getLocalizedText
    L10_2 = L2_2.title
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2[L5_2]
    L8_2.titleText = L9_2
    L9_2 = getLocalizedText
    L10_2 = L2_2.description
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2[L5_2]
    L8_2.contentText = L9_2
    L8_2.currentValue = L4_2
    L9_2 = L2_2.goal
    L9_2 = L9_2[L5_2]
    L8_2.targetValue = L9_2
    L8_2.quest = L2_2
    L8_2.achievementPopup = true
    L6_2 = L6_2(L7_2, L8_2)
    L3_2 = L6_2
  else
    L5_2 = ui
    L5_2 = L5_2.QuestLine
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L8_2 = L2_2.name
    L7_2.name = L8_2
    L8_2 = L2_2.rewardImage
    L7_2.rewardImage = L8_2
    L8_2 = L2_2.rewardImageScale
    if not L8_2 then
      L8_2 = 1
    end
    L7_2.rewardImageScale = L8_2
    L8_2 = L2_2.rewardText
    L7_2.rewardText = L8_2
    L8_2 = getLocalizedText
    L9_2 = getCharacterText
    L10_2 = L2_2.title
    L9_2, L10_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.titleText = L8_2
    L8_2 = getLocalizedText
    L9_2 = L2_2.description
    L8_2 = L8_2(L9_2)
    L7_2.contentText = L8_2
    L7_2.currentValue = L4_2
    L8_2 = L2_2.goal
    L7_2.targetValue = L8_2
    L7_2.quest = L2_2
    L7_2.achievementPopup = true
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
  end
  L5_2 = _G
  L5_2 = L5_2.table
  L5_2 = L5_2.insert
  L6_2 = A0_2.achievements
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end

L0_1.addAchievement = L1_1
L0_1 = AchievementsContainer

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.achievements
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2.achievements
    L1_2 = L1_2[1]
    return L1_2
  end
  L1_2 = nil
  return L1_2
end

L0_1.getFirstQuest = L1_1
L0_1 = AchievementsContainer

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.w = 0
  A0_2.h = 0
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2.achievements
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.layout
    L6_2(L7_2)
    L6_2 = L5_2.w
    A0_2.w = L6_2
    L6_2 = A0_2.h
    L7_2 = L5_2.h
    L6_2 = L6_2 + L7_2
    A0_2.h = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.updateProgress
    L8_2 = L5_2.targetValue
    L8_2 = L8_2 * 0.7
    L6_2(L7_2, L8_2)
  end
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2.achievements
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.h
    L7_2 = -L7_2
    L7_2 = L7_2 / 2
    L8_2 = L6_2.h
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L8_2 = L6_2.h
    L8_2 = L8_2 * L1_2
    L7_2 = L7_2 + L8_2
    L6_2.y = L7_2
    L1_2 = L1_2 + 1
  end
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.layout
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.layout = L1_1
L0_1 = AchievementsContainer

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.achievements
  L4_2 = A0_2.progressIndex
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L4_2 = A0_2.timer
    L4_2 = L4_2 - A1_2
    A0_2.timer = L4_2
    L4_2 = L3_2.targetValue
    L5_2 = A0_2.timer
    L5_2 = 0.5 - L5_2
    L5_2 = L5_2 * 0.6
    L5_2 = 0.7 + L5_2
    L4_2 = L4_2 * L5_2
    L5_2 = L3_2.targetValue
    if L4_2 <= L5_2 then
      L6_2 = L3_2
      L5_2 = L3_2.updateProgress
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    else
      L6_2 = L3_2
      L5_2 = L3_2.updateProgress
      L7_2 = L3_2.targetValue
      L5_2(L6_2, L7_2)
      A0_2.timer = 0.5
      L6_2 = L3_2
      L5_2 = L3_2.emitProgressParticles
      L7_2 = A0_2.x
      L8_2 = A0_2.y
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2.progressIndex
      L5_2 = L5_2 + 1
      A0_2.progressIndex = L5_2
    end
  else
    L4_2 = A0_2.progressIndex
    if L4_2 then
      L4_2 = A0_2.progressIndex
      L5_2 = A0_2.achievements
      L5_2 = #L5_2
      if L4_2 > L5_2 then
        L4_2 = A0_2.timer
        L4_2 = L4_2 - A1_2
        A0_2.timer = L4_2
        L4_2 = A0_2.timer
        if L4_2 <= 0 then
          A0_2.progressFinished = true
          A0_2.progressIndex = nil
        end
      end
    end
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.update = L1_1
L0_1 = AchievementsContainer

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
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
AchievementPopup = L0_1
L0_1 = AchievementPopup
L0_1.isShown = false
L0_1 = AchievementPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2.suffix = "SITH"
  else
    A0_2.suffix = "LIGHT"
  end
  L1_2 = AchievementsContainer
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "achievementContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.achievementContainer = L1_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2.quests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.achievementContainer
    L7_2 = L6_2
    L6_2 = L6_2.addAchievement
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "questLog"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.questLogo = L1_2
  L1_2 = A0_2.questLogo
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "BTN_ACHIEVEMENT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.achievementContainer
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.questLogo
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.ShoppingUIFrame
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.coinButtonVisible = true
  L3_2.shopButtonVisible = false
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.shoppingFrame = L1_2
  L1_2 = A0_2.isDismissable
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.ScallableButton
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "checkButton"
    L3_2.returnValue = "CHECK_CLICK"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.checkButton = L1_2
    L1_2 = A0_2.checkButton
    L2_2 = L1_2
    L1_2 = L1_2.setImage
    L3_2 = getButtonImageName
    L4_2 = "closeComicOrTutorialButton"
    L5_2 = SettingsWrapper
    L6_2 = L5_2
    L5_2 = L5_2.isDarkSide
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = A0_2.checkButton
    L1_2(L2_2, L3_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.quests
  L1_2 = #L1_2
  L1_2 = L1_2 * 1.7
  A0_2.timeout = L1_2
  L1_2 = A0_2.timeout
  if L1_2 < 3 then
    A0_2.timeout = 3
  end
  L1_2 = AchievementPopup
  L1_2.isShown = true
  L1_2 = {}
  L2_2 = 0.16
  L3_2 = 0.13
  L4_2 = 0.13
  L5_2 = 0.1
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L2_2 = A0_2.timeout
  L3_2 = A0_2.quests
  L3_2 = #L3_2
  L3_2 = L1_2[L3_2]
  L2_2 = L2_2 * L3_2
  if not L2_2 then
    L2_2 = 0.1
  end
  A0_2.animationTime = L2_2
  A0_2.alpha = 0.3
  L2_2 = A0_2.timeout
  A0_2.timer = L2_2
  A0_2.delayBeforeClose = 0.2
  A0_2.fadeInTimer = 0.2
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_NOTIFICATION_OPEN
  L4_2.id = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.shoppingFrame
  L3_2 = L2_2
  L2_2 = L2_2.onEntry
  L2_2(L3_2)
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.onEntry
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.onEntry = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = AchievementPopup
  L1_2.isShown = false
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.queueEvent
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_NOTIFICATION_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.shoppingFrame
  L2_2 = L1_2
  L1_2 = L1_2.onExit
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if A1_2 == "LRELEASE" then
    L7_2 = A0_2.isDismissable
    if L7_2 or L4_2 == "CHECK_CLICK" then
      L7_2 = eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = events
      L10_2 = L10_2.EID_POP_FRAME
      L9_2.id = L10_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = A0_2.timer
      L8_2 = A0_2.animationTime
      if L7_2 > L8_2 then
        L7_2 = A0_2.canSkip
        if L7_2 then
          L7_2 = A0_2.animationTime
          L7_2 = L7_2 / 2
          A0_2.animationTime = L7_2
          L7_2 = A0_2.animationTime
          A0_2.timer = L7_2
        end
      end
    end
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    L5_2 = A0_2.timer
    L6_2 = A0_2.animationTime
    if L5_2 > L6_2 then
      L5_2 = A0_2.canSkip
      if L5_2 then
        L5_2 = A0_2.animationTime
        L5_2 = L5_2 / 2
        A0_2.animationTime = L5_2
        L5_2 = A0_2.animationTime
        A0_2.timer = L5_2
    end
  end
  else
    L5_2 = A0_2.isDismissable
    if L5_2 then
      L5_2 = eventManager
      L6_2 = L5_2
      L5_2 = L5_2.notify
      L7_2 = {}
      L8_2 = events
      L8_2 = L8_2.EID_POP_FRAME
      L7_2.id = L8_2
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = -1
  return L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "BTN_BG_LIGHT"
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = A0_2.achievementContainer
  L5_2 = L4_2
  L4_2 = L4_2.layout
  L4_2(L5_2)
  L4_2 = A0_2.achievementContainer
  L5_2 = screenWidth
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = A0_2.achievementContainer
  L5_2 = screenHeight
  L6_2 = A0_2.achievementContainer
  L6_2 = L6_2.h
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L4_2 = A0_2.questLogo
  L5_2 = A0_2.achievementContainer
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A0_2.questLogo
  L5_2 = A0_2.achievementContainer
  L5_2 = L5_2.y
  L6_2 = A0_2.achievementContainer
  L6_2 = L6_2.h
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L4_2.y = L5_2
  L4_2 = A0_2.questLogo
  L5_2 = L4_2
  L4_2 = L4_2.setScale
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.checkButton
  if L4_2 then
    L4_2 = A0_2.checkButton
    L5_2 = screenWidth
    L6_2 = L2_2 * L1_2
    L6_2 = L6_2 * 0.6
    L5_2 = L5_2 - L6_2
    L4_2.x = L5_2
    L4_2 = A0_2.checkButton
    L5_2 = screenHeight
    L6_2 = L3_2 * L1_2
    L6_2 = L6_2 * 0.6
    L5_2 = L5_2 - L6_2
    L4_2.y = L5_2
    L4_2 = A0_2.checkButton
    L5_2 = L4_2
    L4_2 = L4_2.setScale
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2.shoppingFrame
  L5_2 = L4_2
  L4_2 = L4_2.layout
  L4_2(L5_2)
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = A0_2.achievementContainer
  L5_2 = L4_2
  L4_2 = L4_2.getFirstQuest
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.isTitleOverLocation
  L7_2 = A0_2.x
  L8_2 = L4_2.x
  L9_2 = A0_2.questLogo
  L9_2 = L9_2.w
  L9_2 = L9_2 * L1_2
  L8_2 = L8_2 - L9_2
  L7_2 = L7_2 - L8_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = A0_2.questLogo
    L5_2.alpha = 0.4
  else
    L5_2 = A0_2.questLogo
    L5_2.alpha = 1
  end
end

L0_1.layout = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.7
  if not A0_2 then
    L2_2 = 0
    return L2_2
  end
  if A0_2 < L1_2 then
    L2_2 = A0_2 * 1
    L2_2 = L2_2 / L1_2
    return L2_2
  elseif A0_2 > L1_2 then
    L2_2 = 1
    return L2_2
  else
    L2_2 = 0
    return L2_2
  end
end

L0_1.boxTransition = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.achievementContainer
  L3_2 = L3_2.h
  L4_2 = screenHeight
  L5_2 = L3_2 * 0.5
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.timer
  L5_2 = L5_2 - A1_2
  A0_2.timer = L5_2
  L5_2 = A0_2.fadeInTimer
  if 0 < L5_2 then
    L5_2 = A0_2.fadeInTimer
    L5_2 = L5_2 - A1_2
    A0_2.fadeInTimer = L5_2
    L5_2 = 0.39999998 * A1_2
    L5_2 = L5_2 / 0.2
    A0_2.alpha = L5_2
  else
    A0_2.alpha = 0.7
  end
  L5_2 = A0_2.timer
  L6_2 = A0_2.timeout
  L7_2 = A0_2.animationTime
  L6_2 = L6_2 - L7_2
  if L5_2 > L6_2 then
    L5_2 = A0_2.achievementContainer
    L5_2 = L5_2.y
    if L5_2 ~= L4_2 then
      L5_2 = A0_2.timeout
      L6_2 = A0_2.timer
      L5_2 = L5_2 - L6_2
      L5_2 = L5_2 * 1
      L6_2 = A0_2.animationTime
      L5_2 = L5_2 / L6_2
      L6_2 = A0_2.achievementContainer
      L7_2 = screenHeight
      L8_2 = L3_2 * 0.5
      L7_2 = L7_2 + L8_2
      L8_2 = L3_2 * L5_2
      L7_2 = L7_2 - L8_2
      L6_2.y = L7_2
  end
  else
    L5_2 = A0_2.timer
    L6_2 = A0_2.animationTime
    if L5_2 > L6_2 then
      A0_2.canSkip = true
      L5_2 = A0_2.achievementContainer
      L5_2 = L5_2.progressIndex
      if not L5_2 then
        L5_2 = A0_2.achievementContainer
        L5_2 = L5_2.progressFinished
        if not L5_2 then
          L5_2 = A0_2.achievementContainer
          L6_2 = L5_2
          L5_2 = L5_2.startProgressBars
          L5_2(L6_2)
        end
      end
      L5_2 = A0_2.achievementContainer
      L5_2 = L5_2.progressFinished
      if not L5_2 then
        L5_2 = A0_2.timer
        L5_2 = L5_2 + A1_2
        A0_2.timer = L5_2
      end
      L5_2 = A0_2.achievementContainer
      L5_2.y = L4_2
    else
      L5_2 = A0_2.timer
      if 0 < L5_2 then
        L5_2 = A0_2.animationTime
        L6_2 = A0_2.timer
        L5_2 = L5_2 - L6_2
        L5_2 = L5_2 * 1
        L6_2 = A0_2.animationTime
        L5_2 = L5_2 / L6_2
        L6_2 = A0_2.achievementContainer
        L7_2 = A0_2.questLogo
        L7_2 = L7_2.h
        L7_2 = L3_2 + L7_2
        L7_2 = L7_2 * L5_2
        L7_2 = L4_2 + L7_2
        L6_2.y = L7_2
      else
        L5_2 = A0_2.delayBeforeClose
        if 0 < L5_2 then
          L5_2 = A0_2.delayBeforeClose
          L5_2 = L5_2 - A1_2
          A0_2.delayBeforeClose = L5_2
        else
          L5_2 = eventManager
          L6_2 = L5_2
          L5_2 = L5_2.notify
          L7_2 = {}
          L8_2 = events
          L8_2 = L8_2.EID_POP_FRAME
          L7_2.id = L8_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end

L0_1.nonDismissableUpdate = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.achievementContainer
  L3_2 = L3_2.h
  L4_2 = A0_2.animateTime
  if not L4_2 then
    A0_2.animateTime = 0
  end
  L4_2 = A0_2.animateTime
  L4_2 = L4_2 + A1_2
  A0_2.animateTime = L4_2
  L4_2 = tweenEaseCubicOut
  L5_2 = AchievementPopup
  L5_2 = L5_2.boxTransition
  L6_2 = A0_2.animateTime
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L7_2 = 1
  L8_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = screenHeight
  L5_2 = L5_2 * 0.5
  L6_2 = L3_2 * 0.5
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 * L4_2
  L6_2 = A0_2.achievementContainer
  L7_2 = screenHeight
  L8_2 = L3_2 * 0.5
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 - L5_2
  L6_2.y = L7_2
  if 1 <= L4_2 then
    L6_2 = A0_2.achievementContainer
    L6_2 = L6_2.progressIndex
    if not L6_2 then
      L6_2 = A0_2.achievementContainer
      L6_2 = L6_2.progressFinished
      if not L6_2 then
        L6_2 = A0_2.achievementContainer
        L7_2 = L6_2
        L6_2 = L6_2.startProgressBars
        L6_2(L7_2)
      end
    end
  end
end

L0_1.dismissableUpdate = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.isDismissable
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.nonDismissableUpdate
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.dismissableUpdate
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.questLogo
  L4_2 = A0_2.achievementContainer
  L4_2 = L4_2.y
  L5_2 = A0_2.achievementContainer
  L5_2 = L5_2.h
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L3_2.y = L4_2
  L3_2 = A0_2.shoppingFrame
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = AchievementPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.alpha
  L8_2 = 0
  L9_2 = 0
  L10_2 = screenWidth
  L11_2 = screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = A0_2.shoppingFrame
  L4_2 = L3_2
  L3_2 = L3_2.draw
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
