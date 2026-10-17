local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
PurchaseRedirectDialog = L0_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  A0_2.name = "purchaseRedirectDialog"
  L2_2 = ui
  L2_2 = L2_2.BGBox
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "bgBox"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.bgBox = L2_2
  if L1_2 then
    L2_2 = "SITH"
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = "LIGHT"
  ::lbl_19::
  A0_2.suffix = L2_2
  L2_2 = A0_2.bgBox
  L3_2 = {}
  L4_2 = "TUTBOX_TOP_LEFT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.topLeft = L4_2
  L4_2 = "TUTBOX_TOP_MIDDLE_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.topMiddle = L4_2
  L4_2 = "TUTBOX_TOP_RIGHT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.topRight = L4_2
  L4_2 = "TUTBOX_MIDDLE_LEFT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.left = L4_2
  L4_2 = "TUTBOX_CENTER_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.center = L4_2
  L4_2 = "TUTBOX_MIDDLE_RIGHT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.right = L4_2
  L4_2 = "TUTBOX_BOTTOM_LEFT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.bottomLeft = L4_2
  L4_2 = "TUTBOX_BOTTOM_MIDDLE_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.bottomMiddle = L4_2
  L4_2 = "TUTBOX_BOTTOM_RIGHT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.bottomRight = L4_2
  L2_2.components = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bgBox
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "cancel"
  L4_2.returnValue = "CANCEL"
  L4_2.clickSound = "ButtonBack"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.cancelButton = L2_2
  L2_2 = A0_2.cancelButton
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.getButtonImageName
  L5_2 = "buttonX"
  L6_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.cancelButton
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "confirm"
  L4_2.returnValue = "CONFIRM"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.confirmButton = L2_2
  L2_2 = A0_2.confirmButton
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.getButtonImageName
  L5_2 = "buttonCheck"
  L6_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.confirmButton
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "text"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_SHOP_COINS_MISSING"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.textMissing = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.textMissing
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "text"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_SHOP_COINS_GET_MORE"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.textMore = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.isIapEnabled
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = A0_2.textMore
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = gamelua
    L4_2 = L4_2.getText
    L5_2 = "TEXT_SHOP_COINS_COMPLETE_ACHIEVEMENTS"
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.confirmButton
    L2_2.returnValue = "CANCEL"
    L2_2 = A0_2.cancelButton
    L3_2 = L2_2
    L2_2 = L2_2.setVisible
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.textMore
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.assert
  L3_2 = A0_2.missingCoins
  L2_2(L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "text"
  L5_2 = "#"
  L6_2 = A0_2.missingCoins
  L5_2 = L5_2 .. L6_2
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontIngameMoney
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.hanchor = "HCENTER"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.textCoins = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.textCoins
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.init = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = A0_2.cancelButton
  L4_2 = L4_2.image
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = A0_2.bgBox
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L5_2 = A0_2.bgBox
  L6_2 = gamelua
  L6_2 = L6_2.screenHeight
  L6_2 = L6_2 * 0.5
  L5_2.y = L6_2
  L5_2 = A0_2.bgBox
  L6_2 = L5_2
  L5_2 = L5_2.setSize
  L7_2 = 650 * L1_2
  L8_2 = 200 * L1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2.bgBox
  L6_2 = L5_2
  L5_2 = L5_2.getSize
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = A0_2.cancelButton
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L9_2 = L5_2 * 0.5
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L7_2 = A0_2.cancelButton
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 + L6_2
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L7_2 = A0_2.cancelButton
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = gamelua
  L7_2 = L7_2.isIapEnabled
  L7_2 = L7_2()
  if not L7_2 then
    L7_2 = A0_2.confirmButton
    L8_2 = gamelua
    L8_2 = L8_2.screenWidth
    L8_2 = L8_2 + L5_2
    L8_2 = L8_2 * 0.5
    L7_2.x = L8_2
  else
    L7_2 = A0_2.confirmButton
    L8_2 = gamelua
    L8_2 = L8_2.screenWidth
    L9_2 = L5_2 * 0.5
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 * 0.5
    L7_2.x = L8_2
  end
  L7_2 = A0_2.confirmButton
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 + L6_2
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L7_2 = A0_2.confirmButton
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = 24
  L8_2 = A0_2.textMissing
  L9_2 = L8_2
  L8_2 = L8_2.getWidth
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2.textCoins
  L10_2 = L9_2
  L9_2 = L9_2.getWidth
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + L7_2
  L9_2 = A0_2.textMissing
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L10_2 = L10_2 * 0.5
  L11_2 = A0_2.textMissing
  L12_2 = L11_2
  L11_2 = L11_2.getWidth
  L11_2 = L11_2(L12_2)
  L11_2 = L8_2 - L11_2
  L11_2 = L11_2 / 2
  L11_2 = L11_2 * L2_2
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.textMissing
  L10_2 = gamelua
  L10_2 = L10_2.screenHeight
  L10_2 = L10_2 * 0.425
  L9_2.y = L10_2
  L9_2 = A0_2.textMissing
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.textCoins
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L10_2 = L10_2 * 0.5
  L11_2 = A0_2.textCoins
  L12_2 = L11_2
  L11_2 = L11_2.getWidth
  L11_2 = L11_2(L12_2)
  L11_2 = L8_2 - L11_2
  L11_2 = L11_2 / 2
  L11_2 = L11_2 * L2_2
  L10_2 = L10_2 + L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.textCoins
  L10_2 = gamelua
  L10_2 = L10_2.screenHeight
  L10_2 = L10_2 * 0.425
  L9_2.y = L10_2
  L9_2 = A0_2.textCoins
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.textMore
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L10_2 = L10_2 * 0.5
  L9_2.x = L10_2
  L9_2 = A0_2.textMore
  L10_2 = gamelua
  L10_2 = L10_2.screenHeight
  L10_2 = L10_2 * 0.525
  L9_2.y = L10_2
  L9_2 = A0_2.textMore
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L9_2 = ui
  L9_2 = L9_2.Frame
  L9_2 = L9_2.layout
  L10_2 = A0_2
  L9_2(L10_2)
end

L0_1.layout = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if A1_2 == "LRELEASE" then
    if L4_2 == "CONFIRM" then
      L8_2 = A0_2
      L7_2 = A0_2.close
      L7_2(L8_2)
      L7_2 = ui
      L7_2 = L7_2.CoinsPage
      L8_2 = L7_2
      L7_2 = L7_2.new
      L7_2 = L7_2(L8_2)
      L8_2 = gamelua
      L8_2 = L8_2.eventManager
      L9_2 = L8_2
      L8_2 = L8_2.notify
      L10_2 = {}
      L11_2 = gamelua
      L11_2 = L11_2.events
      L11_2 = L11_2.EID_PUSH_FRAME
      L10_2.id = L11_2
      L10_2.target = L7_2
      L8_2(L9_2, L10_2)
    elseif L4_2 == "CANCEL" then
      L8_2 = A0_2
      L7_2 = A0_2.close
      L7_2(L8_2)
    end
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" or A2_2 == "RETURN" then
      L6_2 = A0_2
      L5_2 = A0_2.close
      L5_2(L6_2)
    elseif A2_2 == "S" then
      L5_2 = L3_2
      L6_2 = L4_2
      L7_2 = item
      return L5_2, L6_2, L7_2
    end
  end
  L5_2 = -1
  return L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_POP_FRAME
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.close = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.8
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = PurchaseRedirectDialog

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
