local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
CreditsFrame = L0_1
L0_1 = CreditsFrame
L0_1.FAR_Z_LIMIT = -800
L0_1 = CreditsFrame
L0_1.NEAR_Z_LIMIT = 19400
L0_1 = CreditsFrame
L0_1.TEXT_LINE_HEIGHT = 70
L0_1 = CreditsFrame
L0_1.RENDER_FROM = 450
L0_1 = CreditsFrame
L0_1.SCROLL_SPEED = 30
L0_1 = CreditsFrame
L0_1.MOUSE_SCROLL_VELOCITY = 0.3

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    A1_2 = "%s"
  end
  L2_2 = {}
  t = L2_2
  L2_2 = 1
  i = L2_2
  L2_2 = _G
  L2_2 = L2_2.string
  L2_2 = L2_2.gmatch
  L3_2 = A0_2
  L4_2 = "([^"
  L5_2 = A1_2
  L6_2 = "]+)"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = t
    L7_2 = i
    L6_2[L7_2] = L5_2
    L6_2 = i
    L6_2 = L6_2 + 1
    i = L6_2
  end
  L2_2 = t
  return L2_2
end

str_split = L0_1
L0_1 = CreditsFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2.scrollPosition = 0
  L1_2 = gamelua
  L1_2 = L1_2.gameVersionNumber
  L2_2 = gamelua
  L2_2 = L2_2.releaseBuild
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.cheatsEnabled
    if not L2_2 then
      goto lbl_18
    end
  end
  L2_2 = L1_2
  L3_2 = " ("
  L4_2 = gamelua
  L4_2 = L4_2.svnRevisionNumber
  L5_2 = ")"
  L1_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  ::lbl_18::
  L2_2 = gamelua
  L2_2 = L2_2.setFont
  L3_2 = "FONT_CREDITS"
  L2_2(L3_2)
  L2_2 = "TEXT_ABOUT_SCREEN"
  L3_2 = gamelua
  L3_2 = L3_2.isIOSFree
  L3_2 = L3_2()
  if L3_2 then
    L2_2 = "TEXT_ABOUT_SCREEN_FREE"
  end
  L3_2 = gamelua
  L3_2 = L3_2.getText
  L4_2 = L2_2
  L5_2 = {}
  L6_2 = "$GAME_VERSION"
  L7_2 = L1_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L5_2 = [[


]]
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getString
  L7_2 = "TEXTS_BASIC"
  L8_2 = "TEXT_CREDITS"
  L6_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Text
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.text = L4_2
  L7_2.font = "FONT_CREDITS"
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.text = L5_2
  L5_2 = print
  L6_2 = "BEFORE SPLIT\n"
  L5_2(L6_2)
  L5_2 = A0_2.text
  L6_2 = str_split
  L7_2 = A0_2.text
  L7_2 = L7_2.text
  L8_2 = "\n"
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.lines = L6_2
  L5_2 = A0_2.text
  L5_2.widestLine = 0
  L5_2 = _G
  L5_2 = L5_2.ipairs
  L6_2 = A0_2.text
  L6_2 = L6_2.lines
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2
    L11_2 = gamelua
    L11_2 = L11_2.ui
    L11_2 = L11_2.Text
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = ""
    L11_2 = L11_2(L12_2, L13_2)
    L11_2.text = L10_2
    L12_2 = A0_2.text
    L12_2 = L12_2.lines
    L12_2[L8_2] = L11_2
    L11_2.index = L8_2
    L12_2 = CreditsFrame
    L12_2 = L12_2.RENDER_FROM
    L13_2 = L11_2.index
    L13_2 = L13_2 - 1
    L14_2 = CreditsFrame
    L14_2 = L14_2.TEXT_LINE_HEIGHT
    L13_2 = L13_2 * L14_2
    L12_2 = L12_2 + L13_2
    L11_2.yPosition = L12_2
    L11_2.hanchor = "HCENTER"
    L12_2 = _G
    L12_2 = L12_2.res
    L12_2 = L12_2.getStringWidth
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    L11_2.width = L12_2
    L12_2 = A0_2.text
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.max
    L14_2 = A0_2.text
    L14_2 = L14_2.widestLine
    L15_2 = L11_2.width
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.widestLine = L13_2
  end
  L5_2 = CreditsFrame
  L6_2 = A0_2.text
  L6_2 = L6_2.lines
  L6_2 = #L6_2
  L7_2 = CreditsFrame
  L7_2 = L7_2.TEXT_LINE_HEIGHT
  L6_2 = L6_2 * L7_2
  L7_2 = CreditsFrame
  L7_2 = L7_2.FAR_Z_LIMIT
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 1300
  L5_2.NEAR_Z_LIMIT = L6_2
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.ScallableButton
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "eulaButton"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "eulaButton"
  L10_2 = gamelua
  L10_2 = L10_2.SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.isDarkSide
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2.returnValue = "EULA_CLICKED"
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.ScallableButton
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "privacyButton"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = gamelua
  L9_2 = L9_2.getButtonImageName
  L10_2 = "privacyButton"
  L11_2 = gamelua
  L11_2 = L11_2.SettingsWrapper
  L12_2 = L11_2
  L11_2 = L11_2.isDarkSide
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2.returnValue = "PRIVACY_CLICKED"
  L8_2 = A0_2
  L7_2 = A0_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end

L0_1.init = L1_1
L0_1 = CreditsFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "BTN_BG_LIGHT"
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L2_2 * L1_2
  L3_2 = L3_2 * L1_2
  L2_2 = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "eulaButton"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_2 * 0.6
  L4_2.x = L5_2
  L5_2 = L3_2 * 0.6
  L4_2.y = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.setScale
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "privacyButton"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L2_2 * 0.6
  L5_2.x = L6_2
  L6_2 = L3_2 * 1.7
  L5_2.y = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.setScale
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Frame
  L6_2 = L6_2.layout
  L7_2 = A0_2
  L6_2(L7_2)
end

L0_1.layout = L1_1
L0_1 = CreditsFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = A0_2.dragDiffY
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = gamelua
  L4_2 = L4_2.setFont
  L5_2 = "FONT_CREDITS"
  L4_2(L5_2)
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.text
  L5_2 = L5_2.lines
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.yPosition
    if L9_2 then
      L10_2 = CreditsFrame
      L10_2 = L10_2.RENDER_FROM
      if L9_2 < L10_2 then
        L11_2 = L8_2
        L10_2 = L8_2.getWidth
        L10_2 = L10_2(L11_2)
        L11_2 = A0_2.text
        L11_2 = L11_2.widestLine
        L11_2 = L11_2 - L10_2
        L12_2 = 1
        L13_2 = CreditsFrame
        L13_2 = L13_2.FAR_Z_LIMIT
        L13_2 = L13_2 * 0.9
        if L9_2 < L13_2 then
          L14_2 = _G
          L14_2 = L14_2.math
          L14_2 = L14_2.abs
          L15_2 = CreditsFrame
          L15_2 = L15_2.FAR_Z_LIMIT
          L14_2 = L14_2(L15_2)
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.abs
          L16_2 = L9_2
          L15_2 = L15_2(L16_2)
          L14_2 = L14_2 - L15_2
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.abs
          L16_2 = CreditsFrame
          L16_2 = L16_2.FAR_Z_LIMIT
          L15_2 = L15_2(L16_2)
          L16_2 = _G
          L16_2 = L16_2.math
          L16_2 = L16_2.abs
          L17_2 = L13_2
          L16_2 = L16_2(L17_2)
          L15_2 = L15_2 - L16_2
          L12_2 = L14_2 / L15_2
        end
        L14_2 = gamelua
        L14_2 = L14_2.drawString3D
        L15_2 = ""
        L16_2 = L8_2.text
        L17_2 = A0_2.text
        L17_2 = L17_2.widestLine
        L17_2 = -L17_2
        L17_2 = L17_2 + L11_2
        L17_2 = L17_2 * 0.5
        L18_2 = 20
        L19_2 = 800
        L20_2 = -0.785375
        L21_2 = 0
        L22_2 = L9_2
        L23_2 = L12_2
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      end
    end
  end
  L4_2 = gamelua
  L4_2 = L4_2.setRenderState
  L5_2 = 0
  L6_2 = 0
  L7_2 = 1
  L8_2 = 1
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 1
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.draw
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.draw = L1_1
L0_1 = CreditsFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2.kineticDelta
  if L3_2 then
    L3_2 = A0_2.kineticDelta
    L3_2 = L3_2 + A1_2
    A0_2.kineticDelta = L3_2
  end
  L3_2 = A0_2.kineticVelocity
  if L3_2 then
    L3_2 = A0_2.kineticVelocity
    L4_2 = 1 - A1_2
    L3_2 = L3_2 * L4_2
    A0_2.kineticVelocity = L3_2
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.abs
    L4_2 = A0_2.kineticVelocity
    L3_2 = L3_2(L4_2)
    if L3_2 < 1.0E-4 then
      A0_2.kineticVelocity = nil
    end
  end
  L3_2 = A0_2.kineticVelocity
  if not L3_2 then
    L3_2 = A1_2
  else
    L4_2 = A0_2.kineticVelocity
    if 0 < L4_2 then
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.max
      L5_2 = A1_2
      L6_2 = A0_2.kineticVelocity
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    end
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.text
  L5_2 = L5_2.lines
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.dragYDiff
    if not L9_2 then
      L9_2 = L8_2.yPosition
      L10_2 = CreditsFrame
      L10_2 = L10_2.SCROLL_SPEED
      L10_2 = L3_2 * L10_2
      L9_2 = L9_2 - L10_2
      L8_2.yPosition = L9_2
    else
      L9_2 = L8_2.yPosition
      L10_2 = A0_2.dragYDiff
      L9_2 = L9_2 + L10_2
      L8_2.yPosition = L9_2
    end
    L9_2 = L8_2.yPosition
    L10_2 = CreditsFrame
    L10_2 = L10_2.FAR_Z_LIMIT
    if L9_2 < L10_2 then
      L9_2 = CreditsFrame
      L9_2 = L9_2.FAR_Z_LIMIT
      L10_2 = L8_2.yPosition
      L9_2 = L9_2 - L10_2
      L10_2 = _G
      L10_2 = L10_2.ipairs
      L11_2 = A0_2.text
      L11_2 = L11_2.lines
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = L14_2.index
        L15_2 = L15_2 - 1
        L14_2.index = L15_2
      end
      L10_2 = A0_2.text
      L10_2 = L10_2.lines
      L10_2 = #L10_2
      L8_2.index = L10_2
      L10_2 = CreditsFrame
      L10_2 = L10_2.NEAR_Z_LIMIT
      L10_2 = L10_2 - L9_2
      L8_2.yPosition = L10_2
    end
    L9_2 = L8_2.yPosition
    L10_2 = CreditsFrame
    L10_2 = L10_2.NEAR_Z_LIMIT
    if L9_2 > L10_2 then
      L9_2 = L8_2.yPosition
      L10_2 = CreditsFrame
      L10_2 = L10_2.NEAR_Z_LIMIT
      L9_2 = L9_2 - L10_2
      L10_2 = _G
      L10_2 = L10_2.ipairs
      L11_2 = A0_2.text
      L11_2 = L11_2.lines
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = L14_2.index
        L15_2 = L15_2 + 1
        L14_2.index = L15_2
      end
      L8_2.index = 1
      L10_2 = CreditsFrame
      L10_2 = L10_2.FAR_Z_LIMIT
      L10_2 = L10_2 + L9_2
      L8_2.yPosition = L10_2
    end
  end
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.update = L1_1
L0_1 = CreditsFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    if A1_2 == "LPRESS" then
      A0_2.kineticStartY = A3_2
      A0_2.kineticDelta = 0
    end
    if A1_2 == "LHOLD" then
      L6_2 = A0_2.kineticDelta
      if not L6_2 then
        L6_2 = 0
      end
      A0_2.kineticDelta = L6_2
      L6_2 = A0_2.lastDragY
      if not L6_2 then
        L6_2 = A3_2
      end
      A0_2.lastDragY = L6_2
      L6_2 = A0_2.lastDragY
      L6_2 = A3_2 - L6_2
      L6_2 = L6_2 * 0.5
      A0_2.dragYDiff = L6_2
      A0_2.lastDragY = A3_2
      A0_2.kineticVelocity = nil
    end
  end
  if A1_2 == "LRELEASE" then
    A0_2.lastDragY = nil
    A0_2.dragYDiff = nil
    L6_2 = A0_2.kineticStartY
    if L6_2 then
      L6_2 = A0_2.kineticStartY
      L6_2 = L6_2 - A3_2
      L7_2 = A0_2.kineticDelta
      L7_2 = 1 + L7_2
      L7_2 = L7_2 * 500
      L6_2 = L6_2 / L7_2
      A0_2.kineticVelocity = L6_2
    end
    A0_2.kineticStartY = nil
    A0_2.kineticDelta = nil
  end
  if A1_2 == "WHEEL" then
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.wheel
    if L6_2 < 0 then
      L6_2 = A0_2.kineticVelocity
      if not L6_2 then
        L6_2 = 0
      end
      A0_2.kineticVelocity = L6_2
      L6_2 = A0_2.kineticVelocity
      L7_2 = CreditsFrame
      L7_2 = L7_2.MOUSE_SCROLL_VELOCITY
      L6_2 = L6_2 + L7_2
      A0_2.kineticVelocity = L6_2
    else
      L6_2 = gamelua
      L6_2 = L6_2.cursor
      L6_2 = L6_2.wheel
      if 0 < L6_2 then
        L6_2 = A0_2.kineticVelocity
        if not L6_2 then
          L6_2 = 0
        end
        A0_2.kineticVelocity = L6_2
        L6_2 = A0_2.kineticVelocity
        L7_2 = CreditsFrame
        L7_2 = L7_2.MOUSE_SCROLL_VELOCITY
        L6_2 = L6_2 - L7_2
        A0_2.kineticVelocity = L6_2
      end
    end
  end
  if L4_2 == "EULA_CLICKED" or L4_2 == "PRIVACY_CLICKED" then
    L6_2 = gamelua
    L6_2 = L6_2.openPrivacyWeb
    L6_2()
  end
end

L0_1.onPointerEvent = L1_1
L0_1 = CreditsFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_GAME_PAUSED
  if L2_2 == L3_2 then
    A0_2.lastDragY = nil
    A0_2.dragYDiff = nil
  else
    L2_2 = A1_2.id
    L3_2 = events
    L3_2 = L3_2.EID_SHOW_TIMED_BUY_FREE_IOS_VERSION_POPUP
    if L2_2 == L3_2 then
      A0_2.lastDragY = nil
      A0_2.dragYDiff = nil
      A0_2.kineticStartY = nil
      A0_2.kineticDelta = nil
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = CreditsFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_GAME_PAUSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOW_TIMED_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.onEntry = L1_1
L0_1 = CreditsFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_GAME_PAUSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOW_TIMED_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
