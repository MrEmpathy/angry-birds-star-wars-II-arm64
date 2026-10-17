local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
TriangleInvisibleButton = L0_1
L0_1 = TriangleInvisibleButton

function L1_1(A0_2)
  local L1_2
  A0_2.width = 0
  A0_2.height = 0
  A0_2.x = 0
  A0_2.y = 0
  A0_2.scaleX = 1
  A0_2.scaleY = 1
end

L0_1.init = L1_1
L0_1 = TriangleInvisibleButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.checkCollision
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.leftSide = L5_2
  A0_2.cursorInside = L4_2
  if A1_2 == "LPRESS" or A1_2 == "HOVER" then
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
  L4_2 = A0_2.clickStarted
  if L4_2 then
    L4_2 = A0_2.cursorInside
    if L4_2 and A1_2 ~= "LPRESS" then
      L4_2 = A0_2.dragStartX
      if L4_2 ~= nil then
        L4_2 = A0_2.dragStartY
        if L4_2 ~= nil then
          goto lbl_41
        end
      end
      do return end
      ::lbl_41::
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
            goto lbl_74
          end
        end
        A0_2.dragInsideTreshold = true
      end
    end
  end
  ::lbl_74::
  L4_2 = A0_2.cursorInside
  if not L4_2 then
    L4_2 = A0_2.clickStarted
    if L4_2 then
      A0_2.clickStarted = false
    end
  end
  if A1_2 == "LRELEASE" then
    L4_2 = A0_2.enabled
    if L4_2 ~= false then
      L4_2 = A0_2.cursorInside
      if L4_2 then
        L4_2 = A0_2.clickStarted
        if L4_2 then
          L4_2 = A0_2.dragInsideTreshold
          if L4_2 then
            A0_2.clickStarted = false
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
            L4_2 = A0_2.leftSide
            if L4_2 then
              L4_2 = A0_2.leftMissingStars
              A0_2.missingStars = L4_2
              L4_2 = A0_2.leftReturnValue
              L5_2 = A0_2.meta
              L6_2 = A0_2
              return L4_2, L5_2, L6_2
            else
              L4_2 = A0_2.rightMissingStars
              A0_2.missingStars = L4_2
              L4_2 = A0_2.rightReturnValue
              L5_2 = A0_2.meta
              L6_2 = A0_2
              return L4_2, L5_2, L6_2
            end
          else
            L4_2 = -1
            return L4_2
          end
      end
      else
        A0_2.clickStarted = false
      end
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
L0_1 = TriangleInvisibleButton

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
end

L0_1.onEntry = L1_1
L0_1 = TriangleInvisibleButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L1_2 = L1_2 * L2_2
  L1_2 = L1_2 * 0.005
  A0_2.dragTreshold = L1_2
end

L0_1.layout = L1_1
L0_1 = TriangleInvisibleButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
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
  if A1_2 >= L7_2 then
    L7_2 = A0_2.x
    L8_2 = A0_2.width
    L8_2 = L8_2 - L3_2
    L8_2 = L8_2 * L5_2
    L7_2 = L7_2 + L8_2
    if A1_2 <= L7_2 then
      L7_2 = A0_2.y
      L8_2 = L4_2 * L6_2
      L7_2 = L7_2 - L8_2
      if A2_2 >= L7_2 then
        L7_2 = A0_2.y
        L8_2 = A0_2.height
        L8_2 = L8_2 - L4_2
        L8_2 = L8_2 * L6_2
        L7_2 = L7_2 + L8_2
        if A2_2 <= L7_2 then
          L7_2 = {}
          L8_2 = A0_2.x
          L9_2 = A0_2.width
          L9_2 = L9_2 - L3_2
          L9_2 = L9_2 * L5_2
          L8_2 = L8_2 + L9_2
          L9_2 = A0_2.x
          L10_2 = L3_2 * L5_2
          L9_2 = L9_2 - L10_2
          L8_2 = L8_2 - L9_2
          L7_2.x = L8_2
          L7_2.y = 0
          L8_2 = {}
          L9_2 = A0_2.x
          L10_2 = A0_2.width
          L10_2 = L10_2 - L3_2
          L10_2 = L10_2 * L5_2
          L9_2 = L9_2 + L10_2
          L10_2 = A0_2.x
          L11_2 = L3_2 * L5_2
          L10_2 = L10_2 - L11_2
          L9_2 = L9_2 - L10_2
          L8_2.x = L9_2
          L9_2 = A0_2.y
          L10_2 = L4_2 * L6_2
          L9_2 = L9_2 - L10_2
          L10_2 = A0_2.y
          L11_2 = A0_2.height
          L11_2 = L11_2 - L4_2
          L11_2 = L11_2 * L6_2
          L10_2 = L10_2 + L11_2
          L9_2 = L9_2 - L10_2
          L8_2.y = L9_2
          L9_2 = {}
          L10_2 = A0_2.x
          L11_2 = L3_2 * L5_2
          L10_2 = L10_2 - L11_2
          L10_2 = A1_2 - L10_2
          L9_2.x = L10_2
          L10_2 = A0_2.y
          L11_2 = A0_2.height
          L11_2 = L11_2 - L4_2
          L11_2 = L11_2 * L6_2
          L10_2 = L10_2 + L11_2
          L10_2 = A2_2 - L10_2
          L9_2.y = L10_2
          L10_2 = gamelua
          L10_2 = L10_2.dotProduct
          L11_2 = L7_2.x
          L12_2 = L7_2.y
          L13_2 = L7_2.x
          L14_2 = L7_2.y
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          L11_2 = gamelua
          L11_2 = L11_2.dotProduct
          L12_2 = L7_2.x
          L13_2 = L7_2.y
          L14_2 = L8_2.x
          L15_2 = L8_2.y
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L12_2 = gamelua
          L12_2 = L12_2.dotProduct
          L13_2 = L7_2.x
          L14_2 = L7_2.y
          L15_2 = L9_2.x
          L16_2 = L9_2.y
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
          L13_2 = gamelua
          L13_2 = L13_2.dotProduct
          L14_2 = L8_2.x
          L15_2 = L8_2.y
          L16_2 = L8_2.x
          L17_2 = L8_2.y
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
          L14_2 = gamelua
          L14_2 = L14_2.dotProduct
          L15_2 = L8_2.x
          L16_2 = L8_2.y
          L17_2 = L9_2.x
          L18_2 = L9_2.y
          L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
          L15_2 = L10_2 * L13_2
          L16_2 = L11_2 * L11_2
          L15_2 = L15_2 - L16_2
          L15_2 = 1 / L15_2
          L16_2 = L13_2 * L12_2
          L17_2 = L11_2 * L14_2
          L16_2 = L16_2 - L17_2
          L16_2 = L16_2 * L15_2
          L17_2 = L10_2 * L14_2
          L18_2 = L11_2 * L12_2
          L17_2 = L17_2 - L18_2
          L17_2 = L17_2 * L15_2
          if 0 <= L16_2 and 0 <= L17_2 then
            L18_2 = L16_2 + L17_2
            if L18_2 < 1 then
              L18_2 = true
              L19_2 = false
              return L18_2, L19_2
          end
          else
            L18_2 = true
            L19_2 = true
            return L18_2, L19_2
          end
      end
    end
  end
  else
    L7_2 = false
    L8_2 = false
    return L7_2, L8_2
  end
end

L0_1.checkCollision = L1_1
L0_1 = TriangleInvisibleButton

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
L0_1 = TriangleInvisibleButton

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = false
  if L6_2 then
    L7_2 = gamelua
    L7_2 = L7_2.drawRect
    L8_2 = 1
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0.5
    L12_2 = A0_2.x
    L13_2 = A0_2.width
    L13_2 = L13_2 * 0.5
    L12_2 = L12_2 - L13_2
    L13_2 = A0_2.y
    L14_2 = A0_2.height
    L14_2 = L14_2 * 0.5
    L13_2 = L13_2 - L14_2
    L14_2 = A0_2.x
    L15_2 = A0_2.width
    L15_2 = L15_2 * 0.5
    L14_2 = L14_2 + L15_2
    L15_2 = A0_2.y
    L16_2 = A0_2.height
    L16_2 = L16_2 * 0.5
    L15_2 = L15_2 + L16_2
    L16_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  return
end

L0_1.draw = L1_1
