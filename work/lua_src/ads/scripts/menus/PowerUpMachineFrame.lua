local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
PowerUpMachineFrame = L0_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2.name = "PowerupMachineFrame"
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
  A0_2.PROMPT_BG_BOX_WIDTH = 660
  A0_2.PROMPT_BG_BOX_HEIGHT = 440
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.floor
  L2_2 = A0_2.PROMPT_BG_BOX_WIDTH
  L1_2 = L1_2(L2_2)
  A0_2.width = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.floor
  L2_2 = A0_2.PROMPT_BG_BOX_HEIGHT
  L1_2 = L1_2(L2_2)
  A0_2.height = L1_2
  A0_2.spinnerSpeed = 2
  A0_2.spinAcceleration = 3
  A0_2.maxSpeed = 13
  A0_2.startSlowDownStepCount = 60
  A0_2.fullRounds = 5
  A0_2.direction = 1
  A0_2.maxIconBounces = 2
  A0_2.bounceEndedTimer = 0.3
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  L1_2 = L1_2 * 0.5
  A0_2.powerupAnimationX = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  L1_2 = L1_2 * 0.5
  A0_2.powerupAnimationY = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  L1_2 = L1_2 * 0.5
  L2_2 = {}
  A0_2.spinnerList = L2_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.rewards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = gamelua
    L7_2 = L7_2.Characters
    L7_2 = L7_2.list
    L8_2 = L6_2.character
    L7_2 = L7_2[L8_2]
    if L7_2 then
      L8_2 = {}
      L9_2 = L7_2.button
      L8_2.sprite = L9_2
      L9_2 = L6_2.character
      L8_2.characterName = L9_2
      L9_2 = "+"
      L10_2 = _G
      L10_2 = L10_2.tostring
      L11_2 = L6_2.amount
      L10_2 = L10_2(L11_2)
      L9_2 = L9_2 .. L10_2
      L8_2.amount = L9_2
      L9_2 = _G
      L9_2 = L9_2.table
      L9_2 = L9_2.insert
      L10_2 = A0_2.spinnerList
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  A0_2.spinnerPosition = 0
  A0_2.stopAtIndex = nil
  A0_2.spinnerHalted = false
  A0_2.startSlowDownRound = 0
  A0_2.startSlowDownAt = 0
  A0_2.haltPrematurely = false
  A0_2.minScale = 1000000
  A0_2.maxScale = -1000000
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.init = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "Spinning the wheel of fortune."
  L1_2(L2_2)
  A0_2.spinUpStarted = true
  A0_2.spinUpComplete = false
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "weapons_lightsaber_yoda_loop"
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "weapons_lightsaber_yoda_loop"
  L1_2(L2_2)
end

L0_1.stopAudio = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "weapons_lightsaber_yoda_loop"
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.getFontScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L3_2 = 340 * L2_2
  L4_2 = 250
  A0_2.planetHeight = 250
  A0_2.planetWidth = L4_2
  L4_2 = L3_2 * 0.24
  A0_2.distanceMultiplier = L4_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
end

L0_1.layout = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.spinnerSpeed
  L2_2 = A0_2.maxSpeed
  L1_2 = L1_2 == L2_2
  return L1_2
end

L0_1.isFullSpeed = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.fullSpeedTimer
  return L1_2
end

L0_1.howLongInFullSpeed = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2
  A0_2.haltPrematurely = true
end

L0_1.stopSpinnerEarly = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "STOP_SPINNER" then
    L6_2 = A0_2.spinnerHalted
    if not L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.stopSpinnerEarly
      L6_2(L7_2)
    end
  else
    L6_2 = A0_2.spinnerHalted
    if L6_2 then
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
    end
  end
  L6_2 = -1
  return L6_2
end

L0_1.onPointerEvent = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_NEWS_SHOWN
  if L2_2 == L3_2 then
  end
end

L0_1.eventTriggered = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L5_2 = gamelua
    L5_2 = L5_2.eventManager
    L6_2 = L5_2
    L5_2 = L5_2.notify
    L7_2 = {}
    L8_2 = gamelua
    L8_2 = L8_2.events
    L8_2 = L8_2.EID_POP_FRAME
    L7_2.id = L8_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = -1
  return L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2
end

L0_1.changeButtonAppearance = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.fullRounds
  if L1_2 then
    L1_2 = false
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end

L0_1.checkIfValidRoundToSlow = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.pi
  L2_2 = 2 * L2_2
  if A1_2 > L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.correctPiValue
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.pi
    L4_2 = 2 * L4_2
    L4_2 = A1_2 - L4_2
    return L2_2(L3_2, L4_2)
  elseif A1_2 < 0 then
    L3_2 = A0_2
    L2_2 = A0_2.correctPiValue
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.pi
    L4_2 = 2 * L4_2
    L4_2 = A1_2 + L4_2
    return L2_2(L3_2, L4_2)
  else
    return A1_2
  end
end

L0_1.correctPiValue = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  A0_2.elementsInitialized = true
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.pi
  L3_2 = 2 * L3_2
  L4_2 = A0_2.spinnerList
  L4_2 = #L4_2
  L3_2 = L3_2 / L4_2
  L4_2 = L3_2 / 2
  L5_2 = 3 * L3_2
  L6_2 = A0_2.spinnerSpeed
  L7_2 = A0_2.maxSpeed
  if L6_2 < L7_2 then
    L6_2 = A0_2.spinnerSpeed
    L7_2 = A0_2.spinAcceleration
    L7_2 = L7_2 * A1_2
    L6_2 = L6_2 + L7_2
    A0_2.spinnerSpeed = L6_2
    A0_2.fullSpeedTimer = 0
  else
    L6_2 = A0_2.maxSpeed
    A0_2.spinnerSpeed = L6_2
    L6_2 = A0_2.fullSpeedTimer
    L6_2 = L6_2 + A1_2
    A0_2.fullSpeedTimer = L6_2
  end
  L6_2 = 0.3
  L7_2 = _G
  L7_2 = L7_2.ipairs
  L8_2 = A0_2.spinnerList
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.initialOffset
    if not L12_2 then
      L12_2 = _G
      L12_2 = L12_2.math
      L12_2 = L12_2.pi
      L12_2 = L12_2 * 0.5
      L13_2 = L10_2 * L3_2
      L12_2 = L12_2 + L13_2
      L11_2.initialOffset = L12_2
    end
    L12_2 = L11_2.initialOffset
    L13_2 = A0_2.spinnerPosition
    L12_2 = L12_2 - L13_2
    L11_2.spinnedOffset = L12_2
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.cos
    L13_2 = L11_2.spinnedOffset
    L12_2 = L12_2(L13_2)
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.sin
    L14_2 = L11_2.spinnedOffset
    L13_2 = L13_2(L14_2)
    L11_2.sinVariant = L13_2
    L14_2 = A0_2.distanceMultiplier
    L14_2 = L12_2 * L14_2
    L14_2 = L14_2 * 2
    L11_2.xOnCircle = L14_2
    L14_2 = A0_2.distanceMultiplier
    L14_2 = L13_2 * L14_2
    L14_2 = L14_2 * 0.5
    L11_2.yOnCircle = L14_2
    if L13_2 < 0 then
      L11_2.inBackground = true
    else
      L11_2.inBackground = false
    end
    L14_2 = gamelua
    L14_2 = L14_2.getUIScale
    L14_2 = L14_2()
    L15_2 = _G
    L15_2 = L15_2.math
    L15_2 = L15_2.sin
    L16_2 = L11_2.spinnedOffset
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2 * L6_2
    L15_2 = L15_2 + 0.85
    L15_2 = L15_2 * L14_2
    L11_2.objectScale = L15_2
  end
  L7_2 = A0_2.spinnerPosition
  L8_2 = A0_2.spinnerSpeed
  L8_2 = L8_2 * A1_2
  L7_2 = L7_2 + L8_2
  A0_2.spinnerPosition = L7_2
  L7_2 = ui
  L7_2 = L7_2.Frame
  L7_2 = L7_2.update
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L7_2(L8_2, L9_2, L10_2)
end

L0_1.update = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.elementsInitialized
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.drawIcons
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2.drawIcons
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = gamelua
    L3_2 = L3_2.setFont
    L4_2 = gamelua
    L4_2 = L4_2.getFontHeadline
    L4_2, L5_2, L6_2, L7_2 = L4_2()
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end

L0_1.draw = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.drawString
  L5_2 = ""
  L6_2 = A3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = "HCENTER"
  L10_2 = "VCENTER"
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

L0_1.drawPowerupString = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L4_2 = {}
  L5_2 = _G
  L5_2 = L5_2.ipairs
  L6_2 = A0_2.spinnerList
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L4_2[L8_2] = L9_2
  end
  L5_2 = _G
  L5_2 = L5_2.table
  L5_2 = L5_2.sort
  L6_2 = L4_2
  
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.sinVariant
    L3_3 = A1_3.sinVariant
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L5_2.x = 35
  L5_2.y = 35
  L6_2 = 0.45
  L7_2 = _G
  L7_2 = L7_2.ipairs
  L8_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.inBackground
    if L12_2 == A3_2 then
      L12_2 = gamelua
      L12_2 = L12_2.setRenderState
      L13_2 = 0
      L14_2 = 0
      L15_2 = L11_2.objectScale
      L16_2 = L11_2.objectScale
      L17_2 = 0
      L18_2 = 0
      L19_2 = 0
      L20_2 = A0_2.alpha
      if not L20_2 then
        L20_2 = 1
      end
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L12_2 = _G
      L12_2 = L12_2.res
      L12_2 = L12_2.drawSprite
      L13_2 = L11_2.sprite
      L14_2 = A0_2.x
      L14_2 = A1_2 + L14_2
      L15_2 = L11_2.xOnCircle
      L14_2 = L14_2 + L15_2
      L15_2 = L11_2.objectScale
      L14_2 = L14_2 / L15_2
      L15_2 = A0_2.y
      L15_2 = A2_2 + L15_2
      L16_2 = L11_2.yOnCircle
      L15_2 = L15_2 + L16_2
      L16_2 = L11_2.objectScale
      L15_2 = L15_2 / L16_2
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = gamelua
      L12_2 = L12_2.getButtonImageName
      L13_2 = "characterMenuCounterBox"
      L14_2 = gamelua
      L14_2 = L14_2.isCharacterDarkSide
      L15_2 = L11_2.characterName
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L13_2 = _G
      L13_2 = L13_2.res
      L13_2 = L13_2.drawSprite
      L14_2 = L12_2
      L15_2 = A0_2.x
      L15_2 = A1_2 + L15_2
      L16_2 = L11_2.xOnCircle
      L15_2 = L15_2 + L16_2
      L16_2 = L11_2.objectScale
      L15_2 = L15_2 / L16_2
      L16_2 = L5_2.x
      L15_2 = L15_2 + L16_2
      L16_2 = A0_2.y
      L16_2 = A1_2 + L16_2
      L17_2 = L11_2.yOnCircle
      L16_2 = L16_2 + L17_2
      L17_2 = L11_2.objectScale
      L16_2 = L16_2 / L17_2
      L17_2 = L5_2.y
      L16_2 = L16_2 + L17_2
      L17_2 = "HCENTER"
      L18_2 = "VCENTER"
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      L13_2 = gamelua
      L13_2 = L13_2.setRenderState
      L14_2 = 0
      L15_2 = 0
      L16_2 = L11_2.objectScale
      L16_2 = L16_2 * L6_2
      L17_2 = L11_2.objectScale
      L17_2 = L17_2 * L6_2
      L18_2 = 0
      L19_2 = 0
      L20_2 = 0
      L21_2 = A0_2.alpha
      if not L21_2 then
        L21_2 = 1
      end
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L13_2 = _G
      L13_2 = L13_2.res
      L13_2 = L13_2.useFont
      L14_2 = gamelua
      L14_2 = L14_2.getFontBasic
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2()
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L13_2 = _G
      L13_2 = L13_2.res
      L13_2 = L13_2.drawString
      L14_2 = "TEXTS_BASIC"
      L15_2 = L11_2.amount
      L16_2 = A0_2.x
      L16_2 = A1_2 + L16_2
      L17_2 = L11_2.xOnCircle
      L16_2 = L16_2 + L17_2
      L17_2 = L11_2.objectScale
      L16_2 = L16_2 / L17_2
      L17_2 = 1 / L6_2
      L16_2 = L16_2 * L17_2
      L17_2 = L5_2.x
      L18_2 = 1 / L6_2
      L17_2 = L17_2 * L18_2
      L16_2 = L16_2 + L17_2
      L17_2 = A0_2.y
      L17_2 = A1_2 + L17_2
      L18_2 = L11_2.yOnCircle
      L17_2 = L17_2 + L18_2
      L18_2 = L11_2.objectScale
      L17_2 = L17_2 / L18_2
      L18_2 = 1 / L6_2
      L17_2 = L17_2 * L18_2
      L18_2 = L5_2.y
      L19_2 = 1 / L6_2
      L18_2 = L18_2 * L19_2
      L17_2 = L17_2 + L18_2
      L18_2 = "HCENTER"
      L19_2 = "VCENTER"
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L13_2 = gamelua
      L13_2 = L13_2.setRenderState
      L14_2 = 0
      L15_2 = 0
      L16_2 = 1
      L17_2 = 1
      L18_2 = 0
      L19_2 = 0
      L20_2 = 0
      L21_2 = 1
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    end
  end
end

L0_1.drawIcons = L1_1
L0_1 = PowerUpMachineFrame

function L1_1(A0_2, A1_2)
  A0_2.alpha = A1_2
end

L0_1.setTransparrency = L1_1
