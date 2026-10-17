local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
TextButton = L0_1
L0_1 = TextButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.text
  if not L1_2 then
    L1_2 = ""
  end
  A0_2.text = L1_2
  L1_2 = A0_2.group
  if not L1_2 then
    L1_2 = "TEXTS_BASIC"
  end
  A0_2.group = L1_2
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
  L1_2 = A0_2.font
  if not L1_2 then
    L1_2 = "FONT_BASIC"
  end
  A0_2.font = L1_2
  A0_2.scaleX = 1
  A0_2.scaleY = 1
  A0_2.meta = A0_2
  L1_2 = gamelua
  L1_2 = L1_2.setFont
  L2_2 = A0_2.font
  L1_2(L2_2)
  L1_2 = A0_2.text
  L2_2 = A0_2.group
  if L2_2 ~= "" then
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getString
    L3_2 = A0_2.group
    L4_2 = A0_2.text
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getStringWidth
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2.width = L2_2
  A0_2.enabled = true
end

L0_1.init = L1_1
L0_1 = TextButton

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
    L5_2 = L5_2 + L3_2
  end
  A0_2.clipped = true
end

L0_1.clip = L1_1
L0_1 = TextButton

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
L0_1 = TextButton

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
L0_1 = TextButton

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
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
  L6_2 = 1
  L7_2 = gamelua
  L7_2 = L7_2.getFontScale
  if L7_2 then
    L7_2 = gamelua
    L7_2 = L7_2.getUIScale
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.getFontScale
      L7_2 = L7_2()
      L8_2 = gamelua
      L8_2 = L8_2.getUIScale
      L8_2 = L8_2()
      L6_2 = L7_2 / L8_2
    end
  end
  L7_2 = A0_2.scaleX
  L7_2 = A3_2 * L7_2
  L7_2 = L7_2 * L6_2
  L8_2 = A0_2.scaleY
  L8_2 = A4_2 * L8_2
  L8_2 = L8_2 * L6_2
  L9_2 = A0_2.visible
  if L9_2 ~= false then
    L9_2 = A0_2.font
    if L9_2 ~= nil then
      L9_2 = gamelua
      L9_2 = L9_2.setFont
      L10_2 = A0_2.font
      L9_2(L10_2)
    else
      L9_2 = gamelua
      L9_2 = L9_2.setFont
      L10_2 = "FONT_BASIC"
      L9_2(L10_2)
    end
    L9_2 = A0_2.clipped
    if L9_2 then
      L9_2 = 1
      L10_2 = A0_2.lines
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = A0_2.lines
        L13_2 = L13_2[L12_2]
        L14_2 = A0_2.scaleX
        L13_2.scaleX = L14_2
        L13_2 = A0_2.lines
        L13_2 = L13_2[L12_2]
        L14_2 = A0_2.scaleY
        L13_2.scaleY = L14_2
        L13_2 = A0_2.lines
        L13_2 = L13_2[L12_2]
        L14_2 = L13_2
        L13_2 = L13_2.draw
        L15_2 = A0_2.x
        L15_2 = A1_2 + L15_2
        L16_2 = A0_2.y
        L16_2 = A2_2 + L16_2
        L17_2 = A3_2
        L18_2 = A4_2
        L19_2 = A5_2
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    else
      L9_2 = A0_2.x
      L9_2 = L9_2 + A1_2
      L10_2 = A0_2.y
      L10_2 = L10_2 + A2_2
      L12_2 = A0_2
      L11_2 = A0_2.getCorrectionParams
      L11_2, L12_2 = L11_2(L12_2)
      L13_2 = A0_2.pivotX
      if not L13_2 then
        L13_2 = 0
      end
      L14_2 = A0_2.pivotY
      if not L14_2 then
        L14_2 = 0
      end
      L15_2 = A0_2.width
      L13_2 = L15_2 / 2
      L15_2 = _G
      L15_2 = L15_2.res
      L15_2 = L15_2.getFontLeading
      L15_2 = L15_2()
      L14_2 = L15_2 / 2
      L15_2 = A0_2.rotationPivotX
      if not L15_2 then
        L15_2 = 0
      end
      L16_2 = A0_2.rotationPivotY
      if not L16_2 then
        L16_2 = 0
      end
      L17_2 = A0_2.floorCoordinates
      if L17_2 ~= false then
        L17_2 = _G
        L17_2 = L17_2.math
        L17_2 = L17_2.floor
        L18_2 = L9_2 / L7_2
        L17_2 = L17_2(L18_2)
        L9_2 = L17_2
        L17_2 = _G
        L17_2 = L17_2.math
        L17_2 = L17_2.floor
        L18_2 = L10_2 / L8_2
        L17_2 = L17_2(L18_2)
        L10_2 = L17_2
      else
        L9_2 = L9_2 / L7_2
        L10_2 = L10_2 / L8_2
      end
      L17_2 = debugDraw
      if L17_2 then
        L17_2 = gamelua
        L17_2 = L17_2.setRenderState
        L18_2 = 0
        L19_2 = 0
        L20_2 = 1
        L21_2 = 1
        L22_2 = 0
        L23_2 = 0
        L24_2 = 0
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L17_2 = gamelua
        L17_2 = L17_2.drawRect
        L18_2 = 0.5
        L19_2 = 1
        L20_2 = 1
        L21_2 = 0.5
        L22_2 = A0_2.x
        L22_2 = L22_2 + L11_2
        L23_2 = A0_2.y
        L23_2 = L23_2 + L12_2
        L24_2 = A0_2.x
        L24_2 = L24_2 + L11_2
        L25_2 = A0_2.width
        L24_2 = L24_2 + L25_2
        L25_2 = A0_2.y
        L25_2 = L25_2 + L12_2
        L27_2 = A0_2
        L26_2 = A0_2.getFontLeading
        L26_2 = L26_2(L27_2)
        L25_2 = L25_2 + L26_2
        L26_2 = true
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      end
      L17_2 = gamelua
      L17_2 = L17_2.setRenderState
      L18_2 = 0
      L19_2 = 0
      L20_2 = L7_2
      L21_2 = L8_2
      L22_2 = A5_2
      L23_2 = L15_2
      L24_2 = L16_2
      L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L17_2 = _G
      L17_2 = L17_2.res
      L17_2 = L17_2.drawString
      L18_2 = A0_2.group
      L19_2 = A0_2.text
      L20_2 = L9_2
      L21_2 = L10_2
      L22_2 = A0_2.hanchor
      L23_2 = A0_2.vanchor
      L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L17_2 = gamelua
      L17_2 = L17_2.setRenderState
      L18_2 = 0
      L19_2 = 0
      L20_2 = 1
      L21_2 = 1
      L22_2 = 0
      L23_2 = 0
      L24_2 = 0
      L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    end
  end
end

L0_1.draw = L1_1
L0_1 = TextButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.activateOnRelease
  if L4_2 or A1_2 ~= "LPRESS" then
    L4_2 = A0_2.activateOnRelease
    if not L4_2 or A1_2 ~= "LRELEASE" then
      goto lbl_24
    end
  end
  L4_2 = A0_2.enabled
  if L4_2 ~= false then
    L5_2 = A0_2
    L4_2 = A0_2.checkBounds
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      L4_2 = A0_2.returnValue
      L5_2 = A0_2.meta
      L6_2 = A0_2
      return L4_2, L5_2, L6_2
    end
  end
  ::lbl_24::
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
L0_1 = TextButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.scaleY
  if not L1_2 then
    L1_2 = 1
  end
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

L0_1.getHeight = L1_1
L0_1 = TextButton

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
L0_1 = TextButton

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
