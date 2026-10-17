local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ShopFrame = L0_1
L0_1 = gamelua
L0_1 = L0_1.isIapEnabled
L0_1 = L0_1()
L0_1 = not L0_1
L1_1 = ShopFrame
L1_1.isShown = false
L1_1 = ShopFrame
L1_1.isInit = false
L1_1 = ShopFrame
L2_1 = {}
L3_1 = "singles"
L4_1 = "bundles"
L5_1 = "specials"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L1_1.sections = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ""
  L2_2 = gamelua
  L2_2 = L2_2.g_currentLocale
  if L2_2 ~= "en_EN" then
    L1_2 = "_NO_WATTO"
  end
  L2_2 = ShopFrame
  L2_2.isInit = true
  L2_2 = gamelua
  L2_2.g_blockMainMenuAd = true
  A0_2.transition = 0
  A0_2.transitionDirection = -1
  A0_2.transitionTo = "specials"
  A0_2.refreshScale = -1
  L2_2 = ShopFrame
  L2_2 = L2_2.getData
  L2_2 = L2_2()
  A0_2.data = L2_2
  L2_2 = ui
  L2_2 = L2_2.FlashAnimation
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "bg"
  L5_2 = "animations/Shop/SHOP_START"
  L6_2 = L1_2
  L7_2 = ".json"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L4_2.file = L5_2
  L4_2.onEntryAction = "SHOP_START"
  L4_2.loadGroup = "ANIMATION_SHOP"
  L4_2.width = 4095
  L4_2.scaleWidth = 1365
  L4_2.height = 768
  L4_2.mode = "onceandloop"
  L4_2.switchTimer = 2
  L5_2 = "animations/Shop/SHOP_LOOP"
  L6_2 = L1_2
  L7_2 = ".json"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L4_2.loopFile = L5_2
  L4_2.loopAction = "SHOP_LOOP"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.flashAnimation = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.flashAnimation
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
  L5_2 = "backButton"
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.isDarkSide
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
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
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.helpBtn
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.Carousel
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "singlesCarousel"
  L4_2.shineSprite = "EAGLE_SHINE_1"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.singlesCarousel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.singlesCarousel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.singlesCarousel
  L2_2.active = false
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.Carousel
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "bundlesCarousel"
  L4_2.shineSprite = "EAGLE_SHINE_1"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.bundlesCarousel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bundlesCarousel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.bundlesCarousel
  L2_2.active = false
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.Carousel
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "specialsCarousel"
  L4_2.shineSprite = "GOLD_SHINE_1"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.specialsCarousel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.specialsCarousel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.specialsCarousel
  L2_2.active = false
  L2_2 = ui
  L2_2 = L2_2.CoinButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "coinBtn"
  L4_2.returnValue = "GOTO_COINS"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.coinBtn = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.coinBtn
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ShopItemContent
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.containsBox = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.containsBox
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "leftBtn"
  L4_2.returnValue = "GOTO_SINGLES"
  L4_2.hitAreaScale = 3
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.leftBtn = L2_2
  L2_2 = A0_2.leftBtn
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "BTN_SHOP_ARROW_LEFT"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.leftBtn
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "rightBtn"
  L4_2.returnValue = "GOTO_BUNDLES"
  L4_2.hitAreaScale = 3
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.rightBtn = L2_2
  L2_2 = A0_2.rightBtn
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "BTN_SHOP_ARROW_RIGHT"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.rightBtn
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "leftBtnText"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_SHOP_ALL_CHARACTERS"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L4_2.alpha = 0.5
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.leftBtnText = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.leftBtnText
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "rightBtnText"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_SHOP_BUNDLES"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L4_2.alpha = 0.5
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.rightBtnText = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.rightBtnText
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "headline"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_SHOP_SALE"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontHeadline
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.headline = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.headline
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "descText"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.descText = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.descText
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2.buyBtns = L2_2
  L2_2 = 4
  btnCount = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.isIapEnabled
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.isPCVersion
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = 3
      btnCount = L2_2
    end
  end
  L2_2 = 1
  L3_2 = btnCount
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
    L9_2 = "BTN_PRICETAG"
    L7_2(L8_2, L9_2)
    if L5_2 == 4 then
      L7_2 = ui
      L7_2 = L7_2.Image
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L9_2.name = "infiniteIcon"
      L7_2 = L7_2(L8_2, L9_2)
      L6_2.infiniteIcon = L7_2
      L7_2 = L6_2.infiniteIcon
      L8_2 = L7_2
      L7_2 = L7_2.setImage
      L9_2 = "ICON_SHOP_INFINITY"
      L7_2(L8_2, L9_2)
      L7_2 = L6_2.infiniteIcon
      L7_2.visible = false
      L8_2 = L6_2
      L7_2 = L6_2.addChild
      L9_2 = L6_2.infiniteIcon
      L7_2(L8_2, L9_2)
    end
    L7_2 = gamelua
    L7_2 = L7_2.ui
    L7_2 = L7_2.DummyText
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "amountText"
    L10_2 = gamelua
    L10_2 = L10_2.getFontHeadline
    L10_2 = L10_2()
    L9_2.font = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.ui
    L8_2 = L8_2.DummyText
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.name = "priceText"
    L10_2.vanchor = "TOP"
    L11_2 = gamelua
    L11_2 = L11_2.getFontIngameMoney
    L11_2 = L11_2()
    L10_2.font = L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L6_2
    L9_2 = L6_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L6_2.priceText = L8_2
    L10_2 = L6_2
    L9_2 = L6_2.addChild
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L6_2.amountText = L7_2
    L10_2 = A0_2
    L9_2 = A0_2.addChild
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.insert
    L10_2 = A0_2.buyBtns
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
  end
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end

L1_1.init = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = ShopFrame
  L3_2 = L3_2.getSectionData
  L4_2 = A1_2
  L5_2 = A0_2.data
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    if L9_2 == A2_2 then
      return L8_2
    end
  end
  L4_2 = nil
  return L4_2
end

L1_1.getItemFromRawData = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = nil
  L4_2 = A0_2.openAt
  if L4_2 == "specials" then
    L3_2 = A0_2.specialsCarousel
    L4_2 = A0_2.specialsCarousel
    L2_2 = L4_2.items
  else
    L4_2 = A0_2.openAt
    if L4_2 == "bundles" then
      L3_2 = A0_2.bundlesCarousel
      L4_2 = A0_2.bundlesCarousel
      L2_2 = L4_2.items
    else
      L4_2 = A0_2.openAt
      if L4_2 == "singles" then
        L3_2 = A0_2.singlesCarousel
        L4_2 = A0_2.singlesCarousel
        L2_2 = L4_2.items
      end
    end
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    if L9_2 then
      L9_2 = L8_2.id
      L10_2 = L9_2
      L9_2 = L9_2.lower
      L9_2 = L9_2(L10_2)
      L11_2 = A1_2
      L10_2 = A1_2.lower
      L10_2 = L10_2(L11_2)
      if L9_2 == L10_2 then
        L10_2 = L3_2
        L9_2 = L3_2.setPosition
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
        L9_2 = L7_2
        L10_2 = L8_2
        return L9_2, L10_2
      end
    end
  end
  L4_2 = nil
  L5_2 = nil
  return L4_2, L5_2
end

L1_1.getDataPosition = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.clearParticlesWithTagNative
  L2_2 = "MENU"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setShopOpened
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.initializeShop
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_REFRESH_OFFERS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CONFIRM_PURCHASE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.data
  if L1_2 then
    L1_2 = A0_2.data
    L1_2 = L1_2.specialsVersion
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.setOpenSpecialsVersion
      L3_2 = A0_2.data
      L3_2 = L3_2.specialsVersion
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setNewCreditsGained
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_SHOP_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ShopFrame
  L1_2.isShown = true
  L1_2 = A0_2.autoPromptIndex
  if L1_2 then
    L1_2 = A0_2.autoPromptIndex
    if 0 < L1_2 then
      L1_2 = A0_2.itemData
      if L1_2 then
        L1_2 = A0_2.itemData
        L1_2 = L1_2.buyButtons
        L2_2 = A0_2.autoPromptIndex
        L1_2 = L1_2[L2_2]
        L3_2 = A0_2
        L2_2 = A0_2.showPrompt
        L4_2 = L1_2
        L5_2 = A0_2.itemData
        L5_2 = L5_2.description
        L6_2 = _G
        L6_2 = L6_2.tostring
        L7_2 = A0_2.transitionTo
        L7_2 = L7_2 == "specials"
        L6_2, L7_2 = L6_2(L7_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.getAllClaimableQuests
  L2_2 = "bird"
  L1_2 = L1_2(L2_2)
  L1_2 = #L1_2
  L2_2 = gamelua
  L2_2 = L2_2.getAllClaimableQuests
  L3_2 = "birdPack"
  L2_2 = L2_2(L3_2)
  L2_2 = #L2_2
  L1_2 = L1_2 + L2_2
  if not (0 < L1_2) then
    L2_2 = A0_2.rewardBundle
    if not L2_2 then
      goto lbl_119
    end
  end
  L2_2 = ui
  L2_2 = L2_2.ShopClaimScreen
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "claimScreen"
  L4_2.claimableAmount = L1_2
  L5_2 = A0_2.rewardBundle
  L4_2.rewardBundle = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_PUSH_FRAME
  L5_2.id = L6_2
  L5_2.target = L2_2
  L3_2(L4_2, L5_2)
  ::lbl_119::
  L2_2 = gamelua
  L2_2 = L2_2.audioFilters
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.stopAudioByFilter
    L3_2 = gamelua
    L3_2 = L3_2.audioFilters
    L3_2 = L3_2.levelEndFilters
    L2_2(L3_2)
  end
  L2_2 = A0_2.openAt
  if L2_2 then
    L2_2 = A0_2.transitionTo
    L3_2 = A0_2.openAt
    if L2_2 ~= L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.startTransitionTo
      L4_2 = A0_2.openAt
      L2_2(L3_2, L4_2)
    end
  end
end

L1_1.onEntry = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.data
  L2_2 = L2_2.singlesCarousel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = gamelua
    L6_2 = L6_2.getLocalizedText
    L7_2 = gamelua
    L7_2 = L7_2.getCharacterText
    L8_2 = L5_2.description
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2.itemCanBeAdded
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2.singlesCarousel
      L8_2 = L7_2
      L7_2 = L7_2.addItem
      L9_2 = {}
      L10_2 = L5_2.id
      L9_2.id = L10_2
      L9_2.description = L6_2
      L10_2 = L5_2.sprite
      L9_2.sprite = L10_2
      L10_2 = L5_2.buyButtons
      L9_2.buyButtons = L10_2
      L10_2 = L5_2.buyButtons
      L10_2 = L10_2[1]
      L10_2 = L10_2.bundle
      L10_2 = #L10_2
      L10_2 = 1 < L10_2
      L9_2.isBundle = L10_2
      L10_2 = L5_2.buyButtons
      L10_2 = L10_2[1]
      L10_2 = L10_2.bundle
      L10_2 = L10_2[1]
      L10_2 = L10_2.character
      L9_2.characterName = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.data
  L2_2 = L2_2.bundlesCarousel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = gamelua
    L6_2 = L6_2.getLocalizedText
    L7_2 = L5_2.description
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2.itemCanBeAdded
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2.bundlesCarousel
      L8_2 = L7_2
      L7_2 = L7_2.addItem
      L9_2 = {}
      L10_2 = L5_2.id
      L9_2.id = L10_2
      L9_2.description = L6_2
      L10_2 = L5_2.sprite
      L9_2.sprite = L10_2
      L10_2 = L5_2.buyButtons
      L9_2.buyButtons = L10_2
      L10_2 = L5_2.buyButtons
      L10_2 = L10_2[1]
      L10_2 = L10_2.bundle
      L10_2 = #L10_2
      L10_2 = 1 < L10_2
      L9_2.isBundle = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.data
  L2_2 = L2_2.specialOffers
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = gamelua
    L6_2 = L6_2.getLocalizedText
    L7_2 = gamelua
    L7_2 = L7_2.getCharacterText
    L8_2 = L5_2.description
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2.itemCanBeAdded
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2.specialsCarousel
      L8_2 = L7_2
      L7_2 = L7_2.addItem
      L9_2 = {}
      L10_2 = L5_2.id
      L9_2.id = L10_2
      L9_2.description = L6_2
      L10_2 = L5_2.sprite
      L9_2.sprite = L10_2
      L10_2 = L5_2.buyButtons
      L9_2.buyButtons = L10_2
      L10_2 = L5_2.buyButtons
      L10_2 = L10_2[1]
      L10_2 = L10_2.bundle
      L10_2 = #L10_2
      L10_2 = 1 < L10_2
      L9_2.isBundle = L10_2
      L10_2 = L5_2.buyButtons
      L10_2 = L10_2[1]
      L10_2 = L10_2.bundle
      L10_2 = L10_2[1]
      L10_2 = L10_2.character
      L9_2.characterName = L10_2
      L10_2 = L5_2.reduction
      L9_2.reduction = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = A0_2.itemId
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.getDataPosition
    L3_2 = A0_2.itemId
    L1_2, L2_2 = L1_2(L2_2, L3_2)
    A0_2.itemData = L2_2
    A0_2.position = L1_2
    L1_2 = A0_2.itemData
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.getItemFromRawData
      L3_2 = A0_2.openAt
      L4_2 = A0_2.itemId
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      if L1_2 then
        L3_2 = A0_2
        L2_2 = A0_2.itemCanBeAdded
        L4_2 = L1_2
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = ui
          L2_2 = L2_2.Image
          L3_2 = L2_2
          L2_2 = L2_2.new
          L4_2 = {}
          L4_2.name = "title"
          L2_2 = L2_2(L3_2, L4_2)
          L3_2 = gamelua
          L3_2 = L3_2.getText
          L4_2 = "TEXT_UNLOCK_PORK_SIDE_TO_BUY_THIS_ITEM"
          L5_2 = {}
          L6_2 = "$ITEM"
          L7_2 = gamelua
          L7_2 = L7_2.getCharacterText
          L8_2 = L1_2.description
          L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
          L5_2[1] = L6_2
          L5_2[2] = L7_2
          L5_2[3] = L8_2
          L5_2[4] = L9_2
          L5_2[5] = L10_2
          L3_2 = L3_2(L4_2, L5_2)
          L5_2 = A0_2
          L4_2 = A0_2.isItemBundle
          L6_2 = L1_2
          L4_2 = L4_2(L5_2, L6_2)
          if L4_2 then
            L4_2 = gamelua
            L4_2 = L4_2.getText
            L5_2 = "TEXT_UNLOCK_PORK_SIDE_TO_BUY_THIS_ITEM"
            L6_2 = {}
            L7_2 = "$ITEM"
            L8_2 = gamelua
            L8_2 = L8_2.getLocalizedText
            L9_2 = L1_2.description
            L8_2, L9_2, L10_2 = L8_2(L9_2)
            L6_2[1] = L7_2
            L6_2[2] = L8_2
            L6_2[3] = L9_2
            L6_2[4] = L10_2
            L4_2 = L4_2(L5_2, L6_2)
            L3_2 = L4_2
          end
          L4_2 = ui
          L4_2 = L4_2.ConfirmPrompt
          L5_2 = L4_2
          L4_2 = L4_2.new
          L6_2 = {}
          L6_2.title = L2_2
          L6_2.content = L3_2
          
          function L7_2()
            local L0_3, L1_3
          end
          
          L6_2.returnValue = L7_2
          L6_2.inMenuSpace = true
          L6_2.hideCloseButton = true
          L4_2 = L4_2(L5_2, L6_2)
          L6_2 = A0_2
          L5_2 = A0_2.isItemBundle
          L7_2 = L1_2
          L5_2 = L5_2(L6_2, L7_2)
          if L5_2 then
            L6_2 = L2_2
            L5_2 = L2_2.setImage
            L7_2 = L1_2.sprite
            L5_2(L6_2, L7_2)
            L4_2.titleScale = 0.6
          else
            L5_2 = gamelua
            L5_2 = L5_2.getCharacterButton
            L6_2 = L1_2.buyButtons
            L6_2 = L6_2[1]
            L6_2 = L6_2.bundle
            L6_2 = L6_2[1]
            L6_2 = L6_2.character
            L5_2 = L5_2(L6_2)
            L7_2 = L2_2
            L6_2 = L2_2.setImage
            L8_2 = L5_2
            L6_2(L7_2, L8_2)
          end
          L5_2 = gamelua
          L5_2 = L5_2.eventManager
          L6_2 = L5_2
          L5_2 = L5_2.notify
          L7_2 = {}
          L8_2 = events
          L8_2 = L8_2.EID_PUSH_FRAME
          L7_2.id = L8_2
          L7_2.target = L4_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end

L1_1.initializeShop = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.buyButtons
  L2_2 = #L2_2
  if L2_2 == 1 then
    L2_2 = A1_2.buyButtons
    L2_2 = L2_2[1]
    L2_2 = L2_2.bundle
    L2_2 = #L2_2
    if 1 < L2_2 then
      L2_2 = true
      return L2_2
    end
  end
end

L1_1.isItemBundle = L2_1
L1_1 = ShopFrame

function L2_1()
  local L0_2, L1_2
  L0_2 = ShopFrame
  L0_2 = L0_2.cloudData
  if L0_2 then
    L0_2 = L0_1
    if not L0_2 then
      L0_2 = ShopFrame
      L0_2 = L0_2.cloudData
      L0_2 = L0_2.data
      return L0_2
  end
  else
    L0_2 = ShopFrame
    L0_2 = L0_2.cachedData
    if L0_2 then
      L0_2 = L0_1
      if not L0_2 then
        L0_2 = ShopFrame
        L0_2 = L0_2.cachedData
        L0_2 = L0_2.data
        return L0_2
    end
    else
      L0_2 = ShopFrame
      L0_2 = L0_2.packageData
      L0_2 = L0_2.data
      return L0_2
    end
  end
end

L1_1.getData = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2
  if A0_2 == "specials" then
    L2_2 = A1_2.specialOffers
    return L2_2
  elseif A0_2 == "bundles" then
    L2_2 = A1_2.bundlesCarousel
    return L2_2
  elseif A0_2 == "singles" then
    L2_2 = A1_2.singlesCarousel
    return L2_2
  end
end

L1_1.getSectionData = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = false
  L3_2 = false
  L4_2 = ShopFrame
  L4_2 = L4_2.getData
  L4_2 = L4_2()
  L5_2 = _G
  L5_2 = L5_2.ipairs
  L6_2 = ShopFrame
  L6_2 = L6_2.sections
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.lower
    L10_2 = L10_2(L11_2)
    L12_2 = A0_2
    L11_2 = A0_2.lower
    L11_2 = L11_2(L12_2)
    if L10_2 == L11_2 then
      L2_2 = true
    end
  end
  L5_2 = ShopFrame
  L5_2 = L5_2.getSectionData
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = _G
  L6_2 = L6_2.ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.id
    if L11_2 then
      L11_2 = L10_2.id
      L12_2 = L11_2
      L11_2 = L11_2.lower
      L11_2 = L11_2(L12_2)
      L13_2 = A1_2
      L12_2 = A1_2.lower
      L12_2 = L12_2(L13_2)
      if L11_2 == L12_2 then
        L3_2 = true
      end
    end
  end
  L6_2 = L2_2 or L6_2
  if L2_2 then
    L6_2 = L3_2
  end
  return L6_2
end

L1_1.checkShopAvailability = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A1_2.buyButtons
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L8_2 = L6_2.bundle
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = gamelua
      L12_2 = L12_2.Characters
      L12_2 = L12_2.list
      L13_2 = L11_2.character
      L12_2 = L12_2[L13_2]
      if not L12_2 then
        L12_2 = false
        return L12_2
      end
      L12_2 = gamelua
      L12_2 = L12_2.SettingsWrapper
      L13_2 = L12_2
      L12_2 = L12_2.isDarkSideOpen
      L12_2 = L12_2(L13_2)
      if not L12_2 then
        L12_2 = gamelua
        L12_2 = L12_2.Characters
        L12_2 = L12_2.list
        L13_2 = L11_2.character
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.isSith
        if L12_2 then
          L12_2 = false
          return L12_2
        end
      end
    end
  end
  L2_2 = true
  return L2_2
end

L1_1.itemCanBeAdded = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = gamelua
  L2_2 = L2_2.isIapEnabled
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = _G
    L2_2 = L2_2.ipairs
    L3_2 = A1_2.buyButtons
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = _G
      L7_2 = L7_2.ipairs
      L8_2 = L6_2.bundle
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        L12_2 = L11_2.type
        if L12_2 == "unlimited" then
          L12_2 = false
          return L12_2
        end
      end
    end
  end
  L2_2 = true
  return L2_2
end

L1_1.unlimitedCanBeAdded = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A1_2.bundle
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = gamelua
    L7_2 = L7_2.Characters
    L7_2 = L7_2.list
    L8_2 = L6_2.character
    L7_2 = L7_2[L8_2]
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
    L7_2 = gamelua
    L7_2 = L7_2.SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.isDarkSideOpen
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.Characters
      L7_2 = L7_2.list
      L8_2 = L6_2.character
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.isSith
      if L7_2 then
        L7_2 = false
        return L7_2
      end
    end
  end
  L2_2 = true
  return L2_2
end

L1_1.bundleCanBeAdded = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.descText
  L3_2 = L2_2
  L2_2 = L2_2.setText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L1_1.refreshDescriptionText = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  A0_2.refreshScale = 1
  L3_2 = 0
  if A1_2 then
    L4_2 = #A1_2
    if L4_2 ~= 0 then
      goto lbl_19
    end
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.buyBtns
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L8_2.visible = false
  end
  L4_2 = A0_2.containsBox
  L4_2.visible = false
  do return end
  ::lbl_19::
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.buyBtns
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A1_2[L7_2]
    L10_2 = false
    L11_2 = #A1_2
    if L11_2 == 1 then
      L11_2 = A0_2.buyBtns
      L11_2 = #L11_2
      L11_2 = L11_2 + 1
      L11_2 = L11_2 - L7_2
      L9_2 = A1_2[L11_2]
      L10_2 = true
    end
    if L9_2 then
      L12_2 = A0_2
      L11_2 = A0_2.bundleCanBeAdded
      L13_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        L11_2 = L8_2.amountText
        L11_2.xLayout = 0
        L11_2 = L8_2.amountText
        L11_2.yLayout = -16
        L11_2 = L8_2.priceText
        L12_2 = L11_2
        L11_2 = L11_2.setText
        L13_2 = "#"
        L14_2 = L9_2.price
        L13_2 = L13_2 .. L14_2
        L11_2(L12_2, L13_2)
        L11_2 = L8_2.infiniteIcon
        if L11_2 then
          L11_2 = L8_2.infiniteIcon
          L11_2.visible = false
        end
        L11_2 = L9_2.bundle
        L12_2 = A0_2.buyBtns
        L12_2 = L12_2[1]
        L12_2 = L12_2.w
        if L11_2 then
          L13_2 = #L11_2
          if L13_2 == 1 and not L10_2 then
            L13_2 = L11_2[1]
            L13_2 = L13_2.type
            if L13_2 then
              L13_2 = 1
              L14_2 = L8_2.amountText
              L15_2 = L14_2
              L14_2 = L14_2.setText
              L16_2 = gamelua
              L16_2 = L16_2.getText
              L17_2 = "TEXT_SHOP_PERMANENT"
              L16_2, L17_2 = L16_2(L17_2)
              L14_2(L15_2, L16_2, L17_2)
              L14_2 = L8_2.amountText
              L15_2 = L14_2
              L14_2 = L14_2.getWidth
              L14_2 = L14_2(L15_2)
              L15_2 = L12_2 * 1.85
              if L14_2 > L15_2 then
                L14_2 = L12_2 * 1.85
                L15_2 = L8_2.amountText
                L16_2 = L15_2
                L15_2 = L15_2.getWidth
                L15_2 = L15_2(L16_2)
                L13_2 = L14_2 / L15_2
              end
              L14_2 = L8_2.amountText
              L15_2 = L14_2
              L14_2 = L14_2.setScale
              L16_2 = 0.9 * L13_2
              L14_2(L15_2, L16_2)
              L14_2 = L8_2.amountText
              L14_2.yLayout = 20
              L14_2 = L8_2.infiniteIcon
              L14_2.visible = true
            else
              L13_2 = L8_2.amountText
              L14_2 = L13_2
              L13_2 = L13_2.setText
              L15_2 = "+"
              L16_2 = L11_2[1]
              L16_2 = L16_2.amount
              L15_2 = L15_2 .. L16_2
              L13_2(L14_2, L15_2)
              L13_2 = L8_2.amountText
              L14_2 = L13_2
              L13_2 = L13_2.setScale
              L15_2 = 1.7
              L13_2(L14_2, L15_2)
              L13_2 = L8_2.amountText
              L13_2.xLayout = -4
            end
        end
        else
          L13_2 = L11_2[1]
          L13_2 = L13_2.type
          if L13_2 then
            L13_2 = L11_2[1]
            L13_2 = L13_2.type
            if L13_2 == "unlimited" then
              L13_2 = L8_2.amountText
              L14_2 = L13_2
              L13_2 = L13_2.setText
              L15_2 = gamelua
              L15_2 = L15_2.getText
              L16_2 = "TEXT_SHOP_PERMANENT"
              L15_2, L16_2, L17_2 = L15_2(L16_2)
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = L8_2.amountText
              L14_2 = L13_2
              L13_2 = L13_2.setScale
              L15_2 = 0.9
              L13_2(L14_2, L15_2)
              L13_2 = L8_2.amountText
              L13_2.yLayout = 20
              L13_2 = L8_2.infiniteIcon
              L13_2.visible = true
          end
          else
            L13_2 = 1
            L14_2 = L8_2.amountText
            L15_2 = L14_2
            L14_2 = L14_2.setText
            L16_2 = gamelua
            L16_2 = L16_2.getText
            L17_2 = "TEXT_SHOP_CALL_TO_ACTION"
            L16_2, L17_2 = L16_2(L17_2)
            L14_2(L15_2, L16_2, L17_2)
            L14_2 = L8_2.amountText
            L15_2 = L14_2
            L14_2 = L14_2.getWidth
            L14_2 = L14_2(L15_2)
            if L12_2 < L14_2 then
              L14_2 = L8_2.amountText
              L15_2 = L14_2
              L14_2 = L14_2.getWidth
              L14_2 = L14_2(L15_2)
              L13_2 = L12_2 / L14_2
            end
            L14_2 = L8_2.amountText
            L15_2 = L14_2
            L14_2 = L14_2.setScale
            L16_2 = 1.5 * L13_2
            L14_2(L15_2, L16_2)
          end
        end
        L13_2 = L9_2.bundle
        L8_2.bundle = L13_2
        L13_2 = L9_2.price
        L8_2.price = L13_2
        L8_2.visible = true
        L3_2 = L3_2 + 1
    end
    else
      L8_2.visible = false
    end
    L11_2 = btnCount
    if L7_2 == L11_2 and L3_2 == 1 then
      L11_2 = A0_2.containsBox
      L12_2 = L8_2.visible
      L11_2.visible = L12_2
      L11_2 = A0_2.containsBox
      L12_2 = L11_2
      L11_2 = L11_2.setData
      L13_2 = L8_2.bundle
      L14_2 = A2_2
      L11_2(L12_2, L13_2, L14_2)
      L12_2 = A0_2
      L11_2 = A0_2.layout
      L11_2(L12_2)
    else
      L11_2 = A0_2.containsBox
      L11_2.visible = false
    end
    L11_2 = L8_2.amountText
    L12_2 = L8_2.amountText
    L12_2 = L12_2.xLayout
    if not L12_2 then
      L12_2 = 0
    end
    L13_2 = gamelua
    L13_2 = L13_2.getUIScale
    L13_2 = L13_2()
    L12_2 = L12_2 * L13_2
    L11_2.x = L12_2
    L11_2 = L8_2.amountText
    L12_2 = L8_2.amountText
    L12_2 = L12_2.yLayout
    if not L12_2 then
      L12_2 = 0
    end
    L13_2 = gamelua
    L13_2 = L13_2.getUIScale
    L13_2 = L13_2()
    L12_2 = L12_2 * L13_2
    L11_2.y = L12_2
  end
  L4_2 = A0_2.transitionDirection
  if not L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.playAudio
    L5_2 = "ui_button_general_01"
    L4_2(L5_2)
  end
end

L1_1.refreshBuyButtons = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = 10
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L3_2 = gamelua
  L3_2 = L3_2.getFontScale
  L3_2 = L3_2()
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = "BTN_BG_LIGHT"
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = L4_2 * L2_2
  L5_2 = L5_2 * L2_2
  L4_2 = L6_2
  L6_2 = A0_2.backBtn
  L7_2 = L4_2 * 0.6
  L6_2.x = L7_2
  L6_2 = A0_2.backBtn
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L8_2 = L5_2 * 0.6
  L7_2 = L7_2 - L8_2
  L6_2.y = L7_2
  L6_2 = A0_2.backBtn
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.helpBtn
  L7_2 = gamelua
  L7_2 = L7_2.screenWidth
  L8_2 = A0_2.helpBtn
  L8_2 = L8_2.w
  L8_2 = L8_2 * 0.6
  L8_2 = L8_2 * L2_2
  L7_2 = L7_2 - L8_2
  L6_2.x = L7_2
  L6_2 = A0_2.helpBtn
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L8_2 = A0_2.helpBtn
  L8_2 = L8_2.h
  L8_2 = L8_2 * 0.6
  L8_2 = L8_2 * L2_2
  L7_2 = L7_2 - L8_2
  L6_2.y = L7_2
  L6_2 = A0_2.helpBtn
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = 12 * L2_2
  L7_2 = A0_2.coinBtn
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L2_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.coinBtn
  L8_2 = L7_2
  L7_2 = L7_2.layout
  L7_2(L8_2)
  L7_2 = A0_2.coinBtn
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 - L6_2
  L7_2.x = L8_2
  L7_2 = A0_2.coinBtn
  L8_2 = A0_2.coinBtn
  L8_2 = L8_2.h
  L8_2 = L8_2 * 0.75
  L7_2.y = L8_2
  L7_2 = A0_2.leftBtn
  L8_2 = L4_2 * 0.6
  L7_2.x = L8_2
  L7_2 = A0_2.leftBtn
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 * 0.32
  L7_2.y = L8_2
  L7_2 = A0_2.leftBtn
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L2_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.rightBtn
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L9_2 = L4_2 * 0.6
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = A0_2.rightBtn
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 * 0.32
  L7_2.y = L8_2
  L7_2 = A0_2.rightBtn
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L2_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.headline
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L7_2 = A0_2.headline
  L8_2 = A0_2.headline
  L9_2 = L8_2
  L8_2 = L8_2.getFontLeading
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * L3_2
  L8_2 = L8_2 * 0.9
  L7_2.y = L8_2
  L7_2 = A0_2.headline
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L2_2 * 1.2
  L7_2(L8_2, L9_2)
  L7_2 = gamelua
  L7_2 = L7_2.setFont
  L8_2 = gamelua
  L8_2 = L8_2.getFontBasic
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.getStringWidth
  L8_2 = A0_2.leftBtnText
  L8_2 = L8_2.text
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2.leftBtnText
  L9_2 = L7_2 * 0.5
  L9_2 = L9_2 * L3_2
  L9_2 = L9_2 * 0.9
  L10_2 = L1_2 * L2_2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = A0_2.leftBtnText
  L8_2 = L8_2.x
  L9_2 = A0_2.leftBtn
  L9_2 = L9_2.x
  if L8_2 < L9_2 then
    L8_2 = A0_2.leftBtnText
    L9_2 = A0_2.leftBtn
    L9_2 = L9_2.x
    L8_2.x = L9_2
  end
  L8_2 = A0_2.leftBtnText
  L9_2 = A0_2.leftBtn
  L9_2 = L9_2.y
  L10_2 = L5_2 * 0.6
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = A0_2.leftBtnText
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L2_2 * 0.9
  L8_2(L9_2, L10_2)
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getStringWidth
  L9_2 = A0_2.rightBtnText
  L9_2 = L9_2.text
  L8_2 = L8_2(L9_2)
  L7_2 = L8_2
  L8_2 = A0_2.rightBtnText
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L10_2 = L7_2 * 0.5
  L10_2 = L10_2 * L3_2
  L10_2 = L10_2 * 0.9
  L9_2 = L9_2 - L10_2
  L10_2 = L1_2 * L2_2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L8_2 = A0_2.rightBtnText
  L8_2 = L8_2.x
  L9_2 = A0_2.rightBtn
  L9_2 = L9_2.x
  if L8_2 > L9_2 then
    L8_2 = A0_2.rightBtnText
    L9_2 = A0_2.rightBtn
    L9_2 = L9_2.x
    L8_2.x = L9_2
  end
  L8_2 = A0_2.rightBtnText
  L9_2 = A0_2.rightBtn
  L9_2 = L9_2.y
  L10_2 = L5_2 * 0.6
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = A0_2.rightBtnText
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L2_2 * 0.9
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.descText
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L9_2 = L9_2 * 0.5
  L8_2.x = L9_2
  L8_2 = A0_2.descText
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.525
  L8_2.y = L9_2
  L8_2 = A0_2.descText
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L2_2
  L8_2(L9_2, L10_2)
  L8_2 = {}
  L9_2 = -L5_2
  L9_2 = L9_2 * 2
  L8_2.start = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.27
  L8_2.target = L9_2
  A0_2.carouselTransition = L8_2
  L8_2 = A0_2.singlesCarousel
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L9_2 = L9_2 * 0.5
  L8_2.x = L9_2
  L8_2 = A0_2.singlesCarousel
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.27
  L8_2.y = L9_2
  L8_2 = A0_2.singlesCarousel
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L2_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.bundlesCarousel
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L9_2 = L9_2 * 0.5
  L8_2.x = L9_2
  L8_2 = A0_2.bundlesCarousel
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.27
  L8_2.y = L9_2
  L8_2 = A0_2.bundlesCarousel
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L2_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.specialsCarousel
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L9_2 = L9_2 * 0.5
  L8_2.x = L9_2
  L8_2 = A0_2.specialsCarousel
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.27
  L8_2.y = L9_2
  L8_2 = A0_2.specialsCarousel
  L9_2 = L8_2
  L8_2 = L8_2.setScale
  L10_2 = L2_2
  L8_2(L9_2, L10_2)
  L8_2 = {}
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L10_2 = L5_2 * 2.5
  L9_2 = L9_2 + L10_2
  L8_2.start = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.75
  L8_2.target = L9_2
  A0_2.buyBtnTransition = L8_2
  L8_2 = _G
  L8_2 = L8_2.ipairs
  L9_2 = A0_2.buyBtns
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = gamelua
    L13_2 = L13_2.screenWidth
    L13_2 = L13_2 * 0.5
    L14_2 = L11_2 - 1
    L15_2 = A0_2.buyBtns
    L15_2 = #L15_2
    L15_2 = L15_2 - 1
    L14_2 = L14_2 / L15_2
    L14_2 = L14_2 - 0.5
    L14_2 = L14_2 * L4_2
    L14_2 = L14_2 * 6
    L13_2 = L13_2 + L14_2
    L12_2.x = L13_2
    L13_2 = gamelua
    L13_2 = L13_2.screenHeight
    L13_2 = L13_2 * 0.75
    L12_2.y = L13_2
    L14_2 = L12_2
    L13_2 = L12_2.setScale
    L15_2 = L2_2 * 0.95
    L13_2(L14_2, L15_2)
    L13_2 = L12_2.priceText
    L14_2 = L12_2.h
    L14_2 = L14_2 * 0.25
    L14_2 = L14_2 * L2_2
    L13_2.y = L14_2
    L13_2 = btnCount
    if L11_2 == L13_2 then
      L13_2 = L12_2.visible
      if L13_2 then
        L13_2 = A0_2.containsBox
        L14_2 = gamelua
        L14_2 = L14_2.screenWidth
        L14_2 = L14_2 / 2
        L13_2.x = L14_2
        L13_2 = A0_2.containsBox
        L14_2 = L12_2.y
        L13_2.y = L14_2
        L13_2 = A0_2.containsBox
        L14_2 = L12_2.x
        L15_2 = A0_2.containsBox
        L15_2 = L15_2.x
        L14_2 = L14_2 - L15_2
        L14_2 = L14_2 * 2
        L13_2.width = L14_2
        L13_2 = A0_2.containsBox
        L14_2 = L12_2.h
        L14_2 = L14_2 * 0.55
        L14_2 = L14_2 * L2_2
        L13_2.height = L14_2
        L13_2 = A0_2.containsBox
        L14_2 = L13_2
        L13_2 = L13_2.setScale
        L15_2 = L2_2
        L13_2(L14_2, L15_2)
      end
    end
    L13_2 = L12_2.amountText
    L14_2 = L12_2.amountText
    L14_2 = L14_2.xLayout
    if not L14_2 then
      L14_2 = 0
    end
    L14_2 = L14_2 * L2_2
    L13_2.x = L14_2
    L13_2 = L12_2.amountText
    L14_2 = L12_2.amountText
    L14_2 = L14_2.yLayout
    if not L14_2 then
      L14_2 = 0
    end
    L14_2 = L14_2 * L2_2
    L13_2.y = L14_2
    L13_2 = L12_2.infiniteIcon
    if L13_2 then
      L13_2 = L12_2.infiniteIcon
      L14_2 = -30 * L2_2
      L13_2.y = L14_2
    end
  end
  L9_2 = A0_2
  L8_2 = A0_2.updateTransition
  L10_2 = 0
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = ui
  L8_2 = L8_2.Frame
  L8_2 = L8_2.layout
  L9_2 = A0_2
  L8_2(L9_2)
end

L1_1.layout = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.transitionDirection
  if L3_2 or A2_2 then
    if not A2_2 then
      L3_2 = 3
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.min
      L5_2 = 1
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.max
      L7_2 = 0
      L8_2 = A0_2.transition
      L9_2 = A0_2.transitionDirection
      L9_2 = A1_2 * L9_2
      L9_2 = L9_2 * L3_2
      L8_2 = L8_2 + L9_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      A0_2.transition = L4_2
      L4_2 = A0_2.transitionDirection
      if L4_2 == -1 then
        L4_2 = A0_2.transition
        if L4_2 == 0 then
          A0_2.transitionDirection = 1
          L4_2 = A0_2.singlesCarousel
          L5_2 = A0_2.transitionTo
          L5_2 = L5_2 == "singles"
          L4_2.active = L5_2
          L4_2 = A0_2.bundlesCarousel
          L5_2 = A0_2.transitionTo
          L5_2 = L5_2 == "bundles"
          L4_2.active = L5_2
          L4_2 = A0_2.specialsCarousel
          L5_2 = A0_2.transitionTo
          L5_2 = L5_2 == "specials"
          L4_2.active = L5_2
          L4_2 = A0_2.transitionTo
          if L4_2 == "singles" then
            L4_2 = A0_2.singlesCarousel
            L5_2 = L4_2
            L4_2 = L4_2.initialSpin
            L4_2(L5_2)
            L4_2 = A0_2.helpBtn
            L4_2.visible = true
            L5_2 = A0_2
            L4_2 = A0_2.refreshBuyButtons
            L6_2 = A0_2.singlesCarousel
            L7_2 = L6_2
            L6_2 = L6_2.getCurrentItem
            L6_2 = L6_2(L7_2)
            L6_2 = L6_2.buyButtons
            L4_2(L5_2, L6_2)
            L4_2 = A0_2.headline
            L5_2 = L4_2
            L4_2 = L4_2.setText
            L6_2 = gamelua
            L6_2 = L6_2.getText
            L7_2 = "TEXT_SHOP_ALL_CHARACTERS"
            L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
            L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
          else
            L4_2 = A0_2.transitionTo
            if L4_2 == "bundles" then
              L4_2 = A0_2.bundlesCarousel
              L5_2 = L4_2
              L4_2 = L4_2.initialSpin
              L4_2(L5_2)
              L4_2 = A0_2.helpBtn
              L4_2.visible = true
              L5_2 = A0_2
              L4_2 = A0_2.refreshBuyButtons
              L6_2 = A0_2.bundlesCarousel
              L7_2 = L6_2
              L6_2 = L6_2.getCurrentItem
              L6_2 = L6_2(L7_2)
              L6_2 = L6_2.buyButtons
              L4_2(L5_2, L6_2)
              L4_2 = A0_2.headline
              L5_2 = L4_2
              L4_2 = L4_2.setText
              L6_2 = gamelua
              L6_2 = L6_2.getText
              L7_2 = "TEXT_SHOP_BUNDLES"
              L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
              L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
            else
              L4_2 = A0_2.transitionTo
              if L4_2 == "specials" then
                L4_2 = A0_2.specialsCarousel
                L5_2 = L4_2
                L4_2 = L4_2.initialSpin
                L4_2(L5_2)
                L4_2 = A0_2.helpBtn
                L4_2.visible = true
                L4_2 = A0_2.headline
                L5_2 = L4_2
                L4_2 = L4_2.setText
                L6_2 = gamelua
                L6_2 = L6_2.getText
                L7_2 = "TEXT_SHOP_SALE"
                L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
                L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                L4_2 = A0_2.specialsCarousel
                L5_2 = L4_2
                L4_2 = L4_2.getCurrentItem
                L4_2 = L4_2(L5_2)
                if L4_2 then
                  L6_2 = A0_2
                  L5_2 = A0_2.refreshBuyButtons
                  L7_2 = L4_2.buyButtons
                  L8_2 = L4_2.reduction
                  L5_2(L6_2, L7_2, L8_2)
                else
                  L6_2 = A0_2
                  L5_2 = A0_2.refreshBuyButtons
                  L7_2 = nil
                  L5_2(L6_2, L7_2)
                end
              end
            end
          end
      end
      else
        L4_2 = A0_2.transitionDirection
        if L4_2 == 1 then
          L4_2 = A0_2.transition
          if L4_2 == 1 then
            A0_2.transitionDirection = nil
            L4_2 = A0_2.descText
            L4_2.visible = true
            L4_2 = A0_2.headline
            L4_2.visible = true
            L4_2 = A0_2.transitionTo
            if L4_2 == "singles" then
              L5_2 = A0_2
              L4_2 = A0_2.refreshDescriptionText
              L6_2 = A0_2.singlesCarousel
              L7_2 = L6_2
              L6_2 = L6_2.getCurrentItem
              L6_2 = L6_2(L7_2)
              L6_2 = L6_2.description
              L4_2(L5_2, L6_2)
            else
              L4_2 = A0_2.transitionTo
              if L4_2 == "bundles" then
                L5_2 = A0_2
                L4_2 = A0_2.refreshDescriptionText
                L6_2 = A0_2.bundlesCarousel
                L7_2 = L6_2
                L6_2 = L6_2.getCurrentItem
                L6_2 = L6_2(L7_2)
                L6_2 = L6_2.description
                L4_2(L5_2, L6_2)
              else
                L4_2 = A0_2.transitionTo
                if L4_2 == "specials" then
                  L5_2 = A0_2
                  L4_2 = A0_2.refreshDescriptionText
                  L6_2 = A0_2.specialsCarousel
                  L7_2 = L6_2
                  L6_2 = L6_2.getCurrentItem
                  L6_2 = L6_2(L7_2)
                  L6_2 = L6_2.description
                  L4_2(L5_2, L6_2)
                end
              end
            end
          end
        end
      end
    end
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.sin
    L4_2 = A0_2.transition
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.pi
    L4_2 = L4_2 * L5_2
    L4_2 = L4_2 * 0.5
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.carouselTransition
    L4_2 = L4_2.start
    L5_2 = A0_2.carouselTransition
    L5_2 = L5_2.target
    L6_2 = A0_2.carouselTransition
    L6_2 = L6_2.start
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 * L3_2
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2.buyBtnTransition
    L5_2 = L5_2.start
    L6_2 = A0_2.buyBtnTransition
    L6_2 = L6_2.target
    L7_2 = A0_2.buyBtnTransition
    L7_2 = L7_2.start
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L6_2 = A0_2.singlesCarousel
    L7_2 = A0_2.carouselTransition
    L7_2 = L7_2.start
    L6_2.y = L7_2
    L6_2 = A0_2.bundlesCarousel
    L7_2 = A0_2.carouselTransition
    L7_2 = L7_2.start
    L6_2.y = L7_2
    L6_2 = A0_2.specialsCarousel
    L7_2 = A0_2.carouselTransition
    L7_2 = L7_2.start
    L6_2.y = L7_2
    L6_2 = A0_2.singlesCarousel
    L6_2 = L6_2.active
    if L6_2 then
      L6_2 = A0_2.singlesCarousel
      L6_2.y = L4_2
    end
    L6_2 = A0_2.bundlesCarousel
    L6_2 = L6_2.active
    if L6_2 then
      L6_2 = A0_2.bundlesCarousel
      L6_2.y = L4_2
    end
    L6_2 = A0_2.specialsCarousel
    L6_2 = L6_2.active
    if L6_2 then
      L6_2 = A0_2.specialsCarousel
      L6_2.y = L4_2
    end
    L6_2 = _G
    L6_2 = L6_2.ipairs
    L7_2 = A0_2.buyBtns
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L10_2.y = L5_2
    end
    L6_2 = A0_2.containsBox
    L6_2.y = L5_2
    L6_2 = A0_2.transition
    L3_2 = 1 - L6_2
    L6_2 = A0_2.transitionDirection
    if L6_2 == -1 then
      L6_2 = 1 - L3_2
      L3_2 = L6_2 + 1
    end
    L6_2 = L3_2 * 0.5
    L3_2 = 1 - L6_2
    L6_2 = 1365
    L7_2 = A0_2.transitionTo
    if L7_2 == "bundles" then
      L6_2 = -L6_2
    else
      L7_2 = A0_2.transitionTo
      if L7_2 == "specials" then
        L7_2 = A0_2.transitionToOld
        if L7_2 == "bundles" then
          L7_2 = L3_2 - 1
          L3_2 = -L7_2
          L6_2 = -L6_2
        else
          L3_2 = 1 - L3_2
        end
      end
    end
    L7_2 = gamelua
    L7_2 = L7_2.tweenEaseCubicInOut
    L8_2 = L3_2
    L9_2 = 0
    L10_2 = 1
    L11_2 = 1
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = L6_2 * L7_2
    L8_2 = A0_2.flashAnimation
    L9_2 = L8_2
    L8_2 = L8_2.offset
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end

L1_1.updateTransition = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.refreshScale
  if 0 <= L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.getUIScale
    L2_2 = L2_2()
    L3_2 = A0_2.refreshScale
    L4_2 = A1_2 * 5
    L3_2 = L3_2 - L4_2
    A0_2.refreshScale = L3_2
    L3_2 = A0_2.refreshScale
    if L3_2 < 0.5 then
      L3_2 = L3_2 * 2
    else
      L4_2 = 1 - L3_2
      L3_2 = L4_2 * 2
    end
    L4_2 = gamelua
    L4_2 = L4_2.tweenEaseCubicOut
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.max
    L6_2 = 0
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = 0
    L7_2 = 1
    L8_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = L4_2 * 0.1
    L4_2 = 0.95 + L4_2
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = A0_2.buyBtns
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L11_2 = L9_2
      L10_2 = L9_2.setScale
      L12_2 = L4_2 * L2_2
      L10_2(L11_2, L12_2)
    end
    L5_2 = A0_2.containsBox
    L6_2 = L5_2
    L5_2 = L5_2.setScale
    L7_2 = L4_2 * L2_2
    L5_2(L6_2, L7_2)
  end
end

L1_1.updateBuyButtonScale = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.transitionDirection = -1
  L2_2 = A0_2.transitionTo
  A0_2.transitionToOld = L2_2
  A0_2.transitionTo = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refreshDescriptionText
  L4_2 = ""
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.descText
  L2_2.visible = false
  L2_2 = A0_2.headline
  L2_2.visible = false
  L2_2 = A0_2.leftBtn
  L3_2 = L2_2
  L2_2 = L2_2.setVisible
  L4_2 = A1_2 == "bundles" or A1_2 == "specials"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.rightBtn
  L3_2 = L2_2
  L2_2 = L2_2.setVisible
  L4_2 = A1_2 == "singles" or A1_2 == "specials"
  L2_2(L3_2, L4_2)
  if A1_2 == "singles" then
    L2_2 = A0_2.rightBtn
    L2_2.returnValue = "GOTO_SPECIALS"
    L2_2 = A0_2.leftBtnText
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = ""
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.rightBtnText
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = gamelua
    L4_2 = L4_2.getText
    L5_2 = "TEXT_SHOP_SALE"
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  elseif A1_2 == "bundles" then
    L2_2 = A0_2.leftBtn
    L2_2.returnValue = "GOTO_SPECIALS"
    L2_2 = A0_2.leftBtnText
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = gamelua
    L4_2 = L4_2.getText
    L5_2 = "TEXT_SHOP_SALE"
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2.rightBtnText
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = ""
    L2_2(L3_2, L4_2)
  elseif A1_2 == "specials" then
    L2_2 = A0_2.leftBtn
    L2_2.returnValue = "GOTO_SINGLES"
    L2_2 = A0_2.rightBtn
    L2_2.returnValue = "GOTO_BUNDLES"
    L2_2 = A0_2.leftBtnText
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = gamelua
    L4_2 = L4_2.getText
    L5_2 = "TEXT_SHOP_ALL_CHARACTERS"
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2.rightBtnText
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = gamelua
    L4_2 = L4_2.getText
    L5_2 = "TEXT_SHOP_BUNDLES"
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.layout
  L2_2(L3_2)
end

L1_1.startTransitionTo = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2.singlesCarousel
  L2_2 = L2_2.active
  if L2_2 then
    L2_2 = A0_2.singlesCarousel
    L3_2 = L2_2
    L2_2 = L2_2.getCurrentItem
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2.bundlesCarousel
    L2_2 = L2_2.active
    if L2_2 then
      L2_2 = A0_2.bundlesCarousel
      L3_2 = L2_2
      L2_2 = L2_2.getCurrentItem
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2.specialsCarousel
      L2_2 = L2_2.active
      if L2_2 then
        L2_2 = A0_2.specialsCarousel
        L3_2 = L2_2
        L2_2 = L2_2.getCurrentItem
        L2_2 = L2_2(L3_2)
        L1_2 = L2_2
      end
    end
  end
  return L1_2
end

L1_1.getCurrentItem = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = 0
  L5_2 = A0_2.leftBtn
  L5_2 = L5_2.x
  L6_2 = A0_2.leftBtn
  L6_2 = L6_2.w
  L6_2 = L6_2 * L3_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.leftBtn
  L6_2 = L6_2.y
  L7_2 = A0_2.leftBtn
  L7_2 = L7_2.h
  L7_2 = L7_2 * L3_2
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.leftBtn
  L7_2 = L7_2.y
  L8_2 = A0_2.leftBtn
  L8_2 = L8_2.h
  L8_2 = L8_2 * L3_2
  L7_2 = L7_2 + L8_2
  L8_2 = A0_2.rightBtn
  L8_2 = L8_2.x
  L9_2 = A0_2.rightBtn
  L9_2 = L9_2.w
  L9_2 = L9_2 * L3_2
  L8_2 = L8_2 - L9_2
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L10_2 = A0_2.rightBtn
  L10_2 = L10_2.y
  L11_2 = A0_2.rightBtn
  L11_2 = L11_2.h
  L11_2 = L11_2 * L3_2
  L10_2 = L10_2 - L11_2
  L11_2 = A0_2.rightBtn
  L11_2 = L11_2.y
  L12_2 = A0_2.rightBtn
  L12_2 = L12_2.h
  L12_2 = L12_2 * L3_2
  L11_2 = L11_2 + L12_2
  if A1_2 >= L4_2 and A1_2 <= L5_2 and A2_2 >= L6_2 and A2_2 <= L7_2 then
    L12_2 = A0_2.leftBtn
    L12_2 = L12_2.x
    L13_2 = A0_2.leftBtn
    L13_2 = L13_2.y
    return L12_2, L13_2
  end
  if A1_2 >= L8_2 and A1_2 <= L9_2 and A2_2 >= L10_2 and A2_2 <= L11_2 then
    L12_2 = A0_2.rightBtn
    L12_2 = L12_2.x
    L13_2 = A0_2.rightBtn
    L13_2 = L13_2.y
    return L12_2, L13_2
  end
  L12_2 = nil
  L13_2 = nil
  return L12_2, L13_2
end

L1_1.hitTest = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2.bundle
  L4_2 = L4_2[1]
  L4_2 = L4_2.type
  if L4_2 == "unlimited" then
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.getAmount
    L6_2 = A1_2.bundle
    L6_2 = L6_2[1]
    L6_2 = L6_2.character
    L7_2 = "_unlimited"
    L6_2 = L6_2 .. L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if 4 <= L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.getCharacterDefinition
      L5_2 = A1_2.bundle
      L5_2 = L5_2[1]
      L5_2 = L5_2.character
      L4_2 = L4_2(L5_2)
      L5_2 = ui
      L5_2 = L5_2.ShopTutorial
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = {}
      L7_2.characterType = L4_2
      L8_2 = A1_2.bundle
      L8_2 = L8_2[1]
      L8_2 = L8_2.character
      L7_2.charName = L8_2
      L7_2.title = A2_2
      L8_2 = gamelua
      L8_2 = L8_2.getText
      L9_2 = "TEXT_SHOP_MAX_PERMANENT"
      L8_2 = L8_2(L9_2)
      L7_2.customBuyText = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = events
      L9_2 = L9_2.EID_PUSH_FRAME
      L8_2.id = L9_2
      L8_2.target = L5_2
      L6_2(L7_2, L8_2)
      return
    end
  end
  L4_2 = A1_2.price
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.getAmount
  L7_2 = "coins"
  L5_2 = L5_2(L6_2, L7_2)
  if L4_2 <= L5_2 then
    L4_2 = A1_2.bundle
    L4_2 = #L4_2
    if L4_2 == 1 then
      L4_2 = gamelua
      L4_2 = L4_2.getCharacterDefinition
      L5_2 = A1_2.bundle
      L5_2 = L5_2[1]
      L5_2 = L5_2.character
      L4_2 = L4_2(L5_2)
      L5_2 = ui
      L5_2 = L5_2.PurchaseConfirmationDialog
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = {}
      L7_2.characterType = L4_2
      L8_2 = gamelua
      L8_2 = L8_2.deepCopy
      L9_2 = A1_2
      L8_2 = L8_2(L9_2)
      L7_2.item = L8_2
      L7_2.title = A2_2
      L7_2.isBundle = false
      L7_2.isSale = A3_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = events
      L9_2 = L9_2.EID_PUSH_FRAME
      L8_2.id = L9_2
      L8_2.target = L5_2
      L6_2(L7_2, L8_2)
    else
      L4_2 = ui
      L4_2 = L4_2.PurchaseConfirmationDialog
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.deepCopy
      L8_2 = A1_2
      L7_2 = L7_2(L8_2)
      L6_2.item = L7_2
      L6_2.title = A2_2
      L6_2.isBundle = true
      L6_2.isSale = A3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = gamelua
      L5_2 = L5_2.eventManager
      L6_2 = L5_2
      L5_2 = L5_2.notify
      L7_2 = {}
      L8_2 = events
      L8_2 = L8_2.EID_PUSH_FRAME
      L7_2.id = L8_2
      L7_2.target = L4_2
      L5_2(L6_2, L7_2)
    end
  else
    L4_2 = ui
    L4_2 = L4_2.PurchaseRedirectDialog
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L7_2 = A1_2.price
    L8_2 = gamelua
    L8_2 = L8_2.SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.getAmount
    L10_2 = "coins"
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L7_2 - L8_2
    L6_2.missingCoins = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = gamelua
    L5_2 = L5_2.eventManager
    L6_2 = L5_2
    L5_2 = L5_2.notify
    L7_2 = {}
    L8_2 = gamelua
    L8_2 = L8_2.events
    L8_2 = L8_2.EID_PUSH_FRAME
    L7_2.id = L8_2
    L7_2.target = L4_2
    L5_2(L6_2, L7_2)
  end
end

L1_1.showPrompt = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = A0_2
  L4_2 = A0_2.hitTest
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 and L5_2 then
    A2_2 = L4_2
    A3_2 = L5_2
  end
  L6_2 = ui
  L6_2 = L6_2.Frame
  L6_2 = L6_2.onPointerEvent
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 == "BUY" then
    L9_2 = A0_2.transitionDirection
    if not L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.getCurrentItem
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.description
      L11_2 = A0_2
      L10_2 = A0_2.showPrompt
      L12_2 = L8_2
      L13_2 = L9_2
      L14_2 = _G
      L14_2 = L14_2.tostring
      L15_2 = A0_2.transitionTo
      L15_2 = L15_2 == "specials"
      L14_2, L15_2, L16_2 = L14_2(L15_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  elseif L6_2 == "GOTO_SINGLES" then
    L10_2 = A0_2
    L9_2 = A0_2.startTransitionTo
    L11_2 = "singles"
    L9_2(L10_2, L11_2)
  elseif L6_2 == "GOTO_BUNDLES" then
    L10_2 = A0_2
    L9_2 = A0_2.startTransitionTo
    L11_2 = "bundles"
    L9_2(L10_2, L11_2)
  elseif L6_2 == "GOTO_SPECIALS" then
    L10_2 = A0_2
    L9_2 = A0_2.startTransitionTo
    L11_2 = "specials"
    L9_2(L10_2, L11_2)
  elseif L6_2 == "HELP" then
    L10_2 = A0_2
    L9_2 = A0_2.getCurrentItem
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.buyButtons
    L10_2 = L10_2[1]
    L11_2 = L10_2.bundle
    L11_2 = #L11_2
    if L11_2 == 1 then
      L11_2 = gamelua
      L11_2 = L11_2.getCharacterDefinition
      L12_2 = L10_2.bundle
      L12_2 = L12_2[1]
      L12_2 = L12_2.character
      L11_2 = L11_2(L12_2)
      L12_2 = ui
      L12_2 = L12_2.ShopTutorial
      L13_2 = L12_2
      L12_2 = L12_2.new
      L14_2 = {}
      L14_2.characterType = L11_2
      L15_2 = L10_2.bundle
      L15_2 = L15_2[1]
      L15_2 = L15_2.character
      L14_2.charName = L15_2
      L15_2 = gamelua
      L15_2 = L15_2.getLocalizedText
      L16_2 = L9_2.description
      L15_2 = L15_2(L16_2)
      L14_2.title = L15_2
      L14_2.isBundle = false
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = gamelua
      L13_2 = L13_2.eventManager
      L14_2 = L13_2
      L13_2 = L13_2.notify
      L15_2 = {}
      L16_2 = events
      L16_2 = L16_2.EID_PUSH_FRAME
      L15_2.id = L16_2
      L15_2.target = L12_2
      L13_2(L14_2, L15_2)
    else
      L11_2 = ui
      L11_2 = L11_2.ShopTutorial
      L12_2 = L11_2
      L11_2 = L11_2.new
      L13_2 = {}
      L13_2.item = L10_2
      L14_2 = gamelua
      L14_2 = L14_2.getLocalizedText
      L15_2 = L9_2.description
      L14_2 = L14_2(L15_2)
      L13_2.title = L14_2
      L13_2.isBundle = true
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = gamelua
      L12_2 = L12_2.eventManager
      L13_2 = L12_2
      L12_2 = L12_2.notify
      L14_2 = {}
      L15_2 = events
      L15_2 = L15_2.EID_PUSH_FRAME
      L14_2.id = L15_2
      L14_2.target = L11_2
      L12_2(L13_2, L14_2)
    end
  elseif L6_2 == "GOTO_COINS" then
    L9_2 = ui
    L9_2 = L9_2.CoinsPage
    L10_2 = L9_2
    L9_2 = L9_2.new
    L9_2 = L9_2(L10_2)
    L10_2 = gamelua
    L10_2 = L10_2.eventManager
    L11_2 = L10_2
    L10_2 = L10_2.notify
    L12_2 = {}
    L13_2 = gamelua
    L13_2 = L13_2.events
    L13_2 = L13_2.EID_PUSH_FRAME
    L12_2.id = L13_2
    L12_2.target = L9_2
    L10_2(L11_2, L12_2)
  elseif L6_2 == "CLOSE" then
    L10_2 = A0_2
    L9_2 = A0_2.close
    L9_2(L10_2)
  end
  L9_2 = -1
  return L9_2
end

L1_1.onPointerEvent = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.singlesCarousel
  L1_2 = L1_2.active
  if L1_2 then
    L1_2 = "singles"
    return L1_2
  else
    L1_2 = A0_2.bundlesCarousel
    L1_2 = L1_2.active
    if L1_2 then
      L1_2 = "bundles"
      return L1_2
    else
      L1_2 = A0_2.specialsCarousel
      L1_2 = L1_2.active
      if L1_2 then
        L1_2 = "specials"
        return L1_2
      end
    end
  end
end

L1_1.getActiveCarousel = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getActiveCarousel
  L5_2 = L5_2(L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "RIGHT" then
      if L5_2 == "singles" then
        L6_2 = gamelua
        L6_2 = L6_2.playAudio
        L7_2 = "ButtonProceed"
        L6_2(L7_2)
        L7_2 = A0_2
        L6_2 = A0_2.startTransitionTo
        L8_2 = "specials"
        L6_2(L7_2, L8_2)
      elseif L5_2 == "specials" then
        L6_2 = gamelua
        L6_2 = L6_2.playAudio
        L7_2 = "ButtonProceed"
        L6_2(L7_2)
        L7_2 = A0_2
        L6_2 = A0_2.startTransitionTo
        L8_2 = "bundles"
        L6_2(L7_2, L8_2)
      end
    elseif A2_2 == "LEFT" then
      if L5_2 == "bundles" then
        L6_2 = gamelua
        L6_2 = L6_2.playAudio
        L7_2 = "ButtonProceed"
        L6_2(L7_2)
        L7_2 = A0_2
        L6_2 = A0_2.startTransitionTo
        L8_2 = "specials"
        L6_2(L7_2, L8_2)
      elseif L5_2 == "specials" then
        L6_2 = gamelua
        L6_2 = L6_2.playAudio
        L7_2 = "ButtonProceed"
        L6_2(L7_2)
        L7_2 = A0_2
        L6_2 = A0_2.startTransitionTo
        L8_2 = "singles"
        L6_2(L7_2, L8_2)
      end
    elseif A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonBack"
      L6_2(L7_2)
      L7_2 = A0_2
      L6_2 = A0_2.close
      L6_2(L7_2)
    elseif A2_2 == "S" then
      L6_2 = L3_2
      L7_2 = L4_2
      L8_2 = item
      return L6_2, L7_2, L8_2
    end
  end
  L6_2 = -1
  return L6_2
end

L1_1.onKeyEvent = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_REFRESH_OFFERS
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.refreshDescriptionText
    L4_2 = A1_2.descriptionText
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.refreshBuyButtons
    L4_2 = A1_2.buyButtons
    L5_2 = A1_2.reduction
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A1_2.id
    L3_2 = events
    L3_2 = L3_2.EID_SHOP_CONFIRM_PURCHASE
    if L2_2 == L3_2 then
      L2_2 = A1_2.item
      L3_2 = gamelua
      L3_2 = L3_2.addCoins
      L4_2 = L2_2.price
      L4_2 = -L4_2
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2 = L3_2.addBundle
      L4_2 = L2_2.bundle
      L5_2 = "Shop"
      L6_2 = A1_2.title
      L7_2 = A1_2.isSale
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = gamelua
      L3_2 = L3_2.eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_CHARACTER_MENU_REFRESH
      L5_2.id = L6_2
      L3_2(L4_2, L5_2)
      L3_2 = gamelua
      L3_2 = L3_2.eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = gamelua
      L6_2 = L6_2.events
      L6_2 = L6_2.EID_INVENTORY_USED
      L5_2.id = L6_2
      L5_2.typeOfItem = "coin"
      L6_2 = L2_2.price
      L5_2.amount = L6_2
      L5_2.typeOfUse = "Bought item from shop"
      L5_2.screen = "Shop"
      L5_2.iapType = "coin"
      L3_2(L4_2, L5_2)
      L3_2 = gamelua
      L3_2 = L3_2.screenWidth
      L3_2 = L3_2 * 0.5
      L4_2 = gamelua
      L4_2 = L4_2.screenHeight
      L4_2 = L4_2 * 0.27
      L5_2 = gamelua
      L5_2 = L5_2.putMenuParticles
      L6_2 = {}
      L6_2.x = L3_2
      L6_2.y = L4_2
      L6_2.particles = "buyingEffect1"
      L6_2.amount = 15
      L5_2(L6_2)
      L5_2 = gamelua
      L5_2 = L5_2.putMenuParticles
      L6_2 = {}
      L6_2.x = L3_2
      L6_2.y = L4_2
      L6_2.particles = "buyingEffect3"
      L6_2.amount = 15
      L5_2(L6_2)
      L5_2 = gamelua
      L5_2 = L5_2.playAudio
      L6_2 = "star_3"
      L5_2(L6_2)
      L5_2 = gamelua
      L5_2 = L5_2.RovioAccount
      if L5_2 then
        L5_2 = gamelua
        L5_2 = L5_2.RovioAccount
        L5_2 = L5_2.loginButtonBlocked
        if not L5_2 then
          L5_2 = gamelua
          L5_2 = L5_2.eventManager
          L6_2 = L5_2
          L5_2 = L5_2.notify
          L7_2 = {}
          L8_2 = events
          L8_2 = L8_2.EID_SYNC_CLOUD
          L7_2.id = L8_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end

L1_1.eventTriggered = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
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

L1_1.close = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.updateTransition
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.updateBuyButtonScale
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L1_1.update = L2_1
L1_1 = ShopFrame

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 1
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

L1_1.draw = L2_1
L1_1 = ShopFrame

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_REFRESH_OFFERS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CONFIRM_PURCHASE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setNewCreditsGained
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_SHOP_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ShopFrame
  L1_2.isShown = false
  L1_2 = ShopFrame
  L1_2.isInit = false
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L1_1.onExit = L2_1
L1_1 = ui
L1_1 = L1_1.Frame
L2_1 = L1_1
L1_1 = L1_1.inherit
L1_1 = L1_1(L2_1)
ShopItemContent = L1_1
L1_1 = ShopItemContent

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = "LIGHT"
  ::lbl_11::
  A0_2.suffix = L1_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.background = L1_2
  L1_2 = A0_2.background
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
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.background
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.DummyText
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "headerText"
  L4_2 = gamelua
  L4_2 = L4_2.getText
  L5_2 = "TEXT_SHOP_INCLUDES"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.header = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.header
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.shopSaleTag = L1_2
  L1_2 = A0_2.shopSaleTag
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ICON_SHOP_SALE_TAG"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.shopSaleTag
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "headline"
  L4_2.text = ""
  L5_2 = gamelua
  L5_2 = L5_2.getFontPrice
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.tagText = L2_2
  L1_2 = A0_2.shopSaleTag
  L1_2 = L1_2.tagText
  L2_2 = L1_2
  L1_2 = L1_2.setScale
  L3_2 = 1.5
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.shopSaleTag
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.shopSaleTag
  L3_2 = L3_2.tagText
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.shopSaleTag
  L1_2(L2_2, L3_2)
  A0_2.width = 0
  A0_2.height = 0
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L1_1.init = L2_1
L1_1 = ShopItemContent

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.shopSaleTag
  L4_2 = L3_2
  L3_2 = L3_2.setScale
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.sin
  L6_2 = A2_2 * 3
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * 0.05
  L5_2 = L5_2 + 1
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L1_1.update = L2_1
L1_1 = ShopItemContent

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if not A1_2 then
    return
  end
  L3_2 = A0_2.currentContentData
  if L3_2 then
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = A0_2.currentContentData
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = A0_2
      L8_2 = A0_2.removeChild
      L11_2 = A0_2
      L10_2 = A0_2.getChild
      L12_2 = "contentImage"
      L13_2 = L6_2
      L12_2 = L12_2 .. L13_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L9_2 = A0_2
      L8_2 = A0_2.removeChild
      L11_2 = A0_2
      L10_2 = A0_2.getChild
      L12_2 = "amountBg"
      L13_2 = L6_2
      L12_2 = L12_2 .. L13_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L9_2 = A0_2
      L8_2 = A0_2.removeChild
      L11_2 = A0_2
      L10_2 = A0_2.getChild
      L12_2 = "amountText"
      L13_2 = L6_2
      L12_2 = L12_2 .. L13_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.character
    L9_2 = L7_2.amount
    L10_2 = gamelua
    L10_2 = L10_2.Characters
    L10_2 = L10_2.list
    L10_2 = L10_2[L8_2]
    L11_2 = L10_2.button
    L12_2 = ui
    L12_2 = L12_2.Image
    L13_2 = L12_2
    L12_2 = L12_2.new
    L12_2 = L12_2(L13_2)
    L13_2 = "contentImage"
    L14_2 = L6_2
    L13_2 = L13_2 .. L14_2
    L12_2.name = L13_2
    L14_2 = L12_2
    L13_2 = L12_2.setImage
    L15_2 = L11_2
    L13_2(L14_2, L15_2)
    L14_2 = A0_2
    L13_2 = A0_2.addChild
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L13_2 = ui
    L13_2 = L13_2.Image
    L14_2 = L13_2
    L13_2 = L13_2.new
    L15_2 = {}
    L16_2 = "amountBg"
    L17_2 = L6_2
    L16_2 = L16_2 .. L17_2
    L15_2.name = L16_2
    L13_2 = L13_2(L14_2, L15_2)
    L15_2 = L13_2
    L14_2 = L13_2.setImage
    L16_2 = gamelua
    L16_2 = L16_2.getButtonImageName
    L17_2 = "characterMenuCounterBox"
    L18_2 = L10_2.isSith
    L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
    L14_2(L15_2, L16_2, L17_2, L18_2)
    L15_2 = L12_2
    L14_2 = L12_2.addChild
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = L7_2.type
    if L14_2 == "unlimited" then
      L14_2 = "\194\167"
      if L14_2 then
        goto lbl_92
      end
    end
    L14_2 = "+"
    L15_2 = _G
    L15_2 = L15_2.tostring
    L16_2 = L9_2
    L15_2 = L15_2(L16_2)
    L14_2 = L14_2 .. L15_2
    ::lbl_92::
    L15_2 = ui
    L15_2 = L15_2.Text
    L16_2 = L15_2
    L15_2 = L15_2.new
    L17_2 = {}
    L17_2.text = L14_2
    L18_2 = gamelua
    L18_2 = L18_2.getFontBasic
    L18_2 = L18_2()
    L17_2.font = L18_2
    L18_2 = L7_2.type
    L18_2 = L18_2 == "unlimited"
    L17_2.infinite = L18_2
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = "amountText"
    L17_2 = L6_2
    L16_2 = L16_2 .. L17_2
    L15_2.name = L16_2
    L17_2 = L13_2
    L16_2 = L13_2.addChild
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
  end
  if A2_2 then
    L3_2 = A0_2.shopSaleTag
    L3_2 = L3_2.tagText
    L4_2 = L3_2
    L3_2 = L3_2.setText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.shopSaleTag
    L3_2.visible = true
  else
    L3_2 = A0_2.shopSaleTag
    L3_2.visible = false
  end
  A0_2.currentContentData = A1_2
  L4_2 = A0_2
  L3_2 = A0_2.layout
  L3_2(L4_2)
end

L1_1.setData = L2_1
L1_1 = ShopItemContent

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = A0_2.scaleX
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = A0_2.scaleY
  if not L2_2 then
    L2_2 = 1
  end
  L3_2 = 10
  L4_2 = 20
  L5_2 = gamelua
  L5_2 = L5_2.getFontScale
  L5_2 = L5_2()
  L6_2 = gamelua
  L6_2 = L6_2.getUIScale
  L6_2 = L6_2()
  L7_2 = A0_2.currentContentData
  if L7_2 then
    L7_2 = A0_2.currentContentData
    L7_2 = #L7_2
    if 0 < L7_2 then
      L7_2 = A0_2.width
      L7_2 = -L7_2
      L7_2 = L7_2 / 2
      L8_2 = A0_2.width
      L8_2 = L8_2 * 0.9
      L9_2 = A0_2.currentContentData
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L8_2 = L8_2 / L9_2
      L9_2 = _G
      L9_2 = L9_2.ipairs
      L10_2 = A0_2.currentContentData
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L15_2 = A0_2
        L14_2 = A0_2.getChild
        L16_2 = "contentImage"
        L17_2 = L12_2
        L16_2 = L16_2 .. L17_2
        L14_2 = L14_2(L15_2, L16_2)
        L7_2 = L7_2 + L8_2
        L14_2.x = L7_2
        L15_2 = A0_2.height
        L15_2 = L15_2 / 6
        L14_2.y = L15_2
        L16_2 = L14_2
        L15_2 = L14_2.getChild
        L17_2 = "amountBg"
        L18_2 = L12_2
        L17_2 = L17_2 .. L18_2
        L15_2 = L15_2(L16_2, L17_2)
        L16_2 = _G
        L16_2 = L16_2.res
        L16_2 = L16_2.getSpriteBounds
        L17_2 = "BTN_BG_LIGHT"
        L16_2, L17_2 = L16_2(L17_2)
        L18_2 = 0.35 * L16_2
        L18_2 = L18_2 * L6_2
        L15_2.x = L18_2
        L18_2 = 0.35 * L17_2
        L18_2 = L18_2 * L6_2
        L15_2.y = L18_2
        L19_2 = L15_2
        L18_2 = L15_2.getChild
        L20_2 = "amountText"
        L21_2 = L12_2
        L20_2 = L20_2 .. L21_2
        L18_2 = L18_2(L19_2, L20_2)
        L19_2 = L18_2.infinite
        if L19_2 then
          L20_2 = L18_2
          L19_2 = L18_2.setScale
          L21_2 = 2.3
          L19_2(L20_2, L21_2)
        else
          L20_2 = L18_2
          L19_2 = L18_2.setScale
          L21_2 = 1.5
          L19_2(L20_2, L21_2)
        end
      end
    end
  end
  L7_2 = A0_2.background
  L8_2 = L7_2
  L7_2 = L7_2.setSize
  L9_2 = A0_2.width
  L10_2 = A0_2.height
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2.background
  L8_2 = L7_2
  L7_2 = L7_2.getSize
  L7_2, L8_2 = L7_2(L8_2)
  L9_2 = gamelua
  L9_2 = L9_2.setFont
  L10_2 = gamelua
  L10_2 = L10_2.getFontBasic
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getStringWidth
  L10_2 = A0_2.header
  L10_2 = L10_2.text
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 * L5_2
  L9_2 = L9_2 * 0.8
  L10_2 = A0_2.header
  L11_2 = -L7_2
  L11_2 = L11_2 / 2
  L12_2 = L9_2 * 0.5
  L11_2 = L11_2 + L12_2
  L12_2 = L4_2 * L6_2
  L11_2 = L11_2 + L12_2
  L10_2.x = L11_2
  L10_2 = A0_2.header
  L11_2 = -L8_2
  L11_2 = L11_2 / 2
  L12_2 = A0_2.header
  L13_2 = L12_2
  L12_2 = L12_2.getFontLeading
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2 * 0.5
  L12_2 = L12_2 * L5_2
  L12_2 = L12_2 * 0.8
  L11_2 = L11_2 + L12_2
  L12_2 = L3_2 * L6_2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L10_2 = A0_2.header
  L11_2 = L10_2
  L10_2 = L10_2.setScale
  L12_2 = 0.9
  L10_2(L11_2, L12_2)
  L10_2 = gamelua
  L10_2 = L10_2.getUIScale
  L10_2 = L10_2()
  L11_2 = A0_2.shopSaleTag
  L12_2 = -300 * L10_2
  L11_2.x = L12_2
  L11_2 = A0_2.shopSaleTag
  L12_2 = 50 * L10_2
  L11_2.y = L12_2
  L11_2 = ui
  L11_2 = L11_2.Frame
  L11_2 = L11_2.layout
  L12_2 = A0_2
  L11_2(L12_2)
end

L1_1.layout = L2_1
L1_1 = ui
L1_1 = L1_1.Frame
L2_1 = L1_1
L1_1 = L1_1.inherit
L1_1 = L1_1(L2_1)
ShopClaimScreen = L1_1
L1_1 = ShopClaimScreen
L1_1.isShown = false
L1_1 = ShopClaimScreen

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "claimBtnShine"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.claimBtnShine = L1_2
  L1_2 = A0_2.claimBtnShine
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "GOLD_SHINE_1"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.claimBtnShine
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.ClaimRewardButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "claimBtn"
  L3_2.returnValue = "CLAIM"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.claimBtn = L1_2
  L1_2 = A0_2.claimBtn
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "claimText"
  L5_2 = [[
Claim
Reward
]]
  L6_2 = A0_2.claimableAmount
  L5_2 = L5_2 .. L6_2
  L4_2.text = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.claimText = L2_2
  L1_2 = A0_2.claimBtn
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.claimBtn
  L3_2 = L3_2.claimText
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.claimBtn
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L1_1.init = L2_1
L1_1 = ShopClaimScreen

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.alpha = 0.8
  L1_2 = A0_2.alpha
  A0_2.alphaOrig = L1_2
  L1_2 = ShopClaimScreen
  L1_2.isShown = true
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_SHOP_CLAIM_SCREEN_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L1_1.onEntry = L2_1
L1_1 = ShopClaimScreen

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ShopClaimScreen
  L1_2.isShown = false
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_SHOP_CLAIM_SCREEN_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L1_1.onExit = L2_1
L1_1 = ShopClaimScreen

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if A1_2 == "LRELEASE" then
    L7_2 = A0_2.claimBtn
    L8_2 = L7_2
    L7_2 = L7_2.openBox
    
    function L9_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3.fadeoutTimer = 0.5
      L0_3 = A0_2
      L1_3 = A0_2
      L1_3 = L1_3.fadeoutTimer
      L0_3.fadeoutTimerOrig = L1_3
    end
    
    L7_2(L8_2, L9_2)
  end
  L7_2 = -1
  return L7_2
end

L1_1.onPointerEvent = L2_1
L1_1 = ShopClaimScreen

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" or A2_2 == "RETURN") then
    L5_2 = A0_2.claimBtn
    L6_2 = L5_2
    L5_2 = L5_2.openBox
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3.fadeoutTimer = 0.5
      L0_3 = A0_2
      L1_3 = A0_2
      L1_3 = L1_3.fadeoutTimer
      L0_3.fadeoutTimerOrig = L1_3
    end
    
    L5_2(L6_2, L7_2)
  end
  L5_2 = -1
  return L5_2
end

L1_1.onKeyEvent = L2_1
L1_1 = ShopClaimScreen

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = A0_2.claimBtn
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L3_2 = L3_2 * 0.5
  L2_2.x = L3_2
  L2_2 = A0_2.claimBtn
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L3_2 = L3_2 * 0.5
  L2_2.y = L3_2
  L2_2 = A0_2.claimBtn
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.claimBtnShine
  L3_2 = A0_2.claimBtn
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.claimBtnShine
  L3_2 = A0_2.claimBtn
  L3_2 = L3_2.y
  L2_2.y = L3_2
  L2_2 = A0_2.claimBtnShine
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

L1_1.layout = L2_1
L1_1 = ShopClaimScreen

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.claimBtn
  if L3_2 then
    L3_2 = A0_2.claimBtnShine
    L4_2 = A0_2.claimBtnShine
    L4_2 = L4_2.angle
    L4_2 = L4_2 + A1_2
    L3_2.angle = L4_2
  end
  L3_2 = A0_2.fadeoutTimer
  if L3_2 then
    L3_2 = A0_2.fadeoutTimer
    L3_2 = L3_2 - A1_2
    A0_2.fadeoutTimer = L3_2
    L3_2 = A0_2.fadeoutTimer
    if L3_2 <= 0 then
      A0_2.fadeoutTimer = nil
      L3_2 = gamelua
      L3_2 = L3_2.eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_POP_FRAME
      L5_2.id = L6_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2.alphaOrig
      L4_2 = A0_2.fadeoutTimer
      L5_2 = A0_2.fadeoutTimerOrig
      L4_2 = L4_2 / L5_2
      L3_2 = L3_2 * L4_2
      A0_2.alpha = L3_2
      L3_2 = A0_2.claimBtn
      L4_2 = A0_2.alpha
      L3_2.alpha = L4_2
      L3_2 = A0_2.claimBtnShine
      L4_2 = A0_2.alpha
      L3_2.alpha = L4_2
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

L1_1.update = L2_1
L1_1 = ShopClaimScreen

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.alpha
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

L1_1.draw = L2_1
