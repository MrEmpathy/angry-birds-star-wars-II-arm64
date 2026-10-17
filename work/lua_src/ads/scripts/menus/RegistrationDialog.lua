local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
TextEntry = L0_1
L0_1 = TextEntry
L0_1.textScaleMultiplier = 0.55
L0_1 = TextEntry

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.enabled = true
  A0_2.max_length = nil
  A0_2.cursor_blink_timer = 0
  A0_2.cursor_x = 0
  A0_2.cursor_width = 6
  A0_2.font_height = 1
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "text"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

L0_1.init = L1_1
L0_1 = TextEntry

function L1_1(A0_2, A1_2)
  A0_2.enabled = A1_2
end

L0_1.setEnabled = L1_1
L0_1 = TextEntry

function L1_1(A0_2, A1_2)
  A0_2.max_length = A1_2
end

L0_1.setMaxLength = L1_1
L0_1 = TextEntry

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
  L6_2 = A0_2.enabled
  if L6_2 then
    L6_2 = {}
    L7_2 = "A"
    L8_2 = "B"
    L9_2 = "C"
    L10_2 = "D"
    L11_2 = "E"
    L12_2 = "F"
    L13_2 = "G"
    L14_2 = "H"
    L15_2 = "I"
    L16_2 = "J"
    L17_2 = "K"
    L18_2 = "L"
    L19_2 = "M"
    L20_2 = "N"
    L21_2 = "O"
    L22_2 = "P"
    L23_2 = "Q"
    L24_2 = "R"
    L25_2 = "S"
    L26_2 = "T"
    L27_2 = "U"
    L28_2 = "V"
    L29_2 = "W"
    L30_2 = "X"
    L31_2 = "Y"
    L32_2 = "Z"
    L33_2 = "-"
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L6_2[5] = L11_2
    L6_2[6] = L12_2
    L6_2[7] = L13_2
    L6_2[8] = L14_2
    L6_2[9] = L15_2
    L6_2[10] = L16_2
    L6_2[11] = L17_2
    L6_2[12] = L18_2
    L6_2[13] = L19_2
    L6_2[14] = L20_2
    L6_2[15] = L21_2
    L6_2[16] = L22_2
    L6_2[17] = L23_2
    L6_2[18] = L24_2
    L6_2[19] = L25_2
    L6_2[20] = L26_2
    L6_2[21] = L27_2
    L6_2[22] = L28_2
    L6_2[23] = L29_2
    L6_2[24] = L30_2
    L6_2[25] = L31_2
    L6_2[26] = L32_2
    L6_2[27] = L33_2
    if A1_2 == "PRESS" then
      L7_2 = gamelua
      L7_2 = L7_2.keyHold
      L7_2 = L7_2.CONTROL
      if not L7_2 then
        L7_2 = _G
        L7_2 = L7_2.ipairs
        L8_2 = L6_2
        L7_2, L8_2, L9_2 = L7_2(L8_2)
        for L10_2, L11_2 in L7_2, L8_2, L9_2 do
          if L11_2 == A2_2 then
            L13_2 = A0_2
            L12_2 = A0_2.keyPressed
            L14_2 = A2_2
            L12_2(L13_2, L14_2)
          end
        end
      end
      if A2_2 == "DASH" or A2_2 == "SUBTRACT" then
        L8_2 = A0_2
        L7_2 = A0_2.keyPressed
        L9_2 = "-"
        L7_2(L8_2, L9_2)
      end
      if A2_2 == "BACKSPACE" then
        A0_2.erase_repeat_time = 0.5
        L8_2 = A0_2
        L7_2 = A0_2.eraseCharacter
        L7_2(L8_2)
      end
      L7_2 = gamelua
      L7_2 = L7_2.keyHold
      L7_2 = L7_2.CONTROL
      if L7_2 and A2_2 == "V" then
        L7_2 = {}
        L8_2 = _G
        L8_2 = L8_2.ipairs
        L9_2 = L6_2
        L8_2, L9_2, L10_2 = L8_2(L9_2)
        for L11_2, L12_2 in L8_2, L9_2, L10_2 do
          L7_2[L12_2] = true
        end
        L8_2 = gamelua
        L8_2 = L8_2.getClipboardText
        L8_2 = L8_2()
        L9_2 = L8_2
        L8_2 = L8_2.upper
        L8_2 = L8_2(L9_2)
        L9_2 = 1
        L10_2 = #L8_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L14_2 = L8_2
          L13_2 = L8_2.sub
          L15_2 = L12_2
          L16_2 = L12_2
          L13_2 = L13_2(L14_2, L15_2, L16_2)
          L14_2 = L7_2[L13_2]
          if L14_2 then
            L15_2 = A0_2
            L14_2 = A0_2.keyPressed
            L16_2 = L13_2
            L17_2 = true
            L14_2(L15_2, L16_2, L17_2)
          end
        end
      end
    elseif A1_2 == "RELEASE" then
      A0_2.erase_repeat_time = nil
    end
  end
  L6_2 = L3_2
  L7_2 = L4_2
  L8_2 = L5_2
  return L6_2, L7_2, L8_2
end

L0_1.onKeyEvent = L1_1
L0_1 = TextEntry

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "text"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.max_length
  if L4_2 ~= nil then
    L4_2 = _G
    L4_2 = L4_2.string
    L4_2 = L4_2.len
    L5_2 = L3_2.text
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.max_length
    if not (L4_2 < L5_2) then
      goto lbl_30
    end
  end
  L4_2 = L3_2.text
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L3_2.text = L4_2
  if not A2_2 then
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.playAudio
    L5_2 = "menu_confirm"
    L6_2 = 1
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2.contentChanged
  L4_2(L5_2)
  ::lbl_30::
end

L0_1.keyPressed = L1_1
L0_1 = TextEntry

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L2_2 = L2_2 * 0.5
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "text"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFont
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.setFont
  L5_2 = L3_2.font
  L4_2(L5_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getFontLeading
  L4_2 = L4_2()
  L4_2 = L4_2 * L2_2
  A0_2.font_height = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.contentChanged
  L4_2(L5_2)
end

L0_1.setFont = L1_1
L0_1 = TextEntry

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "text"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = _G
  L2_2 = L2_2.string
  L2_2 = L2_2.sub
  L3_2 = L1_2.text
  L4_2 = 1
  L5_2 = _G
  L5_2 = L5_2.string
  L5_2 = L5_2.len
  L6_2 = L1_2.text
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 - 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.text = L2_2
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.playAudio
  L3_2 = "menu_back"
  L4_2 = 1
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.contentChanged
  L2_2(L3_2)
end

L0_1.eraseCharacter = L1_1
L0_1 = TextEntry

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.erase_repeat_time
  if L3_2 then
    L3_2 = A0_2.erase_repeat_time
    L3_2 = L3_2 - A1_2
    A0_2.erase_repeat_time = L3_2
    L3_2 = A0_2.erase_repeat_time
    if L3_2 < 0 then
      A0_2.erase_repeat_time = 0.025
      L4_2 = A0_2
      L3_2 = A0_2.eraseCharacter
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.cursor_blink_timer
  L4_2 = A1_2 * 3
  L3_2 = L3_2 + L4_2
  A0_2.cursor_blink_timer = L3_2
  L3_2 = A0_2.cursor_blink_timer
  if 1 <= L3_2 then
    L3_2 = A0_2.cursor_blink_timer
    L3_2 = L3_2 - 2
    A0_2.cursor_blink_timer = L3_2
  end
end

L0_1.update = L1_1
L0_1 = TextEntry

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L1_2 = L1_2 * 0.5
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "text"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.setFont
  L4_2 = L2_2.font
  L3_2(L4_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getStringWidth
  L4_2 = L2_2.text
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L1_2
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getFontLeading
  L4_2 = L4_2()
  L4_2 = L4_2 * L1_2
  A0_2.font_height = L4_2
  L4_2 = 6 * L1_2
  A0_2.cursor_width = L4_2
  L4_2 = L3_2 + 5
  L4_2 = L4_2 / 2
  L5_2 = TextEntry
  L5_2 = L5_2.textScaleMultiplier
  L4_2 = L4_2 * L5_2
  A0_2.cursor_x = L4_2
end

L0_1.contentChanged = L1_1
L0_1 = TextEntry

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "text"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.text
  return L2_2
end

L0_1.getText = L1_1
L0_1 = TextEntry

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.enabled
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.setRenderState
    L4_2 = 0
    L5_2 = 0
    L6_2 = 1
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = gamelua
    L3_2 = L3_2.drawLine2D
    L4_2 = A0_2.x
    L4_2 = A1_2 + L4_2
    L5_2 = A0_2.cursor_x
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2.y
    L5_2 = A2_2 + L5_2
    L6_2 = A0_2.font_height
    L6_2 = L6_2 * 0.4
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.x
    L6_2 = A1_2 + L6_2
    L7_2 = A0_2.cursor_x
    L6_2 = L6_2 + L7_2
    L7_2 = A0_2.y
    L7_2 = A2_2 + L7_2
    L8_2 = A0_2.font_height
    L8_2 = L8_2 * 0.4
    L7_2 = L7_2 + L8_2
    L8_2 = A0_2.cursor_width
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L12_2 = A0_2.cursor_blink_timer
    L13_2 = A0_2.cursor_blink_timer
    L12_2 = L12_2 * L13_2
    L12_2 = L12_2 * 255
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end

L0_1.draw = L1_1
L0_1 = ui
L0_1 = L0_1.Image
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
RegistrationDialog = L0_1
L0_1 = RegistrationDialog

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  if not A4_2 then
    L5_2 = {}
    A4_2 = L5_2
  end
  A4_2.from = A1_2
  A4_2.success_event = A2_2
  A4_2.success_call = A3_2
  L5_2 = ui
  L5_2 = L5_2.Image
  L5_2 = L5_2.new
  L6_2 = A0_2
  L7_2 = A4_2
  return L5_2(L6_2, L7_2)
end

L0_1.new = L1_1
L0_1 = RegistrationDialog

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setImage
  L3_2 = "ACTIVATE_DIALOG_BOX"
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "register_button"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "ACTIVATE_DIALOG_BUTTON_3"
  L2_2(L3_2, L4_2)
  L1_2.returnValue = "REGISTER"
  L1_2.clickSound = "ButtonProceed"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "shop_button"
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "ACTIVATE_DIALOG_BUTTON_1"
  L3_2(L4_2, L5_2)
  L2_2.returnValue = "GOTO_SHOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L3_2.name = "cancel_button"
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "ACTIVATE_DIALOG_BUTTON_4"
  L4_2(L5_2, L6_2)
  L3_2.returnValue = "CANCEL"
  L3_2.clickSound = "ButtonBack"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L4_2.name = "keyBack"
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "ACTIVATE_DIALOG_BUTTON_2"
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = TextEntry
  L6_2 = L5_2
  L5_2 = L5_2.new
  L5_2 = L5_2(L6_2)
  L5_2.name = "key_entry"
  L7_2 = L5_2
  L6_2 = L5_2.setFont
  L8_2 = gamelua
  L8_2 = L8_2.getFontBasic
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.setMaxLength
  L8_2 = 19
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  A0_2.shade = 0
end

L0_1.init = L1_1
L0_1 = RegistrationDialog

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.setScale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.w
  L2_2 = L2_2 * L1_2
  L2_2 = L2_2 * 0.275
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "key_entry"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "shop_button"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "register_button"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "cancel_button"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "keyBack"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L3_2
  L8_2 = L3_2.setScale
  L10_2 = TextEntry
  L10_2 = L10_2.textScaleMultiplier
  L10_2 = L10_2 * L1_2
  L8_2(L9_2, L10_2)
  L9_2 = L3_2
  L8_2 = L3_2.contentChanged
  L8_2(L9_2)
  L9_2 = L4_2
  L8_2 = L4_2.setScale
  L10_2 = L1_2 * 0.9
  L8_2(L9_2, L10_2)
  L9_2 = L5_2
  L8_2 = L5_2.setScale
  L10_2 = L1_2 * 0.9
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.setScale
  L10_2 = L1_2 * 0.9
  L8_2(L9_2, L10_2)
  L4_2.x = L2_2
  L7_2.x = L2_2
  L3_2.x = L2_2
  L5_2.x = L2_2
  L6_2.x = L2_2
  L8_2 = A0_2.h
  L8_2 = -L8_2
  L8_2 = L8_2 * L1_2
  L8_2 = L8_2 * 0.1
  L4_2.y = L8_2
  L8_2 = A0_2.h
  L8_2 = L8_2 * L1_2
  L8_2 = L8_2 * 0.05
  L7_2.y = L8_2
  L8_2 = A0_2.h
  L8_2 = L8_2 * L1_2
  L8_2 = L8_2 * 0.05
  L3_2.y = L8_2
  L8_2 = A0_2.h
  L8_2 = L8_2 * L1_2
  L8_2 = L8_2 * 0.225
  L5_2.y = L8_2
  L8_2 = A0_2.h
  L8_2 = L8_2 * 0.425
  L8_2 = L8_2 * L1_2
  L6_2.y = L8_2
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 * 0.5
  A0_2.x = L8_2
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 * 0.5
  L8_2 = L8_2 - 50
  A0_2.y = L8_2
end

L0_1.layout = L1_1
L0_1 = RegistrationDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Image
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.shade
  L3_2 = L3_2 + A1_2
  A0_2.shade = L3_2
end

L0_1.update = L1_1
L0_1 = RegistrationDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.min
  L8_2 = A0_2.shade
  L9_2 = 0.65
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = RegistrationDialog

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L7_2 = "BLOCK"
    L8_2 = nil
    L9_2 = A0_2
    return L7_2, L8_2, L9_2
  elseif L4_2 == "CANCEL" then
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
  elseif L4_2 == "GOTO_SHOP" then
    L7_2 = _G
    L7_2 = L7_2.res
    L7_2 = L7_2.openURL
    L8_2 = gamelua
    L8_2 = L8_2.FULL_GAME_URL
    L7_2(L8_2)
  elseif L4_2 == "REGISTER" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_PUSH_FRAME
    L9_2.id = L10_2
    L10_2 = KeyRegistrationPage
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = A0_2.success_event
    L13_2 = A0_2.success_call
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2.target = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = registerKey
    L9_2 = A0_2
    L8_2 = A0_2.getChild
    L10_2 = "key_entry"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2
    L8_2 = L8_2.getText
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = RegistrationDialog

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ui
  L3_2 = L3_2.Image
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
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_POP_FRAME
      L6_2.id = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = gamelua
      L4_2 = L4_2.playAudio
      L5_2 = "ButtonBack"
      L4_2(L5_2)
    elseif A2_2 == "RETURN" then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_PUSH_FRAME
      L6_2.id = L7_2
      L7_2 = KeyRegistrationPage
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = A0_2.success_event
      L10_2 = A0_2.success_call
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.target = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = registerKey
      L6_2 = A0_2
      L5_2 = A0_2.getChild
      L7_2 = "key_entry"
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2
      L5_2 = L5_2.getText
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L4_2 = "BLOCK"
  L5_2 = nil
  L6_2 = A0_2
  return L4_2, L5_2, L6_2
end

L0_1.onKeyEvent = L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
KeyRegistrationPage = L0_1
L0_1 = KeyRegistrationPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if not A3_2 then
    L4_2 = {}
    A3_2 = L4_2
  end
  A3_2.success_event = A1_2
  A3_2.success_call = A2_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.new
  L5_2 = A0_2
  L6_2 = A3_2
  return L4_2(L5_2, L6_2)
end

L0_1.new = L1_1
L0_1 = KeyRegistrationPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "spinner"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "IN_APP_LOADING"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2.spinner_angle = 0
end

L0_1.init = L1_1
L0_1 = KeyRegistrationPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "spinner"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
end

L0_1.layout = L1_1
L0_1 = KeyRegistrationPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.65
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = KeyRegistrationPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "spinner"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.spinner_angle
  L5_2 = A1_2 * 10
  L4_2 = L4_2 + L5_2
  A0_2.spinner_angle = L4_2
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.floor
  L5_2 = A0_2.spinner_angle
  L5_2 = L5_2 / 0.5235983
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * 0.5235983
  L3_2.angle = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.checkRegistrationResult
  L4_2, L5_2 = L4_2()
  if L4_2 then
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
    if L5_2 then
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
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_PUSH_FRAME
      L8_2.id = L9_2
      L9_2 = ui
      L9_2 = L9_2.ConfirmPrompt
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.title = "Registration succeeded"
      L11_2.content = "Key successfully registered."
      L11_2.returnValue = "CLOSE"
      L12_2 = A0_2.success_event
      L11_2.close_event = L12_2
      L12_2 = A0_2.success_call
      L11_2.closeCallback = L12_2
      L11_2.hideCloseButton = true
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.target = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = saveRegistration
      L6_2()
    else
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_PUSH_FRAME
      L8_2.id = L9_2
      L9_2 = ui
      L9_2 = L9_2.ConfirmPrompt
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.title = "Registration failed"
      L11_2.content = "Make sure you entered the code correctly and that you are connected to the internet."
      L11_2.hideCloseButton = true
      L11_2.returnValue = "CLOSE"
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.target = L9_2
      L6_2(L7_2, L8_2)
    end
  end
end

L0_1.update = L1_1
L0_1 = KeyRegistrationPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = "BLOCK"
  L4_2 = nil
  L5_2 = A0_2
  return L3_2, L4_2, L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = KeyRegistrationPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.Image
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L7_2 = "BLOCK"
    L8_2 = nil
    L9_2 = A0_2
    return L7_2, L8_2, L9_2
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
