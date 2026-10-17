local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = ui
L0_1 = L0_1.BackgroundBox
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
Slider = L0_1
L0_1 = Slider
L0_1.TOGGLE_BUTTON_NAME = "toggleButton"
L0_1 = Slider

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = ui
  L1_2 = L1_2.BackgroundBox
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  A0_2.slider_children = L1_2
  L1_2 = {}
  A0_2.components = L1_2
  L1_2 = {}
  L1_2.x = 0
  L1_2.y = -1
  A0_2.direction = L1_2
  A0_2.padding_x = 0
  A0_2.padding_y = 0
  A0_2.gap = 0
  A0_2.child_size = 0
  A0_2.indicator_style = "ROTATE_FULL"
  A0_2.state = "CLOSED"
  L1_2 = enabled
  if not L1_2 then
    L1_2 = true
  end
  A0_2.enabled = L1_2
  A0_2.extend_state = 0
  A0_2.extend_adjusted = 1
  A0_2.disappear_scale = 1
  L1_2 = gamelua
  L1_2 = L1_2.tweenLinear
  A0_2.open_function = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.tweenLinear
  A0_2.close_function = L1_2
  L1_2 = ui
  L1_2 = L1_2.ImageButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.TOGGLE_BUTTON_NAME
  L1_2.name = L2_2
  L1_2.activateOnRelease = true
  L1_2.returnValue = "TOGGLE_SLIDER"
  L3_2 = A0_2
  L2_2 = A0_2.addChildInternal
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2.toggle_button = L1_2
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.addChildInternal
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2.indicator = L2_2
end

L0_1.init = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2.closed_image = A2_2
  A0_2.open_image = A1_2
  L4_2 = A0_2
  L3_2 = A0_2.refreshImages
  L3_2(L4_2)
end

L0_1.setButtonImage = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2.open_indicator = A1_2
  A0_2.closed_indicator = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.refreshImages
  L3_2(L4_2)
end

L0_1.setIndicatorImage = L1_1
L0_1 = Slider

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2.state
  if L3_2 == "CLOSED" then
    L1_2 = A0_2.closed_image
    L2_2 = A0_2.closed_indicator
  else
    L1_2 = A0_2.open_image
    L2_2 = A0_2.open_indicator
  end
  L3_2 = A0_2.toggle_button
  L4_2 = L3_2
  L3_2 = L3_2.setImage
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2.indicator
    L4_2 = L3_2
    L3_2 = L3_2.setImage
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.refreshImages = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.enabled = A1_2
  L2_2 = A0_2.state
  if L2_2 ~= "CLOSED" then
    A0_2.state = "CLOSING"
  end
  L2_2 = A0_2.toggle_button
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.setEnabled = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  A0_2.components = L2_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.components
    L7_2[L5_2] = L6_2
  end
end

L0_1.setComponents = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 == "UP" then
    L2_2 = {}
    L2_2.x = 0
    L2_2.y = -1
    A0_2.direction = L2_2
    A0_2.hanchor = "HCENTER"
    A0_2.vanchor = "RIGHT"
  elseif A1_2 == "DOWN" then
    L2_2 = {}
    L2_2.x = 0
    L2_2.y = 1
    A0_2.direction = L2_2
    A0_2.hanchor = "HCENTER"
    A0_2.vanchor = "LEFT"
  elseif A1_2 == "LEFT" then
    L2_2 = {}
    L2_2.x = -1
    L2_2.y = 0
    A0_2.direction = L2_2
    A0_2.hanchor = "BOTTOM"
    A0_2.vanchor = "VCENTER"
  elseif A1_2 == "RIGHT" then
    L2_2 = {}
    L2_2.x = 1
    L2_2.y = 0
    A0_2.direction = L2_2
    A0_2.hanchor = "TOP"
    A0_2.vanchor = "VCENTER"
  end
end

L0_1.setDirection = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2)
  if A2_2 == nil then
    A0_2.padding_x = A1_2
    A0_2.padding_y = A1_2
  else
    A0_2.padding_x = A1_2
    A0_2.padding_y = A2_2
  end
end

L0_1.setPadding = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  A0_2.gap = A1_2
end

L0_1.setGap = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  A0_2.child_size = A1_2
end

L0_1.setChildSize = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ui
  L2_2 = L2_2.BackgroundBox
  L2_2 = L2_2.addChild
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end

L0_1.addChildInternal = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = ui
  L2_2 = L2_2.BackgroundBox
  L2_2 = L2_2.addChild
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = A0_2.slider_children
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.slider_children
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.addChild = L1_1
L0_1 = Slider

function L1_1(A0_2)
  local L1_2
  A0_2.state = "DISAPPEAR"
end

L0_1.disappear = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ui
  L2_2 = L2_2.BackgroundBox
  L2_2 = L2_2.removeChild
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = nil
    L4_2 = _G
    L4_2 = L4_2.pairs
    L5_2 = A0_2.slider_children
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      if L2_2 == L8_2 then
        L3_2 = L7_2
      end
    end
    if L3_2 then
      L4_2 = _G
      L4_2 = L4_2.table
      L4_2 = L4_2.remove
      L5_2 = A0_2.slider_children
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  return L2_2
end

L0_1.removeChild = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.ceil
  L4_2 = A0_2.slider_children
  L4_2 = #L4_2
  L5_2 = A0_2.child_size
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2.gap
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.slider_children
  L5_2 = #L5_2
  L5_2 = L5_2 - 1
  L6_2 = A0_2.gap
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.padding_x
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.abs
  L7_2 = A0_2.direction
  L7_2 = L7_2.x
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.padding_y
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.abs
  L7_2 = A0_2.direction
  L7_2 = L7_2.y
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.state
  if L4_2 == "OPENING" then
    L4_2 = A0_2.extend_state
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = A1_2 * L5_2
    L5_2 = L5_2 * 0.8
    L4_2 = L4_2 + L5_2
    A0_2.extend_state = L4_2
    L4_2 = A0_2.extend_state
    if L3_2 <= L4_2 then
      A0_2.extend_state = L3_2
      A0_2.state = "OPEN"
      L5_2 = A0_2
      L4_2 = A0_2.refreshImages
      L4_2(L5_2)
    end
    L4_2 = A0_2.open_function
    L5_2 = A0_2.extend_state
    L6_2 = 0
    L7_2 = L3_2
    L8_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2.extend_adjusted = L4_2
  else
    L4_2 = A0_2.state
    if L4_2 ~= "CLOSING" then
      L4_2 = A0_2.state
      if L4_2 ~= "DISAPPEAR" then
        goto lbl_93
      end
      L4_2 = A0_2.extend_state
      if not (0 < L4_2) then
        goto lbl_93
      end
    end
    L4_2 = A0_2.extend_state
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = A1_2 * L5_2
    L5_2 = L5_2 * 0.8
    L4_2 = L4_2 - L5_2
    A0_2.extend_state = L4_2
    L4_2 = A0_2.extend_state
    if L4_2 < 0 then
      A0_2.extend_state = 0
      L4_2 = A0_2.state
      if L4_2 == "CLOSING" then
        A0_2.state = "CLOSED"
        L5_2 = A0_2
        L4_2 = A0_2.refreshImages
        L4_2(L5_2)
      end
    end
    L4_2 = A0_2.open_function
    L5_2 = A0_2.extend_state
    L6_2 = 0
    L7_2 = L3_2
    L8_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    A0_2.extend_adjusted = L4_2
  end
  ::lbl_93::
  L4_2 = A0_2.state
  if L4_2 == "DISAPPEAR" then
    L4_2 = A0_2.extend_state
    if L4_2 == 0 then
      L4_2 = A0_2.disappear_scale
      L5_2 = A1_2 * 3
      L4_2 = L4_2 - L5_2
      A0_2.disappear_scale = L4_2
      L4_2 = A0_2.disappear_scale
      if L4_2 <= 0 then
        A0_2.disappear_scale = 0
        A0_2.state = "DISAPPEARED"
      end
      L4_2 = A0_2.disappear_scale
      L5_2 = A0_2.toggle_button
      L5_2.scaleX = L4_2
      L5_2 = A0_2.toggle_button
      L5_2.scaleY = L4_2
      L5_2 = A0_2.indicator
      L5_2.scaleX = L4_2
      L5_2 = A0_2.indicator
      L5_2.scaleY = L4_2
    end
  end
  L4_2 = A0_2.indicator_style
  if L4_2 == "ROTATE_FULL" then
    L4_2 = A0_2.indicator
    L5_2 = A0_2.open_function
    L6_2 = A0_2.extend_state
    L7_2 = 0
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.pi
    L8_2 = L8_2 * 2
    L9_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2.angle = L5_2
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.slider_children
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = nil
    L10_2 = nil
    L11_2 = A0_2.direction
    L11_2 = L11_2.x
    L12_2 = A0_2.child_size
    L13_2 = A0_2.gap
    L12_2 = L12_2 + L13_2
    L12_2 = L7_2 * L12_2
    L9_2 = L11_2 * L12_2
    L11_2 = A0_2.direction
    L11_2 = L11_2.y
    L12_2 = A0_2.child_size
    L13_2 = A0_2.gap
    L12_2 = L12_2 + L13_2
    L12_2 = L7_2 * L12_2
    L10_2 = L11_2 * L12_2
    L11_2 = A0_2.extend_adjusted
    L11_2 = L9_2 + L11_2
    L11_2 = L11_2 - L3_2
    L12_2 = A0_2.direction
    L12_2 = L12_2.x
    L11_2 = L11_2 * L12_2
    L12_2 = A0_2.scaleX
    L11_2 = L11_2 * L12_2
    L8_2.x = L11_2
    L11_2 = A0_2.extend_adjusted
    L11_2 = L10_2 + L11_2
    L11_2 = L11_2 - L3_2
    L12_2 = A0_2.direction
    L12_2 = L12_2.y
    L11_2 = L11_2 * L12_2
    L12_2 = A0_2.scaleY
    L11_2 = L11_2 * L12_2
    L8_2.y = L11_2
    L11_2 = A0_2.direction
    L11_2 = L11_2.x
    if L11_2 < 0 then
      L12_2 = L8_2
      L11_2 = L8_2.setVisible
      L13_2 = L8_2.x
      L13_2 = L13_2 < 0
      L11_2(L12_2, L13_2)
    else
      L11_2 = A0_2.direction
      L11_2 = L11_2.x
      if 0 < L11_2 then
        L12_2 = L8_2
        L11_2 = L8_2.setVisible
        L13_2 = L8_2.x
        L13_2 = 0 < L13_2
        L11_2(L12_2, L13_2)
      else
        L11_2 = A0_2.direction
        L11_2 = L11_2.y
        if L11_2 < 0 then
          L12_2 = L8_2
          L11_2 = L8_2.setVisible
          L13_2 = L8_2.y
          L13_2 = L13_2 < 0
          L11_2(L12_2, L13_2)
        else
          L11_2 = A0_2.direction
          L11_2 = L11_2.y
          if 0 < L11_2 then
            L12_2 = L8_2
            L11_2 = L8_2.setVisible
            L13_2 = L8_2.y
            L13_2 = 0 < L13_2
            L11_2(L12_2, L13_2)
          end
        end
      end
    end
  end
  L4_2 = A0_2.direction
  L4_2 = L4_2.x
  if L4_2 ~= 0 then
    L4_2 = A0_2.extend_adjusted
    A0_2.width = L4_2
    L4_2 = A0_2.padding_y
    L4_2 = L4_2 * 2
    L5_2 = A0_2.child_size
    L4_2 = L4_2 + L5_2
    A0_2.height = L4_2
  else
    L4_2 = A0_2.direction
    L4_2 = L4_2.y
    if L4_2 ~= 0 then
      L4_2 = A0_2.padding_x
      L4_2 = L4_2 * 2
      L5_2 = A0_2.child_size
      L4_2 = L4_2 + L5_2
      A0_2.width = L4_2
      L4_2 = A0_2.extend_adjusted
      A0_2.height = L4_2
    end
  end
  L4_2 = BackgroundBox
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.update = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2.visible
  if not L5_2 then
    return
  end
  L5_2 = false
  L6_2 = A0_2.state
  if L6_2 ~= "OPENING" then
    L6_2 = A0_2.state
    if L6_2 ~= "CLOSING" then
      L6_2 = A0_2.state
      if L6_2 ~= "DISAPPEAR" then
        goto lbl_38
      end
    end
  end
  L5_2 = true
  L6_2 = A0_2.direction
  L6_2 = L6_2.x
  if L6_2 ~= 0 then
    L6_2 = A0_2.x
    L6_2 = A1_2 + L6_2
    L7_2 = _G
    L7_2 = L7_2.res
    L7_2 = L7_2.setClipRect
    L8_2 = L6_2
    L9_2 = 0
    L10_2 = gamelua
    L10_2 = L10_2.screenWidth
    L10_2 = L10_2 - L6_2
    L11_2 = gamelua
    L11_2 = L11_2.screenHeight
    L7_2(L8_2, L9_2, L10_2, L11_2)
  else
    L6_2 = A0_2.direction
    L6_2 = L6_2.y
    if L6_2 ~= 0 then
    end
  end
  ::lbl_38::
  L6_2 = A0_2.extend_state
  if 0 < L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2.drawSelf
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2.drawChildren
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if L5_2 then
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.setClipRect
    L7_2 = 0
    L8_2 = 0
    L9_2 = gamelua
    L9_2 = L9_2.screenWidth
    L10_2 = gamelua
    L10_2 = L10_2.screenHeight
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = A0_2.toggle_button
  L7_2 = L6_2
  L6_2 = L6_2.draw
  L8_2 = A0_2.x
  L8_2 = A1_2 + L8_2
  L9_2 = A0_2.y
  L9_2 = A2_2 + L9_2
  L10_2 = A0_2.scaleX
  L10_2 = A3_2 * L10_2
  L11_2 = A0_2.scaleY
  L11_2 = A4_2 * L11_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A0_2.indicator
  L7_2 = L6_2
  L6_2 = L6_2.draw
  L8_2 = A0_2.x
  L8_2 = A1_2 + L8_2
  L9_2 = A0_2.y
  L9_2 = A2_2 + L9_2
  L10_2 = A0_2.scaleX
  L10_2 = A3_2 * L10_2
  L11_2 = A0_2.scaleY
  L11_2 = A4_2 * L11_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end

L0_1.draw = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
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
  if not A5_2 then
    A5_2 = 0
  end
  if not A6_2 then
    A6_2 = 1
  end
  L7_2 = _G
  L7_2 = L7_2.ipairs
  L8_2 = A0_2.children
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.visible
    if L12_2 == true then
      L12_2 = A0_2.toggle_button
      if L11_2 ~= L12_2 then
        L12_2 = A0_2.indicator
        if L11_2 ~= L12_2 then
          L12_2 = L11_2.enabled
          if not L12_2 then
            L12_2 = gamelua
            L12_2 = L12_2.native_setAlpha
            L13_2 = 0.35
            L12_2(L13_2)
          end
          L13_2 = L11_2
          L12_2 = L11_2.draw
          L14_2 = A0_2.x
          L14_2 = A1_2 + L14_2
          L15_2 = A0_2.y
          L15_2 = A2_2 + L15_2
          L16_2 = A0_2.scaleX
          L16_2 = A3_2 * L16_2
          L17_2 = A0_2.scaleY
          L17_2 = A4_2 * L17_2
          L18_2 = A0_2.angle
          L18_2 = A5_2 + L18_2
          L19_2 = A6_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        end
      end
    end
    L12_2 = gamelua
    L12_2 = L12_2.native_setAlpha
    L13_2 = 1
    L12_2(L13_2)
  end
end

L0_1.drawChildren = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.BackgroundBox
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if A1_2 == "LRELEASE" and L4_2 == "TOGGLE_SLIDER" then
    L7_2 = A0_2.enabled
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2.toggle
      L7_2(L8_2)
    end
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2.toggle_button
  L4_2.returnValue = A1_2
  L4_2 = A0_2.toggle_button
  L4_2.disabledReturnValue = A2_2
  L4_2 = A0_2.toggle_button
  L4_2.meta = A3_2
end

L0_1.setToggleResult = L1_1
L0_1 = Slider

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.state
  if L1_2 ~= "OPEN" then
    L1_2 = A0_2.state
    if L1_2 ~= "OPENING" then
      goto lbl_9
    end
  end
  A0_2.state = "CLOSING"
  goto lbl_16
  ::lbl_9::
  L1_2 = A0_2.state
  if L1_2 ~= "CLOSED" then
    L1_2 = A0_2.state
    if L1_2 ~= "CLOSING" then
      goto lbl_16
    end
  end
  A0_2.state = "OPENING"
  ::lbl_16::
  L2_2 = A0_2
  L1_2 = A0_2.refreshImages
  L1_2(L2_2)
end

L0_1.toggle = L1_1
L0_1 = Slider

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.state
  if L1_2 ~= "CLOSING" then
    L1_2 = A0_2.state
    if L1_2 ~= "CLOSED" then
      goto lbl_8
    end
  end
  A0_2.state = "OPENING"
  ::lbl_8::
  L2_2 = A0_2
  L1_2 = A0_2.refreshImages
  L1_2(L2_2)
end

L0_1.open = L1_1
L0_1 = Slider

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = gamelua
  L3_2 = L3_2.tweenLinear
  L2_2.linear = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.tweenEaseCubicOut
  L2_2["cubic-out"] = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.tweenEaseCubicIn
  L2_2["cubic-in"] = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.tweenEaseCubicInOut
  L2_2["cubic-inout"] = L3_2
  L3_2 = L2_2[A1_2]
  A0_2.open_function = L3_2
end

L0_1.setOpenFunction = L1_1
L0_1 = Slider

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.width
  L2_2 = A0_2.height
  return L1_2, L2_2
end

L0_1.getContentDimensions = L1_1
L0_1 = Slider

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.toggle_button
  L2_2 = A0_2.x
  L3_2 = L1_2.px
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = L1_2.py
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.x
  L5_2 = L1_2.px
  L4_2 = L4_2 - L5_2
  L5_2 = L1_2.w
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.y
  L6_2 = L1_2.py
  L5_2 = L5_2 - L6_2
  L6_2 = L1_2.h
  L5_2 = L5_2 + L6_2
  return L2_2, L3_2, L4_2, L5_2
end

L0_1.getButtonBounds = L1_1
