local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ShopPromoPrompt = L0_1
L0_1 = ShopPromoPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2.name = "ShopPromoPrompt"
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = "LIGHT"
  ::lbl_12::
  A0_2.suffix = L1_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bgBox = L1_2
  L1_2 = A0_2.bgBox
  L2_2 = {}
  L3_2 = "TUTBOX_TOP_LEFT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.topLeft = L3_2
  L3_2 = "TUTBOX_TOP_MIDDLE_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.topMiddle = L3_2
  L3_2 = "TUTBOX_TOP_RIGHT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.topRight = L3_2
  L3_2 = "TUTBOX_MIDDLE_LEFT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.left = L3_2
  L3_2 = "TUTBOX_CENTER_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.center = L3_2
  L3_2 = "TUTBOX_MIDDLE_RIGHT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.right = L3_2
  L3_2 = "TUTBOX_BOTTOM_LEFT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.bottomLeft = L3_2
  L3_2 = "TUTBOX_BOTTOM_MIDDLE_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.bottomMiddle = L3_2
  L3_2 = "TUTBOX_BOTTOM_RIGHT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.bottomRight = L3_2
  L1_2.components = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.bgBox
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "close"
  L3_2.returnValue = "CLOSE"
  L3_2.clickSound = "ButtonBack"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.closeButton = L1_2
  L1_2 = A0_2.closeButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "buttonX"
  L5_2 = A0_2.suffix
  L5_2 = L5_2 == "SITH"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.closeButton
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "notice"
  L4_2 = gamelua
  L4_2 = L4_2.getText
  L5_2 = "TEXT_SHOP_PROMO_NOTICE"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L3_2.vanchor = "VCENTER"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.notice = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.notice
  L1_2(L2_2, L3_2)
  L1_2 = "#"
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getAmount
  L4_2 = "coins"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 .. L2_2
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "amount"
  L4_2.text = L1_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontIngameMoney
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.vanchor = "VCENTER"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.amount = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.amount
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "description"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_SHOP_PROMO_USE_TO_BUY"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.vanchor = "VCENTER"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.description = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.description
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.suffix
  if L2_2 == "LIGHT" then
    L2_2 = {}
    L3_2 = "Panaka"
    L4_2 = "Padawans"
    L5_2 = "JarJar"
    L6_2 = "Padme"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    A0_2.characters = L2_2
  else
    L2_2 = {}
    L3_2 = "TieFighterPilot"
    L4_2 = "ZamWesell"
    L5_2 = "BikerScout"
    L6_2 = "DarthVader"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    A0_2.characters = L2_2
  end
  L2_2 = {}
  A0_2.characterImages = L2_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.characters
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = gamelua
    L7_2 = L7_2.Characters
    L7_2 = L7_2.list
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.button
    L8_2 = ui
    L8_2 = L8_2.Image
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L11_2 = L6_2
    L12_2 = L5_2
    L11_2 = L11_2 .. L12_2
    L10_2.name = L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setImage
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.insert
    L10_2 = A0_2.characterImages
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L2_2 = ui
  L2_2 = L2_2.ShoppingUIFrame
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.coinButtonVisible = true
  L4_2.shopButtonVisible = true
  L4_2.arrowVisible = true
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.shoppingFrame = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.shoppingFrame
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.init = L1_1
L0_1 = ShopPromoPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.levelNumber
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.setLevelShopPromoShown
    L3_2 = A0_2.levelNumber
    L1_2(L2_2, L3_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.clearParticlesWithTagNative
  L2_2 = "MENU"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_SHOP_PROMO_OPEN
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ShopPromoPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_SHOP_PROMO_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = ShopPromoPrompt

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_OPENED
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.close
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end

L0_1.eventTriggered = L1_1
L0_1 = ShopPromoPrompt

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = gamelua
  L5_2 = L5_2.events
  L5_2 = L5_2.EID_POP_FRAME
  L4_2.id = L5_2
  L5_2 = A0_2.name
  L4_2.target = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.onContinueCall
  if L2_2 and not A1_2 then
    L2_2 = A0_2.onContinueCall
    L2_2()
  end
end

L0_1.close = L1_1
L0_1 = ShopPromoPrompt

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
  if A1_2 == "LRELEASE" and L4_2 == "CLOSE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = ShopPromoPrompt

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
L0_1 = ShopPromoPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = 20 * L1_2
  L4_2 = A0_2.bgBox
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 * 0.5
  L4_2.x = L5_2
  L4_2 = A0_2.bgBox
  L5_2 = gamelua
  L5_2 = L5_2.screenHeight
  L5_2 = L5_2 * 0.5
  L4_2.y = L5_2
  L4_2 = A0_2.bgBox
  L5_2 = L4_2
  L4_2 = L4_2.setSize
  L6_2 = 550 * L1_2
  L7_2 = 350 * L1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.bgBox
  L5_2 = L4_2
  L4_2 = L4_2.getSize
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = A0_2.closeButton
  L7_2 = A0_2.bgBox
  L7_2 = L7_2.x
  L8_2 = L4_2 * 0.5
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = A0_2.closeButton
  L7_2 = A0_2.bgBox
  L7_2 = L7_2.y
  L8_2 = L5_2 * 0.5
  L7_2 = L7_2 - L8_2
  L6_2.y = L7_2
  L6_2 = A0_2.closeButton
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.notice
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = L1_2 * 2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.notice
  L7_2 = A0_2.bgBox
  L7_2 = L7_2.x
  L6_2.x = L7_2
  L6_2 = A0_2.notice
  L7_2 = A0_2.bgBox
  L7_2 = L7_2.y
  L8_2 = L5_2 / 2
  L7_2 = L7_2 - L8_2
  L8_2 = A0_2.notice
  L9_2 = L8_2
  L8_2 = L8_2.getHeight
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * 0.5
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2 * 2
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L6_2 = A0_2.amount
  L7_2 = A0_2.bgBox
  L7_2 = L7_2.x
  L6_2.x = L7_2
  L6_2 = A0_2.amount
  L7_2 = A0_2.notice
  L7_2 = L7_2.y
  L8_2 = A0_2.notice
  L9_2 = L8_2
  L8_2 = L8_2.getHeight
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * L2_2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + L3_2
  L6_2.y = L7_2
  L6_2 = A0_2.amount
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = L1_2 * 2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.description
  L7_2 = A0_2.bgBox
  L7_2 = L7_2.x
  L6_2.x = L7_2
  L6_2 = A0_2.description
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = L1_2 * 2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.description
  L7_2 = L4_2 * 1.8
  L6_2.textBoxSize = L7_2
  L6_2 = A0_2.description
  L7_2 = A0_2.amount
  L7_2 = L7_2.y
  L8_2 = A0_2.amount
  L9_2 = L8_2
  L8_2 = L8_2.getHeight
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * L2_2
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2 * 2.5
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L6_2 = A0_2.bgBox
  L6_2 = L6_2.x
  L7_2 = L4_2 / 2
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.characterImages
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L7_2 = L4_2 / L7_2
  L8_2 = _G
  L8_2 = L8_2.ipairs
  L9_2 = A0_2.characterImages
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L6_2 = L6_2 + L7_2
    L12_2.x = L6_2
    L13_2 = A0_2.bgBox
    L13_2 = L13_2.y
    L14_2 = L5_2 * 0.55
    L13_2 = L13_2 + L14_2
    L14_2 = L12_2.h
    L14_2 = L14_2 * L1_2
    L13_2 = L13_2 - L14_2
    L12_2.y = L13_2
    L14_2 = L12_2
    L13_2 = L12_2.setScale
    L15_2 = L1_2
    L13_2(L14_2, L15_2)
  end
  L8_2 = ui
  L8_2 = L8_2.Frame
  L8_2 = L8_2.layout
  L9_2 = A0_2
  L8_2(L9_2)
end

L0_1.layout = L1_1
L0_1 = ShopPromoPrompt

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
