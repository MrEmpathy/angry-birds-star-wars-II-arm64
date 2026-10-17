local L0_1, L1_1
L0_1 = ScallableButton
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
StaticButton = L0_1
L0_1 = StaticButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ImageButton
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = StaticButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A1_2 ~= "LPRESS" and A1_2 ~= "LRELEASE" then
    if A1_2 ~= "LHOLD" then
      goto lbl_78
    end
    L4_2 = A0_2.enabled
    if L4_2 == false then
      goto lbl_78
    end
  end
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = A0_2.image
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getSpritePivot
  L7_2 = A0_2.image
  L6_2, L7_2 = L6_2(L7_2)
  L8_2 = 1
  worldScale = L8_2
  L8_2 = A0_2.scaleX
  if not L8_2 then
    L8_2 = 1
  end
  L9_2 = A0_2.scaleY
  if not L9_2 then
    L9_2 = 1
  end
  L11_2 = A0_2
  L10_2 = A0_2.checkCollision
  L12_2 = A2_2
  L13_2 = A3_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  if L10_2 then
    L10_2 = A0_2.activateOnRelease
    if L10_2 or A1_2 ~= "LPRESS" then
      L10_2 = A0_2.activateOnRelease
      if not L10_2 or A1_2 ~= "LRELEASE" then
        goto lbl_76
      end
    end
    L10_2 = A0_2.sound
    if L10_2 ~= nil then
      L10_2 = _G
      L10_2 = L10_2.res
      L10_2 = L10_2.playAudio
      L11_2 = A0_2.sound
      L10_2(L11_2)
    else
      L10_2 = A0_2.soundTable
      if L10_2 ~= nil then
        L10_2 = _G
        L10_2 = L10_2.res
        L10_2 = L10_2.playAudio
        L11_2 = A0_2.soundTable
        L12_2 = _G
        L12_2 = L12_2.math
        L12_2 = L12_2.random
        L13_2 = 1
        L14_2 = A0_2.soundTable
        L14_2 = #L14_2
        L12_2 = L12_2(L13_2, L14_2)
        L11_2 = L11_2[L12_2]
        L10_2(L11_2)
      end
    end
    L10_2 = A0_2.returnValue
    L11_2 = A0_2.meta
    L12_2 = A0_2
    do return L10_2, L11_2, L12_2 end
    goto lbl_78
    ::lbl_76::
    L10_2 = -1
    return L10_2
  end
  ::lbl_78::
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
