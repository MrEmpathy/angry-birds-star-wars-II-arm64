local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
CounterButton = L0_1
L0_1 = CounterButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setImage
  L3_2 = A0_2.image
  if not L3_2 then
    L3_2 = "BTN_BG_GREEN"
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.refuseDragTargetting
  if not L1_2 then
    L1_2 = true
  end
  A0_2.refuseDragTargetting = L1_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "counterBackground"
  L2_2 = A0_2.counterBackgroundImage
  if not L2_2 then
    L2_2 = "BUTTON_TOONS_AMOUNT"
  end
  L4_2 = L1_2
  L3_2 = L1_2.setImage
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.setVisible
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Text
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "counterText"
  L6_2 = A0_2.counter
  if not L6_2 then
    L6_2 = ""
  end
  L5_2.text = L6_2
  L6_2 = A0_2.font
  if not L6_2 then
    L6_2 = "FONT_SPACE_BASIC"
  end
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.vanchor = "VCENTER"
  L3_2.hanchor = "HCENTER"
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.counterScaleX
  if not L4_2 then
    L4_2 = 1
  end
  L5_2 = A0_2.counterScaleY
  if not L5_2 then
    L5_2 = 1
  end
  L1_2.scaleX = L4_2
  L1_2.scaleY = L5_2
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.layout
  L6_2(L7_2)
end

L0_1.init = L1_1
L0_1 = CounterButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "counterBackground"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.w
    if L2_2 ~= 0 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L2_2 = A0_2.w
  L3_2 = A0_2.px
  L2_2 = L2_2 - L3_2
  L3_2 = L1_2.fixedPivotX
  if not L3_2 then
    L3_2 = L1_2.px
  end
  L2_2 = L2_2 - L3_2
  L1_2.x = L2_2
  L2_2 = A0_2.h
  L3_2 = A0_2.py
  L2_2 = L2_2 - L3_2
  L3_2 = L1_2.fixedPivotY
  if not L3_2 then
    L3_2 = L1_2.py
  end
  L2_2 = L2_2 - L3_2
  L1_2.y = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.getChild
  L4_2 = "counterText"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = L2_2
  L3_2 = L2_2.getFontLeading
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2.h
  L6_2 = L2_2
  L5_2 = L2_2.getFontLeading
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * 1.6
  L4_2 = L4_2 / L5_2
  L2_2.scaleX = L4_2
  L4_2 = L2_2.scaleX
  L2_2.scaleY = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.layout
  L4_2(L5_2)
end

L0_1.layout = L1_1
L0_1 = CounterButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "counterBackground"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.getChild
  L5_2 = "counterText"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = ""
  end
  L3_2.text = L4_2
  if A1_2 < 1 then
    L5_2 = L2_2
    L4_2 = L2_2.setVisible
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L5_2 = L2_2
    L4_2 = L2_2.setVisible
    L6_2 = true
    L4_2(L5_2, L6_2)
    if A1_2 < 10 then
      L5_2 = L2_2
      L4_2 = L2_2.setImage
      L6_2 = A0_2.counterImageSmall
      if not L6_2 then
        L6_2 = "COUNTER_SMALL"
      end
      L4_2(L5_2, L6_2)
    elseif A1_2 < 100 then
      L5_2 = L2_2
      L4_2 = L2_2.setImage
      L6_2 = A0_2.counterImageMedium
      if not L6_2 then
        L6_2 = "COUNTER_MEDIUM"
      end
      L4_2(L5_2, L6_2)
    else
      L5_2 = L2_2
      L4_2 = L2_2.setImage
      L6_2 = A0_2.counterImageLarge
      if not L6_2 then
        L6_2 = "COUNTER_LARGE"
      end
      L4_2(L5_2, L6_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.layout
  L4_2(L5_2)
end

L0_1.setCounter = L1_1
