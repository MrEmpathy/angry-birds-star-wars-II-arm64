local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
Text = L0_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.group
  if not L1_2 then
    L1_2 = "TEXTS_BASIC"
  end
  A0_2.group = L1_2
  L1_2 = A0_2.text
  if not L1_2 then
    L1_2 = ""
  end
  A0_2.text = L1_2
  L1_2 = A0_2.textBoxSize
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.screenWidth
  end
  A0_2.textBoxSize = L1_2
  L1_2 = A0_2.hanchor
  if not L1_2 then
    L1_2 = "HCENTER"
  end
  A0_2.hanchor = L1_2
  L1_2 = A0_2.vanchor
  if not L1_2 then
    L1_2 = "VCENTER"
  end
  A0_2.vanchor = L1_2
  L1_2 = _G
  L1_2 = L1_2.type
  L2_2 = A0_2.font
  L1_2 = L1_2(L2_2)
  if L1_2 == "function" then
    L1_2 = A0_2.font
    A0_2.getFontFunction = L1_2
    L1_2 = A0_2.getFontFunction
    L1_2 = L1_2()
    A0_2.font = L1_2
    L1_2 = gamelua
    L1_2 = L1_2.setFont
    L2_2 = A0_2.getFontFunction
    L2_2, L3_2, L4_2, L5_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2.font
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.fontBasic
    end
    A0_2.font = L1_2
    L1_2 = gamelua
    L1_2 = L1_2.setFont
    L2_2 = A0_2.font
    L1_2(L2_2)
  end
  L1_2 = 1
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.getUIScale
    if L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.getFontScale
      L2_2 = L2_2()
      L3_2 = gamelua
      L3_2 = L3_2.getUIScale
      L3_2 = L3_2()
      L1_2 = L2_2 / L3_2
    end
  end
  A0_2.scaleX = L1_2
  A0_2.scaleY = L1_2
  A0_2.visible = true
  A0_2.floorCoordinates = true
  L2_2 = A0_2.text
  L3_2 = A0_2.group
  if L3_2 ~= "" then
    L3_2 = _G
    L3_2 = L3_2.res
    L3_2 = L3_2.getString
    L4_2 = A0_2.group
    L5_2 = A0_2.text
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getStringWidth
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2.width = L3_2
end

L0_1.init = L1_1
L0_1 = Text

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = _G
  L2_2 = L2_2.type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "function" then
    A0_2.getFontFunction = A1_2
    L2_2 = A0_2.getFontFunction
    L2_2 = L2_2()
    A0_2.font = L2_2
  else
    A0_2.font = A1_2
  end
end

L0_1.setFont = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.getFontFunction
  if L1_2 ~= nil then
    L1_2 = A0_2.getFontFunction
    L1_2 = L1_2()
    A0_2.font = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.clip
  L1_2(L2_2)
end

L0_1.layout = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.scaleX
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = A0_2.scaleY
  if not L2_2 then
    L2_2 = 1
  end
  L3_2 = gamelua
  L3_2 = L3_2.setFont
  L4_2 = A0_2.font
  L3_2(L4_2)
  L3_2 = A0_2.clippedBoxSize
  if L3_2 ~= nil then
    L3_2 = A0_2.textBoxSize
    L4_2 = A0_2.clippedBoxSize
    if L3_2 == L4_2 then
      L3_2 = _G
      L3_2 = L3_2.res
      L3_2 = L3_2.getStringWidth
      L4_2 = A0_2.text
      L5_2 = " "
      L4_2 = L4_2 .. L5_2
      L3_2 = L3_2(L4_2)
      A0_2.textBoxSize = L3_2
    end
  end
  L3_2 = gamelua
  L3_2 = L3_2.clipText
  L4_2 = A0_2.group
  L5_2 = A0_2.text
  L6_2 = A0_2.textBoxSize
  L6_2 = L6_2 / L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getFontLeading
  L3_2 = L3_2()
  L3_2 = L3_2 * L2_2
  L4_2 = gamelua
  L4_2 = L4_2.clippedText
  L4_2 = L4_2.lines
  L4_2 = #L4_2
  L4_2 = L4_2 * L3_2
  A0_2.textBlockHeight = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.clippedText
  L4_2 = L4_2.widestLine
  A0_2.widestLine = L4_2
  L4_2 = {}
  A0_2.lines = L4_2
  L4_2 = 1
  L5_2 = 0
  L6_2 = A0_2.vanchor
  if L6_2 == "VCENTER" then
    L6_2 = A0_2.textBlockHeight
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L3_2 / 2
    L5_2 = L6_2 + L7_2
  else
    L6_2 = A0_2.vanchor
    if L6_2 == "BOTTOM" then
      L6_2 = A0_2.textBlockHeight
      L6_2 = -L6_2
      L5_2 = L6_2 + L3_2
    end
  end
  while true do
    L6_2 = gamelua
    L6_2 = L6_2.clippedText
    L6_2 = L6_2.lines
    L6_2 = #L6_2
    if not (L4_2 <= L6_2) then
      break
    end
    L6_2 = gamelua
    L6_2 = L6_2.clippedText
    L6_2 = L6_2.lines
    L6_2 = L6_2[L4_2]
    L7_2 = Text
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L10_2 = A0_2.font
    L9_2.font = L10_2
    L9_2.text = L6_2
    L9_2.y = L5_2
    L10_2 = A0_2.scaleX
    L9_2.scaleX = L10_2
    L10_2 = A0_2.scaleY
    L9_2.scaleY = L10_2
    L10_2 = A0_2.hanchor
    L9_2.hanchor = L10_2
    L10_2 = A0_2.vanchor
    L9_2.vanchor = L10_2
    L9_2.height = L3_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = _G
    L8_2 = L8_2.table
    L8_2 = L8_2.insert
    L9_2 = A0_2.lines
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L4_2 = L4_2 + 1
    L8_2 = L3_2 * 0.5
    L5_2 = L5_2 + L8_2
  end
  L6_2 = A0_2.lines
  L6_2 = #L6_2
  if L6_2 == 1 then
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.getStringWidth
    L7_2 = A0_2.text
    L8_2 = " "
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    A0_2.textBoxSize = L6_2
    L6_2 = A0_2.textBoxSize
    A0_2.clippedBoxSize = L6_2
  end
  A0_2.clipped = true
end

L0_1.clip = L1_1
L0_1 = Text

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getStringWidth
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getString
  L5_2 = A0_2.group
  L6_2 = A0_2.text
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = A0_2.width
  if L3_2 > L4_2 then
    A0_2.width = L3_2
  end
  L4_2 = A0_2.clipped
  if L4_2 then
    L4_2 = 1
    L5_2 = A0_2.lines
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2.lines
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.checkBounds
      L10_2 = A1_2
      L11_2 = A2_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        L8_2 = true
        return L8_2
      end
    end
  else
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.getFontLeading
    L4_2 = L4_2()
    L6_2 = A0_2
    L5_2 = A0_2.getCorrectionParams
    L5_2, L6_2 = L5_2(L6_2)
    L7_2 = A0_2.y
    L7_2 = L7_2 + L6_2
    L7_2 = A2_2 >= L7_2
    return L7_2
  end
end

L0_1.checkBounds = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getFontLeading
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = 0
  L4_2 = A0_2.hanchor
  if L4_2 == "HCENTER" then
    L4_2 = A0_2.width
    L4_2 = -L4_2
    L2_2 = L4_2 / 2
  else
    L4_2 = A0_2.hanchor
    if L4_2 == "RIGHT" then
      L4_2 = A0_2.width
      L2_2 = -L4_2
    else
      L4_2 = A0_2.hanchor
      if L4_2 == "LEFT" then
        L2_2 = 0
      end
    end
  end
  L4_2 = A0_2.vanchor
  if L4_2 == "VCENTER" then
    L4_2 = -L1_2
    L3_2 = L4_2 / 2
  else
    L4_2 = A0_2.vanchor
    if L4_2 == "BOTTOM" then
      L3_2 = -L1_2
    else
      L4_2 = A0_2.vanchor
      if L4_2 == "TOP" then
        L3_2 = 0
      end
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end

L0_1.getCorrectionParams = L1_1
L0_1 = Text

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = gamelua
  L3_2 = L3_2.setFont
  L4_2 = A0_2.font
  L3_2(L4_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.drawString
  L4_2 = A0_2.group
  L5_2 = A0_2.text
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.floor
  L7_2 = A0_2.x
  L7_2 = L7_2 + A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.y
  L8_2 = L8_2 + A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2.hanchor
  L9_2 = A0_2.vanchor
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end

L0_1.drawFast = L1_1
L0_1 = Text

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = A0_2.alpha
  if L6_2 ~= nil then
    if A3_2 ~= nil then
      L6_2 = gamelua
      L6_2 = L6_2.drawUITextNative
      L7_2 = A0_2
      L8_2 = A1_2
      L9_2 = A2_2
      L10_2 = A3_2
      L11_2 = A4_2
      L12_2 = A5_2
      L13_2 = A0_2.alpha
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    else
      L6_2 = gamelua
      L6_2 = L6_2.drawUITextNative
      L7_2 = A0_2
      L8_2 = A1_2
      L9_2 = A2_2
      L6_2(L7_2, L8_2, L9_2)
    end
  elseif A3_2 ~= nil then
    L6_2 = gamelua
    L6_2 = L6_2.drawUITextNative
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L6_2 = gamelua
    L6_2 = L6_2.drawUITextNative
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
  end
end

L0_1.draw = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.setFont
  L2_2 = A0_2.font
  L1_2(L2_2)
  L1_2 = A0_2.clipped
  if L1_2 then
    L1_2 = A0_2.lines
    L1_2 = #L1_2
    L3_2 = A0_2
    L2_2 = A0_2.getFontLeading
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 * L2_2
    return L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2.getFontLeading
    return L1_2(L2_2)
  end
end

L0_1.getHeight = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.setFont
  L2_2 = A0_2.font
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getStringWidth
  L2_2 = A0_2.text
  return L1_2(L2_2)
end

L0_1.getWidth = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.scaleY
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = gamelua
  L2_2 = L2_2.setFont
  L3_2 = A0_2.font
  L2_2(L3_2)
  L2_2 = A0_2.clipped
  if L2_2 then
    L2_2 = A0_2.lines
    L2_2 = #L2_2
    L4_2 = A0_2
    L3_2 = A0_2.getFontLeading
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 * L3_2
    L2_2 = L2_2 * L1_2
    return L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.getFontLeading
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 * L1_2
    return L2_2
  end
end

L0_1.getScaledHeight = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.scaleX
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = gamelua
  L2_2 = L2_2.setFont
  L3_2 = A0_2.font
  L2_2(L3_2)
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getStringWidth
  L3_2 = A0_2.text
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 * L1_2
  return L2_2
end

L0_1.getScaledWidth = L1_1
L0_1 = Text

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.setFont
  L2_2 = A0_2.font
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getFontLeading
  L1_2 = L1_2()
  return L1_2
end

L0_1.getFontLeading = L1_1
L0_1 = Text

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = gamelua
  L2_2 = L2_2.setFont
  L3_2 = A0_2.font
  L2_2(L3_2)
  L2_2 = A0_2.lines
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getStringWidth
    L3_2 = A0_2.lines
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.text
    return L2_2(L3_2)
  else
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getStringWidth
    L3_2 = A0_2.text
    return L2_2(L3_2)
  end
end

L0_1.getLineWidth = L1_1
L0_1 = Text

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.text = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.clip
  L2_2(L3_2)
end

L0_1.setText = L1_1
L0_1 = Text

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = 1
  L3_2 = gamelua
  L3_2 = L3_2.getFontScale
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.getUIScale
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.getFontScale
      L3_2 = L3_2()
      L4_2 = gamelua
      L4_2 = L4_2.getUIScale
      L4_2 = L4_2()
      L2_2 = L3_2 / L4_2
    end
  end
  L3_2 = A0_2.textBoxSize
  L3_2 = A1_2 * L3_2
  A0_2.textBoxSize = L3_2
  L3_2 = A1_2 * L2_2
  A0_2.scaleX = L3_2
  L3_2 = A1_2 * L2_2
  A0_2.scaleY = L3_2
end

L0_1.setScale = L1_1
