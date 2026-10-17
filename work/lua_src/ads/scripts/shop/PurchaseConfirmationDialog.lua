local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
PurchaseConfirmationDialog = L0_1
L0_1 = PurchaseConfirmationDialog

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.alpha = 0.8
  A0_2.name = "PurchaseConfirmation"
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_18
    end
  end
  L1_2 = "LIGHT"
  ::lbl_18::
  A0_2.suffix = L1_2
  A0_2.hanchor = "HCENTER"
  A0_2.vanchor = "VCENTER"
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bgBox = L1_2
  L1_2 = ui
  L1_2 = L1_2.DummyText
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = A0_2.title
  L3_2.text = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getFontHeadline
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.titleText = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.titleText
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.DummyText
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getString
  L5_2 = "TEXTS_BASIC"
  L6_2 = "TEXT_SHOP_BUY_BUNDLE"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.text = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.buyText = L1_2
  L1_2 = A0_2.buyText
  L1_2.hanchor = "LEFT"
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.buyText
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.DummyText
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.getFontIngameMoney
  L4_2 = L4_2()
  L3_2.font = L4_2
  L3_2.hanchor = "LEFT"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.priceText = L1_2
  L1_2 = A0_2.priceText
  L1_2.hanchor = "LEFT"
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.priceText
  L1_2(L2_2, L3_2)
  A0_2.animation = nil
  A0_2.iconSprite = nil
  A0_2.PURCHASEPROMPT_BG_BOX_WIDTH = 660
  A0_2.PURCHASEPROMPT_BG_BOX_HEIGHT = 280
  L1_2 = A0_2.item
  if L1_2 then
    L1_2 = A0_2.isBundle
    if not L1_2 then
      A0_2.PURCHASEPROMPT_BG_BOX_WIDTH = 660
      A0_2.PURCHASEPROMPT_BG_BOX_HEIGHT = 500
      L1_2 = g_animations
      L2_2 = A0_2.characterType
      L1_2 = L1_2[L2_2]
      A0_2.tutorial = L1_2
      L1_2 = _G
      L1_2 = L1_2.ipairs
      L2_2 = A0_2.tutorial
      L2_2 = L2_2.events
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = L5_2.name
        if L6_2 == "TEST_FLASH" then
          L7_2 = A0_2
          L6_2 = A0_2.createFlashAnimation
          L8_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2)
          A0_2.animation = L6_2
        end
      end
      L1_2 = gamelua
      L1_2 = L1_2.isCharacterDarkSide
      L2_2 = A0_2.item
      L2_2 = L2_2.bundle
      L2_2 = L2_2[1]
      L2_2 = L2_2.character
      L1_2 = L1_2(L2_2)
      if L1_2 then
        A0_2.suffix = "SITH"
      else
        A0_2.suffix = "LIGHT"
      end
      L1_2 = A0_2.item
      L1_2 = L1_2.bundle
      L1_2 = L1_2[1]
      L1_2 = L1_2.amount
      L2_2 = A0_2.item
      L2_2 = L2_2.bundle
      L2_2 = L2_2[1]
      L2_2 = L2_2.type
      if L2_2 == "unlimited" then
        L3_2 = A0_2.buyText
        L4_2 = L3_2
        L3_2 = L3_2.setText
        L5_2 = gamelua
        L5_2 = L5_2.getText
        L6_2 = "TEXT_SHOP_BUY_PERMANENT"
        L5_2 = L5_2(L6_2)
        L6_2 = " "
        L5_2 = L5_2 .. L6_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = A0_2.buyText
        L4_2 = L3_2
        L3_2 = L3_2.setText
        L5_2 = gamelua
        L5_2 = L5_2.getText
        L6_2 = "TEXT_SHOP_BUY_PACK"
        L7_2 = {}
        L8_2 = "$PACK_SIZE"
        L9_2 = _G
        L9_2 = L9_2.tostring
        L10_2 = L1_2
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L7_2[3] = L10_2
        L7_2[4] = L11_2
        L7_2[5] = L12_2
        L7_2[6] = L13_2
        L7_2[7] = L14_2
        L7_2[8] = L15_2
        L7_2[9] = L16_2
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = " "
        L5_2 = L5_2 .. L6_2
        L3_2(L4_2, L5_2)
      end
      L3_2 = A0_2.priceText
      L4_2 = L3_2
      L3_2 = L3_2.setText
      L5_2 = "#"
      L6_2 = A0_2.item
      L6_2 = L6_2.price
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
      L3_2 = ui
      L3_2 = L3_2.Image
      L4_2 = L3_2
      L3_2 = L3_2.new
      L5_2 = {}
      L5_2.name = "iconImage"
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.iconImage = L3_2
      L3_2 = A0_2.iconImage
      L4_2 = L3_2
      L3_2 = L3_2.setImage
      L5_2 = gamelua
      L5_2 = L5_2.Characters
      L5_2 = L5_2.list
      L6_2 = A0_2.item
      L6_2 = L6_2.bundle
      L6_2 = L6_2[1]
      L6_2 = L6_2.character
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.button
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.addChild
      L5_2 = A0_2.iconImage
      L3_2(L4_2, L5_2)
      L3_2 = ui
      L3_2 = L3_2.Image
      L4_2 = L3_2
      L3_2 = L3_2.new
      L5_2 = {}
      L5_2.name = "sideImage"
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.sideImage = L3_2
      L3_2 = A0_2.sideImage
      L4_2 = L3_2
      L3_2 = L3_2.setImage
      L5_2 = gamelua
      L5_2 = L5_2.getButtonImageName
      L6_2 = "characterSideIcon"
      L7_2 = A0_2.suffix
      L7_2 = L7_2 == "SITH"
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2(L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L4_2 = A0_2
      L3_2 = A0_2.addChild
      L5_2 = A0_2.sideImage
      L3_2(L4_2, L5_2)
      L3_2 = ui
      L3_2 = L3_2.DummyText
      L4_2 = L3_2
      L3_2 = L3_2.new
      L5_2 = {}
      L6_2 = gamelua
      L6_2 = L6_2.getText
      L7_2 = "TEXT_SHOP_CHARACTER_"
      L8_2 = A0_2.suffix
      L7_2 = L7_2 .. L8_2
      L6_2 = L6_2(L7_2)
      L5_2.text = L6_2
      L6_2 = gamelua
      L6_2 = L6_2.getFontScore
      L6_2 = L6_2()
      L5_2.font = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.sideText = L3_2
      L4_2 = A0_2
      L3_2 = A0_2.addChild
      L5_2 = A0_2.sideText
      L3_2(L4_2, L5_2)
  end
  else
    L1_2 = A0_2.item
    if L1_2 then
      L1_2 = A0_2.item
      L1_2 = L1_2.bundle
      L1_2 = L1_2[1]
      L1_2 = L1_2.amount
      L2_2 = A0_2.buyText
      L3_2 = L2_2
      L2_2 = L2_2.setText
      L4_2 = _G
      L4_2 = L4_2.res
      L4_2 = L4_2.getString
      L5_2 = "TEXTS_BASIC"
      L6_2 = "TEXT_SHOP_BUY_BUNDLE"
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L2_2 = A0_2.priceText
      L3_2 = L2_2
      L2_2 = L2_2.setText
      L4_2 = " #"
      L5_2 = A0_2.item
      L5_2 = L5_2.price
      L4_2 = L4_2 .. L5_2
      L2_2(L3_2, L4_2)
      L2_2 = {}
      A0_2.characterImages = L2_2
      A0_2.allLight = true
      A0_2.allDark = true
      L2_2 = _G
      L2_2 = L2_2.ipairs
      L3_2 = A0_2.item
      L3_2 = L3_2.bundle
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2.character
        L8_2 = gamelua
        L8_2 = L8_2.Characters
        L8_2 = L8_2.list
        L8_2 = L8_2[L7_2]
        L9_2 = ui
        L9_2 = L9_2.Image
        L10_2 = L9_2
        L9_2 = L9_2.new
        L11_2 = {}
        L12_2 = L7_2
        L13_2 = L5_2
        L12_2 = L12_2 .. L13_2
        L11_2.name = L12_2
        L9_2 = L9_2(L10_2, L11_2)
        L11_2 = L9_2
        L10_2 = L9_2.setImage
        L12_2 = L8_2.button
        L10_2(L11_2, L12_2)
        L11_2 = A0_2
        L10_2 = A0_2.addChild
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
        L10_2 = ui
        L10_2 = L10_2.Image
        L11_2 = L10_2
        L10_2 = L10_2.new
        L12_2 = {}
        L13_2 = "amountBg"
        L14_2 = L5_2
        L13_2 = L13_2 .. L14_2
        L12_2.name = L13_2
        L10_2 = L10_2(L11_2, L12_2)
        L12_2 = L10_2
        L11_2 = L10_2.setImage
        L13_2 = gamelua
        L13_2 = L13_2.getButtonImageName
        L14_2 = "characterMenuCounterBox"
        L15_2 = L8_2.isSith
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2, L15_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        L12_2 = L9_2
        L11_2 = L9_2.addChild
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
        L11_2 = ui
        L11_2 = L11_2.Text
        L12_2 = L11_2
        L11_2 = L11_2.new
        L13_2 = {}
        L14_2 = L6_2.type
        if L14_2 == "unlimited" then
          L14_2 = "\194\167"
          if L14_2 then
            goto lbl_323
          end
        end
        L14_2 = "+"
        L15_2 = _G
        L15_2 = L15_2.tostring
        L16_2 = L6_2.amount
        L15_2 = L15_2(L16_2)
        L14_2 = L14_2 .. L15_2
        if not L14_2 then
          L14_2 = ""
        end
        ::lbl_323::
        L13_2.text = L14_2
        L14_2 = gamelua
        L14_2 = L14_2.getFontBasic
        L14_2 = L14_2()
        L13_2.font = L14_2
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = L6_2.type
        L12_2 = L12_2 == "unlimited"
        L11_2.isUnlimited = L12_2
        L12_2 = "amountText"
        L13_2 = L5_2
        L12_2 = L12_2 .. L13_2
        L11_2.name = L12_2
        L13_2 = L10_2
        L12_2 = L10_2.addChild
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
        L12_2 = _G
        L12_2 = L12_2.table
        L12_2 = L12_2.insert
        L13_2 = A0_2.characterImages
        L14_2 = L9_2
        L12_2(L13_2, L14_2)
        L12_2 = L8_2.isSith
        if L12_2 then
          A0_2.allLight = false
        else
          A0_2.allDark = false
        end
      end
      L2_2 = A0_2.allLight
      if L2_2 then
        A0_2.suffix = "LIGHT"
      end
      L2_2 = A0_2.allDark
      if L2_2 then
        A0_2.suffix = "SITH"
      end
      L2_2 = A0_2.allLight
      if not L2_2 then
        L2_2 = A0_2.allDark
        if not L2_2 then
          goto lbl_412
        end
      end
      L2_2 = ui
      L2_2 = L2_2.Image
      L3_2 = L2_2
      L2_2 = L2_2.new
      L4_2 = {}
      L4_2.name = "sideImage"
      L2_2 = L2_2(L3_2, L4_2)
      A0_2.sideImage = L2_2
      L2_2 = A0_2.sideImage
      L3_2 = L2_2
      L2_2 = L2_2.setImage
      L4_2 = gamelua
      L4_2 = L4_2.getButtonImageName
      L5_2 = "characterSideIcon"
      L6_2 = A0_2.suffix
      L6_2 = L6_2 == "SITH"
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L3_2 = A0_2
      L2_2 = A0_2.addChild
      L4_2 = A0_2.sideImage
      L2_2(L3_2, L4_2)
      L2_2 = ui
      L2_2 = L2_2.DummyText
      L3_2 = L2_2
      L2_2 = L2_2.new
      L4_2 = {}
      L5_2 = gamelua
      L5_2 = L5_2.getText
      L6_2 = "TEXT_SHOP_CHARACTERS_"
      L7_2 = A0_2.suffix
      L6_2 = L6_2 .. L7_2
      L5_2 = L5_2(L6_2)
      L4_2.text = L5_2
      L5_2 = gamelua
      L5_2 = L5_2.getFontScore
      L5_2 = L5_2()
      L4_2.font = L5_2
      L2_2 = L2_2(L3_2, L4_2)
      A0_2.sideText = L2_2
      L3_2 = A0_2
      L2_2 = A0_2.addChild
      L4_2 = A0_2.sideText
      L2_2(L3_2, L4_2)
    end
  end
  ::lbl_412::
  L1_2 = gamelua
  L1_2 = L1_2.deviceModel
  L1_2 = L1_2 == "windows"
  A0_2.confirmOnLeft = L1_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "cancel"
  L3_2.returnValue = "CANCEL_PURCHASE"
  L3_2.clickSound = "ButtonBack"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.cancelButton = L1_2
  L1_2 = A0_2.cancelButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "buttonX"
  L5_2 = A0_2.suffix
  L5_2 = L5_2 == "SITH"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L1_2 = A0_2.cancelButton
  L1_2.clickSound = "ButtonBack"
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.cancelButton
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "confirmm"
  L3_2.returnValue = "CONFIRM_PURCHASE"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.confirmButton = L1_2
  L1_2 = A0_2.confirmButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "buttonCheck"
  L5_2 = A0_2.suffix
  L5_2 = L5_2 == "SITH"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.confirmButton
  L1_2(L2_2, L3_2)
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
end

L0_1.init = L1_1
L0_1 = PurchaseConfirmationDialog

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A1_2.x
  L4_2 = L4_2(L5_2)
  if L4_2 == "function" then
    L4_2 = A1_2.x
    L4_2 = L4_2()
    if L4_2 then
      goto lbl_12
      L2_2 = L4_2 or L2_2
    end
  end
  L2_2 = A1_2.x
  ::lbl_12::
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A1_2.y
  L4_2 = L4_2(L5_2)
  if L4_2 == "function" then
    L4_2 = A1_2.y
    L4_2 = L4_2()
    if L4_2 then
      goto lbl_23
      L3_2 = L4_2 or L3_2
    end
  end
  L3_2 = A1_2.y
  ::lbl_23::
  L4_2 = {}
  L5_2 = A1_2.name
  L4_2.name = L5_2
  L5_2 = A1_2.file
  L4_2.file = L5_2
  L4_2.x = L2_2
  L4_2.y = L3_2
  L5_2 = A1_2.z
  L4_2.z = L5_2
  L4_2.scale = 0.62
  L5_2 = A1_2.flashActionName
  L4_2.flashActionName = L5_2
  return L4_2
end

L0_1.createFlashAnimation = L1_1
L0_1 = PurchaseConfirmationDialog

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.item
  if L1_2 then
    L1_2 = A0_2.isBundle
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.cutsceneLoad
      L2_2 = A0_2.animation
      L2_2 = L2_2.name
      L3_2 = A0_2.animation
      L3_2 = L3_2.file
      L1_2(L2_2, L3_2)
      L1_2 = gamelua
      L1_2 = L1_2.cutsceneStart
      L2_2 = A0_2.animation
      L2_2 = L2_2.name
      L3_2 = A0_2.animation
      L3_2 = L3_2.flashActionName
      L4_2 = "repeat"
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end

L0_1.onEntry = L1_1
L0_1 = PurchaseConfirmationDialog

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.isBundle
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.cutsceneClose
    L2_2 = A0_2.animation
    L2_2 = L2_2.name
    L1_2(L2_2)
  end
end

L0_1.onExit = L1_1
L0_1 = PurchaseConfirmationDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_POP_FRAME
      L6_2.id = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = gamelua
      L4_2 = L4_2.playAudio
      L5_2 = "ButtonBack"
      L4_2(L5_2)
    elseif A2_2 == "RETURN" then
      L4_2 = gamelua
      L4_2 = L4_2.playAudio
      L5_2 = "ButtonProceed"
      L4_2(L5_2)
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_POP_FRAME
      L6_2.id = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_SHOP_CONFIRM_PURCHASE
      L6_2.id = L7_2
      L7_2 = A0_2.item
      L6_2.item = L7_2
      L7_2 = A0_2.title
      L6_2.title = L7_2
      L7_2 = A0_2.isSale
      L6_2.isSale = L7_2
      L4_2(L5_2, L6_2)
    elseif A2_2 == "S" then
      L4_2 = L3_2
      L5_2 = meta
      L6_2 = item
      return L4_2, L5_2, L6_2
    end
  end
  L4_2 = -1
  return L4_2
end

L0_1.onKeyEvent = L1_1
L0_1 = PurchaseConfirmationDialog

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
    if L4_2 == "CANCEL_PURCHASE" then
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = gamelua
      L10_2 = L10_2.events
      L10_2 = L10_2.EID_POP_FRAME
      L9_2.id = L10_2
      L7_2(L8_2, L9_2)
    elseif L4_2 == "CONFIRM_PURCHASE" then
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = gamelua
      L10_2 = L10_2.events
      L10_2 = L10_2.EID_POP_FRAME
      L9_2.id = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = gamelua
      L10_2 = L10_2.events
      L10_2 = L10_2.EID_SHOP_CONFIRM_PURCHASE
      L9_2.id = L10_2
      L10_2 = A0_2.item
      L9_2.item = L10_2
      L10_2 = A0_2.title
      L9_2.title = L10_2
      L10_2 = A0_2.isSale
      L9_2.isSale = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = gamelua
      L10_2 = L10_2.events
      L10_2 = L10_2.EID_CLOSE_CHARACTER_PURCHASE_POPUP
      L9_2.id = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = PurchaseConfirmationDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = 20
  L4_2 = 20
  L5_2 = gamelua
  L5_2 = L5_2.getUIScale
  L5_2 = L5_2()
  L6_2 = gamelua
  L6_2 = L6_2.getFontScale
  L6_2 = L6_2()
  L7_2 = gamelua
  L7_2 = L7_2.screenWidth
  L7_2 = L7_2 * 0.5
  A0_2.x = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.5
  L8_2 = L4_2 * L5_2
  L7_2 = L7_2 - L8_2
  A0_2.y = L7_2
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.PURCHASEPROMPT_BG_BOX_WIDTH
  L8_2 = L8_2 * L5_2
  L7_2 = L7_2(L8_2)
  A0_2.width = L7_2
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.PURCHASEPROMPT_BG_BOX_HEIGHT
  L8_2 = L8_2 * L5_2
  L7_2 = L7_2(L8_2)
  A0_2.height = L7_2
  L7_2 = A0_2.bgBox
  L8_2 = A0_2.x
  L7_2.x = L8_2
  L7_2 = A0_2.bgBox
  L8_2 = A0_2.y
  L7_2.y = L8_2
  L7_2 = A0_2.bgBox
  L8_2 = L7_2
  L7_2 = L7_2.setSize
  L9_2 = A0_2.width
  L10_2 = A0_2.height
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2.bgBox
  L8_2 = L7_2
  L7_2 = L7_2.getSize
  L7_2, L8_2 = L7_2(L8_2)
  L9_2 = A0_2.cancelButton
  L10_2 = L7_2 * 0.35
  L10_2 = -L10_2
  L9_2.x = L10_2
  L9_2 = A0_2.cancelButton
  L10_2 = L8_2 * 0.5
  L9_2.y = L10_2
  L9_2 = A0_2.cancelButton
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L5_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.confirmButton
  L10_2 = L7_2 * 0.35
  L9_2.x = L10_2
  L9_2 = A0_2.confirmButton
  L10_2 = L8_2 * 0.5
  L9_2.y = L10_2
  L9_2 = A0_2.confirmButton
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L5_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.confirmOnLeft
  if L9_2 then
    L9_2 = A0_2.cancelButton
    L10_2 = A0_2.confirmButton
    L11_2 = A0_2.confirmButton
    L11_2 = L11_2.x
    L12_2 = A0_2.cancelButton
    L12_2 = L12_2.x
    L10_2.x = L12_2
    L9_2.x = L11_2
  end
  L9_2 = A0_2.priceText
  L10_2 = L9_2
  L9_2 = L9_2.getWidth
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2.buyText
  L11_2 = L10_2
  L10_2 = L10_2.getWidth
  L10_2 = L10_2(L11_2)
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 * L6_2
  L10_2 = gamelua
  L10_2 = L10_2.setFont
  L11_2 = A0_2.priceText
  L11_2 = L11_2.font
  L10_2(L11_2)
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.getStringWidth
  L11_2 = A0_2.priceText
  L11_2 = L11_2.text
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * L6_2
  L11_2 = gamelua
  L11_2 = L11_2.setFont
  L12_2 = A0_2.buyText
  L12_2 = L12_2.font
  L11_2(L12_2)
  L11_2 = A0_2.buyText
  L12_2 = L8_2 * 0.5
  L13_2 = A0_2.confirmButton
  L13_2 = L13_2.w
  L13_2 = L13_2 * L5_2
  L13_2 = L13_2 * 0.5
  L12_2 = L12_2 - L13_2
  L13_2 = A0_2.buyText
  L14_2 = L13_2
  L13_2 = L13_2.getFontLeading
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2 * 0.5
  L13_2 = L13_2 * L6_2
  L12_2 = L12_2 - L13_2
  L11_2.y = L12_2
  L11_2 = A0_2.buyText
  L12_2 = -L9_2
  L12_2 = L12_2 / 2
  L11_2.x = L12_2
  L11_2 = A0_2.buyText
  L12_2 = L11_2
  L11_2 = L11_2.setScale
  L13_2 = L5_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.priceText
  L12_2 = A0_2.buyText
  L12_2 = L12_2.y
  L11_2.y = L12_2
  L11_2 = A0_2.priceText
  L12_2 = A0_2.buyText
  L12_2 = L12_2.x
  L13_2 = A0_2.buyText
  L14_2 = L13_2
  L13_2 = L13_2.getWidth
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2 * L6_2
  L12_2 = L12_2 + L13_2
  L11_2.x = L12_2
  L11_2 = A0_2.priceText
  L12_2 = L11_2
  L11_2 = L11_2.setScale
  L13_2 = L5_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.titleText
  L12_2 = -L8_2
  L12_2 = L12_2 * 0.5
  L13_2 = A0_2.titleText
  L14_2 = L13_2
  L13_2 = L13_2.getFontLeading
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2 * 0.5
  L13_2 = L13_2 * L6_2
  L13_2 = L13_2 * 1.1
  L12_2 = L12_2 + L13_2
  L13_2 = L3_2 * L5_2
  L12_2 = L12_2 + L13_2
  L11_2.y = L12_2
  L11_2 = 630
  L12_2 = 1
  L13_2 = A0_2.titleText
  L14_2 = L13_2
  L13_2 = L13_2.getWidth
  L13_2 = L13_2(L14_2)
  if L11_2 < L13_2 then
    L13_2 = A0_2.titleText
    L14_2 = L13_2
    L13_2 = L13_2.getWidth
    L13_2 = L13_2(L14_2)
    L12_2 = L11_2 / L13_2
  end
  L13_2 = A0_2.titleText
  L14_2 = L13_2
  L13_2 = L13_2.setScale
  L15_2 = L5_2 * 1.4
  L15_2 = L15_2 * L12_2
  L13_2(L14_2, L15_2)
  L13_2 = A0_2.item
  if L13_2 then
    L13_2 = A0_2.isBundle
    if not L13_2 then
      L13_2 = A0_2.iconImage
      L14_2 = -L7_2
      L14_2 = L14_2 * 0.5
      L15_2 = A0_2.iconImage
      L15_2 = L15_2.w
      L15_2 = L15_2 * 0.65
      L15_2 = L15_2 * L5_2
      L14_2 = L14_2 + L15_2
      L13_2.x = L14_2
      L13_2 = A0_2.iconImage
      L14_2 = -L8_2
      L14_2 = L14_2 * 0.5
      L15_2 = A0_2.iconImage
      L15_2 = L15_2.h
      L15_2 = L15_2 * 0.65
      L15_2 = L15_2 * L5_2
      L14_2 = L14_2 + L15_2
      L13_2.y = L14_2
      L13_2 = A0_2.iconImage
      L14_2 = L13_2
      L13_2 = L13_2.setScale
      L15_2 = L5_2
      L13_2(L14_2, L15_2)
  end
  else
    L13_2 = A0_2.item
    if L13_2 then
      L13_2 = A0_2.width
      L13_2 = -L13_2
      L13_2 = L13_2 * 0.5
      L14_2 = A0_2.width
      L15_2 = A0_2.characterImages
      L15_2 = #L15_2
      L15_2 = L15_2 + 1
      L14_2 = L14_2 / L15_2
      L15_2 = A0_2.sideText
      if L15_2 then
        L15_2 = 20
        if L15_2 then
          goto lbl_224
        end
      end
      L15_2 = 0
      ::lbl_224::
      L16_2 = _G
      L16_2 = L16_2.ipairs
      L17_2 = A0_2.characterImages
      L16_2, L17_2, L18_2 = L16_2(L17_2)
      for L19_2, L20_2 in L16_2, L17_2, L18_2 do
        L21_2 = L13_2 + L14_2
        L20_2.x = L21_2
        L21_2 = L15_2 * L5_2
        L20_2.y = L21_2
        L13_2 = L13_2 + L14_2
        L21_2 = _G
        L21_2 = L21_2.res
        L21_2 = L21_2.getSpriteBounds
        L22_2 = "BTN_BG_LIGHT"
        L21_2, L22_2 = L21_2(L22_2)
        L24_2 = L20_2
        L23_2 = L20_2.getChild
        L25_2 = "amountBg"
        L26_2 = L19_2
        L25_2 = L25_2 .. L26_2
        L23_2 = L23_2(L24_2, L25_2)
        L24_2 = 0.35 * L21_2
        L24_2 = L24_2 * L5_2
        L23_2.x = L24_2
        L24_2 = 0.35 * L22_2
        L24_2 = L24_2 * L5_2
        L23_2.y = L24_2
        L25_2 = L23_2
        L24_2 = L23_2.getChild
        L26_2 = "amountText"
        L27_2 = L19_2
        L26_2 = L26_2 .. L27_2
        L24_2 = L24_2(L25_2, L26_2)
        L26_2 = L24_2
        L25_2 = L24_2.setScale
        L27_2 = 1.5
        L25_2(L26_2, L27_2)
        L25_2 = L24_2.isUnlimited
        if L25_2 then
          L26_2 = L24_2
          L25_2 = L24_2.setScale
          L27_2 = 2.5
          L25_2(L26_2, L27_2)
        end
        L26_2 = L20_2
        L25_2 = L20_2.setScale
        L27_2 = L5_2
        L25_2(L26_2, L27_2)
      end
    end
  end
  L13_2 = A0_2.sideImage
  if L13_2 then
    L13_2 = A0_2.sideImage
    L14_2 = L7_2 * 0.5
    L15_2 = A0_2.sideImage
    L15_2 = L15_2.w
    L15_2 = L15_2 * 0.5
    L15_2 = L15_2 * L5_2
    L14_2 = L14_2 - L15_2
    L15_2 = L3_2 * L5_2
    L14_2 = L14_2 - L15_2
    L13_2.x = L14_2
    L13_2 = A0_2.sideImage
    L14_2 = -L8_2
    L14_2 = L14_2 * 0.5
    L15_2 = A0_2.sideImage
    L15_2 = L15_2.h
    L15_2 = L15_2 * 0.5
    L15_2 = L15_2 * L5_2
    L14_2 = L14_2 + L15_2
    L15_2 = L3_2 * L5_2
    L14_2 = L14_2 + L15_2
    L13_2.y = L14_2
    L13_2 = A0_2.sideImage
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.pi
    L14_2 = L14_2 * 0.2
    L13_2.angle = L14_2
    L13_2 = A0_2.sideImage
    L14_2 = L13_2
    L13_2 = L13_2.setScale
    L15_2 = L5_2
    L13_2(L14_2, L15_2)
  end
  L13_2 = A0_2.sideText
  if L13_2 then
    L13_2 = A0_2.sideText
    L14_2 = A0_2.titleText
    L14_2 = L14_2.y
    L15_2 = A0_2.titleText
    L16_2 = L15_2
    L15_2 = L15_2.getFontLeading
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2 * 0.5
    L15_2 = L15_2 * L6_2
    L15_2 = L15_2 * 1.4
    L14_2 = L14_2 + L15_2
    L15_2 = A0_2.sideText
    L16_2 = L15_2
    L15_2 = L15_2.getFontLeading
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2 * 0.8
    L15_2 = L15_2 * L6_2
    L15_2 = L15_2 * 0.5
    L14_2 = L14_2 + L15_2
    L13_2.y = L14_2
    L13_2 = A0_2.sideText
    L14_2 = L13_2
    L13_2 = L13_2.setScale
    L15_2 = L5_2 * 0.8
    L13_2(L14_2, L15_2)
  end
end

L0_1.layout = L1_1
L0_1 = PurchaseConfirmationDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.alpha
  if 0 < L3_2 then
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
  end
  L3_2 = A0_2.bgBox
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
  L3_2 = A0_2.item
  if L3_2 then
    L3_2 = A0_2.isBundle
    if not L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.getUIScale
      L3_2 = L3_2()
      L4_2 = A0_2.animation
      L4_2 = L4_2.scale
      L3_2 = L3_2 * L4_2
      L4_2 = gamelua
      L4_2 = L4_2.cutsceneSetTranslation
      L5_2 = A0_2.animation
      L5_2 = L5_2.name
      L6_2 = A0_2.x
      L7_2 = A0_2.animation
      L7_2 = L7_2.x
      L7_2 = L7_2 * L3_2
      L6_2 = L6_2 + L7_2
      L7_2 = A0_2.y
      L8_2 = A0_2.animation
      L8_2 = L8_2.y
      L8_2 = L8_2 * L3_2
      L7_2 = L7_2 + L8_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = gamelua
      L4_2 = L4_2.cutsceneSetScale
      L5_2 = A0_2.animation
      L5_2 = L5_2.name
      L6_2 = L3_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = gamelua
      L4_2 = L4_2.drawCutscene
      L5_2 = A0_2.animation
      L5_2 = L5_2.name
      L4_2(L5_2)
    end
  end
  L3_2 = gamelua
  L3_2 = L3_2.setRenderState
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L0_1.draw = L1_1
