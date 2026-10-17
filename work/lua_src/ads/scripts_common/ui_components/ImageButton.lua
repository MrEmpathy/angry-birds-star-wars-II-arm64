local L0_1, L1_1
L0_1 = Image
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ImageButton = L0_1
L0_1 = ImageButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.enabled = true
  L1_2 = A0_2.activateOnRelease
  if L1_2 == nil then
    A0_2.activateOnRelease = true
  end
  L1_2 = A0_2.physicsObject
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.setImage
    L3_2 = gamelua
    L3_2 = L3_2.objects
    L3_2 = L3_2.world
    L4_2 = A0_2.physicsObject
    L4_2 = L4_2.name
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.sprite
    L1_2(L2_2, L3_2)
  end
end

L0_1.init = L1_1
L0_1 = ImageButton

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.clickStarted = false
  L1_2 = Image
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ImageButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.enabled = A1_2
  if A1_2 then
    L2_2 = A0_2.enabledImage
    if L2_2 then
      L2_2 = Image
      L2_2 = L2_2.setImage
      L3_2 = A0_2
      L4_2 = A0_2.enabledImage
      L2_2(L3_2, L4_2)
  end
  elseif not A1_2 then
    L2_2 = A0_2.disabledImage
    if L2_2 then
      L2_2 = Image
      L2_2 = L2_2.setImage
      L3_2 = A0_2
      L4_2 = A0_2.disabledImage
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.setEnabled = L1_1
L0_1 = ImageButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Image
  L3_2 = L3_2.setImage
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  A0_2.enabledImage = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = A0_2.disabledImage
  end
  A0_2.disabledImage = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.setEnabled
  L5_2 = A0_2.enabled
  L3_2(L4_2, L5_2)
end

L0_1.setImage = L1_1
L0_1 = ImageButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.h
  L6_2 = A0_2.w
  L7_2 = A0_2.px
  L8_2 = A0_2.py
  L9_2 = A0_2.scaleX
  L10_2 = false
  L11_2 = A0_2.scaleX
  if 0 <= L11_2 then
    L11_2 = L7_2 * L9_2
    L11_2 = L3_2 - L11_2
    L10_2 = A1_2 >= L11_2
  else
    L11_2 = L6_2 - L7_2
    L12_2 = -L9_2
    L11_2 = L11_2 * L12_2
    L11_2 = L3_2 - L11_2
    L10_2 = A1_2 >= L11_2
  end
  if L10_2 then
    L11_2 = A0_2.scaleY
    L11_2 = L8_2 * L11_2
    L11_2 = L4_2 - L11_2
    if A2_2 >= L11_2 then
      L11_2 = L5_2 - L8_2
      L12_2 = A0_2.scaleY
      L11_2 = L11_2 * L12_2
      L11_2 = L4_2 + L11_2
      if A2_2 <= L11_2 then
        L11_2 = true
        return L11_2
      end
    end
  end
  L11_2 = false
  return L11_2
end

L0_1.hitTest = L1_1
L0_1 = ImageButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == "LRELEASE" then
    L4_2 = gamelua
    L4_2 = L4_2.menuManager
    L4_2 = L4_2.targetObject
    if L4_2 == A0_2 then
      L4_2 = gamelua
      L4_2 = L4_2.menuManager
      L4_2.targetObject = nil
    end
  end
  L4_2 = A0_2.activateOnRelease
  if L4_2 and A1_2 == "LPRESS" then
    L4_2 = A0_2.visible
    if L4_2 then
      L4_2 = A0_2.image
      if L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2.hitTest
        L6_2 = A2_2
        L7_2 = A3_2
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        if L4_2 then
          A0_2.clickStarted = true
          L4_2 = gamelua
          L4_2 = L4_2.menuManager
          L4_2.targetObject = A0_2
          L4_2 = -1
          return L4_2
        end
      end
    end
  end
  L4_2 = A0_2.activateOnRelease
  if L4_2 or A1_2 ~= "LPRESS" then
    L4_2 = A0_2.activateOnRelease
    if not L4_2 or A1_2 ~= "LRELEASE" then
      goto lbl_87
    end
  end
  L4_2 = A0_2.enabled
  if L4_2 == false then
    L4_2 = A0_2.disabledReturnValue
    if L4_2 == nil then
      goto lbl_87
    end
  end
  L4_2 = A0_2.image
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.hitTest
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      L4_2 = A0_2.clickStarted
      if not L4_2 then
        L4_2 = A0_2.activateOnRelease
        if L4_2 then
          goto lbl_86
        end
      end
      L4_2 = A0_2.clickSound
      if L4_2 then
        L4_2 = _G
        L4_2 = L4_2.res
        L4_2 = L4_2.playAudio
        L5_2 = A0_2.clickSound
        L4_2(L5_2)
      end
      L4_2 = A0_2.enabled
      if L4_2 then
        L4_2 = A0_2.returnValue
        L5_2 = A0_2.meta
        L6_2 = A0_2
        return L4_2, L5_2, L6_2
      else
        L4_2 = A0_2.disabledReturnValue
        L5_2 = A0_2.meta
        L6_2 = A0_2
        return L4_2, L5_2, L6_2
      end
    else
      ::lbl_86::
      A0_2.clickStarted = false
    end
  end
  ::lbl_87::
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  return L4_2, L5_2, L6_2
end

L0_1.handlePointerEvent = L1_1
L0_1 = ImageButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2
  L4_2 = A0_2.handlePointerEvent
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 ~= nil then
    L7_2 = L4_2
    L8_2 = L5_2
    L9_2 = L6_2
    return L7_2, L8_2, L9_2
  end
  L7_2 = Frame
  L7_2 = L7_2.onPointerEvent
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  return L7_2(L8_2, L9_2, L10_2, L11_2)
end

L0_1.onPointerEvent = L1_1
