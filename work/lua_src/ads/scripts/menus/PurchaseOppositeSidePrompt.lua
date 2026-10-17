local L0_1, L1_1
L0_1 = 0.2
SLIDE_ANIMATION_DURATION = L0_1
L0_1 = 0.3
OPEN_ANIMATION_DURATION = L0_1
L0_1 = 0.5
FADE_IN_DURATION = L0_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
PurchaseOppositeSidePrompt = L0_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.darkSide
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = "LIGHT"
  ::lbl_8::
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.BGBox
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.boxComponents
  if not L3_2 then
    L3_2 = {}
    L4_2 = "ACHIEVEMENTBOX_TOP_LEFT_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.topLeft = L4_2
    L4_2 = "ACHIEVEMENTBOX_TOP_MIDDLE_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.topMiddle = L4_2
    L4_2 = "ACHIEVEMENTBOX_TOP_RIGHT_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.topRight = L4_2
    L4_2 = "ACHIEVEMENTBOX_MIDDLE_LEFT_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.left = L4_2
    L4_2 = "ACHIEVEMENTBOX_CENTER_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.center = L4_2
    L4_2 = "ACHIEVEMENTBOX_MIDDLE_RIGHT_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.right = L4_2
    L4_2 = "ACHIEVEMENTBOX_BOTTOM_LEFT_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.bottomLeft = L4_2
    L4_2 = "ACHIEVEMENTBOX_BOTTOM_MIDDLE_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.bottomMiddle = L4_2
    L4_2 = "ACHIEVEMENTBOX_BOTTOM_RIGHT_SHEET_"
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.bottomRight = L4_2
    L2_2.components = L3_2
  else
    L3_2 = {}
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.topLeft
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.topLeft = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.topRight
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.topRight = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.topMiddle
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.topMiddle = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.topRight
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.topRight = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.left
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.left = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.center
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.center = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.right
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.right = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.bottomLeft
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.bottomLeft = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.bottomMiddle
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.bottomMiddle = L4_2
    L4_2 = A0_2.boxComponents
    L4_2 = L4_2.bottomRight
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    L3_2.bottomRight = L4_2
    L2_2.components = L3_2
  end
  L3_2 = gamelua
  L3_2 = L3_2.getShopData
  L3_2 = L3_2()
  L3_2 = L3_2.singleLevelOppositeCharacterPrice
  if not L3_2 then
    L3_2 = 10
  end
  A0_2.singleLevelPrice = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.getShopData
  L3_2 = L3_2()
  L3_2 = L3_2.allLevelsOppositeCharacterPrice
  if not L3_2 then
    L3_2 = 150
  end
  A0_2.allLevelsPrice = L3_2
  L3_2 = A0_2.name
  if not L3_2 then
    L3_2 = "purchaseOppositeSidePrompt"
  end
  A0_2.name = L3_2
  L2_2.name = "bg"
  L2_2.hanchor = "LEFT"
  L2_2.vanchor = "TOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.deviceModel
  L3_2 = L3_2 == "windows"
  A0_2.confirmOnLeft = L3_2
  L3_2 = A0_2.font
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.getFontBasic
    L3_2 = L3_2()
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2.darkSide
  if L7_2 then
    L7_2 = gamelua
    L7_2 = L7_2.getText
    L8_2 = "TEXT_UNLOCK_DARK_SIDE_CHARACTERS_FOR_LEVEL_TITLE"
    L7_2 = L7_2(L8_2)
    L4_2 = L7_2
    L7_2 = gamelua
    L7_2 = L7_2.getText
    L8_2 = "TEXT_UNLOCK_DARK_SIDE_CHARACTERS_FOR_LEVEL"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  else
    L7_2 = gamelua
    L7_2 = L7_2.getText
    L8_2 = "TEXT_UNLOCK_LIGHT_SIDE_CHARACTERS_FOR_LEVEL_TITLE"
    L7_2 = L7_2(L8_2)
    L4_2 = L7_2
    L7_2 = gamelua
    L7_2 = L7_2.getText
    L8_2 = "TEXT_UNLOCK_LIGHT_SIDE_CHARACTERS_FOR_LEVEL"
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  end
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.Text
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "title"
  L9_2.text = L4_2
  L10_2 = gamelua
  L10_2 = L10_2.getFontBasic
  L10_2 = L10_2()
  L9_2.font = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2.vanchor = "TOP"
  L7_2.hanchor = "HCENTER"
  L7_2.visible = false
  L9_2 = L2_2
  L8_2 = L2_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.contentImage
  if L8_2 then
    L8_2 = gamelua
    L8_2 = L8_2.ui
    L8_2 = L8_2.Image
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.name = "contentImage"
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setImage
    L11_2 = A0_2.contentImage
    L9_2(L10_2, L11_2)
    L8_2.vanchor = "TOP"
    L8_2.hanchor = "HCENTER"
    L8_2.visible = false
    L10_2 = L2_2
    L9_2 = L2_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L8_2 = gamelua
  L8_2 = L8_2.ui
  L8_2 = L8_2.Text
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.name = "content"
  L10_2.text = L5_2
  L11_2 = gamelua
  L11_2 = L11_2.getFontBasic
  L11_2 = L11_2()
  L10_2.font = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2.vanchor = "TOP"
  L8_2.hanchor = "HCENTER"
  L8_2.visible = false
  L10_2 = L2_2
  L9_2 = L2_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = gamelua
  L9_2 = L9_2.ui
  L9_2 = L9_2.ScallableButton
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.name = "close"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = L9_2
  L10_2 = L9_2.setImage
  L12_2 = gamelua
  L12_2 = L12_2.getButtonImageName
  L13_2 = "buttonX"
  L14_2 = A0_2.darkSide
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2, L14_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L9_2.returnValue = "CLOSE"
  L9_2.activateOnRelease = true
  L9_2.visible = false
  L9_2.clickSound = "ButtonBack"
  L11_2 = L2_2
  L10_2 = L2_2.addChild
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = gamelua
  L10_2 = L10_2.ui
  L10_2 = L10_2.ScallableButton
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L12_2.name = "confirm"
  L10_2 = L10_2(L11_2, L12_2)
  A0_2.confirm = L10_2
  L12_2 = L10_2
  L11_2 = L10_2.setImage
  L13_2 = A0_2.buttonImage
  if not L13_2 then
    L13_2 = gamelua
    L13_2 = L13_2.getButtonImageName
    L14_2 = "hintPopupButton"
    L15_2 = A0_2.darkSide
    L13_2 = L13_2(L14_2, L15_2)
  end
  L11_2(L12_2, L13_2)
  L10_2.returnValue = "BUY_FOR_ONE"
  L10_2.activateOnRelease = true
  L10_2.clickSound = "ButtonProceed"
  L10_2.visible = false
  L12_2 = L2_2
  L11_2 = L2_2.addChild
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = gamelua
  L11_2 = L11_2.ui
  L11_2 = L11_2.DummyText
  L12_2 = L11_2
  L11_2 = L11_2.new
  L13_2 = {}
  L13_2.name = "confirmText"
  L14_2 = gamelua
  L14_2 = L14_2.getText
  L15_2 = "TEXT_UNLOCK_OPPOSITE_SIDE_CHARACTERS_FOR_THIS_LEVEL"
  L14_2 = L14_2(L15_2)
  L13_2.text = L14_2
  L14_2 = gamelua
  L14_2 = L14_2.getFontBasic
  L14_2 = L14_2()
  L13_2.font = L14_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = gamelua
  L12_2 = L12_2.ui
  L12_2 = L12_2.DummyText
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L14_2.name = "confirmPrice"
  L15_2 = " #"
  L16_2 = A0_2.singleLevelPrice
  L15_2 = L15_2 .. L16_2
  L14_2.text = L15_2
  L15_2 = gamelua
  L15_2 = L15_2.getFontIngameMoney
  L15_2 = L15_2()
  L14_2.font = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L14_2 = L11_2
  L13_2 = L11_2.setScale
  L15_2 = 0.6
  L13_2(L14_2, L15_2)
  L14_2 = L12_2
  L13_2 = L12_2.setScale
  L15_2 = 0.6
  L13_2(L14_2, L15_2)
  L14_2 = L10_2
  L13_2 = L10_2.addChild
  L15_2 = L11_2
  L13_2(L14_2, L15_2)
  L14_2 = L10_2
  L13_2 = L10_2.addChild
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = gamelua
  L13_2 = L13_2.ui
  L13_2 = L13_2.ScallableButton
  L14_2 = L13_2
  L13_2 = L13_2.new
  L15_2 = {}
  L15_2.name = "buyall"
  L13_2 = L13_2(L14_2, L15_2)
  L15_2 = L13_2
  L14_2 = L13_2.setImage
  L16_2 = gamelua
  L16_2 = L16_2.getButtonImageName
  L17_2 = "hintPopupButton"
  L18_2 = A0_2.darkSide
  L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2)
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  L13_2.returnValue = "BUY_FOR_ALL"
  L13_2.activateOnRelease = true
  L13_2.clickSound = "ButtonProceed"
  L13_2.visible = false
  L15_2 = L2_2
  L14_2 = L2_2.addChild
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  L14_2 = gamelua
  L14_2 = L14_2.ui
  L14_2 = L14_2.DummyText
  L15_2 = L14_2
  L14_2 = L14_2.new
  L16_2 = {}
  L16_2.name = "allPriceText"
  L17_2 = gamelua
  L17_2 = L17_2.getText
  L18_2 = "TEXT_UNLOCK_OPPOSITE_SIDE_CHARACTERS_FOR_ALL_LEVELS"
  L17_2 = L17_2(L18_2)
  L16_2.text = L17_2
  L17_2 = gamelua
  L17_2 = L17_2.getFontBasic
  L17_2 = L17_2()
  L16_2.font = L17_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = gamelua
  L15_2 = L15_2.ui
  L15_2 = L15_2.DummyText
  L16_2 = L15_2
  L15_2 = L15_2.new
  L17_2 = {}
  L17_2.name = "priceForBuyAll"
  L18_2 = "#"
  L19_2 = A0_2.allLevelsPrice
  L18_2 = L18_2 .. L19_2
  L17_2.text = L18_2
  L18_2 = gamelua
  L18_2 = L18_2.getFontIngameMoney
  L18_2 = L18_2()
  L17_2.font = L18_2
  L15_2 = L15_2(L16_2, L17_2)
  L17_2 = L14_2
  L16_2 = L14_2.setScale
  L18_2 = 0.6
  L16_2(L17_2, L18_2)
  L17_2 = L15_2
  L16_2 = L15_2.setScale
  L18_2 = 0.6
  L16_2(L17_2, L18_2)
  L17_2 = L13_2
  L16_2 = L13_2.addChild
  L18_2 = L14_2
  L16_2(L17_2, L18_2)
  L17_2 = L13_2
  L16_2 = L13_2.addChild
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
end

L0_1.init = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = false
  g_showCoinParticles = L1_2
  A0_2.appearCounter = 0
  A0_2.animationState = 0
  A0_2.animationTimer = 0
  L1_2 = gamelua
  L1_2.g_gamePaused = true
  L1_2 = gamelua
  L1_2 = L1_2.disableGameUpdate
  L1_2()
  L1_2 = gamelua
  L1_2.g_showingOppositeSideBirdPurchase = true
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "pc_game_exit_popup"
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "buyall"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "confirm"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "allPriceText"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "priceForBuyAll"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "confirmText"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "confirmPrice"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L5_2
  L9_2 = L5_2.getFontLeading
  L9_2 = L9_2(L10_2)
  L9_2 = -L9_2
  L9_2 = L9_2 * 0.5
  L9_2 = L9_2 * L2_2
  L5_2.y = L9_2
  L9_2 = L5_2.y
  L11_2 = L5_2
  L10_2 = L5_2.getFontLeading
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * L2_2
  L9_2 = L9_2 + L10_2
  L6_2.y = L9_2
  L10_2 = L7_2
  L9_2 = L7_2.getFontLeading
  L9_2 = L9_2(L10_2)
  L9_2 = -L9_2
  L9_2 = L9_2 * 0.5
  L9_2 = L9_2 * L2_2
  L7_2.y = L9_2
  L9_2 = L7_2.y
  L11_2 = L7_2
  L10_2 = L7_2.getFontLeading
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * L2_2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
end

L0_1.layoutButtons = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.layoutButtons
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "bg"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "title"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "close"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "confirm"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "buyall"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "content"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "contentImage"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "price"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = gamelua
  L15_2 = L15_2.screenWidth
  L15_2 = L15_2 * 0.5
  L16_2 = gamelua
  L16_2 = L16_2.screenWidth
  L16_2 = L16_2 * 0.7
  if L8_2 then
    L17_2 = L8_2.text
    if L17_2 then
      L17_2 = L8_2.text
      if L17_2 ~= "" then
        L18_2 = L8_2
        L17_2 = L8_2.setScale
        L19_2 = L1_2 * 2
        L17_2(L18_2, L19_2)
        L17_2 = L8_2.width
        L18_2 = L8_2.scaleX
        L14_2 = L17_2 * L18_2
      end
    end
  end
  if L9_2 then
    L9_2.scaleX = L1_2
    L9_2.scaleY = L1_2
    L17_2 = _G
    L17_2 = L17_2.math
    L17_2 = L17_2.max
    L18_2 = L14_2
    L19_2 = L9_2.w
    L20_2 = L9_2.scaleX
    L19_2 = L19_2 * L20_2
    L17_2 = L17_2(L18_2, L19_2)
    L14_2 = L17_2
  end
  if L4_2 then
    L17_2 = L4_2.text
    if L17_2 then
      L17_2 = L4_2.text
      if L17_2 ~= "" then
        L18_2 = L4_2
        L17_2 = L4_2.setScale
        L19_2 = L1_2 * 2
        L17_2(L18_2, L19_2)
        L17_2 = L4_2.width
        L18_2 = L4_2.scaleX
        L12_2 = L17_2 * L18_2
    end
    else
      L17_2 = L4_2.image
      if L17_2 then
        L17_2 = L4_2.image
        if L17_2 ~= "" then
          L17_2 = A0_2.titleScale
          if not L17_2 then
            L17_2 = 1
          end
          L17_2 = L1_2 * L17_2
          L4_2.scaleX = L17_2
          L17_2 = A0_2.titleScale
          if not L17_2 then
            L17_2 = 1
          end
          L17_2 = L1_2 * L17_2
          L4_2.scaleY = L17_2
          L17_2 = L4_2.w
          L18_2 = L4_2.scaleX
          L12_2 = L17_2 * L18_2
        end
      end
    end
  end
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.max
  L18_2 = L14_2
  L19_2 = L12_2
  L17_2 = L17_2(L18_2, L19_2)
  if L16_2 < L17_2 then
    L17_2 = L16_2
  elseif L15_2 > L17_2 then
    L17_2 = L15_2
  end
  if L17_2 == L16_2 then
    L18_2 = L8_2.text
    if L18_2 then
      L18_2 = L17_2 * 1.8
      L8_2.textBoxSize = L18_2
    end
    L18_2 = L4_2.text
    if L18_2 then
      L18_2 = L17_2 * 1.8
      L4_2.textBoxSize = L18_2
    end
  end
  if L8_2 then
    L18_2 = L8_2.text
    if L18_2 then
      L18_2 = L8_2.text
      if L18_2 ~= "" then
        L19_2 = L8_2
        L18_2 = L8_2.getFontLeading
        L18_2 = L18_2(L19_2)
        L13_2 = L18_2 * L1_2
        L18_2 = L8_2.lines
        if L18_2 then
          L18_2 = L13_2 / 2
          L19_2 = L8_2.lines
          L19_2 = #L19_2
          L13_2 = L18_2 * L19_2
        end
      end
    end
    if L9_2 then
      L18_2 = L9_2.h
      L19_2 = L9_2.scaleY
      L18_2 = L18_2 * L19_2
      L13_2 = L13_2 + L18_2
    end
  end
  if L4_2 then
    L18_2 = L4_2.text
    if L18_2 then
      L18_2 = L4_2.text
      if L18_2 ~= "" then
        L19_2 = L4_2
        L18_2 = L4_2.getFontLeading
        L18_2 = L18_2(L19_2)
        L11_2 = L18_2 * L1_2
        L18_2 = L4_2.lines
        if L18_2 then
          L18_2 = L11_2 / 2
          L19_2 = L4_2.lines
          L19_2 = #L19_2
          L11_2 = L18_2 * L19_2
        end
    end
    else
      L18_2 = L4_2.image
      if L18_2 then
        L18_2 = L4_2.image
        if L18_2 ~= "" then
          L18_2 = L4_2.h
          L19_2 = L4_2.scaleY
          L11_2 = L18_2 * L19_2
        end
      end
    end
  end
  L18_2 = L11_2 + L13_2
  L19_2 = L5_2.h
  L19_2 = L19_2 * L1_2
  L18_2 = L18_2 + L19_2
  L20_2 = L3_2
  L19_2 = L3_2.setSize
  L21_2 = L17_2
  L22_2 = L18_2
  L19_2(L20_2, L21_2, L22_2)
  L19_2 = L17_2
  A0_2.bgEndHeight = L18_2
  A0_2.bgEndWidth = L19_2
  if L4_2 then
    L19_2 = L17_2 / 2
    L4_2.x = L19_2
    L19_2 = L4_2.text
    if L19_2 then
      L4_2.y = 0
    else
      L19_2 = L4_2.image
      if L19_2 then
        L19_2 = L4_2.py
        if L19_2 then
          L19_2 = L4_2.image
          if L19_2 ~= "" then
            L19_2 = L18_2 - L11_2
            L19_2 = L19_2 / 2
            L4_2.y = L19_2
          end
        end
      end
    end
  end
  if L9_2 then
    L19_2 = L4_2.x
    L9_2.x = L19_2
    if L11_2 ~= 0 then
      L19_2 = L4_2.y
      L20_2 = L9_2.h
      L20_2 = L20_2 * L1_2
      L19_2 = L19_2 + L20_2
      L9_2.y = L19_2
    else
      L20_2 = L3_2
      L19_2 = L3_2.getTopBlockH
      L19_2 = L19_2(L20_2)
      L19_2 = -L19_2
      L20_2 = L9_2.h
      L20_2 = L20_2 * 0.8
      L20_2 = L20_2 * L1_2
      L19_2 = L19_2 + L20_2
      L9_2.y = L19_2
    end
  end
  if L8_2 then
    L19_2 = L17_2 / 2
    L8_2.x = L19_2
    if L9_2 then
      L19_2 = L9_2.y
      L20_2 = L9_2.h
      L20_2 = L20_2 * L1_2
      L19_2 = L19_2 + L20_2
      L8_2.y = L19_2
    elseif L11_2 == 0 then
      L19_2 = L18_2 - L13_2
      L19_2 = L19_2 / 2
      L8_2.y = L19_2
    else
      L19_2 = L4_2.image
      if L19_2 then
        L19_2 = L4_2.py
        if L19_2 then
          L19_2 = L4_2.image
          if L19_2 ~= "" then
            L19_2 = L4_2.y
            L20_2 = L11_2 * 0.75
            L19_2 = L19_2 + L20_2
            L8_2.y = L19_2
        end
      end
      else
        L19_2 = L4_2.y
        L20_2 = L11_2 / 2
        L19_2 = L19_2 + L20_2
        L21_2 = L8_2
        L20_2 = L8_2.getFontLeading
        L20_2 = L20_2(L21_2)
        L20_2 = L20_2 * L1_2
        L19_2 = L19_2 + L20_2
        L8_2.y = L19_2
      end
    end
  end
  L20_2 = L5_2
  L19_2 = L5_2.setScale
  L21_2 = L1_2
  L19_2(L20_2, L21_2)
  L20_2 = L6_2
  L19_2 = L6_2.setScale
  L21_2 = L1_2
  L19_2(L20_2, L21_2)
  L20_2 = L7_2
  L19_2 = L7_2.setScale
  L21_2 = L1_2
  L19_2(L20_2, L21_2)
  L19_2 = gamelua
  L19_2 = L19_2.screenWidth
  L20_2 = L3_2.width
  L19_2 = L19_2 - L20_2
  L19_2 = L19_2 * 0.5
  L3_2.x = L19_2
  L19_2 = gamelua
  L19_2 = L19_2.screenHeight
  L20_2 = L3_2.height
  L19_2 = L19_2 - L20_2
  L19_2 = L19_2 * 0.5
  L3_2.y = L19_2
  L20_2 = L3_2
  L19_2 = L3_2.getTopBlockH
  L19_2 = L19_2(L20_2)
  L19_2 = -L19_2
  L5_2.y = L19_2
  L20_2 = L3_2
  L19_2 = L3_2.getRightBlockW
  L19_2 = L19_2(L20_2)
  L19_2 = L17_2 + L19_2
  L5_2.x = L19_2
  L20_2 = L3_2
  L19_2 = L3_2.getBottomBlockH
  L19_2 = L19_2(L20_2)
  L19_2 = L18_2 + L19_2
  L6_2.y = L19_2
  L19_2 = L6_2.w
  L19_2 = L19_2 * 0.75
  L19_2 = L19_2 * L1_2
  L19_2 = L17_2 - L19_2
  L6_2.x = L19_2
  L19_2 = L6_2.y
  L7_2.y = L19_2
  L19_2 = L7_2.w
  L19_2 = L19_2 * 0.75
  L19_2 = L19_2 * L1_2
  L7_2.x = L19_2
  L19_2 = A0_2.animationState
  if L19_2 ~= 2 then
    A0_2.animationState = 0
    A0_2.animationTimer = 0
    L4_2.visible = false
    L4_2.alpha = 0
    L5_2.visible = false
    L5_2.alpha = 0
    L6_2.visible = false
    L6_2.alpha = 0
    L7_2.visible = false
    L7_2.alpha = 0
    L8_2.visible = false
    L8_2.alpha = 0
    if L9_2 then
      L9_2.visible = false
      L9_2.alpha = 0
    end
    L3_2.visible = true
    L19_2 = 0
    L20_2 = 0
    L21_2 = 0
    L22_2 = A0_2.bgEndHeight
    if L22_2 then
      L22_2 = gamelua
      L22_2 = L22_2.screenHeight
      L22_2 = L22_2 - L20_2
      L22_2 = L22_2 * 0.5
      L23_2 = gamelua
      L23_2 = L23_2.screenHeight
      L24_2 = L3_2.height
      L23_2 = L23_2 - L24_2
      L23_2 = L23_2 * 0.5
      L21_2 = L22_2 - L23_2
    end
    L22_2 = A0_2.bgEndWidth
    if L22_2 then
      L23_2 = L3_2
      L22_2 = L3_2.setSize
      L24_2 = A0_2.bgEndWidth
      L25_2 = L20_2
      L22_2(L23_2, L24_2, L25_2)
    else
      L23_2 = L3_2
      L22_2 = L3_2.setSize
      L24_2 = 200
      L25_2 = L20_2
      L22_2(L23_2, L24_2, L25_2)
    end
    L22_2 = gamelua
    L22_2 = L22_2.screenWidth
    L23_2 = L3_2.width
    L22_2 = L22_2 - L23_2
    L22_2 = L22_2 * 0.5
    L3_2.x = L22_2
    L22_2 = gamelua
    L22_2 = L22_2.screenHeight
    L23_2 = L3_2.height
    L22_2 = L22_2 - L23_2
    L22_2 = L22_2 * 0.5
    L3_2.y = L22_2
  end
end

L0_1.layout = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE" then
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
    L7_2 = A0_2.closeCallback
    if L7_2 then
      L7_2 = _G
      L7_2 = L7_2.type
      L8_2 = A0_2.closeCallback
      L7_2 = L7_2(L8_2)
      if L7_2 == "function" then
        L7_2 = A0_2.closeCallback
        L7_2()
      end
    end
  elseif L4_2 == "BUY_FOR_ONE" then
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
    L7_2 = nil
    L8_2 = A0_2.darkSide
    if L8_2 then
      L8_2 = gamelua
      L8_2 = L8_2.getText
      L9_2 = "TEXT_UNLOCK_DARK_SIDE_CHARACTERS_FOR_LEVEL_TITLE"
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    else
      L8_2 = gamelua
      L8_2 = L8_2.getText
      L9_2 = "TEXT_UNLOCK_LIGHT_SIDE_CHARACTERS_FOR_LEVEL_TITLE"
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L8_2 = nil
    L9_2 = nil
    L10_2 = A0_2.darkSide
    if L10_2 then
      L10_2 = gamelua
      L10_2 = L10_2.getText
      L11_2 = "TEXT_UNLOCK_PORK_SIDE_CHARACTERS_FOR_THIS_LEVEL"
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
      L10_2 = " #"
      L11_2 = A0_2.singleLevelPrice
      L9_2 = L10_2 .. L11_2
    else
      L10_2 = gamelua
      L10_2 = L10_2.getText
      L11_2 = "TEXT_UNLOCK_BIRD_SIDE_CHARACTERS_FOR_THIS_LEVEL"
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
      L10_2 = " #"
      L11_2 = A0_2.singleLevelPrice
      L9_2 = L10_2 .. L11_2
    end
    
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = A0_2
      L0_3 = L0_3.singleLevelPrice
      L1_3 = gamelua
      L1_3 = L1_3.SettingsWrapper
      L2_3 = L1_3
      L1_3 = L1_3.getAmount
      L3_3 = "coins"
      L1_3 = L1_3(L2_3, L3_3)
      if L0_3 <= L1_3 then
        L0_3 = gamelua
        L0_3 = L0_3.eventManager
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = {}
        L3_3 = gamelua
        L3_3 = L3_3.events
        L3_3 = L3_3.EID_POP_FRAME
        L2_3.id = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = gamelua
        L0_3.g_showingOppositeSideBirdPurchase = false
        L0_3 = gamelua
        L0_3 = L0_3.addCoins
        L1_3 = A0_2
        L1_3 = L1_3.singleLevelPrice
        L1_3 = -L1_3
        L0_3(L1_3)
        L0_3 = gamelua
        L0_3 = L0_3.SettingsWrapper
        L1_3 = L0_3
        L0_3 = L0_3.enableOppositeSideCharacterInLevel
        L2_3 = gamelua
        L2_3 = L2_3.levelName
        L0_3(L1_3, L2_3)
        L0_3 = gamelua
        L0_3 = L0_3.saveSettings
        L0_3()
        L0_3 = gamelua
        L0_3 = L0_3.eventManager
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = {}
        L3_3 = events
        L3_3 = L3_3.EID_OPPOSITE_SIDE_BIRDS_ACTIVATED
        L2_3.id = L3_3
        L3_3 = gamelua
        L3_3 = L3_3.currentFolder
        L2_3.episodeName = L3_3
        L3_3 = gamelua
        L3_3 = L3_3.levelName
        L2_3.levelName = L3_3
        L3_3 = A0_2
        L3_3 = L3_3.singleLevelPrice
        L2_3.price = L3_3
        L2_3.eventType = "Single"
        L0_3(L1_3, L2_3)
        L0_3 = gamelua
        L0_3 = L0_3.eventManager
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = {}
        L3_3 = gamelua
        L3_3 = L3_3.events
        L3_3 = L3_3.EID_CHARACTER_MENU_REFRESH
        L2_3.id = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L0_3 = L0_3.returnFunc
        if L0_3 then
          L0_3 = _G
          L0_3 = L0_3.type
          L1_3 = A0_2
          L1_3 = L1_3.returnFunc
          L0_3 = L0_3(L1_3)
          if L0_3 == "function" then
            L0_3 = A0_2
            L0_3 = L0_3.returnFunc
            L0_3()
          end
        end
        L0_3 = gamelua
        L0_3 = L0_3.playAudio
        L1_3 = A0_2
        L1_3 = L1_3.darkSide
        if not L1_3 then
          L1_3 = "level_start_lightside"
          if L1_3 then
            goto lbl_87
          end
        end
        L1_3 = "level_start_darkside"
        ::lbl_87::
        L0_3(L1_3)
      else
        L0_3 = ui
        L0_3 = L0_3.PurchaseRedirectDialog
        L1_3 = L0_3
        L0_3 = L0_3.new
        L2_3 = {}
        L3_3 = A0_2
        L3_3 = L3_3.singleLevelPrice
        L4_3 = gamelua
        L4_3 = L4_3.SettingsWrapper
        L5_3 = L4_3
        L4_3 = L4_3.getAmount
        L6_3 = "coins"
        L4_3 = L4_3(L5_3, L6_3)
        L3_3 = L3_3 - L4_3
        L2_3.missingCoins = L3_3
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = gamelua
        L1_3 = L1_3.eventManager
        L2_3 = L1_3
        L1_3 = L1_3.notify
        L3_3 = {}
        L4_3 = gamelua
        L4_3 = L4_3.events
        L4_3 = L4_3.EID_PUSH_FRAME
        L3_3.id = L4_3
        L3_3.target = L0_3
        L1_3(L2_3, L3_3)
      end
    end
    
    returnFunc = L10_2
    
    function L10_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.closeCallback
      if L0_3 then
        L0_3 = _G
        L0_3 = L0_3.type
        L1_3 = A0_2
        L1_3 = L1_3.closeCallback
        L0_3 = L0_3(L1_3)
        if L0_3 == "function" then
          L0_3 = A0_2
          L0_3 = L0_3.closeCallback
          L0_3()
        end
      end
      L0_3 = gamelua
      L0_3.g_showingOppositeSideBirdPurchase = false
    end
    
    closeFunc = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.eventManager
    L11_2 = L10_2
    L10_2 = L10_2.notify
    L12_2 = {}
    L13_2 = gamelua
    L13_2 = L13_2.events
    L13_2 = L13_2.EID_PUSH_FRAME
    L12_2.id = L13_2
    L13_2 = ui
    L13_2 = L13_2.ConfirmPrompt
    L14_2 = L13_2
    L13_2 = L13_2.new
    L15_2 = {}
    L15_2.title = L7_2
    L15_2.content = L8_2
    L16_2 = gamelua
    L16_2 = L16_2.getFontBasic
    L16_2 = L16_2()
    L15_2.font = L16_2
    L15_2.secondaryContent = L9_2
    L16_2 = gamelua
    L16_2 = L16_2.getFontIngameMoney
    L16_2 = L16_2()
    L15_2.secondaryFont = L16_2
    L16_2 = returnFunc
    L15_2.returnValue = L16_2
    L16_2 = inMenuSpace
    L15_2.inMenuSpace = L16_2
    L15_2.closeOnCancelKeyHandler = ""
    L16_2 = closeFunc
    L15_2.closeCallback = L16_2
    L16_2 = A0_2.darkSide
    L15_2.isDarkSide = L16_2
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.target = L13_2
    L10_2(L11_2, L12_2)
    L10_2 = gamelua
    L10_2.g_showingOppositeSideBirdPurchase = true
  elseif L4_2 == "BUY_FOR_ALL" then
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
    L7_2 = nil
    L8_2 = A0_2.darkSide
    if L8_2 then
      L8_2 = gamelua
      L8_2 = L8_2.getText
      L9_2 = "TEXT_UNLOCK_DARK_SIDE_CHARACTERS_FOR_LEVEL_TITLE"
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    else
      L8_2 = gamelua
      L8_2 = L8_2.getText
      L9_2 = "TEXT_UNLOCK_LIGHT_SIDE_CHARACTERS_FOR_LEVEL_TITLE"
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L8_2 = nil
    L9_2 = nil
    L10_2 = A0_2.darkSide
    if L10_2 then
      L10_2 = gamelua
      L10_2 = L10_2.getText
      L11_2 = "TEXT_UNLOCK_PORK_SIDE_CHARACTERS_FOR_ALL_LEVELS"
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
      L10_2 = " #"
      L11_2 = A0_2.allLevelsPrice
      L9_2 = L10_2 .. L11_2
    else
      L10_2 = gamelua
      L10_2 = L10_2.getText
      L11_2 = "TEXT_UNLOCK_BIRD_SIDE_CHARACTERS_FOR_ALL_LEVELS"
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
      L10_2 = " #"
      L11_2 = A0_2.allLevelsPrice
      L9_2 = L10_2 .. L11_2
    end
    
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = A0_2
      L0_3 = L0_3.allLevelsPrice
      L1_3 = gamelua
      L1_3 = L1_3.SettingsWrapper
      L2_3 = L1_3
      L1_3 = L1_3.getAmount
      L3_3 = "coins"
      L1_3 = L1_3(L2_3, L3_3)
      if L0_3 <= L1_3 then
        L0_3 = gamelua
        L0_3 = L0_3.eventManager
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = {}
        L3_3 = gamelua
        L3_3 = L3_3.events
        L3_3 = L3_3.EID_POP_FRAME
        L2_3.id = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = gamelua
        L0_3.g_showingOppositeSideBirdPurchase = false
        L0_3 = gamelua
        L0_3 = L0_3.addCoins
        L1_3 = A0_2
        L1_3 = L1_3.allLevelsPrice
        L1_3 = -L1_3
        L0_3(L1_3)
        L0_3 = gamelua
        L0_3 = L0_3.SettingsWrapper
        L1_3 = L0_3
        L0_3 = L0_3.enableOppositeSideCharacterForSide
        L2_3 = A0_2
        L2_3 = L2_3.darkSide
        L2_3 = not L2_3
        L0_3(L1_3, L2_3)
        L0_3 = gamelua
        L0_3 = L0_3.saveSettings
        L0_3()
        L0_3 = gamelua
        L0_3 = L0_3.eventManager
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = {}
        L3_3 = events
        L3_3 = L3_3.EID_OPPOSITE_SIDE_BIRDS_ACTIVATED
        L2_3.id = L3_3
        L3_3 = gamelua
        L3_3 = L3_3.currentFolder
        L2_3.episodeName = L3_3
        L3_3 = gamelua
        L3_3 = L3_3.levelName
        L2_3.levelName = L3_3
        L3_3 = A0_2
        L3_3 = L3_3.allLevelsPrice
        L2_3.price = L3_3
        L2_3.eventType = "All"
        L0_3(L1_3, L2_3)
        L0_3 = gamelua
        L0_3 = L0_3.eventManager
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = {}
        L3_3 = gamelua
        L3_3 = L3_3.events
        L3_3 = L3_3.EID_CHARACTER_MENU_REFRESH
        L2_3.id = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L0_3 = L0_3.returnFunc
        if L0_3 then
          L0_3 = _G
          L0_3 = L0_3.type
          L1_3 = A0_2
          L1_3 = L1_3.returnFunc
          L0_3 = L0_3(L1_3)
          if L0_3 == "function" then
            L0_3 = A0_2
            L0_3 = L0_3.returnFunc
            L0_3()
          end
        end
        L0_3 = gamelua
        L0_3 = L0_3.playAudio
        L1_3 = A0_2
        L1_3 = L1_3.darkSide
        if not L1_3 then
          L1_3 = "level_start_lightside"
          if L1_3 then
            goto lbl_88
          end
        end
        L1_3 = "level_start_darkside"
        ::lbl_88::
        L0_3(L1_3)
      else
        L0_3 = ui
        L0_3 = L0_3.PurchaseRedirectDialog
        L1_3 = L0_3
        L0_3 = L0_3.new
        L2_3 = {}
        L3_3 = A0_2
        L3_3 = L3_3.allLevelsPrice
        L4_3 = gamelua
        L4_3 = L4_3.SettingsWrapper
        L5_3 = L4_3
        L4_3 = L4_3.getAmount
        L6_3 = "coins"
        L4_3 = L4_3(L5_3, L6_3)
        L3_3 = L3_3 - L4_3
        L2_3.missingCoins = L3_3
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = gamelua
        L1_3 = L1_3.eventManager
        L2_3 = L1_3
        L1_3 = L1_3.notify
        L3_3 = {}
        L4_3 = gamelua
        L4_3 = L4_3.events
        L4_3 = L4_3.EID_PUSH_FRAME
        L3_3.id = L4_3
        L3_3.target = L0_3
        L1_3(L2_3, L3_3)
      end
    end
    
    returnFunc = L10_2
    
    function L10_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.closeCallback
      if L0_3 then
        L0_3 = _G
        L0_3 = L0_3.type
        L1_3 = A0_2
        L1_3 = L1_3.closeCallback
        L0_3 = L0_3(L1_3)
        if L0_3 == "function" then
          L0_3 = A0_2
          L0_3 = L0_3.closeCallback
          L0_3()
        end
      end
      L0_3 = gamelua
      L0_3.g_showingOppositeSideBirdPurchase = false
    end
    
    closeFunc = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.eventManager
    L11_2 = L10_2
    L10_2 = L10_2.notify
    L12_2 = {}
    L13_2 = gamelua
    L13_2 = L13_2.events
    L13_2 = L13_2.EID_PUSH_FRAME
    L12_2.id = L13_2
    L13_2 = ui
    L13_2 = L13_2.ConfirmPrompt
    L14_2 = L13_2
    L13_2 = L13_2.new
    L15_2 = {}
    L15_2.title = L7_2
    L15_2.content = L8_2
    L16_2 = gamelua
    L16_2 = L16_2.getFontBasic
    L16_2 = L16_2()
    L15_2.font = L16_2
    L15_2.secondaryContent = L9_2
    L16_2 = gamelua
    L16_2 = L16_2.getFontIngameMoney
    L16_2 = L16_2()
    L15_2.secondaryFont = L16_2
    L16_2 = returnFunc
    L15_2.returnValue = L16_2
    L16_2 = inMenuSpace
    L15_2.inMenuSpace = L16_2
    L15_2.closeOnCancelKeyHandler = ""
    L16_2 = closeFunc
    L15_2.closeCallback = L16_2
    L16_2 = A0_2.darkSide
    L15_2.isDarkSide = L16_2
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.target = L13_2
    L10_2(L11_2, L12_2)
    L10_2 = gamelua
    L10_2.g_showingOppositeSideBirdPurchase = true
  end
  if A1_2 == "HOVER" then
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L9_2 = A0_2
    L8_2 = A0_2.getChild
    L10_2 = "bg"
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L8_2.children
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      if L11_2 == L6_2 then
        L12_2 = L4_2
        L13_2 = L5_2
        L14_2 = L6_2
        return L12_2, L13_2, L14_2
      end
    end
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "ESCAPE" or A2_2 == "KEY_BACK" then
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_POP_FRAME
      L8_2.id = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.closeCallback
      if L6_2 then
        L6_2 = _G
        L6_2 = L6_2.type
        L7_2 = A0_2.closeCallback
        L6_2 = L6_2(L7_2)
        if L6_2 == "function" then
          L6_2 = A0_2.closeCallback
          L6_2()
        end
      end
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonBack"
      L6_2(L7_2)
    elseif A2_2 == "RETURN" then
      L6_2 = A0_2.hideCloseButton
      if not L6_2 then
        L6_2 = A0_2.returnValue
        if L6_2 then
          goto lbl_65
        end
      end
      L6_2 = A0_2.closeCallback
      if not L6_2 then
        L6_2 = gamelua
        L6_2 = L6_2.playAudio
        L7_2 = "ButtonBack"
        L6_2(L7_2)
        L6_2 = gamelua
        L6_2 = L6_2.eventManager
        L7_2 = L6_2
        L6_2 = L6_2.notify
        L8_2 = {}
        L9_2 = gamelua
        L9_2 = L9_2.events
        L9_2 = L9_2.EID_POP_FRAME
        L8_2.id = L9_2
        L6_2(L7_2, L8_2)
      else
        ::lbl_65::
        L6_2 = A0_2.closeCallback
        if L6_2 then
          L6_2 = _G
          L6_2 = L6_2.type
          L7_2 = A0_2.closeCallback
          L6_2 = L6_2(L7_2)
          if L6_2 == "function" then
            L6_2 = gamelua
            L6_2 = L6_2.eventManager
            L7_2 = L6_2
            L6_2 = L6_2.notify
            L8_2 = {}
            L9_2 = gamelua
            L9_2 = L9_2.events
            L9_2 = L9_2.EID_POP_FRAME
            L8_2.id = L9_2
            L6_2(L7_2, L8_2)
            L6_2 = A0_2.closeCallback
            L6_2()
        end
        else
          L7_2 = A0_2
          L6_2 = A0_2.getChild
          L8_2 = "confirm"
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = gamelua
          L7_2 = L7_2.playAudio
          L8_2 = L6_2.clickSound
          L7_2(L8_2)
          L7_2 = gamelua
          L7_2 = L7_2.eventManager
          L8_2 = L7_2
          L7_2 = L7_2.queueEvent
          L9_2 = {}
          L10_2 = gamelua
          L10_2 = L10_2.events
          L10_2 = L10_2.EID_POP_FRAME
          L9_2.id = L10_2
          L7_2(L8_2, L9_2)
          L7_2 = _G
          L7_2 = L7_2.type
          L8_2 = A0_2.returnValue
          L7_2 = L7_2(L8_2)
          if L7_2 == "function" then
            L7_2 = A0_2.returnValue
            L7_2()
          else
            L7_2 = gamelua
            L7_2 = L7_2.eventManager
            L8_2 = L7_2
            L7_2 = L7_2.notify
            L9_2 = {}
            L10_2 = A0_2.returnValue
            L9_2.id = L10_2
            L10_2 = A0_2.meta
            L9_2.meta = L10_2
            L7_2(L8_2, L9_2)
          end
        end
      end
    elseif A2_2 == "S" then
      L6_2 = L3_2
      L7_2 = L4_2
      L8_2 = L5_2
      return L6_2, L7_2, L8_2
    end
  elseif L3_2 then
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = L5_2
    return L6_2, L7_2, L8_2
  end
  L6_2 = "BLOCK"
  L7_2 = nil
  L8_2 = A0_2
  return L6_2, L7_2, L8_2
end

L0_1.onKeyEvent = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.appearCounter
  L5_2 = A1_2 * 2
  L4_2 = L4_2 + L5_2
  L5_2 = 0.8
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.appearCounter = L3_2
  L3_2 = A0_2.animationTimer
  L3_2 = L3_2 + A1_2
  A0_2.animationTimer = L3_2
  L3_2 = A0_2.animationState
  if L3_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2.getChild
    L5_2 = "bg"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2.animationTimer
    L5_2 = SLIDE_ANIMATION_DURATION
    if L4_2 < L5_2 then
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L5_2 = A0_2.animationTimer
      L6_2 = gamelua
      L6_2 = L6_2.screenWidth
      L7_2 = gamelua
      L7_2 = L7_2.screenWidth
      L8_2 = L3_2.width
      L7_2 = L7_2 - L8_2
      L7_2 = L7_2 * 0.5
      L6_2 = L6_2 - L7_2
      L5_2 = L5_2 * L6_2
      L6_2 = SLIDE_ANIMATION_DURATION
      L5_2 = L5_2 / L6_2
      L4_2 = L4_2 - L5_2
      L3_2.x = L4_2
    else
      L4_2 = A0_2.animationTimer
      L5_2 = SLIDE_ANIMATION_DURATION
      L4_2 = L4_2 - L5_2
      A0_2.animationTimer = L4_2
      A0_2.animationState = 1
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L5_2 = L3_2.width
      L4_2 = L4_2 - L5_2
      L4_2 = L4_2 * 0.5
      L3_2.x = L4_2
    end
  else
    L3_2 = A0_2.animationState
    if L3_2 == 1 then
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "bg"
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = 0
      L5_2 = A0_2.animationTimer
      L6_2 = OPEN_ANIMATION_DURATION
      if L5_2 < L6_2 then
        L5_2 = 0
        L6_2 = A0_2.bgEndHeight
        if L6_2 then
          L6_2 = A0_2.animationTimer
          L7_2 = A0_2.bgEndHeight
          L7_2 = L7_2 - L4_2
          L6_2 = L6_2 * L7_2
          L7_2 = OPEN_ANIMATION_DURATION
          L6_2 = L6_2 / L7_2
          L5_2 = L4_2 + L6_2
          L7_2 = L3_2
          L6_2 = L3_2.setSize
          L8_2 = A0_2.bgEndWidth
          L9_2 = L5_2
          L6_2(L7_2, L8_2, L9_2)
        end
        L6_2 = gamelua
        L6_2 = L6_2.screenHeight
        L6_2 = L6_2 - L5_2
        L6_2 = L6_2 * 0.5
        L3_2.y = L6_2
      else
        A0_2.animationState = 2
        L5_2 = A0_2.animationTimer
        L6_2 = OPEN_ANIMATION_DURATION
        L5_2 = L5_2 - L6_2
        A0_2.animationTimer = L5_2
        L6_2 = A0_2
        L5_2 = A0_2.getChild
        L7_2 = "title"
        L5_2 = L5_2(L6_2, L7_2)
        L7_2 = A0_2
        L6_2 = A0_2.getChild
        L8_2 = "close"
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = A0_2
        L7_2 = A0_2.getChild
        L9_2 = "confirm"
        L7_2 = L7_2(L8_2, L9_2)
        L9_2 = A0_2
        L8_2 = A0_2.getChild
        L10_2 = "content"
        L8_2 = L8_2(L9_2, L10_2)
        L10_2 = A0_2
        L9_2 = A0_2.getChild
        L11_2 = "contentImage"
        L9_2 = L9_2(L10_2, L11_2)
        L11_2 = A0_2
        L10_2 = A0_2.getChild
        L12_2 = "buyall"
        L10_2 = L10_2(L11_2, L12_2)
        L12_2 = A0_2
        L11_2 = A0_2.getChild
        L13_2 = "price"
        L11_2 = L11_2(L12_2, L13_2)
        L5_2.visible = true
        L7_2.visible = true
        L10_2.visible = true
        L8_2.visible = true
        if L9_2 then
          L9_2.visible = true
        end
        L12_2 = A0_2.hideCloseButton
        if not L12_2 then
          L6_2.visible = true
        end
        L13_2 = A0_2
        L12_2 = A0_2.layout
        L12_2(L13_2)
      end
    else
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "title"
      L3_2 = L3_2(L4_2, L5_2)
      L5_2 = A0_2
      L4_2 = A0_2.getChild
      L6_2 = "close"
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = A0_2
      L5_2 = A0_2.getChild
      L7_2 = "confirm"
      L5_2 = L5_2(L6_2, L7_2)
      L7_2 = A0_2
      L6_2 = A0_2.getChild
      L8_2 = "content"
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = A0_2
      L7_2 = A0_2.getChild
      L9_2 = "contentImage"
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2.getChild
      L10_2 = "buyall"
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = A0_2
      L9_2 = A0_2.getChild
      L11_2 = "price"
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L3_2.alpha = L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L4_2.alpha = L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L5_2.alpha = L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L8_2.alpha = L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L6_2.alpha = L10_2
      if L7_2 then
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.min
        L11_2 = A0_2.animationTimer
        L12_2 = FADE_IN_DURATION
        L11_2 = L11_2 / L12_2
        L12_2 = 1
        L10_2 = L10_2(L11_2, L12_2)
        L7_2.alpha = L10_2
      end
    end
  end
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.appearCounter
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = PurchaseOppositeSidePrompt

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = true
  g_showCoinParticles = L1_2
  L1_2 = gamelua
  L1_2.g_gamePaused = false
  L1_2 = gamelua
  L1_2.g_showingOppositeSideBirdPurchase = false
  L1_2 = gamelua
  L1_2 = L1_2.enableGameUpdate
  L1_2()
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
