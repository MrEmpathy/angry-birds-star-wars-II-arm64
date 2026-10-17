local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CharacterMenuShop = L0_1
L0_1 = CharacterMenuShop
L1_1 = {}
L0_1.drawBatches = L1_1
L0_1 = CharacterMenuShop
L0_1.MAX_ROWS = 5
L0_1 = CharacterMenuShop
L0_1.isShown = false
L0_1 = CharacterMenuShop
L0_1.TAB_CHARACTERS = 1
L0_1 = CharacterMenuShop
L0_1.TAB_BIRD_SIDE_SHOP = 2
L0_1 = CharacterMenuShop
L0_1.TAB_PORK_SIDE_SHOP = 3
L0_1 = CharacterMenuShop
L0_1.MENU_CHARACTER_BUTTON_ALPHA = 0.5
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CharacterMenuShop
  L1_2.isShown = false
  L1_2 = gamelua
  L1_2 = L1_2.isPCVersion
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.screenHeight
    L2_2 = gamelua
    L2_2 = L2_2.screenWidth
    if L1_2 == L2_2 then
      A0_2.maxBtnsPerRow = 4
  end
  else
    A0_2.maxBtnsPerRow = 5
  end
  A0_2.transition = 0
  L1_2 = A0_2.isInMenu
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isDarkSide
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = CharacterMenuShop
      L1_2 = L1_2.TAB_PORK_SIDE_SHOP
      A0_2.currentTab = L1_2
    else
      L1_2 = CharacterMenuShop
      L1_2 = L1_2.TAB_BIRD_SIDE_SHOP
      A0_2.currentTab = L1_2
    end
  else
    L1_2 = CharacterMenuShop
    L1_2 = L1_2.TAB_CHARACTERS
    A0_2.currentTab = L1_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isOppositeSideCharacterEnabledForSide
  L3_2 = gamelua
  L3_2 = L3_2.SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.isDarkSide
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isOppositeSideCharacterEnabledInLevel
    L3_2 = gamelua
    L3_2 = L3_2.levelName
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = A0_2.isInMenu
    end
  end
  A0_2.oppositeSideAvailable = L1_2
  L1_2 = ui
  L1_2 = L1_2.ShopBackgroundButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgButton"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bgButton = L1_2
  L1_2 = A0_2.bgButton
  L1_2.dragTreshold = 100
  L1_2 = A0_2.bgButton
  L1_2.returnValue = "BG_CLICKED"
  L1_2 = ui
  L1_2 = L1_2.ScrollFrame
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = "scrollFrame_"
  L5_2 = A0_2.name
  L4_2 = L4_2 .. L5_2
  L3_2.name = L4_2
  L3_2.enableBottomAnchor = true
  L3_2.blockMouseWheel = false
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.scrollFrame = L1_2
  L1_2 = A0_2.scrollFrame
  L2_2 = A0_2.handleDrawBatches
  L1_2.drawFunction = L2_2
  L1_2 = A0_2.scrollFrame
  L2_2 = {}
  L1_2.anchors = L2_2
  L1_2 = A0_2.scrollFrame
  L2_2 = L1_2
  L1_2 = L1_2.resetState
  L1_2(L2_2)
  L1_2 = A0_2.scrollFrame
  L1_2.scroll_axis = "y"
  L1_2 = A0_2.scrollFrame
  
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A0_3.clip
    if L3_3 ~= nil then
      L4_3 = _G
      L4_3 = L4_3.res
      L4_3 = L4_3.setClipRect
      L5_3 = L3_3.x
      L6_3 = L3_3.y
      L7_3 = L3_3.w
      L8_3 = L3_3.h
      L4_3(L5_3, L6_3, L7_3, L8_3)
    end
    L4_3 = Frame
    L4_3 = L4_3.draw
    L5_3 = A0_3
    L6_3 = _G
    L6_3 = L6_3.math
    L6_3 = L6_3.floor
    L7_3 = A0_3.scroll
    L7_3 = L7_3.x
    L7_3 = A1_3 - L7_3
    L6_3 = L6_3(L7_3)
    L7_3 = _G
    L7_3 = L7_3.math
    L7_3 = L7_3.floor
    L8_3 = A0_3.scroll
    L8_3 = L8_3.y
    L8_3 = A2_3 - L8_3
    L7_3, L8_3 = L7_3(L8_3)
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = CharacterMenuShop
    L4_3 = L4_3.batchesDrawn
    if not L4_3 then
      L5_3 = A0_3
      L4_3 = A0_3.drawFunction
      L6_3 = _G
      L6_3 = L6_3.math
      L6_3 = L6_3.floor
      L7_3 = A0_3.scroll
      L7_3 = L7_3.x
      L7_3 = A1_3 - L7_3
      L6_3 = L6_3(L7_3)
      L7_3 = _G
      L7_3 = L7_3.math
      L7_3 = L7_3.floor
      L8_3 = A0_3.scroll
      L8_3 = L8_3.y
      L8_3 = A2_3 - L8_3
      L7_3, L8_3 = L7_3(L8_3)
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = CharacterMenuShop
      L4_3.batchesDrawn = true
    end
    if L3_3 then
      L4_3 = _G
      L4_3 = L4_3.res
      L4_3 = L4_3.setClipRect
      L5_3 = 0
      L6_3 = 0
      L7_3 = gamelua
      L7_3 = L7_3.screenWidth
      L8_3 = gamelua
      L8_3 = L8_3.screenHeight
      L4_3(L5_3, L6_3, L7_3, L8_3)
    end
  end
  
  L1_2.draw = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refreshButtonList
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "characterButton"
  L3_2.returnValue = "SWITCH_TO_CHARACTER_SELECTION"
  L3_2.refuseDragTargetting = true
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.characterButton = L1_2
  L1_2 = A0_2.characterButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "characterMenuShopButton"
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.isDarkSide
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.characterButton
  L1_2(L2_2, L3_2)
end

L0_1.generateCharacterButton = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.storedGlowStates = L1_2
  L1_2 = A0_2.scrollFrame
  L2_2 = L1_2
  L1_2 = L1_2.getChild
  L3_2 = "carboniteButton"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.carboniteButtonBGGlow
    if L2_2 then
      L2_2 = A0_2.storedGlowStates
      L3_2 = L1_2.carboniteButtonBGGlow
      L3_2 = L3_2.angle
      L2_2.bgGlowAngle = L3_2
    end
  end
  if L1_2 then
    L2_2 = L1_2.carboniteGlow
    if L2_2 then
      L2_2 = A0_2.storedGlowStates
      L3_2 = L1_2.carboniteGlow
      L3_2 = L3_2.alpha
      L2_2.glowAlpha = L3_2
      L2_2 = A0_2.storedGlowStates
      L3_2 = L1_2.carboniteGlow
      L3_2 = L3_2.direction
      L2_2.glowDirection = L3_2
    end
  end
  L2_2 = {}
  A0_2.buttons = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.removeAllChildren
  L2_2(L3_2)
  L2_2 = A0_2.scrollFrame
  L3_2 = L2_2
  L2_2 = L2_2.removeAllChildren
  L2_2(L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isOppositeSideCharacterEnabledForSide
  L4_2 = gamelua
  L4_2 = L4_2.SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.isDarkSide
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.isOppositeSideCharacterEnabledInLevel
    L4_2 = gamelua
    L4_2 = L4_2.levelName
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2.isInMenu
    end
  end
  A0_2.oppositeSideAvailable = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bgButton
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.ShopBackground
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "ShopBackground"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.bgBox = L2_2
  L2_2 = A0_2.bgBox
  L3_2 = L2_2
  L2_2 = L2_2.setColor
  L4_2 = 0.32
  L5_2 = 0.11
  L6_2 = 0.25
  L7_2 = 0.85
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2.bgBox
  L3_2 = A0_2.transition
  L2_2.transition = L3_2
  L2_2 = A0_2.bgBox
  L3_2 = A0_2.currentTab
  L2_2.selectedTab = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bgBox
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.Characters
  L2_2 = L2_2.lightSideChars
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.isDarkSideLevel
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.Characters
    L2_2 = L3_2.darkSideChars
  end
  L3_2 = A0_2.oppositeSideAvailable
  if L3_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.objects
    L3_2 = L3_2.isDarkSideLevel
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.pairs
      L4_2 = gamelua
      L4_2 = L4_2.Characters
      L4_2 = L4_2.darkSideChars
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = _G
        L8_2 = L8_2.table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
      L3_2 = _G
      L3_2 = L3_2.pairs
      L4_2 = gamelua
      L4_2 = L4_2.Characters
      L4_2 = L4_2.lightSideChars
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = _G
        L8_2 = L8_2.table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    else
      L3_2 = _G
      L3_2 = L3_2.pairs
      L4_2 = gamelua
      L4_2 = L4_2.Characters
      L4_2 = L4_2.lightSideChars
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = _G
        L8_2 = L8_2.table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
      L3_2 = _G
      L3_2 = L3_2.pairs
      L4_2 = gamelua
      L4_2 = L4_2.Characters
      L4_2 = L4_2.darkSideChars
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = _G
        L8_2 = L8_2.table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L3_2 = A0_2.isInMenu
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.addChild
    L5_2 = A0_2.characterButton
    L3_2(L4_2, L5_2)
  end
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "tabBirdSideButton"
  L5_2.returnValue = "SWITCH_TO_BIRD_SIDE_SHOP"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.tabBirdSideButton = L3_2
  L3_2 = A0_2.tabBirdSideButton
  L4_2 = L3_2
  L3_2 = L3_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "shopButton"
  L7_2 = false
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = A0_2.tabBirdSideButton
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "tabPorkSideButton"
  L5_2.returnValue = "SWITCH_TO_PORK_SIDE_SHOP"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.tabPorkSideButton = L3_2
  L3_2 = A0_2.tabPorkSideButton
  L4_2 = L3_2
  L3_2 = L3_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "shopButton"
  L7_2 = true
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = A0_2.tabPorkSideButton
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.transitionDirection
  if L3_2 then
    L3_2 = A0_2.tabBirdSideButton
    L3_2.visible = false
    L3_2 = A0_2.tabPorkSideButton
    L3_2.visible = false
    L3_2 = A0_2.bgBox
    L3_2.sideSwitchButtonVisible = false
  else
    L3_2 = A0_2.bgBox
    L3_2.sideSwitchButtonVisible = true
  end
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = A0_2.scrollFrame
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.currentTab
  L4_2 = CharacterMenuShop
  L4_2 = L4_2.TAB_CHARACTERS
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.addCharacterTabButtons
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.currentTab
    L4_2 = CharacterMenuShop
    L4_2 = L4_2.TAB_BIRD_SIDE_SHOP
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.addShopTabButtons
      L5_2 = false
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2.currentTab
      L4_2 = CharacterMenuShop
      L4_2 = L4_2.TAB_PORK_SIDE_SHOP
      if L3_2 == L4_2 then
        L4_2 = A0_2
        L3_2 = A0_2.addShopTabButtons
        L5_2 = true
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = A0_2.isInMenu
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.ui
    L3_2 = L3_2.ScallableButton
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.name = "pauseButton"
    L5_2.activateOnRelease = true
    L5_2.refuseDragTargetting = true
    L5_2.clickSound = "ButtonBack"
    L5_2.returnValue = "PAUSE_CLICKED"
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.pauseButton = L3_2
    L3_2 = A0_2.pauseButton
    L4_2 = L3_2
    L3_2 = L3_2.setImage
    L5_2 = gamelua
    L5_2 = L5_2.getButtonImageName
    L6_2 = "pauseButton"
    L7_2 = gamelua
    L7_2 = L7_2.SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.isDarkSide
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = A0_2
    L3_2 = A0_2.addChild
    L5_2 = A0_2.pauseButton
    L3_2(L4_2, L5_2)
  end
end

L0_1.refreshButtonList = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = ui
  L2_2 = L2_2.ShopFrame
  L2_2 = L2_2.getData
  L2_2 = L2_2()
  if A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.addOffersAndBundles
    L5_2 = L2_2.specialOffers
    L6_2 = false
    L7_2 = true
    L8_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2
    L3_2 = A0_2.addOffersAndBundles
    L5_2 = L2_2.bundlesCarousel
    L6_2 = false
    L7_2 = true
    L8_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.addOffersAndBundles
    L5_2 = L2_2.specialOffers
    L6_2 = true
    L7_2 = false
    L8_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2
    L3_2 = A0_2.addOffersAndBundles
    L5_2 = L2_2.bundlesCarousel
    L6_2 = true
    L7_2 = false
    L8_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L2_2.singlesCarousel
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.buyButtons
    L8_2 = L8_2[1]
    L8_2 = L8_2.bundle
    L8_2 = L8_2[1]
    L8_2 = L8_2.character
    L9_2 = ui
    L9_2 = L9_2.ScallableButton
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L12_2 = "button_"
    L13_2 = L7_2.id
    L12_2 = L12_2 .. L13_2
    L11_2.name = L12_2
    L11_2.returnValue = "BUY_CHARACTER"
    L12_2 = {}
    L13_2 = L7_2.buyButtons
    L13_2 = L13_2[1]
    L13_2 = L13_2.bundle
    L13_2 = L13_2[1]
    L13_2 = L13_2.character
    L12_2.birdName = L13_2
    L13_2 = L7_2.description
    L12_2.description = L13_2
    L13_2 = L7_2.buyButtons
    L12_2.buyButtons = L13_2
    L11_2.meta = L12_2
    L11_2.refuseDragTargetting = true
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2.draw
    L9_2.drawBatch = L10_2
    
    function L10_2(A0_3, A1_3)
    end
    
    L9_2.draw = L10_2
    L11_2 = L9_2
    L10_2 = L9_2.setImage
    L12_2 = gamelua
    L12_2 = L12_2.Characters
    L12_2 = L12_2.list
    L12_2 = L12_2[L8_2]
    L12_2 = L12_2.button
    L10_2(L11_2, L12_2)
    L10_2 = {}
    L9_2.badges = L10_2
    L11_2 = A0_2
    L10_2 = A0_2.addBuyBadge
    L12_2 = L9_2
    L13_2 = L8_2
    L14_2 = L7_2.buyButtons
    L14_2 = L14_2[1]
    L14_2 = L14_2.price
    L10_2(L11_2, L12_2, L13_2, L14_2)
    if not A1_2 then
      L10_2 = gamelua
      L10_2 = L10_2.Characters
      L10_2 = L10_2.list
      L10_2 = L10_2[L8_2]
      L10_2 = L10_2.isSith
      if not L10_2 then
        goto lbl_103
      end
    end
    if A1_2 then
      L10_2 = gamelua
      L10_2 = L10_2.Characters
      L10_2 = L10_2.list
      L10_2 = L10_2[L8_2]
      L10_2 = L10_2.isSith
      ::lbl_103::
      if L10_2 then
        L10_2 = A0_2.scrollFrame
        L11_2 = L10_2
        L10_2 = L10_2.addChild
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
        L10_2 = _G
        L10_2 = L10_2.table
        L10_2 = L10_2.insert
        L11_2 = A0_2.buttons
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
end

L0_1.addShopTabButtons = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.ceil
  L6_2 = A0_2.buttons
  L6_2 = #L6_2
  L7_2 = A0_2.maxBtnsPerRow
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2(L6_2)
  A0_2.hasOffers = false
  if A4_2 then
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.MAX_ROWS
    if L5_2 >= L6_2 then
      return
    end
  end
  L6_2 = 0
  L7_2 = _G
  L7_2 = L7_2.ipairs
  L8_2 = A1_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.buyButtons
    L12_2 = L12_2[1]
    L12_2 = L12_2.bundle
    L12_2 = #L12_2
    L12_2 = 1 < L12_2
    if L12_2 then
      L13_2 = ui
      L13_2 = L13_2.ShopOfferButton
      L14_2 = L13_2
      L13_2 = L13_2.new
      L15_2 = {}
      L16_2 = "offerButton_"
      L17_2 = L11_2.id
      L16_2 = L16_2 .. L17_2
      L15_2.name = L16_2
      L15_2.width = 521
      L15_2.height = 111
      L15_2.returnValue = "BUY_BUNDLE"
      L16_2 = L11_2.buyButtons
      L16_2 = L16_2[1]
      L16_2 = L16_2.price
      L15_2.price = L16_2
      L16_2 = L11_2.backgroundIndex
      L15_2.backgroundIndex = L16_2
      L16_2 = L11_2.reduction
      L15_2.reduction = L16_2
      L16_2 = {}
      L17_2 = L11_2.buyButtons
      L17_2 = L17_2[1]
      L17_2 = L17_2.bundle
      L17_2 = L17_2[1]
      L17_2 = L17_2.character
      L16_2.birdName = L17_2
      L17_2 = L11_2.description
      L16_2.description = L17_2
      L17_2 = L11_2.buyButtons
      L16_2.buyButtons = L17_2
      L16_2.isSale = true
      L15_2.meta = L16_2
      L15_2.refuseDragTargetting = true
      L16_2 = {}
      L15_2.badges = L16_2
      L15_2.bundle = true
      L15_2.offer = true
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = false
      L15_2 = _G
      L15_2 = L15_2.ipairs
      L16_2 = L11_2.buyButtons
      L16_2 = L16_2[1]
      L16_2 = L16_2.bundle
      L15_2, L16_2, L17_2 = L15_2(L16_2)
      for L18_2, L19_2 in L15_2, L16_2, L17_2 do
        if A2_2 then
          L20_2 = gamelua
          L20_2 = L20_2.Characters
          L20_2 = L20_2.list
          L21_2 = L19_2.character
          L20_2 = L20_2[L21_2]
          L20_2 = L20_2.isSith
          if not L20_2 then
            goto lbl_99
          end
        end
        if A3_2 then
          L20_2 = gamelua
          L20_2 = L20_2.Characters
          L20_2 = L20_2.list
          L21_2 = L19_2.character
          L20_2 = L20_2[L21_2]
          L20_2 = L20_2.isSith
          ::lbl_99::
          if L20_2 then
            L14_2 = true
          end
        end
      end
      if L14_2 then
        L15_2 = A0_2.scrollFrame
        L16_2 = L15_2
        L15_2 = L15_2.addChild
        L17_2 = L13_2
        L15_2(L16_2, L17_2)
        L15_2 = _G
        L15_2 = L15_2.table
        L15_2 = L15_2.insert
        L16_2 = A0_2.buttons
        L17_2 = L13_2
        L15_2(L16_2, L17_2)
        L6_2 = L6_2 + 1
        A0_2.hasOffers = true
      end
    else
      L13_2 = L11_2.buyButtons
      L13_2 = L13_2[1]
      L13_2 = L13_2.bundle
      L13_2 = L13_2[1]
      L13_2 = L13_2.character
      L14_2 = ui
      L14_2 = L14_2.ShopOfferButton
      L15_2 = L14_2
      L14_2 = L14_2.new
      L16_2 = {}
      L17_2 = "offerButton_"
      L18_2 = L11_2.id
      L17_2 = L17_2 .. L18_2
      L16_2.name = L17_2
      L16_2.width = 521
      L16_2.height = 111
      L16_2.returnValue = "BUY_CHARACTER"
      L17_2 = L11_2.buyButtons
      L17_2 = L17_2[1]
      L17_2 = L17_2.price
      L16_2.price = L17_2
      L17_2 = L11_2.backgroundIndex
      L16_2.backgroundIndex = L17_2
      L17_2 = L11_2.reduction
      L16_2.reduction = L17_2
      L17_2 = {}
      L18_2 = L11_2.buyButtons
      L18_2 = L18_2[1]
      L18_2 = L18_2.bundle
      L18_2 = L18_2[1]
      L18_2 = L18_2.character
      L17_2.birdName = L18_2
      L18_2 = L11_2.description
      L17_2.description = L18_2
      L18_2 = L11_2.buyButtons
      L17_2.buyButtons = L18_2
      L17_2.isSale = true
      L16_2.meta = L17_2
      L16_2.refuseDragTargetting = true
      L17_2 = {}
      L16_2.badges = L17_2
      L16_2.offer = true
      L14_2 = L14_2(L15_2, L16_2)
      if A2_2 then
        L15_2 = gamelua
        L15_2 = L15_2.Characters
        L15_2 = L15_2.list
        L15_2 = L15_2[L13_2]
        L15_2 = L15_2.isSith
        if not L15_2 then
          goto lbl_177
        end
      end
      if A3_2 then
        L15_2 = gamelua
        L15_2 = L15_2.Characters
        L15_2 = L15_2.list
        L15_2 = L15_2[L13_2]
        L15_2 = L15_2.isSith
        ::lbl_177::
        if L15_2 then
          L15_2 = A0_2.scrollFrame
          L16_2 = L15_2
          L15_2 = L15_2.addChild
          L17_2 = L14_2
          L15_2(L16_2, L17_2)
          L15_2 = _G
          L15_2 = L15_2.table
          L15_2 = L15_2.insert
          L16_2 = A0_2.buttons
          L17_2 = L14_2
          L15_2(L16_2, L17_2)
          L6_2 = L6_2 + 1
          A0_2.hasOffers = true
        end
      end
    end
    if A4_2 then
      L13_2 = L5_2 + L6_2
      L14_2 = CharacterMenuShop
      L14_2 = L14_2.MAX_ROWS
      if L13_2 >= L14_2 then
        return
      end
    end
  end
end

L0_1.addOffersAndBundles = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = gamelua
  L2_2 = L2_2.getClaimableRewards
  L2_2 = L2_2()
  if 0 < L2_2 then
    L3_2 = ui
    L3_2 = L3_2.Image
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.name = "giftButtonGlow"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.setImage
    L6_2 = "EAGLE_SHINE_1"
    L4_2(L5_2, L6_2)
    L3_2.angle = 0
    L4_2 = A0_2.scrollFrame
    L5_2 = L4_2
    L4_2 = L4_2.addChild
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = ui
    L4_2 = L4_2.ScallableButton
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L6_2.name = "giftButton"
    L6_2.returnValue = "GIFT_BUTTON_CLICKED"
    L6_2.refuseDragTargetting = true
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = {}
    L4_2.badges = L5_2
    L4_2.doNotBatch = true
    L6_2 = L4_2
    L5_2 = L4_2.setImage
    L7_2 = gamelua
    L7_2 = L7_2.getButtonImageName
    L8_2 = "presentButton"
    L9_2 = gamelua
    L9_2 = L9_2.objects
    L9_2 = L9_2.isDarkSideLevel
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L5_2 = A0_2.scrollFrame
    L6_2 = L5_2
    L5_2 = L5_2.addChild
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L4_2.giftButtonGlow = L3_2
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.insert
    L6_2 = A0_2.buttons
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "carboniteButtonBGGlow"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "EAGLE_SHINE_1"
  L4_2(L5_2, L6_2)
  L3_2.visible = false
  L3_2.angle = 0
  L4_2 = A0_2.scrollFrame
  L5_2 = L4_2
  L4_2 = L4_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "carboniteButton"
  L6_2.returnValue = "CARBONITE_BUTTON_CLICKED"
  L6_2.refuseDragTargetting = true
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L4_2.badges = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = gamelua
  L7_2 = L7_2.getButtonImageName
  L8_2 = "carboniteButton"
  L9_2 = gamelua
  L9_2 = L9_2.objects
  L9_2 = L9_2.isDarkSideLevel
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L4_2.carboniteButtonBGGlow = L3_2
  L4_2.doNotBatch = true
  L5_2 = A0_2.scrollFrame
  L6_2 = L5_2
  L5_2 = L5_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = _G
  L5_2 = L5_2.table
  L5_2 = L5_2.insert
  L6_2 = A0_2.buttons
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.ProgressBar
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "progressBar"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.progress = L5_2
  L7_2 = L5_2
  L6_2 = L5_2.setImages
  L8_2 = "BTN_RED2_1"
  L9_2 = "BTN_GREEN2_1"
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.setValue
  L8_2 = 0
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.setMax
  L8_2 = 100
  L6_2(L7_2, L8_2)
  L5_2.visible = false
  L7_2 = L4_2
  L6_2 = L4_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "carboniteLights"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = "MYSTERY_CARBONITE_MELT_LIGHTS_2"
  L7_2(L8_2, L9_2)
  L6_2.visible = false
  L4_2.carboniteLights = L6_2
  L8_2 = L4_2
  L7_2 = L4_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.Image
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "carboniteGlow"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.setImage
  L10_2 = "MYSTERY_CARBONITE_MELT_LIGHTS_1"
  L8_2(L9_2, L10_2)
  L7_2.visible = false
  L7_2.alpha = 0
  L7_2.direction = 1
  L4_2.carboniteGlow = L7_2
  L9_2 = L4_2
  L8_2 = L4_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = gamelua
  L8_2 = L8_2.ui
  L8_2 = L8_2.DummyText
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.name = "claimText"
  L10_2.text = ""
  L11_2 = gamelua
  L11_2 = L11_2.getFontBasic
  L11_2 = L11_2()
  L10_2.font = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L5_2.claimText = L8_2
  L10_2 = L5_2
  L9_2 = L5_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = gamelua
  L9_2 = L9_2.ui
  L9_2 = L9_2.CarboniteAvailableAnimation
  L9_2 = L9_2.getMeltProgress
  L9_2 = L9_2()
  L10_2 = gamelua
  L10_2 = L10_2.ui
  L10_2 = L10_2.CarboniteAvailableAnimation
  L10_2 = L10_2.getMeltTimeString
  L11_2 = nil
  L12_2 = nil
  L13_2 = true
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  if L9_2 and L9_2 < 100 and L10_2 then
    L12_2 = L5_2
    L11_2 = L5_2.setValue
    L13_2 = L9_2
    L11_2(L12_2, L13_2)
    L5_2.visible = true
    L11_2 = L5_2.claimText
    L12_2 = L11_2
    L11_2 = L11_2.setText
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L7_2.visible = true
  elseif L9_2 and L9_2 == 100 then
    L12_2 = L5_2
    L11_2 = L5_2.setValue
    L13_2 = 100
    L11_2(L12_2, L13_2)
    L5_2.visible = true
    L11_2 = L5_2.claimText
    L12_2 = L11_2
    L11_2 = L11_2.setText
    L13_2 = gamelua
    L13_2 = L13_2.getText
    L14_2 = "TEXT_CARBONITE_CLAIM"
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L7_2.visible = false
    L3_2.visible = true
    L11_2 = A0_2.storedGlowStates
    if L11_2 then
      L11_2 = A0_2.storedGlowStates
      L11_2 = L11_2.bgGlowAngle
      if L11_2 then
        L11_2 = A0_2.storedGlowStates
        L11_2 = L11_2.bgGlowAngle
        L3_2.angle = L11_2
      end
    end
  else
    L5_2.visible = false
    L7_2.visible = false
  end
  L11_2 = A0_2.storedGlowStates
  if L11_2 then
    L11_2 = A0_2.storedGlowStates
    L11_2 = L11_2.glowDirection
    if L11_2 then
      L11_2 = A0_2.storedGlowStates
      L11_2 = L11_2.glowDirection
      L7_2.direction = L11_2
      L11_2 = A0_2.storedGlowStates
      L11_2 = L11_2.glowAlpha
      L7_2.alpha = L11_2
    end
  end
  A0_2.storedGlowStates = nil
  L11_2 = _G
  L11_2 = L11_2.ipairs
  L12_2 = A1_2
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  for L14_2, L15_2 in L11_2, L12_2, L13_2 do
    L16_2 = gamelua
    L16_2 = L16_2.isCharacterVisible
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      L16_2 = ui
      L16_2 = L16_2.ScallableButton
      L17_2 = L16_2
      L16_2 = L16_2.new
      L18_2 = {}
      L19_2 = "button_"
      L20_2 = L15_2
      L19_2 = L19_2 .. L20_2
      L18_2.name = L19_2
      L18_2.returnValue = "CHARACTER_CLICKED"
      L19_2 = {}
      L19_2.birdName = L15_2
      L18_2.meta = L19_2
      L18_2.refuseDragTargetting = true
      L16_2 = L16_2(L17_2, L18_2)
      L18_2 = L16_2
      L17_2 = L16_2.setImage
      L19_2 = gamelua
      L19_2 = L19_2.Characters
      L19_2 = L19_2.list
      L19_2 = L19_2[L15_2]
      L19_2 = L19_2.button
      L17_2(L18_2, L19_2)
      L16_2.birdName = L15_2
      L17_2 = {}
      L16_2.badges = L17_2
      L17_2 = {}
      L16_2.badgeOrder = L17_2
      L18_2 = A0_2
      L17_2 = A0_2.addAmountBadges
      L19_2 = L16_2
      L20_2 = L15_2
      L17_2 = L17_2(L18_2, L19_2, L20_2)
      if not (0 < L17_2) then
        L18_2 = L16_2.telepodAmountSprite
        L18_2 = L18_2.visible
        if not L18_2 then
          L18_2 = L16_2.unlimitedAmountSprite
          L18_2 = L18_2.visible
          if not L18_2 then
            goto lbl_311
          end
        end
      end
      L19_2 = A0_2
      L18_2 = A0_2.shouldDisableCharacterSelection
      L18_2 = L18_2(L19_2)
      if L18_2 then
        L18_2 = CharacterMenuShop
        L18_2 = L18_2.MENU_CHARACTER_BUTTON_ALPHA
        L16_2.alpha = L18_2
        L16_2.returnValue = nil
      end
      L18_2 = L16_2.draw
      L16_2.drawBatch = L18_2
      
      function L18_2(A0_3, A1_3)
      end
      
      L16_2.draw = L18_2
      L18_2 = A0_2.scrollFrame
      L19_2 = L18_2
      L18_2 = L18_2.addChild
      L20_2 = L16_2
      L18_2(L19_2, L20_2)
      L18_2 = _G
      L18_2 = L18_2.table
      L18_2 = L18_2.insert
      L19_2 = A0_2.buttons
      L20_2 = L16_2
      L18_2(L19_2, L20_2)
    end
    ::lbl_311::
  end
  L11_2 = A0_2.oppositeSideAvailable
  if not L11_2 then
    L11_2 = gamelua
    L11_2 = L11_2.getCharacterAmountForSide
    L12_2 = gamelua
    L12_2 = L12_2.objects
    L12_2 = L12_2.isDarkSideLevel
    L12_2 = not L12_2
    L11_2 = L11_2(L12_2)
    if 0 < L11_2 then
      L11_2 = ui
      L11_2 = L11_2.ScallableButton
      L12_2 = L11_2
      L11_2 = L11_2.new
      L13_2 = {}
      L13_2.name = "buyOpenOppositeSideButton"
      L13_2.returnValue = "BUY_OPPOSITE_SIDE_CLICKED"
      L13_2.refuseDragTargetting = true
      L11_2 = L11_2(L12_2, L13_2)
      A0_2.buyOpenOppositeSideButton = L11_2
      L11_2 = A0_2.buyOpenOppositeSideButton
      L12_2 = L11_2
      L11_2 = L11_2.setImage
      L13_2 = gamelua
      L13_2 = L13_2.getButtonImageName
      L14_2 = "emblemButton"
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.isDarkSideLevel
      L15_2 = not L15_2
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2, L15_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L11_2 = A0_2.buyOpenOppositeSideButton
      L11_2.doNotBatch = true
      L11_2 = A0_2.scrollFrame
      L12_2 = L11_2
      L11_2 = L11_2.addChild
      L13_2 = A0_2.buyOpenOppositeSideButton
      L11_2(L12_2, L13_2)
      L11_2 = A0_2.buyOpenOppositeSideButton
      L12_2 = {}
      L11_2.badges = L12_2
      L11_2 = A0_2.buyOpenOppositeSideButton
      L12_2 = ui
      L12_2 = L12_2.Image
      L13_2 = L12_2
      L12_2 = L12_2.new
      L14_2 = {}
      L14_2.name = "priceBg"
      L12_2 = L12_2(L13_2, L14_2)
      L11_2.priceBG = L12_2
      L11_2 = A0_2.buyOpenOppositeSideButton
      L11_2 = L11_2.priceBG
      L12_2 = L11_2
      L11_2 = L11_2.setImage
      L13_2 = gamelua
      L13_2 = L13_2.getButtonImageName
      L14_2 = "hintPopupButton"
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.isDarkSideLevel
      L15_2 = not L15_2
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2, L15_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L11_2 = A0_2.buyOpenOppositeSideButton
      L11_2 = L11_2.priceBG
      L12_2 = L11_2
      L11_2 = L11_2.setScale
      L13_2 = 0.3
      L11_2(L12_2, L13_2)
      L11_2 = A0_2.buyOpenOppositeSideButton
      L12_2 = L11_2
      L11_2 = L11_2.addChild
      L13_2 = A0_2.buyOpenOppositeSideButton
      L13_2 = L13_2.priceBG
      L11_2(L12_2, L13_2)
      L11_2 = gamelua
      L11_2 = L11_2.getShopData
      L11_2 = L11_2()
      L11_2 = L11_2.singleLevelOppositeCharacterPrice
      if not L11_2 then
        L11_2 = 10
      end
      L12_2 = A0_2.buyOpenOppositeSideButton
      L13_2 = gamelua
      L13_2 = L13_2.ui
      L13_2 = L13_2.DummyText
      L14_2 = L13_2
      L13_2 = L13_2.new
      L15_2 = {}
      L15_2.name = "priceText"
      L16_2 = "#"
      L17_2 = L11_2
      L16_2 = L16_2 .. L17_2
      L15_2.text = L16_2
      L16_2 = gamelua
      L16_2 = L16_2.getFontIngameMoney
      L16_2 = L16_2()
      L15_2.font = L16_2
      L13_2 = L13_2(L14_2, L15_2)
      L12_2.priceText = L13_2
      L12_2 = A0_2.buyOpenOppositeSideButton
      L12_2 = L12_2.priceText
      L13_2 = L12_2
      L12_2 = L12_2.setScale
      L14_2 = 2.5
      L12_2(L13_2, L14_2)
      L12_2 = A0_2.buyOpenOppositeSideButton
      L12_2 = L12_2.priceBG
      L13_2 = L12_2
      L12_2 = L12_2.addChild
      L14_2 = A0_2.buyOpenOppositeSideButton
      L14_2 = L14_2.priceText
      L12_2(L13_2, L14_2)
      L12_2 = _G
      L12_2 = L12_2.table
      L12_2 = L12_2.insert
      L13_2 = A0_2.buttons
      L14_2 = A0_2.buyOpenOppositeSideButton
      L12_2(L13_2, L14_2)
    end
  end
  L11_2 = ui
  L11_2 = L11_2.ShopFrame
  L11_2 = L11_2.getData
  L11_2 = L11_2()
  L12_2 = A0_2.oppositeSideAvailable
  if L12_2 then
    L13_2 = A0_2
    L12_2 = A0_2.addOffersAndBundles
    L14_2 = L11_2.specialOffers
    L15_2 = true
    L16_2 = true
    L17_2 = true
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  else
    L12_2 = gamelua
    L12_2 = L12_2.SettingsWrapper
    L13_2 = L12_2
    L12_2 = L12_2.isDarkSide
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L13_2 = A0_2
      L12_2 = A0_2.addOffersAndBundles
      L14_2 = L11_2.specialOffers
      L15_2 = false
      L16_2 = true
      L17_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    else
      L13_2 = A0_2
      L12_2 = A0_2.addOffersAndBundles
      L14_2 = L11_2.specialOffers
      L15_2 = true
      L16_2 = false
      L17_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
end

L0_1.addCharacterTabButtons = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = gamelua
  L4_2 = L4_2.Characters
  L4_2 = L4_2.list
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.isSith
  L5_2 = ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "buyBg"
  L5_2 = L5_2(L6_2, L7_2)
  A1_2.buyBg = L5_2
  L5_2 = A1_2.buyBg
  L6_2 = L5_2
  L5_2 = L5_2.setImage
  L7_2 = "SHOP_PRICETAG"
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.DummyText
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "saleText"
  L8_2 = "#"
  L9_2 = A3_2
  L8_2 = L8_2 .. L9_2
  L7_2.text = L8_2
  L8_2 = gamelua
  L8_2 = L8_2.getFontIngameMoney
  L8_2 = L8_2()
  L7_2.font = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A1_2.buyText = L5_2
end

L0_1.addBuyBadge = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = gamelua
  L5_2 = L5_2.Characters
  L5_2 = L5_2.list
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.isSith
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "telepodAmountSprite"
  L6_2 = L6_2(L7_2, L8_2)
  A1_2.telepodAmountSprite = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.getTelepodAmount
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if 1 < L6_2 then
    L6_2 = A1_2.telepodAmountSprite
    L7_2 = L6_2
    L6_2 = L6_2.setImage
    L8_2 = gamelua
    L8_2 = L8_2.getButtonImageName
    L9_2 = "iconTelepods"
    L10_2 = L5_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L6_2 = gamelua
    L6_2 = L6_2.getTelepodAmount
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if 0 < L6_2 then
      L6_2 = A1_2.telepodAmountSprite
      L7_2 = L6_2
      L6_2 = L6_2.setImage
      L8_2 = gamelua
      L8_2 = L8_2.getButtonImageName
      L9_2 = "iconTelepod"
      L10_2 = L5_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    else
      L6_2 = gamelua
      L6_2 = L6_2.getSessionTelepodAmount
      L7_2 = A2_2
      L6_2 = L6_2(L7_2)
      if 0 < L6_2 then
        L6_2 = A1_2.telepodAmountSprite
        L7_2 = L6_2
        L6_2 = L6_2.setImage
        L8_2 = gamelua
        L8_2 = L8_2.getButtonImageName
        L9_2 = "iconTelepodUsed"
        L10_2 = L5_2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        L3_2 = true
      else
        L6_2 = A1_2.telepodAmountSprite
        L6_2.visible = false
      end
    end
  end
  L6_2 = A1_2.telepodAmountSprite
  L6_2 = L6_2.visible
  if L6_2 then
    L6_2 = _G
    L6_2 = L6_2.table
    L6_2 = L6_2.insert
    L7_2 = A1_2.badges
    L8_2 = 1
    L9_2 = A1_2.telepodAmountSprite
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "unlimitedAmountSprite"
  L6_2 = L6_2(L7_2, L8_2)
  A1_2.unlimitedAmountSprite = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.getUnlimitedAmount
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if 1 < L6_2 then
    L6_2 = A1_2.unlimitedAmountSprite
    L7_2 = L6_2
    L6_2 = L6_2.setImage
    L8_2 = gamelua
    L8_2 = L8_2.getButtonImageName
    L9_2 = "iconUnlimiteds"
    L10_2 = L5_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L6_2 = gamelua
    L6_2 = L6_2.getUnlimitedAmount
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if 0 < L6_2 then
      L6_2 = A1_2.unlimitedAmountSprite
      L7_2 = L6_2
      L6_2 = L6_2.setImage
      L8_2 = gamelua
      L8_2 = L8_2.getButtonImageName
      L9_2 = "iconUnlimited"
      L10_2 = L5_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    else
      L6_2 = gamelua
      L6_2 = L6_2.SettingsWrapper
      L7_2 = L6_2
      L6_2 = L6_2.getAmount
      L8_2 = A2_2
      L9_2 = "_unlimited"
      L8_2 = L8_2 .. L9_2
      L6_2 = L6_2(L7_2, L8_2)
      if 0 < L6_2 then
        L6_2 = A1_2.unlimitedAmountSprite
        L7_2 = L6_2
        L6_2 = L6_2.setImage
        L8_2 = gamelua
        L8_2 = L8_2.getButtonImageName
        L9_2 = "iconUnlimitedUsed"
        L10_2 = L5_2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        L4_2 = true
      else
        L6_2 = A1_2.unlimitedAmountSprite
        L6_2.visible = false
      end
    end
  end
  L6_2 = A1_2.unlimitedAmountSprite
  L6_2 = L6_2.visible
  if L6_2 then
    L6_2 = _G
    L6_2 = L6_2.table
    L6_2 = L6_2.insert
    L7_2 = A1_2.badges
    L8_2 = 1
    L9_2 = A1_2.unlimitedAmountSprite
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "amountBg"
  L6_2 = L6_2(L7_2, L8_2)
  A1_2.amountBg = L6_2
  L6_2 = A1_2.amountBg
  L7_2 = L6_2
  L6_2 = L6_2.setImage
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "characterMenuCounterBox"
  L10_2 = L5_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.getAmount
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  if 0 < L6_2 then
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badges
    L9_2 = 1
    L10_2 = A1_2.amountBg
    L7_2(L8_2, L9_2, L10_2)
  else
    L7_2 = A1_2.amountBg
    L7_2.visible = false
  end
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.DummyText
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "amountText"
  if 999 < L6_2 then
    L10_2 = "999+"
    if L10_2 then
      goto lbl_190
    end
  end
  L10_2 = _G
  L10_2 = L10_2.tostring
  L11_2 = L6_2
  L10_2 = L10_2(L11_2)
  ::lbl_190::
  L9_2.text = L10_2
  L10_2 = gamelua
  L10_2 = L10_2.getFontBasic
  L10_2 = L10_2()
  L9_2.font = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  A1_2.amountText = L7_2
  L8_2 = A0_2
  L7_2 = A0_2.shouldDisableCharacterSelection
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = A1_2.telepodAmountSprite
    L8_2 = CharacterMenuShop
    L8_2 = L8_2.MENU_CHARACTER_BUTTON_ALPHA
    L7_2.alpha = L8_2
    L7_2 = A1_2.unlimitedAmountSprite
    L8_2 = CharacterMenuShop
    L8_2 = L8_2.MENU_CHARACTER_BUTTON_ALPHA
    L7_2.alpha = L8_2
    L7_2 = A1_2.amountBg
    L8_2 = CharacterMenuShop
    L8_2 = L8_2.MENU_CHARACTER_BUTTON_ALPHA
    L7_2.alpha = L8_2
    L7_2 = A1_2.amountText
    L8_2 = CharacterMenuShop
    L8_2 = L8_2.MENU_CHARACTER_BUTTON_ALPHA
    L7_2.alpha = L8_2
  end
  if L3_2 and L4_2 then
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 1
    L10_2 = A1_2.telepodAmountSprite
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 2
    L10_2 = A1_2.unlimitedAmountSprite
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 3
    L10_2 = A1_2.amountBg
    L7_2(L8_2, L9_2, L10_2)
  elseif L3_2 and not L4_2 then
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 1
    L10_2 = A1_2.telepodAmountSprite
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 2
    L10_2 = A1_2.amountBg
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 3
    L10_2 = A1_2.unlimitedAmountSprite
    L7_2(L8_2, L9_2, L10_2)
  elseif not L3_2 and L4_2 then
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 1
    L10_2 = A1_2.unlimitedAmountSprite
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 2
    L10_2 = A1_2.amountBg
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 3
    L10_2 = A1_2.telepodAmountSprite
    L7_2(L8_2, L9_2, L10_2)
  else
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 1
    L10_2 = A1_2.amountBg
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 2
    L10_2 = A1_2.unlimitedAmountSprite
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A1_2.badgeOrder
    L9_2 = 3
    L10_2 = A1_2.telepodAmountSprite
    L7_2(L8_2, L9_2, L10_2)
  end
  return L6_2
end

L0_1.addAmountBadges = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.x
  L3_2 = A1_2 - L3_2
  L4_2 = A0_2.y
  A2_2 = A2_2 - L4_2
  A1_2 = L3_2
  L3_2 = A0_2.bgBox
  L4_2 = L3_2
  L3_2 = L3_2.isPosInside
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end

L0_1.isPosInside = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.visible = false
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_MENU_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_SWITCHED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_MENU_REFRESH
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_OPPOSITE_SIDE_BIRDS_ACTIVATED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NOTIFY_CARBONITE_MELT_IN_CHARACTER_MENU
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CONFIRM_PURCHASE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = "BTN_BG_LIGHT"
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = 1.1
  L6_2 = 1.25
  L7_2 = 1.275
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.ceil
  L9_2 = A0_2.buttons
  L9_2 = #L9_2
  L10_2 = A0_2.maxBtnsPerRow
  L9_2 = L9_2 / L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = L3_2 * 1.65
  L9_2 = L9_2 * L1_2
  A0_2.x = L9_2
  L9_2 = L4_2 * 0.75
  L9_2 = L9_2 * L1_2
  A0_2.y = L9_2
  L9_2 = A0_2.bgButton
  L10_2 = A0_2.x
  L9_2.pivotX = L10_2
  L9_2 = A0_2.bgButton
  L10_2 = A0_2.y
  L9_2.pivotY = L10_2
  L9_2 = A0_2.bgButton
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L9_2.w = L10_2
  L9_2 = A0_2.bgButton
  L10_2 = gamelua
  L10_2 = L10_2.screenHeight
  L9_2.h = L10_2
  L9_2 = A0_2.isInMenu
  if L9_2 then
    L9_2 = A0_2.characterButton
    L9_2.x = 0
    L9_2 = A0_2.characterButton
    L9_2.y = 0
    L9_2 = A0_2.characterButton
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = L1_2
    L9_2(L10_2, L11_2)
  end
  L9_2 = A0_2.tabBirdSideButton
  L9_2.x = 0
  L9_2 = A0_2.tabBirdSideButton
  L10_2 = L4_2 * L7_2
  L10_2 = L10_2 * L1_2
  L9_2.y = L10_2
  L9_2 = A0_2.tabBirdSideButton
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.tabPorkSideButton
  L9_2.x = 0
  L9_2 = A0_2.tabPorkSideButton
  L10_2 = A0_2.tabBirdSideButton
  L10_2 = L10_2.y
  L11_2 = L4_2 * L7_2
  L11_2 = L11_2 * L1_2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.tabPorkSideButton
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = gamelua
  L10_2 = L10_2.screenHeight
  L9_2.top = L10_2
  L9_2.bottom = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L9_2.left = L10_2
  L9_2.right = 0
  L10_2 = {}
  L11_2 = -1
  L12_2 = 1
  L13_2 = 1
  L14_2 = false
  L15_2 = _G
  L15_2 = L15_2.ipairs
  L16_2 = A0_2.buttons
  L15_2, L16_2, L17_2 = L15_2(L16_2)
  for L18_2, L19_2 in L15_2, L16_2, L17_2 do
    if L14_2 then
      L12_2 = L12_2 + 1
    end
    L14_2 = false
    L20_2 = false
    L21_2 = L19_2.offer
    if L21_2 then
      if L13_2 ~= 1 then
        L12_2 = L12_2 + 1
        L13_2 = 1
      end
      L21_2 = A0_2.maxBtnsPerRow
      L21_2 = L21_2 + 1
      L21_2 = L21_2 / 2
      L21_2 = L21_2 * L3_2
      L21_2 = L21_2 * L5_2
      L21_2 = L21_2 * L1_2
      L22_2 = 13 * L1_2
      L21_2 = L21_2 + L22_2
      L19_2.x = L21_2
      L21_2 = L12_2 - 1
      L21_2 = L21_2 * L4_2
      L21_2 = L21_2 * L6_2
      L21_2 = L21_2 * L1_2
      L19_2.y = L21_2
      L21_2 = L19_2.x
      L19_2.targetX = L21_2
      L21_2 = L19_2.y
      L19_2.targetY = L21_2
      L22_2 = L19_2
      L21_2 = L19_2.setScale
      L23_2 = L1_2
      L21_2(L22_2, L23_2)
      L14_2 = true
      L20_2 = true
      L13_2 = 1
      L22_2 = L19_2
      L21_2 = L19_2.layout
      L21_2(L22_2)
    else
      L21_2 = L13_2 * L3_2
      L21_2 = L21_2 * L5_2
      L21_2 = L21_2 * L1_2
      L22_2 = 13 * L1_2
      L21_2 = L21_2 + L22_2
      L19_2.x = L21_2
      L21_2 = L12_2 - 1
      L21_2 = L21_2 * L4_2
      L21_2 = L21_2 * L6_2
      L21_2 = L21_2 * L1_2
      L19_2.y = L21_2
      L21_2 = L19_2.x
      L19_2.targetX = L21_2
      L21_2 = L19_2.y
      L19_2.targetY = L21_2
      L22_2 = L19_2
      L21_2 = L19_2.setScale
      L23_2 = L1_2
      L21_2(L22_2, L23_2)
      L13_2 = L13_2 + 1
      L21_2 = A0_2.maxBtnsPerRow
      if L13_2 > L21_2 then
        L13_2 = 1
        L14_2 = true
      end
    end
    L21_2 = L19_2.name
    if L21_2 == "carboniteButton" then
      L21_2 = L19_2.progress
      L22_2 = L4_2 * 0.3
      L22_2 = L22_2 * L1_2
      L21_2.y = L22_2
      L21_2 = L19_2.progress
      L22_2 = L21_2
      L21_2 = L21_2.setScale
      L23_2 = 0.35
      L21_2(L22_2, L23_2)
      L21_2 = L19_2.progress
      L21_2 = L21_2.claimText
      L22_2 = L21_2
      L21_2 = L21_2.setScale
      L23_2 = 1.8
      L21_2(L22_2, L23_2)
      L21_2 = L19_2.carboniteButtonBGGlow
      L22_2 = L19_2.x
      L21_2.x = L22_2
      L21_2 = L19_2.carboniteButtonBGGlow
      L22_2 = L19_2.y
      L21_2.y = L22_2
      L21_2 = L19_2.carboniteButtonBGGlow
      L22_2 = L21_2
      L21_2 = L21_2.setScale
      L23_2 = L1_2 * 0.75
      L21_2(L22_2, L23_2)
    end
    L21_2 = L19_2.name
    if L21_2 == "giftButton" then
      L21_2 = L19_2.giftButtonGlow
      L22_2 = L19_2.x
      L21_2.x = L22_2
      L21_2 = L19_2.giftButtonGlow
      L22_2 = L19_2.y
      L21_2.y = L22_2
      L21_2 = L19_2.giftButtonGlow
      L22_2 = L21_2
      L21_2 = L21_2.setScale
      L23_2 = L1_2 * 0.75
      L21_2(L22_2, L23_2)
    end
    L21_2 = 0
    L22_2 = nil
    L23_2 = _G
    L23_2 = L23_2.ipairs
    L24_2 = L19_2.badges
    L23_2, L24_2, L25_2 = L23_2(L24_2)
    for L26_2, L27_2 in L23_2, L24_2, L25_2 do
      if L22_2 ~= nil then
        L28_2 = L22_2.w
        L28_2 = L28_2 * 0.5
        L28_2 = L28_2 * L1_2
        L28_2 = L21_2 + L28_2
        L29_2 = L27_2.w
        L29_2 = L29_2 * 0.5
        L29_2 = L29_2 * L1_2
        L28_2 = L28_2 + L29_2
        L29_2 = 15 * L1_2
        L21_2 = L28_2 - L29_2
      end
      L28_2 = 0.5 * L4_2
      L28_2 = L28_2 * L1_2
      L27_2.y = L28_2
      L28_2 = 0.4 * L3_2
      L28_2 = L28_2 * L1_2
      L28_2 = L28_2 - L21_2
      L27_2.x = L28_2
      L22_2 = L27_2
    end
    L23_2 = L19_2.buyBg
    if L23_2 then
      L23_2 = L19_2.buyBg
      L24_2 = 0.15 * L3_2
      L24_2 = L24_2 * L1_2
      L23_2.x = L24_2
      L23_2 = L19_2.buyBg
      L24_2 = 0.4 * L4_2
      L24_2 = L24_2 * L1_2
      L23_2.y = L24_2
      L23_2 = L19_2.buyBg
      L24_2 = L23_2
      L23_2 = L23_2.setScale
      L25_2 = 0.75
      L23_2(L24_2, L25_2)
      L23_2 = L19_2.buyText
      L24_2 = L23_2
      L23_2 = L23_2.setScale
      L25_2 = 0.8
      L23_2(L24_2, L25_2)
    end
    L23_2 = L19_2.amountText
    if L23_2 then
      L23_2 = _G
      L23_2 = L23_2.string
      L23_2 = L23_2.len
      L24_2 = L19_2.amountText
      L24_2 = L24_2.text
      L23_2 = L23_2(L24_2)
      if L23_2 < 3 then
        L23_2 = 0.8
        if L23_2 then
          goto lbl_261
        end
      end
      L23_2 = 0.7
      ::lbl_261::
      L24_2 = L19_2.amountText
      L25_2 = L24_2
      L24_2 = L24_2.setScale
      L26_2 = L23_2
      L24_2(L25_2, L26_2)
    end
    L23_2 = L19_2.x
    L24_2 = L9_2.left
    if L23_2 < L24_2 then
      L23_2 = L19_2.x
      L9_2.left = L23_2
    end
    L23_2 = L19_2.x
    L24_2 = L9_2.right
    if L23_2 > L24_2 then
      L23_2 = L19_2.x
      L9_2.right = L23_2
    end
    L23_2 = L19_2.y
    L24_2 = L9_2.top
    if L23_2 < L24_2 then
      L23_2 = L19_2.y
      L9_2.top = L23_2
    end
    L23_2 = L19_2.y
    L24_2 = L9_2.bottom
    if L23_2 > L24_2 then
      L23_2 = CharacterMenuShop
      L23_2 = L23_2.MAX_ROWS
      if L12_2 <= L23_2 then
        L23_2 = L19_2.y
        L9_2.bottom = L23_2
      end
    end
    if L20_2 then
      L23_2 = A0_2.maxBtnsPerRow
      L23_2 = L23_2 * L3_2
      L23_2 = L23_2 * L5_2
      L23_2 = L23_2 * L1_2
      L24_2 = 13 * L1_2
      L23_2 = L23_2 + L24_2
      L9_2.right = L23_2
    end
    L23_2 = L19_2.y
    if L11_2 < L23_2 then
      L23_2 = _G
      L23_2 = L23_2.table
      L23_2 = L23_2.insert
      L24_2 = L10_2
      L25_2 = {}
      L25_2.x = 0
      L26_2 = L19_2.y
      L25_2.y = L26_2
      L26_2 = L4_2 * L6_2
      L26_2 = L26_2 * L1_2
      L25_2.h = L26_2
      L23_2(L24_2, L25_2)
      L11_2 = L19_2.y
    end
  end
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.max
  L16_2 = L12_2
  L17_2 = 2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = A0_2.bgBox
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.min
  L18_2 = L15_2
  L19_2 = CharacterMenuShop
  L19_2 = L19_2.MAX_ROWS
  L17_2 = L17_2(L18_2, L19_2)
  L16_2.rows = L17_2
  L16_2 = _G
  L16_2 = L16_2.math
  L16_2 = L16_2.min
  L17_2 = A0_2.maxBtnsPerRow
  L18_2 = A0_2.buttons
  L18_2 = #L18_2
  L16_2 = L16_2(L17_2, L18_2)
  A0_2.buttonsPerRow = L16_2
  L16_2 = A0_2.buttonsPerRow
  if L16_2 < 1 then
    L16_2 = A0_2.oppositeSideAvailable
    if L16_2 then
      A0_2.buttonsPerRow = 1
    end
  end
  L16_2 = CharacterMenuShop
  L16_2 = L16_2.MAX_ROWS
  if L15_2 <= L16_2 then
    L16_2 = A0_2.scrollFrame
    L16_2.blockScroll = true
  else
    L16_2 = A0_2.scrollFrame
    L16_2.blockScroll = false
  end
  L16_2 = 3 * L4_2
  L16_2 = L16_2 * L6_2
  L16_2 = L16_2 * L1_2
  L17_2 = L9_2.bottom
  if L16_2 > L17_2 then
    L9_2.bottom = L16_2
  end
  L17_2 = L3_2 * L1_2
  L17_2 = L17_2 * 0.7
  L18_2 = A0_2.bgBox
  L19_2 = {}
  L20_2 = L9_2.left
  L20_2 = L20_2 - L17_2
  L19_2.left = L20_2
  L20_2 = L9_2.right
  L20_2 = L20_2 + L17_2
  L19_2.right = L20_2
  L20_2 = L9_2.top
  L20_2 = L20_2 - L17_2
  L19_2.top = L20_2
  L20_2 = L9_2.bottom
  L21_2 = L17_2 * 1.5
  L20_2 = L20_2 + L21_2
  L19_2.bottom = L20_2
  L18_2.targets = L19_2
  L19_2 = A0_2
  L18_2 = A0_2.handleTransition
  L20_2 = 0
  L21_2 = true
  L18_2(L19_2, L20_2, L21_2)
  L18_2 = L3_2 * L1_2
  L18_2 = L18_2 * 0.6
  L19_2 = A0_2.scrollFrame
  L19_2.x = 0
  L19_2 = A0_2.scrollFrame
  L19_2.y = 0
  L19_2 = A0_2.scrollFrame
  L20_2 = gamelua
  L20_2 = L20_2.screenWidth
  L19_2.w = L20_2
  L19_2 = A0_2.scrollFrame
  L20_2 = L9_2.bottom
  L20_2 = L20_2 + L18_2
  L21_2 = L9_2.top
  L21_2 = L21_2 - L18_2
  L20_2 = L20_2 - L21_2
  L19_2.h = L20_2
  L19_2 = A0_2.scrollFrame
  L20_2 = L19_2
  L19_2 = L19_2.setClip
  L21_2 = {}
  L22_2 = A0_2.x
  L23_2 = L9_2.left
  L22_2 = L22_2 + L23_2
  L23_2 = L18_2 * 1.5
  L22_2 = L22_2 - L23_2
  L21_2.x = L22_2
  L22_2 = A0_2.y
  L23_2 = L9_2.top
  L23_2 = L23_2 - L18_2
  L22_2 = L22_2 + L23_2
  L21_2.y = L22_2
  L22_2 = L9_2.right
  L23_2 = L9_2.left
  L22_2 = L22_2 - L23_2
  L23_2 = 2 * L18_2
  L23_2 = L23_2 * 1.5
  L22_2 = L22_2 + L23_2
  L21_2.w = L22_2
  L22_2 = A0_2.y
  L23_2 = L9_2.bottom
  L24_2 = L18_2 * 1.2
  L23_2 = L23_2 + L24_2
  L22_2 = L22_2 + L23_2
  L21_2.h = L22_2
  L19_2(L20_2, L21_2)
  L19_2 = A0_2.scrollFrame
  L20_2 = L19_2
  L19_2 = L19_2.setAnchors
  L21_2 = L10_2
  L19_2(L20_2, L21_2)
  L19_2 = A0_2.scrollFrame
  L19_2 = L19_2.anchors
  L19_2 = #L19_2
  L20_2 = A0_2.scrollFrame
  L20_2 = L20_2.maxTargetAnchor
  if L19_2 > L20_2 then
    L19_2 = A0_2.scrollFrame
    L20_2 = A0_2.scrollFrame
    L20_2 = L20_2.maxTargetAnchor
    L20_2 = L20_2 + 1
    L19_2.maxTargetAnchor = L20_2
  end
  L19_2 = A0_2.pauseButton
  if L19_2 then
    L19_2 = A0_2.pauseButton
    L20_2 = -L3_2
    L20_2 = L20_2 * 1.1
    L20_2 = L20_2 * L1_2
    L19_2.x = L20_2
    L19_2 = A0_2.pauseButton
    L20_2 = -L4_2
    L20_2 = L20_2 * 0.05
    L20_2 = L20_2 * L1_2
    L19_2.y = L20_2
    L19_2 = A0_2.pauseButton
    L20_2 = L19_2
    L19_2 = L19_2.setScale
    L21_2 = L1_2
    L19_2(L20_2, L21_2)
  end
  L19_2 = ui
  L19_2 = L19_2.Frame
  L19_2 = L19_2.layout
  L20_2 = A0_2
  L19_2(L20_2)
end

L0_1.layout = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = A0_2.transitionDirection
  if L3_2 or A2_2 then
    if not A2_2 then
      L3_2 = 3
      L4_2 = A0_2.switchingCharacterSides
      if L4_2 then
        L3_2 = 5
      end
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
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2(L7_2, L8_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      A0_2.transition = L4_2
      L4_2 = A0_2.bgBox
      L5_2 = A0_2.transition
      L4_2.transition = L5_2
      L4_2 = A0_2.transition
      if L4_2 == 0 then
        L4_2 = A0_2.switchingCharacterSides
        if L4_2 == 1 then
          A0_2.switchingCharacterSides = -1
          A0_2.transitionDirection = 1
          L5_2 = A0_2
          L4_2 = A0_2.refreshButtonList
          L4_2(L5_2)
          L5_2 = A0_2
          L4_2 = A0_2.layout
          L4_2(L5_2)
          L4_2 = gamelua
          L4_2 = L4_2.eventManager
          L5_2 = L4_2
          L4_2 = L4_2.notify
          L6_2 = {}
          L7_2 = gamelua
          L7_2 = L7_2.events
          L7_2 = L7_2.EID_CHARACTER_SIDE_SWITCHED
          L6_2.id = L7_2
          L4_2(L5_2, L6_2)
          L4_2 = A0_2.sideSwitchButton
          if L4_2 then
            L4_2 = A0_2.bgBox
            L4_2.sideSwitchButtonVisible = true
          end
          return
        else
          L5_2 = A0_2
          L4_2 = A0_2.setTabButtonsVisible
          L6_2 = true
          L4_2(L5_2, L6_2)
          A0_2.visible = false
          A0_2.transitionDirection = nil
        end
      else
        L4_2 = A0_2.transition
        if L4_2 == 1 then
          L5_2 = A0_2
          L4_2 = A0_2.setTabButtonsVisible
          L6_2 = true
          L4_2(L5_2, L6_2)
          A0_2.transitionDirection = nil
          L4_2 = A0_2.switchingCharacterSides
          if L4_2 == -1 then
            A0_2.switchingCharacterSides = nil
          end
          L4_2 = A0_2.autoClaimReward
          if L4_2 then
            L5_2 = A0_2
            L4_2 = A0_2.claimRewards
            L4_2(L5_2)
          end
          L4_2 = A0_2.autoOpenSaleBirdData
          if L4_2 then
            L4_2 = A0_2.autoOpenSaleBirdData
            L4_2 = L4_2.openAt
            if L4_2 == "singles" then
              L5_2 = A0_2
              L4_2 = A0_2.close
              L4_2(L5_2)
              L4_2 = ui
              L4_2 = L4_2.CharacterPurchasePopup
              L5_2 = L4_2
              L4_2 = L4_2.new
              L6_2 = {}
              L6_2.name = "purchaseCharacterPrompt"
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.birdName
              L6_2.character = L7_2
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.description
              L6_2.description = L7_2
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.buyButtons
              L6_2.buyButtons = L7_2
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.isSale
              L6_2.isSale = L7_2
              L7_2 = A0_2.screenOpenedFrom
              L6_2.screenOpenedFrom = L7_2
              L7_2 = _G
              L7_2 = L7_2.tostring
              L8_2 = A0_2
              L7_2 = L7_2(L8_2)
              L6_2.shopReference = L7_2
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
            else
              L5_2 = A0_2
              L4_2 = A0_2.close
              L4_2(L5_2)
              L4_2 = ui
              L4_2 = L4_2.CharacterPurchasePopup
              L5_2 = L4_2
              L4_2 = L4_2.new
              L6_2 = {}
              L6_2.name = "purchaseCharacterPrompt"
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.birdName
              L6_2.character = L7_2
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.description
              L6_2.description = L7_2
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.buyButtons
              L6_2.buyButtons = L7_2
              L7_2 = A0_2.autoOpenSaleBirdData
              L7_2 = L7_2.isSale
              L6_2.isSale = L7_2
              L6_2.isBundle = true
              L7_2 = A0_2.screenOpenedFrom
              L6_2.screenOpenedFrom = L7_2
              L7_2 = _G
              L7_2 = L7_2.tostring
              L8_2 = A0_2
              L7_2 = L7_2(L8_2)
              L6_2.shopReference = L7_2
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
            A0_2.autoOpenSaleBirdData = nil
          end
        end
      end
    end
    L3_2 = gamelua
    L3_2 = L3_2.tweenEaseCubicOut
    L4_2 = A0_2.transition
    L5_2 = 0
    L6_2 = 1
    L7_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = gamelua
    L4_2 = L4_2.tweenEaseCubicInOut
    L5_2 = A0_2.transition
    L6_2 = 0
    L7_2 = 1
    L8_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = A0_2.buttons
    L5_2 = L5_2[1]
    if L5_2 then
      L5_2 = _G
      L5_2 = L5_2.ipairs
      L6_2 = A0_2.buttons
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.targetX
        L10_2 = L10_2 * L3_2
        L9_2.x = L10_2
        L10_2 = L9_2.targetY
        L10_2 = L10_2 * L4_2
        L9_2.y = L10_2
        L11_2 = L9_2
        L10_2 = L9_2.setScale
        L12_2 = L3_2 * 0.5
        L12_2 = 0.5 + L12_2
        L13_2 = gamelua
        L13_2 = L13_2.getUIScale
        L13_2 = L13_2()
        L12_2 = L12_2 * L13_2
        L10_2(L11_2, L12_2)
      end
    end
    L5_2 = gamelua
    L5_2 = L5_2.getUIScale
    L5_2 = L5_2()
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.getSpriteBounds
    L7_2 = "BTN_BG_LIGHT"
    L6_2, L7_2 = L6_2(L7_2)
    L8_2 = A0_2.buttonsPerRow
    L9_2 = A0_2.hasOffers
    if L9_2 then
      L8_2 = A0_2.maxBtnsPerRow
    end
    L9_2 = 2.75 * L6_2
    L9_2 = L9_2 * L5_2
    L10_2 = L8_2 * 1.1
    L10_2 = L10_2 * L6_2
    L10_2 = L10_2 * L5_2
    L9_2 = L9_2 + L10_2
    L10_2 = 13 * L5_2
    L9_2 = L9_2 + L10_2
    L10_2 = 10 * L5_2
    L9_2 = L9_2 + L10_2
    L10_2 = 2.75 * L6_2
    L10_2 = L10_2 * L5_2
    L11_2 = A0_2.buttonsPerRow
    L11_2 = L11_2 + 1
    L11_2 = L11_2 * 1.1
    L11_2 = L11_2 * L6_2
    L11_2 = L11_2 * L5_2
    L10_2 = L10_2 + L11_2
    L11_2 = 13 * L5_2
    L10_2 = L10_2 + L11_2
    L11_2 = 2 * L7_2
    L11_2 = L11_2 * L5_2
    L12_2 = A0_2.isInMenu
    if not L12_2 then
      L12_2 = gamelua
      L12_2 = L12_2.isTelepodSupported
      L12_2 = L12_2()
      if L12_2 then
        L12_2 = A0_2.telepodBtn
        L13_2 = A0_2.telepodBtn
        L13_2 = L13_2.startX
        L14_2 = A0_2.telepodBtn
        L14_2 = L14_2.startX
        L14_2 = L9_2 - L14_2
        L14_2 = L14_2 * L3_2
        L13_2 = L13_2 + L14_2
        L12_2.x = L13_2
        L12_2 = gamelua
        L12_2 = L12_2.screenWidth
        L13_2 = L6_2 * L5_2
        L13_2 = L13_2 * 3.2
        L12_2 = L12_2 - L13_2
        if L9_2 > L12_2 then
          L12_2 = A0_2.telepodBtn
          L13_2 = A0_2.telepodBtn
          L13_2 = L13_2.startY
          L14_2 = A0_2.telepodBtn
          L14_2 = L14_2.startY
          L14_2 = L11_2 - L14_2
          L14_2 = L14_2 * L4_2
          L13_2 = L13_2 + L14_2
          L12_2.y = L13_2
        end
      end
    end
    L12_2 = L4_2
    L13_2 = A0_2.bgBox
    L13_2 = L13_2.targets
    if L13_2 then
      L13_2 = A0_2.bgBox
      L14_2 = L13_2
      L13_2 = L13_2.setPosition
      L15_2 = A0_2.bgBox
      L15_2 = L15_2.targets
      L15_2 = L15_2.left
      L15_2 = L15_2 * L3_2
      L16_2 = A0_2.bgBox
      L16_2 = L16_2.targets
      L16_2 = L16_2.right
      L16_2 = L16_2 * L3_2
      L17_2 = A0_2.bgBox
      L17_2 = L17_2.targets
      L17_2 = L17_2.top
      L17_2 = L17_2 * L3_2
      L18_2 = A0_2.bgBox
      L18_2 = L18_2.targets
      L18_2 = L18_2.bottom
      L18_2 = L18_2 * L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
end

L0_1.handleTransition = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.oppositeSideAvailable
  return L1_2
end

L0_1.isOppositeSideAvailable = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.visible
  if L1_2 then
    A0_2.switchingCharacterSides = 1
    A0_2.transitionDirection = -1
  end
  L1_2 = A0_2.buttons
  L1_2 = L1_2[1]
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.ipairs
    L2_2 = A0_2.buttons
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L5_2.enabled = false
    end
  end
  L1_2 = A0_2.sideSwitchButton
  if L1_2 then
    L1_2 = A0_2.sideSwitchButton
    L1_2.visible = false
  end
end

L0_1.switchCharactersSide = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.currentTab = A1_2
  L2_2 = A0_2.bgBox
  L3_2 = A0_2.currentTab
  L2_2.selectedTab = L3_2
  L2_2 = A0_2.visible
  if L2_2 then
    A0_2.switchingCharacterSides = 1
    A0_2.transitionDirection = -1
  end
  L2_2 = A0_2.buttons
  L2_2 = L2_2[1]
  if L2_2 then
    L2_2 = _G
    L2_2 = L2_2.ipairs
    L3_2 = A0_2.buttons
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L6_2.enabled = false
    end
  end
  L2_2 = CharacterMenuShop
  L2_2 = L2_2.TAB_CHARACTERS
  if A1_2 == L2_2 then
    L2_2 = A0_2.characterButton
    L2_2.returnValue = "CLOSE_CHARACTER_MENU"
  else
    L2_2 = A0_2.characterButton
    L2_2.returnValue = "SWITCH_TO_CHARACTER_SELECTION"
  end
  L3_2 = A0_2
  L2_2 = A0_2.setTabButtonsVisible
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.scrollFrame
  L3_2 = L2_2
  L2_2 = L2_2.setCurrentAnchor
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.scrollFrame
  L3_2 = L2_2
  L2_2 = L2_2.setTargetAnchor
  L4_2 = 1
  L2_2(L3_2, L4_2)
end

L0_1.switchToTab = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.tabBirdSideButton
  if L2_2 then
    L2_2 = A0_2.tabBirdSideButton
    L2_2.visible = A1_2
  end
  L2_2 = A0_2.tabPorkSideButton
  if L2_2 then
    L2_2 = A0_2.tabPorkSideButton
    L2_2.visible = A1_2
  end
end

L0_1.setTabButtonsVisible = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.getClaimableRewards
  L1_2 = L1_2()
  if 0 < L1_2 then
    L2_2 = ui
    L2_2 = L2_2.ShopClaimScreen
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = {}
    L4_2.name = "claimScreen"
    L4_2.claimableAmount = L1_2
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
  end
end

L0_1.claimRewards = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2.transitionDirection
  if L4_2 then
    L4_2 = -1
    return L4_2
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CHARACTER_CLICKED" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_CHARACTER_CLICKED
    L9_2.id = L10_2
    L10_2 = L5_2.birdName
    L9_2.birdName = L10_2
    L10_2 = {}
    L11_2 = A0_2.x
    L12_2 = L6_2.x
    L11_2 = L11_2 + L12_2
    L10_2.x = L11_2
    L11_2 = A0_2.y
    L12_2 = L6_2.y
    L11_2 = L11_2 + L12_2
    L10_2.y = L11_2
    L9_2.buttonPos = L10_2
    L10_2 = A0_2.giveLastChanceBird
    if not L10_2 then
      L10_2 = false
    end
    L9_2.lastChanceBird = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "GIFT_BUTTON_CLICKED" then
    L8_2 = A0_2
    L7_2 = A0_2.claimRewards
    L7_2(L8_2)
  elseif L4_2 == "BG_CLICKED" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
    L7_2 = gamelua
    L7_2 = L7_2.getGameHud
    L7_2 = L7_2()
    if L7_2 then
      L9_2 = L7_2
      L8_2 = L7_2.lastChanceOff
      L8_2(L9_2)
    end
  elseif L4_2 == "CARBONITE_BUTTON_CLICKED" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_SHOW_CARBONITE_REWARD
    L9_2.id = L10_2
    L9_2.screen = "Character menu"
    L7_2(L8_2, L9_2)
  elseif L4_2 == "CLOSE_CHARACTER_MENU" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
    L7_2 = A0_2.giveLastChanceBird
    if L7_2 then
      L7_2 = gamelua
      L7_2.g_levelFailedDisabled = false
      A0_2.giveLastChanceBird = false
    end
  elseif L4_2 == "SWITCH_TO_CHARACTER_SELECTION" then
    L8_2 = A0_2
    L7_2 = A0_2.switchToTab
    L9_2 = CharacterMenuShop
    L9_2 = L9_2.TAB_CHARACTERS
    L7_2(L8_2, L9_2)
  elseif L4_2 == "SWITCH_TO_BIRD_SIDE_SHOP" then
    L7_2 = A0_2.currentTab
    L8_2 = CharacterMenuShop
    L8_2 = L8_2.TAB_BIRD_SIDE_SHOP
    if L7_2 == L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2.close
      L7_2(L8_2)
    else
      L8_2 = A0_2
      L7_2 = A0_2.switchToTab
      L9_2 = CharacterMenuShop
      L9_2 = L9_2.TAB_BIRD_SIDE_SHOP
      L7_2(L8_2, L9_2)
    end
  elseif L4_2 == "SWITCH_TO_PORK_SIDE_SHOP" then
    L7_2 = A0_2.currentTab
    L8_2 = CharacterMenuShop
    L8_2 = L8_2.TAB_PORK_SIDE_SHOP
    if L7_2 == L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2.close
      L7_2(L8_2)
    else
      L8_2 = A0_2
      L7_2 = A0_2.switchToTab
      L9_2 = CharacterMenuShop
      L9_2 = L9_2.TAB_PORK_SIDE_SHOP
      L7_2(L8_2, L9_2)
    end
  elseif L4_2 == "BUY_CHARACTER" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
    L7_2 = ui
    L7_2 = L7_2.CharacterPurchasePopup
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "purchaseCharacterPrompt"
    L10_2 = L5_2.birdName
    L9_2.character = L10_2
    L10_2 = L5_2.description
    L9_2.description = L10_2
    L10_2 = L5_2.buyButtons
    L9_2.buyButtons = L10_2
    L10_2 = L5_2.isSale
    L9_2.isSale = L10_2
    L10_2 = A0_2.screenOpenedFrom
    L9_2.screenOpenedFrom = L10_2
    L10_2 = _G
    L10_2 = L10_2.tostring
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L9_2.shopReference = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
  elseif L4_2 == "BUY_BUNDLE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
    L7_2 = ui
    L7_2 = L7_2.CharacterPurchasePopup
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "purchaseCharacterPrompt"
    L10_2 = L5_2.birdName
    L9_2.character = L10_2
    L10_2 = L5_2.description
    L9_2.description = L10_2
    L10_2 = L5_2.buyButtons
    L9_2.buyButtons = L10_2
    L10_2 = L5_2.isSale
    L9_2.isSale = L10_2
    L9_2.isBundle = true
    L10_2 = A0_2.screenOpenedFrom
    L9_2.screenOpenedFrom = L10_2
    L10_2 = _G
    L10_2 = L10_2.tostring
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L9_2.shopReference = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
  elseif L4_2 == "BUY_OPPOSITE_SIDE_CLICKED" then
    L7_2 = ui
    L7_2 = L7_2.PurchaseOppositeSidePrompt
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "openOppositeSidePrompt"
    L10_2 = gamelua
    L10_2 = L10_2.objects
    L10_2 = L10_2.isDarkSideLevel
    L10_2 = not L10_2
    L9_2.darkSide = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
  elseif L4_2 == "CARBONITE_CLAIM" then
    L7_2 = gamelua
    L7_2 = L7_2.LocalNotifications
    L7_2 = L7_2.claimReward
    L8_2 = false
    
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = gamelua
      L0_3 = L0_3.eventManager
      L1_3 = L0_3
      L0_3 = L0_3.queueEvent
      L2_3 = {}
      L3_3 = gamelua
      L3_3 = L3_3.events
      L3_3 = L3_3.EID_SHOW_CARBONITE_REWARD
      L2_3.id = L3_3
      L2_3.screen = "Character menu"
      L0_3(L1_3, L2_3)
    end
    
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.scrollFrame
    L8_2 = L7_2
    L7_2 = L7_2.getChild
    L9_2 = "carboniteButton"
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = L7_2.progress
      L8_2 = L8_2.claimText
      L9_2 = L8_2
      L8_2 = L8_2.setText
      L10_2 = ""
      L8_2(L9_2, L10_2)
      L7_2.returnValue = "CARBONITE_BUTTON_CLICKED"
      A0_2.meltedAt = nil
    end
  elseif L4_2 == "PAUSE_CLICKED" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_PAUSE_CLICKED
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.isInMenu
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.CharacterMenuShop
    L1_2.isShown = false
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.setNewBirdsAvailable
    L3_2 = false
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.isDarkSide
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = gamelua
    L4_2 = L4_2.events
    L4_2 = L4_2.EID_CHARACTER_MENU_CLOSED
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = gamelua
    L1_2 = L1_2.getGameHud
    L1_2 = L1_2()
    L2_2 = L1_2
    L1_2 = L1_2.closeCharacterMenu
    L1_2(L2_2)
  end
  L1_2 = A0_2.onCloseCall
  if L1_2 then
    L1_2 = A0_2.onCloseCall
    L1_2()
  end
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "ButtonBack"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setNewCreditsGained
  L3_2 = false
  L1_2(L2_2, L3_2)
end

L0_1.close = L1_1
L0_1 = CharacterMenuShop

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
    L5_2 = "BLOCK"
    return L5_2
  end
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end

L0_1.onKeyEvent = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
  if L2_2 == L3_2 then
    L2_2 = gamelua
    L2_2 = L2_2.isInGameMode
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.getGameHud
      L2_2 = L2_2()
      L3_2 = L2_2
      L2_2 = L2_2.setZoomButtonVisible
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = gamelua
      L2_2 = L2_2.toggleCameraControl
      L3_2 = true
      L2_2(L3_2)
    end
    L2_2 = A0_2.scrollFrame
    L3_2 = L2_2
    L2_2 = L2_2.setCurrentAnchor
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.scrollFrame
    L3_2 = L2_2
    L2_2 = L2_2.setTargetAnchor
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.isInMenu
    if L2_2 then
      L2_2 = A1_2.openIntoCharacters
      if not L2_2 then
        L2_2 = gamelua
        L2_2 = L2_2.SettingsWrapper
        L3_2 = L2_2
        L2_2 = L2_2.isDarkSide
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = CharacterMenuShop
          L2_2 = L2_2.TAB_PORK_SIDE_SHOP
          A0_2.currentTab = L2_2
        else
          L2_2 = CharacterMenuShop
          L2_2 = L2_2.TAB_BIRD_SIDE_SHOP
          A0_2.currentTab = L2_2
        end
        L2_2 = A0_2.characterButton
        L2_2.returnValue = "SWITCH_TO_CHARACTER_SELECTION"
    end
    else
      L2_2 = CharacterMenuShop
      L2_2 = L2_2.TAB_CHARACTERS
      A0_2.currentTab = L2_2
      L2_2 = A0_2.characterButton
      L2_2.returnValue = "CLOSE_CHARACTER_MENU"
    end
    L2_2 = A1_2.openPreviousPage
    if not L2_2 then
      A0_2.previousTab = nil
      A0_2.previousAnchor = nil
    else
      L2_2 = A0_2.characterButton
      L2_2.returnValue = "SWITCH_TO_CHARACTER_SELECTION"
    end
    L2_2 = ui
    L2_2 = L2_2.ShopFrame
    L2_2 = L2_2.getData
    L2_2 = L2_2()
    if L2_2 then
      L3_2 = L2_2.specialsVersion
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.SettingsWrapper
        L4_2 = L3_2
        L3_2 = L3_2.setOpenSpecialsVersion
        L5_2 = L2_2.specialsVersion
        L3_2(L4_2, L5_2)
      end
    end
    L3_2 = A1_2.openAt
    if L3_2 then
      L3_2 = nil
      L4_2 = nil
      L5_2 = A1_2.openAt
      if L5_2 == "bundles" then
        L3_2 = L2_2.bundlesCarousel
      else
        L5_2 = A1_2.openAt
        if L5_2 == "specials" then
          L3_2 = L2_2.specialOffers
        else
          L3_2 = L2_2.singlesCarousel
        end
      end
      L5_2 = A0_2.characterButton
      L5_2.returnValue = "SWITCH_TO_CHARACTER_SELECTION"
      L5_2 = _G
      L5_2 = L5_2.ipairs
      L6_2 = L3_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.id
        L11_2 = A1_2.itemId
        if L10_2 == L11_2 then
          L10_2 = L9_2.buyButtons
          L10_2 = L10_2[1]
          L10_2 = L10_2.bundle
          L10_2 = L10_2[1]
          L10_2 = L10_2.character
          L11_2 = {}
          L12_2 = L9_2.buyButtons
          L12_2 = L12_2[1]
          L12_2 = L12_2.bundle
          L12_2 = L12_2[1]
          L12_2 = L12_2.character
          L11_2.birdName = L12_2
          L12_2 = L9_2.description
          L11_2.description = L12_2
          L12_2 = L9_2.buyButtons
          L11_2.buyButtons = L12_2
          L4_2 = L11_2
          L11_2 = gamelua
          L11_2 = L11_2.Characters
          L11_2 = L11_2.list
          L11_2 = L11_2[L10_2]
          L11_2 = L11_2.isSith
          if L11_2 then
            L11_2 = CharacterMenuShop
            L11_2 = L11_2.TAB_PORK_SIDE_SHOP
            A0_2.currentTab = L11_2
          else
            L11_2 = CharacterMenuShop
            L11_2 = L11_2.TAB_BIRD_SIDE_SHOP
            A0_2.currentTab = L11_2
          end
        end
      end
      L5_2 = A1_2.openAt
      if L5_2 == "specials" then
        L4_2.isSale = true
      end
      L5_2 = A1_2.autoPromptIndex
      if L5_2 then
        A0_2.autoOpenSaleBirdData = L4_2
        L5_2 = A0_2.autoOpenSaleBirdData
        L6_2 = A1_2.openAt
        L5_2.openAt = L6_2
      end
    end
    L3_2 = A0_2.previousTab
    if L3_2 then
      L3_2 = A0_2.previousAnchor
      if L3_2 then
        L3_2 = A0_2.previousTab
        A0_2.currentTab = L3_2
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2.refreshButtonList
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.layout
    L3_2(L4_2)
    A0_2.visible = true
    L4_2 = A0_2
    L3_2 = A0_2.setTabButtonsVisible
    L5_2 = false
    L3_2(L4_2, L5_2)
    A0_2.transitionDirection = 1
    L3_2 = gamelua
    L3_2 = L3_2.SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.setNewCreditsGained
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = gamelua
    L3_2 = L3_2.eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = gamelua
    L6_2 = L6_2.events
    L6_2 = L6_2.EID_SHOP_OPENED
    L5_2.id = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.previousTab
    if L3_2 then
      L3_2 = A0_2.previousAnchor
      if L3_2 then
        L3_2 = A0_2.scrollFrame
        L4_2 = L3_2
        L3_2 = L3_2.setTargetAnchor
        L5_2 = A0_2.previousAnchor
        L3_2(L4_2, L5_2)
      end
    end
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.refreshButtonList
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2.layout
      L2_2(L3_2)
    else
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_CHARACTER_MENU_CLOSED
      if L2_2 == L3_2 then
        L2_2 = gamelua
        L2_2 = L2_2.isInGameMode
        L2_2 = L2_2()
        if L2_2 then
          L2_2 = gamelua
          L2_2 = L2_2.getGameHud
          L2_2 = L2_2()
          L3_2 = L2_2
          L2_2 = L2_2.setZoomButtonVisible
          L4_2 = true
          L2_2(L3_2, L4_2)
          L2_2 = gamelua
          L2_2 = L2_2.toggleCameraControl
          L3_2 = false
          L2_2(L3_2)
        end
        L3_2 = A0_2
        L2_2 = A0_2.setTabButtonsVisible
        L4_2 = false
        L2_2(L3_2, L4_2)
        A0_2.transitionDirection = -1
        L2_2 = A0_2.currentTab
        A0_2.previousTab = L2_2
        L2_2 = A0_2.scrollFrame
        L2_2 = L2_2.current_anchor
        A0_2.previousAnchor = L2_2
      else
        L2_2 = A1_2.id
        L3_2 = gamelua
        L3_2 = L3_2.events
        L3_2 = L3_2.EID_CHARACTER_SWITCHED
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2.refreshButtonList
          L2_2(L3_2)
          L3_2 = A0_2
          L2_2 = A0_2.layout
          L2_2(L3_2)
          A0_2.visible = false
        else
          L2_2 = A1_2.id
          L3_2 = gamelua
          L3_2 = L3_2.events
          L3_2 = L3_2.EID_OPPOSITE_SIDE_BIRDS_ACTIVATED
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2.switchCharactersSide
            L2_2(L3_2)
          else
            L2_2 = A1_2.id
            L3_2 = gamelua
            L3_2 = L3_2.events
            L3_2 = L3_2.EID_CHARACTER_MENU_REFRESH
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2.refreshButtonList
              L2_2(L3_2)
              L3_2 = A0_2
              L2_2 = A0_2.layout
              L2_2(L3_2)
            else
              L2_2 = A1_2.id
              L3_2 = gamelua
              L3_2 = L3_2.events
              L3_2 = L3_2.EID_NOTIFY_CARBONITE_MELT_IN_CHARACTER_MENU
              if L2_2 == L3_2 then
                L2_2 = gamelua
                L2_2 = L2_2.menuManager
                L3_2 = L2_2
                L2_2 = L2_2.getRoot
                L2_2 = L2_2(L3_2)
                L3_2 = nil
                if L2_2 then
                  L5_2 = L2_2
                  L4_2 = L2_2.getChild
                  L6_2 = "purchaseCharacterPrompt"
                  L4_2 = L4_2(L5_2, L6_2)
                  L3_2 = L4_2
                end
                L4_2 = gamelua
                L4_2 = L4_2.levelCompleted
                if not L4_2 then
                  L4_2 = A1_2.openCharacterMenu
                  if L4_2 and not L3_2 then
                    L4_2 = ui
                    L4_2 = L4_2.CharacterMenuShop
                    L4_2.isShown = true
                    L4_2 = gamelua
                    L4_2 = L4_2.getGameHud
                    L4_2 = L4_2()
                    if L4_2 then
                      L5_2 = L4_2.coinBtn
                      L6_2 = L5_2
                      L5_2 = L5_2.setReturnValue
                      L7_2 = "GOTO_COINS"
                      L5_2(L6_2, L7_2)
                      L5_2 = L4_2.characterButtonAmountBg
                      L5_2.visible = false
                      L5_2 = L4_2.oppositeSideCharacterButtonAmountBg
                      L5_2.visible = false
                    end
                    L5_2 = gamelua
                    L5_2 = L5_2.eventManager
                    L6_2 = L5_2
                    L5_2 = L5_2.notify
                    L7_2 = {}
                    L8_2 = gamelua
                    L8_2 = L8_2.events
                    L8_2 = L8_2.EID_CHARACTER_MENU_OPENED
                    L7_2.id = L8_2
                    L8_2 = A1_2.openIntoCharacters
                    if not L8_2 then
                      L8_2 = false
                    end
                    L7_2.openIntoCharacters = L8_2
                    L5_2(L6_2, L7_2)
                  end
                end
                L4_2 = A0_2.scrollFrame
                L5_2 = L4_2
                L4_2 = L4_2.getChild
                L6_2 = "carboniteButton"
                L4_2 = L4_2(L5_2, L6_2)
                if L4_2 then
                  L4_2.returnValue = "CARBONITE_CLAIM"
                  L5_2 = L4_2.progress
                  L5_2 = L5_2.claimText
                  L6_2 = L5_2
                  L5_2 = L5_2.setText
                  L7_2 = gamelua
                  L7_2 = L7_2.getText
                  L8_2 = "TEXT_CARBONITE_CLAIM"
                  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
                  L5_2 = A1_2.meltedAt
                  A0_2.meltedAt = L5_2
                end
              else
                L2_2 = A1_2.id
                L3_2 = events
                L3_2 = L3_2.EID_SHOP_CONFIRM_PURCHASE
                if L2_2 == L3_2 then
                  L2_2 = A1_2.shopReference
                  L3_2 = _G
                  L3_2 = L3_2.tostring
                  L4_2 = A0_2
                  L3_2 = L3_2(L4_2)
                  if L2_2 == L3_2 then
                    L2_2 = A1_2.item
                    L3_2 = gamelua
                    L3_2 = L3_2.SettingsWrapper
                    L4_2 = L3_2
                    L3_2 = L3_2.setShopOpened
                    L3_2(L4_2)
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
                    L3_2 = L3_2.RovioAccount
                    if L3_2 then
                      L3_2 = gamelua
                      L3_2 = L3_2.RovioAccount
                      L3_2 = L3_2.loginButtonBlocked
                      if not L3_2 then
                        L3_2 = gamelua
                        L3_2 = L3_2.eventManager
                        L4_2 = L3_2
                        L3_2 = L3_2.notify
                        L5_2 = {}
                        L6_2 = events
                        L6_2 = L6_2.EID_SYNC_CLOUD
                        L5_2.id = L6_2
                        L3_2(L4_2, L5_2)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2
  L3_2 = A0_2.handleTransition
  L5_2 = gamelua
  L5_2 = L5_2.getDeltaTimeMultiplier
  L5_2 = L5_2()
  L5_2 = A1_2 / L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.disabled
  if L3_2 then
    return
  end
  L3_2 = A0_2.scrollFrame
  L4_2 = L3_2
  L3_2 = L3_2.getChild
  L5_2 = "giftButton"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L3_2.giftButtonGlow
    L5_2 = L3_2.giftButtonGlow
    L5_2 = L5_2.angle
    L5_2 = L5_2 + A1_2
    L5_2 = L5_2 % 360
    L4_2.angle = L5_2
  end
  L4_2 = A0_2.scrollFrame
  L5_2 = L4_2
  L4_2 = L4_2.getChild
  L6_2 = "carboniteButton"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = gamelua
    L5_2 = L5_2.ui
    L5_2 = L5_2.CarboniteAvailableAnimation
    L5_2 = L5_2.getMeltProgress
    L5_2 = L5_2()
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.CarboniteAvailableAnimation
    L6_2 = L6_2.getMeltTimeString
    L7_2 = nil
    L8_2 = nil
    L9_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = L4_2.progress
    L8_2 = L4_2.carboniteLights
    L9_2 = L4_2.carboniteGlow
    L10_2 = L4_2.carboniteButtonBGGlow
    L11_2 = L4_2.carboniteButtonBGGlow
    L11_2 = L11_2.angle
    L11_2 = L11_2 + A1_2
    L11_2 = L11_2 % 360
    L10_2.angle = L11_2
    if L5_2 and L5_2 < 100 and L6_2 then
      L11_2 = L7_2
      L10_2 = L7_2.setValue
      L12_2 = L5_2
      L10_2(L11_2, L12_2)
      L7_2.visible = true
      L10_2 = L7_2.claimText
      L11_2 = L10_2
      L10_2 = L10_2.setText
      L12_2 = L6_2
      L10_2(L11_2, L12_2)
      L9_2.visible = true
      L10_2 = L8_2.timer
      if not L10_2 then
        L8_2.timer = 0
      end
    else
      if not L5_2 or L5_2 ~= 100 then
        L10_2 = L4_2.returnValue
        if L10_2 ~= "CARBONITE_CLAIM" then
          goto lbl_97
        end
      end
      L11_2 = L7_2
      L10_2 = L7_2.setValue
      L12_2 = 100
      L10_2(L11_2, L12_2)
      L7_2.visible = true
      L10_2 = L7_2.claimText
      L11_2 = L10_2
      L10_2 = L10_2.setText
      L12_2 = gamelua
      L12_2 = L12_2.getText
      L13_2 = "TEXT_CARBONITE_CLAIM"
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
      L4_2.returnValue = "CARBONITE_CLAIM"
      L9_2.visible = false
      L10_2 = L8_2.timer
      if L10_2 then
        L8_2.timer = nil
      end
      L10_2 = L4_2.carboniteButtonBGGlow
      L10_2.visible = true
      goto lbl_101
      ::lbl_97::
      L7_2.visible = false
      L9_2.visible = false
      L8_2.visible = false
      L8_2.timer = nil
    end
    ::lbl_101::
    L10_2 = L9_2.visible
    if L10_2 then
      L10_2 = L9_2.alpha
      L11_2 = gamelua
      L11_2 = L11_2.getDeltaTimeMultiplier
      L11_2 = L11_2()
      L11_2 = A1_2 / L11_2
      L12_2 = L9_2.direction
      L11_2 = L11_2 * L12_2
      L10_2 = L10_2 + L11_2
      L9_2.alpha = L10_2
      L10_2 = L9_2.alpha
      if 1 <= L10_2 then
        L9_2.alpha = 1
        L9_2.direction = -1
      else
        L10_2 = L9_2.alpha
        if L10_2 <= 0 then
          L9_2.alpha = 0
          L9_2.direction = 1
        end
      end
    end
    L10_2 = L8_2.timer
    if L10_2 then
      L10_2 = L8_2.timer
      L11_2 = gamelua
      L11_2 = L11_2.getDeltaTimeMultiplier
      L11_2 = L11_2()
      L11_2 = A1_2 / L11_2
      L10_2 = L10_2 + L11_2
      L8_2.timer = L10_2
      L10_2 = L8_2.timer
      if 0.4 < L10_2 then
        L10_2 = L8_2.timer
        L10_2 = L10_2 - 0.4
        L8_2.timer = L10_2
        L10_2 = L8_2.visible
        L10_2 = not L10_2
        L8_2.visible = L10_2
      end
    end
  end
  L5_2 = CharacterMenuShop
  L5_2 = L5_2.clearBatches
  if L5_2 then
    L5_2 = CharacterMenuShop
    L6_2 = {}
    L5_2.drawBatches = L6_2
    L5_2 = CharacterMenuShop
    L5_2.clearBatches = false
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[1]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[1] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[2]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[2] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[3]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[3] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[4]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[4] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[5]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[5] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[6]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[6] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[7]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[7] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[8]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[8] = L6_2
    L5_2 = CharacterMenuShop
    L5_2 = L5_2.drawBatches
    L6_2 = CharacterMenuShop
    L6_2 = L6_2.drawBatches
    L6_2 = L6_2[9]
    if not L6_2 then
      L6_2 = {}
    end
    L5_2[9] = L6_2
    L6_2 = A0_2
    L5_2 = A0_2.setupDrawBatches
    L5_2(L6_2)
  end
  L5_2 = CharacterMenuShop
  L5_2.batchesDrawn = false
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.update
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end

L0_1.update = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = ui
  L3_2 = L3_2.CharacterMenuShop
  L3_2 = L3_2.isShown
  if L3_2 ~= false then
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
    L3_2 = A0_2.pauseButton
    if L3_2 then
      L3_2 = A0_2.pauseButton
      L3_2.visible = true
    end
  else
    L3_2 = A0_2.pauseButton
    if L3_2 then
      L3_2 = A0_2.pauseButton
      L3_2.visible = false
    end
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.offer
      if L7_3 then
        L8_3 = L6_3
        L7_3 = L6_3.drawBatch
        L9_3 = A0_3
        L10_3 = A1_3
        L7_3(L8_3, L9_3, L10_3)
      end
    end
  end
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.saleIcon
      if L7_3 then
        L7_3 = L6_3.saleIcon
        L8_3 = L7_3
        L7_3 = L7_3.draw
        L9_3 = L6_3.x
        L9_3 = A0_3 + L9_3
        L10_3 = L6_3.y
        L10_3 = A1_3 + L10_3
        L11_3 = L6_3.scaleX
        L12_3 = L6_3.scaleY
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      end
    end
  end
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.offer
      if L7_3 then
        L7_3 = _G
        L7_3 = L7_3.pairs
        L8_3 = L6_3.characterIcons
        L7_3, L8_3, L9_3 = L7_3(L8_3)
        for L10_3, L11_3 in L7_3, L8_3, L9_3 do
          L13_3 = L11_3
          L12_3 = L11_3.draw
          L14_3 = L6_3.x
          L14_3 = A0_3 + L14_3
          L15_3 = L6_3.y
          L15_3 = A1_3 + L15_3
          L16_3 = L6_3.scaleX
          L17_3 = L6_3.scaleY
          L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
        end
      else
        L7_3 = L6_3.doNotBatch
        if not L7_3 then
          L7_3 = L6_3.drawBatch
          if L7_3 then
            L8_3 = L6_3
            L7_3 = L6_3.drawBatch
            L9_3 = A0_3
            L10_3 = A1_3
            L7_3(L8_3, L9_3, L10_3)
          else
            L8_3 = L6_3
            L7_3 = L6_3.draw
            L9_3 = A0_3
            L10_3 = A1_3
            L7_3(L8_3, L9_3, L10_3)
          end
        end
      end
    end
  end
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.offer
      if L7_3 then
        L7_3 = _G
        L7_3 = L7_3.pairs
        L8_3 = L6_3.characterIcons
        L7_3, L8_3, L9_3 = L7_3(L8_3)
        for L10_3, L11_3 in L7_3, L8_3, L9_3 do
          L12_3 = L11_3.amountBgImage
          if L12_3 then
            L12_3 = L11_3.amountBgImage
            L13_3 = L12_3
            L12_3 = L12_3.draw
            L14_3 = L6_3.x
            L14_3 = A0_3 + L14_3
            L15_3 = L11_3.x
            L14_3 = L14_3 + L15_3
            L15_3 = L6_3.y
            L15_3 = A1_3 + L15_3
            L16_3 = L11_3.y
            L15_3 = L15_3 + L16_3
            L16_3 = L11_3.scaleX
            L17_3 = L11_3.scaleY
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
          end
        end
      else
        L7_3 = L6_3.badges
        if L7_3 then
          L7_3 = L6_3.badges
          L7_3 = #L7_3
          if 0 < L7_3 then
            L7_3 = false
            L8_3 = _G
            L8_3 = L8_3.ipairs
            L9_3 = L6_3.badgeOrder
            L8_3, L9_3, L10_3 = L8_3(L9_3)
            for L11_3, L12_3 in L8_3, L9_3, L10_3 do
              if not L7_3 then
                L14_3 = L12_3
                L13_3 = L12_3.draw
                L15_3 = L6_3.x
                L15_3 = A0_3 + L15_3
                L16_3 = L6_3.y
                L16_3 = A1_3 + L16_3
                L17_3 = L6_3.scaleX
                L18_3 = L6_3.scaleY
                L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
              end
              L13_3 = L12_3.name
              if L13_3 then
                L13_3 = L12_3.name
                if L13_3 == "amountBg" then
                  L7_3 = true
                end
              end
            end
          end
        end
      end
    end
  end
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.offer
      if L7_3 then
        L7_3 = _G
        L7_3 = L7_3.pairs
        L8_3 = L6_3.characterIcons
        L7_3, L8_3, L9_3 = L7_3(L8_3)
        for L10_3, L11_3 in L7_3, L8_3, L9_3 do
          L12_3 = L11_3.amountText
          if L12_3 then
            L12_3 = L11_3.amountText
            L12_3 = L12_3.text
            if L12_3 then
              L12_3 = L11_3.amountText
              L12_3 = L12_3.text
              if L12_3 ~= "0" then
                L12_3 = L11_3.amountText
                L13_3 = L12_3
                L12_3 = L12_3.draw
                L14_3 = L6_3.x
                L14_3 = A0_3 + L14_3
                L15_3 = L11_3.x
                L14_3 = L14_3 + L15_3
                L15_3 = L11_3.amountBgImage
                L15_3 = L15_3.x
                L14_3 = L14_3 + L15_3
                L15_3 = L6_3.y
                L15_3 = A1_3 + L15_3
                L16_3 = L11_3.y
                L15_3 = L15_3 + L16_3
                L16_3 = L11_3.amountBgImage
                L16_3 = L16_3.y
                L15_3 = L15_3 + L16_3
                L16_3 = L11_3.scaleX
                L17_3 = L11_3.scaleY
                L18_3 = 0
                L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
              end
            end
          end
        end
      else
        L7_3 = L6_3.amountText
        if L7_3 then
          L7_3 = L6_3.amountText
          L7_3 = L7_3.text
          if L7_3 then
            L7_3 = L6_3.amountText
            L7_3 = L7_3.text
            if L7_3 ~= "0" then
              L7_3 = L6_3.amountText
              L8_3 = L7_3
              L7_3 = L7_3.draw
              L9_3 = L6_3.x
              L9_3 = A0_3 + L9_3
              L10_3 = L6_3.amountBg
              L10_3 = L10_3.x
              L9_3 = L9_3 + L10_3
              L10_3 = L6_3.y
              L10_3 = A1_3 + L10_3
              L11_3 = L6_3.amountBg
              L11_3 = L11_3.y
              L10_3 = L10_3 + L11_3
              L11_3 = L6_3.scaleX
              L12_3 = L6_3.scaleY
              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
            end
          end
        end
      end
    end
  end
  
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.offer
      if not L7_3 then
        L7_3 = L6_3.badges
        if L7_3 then
          L7_3 = L6_3.badges
          L7_3 = #L7_3
          if 0 < L7_3 then
            L7_3 = false
            L8_3 = _G
            L8_3 = L8_3.ipairs
            L9_3 = L6_3.badgeOrder
            L8_3, L9_3, L10_3 = L8_3(L9_3)
            for L11_3, L12_3 in L8_3, L9_3, L10_3 do
              if L7_3 then
                L14_3 = L12_3
                L13_3 = L12_3.draw
                L15_3 = L6_3.x
                L15_3 = A0_3 + L15_3
                L16_3 = L6_3.y
                L16_3 = A1_3 + L16_3
                L17_3 = L6_3.scaleX
                L18_3 = L6_3.scaleY
                L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
              end
              L13_3 = L12_3.name
              if L13_3 then
                L13_3 = L12_3.name
                if L13_3 == "amountBg" then
                  L7_3 = true
                end
              end
            end
          end
        end
      end
    end
  end
  
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.buyBg
      if L7_3 then
        L7_3 = L6_3.buyBg
        L8_3 = L7_3
        L7_3 = L7_3.draw
        L9_3 = L6_3.x
        L9_3 = A0_3 + L9_3
        L10_3 = L6_3.y
        L10_3 = A1_3 + L10_3
        L11_3 = L6_3.scaleX
        L12_3 = L6_3.scaleY
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      end
    end
  end
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.buyText
      if L7_3 then
        L7_3 = L6_3.buyText
        L8_3 = L7_3
        L7_3 = L7_3.draw
        L9_3 = L6_3.x
        L9_3 = A0_3 + L9_3
        L10_3 = L6_3.buyBg
        L10_3 = L10_3.x
        L9_3 = L9_3 + L10_3
        L10_3 = L6_3.y
        L10_3 = A1_3 + L10_3
        L11_3 = L6_3.buyBg
        L11_3 = L11_3.y
        L10_3 = L10_3 + L11_3
        L11_3 = L6_3.scaleX
        L12_3 = L6_3.buyText
        L12_3 = L12_3.scaleX
        L11_3 = L11_3 * L12_3
        L12_3 = L6_3.scaleY
        L13_3 = L6_3.buyText
        L13_3 = L13_3.scaleY
        L12_3 = L12_3 * L13_3
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      end
    end
  end
  
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = _G
    L2_3 = L2_3.ipairs
    L3_3 = A0_2
    L3_3 = L3_3.buttons
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.saleText
      if L7_3 then
        L7_3 = L6_3.saleText
        L8_3 = L7_3
        L7_3 = L7_3.draw
        L9_3 = L6_3.x
        L9_3 = A0_3 + L9_3
        L10_3 = L6_3.saleIcon
        L10_3 = L10_3.x
        L9_3 = L9_3 + L10_3
        L10_3 = L6_3.y
        L10_3 = A1_3 + L10_3
        L11_3 = L6_3.saleIcon
        L11_3 = L11_3.y
        L10_3 = L10_3 + L11_3
        L11_3 = L6_3.saleIcon
        L11_3 = L11_3.scaleX
        L12_3 = L6_3.saleIcon
        L12_3 = L12_3.scaleY
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      end
    end
  end
  
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[1]
  L12_2 = L1_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[2]
  L12_2 = L2_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[3]
  L12_2 = L3_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[4]
  L12_2 = L4_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[5]
  L12_2 = L5_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[6]
  L12_2 = L6_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[7]
  L12_2 = L7_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[8]
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.table
  L10_2 = L10_2.insert
  L11_2 = CharacterMenuShop
  L11_2 = L11_2.drawBatches
  L11_2 = L11_2[9]
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
end

L0_1.setupDrawBatches = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = CharacterMenuShop
  L4_2 = L4_2.drawBatches
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = _G
    L8_2 = L8_2.pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L12_2
      L14_2 = A1_2
      L15_2 = A2_2
      L13_2(L14_2, L15_2)
    end
  end
  L3_2 = CharacterMenuShop
  L3_2.clearBatches = true
end

L0_1.handleDrawBatches = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_MENU_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_SWITCHED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_MENU_REFRESH
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_OPPOSITE_SIDE_BIRDS_ACTIVATED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NOTIFY_CARBONITE_MELT_IN_CHARACTER_MENU
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CONFIRM_PURCHASE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = CharacterMenuShop

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.menuManager
  L2_2 = L1_2
  L1_2 = L1_2.getRoot
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.getChild
    L4_2 = "LevelEndRoot"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = true
      return L3_2
    end
  end
  L2_2 = A0_2.isInMenu
  return L2_2
end

L0_1.shouldDisableCharacterSelection = L1_1
