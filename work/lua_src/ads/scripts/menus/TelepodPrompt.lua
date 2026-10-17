local L0_1, L1_1
L0_1 = 0.2
SLIDE_ANIMATION_DURATION = L0_1
L0_1 = 0.3
OPEN_ANIMATION_DURATION = L0_1
L0_1 = 0.5
FADE_IN_DURATION = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
TelepodPrompt = L0_1
L0_1 = TelepodPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = "LIGHT"
  ::lbl_11::
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.BGBox
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "bgBox"
  L4_2.hanchor = "LEFT"
  L4_2.vanchor = "TOP"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = "ACHIEVEMENTBOX_TOP_LEFT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.topLeft = L4_2
  L4_2 = "ACHIEVEMENTBOX_TOP_MIDDLE_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.topMiddle = L4_2
  L4_2 = "ACHIEVEMENTBOX_TOP_RIGHT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.topRight = L4_2
  L4_2 = "ACHIEVEMENTBOX_MIDDLE_LEFT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.left = L4_2
  L4_2 = "ACHIEVEMENTBOX_CENTER_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.center = L4_2
  L4_2 = "ACHIEVEMENTBOX_MIDDLE_RIGHT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.right = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_LEFT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomLeft = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_MIDDLE_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomMiddle = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_RIGHT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomRight = L4_2
  L2_2.components = L3_2
  L2_2.hanchor = "LEFT"
  L2_2.vanchor = "TOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "close"
  L5_2.returnValue = "CLOSE"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = gamelua
  L6_2 = L6_2.getButtonImageName
  L7_2 = "buttonCheck"
  L8_2 = gamelua
  L8_2 = L8_2.SettingsWrapper
  L9_2 = L8_2
  L8_2 = L8_2.isDarkSide
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.Text
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "promptText"
  L7_2 = gamelua
  L7_2 = L7_2.getFontBasic
  L7_2 = L7_2()
  L6_2.font = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  A0_2.contents = L5_2
  L5_2 = A0_2.networkError
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setText
    L7_2 = gamelua
    L7_2 = L7_2.getText
    L8_2 = "TEXT_QRCODE_NETWORK_ERROR"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = ui
    L5_2 = L5_2.Image
    L6_2 = L5_2
    L5_2 = L5_2.new
    L5_2 = L5_2(L6_2)
    L5_2.name = "bird"
    L7_2 = L5_2
    L6_2 = L5_2.setImage
    L8_2 = "RED_CONNECTING"
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.addChild
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = _G
    L6_2 = L6_2.table
    L6_2 = L6_2.insert
    L7_2 = A0_2.contents
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = ui
    L6_2 = L6_2.Image
    L7_2 = L6_2
    L6_2 = L6_2.new
    L6_2 = L6_2(L7_2)
    L6_2.name = "eyebrows"
    L8_2 = L6_2
    L7_2 = L6_2.setImage
    L9_2 = "RED_BROW_1"
    L7_2(L8_2, L9_2)
    L8_2 = L5_2
    L7_2 = L5_2.addChild
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = _G
    L7_2 = L7_2.table
    L7_2 = L7_2.insert
    L8_2 = A0_2.contents
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = ui
    L7_2 = L7_2.Image
    L8_2 = L7_2
    L7_2 = L7_2.new
    L7_2 = L7_2(L8_2)
    L7_2.name = "phone"
    L9_2 = L7_2
    L8_2 = L7_2.setImage
    L10_2 = "PHONE_CONNECTING"
    L8_2(L9_2, L10_2)
    L9_2 = L5_2
    L8_2 = L5_2.addChild
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = _G
    L8_2 = L8_2.table
    L8_2 = L8_2.insert
    L9_2 = A0_2.contents
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = ui
    L8_2 = L8_2.Frame
    L9_2 = L8_2
    L8_2 = L8_2.new
    L8_2 = L8_2(L9_2)
    L8_2.name = "globe"
    L10_2 = A0_2
    L9_2 = A0_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.insert
    L10_2 = A0_2.contents
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = ui
    L9_2 = L9_2.Image
    L10_2 = L9_2
    L9_2 = L9_2.new
    L9_2 = L9_2(L10_2)
    L9_2.name = "globe_shadow"
    L11_2 = L9_2
    L10_2 = L9_2.setImage
    L12_2 = "GLOBE_SHADOW"
    L10_2(L11_2, L12_2)
    L11_2 = L8_2
    L10_2 = L8_2.addChild
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = ui
    L10_2 = L10_2.Image
    L11_2 = L10_2
    L10_2 = L10_2.new
    L10_2 = L10_2(L11_2)
    L10_2.name = "globe_image"
    L12_2 = L10_2
    L11_2 = L10_2.setImage
    L13_2 = "GLOBE"
    L11_2(L12_2, L13_2)
    L12_2 = L8_2
    L11_2 = L8_2.addChild
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L11_2 = ui
    L11_2 = L11_2.Image
    L12_2 = L11_2
    L11_2 = L11_2.new
    L11_2 = L11_2(L12_2)
    L13_2 = L11_2
    L12_2 = L11_2.setImage
    L14_2 = "NO_CONNECTION"
    L12_2(L13_2, L14_2)
    L11_2.name = "connect_error"
    L13_2 = A0_2
    L12_2 = A0_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    L12_2 = _G
    L12_2 = L12_2.table
    L12_2 = L12_2.insert
    L13_2 = A0_2.contents
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setText
    L7_2 = A0_2.isCharacterDark
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.getText
      L8_2 = "TEXT_QRCODE_DARK_ON_LIGHT"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_229
      end
    end
    L7_2 = gamelua
    L7_2 = L7_2.getText
    L8_2 = "TEXT_QRCODE_LIGHT_ON_DARK"
    L7_2 = L7_2(L8_2)
    ::lbl_229::
    L5_2(L6_2, L7_2)
    L5_2 = ui
    L5_2 = L5_2.Image
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.name = "rightImage"
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.rightImage = L5_2
    L5_2 = A0_2.rightImage
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = gamelua
    L7_2 = L7_2.getButtonImageName
    L8_2 = "emblemButton"
    L9_2 = A0_2.isCharacterDark
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.insert
    L6_2 = A0_2.contents
    L7_2 = A0_2.rightImage
    L5_2(L6_2, L7_2)
    L5_2 = ui
    L5_2 = L5_2.Image
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.name = "characterImage"
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.characterImage = L5_2
    L5_2 = A0_2.characterImage
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = A0_2.charImage
    L5_2(L6_2, L7_2)
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.insert
    L6_2 = A0_2.contents
    L7_2 = A0_2.characterImage
    L5_2(L6_2, L7_2)
  end
  L5_2 = _G
  L5_2 = L5_2.ipairs
  L6_2 = A0_2.contents
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L9_2.visible = false
  end
end

L0_1.init = L1_1
L0_1 = TelepodPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = 25 * L1_2
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "bgBox"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "close"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "promptText"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 680 * L1_2
  L8_2 = 240 * L1_2
  A0_2.bgEndHeight = L8_2
  A0_2.bgEndWidth = L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setSize
  L9_2 = A0_2.bgEndWidth
  L10_2 = A0_2.bgEndHeight
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.getSize
  L7_2, L8_2 = L7_2(L8_2)
  L6_2.textBoxSize = L7_2
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L10_2 = L4_2.width
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 * 0.5
  L4_2.x = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L10_2 = L4_2.height
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 * 0.5
  L4_2.y = L9_2
  L9_2 = {}
  L10_2 = L4_2.x
  L11_2 = L4_2.width
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 + L11_2
  L9_2.x = L10_2
  L10_2 = L4_2.y
  L11_2 = L4_2.height
  L11_2 = L11_2 * 0.5
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L10_2 = L9_2.x
  L11_2 = L7_2 * 0.5
  L10_2 = L10_2 + L11_2
  L5_2.x = L10_2
  L10_2 = L9_2.y
  L11_2 = L8_2 * 0.5
  L10_2 = L10_2 + L11_2
  L5_2.y = L10_2
  L11_2 = L5_2
  L10_2 = L5_2.setScale
  L12_2 = L1_2
  L10_2(L11_2, L12_2)
  L10_2 = L9_2.x
  L6_2.x = L10_2
  L10_2 = L9_2.y
  L11_2 = L8_2 * 0.5
  L10_2 = L10_2 + L11_2
  L12_2 = L6_2
  L11_2 = L6_2.getHeight
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 * 0.5
  L12_2 = gamelua
  L12_2 = L12_2.getFontScale
  L12_2 = L12_2()
  L11_2 = L11_2 * L12_2
  L12_2 = L6_2.lines
  L12_2 = #L12_2
  L11_2 = L11_2 / L12_2
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 - L3_2
  L6_2.y = L10_2
  L11_2 = L6_2
  L10_2 = L6_2.setScale
  L12_2 = L1_2 * 1.6
  L10_2(L11_2, L12_2)
  L11_2 = L6_2
  L10_2 = L6_2.clip
  L10_2(L11_2)
  L10_2 = A0_2.networkError
  if L10_2 then
    L11_2 = A0_2
    L10_2 = A0_2.getChild
    L12_2 = "bird"
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L9_2.x
    L12_2 = L7_2 * 0.3
    L11_2 = L11_2 - L12_2
    L10_2.x = L11_2
    L11_2 = L9_2.y
    L12_2 = L8_2 * 0.2
    L11_2 = L11_2 - L12_2
    L10_2.y = L11_2
    L12_2 = L10_2
    L11_2 = L10_2.setScale
    L13_2 = L1_2
    L11_2(L12_2, L13_2)
    L12_2 = A0_2
    L11_2 = A0_2.getChild
    L13_2 = "globe"
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L9_2.x
    L13_2 = L7_2 * 0.3
    L12_2 = L12_2 + L13_2
    L11_2.x = L12_2
    L12_2 = L10_2.y
    L11_2.y = L12_2
    L13_2 = L11_2
    L12_2 = L11_2.setScale
    L14_2 = L1_2
    L12_2(L13_2, L14_2)
    L13_2 = A0_2
    L12_2 = A0_2.getChild
    L14_2 = "connect_error"
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = gamelua
    L13_2 = L13_2.screenWidth
    L13_2 = L13_2 / 2
    L12_2.x = L13_2
    L13_2 = L10_2.y
    L12_2.y = L13_2
    L14_2 = L12_2
    L13_2 = L12_2.setScale
    L15_2 = L1_2
    L13_2(L14_2, L15_2)
  else
    L10_2 = A0_2.rightImage
    L11_2 = L9_2.x
    L10_2.x = L11_2
    L10_2 = A0_2.rightImage
    L11_2 = L9_2.y
    L12_2 = L8_2 * 0.1
    L11_2 = L11_2 - L12_2
    L10_2.y = L11_2
    L10_2 = A0_2.rightImage
    L11_2 = L10_2
    L10_2 = L10_2.setScale
    L12_2 = L1_2
    L10_2(L11_2, L12_2)
    L10_2 = A0_2.rightImage
    L11_2 = A0_2.rightImage
    L11_2 = L11_2.w
    L11_2 = L11_2 * 0.7
    L10_2.w = L11_2
    L10_2 = A0_2.characterImage
    L11_2 = A0_2.rightImage
    L11_2 = L11_2.x
    L10_2.x = L11_2
    L10_2 = A0_2.characterImage
    L11_2 = A0_2.rightImage
    L11_2 = L11_2.y
    L12_2 = A0_2.characterImage
    L12_2 = L12_2.h
    L12_2 = L12_2 * 0.35
    L12_2 = L12_2 * L1_2
    L11_2 = L11_2 - L12_2
    L10_2.y = L11_2
    L10_2 = A0_2.characterImage
    L11_2 = L10_2
    L10_2 = L10_2.setScale
    L12_2 = L1_2
    L10_2(L11_2, L12_2)
  end
  L10_2 = A0_2.animationState
  if L10_2 ~= 2 then
    A0_2.animationState = 0
    A0_2.animationTimer = 0
    L10_2 = _G
    L10_2 = L10_2.ipairs
    L11_2 = A0_2.contents
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L14_2.alpha = 0
      L14_2.visible = false
    end
    L10_2 = 0
    L11_2 = A0_2.bgEndWidth
    if L11_2 then
      L12_2 = L4_2
      L11_2 = L4_2.setSize
      L13_2 = A0_2.bgEndWidth
      L14_2 = L10_2
      L11_2(L12_2, L13_2, L14_2)
    else
      L12_2 = L4_2
      L11_2 = L4_2.setSize
      L13_2 = 200
      L14_2 = L10_2
      L11_2(L12_2, L13_2, L14_2)
    end
    L11_2 = gamelua
    L11_2 = L11_2.screenWidth
    L12_2 = L4_2.width
    L11_2 = L11_2 - L12_2
    L11_2 = L11_2 * 0.5
    L4_2.x = L11_2
    L11_2 = gamelua
    L11_2 = L11_2.screenHeight
    L12_2 = L4_2.height
    L11_2 = L11_2 - L12_2
    L11_2 = L11_2 * 0.5
    L4_2.y = L11_2
  end
  L10_2 = ui
  L10_2 = L10_2.Frame
  L10_2 = L10_2.layout
  L11_2 = A0_2
  L10_2(L11_2)
end

L0_1.layout = L1_1
L0_1 = TelepodPrompt

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
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.returnFunc
    if L7_2 then
      L7_2 = _G
      L7_2 = L7_2.type
      L8_2 = A0_2.returnFunc
      L7_2 = L7_2(L8_2)
      if L7_2 == "function" then
        L7_2 = A0_2.returnFunc
        L7_2()
      end
    end
  end
  L7_2 = "BLOCK"
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = TelepodPrompt

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.appearCounter = 0
  A0_2.animationState = 0
  A0_2.animationTimer = 0
  L1_2 = gamelua
  L1_2 = L1_2.disableGameUpdate
  L1_2()
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "pc_game_exit_popup"
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = TelepodPrompt

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.enableGameUpdate
  L1_2()
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = TelepodPrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.appearCounter
  L5_2 = A1_2 * 2
  L4_2 = L4_2 + L5_2
  L5_2 = 0.7
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.appearCounter = L3_2
  L3_2 = A0_2.animationTimer
  L3_2 = L3_2 + A1_2
  A0_2.animationTimer = L3_2
  L3_2 = A0_2.animationState
  if L3_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2.getChild
    L5_2 = "bgBox"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2.animationTimer
    L5_2 = SLIDE_ANIMATION_DURATION
    if L4_2 < L5_2 then
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L5_2 = A0_2.animationTimer
      L6_2 = gamelua
      L6_2 = L6_2.screenWidth
      L7_2 = gamelua
      L7_2 = L7_2.screenWidth
      L8_2 = L3_2.width
      L7_2 = L7_2 - L8_2
      L7_2 = L7_2 * 0.5
      L6_2 = L6_2 - L7_2
      L5_2 = L5_2 * L6_2
      L6_2 = SLIDE_ANIMATION_DURATION
      L5_2 = L5_2 / L6_2
      L4_2 = L4_2 - L5_2
      L3_2.x = L4_2
    else
      L4_2 = A0_2.animationTimer
      L5_2 = SLIDE_ANIMATION_DURATION
      L4_2 = L4_2 - L5_2
      A0_2.animationTimer = L4_2
      A0_2.animationState = 1
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L5_2 = L3_2.width
      L4_2 = L4_2 - L5_2
      L4_2 = L4_2 * 0.5
      L3_2.x = L4_2
    end
  else
    L3_2 = A0_2.animationState
    if L3_2 == 1 then
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "bgBox"
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = 0
      L5_2 = A0_2.animationTimer
      L6_2 = OPEN_ANIMATION_DURATION
      if L5_2 < L6_2 then
        L5_2 = 0
        L6_2 = A0_2.bgEndHeight
        if L6_2 then
          L6_2 = A0_2.animationTimer
          L7_2 = A0_2.bgEndHeight
          L7_2 = L7_2 - L4_2
          L6_2 = L6_2 * L7_2
          L7_2 = OPEN_ANIMATION_DURATION
          L6_2 = L6_2 / L7_2
          L5_2 = L4_2 + L6_2
          L7_2 = L3_2
          L6_2 = L3_2.setSize
          L8_2 = A0_2.bgEndWidth
          L9_2 = L5_2
          L6_2(L7_2, L8_2, L9_2)
        end
        L6_2 = gamelua
        L6_2 = L6_2.screenHeight
        L6_2 = L6_2 - L5_2
        L6_2 = L6_2 * 0.5
        L3_2.y = L6_2
      else
        A0_2.animationState = 2
        L5_2 = A0_2.animationTimer
        L6_2 = OPEN_ANIMATION_DURATION
        L5_2 = L5_2 - L6_2
        A0_2.animationTimer = L5_2
        L5_2 = _G
        L5_2 = L5_2.ipairs
        L6_2 = A0_2.contents
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        for L8_2, L9_2 in L5_2, L6_2, L7_2 do
          L9_2.visible = true
        end
        L6_2 = A0_2
        L5_2 = A0_2.layout
        L5_2(L6_2)
      end
    else
      L3_2 = _G
      L3_2 = L3_2.ipairs
      L4_2 = A0_2.contents
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.min
        L9_2 = A0_2.animationTimer
        L10_2 = FADE_IN_DURATION
        L9_2 = L9_2 / L10_2
        L10_2 = 1
        L8_2 = L8_2(L9_2, L10_2)
        L7_2.alpha = L8_2
      end
    end
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
L0_1 = TelepodPrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
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
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.networkError
  if not L4_2 then
    L4_2 = 1.6 * L3_2
    L5_2 = 1.2 * L3_2
    L6_2 = gamelua
    L6_2 = L6_2.setRenderState
    L7_2 = A0_2.x
    L7_2 = A1_2 + L7_2
    L7_2 = L7_2 / L4_2
    L8_2 = A0_2.y
    L8_2 = A2_2 + L8_2
    L8_2 = L8_2 / L5_2
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L14_2 = A0_2.rightImage
    L14_2 = L14_2.alpha
    if not L14_2 then
      L14_2 = 0
    end
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.drawSprite
    L7_2 = ""
    L8_2 = A0_2.rightImage
    L8_2 = L8_2.image
    L9_2 = A0_2.rightImage
    L9_2 = L9_2.x
    L9_2 = L9_2 / L4_2
    L10_2 = A0_2.rightImage
    L10_2 = L10_2.y
    L10_2 = L10_2 / L5_2
    L11_2 = "HPIVOT"
    L12_2 = "VPIVOT"
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.floor
    L14_2 = A0_2.rightImage
    L14_2 = L14_2.w
    L13_2 = L13_2(L14_2)
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.floor
    L15_2 = A0_2.rightImage
    L15_2 = L15_2.h
    L14_2, L15_2 = L14_2(L15_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = gamelua
    L6_2 = L6_2.setRenderState
    L7_2 = A0_2.x
    L7_2 = A1_2 + L7_2
    L7_2 = L7_2 / L3_2
    L8_2 = A0_2.y
    L8_2 = A2_2 + L8_2
    L8_2 = L8_2 / L3_2
    L9_2 = L3_2
    L10_2 = L3_2
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L14_2 = A0_2.characterImage
    L14_2 = L14_2.alpha
    if not L14_2 then
      L14_2 = 0
    end
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.drawSprite
    L7_2 = ""
    L8_2 = A0_2.characterImage
    L8_2 = L8_2.image
    L9_2 = A0_2.characterImage
    L9_2 = L9_2.x
    L9_2 = L9_2 / L3_2
    L10_2 = A0_2.characterImage
    L10_2 = L10_2.y
    L10_2 = L10_2 / L3_2
    L11_2 = "HPIVOT"
    L12_2 = "VPIVOT"
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.floor
    L14_2 = A0_2.characterImage
    L14_2 = L14_2.w
    L13_2 = L13_2(L14_2)
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.floor
    L15_2 = A0_2.characterImage
    L15_2 = L15_2.h
    L14_2, L15_2 = L14_2(L15_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end

L0_1.draw = L1_1
