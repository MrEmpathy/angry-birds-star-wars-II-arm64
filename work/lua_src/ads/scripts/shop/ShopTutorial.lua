local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ShopTutorial = L0_1
L0_1 = ShopTutorial

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.alpha = 0.8
  A0_2.name = "ShopTutorial"
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
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.getText
  L5_2 = "TEXT_SHOP_TUTORIAL_DESCRIPTION"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.buyText = L1_2
  L1_2 = A0_2.customBuyText
  if L1_2 then
    L1_2 = A0_2.buyText
    L2_2 = A0_2.customBuyText
    L1_2.text = L2_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.isIapEnabled
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.isPCVersion
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = A0_2.buyText
      L1_2.text = ""
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.buyText
  L1_2(L2_2, L3_2)
  A0_2.animation = nil
  A0_2.iconSprite = nil
  A0_2.PURCHASEPROMPT_BG_BOX_WIDTH = 660
  A0_2.PURCHASEPROMPT_BG_BOX_HEIGHT = 460
  L1_2 = A0_2.isBundle
  if L1_2 then
    A0_2.PURCHASEPROMPT_BG_BOX_WIDTH = 660
    A0_2.PURCHASEPROMPT_BG_BOX_HEIGHT = 300
    L1_2 = {}
    A0_2.characterImages = L1_2
    A0_2.allLight = true
    A0_2.allDark = true
    L1_2 = ""
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
          goto lbl_157
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
      ::lbl_157::
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
      L12_2 = L1_2
      L13_2 = gamelua
      L13_2 = L13_2.getCharacterText
      L14_2 = L7_2
      L13_2 = L13_2(L14_2)
      L1_2 = L12_2 .. L13_2
      L12_2 = A0_2.item
      L12_2 = L12_2.bundle
      L12_2 = #L12_2
      if L5_2 ~= L12_2 then
        L12_2 = L1_2
        L13_2 = ", "
        L1_2 = L12_2 .. L13_2
      end
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
        goto lbl_238
      end
    end
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
    ::lbl_238::
    L2_2 = A0_2.buyText
    L3_2 = gamelua
    L3_2 = L3_2.getText
    L4_2 = "TEXT_SHOP_TUTORIAL_BUNLDE_DESCRIPTION"
    L5_2 = {}
    L6_2 = "$CHARACTERS"
    L7_2 = L1_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.text = L3_2
  else
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
      else
        L6_2 = L5_2.name
        if L6_2 == "bgBox" then
          L6_2 = L5_2.suffix
          A0_2.suffix = L6_2
        end
      end
    end
    L1_2 = gamelua
    L1_2 = L1_2.isCharacterDarkSide
    L2_2 = A0_2.charName
    L1_2 = L1_2(L2_2)
    if L1_2 then
      A0_2.suffix = "SITH"
    else
      A0_2.suffix = "LIGHT"
    end
    L1_2 = ui
    L1_2 = L1_2.Image
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "iconImage"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.iconImage = L1_2
    L1_2 = A0_2.iconImage
    L2_2 = L1_2
    L1_2 = L1_2.setImage
    L3_2 = gamelua
    L3_2 = L3_2.Characters
    L3_2 = L3_2.list
    L4_2 = A0_2.charName
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.button
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = A0_2.iconImage
    L1_2(L2_2, L3_2)
    L1_2 = ui
    L1_2 = L1_2.DummyText
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L4_2 = gamelua
    L4_2 = L4_2.getText
    L5_2 = "TEXT_SHOP_CHARACTER_"
    L6_2 = A0_2.suffix
    L5_2 = L5_2 .. L6_2
    L4_2 = L4_2(L5_2)
    L3_2.text = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.getFontScore
    L4_2 = L4_2()
    L3_2.font = L4_2
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.sideText = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = A0_2.sideText
    L1_2(L2_2, L3_2)
  end
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "cancel"
  L3_2.returnValue = "CLOSE"
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
L0_1 = ShopTutorial

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
L0_1 = ShopTutorial

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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

L0_1.onEntry = L1_1
L0_1 = ShopTutorial

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
L0_1 = ShopTutorial

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
      L4_2 = L4_2.playAudio
      L5_2 = "ButtonBack"
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
L0_1 = ShopTutorial

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
  if A1_2 == "LRELEASE" and L4_2 == "CLOSE" then
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
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = ShopTutorial

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = 50
  L4_2 = gamelua
  L4_2 = L4_2.getUIScale
  L4_2 = L4_2()
  L5_2 = gamelua
  L5_2 = L5_2.getFontScale
  L5_2 = L5_2()
  L6_2 = 30 * L4_2
  L7_2 = gamelua
  L7_2 = L7_2.screenWidth
  L7_2 = L7_2 * 0.5
  A0_2.x = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.5
  A0_2.y = L7_2
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.PURCHASEPROMPT_BG_BOX_WIDTH
  L8_2 = L8_2 * L4_2
  L7_2 = L7_2(L8_2)
  A0_2.width = L7_2
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.PURCHASEPROMPT_BG_BOX_HEIGHT
  L8_2 = L8_2 * L4_2
  L7_2 = L7_2(L8_2)
  A0_2.height = L7_2
  L7_2 = A0_2.bgBox
  L8_2 = A0_2.x
  L7_2.x = L8_2
  L7_2 = A0_2.bgBox
  L8_2 = A0_2.y
  L8_2 = L8_2 + L6_2
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
  L10_2 = L7_2 * 0.5
  L9_2.x = L10_2
  L9_2 = A0_2.cancelButton
  L10_2 = -L8_2
  L10_2 = L10_2 * 0.5
  L10_2 = L10_2 + L6_2
  L9_2.y = L10_2
  L9_2 = A0_2.cancelButton
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L4_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.isBundle
  if L9_2 then
    L9_2 = A0_2.width
    L9_2 = -L9_2
    L9_2 = L9_2 * 0.5
    L10_2 = A0_2.width
    L11_2 = A0_2.characterImages
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L10_2 = L10_2 / L11_2
    L11_2 = A0_2.sideText
    if L11_2 then
      L11_2 = 15
      if L11_2 then
        goto lbl_81
      end
    end
    L11_2 = 0
    ::lbl_81::
    L12_2 = _G
    L12_2 = L12_2.ipairs
    L13_2 = A0_2.characterImages
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    for L15_2, L16_2 in L12_2, L13_2, L14_2 do
      L17_2 = L9_2 + L10_2
      L16_2.x = L17_2
      L17_2 = L11_2 * L4_2
      L16_2.y = L17_2
      L9_2 = L9_2 + L10_2
      L17_2 = _G
      L17_2 = L17_2.res
      L17_2 = L17_2.getSpriteBounds
      L18_2 = "BTN_BG_LIGHT"
      L17_2, L18_2 = L17_2(L18_2)
      L20_2 = L16_2
      L19_2 = L16_2.getChild
      L21_2 = "amountBg"
      L22_2 = L15_2
      L21_2 = L21_2 .. L22_2
      L19_2 = L19_2(L20_2, L21_2)
      L20_2 = L17_2 * 0.35
      L20_2 = L20_2 * L4_2
      L19_2.x = L20_2
      L20_2 = L18_2 * 0.35
      L20_2 = L20_2 * L4_2
      L19_2.y = L20_2
      L21_2 = L19_2
      L20_2 = L19_2.getChild
      L22_2 = "amountText"
      L23_2 = L15_2
      L22_2 = L22_2 .. L23_2
      L20_2 = L20_2(L21_2, L22_2)
      L22_2 = L20_2
      L21_2 = L20_2.setScale
      L23_2 = 1.5
      L21_2(L22_2, L23_2)
      L21_2 = L20_2.isUnlimited
      if L21_2 then
        L22_2 = L20_2
        L21_2 = L20_2.setScale
        L23_2 = 2.5
        L21_2(L22_2, L23_2)
      end
      L22_2 = L16_2
      L21_2 = L16_2.setScale
      L23_2 = L4_2
      L21_2(L22_2, L23_2)
    end
  end
  L9_2 = A0_2.buyText
  L10_2 = A0_2.PURCHASEPROMPT_BG_BOX_WIDTH
  L9_2.textBoxSize = L10_2
  L9_2 = A0_2.buyText
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L4_2 * 1.5
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.buyText
  L10_2 = L9_2
  L9_2 = L9_2.clip
  L9_2(L10_2)
  L9_2 = A0_2.buyText
  L10_2 = L8_2 * 0.5
  L11_2 = A0_2.buyText
  L12_2 = L11_2
  L11_2 = L11_2.getHeight
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 * 0.5
  L11_2 = L11_2 * L5_2
  L11_2 = L11_2 / 1.5
  L12_2 = A0_2.buyText
  L12_2 = L12_2.lines
  L12_2 = #L12_2
  L11_2 = L11_2 / L12_2
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.titleText
  L10_2 = -L8_2
  L10_2 = L10_2 * 0.5
  L11_2 = A0_2.titleText
  L12_2 = L11_2
  L11_2 = L11_2.getFontLeading
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 * 0.5
  L11_2 = L11_2 * L5_2
  L10_2 = L10_2 + L11_2
  L11_2 = L3_2 * L4_2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L9_2 = 1
  L10_2 = 650
  L11_2 = A0_2.titleText
  L12_2 = L11_2
  L11_2 = L11_2.getWidth
  L11_2 = L11_2(L12_2)
  if L10_2 < L11_2 then
    L11_2 = A0_2.titleText
    L12_2 = L11_2
    L11_2 = L11_2.getWidth
    L11_2 = L11_2(L12_2)
    L9_2 = L10_2 / L11_2
  end
  L11_2 = A0_2.titleText
  L12_2 = L11_2
  L11_2 = L11_2.setScale
  L13_2 = L4_2 * 1.4
  L13_2 = L13_2 * L9_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.iconImage
  if L11_2 then
    L11_2 = A0_2.iconImage
    L12_2 = -L7_2
    L12_2 = L12_2 * 0.5
    L13_2 = A0_2.cancelButton
    L13_2 = L13_2.w
    L13_2 = L13_2 * 0.65
    L13_2 = L13_2 * L4_2
    L12_2 = L12_2 + L13_2
    L11_2.x = L12_2
    L11_2 = A0_2.iconImage
    L12_2 = A0_2.cancelButton
    L12_2 = L12_2.y
    L11_2.y = L12_2
    L11_2 = A0_2.iconImage
    L12_2 = L11_2
    L11_2 = L11_2.setScale
    L13_2 = L4_2
    L11_2(L12_2, L13_2)
  end
  L11_2 = A0_2.sideText
  if L11_2 then
    L11_2 = A0_2.sideText
    L12_2 = A0_2.titleText
    L12_2 = L12_2.y
    L13_2 = A0_2.titleText
    L14_2 = L13_2
    L13_2 = L13_2.getFontLeading
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 * 0.5
    L13_2 = L13_2 * L5_2
    L12_2 = L12_2 + L13_2
    L13_2 = A0_2.sideText
    L14_2 = L13_2
    L13_2 = L13_2.getFontLeading
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 * 0.6
    L13_2 = L13_2 * L5_2
    L12_2 = L12_2 + L13_2
    L11_2.y = L12_2
    L11_2 = A0_2.sideText
    L12_2 = L11_2
    L11_2 = L11_2.setScale
    L13_2 = L4_2 * 0.8
    L11_2(L12_2, L13_2)
  end
end

L0_1.layout = L1_1
L0_1 = ShopTutorial

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
  L3_2 = gamelua
  L3_2 = L3_2.setRenderState
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L0_1.draw = L1_1
L0_1 = ShopTutorial

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
