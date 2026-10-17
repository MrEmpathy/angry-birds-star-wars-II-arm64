local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
DummyText = L0_1
L0_1 = DummyText

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = "DummyText"
  end
  A0_2.name = L1_2
  A0_2.group = "TEXTS_BASIC"
  L1_2 = A0_2.text
  if not L1_2 then
    L1_2 = ""
  end
  A0_2.text = L1_2
  L1_2 = A0_2.font
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.getFontBasic
    L1_2 = L1_2()
  end
  A0_2.font = L1_2
  L1_2 = A0_2.scaleX
  if not L1_2 then
    L1_2 = 1
  end
  A0_2.scaleX = L1_2
  L1_2 = A0_2.scaleY
  if not L1_2 then
    L1_2 = 1
  end
  A0_2.scaleY = L1_2
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
  L1_2 = A0_2.separator
  if not L1_2 then
    L1_2 = "\n"
  end
  A0_2.separator = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.splitText
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = DummyText

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.text = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.splitText
  L2_2(L3_2)
end

L0_1.setText = L1_1
L0_1 = DummyText

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2.lines = L1_2
  L1_2 = _G
  L1_2 = L1_2.string
  L1_2 = L1_2.gmatch
  L2_2 = _G
  L2_2 = L2_2.tostring
  L3_2 = A0_2.text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.separator
  L2_2 = L2_2 .. L3_2
  L3_2 = "(.-)"
  L4_2 = A0_2.separator
  L5_2 = "()"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.insert
    L6_2 = A0_2.lines
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end

L0_1.splitText = L1_1
L0_1 = DummyText

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L5_2 = A0_2.visible
  if L5_2 then
    L5_2 = 1
    L6_2 = gamelua
    L6_2 = L6_2.getUIScale
    if L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.getFontScale
      if L6_2 then
        L6_2 = gamelua
        L6_2 = L6_2.getFontScale
        L6_2 = L6_2()
        L7_2 = gamelua
        L7_2 = L7_2.getUIScale
        L7_2 = L7_2()
        L5_2 = L6_2 / L7_2
      end
    end
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.useFont
    L7_2 = A0_2.font
    L6_2(L7_2)
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.getFontLeading
    L6_2 = L6_2()
    L7_2 = A0_2.scaleX
    L7_2 = L7_2 * A3_2
    L7_2 = L7_2 * L5_2
    L8_2 = A0_2.scaleY
    L8_2 = L8_2 * A4_2
    L8_2 = L8_2 * L5_2
    L9_2 = A0_2.alpha
    if not L9_2 then
      L9_2 = 1
    end
    L10_2 = _G
    L10_2 = L10_2.ipairs
    L11_2 = A0_2.lines
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = gamelua
      L15_2 = L15_2.setRenderState
      L16_2 = A0_2.x
      L16_2 = L16_2 + A1_2
      L16_2 = L16_2 / L7_2
      L17_2 = A0_2.y
      L17_2 = L17_2 + A2_2
      L17_2 = L17_2 / L8_2
      L18_2 = A0_2.lines
      L18_2 = #L18_2
      L18_2 = L18_2 + 1
      L18_2 = L18_2 * 0.5
      L18_2 = L13_2 - L18_2
      L18_2 = L18_2 * L6_2
      L17_2 = L17_2 + L18_2
      L18_2 = L7_2
      L19_2 = L8_2
      L20_2 = 0
      L21_2 = 0
      L22_2 = 0
      L23_2 = L9_2
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L15_2 = _G
      L15_2 = L15_2.res
      L15_2 = L15_2.drawString
      L16_2 = A0_2.group
      L17_2 = L14_2
      L18_2 = 0
      L19_2 = 0
      L20_2 = A0_2.hanchor
      L21_2 = A0_2.vanchor
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    end
    L10_2 = gamelua
    L10_2 = L10_2.setRenderState
    L11_2 = 0
    L12_2 = 0
    L13_2 = 1
    L14_2 = 1
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    L18_2 = 1
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  end
end

L0_1.draw = L1_1
L0_1 = DummyText

function L1_1(A0_2, A1_2)
  A0_2.scaleX = A1_2
  A0_2.scaleY = A1_2
end

L0_1.setScale = L1_1
L0_1 = DummyText

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
L0_1 = DummyText

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
  L1_2 = L1_2(L2_2)
  return L1_2
end

L0_1.getWidth = L1_1
