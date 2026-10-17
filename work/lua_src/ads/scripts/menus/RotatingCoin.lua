local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
RotatingCoin = L0_1
L0_1 = RotatingCoin

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = "COIN_1"
  L3_2 = "COIN_2"
  L4_2 = "COIN_3"
  L5_2 = "COIN_4"
  L6_2 = "COIN_5"
  L7_2 = "COIN_6"
  L8_2 = "COIN_7"
  L9_2 = "COIN_8"
  L10_2 = "COIN_9"
  L11_2 = "COIN_10"
  L12_2 = "COIN_11"
  L13_2 = "COIN_12"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L1_2[11] = L12_2
  L1_2[12] = L13_2
  A0_2.coinSprites = L1_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = "COIN_1"
  L1_2, L2_2 = L1_2(L2_2)
  A0_2.h = L2_2
  A0_2.w = L1_2
end

L0_1.init = L1_1
L0_1 = RotatingCoin

function L1_1(A0_2)
  local L1_2
  A0_2.currentSprite = "COIN_1"
  A0_2.currentSpriteIdx = 1
  A0_2.timeCounter = 0
  A0_2.targetSpeed = 2
  A0_2.acceleration = 1
  L1_2 = A0_2.acceleration
  A0_2.speed = L1_2
  A0_2.isStopped = true
  A0_2.direction = "LEFT"
end

L0_1.onEntry = L1_1
L0_1 = RotatingCoin

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.disableIncreaseAudio
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.stopAudio
    L2_2 = "coin_counter_loop_up"
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "coin_counter_loop_down"
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = RotatingCoin

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.disableIncreaseAudio
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.stopAudio
    L3_2 = "coin_counter_loop_up"
    L2_2(L3_2)
    L2_2 = gamelua
    L2_2 = L2_2.stopAudio
    L3_2 = "coin_counter_loop_down"
    L2_2(L3_2)
    if A1_2 == "LEFT" then
      L2_2 = gamelua
      L2_2 = L2_2.playAudio
      L3_2 = "coin_counter_loop_up"
      L2_2(L3_2)
    end
  end
  if A1_2 == "RIGHT" then
    L2_2 = gamelua
    L2_2 = L2_2.playAudio
    L3_2 = "coin_counter_loop_down"
    L2_2(L3_2)
  end
  A0_2.currentSprite = "COIN_1"
  A0_2.currentSpriteIdx = 1
  A0_2.timeCounter = 0
  L2_2 = A0_2.targetSpeed
  A0_2.speed = L2_2
  A0_2.direction = A1_2
  A0_2.isStopped = false
end

L0_1.start = L1_1
L0_1 = RotatingCoin

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.disableIncreaseAudio
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.stopAudio
    L2_2 = "coin_counter_loop_up"
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "coin_counter_loop_down"
  L1_2(L2_2)
  A0_2.currentSprite = "COIN_1"
  A0_2.currentSpriteIdx = 1
  A0_2.timeCounter = 0
  A0_2.speed = 0
  A0_2.isStopped = true
end

L0_1.stop = L1_1
L0_1 = RotatingCoin

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.direction
  if L2_2 ~= "LEFT" or not A1_2 then
    A1_2 = -A1_2
  end
  L2_2 = A0_2.currentSpriteIdx
  L2_2 = L2_2 + A1_2
  L3_2 = A0_2.coinSprites
  L3_2 = #L3_2
  L2_2 = L2_2 % L3_2
  A0_2.currentSpriteIdx = L2_2
  L2_2 = A0_2.coinSprites
  L3_2 = A0_2.currentSpriteIdx
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  A0_2.currentSprite = L2_2
end

L0_1.nextSprite = L1_1
L0_1 = RotatingCoin

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.isStopped
  if not L3_2 then
    L3_2 = A0_2.timeCounter
    L3_2 = L3_2 + A1_2
    A0_2.timeCounter = L3_2
    L3_2 = A0_2.speed
    L4_2 = A0_2.targetSpeed
    if L3_2 < L4_2 then
      L3_2 = A0_2.speed
      L4_2 = A0_2.acceleration
      L4_2 = L4_2 * A1_2
      L3_2 = L3_2 + L4_2
      A0_2.speed = L3_2
    end
    L3_2 = A0_2.speed
    L3_2 = 1 / L3_2
    L4_2 = A0_2.coinSprites
    L4_2 = #L4_2
    L3_2 = L3_2 / L4_2
    L4_2 = A0_2.timeCounter
    if L3_2 <= L4_2 then
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.floor
      L5_2 = A0_2.timeCounter
      L5_2 = L5_2 / L3_2
      L5_2 = L5_2 + 0.5
      L4_2 = L4_2(L5_2)
      L6_2 = A0_2
      L5_2 = A0_2.nextSprite
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      A0_2.timeCounter = 0
    end
  end
end

L0_1.update = L1_1
L0_1 = RotatingCoin

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpritePivot
  L4_2 = A0_2.currentSprite
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = A0_2.currentSprite
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = gamelua
  L7_2 = L7_2.setRenderState
  L8_2 = A0_2.x
  L8_2 = A1_2 + L8_2
  L9_2 = A0_2.scaleX
  L8_2 = L8_2 / L9_2
  L9_2 = A0_2.y
  L9_2 = A2_2 + L9_2
  L10_2 = A0_2.scaleY
  L9_2 = L9_2 / L10_2
  L10_2 = A0_2.scaleX
  L11_2 = A0_2.scaleY
  L12_2 = 0
  L13_2 = L3_2
  L14_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.drawSprite
  L8_2 = ""
  L9_2 = A0_2.currentSprite
  L10_2 = 0
  L11_2 = 0
  L12_2 = "HPIVOT"
  L13_2 = "VPIVOT"
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.floor
  L15_2 = L5_2
  L14_2 = L14_2(L15_2)
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.floor
  L16_2 = L6_2
  L15_2, L16_2 = L15_2(L16_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end

L0_1.draw = L1_1
