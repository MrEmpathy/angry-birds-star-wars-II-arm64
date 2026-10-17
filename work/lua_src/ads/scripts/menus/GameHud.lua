local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
Frame = L0_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
GameHud = L0_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.name = "gameHud"
  L1_2 = gamelua
  L1_2 = L1_2.isPCVersion
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.isPCTouchState
    L1_2 = L1_2()
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.addChild
      L3_2 = gamelua
      L3_2 = L3_2.g_gesturePausePage
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.CharacterMenuShop
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "characterMenu"
  L4_2 = A0_2.characterButton
  L3_2.characterButton = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.characterMenu = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.characterMenu
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "charBtnShine"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.characterButtonShine = L1_2
  L1_2 = A0_2.characterButtonShine
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "EAGLE_SHINE_1"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.characterButtonShine
  L3_2 = A0_2
  L2_2 = A0_2.shouldCharacterButtonShine
  L2_2 = L2_2(L3_2)
  L1_2.visible = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "characterButton"
  L3_2.returnValue = "OPEN_CHARACTER_MENU"
  L3_2.refuseDragTargetting = true
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.characterButton = L1_2
  L1_2 = A0_2.characterButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "characterMenuShopButton"
  L6_2 = A0_2
  L5_2 = A0_2.isDarkSide
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.characterButton
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.ClaimBadge
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "claimBadge"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.claimBadge = L1_2
  L1_2 = A0_2.characterButton
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.claimBadge
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.isNewSpecialsInShop
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.NewSpecialsBadge
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "newShopBadge"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.newShopBadge = L1_2
    L1_2 = A0_2.characterButton
    L2_2 = L1_2
    L1_2 = L1_2.addChild
    L3_2 = A0_2.newShopBadge
    L1_2(L2_2, L3_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "amountBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.characterButtonAmountBg = L1_2
  L1_2 = A0_2.characterButtonAmountBg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "characterMenuCounterBox"
  L6_2 = A0_2
  L5_2 = A0_2.isDarkSide
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = A0_2.characterButton
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.characterButtonAmountBg
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.characterMenu
  L2_2 = A0_2.characterButton
  L1_2.characterButton = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.isDarkSide
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.getCharacterAmountForSide
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.DummyText
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "amountText"
  if 999 < L2_2 then
    L6_2 = "999+"
    if L6_2 then
      goto lbl_137
    end
  end
  L6_2 = _G
  L6_2 = L6_2.tostring
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  ::lbl_137::
  L5_2.text = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.getFontBasic
  L6_2 = L6_2()
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.characterButtonAmountText = L3_2
  L3_2 = A0_2.characterButtonAmountBg
  L4_2 = L3_2
  L3_2 = L3_2.addChild
  L5_2 = A0_2.characterButtonAmountText
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = "otherSideAmountBg"
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.oppositeSideCharacterButtonAmountBg = L3_2
  L3_2 = A0_2.oppositeSideCharacterButtonAmountBg
  L4_2 = L3_2
  L3_2 = L3_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "characterMenuCounterBox"
  L8_2 = A0_2
  L7_2 = A0_2.isDarkSide
  L7_2 = L7_2(L8_2)
  L7_2 = not L7_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.characterButton
  L4_2 = L3_2
  L3_2 = L3_2.addChild
  L5_2 = A0_2.oppositeSideCharacterButtonAmountBg
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.getCharacterAmountForSide
  L4_2 = not L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.DummyText
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "oppositeSideAmountText"
  if 999 < L3_2 then
    L7_2 = "999+"
    if L7_2 then
      goto lbl_189
    end
  end
  L7_2 = _G
  L7_2 = L7_2.tostring
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  ::lbl_189::
  L6_2.text = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.getFontBasic
  L7_2 = L7_2()
  L6_2.font = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.characterButtonOppositeSideAmountText = L4_2
  L4_2 = A0_2.oppositeSideCharacterButtonAmountBg
  L5_2 = L4_2
  L4_2 = L4_2.addChild
  L6_2 = A0_2.characterButtonOppositeSideAmountText
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.characterMenu
  L4_2 = L4_2.oppositeSideAvailable
  if not L4_2 then
    L4_2 = A0_2.oppositeSideCharacterButtonAmountBg
    L4_2.visible = false
    L4_2 = A0_2.characterButtonOppositeSideAmountText
    L4_2.visible = false
  end
  L4_2 = gamelua
  L4_2 = L4_2.isTelepodSupported
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.ui
    L4_2 = L4_2.ScallableButton
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L6_2.name = "telepod"
    L6_2.returnValue = "TELEPOD_CLICKED"
    L6_2.refuseDragTargetting = true
    L4_2 = L4_2(L5_2, L6_2)
    A0_2.telepodBtn = L4_2
    L4_2 = A0_2.telepodBtn
    L5_2 = L4_2
    L4_2 = L4_2.setImage
    L6_2 = gamelua
    L6_2 = L6_2.getButtonImageName
    L7_2 = "telepodButton"
    L8_2 = gamelua
    L8_2 = L8_2.objects
    L8_2 = L8_2.isDarkSideLevel
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2
    L4_2 = A0_2.addChild
    L6_2 = A0_2.telepodBtn
    L4_2(L5_2, L6_2)
    L4_2 = gamelua
    L4_2 = L4_2.ui
    L4_2 = L4_2.Image
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L6_2.name = "telepodCharacter"
    L4_2 = L4_2(L5_2, L6_2)
    A0_2.telepodCharacter = L4_2
    L5_2 = A0_2
    L4_2 = A0_2.addChild
    L6_2 = A0_2.telepodCharacter
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.telepodCharacter
    L4_2.visible = false
  end
  L4_2 = gamelua
  L4_2 = L4_2.isPCVersion
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.ui
    L4_2 = L4_2.ScallableButton
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L6_2.name = "zoomBtn"
    L6_2.returnValue = "ZOOM_CLICKED"
    L6_2.refuseDragTargetting = true
    L4_2 = L4_2(L5_2, L6_2)
    A0_2.zoomBtn = L4_2
    L4_2 = A0_2.zoomBtn
    L5_2 = L4_2
    L4_2 = L4_2.setImage
    L6_2 = gamelua
    L6_2 = L6_2.getButtonImageName
    L7_2 = "zoomButton"
    L8_2 = gamelua
    L8_2 = L8_2.objects
    L8_2 = L8_2.isDarkSideLevel
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2
    L4_2 = A0_2.addChild
    L6_2 = A0_2.zoomBtn
    L4_2(L5_2, L6_2)
  end
  L4_2 = ui
  L4_2 = L4_2.CoinButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "coinBtn"
  L6_2.coinButtonDisabled = true
  L6_2.inGame = true
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.coinBtn = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = A0_2.coinBtn
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.characterMenu
  L5_2 = A0_2.characterButton
  L4_2.characterButton = L5_2
  L4_2 = A0_2.characterMenu
  L5_2 = A0_2.telepodBtn
  L4_2.telepodBtn = L5_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "lastChanceBtn"
  L6_2.returnValue = "LAST_CHANCE_CLICKED"
  L6_2.refuseDragTargetting = true
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.lastChanceBtn = L4_2
  L4_2 = A0_2.lastChanceBtn
  L5_2 = L4_2
  L4_2 = L4_2.setImage
  L6_2 = gamelua
  L6_2 = L6_2.getButtonImageName
  L7_2 = "lastChancePointer"
  L8_2 = gamelua
  L8_2 = L8_2.SettingsWrapper
  L9_2 = L8_2
  L8_2 = L8_2.isDarkSide
  L8_2, L9_2 = L8_2(L9_2)
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = ui
  L4_2 = L4_2.DummyText
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "lastChanceText"
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.lastChanceText = L4_2
  L4_2 = A0_2.lastChanceText
  L5_2 = L4_2
  L4_2 = L4_2.setText
  L6_2 = gamelua
  L6_2 = L6_2.getText
  L7_2 = "TEXT_LAST_CHANCE_BIRD"
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.showLastChance = false
  L4_2 = A0_2.lastChanceBtn
  L4_2.visible = false
  L4_2 = A0_2.lastChanceBtn
  L5_2 = L4_2
  L4_2 = L4_2.addChild
  L6_2 = A0_2.lastChanceText
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = A0_2.lastChanceBtn
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.PausePage
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "pausePage"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  A0_2.frame = 0
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 * 0.01
  A0_2.margin = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 * 0.015
  A0_2.marginLarge = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.startedFromEditor
  if L5_2 then
    L5_2 = A0_2.characterButton
    L5_2.visible = false
  end
end

L0_1.init = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.zoomBtn
  if L2_2 then
    L2_2 = A0_2.zoomBtn
    L2_2.visible = A1_2
  end
end

L0_1.setZoomButtonVisible = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.startedFromEditor
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.characterMenu
  L1_2 = L1_2.oppositeSideAvailable
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isNewBirdsAvailable
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.isNewBirdsAvailable
      L3_2 = true
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.shouldShowShopGlow
        L1_2 = L1_2()
      end
    end
    return L1_2
  else
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isNewBirdsAvailable
    L4_2 = A0_2
    L3_2 = A0_2.isDarkSide
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.shouldShowShopGlow
      L1_2 = L1_2()
    end
    return L1_2
  end
end

L0_1.shouldCharacterButtonShine = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 / 2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A1_2 / 2
  L4_2 = 0.5 + L4_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 - L3_2
  L2_2 = 2 * L2_2
  return L2_2
end

L0_1.sawtooth = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.characterMenu
  if L1_2 then
    L1_2 = A0_2.characterMenu
    L1_2 = L1_2.oppositeSideAvailable
    if L1_2 then
      L1_2 = A0_2.characterMenu
      L1_2 = L1_2.usingOppositeSideCharacters
      if L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.objects
        L1_2 = L1_2.isDarkSideLevel
        L1_2 = not L1_2
        return L1_2
    end
  end
  else
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.isDarkSideLevel
    if not L1_2 then
      L1_2 = false
    end
    return L1_2
  end
end

L0_1.isDarkSide = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.characterMenu
  if L3_2 then
    L3_2 = A0_2.characterMenu
    L4_2 = L3_2
    L3_2 = L3_2.isPosInside
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = false
    return L3_2
  end
end

L0_1.isPosInsideCharacterMenu = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.startedFromEditor
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CHARACTER_SWITCHED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_GAME_RESUMED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_PAUSE_CLICKED
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
    L3_2 = L3_2.EID_BIRD_SHOT
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_POWERUP_CLOSE_SLIDER
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
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
    L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CURRENT_QUESTS_SHOWN
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CHARACTER_SIDE_SWITCHED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_TELEPOD_OPENED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_TELEPOD_CLOSED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_TELEPOD_ANIMATION_FINISHED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "buttonSounds"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isAudioEnabled
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.setState
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.setState
    L4_2 = 2
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.updateHighscoreText
  L2_2(L3_2)
  A0_2.tempEagleScore = 0
  L2_2 = gamelua
  L2_2 = L2_2.highscores
  L3_2 = gamelua
  L3_2 = L3_2.levelName
  L3_2 = L2_2[L3_2]
  if L3_2 ~= nil then
    L3_2 = gamelua
    L3_2 = L3_2.levelName
    L3_2 = L2_2[L3_2]
    L3_2 = L3_2.eagleScore
    if L3_2 ~= nil then
      L3_2 = gamelua
      L3_2 = L3_2.levelName
      L3_2 = L2_2[L3_2]
      L3_2 = L3_2.eagleScore
      if 0 < L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.levelName
        L3_2 = L2_2[L3_2]
        L3_2 = L3_2.eagleScore
        A0_2.tempEagleScore = L3_2
      end
    end
  end
  L3_2 = gamelua
  L3_2 = L3_2.startedFromEditor
  if L3_2 ~= true then
    L3_2 = ui
    L3_2 = L3_2.ProgressBar
    L4_2 = L3_2
    L3_2 = L3_2.new
    L3_2 = L3_2(L4_2)
    L3_2.name = "feather"
    L5_2 = L3_2
    L4_2 = L3_2.setImages
    L6_2 = "FALCON_SCORE_UNFILLED"
    L7_2 = "FALCON_SCORE_FILLED"
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = L3_2
    L4_2 = L3_2.setMax
    L6_2 = 100
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.setValue
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L3_2.visible = false
    L4_2 = gamelua
    L4_2.ME_hudFeather = L3_2
    L3_2.scaleX = 0.66
    L3_2.scaleY = 0.66
    L5_2 = A0_2
    L4_2 = A0_2.addChild
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = Frame
  L3_2 = L3_2.onEntry
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.onEntry = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "feather"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "featherBG"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.isDarkSide
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = 0.5
    if L5_2 then
      goto lbl_21
    end
  end
  L5_2 = 0.7
  ::lbl_21::
  if L3_2 ~= nil then
    L6_2 = gamelua
    L6_2 = L6_2.setFont
    L7_2 = gamelua
    L7_2 = L7_2.getFontScore
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.getFontLeading
    L6_2 = L6_2()
    L7_2 = gamelua
    L7_2 = L7_2.screenWidth
    L7_2 = L7_2 * 0.87
    L3_2.x = L7_2
    L7_2 = _G
    L7_2 = L7_2.res
    L7_2 = L7_2.getSpriteBounds
    L8_2 = "FALCON_SCORE_UNFILLED"
    L7_2, L8_2 = L7_2(L8_2)
    L9_2 = L8_2 * 0.66
    L9_2 = L9_2 * 0.5
    L9_2 = L9_2 + L6_2
    L3_2.y = L9_2
  end
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L6_2 = L6_2 * 0.01
  A0_2.margin = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L6_2 = L6_2 * 0.015
  A0_2.marginLarge = L6_2
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getSpriteBounds
  L7_2 = "BTN_BG_LIGHT"
  L6_2, L7_2 = L6_2(L7_2)
  L8_2 = A0_2.characterButton
  if L8_2 then
    L8_2 = A0_2.characterButton
    L9_2 = L6_2 * L1_2
    L9_2 = L9_2 * 1.65
    L8_2.x = L9_2
    L8_2 = A0_2.characterButton
    L9_2 = L7_2 * L1_2
    L9_2 = L9_2 * 0.7
    L8_2.y = L9_2
    L8_2 = A0_2.characterButton
    L9_2 = L8_2
    L8_2 = L8_2.setScale
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
    L8_2 = _G
    L8_2 = L8_2.string
    L8_2 = L8_2.len
    L9_2 = A0_2.characterButtonAmountText
    L9_2 = L9_2.text
    L8_2 = L8_2(L9_2)
    if L8_2 < 3 then
      L8_2 = 0.8
      if L8_2 then
        goto lbl_86
      end
    end
    L8_2 = 0.7
    ::lbl_86::
    L9_2 = A0_2.characterButtonAmountText
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.characterButtonOppositeSideAmountText
    if L9_2 then
      L9_2 = _G
      L9_2 = L9_2.string
      L9_2 = L9_2.len
      L10_2 = A0_2.characterButtonOppositeSideAmountText
      L10_2 = L10_2.text
      L9_2 = L9_2(L10_2)
      if L9_2 < 3 then
        L9_2 = 0.8
        if L9_2 then
          goto lbl_105
        end
      end
      L9_2 = 0.7
      ::lbl_105::
      L10_2 = A0_2.characterButtonOppositeSideAmountText
      L11_2 = L10_2
      L10_2 = L10_2.setScale
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L10_2 = A0_2
    L9_2 = A0_2.layoutBadges
    L9_2(L10_2)
    L9_2 = A0_2.characterButtonShine
    L10_2 = A0_2.characterButton
    L10_2 = L10_2.x
    L9_2.x = L10_2
    L9_2 = A0_2.characterButtonShine
    L10_2 = A0_2.characterButton
    L10_2 = L10_2.y
    L9_2.y = L10_2
    L9_2 = A0_2.characterButtonShine
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = L1_2 * L5_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.lastChanceBtn
    L10_2 = A0_2.characterButton
    L10_2 = L10_2.x
    L9_2.x = L10_2
    L9_2 = A0_2.lastChanceBtn
    L10_2 = A0_2.characterButton
    L10_2 = L10_2.y
    L11_2 = L7_2 * L1_2
    L10_2 = L10_2 + L11_2
    L9_2.y = L10_2
    L9_2 = A0_2.lastChanceBtn
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = L1_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.lastChanceText
    L10_2 = 3 * L1_2
    L9_2.y = L10_2
    L9_2 = A0_2.lastChanceText
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = 0.7
    L9_2(L10_2, L11_2)
  end
  L8_2 = A0_2.telepodBtn
  if L8_2 then
    L8_2 = A0_2.telepodBtn
    L9_2 = 2.75 * L6_2
    L9_2 = L9_2 * L1_2
    L8_2.x = L9_2
    L8_2 = A0_2.telepodBtn
    L9_2 = A0_2.telepodBtn
    L9_2 = L9_2.x
    L8_2.startX = L9_2
    L8_2 = A0_2.telepodBtn
    L9_2 = L7_2 * L1_2
    L9_2 = L9_2 * 0.7
    L8_2.y = L9_2
    L8_2 = A0_2.telepodBtn
    L9_2 = A0_2.telepodBtn
    L9_2 = L9_2.y
    L8_2.startY = L9_2
    L8_2 = A0_2.telepodBtn
    L9_2 = L8_2
    L8_2 = L8_2.setScale
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
  end
  L8_2 = A0_2.zoomBtn
  if L8_2 then
    L8_2 = 10 * L1_2
    L9_2 = 10 * L1_2
    L10_2 = _G
    L10_2 = L10_2.res
    L10_2 = L10_2.getSpriteBounds
    L11_2 = A0_2.zoomBtn
    L11_2 = L11_2.enabledImage
    L10_2, L11_2 = L10_2(L11_2)
    L12_2 = L10_2 * L1_2
    L11_2 = L11_2 * L1_2
    L10_2 = L12_2
    L12_2 = A0_2.zoomBtn
    L13_2 = L10_2 / 2
    L13_2 = L13_2 + L8_2
    L12_2.x = L13_2
    L12_2 = A0_2.zoomBtn
    L13_2 = gamelua
    L13_2 = L13_2.screenHeight
    L14_2 = L11_2 / 2
    L13_2 = L13_2 - L14_2
    L13_2 = L13_2 - L9_2
    L12_2.y = L13_2
    L12_2 = A0_2.zoomBtn
    L13_2 = L12_2
    L12_2 = L12_2.setScale
    L14_2 = L1_2
    L12_2(L13_2, L14_2)
  end
  L8_2 = A0_2.coinBtn
  if L8_2 then
    L8_2 = 12 * L1_2
    L9_2 = A0_2.coinBtn
    L10_2 = L9_2
    L9_2 = L9_2.layout
    L9_2(L10_2)
    L9_2 = A0_2.coinBtn
    L10_2 = gamelua
    L10_2 = L10_2.screenWidth
    L10_2 = L10_2 - L8_2
    L9_2.x = L10_2
    L9_2 = A0_2.coinBtn
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = L1_2
    L9_2(L10_2, L11_2)
  end
  L9_2 = A0_2
  L8_2 = A0_2.animateCoinButton
  L8_2(L9_2)
  L8_2 = Frame
  L8_2 = L8_2.layout
  L9_2 = A0_2
  L8_2(L9_2)
end

L0_1.layout = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.coinBtn
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.CharacterMenuShop
    L1_2 = L1_2.isShown
    if L1_2 then
      L1_2 = A0_2.coinBtn
      L2_2 = A0_2.coinBtn
      L2_2 = L2_2.h
      L2_2 = L2_2 * 0.75
      L1_2.y = L2_2
    else
      L1_2 = A0_2.coinBtn
      L2_2 = A0_2.coinBtn
      L2_2 = L2_2.h
      L2_2 = L2_2 * 0.75
      L3_2 = A0_2.coinBtn
      L3_2 = L3_2.yMove
      L4_2 = A0_2.coinBtn
      L4_2 = L4_2.h
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * 1.25
      L2_2 = L2_2 - L3_2
      L1_2.y = L2_2
    end
  end
end

L0_1.animateCoinButton = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  if not A1_2 then
    A1_2 = 1
  end
  A1_2 = A1_2 * L2_2
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = "BTN_SHOP"
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = A0_2.characterButtonAmountBg
  L5_2 = L5_2.x
  if L5_2 then
    L5_2 = A0_2.characterButtonAmountBg
    L6_2 = 0.4 * L3_2
    L6_2 = L6_2 * A1_2
    L5_2.x = L6_2
    L5_2 = A0_2.characterButtonAmountBg
    L6_2 = 0.4 * L4_2
    L6_2 = L6_2 * A1_2
    L5_2.y = L6_2
  end
  L5_2 = A0_2.oppositeSideCharacterButtonAmountBg
  if L5_2 then
    L5_2 = A0_2.oppositeSideCharacterButtonAmountBg
    L6_2 = -0.4 * L3_2
    L6_2 = L6_2 * A1_2
    L5_2.x = L6_2
    L5_2 = A0_2.oppositeSideCharacterButtonAmountBg
    L6_2 = 0.4 * L4_2
    L6_2 = L6_2 * A1_2
    L5_2.y = L6_2
  end
  L5_2 = A0_2.newShopBadge
  if L5_2 then
    L5_2 = A0_2.newShopBadge
    L6_2 = -L3_2
    L6_2 = L6_2 * 0.4
    L6_2 = L6_2 * A1_2
    L5_2.x = L6_2
    L5_2 = A0_2.newShopBadge
    L6_2 = -L4_2
    L6_2 = L6_2 * 0.4
    L6_2 = L6_2 * A1_2
    L5_2.y = L6_2
    L5_2 = A0_2.newShopBadge
    L6_2 = L5_2
    L5_2 = L5_2.setScale
    L7_2 = 0.3 * A1_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.newShopBadge
    L6_2 = L5_2
    L5_2 = L5_2.layout
    L5_2(L6_2)
    L5_2 = A0_2.newShopBadge
    L6_2 = gamelua
    L6_2 = L6_2.isNewSpecialsInShop
    L6_2 = L6_2()
    L5_2.visible = L6_2
  end
  L5_2 = A0_2.claimBadge
  if L5_2 then
    L5_2 = A0_2.claimBadge
    L6_2 = L3_2 * 0.4
    L6_2 = L6_2 * A1_2
    L5_2.x = L6_2
    L5_2 = A0_2.claimBadge
    L6_2 = -L4_2
    L6_2 = L6_2 * 0.4
    L6_2 = L6_2 * A1_2
    L5_2.y = L6_2
    L5_2 = A0_2.claimBadge
    L6_2 = L5_2
    L5_2 = L5_2.setScale
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.claimBadge
    L6_2 = L5_2
    L5_2 = L5_2.layout
    L5_2(L6_2)
  end
end

L0_1.layoutBadges = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = gamelua
  L3_2 = L3_2.isPhysicsEnabled
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2.characterButtonShine
    if L4_2 then
      L4_2 = A0_2.characterButtonShine
      L4_2 = L4_2.visible
      if L4_2 then
        L4_2 = A0_2.characterButton
        L4_2 = L4_2.clickStarted
        if not L4_2 then
          L4_2 = A0_2.characterButtonShine
          L5_2 = A0_2.characterButtonShine
          L5_2 = L5_2.visible
          if L5_2 then
            L5_2 = A0_2.characterButton
            L5_2 = L5_2.enabled
          end
          L4_2.visible = L5_2
          L4_2 = _G
          L4_2 = L4_2.math
          L4_2 = L4_2.sin
          L5_2 = A2_2 * 5
          L4_2 = L4_2(L5_2)
          L4_2 = L4_2 * 0.05
          L4_2 = 1 + L4_2
          L5_2 = A0_2.characterButton
          L6_2 = L5_2
          L5_2 = L5_2.setScale
          L7_2 = gamelua
          L7_2 = L7_2.getUIScale
          L7_2 = L7_2()
          L7_2 = L4_2 * L7_2
          L5_2(L6_2, L7_2)
          L5_2 = A0_2.characterButtonShine
          L6_2 = A0_2.characterButtonShine
          L6_2 = L6_2.angle
          L6_2 = L6_2 + A1_2
          L5_2.angle = L6_2
          L6_2 = A0_2
          L5_2 = A0_2.layoutBadges
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
        end
      end
    end
    L4_2 = A0_2.characterButton
    if L4_2 then
      L4_2 = A0_2.lastChanceBtn
      if L4_2 then
        L4_2 = A0_2.delayFailing
        if L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.isSandboxLevel
          L4_2 = L4_2()
          if not L4_2 then
            L4_2 = A0_2.delayFailing
            L4_2 = L4_2 - A1_2
            A0_2.delayFailing = L4_2
            L4_2 = A0_2.delayFailing
            if L4_2 <= 0 then
              A0_2.delayFailing = nil
              L4_2 = gamelua
              L4_2.g_levelFailedDisabled = false
            end
          end
        end
        L4_2 = gamelua
        L4_2 = L4_2.isSandboxLevel
        L4_2 = L4_2()
        if not L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.checkLevelFailed
          L5_2 = 2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = gamelua
            L4_2 = L4_2.levelFailedTimer
            L5_2 = gamelua
            L5_2 = L5_2.levelFailedDelay
            if L4_2 < L5_2 then
              L4_2 = A0_2.showLastChance
              if L4_2 then
                L4_2 = A0_2.lastChanceBtn
                L4_2.visible = true
            end
          end
          else
            L4_2 = A0_2.lastChanceBtn
            L4_2.visible = false
          end
        else
          L4_2 = gamelua
          L4_2 = L4_2.checkLevelFailed
          L4_2 = L4_2()
          if L4_2 then
            L4_2 = gamelua
            L4_2 = L4_2.levelFailedTimer
            L5_2 = gamelua
            L5_2 = L5_2.levelFailedDelay
            if L4_2 < L5_2 then
              L4_2 = A0_2.showLastChance
              if L4_2 then
                L4_2 = A0_2.sandBoxLastChanceShowTimer
                if not L4_2 then
                  L4_2 = gamelua
                  L4_2 = L4_2.g_levelFailedDisabled
                  if L4_2 then
                    L4_2 = A0_2.lastChanceBtn
                    L4_2.visible = true
                    A0_2.sandBoxLastChanceShowTimer = 10
                end
              end
            end
          end
          else
            L4_2 = A0_2.sandBoxLastChanceShowTimer
            if not L4_2 then
              L4_2 = A0_2.lastChanceBtn
              L4_2.visible = false
            end
          end
        end
        L4_2 = ui
        L4_2 = L4_2.CharacterMenuShop
        L4_2 = L4_2.isShown
        if L4_2 then
          L4_2 = A0_2.lastChanceBtn
          L4_2.visible = false
        end
        L4_2 = A0_2.sandBoxLastChanceShowTimer
        if L4_2 then
          L4_2 = A0_2.sandBoxLastChanceShowTimer
          L4_2 = L4_2 - A1_2
          A0_2.sandBoxLastChanceShowTimer = L4_2
          L4_2 = A0_2.sandBoxLastChanceShowTimer
          if L4_2 < 0 then
            L4_2 = gamelua
            L4_2.g_levelFailedDisabled = false
            A0_2.sandBoxLastChanceShowTimer = nil
          end
        end
        L4_2 = gamelua
        L4_2 = L4_2.checkLevelFailed
        L4_2 = L4_2()
        if L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.levelFailedTimer
          L5_2 = gamelua
          L5_2 = L5_2.levelFailedDelay
          if L4_2 > L5_2 then
            L5_2 = A0_2
            L4_2 = A0_2.setCharacterButtonVisible
            L6_2 = false
            L4_2(L5_2, L6_2)
            L5_2 = A0_2
            L4_2 = A0_2.setTelepodButtonVisible
            L6_2 = false
            L4_2(L5_2, L6_2)
          end
        end
        L4_2 = A0_2.characterButton
        if L4_2 then
          L4_2 = A0_2.lastChanceBtn
          L4_2 = L4_2.visible
          if L4_2 then
            L4_2 = _G
            L4_2 = L4_2.res
            L4_2 = L4_2.getSpriteBounds
            L5_2 = "BTN_BG_LIGHT"
            L4_2, L5_2 = L4_2(L5_2)
            L6_2 = gamelua
            L6_2 = L6_2.getUIScale
            L6_2 = L6_2()
            L7_2 = GameHud
            L8_2 = L7_2
            L7_2 = L7_2.sawtooth
            L9_2 = A2_2 / 0.4
            L7_2 = L7_2(L8_2, L9_2)
            L7_2 = L7_2 ^ 2
            L7_2 = 1 - L7_2
            L7_2 = -L7_2
            L7_2 = L7_2 * 15
            L8_2 = A0_2.lastChanceBtn
            L9_2 = A0_2.characterButton
            L9_2 = L9_2.y
            L10_2 = L5_2 * L6_2
            L9_2 = L9_2 + L10_2
            L9_2 = L9_2 - L7_2
            L8_2.y = L9_2
          end
        end
      end
    end
    L5_2 = A0_2
    L4_2 = A0_2.updateTelepodCharacterAnimation
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.frame
  L4_2 = L4_2 + 1
  A0_2.frame = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.updateFloatingScores
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.updateScore
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "feather"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = gamelua
    L5_2 = L5_2.isEagleUsedInLevel
    L5_2 = L5_2()
    if L5_2 then
      if L3_2 then
        L5_2 = A0_2.currentEaglePercentage
        if L5_2 == nil then
          L5_2 = gamelua
          L5_2 = L5_2.getEaglePercentageScore
          L5_2 = L5_2()
          A0_2.currentEaglePercentage = L5_2
        end
        L5_2 = gamelua
        L5_2 = L5_2.getEaglePercentageScore
        L5_2 = L5_2()
        L6_2 = A0_2.currentEaglePercentage
        if L5_2 > L6_2 then
          L6_2 = _G
          L6_2 = L6_2.math
          L6_2 = L6_2.min
          L7_2 = A0_2.currentEaglePercentage
          L8_2 = A1_2 * 30
          L7_2 = L7_2 + L8_2
          L8_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2)
          A0_2.currentEaglePercentage = L6_2
        end
        L4_2.visible = true
        L7_2 = L4_2
        L6_2 = L4_2.setValue
        L8_2 = A0_2.currentEaglePercentage
        L6_2(L7_2, L8_2)
      else
        L4_2.visible = false
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.animateCoinButton
  L5_2(L6_2)
end

L0_1.update = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  A0_2.telepodCharacterName = A2_2
  A0_2.qrCode = A1_2
  L7_2 = A0_2.telepodCharacter
  L8_2 = L7_2
  L7_2 = L7_2.setImage
  L9_2 = A3_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.telepodCharacter
  L7_2.x = A4_2
  L7_2 = A0_2.telepodCharacter
  L7_2.y = A5_2
  L7_2 = A0_2.telepodCharacter
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = A6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.telepodCharacter
  L7_2.visible = true
  L7_2 = {}
  L8_2 = A0_2.telepodCharacter
  L8_2 = L8_2.x
  L9_2 = A0_2.characterButton
  L9_2 = L9_2.x
  L8_2 = L8_2 - L9_2
  L9_2 = A0_2.telepodCharacter
  L9_2 = L9_2.y
  L10_2 = A0_2.characterButton
  L10_2 = L10_2.y
  L9_2 = L9_2 - L10_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  A0_2.moveV = L7_2
end

L0_1.startTelepodCharacterAnimation = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.moveV
  if L4_2 then
    L4_2 = A0_2.position
    if not L4_2 then
      A0_2.position = 0
      L4_2 = A0_2.telepodCharacter
      L4_2 = L4_2.x
      A0_2.birdReceivedOrigX = L4_2
      L4_2 = A0_2.telepodCharacter
      L4_2 = L4_2.y
      A0_2.birdReceivedOrigY = L4_2
    end
    L4_2 = A1_2 * 2
    L5_2 = A0_2.position
    L5_2 = L5_2 + L4_2
    A0_2.position = L5_2
    L5_2 = A0_2.position
    if 1 <= L5_2 then
      A0_2.moveV = nil
      A0_2.position = nil
      L5_2 = A0_2.characterButton
      L5_2 = L5_2.x
      L6_2 = A0_2.characterButton
      L6_2 = L6_2.y
      L7_2 = A0_2.characterButton
      L7_2 = L7_2.w
      L8_2 = A0_2.characterButton
      L8_2 = L8_2.h
      L9_2 = gamelua
      L9_2 = L9_2.putMenuParticles
      L10_2 = {}
      L11_2 = L7_2 * 0.25
      L11_2 = L11_2 * L3_2
      L11_2 = L5_2 - L11_2
      L10_2.x = L11_2
      L10_2.y = L6_2
      L10_2.particles = "telepodEffect3"
      L10_2.amount = 5
      L9_2(L10_2)
      L9_2 = gamelua
      L9_2 = L9_2.putMenuParticles
      L10_2 = {}
      L10_2.x = L5_2
      L11_2 = L8_2 * 0.25
      L11_2 = L11_2 * L3_2
      L11_2 = L6_2 + L11_2
      L10_2.y = L11_2
      L10_2.particles = "telepodEffect3"
      L10_2.amount = 5
      L9_2(L10_2)
      L9_2 = gamelua
      L9_2 = L9_2.putMenuParticles
      L10_2 = {}
      L11_2 = L7_2 * 0.25
      L11_2 = L11_2 * L3_2
      L11_2 = L5_2 + L11_2
      L10_2.x = L11_2
      L10_2.y = L6_2
      L10_2.particles = "telepodEffect3"
      L10_2.amount = 5
      L9_2(L10_2)
      L9_2 = gamelua
      L9_2 = L9_2.putMenuParticles
      L10_2 = {}
      L10_2.x = L5_2
      L11_2 = L8_2 * 0.25
      L11_2 = L11_2 * L3_2
      L11_2 = L6_2 - L11_2
      L10_2.y = L11_2
      L10_2.particles = "telepodEffect3"
      L10_2.amount = 5
      L9_2(L10_2)
      L9_2 = A0_2.telepodCharacter
      L9_2.visible = false
      L9_2 = gamelua
      L9_2 = L9_2.physicsToWorldTransform
      L10_2 = gamelua
      L10_2 = L10_2.rubberBandPos
      L10_2 = L10_2.x
      L11_2 = gamelua
      L11_2 = L11_2.slingshotScale
      L11_2 = 0.2 * L11_2
      L10_2 = L10_2 - L11_2
      L11_2 = gamelua
      L11_2 = L11_2.rubberBandPos
      L11_2 = L11_2.y
      L9_2, L10_2 = L9_2(L10_2, L11_2)
      L11_2 = gamelua
      L11_2 = L11_2.worldToScreenTransform
      L12_2 = L9_2
      L13_2 = L10_2
      L11_2, L12_2 = L11_2(L12_2, L13_2)
      L13_2 = gamelua
      L13_2 = L13_2.isReadyToSwitch
      L13_2 = L13_2()
      if not L13_2 then
        L13_2 = A0_2.characterMenu
        L13_2 = L13_2.giveLastChanceBird
        if not L13_2 then
          goto lbl_120
        end
      end
      L13_2 = {}
      L14_2 = A0_2.characterButton
      L14_2 = L14_2.x
      L14_2 = L11_2 - L14_2
      L15_2 = A0_2.characterButton
      L15_2 = L15_2.y
      L15_2 = L12_2 - L15_2
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      A0_2.moveSlingshotV = L13_2
      L13_2 = A2_2 + 0.5
      A0_2.toSlingshotTime = L13_2
      L13_2 = A2_2 + 0.5
      A0_2.playSoundTime = L13_2
      ::lbl_120::
      L13_2 = gamelua
      L13_2 = L13_2.isTelepodCharacterScanned
      L14_2 = A0_2.qrCode
      L13_2 = L13_2(L14_2)
      if not L13_2 then
        L13_2 = gamelua
        L13_2 = L13_2.addCharacter
        L14_2 = A0_2.telepodCharacterName
        L15_2 = 1
        L16_2 = "telepod"
        L17_2 = A0_2.qrCode
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L13_2 = gamelua
        L13_2 = L13_2.setTelepodCharacterScanned
        L14_2 = A0_2.qrCode
        L15_2 = A0_2.telepodCharacterName
        L13_2(L14_2, L15_2)
        L13_2 = gamelua
        L13_2 = L13_2.eventManager
        L14_2 = L13_2
        L13_2 = L13_2.notify
        L15_2 = {}
        L16_2 = events
        L16_2 = L16_2.EID_CHARACTER_MENU_REFRESH
        L15_2.id = L16_2
        L13_2(L14_2, L15_2)
      end
      return
    end
    L5_2 = L3_2 * 1.6
    L6_2 = A0_2.position
    if L6_2 < 0.65 then
      L6_2 = A0_2.position
      if L6_2 then
        goto lbl_155
      end
    end
    L6_2 = 0.65
    ::lbl_155::
    L6_2 = 1 - L6_2
    L5_2 = L5_2 * L6_2
    L6_2 = A0_2.telepodCharacter
    L6_2 = L6_2.x
    L7_2 = A0_2.telepodCharacter
    L7_2 = L7_2.w
    L7_2 = L7_2 / 2
    L7_2 = L7_2 * L5_2
    L6_2 = L6_2 + L7_2
    L7_2 = A0_2.telepodCharacter
    L7_2 = L7_2.y
    L8_2 = A0_2.telepodCharacter
    L8_2 = L8_2.h
    L8_2 = L8_2 / 2
    L8_2 = L8_2 * L5_2
    L7_2 = L7_2 + L8_2
    L8_2 = gamelua
    L8_2 = L8_2.putMenuParticlesUnscaled
    L9_2 = {}
    L9_2.x = L6_2
    L9_2.y = L7_2
    L9_2.particles = "telepodEffect3"
    L9_2.amount = 5
    L8_2(L9_2)
    L8_2 = A0_2.moveV
    L8_2 = L8_2[1]
    L9_2 = A0_2.position
    L8_2 = L8_2 * L9_2
    L9_2 = A0_2.moveV
    L9_2 = L9_2[2]
    L10_2 = A0_2.position
    L9_2 = L9_2 * L10_2
    L10_2 = A0_2.telepodCharacter
    L11_2 = A0_2.birdReceivedOrigX
    L11_2 = L11_2 - L8_2
    L10_2.x = L11_2
    L10_2 = A0_2.telepodCharacter
    L11_2 = A0_2.birdReceivedOrigY
    L11_2 = L11_2 - L9_2
    L10_2.y = L11_2
    L10_2 = A0_2.telepodCharacter
    L11_2 = L10_2
    L10_2 = L10_2.setScale
    L12_2 = L5_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = A0_2.playSoundTime
  if L4_2 then
    L4_2 = A0_2.playSoundTime
    if A2_2 > L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.playAudio
      L5_2 = "birds_leia_specialactivate_lvl1"
      L4_2(L5_2)
      A0_2.playSoundTime = nil
    end
  end
  L4_2 = A0_2.moveSlingshotV
  if L4_2 then
    L4_2 = A0_2.toSlingshotTime
    if A2_2 > L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.physicsToWorldTransform
      L5_2 = gamelua
      L5_2 = L5_2.rubberBandPos
      L5_2 = L5_2.x
      L6_2 = gamelua
      L6_2 = L6_2.slingshotScale
      L6_2 = 0.2 * L6_2
      L5_2 = L5_2 - L6_2
      L6_2 = gamelua
      L6_2 = L6_2.rubberBandPos
      L6_2 = L6_2.y
      L4_2, L5_2 = L4_2(L5_2, L6_2)
      L6_2 = gamelua
      L6_2 = L6_2.worldToScreenTransform
      L7_2 = L4_2
      L8_2 = L5_2
      L6_2, L7_2 = L6_2(L7_2, L8_2)
      L8_2 = {}
      L9_2 = A0_2.characterButton
      L9_2 = L9_2.x
      L9_2 = L6_2 - L9_2
      L10_2 = A0_2.characterButton
      L10_2 = L10_2.y
      L10_2 = L7_2 - L10_2
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      A0_2.moveSlingshotV = L8_2
      L8_2 = A0_2.telepodCharacter
      L8_2.visible = true
      L8_2 = A0_2.position
      if not L8_2 then
        A0_2.position = 0
        L8_2 = A0_2.telepodCharacter
        L8_2 = L8_2.x
        A0_2.birdReceivedOrigX = L8_2
        L8_2 = A0_2.telepodCharacter
        L8_2 = L8_2.y
        A0_2.birdReceivedOrigY = L8_2
      end
      L8_2 = A1_2 * 2
      L9_2 = A0_2.position
      L9_2 = L9_2 + L8_2
      A0_2.position = L9_2
      L9_2 = A0_2.position
      if 1 <= L9_2 then
        A0_2.moveSlingshotV = nil
        A0_2.position = nil
        L9_2 = A0_2.telepodCharacter
        L9_2.visible = false
        L9_2 = gamelua
        L9_2 = L9_2.eventManager
        L10_2 = L9_2
        L9_2 = L9_2.notify
        L11_2 = {}
        L12_2 = events
        L12_2 = L12_2.EID_CHARACTER_SWITCH
        L11_2.id = L12_2
        L12_2 = A0_2.telepodCharacterName
        L11_2.birdName = L12_2
        L12_2 = A0_2.characterMenu
        L12_2 = L12_2.giveLastChanceBird
        if not L12_2 then
          L12_2 = false
        end
        L11_2.lastChanceBird = L12_2
        L11_2.skipCharacterAnimation = true
        L9_2(L10_2, L11_2)
        L9_2 = gamelua
        L9_2 = L9_2.eventManager
        L10_2 = L9_2
        L9_2 = L9_2.notify
        L11_2 = {}
        L12_2 = events
        L12_2 = L12_2.EID_TELEPOD_ANIMATION_FINISHED
        L11_2.id = L12_2
        L9_2(L10_2, L11_2)
        return
      end
      L9_2 = 0.8 * L3_2
      L10_2 = A0_2.position
      if L10_2 < 0.5 then
        L10_2 = A0_2.position
        if L10_2 then
          goto lbl_300
        end
      end
      L10_2 = 0.5
      ::lbl_300::
      L10_2 = 1 - L10_2
      L9_2 = L9_2 * L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.sqrt
      L11_2 = A0_2.telepodCharacter
      L11_2 = L11_2.x
      L12_2 = A0_2.birdReceivedOrigX
      L11_2 = L11_2 - L12_2
      L11_2 = L11_2 ^ 2
      L12_2 = A0_2.telepodCharacter
      L12_2 = L12_2.y
      L13_2 = A0_2.birdReceivedOrigY
      L12_2 = L12_2 - L13_2
      L12_2 = L12_2 ^ 2
      L11_2 = L11_2 + L12_2
      L10_2 = L10_2(L11_2)
      L11_2 = 60 * L3_2
      if L10_2 > L11_2 then
        L11_2 = gamelua
        L11_2 = L11_2.screenToPhysicsTransform
        L12_2 = A0_2.telepodCharacter
        L12_2 = L12_2.x
        L13_2 = A0_2.telepodCharacter
        L13_2 = L13_2.y
        L11_2, L12_2 = L11_2(L12_2, L13_2)
        L13_2 = gamelua
        L13_2 = L13_2.putParticles
        L14_2 = {}
        L14_2.x = L11_2
        L14_2.y = L12_2
        L14_2.particles = "telepodEffect4"
        L14_2.amount = 5
        L13_2(L14_2)
      end
      L11_2 = A0_2.moveSlingshotV
      L11_2 = L11_2[1]
      L12_2 = A0_2.position
      L11_2 = L11_2 * L12_2
      L12_2 = A0_2.moveSlingshotV
      L12_2 = L12_2[2]
      L13_2 = A0_2.position
      L12_2 = L12_2 * L13_2
      L13_2 = A0_2.telepodCharacter
      L14_2 = A0_2.birdReceivedOrigX
      L14_2 = L14_2 + L11_2
      L13_2.x = L14_2
      L13_2 = A0_2.telepodCharacter
      L14_2 = A0_2.birdReceivedOrigY
      L14_2 = L14_2 + L12_2
      L13_2.y = L14_2
      L13_2 = A0_2.telepodCharacter
      L14_2 = L13_2
      L13_2 = L13_2.setScale
      L15_2 = L9_2
      L13_2(L14_2, L15_2)
    end
  end
end

L0_1.updateTelepodCharacterAnimation = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.characterButton
  return L1_2
end

L0_1.getCharacterMenuButton = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.disableGameUpdate
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "pausePage"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.showPage
  L1_2(L2_2)
end

L0_1.showPauseMenu = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.isPausePageVisible
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.enableGameUpdate
    L1_2()
    L2_2 = A0_2
    L1_2 = A0_2.getChild
    L3_2 = "pausePage"
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2
    L1_2 = L1_2.hidePage
    L1_2(L2_2)
  end
end

L0_1.hidePauseMenu = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = gamelua
  L3_2 = L3_2.deviceModel
  if L3_2 == "android" and A1_2 == "PRESS" and A2_2 == "KEY_BACK" then
    L3_2 = adSystem
    if L3_2 then
      L3_2 = adSystem
      L4_2 = L3_2
      L3_2 = L3_2.isExpandableExpanded
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.getChild
        L5_2 = "pausePage"
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.getChild
          L5_2 = "pausePage"
          L3_2 = L3_2(L4_2, L5_2)
          L3_2 = L3_2.visible
          if not L3_2 then
            L3_2 = gamelua
            L3_2 = L3_2.togglePausePage
            L3_2()
            L3_2 = gamelua
            L3_2 = L3_2.playAudio
            L4_2 = "ButtonBack"
            L3_2(L4_2)
            L3_2 = -1
            return L3_2
          end
        end
      end
    end
  end
end

L0_1.onKeyEvent = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "pausePage"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.hidePage
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.queueEvent
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_BACK_TO_GAME_CLICKED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.returnToGame = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.charMenuClosed
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refreshCharacterAmount
  L1_2(L2_2)
  L1_2 = A0_2.coinBtn
  L2_2 = L1_2
  L1_2 = L1_2.setReturnValue
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L1_2 = true
  L2_2 = gamelua
  L2_2 = L2_2.getCharacterAmountForSide
  L4_2 = A0_2
  L3_2 = A0_2.isDarkSide
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == 0 then
    L2_2 = gamelua
    L2_2 = L2_2.getCharacterAmountForSide
    L4_2 = A0_2
    L3_2 = A0_2.isDarkSide
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
    L2_2 = L2_2(L3_2)
    if L2_2 == 0 then
      L1_2 = false
    end
  end
  L2_2 = gamelua
  L2_2.g_delayLevelComplete = 4
  L2_2 = A0_2.characterButtonAmountBg
  L2_2.visible = L1_2
  L2_2 = A0_2.characterButtonAmountText
  L2_2.visible = L1_2
  L2_2 = A0_2.characterMenu
  L2_2 = L2_2.oppositeSideAvailable
  if L2_2 then
    L2_2 = A0_2.oppositeSideCharacterButtonAmountBg
    L2_2.visible = L1_2
    L2_2 = A0_2.characterButtonOppositeSideAmountText
    L2_2.visible = L1_2
  end
end

L0_1.closeCharacterMenu = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.charMenuOpened
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.characterButtonAmountBg
  L2_2.visible = false
  L2_2 = A0_2.characterButtonAmountText
  L2_2.visible = false
  L2_2 = A0_2.oppositeSideCharacterButtonAmountBg
  L2_2.visible = false
  L2_2 = A0_2.characterButtonOppositeSideAmountText
  L2_2.visible = false
  L2_2 = gamelua
  L2_2 = L2_2.startedFromEditor
  if L2_2 then
    L2_2 = A0_2.characterButton
    L2_2.visible = true
  end
  L2_2 = A0_2.coinBtn
  L3_2 = L2_2
  L2_2 = L2_2.setReturnValue
  L4_2 = "GOTO_COINS"
  L2_2(L3_2, L4_2)
end

L0_1.openCharacterMenu = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "BACK_TO_GAME" then
    L8_2 = A0_2
    L7_2 = A0_2.returnToGame
    L7_2(L8_2)
  elseif L4_2 == "OPEN_CHARACTER_MENU" or L4_2 == "LAST_CHANCE_CLICKED" then
    L8_2 = A0_2
    L7_2 = A0_2.openCharacterMenu
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.lastChanceOn
    L7_2(L8_2)
  elseif L4_2 == "CLOSE_CHARACTER_MENU" then
    L8_2 = A0_2
    L7_2 = A0_2.closeCharacterMenu
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.lastChanceOff
    L7_2(L8_2)
  elseif L4_2 == "SWITCH_TO_CHARACTER_SELECTION" then
    L7_2 = A0_2.characterMenu
    L8_2 = L7_2
    L7_2 = L7_2.switchToTab
    L9_2 = CharacterMenuShop
    L9_2 = L9_2.TAB_CHARACTERS
    L7_2(L8_2, L9_2)
  elseif L4_2 == "TELEPOD_CLICKED" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_OPEN_TELEPOD
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "SHOP_CLICKED" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_OPEN_SHOP
    L9_2.id = L10_2
    L9_2.screen = "InGame"
    L7_2(L8_2, L9_2)
  elseif L4_2 == "BACK_TO_LEVEL_SELECTION" then
    L7_2 = gamelua
    L7_2 = L7_2.deviceModel
    if L7_2 == "android" then
    end
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_LEVEL_EXITED_FROM_PAUSE
    L9_2.id = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.levelName
    L9_2.levelName = L10_2
    L9_2.screen = "Pause"
    L7_2(L8_2, L9_2)
    L7_2 = gamelua
    L7_2.returnLevelFolder = nil
    L7_2 = gamelua
    L7_2 = L7_2.actions
    L7_2 = L7_2.loadLevelSelectionMenu
    L7_2 = L7_2.action
    L7_2()
  elseif L4_2 == "RESTART_LEVEL" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.queueEvent
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_LEVEL_RESTART_CLICKED
    L9_2.id = L10_2
    L9_2.from = "Pause"
    L7_2(L8_2, L9_2)
  elseif L4_2 == "TOGGLE_SOUNDS" then
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "buttonSounds"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.toggleAudio
    L8_2()
  elseif L4_2 == "OPEN_REMOVE_ADS_POPUP" then
    L7_2 = gamelua
    L7_2 = L7_2.ui
    L7_2 = L7_2.Shop
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "shop"
    L7_2 = L7_2(L8_2, L9_2)
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
  elseif L4_2 == "ZOOM_CLICKED" then
    L7_2 = gamelua
    L7_2 = L7_2.toggleZoom
    L7_2()
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.delayFailing = nil
  L1_2 = A0_2.characterMenu
  L1_2 = L1_2.giveLastChanceBird
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.toggleCameraControl
    L2_2 = false
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.gameCamera
    L2_2 = L1_2
    L1_2 = L1_2.setActiveCameras
    L3_2 = "bird"
    L4_2 = "castle"
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.gameCamera
    L2_2 = L1_2
    L1_2 = L1_2.setViewToCamera
    L3_2 = "bird"
    L4_2 = gamelua
    L4_2 = L4_2.gameCamera
    L4_2 = L4_2.currentZoomedScale
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.gameCamera
    L2_2 = L1_2
    L1_2 = L1_2.removeCamera
    L3_2 = "levelFailed"
    L1_2(L2_2, L3_2)
    A0_2.showLastChance = false
    L1_2 = gamelua
    L1_2.levelFailedTimer = 0
    L1_2 = A0_2.lastChanceBtn
    L1_2.visible = false
    L1_2 = gamelua
    L1_2.g_levelFailedDisabled = true
    L1_2 = gamelua
    L1_2.levelFailed = false
    A0_2.sandBoxLastChanceShowTimer = nil
  end
end

L0_1.lastChanceOn = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2
  L1_2 = gamelua
  L1_2 = L1_2.isSandboxLevel
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2.characterMenu
    L1_2 = L1_2.giveLastChanceBird
    if L1_2 then
      A0_2.delayFailing = 2
  end
  else
    L1_2 = A0_2.characterMenu
    L1_2 = L1_2.giveLastChanceBird
    if L1_2 then
      A0_2.sandBoxLastChanceShowTimer = 5
    end
  end
end

L0_1.lastChanceOff = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.getFontScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.setRenderState
  L3_2 = 0
  L4_2 = 0
  L5_2 = L1_2
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

L0_1.setTextRenderState = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = gamelua
  L3_2 = L3_2.getFontScale
  L3_2 = L3_2()
  L4_2 = gamelua
  L4_2 = L4_2.setFont
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.drawString
  L5_2 = "TEXTS_BASIC"
  L6_2 = _G
  L6_2 = L6_2.tostring
  L7_2 = gamelua
  L7_2 = L7_2.levelName
  L6_2 = L6_2(L7_2)
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 / L3_2
  L9_2 = A0_2.margin
  L8_2 = L8_2 - L9_2
  L7_2 = L7_2(L8_2)
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.floor
  L9_2 = A1_2 + A2_2
  L8_2 = L8_2(L9_2)
  L9_2 = "TOP"
  L10_2 = "RIGHT"
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = gamelua
  L4_2 = L4_2.starTable
  L5_2 = gamelua
  L5_2 = L5_2.levelName
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.starTable
    L5_2 = gamelua
    L5_2 = L5_2.levelName
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.silverScore
    if L4_2 then
      L4_2 = _G
      L4_2 = L4_2.res
      L4_2 = L4_2.drawString
      L5_2 = "TEXTS_BASIC"
      L6_2 = "2: "
      L7_2 = _G
      L7_2 = L7_2.tostring
      L8_2 = gamelua
      L8_2 = L8_2.starTable
      L9_2 = gamelua
      L9_2 = L9_2.levelName
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.silverScore
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 .. L7_2
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.floor
      L8_2 = gamelua
      L8_2 = L8_2.screenWidth
      L8_2 = L8_2 / L3_2
      L9_2 = A0_2.margin
      L8_2 = L8_2 - L9_2
      L7_2 = L7_2(L8_2)
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.floor
      L9_2 = A2_2 * 2
      L9_2 = A1_2 + L9_2
      L8_2 = L8_2(L9_2)
      L9_2 = "TOP"
      L10_2 = "RIGHT"
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    L4_2 = gamelua
    L4_2 = L4_2.starTable
    L5_2 = gamelua
    L5_2 = L5_2.levelName
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.goldScore
    if L4_2 then
      L4_2 = _G
      L4_2 = L4_2.res
      L4_2 = L4_2.drawString
      L5_2 = "TEXTS_BASIC"
      L6_2 = "3: "
      L7_2 = _G
      L7_2 = L7_2.tostring
      L8_2 = gamelua
      L8_2 = L8_2.starTable
      L9_2 = gamelua
      L9_2 = L9_2.levelName
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.goldScore
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 .. L7_2
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.floor
      L8_2 = gamelua
      L8_2 = L8_2.screenWidth
      L8_2 = L8_2 / L3_2
      L9_2 = A0_2.margin
      L8_2 = L8_2 - L9_2
      L7_2 = L7_2(L8_2)
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.floor
      L9_2 = A2_2 * 3
      L9_2 = A1_2 + L9_2
      L8_2 = L8_2(L9_2)
      L9_2 = "TOP"
      L10_2 = "RIGHT"
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    L4_2 = gamelua
    L4_2 = L4_2.starTable
    L5_2 = gamelua
    L5_2 = L5_2.levelName
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.hints
    if L4_2 then
      L4_2 = _G
      L4_2 = L4_2.res
      L4_2 = L4_2.drawString
      L5_2 = "TEXTS_BASIC"
      L6_2 = _G
      L6_2 = L6_2.table
      L6_2 = L6_2.concat
      L7_2 = gamelua
      L7_2 = L7_2.starTable
      L8_2 = gamelua
      L8_2 = L8_2.levelName
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.hints
      L8_2 = ", "
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.floor
      L8_2 = gamelua
      L8_2 = L8_2.screenWidth
      L8_2 = L8_2 / L3_2
      L9_2 = A0_2.margin
      L8_2 = L8_2 - L9_2
      L7_2 = L7_2(L8_2)
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.floor
      L9_2 = A2_2 * 4
      L9_2 = A1_2 + L9_2
      L8_2 = L8_2(L9_2)
      L9_2 = "TOP"
      L10_2 = "RIGHT"
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end

L0_1.drawDebugStarLimits = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L6_2 = gamelua
  L6_2 = L6_2.getFontScale
  L6_2 = L6_2()
  L7_2 = gamelua
  L7_2 = L7_2.setFont
  L8_2 = gamelua
  L8_2 = L8_2.getFontBasic
  L8_2 = L8_2()
  L9_2 = gamelua
  L9_2 = L9_2.isPhysicsEnabled
  L9_2 = L9_2()
  if not L9_2 then
    L9_2 = gamelua
    L9_2 = L9_2.isLevelEnded
    L9_2 = L9_2()
  end
  L10_2 = L7_2
  L11_2 = L8_2
  L10_2(L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.setTextRenderState
  L10_2(L11_2)
  L10_2 = gamelua
  L10_2 = L10_2._G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = gamelua
  L11_2 = L11_2.score
  L11_2 = L11_2 * 0.1
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * 10
  L11_2 = _G
  L11_2 = L11_2.string
  L11_2 = L11_2.format
  L12_2 = "%d"
  L13_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.getStringWidth
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  L13_2 = gamelua
  L13_2 = L13_2.screenWidth
  L14_2 = gamelua
  L14_2 = L14_2.screenHeight
  L15_2 = L7_2
  L16_2 = gamelua
  L16_2 = L16_2.getFontScoreBig
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L16_2()
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L15_2 = _G
  L15_2 = L15_2.res
  L15_2 = L15_2.getStringWidth
  L16_2 = L11_2
  L15_2 = L15_2(L16_2)
  L16_2 = ""
  L17_2 = _G
  L17_2 = L17_2.res
  L17_2 = L17_2.getString
  L18_2 = "TEXTS_BASIC"
  L19_2 = "MI_SCORE"
  L17_2 = L17_2(L18_2, L19_2)
  L16_2 = L17_2
  L17_2 = ""
  L18_2 = _G
  L18_2 = L18_2.res
  L18_2 = L18_2.getString
  L19_2 = "TEXTS_BASIC"
  L20_2 = "MI_HIGH_SCORE"
  L18_2 = L18_2(L19_2, L20_2)
  L17_2 = L18_2
  L18_2 = gamelua
  L18_2 = L18_2.levelName
  L19_2 = gamelua
  L19_2 = L19_2.highscores
  L20_2 = oldScoreLen
  if L20_2 == nil then
    oldScoreLen = L15_2
  end
  L20_2 = _G
  L20_2 = L20_2.math
  L20_2 = L20_2.max
  L21_2 = L15_2
  L22_2 = oldScoreLen
  L20_2 = L20_2(L21_2, L22_2)
  L15_2 = L20_2
  oldScoreLen = L15_2
  L20_2 = gamelua
  L20_2 = L20_2.flyingBird
  L21_2 = gamelua
  L21_2 = L21_2.isEagleUsedInLevel
  L21_2 = L21_2()
  L22_2 = gamelua
  L22_2 = L22_2.adSystem
  if L22_2 then
    L22_2 = gamelua
    L22_2 = L22_2.adSystem
    L23_2 = L22_2
    L22_2 = L22_2.getScoreAdYOffset
    L22_2 = L22_2(L23_2)
    if L22_2 then
      goto lbl_104
    end
  end
  L22_2 = 0
  ::lbl_104::
  if L21_2 then
    L23_2 = gamelua
    L23_2 = L23_2.startedFromEditor
    if L23_2 == true then
      L23_2 = L7_2
      L24_2 = gamelua
      L24_2 = L24_2.getFontBasic
      L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L24_2()
      L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      L23_2 = _G
      L23_2 = L23_2.res
      L23_2 = L23_2.getFontLeading
      L24_2 = gamelua
      L24_2 = L24_2.getFontBasic
      L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L24_2()
      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      L24_2 = _G
      L24_2 = L24_2.res
      L24_2 = L24_2.drawString
      L25_2 = "TEXTS_BASIC"
      L26_2 = "EagleScore limit "
      L27_2 = gamelua
      L27_2 = L27_2.getLevelEagleScoreLimit
      L28_2 = gamelua
      L28_2 = L28_2.levelName
      L27_2 = L27_2(L28_2)
      L26_2 = L26_2 .. L27_2
      L27_2 = L13_2 / L6_2
      L28_2 = A0_2.margin
      L27_2 = L27_2 - L28_2
      L28_2 = L23_2 * 2
      L29_2 = "TOP"
      L30_2 = "RIGHT"
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
      L24_2 = _G
      L24_2 = L24_2.res
      L24_2 = L24_2.drawString
      L25_2 = "TEXTS_BASIC"
      L26_2 = "Score "
      L27_2 = L11_2
      L26_2 = L26_2 .. L27_2
      L27_2 = L13_2 / L6_2
      L28_2 = A0_2.marginLarge
      L27_2 = L27_2 - L28_2
      L28_2 = L23_2 * 3
      L29_2 = "TOP"
      L30_2 = "RIGHT"
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    end
  end
  if not L21_2 and L22_2 <= 0 then
    L23_2 = 0
    if L9_2 then
      L24_2 = L7_2
      L25_2 = gamelua
      L25_2 = L25_2.getFontScore
      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L25_2()
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      L24_2 = _G
      L24_2 = L24_2.res
      L24_2 = L24_2.drawString
      L25_2 = "TEXTS_BASIC"
      L26_2 = L16_2
      L27_2 = L13_2 / L6_2
      L28_2 = A0_2.margin
      L27_2 = L27_2 - L28_2
      L28_2 = L22_2
      L29_2 = "TOP"
      L30_2 = "RIGHT"
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
      L24_2 = _G
      L24_2 = L24_2.res
      L24_2 = L24_2.getFontLeading
      L24_2 = L24_2()
      L23_2 = L24_2 * 1.2
      L24_2 = L7_2
      L25_2 = gamelua
      L25_2 = L25_2.getFontScoreBig
      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L25_2()
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      L24_2 = _G
      L24_2 = L24_2.res
      L24_2 = L24_2.drawString
      L25_2 = "TEXTS_BASIC"
      L26_2 = L11_2
      L27_2 = L13_2 / L6_2
      L28_2 = A0_2.marginLarge
      L27_2 = L27_2 - L28_2
      L28_2 = L22_2 + L23_2
      L29_2 = "TOP"
      L30_2 = "RIGHT"
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    end
    L24_2 = A0_2.highscore
    if L24_2 then
      L24_2 = _G
      L24_2 = L24_2.res
      L24_2 = L24_2.getStringWidth
      L25_2 = ""
      L26_2 = A0_2.highscore
      L25_2 = L25_2 .. L26_2
      L24_2 = L24_2(L25_2)
      if L15_2 < L24_2 then
        L15_2 = L24_2
      end
      if L9_2 then
        L25_2 = A0_2.highscore
        if 0 <= L25_2 then
          L25_2 = _G
          L25_2 = L25_2.res
          L25_2 = L25_2.getFontLeading
          L25_2 = L25_2()
          L25_2 = L25_2 * 0.95
          L23_2 = L23_2 + L25_2
          L25_2 = L7_2
          L26_2 = gamelua
          L26_2 = L26_2.getFontScore
          L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L26_2()
          L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
          L25_2 = _G
          L25_2 = L25_2.res
          L25_2 = L25_2.drawString
          L26_2 = "TEXTS_BASIC"
          L27_2 = L17_2
          L28_2 = L13_2 / L6_2
          L29_2 = A0_2.margin
          L28_2 = L28_2 - L29_2
          L29_2 = L23_2 + L22_2
          L30_2 = "TOP"
          L31_2 = "RIGHT"
          L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          L25_2 = _G
          L25_2 = L25_2.res
          L25_2 = L25_2.getFontLeading
          L25_2 = L25_2()
          L25_2 = L25_2 * 1.2
          L23_2 = L23_2 + L25_2
          L25_2 = L7_2
          L26_2 = gamelua
          L26_2 = L26_2.getFontBasic
          L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L26_2()
          L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
          L25_2 = _G
          L25_2 = L25_2.res
          L25_2 = L25_2.drawString
          L26_2 = "TEXTS_BASIC"
          L27_2 = _G
          L27_2 = L27_2.string
          L27_2 = L27_2.format
          L28_2 = "%d"
          L29_2 = A0_2.highscore
          L27_2 = L27_2(L28_2, L29_2)
          L28_2 = L13_2 / L6_2
          L29_2 = A0_2.marginLarge
          L28_2 = L28_2 - L29_2
          L29_2 = L23_2 + L22_2
          L30_2 = "TOP"
          L31_2 = "RIGHT"
          L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        end
      end
    end
    L24_2 = gamelua
    L24_2 = L24_2.isBuildUnlocked
    L24_2 = L24_2()
    if L24_2 then
      L24_2 = gamelua
      L24_2 = L24_2.startedFromEditor
      if L24_2 then
        L24_2 = gamelua
        L24_2 = L24_2.g_isEditorPlayTest
        L24_2 = not L24_2
        if L24_2 then
          goto lbl_297
        end
      end
      L24_2 = gamelua
      L24_2 = L24_2.setFont
      L25_2 = gamelua
      L25_2 = L25_2.getFontBasic
      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L25_2()
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      L25_2 = A0_2
      L24_2 = A0_2.drawDebugStarLimits
      L26_2 = L23_2
      L27_2 = _G
      L27_2 = L27_2.res
      L27_2 = L27_2.getFontLeading
      L27_2 = L27_2()
      L27_2 = L27_2 * 0.95
      L24_2(L25_2, L26_2, L27_2)
    end
  end
  ::lbl_297::
  L23_2 = gamelua
  L23_2 = L23_2.floatingScores
  L24_2 = L7_2
  L25_2 = fontScore
  L24_2(L25_2)
  L24_2 = 1
  L25_2 = #L23_2
  L26_2 = 1
  for L27_2 = L24_2, L25_2, L26_2 do
    L28_2 = L23_2[L27_2]
    L29_2 = gamelua
    L29_2 = L29_2.physicsToWorldTransform
    L30_2 = L28_2.x
    L31_2 = L28_2.y
    L29_2, L30_2 = L29_2(L30_2, L31_2)
    L31_2 = gamelua
    L31_2 = L31_2.worldScale
    L32_2 = gamelua
    L32_2 = L32_2.tempWorldScale
    if L32_2 ~= nil then
      L32_2 = gamelua
      L31_2 = L32_2.tempWorldScale
    end
    L32_2 = gamelua
    L32_2 = L32_2.screen
    L32_2 = L32_2.left
    L32_2 = L29_2 - L32_2
    L29_2 = L32_2 * L31_2
    L32_2 = gamelua
    L32_2 = L32_2.screen
    L32_2 = L32_2.top
    L32_2 = L30_2 - L32_2
    L30_2 = L32_2 * L31_2
    L32_2 = L28_2.xs
    L33_2 = gamelua
    L33_2 = L33_2.setRenderState
    L34_2 = 0
    L35_2 = 0
    L36_2 = L32_2
    L37_2 = L32_2
    L33_2(L34_2, L35_2, L36_2, L37_2)
    if L21_2 ~= true then
      L33_2 = L28_2.text
      if L33_2 ~= nil then
        L33_2 = _G
        L33_2 = L33_2.res
        L33_2 = L33_2.drawString
        L34_2 = "TEXTS_BASIC"
        L35_2 = L28_2.text
        L36_2 = L29_2 / L32_2
        L37_2 = L30_2 / L32_2
        L38_2 = "BOTTOM"
        L39_2 = "HCENTER"
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      end
      L33_2 = L28_2.sprite
      if L33_2 ~= nil then
        L33_2 = _G
        L33_2 = L33_2.res
        L33_2 = L33_2.drawSprite
        L34_2 = "MENU_ELEMENTS_1"
        L35_2 = L28_2.sprite
        L36_2 = _G
        L36_2 = L36_2.math
        L36_2 = L36_2.floor
        L37_2 = L29_2 / L32_2
        L36_2 = L36_2(L37_2)
        L37_2 = _G
        L37_2 = L37_2.math
        L37_2 = L37_2.floor
        L38_2 = L30_2 / L32_2
        L37_2 = L37_2(L38_2)
        L38_2 = "BOTTOM"
        L39_2 = "HCENTER"
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      end
    else
      L33_2 = L28_2.birdScore
      if L33_2 == true then
        L33_2 = _G
        L33_2 = L33_2.res
        L33_2 = L33_2.drawSprite
        L34_2 = ""
        L35_2 = "MEDAL_LEVEL_SELECTION_SILVER"
        L36_2 = _G
        L36_2 = L36_2.math
        L36_2 = L36_2.floor
        L37_2 = L29_2 / L32_2
        L36_2 = L36_2(L37_2)
        L37_2 = _G
        L37_2 = L37_2.math
        L37_2 = L37_2.floor
        L38_2 = L30_2 / L32_2
        L37_2 = L37_2(L38_2)
        L38_2 = "BOTTOM"
        L39_2 = "HCENTER"
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      end
    end
  end
  L25_2 = A0_2
  L24_2 = A0_2.setTextRenderState
  L24_2(L25_2)
  if L21_2 and L9_2 then
    L24_2 = L7_2
    L25_2 = gamelua
    L25_2 = L25_2.getFontScore
    L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L25_2()
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    L24_2 = _G
    L24_2 = L24_2.res
    L24_2 = L24_2.getStringWidth
    L25_2 = A0_2.tempEagleScore
    L26_2 = "%"
    L25_2 = L25_2 .. L26_2
    L24_2 = L24_2(L25_2)
    L25_2 = _G
    L25_2 = L25_2.res
    L25_2 = L25_2.getString
    L26_2 = "TEXTS_BASIC"
    L27_2 = "TEXT_FALCON_HIGHSCORE"
    L25_2 = L25_2(L26_2, L27_2)
    L26_2 = _G
    L26_2 = L26_2.res
    L26_2 = L26_2.drawString
    L27_2 = "TEXTS_BASIC"
    L28_2 = L25_2
    L29_2 = " "
    L28_2 = L28_2 .. L29_2
    L29_2 = A0_2.margin
    L29_2 = L13_2 - L29_2
    L30_2 = L24_2 * 2
    L29_2 = L29_2 - L30_2
    L30_2 = A0_2.margin
    L31_2 = "TOP"
    L32_2 = "RIGHT"
    L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L26_2 = L7_2
    L27_2 = gamelua
    L27_2 = L27_2.getFontScoreBig
    L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L27_2()
    L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    L26_2 = _G
    L26_2 = L26_2.res
    L26_2 = L26_2.drawString
    L27_2 = "TEXTS_BASIC"
    L28_2 = _G
    L28_2 = L28_2.string
    L28_2 = L28_2.format
    L29_2 = "%d"
    L30_2 = A0_2.tempEagleScore
    L28_2 = L28_2(L29_2, L30_2)
    L29_2 = "%"
    L28_2 = L28_2 .. L29_2
    L29_2 = A0_2.marginLarge
    L29_2 = L13_2 - L29_2
    L30_2 = A0_2.margin
    L31_2 = "TOP"
    L32_2 = "RIGHT"
    L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
  end
  L24_2 = A0_2.characterButtonShine
  if L24_2 then
    L24_2 = A0_2.characterButtonShine
    L24_2 = L24_2.visible
    if L24_2 then
      L24_2 = A0_2.characterButtonShine
      L25_2 = L24_2
      L24_2 = L24_2.draw
      L26_2 = A1_2
      L27_2 = A2_2
      L28_2 = A3_2
      L29_2 = A4_2
      L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
    end
  end
  L24_2 = Frame
  L24_2 = L24_2.draw
  L25_2 = A0_2
  L26_2 = A1_2
  L27_2 = A2_2
  L28_2 = A3_2
  L29_2 = A4_2
  L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
end

L0_1.draw = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_GAME_RESUMED
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
      L6_2 = "coinsPage"
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    end
    L4_2 = gamelua
    L4_2 = L4_2.isLevelEnded
    L4_2 = L4_2()
    if not L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.isInGameMode
      L4_2 = L4_2()
      if L4_2 then
        L4_2 = gamelua
        L4_2 = L4_2.isPausePageVisible
        L4_2 = L4_2()
        if not L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.g_tutorialShowing
          if not L4_2 then
            L4_2 = gamelua
            L4_2 = L4_2.g_gamePaused
            if not L4_2 then
              L4_2 = gamelua
              L4_2 = L4_2.g_showingChannelOrID
              if not L4_2 then
                L4_2 = gamelua
                L4_2 = L4_2.g_showingOppositeSideBirdPurchase
                if not L4_2 then
                  L4_2 = gamelua
                  L4_2 = L4_2.ui
                  L4_2 = L4_2.CarboniteAvailableAnimation
                  L4_2 = L4_2.isShown
                  if not L4_2 then
                    L4_2 = gamelua
                    L4_2 = L4_2.ui
                    L4_2 = L4_2.CarboniteMeltAnimation
                    L4_2 = L4_2.isShown
                    if not L4_2 then
                      L4_2 = gamelua
                      L4_2 = L4_2.ui
                      L4_2 = L4_2.ShopClaimScreen
                      L4_2 = L4_2.isShown
                      if not L4_2 and not L3_2 then
                        L4_2 = gamelua
                        L4_2 = L4_2.adSystem
                        if L4_2 then
                          L4_2 = gamelua
                          L4_2 = L4_2.adSystem
                          L5_2 = L4_2
                          L4_2 = L4_2.isAdShowing
                          L4_2 = L4_2(L5_2)
                        end
                        if not L4_2 then
                          L5_2 = A0_2
                          L4_2 = A0_2.showPauseMenu
                          L4_2(L5_2)
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
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_PAUSE_CLICKED
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.showPauseMenu
      L2_2(L3_2)
    else
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_CHARACTER_SWITCHED
      if L2_2 == L3_2 then
        L2_2 = A0_2.coinBtn
        L3_2 = L2_2
        L2_2 = L2_2.setReturnValue
        L4_2 = nil
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2.charMenuClosed
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.refreshCharacterAmount
        L2_2(L3_2)
        L2_2 = A0_2.characterMenu
        L2_2.giveLastChanceBird = false
        L2_2 = gamelua
        L2_2.g_levelFailedDisabled = false
      else
        L2_2 = A1_2.id
        L3_2 = gamelua
        L3_2 = L3_2.events
        L3_2 = L3_2.EID_CHARACTER_MENU_REFRESH
        if L2_2 == L3_2 then
          L2_2 = gamelua
          L2_2 = L2_2.isBirdsLeft
          L2_2 = L2_2()
          if L2_2 then
            L2_2 = ui
            L2_2 = L2_2.CharacterMenuShop
            L2_2 = L2_2.isShown
            if not L2_2 then
              L3_2 = A0_2
              L2_2 = A0_2.refreshCharacterAmount
              L2_2(L3_2)
              L2_2 = A0_2.characterButtonShine
              L4_2 = A0_2
              L3_2 = A0_2.shouldCharacterButtonShine
              L3_2 = L3_2(L4_2)
              if L3_2 then
                L3_2 = A0_2.characterMenu
                L3_2 = L3_2.visible
                L3_2 = not L3_2
              end
              L2_2.visible = L3_2
            end
          end
        else
          L2_2 = A1_2.id
          L3_2 = gamelua
          L3_2 = L3_2.events
          L3_2 = L3_2.EID_BIRD_SHOT
          if L2_2 == L3_2 then
            L2_2 = gamelua
            L2_2 = L2_2.isBirdsLeft
            L2_2 = L2_2()
            if not L2_2 then
              L2_2 = gamelua
              L2_2 = L2_2.getLevelMetadata
              L3_2 = gamelua
              L3_2 = L3_2.levelName
              L2_2 = L2_2(L3_2)
              L2_2 = L2_2.noLastChance
              if L2_2 then
                L3_2 = A0_2
                L2_2 = A0_2.setCharacterButtonVisible
                L4_2 = false
                L2_2(L3_2, L4_2)
                L3_2 = A0_2
                L2_2 = A0_2.setTelepodButtonVisible
                L4_2 = false
                L2_2(L3_2, L4_2)
                L2_2 = A0_2.characterMenu
                L2_2.giveLastChanceBird = false
                A0_2.showLastChance = false
              else
                L2_2 = A0_2.characterMenu
                L2_2.giveLastChanceBird = true
                L2_2 = A0_2.characterButtonShine
                L2_2.visible = false
                A0_2.showLastChance = true
                L2_2 = gamelua
                L2_2 = L2_2.isSandboxLevel
                L2_2 = L2_2()
                if L2_2 then
                  L2_2 = gamelua
                  L2_2.g_levelFailedDisabled = true
                end
              end
              L3_2 = A0_2
              L2_2 = A0_2.charMenuClosed
              L2_2(L3_2)
            end
          else
            L2_2 = A1_2.id
            L3_2 = gamelua
            L3_2 = L3_2.events
            L3_2 = L3_2.EID_POWERUP_CLOSE_SLIDER
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2.setCharacterButtonVisible
              L4_2 = false
              L2_2(L3_2, L4_2)
              L3_2 = A0_2
              L2_2 = A0_2.charMenuClosed
              L2_2(L3_2)
              L3_2 = A0_2
              L2_2 = A0_2.setTelepodButtonVisible
              L4_2 = false
              L2_2(L3_2, L4_2)
            else
              L2_2 = A1_2.id
              L3_2 = gamelua
              L3_2 = L3_2.events
              L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
              if L2_2 == L3_2 then
                L2_2 = gamelua
                L2_2 = L2_2.eventManager
                L3_2 = L2_2
                L2_2 = L2_2.notify
                L4_2 = {}
                L5_2 = events
                L5_2 = L5_2.EID_CHARACTER_MENU_REFRESH
                L4_2.id = L5_2
                L2_2(L3_2, L4_2)
              else
                L2_2 = A1_2.id
                L3_2 = gamelua
                L3_2 = L3_2.events
                L3_2 = L3_2.EID_SHOP_OPENED
                if L2_2 ~= L3_2 then
                  L2_2 = A1_2.id
                  L3_2 = gamelua
                  L3_2 = L3_2.events
                  L3_2 = L3_2.EID_SHOP_CLOSED
                  if L2_2 ~= L3_2 then
                    L2_2 = A1_2.id
                    L3_2 = gamelua
                    L3_2 = L3_2.events
                    L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
                    if L2_2 ~= L3_2 then
                      goto lbl_240
                    end
                  end
                end
                L2_2 = A0_2.characterButtonShine
                L3_2 = A0_2.characterButtonShine
                L3_2 = L3_2.visible
                if not L3_2 then
                  L3_2 = gamelua
                  L3_2 = L3_2.shouldShowShopGlow
                  L3_2 = L3_2()
                end
                L2_2.visible = L3_2
                goto lbl_306
                ::lbl_240::
                L2_2 = A1_2.id
                L3_2 = gamelua
                L3_2 = L3_2.events
                L3_2 = L3_2.EID_CHARACTER_SIDE_SWITCHED
                if L2_2 == L3_2 then
                  L2_2 = A0_2.characterButton
                  L3_2 = L2_2
                  L2_2 = L2_2.setImage
                  L4_2 = gamelua
                  L4_2 = L4_2.getButtonImageName
                  L5_2 = "characterMenuShopButton"
                  L7_2 = A0_2
                  L6_2 = A0_2.isDarkSide
                  L6_2, L7_2 = L6_2(L7_2)
                  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
                  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                else
                  L2_2 = A1_2.id
                  L3_2 = gamelua
                  L3_2 = L3_2.events
                  L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
                  if L2_2 == L3_2 then
                    L3_2 = A0_2
                    L2_2 = A0_2.hidePauseMenu
                    L2_2(L3_2)
                  else
                    L2_2 = A1_2.id
                    L3_2 = gamelua
                    L3_2 = L3_2.events
                    L3_2 = L3_2.EID_TELEPOD_ANIMATION_FINISHED
                    if L2_2 == L3_2 then
                      L3_2 = A0_2
                      L2_2 = A0_2.lastChanceOff
                      L2_2(L3_2)
                    else
                      L2_2 = A1_2.id
                      L3_2 = gamelua
                      L3_2 = L3_2.events
                      L3_2 = L3_2.EID_TELEPOD_OPENED
                      if L2_2 == L3_2 then
                        L3_2 = A0_2
                        L2_2 = A0_2.lastChanceOn
                        L2_2(L3_2)
                      else
                        L2_2 = A1_2.id
                        L3_2 = gamelua
                        L3_2 = L3_2.events
                        L3_2 = L3_2.EID_TELEPOD_CLOSED
                        if L2_2 == L3_2 then
                          L2_2 = A1_2.userInitiated
                          if L2_2 then
                            L3_2 = A0_2
                            L2_2 = A0_2.lastChanceOff
                            L2_2(L3_2)
                          end
                        else
                          L2_2 = A1_2.id
                          L3_2 = gamelua
                          L3_2 = L3_2.events
                          L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
                          if L2_2 == L3_2 then
                            L2_2 = A0_2.newShopBadge
                            if L2_2 then
                              L2_2 = A0_2.newShopBadge
                              L2_2.visible = false
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
    end
  end
  ::lbl_306::
end

L0_1.eventTriggered = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.isDarkSide
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.getCharacterAmountForSide
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.characterButtonAmountText
  L4_2 = L3_2
  L3_2 = L3_2.setText
  if 999 < L2_2 then
    L5_2 = "999+"
    if L5_2 then
      goto lbl_18
    end
  end
  L5_2 = _G
  L5_2 = L5_2.tostring
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  ::lbl_18::
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.characterButtonOppositeSideAmountText
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.getCharacterAmountForSide
    L4_2 = not L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.characterButtonOppositeSideAmountText
    L5_2 = L4_2
    L4_2 = L4_2.setText
    if 999 < L3_2 then
      L6_2 = "999+"
      if L6_2 then
        goto lbl_37
      end
    end
    L6_2 = _G
    L6_2 = L6_2.tostring
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    ::lbl_37::
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.setCharacterButtonVisible
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.layout
  L3_2(L4_2)
end

L0_1.refreshCharacterAmount = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ui
  L2_2 = L2_2.CharacterMenuShop
  L2_2.isShown = true
  L2_2 = A0_2.characterButton
  L2_2.returnValue = "CLOSE_CHARACTER_MENU"
  L2_2 = A0_2.characterButton
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.getButtonImageName
  L5_2 = "characterMenuShopButton"
  L7_2 = A0_2
  L6_2 = A0_2.isDarkSide
  L6_2, L7_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = gamelua
  L2_2 = L2_2.eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = gamelua
  L5_2 = L5_2.events
  L5_2 = L5_2.EID_CHARACTER_MENU_OPENED
  L4_2.id = L5_2
  L4_2.openPreviousPage = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.characterButtonShine
  L2_2.visible = false
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.setNewBirdsAvailable
  L4_2 = false
  L6_2 = A0_2
  L5_2 = A0_2.isDarkSide
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2.characterMenu
  L2_2 = L2_2.oppositeSideAvailable
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.setNewBirdsAvailable
    L4_2 = false
    L6_2 = A0_2
    L5_2 = A0_2.isDarkSide
    L5_2 = L5_2(L6_2)
    L5_2 = not L5_2
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.charMenuOpened = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.CharacterMenuShop
  L1_2.isShown = false
  L1_2 = A0_2.characterButton
  L1_2.returnValue = "OPEN_CHARACTER_MENU"
  L1_2 = A0_2.characterButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "characterMenuShopButton"
  L6_2 = A0_2
  L5_2 = A0_2.isDarkSide
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.characterButtonAmountBg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "characterMenuCounterBox"
  L6_2 = A0_2
  L5_2 = A0_2.isDarkSide
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.oppositeSideCharacterButtonAmountBg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "characterMenuCounterBox"
  L6_2 = A0_2
  L5_2 = A0_2.isDarkSide
  L5_2 = L5_2(L6_2)
  L5_2 = not L5_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.characterButtonShine
  L1_2.visible = false
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setNewBirdsAvailable
  L3_2 = false
  L5_2 = A0_2
  L4_2 = A0_2.isDarkSide
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.characterMenu
  L1_2 = L1_2.oppositeSideAvailable
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.setNewBirdsAvailable
    L3_2 = false
    L5_2 = A0_2
    L4_2 = A0_2.isDarkSide
    L4_2 = L4_2(L5_2)
    L4_2 = not L4_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.startedFromEditor
  if L1_2 then
    L1_2 = A0_2.characterButton
    L1_2.visible = false
  end
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
end

L0_1.charMenuClosed = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.startedFromEditor
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CHARACTER_SWITCHED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_PAUSE_CLICKED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_GAME_RESUMED
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
    L3_2 = L3_2.EID_BIRD_SHOT
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_POWERUP_CLOSE_SLIDER
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
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
    L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CURRENT_QUESTS_SHOWN
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CHARACTER_SIDE_SWITCHED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_TELEPOD_OPENED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_TELEPOD_CLOSED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_TELEPOD_ANIMATION_FINISHED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = "BTN_GALLERY"
    return L2_2
  else
    L2_2 = "BTN_CHARACTERMENU_LIGHT"
    return L2_2
  end
end

L0_1.getMenuOpenButtonSprite = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = "BTN_GALLERY"
    return L2_2
  else
    L2_2 = "BTN_CHARACTERMENU_LIGHT"
    return L2_2
  end
end

L0_1.getMenuCloseButtonSprite = L1_1
L0_1 = GameHud

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.highscores
  L2_2 = gamelua
  L2_2 = L2_2.levelName
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.highscores
    L2_2 = gamelua
    L2_2 = L2_2.levelName
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.score
    if 0 < L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.highscores
      L2_2 = gamelua
      L2_2 = L2_2.levelName
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.score
      A0_2.highscore = L1_2
  end
  else
    A0_2.highscore = -1
  end
end

L0_1.updateHighscoreText = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2.characterButton
    L2_2.alpha = nil
  else
    L2_2 = A0_2.characterButton
    L2_2.alpha = 0.4
    L2_2 = A0_2.characterButtonShine
    L2_2.visible = false
    L2_2 = A0_2.characterMenu
    L2_2.giveLastChanceBird = false
    A0_2.showLastChance = false
    L2_2 = A0_2.newShopBadge
    if L2_2 then
      L2_2 = A0_2.newShopBadge
      L2_2.visible = false
    end
    L2_2 = A0_2.claimBadge
    if L2_2 then
      L2_2 = A0_2.claimBadge
      L2_2.visible = false
    end
  end
  L2_2 = A0_2.characterButton
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.getCharacterAmountForSide
  L4_2 = A0_2
  L3_2 = A0_2.isDarkSide
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == 0 then
    L2_2 = gamelua
    L2_2 = L2_2.getCharacterAmountForSide
    L4_2 = A0_2
    L3_2 = A0_2.isDarkSide
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
    L2_2 = L2_2(L3_2)
    if L2_2 == 0 then
      A1_2 = false
    end
  end
  L2_2 = A0_2.characterButtonAmountBg
  L2_2.visible = A1_2
  L2_2 = A0_2.characterButtonAmountText
  L2_2.visible = A1_2
  L2_2 = A0_2.characterMenu
  L2_2 = L2_2.oppositeSideAvailable
  if L2_2 or not A1_2 then
    L2_2 = A0_2.oppositeSideCharacterButtonAmountBg
    L2_2.visible = A1_2
    L2_2 = A0_2.characterButtonOppositeSideAmountText
    L2_2.visible = A1_2
  end
end

L0_1.setCharacterButtonVisible = L1_1
L0_1 = GameHud

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.telepodBtn
  if L2_2 then
    if A1_2 then
      L2_2 = A0_2.telepodBtn
      L2_2.alpha = nil
    else
      L2_2 = A0_2.telepodBtn
      L2_2.alpha = 0.4
    end
    L2_2 = A0_2.telepodBtn
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.setTelepodButtonVisible = L1_1
