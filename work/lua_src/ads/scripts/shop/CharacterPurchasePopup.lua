local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CharacterPurchasePopup = L0_1
L0_1 = CharacterPurchasePopup
L0_1.isShown = false
L0_1 = CharacterPurchasePopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.isDarkSideLevel
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = "LIGHT"
  ::lbl_10::
  L2_2 = ui
  L2_2 = L2_2.ShopBackgroundButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "bgButton"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.bgButton = L2_2
  L2_2 = A0_2.bgButton
  L2_2.dragTreshold = 100
  L2_2 = A0_2.bgButton
  L2_2.returnValue = "BG_CLICKED"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bgButton
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ShoppingUIFrame
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.coinButtonVisible = true
  L4_2.shopButtonVisible = false
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.shoppingFrame = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.shoppingFrame
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.PurchasePopupBackground
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = "background"
  L4_2[1] = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.bg = L2_2
  L2_2 = A0_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.setColor
  L4_2 = 0.32
  L5_2 = 0.11
  L6_2 = 0.25
  L7_2 = 0.85
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bg
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "titleText"
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.titleText = L2_2
  L2_2 = A0_2.titleText
  L3_2 = L2_2
  L2_2 = L2_2.setText
  L4_2 = gamelua
  L4_2 = L4_2.getText
  L5_2 = "TEXT_CONFIRM_PURCHASE"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.titleText
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "backBtn"
  L4_2.returnValue = "CLOSE"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.backBtn = L2_2
  L2_2 = A0_2.backBtn
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.getButtonImageName
  L5_2 = "buttonX"
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.isDarkSide
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2 = A0_2.backBtn
  L2_2.clickSound = "ButtonBack"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.backBtn
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "helpBtn"
  L4_2.returnValue = "HELP"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.helpBtn = L2_2
  L2_2 = A0_2.helpBtn
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.getButtonImageName
  L5_2 = "pauseMenuTutorialsButton"
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.isDarkSide
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.helpBtn
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2.portraits = L2_2
  L2_2 = A0_2.isBundle
  if L2_2 then
    L2_2 = _G
    L2_2 = L2_2.pairs
    L3_2 = A0_2.buyButtons
    L3_2 = L3_2[1]
    L3_2 = L3_2.bundle
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = ui
      L7_2 = L7_2.Image
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L9_2.name = "portrait"
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.setImage
      L10_2 = gamelua
      L10_2 = L10_2.Characters
      L10_2 = L10_2.list
      L11_2 = L6_2.character
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.portrait
      L8_2(L9_2, L10_2)
      L8_2 = ui
      L8_2 = L8_2.Image
      L9_2 = L8_2
      L8_2 = L8_2.new
      L10_2 = {}
      L10_2.name = "amountBg"
      L8_2 = L8_2(L9_2, L10_2)
      L7_2.amountBg = L8_2
      L8_2 = L7_2.amountBg
      L9_2 = L8_2
      L8_2 = L8_2.setImage
      L10_2 = gamelua
      L10_2 = L10_2.getButtonImageName
      L11_2 = "characterMenuCounterBox"
      L12_2 = gamelua
      L12_2 = L12_2.Characters
      L12_2 = L12_2.list
      L13_2 = L6_2.character
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.isSith
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L8_2 = L6_2.type
      if L8_2 then
        L8_2 = L6_2.type
        if L8_2 == "unlimited" then
          L8_2 = L7_2.amountBg
          L9_2 = L8_2
          L8_2 = L8_2.setImage
          L10_2 = gamelua
          L10_2 = L10_2.getButtonImageName
          L11_2 = "iconUnlimited"
          L12_2 = gamelua
          L12_2 = L12_2.Characters
          L12_2 = L12_2.list
          L13_2 = L6_2.character
          L12_2 = L12_2[L13_2]
          L12_2 = L12_2.isSith
          L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
      else
        L8_2 = ui
        L8_2 = L8_2.DummyText
        L9_2 = L8_2
        L8_2 = L8_2.new
        L10_2 = {}
        L10_2.name = "amountText"
        L11_2 = _G
        L11_2 = L11_2.tostring
        L12_2 = L6_2.amount
        L11_2 = L11_2(L12_2)
        L10_2.text = L11_2
        L11_2 = gamelua
        L11_2 = L11_2.getFontBasic
        L11_2 = L11_2()
        L10_2.font = L11_2
        L8_2 = L8_2(L9_2, L10_2)
        L7_2.amountText = L8_2
        L8_2 = L7_2.amountBg
        L9_2 = L8_2
        L8_2 = L8_2.addChild
        L10_2 = L7_2.amountText
        L8_2(L9_2, L10_2)
      end
      L9_2 = L7_2
      L8_2 = L7_2.addChild
      L10_2 = L7_2.amountBg
      L8_2(L9_2, L10_2)
      L8_2 = _G
      L8_2 = L8_2.table
      L8_2 = L8_2.insert
      L9_2 = A0_2.portraits
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.addChild
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  else
    L2_2 = ui
    L2_2 = L2_2.Image
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = {}
    L4_2.name = "portrait"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.setImage
    L5_2 = gamelua
    L5_2 = L5_2.Characters
    L5_2 = L5_2.list
    L6_2 = A0_2.character
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.portrait
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.table
    L3_2 = L3_2.insert
    L4_2 = A0_2.portraits
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.addChild
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = {}
  A0_2.buyBtns = L2_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.buyButtons
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = ui
    L7_2 = L7_2.ScallableButton
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L10_2 = "buyBtn"
    L11_2 = L5_2
    L10_2 = L10_2 .. L11_2
    L9_2.name = L10_2
    L9_2.returnValue = "BUY"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = {}
    L9_2 = L6_2.bundle
    L8_2.bundle = L9_2
    L9_2 = L6_2.price
    L8_2.price = L9_2
    L9_2 = A0_2.isSale
    L8_2.isSale = L9_2
    L7_2.meta = L8_2
    L8_2 = gamelua
    L8_2 = L8_2.Characters
    L8_2 = L8_2.list
    L9_2 = A0_2.character
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.isSith
    if L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.setImage
      L10_2 = "SHOP_BTN_PORK"
      L8_2(L9_2, L10_2)
    else
      L9_2 = L7_2
      L8_2 = L7_2.setImage
      L10_2 = "SHOP_BTN_BIRD"
      L8_2(L9_2, L10_2)
    end
    L8_2 = gamelua
    L8_2 = L8_2.ui
    L8_2 = L8_2.DummyText
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.name = "amountText"
    L11_2 = gamelua
    L11_2 = L11_2.getFontHeadline
    L11_2 = L11_2()
    L10_2.font = L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = ui
    L9_2 = L9_2.Image
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L11_2.name = "priceBg"
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.setImage
    L12_2 = "SHOP_PRICETAG"
    L10_2(L11_2, L12_2)
    L10_2 = gamelua
    L10_2 = L10_2.ui
    L10_2 = L10_2.DummyText
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = {}
    L12_2.name = "priceText"
    L12_2.vanchor = "VCENTER"
    L13_2 = gamelua
    L13_2 = L13_2.getFontIngameMoney
    L13_2 = L13_2()
    L12_2.font = L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = L10_2
    L11_2 = L10_2.setText
    L13_2 = "#"
    L14_2 = L6_2.price
    L13_2 = L13_2 .. L14_2
    L11_2(L12_2, L13_2)
    L11_2 = A0_2.isBundle
    if L11_2 then
      L12_2 = L8_2
      L11_2 = L8_2.setText
      L13_2 = gamelua
      L13_2 = L13_2.getText
      L14_2 = "TEXT_SHOP_CALL_TO_ACTION"
      L13_2, L14_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2)
    else
      L11_2 = L6_2.bundle
      L11_2 = L11_2[1]
      L11_2 = L11_2.type
      if L11_2 then
        L11_2 = L6_2.bundle
        L11_2 = L11_2[1]
        L11_2 = L11_2.type
        if L11_2 == "unlimited" then
          L12_2 = L8_2
          L11_2 = L8_2.setText
          L13_2 = gamelua
          L13_2 = L13_2.getText
          L14_2 = "TEXT_SHOP_PERMANENT"
          L13_2, L14_2 = L13_2(L14_2)
          L11_2(L12_2, L13_2, L14_2)
          L8_2.infinite = true
          L11_2 = ui
          L11_2 = L11_2.Image
          L12_2 = L11_2
          L11_2 = L11_2.new
          L13_2 = {}
          L13_2.name = "infiniteIcon"
          L11_2 = L11_2(L12_2, L13_2)
          L13_2 = L11_2
          L12_2 = L11_2.setImage
          L14_2 = "ICON_SHOP_INFINITY"
          L12_2(L13_2, L14_2)
          L7_2.infiniteIcon = L11_2
          L13_2 = L7_2
          L12_2 = L7_2.addChild
          L14_2 = L11_2
          L12_2(L13_2, L14_2)
      end
      else
        L12_2 = L8_2
        L11_2 = L8_2.setText
        L13_2 = "+"
        L14_2 = L6_2.bundle
        L14_2 = L14_2[1]
        L14_2 = L14_2.amount
        L13_2 = L13_2 .. L14_2
        L11_2(L12_2, L13_2)
      end
    end
    L12_2 = L9_2
    L11_2 = L9_2.addChild
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L12_2 = L7_2
    L11_2 = L7_2.addChild
    L13_2 = L9_2
    L11_2(L12_2, L13_2)
    L7_2.priceText = L10_2
    L7_2.priceBg = L9_2
    L12_2 = L7_2
    L11_2 = L7_2.addChild
    L13_2 = L8_2
    L11_2(L12_2, L13_2)
    L7_2.amountText = L8_2
    L12_2 = A0_2
    L11_2 = A0_2.addChild
    L13_2 = L7_2
    L11_2(L12_2, L13_2)
    L11_2 = _G
    L11_2 = L11_2.table
    L11_2 = L11_2.insert
    L12_2 = A0_2.buyBtns
    L13_2 = L7_2
    L11_2(L12_2, L13_2)
  end
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.init = L1_1
L0_1 = CharacterPurchasePopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CLOSE_CHARACTER_PURCHASE_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CharacterPurchasePopup
  L1_2.isShown = true
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = CharacterPurchasePopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L3_2 = L3_2 * 0.5
  A0_2.x = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L3_2 = L3_2 * 0.5
  A0_2.y = L3_2
  L3_2 = A0_2.bgButton
  L4_2 = A0_2.x
  L3_2.pivotX = L4_2
  L3_2 = A0_2.bgButton
  L4_2 = A0_2.y
  L3_2.pivotY = L4_2
  L3_2 = A0_2.bgButton
  L4_2 = gamelua
  L4_2 = L4_2.screenWidth
  L3_2.w = L4_2
  L3_2 = A0_2.bgButton
  L4_2 = gamelua
  L4_2 = L4_2.screenHeight
  L3_2.h = L4_2
  L3_2 = A0_2.shoppingFrame
  L4_2 = A0_2.x
  L4_2 = -L4_2
  L3_2.x = L4_2
  L3_2 = A0_2.shoppingFrame
  L4_2 = A0_2.y
  L4_2 = -L4_2
  L3_2.y = L4_2
  L3_2 = 0
  L4_2 = A0_2.isBundle
  if L4_2 then
    L4_2 = A0_2.portraits
    L4_2 = #L4_2
    L3_2 = 1 + L4_2
  else
    L4_2 = A0_2.buyBtns
    L4_2 = #L4_2
    L3_2 = 1 + L4_2
  end
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = "SHOP_BTN_BIRD"
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = L4_2 * 1.2
  L6_2 = L6_2 * L3_2
  L7_2 = L5_2 * 1.8
  L8_2 = A0_2.bg
  L8_2.x = 0
  L8_2 = A0_2.bg
  L9_2 = -L7_2
  L9_2 = L9_2 * 0.05
  L9_2 = L9_2 * L1_2
  L8_2.y = L9_2
  L8_2 = A0_2.bg
  L9_2 = L8_2
  L8_2 = L8_2.setPosition
  L10_2 = -L6_2
  L10_2 = L10_2 * 0.5
  L10_2 = L10_2 * L1_2
  L11_2 = L4_2 * 0.5
  L11_2 = L11_2 * L1_2
  L10_2 = L10_2 - L11_2
  L11_2 = L6_2 * 0.5
  L11_2 = L11_2 * L1_2
  L12_2 = L4_2 * 0.5
  L12_2 = L12_2 * L1_2
  L11_2 = L11_2 + L12_2
  L12_2 = -L7_2
  L12_2 = L12_2 * 0.5
  L12_2 = L12_2 * L1_2
  L13_2 = L7_2 * 0.5
  L13_2 = L13_2 * L1_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = A0_2.titleText
  L9_2 = -L5_2
  L9_2 = L9_2 * 0.7
  L9_2 = L9_2 * L1_2
  L8_2.y = L9_2
  L8_2 = A0_2.titleText
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L1_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.backBtn
  L9_2 = L6_2 * 0.5
  L9_2 = L9_2 * L1_2
  L10_2 = L4_2 * 0.4
  L10_2 = L10_2 * L1_2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = A0_2.backBtn
  L9_2 = -L5_2
  L9_2 = L9_2 * L1_2
  L8_2.y = L9_2
  L8_2 = A0_2.backBtn
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L1_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.helpBtn
  L9_2 = -L6_2
  L9_2 = L9_2 * 0.5
  L9_2 = L9_2 * L1_2
  L10_2 = L4_2 * 0.4
  L10_2 = L10_2 * L1_2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L8_2 = A0_2.helpBtn
  L9_2 = -L5_2
  L9_2 = L9_2 * L1_2
  L8_2.y = L9_2
  L8_2 = A0_2.helpBtn
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L1_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.isBundle
  if L8_2 then
    L8_2 = _G
    L8_2 = L8_2.ipairs
    L9_2 = A0_2.portraits
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L14_2 = L12_2
      L13_2 = L12_2.setScale
      L15_2 = L1_2
      L13_2(L14_2, L15_2)
      L13_2 = -L6_2
      L13_2 = L13_2 * 0.5
      L13_2 = L13_2 * L1_2
      L14_2 = L11_2 - 1
      L14_2 = L14_2 * L4_2
      L14_2 = L14_2 * 1.2
      L14_2 = L14_2 * L1_2
      L13_2 = L13_2 + L14_2
      L14_2 = L4_2 * 0.5
      L14_2 = L14_2 * L1_2
      L13_2 = L13_2 + L14_2
      L12_2.x = L13_2
      L13_2 = L12_2.amountBg
      L14_2 = L4_2 * 0.4
      L14_2 = L14_2 * L1_2
      L13_2.x = L14_2
      L13_2 = L12_2.amountBg
      L14_2 = L4_2 * 0.4
      L14_2 = L14_2 * L1_2
      L13_2.y = L14_2
    end
    L8_2 = 150
    L9_2 = 1
    L10_2 = A0_2.buyBtns
    L10_2 = L10_2[1]
    L10_2 = L10_2.amountText
    L11_2 = L10_2
    L10_2 = L10_2.getWidth
    L10_2 = L10_2(L11_2)
    if L8_2 < L10_2 then
      L10_2 = A0_2.buyBtns
      L10_2 = L10_2[1]
      L10_2 = L10_2.amountText
      L11_2 = L10_2
      L10_2 = L10_2.getWidth
      L10_2 = L10_2(L11_2)
      L9_2 = L8_2 / L10_2
    end
    L10_2 = A0_2.buyBtns
    L10_2 = L10_2[1]
    L11_2 = L10_2
    L10_2 = L10_2.setScale
    L12_2 = 1 * L1_2
    L10_2(L11_2, L12_2)
    L10_2 = A0_2.buyBtns
    L10_2 = L10_2[1]
    L11_2 = L6_2 * 0.5
    L11_2 = L11_2 * L1_2
    L12_2 = L4_2 * 0.5
    L12_2 = L12_2 * L1_2
    L11_2 = L11_2 - L12_2
    L10_2.x = L11_2
    L10_2 = A0_2.buyBtns
    L10_2 = L10_2[1]
    L10_2 = L10_2.amountText
    L11_2 = L10_2
    L10_2 = L10_2.setScale
    L12_2 = 1.3 * L9_2
    L10_2(L11_2, L12_2)
    L10_2 = A0_2.buyBtns
    L10_2 = L10_2[1]
    L10_2 = L10_2.amountText
    L11_2 = -L5_2
    L11_2 = L11_2 * 0.2
    L11_2 = L11_2 * L1_2
    L10_2.y = L11_2
    L10_2 = A0_2.buyBtns
    L10_2 = L10_2[1]
    L10_2 = L10_2.priceBg
    L11_2 = L5_2 * 0.2
    L11_2 = L11_2 * L1_2
    L10_2.y = L11_2
    L10_2 = A0_2.buyBtns
    L10_2 = L10_2[1]
    L10_2 = L10_2.priceText
    L11_2 = L10_2
    L10_2 = L10_2.setScale
    L12_2 = 0.75
    L10_2(L11_2, L12_2)
  else
    L8_2 = A0_2.portraits
    L8_2 = L8_2[1]
    L9_2 = -L6_2
    L9_2 = L9_2 * 0.5
    L9_2 = L9_2 * L1_2
    L10_2 = L4_2 * 0.5
    L10_2 = L10_2 * L1_2
    L9_2 = L9_2 + L10_2
    L8_2.x = L9_2
    L8_2 = A0_2.portraits
    L8_2 = L8_2[1]
    L9_2 = L8_2
    L8_2 = L8_2.setScale
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
    L8_2 = _G
    L8_2 = L8_2.ipairs
    L9_2 = A0_2.buyBtns
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L14_2 = L12_2
      L13_2 = L12_2.setScale
      L15_2 = 1 * L1_2
      L13_2(L14_2, L15_2)
      L13_2 = -L6_2
      L13_2 = L13_2 * 0.5
      L13_2 = L13_2 * L1_2
      L14_2 = L11_2 * L4_2
      L14_2 = L14_2 * 1.2
      L14_2 = L14_2 * L1_2
      L13_2 = L13_2 + L14_2
      L14_2 = L4_2 * 0.5
      L14_2 = L14_2 * L1_2
      L13_2 = L13_2 + L14_2
      L12_2.x = L13_2
      L13_2 = L12_2.amountText
      L13_2 = L13_2.infinite
      if L13_2 then
        L13_2 = L12_2.amountText
        L14_2 = L13_2
        L13_2 = L13_2.setScale
        L15_2 = 0.6
        L13_2(L14_2, L15_2)
        L13_2 = L12_2.amountText
        L14_2 = -L5_2
        L14_2 = L14_2 * 0.1
        L14_2 = L14_2 * L1_2
        L13_2.y = L14_2
        L13_2 = L12_2.infiniteIcon
        L14_2 = L13_2
        L13_2 = L13_2.setScale
        L15_2 = 0.5
        L13_2(L14_2, L15_2)
        L13_2 = L12_2.infiniteIcon
        L14_2 = -L5_2
        L14_2 = L14_2 * 0.27
        L14_2 = L14_2 * L1_2
        L13_2.y = L14_2
      else
        L13_2 = L12_2.amountText
        L14_2 = L13_2
        L13_2 = L13_2.setScale
        L15_2 = 1.3
        L13_2(L14_2, L15_2)
        L13_2 = L12_2.amountText
        L14_2 = -L5_2
        L14_2 = L14_2 * 0.2
        L14_2 = L14_2 * L1_2
        L13_2.y = L14_2
      end
      L13_2 = L12_2.priceBg
      L14_2 = L5_2 * 0.2
      L14_2 = L14_2 * L1_2
      L13_2.y = L14_2
      L13_2 = L12_2.priceText
      L14_2 = L13_2
      L13_2 = L13_2.setScale
      L15_2 = 0.75
      L13_2(L14_2, L15_2)
    end
  end
  L8_2 = ui
  L8_2 = L8_2.Frame
  L8_2 = L8_2.layout
  L9_2 = A0_2
  L8_2(L9_2)
end

L0_1.layout = L1_1
L0_1 = CharacterPurchasePopup

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "HELP" then
    L7_2 = gamelua
    L7_2 = L7_2.getCharacterDefinition
    L8_2 = A0_2.character
    L7_2 = L7_2(L8_2)
    L8_2 = nil
    L9_2 = A0_2.isBundle
    if L9_2 then
      L9_2 = ui
      L9_2 = L9_2.ShopTutorial
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L12_2 = A0_2.buyButtons
      L12_2 = L12_2[1]
      L11_2.item = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.getLocalizedText
      L13_2 = gamelua
      L13_2 = L13_2.getCharacterText
      L14_2 = A0_2.description
      L13_2, L14_2, L15_2 = L13_2(L14_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2.title = L12_2
      L12_2 = A0_2.isBundle
      L11_2.isBundle = L12_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2 = L9_2
    else
      L9_2 = ui
      L9_2 = L9_2.ShopTutorial
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.characterType = L7_2
      L12_2 = A0_2.character
      L11_2.charName = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.getLocalizedText
      L13_2 = gamelua
      L13_2 = L13_2.getCharacterText
      L14_2 = A0_2.description
      L13_2, L14_2, L15_2 = L13_2(L14_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2.title = L12_2
      L12_2 = A0_2.isBundle
      L11_2.isBundle = L12_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2 = L9_2
    end
    L9_2 = gamelua
    L9_2 = L9_2.eventManager
    L10_2 = L9_2
    L9_2 = L9_2.notify
    L11_2 = {}
    L12_2 = events
    L12_2 = L12_2.EID_PUSH_FRAME
    L11_2.id = L12_2
    L11_2.target = L8_2
    L9_2(L10_2, L11_2)
  elseif L4_2 == "CLOSE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
  elseif L4_2 == "BG_CLICKED" then
    L7_2 = gamelua
    L7_2 = L7_2.playAudio
    L8_2 = "ButtonBack"
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
  elseif L4_2 == "BUY" then
    L7_2 = gamelua
    L7_2 = L7_2.getLocalizedText
    L8_2 = gamelua
    L8_2 = L8_2.getCharacterText
    L9_2 = A0_2.description
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L8_2 = L5_2.bundle
    L8_2 = L8_2[1]
    L8_2 = L8_2.type
    if L8_2 == "unlimited" then
      L8_2 = gamelua
      L8_2 = L8_2.SettingsWrapper
      L9_2 = L8_2
      L8_2 = L8_2.getAmount
      L10_2 = L5_2.bundle
      L10_2 = L10_2[1]
      L10_2 = L10_2.character
      L11_2 = "_unlimited"
      L10_2 = L10_2 .. L11_2
      L8_2 = L8_2(L9_2, L10_2)
      if 4 <= L8_2 then
        L8_2 = gamelua
        L8_2 = L8_2.getCharacterDefinition
        L9_2 = L5_2.bundle
        L9_2 = L9_2[1]
        L9_2 = L9_2.character
        L8_2 = L8_2(L9_2)
        L9_2 = ui
        L9_2 = L9_2.ShopTutorial
        L10_2 = L9_2
        L9_2 = L9_2.new
        L11_2 = {}
        L11_2.characterType = L8_2
        L12_2 = L5_2.bundle
        L12_2 = L12_2[1]
        L12_2 = L12_2.character
        L11_2.charName = L12_2
        L11_2.title = L7_2
        L12_2 = gamelua
        L12_2 = L12_2.getText
        L13_2 = "TEXT_SHOP_MAX_PERMANENT"
        L12_2 = L12_2(L13_2)
        L11_2.customBuyText = L12_2
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = gamelua
        L10_2 = L10_2.eventManager
        L11_2 = L10_2
        L10_2 = L10_2.notify
        L12_2 = {}
        L13_2 = events
        L13_2 = L13_2.EID_PUSH_FRAME
        L12_2.id = L13_2
        L12_2.target = L9_2
        L10_2(L11_2, L12_2)
        return
      end
    end
    L8_2 = L5_2.price
    L9_2 = gamelua
    L9_2 = L9_2.SettingsWrapper
    L10_2 = L9_2
    L9_2 = L9_2.getAmount
    L11_2 = "coins"
    L9_2 = L9_2(L10_2, L11_2)
    if L8_2 <= L9_2 then
      L8_2 = L5_2.bundle
      L8_2 = #L8_2
      if L8_2 == 1 then
        L8_2 = gamelua
        L8_2 = L8_2.eventManager
        L9_2 = L8_2
        L8_2 = L8_2.notify
        L10_2 = {}
        L11_2 = gamelua
        L11_2 = L11_2.events
        L11_2 = L11_2.EID_SHOP_CONFIRM_PURCHASE
        L10_2.id = L11_2
        L11_2 = gamelua
        L11_2 = L11_2.deepCopy
        L12_2 = L5_2
        L11_2 = L11_2(L12_2)
        L10_2.item = L11_2
        L10_2.title = L7_2
        L11_2 = L5_2.isSale
        L10_2.isSale = L11_2
        L11_2 = A0_2.shopReference
        L10_2.shopReference = L11_2
        L8_2(L9_2, L10_2)
        L9_2 = A0_2
        L8_2 = A0_2.close
        L8_2(L9_2)
        L8_2 = gamelua
        L8_2 = L8_2.eventManager
        L9_2 = L8_2
        L8_2 = L8_2.notify
        L10_2 = {}
        L11_2 = events
        L11_2 = L11_2.EID_START_BUY_ANIMATION
        L10_2.id = L11_2
        L11_2 = {}
        L12_2 = L5_2.bundle
        L12_2 = L12_2[1]
        L12_2 = L12_2.character
        L11_2.character = L12_2
        L12_2 = L5_2.bundle
        L12_2 = L12_2[1]
        L12_2 = L12_2.amount
        L11_2.amount = L12_2
        L12_2 = L5_2.bundle
        L12_2 = L12_2[1]
        L12_2 = L12_2.type
        L11_2.type = L12_2
        L10_2.reward = L11_2
        L11_2 = gamelua
        L11_2 = L11_2.isInGameMode
        L11_2 = L11_2()
        L10_2.animateToRealCharMenu = L11_2
        L10_2.onAnimationEnd = nil
        L8_2(L9_2, L10_2)
      else
        L8_2 = gamelua
        L8_2 = L8_2.eventManager
        L9_2 = L8_2
        L8_2 = L8_2.notify
        L10_2 = {}
        L11_2 = gamelua
        L11_2 = L11_2.events
        L11_2 = L11_2.EID_SHOP_CONFIRM_PURCHASE
        L10_2.id = L11_2
        L11_2 = gamelua
        L11_2 = L11_2.deepCopy
        L12_2 = L5_2
        L11_2 = L11_2(L12_2)
        L10_2.item = L11_2
        L10_2.title = L7_2
        L11_2 = L5_2.isSale
        L10_2.isSale = L11_2
        L11_2 = A0_2.shopReference
        L10_2.shopReference = L11_2
        L8_2(L9_2, L10_2)
        L9_2 = A0_2
        L8_2 = A0_2.close
        L8_2(L9_2)
        L8_2 = {}
        L9_2 = _G
        L9_2 = L9_2.pairs
        L10_2 = L5_2.bundle
        L9_2, L10_2, L11_2 = L9_2(L10_2)
        for L12_2, L13_2 in L9_2, L10_2, L11_2 do
          L14_2 = {}
          L15_2 = L13_2.character
          L14_2.character = L15_2
          L15_2 = L13_2.amount
          L14_2.amount = L15_2
          L15_2 = L13_2.type
          L14_2.type = L15_2
          L8_2[L12_2] = L14_2
        end
        L9_2 = gamelua
        L9_2 = L9_2.eventManager
        L10_2 = L9_2
        L9_2 = L9_2.notify
        L11_2 = {}
        L12_2 = events
        L12_2 = L12_2.EID_START_BUY_ANIMATION
        L11_2.id = L12_2
        L11_2.reward = L8_2
        L12_2 = gamelua
        L12_2 = L12_2.isInGameMode
        L12_2 = L12_2()
        L11_2.animateToRealCharMenu = L12_2
        L11_2.onAnimationEnd = nil
        L9_2(L10_2, L11_2)
      end
    else
      L8_2 = ui
      L8_2 = L8_2.PurchaseRedirectDialog
      L9_2 = L8_2
      L8_2 = L8_2.new
      L10_2 = {}
      L11_2 = L5_2.price
      L12_2 = gamelua
      L12_2 = L12_2.SettingsWrapper
      L13_2 = L12_2
      L12_2 = L12_2.getAmount
      L14_2 = "coins"
      L12_2 = L12_2(L13_2, L14_2)
      L11_2 = L11_2 - L12_2
      L10_2.missingCoins = L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = gamelua
      L9_2 = L9_2.eventManager
      L10_2 = L9_2
      L9_2 = L9_2.notify
      L11_2 = {}
      L12_2 = gamelua
      L12_2 = L12_2.events
      L12_2 = L12_2.EID_PUSH_FRAME
      L11_2.id = L12_2
      L11_2.target = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = CharacterPurchasePopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
      L5_2 = gamelua
      L5_2 = L5_2.playAudio
      L6_2 = "ButtonBack"
      L5_2(L6_2)
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
L0_1 = CharacterPurchasePopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L1_2 = gamelua
  L1_2 = L1_2.getGameHud
  L1_2 = L1_2()
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.openCharacterMenu
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = gamelua
    L2_2 = L2_2.eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = gamelua
    L5_2 = L5_2.events
    L5_2 = L5_2.EID_OPEN_SHOP
    L4_2.id = L5_2
    L5_2 = A0_2.screenOpenedFrom
    L4_2.screen = L5_2
    L4_2.openPreviousPage = true
    L2_2(L3_2, L4_2)
  end
end

L0_1.close = L1_1
L0_1 = CharacterPurchasePopup

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CLOSE_CHARACTER_PURCHASE_POPUP
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.close
    L2_2(L3_2)
  end
end

L0_1.eventTriggered = L1_1
L0_1 = CharacterPurchasePopup

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
L0_1 = CharacterPurchasePopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.3
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
L0_1 = CharacterPurchasePopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CLOSE_CHARACTER_PURCHASE_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CharacterPurchasePopup
  L1_2.isShown = false
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
PurchasePopupBackground = L0_1
L0_1 = PurchasePopupBackground

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
L0_1 = PurchasePopupBackground

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.left = A1_2
  A0_2.right = A2_2
  A0_2.top = A3_2
  A0_2.bottom = A4_2
end

L0_1.setPosition = L1_1
L0_1 = PurchasePopupBackground

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2.r = A1_2
  A0_2.g = A2_2
  A0_2.b = A3_2
  A0_2.a = A4_2
end

L0_1.setColor = L1_1
L0_1 = PurchasePopupBackground

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.left
  L3_2 = A1_2 > L3_2
  return L3_2
end

L0_1.isPosInside = L1_1
L0_1 = PurchasePopupBackground

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_1"
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
  L9_2 = L9_2.math
  L9_2 = L9_2.floor
  L10_2 = A0_2.left
  L10_2 = L5_2 + L10_2
  L10_2 = L10_2 / L3_2
  L9_2 = L9_2(L10_2)
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = A0_2.left
  L11_2 = L5_2 + L11_2
  L11_2 = L11_2 / L3_2
  L11_2 = L11_2 + L7_2
  L10_2 = L10_2(L11_2)
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.floor
  L12_2 = A0_2.right
  L12_2 = L5_2 + L12_2
  L12_2 = L12_2 / L3_2
  L12_2 = L12_2 - L7_2
  L11_2 = L11_2(L12_2)
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.right
  L13_2 = L5_2 + L13_2
  L13_2 = L13_2 / L3_2
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.floor
  L14_2 = A0_2.top
  L14_2 = L6_2 + L14_2
  L14_2 = L14_2 / L3_2
  L13_2 = L13_2(L14_2)
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.floor
  L15_2 = A0_2.top
  L15_2 = L6_2 + L15_2
  L15_2 = L15_2 / L3_2
  L15_2 = L15_2 + L8_2
  L14_2 = L14_2(L15_2)
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.floor
  L16_2 = A0_2.bottom
  L16_2 = L6_2 + L16_2
  L16_2 = L16_2 / L3_2
  L16_2 = L16_2 - L8_2
  L15_2 = L15_2(L16_2)
  L16_2 = _G
  L16_2 = L16_2.math
  L16_2 = L16_2.floor
  L17_2 = A0_2.bottom
  L17_2 = L6_2 + L17_2
  L17_2 = L17_2 / L3_2
  L16_2 = L16_2(L17_2)
  L17_2 = gamelua
  L17_2 = L17_2.setRenderState
  L18_2 = 0
  L19_2 = 0
  L20_2 = L3_2
  L21_2 = L3_2
  L22_2 = 0
  L23_2 = 0
  L24_2 = 0
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L17_2 = _G
  L17_2 = L17_2.res
  L17_2 = L17_2.drawSprite
  L18_2 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_1"
  L19_2 = L10_2
  L20_2 = L14_2
  L17_2(L18_2, L19_2, L20_2)
  L17_2 = _G
  L17_2 = L17_2.res
  L17_2 = L17_2.drawSprite
  L18_2 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_3"
  L19_2 = L10_2
  L20_2 = L15_2 - 1
  L17_2(L18_2, L19_2, L20_2)
  L17_2 = _G
  L17_2 = L17_2.res
  L17_2 = L17_2.drawSprite
  L18_2 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_2"
  L19_2 = L11_2 - 1
  L20_2 = L14_2
  L17_2(L18_2, L19_2, L20_2)
  L17_2 = _G
  L17_2 = L17_2.res
  L17_2 = L17_2.drawSprite
  L18_2 = "CHARACTER_MENU_DARK_CORNER_POSITIVE_4"
  L19_2 = L11_2 - 1
  L20_2 = L15_2 - 1
  L17_2(L18_2, L19_2, L20_2)
  L17_2 = gamelua
  L17_2 = L17_2.drawRect
  L18_2 = A0_2.r
  L19_2 = A0_2.g
  L20_2 = A0_2.b
  L21_2 = A0_2.a
  L22_2 = L10_2
  L23_2 = L13_2
  L24_2 = L11_2
  L25_2 = L14_2
  L26_2 = true
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L17_2 = gamelua
  L17_2 = L17_2.drawRect
  L18_2 = A0_2.r
  L19_2 = A0_2.g
  L20_2 = A0_2.b
  L21_2 = A0_2.a
  L22_2 = L9_2
  L23_2 = L14_2
  L24_2 = L12_2
  L25_2 = L15_2
  L26_2 = true
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L17_2 = gamelua
  L17_2 = L17_2.drawRect
  L18_2 = A0_2.r
  L19_2 = A0_2.g
  L20_2 = A0_2.b
  L21_2 = A0_2.a
  L22_2 = L10_2
  L23_2 = L15_2
  L24_2 = L11_2
  L25_2 = L16_2
  L26_2 = true
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L17_2 = ui
  L17_2 = L17_2.Frame
  L17_2 = L17_2.draw
  L18_2 = A0_2
  L19_2 = L5_2
  L20_2 = L6_2
  L17_2(L18_2, L19_2, L20_2)
end

L0_1.draw = L1_1
L0_1 = PurchasePopupBackground

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
