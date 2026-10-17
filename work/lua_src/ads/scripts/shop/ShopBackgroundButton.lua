local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.RectangleButton
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ShopBackgroundButton = L0_1
L0_1 = ShopBackgroundButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
      if A1_2 == "LPRESS" then
        A0_2.pressHandled = true
        L10_2 = gamelua
        L10_2 = L10_2.cursor
        L10_2 = L10_2.x
        A0_2.dragStartX = L10_2
        L10_2 = gamelua
        L10_2 = L10_2.cursor
        L10_2 = L10_2.y
        A0_2.dragStartY = L10_2
      elseif A1_2 == "LRELEASE" then
        L10_2 = A0_2.pressHandled
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
      elseif A1_2 == "LHOLD" then
        L10_2 = A0_2.dragStartX
        if L10_2 then
          L10_2 = A0_2.dragStartY
          if L10_2 then
            L10_2 = gamelua
            L10_2 = L10_2.cursor
            L10_2 = L10_2.x
            L11_2 = A0_2.dragStartX
            L10_2 = L10_2 - L11_2
            L11_2 = gamelua
            L11_2 = L11_2.cursor
            L11_2 = L11_2.y
            L12_2 = A0_2.dragStartY
            L11_2 = L11_2 - L12_2
            L12_2 = L10_2 * L10_2
            L13_2 = L11_2 * L11_2
            L12_2 = L12_2 + L13_2
            L13_2 = A0_2.dragTreshold
            L14_2 = gamelua
            L14_2 = L14_2.getUIScale
            L14_2 = L14_2()
            L13_2 = L13_2 * L14_2
            if L12_2 > L13_2 then
              A0_2.pressHandled = false
              A0_2.dragStartX = nil
              A0_2.dragStartY = nil
            end
          end
        end
      end
    elseif A1_2 == "LRELEASE" then
      A0_2.pressHandled = false
    end
  end
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
