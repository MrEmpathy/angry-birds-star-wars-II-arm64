local L0_1, L1_1
L0_1 = Image
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ScallableButton = L0_1
L0_1 = ScallableButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.enabled = true
  A0_2.minScale = 1
  A0_2.maxScale = 1.1
  L1_2 = A0_2.clickSound
  if not L1_2 then
    L1_2 = "ButtonProceed"
  end
  A0_2.clickSound = L1_2
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
    L1_2 = 1
    A0_2.scaleY = 1
    A0_2.scaleX = L1_2
  end
end

L0_1.init = L1_1
L0_1 = ScallableButton

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.clickStarted = false
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L1_2 = L1_2 * L2_2
  L1_2 = L1_2 * 0.005
  A0_2.dragTreshold = L1_2
  L1_2 = Image
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ScallableButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L1_2 = L1_2 * L2_2
  L1_2 = L1_2 * 0.005
  A0_2.dragTreshold = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.layout
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L0_1.layout = L1_1
L0_1 = ScallableButton

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
      A0_2.clickStarted = false
      L2_2 = gamelua
      L2_2 = L2_2.menuManager
      L2_2 = L2_2.targetObject
      if L2_2 == A0_2 then
        L2_2 = gamelua
        L2_2 = L2_2.menuManager
        L2_2.targetObject = nil
      end
    end
  end
end

L0_1.setEnabled = L1_1
L0_1 = ScallableButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Image
  L3_2 = L3_2.setImage
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  A0_2.enabledImage = A1_2
  A0_2.disabledImage = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.setEnabled
  L5_2 = A0_2.enabled
  L3_2(L4_2, L5_2)
end

L0_1.setImage = L1_1
L0_1 = ScallableButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.h
  L6_2 = A0_2.w
  L7_2 = A0_2.px
  L8_2 = A0_2.py
  L9_2 = 0
  L10_2 = 0
  L11_2 = A0_2.inWorld
  if L11_2 then
    L11_2 = A0_2.hitAreaScale
    if not L11_2 then
      L11_2 = 1
    end
    L12_2 = A0_2.physicsObject
    if L12_2 then
      L12_2 = gamelua
      L12_2 = L12_2.blockTable
      L12_2 = L12_2.blocks
      L13_2 = A0_2.physicsObject
      L13_2 = L13_2.definition
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.scale
      if L12_2 then
        goto lbl_29
      end
    end
    L12_2 = 1
    ::lbl_29::
    L13_2 = A0_2.scaleX
    L14_2 = gamelua
    L14_2 = L14_2.worldScale
    L13_2 = L13_2 * L14_2
    L13_2 = L13_2 * L12_2
    L14_2 = A0_2.hitAreaScaleX
    if not L14_2 then
      L14_2 = L11_2
    end
    L9_2 = L13_2 * L14_2
    L13_2 = A0_2.scaleY
    L14_2 = gamelua
    L14_2 = L14_2.worldScale
    L13_2 = L13_2 * L14_2
    L13_2 = L13_2 * L12_2
    L14_2 = A0_2.hitAreaScaleY
    if not L14_2 then
      L14_2 = L11_2
    end
    L10_2 = L13_2 * L14_2
  else
    L11_2 = A0_2.hitAreaScale
    if not L11_2 then
      L11_2 = 1
    end
    L12_2 = A0_2.scaleX
    L13_2 = A0_2.hitAreaScaleX
    if not L13_2 then
      L13_2 = L11_2
    end
    L9_2 = L12_2 * L13_2
    L12_2 = A0_2.scaleY
    L13_2 = A0_2.hitAreaScaleY
    if not L13_2 then
      L13_2 = L11_2
    end
    L10_2 = L12_2 * L13_2
  end
  L11_2 = false
  L12_2 = A0_2.scaleX
  if 0 <= L12_2 then
    L12_2 = L7_2 * L9_2
    L12_2 = L3_2 - L12_2
    L11_2 = A1_2 >= L12_2
  else
    L12_2 = L6_2 - L7_2
    L13_2 = -L9_2
    L12_2 = L12_2 * L13_2
    L12_2 = L3_2 - L12_2
    L11_2 = A1_2 >= L12_2
  end
  if L11_2 then
    L12_2 = L8_2 * L10_2
    L12_2 = L4_2 - L12_2
    if A2_2 >= L12_2 then
      L12_2 = L5_2 - L8_2
      L12_2 = L12_2 * L10_2
      L12_2 = L4_2 + L12_2
      if A2_2 <= L12_2 then
        L12_2 = true
        return L12_2
      end
    end
  end
  L12_2 = false
  return L12_2
end

L0_1.hitTest = L1_1
L0_1 = ScallableButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.hitTest
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.cursorInside = L4_2
  L4_2 = A0_2.cursorInside
  if not L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.menuManager
    L4_2 = L4_2.targetObject
    if L4_2 == A0_2 then
      L4_2 = A0_2.clickStarted
      if not L4_2 then
        L4_2 = gamelua
        L4_2 = L4_2.menuManager
        L4_2.targetObject = nil
      end
    end
  end
  L4_2 = A0_2.activateOnRelease
  if L4_2 and A1_2 == "LHOLD" then
    L4_2 = gamelua
    L4_2 = L4_2.menuManager
    L4_2 = L4_2.targetObject
    if L4_2 == nil then
      L4_2 = A0_2.refuseDragTargetting
      if L4_2 == true then
        L4_2 = A0_2.cursorInside
        if L4_2 then
          L4_2 = -2
          L5_2 = "REFUSED_DRAG_TARGETTING"
          return L4_2, L5_2
        end
      end
    end
  end
  L4_2 = gamelua
  L4_2 = L4_2.menuManager
  if L4_2 ~= nil then
    L4_2 = gamelua
    L4_2 = L4_2.menuManager
    L4_2 = L4_2.targetObject
    if L4_2 ~= nil then
      L4_2 = gamelua
      L4_2 = L4_2.menuManager
      L4_2 = L4_2.targetObject
      if L4_2 ~= A0_2 then
        return
      end
    end
  end
  L4_2 = A0_2.enabled
  if not L4_2 then
    L4_2 = A0_2.cursorInside
    if L4_2 then
      L4_2 = "BLOCK_EVENT"
      return L4_2
    else
      return
    end
  end
  L4_2 = A0_2.activateOnRelease
  if L4_2 and (A1_2 == "LPRESS" or A1_2 == "HOVER") then
    L4_2 = A0_2.visible
    if L4_2 then
      L4_2 = A0_2.image
      if L4_2 then
        L4_2 = A0_2.cursorInside
        if L4_2 then
          A0_2.clickStarted = true
          if A1_2 == "LPRESS" then
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.x
            A0_2.dragStartX = L4_2
            L4_2 = gamelua
            L4_2 = L4_2.cursor
            L4_2 = L4_2.y
            A0_2.dragStartY = L4_2
            A0_2.dragInsideTreshold = true
          end
        end
      end
    end
  end
  L4_2 = A0_2.clickStarted
  if L4_2 then
    L4_2 = A0_2.cursorInside
    if L4_2 then
      L4_2 = A0_2.activateOnRelease
      if L4_2 and A1_2 ~= "LPRESS" then
        L4_2 = A0_2.dragStartX
        if L4_2 ~= nil then
          L4_2 = A0_2.dragStartY
          if L4_2 ~= nil then
            goto lbl_110
          end
        end
        do return end
        ::lbl_110::
        L4_2 = gamelua
        L4_2 = L4_2.cursor
        L4_2 = L4_2.x
        L5_2 = A0_2.dragStartX
        L4_2 = L4_2 - L5_2
        L5_2 = gamelua
        L5_2 = L5_2.cursor
        L5_2 = L5_2.y
        L6_2 = A0_2.dragStartY
        L5_2 = L5_2 - L6_2
        L6_2 = L4_2 * L4_2
        L7_2 = L5_2 * L5_2
        L6_2 = L6_2 + L7_2
        L7_2 = A0_2.dragTreshold
        if L6_2 > L7_2 then
          A0_2.dragInsideTreshold = false
          L7_2 = gamelua
          L7_2 = L7_2.menuManager
          if L7_2 ~= nil then
            L7_2 = gamelua
            L7_2 = L7_2.menuManager
            L7_2.targetObject = nil
          end
          L7_2 = nil
          return L7_2
        else
          L7_2 = gamelua
          L7_2 = L7_2.sweepSpeed
          if L7_2 ~= nil then
            L7_2 = _G
            L7_2 = L7_2.math
            L7_2 = L7_2.abs
            L8_2 = gamelua
            L8_2 = L8_2.sweepSpeed
            L7_2 = L7_2(L8_2)
            if not (L7_2 < 10) then
              goto lbl_157
            end
          end
          A0_2.dragInsideTreshold = true
          L7_2 = gamelua
          L7_2 = L7_2.menuManager
          if L7_2 ~= nil then
            L7_2 = gamelua
            L7_2 = L7_2.menuManager
            L7_2.targetObject = A0_2
          end
        end
      end
    end
  end
  ::lbl_157::
  L4_2 = A0_2.cursorInside
  if not L4_2 then
    L4_2 = A0_2.clickStarted
    if L4_2 then
      A0_2.clickStarted = false
    end
  end
  L4_2 = A0_2.activateOnRelease
  if L4_2 or A1_2 ~= "LPRESS" then
    L4_2 = A0_2.activateOnRelease
    if not L4_2 or A1_2 ~= "LRELEASE" then
      goto lbl_250
    end
  end
  L4_2 = A0_2.enabled
  if L4_2 == false then
    L4_2 = A0_2.disabledReturnValue
    if L4_2 == nil then
      goto lbl_250
    end
  end
  L4_2 = A0_2.image
  if L4_2 then
    L4_2 = A0_2.cursorInside
    if L4_2 then
      L4_2 = A0_2.clickStarted
      if not L4_2 then
        L4_2 = A0_2.activateOnRelease
        if L4_2 then
          goto lbl_241
        end
      end
      L4_2 = A0_2.dragInsideTreshold
      if L4_2 then
        A0_2.clickStarted = false
        L4_2 = A0_2.enabled
        if L4_2 then
          L4_2 = A0_2.disabled
          if not L4_2 then
            L4_2 = A0_2.clickSound
            if L4_2 then
              L4_2 = _G
              L4_2 = L4_2.res
              L4_2 = L4_2.playAudio
              L5_2 = A0_2.clickSound
              L4_2(L5_2)
          end
          else
            L4_2 = A0_2.disabled
            if L4_2 then
              L4_2 = A0_2.disabledClickSound
              if L4_2 then
                L4_2 = A0_2.disabledClickSound
                if L4_2 then
                  L4_2 = _G
                  L4_2 = L4_2.res
                  L4_2 = L4_2.playAudio
                  L5_2 = A0_2.disabledClickSound
                  L4_2(L5_2)
                end
              end
            end
          end
          L4_2 = gamelua
          L4_2 = L4_2.menuManager
          L4_2.targetObject = nil
          L4_2 = A0_2.returnValue
          L5_2 = A0_2.meta
          L6_2 = A0_2
          return L4_2, L5_2, L6_2
        else
          L4_2 = gamelua
          L4_2 = L4_2.menuManager
          L4_2.targetObject = nil
          L4_2 = A0_2.disabledReturnValue
          L5_2 = A0_2.meta
          L6_2 = A0_2
          return L4_2, L5_2, L6_2
        end
      end
    else
      ::lbl_241::
      A0_2.clickStarted = false
      L4_2 = Frame
      L4_2 = L4_2.onPointerEvent
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      L8_2 = A3_2
      return L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  ::lbl_250::
  L4_2 = A0_2.cursorInside
  if L4_2 and A1_2 ~= "WHEEL" then
    L4_2 = "BLOCK_EVENT"
    return L4_2
  end
  L4_2 = gamelua
  L4_2 = L4_2.menuManager
  if L4_2 ~= nil then
    L4_2 = gamelua
    L4_2 = L4_2.menuManager
    L4_2 = L4_2.targetObject
    if L4_2 == A0_2 then
      L4_2 = gamelua
      L4_2 = L4_2.menuManager
      L4_2.targetObject = nil
    end
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  return L4_2, L5_2, L6_2
end

L0_1.handlePointerEvent = L1_1
L0_1 = ScallableButton

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
L0_1 = ScallableButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.h
  L6_2 = A0_2.w
  L7_2 = A0_2.px
  L8_2 = A0_2.py
  L9_2 = A0_2.physicsObject
  if L9_2 then
    L9_2 = gamelua
    L9_2 = L9_2.blockTable
    L9_2 = L9_2.blocks
    L10_2 = A0_2.physicsObject
    L10_2 = L10_2.definition
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.scale
    if L9_2 then
      goto lbl_20
    end
  end
  L9_2 = 1
  ::lbl_20::
  L10_2 = A0_2.hitAreaScale
  if not L10_2 then
    L10_2 = 1
  end
  L11_2 = A0_2.scaleX
  L12_2 = gamelua
  L12_2 = L12_2.worldScale
  L11_2 = L11_2 * L12_2
  L11_2 = L11_2 * L9_2
  L12_2 = A0_2.hitAreaScaleX
  if not L12_2 then
    L12_2 = L10_2
  end
  L11_2 = L11_2 * L12_2
  L12_2 = A0_2.scaleY
  L13_2 = gamelua
  L13_2 = L13_2.worldScale
  L12_2 = L12_2 * L13_2
  L12_2 = L12_2 * L9_2
  L13_2 = A0_2.hitAreaScaleY
  if not L13_2 then
    L13_2 = L10_2
  end
  L12_2 = L12_2 * L13_2
  L13_2 = L7_2 * L11_2
  L13_2 = L3_2 - L13_2
  L14_2 = L6_2 - L7_2
  L14_2 = L14_2 * L11_2
  L14_2 = L3_2 + L14_2
  L15_2 = L8_2 * L12_2
  L15_2 = L4_2 - L15_2
  L16_2 = L5_2 - L8_2
  L16_2 = L16_2 * L12_2
  L16_2 = L4_2 + L16_2
  L17_2 = gamelua
  L17_2 = L17_2.drawRect
  L18_2 = 1
  L19_2 = 1
  L20_2 = 1
  L21_2 = 0.3
  L22_2 = L13_2
  L23_2 = L15_2
  L24_2 = L14_2
  L25_2 = L16_2
  L26_2 = true
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
end

L0_1.debugDraw = L1_1
L0_1 = ScallableButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Image
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = ScallableButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = gamelua
  L3_2 = L3_2.isPCVersion
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.deviceModel
    L3_2 = L3_2 == "roku"
  end
  L4_2 = A0_2.clickStarted
  if L4_2 then
    L4_2 = A0_2.cursorInside
    if L4_2 then
      L4_2 = A0_2.dragInsideTreshold
      if L4_2 or L3_2 then
        L4_2 = A0_2.scaleX
        L5_2 = A0_2.maxScale
        if L4_2 < L5_2 then
          L4_2 = _G
          L4_2 = L4_2.math
          L4_2 = L4_2.min
          L5_2 = A0_2.maxScale
          L6_2 = A0_2.scaleX
          L6_2 = L6_2 + A1_2
          L4_2 = L4_2(L5_2, L6_2)
          A0_2.scaleX = L4_2
          L4_2 = A0_2.scaleX
          A0_2.scaleY = L4_2
        end
    end
  end
  else
    L4_2 = A0_2.scaleX
    L5_2 = A0_2.minScale
    if L4_2 > L5_2 then
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.max
      L5_2 = A0_2.minScale
      L6_2 = A0_2.scaleX
      L6_2 = L6_2 - A1_2
      L4_2 = L4_2(L5_2, L6_2)
      A0_2.scaleX = L4_2
      L4_2 = A0_2.scaleX
      A0_2.scaleY = L4_2
    end
  end
  L4_2 = Image
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  A0_2.cursorInside = false
end

L0_1.update = L1_1
L0_1 = ScallableButton

function L1_1(A0_2, A1_2)
  local L2_2
  A0_2.scaleX = A1_2
  A0_2.scaleY = A1_2
  A0_2.minScale = A1_2
  L2_2 = A1_2 * 1.1
  A0_2.maxScale = L2_2
end

L0_1.setScale = L1_1
