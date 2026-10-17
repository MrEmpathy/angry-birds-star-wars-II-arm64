local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
AdButton = L0_1
L0_1 = AdButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = "AdButton"
  end
  A0_2.name = L1_2
  A0_2.enabled = true
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "adButton"
  L4_2 = A0_2.returnValue
  L3_2.returnValue = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.button = L1_2
  L1_2 = A0_2.button
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "levelCompletionRewardButton"
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.isDarkSide
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.button
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.RotatingCoin
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "rotatingCoin"
  L4_2 = A0_2.inGame
  L3_2.disableIncreaseAudio = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.coinImage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.coinImage
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
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bonusText = L1_2
  L1_2 = A0_2.bonusText
  L2_2 = L1_2
  L1_2 = L1_2.setText
  L3_2 = "BONUS"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.bonusText
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
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.rewardAmount = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.rewardAmount
  L1_2(L2_2, L3_2)
end

L0_1.init = L1_1
L0_1 = AdButton

function L1_1(A0_2, A1_2)
  A0_2.enabled = A1_2
end

L0_1.setEnabled = L1_1
L0_1 = AdButton

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.button
  L2_2.returnValue = A1_2
end

L0_1.setReturnValue = L1_1
L0_1 = AdButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 5
  L2_2 = ui
  L2_2 = L2_2.CarboniteAvailableAnimation
  L2_2 = L2_2.getData
  L2_2 = L2_2()
  L3_2 = L2_2.levelCompletionReward
  if L3_2 then
    L3_2 = L2_2.levelCompletionReward
    L1_2 = L3_2.amount
  end
  L3_2 = A0_2.rewardAmount
  L4_2 = L3_2
  L3_2 = L3_2.setText
  L5_2 = "+"
  L6_2 = L1_2
  L7_2 = "X"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onEntry
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.onEntry = L1_1
L0_1 = AdButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.coinImage
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = AdButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
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

L0_1.onPointerEvent = L1_1
L0_1 = AdButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.button
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.bonusText
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = A1_2 * 3
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.coinImage
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = A1_2 * 3
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.rewardAmount
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = A1_2 * 5
  L2_2(L3_2, L4_2)
end

L0_1.setScale = L1_1
L0_1 = AdButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = A0_2.button
  L3_2 = L3_2.w
  L4_2 = A0_2.button
  L4_2 = L4_2.h
  L5_2 = L3_2 * L1_2
  L6_2 = A0_2.button
  L6_2 = L6_2.scaleX
  L5_2 = L5_2 * L6_2
  L6_2 = L4_2 * L1_2
  L7_2 = A0_2.button
  L7_2 = L7_2.scaleY
  L4_2 = L6_2 * L7_2
  L3_2 = L5_2
  L5_2 = 6 * L1_2
  L6_2 = A0_2.bonusText
  L7_2 = A0_2.button
  L7_2 = L7_2.y
  L7_2 = L7_2 + L5_2
  L6_2.y = L7_2
  L6_2 = A0_2.rewardAmount
  L7_2 = A0_2.button
  L7_2 = L7_2.x
  L8_2 = L5_2 * 4
  L7_2 = L7_2 - L8_2
  L6_2.x = L7_2
  L6_2 = A0_2.rewardAmount
  L7_2 = A0_2.button
  L7_2 = L7_2.y
  L8_2 = L5_2 * 6
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getStringWidth
  L7_2 = A0_2.rewardAmount
  L7_2 = L7_2.text
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L2_2
  L7_2 = A0_2.coinImage
  L8_2 = A0_2.rewardAmount
  L8_2 = L8_2.x
  L8_2 = L8_2 + L6_2
  L8_2 = L8_2 + L5_2
  L7_2.x = L8_2
  L7_2 = A0_2.coinImage
  L8_2 = A0_2.rewardAmount
  L8_2 = L8_2.y
  L7_2.y = L8_2
end

L0_1.layout = L1_1
L0_1 = AdButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = AdButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = AdButton

function L1_1(A0_2, A1_2)
  A0_2.visible = A1_2
end

L0_1.setVisible = L1_1
