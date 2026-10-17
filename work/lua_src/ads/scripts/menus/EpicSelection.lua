local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
EpicSelection = L0_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = gamelua
  L1_2 = L1_2.loadImages
  L2_2 = {}
  L3_2 = "EPIC_SELECTION"
  L2_2[1] = L3_2
  L1_2(L2_2)
  L1_2 = A0_2.side
  if L1_2 then
    L1_2 = 0
    epicSelectionEndTime = L1_2
  else
    L1_2 = 3
    epicSelectionEndTime = L1_2
  end
  A0_2.pause = false
  L1_2 = 0
  lightSidePositionScale = L1_2
  L1_2 = 0
  darkSidePositionScale = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.deviceModel
  L1_2 = L1_2 == "windows"
  A0_2.confirmOnLeft = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "lightSideSpotlight"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "EPIC_SPOTLIGHT_BLUE"
  L2_2(L3_2, L4_2)
  L1_2.visible = true
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "lightSideShadow"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "EPIC_SHADOW_BLUE"
  L3_2(L4_2, L5_2)
  L2_2.visible = true
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.ImageButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "lightSide"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "EPIC_YODA"
  L4_2(L5_2, L6_2)
  L3_2.returnValue = "LIGHT_SIDE"
  L3_2.activateOnRelease = true
  L3_2.visible = true
  L3_2.clickSound = "ButtonProceed"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "lightSideButton"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "BTN_CHECK_LIGHT"
  L5_2(L6_2, L7_2)
  L4_2.returnValue = "LIGHT_SIDE"
  L4_2.activateOnRelease = true
  L4_2.visible = false
  L4_2.clickSound = "ButtonProceed"
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "lightSideLockedWarning"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = "EPISODE_PLANET_LOCK_ICEMOON"
  L6_2(L7_2, L8_2)
  L5_2.visible = false
  L5_2.rotationDirection = 2
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "darkSideSpotlight"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = "EPIC_SPOTLIGHT_RED"
  L7_2(L8_2, L9_2)
  L6_2.visible = false
  L8_2 = A0_2
  L7_2 = A0_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.Image
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "darkSideShadow"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.setImage
  L10_2 = "EPIC_SHADOW_RED"
  L8_2(L9_2, L10_2)
  L7_2.visible = false
  L9_2 = A0_2
  L8_2 = A0_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.enteredSide
  if L8_2 then
    L8_2 = A0_2.enteredSide
    if L8_2 == "LIGHT" then
      L6_2.visible = false
      L7_2.visible = false
      L1_2.visible = true
      L2_2.visible = true
  end
  else
    L8_2 = A0_2.enteredSide
    if L8_2 then
      L8_2 = A0_2.enteredSide
      if L8_2 == "SITH" then
        L6_2.visible = true
        L7_2.visible = true
        L1_2.visible = false
        L2_2.visible = false
    end
    else
      L6_2.visible = false
      L7_2.visible = false
      L1_2.visible = false
      L2_2.visible = false
    end
  end
  L8_2 = gamelua
  L8_2 = L8_2.ui
  L8_2 = L8_2.ImageButton
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.name = "darkSide"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L8_2
  L9_2 = L8_2.setImage
  L11_2 = "EPIC_EMPEROR"
  L9_2(L10_2, L11_2)
  L8_2.returnValue = "DARK_SIDE"
  L8_2.activateOnRelease = true
  L8_2.visible = true
  L8_2.clickSound = "ButtonProceed"
  L10_2 = A0_2
  L9_2 = A0_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = gamelua
  L9_2 = L9_2.ui
  L9_2 = L9_2.ScallableButton
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.name = "darkSideButton"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = L9_2
  L10_2 = L9_2.setImage
  L12_2 = "BTN_CHECK"
  L10_2(L11_2, L12_2)
  L9_2.returnValue = "DARK_SIDE"
  L9_2.activateOnRelease = true
  L9_2.visible = false
  L9_2.clickSound = "ButtonProceed"
  L11_2 = A0_2
  L10_2 = A0_2.addChild
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2.side
  if L10_2 then
    L10_2 = A0_2.side
    if L10_2 == "SITH" then
      L3_2.visible = false
      L1_2.visible = false
      L2_2.visible = false
  end
  else
    L10_2 = A0_2.side
    if L10_2 then
      L8_2.visible = false
      L6_2.visible = false
      L7_2.visible = false
    end
  end
  L10_2 = A0_2.side
  if L10_2 then
    L10_2 = gamelua
    L10_2 = L10_2.ui
    L10_2 = L10_2.ScallableButton
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = {}
    L12_2.name = "stayOnCurrentSideButton"
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = L10_2
    L11_2 = L10_2.setImage
    L13_2 = gamelua
    L13_2 = L13_2.getButtonImageName
    L14_2 = "buttonX"
    L15_2 = A0_2.side
    L15_2 = L15_2 == "SITH"
    L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2 = A0_2.side
    if L11_2 == "SITH" then
      L10_2.returnValue = "CANCEL_DARK_SIDE"
    else
      L11_2 = A0_2.side
      if L11_2 == "LIGHT" then
        L10_2.returnValue = "CANCEL_LIGHT_SIDE"
      end
    end
    L10_2.activateOnRelease = true
    L10_2.visible = false
    L10_2.clickSound = "ButtonProceed"
    L12_2 = A0_2
    L11_2 = A0_2.addChild
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L10_2 = gamelua
  L10_2 = L10_2.ui
  L10_2 = L10_2.Image
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L12_2.name = "darkSideLockedWarning"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = L10_2
  L11_2 = L10_2.setImage
  L13_2 = "EPISODE_PLANET_LOCK_ICEMOON"
  L11_2(L12_2, L13_2)
  L10_2.visible = false
  L10_2.rotationDirection = 2
  L12_2 = A0_2
  L11_2 = A0_2.addChild
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.side
  if L11_2 then
    L11_2 = gamelua
    L11_2 = L11_2.ui
    L11_2 = L11_2.Text
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "title"
    L14_2 = gamelua
    L14_2 = L14_2.getFontBasic
    L13_2.font = L14_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = A0_2.side
    if L12_2 == "SITH" then
      L12_2 = _G
      L12_2 = L12_2.res
      L12_2 = L12_2.getString
      L13_2 = "TEXTS_BASIC"
      L14_2 = "TEXT_EPIC_SELECTION_CHOOSE_DARK_TITLE"
      L12_2 = L12_2(L13_2, L14_2)
      L11_2.text = L12_2
    else
      L12_2 = A0_2.side
      if L12_2 == "LIGHT" then
        L12_2 = _G
        L12_2 = L12_2.res
        L12_2 = L12_2.getString
        L13_2 = "TEXTS_BASIC"
        L14_2 = "TEXT_EPIC_SELECTION_CHOOSE_LIGHT_TITLE"
        L12_2 = L12_2(L13_2, L14_2)
        L11_2.text = L12_2
      end
    end
    L11_2.vanchor = "TOP"
    L11_2.hanchor = "HCENTER"
    L11_2.visible = true
    L13_2 = A0_2
    L12_2 = A0_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    L12_2 = gamelua
    L12_2 = L12_2.ui
    L12_2 = L12_2.Text
    L13_2 = L12_2
    L12_2 = L12_2.new
    L14_2 = {}
    L14_2.name = "question"
    L15_2 = gamelua
    L15_2 = L15_2.getFontBasic
    L14_2.font = L15_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = A0_2.side
    if L13_2 == "SITH" then
      L13_2 = _G
      L13_2 = L13_2.res
      L13_2 = L13_2.getString
      L14_2 = "TEXTS_BASIC"
      L15_2 = "TEXT_EPIC_SELECTION_CHOOSE_DARK_QUESTION"
      L13_2 = L13_2(L14_2, L15_2)
      A0_2.questionText = L13_2
    else
      L13_2 = A0_2.side
      if L13_2 == "LIGHT" then
        L13_2 = _G
        L13_2 = L13_2.res
        L13_2 = L13_2.getString
        L14_2 = "TEXTS_BASIC"
        L15_2 = "TEXT_EPIC_SELECTION_CHOOSE_LIGHT_QUESTION"
        L13_2 = L13_2(L14_2, L15_2)
        A0_2.questionText = L13_2
      end
    end
    L12_2.vanchor = "TOP"
    L12_2.hanchor = "HCENTER"
    L12_2.visible = false
    L14_2 = A0_2
    L13_2 = A0_2.addChild
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
  else
    L11_2 = gamelua
    L11_2 = L11_2.ui
    L11_2 = L11_2.Text
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "question"
    L14_2 = _G
    L14_2 = L14_2.res
    L14_2 = L14_2.getString
    L15_2 = "TEXTS_BASIC"
    L16_2 = "TEXT_EPIC_SELECTION_QUESTION"
    L14_2 = L14_2(L15_2, L16_2)
    L13_2.text = L14_2
    L14_2 = gamelua
    L14_2 = L14_2.getFontBasic
    L13_2.font = L14_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = _G
    L12_2 = L12_2.res
    L12_2 = L12_2.getString
    L13_2 = "TEXTS_BASIC"
    L14_2 = "TEXT_EPIC_SELECTION_QUESTION"
    L12_2 = L12_2(L13_2, L14_2)
    A0_2.questionText = L12_2
    L11_2.vanchor = "TOP"
    L11_2.hanchor = "HCENTER"
    L11_2.visible = true
    L13_2 = A0_2
    L12_2 = A0_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  L11_2 = A0_2.side
  if not L11_2 then
    L11_2 = gamelua
    L11_2 = L11_2.ui
    L11_2 = L11_2.ScallableButton
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "backButton"
    L13_2.clickSound = "ButtonBack"
    L11_2 = L11_2(L12_2, L13_2)
    L13_2 = L11_2
    L12_2 = L11_2.setImage
    L14_2 = gamelua
    L14_2 = L14_2.getButtonImageName
    L15_2 = "backButton"
    L16_2 = gamelua
    L16_2 = L16_2.SettingsWrapper
    L17_2 = L16_2
    L16_2 = L16_2.isDarkSide
    L16_2, L17_2 = L16_2(L17_2)
    L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2.returnValue = "BACK"
    L13_2 = A0_2
    L12_2 = A0_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  A0_2.lightSideSelected = false
  A0_2.darkSideSelected = false
  A0_2.lightSideScale = 0.8
  A0_2.lightSideTargetScale = 0.8
  A0_2.darkSideScale = 0.8
  A0_2.darkSideTargetScale = 0.8
  L11_2 = A0_2.side
  if L11_2 then
    A0_2.lockAnimationTimer = 1
    L11_2 = gamelua
    L11_2 = L11_2.ui
    L11_2 = L11_2.Image
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "lock"
    L11_2 = L11_2(L12_2, L13_2)
    L13_2 = L11_2
    L12_2 = L11_2.setImage
    L14_2 = "EPISODE_PLANET_LOCK"
    L12_2(L13_2, L14_2)
    L13_2 = A0_2
    L12_2 = A0_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  L11_2 = A0_2.side
  if not L11_2 then
    L11_2 = gamelua
    L11_2 = L11_2.ui
    L11_2 = L11_2.Image
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "lockAnimation"
    L11_2 = L11_2(L12_2, L13_2)
    L13_2 = L11_2
    L12_2 = L11_2.setImage
    L14_2 = "EPISODE_PLANET_LOCK"
    L12_2(L13_2, L14_2)
    L11_2.visible = false
    L13_2 = A0_2
    L12_2 = A0_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  L11_2 = A0_2.showCoinFrame
  if L11_2 then
    L11_2 = ui
    L11_2 = L11_2.CoinButton
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "coinBtn"
    L13_2.returnValue = "GOTO_COINS"
    L13_2.coinButtonDisabled = true
    L11_2 = L11_2(L12_2, L13_2)
    L13_2 = A0_2
    L12_2 = A0_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    A0_2.coinBtn = L11_2
  end
end

L0_1.init = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.clearParticlesWithTagNative
  L2_2 = "MENU"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "coin_counter_loop_up"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "coin_counter_loop_down"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NOTIFICATION_OPEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NOTIFICATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_EPIC_SELECTION_OPEN
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NOTIFICATION_OPEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NOTIFICATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_EPIC_SELECTION_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.releaseImages
  L2_2 = {}
  L3_2 = "EPIC_SELECTION"
  L2_2[1] = L3_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = EpicSelection

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NOTIFICATION_OPEN
  if L2_2 == L3_2 then
    A0_2.pause = true
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_NOTIFICATION_CLOSED
    if L2_2 == L3_2 then
      A0_2.pause = false
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "title"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = gamelua
    L3_2 = L3_2.screenWidth
    L3_2 = L3_2 / 2
    L2_2.x = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.screenHeight
    L3_2 = L3_2 * 0.05
    L2_2.y = L3_2
    L4_2 = L2_2
    L3_2 = L2_2.setScale
    L5_2 = L1_2 * 2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "question"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.side
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L4_2 = L4_2 / 2
    L3_2.x = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.screenHeight
    L4_2 = L4_2 * 0.15
    L3_2.y = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.setScale
    L6_2 = L1_2 * 1.4
    L4_2(L5_2, L6_2)
  else
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L4_2 = L4_2 / 2
    L3_2.x = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.screenHeight
    L4_2 = L4_2 * 0.1
    L3_2.y = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.setScale
    L6_2 = L1_2 * 2
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "stayOnCurrentSideButton"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = gamelua
    L5_2 = L5_2.screenWidth
    L5_2 = L5_2 * 0.25
    L4_2.x = L5_2
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = L5_2 * 0.79
    L4_2.y = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.setScale
    L7_2 = L1_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.lightSideHasBeenSelected
    if not L5_2 then
      L5_2 = A0_2.darkSideHasBeenSelected
      if not L5_2 then
        goto lbl_72
      end
    end
    L4_2.visible = false
  end
  ::lbl_72::
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "lightSide"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L6_2 = L6_2 * 0.25
  L7_2 = lightSidePositionScale
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 * 0.25
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.screenHeight
  L6_2 = L6_2 * 0.55
  L5_2.y = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.setScale
  L8_2 = A0_2.lightSideScale
  L8_2 = L1_2 * L8_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "lightSideButton"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2.side
  if L7_2 then
    L7_2 = A0_2.side
    if L7_2 == "LIGHT" then
      L7_2 = gamelua
      L7_2 = L7_2.screenWidth
      L7_2 = L7_2 * 0.75
      L6_2.x = L7_2
      L7_2 = A0_2.confirmOnLeft
      if L7_2 then
        L7_2 = L6_2.x
        L8_2 = L4_2.x
        L6_2.x = L8_2
        L4_2.x = L7_2
      end
  end
  else
    L7_2 = L5_2.x
    L6_2.x = L7_2
  end
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.79
  L6_2.y = L7_2
  L8_2 = L6_2
  L7_2 = L6_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.lightSideHasBeenSelected
  if not L7_2 then
    L7_2 = A0_2.darkSideHasBeenSelected
    if not L7_2 then
      goto lbl_130
    end
  end
  L6_2.visible = false
  ::lbl_130::
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "darkSide"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2.side
  if L8_2 then
    L8_2 = A0_2.side
    if L8_2 == "SITH" then
      L8_2 = gamelua
      L8_2 = L8_2.screenWidth
      L8_2 = L8_2 * 0.5
      L7_2.x = L8_2
  end
  else
    L8_2 = A0_2.side
    if L8_2 then
      L8_2 = A0_2.side
      if L8_2 == "LIGHT" then
        L8_2 = gamelua
        L8_2 = L8_2.screenWidth
        L8_2 = L8_2 * 0.5
        L5_2.x = L8_2
    end
    else
      L8_2 = gamelua
      L8_2 = L8_2.screenWidth
      L8_2 = L8_2 * 0.75
      L9_2 = darkSidePositionScale
      L10_2 = gamelua
      L10_2 = L10_2.screenWidth
      L9_2 = L9_2 * L10_2
      L9_2 = L9_2 * 0.25
      L8_2 = L8_2 - L9_2
      L7_2.x = L8_2
    end
  end
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 * 0.48
  L7_2.y = L8_2
  L9_2 = L7_2
  L8_2 = L7_2.setScale
  L10_2 = A0_2.darkSideScale
  L10_2 = L1_2 * L10_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "darkSideButton"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2.side
  if L9_2 then
    L9_2 = A0_2.side
    if L9_2 == "SITH" then
      L9_2 = gamelua
      L9_2 = L9_2.screenWidth
      L9_2 = L9_2 * 0.75
      L8_2.x = L9_2
      L9_2 = A0_2.confirmOnLeft
      if L9_2 then
        L9_2 = L8_2.x
        L10_2 = L4_2.x
        L8_2.x = L10_2
        L4_2.x = L9_2
      end
  end
  else
    L9_2 = L7_2.x
    L8_2.x = L9_2
  end
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.79
  L8_2.y = L9_2
  L10_2 = L8_2
  L9_2 = L8_2.setScale
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.lightSideHasBeenSelected
  if not L9_2 then
    L9_2 = A0_2.darkSideHasBeenSelected
    if not L9_2 then
      goto lbl_210
    end
  end
  L8_2.visible = false
  ::lbl_210::
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "lightSideShadow"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L5_2.x
  L9_2.x = L10_2
  L10_2 = L5_2.y
  L9_2.y = L10_2
  L11_2 = L9_2
  L10_2 = L9_2.setScale
  L12_2 = A0_2.lightSideScale
  L12_2 = L1_2 * L12_2
  L10_2(L11_2, L12_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "lightSideLockedWarning"
  L10_2 = L10_2(L11_2, L12_2)
  lightSideLockedWarning = L10_2
  L10_2 = lightSideLockedWarning
  L11_2 = L5_2.x
  L10_2.x = L11_2
  L10_2 = lightSideLockedWarning
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L11_2 = L11_2 * 0.3
  L10_2.y = L11_2
  L10_2 = lightSideLockedWarning
  L11_2 = L10_2
  L10_2 = L10_2.setScale
  L12_2 = L1_2
  L10_2(L11_2, L12_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "lightSideSpotlight"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L5_2.x
  L10_2.x = L11_2
  L10_2.y = 0
  L12_2 = L10_2
  L11_2 = L10_2.setScale
  L13_2 = 2 * L1_2
  L11_2(L12_2, L13_2)
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "lock"
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L12_2 = A0_2.side
    if L12_2 then
      L12_2 = A0_2.side
      if L12_2 == "SITH" then
        L12_2 = L7_2.x
        L11_2.x = L12_2
        L12_2 = L7_2.y
        L11_2.y = L12_2
        L13_2 = L11_2
        L12_2 = L11_2.setScale
        L14_2 = L1_2
        L12_2(L13_2, L14_2)
    end
  end
  elseif L11_2 then
    L12_2 = A0_2.side
    if L12_2 then
      L12_2 = A0_2.side
      if L12_2 == "LIGHT" then
        L12_2 = L5_2.x
        L11_2.x = L12_2
        L12_2 = L5_2.y
        L11_2.y = L12_2
        L13_2 = L11_2
        L12_2 = L11_2.setScale
        L14_2 = L1_2
        L12_2(L13_2, L14_2)
      end
    end
  end
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "darkSideShadow"
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = L7_2.x
  L12_2.x = L13_2
  L13_2 = L7_2.y
  L12_2.y = L13_2
  L14_2 = L12_2
  L13_2 = L12_2.setScale
  L15_2 = A0_2.darkSideScale
  L15_2 = L1_2 * L15_2
  L13_2(L14_2, L15_2)
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "darkSideSpotlight"
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = L7_2.x
  L13_2.x = L14_2
  L13_2.y = 0
  L15_2 = L13_2
  L14_2 = L13_2.setScale
  L16_2 = 2 * L1_2
  L14_2(L15_2, L16_2)
  L15_2 = A0_2
  L14_2 = A0_2.getChild
  L16_2 = "darkSideLockedWarning"
  L14_2 = L14_2(L15_2, L16_2)
  darkSideLockedWarning = L14_2
  L14_2 = darkSideLockedWarning
  L15_2 = L7_2.x
  L14_2.x = L15_2
  L14_2 = darkSideLockedWarning
  L15_2 = gamelua
  L15_2 = L15_2.screenHeight
  L15_2 = L15_2 * 0.3
  L14_2.y = L15_2
  L14_2 = darkSideLockedWarning
  L15_2 = L14_2
  L14_2 = L14_2.setScale
  L16_2 = L1_2
  L14_2(L15_2, L16_2)
  L15_2 = A0_2
  L14_2 = A0_2.getChild
  L16_2 = "backButton"
  L14_2 = L14_2(L15_2, L16_2)
  if L14_2 then
    L16_2 = L14_2
    L15_2 = L14_2.setScale
    L17_2 = L1_2
    L15_2(L16_2, L17_2)
    L15_2 = _G
    L15_2 = L15_2.res
    L15_2 = L15_2.getSpriteBounds
    L16_2 = L14_2.image
    L15_2, L16_2 = L15_2(L16_2)
    L17_2 = L15_2 * L1_2
    L17_2 = L17_2 * 0.55
    L14_2.x = L17_2
    L17_2 = gamelua
    L17_2 = L17_2.screenHeight
    L18_2 = L16_2 * L1_2
    L18_2 = L18_2 * 0.55
    L17_2 = L17_2 - L18_2
    L14_2.y = L17_2
  end
  L16_2 = A0_2
  L15_2 = A0_2.getChild
  L17_2 = "lockAnimation"
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = A0_2.endTimer
  if L16_2 and L15_2 then
    L16_2 = A0_2.lightSideHasBeenSelected
    if L16_2 then
      L16_2 = L7_2.x
      L15_2.x = L16_2
    else
      L16_2 = L5_2.x
      L15_2.x = L16_2
    end
  end
  L16_2 = A0_2.coinBtn
  if L16_2 then
    L16_2 = 12 * L1_2
    L17_2 = A0_2.coinBtn
    L18_2 = L17_2
    L17_2 = L17_2.layout
    L17_2(L18_2)
    L17_2 = A0_2.coinBtn
    L18_2 = gamelua
    L18_2 = L18_2.screenWidth
    L18_2 = L18_2 - L16_2
    L17_2.x = L18_2
    L17_2 = A0_2.coinBtn
    L18_2 = A0_2.coinBtn
    L18_2 = L18_2.h
    L18_2 = L18_2 * 0.75
    L17_2.y = L18_2
    L17_2 = A0_2.coinBtn
    L18_2 = L17_2
    L17_2 = L17_2.setScale
    L19_2 = L1_2
    L17_2(L18_2, L19_2)
  end
end

L0_1.layout = L1_1
L0_1 = EpicSelection

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = A0_2.pause
  if L3_2 then
    return
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "lightSide"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "lightSideButton"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "lightSideShadow"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "lightSideSpotlight"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "darkSide"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "darkSideButton"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "darkSideShadow"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "darkSideSpotlight"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "lockAnimation"
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "question"
  L12_2 = L12_2(L13_2, L14_2)
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "title"
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = false
  L15_2 = A0_2.endTimer
  if L15_2 then
    L15_2 = A0_2.endTimer
    L15_2 = L15_2 - A1_2
    A0_2.endTimer = L15_2
    L15_2 = A0_2.side
    if L15_2 then
      L14_2 = true
    else
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.max
      L16_2 = 0
      L17_2 = A0_2.endTimer
      L17_2 = 2 + L17_2
      L18_2 = epicSelectionEndTime
      L17_2 = L17_2 - L18_2
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = gamelua
      L16_2 = L16_2.tweenEaseCubicInOut
      L17_2 = _G
      L17_2 = L17_2.math
      L17_2 = L17_2.max
      L18_2 = 0
      L19_2 = _G
      L19_2 = L19_2.math
      L19_2 = L19_2.min
      L20_2 = 1
      L21_2 = epicSelectionEndTime
      L22_2 = A0_2.endTimer
      L21_2 = L21_2 - L22_2
      L21_2 = L21_2 - 1
      L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2, L21_2)
      L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
      L18_2 = 0
      L19_2 = 1
      L20_2 = 1
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
      L11_2.alpha = L15_2
      lightSidePositionScale = L16_2
      darkSidePositionScale = L16_2
      L17_2 = A0_2.lightSideHasBeenSelected
      if L17_2 then
        L7_2.alpha = L15_2
        L8_2.alpha = L15_2
        L9_2.alpha = L15_2
        L10_2.alpha = L15_2
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L6_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L6_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L5_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L5_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L3_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L3_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L4_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L4_2
        L17_2(L18_2, L19_2)
        if L16_2 == 1 then
          L17_2 = L12_2.text
          if L17_2 == "" then
            L17_2 = _G
            L17_2 = L17_2.res
            L17_2 = L17_2.getString
            L18_2 = "TEXTS_BASIC"
            L19_2 = "TEXT_EPIC_SELECTION_LIGHT_SIDE_SELECTED"
            L17_2 = L17_2(L18_2, L19_2)
            L12_2.text = L17_2
            L17_2 = L12_2.text
            A0_2.questionText = L17_2
          end
        end
      else
        L3_2.alpha = L15_2
        L4_2.alpha = L15_2
        L5_2.alpha = L15_2
        L6_2.alpha = L15_2
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L10_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L10_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L9_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L9_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L7_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L7_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.removeChild
        L19_2 = L8_2
        L17_2(L18_2, L19_2)
        L18_2 = A0_2
        L17_2 = A0_2.addChild
        L19_2 = L8_2
        L17_2(L18_2, L19_2)
        if L16_2 == 1 then
          L17_2 = L12_2.text
          if L17_2 == "" then
            L17_2 = _G
            L17_2 = L17_2.res
            L17_2 = L17_2.getString
            L18_2 = "TEXTS_BASIC"
            L19_2 = "TEXT_EPIC_SELECTION_DARK_SIDE_SELECTED"
            L17_2 = L17_2(L18_2, L19_2)
            L12_2.text = L17_2
            L17_2 = L12_2.text
            A0_2.questionText = L17_2
          end
        end
      end
      L18_2 = A0_2
      L17_2 = A0_2.removeChild
      L19_2 = L13_2
      L17_2(L18_2, L19_2)
      L18_2 = A0_2
      L17_2 = A0_2.addChild
      L19_2 = L13_2
      L17_2(L18_2, L19_2)
      L18_2 = A0_2
      L17_2 = A0_2.removeChild
      L19_2 = L12_2
      L17_2(L18_2, L19_2)
      L18_2 = A0_2
      L17_2 = A0_2.addChild
      L19_2 = L12_2
      L17_2(L18_2, L19_2)
      L14_2 = true
    end
    L16_2 = A0_2
    L15_2 = A0_2.getChild
    L17_2 = "lockAnimation"
    L15_2 = L15_2(L16_2, L17_2)
    if L15_2 then
      L17_2 = L15_2
      L16_2 = L15_2.setScale
      L18_2 = gamelua
      L18_2 = L18_2.getUIScale
      L18_2 = L18_2()
      L19_2 = _G
      L19_2 = L19_2.math
      L19_2 = L19_2.max
      L20_2 = 1
      L21_2 = A0_2.endTimer
      L22_2 = epicSelectionEndTime
      L22_2 = L22_2 - 0.25
      L21_2 = L21_2 - L22_2
      L21_2 = L21_2 * 4
      L21_2 = 1 + L21_2
      L19_2 = L19_2(L20_2, L21_2)
      L18_2 = L18_2 * L19_2
      L16_2(L17_2, L18_2)
    end
    L16_2 = A0_2.endTimer
    if L16_2 <= 0 then
      L16_2 = gamelua
      L16_2 = L16_2.eventManager
      L17_2 = L16_2
      L16_2 = L16_2.notify
      L18_2 = {}
      L19_2 = gamelua
      L19_2 = L19_2.events
      L19_2 = L19_2.EID_CAPTURE_SCREEN
      L18_2.id = L19_2
      L16_2(L17_2, L18_2)
      L16_2 = A0_2.lightSideHasBeenSelected
      if L16_2 then
        L16_2 = A0_2.selectLightSide
        L16_2()
      else
        L16_2 = A0_2.selectDarkSide
        L16_2()
      end
    end
  end
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.sin
  L16_2 = A2_2 * 3
  L15_2 = L15_2(L16_2)
  L17_2 = A0_2
  L16_2 = A0_2.getChild
  L18_2 = "lightSideLockedWarning"
  L16_2 = L16_2(L17_2, L18_2)
  lightSideLockedWarning = L16_2
  L16_2 = lightSideLockedWarning
  L16_2.angle = L15_2
  L17_2 = A0_2
  L16_2 = A0_2.getChild
  L18_2 = "darkSideLockedWarning"
  L16_2 = L16_2(L17_2, L18_2)
  darkSideLockedWarning = L16_2
  L16_2 = darkSideLockedWarning
  L16_2.angle = L15_2
  L16_2 = A0_2.lockAnimationTimer
  if L16_2 then
    L16_2 = A0_2.lockAnimationTimer
    L16_2 = L16_2 - A1_2
    A0_2.lockAnimationTimer = L16_2
    L16_2 = A0_2.lockAnimationTimer
    if L16_2 <= 0 then
      A0_2.lockAnimationTimer = nil
      L17_2 = A0_2
      L16_2 = A0_2.getChild
      L18_2 = "lock"
      L16_2 = L16_2(L17_2, L18_2)
      L18_2 = A0_2
      L17_2 = A0_2.removeChild
      L19_2 = L16_2
      L17_2(L18_2, L19_2)
      L17_2 = gamelua
      L17_2 = L17_2.putMenuParticles
      L18_2 = {}
      L19_2 = L16_2.x
      L18_2.x = L19_2
      L19_2 = L16_2.y
      L18_2.y = L19_2
      L18_2.particles = "buyingEffect2"
      L18_2.amount = 4
      L17_2(L18_2)
      L17_2 = _G
      L17_2 = L17_2.res
      L17_2 = L17_2.playAudio
      L18_2 = "space_blast_2"
      L17_2(L18_2)
      L12_2.visible = true
      L18_2 = A0_2
      L17_2 = A0_2.getChild
      L19_2 = "stayOnCurrentSideButton"
      L17_2 = L17_2(L18_2, L19_2)
      L17_2.visible = true
      L18_2 = A0_2.side
      if L18_2 then
        L18_2 = A0_2.side
        if L18_2 == "SITH" then
          L19_2 = A0_2
          L18_2 = A0_2.darkSideClicked
          L18_2(L19_2)
      end
      else
        L18_2 = A0_2.side
        if L18_2 then
          L18_2 = A0_2.side
          if L18_2 == "LIGHT" then
            L19_2 = A0_2
            L18_2 = A0_2.lightSideClicked
            L18_2(L19_2)
          end
        end
      end
    end
  end
  L16_2 = A0_2.lightSideScale
  L17_2 = A0_2.lightSideTargetScale
  if L16_2 ~= L17_2 then
    L16_2 = A0_2.lightSideScale
    L17_2 = A0_2.lightSideTargetScale
    if L16_2 > L17_2 then
      L16_2 = A0_2.lightSideScale
      L16_2 = L16_2 - A1_2
      A0_2.lightSideScale = L16_2
      L16_2 = A0_2.lightSideScale
      L17_2 = A0_2.lightSideTargetScale
      if L16_2 < L17_2 then
        L16_2 = A0_2.lightSideTargetScale
        A0_2.lightSideScale = L16_2
      end
    end
    L16_2 = A0_2.lightSideScale
    L17_2 = A0_2.lightSideTargetScale
    if L16_2 < L17_2 then
      L16_2 = A0_2.lightSideScale
      L16_2 = L16_2 + A1_2
      A0_2.lightSideScale = L16_2
      L16_2 = A0_2.lightSideScale
      L17_2 = A0_2.lightSideTargetScale
      if L16_2 > L17_2 then
        L16_2 = A0_2.lightSideTargetScale
        A0_2.lightSideScale = L16_2
        L17_2 = L3_2
        L16_2 = L3_2.setImage
        L18_2 = "EPIC_YODA_LIGHT"
        L16_2(L17_2, L18_2)
        L5_2.visible = true
        L6_2.visible = true
        L4_2.visible = true
        L16_2 = A0_2.questionText
        L12_2.text = L16_2
      end
    end
    L14_2 = true
  end
  L16_2 = A0_2.darkSideScale
  L17_2 = A0_2.darkSideTargetScale
  if L16_2 ~= L17_2 then
    L16_2 = A0_2.darkSideScale
    L17_2 = A0_2.darkSideTargetScale
    if L16_2 > L17_2 then
      L16_2 = A0_2.darkSideScale
      L16_2 = L16_2 - A1_2
      A0_2.darkSideScale = L16_2
      L16_2 = A0_2.darkSideScale
      L17_2 = A0_2.darkSideTargetScale
      if L16_2 < L17_2 then
        L16_2 = A0_2.darkSideTargetScale
        A0_2.darkSideScale = L16_2
      end
    end
    L16_2 = A0_2.darkSideScale
    L17_2 = A0_2.darkSideTargetScale
    if L16_2 < L17_2 then
      L16_2 = A0_2.darkSideScale
      L16_2 = L16_2 + A1_2
      A0_2.darkSideScale = L16_2
      L16_2 = A0_2.darkSideScale
      L17_2 = A0_2.darkSideTargetScale
      if L16_2 > L17_2 then
        L16_2 = A0_2.darkSideTargetScale
        A0_2.darkSideScale = L16_2
        L17_2 = L7_2
        L16_2 = L7_2.setImage
        L18_2 = "EPIC_EMPEROR_LIGHT"
        L16_2(L17_2, L18_2)
        L9_2.visible = true
        L10_2.visible = true
        L8_2.visible = true
        L16_2 = A0_2.questionText
        L12_2.text = L16_2
      end
    end
    L14_2 = true
  end
  if L14_2 then
    L17_2 = A0_2
    L16_2 = A0_2.layout
    L16_2(L17_2)
  end
end

L0_1.update = L1_1
L0_1 = EpicSelection

function L1_1(A0_2, A1_2, A2_2)
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
L0_1 = EpicSelection

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L7_2 = A0_2.lockAnimationTimer
  if not L7_2 then
    L7_2 = A0_2.lightSideHasBeenSelected
    if not L7_2 then
      L7_2 = A0_2.darkSideHasBeenSelected
      if not L7_2 then
        goto lbl_23
      end
    end
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  do return L7_2, L8_2, L9_2 end
  ::lbl_23::
  if L4_2 == "LIGHT_SIDE" then
    L8_2 = A0_2
    L7_2 = A0_2.lightSideClicked
    L7_2(L8_2)
  elseif L4_2 == "DARK_SIDE" then
    L8_2 = A0_2
    L7_2 = A0_2.darkSideClicked
    L7_2(L8_2)
  elseif L4_2 == "CANCEL_DARK_SIDE" then
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "question"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = _G
    L8_2 = L8_2.res
    L8_2 = L8_2.playAudio
    L9_2 = "level_start_lightside"
    L8_2(L9_2)
    A0_2.lightSideHasBeenSelected = true
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = gamelua
    L11_2 = L11_2.events
    L11_2 = L11_2.EID_EPIC_SELECTION_DONE
    L10_2.id = L11_2
    L10_2.side = "light"
    L8_2(L9_2, L10_2)
    L8_2 = epicSelectionEndTime
    A0_2.endTimer = L8_2
    L8_2 = _G
    L8_2 = L8_2.res
    L8_2 = L8_2.getString
    L9_2 = "TEXTS_BASIC"
    L10_2 = "TEXT_EPIC_SELECTION_LIGHT_SIDE_SELECTED"
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.text = L8_2
    L8_2 = L7_2.text
    A0_2.questionText = L8_2
    L9_2 = A0_2
    L8_2 = A0_2.disableButtons
    L8_2(L9_2)
  elseif L4_2 == "CANCEL_LIGHT_SIDE" then
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "question"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = _G
    L8_2 = L8_2.res
    L8_2 = L8_2.playAudio
    L9_2 = "level_start_darkside"
    L8_2(L9_2)
    A0_2.darkSideHasBeenSelected = true
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = gamelua
    L11_2 = L11_2.events
    L11_2 = L11_2.EID_EPIC_SELECTION_DONE
    L10_2.id = L11_2
    L10_2.side = "dark"
    L8_2(L9_2, L10_2)
    L8_2 = epicSelectionEndTime
    A0_2.endTimer = L8_2
    L8_2 = _G
    L8_2 = L8_2.res
    L8_2 = L8_2.getString
    L9_2 = "TEXTS_BASIC"
    L10_2 = "TEXT_EPIC_SELECTION_DARK_SIDE_SELECTED"
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.text = L8_2
    L8_2 = L7_2.text
    A0_2.questionText = L8_2
    L9_2 = A0_2
    L8_2 = A0_2.disableButtons
    L8_2(L9_2)
  elseif L4_2 == "BACK" then
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
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.inputDisabled = true
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "darkSide"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "darkSideButton"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "lightSide"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "lightSideButton"
  L4_2 = L4_2(L5_2, L6_2)
  if L1_2 then
    L6_2 = L1_2
    L5_2 = L1_2.setEnabled
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  if L2_2 then
    L6_2 = L2_2
    L5_2 = L2_2.setEnabled
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  if L3_2 then
    L6_2 = L3_2
    L5_2 = L3_2.setEnabled
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setEnabled
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end

L0_1.disableButtons = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.lightSideSelected
  if L1_2 then
    L1_2 = A0_2.showCoinFrame
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.showPurchaseConfirm
      L3_2 = "LIGHT"
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2.lightSideSelected
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.gotoLightSide
      L1_2(L2_2)
    else
      L1_2 = A0_2.lightSideSelected
      if not L1_2 then
        A0_2.lightSideSelected = true
        A0_2.darkSideSelected = false
        A0_2.lightSideTargetScale = 1
        A0_2.darkSideTargetScale = 0.6
        L2_2 = A0_2
        L1_2 = A0_2.getChild
        L3_2 = "darkSide"
        L1_2 = L1_2(L2_2, L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.getChild
        L4_2 = "darkSideShadow"
        L2_2 = L2_2(L3_2, L4_2)
        L4_2 = A0_2
        L3_2 = A0_2.getChild
        L5_2 = "darkSideSpotlight"
        L3_2 = L3_2(L4_2, L5_2)
        L5_2 = A0_2
        L4_2 = A0_2.getChild
        L6_2 = "darkSideButton"
        L4_2 = L4_2(L5_2, L6_2)
        L6_2 = L1_2
        L5_2 = L1_2.setImage
        L7_2 = "EPIC_EMPEROR"
        L5_2(L6_2, L7_2)
        L2_2.visible = false
        L3_2.visible = false
        L4_2.visible = false
        L5_2 = _G
        L5_2 = L5_2.res
        L5_2 = L5_2.getString
        L6_2 = "TEXTS_BASIC"
        L7_2 = "TEXT_EPIC_SELECTION_LIGHT_SIDE_CONFIRMATION"
        L5_2 = L5_2(L6_2, L7_2)
        A0_2.questionText = L5_2
        L5_2 = A0_2.side
        if not L5_2 then
          L6_2 = A0_2
          L5_2 = A0_2.getChild
          L7_2 = "lightSideLockedWarning"
          L5_2 = L5_2(L6_2, L7_2)
          lightSideLockedWarning = L5_2
          L6_2 = A0_2
          L5_2 = A0_2.getChild
          L7_2 = "darkSideLockedWarning"
          L5_2 = L5_2(L6_2, L7_2)
          darkSideLockedWarning = L5_2
          L5_2 = lightSideLockedWarning
          L5_2.visible = false
          L5_2 = darkSideLockedWarning
          L5_2.visible = true
        end
      end
    end
  end
end

L0_1.lightSideClicked = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.disableButtons
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.playAudio
  L2_2 = "level_start_darkside"
  L1_2(L2_2)
  A0_2.darkSideHasBeenSelected = true
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "backButton"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2.visible = false
  end
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "question"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getString
  L4_2 = "TEXTS_BASIC"
  L5_2 = "TEXT_EPIC_SELECTION_DARK_SIDE_SELECTED"
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.text = L3_2
  L3_2 = L2_2.text
  A0_2.questionText = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = gamelua
  L6_2 = L6_2.events
  L6_2 = L6_2.EID_EPIC_SELECTION_DONE
  L5_2.id = L6_2
  L5_2.side = "dark"
  L6_2 = A0_2.price
  L5_2.price = L6_2
  L6_2 = A0_2.darkSideEpisodeName
  L5_2.episodeName = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = epicSelectionEndTime
  A0_2.endTimer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "lockAnimation"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "lightSide"
  L4_2 = L4_2(L5_2, L6_2)
  if L3_2 then
    L3_2.visible = true
    L6_2 = L3_2
    L5_2 = L3_2.setScale
    L7_2 = gamelua
    L7_2 = L7_2.getUIScale
    L7_2 = L7_2()
    L7_2 = L7_2 * 2
    L5_2(L6_2, L7_2)
    L5_2 = L4_2.x
    L3_2.x = L5_2
    L5_2 = L4_2.y
    L3_2.y = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "lightSideLockedWarning"
  L5_2 = L5_2(L6_2, L7_2)
  lightSideLockedWarning = L5_2
  L5_2 = lightSideLockedWarning
  L5_2.visible = false
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "darkSideButton"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = "BTN_CHECK"
  L6_2(L7_2, L8_2)
end

L0_1.gotoDarkSide = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.disableButtons
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.playAudio
  L2_2 = "level_start_lightside"
  L1_2(L2_2)
  A0_2.lightSideHasBeenSelected = true
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "backButton"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2.visible = false
  end
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "question"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getString
  L4_2 = "TEXTS_BASIC"
  L5_2 = "TEXT_EPIC_SELECTION_LIGHT_SIDE_SELECTED"
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.text = L3_2
  L3_2 = L2_2.text
  A0_2.questionText = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = gamelua
  L6_2 = L6_2.events
  L6_2 = L6_2.EID_EPIC_SELECTION_DONE
  L5_2.id = L6_2
  L5_2.side = "light"
  L6_2 = A0_2.price
  L5_2.price = L6_2
  L6_2 = A0_2.lightSideEpisodeName
  L5_2.episodeName = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = epicSelectionEndTime
  A0_2.endTimer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "lockAnimation"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "darkSide"
  L4_2 = L4_2(L5_2, L6_2)
  if L3_2 then
    L3_2.visible = true
    L6_2 = L3_2
    L5_2 = L3_2.setScale
    L7_2 = gamelua
    L7_2 = L7_2.getUIScale
    L7_2 = L7_2()
    L7_2 = L7_2 * 2
    L5_2(L6_2, L7_2)
    L5_2 = L4_2.x
    L3_2.x = L5_2
    L5_2 = L4_2.y
    L3_2.y = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "darkSideLockedWarning"
  L5_2 = L5_2(L6_2, L7_2)
  darkSideLockedWarning = L5_2
  L5_2 = darkSideLockedWarning
  L5_2.visible = false
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "lightSideButton"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = "BTN_CHECK_LIGHT"
  L6_2(L7_2, L8_2)
end

L0_1.gotoLightSide = L1_1
L0_1 = EpicSelection

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.darkSideSelected
  if L1_2 then
    L1_2 = A0_2.showCoinFrame
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.showPurchaseConfirm
      L3_2 = "DARK"
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2.darkSideSelected
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.gotoDarkSide
      L1_2(L2_2)
    else
      L1_2 = A0_2.darkSideSelected
      if not L1_2 then
        A0_2.darkSideSelected = true
        A0_2.lightSideSelected = false
        A0_2.lightSideTargetScale = 0.6
        A0_2.darkSideTargetScale = 1
        L2_2 = A0_2
        L1_2 = A0_2.getChild
        L3_2 = "lightSide"
        L1_2 = L1_2(L2_2, L3_2)
        L3_2 = L1_2
        L2_2 = L1_2.setImage
        L4_2 = "EPIC_YODA"
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2.getChild
        L4_2 = "lightSideShadow"
        L2_2 = L2_2(L3_2, L4_2)
        L2_2.visible = false
        L4_2 = A0_2
        L3_2 = A0_2.getChild
        L5_2 = "lightSideSpotlight"
        L3_2 = L3_2(L4_2, L5_2)
        L3_2.visible = false
        L5_2 = A0_2
        L4_2 = A0_2.getChild
        L6_2 = "lightSideButton"
        L4_2 = L4_2(L5_2, L6_2)
        L4_2.visible = false
        L5_2 = _G
        L5_2 = L5_2.res
        L5_2 = L5_2.getString
        L6_2 = "TEXTS_BASIC"
        L7_2 = "TEXT_EPIC_SELECTION_DARK_SIDE_CONFIRMATION"
        L5_2 = L5_2(L6_2, L7_2)
        A0_2.questionText = L5_2
        L5_2 = A0_2.side
        if not L5_2 then
          L6_2 = A0_2
          L5_2 = A0_2.getChild
          L7_2 = "lightSideLockedWarning"
          L5_2 = L5_2(L6_2, L7_2)
          lightSideLockedWarning = L5_2
          L5_2 = lightSideLockedWarning
          L5_2.visible = true
          L6_2 = A0_2
          L5_2 = A0_2.getChild
          L7_2 = "darkSideLockedWarning"
          L5_2 = L5_2(L6_2, L7_2)
          darkSideLockedWarning = L5_2
          L5_2 = darkSideLockedWarning
          L5_2.visible = false
        end
      end
    end
  end
end

L0_1.darkSideClicked = L1_1
L0_1 = EpicSelection

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.price
  L3_2 = {}
  L3_2.topLeft = "TUTBOX_TOP_LEFT_"
  L3_2.topMiddle = "TUTBOX_TOP_MIDDLE_"
  L3_2.topRight = "TUTBOX_TOP_RIGHT_"
  L3_2.left = "TUTBOX_MIDDLE_LEFT_"
  L3_2.center = "TUTBOX_CENTER_"
  L3_2.right = "TUTBOX_MIDDLE_RIGHT_"
  L3_2.bottomLeft = "TUTBOX_BOTTOM_LEFT_"
  L3_2.bottomMiddle = "TUTBOX_BOTTOM_MIDDLE_"
  L3_2.bottomRight = "TUTBOX_BOTTOM_RIGHT_"
  L4_2 = ""
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_UNLOCK_EPISODE_WITH_COINS"
  L5_2 = L5_2(L6_2)
  L6_2 = " #"
  L7_2 = L2_2
  L6_2 = L6_2 .. L7_2
  L7_2 = ui
  L7_2 = L7_2.ConfirmPrompt
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.title = L4_2
  L9_2.name = "episodeNotOpenDialog"
  L9_2.content = L5_2
  L10_2 = gamelua
  L10_2 = L10_2.getFontBasic
  L10_2 = L10_2()
  L9_2.contentFont = L10_2
  L9_2.secondaryContent = L6_2
  L10_2 = gamelua
  L10_2 = L10_2.getFontIngameMoney
  L10_2 = L10_2()
  L9_2.secondaryFont = L10_2
  L9_2.boxComponents = L3_2
  L9_2.closeOnCancelKeyHandler = ""
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A1_2
    if L0_3 == "DARK" then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.gotoDarkSide
      L0_3(L1_3)
    else
      L0_3 = A1_2
      if L0_3 == "LIGHT" then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.gotoLightSide
        L0_3(L1_3)
      end
    end
    L0_3 = gamelua
    L0_3 = L0_3.eventManager
    L1_3 = L0_3
    L0_3 = L0_3.queueEvent
    L2_3 = {}
    L3_3 = gamelua
    L3_3 = L3_3.events
    L3_3 = L3_3.EID_POP_FRAME
    L2_3.id = L3_3
    L2_3.target = "episodeNotOpenDialog"
    L0_3(L1_3, L2_3)
  end
  
  L9_2.returnValue = L10_2
  L9_2.inMenuSpace = true
  L9_2.hideCloseButton = false
  L7_2 = L7_2(L8_2, L9_2)
  confirmPurchaseDialog = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.eventManager
  L8_2 = L7_2
  L7_2 = L7_2.notify
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_PUSH_FRAME
  L9_2.id = L10_2
  L10_2 = confirmPurchaseDialog
  L9_2.target = L10_2
  L7_2(L8_2, L9_2)
end

L0_1.showPurchaseConfirm = L1_1
L0_1 = EpicSelection

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    L4_2 = A0_2.inputDisabled
    if not L4_2 then
      L4_2 = A0_2.side
      if not L4_2 then
        if A2_2 == "LEFT" then
          L4_2 = A0_2.lightSideSelected
          if not L4_2 then
            L5_2 = A0_2
            L4_2 = A0_2.lightSideClicked
            L4_2(L5_2)
        end
        else
          if A2_2 == "RIGHT" then
            L4_2 = A0_2.darkSideSelected
            if not L4_2 then
              L5_2 = A0_2
              L4_2 = A0_2.darkSideClicked
              L4_2(L5_2)
          end
          else
            L4_2 = A0_2.lightSideSelected
            if L4_2 and A2_2 == "RETURN" then
              L5_2 = A0_2
              L4_2 = A0_2.lightSideClicked
              L4_2(L5_2)
            else
              L4_2 = A0_2.darkSideSelected
              if L4_2 and A2_2 == "RETURN" then
                L5_2 = A0_2
                L4_2 = A0_2.darkSideClicked
                L4_2(L5_2)
              end
            end
          end
        end
      else
        L4_2 = A0_2.side
        if L4_2 then
          if A2_2 == "RETURN" then
            L4_2 = A0_2.side
            if L4_2 == "LIGHT" then
              L5_2 = A0_2
              L4_2 = A0_2.lightSideClicked
              L4_2(L5_2)
            else
              L5_2 = A0_2
              L4_2 = A0_2.darkSideClicked
              L4_2(L5_2)
            end
          elseif A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
            L4_2 = A0_2.side
            if L4_2 == "LIGHT" then
              L5_2 = A0_2
              L4_2 = A0_2.getChild
              L6_2 = "question"
              L4_2 = L4_2(L5_2, L6_2)
              L5_2 = _G
              L5_2 = L5_2.res
              L5_2 = L5_2.playAudio
              L6_2 = "level_start_darkside"
              L5_2(L6_2)
              A0_2.darkSideHasBeenSelected = true
              L5_2 = gamelua
              L5_2 = L5_2.eventManager
              L6_2 = L5_2
              L5_2 = L5_2.notify
              L7_2 = {}
              L8_2 = gamelua
              L8_2 = L8_2.events
              L8_2 = L8_2.EID_EPIC_SELECTION_DONE
              L7_2.id = L8_2
              L7_2.side = "dark"
              L5_2(L6_2, L7_2)
              L5_2 = epicSelectionEndTime
              A0_2.endTimer = L5_2
              L5_2 = _G
              L5_2 = L5_2.res
              L5_2 = L5_2.getString
              L6_2 = "TEXTS_BASIC"
              L7_2 = "TEXT_EPIC_SELECTION_DARK_SIDE_SELECTED"
              L5_2 = L5_2(L6_2, L7_2)
              L4_2.text = L5_2
              L5_2 = L4_2.text
              A0_2.questionText = L5_2
              L6_2 = A0_2
              L5_2 = A0_2.disableButtons
              L5_2(L6_2)
            else
              L5_2 = A0_2
              L4_2 = A0_2.getChild
              L6_2 = "question"
              L4_2 = L4_2(L5_2, L6_2)
              L5_2 = _G
              L5_2 = L5_2.res
              L5_2 = L5_2.playAudio
              L6_2 = "level_start_lightside"
              L5_2(L6_2)
              A0_2.lightSideHasBeenSelected = true
              L5_2 = gamelua
              L5_2 = L5_2.eventManager
              L6_2 = L5_2
              L5_2 = L5_2.notify
              L7_2 = {}
              L8_2 = gamelua
              L8_2 = L8_2.events
              L8_2 = L8_2.EID_EPIC_SELECTION_DONE
              L7_2.id = L8_2
              L7_2.side = "light"
              L5_2(L6_2, L7_2)
              L5_2 = epicSelectionEndTime
              A0_2.endTimer = L5_2
              L5_2 = _G
              L5_2 = L5_2.res
              L5_2 = L5_2.getString
              L6_2 = "TEXTS_BASIC"
              L7_2 = "TEXT_EPIC_SELECTION_LIGHT_SIDE_SELECTED"
              L5_2 = L5_2(L6_2, L7_2)
              L4_2.text = L5_2
              L5_2 = L4_2.text
              A0_2.questionText = L5_2
              L6_2 = A0_2
              L5_2 = A0_2.disableButtons
              L5_2(L6_2)
            end
          end
        end
      end
      if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
        L4_2 = gamelua
        L4_2 = L4_2.playAudio
        L5_2 = "ButtonProceed"
        L4_2(L5_2)
        L4_2 = gamelua
        L4_2 = L4_2.eventManager
        L5_2 = L4_2
        L4_2 = L4_2.queueEvent
        L6_2 = {}
        L7_2 = gamelua
        L7_2 = L7_2.events
        L7_2 = L7_2.EID_POP_FRAME
        L6_2.id = L7_2
        L4_2(L5_2, L6_2)
      end
    end
    if A2_2 == "S" then
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
