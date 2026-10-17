local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ProgressBar = L0_1
L0_1 = ProgressBar

function L1_1(A0_2)
  local L1_2
  A0_2.max = 1
  A0_2.value = 0
end

L0_1.init = L1_1
L0_1 = ProgressBar

function L1_1(A0_2, A1_2)
  A0_2.max = A1_2
end

L0_1.setMax = L1_1
L0_1 = ProgressBar

function L1_1(A0_2, A1_2)
  A0_2.value = A1_2
end

L0_1.setValue = L1_1
L0_1 = ProgressBar

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.value
  return L1_2
end

L0_1.getValue = L1_1
L0_1 = ProgressBar

function L1_1(A0_2, A1_2)
  A0_2.highlightThreshold = A1_2
end

L0_1.setHighlightThreshold = L1_1
L0_1 = ProgressBar

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.highlightThreshold
  return L1_2
end

L0_1.getHighlightThreshold = L1_1
L0_1 = ProgressBar

function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2.backgroundImage = A1_2
  A0_2.barImage = A2_2
  A0_2.highlightImage = A3_2
end

L0_1.setImages = L1_1
L0_1 = ProgressBar

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.useBarImageForPivotAndWidth
  if L2_2 then
    L2_2 = A0_2.barImage
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A0_2.backgroundImage
  ::lbl_11::
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2.scaleY
  L3_2 = L2_2 * L3_2
  return L3_2
end

L0_1.getHeight = L1_1
L0_1 = ProgressBar

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.useBarImageForPivotAndWidth
  if L2_2 then
    L2_2 = A0_2.barImage
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A0_2.backgroundImage
  ::lbl_11::
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2.scaleX
  L3_2 = L1_2 * L3_2
  return L3_2
end

L0_1.getWidth = L1_1
L0_1 = ProgressBar

function L1_1(A0_2, A1_2)
  A0_2.useBarImageForPivotAndWidth = A1_2
end

L0_1.setUseBarImageForPivotAndWidth = L1_1
L0_1 = ProgressBar

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  if not A1_2 then
    A1_2 = 0
  end
  if not A2_2 then
    A2_2 = 0
  end
  if not A3_2 then
    A3_2 = 1
  end
  if not A4_2 then
    A4_2 = 1
  end
  L6_2 = A0_2.backgroundImage
  if L6_2 ~= nil then
    L6_2 = A0_2.barImage
    if L6_2 ~= nil then
      L6_2 = A0_2.visible
      if L6_2 ~= false then
        L6_2 = _G
        L6_2 = L6_2.res
        L6_2 = L6_2.getSpritePivot
        L7_2 = A0_2.useBarImageForPivotAndWidth
        if L7_2 then
          L7_2 = A0_2.barImage
          if L7_2 then
            goto lbl_32
          end
        end
        L7_2 = A0_2.backgroundImage
        ::lbl_32::
        L6_2, L7_2 = L6_2(L7_2)
        L8_2 = _G
        L8_2 = L8_2.res
        L8_2 = L8_2.getSpriteBounds
        L9_2 = A0_2.useBarImageForPivotAndWidth
        if L9_2 then
          L9_2 = A0_2.barImage
          if L9_2 then
            goto lbl_43
          end
        end
        L9_2 = A0_2.backgroundImage
        ::lbl_43::
        L8_2, L9_2 = L8_2(L9_2)
        L10_2 = A0_2.x
        L10_2 = L10_2 + A1_2
        L11_2 = A0_2.scaleX
        L11_2 = L6_2 * L11_2
        L11_2 = L11_2 * A3_2
        L10_2 = L10_2 - L11_2
        L11_2 = A0_2.y
        L11_2 = L11_2 + A2_2
        L12_2 = A0_2.scaleY
        L12_2 = L7_2 * L12_2
        L12_2 = L12_2 * A4_2
        L11_2 = L11_2 - L12_2
        L12_2 = A0_2.value
        L13_2 = A0_2.max
        L12_2 = L12_2 / L13_2
        L12_2 = L12_2 * L8_2
        L13_2 = A0_2.scaleX
        L12_2 = L12_2 * L13_2
        L12_2 = L12_2 * A3_2
        L13_2 = A0_2.scaleY
        L13_2 = L9_2 * L13_2
        L13_2 = L13_2 * A4_2
        L14_2 = gamelua
        L14_2 = L14_2.setRenderState
        L15_2 = _G
        L15_2 = L15_2.math
        L15_2 = L15_2.floor
        L16_2 = A0_2.x
        L16_2 = L16_2 + A1_2
        L17_2 = A0_2.scaleX
        L17_2 = L17_2 * A3_2
        L16_2 = L16_2 / L17_2
        L15_2 = L15_2(L16_2)
        L16_2 = _G
        L16_2 = L16_2.math
        L16_2 = L16_2.floor
        L17_2 = A0_2.y
        L17_2 = L17_2 + A2_2
        L18_2 = A0_2.scaleY
        L18_2 = L18_2 * A4_2
        L17_2 = L17_2 / L18_2
        L16_2 = L16_2(L17_2)
        L17_2 = A0_2.scaleX
        L17_2 = L17_2 * A3_2
        L18_2 = A0_2.scaleY
        L18_2 = L18_2 * A4_2
        L19_2 = 0
        L20_2 = L6_2
        L21_2 = L7_2
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L14_2 = A0_2.alpha
        if L14_2 then
          L14_2 = gamelua
          L14_2 = L14_2.native_setAlpha
          L15_2 = A0_2.alpha
          L14_2(L15_2)
        end
        L14_2 = _G
        L14_2 = L14_2.res
        L14_2 = L14_2.drawSprite
        L15_2 = A0_2.backgroundImage
        L16_2 = 0
        L17_2 = 0
        L14_2(L15_2, L16_2, L17_2)
        L14_2 = nil
        L15_2 = A0_2.highlightThreshold
        if L15_2 ~= nil then
          L15_2 = A0_2.highlightThreshold
          L16_2 = A0_2.max
          L15_2 = L15_2 / L16_2
          L15_2 = L15_2 * L8_2
          L16_2 = A0_2.scaleX
          L15_2 = L15_2 * L16_2
          L14_2 = L15_2 * A3_2
        end
        L15_2 = _G
        L15_2 = L15_2.res
        L15_2 = L15_2.getClipRect
        L15_2, L16_2, L17_2, L18_2 = L15_2()
        L19_2 = A0_2.highlightThreshold
        if L19_2 ~= nil then
          L19_2 = A0_2.highlightImage
          if L19_2 ~= nil then
            L19_2 = A0_2.highlightThreshold
            L20_2 = A0_2.value
            if not (L19_2 >= L20_2) then
              goto lbl_192
            end
          end
        end
        L19_2 = A0_2.value
        L20_2 = A0_2.max
        if L19_2 < L20_2 then
          L19_2 = _G
          L19_2 = L19_2.res
          L19_2 = L19_2.setClipRect
          L20_2 = gamelua
          L20_2 = L20_2.intersectingRectangle
          L21_2 = L15_2
          L22_2 = L16_2
          L23_2 = L17_2
          L24_2 = L18_2
          L25_2 = L10_2
          L26_2 = L11_2
          L27_2 = L12_2
          L28_2 = L13_2
          L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
          L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
        end
        L19_2 = _G
        L19_2 = L19_2.res
        L19_2 = L19_2.drawSprite
        L20_2 = A0_2.barImage
        L21_2 = 0
        L22_2 = 0
        L19_2(L20_2, L21_2, L22_2)
        L19_2 = A0_2.highlightThreshold
        if L19_2 ~= nil then
          L19_2 = A0_2.highlightImage
          if L19_2 ~= nil then
            L19_2 = A0_2.highlightThreshold
            L20_2 = A0_2.value
            if L19_2 ~= L20_2 then
              L19_2 = _G
              L19_2 = L19_2.res
              L19_2 = L19_2.setClipRect
              L20_2 = gamelua
              L20_2 = L20_2.intersectingRectangle
              L21_2 = L15_2
              L22_2 = L16_2
              L23_2 = L17_2
              L24_2 = L18_2
              L25_2 = L10_2 + L12_2
              L26_2 = L11_2
              L27_2 = L14_2
              L28_2 = L13_2
              L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
              L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
              L19_2 = _G
              L19_2 = L19_2.res
              L19_2 = L19_2.drawSprite
              L20_2 = A0_2.highlightImage
              L21_2 = 0
              L22_2 = 0
              L19_2(L20_2, L21_2, L22_2)
              goto lbl_240
              ::lbl_192::
              L19_2 = A0_2.value
              L20_2 = A0_2.max
              if L19_2 < L20_2 then
                L19_2 = _G
                L19_2 = L19_2.res
                L19_2 = L19_2.setClipRect
                L20_2 = gamelua
                L20_2 = L20_2.intersectingRectangle
                L21_2 = L15_2
                L22_2 = L16_2
                L23_2 = L17_2
                L24_2 = L18_2
                L25_2 = L10_2 + L14_2
                L26_2 = L11_2
                L27_2 = L12_2 - L14_2
                L28_2 = L13_2
                L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
              end
              L19_2 = _G
              L19_2 = L19_2.res
              L19_2 = L19_2.drawSprite
              L20_2 = A0_2.highlightImage
              L21_2 = 0
              L22_2 = 0
              L19_2(L20_2, L21_2, L22_2)
              L19_2 = _G
              L19_2 = L19_2.res
              L19_2 = L19_2.setClipRect
              L20_2 = gamelua
              L20_2 = L20_2.intersectingRectangle
              L21_2 = L15_2
              L22_2 = L16_2
              L23_2 = L17_2
              L24_2 = L18_2
              L25_2 = L10_2
              L26_2 = L11_2
              L27_2 = L14_2
              L28_2 = L13_2
              L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
              L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
              L19_2 = _G
              L19_2 = L19_2.res
              L19_2 = L19_2.drawSprite
              L20_2 = A0_2.barImage
              L21_2 = 0
              L22_2 = 0
              L19_2(L20_2, L21_2, L22_2)
            end
          end
        end
        ::lbl_240::
        L19_2 = _G
        L19_2 = L19_2.res
        L19_2 = L19_2.setClipRect
        L20_2 = L15_2
        L21_2 = L16_2
        L22_2 = L17_2
        L23_2 = L18_2
        L19_2(L20_2, L21_2, L22_2, L23_2)
      end
    end
  end
  L6_2 = gamelua
  L6_2 = L6_2.setRenderState
  L7_2 = 0
  L8_2 = 0
  L9_2 = 1
  L10_2 = 1
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = A0_2.alpha
  if L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.native_setAlpha
    L7_2 = 1
    L6_2(L7_2)
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
