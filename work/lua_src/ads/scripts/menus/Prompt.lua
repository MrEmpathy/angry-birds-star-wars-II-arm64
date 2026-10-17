local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
Prompt = L0_1
L0_1 = Prompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "bg"
  L1_2.hanchor = "LEFT"
  L1_2.vanchor = "TOP"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "title"
  L5_2 = A0_2.title
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.vanchor = "TOP"
  L2_2.hanchor = "HCENTER"
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Text
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "content"
  L6_2 = A0_2.content
  L5_2.text = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.getFontBasic
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.vanchor = "VCENTER"
  L3_2.hanchor = "HCENTER"
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "close"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "BTN_CHECK"
  L5_2(L6_2, L7_2)
  L4_2.returnValue = "CLOSE"
  L4_2.clickSound = "ButtonProceed"
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  A0_2.close_button = L4_2
  A0_2.appearCounter = 0
end

L0_1.init = L1_1
L0_1 = Prompt

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.appearCounter = 0
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = Prompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  L1_2 = L1_2 * 0.7
  L2_2 = gamelua
  L2_2 = L2_2.isPCVersion
  L2_2 = L2_2()
  if L2_2 then
    L1_2 = 750
  end
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "title"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.textBoxSize = L1_2
  L4_2 = L2_2
  L3_2 = L2_2.clip
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "close"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "content"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_2 * 0.95
  L4_2.textBoxSize = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.clip
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "bg"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setSize
  L8_2 = L1_2
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.min
  L10_2 = gamelua
  L10_2 = L10_2.screenHeight
  L10_2 = L10_2 * 0.8
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.max
  L12_2 = gamelua
  L12_2 = L12_2.screenHeight
  L12_2 = L12_2 * 0.1
  L14_2 = L4_2
  L13_2 = L4_2.getHeight
  L13_2 = L13_2(L14_2)
  L15_2 = L2_2
  L14_2 = L2_2.getHeight
  L14_2 = L14_2(L15_2)
  L14_2 = L14_2 * 2
  L13_2 = L13_2 + L14_2
  L14_2 = L3_2.h
  L14_2 = L14_2 * 0.4
  L13_2 = L13_2 + L14_2
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L7_2 = L5_2.width
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.screenHeight
  L7_2 = L5_2.height
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 * 0.5
  L5_2.y = L6_2
  L6_2 = L5_2.height
  L6_2 = L6_2 * 1.2
  L3_2.y = L6_2
  L6_2 = L5_2.width
  L7_2 = L3_2.w
  L6_2 = L6_2 - L7_2
  L3_2.x = L6_2
  L2_2.y = 0
  L6_2 = L5_2.width
  L6_2 = L6_2 * 0.5
  L2_2.x = L6_2
  L6_2 = L2_2.x
  L4_2.x = L6_2
  L6_2 = L2_2.y
  L8_2 = L2_2
  L7_2 = L2_2.getHeight
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * 1.5
  L6_2 = L6_2 + L7_2
  L8_2 = L4_2
  L7_2 = L4_2.getHeight
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * 0.5
  L6_2 = L6_2 + L7_2
  L4_2.y = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Frame
  L6_2 = L6_2.layout
  L7_2 = A0_2
  L6_2(L7_2)
end

L0_1.layout = L1_1
L0_1 = Prompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "RETURN" then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_POP_FRAME
      L6_2.id = L7_2
      L7_2 = A0_2.name
      L6_2.target = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = gamelua
      L4_2 = L4_2.playAudio
      L5_2 = "ButtonProceed"
      L4_2(L5_2)
    elseif A2_2 == "S" then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = events
      L7_2 = L7_2.EID_AUDIO_TOGGLED
      L6_2.id = L7_2
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = "BLOCK"
  L5_2 = nil
  L6_2 = A0_2
  return L4_2, L5_2, L6_2
end

L0_1.onKeyEvent = L1_1
L0_1 = Prompt

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
    L10_2 = A0_2.name
    L9_2.target = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.close_event
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = A0_2.close_event
      L7_2(L8_2, L9_2)
    end
    L7_2 = A0_2.close_call
    if L7_2 then
      L7_2 = A0_2.close_call
      L7_2()
    end
  end
  if A1_2 == "HOVER" then
    L7_2 = A0_2.close_button
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
L0_1 = Prompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.appearCounter
  L5_2 = A1_2 * 2
  L4_2 = L4_2 + L5_2
  L5_2 = 0.7
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.appearCounter = L3_2
end

L0_1.update = L1_1
L0_1 = Prompt

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
