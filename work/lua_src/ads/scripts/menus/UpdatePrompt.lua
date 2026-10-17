local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
UpdatePrompt = L0_1
L0_1 = UpdatePrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.name = "UpdatePrompt"
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "bg"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "UPDATE_DIALOG"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.deviceModel
  L2_2 = L2_2 == "windows"
  A0_2.confirmOnLeft = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "close"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "buttonX"
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2.returnValue = "CLOSE"
  L2_2.activateOnRelease = true
  L2_2.clickSound = "ButtonBack"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "confirm"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = A0_2.buttonImage
  if not L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.getButtonImageName
    L7_2 = "buttonCheck"
    L8_2 = gamelua
    L8_2 = L8_2.SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.isDarkSide
    L8_2, L9_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2)
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.returnValue
  L3_2.returnValue = L4_2
  L3_2.activateOnRelease = true
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L0_1.init = L1_1
L0_1 = UpdatePrompt

function L1_1(A0_2)
  local L1_2
  A0_2.appearCounter = 0
end

L0_1.onEntry = L1_1
L0_1 = UpdatePrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "bg"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setScale
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = L2_2.image
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = L3_2 * L1_2
  L4_2 = L4_2 * L1_2
  L3_2 = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 * 0.5
  A0_2.x = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.screenHeight
  L5_2 = L5_2 * 0.5
  L5_2 = L5_2 - 60
  A0_2.y = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "close"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "confirm"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L5_2
  L7_2 = L5_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = L6_2.w
  L7_2 = L3_2 - L7_2
  L7_2 = -L7_2
  L7_2 = L7_2 * 0.5
  L5_2.x = L7_2
  L7_2 = L5_2.h
  L7_2 = L4_2 - L7_2
  L7_2 = L7_2 * 0.5
  L5_2.y = L7_2
  L7_2 = L5_2.w
  L7_2 = L3_2 - L7_2
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L7_2 = L6_2.h
  L7_2 = L4_2 - L7_2
  L7_2 = L7_2 * 0.5
  L6_2.y = L7_2
  L7_2 = A0_2.confirmOnLeft
  if L7_2 == true then
    L7_2 = L6_2.x
    L8_2 = L5_2.x
    L6_2.x = L8_2
    L5_2.x = L7_2
  end
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.Frame
  L7_2 = L7_2.layout
  L8_2 = A0_2
  L7_2(L8_2)
end

L0_1.layout = L1_1
L0_1 = UpdatePrompt

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_POP_FRAME
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  else
    L7_2 = A0_2.returnValue
    if L4_2 == L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = A0_2.returnValue
      L9_2.id = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  if A1_2 == "HOVER" then
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L9_2 = A0_2
    L8_2 = A0_2.getChild
    L10_2 = "bg"
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L8_2.children
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      if L11_2 == L6_2 then
        L12_2 = L4_2
        L13_2 = L5_2
        L14_2 = L6_2
        return L12_2, L13_2, L14_2
      end
    end
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = UpdatePrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "ESCAPE" or A2_2 == "KEY_BACK" then
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonBack"
      L6_2(L7_2)
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_POP_FRAME
      L8_2.id = L9_2
      L6_2(L7_2, L8_2)
    elseif A2_2 == "RETURN" then
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonProceed"
      L6_2(L7_2)
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = A0_2.returnValue
      L8_2.id = L9_2
      L6_2(L7_2, L8_2)
    end
  elseif L3_2 then
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = L5_2
    return L6_2, L7_2, L8_2
  end
  L6_2 = "BLOCK"
  L7_2 = nil
  L8_2 = A0_2
  return L6_2, L7_2, L8_2
end

L0_1.onKeyEvent = L1_1
L0_1 = UpdatePrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.appearCounter
  L5_2 = A1_2 * 2
  L4_2 = L4_2 + L5_2
  L5_2 = 0.7
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.appearCounter = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = UpdatePrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.appearCounter
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
