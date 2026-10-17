local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CarboniteMeltAnimation = L0_1
L0_1 = CarboniteMeltAnimation
L0_1.isShown = false
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  A0_2.hanchor = "HCENTER"
  A0_2.vanchor = "VCENTER"
  L1_2 = 5
  L2_2 = {}
  A0_2.moveV = L2_2
  L2_2 = {}
  A0_2.rewardId = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.Characters
  L2_2 = L2_2.lightSideChars
  A0_2.backgroundAlpha = 0.7
  L3_2 = gamelua
  L3_2 = L3_2.isCharacterDarkSide
  L4_2 = A0_2.rewardId
  L5_2 = i
  L4_2 = L4_2[L5_2]
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.Characters
    L2_2 = L3_2.darkSideChars
  end
  L3_2 = gamelua
  L3_2 = L3_2.getCharacterMenu
  L3_2 = L3_2()
  if L3_2 then
  end
  L4_2 = {}
  A0_2.birdReceived = L4_2
  L4_2 = A0_2.reward
  L4_2 = L4_2.character
  if L4_2 then
    L4_2 = {}
    L5_2 = A0_2.reward
    L4_2[1] = L5_2
    A0_2.reward = L4_2
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.reward
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.rewardId
    L10_2 = L8_2.character
    L9_2[L7_2] = L10_2
    L9_2 = A0_2.birdReceived
    L10_2 = gamelua
    L10_2 = L10_2.ui
    L10_2 = L10_2.Image
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = {}
    L13_2 = "birdReceived_"
    L14_2 = L7_2
    L13_2 = L13_2 .. L14_2
    L12_2.name = L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2[L7_2] = L10_2
    L10_2 = A0_2
    L9_2 = A0_2.addChild
    L11_2 = A0_2.birdReceived
    L11_2 = L11_2[L7_2]
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.birdReceived
    L9_2 = L9_2[L7_2]
    L9_2.visible = false
    L9_2 = gamelua
    L9_2 = L9_2.ui
    L9_2 = L9_2.Image
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L12_2 = "birdReceivedAmount_"
    L13_2 = L7_2
    L12_2 = L12_2 .. L13_2
    L11_2.name = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = nil
    L11_2 = L8_2.type
    if L11_2 then
      L11_2 = L8_2.type
      if L11_2 == "unlimited" then
        L11_2 = gamelua
        L11_2 = L11_2.ui
        L11_2 = L11_2.DummyText
        L12_2 = L11_2
        L11_2 = L11_2.new
        L13_2 = {}
        L13_2.name = "amountText"
        L13_2.text = ""
        L14_2 = gamelua
        L14_2 = L14_2.getFontBasic
        L14_2 = L14_2()
        L13_2.font = L14_2
        L13_2.infinite = true
        L11_2 = L11_2(L12_2, L13_2)
        L10_2 = L11_2
        L11_2 = ui
        L11_2 = L11_2.Image
        L12_2 = L11_2
        L11_2 = L11_2.new
        L13_2 = {}
        L14_2 = "infiniteIcon_"
        L15_2 = L7_2
        L14_2 = L14_2 .. L15_2
        L13_2.name = L14_2
        L11_2 = L11_2(L12_2, L13_2)
        L13_2 = L11_2
        L12_2 = L11_2.setImage
        L14_2 = "ICON_SHOP_INFINITY"
        L12_2(L13_2, L14_2)
        L13_2 = L11_2
        L12_2 = L11_2.setScale
        L14_2 = 0.25
        L12_2(L13_2, L14_2)
        L9_2.infiniteIcon = L11_2
        L13_2 = L9_2
        L12_2 = L9_2.addChild
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
    end
    else
      L11_2 = gamelua
      L11_2 = L11_2.ui
      L11_2 = L11_2.DummyText
      L12_2 = L11_2
      L11_2 = L11_2.new
      L13_2 = {}
      L13_2.name = "amountText"
      L14_2 = "+"
      L15_2 = _G
      L15_2 = L15_2.tostring
      L16_2 = L8_2.amount
      L15_2 = L15_2(L16_2)
      L14_2 = L14_2 .. L15_2
      L13_2.text = L14_2
      L14_2 = gamelua
      L14_2 = L14_2.getFontBasic
      L14_2 = L14_2()
      L13_2.font = L14_2
      L11_2 = L11_2(L12_2, L13_2)
      L10_2 = L11_2
    end
    L12_2 = L9_2
    L11_2 = L9_2.addChild
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L11_2 = A0_2.birdReceived
    L11_2 = L11_2[L7_2]
    L11_2.birdReceivedAmountBG = L9_2
    L11_2 = A0_2.birdReceived
    L11_2 = L11_2[L7_2]
    L11_2.amountText = L10_2
    L11_2 = A0_2.birdReceived
    L11_2 = L11_2[L7_2]
    L12_2 = L11_2
    L11_2 = L11_2.addChild
    L13_2 = L9_2
    L11_2(L12_2, L13_2)
  end
end

L0_1.init = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.startRewardAnimation
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CARBONITE_MELT_ANIMATION_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = CarboniteMeltAnimation
  L1_2.isShown = true
  L1_2 = gamelua
  L1_2.g_blockIDPopup = true
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CARBONITE_MELT_ANIMATION_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "weapons_lightsaber_boomerang_01"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "birds_luke_specialactivate_2"
  L1_2(L2_2)
  L1_2 = CarboniteMeltAnimation
  L1_2.isShown = false
  L1_2 = gamelua
  L1_2.g_blockIDPopup = false
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.receivedUpdateTime = L1_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.birdReceived
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.visible = true
    L7_2 = L5_2
    L6_2 = L5_2.setImage
    L8_2 = gamelua
    L8_2 = L8_2.Characters
    L8_2 = L8_2.list
    L9_2 = A0_2.rewardId
    L9_2 = L9_2[L4_2]
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.portrait
    L6_2(L7_2, L8_2)
    L6_2 = A0_2.receivedUpdateTime
    L6_2[L4_2] = 0
    L6_2 = L5_2.birdReceivedAmountBG
    L7_2 = L6_2
    L6_2 = L6_2.setImage
    L8_2 = gamelua
    L8_2 = L8_2.getButtonImageName
    L9_2 = "characterMenuCounterBox"
    L10_2 = gamelua
    L10_2 = L10_2.isCharacterDarkSide
    L11_2 = A0_2.rewardId
    L11_2 = L11_2[L4_2]
    L10_2, L11_2 = L10_2(L11_2)
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = L5_2.amountText
    L7_2 = _G
    L7_2 = L7_2.tostring
    L8_2 = A0_2.rewardAmount
    L7_2 = L7_2(L8_2)
    L6_2.text = L7_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.FlashAnimation
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "flash"
  L3_2.file = "animations/Telepod/TELEPOD_EFFECT.json"
  L3_2.onEntryAction = "TELEPOD_EFFECT"
  L3_2.mode = "once"
  L3_2.width = 1365
  L3_2.height = 768
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.lightningAnimation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.lightningAnimation
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
  L1_2 = A0_2.lightningAnimation
  L2_2 = L1_2
  L1_2 = L1_2.onEntry
  L1_2(L2_2)
end

L0_1.startRewardAnimation = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = "button_"
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L3_2.name = L4_2
  L3_2.returnValue = "CHARACTER_CLICKED"
  L4_2 = {}
  L4_2.birdName = A0_2
  L3_2.meta = L4_2
  L3_2.refuseDragTargetting = true
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setEnabled
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.Characters
  L4_2 = L4_2.list
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.button
  L2_2(L3_2, L4_2)
  L1_2.birdName = A0_2
  L2_2 = {}
  L1_2.badges = L2_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = gamelua
  L4_2 = L4_2.Characters
  L4_2 = L4_2.list
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.isSith
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "telepodAmountSprite"
  L5_2 = L5_2(L6_2, L7_2)
  L1_2.telepodAmountSprite = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "unlimitedAmountSprite"
  L5_2 = L5_2(L6_2, L7_2)
  L1_2.unlimitedAmountSprite = L5_2
  L5_2 = ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "amountBg"
  L5_2 = L5_2(L6_2, L7_2)
  L1_2.amountBg = L5_2
  L5_2 = L1_2.amountBg
  L6_2 = L5_2
  L5_2 = L5_2.setImage
  L7_2 = gamelua
  L7_2 = L7_2.getButtonImageName
  L8_2 = "characterMenuCounterBox"
  L9_2 = L4_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.getAmount
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L1_2.amountBg
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.DummyText
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "amountText"
  if 999 < L5_2 then
    L10_2 = "999+"
    if L10_2 then
      goto lbl_86
    end
  end
  L10_2 = _G
  L10_2 = L10_2.tostring
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  ::lbl_86::
  L9_2.text = L10_2
  L10_2 = gamelua
  L10_2 = L10_2.getFontBasic
  L10_2 = L10_2()
  L9_2.font = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.amountText = L7_2
  L6_2 = L1_2.amountBg
  L7_2 = L6_2
  L6_2 = L6_2.addChild
  L8_2 = L1_2.amountBg
  L8_2 = L8_2.amountText
  L6_2(L7_2, L8_2)
  L6_2 = CharMenuBox
  L6_2 = L6_2.refreshButtonAmount
  L7_2 = L1_2
  L6_2(L7_2)
  return L1_2
end

L0_1.createCharacterButton = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "PORTRAIT_QUI_GON"
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.birdReceived
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.birdReceivedAmountBG
    L10_2 = 0.5 * L3_2
    L10_2 = L10_2 * L1_2
    L9_2.y = L10_2
    L9_2 = L8_2.birdReceivedAmountBG
    L10_2 = 0.5 * L2_2
    L10_2 = L10_2 * L1_2
    L9_2.x = L10_2
    L9_2 = gamelua
    L9_2 = L9_2.screenWidth
    L9_2 = L9_2 * 0.5
    L10_2 = A0_2.birdReceived
    L10_2 = #L10_2
    L10_2 = L10_2 - 1
    L10_2 = L10_2 * L2_2
    L10_2 = L10_2 * L1_2
    L10_2 = L10_2 * 0.65
    L9_2 = L9_2 - L10_2
    L10_2 = L7_2 - 1
    L10_2 = L10_2 * L2_2
    L10_2 = L10_2 * L1_2
    L10_2 = L10_2 * 1.3
    L9_2 = L9_2 + L10_2
    L8_2.x = L9_2
    L9_2 = gamelua
    L9_2 = L9_2.screenHeight
    L9_2 = L9_2 * 0.5
    L8_2.y = L9_2
    L10_2 = L8_2
    L9_2 = L8_2.setScale
    L11_2 = L1_2 * 0.1
    L9_2(L10_2, L11_2)
    L9_2 = L8_2.amountText
    if L9_2 then
      L9_2 = _G
      L9_2 = L9_2.string
      L9_2 = L9_2.len
      L10_2 = L8_2.amountText
      L10_2 = L10_2.text
      L9_2 = L9_2(L10_2)
      if L9_2 < 3 then
        L9_2 = 0.8
        if L9_2 then
          goto lbl_60
        end
      end
      L9_2 = 0.7
      ::lbl_60::
      L10_2 = L8_2.amountText
      L11_2 = L10_2
      L10_2 = L10_2.setScale
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
end

L0_1.layout = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = 0.5
  L3_2 = 0.5
  if not A0_2 then
    L4_2 = 0
    return L4_2
  end
  if A0_2 < L2_2 then
    L4_2 = A0_2 * 1
    L4_2 = L4_2 / L2_2
    return L4_2
  else
    if A0_2 > L2_2 then
      L4_2 = L2_2 + A1_2
      if A0_2 < L4_2 then
        L4_2 = 1
        return L4_2
    end
    else
      L4_2 = A1_2 + L2_2
      L4_2 = L4_2 + L3_2
      if A0_2 < L4_2 then
        L4_2 = A0_2 - L2_2
        L4_2 = L4_2 % 1
        L4_2 = L4_2 * 1
        L4_2 = L4_2 / L3_2
        L4_2 = 1 - L4_2
        return L4_2
      else
        L4_2 = 0
        return L4_2
      end
    end
  end
end

L0_1.boxTransition = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.closeTimer
  if L4_2 then
    L4_2 = A0_2.closeTimer
    if 0 < L4_2 then
      L4_2 = A0_2.closeTimer
      L4_2 = L4_2 - A1_2
      A0_2.closeTimer = L4_2
      L4_2 = A0_2.closeTimer
      if L4_2 < 0 then
        L5_2 = A0_2
        L4_2 = A0_2.close
        L4_2(L5_2)
      end
    end
  end
  L4_2 = A0_2.animateToRealCharMenu
  if not L4_2 then
    L4_2 = ui
    L4_2 = L4_2.CharacterMenuShop
    L4_2 = L4_2.isShown
    if not L4_2 then
      L4_2 = ui
      L4_2 = L4_2.CharacterMenuShop
      L4_2.isShown = true
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = events
      L7_2 = L7_2.EID_CHARACTER_MENU_OPENED
      L6_2.id = L7_2
      L6_2.openIntoCharacters = true
      L4_2(L5_2, L6_2)
    end
    L4_2 = gamelua
    L4_2 = L4_2.getMenuShopButton
    L4_2 = L4_2()
    A0_2.animateTo = L4_2
  else
    L4_2 = gamelua
    L4_2 = L4_2.getGameHud
    L4_2 = L4_2()
    L6_2 = L4_2
    L5_2 = L4_2.getCharacterMenuButton
    L5_2 = L5_2(L6_2)
    A0_2.animateTo = L5_2
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.birdReceived
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.receivedUpdateTime
    L9_2 = L9_2[L7_2]
    if L9_2 then
      L9_2 = L8_2.visible
      if L9_2 then
        L9_2 = L8_2.scaleX
        L10_2 = L3_2 * 1.4
        if L9_2 < L10_2 then
          L9_2 = A0_2.receivedUpdateTime
          L10_2 = A0_2.receivedUpdateTime
          L10_2 = L10_2[L7_2]
          L10_2 = L10_2 * 1.15
          L10_2 = L10_2 + A1_2
          L9_2[L7_2] = L10_2
          L10_2 = L8_2
          L9_2 = L8_2.setScale
          L11_2 = A0_2.receivedUpdateTime
          L11_2 = L11_2[L7_2]
          L11_2 = L3_2 * L11_2
          L9_2(L10_2, L11_2)
          L9_2 = L8_2.scaleX
          L10_2 = L3_2 * 1.4
          if L9_2 >= L10_2 then
            L9_2 = gamelua
            L9_2 = L9_2.playAudio
            L10_2 = "weapons_lightsaber_boomerang_01"
            L9_2(L10_2)
            L10_2 = L8_2
            L9_2 = L8_2.setScale
            L11_2 = L3_2 * 1.4
            L9_2(L10_2, L11_2)
            L9_2 = L8_2.x
            L10_2 = L8_2.y
            L11_2 = L8_2.w
            L12_2 = L8_2.h
            L13_2 = gamelua
            L13_2 = L13_2.putMenuParticles
            L14_2 = {}
            L14_2.x = L9_2
            L14_2.y = L10_2
            L14_2.particles = "telepodEffect1"
            L14_2.amount = 40
            L13_2(L14_2)
            L13_2 = gamelua
            L13_2 = L13_2.putMenuParticles
            L14_2 = {}
            L14_2.x = L9_2
            L14_2.y = L10_2
            L14_2.particles = "telepodEffect2"
            L14_2.amount = 2
            L13_2(L14_2)
            L13_2 = A2_2 + 2
            A0_2.startAnimation = L13_2
            L13_2 = A0_2.receivedUpdateTime
            L13_2[L7_2] = nil
          end
        end
      end
    end
    L9_2 = A0_2.startAnimation
    if L9_2 then
      L9_2 = A0_2.startAnimation
      if A2_2 <= L9_2 then
        L10_2 = L8_2
        L9_2 = L8_2.setScale
        L11_2 = L3_2 * 1.4
        L12_2 = _G
        L12_2 = L12_2.math
        L12_2 = L12_2.sin
        L13_2 = A2_2 / 0.2
        L12_2 = L12_2(L13_2)
        L12_2 = L12_2 - 0.7
        L12_2 = L12_2 * 0.15
        L12_2 = L12_2 * L3_2
        L11_2 = L11_2 + L12_2
        L9_2(L10_2, L11_2)
        L9_2 = A0_2.startAnimation
        L9_2 = L9_2 - A2_2
        if L9_2 <= 0.5 then
          L9_2 = A0_2.wasScannedAndUsed
          if not L9_2 then
            L9_2 = A0_2.startAnimation
            L9_2 = L9_2 - A2_2
            A0_2.backgroundAlpha = L9_2
          end
        end
    end
    else
      L9_2 = A0_2.startAnimation
      if L9_2 then
        L9_2 = A0_2.startAnimation
        if A2_2 > L9_2 then
          L9_2 = A0_2.animationDone
          if not L9_2 then
            L9_2 = A0_2.moveV
            L9_2 = L9_2[L7_2]
            if L9_2 == nil then
              L9_2 = gamelua
              L9_2 = L9_2.playAudio
              L10_2 = "birds_luke_specialactivate_2"
              L9_2(L10_2)
              L9_2 = A0_2.moveV
              L10_2 = {}
              L11_2 = L8_2.x
              L12_2 = A0_2.animateTo
              L12_2 = L12_2.x
              L11_2 = L11_2 - L12_2
              L12_2 = L8_2.y
              L13_2 = A0_2.animateTo
              L13_2 = L13_2.y
              L12_2 = L12_2 - L13_2
              L10_2[1] = L11_2
              L10_2[2] = L12_2
              L9_2[L7_2] = L10_2
            end
            L10_2 = A0_2
            L9_2 = A0_2.updateToMenuAnimation
            L11_2 = A1_2
            L12_2 = A2_2
            L9_2(L10_2, L11_2, L12_2)
          end
        end
      end
    end
    L9_2 = _G
    L9_2 = L9_2.res
    L9_2 = L9_2.getSpriteBounds
    L10_2 = "PORTRAIT_QUI_GON"
    L9_2, L10_2 = L9_2(L10_2)
    L11_2 = L8_2.birdReceivedAmountBG
    L12_2 = 0.5 * L10_2
    L13_2 = L8_2.scaleY
    L12_2 = L12_2 * L13_2
    L11_2.y = L12_2
    L11_2 = L8_2.birdReceivedAmountBG
    L12_2 = 0.5 * L9_2
    L13_2 = L8_2.scaleX
    L12_2 = L12_2 * L13_2
    L11_2.x = L12_2
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.update = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = "BTN_BG_LIGHT"
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = A0_2.position
  if not L6_2 then
    L6_2 = {}
    A0_2.position = L6_2
  end
  L6_2 = _G
  L6_2 = L6_2.ipairs
  L7_2 = A0_2.birdReceived
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = A0_2.moveV
    L11_2 = L11_2[L9_2]
    if L11_2 then
      L11_2 = A0_2.position
      L11_2 = L11_2[L9_2]
      if not L11_2 then
        L11_2 = A0_2.position
        L11_2[L9_2] = 0
        L11_2 = A0_2.birdReceivedOrigX
        if not L11_2 then
          L11_2 = {}
          A0_2.birdReceivedOrigX = L11_2
          L11_2 = {}
          A0_2.birdReceivedOrigY = L11_2
        end
        L11_2 = A0_2.birdReceivedOrigX
        L12_2 = L10_2.x
        L11_2[L9_2] = L12_2
        L11_2 = A0_2.birdReceivedOrigY
        L12_2 = L10_2.y
        L11_2[L9_2] = L12_2
      end
      L11_2 = A1_2 * 2
      L12_2 = A0_2.position
      L13_2 = A0_2.position
      L13_2 = L13_2[L9_2]
      L13_2 = L13_2 + L11_2
      L12_2[L9_2] = L13_2
      L12_2 = A0_2.position
      L12_2 = L12_2[L9_2]
      if 1 <= L12_2 then
        L12_2 = A0_2.moveV
        L12_2[L9_2] = nil
        L12_2 = A0_2.position
        L12_2[L9_2] = nil
        L12_2 = A0_2.animateTo
        L12_2 = L12_2.x
        L13_2 = A0_2.animateTo
        L13_2 = L13_2.y
        L14_2 = gamelua
        L14_2 = L14_2.putMenuParticles
        L15_2 = {}
        L16_2 = L4_2 * 0.25
        L16_2 = L16_2 * L3_2
        L16_2 = L12_2 - L16_2
        L15_2.x = L16_2
        L15_2.y = L13_2
        L15_2.particles = "telepodEffect3"
        L15_2.amount = 5
        L14_2(L15_2)
        L14_2 = gamelua
        L14_2 = L14_2.putMenuParticles
        L15_2 = {}
        L15_2.x = L12_2
        L16_2 = L5_2 * 0.25
        L16_2 = L16_2 * L3_2
        L16_2 = L13_2 + L16_2
        L15_2.y = L16_2
        L15_2.particles = "telepodEffect3"
        L15_2.amount = 5
        L14_2(L15_2)
        L14_2 = gamelua
        L14_2 = L14_2.putMenuParticles
        L15_2 = {}
        L16_2 = L4_2 * 0.25
        L16_2 = L16_2 * L3_2
        L16_2 = L12_2 + L16_2
        L15_2.x = L16_2
        L15_2.y = L13_2
        L15_2.particles = "telepodEffect3"
        L15_2.amount = 5
        L14_2(L15_2)
        L14_2 = gamelua
        L14_2 = L14_2.putMenuParticles
        L15_2 = {}
        L15_2.x = L12_2
        L16_2 = L5_2 * 0.25
        L16_2 = L16_2 * L3_2
        L16_2 = L13_2 - L16_2
        L15_2.y = L16_2
        L15_2.particles = "telepodEffect3"
        L15_2.amount = 5
        L14_2(L15_2)
        L10_2.visible = false
        L14_2 = A0_2.birdReceived
        L14_2 = #L14_2
        if L9_2 == L14_2 then
          L15_2 = A0_2
          L14_2 = A0_2.completeAnimation
          L14_2(L15_2)
        end
        return
      end
      L12_2 = L3_2 * 1.6
      L13_2 = A0_2.position
      L13_2 = L13_2[L9_2]
      if L13_2 < 0.65 then
        L13_2 = A0_2.position
        L13_2 = L13_2[L9_2]
        if L13_2 then
          goto lbl_122
        end
      end
      L13_2 = 0.65
      ::lbl_122::
      L13_2 = 1 - L13_2
      L12_2 = L12_2 * L13_2
      L13_2 = L10_2.x
      L14_2 = A0_2.animateToRealCharMenu
      if not L14_2 then
        L14_2 = 0
        if L14_2 then
          goto lbl_134
        end
      end
      L14_2 = L10_2.w
      L14_2 = L14_2 / 2
      L14_2 = L14_2 * L12_2
      ::lbl_134::
      L13_2 = L13_2 + L14_2
      L14_2 = L10_2.y
      L15_2 = L10_2.h
      L15_2 = L15_2 / 2
      L15_2 = L15_2 * L12_2
      L14_2 = L14_2 + L15_2
      L15_2 = gamelua
      L15_2 = L15_2.putMenuParticlesUnscaled
      L16_2 = {}
      L16_2.x = L13_2
      L16_2.y = L14_2
      L16_2.particles = "telepodEffect3"
      L16_2.amount = 5
      L15_2(L16_2)
      L15_2 = A0_2.moveV
      L15_2 = L15_2[L9_2]
      L15_2 = L15_2[1]
      L16_2 = A0_2.position
      L16_2 = L16_2[L9_2]
      L15_2 = L15_2 * L16_2
      L16_2 = A0_2.moveV
      L16_2 = L16_2[L9_2]
      L16_2 = L16_2[2]
      L17_2 = A0_2.position
      L17_2 = L17_2[L9_2]
      L16_2 = L16_2 * L17_2
      L17_2 = A0_2.birdReceivedOrigX
      L17_2 = L17_2[L9_2]
      L17_2 = L17_2 - L15_2
      L10_2.x = L17_2
      L17_2 = A0_2.birdReceivedOrigY
      L17_2 = L17_2[L9_2]
      L17_2 = L17_2 - L16_2
      L10_2.y = L17_2
      L18_2 = L10_2
      L17_2 = L10_2.setScale
      L19_2 = L12_2
      L17_2(L18_2, L19_2)
    end
  end
end

L0_1.updateToMenuAnimation = L1_1
L0_1 = CarboniteMeltAnimation

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
  if A1_2 == "LRELEASE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L4_2 = A0_2
    L3_2 = A0_2.close
    L3_2(L4_2)
  end
  L3_2 = -1
  return L3_2
end

L0_1.onKeyEvent = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2
  A0_2.closeTimer = 0.5
end

L0_1.prepareClose = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.animationDone = true
  L2_2 = A0_2
  L1_2 = A0_2.prepareClose
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CHARACTER_MENU_REFRESH
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.completeAnimation = L1_1
L0_1 = CarboniteMeltAnimation

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
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CHARACTER_MENU_REFRESH
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.onAnimationEnd
  if L1_2 then
    L1_2 = A0_2.onAnimationEnd
    L1_2()
  end
end

L0_1.close = L1_1
L0_1 = CarboniteMeltAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.backgroundAlpha
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = A0_2.lightningAnimation
  if L3_2 then
    L3_2 = A0_2.lightningAnimation
    L4_2 = L3_2
    L3_2 = L3_2.draw
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
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
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CharMenuBox = L0_1
L0_1 = CharMenuBox

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2.buttons = L1_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "sideButtonImg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.sideButtonImg = L1_2
  L1_2 = A0_2.sideButtonImg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "emblemButton"
  L5_2 = A0_2.isDarkMenu
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.buttons
  L3_2 = A0_2.sideButtonImg
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.sideButtonImg
  L1_2(L2_2, L3_2)
end

L0_1.init = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.buttons
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 ~= "EMPTY" then
    L3_2 = A0_2
    L2_2 = A0_2.addChild
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.layout
  L2_2(L3_2)
end

L0_1.addButton = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L3_2 = A0_2.rewardIsEmpty
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.addChild
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.buttons
    L3_2[2] = A1_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.refreshButtonAmounts
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.layout
  L3_2(L4_2)
end

L0_1.placeReward = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.amountBg
  if L1_2 then
    L1_2 = A0_2.telepodAmountSprite
    if L1_2 then
      L1_2 = A0_2.unlimitedAmountSprite
      if L1_2 then
        L1_2 = A0_2.birdName
        L2_2 = {}
        A0_2.badges = L2_2
        L2_2 = nil
        L3_2 = nil
        L4_2 = gamelua
        L4_2 = L4_2.Characters
        L4_2 = L4_2.list
        L4_2 = L4_2[L1_2]
        L4_2 = L4_2.isSith
        L5_2 = gamelua
        L5_2 = L5_2.getTelepodAmount
        L6_2 = L1_2
        L5_2 = L5_2(L6_2)
        if 1 < L5_2 then
          L5_2 = A0_2.telepodAmountSprite
          L6_2 = L5_2
          L5_2 = L5_2.setImage
          L7_2 = gamelua
          L7_2 = L7_2.getButtonImageName
          L8_2 = "iconTelepods"
          L9_2 = L4_2
          L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
          L5_2(L6_2, L7_2, L8_2, L9_2)
        else
          L5_2 = gamelua
          L5_2 = L5_2.getTelepodAmount
          L6_2 = L1_2
          L5_2 = L5_2(L6_2)
          if 0 < L5_2 then
            L5_2 = A0_2.telepodAmountSprite
            L6_2 = L5_2
            L5_2 = L5_2.setImage
            L7_2 = gamelua
            L7_2 = L7_2.getButtonImageName
            L8_2 = "iconTelepod"
            L9_2 = L4_2
            L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
            L5_2(L6_2, L7_2, L8_2, L9_2)
          else
            L5_2 = gamelua
            L5_2 = L5_2.getSessionTelepodAmount
            L6_2 = L1_2
            L5_2 = L5_2(L6_2)
            if 0 < L5_2 then
              L5_2 = A0_2.telepodAmountSprite
              L6_2 = L5_2
              L5_2 = L5_2.setImage
              L7_2 = gamelua
              L7_2 = L7_2.getButtonImageName
              L8_2 = "iconTelepodUsed"
              L9_2 = L4_2
              L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
              L5_2(L6_2, L7_2, L8_2, L9_2)
              L2_2 = true
            else
              L5_2 = A0_2.telepodAmountSprite
              L5_2.visible = false
            end
          end
        end
        L5_2 = A0_2.telepodAmountSprite
        L5_2 = L5_2.visible
        if L5_2 then
          L5_2 = _G
          L5_2 = L5_2.table
          L5_2 = L5_2.insert
          L6_2 = A0_2.badges
          L7_2 = 1
          L8_2 = A0_2.telepodAmountSprite
          L5_2(L6_2, L7_2, L8_2)
        end
        L5_2 = gamelua
        L5_2 = L5_2.ui
        L5_2 = L5_2.Image
        L6_2 = L5_2
        L5_2 = L5_2.new
        L7_2 = {}
        L7_2.name = "unlimitedAmountSprite"
        L5_2 = L5_2(L6_2, L7_2)
        A0_2.unlimitedAmountSprite = L5_2
        L5_2 = gamelua
        L5_2 = L5_2.getUnlimitedAmount
        L6_2 = L1_2
        L5_2 = L5_2(L6_2)
        if 1 < L5_2 then
          L5_2 = A0_2.unlimitedAmountSprite
          L6_2 = L5_2
          L5_2 = L5_2.setImage
          L7_2 = gamelua
          L7_2 = L7_2.getButtonImageName
          L8_2 = "iconUnlimiteds"
          L9_2 = L4_2
          L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
          L5_2(L6_2, L7_2, L8_2, L9_2)
        else
          L5_2 = gamelua
          L5_2 = L5_2.getUnlimitedAmount
          L6_2 = L1_2
          L5_2 = L5_2(L6_2)
          if 0 < L5_2 then
            L5_2 = A0_2.unlimitedAmountSprite
            L6_2 = L5_2
            L5_2 = L5_2.setImage
            L7_2 = gamelua
            L7_2 = L7_2.getButtonImageName
            L8_2 = "iconUnlimited"
            L9_2 = L4_2
            L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
            L5_2(L6_2, L7_2, L8_2, L9_2)
          else
            L5_2 = gamelua
            L5_2 = L5_2.SettingsWrapper
            L6_2 = L5_2
            L5_2 = L5_2.getAmount
            L7_2 = L1_2
            L8_2 = "_unlimited"
            L7_2 = L7_2 .. L8_2
            L5_2 = L5_2(L6_2, L7_2)
            if 0 < L5_2 then
              L5_2 = A0_2.unlimitedAmountSprite
              L6_2 = L5_2
              L5_2 = L5_2.setImage
              L7_2 = gamelua
              L7_2 = L7_2.getButtonImageName
              L8_2 = "iconUnlimitedUsed"
              L9_2 = L4_2
              L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
              L5_2(L6_2, L7_2, L8_2, L9_2)
              L3_2 = true
            else
              L5_2 = A0_2.unlimitedAmountSprite
              L5_2.visible = false
            end
          end
        end
        L5_2 = A0_2.unlimitedAmountSprite
        L5_2 = L5_2.visible
        if L5_2 then
          L5_2 = _G
          L5_2 = L5_2.table
          L5_2 = L5_2.insert
          L6_2 = A0_2.badges
          L7_2 = 1
          L8_2 = A0_2.unlimitedAmountSprite
          L5_2(L6_2, L7_2, L8_2)
        end
        L5_2 = gamelua
        L5_2 = L5_2.SettingsWrapper
        L6_2 = L5_2
        L5_2 = L5_2.getAmount
        L7_2 = L1_2
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = A0_2.amountBg
        L6_2 = L6_2.amountText
        L7_2 = L6_2
        L6_2 = L6_2.setText
        if 999 < L5_2 then
          L8_2 = "999+"
          if L8_2 then
            goto lbl_165
          end
        end
        L8_2 = _G
        L8_2 = L8_2.tostring
        L9_2 = L5_2
        L8_2 = L8_2(L9_2)
        ::lbl_165::
        L6_2(L7_2, L8_2)
        if 0 < L5_2 then
          L6_2 = _G
          L6_2 = L6_2.table
          L6_2 = L6_2.insert
          L7_2 = A0_2.badges
          L8_2 = 1
          L9_2 = A0_2.amountBg
          L6_2(L7_2, L8_2, L9_2)
          L6_2 = A0_2.amountBg
          L6_2.visible = true
        else
          L6_2 = A0_2.amountBg
          L6_2.visible = false
        end
        L7_2 = A0_2
        L6_2 = A0_2.removeChild
        L8_2 = A0_2.telepodAmountSprite
        L6_2(L7_2, L8_2)
        L7_2 = A0_2
        L6_2 = A0_2.removeChild
        L8_2 = A0_2.unlimitedAmountSprite
        L6_2(L7_2, L8_2)
        L7_2 = A0_2
        L6_2 = A0_2.removeChild
        L8_2 = A0_2.amountBg
        L6_2(L7_2, L8_2)
        if L2_2 and L3_2 then
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.telepodAmountSprite
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.unlimitedAmountSprite
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.amountBg
          L6_2(L7_2, L8_2)
        elseif L2_2 and not L3_2 then
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.telepodAmountSprite
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.amountBg
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.unlimitedAmountSprite
          L6_2(L7_2, L8_2)
        elseif not L2_2 and L3_2 then
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.unlimitedAmountSprite
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.amountBg
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.telepodAmountSprite
          L6_2(L7_2, L8_2)
        else
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.amountBg
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.unlimitedAmountSprite
          L6_2(L7_2, L8_2)
          L7_2 = A0_2
          L6_2 = A0_2.addChild
          L8_2 = A0_2.telepodAmountSprite
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
end

L0_1.refreshButtonAmount = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.buttons
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CharMenuBox
    L6_2 = L6_2.refreshButtonAmount
    L7_2 = L5_2
    L6_2(L7_2)
  end
end

L0_1.refreshButtonAmounts = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.buttons
  L1_2 = #L1_2
  return L1_2
end

L0_1.getButtonCount = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = A0_2.x
  L3_2 = A0_2.animateTo
  L3_2 = L3_2.x
  L2_2 = L2_2 + L3_2
  L1_2.x = L2_2
  L2_2 = A0_2.y
  L3_2 = A0_2.animateTo
  L3_2 = L3_2.y
  L2_2 = L2_2 + L3_2
  L1_2.y = L2_2
  return L1_2
end

L0_1.getAnimateToElement = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = A0_2.sideButtonImg
  L3_2 = L3_2.image
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = A0_2.buttons
  L4_2 = #L4_2
  L5_2 = L2_2 + 30
  L4_2 = L4_2 * L5_2
  A0_2.w = L4_2
  L4_2 = L3_2 + 30
  A0_2.h = L4_2
  L4_2 = A0_2.w
  L4_2 = -L4_2
  L4_2 = L4_2 + L2_2
  L4_2 = L4_2 + 30
  L4_2 = L4_2 * 0.5
  L5_2 = _G
  L5_2 = L5_2.ipairs
  L6_2 = A0_2.buttons
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    if L8_2 == 2 then
      L10_2 = {}
      L11_2 = L4_2 * L1_2
      L10_2.x = L11_2
      L10_2.y = 0
      A0_2.animateTo = L10_2
    end
    if L9_2 ~= "EMPTY" then
      L10_2 = L4_2 * L1_2
      L9_2.x = L10_2
      L11_2 = L9_2
      L10_2 = L9_2.setScale
      L12_2 = L1_2
      L10_2(L11_2, L12_2)
      L10_2 = 0
      L11_2 = nil
      L12_2 = _G
      L12_2 = L12_2.ipairs
      L13_2 = L9_2.badges
      if not L13_2 then
        L13_2 = {}
      end
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      for L15_2, L16_2 in L12_2, L13_2, L14_2 do
        if L11_2 ~= nil then
          L17_2 = L11_2.w
          L17_2 = L17_2 * 0.5
          L17_2 = L17_2 * L1_2
          L17_2 = L10_2 + L17_2
          L18_2 = L16_2.w
          L18_2 = L18_2 * 0.5
          L18_2 = L18_2 * L1_2
          L17_2 = L17_2 + L18_2
          L18_2 = 15 * L1_2
          L10_2 = L17_2 - L18_2
        end
        L17_2 = 0.45 * L3_2
        L17_2 = L17_2 * L1_2
        L16_2.y = L17_2
        L17_2 = 0.35 * L2_2
        L17_2 = L17_2 * L1_2
        L17_2 = L17_2 - L10_2
        L16_2.x = L17_2
        L17_2 = L16_2.amountText
        if L17_2 then
          L17_2 = _G
          L17_2 = L17_2.string
          L17_2 = L17_2.len
          L18_2 = L16_2.amountText
          L18_2 = L18_2.text
          L17_2 = L17_2(L18_2)
          if L17_2 < 3 then
            L17_2 = 0.8
            if L17_2 then
              goto lbl_85
            end
          end
          L17_2 = 0.7
          ::lbl_85::
          L18_2 = L16_2.amountText
          L19_2 = L18_2
          L18_2 = L18_2.setScale
          L20_2 = L17_2
          L18_2(L19_2, L20_2)
        end
        L11_2 = L16_2
      end
    else
      A0_2.rewardIsEmpty = true
    end
    L10_2 = L4_2 + L2_2
    L4_2 = L10_2 + 30
  end
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.layout
  L6_2 = A0_2
  L5_2(L6_2)
end

L0_1.layout = L1_1
L0_1 = CharMenuBox

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = "CHARACTER_MENU_CORNER_POSITIVE_1"
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = A0_2.w
  L7_2 = L4_2 * 2
  if L6_2 <= L7_2 then
    L6_2 = A0_2.w
    L7_2 = L4_2 * 2
    L6_2 = L6_2 / L7_2
    if L6_2 then
      goto lbl_19
    end
  end
  L6_2 = 1
  ::lbl_19::
  L7_2 = A0_2.h
  L8_2 = L5_2 * 2
  if L7_2 <= L8_2 then
    L7_2 = A0_2.h
    L8_2 = L5_2 * 2
    L7_2 = L7_2 / L8_2
    if L7_2 then
      goto lbl_29
    end
  end
  L7_2 = 1
  ::lbl_29::
  L8_2 = A0_2.w
  L9_2 = L4_2 * 2
  if L8_2 > L9_2 then
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.floor
    L9_2 = A0_2.w
    L10_2 = L4_2 * 2
    L9_2 = L9_2 - L10_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_43
    end
  end
  L8_2 = 0
  ::lbl_43::
  L9_2 = A0_2.h
  L10_2 = L5_2 * 2
  if L9_2 > L10_2 then
    L9_2 = _G
    L9_2 = L9_2.math
    L9_2 = L9_2.floor
    L10_2 = A0_2.h
    L11_2 = L5_2 * 2
    L10_2 = L10_2 - L11_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_57
    end
  end
  L9_2 = 0
  ::lbl_57::
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = A0_2.x
  L11_2 = A1_2 + L11_2
  L12_2 = L3_2 * L6_2
  L11_2 = L11_2 / L12_2
  L12_2 = L8_2 * 0.5
  L11_2 = L11_2 - L12_2
  L10_2 = L10_2(L11_2)
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.floor
  L12_2 = A0_2.y
  L12_2 = A2_2 + L12_2
  L13_2 = L3_2 * L7_2
  L12_2 = L12_2 / L13_2
  L13_2 = L9_2 * 0.5
  L12_2 = L12_2 - L13_2
  L11_2 = L11_2(L12_2)
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.x
  L13_2 = A1_2 + L13_2
  L14_2 = L3_2 * L6_2
  L13_2 = L13_2 / L14_2
  L14_2 = L8_2 * 0.5
  L13_2 = L13_2 + L14_2
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.floor
  L14_2 = A0_2.y
  L14_2 = A2_2 + L14_2
  L15_2 = L3_2 * L7_2
  L14_2 = L14_2 / L15_2
  L15_2 = L9_2 * 0.5
  L14_2 = L14_2 + L15_2
  L13_2 = L13_2(L14_2)
  L14_2 = gamelua
  L14_2 = L14_2.setRenderState
  L15_2 = 0
  L16_2 = 0
  L17_2 = L3_2 * L6_2
  L18_2 = L3_2 * L7_2
  L19_2 = 0
  L20_2 = 0
  L21_2 = 0
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L14_2 = _G
  L14_2 = L14_2.res
  L14_2 = L14_2.drawSprite
  L15_2 = "CHARACTER_MENU_CORNER_POSITIVE_1"
  L16_2 = L10_2
  L17_2 = L11_2
  L14_2(L15_2, L16_2, L17_2)
  L14_2 = _G
  L14_2 = L14_2.res
  L14_2 = L14_2.drawSprite
  L15_2 = "CHARACTER_MENU_CORNER_POSITIVE_2"
  L16_2 = L12_2 - 1
  L17_2 = L11_2
  L14_2(L15_2, L16_2, L17_2)
  L14_2 = _G
  L14_2 = L14_2.res
  L14_2 = L14_2.drawSprite
  L15_2 = "CHARACTER_MENU_CORNER_POSITIVE_3"
  L16_2 = L10_2
  L17_2 = L13_2 - 1
  L14_2(L15_2, L16_2, L17_2)
  L14_2 = _G
  L14_2 = L14_2.res
  L14_2 = L14_2.drawSprite
  L15_2 = "CHARACTER_MENU_CORNER_POSITIVE_4"
  L16_2 = L12_2 - 1
  L17_2 = L13_2 - 1
  L14_2(L15_2, L16_2, L17_2)
  L14_2 = gamelua
  L14_2 = L14_2.drawRectOwnState
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0.5
  L19_2 = L10_2
  L20_2 = L11_2 - L5_2
  L21_2 = L12_2
  L22_2 = L13_2 + L5_2
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2 = gamelua
  L14_2 = L14_2.drawRectOwnState
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0.5
  L19_2 = L10_2 - L4_2
  L20_2 = L11_2
  L21_2 = L10_2
  L22_2 = L13_2
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2 = gamelua
  L14_2 = L14_2.drawRectOwnState
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0.5
  L19_2 = L12_2
  L20_2 = L11_2
  L21_2 = L12_2 + L5_2
  L22_2 = L13_2
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2 = ui
  L14_2 = L14_2.Frame
  L14_2 = L14_2.draw
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = A2_2
  L14_2(L15_2, L16_2, L17_2)
end

L0_1.draw = L1_1
