local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CoinsPage = L0_1
L0_1 = CoinsPage
L0_1.isInit = false
L0_1 = CoinsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2.name = "coinsPage"
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L2_2.topLeft = "SHOPBOX_TOP_LEFT"
  L2_2.topMiddle = "SHOPBOX_TOP_MIDDLE"
  L2_2.topRight = "SHOPBOX_TOP_RIGHT"
  L2_2.left = "SHOPBOX_MIDDLE_LEFT"
  L2_2.center = "SHOPBOX_CENTER"
  L2_2.right = "SHOPBOX_MIDDLE_RIGHT"
  L2_2.bottomLeft = "SHOPBOX_BOTTOM_LEFT"
  L2_2.bottomMiddle = "SHOPBOX_BOTTOM_MIDDLE"
  L2_2.bottomRight = "SHOPBOX_BOTTOM_RIGHT"
  L1_2.components = L2_2
  L2_2 = CoinsPage
  L2_2.isInit = true
  A0_2.bgBox = L1_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bgBox
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "headline"
  L4_2.vanchor = "TOP"
  L4_2.hanchor = "LEFT"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_SHOP_BUYCREDITS"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontHeadline
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.headline = L2_2
  L2_2 = A0_2.bgBox
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.headline
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "backBtn"
  L4_2.returnValue = "CLOSE"
  L4_2.clickSound = "ButtonBack"
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
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2.bgBox
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.backBtn
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.CoinButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "coinBtn"
  L4_2.coinButtonDisabled = true
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.coinBtn = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.coinBtn
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2.buyBtns = L2_2
  L2_2 = 1
  L3_2 = 6
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = ui
    L6_2 = L6_2.ScallableButton
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L9_2 = "buyBtn"
    L10_2 = L5_2
    L9_2 = L9_2 .. L10_2
    L8_2.name = L9_2
    L8_2.returnValue = "BUY"
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.setImage
    L9_2 = "COINPILE"
    L10_2 = L5_2
    L9_2 = L9_2 .. L10_2
    L7_2(L8_2, L9_2)
    L7_2 = gamelua
    L7_2 = L7_2.ui
    L7_2 = L7_2.DummyText
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "amountText"
    L10_2 = gamelua
    L10_2 = L10_2.getFontIngameMoney
    L10_2 = L10_2()
    L9_2.font = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.amountText = L7_2
    L7_2 = gamelua
    L7_2 = L7_2.ui
    L7_2 = L7_2.DummyText
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "priceText"
    L10_2 = gamelua
    L10_2 = L10_2.getFontBasic
    L10_2 = L10_2()
    L9_2.font = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.priceText = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.addChild
    L9_2 = L6_2.amountText
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.addChild
    L9_2 = L6_2.priceText
    L7_2(L8_2, L9_2)
    L6_2.active = false
    L7_2 = A0_2.bgBox
    L8_2 = L7_2
    L7_2 = L7_2.addChild
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A0_2.buyBtns
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = ui
  L2_2 = L2_2.Spinner
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  A0_2.spinner = L2_2
  L2_2 = A0_2.bgBox
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.spinner
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.init = L1_1
L0_1 = CoinsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2.g_coinPageOpen = true
  L1_2 = gamelua
  L1_2 = L1_2.clearParticlesWithTagNative
  L2_2 = "MENU"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.iap
  L1_2 = L1_2.native_isInitialized
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.initialize
    L1_2(L2_2)
  else
    L1_2 = _G
    L1_2 = L1_2.iap
    L1_2 = L1_2.native_initialize
    L1_2()
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_OPEN_COINSHOP
  L3_2.id = L4_2
  L3_2.iapType = "credits"
  L1_2(L2_2, L3_2)
end

L0_1.onEntry = L1_1
L0_1 = CoinsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = print
  L2_2 = "IAP items:"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = _G
  L2_2 = L2_2.iap
  L2_2 = L2_2.native_catalog
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L2_2()
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = print
    L7_2 = " "
    L8_2 = L4_2
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = print
      L12_2 = "  - "
      L13_2 = L9_2
      L14_2 = ": "
      L15_2 = _G
      L15_2 = L15_2.tostring
      L16_2 = L10_2
      L15_2 = L15_2(L16_2)
      L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
      L11_2(L12_2)
      L11_2 = _G
      L11_2 = L11_2.type
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 == "table" then
        L11_2 = _G
        L11_2 = L11_2.pairs
        L12_2 = L10_2
        L11_2, L12_2, L13_2 = L11_2(L12_2)
        for L14_2, L15_2 in L11_2, L12_2, L13_2 do
          L16_2 = print
          L17_2 = "      "
          L18_2 = L14_2
          L19_2 = ": "
          L20_2 = L15_2
          L21_2 = " ("
          L22_2 = _G
          L22_2 = L22_2.type
          L23_2 = L15_2
          L22_2 = L22_2(L23_2)
          L23_2 = ")"
          L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2
          L16_2(L17_2)
        end
      end
    end
  end
  L1_2 = A0_2.bgBox
  L2_2 = L1_2
  L1_2 = L1_2.removeChild
  L3_2 = A0_2.spinner
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = _G
  L3_2 = L3_2.iap
  L3_2 = L3_2.native_catalog
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L3_2()
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.clientData
    L7_2 = L7_2.coins
    if L7_2 then
      L7_2 = L6_2.price
      if L7_2 == "" then
        L8_2 = L6_2.clientData
        L7_2 = L8_2.price
      end
      L8_2 = _G
      L8_2 = L8_2.table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = {}
      L11_2 = L6_2.id
      L10_2.id = L11_2
      L10_2.price = L7_2
      L11_2 = L6_2.clientData
      L11_2 = L11_2.coins
      L10_2.coins = L11_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.id
    L3_3 = A1_3.id
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.buyBtns
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2[L5_2]
    if L7_2 ~= nil then
      L7_2 = L6_2.amountText
      L8_2 = L7_2
      L7_2 = L7_2.setText
      L9_2 = "#"
      L10_2 = L1_2[L5_2]
      L10_2 = L10_2.coins
      L9_2 = L9_2 .. L10_2
      L7_2(L8_2, L9_2)
      L7_2 = L6_2.priceText
      L8_2 = L7_2
      L7_2 = L7_2.setText
      L9_2 = L1_2[L5_2]
      L9_2 = L9_2.price
      L7_2(L8_2, L9_2)
      L7_2 = L1_2[L5_2]
      L7_2 = L7_2.id
      L6_2.purchaseID = L7_2
      L6_2.active = true
    end
  end
  L2_2 = print
  L3_2 = "<<Attempting restore purchases>>"
  L2_2(L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.restorePurchasesOrInitialize
  L2_2()
  L2_2 = A0_2.autoBuyId
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.purchaseCoins
    L3_2 = A0_2.autoBuyId
    L2_2(L3_2)
  end
end

L0_1.initialize = L1_1
L0_1 = CoinsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "BTN_BG_LIGHT"
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L2_2 * L1_2
  L3_2 = L3_2 * L1_2
  L2_2 = L4_2
  L4_2 = 12 * L1_2
  L5_2 = A0_2.coinBtn
  L6_2 = L5_2
  L5_2 = L5_2.layout
  L5_2(L6_2)
  L5_2 = A0_2.coinBtn
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L6_2 = L6_2 - L4_2
  L5_2.x = L6_2
  L5_2 = A0_2.coinBtn
  L6_2 = A0_2.coinBtn
  L6_2 = L6_2.h
  L6_2 = L6_2 * 0.75
  L5_2.y = L6_2
  L5_2 = A0_2.coinBtn
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.bgBox
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L5_2 = A0_2.bgBox
  L6_2 = gamelua
  L6_2 = L6_2.screenHeight
  L6_2 = L6_2 * 0.5
  L7_2 = A0_2.coinBtn
  L7_2 = L7_2.h
  L7_2 = L7_2 / 2
  L7_2 = L7_2 * L1_2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L5_2 = A0_2.bgBox
  L6_2 = L5_2
  L5_2 = L5_2.setSize
  L7_2 = 650 * L1_2
  L8_2 = 500 * L1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  if L5_2 <= 480 then
    L5_2 = A0_2.bgBox
    L6_2 = L5_2
    L5_2 = L5_2.setSize
    L7_2 = 550 * L1_2
    L8_2 = 500 * L1_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2.bgBox
  L6_2 = L5_2
  L5_2 = L5_2.getSize
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = gamelua
  L7_2 = L7_2.print
  L8_2 = "self.headline:getWidth() "
  L9_2 = _G
  L9_2 = L9_2.tostring
  L10_2 = A0_2.headline
  L11_2 = L10_2
  L10_2 = L10_2.getWidth
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = L8_2 .. L9_2
  L7_2(L8_2)
  L7_2 = A0_2.headline
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2 * 3.5
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.headline
  L8_2 = -L6_2
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L7_2 = A0_2.headline
  L8_2 = -L5_2
  L8_2 = L8_2 * 0.46
  L7_2.x = L8_2
  L7_2 = A0_2.backBtn
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.backBtn
  L8_2 = L5_2 / 2
  L9_2 = A0_2.backBtn
  L9_2 = L9_2.w
  L9_2 = L9_2 * 0.6
  L9_2 = L9_2 * L1_2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = A0_2.backBtn
  L8_2 = -L6_2
  L8_2 = L8_2 / 2
  L9_2 = A0_2.backBtn
  L9_2 = L9_2.h
  L9_2 = L9_2 * 0.6
  L9_2 = L9_2 * L1_2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2 = 36 * L1_2
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getSpriteBounds
  L9_2 = "COINPILE1"
  L8_2, L9_2 = L8_2(L9_2)
  L10_2 = L8_2 * L1_2
  L9_2 = L9_2 * L1_2
  L8_2 = L10_2
  L10_2 = A0_2.spinner
  L10_2.y = L7_2
  L10_2 = A0_2.spinner
  L11_2 = L10_2
  L10_2 = L10_2.setScale
  L12_2 = L1_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.ipairs
  L11_2 = A0_2.buyBtns
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = L13_2 - 1
    L15_2 = L15_2 % 3
    L15_2 = L15_2 - 1
    L15_2 = L15_2 * L8_2
    L14_2.x = L15_2
    L15_2 = _G
    L15_2 = L15_2.math
    L15_2 = L15_2.floor
    L16_2 = L13_2 - 1
    L16_2 = L16_2 / 3
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2 - 0.5
    L15_2 = L15_2 * L9_2
    L15_2 = L15_2 * 0.85
    L15_2 = L7_2 + L15_2
    L14_2.y = L15_2
    L16_2 = L14_2
    L15_2 = L14_2.setScale
    L17_2 = L1_2 * 0.75
    L15_2(L16_2, L17_2)
    L15_2 = L14_2.amountText
    L16_2 = -L9_2
    L16_2 = L16_2 * 0.25
    L15_2.y = L16_2
    L15_2 = L14_2.priceText
    L16_2 = L9_2 * 0.27
    L15_2.y = L16_2
  end
  L10_2 = ui
  L10_2 = L10_2.Frame
  L10_2 = L10_2.layout
  L11_2 = A0_2
  L10_2(L11_2)
end

L0_1.layout = L1_1
L0_1 = CoinsPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "BUY" then
    L7_2 = _G
    L7_2 = L7_2.iap
    L7_2 = L7_2.native_isInitialized
    L7_2 = L7_2()
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.purchaseCoins
      L8_2 = L6_2.purchaseID
      L7_2(L8_2)
  end
  elseif L4_2 == "CLOSE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = CoinsPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L6_2 = A0_2
    L5_2 = A0_2.close
    L5_2(L6_2)
  end
  L5_2 = -1
  return L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = CoinsPage

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
L0_1 = CoinsPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.timer
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 + A1_2
  A0_2.timer = L3_2
  L3_2 = A0_2.lastCheck
  if not L3_2 then
    L3_2 = -5
  end
  A0_2.lastCheck = L3_2
  L3_2 = _G
  L3_2 = L3_2.iap
  L3_2 = L3_2.native_isInitialized
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = A0_2.timer
    L4_2 = A0_2.lastCheck
    L4_2 = L4_2 + 5
    if L3_2 > L4_2 then
      L3_2 = A0_2.timer
      A0_2.lastCheck = L3_2
      L3_2 = _G
      L3_2 = L3_2.iap
      L3_2 = L3_2.native_isInitialized
      L3_2 = L3_2()
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.initialize
        L3_2(L4_2)
      end
    end
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = CoinsPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.75
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
L0_1 = CoinsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2.g_coinPageOpen = nil
  L1_2 = CoinsPage
  L1_2.isInit = false
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_CLOSED_COINSHOP
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
