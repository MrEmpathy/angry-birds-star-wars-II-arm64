local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
HintPopup = L0_1
L0_1 = 5
L1_1 = 15
L2_1 = 0
L3_1 = L0_1
L4_1 = nil
L5_1 = HintPopup
L5_1.isShown = false
L5_1 = {}

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_LEVEL_STARTED
  if L2_2 == L3_2 then
    L2_2 = L4_1
    L3_2 = gamelua
    L3_2 = L3_2.levelName
    if L2_2 == L3_2 then
      L2_2 = L2_1
      L2_2 = L2_2 + 1
      L2_1 = L2_2
    else
      L2_2 = 0
      L2_1 = L2_2
      L2_2 = L0_1
      L3_1 = L2_2
    end
    L2_2 = gamelua
    L2_2 = L2_2.levelName
    L4_1 = L2_2
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_SHOW_HINT_POPUP
    if L2_2 == L3_2 then
      L2_2 = 0
      L2_1 = L2_2
      L2_2 = L1_1
      L3_1 = L2_2
      L2_2 = HintPopup
      L3_2 = L2_2
      L2_2 = L2_2.new
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2.hintCharacter
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.isPausePageVisible
        L3_2 = L3_2()
        if not L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.ui
          L3_2 = L3_2.CarboniteMeltAnimation
          L3_2 = L3_2.isShown
          if not L3_2 then
            L3_2 = gamelua
            L3_2 = L3_2.ui
            L3_2 = L3_2.CarboniteAvailableAnimation
            L3_2 = L3_2.isShown
            if not L3_2 then
              L3_2 = gamelua
              L3_2 = L3_2.eventManager
              L4_2 = L3_2
              L3_2 = L3_2.notify
              L5_2 = {}
              L6_2 = gamelua
              L6_2 = L6_2.events
              L6_2 = L6_2.EID_PUSH_FRAME
              L5_2.id = L6_2
              L5_2.target = L2_2
              L3_2(L4_2, L5_2)
            end
          end
        end
      end
    else
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_LEVEL_COMPLETED
      if L2_2 ~= L3_2 then
        L2_2 = A1_2.id
        L3_2 = gamelua
        L3_2 = L3_2.events
        L3_2 = L3_2.EID_CHARACTER_SWITCHED
        if L2_2 ~= L3_2 then
          L2_2 = A1_2.id
          L3_2 = gamelua
          L3_2 = L3_2.events
          L3_2 = L3_2.EID_SHOP_CONFIRM_PURCHASE
          if L2_2 ~= L3_2 then
            goto lbl_88
          end
        end
      end
      L2_2 = 0
      L2_1 = L2_2
    end
  end
  ::lbl_88::
end

L5_1.eventTriggered = L6_1
hintPopupEventListener = L5_1
L5_1 = gamelua
L5_1 = L5_1.eventManager
L6_1 = L5_1
L5_1 = L5_1.addEventListener
L7_1 = events
L7_1 = L7_1.EID_LEVEL_STARTED
L8_1 = hintPopupEventListener
L5_1(L6_1, L7_1, L8_1)
L5_1 = gamelua
L5_1 = L5_1.eventManager
L6_1 = L5_1
L5_1 = L5_1.addEventListener
L7_1 = events
L7_1 = L7_1.EID_LEVEL_COMPLETED
L8_1 = hintPopupEventListener
L5_1(L6_1, L7_1, L8_1)
L5_1 = gamelua
L5_1 = L5_1.eventManager
L6_1 = L5_1
L5_1 = L5_1.addEventListener
L7_1 = events
L7_1 = L7_1.EID_SHOW_HINT_POPUP
L8_1 = hintPopupEventListener
L5_1(L6_1, L7_1, L8_1)
L5_1 = gamelua
L5_1 = L5_1.eventManager
L6_1 = L5_1
L5_1 = L5_1.addEventListener
L7_1 = events
L7_1 = L7_1.EID_CHARACTER_SWITCHED
L8_1 = hintPopupEventListener
L5_1(L6_1, L7_1, L8_1)
L5_1 = gamelua
L5_1 = L5_1.eventManager
L6_1 = L5_1
L5_1 = L5_1.addEventListener
L7_1 = events
L7_1 = L7_1.EID_SHOP_CONFIRM_PURCHASE
L8_1 = hintPopupEventListener
L5_1(L6_1, L7_1, L8_1)

function L5_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L1_2 = L3_1
  if L0_2 >= L1_2 then
    L0_2 = gamelua
    L0_2 = L0_2.isReadyToSwitch
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = true
      return L0_2
    end
  end
  L0_2 = false
  return L0_2
end

isTimeToShowHintPopup = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = gamelua
  L1_2 = L1_2.starTable
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.starTable
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.hints
  end
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = ui
  L2_2 = L2_2.ShopFrame
  L2_2 = L2_2.getData
  L2_2 = L2_2()
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = gamelua
    L8_2 = L8_2.Characters
    L8_2 = L8_2.list
    L8_2 = L8_2[L7_2]
    if L8_2 then
      L8_2 = gamelua
      L8_2 = L8_2.isCharacterAvailable
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = {}
        L8_2.name = L7_2
        L8_2.isAvailable = true
        return L8_2
      end
    end
  end
  L3_2 = {}
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = L2_2.singlesCarousel
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.buyButtons
    L9_2 = L9_2[1]
    L9_2 = L9_2.bundle
    L9_2 = L9_2[1]
    L10_2 = _G
    L10_2 = L10_2.ipairs
    L11_2 = L1_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = gamelua
      L15_2 = L15_2.Characters
      L15_2 = L15_2.list
      L15_2 = L15_2[L14_2]
      if L15_2 then
        L15_2 = L9_2.character
        if L15_2 == L14_2 then
          L15_2 = _G
          L15_2 = L15_2.table
          L15_2 = L15_2.insert
          L16_2 = L3_2
          L17_2 = {}
          L17_2.name = L14_2
          L17_2.isAvailable = false
          L18_2 = L9_2.amount
          L17_2.amount = L18_2
          L18_2 = L8_2.buyButtons
          L18_2 = L18_2[1]
          L18_2 = L18_2.price
          L17_2.price = L18_2
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
  L4_2 = #L3_2
  if 0 < L4_2 then
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.random
    L5_2 = #L3_2
    L4_2 = L4_2(L5_2)
    L4_2 = L3_2[L4_2]
    return L4_2
  end
  L4_2 = nil
  return L4_2
end

getHintCharacter = L5_1
L5_1 = HintPopup

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = getHintCharacter
  L2_2 = gamelua
  L2_2 = L2_2.levelName
  L1_2 = L1_2(L2_2)
  A0_2.hintCharacter = L1_2
  L1_2 = A0_2.hintCharacter
  if not L1_2 then
    L1_2 = print
    L2_2 = "No hint character for "
    L3_2 = _G
    L3_2 = L3_2.tostring
    L4_2 = gamelua
    L4_2 = L4_2.levelName
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    return
  end
  L1_2 = gamelua
  L1_2 = L1_2.getText
  L2_2 = gamelua
  L2_2 = L2_2.Characters
  L2_2 = L2_2.list
  L3_2 = A0_2.hintCharacter
  L3_2 = L3_2.name
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.text
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.Characters
  L2_2 = L2_2.list
  L3_2 = A0_2.hintCharacter
  L3_2 = L3_2.name
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.bigButton
  L3_2 = ""
  L4_2 = A0_2.hintCharacter
  L4_2 = L4_2.isAvailable
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.getTelepodAmount
    L5_2 = A0_2.hintCharacter
    L5_2 = L5_2.name
    L4_2 = L4_2(L5_2)
    if L4_2 == 0 then
      L4_2 = gamelua
      L4_2 = L4_2.getUnlimitedAmount
      L5_2 = A0_2.hintCharacter
      L5_2 = L5_2.name
      L4_2 = L4_2(L5_2)
      if L4_2 == 0 then
        L4_2 = gamelua
        L4_2 = L4_2.SettingsWrapper
        L5_2 = L4_2
        L4_2 = L4_2.getAmount
        L6_2 = A0_2.hintCharacter
        L6_2 = L6_2.name
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = " x "
        L3_2 = L4_2 .. L5_2
      end
    end
  end
  L4_2 = gamelua
  L4_2 = L4_2.getText
  L5_2 = "TEXT_HINT_POPUP_TEXT_ACTIVATE"
  L6_2 = {}
  L7_2 = "$AMOUNT"
  L8_2 = L3_2
  L9_2 = "$CHARACTER"
  L10_2 = L1_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_HINT_POPUP_BTN_ACTIVATE"
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.hintCharacter
  L6_2 = L6_2.isAvailable
  if not L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.getText
    L7_2 = "TEXT_HINT_POPUP_TEXT_BUY"
    L8_2 = {}
    L9_2 = "$CHARACTER"
    L10_2 = L1_2
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L6_2 = L6_2(L7_2, L8_2)
    L4_2 = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.getText
    L7_2 = "TEXT_SHOP_CALL_TO_ACTION"
    L6_2 = L6_2(L7_2)
    L7_2 = " + "
    L8_2 = _G
    L8_2 = L8_2.tostring
    L9_2 = A0_2.hintCharacter
    L9_2 = L9_2.amount
    L8_2 = L8_2(L9_2)
    L5_2 = L6_2 .. L7_2 .. L8_2
  end
  L6_2 = gamelua
  L6_2 = L6_2.createBgBoxForSide
  L7_2 = "bgBox"
  L8_2 = "SHEET"
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.bgBox = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = A0_2.bgBox
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "characterImage"
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.glowImage = L6_2
  L6_2 = A0_2.glowImage
  L7_2 = L6_2
  L6_2 = L6_2.setImage
  L8_2 = "GOLD_SHINE_1"
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = A0_2.glowImage
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "characterImage"
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.characterImage = L6_2
  L6_2 = A0_2.characterImage
  L7_2 = L6_2
  L6_2 = L6_2.setImage
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = A0_2.characterImage
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.DummyText
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "headingText"
  L9_2 = gamelua
  L9_2 = L9_2.getText
  L10_2 = "TEXT_HINT_POPUP_HEADING"
  L9_2 = L9_2(L10_2)
  L8_2.text = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.getFontHeadline
  L9_2 = L9_2()
  L8_2.font = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.headingText = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = A0_2.headingText
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Text
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "contentText"
  L8_2.text = L4_2
  L9_2 = gamelua
  L9_2 = L9_2.getFontBasic
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2.vanchor = "TOP"
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.contentText = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = A0_2.contentText
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.ScallableButton
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "pauseButton"
  L8_2.returnValue = "CLOSE"
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.closeButton = L6_2
  L6_2 = A0_2.closeButton
  L7_2 = L6_2
  L6_2 = L6_2.setImage
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "buttonX"
  L10_2 = gamelua
  L10_2 = L10_2.SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.isDarkSide
  L10_2, L11_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = A0_2.closeButton
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.ScallableButton
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "pauseButton"
  L8_2.returnValue = "ACTIVATE"
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.confirmButton = L6_2
  L6_2 = A0_2.confirmButton
  L7_2 = L6_2
  L6_2 = L6_2.setImage
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "hintPopupButton"
  L10_2 = gamelua
  L10_2 = L10_2.SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.isDarkSide
  L10_2, L11_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = A0_2.confirmButton
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.DummyText
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "buttonText"
  L8_2.text = L5_2
  L9_2 = gamelua
  L9_2 = L9_2.getFontHeadline
  L9_2 = L9_2()
  L8_2.font = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.buttonText = L6_2
  L6_2 = A0_2.confirmButton
  L7_2 = L6_2
  L6_2 = L6_2.addChild
  L8_2 = A0_2.buttonText
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.hintCharacter
  L6_2 = L6_2.isAvailable
  if not L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.DummyText
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "coinsText"
    L9_2 = "#"
    L10_2 = A0_2.hintCharacter
    L10_2 = L10_2.price
    L9_2 = L9_2 .. L10_2
    L8_2.text = L9_2
    L9_2 = gamelua
    L9_2 = L9_2.getFontIngameMoney
    L9_2 = L9_2()
    L8_2.font = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    A0_2.coinsText = L6_2
    L6_2 = A0_2.confirmButton
    L7_2 = L6_2
    L6_2 = L6_2.addChild
    L8_2 = A0_2.coinsText
    L6_2(L7_2, L8_2)
  end
  A0_2.timer = 0
  L6_2 = gamelua
  L6_2 = L6_2.eventManager
  L7_2 = L6_2
  L6_2 = L6_2.notify
  L8_2 = {}
  L9_2 = gamelua
  L9_2 = L9_2.events
  L9_2 = L9_2.EID_HINT_POPUP_OPENED
  L8_2.id = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.levelName
  L8_2.level = L9_2
  L9_2 = A0_2.hintCharacter
  L9_2 = L9_2.name
  L8_2.charName = L9_2
  L9_2 = A0_2.hintCharacter
  L9_2 = L9_2.isAvailable
  L8_2.available = L9_2
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.Frame
  L6_2 = L6_2.init
  L7_2 = A0_2
  L6_2(L7_2)
end

L5_1.init = L6_1
L5_1 = HintPopup

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_PAUSING_POPUP_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = HintPopup
  L1_2.isShown = true
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L5_1.onEntry = L6_1
L5_1 = HintPopup

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_PAUSING_POPUP_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = HintPopup
  L1_2.isShown = false
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L5_1.onExit = L6_1
L5_1 = HintPopup

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L5_2 = L3_2 * L1_2
  L4_2 = L4_2 * L1_2
  L3_2 = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.layoutPosition
  L5_2(L6_2)
  L5_2 = A0_2.bgBox
  L6_2 = L5_2
  L5_2 = L5_2.setSize
  L7_2 = 475 * L1_2
  L8_2 = 475 * L1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2.glowImage
  L6_2 = 0.225 * L4_2
  L5_2.y = L6_2
  L5_2 = A0_2.glowImage
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.characterImage
  L6_2 = A0_2.glowImage
  L6_2 = L6_2.y
  L5_2.y = L6_2
  L5_2 = A0_2.characterImage
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.headingText
  L6_2 = -2.25 * L4_2
  L5_2.y = L6_2
  L5_2 = A0_2.headingText
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L1_2 * 1.25
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.contentText
  L6_2 = -1.95 * L4_2
  L5_2.y = L6_2
  L5_2 = A0_2.contentText
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L1_2 * 2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.contentText
  L6_2 = 900 * L1_2
  L5_2.textBoxSize = L6_2
  L5_2 = A0_2.closeButton
  L6_2 = 2.5 * L4_2
  L5_2.x = L6_2
  L5_2 = A0_2.closeButton
  L6_2 = -2.5 * L4_2
  L5_2.y = L6_2
  L5_2 = A0_2.closeButton
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.confirmButton
  L6_2 = 1.9 * L4_2
  L5_2.y = L6_2
  L5_2 = A0_2.confirmButton
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.hintCharacter
  L5_2 = L5_2.isAvailable
  if not L5_2 then
    L5_2 = A0_2.buttonText
    L6_2 = L5_2
    L5_2 = L5_2.setScale
    L7_2 = 0.9
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.coinsText
    L6_2 = L5_2
    L5_2 = L5_2.setScale
    L7_2 = 0.9
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.buttonText
    L6_2 = A0_2.buttonText
    L7_2 = L6_2
    L6_2 = L6_2.getFontLeading
    L6_2 = L6_2(L7_2)
    L6_2 = -L6_2
    L6_2 = L6_2 * 0.25
    L6_2 = L6_2 * L2_2
    L5_2.y = L6_2
    L5_2 = A0_2.coinsText
    L6_2 = A0_2.buttonText
    L6_2 = L6_2.y
    L7_2 = A0_2.coinsText
    L8_2 = L7_2
    L7_2 = L7_2.getFontLeading
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2 * L2_2
    L6_2 = L6_2 + L7_2
    L5_2.y = L6_2
  else
    L5_2 = 1
    L6_2 = 370
    L7_2 = A0_2.buttonText
    L8_2 = L7_2
    L7_2 = L7_2.getWidth
    L7_2 = L7_2(L8_2)
    if L6_2 < L7_2 then
      L7_2 = A0_2.buttonText
      L8_2 = L7_2
      L7_2 = L7_2.getWidth
      L7_2 = L7_2(L8_2)
      L5_2 = L6_2 / L7_2
    end
    L7_2 = A0_2.buttonText
    L8_2 = L7_2
    L7_2 = L7_2.setScale
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.layout
  L6_2 = A0_2
  L5_2(L6_2)
end

L5_1.layout = L6_1
L5_1 = HintPopup

function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L7_2 = nil
  if L4_2 == "ACTIVATE" then
    L8_2 = A0_2.hintCharacter
    L8_2 = L8_2.isAvailable
    if L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2.activateAndClose
      L8_2(L9_2)
      L7_2 = "Activate"
    else
      L8_2 = A0_2.hintCharacter
      L8_2 = L8_2.price
      L9_2 = gamelua
      L9_2 = L9_2.SettingsWrapper
      L10_2 = L9_2
      L9_2 = L9_2.getAmount
      L11_2 = "coins"
      L9_2 = L9_2(L10_2, L11_2)
      if L8_2 <= L9_2 then
        L8_2 = gamelua
        L8_2 = L8_2.addCoins
        L9_2 = A0_2.hintCharacter
        L9_2 = L9_2.price
        L9_2 = -L9_2
        L8_2(L9_2)
        L8_2 = gamelua
        L8_2 = L8_2.addBundle
        L9_2 = {}
        L10_2 = {}
        L11_2 = A0_2.hintCharacter
        L11_2 = L11_2.name
        L10_2.character = L11_2
        L11_2 = A0_2.hintCharacter
        L11_2 = L11_2.amount
        L10_2.amount = L11_2
        L9_2.screen = "HintPopup"
        L9_2[1] = L10_2
        L8_2(L9_2)
        L8_2 = gamelua
        L8_2 = L8_2.eventManager
        L9_2 = L8_2
        L8_2 = L8_2.notify
        L10_2 = {}
        L11_2 = events
        L11_2 = L11_2.EID_CHARACTER_MENU_REFRESH
        L10_2.id = L11_2
        L8_2(L9_2, L10_2)
        L8_2 = gamelua
        L8_2 = L8_2.eventManager
        L9_2 = L8_2
        L8_2 = L8_2.notify
        L10_2 = {}
        L11_2 = gamelua
        L11_2 = L11_2.events
        L11_2 = L11_2.EID_INVENTORY_USED
        L10_2.id = L11_2
        L10_2.typeOfItem = "coin"
        L11_2 = A0_2.hintCharacter
        L11_2 = L11_2.price
        L10_2.amount = L11_2
        L10_2.typeOfUse = "Bought item from hint pop-up"
        L10_2.screen = "Ingame"
        L10_2.iapType = "coin"
        L8_2(L9_2, L10_2)
        L9_2 = A0_2
        L8_2 = A0_2.activateAndClose
        L8_2(L9_2)
        L7_2 = "Buy"
      else
        L8_2 = ui
        L8_2 = L8_2.PurchaseRedirectDialog
        L9_2 = L8_2
        L8_2 = L8_2.new
        L10_2 = {}
        L11_2 = A0_2.hintCharacter
        L11_2 = L11_2.price
        L12_2 = gamelua
        L12_2 = L12_2.SettingsWrapper
        L13_2 = L12_2
        L12_2 = L12_2.getAmount
        L14_2 = "coins"
        L12_2 = L12_2(L13_2, L14_2)
        L11_2 = L11_2 - L12_2
        L10_2.missingCoins = L11_2
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = gamelua
        L9_2 = L9_2.eventManager
        L10_2 = L9_2
        L9_2 = L9_2.notify
        L11_2 = {}
        L12_2 = gamelua
        L12_2 = L12_2.events
        L12_2 = L12_2.EID_PUSH_FRAME
        L11_2.id = L12_2
        L11_2.target = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  elseif L4_2 == "CLOSE" then
    L9_2 = A0_2
    L8_2 = A0_2.close
    L8_2(L9_2)
    L7_2 = "Close"
  end
  if L7_2 then
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = gamelua
    L11_2 = L11_2.events
    L11_2 = L11_2.EID_HINT_POPUP_CLOSED
    L10_2.id = L11_2
    L11_2 = gamelua
    L11_2 = L11_2.levelName
    L10_2.level = L11_2
    L11_2 = A0_2.hintCharacter
    L11_2 = L11_2.name
    L10_2.charName = L11_2
    L11_2 = A0_2.hintCharacter
    L11_2 = L11_2.isAvailable
    L10_2.available = L11_2
    L10_2.closeAction = L7_2
    L8_2(L9_2, L10_2)
  end
  L8_2 = -1
  return L8_2
end

L5_1.onPointerEvent = L6_1
L5_1 = HintPopup

function L6_1(A0_2, A1_2, A2_2)
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

L5_1.onKeyEvent = L6_1
L5_1 = HintPopup

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.queueEvent
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_CHARACTER_SWITCH
  L3_2.id = L4_2
  L4_2 = A0_2.hintCharacter
  L4_2 = L4_2.name
  L3_2.birdName = L4_2
  L3_2.skipCharacterAnimation = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.close
  L1_2(L2_2)
end

L5_1.activateAndClose = L6_1
L5_1 = HintPopup

function L6_1(A0_2)
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

L5_1.close = L6_1
L5_1 = HintPopup

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.timer
  L3_2 = L3_2 + A1_2
  A0_2.timer = L3_2
  L3_2 = A0_2.glowImage
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.cos
  L5_2 = A0_2.timer
  L5_2 = L5_2 * 0.5
  L4_2 = L4_2(L5_2)
  L4_2 = -L4_2
  L3_2.angle = L4_2
  L4_2 = A0_2
  L3_2 = A0_2.layoutPosition
  L3_2(L4_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L5_1.update = L6_1
L5_1 = HintPopup

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  L1_2 = L1_2 * 0.5
  A0_2.x = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  L1_2 = -L1_2
  L1_2 = L1_2 * 0.5
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L3_2 = gamelua
  L3_2 = L3_2.tweenEaseCubicOut
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.min
  L5_2 = A0_2.timer
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  A0_2.y = L1_2
end

L5_1.layoutPosition = L6_1
L5_1 = HintPopup

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = gamelua
  L3_2 = L3_2.tweenEaseCubicInOut
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.min
  L5_2 = A0_2.timer
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L3_2 * 0.7
  L4_2 = gamelua
  L4_2 = L4_2.drawRect
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = L3_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = gamelua
  L11_2 = L11_2.screenWidth
  L12_2 = gamelua
  L12_2 = L12_2.screenHeight
  L13_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.draw
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L5_1.draw = L6_1
