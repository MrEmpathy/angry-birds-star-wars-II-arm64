local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.BGBox
BGBox = L0_1
L0_1 = BGBox
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ResolutionWarning = L0_1
L0_1 = ResolutionWarning

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A3_2 then
    L4_2 = {}
    A3_2 = L4_2
  end
  A3_2.min_w = A1_2
  A3_2.min_h = A2_2
  L4_2 = BGBox
  L4_2 = L4_2.new
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = "SHEET"
  L6_2 = "LIGHT"
  L7_2 = SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L6_2 = "SITH"
  end
  L7_2 = {}
  L8_2 = "BOX_TOP_LEFT_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.topLeft = L8_2
  L8_2 = "BOX_TOP_MIDDLE_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.topMiddle = L8_2
  L8_2 = "BOX_TOP_RIGHT_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.topRight = L8_2
  L8_2 = "BOX_MIDDLE_LEFT_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.left = L8_2
  L8_2 = "BOX_CENTER_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.center = L8_2
  L8_2 = "BOX_MIDDLE_RIGHT_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.right = L8_2
  L8_2 = "BOX_BOTTOM_LEFT_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.bottomLeft = L8_2
  L8_2 = "BOX_BOTTOM_MIDDLE_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.bottomMiddle = L8_2
  L8_2 = "BOX_BOTTOM_RIGHT_"
  L9_2 = L5_2
  L10_2 = "_"
  L11_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2.bottomRight = L8_2
  L4_2.components = L7_2
  return L4_2
end

L0_1.new = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = BGBox
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.name = "resolutionWarning"
  A0_2.width = 375
  A0_2.height = 225
  L1_2 = ui
  L1_2 = L1_2.DummyText
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L4_2 = "Minimum "
  L5_2 = A0_2.min_w
  L6_2 = "x"
  L7_2 = A0_2.min_h
  L8_2 = [[

resolution is needed for
optimal gameplay experience.]]
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L3_2.text = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "close"
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = getButtonImageName
  L6_2 = "buttonCheck"
  L7_2 = SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2, L8_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.returnValue = "CLOSE"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.init = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = notificationsFrame
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.removeChild
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.onExit = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = BGBox
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = screenWidth
  L1_2 = L1_2 * 0.5
  A0_2.x = L1_2
  L1_2 = screenHeight
  L1_2 = L1_2 * 0.5
  A0_2.y = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "close"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.x = 145
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.min
  L3_2 = 125
  L4_2 = screenHeight
  L4_2 = L4_2 * 0.4
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.y = L2_2
end

L0_1.layout = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = true
  skipInput = L3_2
  L3_2 = BGBox
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = screenWidth
  L4_2 = A0_2.min_w
  if L3_2 >= L4_2 then
    L3_2 = screenHeight
    L4_2 = A0_2.min_h
    if L3_2 >= L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.close
      L3_2(L4_2)
    end
  end
end

L0_1.update = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = setRenderState
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L8_2 = 0
  L9_2 = 0
  L10_2 = screenWidth
  L11_2 = screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = BGBox
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = BGBox
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "RETURN" then
      L5_2 = A0_2
      L4_2 = A0_2.close
      L4_2(L5_2)
    elseif A2_2 == "S" then
      L4_2 = toggleAudio
      L4_2()
    end
  end
end

L0_1.onKeyEvent = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = BGBox
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
  end
  if A1_2 == "HOVER" then
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "close"
    L7_2 = L7_2(L8_2, L9_2)
    if L6_2 == L7_2 then
      L7_2 = L4_2
      L8_2 = L5_2
      L9_2 = L6_2
      return L7_2, L8_2, L9_2
    end
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = ResolutionWarning

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = g_resolutionWarningShown
  if L1_2 then
    L1_2 = false
    g_resolutionWarningShown = L1_2
    L1_2 = g_isPhysicsEnabledBeforeResolutionWarning
    if L1_2 then
      L1_2 = isPausePageVisible
      L1_2 = L1_2()
      if not L1_2 then
        L1_2 = setPhysicsEnabled
        L2_2 = g_isPhysicsEnabledBeforeResolutionWarning
        L1_2(L2_2)
      end
    end
  end
  L1_2 = notificationsFrame
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.removeChild
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.close = L1_1
