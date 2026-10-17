local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = 320
L1_1 = 16
L2_1 = {}
L3_1 = {}
L3_1.image = "BTN_ARROW_LEFT_SMALL"
L3_1.x = 0.2
L2_1.SNAP_RIGHT = L3_1
L3_1 = {}
L3_1.image = "BTN_ARROW_RIGHT_SMALL"
L3_1.x = 0.8
L2_1.SNAP_LEFT = L3_1
L3_1 = nil
L4_1 = ui
L4_1 = L4_1.Frame
L5_1 = L4_1
L4_1 = L4_1.new
L4_1 = L4_1(L5_1)
SimpleText = L4_1
L4_1 = SimpleText

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.hanchor
  if not L1_2 then
    L1_2 = "LEFT"
  end
  A0_2.hanchor = L1_2
  L1_2 = A0_2.vanchor
  if not L1_2 then
    L1_2 = "TOP"
  end
  A0_2.vanchor = L1_2
  L1_2 = A0_2.x
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.x = L1_2
  L1_2 = A0_2.y
  if not L1_2 then
    L1_2 = 0
  end
  A0_2.y = L1_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L4_1.init = L5_1
L4_1 = SimpleText

function L5_1(A0_2, A1_2)
  A0_2.font = A1_2
end

L4_1.setFont = L5_1
L4_1 = SimpleText

function L5_1(A0_2, A1_2)
  A0_2.text = A1_2
end

L4_1.setText = L5_1
L4_1 = SimpleText

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.font
  if L3_2 then
    L3_2 = A0_2.text
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.res
      L3_2 = L3_2.useFont
      L4_2 = A0_2.font
      L3_2(L4_2)
      L3_2 = _G
      L3_2 = L3_2.res
      L3_2 = L3_2.drawString
      L4_2 = ""
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
  end
end

L4_1.draw = L5_1
L4_1 = ui
L4_1 = L4_1.AnchorFrame
L5_1 = L4_1
L4_1 = L4_1.new
L4_1 = L4_1(L5_1)
LevelInfoFrame = L4_1
L4_1 = LevelInfoFrame

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ui
  L1_2 = L1_2.AnchorFrame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "levelNumber"
  L4_2 = gamelua
  L4_2 = L4_2.getFontHeadline
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L1_2.textBoxSize = L2_2
  L1_2.name = "levelNumber"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "scoreLabel"
  L4_2.font = "FONT_SPACE_SCORE_TEXT"
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getString
  L6_2 = "TEXTS_BASIC"
  L7_2 = "MI_SCORE"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L4_2.textBoxSize = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = SimpleText
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "scoreNumber"
  L5_2.font = "FONT_SPACE_SCORE_BIG"
  L5_2.text = ""
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L4_1.init = L5_1
L4_1 = LevelInfoFrame

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = L0_1
  A0_2.width = L1_2
  L1_2 = A0_2.direction
  L1_2 = L1_2 == "SNAP_LEFT"
  L2_2 = 10
  L3_2 = L2_2
  L4_2 = L1_1
  L4_2 = L2_2 + L4_2
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "levelNumber"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = gamelua
  L6_2 = L6_2.g_currentLevelString
  if not L6_2 then
    L6_2 = "1"
  end
  L5_2.text = L6_2
  if L1_2 then
    L5_2.x = L4_2
    L5_2.hanchor = "LEFT"
  else
    L6_2 = L0_1
    L6_2 = L6_2 - L4_2
    L5_2.x = L6_2
    L5_2.hanchor = "RIGHT"
  end
  L5_2.vanchor = "TOP"
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "scoreLabel"
  L6_2 = L6_2(L7_2, L8_2)
  if L1_2 then
    L6_2.hanchor = "RIGHT"
    L7_2 = L0_1
    L7_2 = L7_2 - L4_2
    L6_2.x = L7_2
  else
    L6_2.hanchor = "LEFT"
    L6_2.x = L4_2
  end
  L6_2.vanchor = "TOP"
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "scoreNumber"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.floor
  L9_2 = gamelua
  L9_2 = L9_2.score
  L9_2 = L9_2 * 0.1
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * 10
  L9_2 = _G
  L9_2 = L9_2.string
  L9_2 = L9_2.format
  L10_2 = "%d"
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  L7_2.text = L9_2
  if L1_2 then
    L7_2.hanchor = "RIGHT"
    L10_2 = L0_1
    L10_2 = L10_2 - L4_2
    L7_2.x = L10_2
  else
    L7_2.hanchor = "LEFT"
    L7_2.x = L4_2
  end
  L7_2.vanchor = "TOP"
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.useFont
  L11_2 = L6_2.font
  L10_2(L11_2)
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.getFontLeading
  L10_2 = L10_2()
  L11_2 = _G
  L11_2 = L11_2.res
  L11_2 = L11_2.useFont
  L12_2 = L7_2.font
  L11_2(L12_2)
  L11_2 = _G
  L11_2 = L11_2.res
  L11_2 = L11_2.getFontLeading
  L11_2 = L11_2()
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.useFont
  L13_2 = L5_2.font
  L12_2(L13_2)
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.getFontLeading
  L12_2 = L12_2()
  L13_2 = L10_2 + L11_2
  L14_2 = L2_2 * 0.5
  L13_2 = L13_2 + L14_2
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.max
  L15_2 = L13_2
  L16_2 = L12_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = L12_2 - L13_2
  L15_2 = L15_2 * 0.5
  L5_2.y = L3_2
  L16_2 = L3_2 + L15_2
  L6_2.y = L16_2
  L16_2 = L3_2 + L15_2
  L16_2 = L16_2 + L10_2
  L17_2 = L2_2 * 0.5
  L16_2 = L16_2 + L17_2
  L7_2.y = L16_2
  L3_2 = L3_2 + L14_2
  A0_2.height = L3_2
  L10_2 = ui
  L10_2 = L10_2.AnchorFrame
  L10_2 = L10_2.layout
  L11_2 = A0_2
  L10_2(L11_2)
end

L4_1.layout = L5_1
L4_1 = ui
L4_1 = L4_1.Frame
L5_1 = L4_1
L4_1 = L4_1.new
L4_1 = L4_1(L5_1)
MetroSnapBar = L4_1
L4_1 = MetroSnapBar

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.name = "metro snap bar"
  L1_2 = A0_2.direction
  if L1_2 == nil then
    A0_2.direction = "SNAP_LEFT"
  end
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "bg"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "MENU_SIDE_BG"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "deco"
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "METRO_SNAP_BAR_DECO_1"
  L3_2(L4_2, L5_2)
  A0_2.decoBaseY = 0
  A0_2.decoTimer = 0
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L3_2.name = "logo"
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "MAIN_MENU_LOGO_METRO_SNAP"
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L4_2.name = "close"
  L4_2.disabledClickSound = ""
  L4_2.clickSound = ""
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = L2_1
  L8_2 = A0_2.direction
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.image
  L5_2(L6_2, L7_2)
  L4_2.returnValue = "UNSNAP"
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = LevelInfoFrame
  L6_2 = L5_2
  L5_2 = L5_2.new
  L5_2 = L5_2(L6_2)
  A0_2.levelInfo = L5_2
  L5_2 = A0_2.levelInfo
  L5_2.name = "levelInfo"
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.ToggleButton
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "buttonSounds"
  L7_2.returnValue = "TOGGLE_SOUNDS"
  L7_2.activateOnRelease = true
  L7_2.disabledClickSound = ""
  L7_2.clickSound = ""
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = {}
  L9_2 = "BTN_SFX_SMALL"
  L10_2 = "BTN_SFX_OFF_SMALL"
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end

L4_1.init = L5_1
L4_1 = MetroSnapBar

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = "BLOCK"
  L5_2 = nil
  L6_2 = A0_2
  return L4_2, L5_2, L6_2
end

L4_1.onKeyEvent = L5_1
L4_1 = MetroSnapBar

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.decoTimer
  L3_2 = L3_2 + A1_2
  A0_2.decoTimer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "deco"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = L3_2.image
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = A0_2.decoBaseY
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.sin
  L8_2 = A0_2.decoTimer
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * L5_2
  L7_2 = L7_2 * 0.1
  L6_2 = L6_2 + L7_2
  L3_2.y = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.setAudioButtonState
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "buttonSounds"
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = ui
  L6_2 = L6_2.Frame
  L6_2 = L6_2.update
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
end

L4_1.update = L5_1
L4_1 = MetroSnapBar

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "UNSNAP" then
    L7_2 = gamelua
    L7_2 = L7_2.tryUnsnap
    L7_2()
  elseif L4_2 == "TOGGLE_SOUNDS" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_AUDIO_TOGGLED
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
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

L4_1.onPointerEvent = L5_1
L4_1 = MetroSnapBar

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 1
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L3_2(L4_2)
end

L4_1.draw = L5_1
L4_1 = MetroSnapBar

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = A0_2.levelInfo
  L2_2 = gamelua
  L2_2 = L2_2.isInGameMode
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.addChild
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.direction
    L1_2.direction = L2_2
  end
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.layout
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = 0
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L4_2 = 10
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "bg"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L0_1
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.screenHeight
  L6_2 = L6_2 * 0.5
  L5_2.y = L6_2
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getSpriteBounds
  L7_2 = L5_2.image
  L6_2, L7_2 = L6_2(L7_2)
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 / L7_2
  L5_2.scaleY = L8_2
  L8_2 = L5_2.scaleY
  L9_2 = L1_1
  L8_2 = L8_2 * L9_2
  L2_2 = L2_2 + L8_2
  L8_2 = L5_2.scaleY
  L9_2 = L1_1
  L8_2 = L8_2 * L9_2
  L3_2 = L3_2 - L8_2
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "logo"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getSpriteBounds
  L10_2 = L8_2.image
  L9_2, L10_2 = L9_2(L10_2)
  L7_2 = L10_2
  L6_2 = L9_2
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getSpritePivot
  L10_2 = L8_2.image
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = L0_1
  L11_2 = L11_2 * 0.5
  L8_2.x = L11_2
  L11_2 = L7_2 * 0.5
  L11_2 = L2_2 + L11_2
  L8_2.y = L11_2
  L11_2 = L8_2.y
  L12_2 = L7_2 - L10_2
  L11_2 = L11_2 + L12_2
  L2_2 = L11_2 + L4_2
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "deco"
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.getSpriteBounds
  L13_2 = L11_2.image
  L12_2, L13_2 = L12_2(L13_2)
  L14_2 = L0_1
  L15_2 = L12_2 * 0.8
  L14_2 = L14_2 - L15_2
  L11_2.x = L14_2
  L14_2 = gamelua
  L14_2 = L14_2.screenHeight
  L14_2 = L14_2 * 0.7
  A0_2.decoBaseY = L14_2
  L14_2 = A0_2.decoBaseY
  L11_2.y = L14_2
  L15_2 = A0_2
  L14_2 = A0_2.getChild
  L16_2 = "close"
  L14_2 = L14_2(L15_2, L16_2)
  L16_2 = L14_2
  L15_2 = L14_2.setImage
  L17_2 = L2_1
  L18_2 = A0_2.direction
  L17_2 = L17_2[L18_2]
  L17_2 = L17_2.image
  L15_2(L16_2, L17_2)
  L15_2 = gamelua
  L15_2 = L15_2.screenHeight
  L15_2 = L15_2 * 0.5
  L14_2.y = L15_2
  L15_2 = L0_1
  L16_2 = L2_1
  L17_2 = A0_2.direction
  L16_2 = L16_2[L17_2]
  L16_2 = L16_2.x
  L15_2 = L15_2 * L16_2
  L14_2.x = L15_2
  L16_2 = A0_2
  L15_2 = A0_2.getChild
  L17_2 = "buttonSounds"
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = _G
  L16_2 = L16_2.res
  L16_2 = L16_2.getSpriteBounds
  L17_2 = L15_2.image
  L16_2, L17_2 = L16_2(L17_2)
  L18_2 = L17_2 * 0.5
  L18_2 = L3_2 - L18_2
  L18_2 = L18_2 - L4_2
  L15_2.y = L18_2
  L18_2 = L0_1
  L18_2 = L18_2 * 0.5
  L15_2.x = L18_2
  L19_2 = L1_2
  L18_2 = L1_2.setAnchors
  L20_2 = "TOP"
  L21_2 = "LEFT"
  L18_2(L19_2, L20_2, L21_2)
  L1_2.x = 0
  L1_2.y = L2_2
  L18_2 = gamelua
  L18_2 = L18_2.isInGameMode
  L18_2 = L18_2()
  if L18_2 then
    L1_2.visible = true
  else
    L1_2.visible = false
  end
end

L4_1.layout = L5_1
L4_1 = MetroSnapBar

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.removeChild
  L3_2 = "levelInfo"
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L4_1.onExit = L5_1
L4_1 = MetroSnapBar

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = MetroSnapBar
  L0_2 = L0_2.loaded
  if L0_2 then
    return
  end
  L0_2 = MetroSnapBar
  L0_2.loaded = true
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_METRO_VIEW_SNAPPED
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.MetroSnapBar
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_METRO_VIEW_FULL
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.MetroSnapBar
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.getWindowState
  L0_2 = L0_2()
  if L0_2 == "SNAP_LEFT" or L0_2 == "SNAP_RIGHT" then
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_METRO_VIEW_SNAPPED
    L3_2.id = L4_2
    L3_2.state = L0_2
    L1_2(L2_2, L3_2)
  end
end

L4_1.gameLoaded = L5_1
L4_1 = MetroSnapBar

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_MAIN_MENU_ENTERED
  if L2_2 == L3_2 then
    L2_2 = MetroSnapBar
    L2_2 = L2_2.gameLoaded
    L2_2()
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_METRO_VIEW_SNAPPED
    if L2_2 == L3_2 then
      L2_2 = print
      L3_2 = " * METRO VIEW SNAPPED: "
      L4_2 = A1_2.state
      L5_2 = "\n"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
      L2_2 = L3_1
      if L2_2 == nil then
        L2_2 = gamelua
        L2_2 = L2_2.notificationsFrame
        if L2_2 then
          L3_2 = print
          L4_2 = "   created snap bar\n"
          L3_2(L4_2)
          L3_2 = MetroSnapBar
          L4_2 = L3_2
          L3_2 = L3_2.new
          L5_2 = {}
          L6_2 = A1_2.state
          L5_2.direction = L6_2
          L3_2 = L3_2(L4_2, L5_2)
          L3_1 = L3_2
          L4_2 = L2_2
          L3_2 = L2_2.addChild
          L5_2 = L3_1
          L3_2(L4_2, L5_2)
          L3_2 = L3_1
          L4_2 = L3_2
          L3_2 = L3_2.onEntry
          L3_2(L4_2)
          L3_2 = gamelua
          L3_2 = L3_2.setEffectsVolume
          L4_2 = 0
          L3_2(L4_2)
          L3_2 = gamelua
          L3_2 = L3_2.setMusicVolume
          L4_2 = 0
          L3_2(L4_2)
          L3_2 = L3_1
          L4_2 = L3_2
          L3_2 = L3_2.layout
          L3_2(L4_2)
          L3_2 = gamelua
          L3_2.g_resolutionWarningShown = true
          L3_2 = gamelua
          L3_2 = L3_2.setPhysicsEnabled
          L4_2 = false
          L5_2 = "MetroSnapBar"
          L3_2(L4_2, L5_2)
          L3_2 = gamelua
          L3_2.g_isWindowSnapped = true
        else
          L3_2 = print
          L4_2 = "   root not found\n"
          L3_2(L4_2)
        end
      else
        L2_2 = L3_1
        if L2_2 then
          L2_2 = L3_1
          L2_2 = L2_2.direction
          L3_2 = A1_2.state
          if L2_2 ~= L3_2 then
            L2_2 = print
            L3_2 = "   direction changed\n"
            L2_2(L3_2)
            L2_2 = L3_1
            L3_2 = A1_2.state
            L2_2.direction = L3_2
            L2_2 = L3_1
            L3_2 = L2_2
            L2_2 = L2_2.layout
            L2_2(L3_2)
        end
        else
          L2_2 = print
          L3_2 = "   already snapped\n"
          L2_2(L3_2)
        end
      end
    else
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_METRO_VIEW_FULL
      if L2_2 == L3_2 then
        L2_2 = print
        L3_2 = " * METRO VIEW FULL\n"
        L2_2(L3_2)
        L2_2 = gamelua
        L2_2 = L2_2.notificationsFrame
        if L2_2 then
          L3_2 = L3_1
          if L3_2 then
            L3_2 = print
            L4_2 = "   removing snap bar\n"
            L3_2(L4_2)
            L4_2 = L2_2
            L3_2 = L2_2.removeChild
            L5_2 = L3_1
            L3_2(L4_2, L5_2)
            L3_2 = gamelua
            L3_2.g_resolutionWarningShown = false
            L3_2 = gamelua
            L3_2 = L3_2.setPhysicsEnabled
            L4_2 = true
            L5_2 = "MetroSnapBar"
            L3_2(L4_2, L5_2)
            L3_2 = gamelua
            L3_2.g_isWindowSnapped = false
            L3_2 = gamelua
            L3_2 = L3_2.setEffectsVolume
            L4_2 = 1
            L3_2(L4_2)
            L3_2 = gamelua
            L3_2 = L3_2.setMusicVolume
            L4_2 = 1
            L3_2(L4_2)
        end
        else
          L3_2 = print
          L4_2 = "   no snap bar?\n"
          L3_2(L4_2)
        end
        L3_2 = nil
        L3_1 = L3_2
      end
    end
  end
end

L4_1.eventTriggered = L5_1
L4_1 = gamelua
L4_1 = L4_1.eventManager
L5_1 = L4_1
L4_1 = L4_1.addEventListener
L6_1 = gamelua
L6_1 = L6_1.events
L6_1 = L6_1.EID_MAIN_MENU_ENTERED
L7_1 = gamelua
L7_1 = L7_1.ui
L7_1 = L7_1.MetroSnapBar
L4_1(L5_1, L6_1, L7_1)
