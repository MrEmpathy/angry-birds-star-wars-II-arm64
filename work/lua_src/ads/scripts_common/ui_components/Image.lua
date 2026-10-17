local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
Image = L0_1
L0_1 = Image

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.visible
  if L1_2 == nil then
    A0_2.visible = true
  end
  A0_2.angle = 0
  A0_2.alpha = nil
  A0_2.floorCoordinates = true
  A0_2.scaleX = 1
  A0_2.scaleY = 1
  A0_2.rotatePivotX = 0
  A0_2.rotatePivotY = 0
end

L0_1.init = L1_1
L0_1 = Image

function L1_1(A0_2, A1_2)
  A0_2.visible = A1_2
end

L0_1.setVisible = L1_1
L0_1 = Image

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = gamelua
    L2_2 = L2_2.applyLocalization
    if L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.applyLocalization
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = _G
        L2_2 = L2_2.res
        L2_2 = L2_2.getString
        L3_2 = "TEXTS_BASIC"
        L4_2 = A1_2
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = A1_2
        end
        A0_2.image = L2_2
        L2_2 = A0_2.image
        if L2_2 == "" then
          A0_2.image = A1_2
        end
    end
  end
  else
    A0_2.image = A1_2
  end
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2)
  A0_2.h = L3_2
  A0_2.w = L2_2
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpritePivot
  L3_2 = A0_2.image
  L2_2, L3_2 = L2_2(L3_2)
  A0_2.py = L3_2
  A0_2.px = L2_2
  L2_2 = A0_2.px
  A0_2.rotatePivotX = L2_2
  L2_2 = A0_2.py
  A0_2.rotatePivotY = L2_2
end

L0_1.setImage = L1_1
L0_1 = Image

function L1_1(A0_2, A1_2, A2_2)
  if A1_2 ~= nil then
    A0_2.w = A1_2
  end
  if A2_2 ~= nil then
    A0_2.h = A2_2
  end
end

L0_1.setSize = L1_1
L0_1 = Image

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L6_2 = A1_2 or nil
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
  L13_2 = L6_2 + L13_2
  L14_2 = A0_2.y
  L14_2 = L7_2 + L14_2
  L15_2 = A0_2.angle
  L15_2 = L10_2 + L15_2
  L16_2 = A0_2.image
  if L16_2 ~= nil then
    L16_2 = A0_2.visible
    if L16_2 == true then
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
      L18_2 = A0_2.alpha
      if L18_2 == nil then
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
      else
        L18_2 = gamelua
        L18_2 = L18_2.setRenderState
        L19_2 = L13_2 / L11_2
        L20_2 = L14_2 / L12_2
        L21_2 = L11_2
        L22_2 = L12_2
        L23_2 = L15_2
        L24_2 = L16_2
        L25_2 = L17_2
        L26_2 = A0_2.alpha
        L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      end
      L18_2 = _G
      L18_2 = L18_2.res
      L18_2 = L18_2.drawSprite
      L19_2 = ""
      L20_2 = A0_2.image
      L21_2 = 0
      L22_2 = 0
      L23_2 = "HPIVOT"
      L24_2 = "VPIVOT"
      L25_2 = _G
      L25_2 = L25_2.math
      L25_2 = L25_2.floor
      L26_2 = A0_2.w
      L25_2 = L25_2(L26_2)
      L26_2 = _G
      L26_2 = L26_2.math
      L26_2 = L26_2.floor
      L27_2 = A0_2.h
      L26_2, L27_2 = L26_2(L27_2)
      L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    end
  end
  L16_2 = A0_2.alpha
  if L16_2 ~= nil then
    L16_2 = gamelua
    L16_2 = L16_2.setRenderState
    L17_2 = 0
    L18_2 = 0
    L19_2 = 1
    L20_2 = 1
    L21_2 = 0
    L22_2 = 0
    L23_2 = 0
    L24_2 = 1
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  else
    L16_2 = gamelua
    L16_2 = L16_2.setRenderState
    L17_2 = 0
    L18_2 = 0
    L19_2 = 1
    L20_2 = 1
    L21_2 = 0
    L22_2 = 0
    L23_2 = 0
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  end
end

L0_1.drawSelf = L1_1
L0_1 = Image

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.drawSprite
  L4_2 = A0_2.image
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.floor
  L6_2 = A0_2.x
  L6_2 = L6_2 + A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.floor
  L7_2 = A0_2.y
  L7_2 = L7_2 + A2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L0_1.drawFast = L1_1
L0_1 = Image

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2.physicsObject
  if L6_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.drawSelf
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L6_2 = Frame
  L6_2 = L6_2.draw
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

L0_1.draw = L1_1
L0_1 = Image

function L1_1(A0_2, A1_2)
  A0_2.angle = A1_2
end

L0_1.setAngle = L1_1
