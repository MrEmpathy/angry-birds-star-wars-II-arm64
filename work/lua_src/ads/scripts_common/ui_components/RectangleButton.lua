local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
RectangleButton = L0_1
L0_1 = RectangleButton

function L1_1(A0_2)
  local L1_2
  A0_2.enabled = true
  L1_2 = A0_2.pivotX
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.pivotX = L1_2
  L1_2 = A0_2.pivotY
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.pivotY = L1_2
  L1_2 = A0_2.w
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.w = L1_2
  L1_2 = A0_2.h
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.h = L1_2
  L1_2 = A0_2.r
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.r = L1_2
  L1_2 = A0_2.g
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.g = L1_2
  L1_2 = A0_2.b
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.b = L1_2
  L1_2 = A0_2.a
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.a = L1_2
end

L0_1.init = L1_1
L0_1 = RectangleButton

function L1_1(A0_2)
  local L1_2
  A0_2.clickStarted = false
end

L0_1.onEntry = L1_1
L0_1 = RectangleButton

function L1_1(A0_2, A1_2)
  A0_2.enabled = A1_2
end

L0_1.setEnabled = L1_1
L0_1 = RectangleButton

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L6_2 = A0_2.visible
  if L6_2 == true then
    L6_2 = A1_2 or L6_2
    if not A1_2 then
      L6_2 = 0
    end
    L7_2 = A2_2 or L7_2
    if not A2_2 then
      L7_2 = 0
    end
    L8_2 = A3_2 or L8_2
    if not A3_2 then
      L8_2 = 1
    end
    L9_2 = A4_2 or L9_2
    if not A4_2 then
      L9_2 = 1
    end
    L10_2 = A5_2 or L10_2
    if not A5_2 then
      L10_2 = 0
    end
    L11_2 = A0_2.scaleX
    L11_2 = L8_2 * L11_2
    L12_2 = A0_2.scaleY
    L12_2 = L9_2 * L12_2
    L13_2 = A0_2.x
    L13_2 = L13_2 * L8_2
    L13_2 = L6_2 + L13_2
    L14_2 = A0_2.y
    L14_2 = L14_2 * L9_2
    L14_2 = L7_2 + L14_2
    L15_2 = A0_2.angle
    L15_2 = L10_2 + L15_2
    L16_2 = A0_2.pivotX
    if not L16_2 then
      L16_2 = px
    end
    L17_2 = A0_2.pivotY
    if not L17_2 then
      L17_2 = py
    end
    py = L17_2
    px = L16_2
    L16_2 = A0_2.rotatePivotX
    if not L16_2 then
      L16_2 = px
    end
    L17_2 = A0_2.rotatePivotY
    if not L17_2 then
      L17_2 = py
    end
    L18_2 = A0_2.floorCoordinates
    if L18_2 then
      L18_2 = _G
      L18_2 = L18_2.math
      L18_2 = L18_2.floor
      L19_2 = L13_2
      L18_2 = L18_2(L19_2)
      L13_2 = L18_2
      L18_2 = _G
      L18_2 = L18_2.math
      L18_2 = L18_2.floor
      L19_2 = L14_2
      L18_2 = L18_2(L19_2)
      L14_2 = L18_2
    end
    L18_2 = gamelua
    L18_2 = L18_2.setRenderState
    L19_2 = L13_2 / L11_2
    L20_2 = L14_2 / L12_2
    L21_2 = L11_2
    L22_2 = L12_2
    L23_2 = L15_2
    L24_2 = L16_2
    L25_2 = L17_2
    L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L18_2 = gamelua
    L18_2 = L18_2.drawRect
    L19_2 = A0_2.r
    L20_2 = A0_2.g
    L21_2 = A0_2.b
    L22_2 = A0_2.a
    L23_2 = 0
    L24_2 = 0
    L25_2 = A0_2.w
    L26_2 = A0_2.h
    L27_2 = true
    L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L18_2 = Frame
    L18_2 = L18_2.draw
    L19_2 = A0_2
    L20_2 = L6_2
    L21_2 = L7_2
    L22_2 = L8_2
    L23_2 = L9_2
    L24_2 = L10_2
    L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  end
end

L0_1.draw = L1_1
L0_1 = RectangleButton

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
L0_1 = RectangleButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A0_2.activateOnRelease
  if L4_2 or A1_2 ~= "LPRESS" then
    L4_2 = A0_2.activateOnRelease
    if not L4_2 or A1_2 ~= "LRELEASE" then
      goto lbl_63
    end
  end
  L4_2 = A0_2.enabled
  if L4_2 ~= false then
    L4_2 = A0_2.w
    L5_2 = A0_2.h
    L6_2 = A0_2.pivotX
    L7_2 = A0_2.pivotY
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
      return L10_2, L11_2, L12_2
    end
  end
  ::lbl_63::
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
L0_1 = RectangleButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.w
  L4_2 = A0_2.h
  L5_2 = A0_2.pivotX
  L6_2 = A0_2.pivotY
  L7_2 = A0_2.scaleX
  if not L7_2 then
    L7_2 = 1
  end
  L8_2 = A0_2.scaleY
  if not L8_2 then
    L8_2 = 1
  end
  L9_2 = A0_2.x
  L10_2 = L5_2 * L7_2
  L9_2 = L9_2 - L10_2
  L9_2 = A1_2 >= L9_2
  return L9_2
end

L0_1.checkCollision = L1_1
