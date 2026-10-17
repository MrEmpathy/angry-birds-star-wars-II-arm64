local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
InvisibleButton = L0_1
L0_1 = InvisibleButton

function L1_1(A0_2)
  local L1_2
  A0_2.width = 0
  A0_2.height = 0
  A0_2.x = 0
  A0_2.y = 0
  A0_2.scaleX = 1
  A0_2.scaleY = 1
  A0_2.started = false
  A0_2.debug = false
end

L0_1.init = L1_1
L0_1 = InvisibleButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.clickThreshold
  if L3_2 then
    L3_2 = A0_2.startClick
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.sqrt
      L4_2 = A0_2.startClick
      L4_2 = L4_2[1]
      L4_2 = L4_2 - A1_2
      L4_2 = L4_2 ^ 2
      L5_2 = A0_2.startClick
      L5_2 = L5_2[2]
      L5_2 = L5_2 - A2_2
      L5_2 = L5_2 ^ 2
      L4_2 = L4_2 + L5_2
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2.clickThreshold
      if L3_2 < L4_2 then
        L4_2 = true
        return L4_2
      else
        L4_2 = false
        return L4_2
      end
    end
  end
  L3_2 = true
  return L3_2
end

L0_1.checkStartClick = L1_1
L0_1 = InvisibleButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 ~= "LPRESS" and A1_2 ~= "LRELEASE" then
    if A1_2 ~= "LHOLD" then
      goto lbl_95
    end
    L4_2 = A0_2.enabled
    if L4_2 == false then
      goto lbl_95
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.checkCollision
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    if A1_2 == "LPRESS" then
      A0_2.started = true
      L4_2 = {}
      L5_2 = A2_2
      L6_2 = A3_2
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      A0_2.startClick = L4_2
    end
    L5_2 = A0_2
    L4_2 = A0_2.checkStartClick
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if not L4_2 then
      A0_2.started = false
      A0_2.startClick = nil
    end
    L4_2 = A0_2.activateOnRelease
    if L4_2 or A1_2 ~= "LPRESS" then
      L4_2 = A0_2.activateOnRelease
      if not L4_2 or A1_2 ~= "LRELEASE" then
        goto lbl_75
      end
    end
    L4_2 = A0_2.started
    if L4_2 then
      L4_2 = A0_2.sound
      if L4_2 ~= nil then
        L4_2 = _G
        L4_2 = L4_2.res
        L4_2 = L4_2.playAudio
        L5_2 = A0_2.sound
        L4_2(L5_2)
      else
        L4_2 = A0_2.soundTable
        if L4_2 ~= nil then
          L4_2 = _G
          L4_2 = L4_2.res
          L4_2 = L4_2.playAudio
          L5_2 = A0_2.soundTable
          L6_2 = _G
          L6_2 = L6_2.math
          L6_2 = L6_2.random
          L7_2 = 1
          L8_2 = A0_2.soundTable
          L8_2 = #L8_2
          L6_2 = L6_2(L7_2, L8_2)
          L5_2 = L5_2[L6_2]
          L4_2(L5_2)
        end
      end
      L4_2 = A0_2.returnValue
      L5_2 = A0_2.meta
      L6_2 = A0_2
      return L4_2, L5_2, L6_2
    else
      ::lbl_75::
      if A1_2 == "LHOLD" or A1_2 == "LPRESS" then
        L4_2 = A0_2.passNonActivationEvents
        if L4_2 then
          L4_2 = Frame
          L4_2 = L4_2.onPointerEvent
          L5_2 = A0_2
          L6_2 = A1_2
          L7_2 = A2_2
          L8_2 = A3_2
          return L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      else
        L4_2 = "BLOCK_EVENT"
        return L4_2
      end
    end
  else
    A0_2.started = false
  end
  ::lbl_95::
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
L0_1 = InvisibleButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.width
  L3_2 = L3_2 * 0.5
  L4_2 = A0_2.height
  L4_2 = L4_2 * 0.5
  L5_2 = A0_2.scaleX
  if not L5_2 then
    L5_2 = 1
  end
  L6_2 = A0_2.scaleY
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = A0_2.x
  L8_2 = L3_2 * L5_2
  L7_2 = L7_2 - L8_2
  L7_2 = A1_2 >= L7_2
  return L7_2
end

L0_1.checkCollision = L1_1
L0_1 = InvisibleButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = InvisibleButton

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = A0_2.debug
  if L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.drawRect
    L7_2 = 1
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0.5
    L11_2 = A0_2.x
    L11_2 = L11_2 + A1_2
    L12_2 = A0_2.width
    L12_2 = L12_2 * 0.5
    L11_2 = L11_2 - L12_2
    L12_2 = A0_2.y
    L12_2 = L12_2 + A2_2
    L13_2 = A0_2.height
    L13_2 = L13_2 * 0.5
    L12_2 = L12_2 - L13_2
    L13_2 = A0_2.x
    L13_2 = L13_2 + A1_2
    L14_2 = A0_2.width
    L14_2 = L14_2 * 0.5
    L13_2 = L13_2 + L14_2
    L14_2 = A0_2.y
    L14_2 = L14_2 + A2_2
    L15_2 = A0_2.height
    L15_2 = L15_2 * 0.5
    L14_2 = L14_2 + L15_2
    L15_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  return
end

L0_1.draw = L1_1
