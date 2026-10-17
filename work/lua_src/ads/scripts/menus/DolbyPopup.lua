local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.BGBox
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
DolbyPopup = L0_1
L0_1 = DolbyPopup
L0_1.leftBackgroundSprite = "ID_SCREEN_LEFT_1"
L0_1 = DolbyPopup
L0_1.centerBackgroundSprite = "ID_SCREEN_MIDDLE_1"
L0_1 = DolbyPopup
L0_1.rightBackgroundSprite = "ID_SCREEN_RIGHT_1"
L0_1 = DolbyPopup

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A1_2.icon
  L2_2.icon = L3_2
  L3_2 = A1_2.descriptionText
  L2_2.descriptionText = L3_2
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A0_2 ~= nil
  L3_2(L4_2)
  L3_2 = ui
  L3_2 = L3_2.BGBox
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end

L0_1.new = L1_1
L0_1 = DolbyPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = DolbyPopup
  L2_2 = L2_2.leftBackgroundSprite
  L1_2.left = L2_2
  L2_2 = DolbyPopup
  L2_2 = L2_2.centerBackgroundSprite
  L1_2.center = L2_2
  L2_2 = DolbyPopup
  L2_2 = L2_2.rightBackgroundSprite
  L1_2.right = L2_2
  A0_2.components = L1_2
  A0_2.hanchor = "LEFT"
  A0_2.vanchor = "TOP"
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.name = "title"
  L1_2.text = ""
  L1_2.hanchor = "HCENTER"
  L1_2.vanchor = "BOTTOM"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.name = "description"
  L2_2.text = ""
  L2_2.completeText = ""
  L2_2.hanchor = "HCENTER"
  L2_2.vanchor = "TOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.init = L1_1
L0_1 = DolbyPopup

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.timer = 2
end

L0_1.onEntry = L1_1
L0_1 = DolbyPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A0_2.components
  L4_2 = L4_2 ~= nil
  L3_2(L4_2)
  L3_2 = ui
  L3_2 = L3_2.BGBox
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "title"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "description"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.descriptionText
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.setFont
  L6_2 = L3_2.font
  L5_2(L6_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getFontHeight
  L5_2 = L5_2()
  L5_2 = L5_2 * L2_2
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getStringWidth
  L7_2 = L3_2.text
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L2_2
  L7_2 = gamelua
  L7_2 = L7_2.setFont
  L8_2 = L4_2.font
  L7_2(L8_2)
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.getFontHeight
  L7_2 = L7_2()
  L7_2 = L7_2 * L2_2
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getStringWidth
  L9_2 = L4_2.text
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * L2_2
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getSpriteBounds
  L10_2 = A0_2.components
  L10_2 = L10_2.right
  L9_2, L10_2 = L9_2(L10_2)
  L9_2 = L9_2 * L1_2
  L10_2 = L10_2 * L1_2
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.max
  L12_2 = L6_2
  L13_2 = L8_2
  L11_2 = L11_2(L12_2, L13_2)
  L11_2 = L11_2 * 1.1
  A0_2.width = L11_2
  A0_2.height = L10_2
  L11_2 = A0_2.width
  L11_2 = -L11_2
  A0_2.x = L11_2
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L11_2 = L11_2 * 0.5
  L12_2 = A0_2.height
  L12_2 = L12_2 * 0.5
  L11_2 = L11_2 - L12_2
  A0_2.y = L11_2
  L11_2 = A0_2.width
  L11_2 = L11_2 * 0.5
  L3_2.x = L11_2
  L11_2 = A0_2.height
  L11_2 = L11_2 * 0.5
  L12_2 = L5_2 * 0.25
  L11_2 = L11_2 - L12_2
  L3_2.y = L11_2
  L12_2 = L3_2
  L11_2 = L3_2.setScale
  L13_2 = L1_2 * 2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.width
  L11_2 = L11_2 * 0.5
  L4_2.x = L11_2
  L11_2 = A0_2.height
  L11_2 = L11_2 * 0.5
  L12_2 = L7_2 * 0.25
  L11_2 = L11_2 + L12_2
  L4_2.y = L11_2
  L12_2 = L4_2
  L11_2 = L4_2.setScale
  L13_2 = L1_2 * 2
  L11_2(L12_2, L13_2)
  L12_2 = L3_2
  L11_2 = L3_2.clip
  L11_2(L12_2)
  L12_2 = L4_2
  L11_2 = L4_2.clip
  L11_2(L12_2)
end

L0_1.layout = L1_1
L0_1 = DolbyPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = gamelua
  L3_2 = L3_2.getDeltaTimeMultiplier
  L3_2 = L3_2()
  A1_2 = A1_2 / L3_2
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
  if 0 <= L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L4_2 = L4_2 * 0.5
    L5_2 = A0_2.width
    L5_2 = L5_2 * 0.5
    L4_2 = L4_2 - L5_2
    A0_2.x = L4_2
  else
    L5_2 = A0_2
    L4_2 = A0_2.close
    L4_2(L5_2)
  end
end

L0_1.update = L1_1
L0_1 = DolbyPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.notificationsFrame
  L2_2 = L1_2
  L1_2 = L1_2.removeChild
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2.g_dolbyPopupShown = false
  L1_2 = gamelua
  L1_2.g_IDPopupShown = false
  L1_2 = gamelua
  L1_2.g_showingSoundPopup = false
end

L0_1.close = L1_1
L0_1 = DolbyPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.width
  L3_2 = L3_2 * 0.5
  L4_2 = A0_2.height
  L4_2 = L4_2 * 0.5
  L5_2 = A0_2.scaleX
  if not L5_2 then
    L5_2 = 1
  end
  L6_2 = A0_2.scaleY
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = A0_2.x
  L7_2 = L7_2 * L5_2
  L7_2 = A1_2 >= L7_2
  return L7_2
end

L0_1.checkCollision = L1_1
L0_1 = DolbyPopup

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == "LRELEASE" then
    L5_2 = A0_2
    L4_2 = A0_2.checkCollision
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      A0_2.timer = 0
      L4_2 = "BLOCK_EVENT"
      return L4_2
    end
  end
end

L0_1.onPointerEvent = L1_1
