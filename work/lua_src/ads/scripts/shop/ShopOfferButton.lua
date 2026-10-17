local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ShopOfferButton = L0_1
L0_1 = ShopOfferButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.ImageButton
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = "ShopOfferButton"
  end
  A0_2.name = L1_2
  A0_2.hanchor = "HCENTER"
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgImage"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bgImage = L1_2
  L1_2 = "SHOP_BUNDLE_1"
  L2_2 = A0_2.backgroundIndex
  if L2_2 then
    L2_2 = "SHOP_BUNDLE_"
    L3_2 = A0_2.backgroundIndex
    L1_2 = L2_2 .. L3_2
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getSpriteBounds
    L3_2 = L1_2
    L2_2, L3_2 = L2_2(L3_2)
    if L2_2 == 0 and L3_2 == 0 then
      L1_2 = "SHOP_BUNDLE_1"
    end
  end
  L2_2 = A0_2.clickSound
  if not L2_2 then
    L2_2 = "ButtonProceed"
  end
  A0_2.clickSound = L2_2
  L2_2 = A0_2.bgImage
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2.x = 0
  A0_2.y = 0
  L2_2 = A0_2.width
  A0_2.w = L2_2
  L2_2 = A0_2.height
  A0_2.h = L2_2
  L2_2 = A0_2.width
  L2_2 = L2_2 * 0.5
  L3_2 = A0_2.height
  L3_2 = L3_2 * 0.5
  A0_2.py = L3_2
  A0_2.px = L2_2
  A0_2.activateOnRelease = true
  A0_2.image = ""
  A0_2.enabled = true
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bgImage
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "price"
  L5_2 = "#"
  L6_2 = A0_2.price
  L5_2 = L5_2 .. L6_2
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontIngameMoney
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.vanchor = "BOTTOM"
  L4_2.hanchor = "RIGHT"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.price = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.price
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2.characterIcons = L2_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.meta
  L3_2 = L3_2.buyButtons
  L3_2 = L3_2[1]
  L3_2 = L3_2.bundle
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = gamelua
    L7_2 = L7_2.getLocalizedText
    L8_2 = gamelua
    L8_2 = L8_2.getCharacterText
    L9_2 = L6_2.character
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = ui
    L8_2 = L8_2.Image
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L11_2 = "icon"
    L12_2 = L5_2
    L11_2 = L11_2 .. L12_2
    L10_2.name = L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setImage
    L11_2 = gamelua
    L11_2 = L11_2.Characters
    L11_2 = L11_2.list
    L12_2 = L6_2.character
    L11_2 = L11_2[L12_2]
    L11_2 = L11_2.button
    L9_2(L10_2, L11_2)
    L9_2 = ui
    L9_2 = L9_2.Image
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L12_2 = "amountBg"
    L13_2 = L5_2
    L12_2 = L12_2 .. L13_2
    L11_2.name = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.amountBgImage = L9_2
    L9_2 = L8_2.amountBgImage
    L10_2 = L9_2
    L9_2 = L9_2.setImage
    L11_2 = gamelua
    L11_2 = L11_2.getButtonImageName
    L12_2 = "characterMenuCounterBox"
    L13_2 = gamelua
    L13_2 = L13_2.Characters
    L13_2 = L13_2.list
    L14_2 = L6_2.character
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.isSith
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = ui
    L9_2 = L9_2.Text
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L12_2 = L6_2.type
    if L12_2 == "unlimited" then
      L12_2 = "\194\167"
      if L12_2 then
        goto lbl_161
      end
    end
    L12_2 = "+"
    L13_2 = _G
    L13_2 = L13_2.tostring
    L14_2 = L6_2.amount
    L13_2 = L13_2(L14_2)
    L12_2 = L12_2 .. L13_2
    if not L12_2 then
      L12_2 = ""
    end
    ::lbl_161::
    L11_2.text = L12_2
    L12_2 = gamelua
    L12_2 = L12_2.getFontBasic
    L12_2 = L12_2()
    L11_2.font = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.amountText = L9_2
    L9_2 = L8_2.amountText
    L10_2 = L6_2.type
    L10_2 = L10_2 == "unlimited"
    L9_2.isUnlimited = L10_2
    L9_2 = L8_2.amountText
    L10_2 = "amountText"
    L11_2 = L5_2
    L10_2 = L10_2 .. L11_2
    L9_2.name = L10_2
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.insert
    L10_2 = A0_2.characterIcons
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "title"
  L5_2 = gamelua
  L5_2 = L5_2.getFontHeadline
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.vanchor = "TOP"
  L4_2.hanchor = "LEFT"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.title = L2_2
  L2_2 = A0_2.bundle
  if L2_2 then
    L2_2 = A0_2.title
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = gamelua
    L4_2 = L4_2.getLocalizedText
    L5_2 = A0_2.meta
    L5_2 = L5_2.description
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  else
    L2_2 = A0_2.title
    L3_2 = L2_2
    L2_2 = L2_2.setText
    L4_2 = gamelua
    L4_2 = L4_2.getLocalizedText
    L5_2 = gamelua
    L5_2 = L5_2.getCharacterText
    L6_2 = A0_2.meta
    L6_2 = L6_2.description
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.title
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.reduction
  if L2_2 then
    L2_2 = ui
    L2_2 = L2_2.Image
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = {}
    L4_2.name = "saleIcon"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.saleIcon = L2_2
    L2_2 = A0_2.saleIcon
    L3_2 = L2_2
    L2_2 = L2_2.setImage
    L4_2 = "ICON_SHOP_SALE_TAG"
    L2_2(L3_2, L4_2)
    L2_2 = gamelua
    L2_2 = L2_2.ui
    L2_2 = L2_2.DummyText
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = {}
    L4_2.name = "saleText"
    L5_2 = A0_2.reduction
    L4_2.text = L5_2
    L5_2 = gamelua
    L5_2 = L5_2.getFontPrice
    L5_2 = L5_2()
    L4_2.font = L5_2
    L4_2.vanchor = "VCENTER"
    L4_2.hanchor = "HCENTER"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2.saleText = L2_2
  end
end

L0_1.init = L1_1
L0_1 = ShopOfferButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ShopOfferButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = ShopOfferButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.ScallableButton
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
L0_1 = ShopOfferButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = A0_2.scaleX
  L4_2 = A0_2.minScale
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2.width
  L4_2 = L4_2 * L3_2
  L5_2 = A0_2.height
  L5_2 = L5_2 * L3_2
  L6_2 = A0_2.bgImage
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = 1
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.title
  L7_2 = -L4_2
  L7_2 = L7_2 * 0.48
  L7_2 = L7_2 * L1_2
  L6_2.x = L7_2
  L6_2 = A0_2.title
  L7_2 = -L5_2
  L7_2 = L7_2 * 0.45
  L7_2 = L7_2 * L1_2
  L6_2.y = L7_2
  L6_2 = A0_2.title
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = 0.7
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.price
  L7_2 = L4_2 * 0.48
  L7_2 = L7_2 * L1_2
  L6_2.x = L7_2
  L6_2 = A0_2.price
  L7_2 = L5_2 * 0.42
  L7_2 = L7_2 * L1_2
  L6_2.y = L7_2
  L6_2 = A0_2.price
  L7_2 = L6_2
  L6_2 = L6_2.setScale
  L8_2 = 0.8
  L6_2(L7_2, L8_2)
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getSpriteBounds
  L7_2 = "BTN_CHARACTER_QUI_GON"
  L6_2, L7_2 = L6_2(L7_2)
  L8_2 = A0_2.characterIcons
  L8_2 = #L8_2
  L8_2 = L8_2 * L6_2
  L8_2 = L8_2 * 0.6
  L8_2 = L8_2 * L1_2
  L8_2 = L8_2 * L3_2
  L9_2 = _G
  L9_2 = L9_2.ipairs
  L10_2 = A0_2.characterIcons
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L15_2 = L13_2
    L14_2 = L13_2.setScale
    L16_2 = 0.6
    L14_2(L15_2, L16_2)
    L14_2 = -L4_2
    L14_2 = L14_2 * 0.025
    L15_2 = L6_2 * 0.4
    L15_2 = L15_2 * L1_2
    L15_2 = L15_2 * L3_2
    L14_2 = L14_2 + L15_2
    L15_2 = L12_2 - 1
    L15_2 = L15_2 * L6_2
    L15_2 = L15_2 * 0.6
    L15_2 = L15_2 * L1_2
    L15_2 = L15_2 * L3_2
    L14_2 = L14_2 + L15_2
    L15_2 = L8_2 * 0.5
    L14_2 = L14_2 - L15_2
    L13_2.x = L14_2
    L14_2 = L5_2 * 0.135
    L14_2 = L14_2 * L1_2
    L13_2.y = L14_2
    L14_2 = _G
    L14_2 = L14_2.res
    L14_2 = L14_2.getSpriteBounds
    L15_2 = "BTN_BG_LIGHT"
    L14_2, L15_2 = L14_2(L15_2)
    L16_2 = L13_2.amountBgImage
    L17_2 = L16_2
    L16_2 = L16_2.setScale
    L18_2 = L1_2
    L16_2(L17_2, L18_2)
    L16_2 = L13_2.amountBgImage
    L17_2 = 0.175 * L14_2
    L17_2 = L17_2 * L1_2
    L16_2.x = L17_2
    L16_2 = L13_2.amountBgImage
    L17_2 = 0.175 * L15_2
    L17_2 = L17_2 * L1_2
    L16_2.y = L17_2
    L16_2 = L13_2.amountText
    L17_2 = L16_2
    L16_2 = L16_2.setScale
    L18_2 = L1_2
    L16_2(L17_2, L18_2)
    L16_2 = L13_2.amountText
    L16_2 = L16_2.isUnlimited
    if L16_2 then
      L16_2 = L13_2.amountText
      L17_2 = L16_2
      L16_2 = L16_2.setScale
      L18_2 = 1.5 * L1_2
      L16_2(L17_2, L18_2)
    end
  end
  L9_2 = A0_2.saleIcon
  if L9_2 then
    L9_2 = A0_2.saleIcon
    L10_2 = L4_2 * 0.47
    L10_2 = L10_2 * L1_2
    L9_2.x = L10_2
    L9_2 = A0_2.saleIcon
    L10_2 = -L5_2
    L10_2 = L10_2 * 0.3
    L10_2 = L10_2 * L1_2
    L9_2.y = L10_2
    L9_2 = A0_2.saleIcon
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = 0.4
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.saleText
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = 1.75 * L1_2
    L9_2(L10_2, L11_2)
  end
  L9_2 = gamelua
  L9_2 = L9_2.ui
  L9_2 = L9_2.ScallableButton
  L9_2 = L9_2.layout
  L10_2 = A0_2
  L9_2(L10_2)
end

L0_1.layout = L1_1
L0_1 = ShopOfferButton

function L1_1(A0_2, A1_2, A2_2)
end

L0_1.draw = L1_1
L0_1 = ShopOfferButton

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

L0_1.drawBatch = L1_1
L0_1 = ShopOfferButton

function L1_1(A0_2, A1_2)
end

L0_1.eventTriggered = L1_1
L0_1 = ShopOfferButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.scaleX
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.ScallableButton
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.scaleX
  if L4_2 ~= L3_2 then
    L4_2 = A0_2.layout
    L5_2 = A0_2
    L4_2(L5_2)
  end
end

L0_1.update = L1_1
