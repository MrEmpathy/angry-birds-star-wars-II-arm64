local L0_1, L1_1, L2_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CoinButton = L0_1
L0_1 = nil
L1_1 = CoinButton

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = "CoinButton"
  end
  A0_2.name = L1_2
  A0_2.hanchor = "RIGHT"
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "bg"
  L2_2 = {}
  L2_2.left = "COINBASE_LEFT"
  L2_2.center = "COINBASE_MIDDLE"
  L2_2.right = "COINBASE_RIGHT"
  L1_2.components = L2_2
  L1_2.hanchor = "LEFT"
  A0_2.enabled = true
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.RotatingCoin
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "rotatingCoin"
  L5_2 = A0_2.inGame
  L4_2.disableIncreaseAudio = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.coinImage = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.addChild
  L4_2 = A0_2.coinImage
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "getCoinsBtn"
  L5_2 = A0_2.returnValue
  L4_2.returnValue = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.button = L2_2
  L2_2 = A0_2.button
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "BTN_ADDCOINS"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.button
  L3_2 = A0_2.coinButtonDisabled
  if not L3_2 then
    L3_2 = false
  end
  L2_2.disabled = L3_2
  L2_2 = A0_2.button
  L2_2.hitAreaScaleX = 7
  L2_2 = A0_2.button
  L2_2.hitAreaScaleY = 3
  L2_2 = ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = gamelua
  L5_2 = L5_2.getFontIngameMoney
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.coinAmount = L2_2
  L2_2 = A0_2.coinAmount
  L2_2.hanchor = "LEFT"
  L3_2 = L1_2
  L2_2 = L1_2.addChild
  L4_2 = A0_2.coinAmount
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.isIapEnabled
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.addChild
    L4_2 = A0_2.button
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2.inGame
  if L2_2 then
    A0_2.startTime = 0
    A0_2.yOffset = 1
    A0_2.yOffsetDir = 0
    A0_2.yOffsetTime = 0
  end
end

L1_1.init = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2)
  A0_2.enabled = A1_2
end

L1_1.setEnabled = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.button
  L2_2.returnValue = A1_2
end

L1_1.setReturnValue = L2_1
L1_1 = CoinButton

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.EID_UPDATE_ALL_COIN_UI_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  A0_2.scale = 1
  L1_2 = L0_1
  if L1_2 then
    L1_2 = L0_1
    if L1_2 then
      goto lbl_29
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getAmount
  L3_2 = "coins"
  L1_2 = L1_2(L2_2, L3_2)
  ::lbl_29::
  A0_2.currentAmount = L1_2
  L1_2 = A0_2.currentAmount
  A0_2.currentAmountOrig = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getAmount
  L3_2 = "coins"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.targetAmount = L1_2
  L1_2 = A0_2.coinAmount
  L2_2 = L1_2
  L1_2 = L1_2.setText
  L3_2 = ""
  L4_2 = A0_2.currentAmount
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.inGame
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.startTransfer
    L1_2(L2_2)
  end
end

L1_1.onEntry = L2_1
L1_1 = CoinButton

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.EID_UPDATE_ALL_COIN_UI_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_UPDATE_ALL_COIN_UI_AMOUNT
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.coinImage
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end

L1_1.onExit = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.inGame
  if L4_2 then
    L4_2 = ui
    L4_2 = L4_2.Frame
    L4_2 = L4_2.onPointerEvent
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    return L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = A0_2.enabled
  if not L4_2 then
    L4_2 = "BLOCK"
    L5_2 = nil
    L6_2 = A0_2
    return L4_2, L5_2, L6_2
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L1_1.onPointerEvent = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.scaleX = A1_2
  A0_2.scaleY = A1_2
  L2_2 = A0_2.button
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L1_1.setScale = L2_1
L1_1 = CoinButton

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = A0_2.scale
  L1_2 = L1_2 * L2_2
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = 12 * L1_2
  L4_2 = 0.7
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "bg"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.coinImage
  L6_2 = L6_2.w
  L7_2 = A0_2.coinImage
  L7_2 = L7_2.h
  L8_2 = L6_2 * L1_2
  L8_2 = L8_2 * L4_2
  L9_2 = L7_2 * L1_2
  L7_2 = L9_2 * L4_2
  L6_2 = L8_2
  L8_2 = A0_2.button
  L8_2 = L8_2.w
  L9_2 = A0_2.button
  L9_2 = L9_2.h
  L10_2 = L8_2 * L1_2
  L9_2 = L9_2 * L1_2
  L8_2 = L10_2
  L10_2 = gamelua
  L10_2 = L10_2.setFont
  L11_2 = gamelua
  L11_2 = L11_2.getFontIngameMoney
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = ""
  L11_2 = 1
  L12_2 = A0_2.coinAmount
  L12_2 = L12_2.text
  L12_2 = #L12_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = L10_2
    L16_2 = "0"
    L10_2 = L15_2 .. L16_2
  end
  L11_2 = _G
  L11_2 = L11_2.res
  L11_2 = L11_2.getStringWidth
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 * L2_2
  L12_2 = L6_2 + L8_2
  L12_2 = L12_2 + L11_2
  L13_2 = L3_2 * 3
  L12_2 = L12_2 + L13_2
  A0_2.w = L12_2
  L12_2 = gamelua
  L12_2 = L12_2.isIapEnabled
  L12_2 = L12_2()
  if not L12_2 then
    L12_2 = A0_2.w
    L12_2 = L12_2 - L8_2
    A0_2.w = L12_2
  end
  L12_2 = L9_2 * 1.2
  A0_2.h = L12_2
  L13_2 = L5_2
  L12_2 = L5_2.setSize
  L14_2 = A0_2.w
  L16_2 = L5_2
  L15_2 = L5_2.getLeftBlockW
  L15_2 = L15_2(L16_2)
  L14_2 = L14_2 - L15_2
  L16_2 = L5_2
  L15_2 = L5_2.getRightBlockW
  L15_2 = L15_2(L16_2)
  L14_2 = L14_2 - L15_2
  L15_2 = A0_2.h
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = A0_2.coinImage
  L13_2 = L12_2
  L12_2 = L12_2.setScale
  L14_2 = L1_2 * L4_2
  L15_2 = A0_2.scale
  L14_2 = L14_2 * L15_2
  L12_2(L13_2, L14_2)
  L12_2 = A0_2.button
  L13_2 = L12_2
  L12_2 = L12_2.setScale
  L14_2 = L1_2
  L12_2(L13_2, L14_2)
  L12_2 = A0_2.coinAmount
  L12_2.scaleX = L1_2
  L12_2 = A0_2.coinAmount
  L12_2.scaleY = L1_2
  L12_2 = A0_2.coinImage
  L14_2 = L5_2
  L13_2 = L5_2.getLeftBlockW
  L13_2 = L13_2(L14_2)
  L13_2 = -L13_2
  L14_2 = L6_2 / 2
  L13_2 = L13_2 + L14_2
  L14_2 = L3_2 / 2
  L13_2 = L13_2 + L14_2
  L12_2.x = L13_2
  L12_2 = A0_2.coinAmount
  L13_2 = A0_2.coinImage
  L13_2 = L13_2.x
  L14_2 = L6_2 / 2
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 + L3_2
  L12_2.x = L13_2
  L12_2 = A0_2.button
  L13_2 = A0_2.coinAmount
  L13_2 = L13_2.x
  L13_2 = L13_2 + L11_2
  L14_2 = L8_2 / 2
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 + L3_2
  L12_2.x = L13_2
  L12_2 = A0_2.w
  L12_2 = -L12_2
  L14_2 = L5_2
  L13_2 = L5_2.getRightBlockW
  L13_2 = L13_2(L14_2)
  L12_2 = L12_2 + L13_2
  L5_2.x = L12_2
  L13_2 = A0_2
  L12_2 = A0_2.setYOffset
  L14_2 = 0
  L12_2(L13_2, L14_2)
end

L1_1.layout = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L1_1.draw = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = 2.0026702E-4 * A1_2
  L2_2 = L2_2 - 4.0053405E-4
  L2_2 = L2_2 + 1
  if A1_2 == 0 then
    L2_2 = 0
  elseif A1_2 <= 20 then
    L2_2 = 1
  elseif 15000 <= A1_2 then
    L2_2 = 4
  end
  return L2_2
end

L1_1.counterTimeFunction = L2_1
L1_1 = CoinButton

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.targetAmount
  L2_2 = A0_2.currentAmount
  if L1_2 < L2_2 then
    L1_2 = A0_2.coinImage
    L2_2 = L1_2
    L1_2 = L1_2.start
    L3_2 = "RIGHT"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.targetAmount
    L2_2 = A0_2.currentAmount
    if L1_2 > L2_2 then
      L1_2 = A0_2.coinImage
      L2_2 = L1_2
      L1_2 = L1_2.start
      L3_2 = "LEFT"
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2.targetAmount
  L2_2 = A0_2.currentAmount
  L1_2 = L1_2 - L2_2
  A0_2.amountDiff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.counterTimeFunction
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.abs
  L4_2 = A0_2.amountDiff
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.counterTime = L1_2
  L1_2 = A0_2.currentAmount
  A0_2.currentAmountOrig = L1_2
  A0_2.startTime = 0
  A0_2.yOffsetDir = -1
  A0_2.yOffsetTime = 0
end

L1_1.startTransfer = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
  if L2_2 ~= L3_2 then
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_UPDATE_ALL_COIN_UI_AMOUNT
    if L2_2 ~= L3_2 then
      goto lbl_26
    end
  end
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getAmount
  L4_2 = "coins"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.targetAmount = L2_2
  L2_2 = L0_1
  if not L2_2 then
    L2_2 = A0_2.targetAmount
  end
  A0_2.currentAmount = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.startTransfer
  L2_2(L3_2)
  ::lbl_26::
end

L1_1.eventTriggered = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = gamelua
  L2_2 = L2_2.isAnyShopPromptOpen
  L2_2 = L2_2()
  if L2_2 then
    A0_2.yOffset = 0
  end
  L2_2 = A0_2.yOffset
  if L2_2 then
    L2_2 = 2
    L3_2 = 2
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.max
    L5_2 = 0
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.min
    L7_2 = 1
    L8_2 = A0_2.yOffset
    L9_2 = A0_2.yOffsetDir
    L9_2 = A1_2 * L9_2
    L9_2 = L9_2 * L2_2
    L8_2 = L8_2 + L9_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2.yOffset = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.tweenEaseCubicIn
    L5_2 = A0_2.yOffset
    L6_2 = 0
    L7_2 = 1
    L8_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2.yMove = L4_2
    L4_2 = A0_2.yOffset
    if L4_2 == 0 then
      L4_2 = A0_2.yOffsetTime
      L4_2 = L4_2 + A1_2
      A0_2.yOffsetTime = L4_2
      L4_2 = A0_2.yOffsetTime
      if L3_2 < L4_2 then
        A0_2.yOffsetTime = 0
        A0_2.yOffsetDir = 1
      end
    end
  end
end

L1_1.setYOffset = L2_1
L1_1 = CoinButton

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = gamelua
  L3_2 = L3_2.getDeltaTimeMultiplier
  L3_2 = L3_2()
  A1_2 = A1_2 / L3_2
  L3_2 = A0_2.startTime
  L3_2 = L3_2 + A1_2
  A0_2.startTime = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "bg"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.counterTime
  if L4_2 then
    L4_2 = A0_2.startTime
    L5_2 = A0_2.counterTime
    if L4_2 < L5_2 then
      L4_2 = A0_2.currentAmountOrig
      L5_2 = A0_2.startTime
      L6_2 = A0_2.counterTime
      L6_2 = 1 / L6_2
      L5_2 = L5_2 * L6_2
      L6_2 = A0_2.amountDiff
      L5_2 = L5_2 * L6_2
      L4_2 = L4_2 + L5_2
      A0_2.currentAmount = L4_2
      L4_2 = A0_2.coinAmount
      L5_2 = L4_2
      L4_2 = L4_2.setText
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.floor
      L7_2 = A0_2.currentAmount
      L6_2 = L6_2(L7_2)
      L7_2 = ""
      L6_2 = L6_2 .. L7_2
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2.layout
      L4_2(L5_2)
      L4_2 = A0_2.prevParAmount
      if L4_2 then
        L4_2 = A0_2.currentAmount
        L5_2 = A0_2.prevParAmount
        L4_2 = L4_2 - L5_2
        L5_2 = A0_2.amountDiff
        L5_2 = L5_2 / 20
        if not (L4_2 > L5_2) then
          goto lbl_72
        end
        L4_2 = A0_2.coinImage
        L4_2 = L4_2.direction
        if L4_2 ~= "LEFT" then
          goto lbl_72
        end
      end
      L4_2 = g_showCoinParticles
      if L4_2 then
        L4_2 = gamelua
        L4_2 = L4_2.putMenuParticles
        L5_2 = {}
        L6_2 = A0_2.x
        L7_2 = A0_2.coinImage
        L7_2 = L7_2.x
        L6_2 = L6_2 + L7_2
        L7_2 = L3_2.x
        L6_2 = L6_2 + L7_2
        L5_2.x = L6_2
        L6_2 = A0_2.y
        L5_2.y = L6_2
        L5_2.particles = "lockOffEffect3"
        L4_2(L5_2)
      end
      L4_2 = A0_2.currentAmount
      A0_2.prevParAmount = L4_2
      ::lbl_72::
      L4_2 = A0_2.currentAmount
      L0_1 = L4_2
  end
  else
    A0_2.scale = 1
    L4_2 = A0_2.targetAmount
    A0_2.currentAmount = L4_2
    L4_2 = A0_2.currentAmount
    L0_1 = L4_2
    L4_2 = A0_2.coinAmount
    L5_2 = L4_2
    L4_2 = L4_2.setText
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.floor
    L7_2 = A0_2.currentAmount
    L6_2 = L6_2(L7_2)
    L7_2 = ""
    L6_2 = L6_2 .. L7_2
    L4_2(L5_2, L6_2)
    A0_2.amountDiff = 0
    L4_2 = A0_2.coinImage
    L5_2 = L4_2
    L4_2 = L4_2.stop
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.layout
    L4_2(L5_2)
    A0_2.counterTime = nil
    A0_2.startTime = 0
  end
  L5_2 = A0_2
  L4_2 = A0_2.setYOffset
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L1_1.update = L2_1
