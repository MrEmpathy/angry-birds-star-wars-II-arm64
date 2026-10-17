local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
TextField = L0_1
L0_1 = TextField
L0_1.CURSOR_BLINK_TIME = 0.5
L0_1 = gamelua
L0_1 = L0_1.events
events = L0_1
L0_1 = TextField

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.blinkTimer = 0
  A0_2.blinkState = true
  L1_2 = A0_2.maxCharacters
  if not L1_2 then
    L1_2 = 11
  end
  A0_2.maxCharacters = L1_2
  L1_2 = A0_2.font
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.getFontBasic
    L1_2 = L1_2()
  end
  A0_2.font = L1_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getFontLeading
  L3_2 = A0_2.font
  L2_2 = L2_2(L3_2)
  L3_2 = gamelua
  L3_2 = L3_2.setFont
  L4_2 = A0_2.font
  L3_2(L4_2)
  L3_2 = ""
  L4_2 = 1
  L5_2 = A0_2.maxCharacters
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2
    L9_2 = "W"
    L3_2 = L8_2 .. L9_2
  end
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getStringWidth
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L6_2 = L1_2
  L5_2 = L1_2.setSize
  L7_2 = L4_2
  L8_2 = L2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = ui
  L5_2 = L5_2.DummyText
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "textFrame"
  L8_2 = A0_2.font
  L7_2.font = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L1_2
  L6_2 = L1_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  A0_2.textFrame = L5_2
  L6_2 = ui
  L6_2 = L6_2.DummyText
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "marker"
  L9_2 = A0_2.font
  L8_2.font = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setText
  L9_2 = "_"
  L7_2(L8_2, L9_2)
  L8_2 = L1_2
  L7_2 = L1_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  A0_2.marker = L6_2
  L7_2 = A0_2.marker
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getStringWidth
  L9_2 = "_"
  L8_2 = L8_2(L9_2)
  L8_2 = -L8_2
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L7_2 = A0_2.marker
  L7_2.hanchor = "LEFT"
  L8_2 = A0_2
  L7_2 = A0_2.addChild
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
end

L0_1.init = L1_1
L0_1 = TextField

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.string
  L1_2 = L1_2.len
  L2_2 = A0_2.textFrame
  L2_2 = L2_2.text
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.maxCharacters
  L1_2 = L1_2 == L2_2
  return L1_2
end

L0_1.isFull = L1_1
L0_1 = TextField

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.string
  L1_2 = L1_2.len
  L2_2 = A0_2.textFrame
  L2_2 = L2_2.text
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == 11
  return L1_2
end

L0_1.hasEnoughCharacters = L1_1
L0_1 = TextField

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.textFrame
  L2_2 = L1_2
  L1_2 = L1_2.setText
  L3_2 = "X"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.eventTriggered
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_KEY_PRESSED
  L3_2.id = L4_2
  L3_2.code = "#"
  L1_2(L2_2, L3_2)
end

L0_1.clear = L1_1
L0_1 = TextField

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.textFrame
  L1_2 = L1_2.text
  return L1_2
end

L0_1.getText = L1_1
L0_1 = TextField

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L3_2 = _G
  L3_2 = L3_2.string
  L3_2 = L3_2.len
  L4_2 = A0_2.textFrame
  L4_2 = L4_2.text
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.id
  L5_2 = events
  L5_2 = L5_2.EID_KEY_PRESSED
  if L4_2 == L5_2 then
    L4_2 = A1_2.keyEvent
    if L4_2 then
      L4_2 = _G
      L4_2 = L4_2.res
      L4_2 = L4_2.playAudio
      L5_2 = "ButtonFocus"
      L4_2(L5_2)
    end
    L4_2 = A1_2.code
    if L4_2 == "#" then
      if 0 < L3_2 then
        L4_2 = A0_2.textFrame
        L5_2 = L4_2
        L4_2 = L4_2.setText
        L6_2 = _G
        L6_2 = L6_2.string
        L6_2 = L6_2.sub
        L7_2 = A0_2.textFrame
        L7_2 = L7_2.text
        L8_2 = 1
        L9_2 = L3_2 - 1
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      end
    else
      L4_2 = A1_2.code
      if L4_2 == "@" then
      else
        L4_2 = A0_2.maxCharacters
        if L3_2 < L4_2 then
          L4_2 = A0_2.textFrame
          L5_2 = L4_2
          L4_2 = L4_2.setText
          L6_2 = A0_2.textFrame
          L6_2 = L6_2.text
          L7_2 = A1_2.code
          L6_2 = L6_2 .. L7_2
          L4_2(L5_2, L6_2)
          L4_2 = gamelua
          L4_2 = L4_2.print
          L5_2 = "text = "
          L6_2 = A0_2.textFrame
          L6_2 = L6_2.text
          L7_2 = "\n"
          L5_2 = L5_2 .. L6_2 .. L7_2
          L4_2(L5_2)
        end
      end
    end
    L4_2 = _G
    L4_2 = L4_2.string
    L4_2 = L4_2.len
    L5_2 = A0_2.textFrame
    L5_2 = L5_2.text
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    if 0 < L3_2 then
      L4_2 = A0_2.marker
      L5_2 = _G
      L5_2 = L5_2.res
      L5_2 = L5_2.getStringWidth
      L6_2 = A0_2.textFrame
      L6_2 = L6_2.text
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2 * 0.25
      L5_2 = L5_2 * L2_2
      L4_2.x = L5_2
    else
      L4_2 = A0_2.marker
      L5_2 = _G
      L5_2 = L5_2.res
      L5_2 = L5_2.getStringWidth
      L6_2 = "_"
      L5_2 = L5_2(L6_2)
      L5_2 = -L5_2
      L5_2 = L5_2 * 0.5
      L5_2 = L5_2 * L2_2
      L4_2.x = L5_2
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = TextField

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2.g_safeToQuit = false
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_KEY_PRESSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = TextField

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  uiScale = L3_2
  L3_2 = A0_2.blinkTimer
  L3_2 = L3_2 + A1_2
  A0_2.blinkTimer = L3_2
  L3_2 = A0_2.blinkTimer
  L4_2 = TextField
  L4_2 = L4_2.CURSOR_BLINK_TIME
  if L3_2 > L4_2 then
    A0_2.blinkTimer = 0
    L3_2 = A0_2.marker
    L4_2 = A0_2.marker
    L4_2 = L4_2.visible
    L4_2 = not L4_2
    L3_2.visible = L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.isFull
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2.marker
    L3_2.visible = false
  end
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
L0_1 = TextField

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2.g_safeToQuit = true
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_KEY_PRESSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
Key = L0_1
L0_1 = Key

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.keyCode
  A0_2.name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setImage
  L3_2 = Key
  L3_2 = L3_2.buttonBGSprite
  L4_2 = Key
  L4_2 = L4_2.buttonBGSprite
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.font
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.getFontBasic
    L1_2 = L1_2()
  end
  A0_2.font = L1_2
  L1_2 = A0_2.activeKey
  if L1_2 then
    L1_2 = A0_2.keyCode
    A0_2.returnValue = L1_2
    L1_2 = A0_2.keyCode
    if L1_2 == "#" then
      L1_2 = ui
      L1_2 = L1_2.Image
      L2_2 = L1_2
      L1_2 = L1_2.new
      L3_2 = {}
      L4_2 = A0_2.keyCode
      L3_2.name = L4_2
      L1_2 = L1_2(L2_2, L3_2)
      char = L1_2
      A0_2.returnValue = "BACKSPACE"
      L1_2 = char
      L2_2 = L1_2
      L1_2 = L1_2.setImage
      L3_2 = "ICON_BACK_KEYBOARD"
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.keyCode
      if L1_2 == "@" then
        L1_2 = ui
        L1_2 = L1_2.Image
        L2_2 = L1_2
        L1_2 = L1_2.new
        L3_2 = {}
        L4_2 = A0_2.keyCode
        L3_2.name = L4_2
        L1_2 = L1_2(L2_2, L3_2)
        char = L1_2
        A0_2.returnValue = "RETURN"
        L1_2 = char
        L2_2 = L1_2
        L1_2 = L1_2.setImage
        L3_2 = "ICON_CHECK_KEYBOARD"
        L1_2(L2_2, L3_2)
      else
        L1_2 = ui
        L1_2 = L1_2.DummyText
        L2_2 = L1_2
        L1_2 = L1_2.new
        L3_2 = {}
        L4_2 = A0_2.keyCode
        L3_2.name = L4_2
        L4_2 = A0_2.font
        L3_2.font = L4_2
        L1_2 = L1_2(L2_2, L3_2)
        char = L1_2
        L1_2 = char
        L2_2 = L1_2
        L1_2 = L1_2.setScale
        L3_2 = 1.5
        L1_2(L2_2, L3_2)
        L1_2 = char
        L2_2 = L1_2
        L1_2 = L1_2.setText
        L3_2 = A0_2.keyCode
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = char
    A0_2.char = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = char
    L1_2(L2_2, L3_2)
  end
end

L0_1.init = L1_1
L0_1 = Key

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.ImageButton
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2.activeKey
  if L6_2 then
    L6_2 = A0_2.char
    L6_2.y = 0
    if A1_2 == "LHOLD" then
      L7_2 = A0_2
      L6_2 = A0_2.hitTest
      L8_2 = A2_2
      L9_2 = A3_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 then
        L6_2 = gamelua
        L6_2 = L6_2.menuManager
        L6_2 = L6_2.targetObject
        if L6_2 == A0_2 then
        end
      end
    end
  end
  L6_2 = A0_2.char
  if L6_2 and A1_2 == "LRELEASE" then
    L6_2 = A0_2.char
    L6_2.y = 0
  end
  if L4_2 then
    L6_2 = A0_2.returnValue
    if L4_2 == L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_KEY_PRESSED
      L8_2.id = L9_2
      L9_2 = A0_2.keyCode
      L8_2.code = L9_2
      L6_2(L7_2, L8_2)
    end
  end
  return L4_2
end

L0_1.onPointerEvent = L1_1
L0_1 = Key

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.activeKey
  if not L3_2 then
    return
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    L4_2 = {}
    L4_2.BACKSPACE = "#"
    L4_2.RETURN = "@"
    L4_2.DASH = "-"
    L4_2.SUBTRACT = "-"
    specialKeys = L4_2
    L4_2 = specialKeys
    L4_2 = L4_2[A2_2]
    if not L4_2 then
      L4_2 = A2_2
    end
    L5_2 = A0_2.keyCode
    if L4_2 == L5_2 then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_KEY_PRESSED
      L6_2.id = L7_2
      L7_2 = A0_2.keyCode
      L6_2.code = L7_2
      L6_2.keyEvent = true
      L4_2(L5_2, L6_2)
    end
  end
end

L0_1.onKeyEvent = L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
KeyBoard = L0_1
L0_1 = KeyBoard
L1_1 = {}
L2_1 = "QWERTYUIOP#"
L3_1 = "ASDFGHJKL@"
L4_1 = "ZXCVBNM-"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.keys = L1_1
L0_1 = KeyBoard
L0_1.activeKeys = "QWERTYUIOP#ASDFGHJKL@ZXCVBNM-"
L0_1 = KeyBoard

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.string
  L2_2 = L2_2.find
  L3_2 = KeyBoard
  L3_2 = L3_2.activeKeys
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= nil
  return L2_2
end

L0_1.isActiveKey = L1_1
L0_1 = KeyBoard

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = Key
  L2_2 = gamelua
  L2_2 = L2_2.getButtonImageName
  L3_2 = "buttonBackground"
  L4_2 = gamelua
  L4_2 = L4_2.SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.isDarkSide
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L1_2.buttonBGSprite = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  A0_2.widestRow = 0
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = Key
  L3_2 = L3_2.buttonBGSprite
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 * L1_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = KeyBoard
  L4_2 = L4_2.keys
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.max
    L9_2 = L2_2
    L10_2 = KeyBoard
    L10_2 = L10_2.keys
    L10_2 = L10_2[L6_2]
    L10_2 = #L10_2
    L8_2 = L8_2(L9_2, L10_2)
    A0_2.widestRow = L8_2
  end
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = KeyBoard
  L4_2 = L4_2.keys
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.widestRow
    L9_2 = KeyBoard
    L9_2 = L9_2.keys
    L9_2 = L9_2[L6_2]
    L9_2 = #L9_2
    L8_2 = L8_2 - L9_2
    L8_2 = L8_2 * L2_2
    L8_2 = L8_2 * 0.5
    L9_2 = 1
    L10_2 = _G
    L10_2 = L10_2.string
    L10_2 = L10_2.len
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L14_2 = A0_2
      L13_2 = A0_2.getKey
      L15_2 = L6_2
      L16_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = KeyBoard
      L15_2 = L14_2
      L14_2 = L14_2.isActiveKey
      L16_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = Key
      L16_2 = L15_2
      L15_2 = L15_2.new
      L17_2 = {}
      L17_2.keyCode = L13_2
      L17_2.activeKey = L14_2
      L17_2.row = L6_2
      L17_2.col = L12_2
      L15_2 = L15_2(L16_2, L17_2)
      L17_2 = A0_2
      L16_2 = A0_2.addChild
      L18_2 = L15_2
      L16_2(L17_2, L18_2)
      L16_2 = L12_2 * L2_2
      L16_2 = L8_2 + L16_2
      L15_2.x = L16_2
      L16_2 = L6_2 * L2_2
      L15_2.y = L16_2
    end
  end
  L3_2 = A0_2.widestRow
  L3_2 = L3_2 + 1
  L3_2 = L3_2 * L2_2
  L3_2 = L3_2 * 0.5
  A0_2.px = L3_2
  L3_2 = KeyBoard
  L3_2 = L3_2.keys
  L3_2 = #L3_2
  L3_2 = L3_2 * L2_2
  L3_2 = L3_2 * 0.5
  A0_2.py = L3_2
end

L0_1.init = L1_1
L0_1 = KeyBoard

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = _G
  L3_2 = L3_2.string
  L3_2 = L3_2.sub
  L4_2 = KeyBoard
  L4_2 = L4_2.keys
  L4_2 = L4_2[A1_2]
  L5_2 = A2_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end

L0_1.getKey = L1_1
L0_1 = KeyBoard

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "RETURN" then
    L6_2 = A0_2.returnFunc
    L6_2()
  end
end

L0_1.onPointerEvent = L1_1
L0_1 = KeyBoard

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
    if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = events
      L7_2 = L7_2.EID_POP_FRAME
      L6_2.id = L7_2
      L6_2.target = "keyBoardFrame"
      L4_2(L5_2, L6_2)
      L4_2 = gamelua
      L4_2 = L4_2.playAudio
      L5_2 = "ButtonBack"
      L4_2(L5_2)
    elseif A2_2 == "RETURN" then
      L4_2 = A0_2.returnFunc
      L4_2()
    end
  end
  L4_2 = "BLOCK"
  L5_2 = nil
  L6_2 = A0_2
  return L4_2, L5_2, L6_2
end

L0_1.onKeyEvent = L1_1
L0_1 = KeyBoard

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = Key
  L3_2 = L3_2.buttonBGSprite
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 * L1_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = KeyBoard
  L4_2 = L4_2.keys
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.widestRow
    L9_2 = KeyBoard
    L9_2 = L9_2.keys
    L9_2 = L9_2[L6_2]
    L9_2 = #L9_2
    L8_2 = L8_2 - L9_2
    L8_2 = L8_2 * L2_2
    L8_2 = L8_2 * 0.5
    L9_2 = 1
    L10_2 = _G
    L10_2 = L10_2.string
    L10_2 = L10_2.len
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L14_2 = A0_2
      L13_2 = A0_2.getKey
      L15_2 = L6_2
      L16_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L15_2 = A0_2
      L14_2 = A0_2.getChild
      L16_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2)
      L16_2 = L14_2
      L15_2 = L14_2.setScale
      L17_2 = L1_2
      L15_2(L16_2, L17_2)
      L15_2 = L12_2 * L2_2
      L15_2 = L8_2 + L15_2
      L14_2.x = L15_2
      L15_2 = L6_2 * L2_2
      L14_2.y = L15_2
    end
  end
  L3_2 = A0_2.widestRow
  L3_2 = L3_2 + 1
  L3_2 = L3_2 * L2_2
  L3_2 = L3_2 * 0.5
  A0_2.px = L3_2
  L3_2 = KeyBoard
  L3_2 = L3_2.keys
  L3_2 = #L3_2
  L3_2 = L3_2 * L2_2
  L3_2 = L3_2 * 0.5
  A0_2.py = L3_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.layout = L1_1
