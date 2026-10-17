local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.BGBox
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
IDPopup = L0_1
L0_1 = IDPopup
L0_1.leftBackgroundSprite = "ID_SCREEN_LEFT_1"
L0_1 = IDPopup
L0_1.centerBackgroundSprite = "ID_SCREEN_MIDDLE_1"
L0_1 = IDPopup
L0_1.rightBackgroundSprite = "ID_SCREEN_RIGHT_1"
L0_1 = IDPopup

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A1_2.accountName
  L2_2.accountName = L3_2
  L3_2 = A1_2.icon
  L2_2.icon = L3_2
  L3_2 = A1_2.isGuest
  L2_2.isGuest = L3_2
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
L0_1 = IDPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = IDPopup
  L2_2 = L2_2.leftBackgroundSprite
  L1_2.left = L2_2
  L2_2 = IDPopup
  L2_2 = L2_2.centerBackgroundSprite
  L1_2.center = L2_2
  L2_2 = IDPopup
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
  L2_2 = A0_2.isGuest
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.getText
    L3_2 = "TEXT_ID_NOTIFICATION_POPUP_GUEST_TITLE"
    L2_2 = L2_2(L3_2)
    L1_2.text = L2_2
  else
    L2_2 = gamelua
    L2_2 = L2_2.getText
    L3_2 = "TEXT_ID_NOTIFICATION_POPUP_TITLE"
    L2_2 = L2_2(L3_2)
    L1_2.text = L2_2
  end
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
  L3_2 = A0_2.accountName
  L2_2.text = L3_2
  L3_2 = A0_2.accountName
  L2_2.completeText = L3_2
  L2_2.hanchor = "HCENTER"
  L2_2.vanchor = "TOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.init = L1_1
L0_1 = IDPopup

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.timer = 3
end

L0_1.onEntry = L1_1
L0_1 = IDPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = "MENU_PAUSE_BG_DARK"
  L5_2 = L5_2(L6_2)
  L6_2 = gamelua
  L6_2 = L6_2.getUIScale
  L6_2 = L6_2()
  L5_2 = L5_2 * L6_2
  L5_2 = L5_2 * 0.9
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getStringWidth
  L7_2 = L4_2.completeText
  L6_2 = L6_2(L7_2)
  L7_2 = gamelua
  L7_2 = L7_2.getFontScale
  L7_2 = L7_2()
  L6_2 = L6_2 * L7_2
  if L5_2 < L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.shortenEmail
    L7_2 = L4_2.completeText
    L8_2 = L5_2 * 0.9
    L6_2 = L6_2(L7_2, L8_2)
    L4_2.text = L6_2
  else
    L6_2 = A0_2.accountName
    L4_2.text = L6_2
  end
  L6_2 = gamelua
  L6_2 = L6_2.setFont
  L7_2 = L3_2.font
  L6_2(L7_2)
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getFontHeight
  L6_2 = L6_2()
  L6_2 = L6_2 * L2_2
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.getStringWidth
  L8_2 = L3_2.text
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * L2_2
  L8_2 = gamelua
  L8_2 = L8_2.setFont
  L9_2 = L4_2.font
  L8_2(L9_2)
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getFontHeight
  L8_2 = L8_2()
  L8_2 = L8_2 * L2_2
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getStringWidth
  L10_2 = L4_2.text
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 * L2_2
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.getSpriteBounds
  L11_2 = A0_2.components
  L11_2 = L11_2.right
  L10_2, L11_2 = L10_2(L11_2)
  L10_2 = L10_2 * L1_2
  L11_2 = L11_2 * L1_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.max
  L13_2 = L7_2
  L14_2 = L9_2
  L12_2 = L12_2(L13_2, L14_2)
  L12_2 = L12_2 * 1.1
  A0_2.width = L12_2
  A0_2.height = L11_2
  L12_2 = A0_2.width
  L12_2 = -L12_2
  A0_2.x = L12_2
  L12_2 = gamelua
  L12_2 = L12_2.screenHeight
  L12_2 = L12_2 * 0.5
  L13_2 = A0_2.height
  L13_2 = L13_2 * 0.5
  L12_2 = L12_2 - L13_2
  A0_2.y = L12_2
  L12_2 = A0_2.width
  L12_2 = L12_2 * 0.5
  L3_2.x = L12_2
  L12_2 = A0_2.height
  L12_2 = L12_2 * 0.5
  L13_2 = L6_2 * 0.25
  L12_2 = L12_2 - L13_2
  L3_2.y = L12_2
  L13_2 = L3_2
  L12_2 = L3_2.setScale
  L14_2 = L1_2 * 2
  L12_2(L13_2, L14_2)
  L12_2 = A0_2.width
  L12_2 = L12_2 * 0.5
  L4_2.x = L12_2
  L12_2 = A0_2.height
  L12_2 = L12_2 * 0.5
  L13_2 = L8_2 * 0.25
  L12_2 = L12_2 + L13_2
  L4_2.y = L12_2
  L13_2 = L4_2
  L12_2 = L4_2.setScale
  L14_2 = L1_2 * 2
  L12_2(L13_2, L14_2)
  L13_2 = L3_2
  L12_2 = L3_2.clip
  L12_2(L13_2)
  L13_2 = L4_2
  L12_2 = L4_2.clip
  L12_2(L13_2)
end

L0_1.layout = L1_1
L0_1 = IDPopup

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
  if 2.5 <= L4_2 then
    L4_2 = A0_2.width
    L5_2 = A0_2.timer
    L5_2 = 3 - L5_2
    L4_2 = L4_2 * L5_2
    L4_2 = L4_2 * 2
    L5_2 = A0_2.width
    L4_2 = L4_2 - L5_2
    A0_2.x = L4_2
  else
    L4_2 = A0_2.timer
    if 0.5 <= L4_2 then
      A0_2.x = 0
    else
      L4_2 = A0_2.timer
      if 0 < L4_2 then
        L4_2 = A0_2.width
        L4_2 = -L4_2
        L5_2 = A0_2.timer
        L5_2 = 0.5 - L5_2
        L4_2 = L4_2 * L5_2
        L4_2 = L4_2 * 2
        A0_2.x = L4_2
      else
        L4_2 = gamelua
        L4_2 = L4_2.notificationsFrame
        L5_2 = L4_2
        L4_2 = L4_2.removeChild
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
        L4_2 = gamelua
        L4_2.g_IDPopupShown = false
        L4_2 = gamelua
        L4_2.g_showingSoundPopup = false
      end
    end
  end
end

L0_1.update = L1_1
L0_1 = IDPopup

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
L0_1 = IDPopup

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
