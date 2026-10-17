local L0_1, L1_1
L0_1 = 0.2
SLIDE_ANIMATION_DURATION = L0_1
L0_1 = 0.3
OPEN_ANIMATION_DURATION = L0_1
L0_1 = 0.5
FADE_IN_DURATION = L0_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ConfirmPrompt = L0_1
L0_1 = ConfirmPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.isDarkSide
  if L2_2 ~= nil then
    L1_2 = A0_2.isDarkSide
  end
  if L1_2 then
    L2_2 = "SITH"
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = "LIGHT"
  ::lbl_15::
  L3_2 = A0_2.isInSplashScreen
  if L3_2 then
    A0_2.screenWidth = 0
    A0_2.screenHeight = 0
  else
    L3_2 = gamelua
    L3_2 = L3_2.screenWidth
    A0_2.screenWidth = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.screenHeight
    A0_2.screenHeight = L3_2
  end
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.BGBox
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.boxComponents
  if not L4_2 then
    L4_2 = {}
    L5_2 = "ACHIEVEMENTBOX_TOP_LEFT_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.topLeft = L5_2
    L5_2 = "ACHIEVEMENTBOX_TOP_MIDDLE_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.topMiddle = L5_2
    L5_2 = "ACHIEVEMENTBOX_TOP_RIGHT_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.topRight = L5_2
    L5_2 = "ACHIEVEMENTBOX_MIDDLE_LEFT_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.left = L5_2
    L5_2 = "ACHIEVEMENTBOX_CENTER_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.center = L5_2
    L5_2 = "ACHIEVEMENTBOX_MIDDLE_RIGHT_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.right = L5_2
    L5_2 = "ACHIEVEMENTBOX_BOTTOM_LEFT_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.bottomLeft = L5_2
    L5_2 = "ACHIEVEMENTBOX_BOTTOM_MIDDLE_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.bottomMiddle = L5_2
    L5_2 = "ACHIEVEMENTBOX_BOTTOM_RIGHT_SHEET_"
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.bottomRight = L5_2
    L3_2.components = L4_2
  else
    L4_2 = {}
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.topLeft
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.topLeft = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.topRight
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.topRight = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.topMiddle
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.topMiddle = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.topRight
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.topRight = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.left
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.left = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.center
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.center = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.right
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.right = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.bottomLeft
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.bottomLeft = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.bottomMiddle
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.bottomMiddle = L5_2
    L5_2 = A0_2.boxComponents
    L5_2 = L5_2.bottomRight
    L6_2 = L2_2
    L5_2 = L5_2 .. L6_2
    L4_2.bottomRight = L5_2
    L3_2.components = L4_2
  end
  L4_2 = A0_2.name
  if not L4_2 then
    L4_2 = "ConfirmPrompt"
  end
  A0_2.name = L4_2
  L3_2.name = "bg"
  L3_2.hanchor = "LEFT"
  L3_2.vanchor = "TOP"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.deviceModel
  L4_2 = L4_2 == "windows"
  A0_2.confirmOnLeft = L4_2
  L4_2 = A0_2.font
  if not L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.getFontBasic
    L4_2 = L4_2()
  end
  L5_2 = A0_2.secondaryFont
  if not L5_2 then
    L5_2 = gamelua
    L5_2 = L5_2.getFontBasic
    L5_2 = L5_2()
  end
  L6_2 = _G
  L6_2 = L6_2.type
  L7_2 = A0_2.title
  L6_2 = L6_2(L7_2)
  if L6_2 ~= "table" then
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.Text
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "title"
    L9_2 = A0_2.title
    L8_2.text = L9_2
    L9_2 = A0_2.titleFont
    if not L9_2 then
      L9_2 = L4_2
    end
    L8_2.font = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2.vanchor = "TOP"
    L6_2.hanchor = "HCENTER"
    L6_2.visible = false
    L8_2 = L3_2
    L7_2 = L3_2.addChild
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  else
    L6_2 = A0_2.title
    L6_2.visible = false
    L7_2 = L3_2
    L6_2 = L3_2.addChild
    L8_2 = A0_2.title
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2.contentImage
  if L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.Image
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "contentImage"
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.setImage
    L9_2 = A0_2.contentImage
    L7_2(L8_2, L9_2)
    L6_2.vanchor = "TOP"
    L6_2.hanchor = "HCENTER"
    L6_2.visible = false
    L8_2 = L3_2
    L7_2 = L3_2.addChild
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L6_2 = A0_2.content
  if L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.Text
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "content"
    L9_2 = A0_2.content
    L8_2.text = L9_2
    L9_2 = A0_2.contentFont
    if not L9_2 then
      L9_2 = L4_2
    end
    L8_2.font = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2.vanchor = "TOP"
    L6_2.hanchor = "HCENTER"
    L6_2.visible = false
    L8_2 = L3_2
    L7_2 = L3_2.addChild
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L6_2 = A0_2.secondaryContent
  if L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.DummyText
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "secondaryContent"
    L9_2 = A0_2.secondaryContent
    L8_2.text = L9_2
    L9_2 = A0_2.secondaryFont
    L8_2.font = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2.vanchor = "TOP"
    L6_2.hanchor = "HCENTER"
    L6_2.visible = false
    L8_2 = L3_2
    L7_2 = L3_2.addChild
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.ScallableButton
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "close"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = gamelua
  L9_2 = L9_2.getButtonImageName
  L10_2 = "buttonX"
  L11_2 = L1_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.returnValue = "CLOSE"
  L6_2.activateOnRelease = true
  L6_2.visible = false
  L6_2.clickSound = "ButtonBack"
  L8_2 = L3_2
  L7_2 = L3_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.hideCloseButton
  if L7_2 then
    L6_2.visible = false
  end
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.ScallableButton
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "confirm"
  L7_2 = L7_2(L8_2, L9_2)
  A0_2.confirm = L7_2
  L9_2 = L7_2
  L8_2 = L7_2.setImage
  L10_2 = A0_2.buttonImage
  if not L10_2 then
    L10_2 = gamelua
    L10_2 = L10_2.getButtonImageName
    L11_2 = "buttonCheck"
    L12_2 = L1_2
    L10_2 = L10_2(L11_2, L12_2)
  end
  L8_2(L9_2, L10_2)
  L8_2 = A0_2.returnValue
  L7_2.returnValue = L8_2
  L7_2.activateOnRelease = true
  L7_2.clickSound = "ButtonProceed"
  L7_2.visible = false
  L9_2 = L3_2
  L8_2 = L3_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end

L0_1.init = L1_1
L0_1 = ConfirmPrompt

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = false
  g_showCoinParticles = L1_2
  A0_2.appearCounter = 0
  A0_2.animationState = 0
  A0_2.animationTimer = 0
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "pc_game_exit_popup"
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ConfirmPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L3_2 = A0_2.isInSplashScreen
  if L3_2 then
    A0_2.screenWidth = 0
    A0_2.screenHeight = 0
  else
    L3_2 = gamelua
    L3_2 = L3_2.screenWidth
    A0_2.screenWidth = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.screenHeight
    A0_2.screenHeight = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "bg"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "title"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "close"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "confirm"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "content"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "contentImage"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "secondaryContent"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = gamelua
  L14_2 = L14_2.screenWidth
  L14_2 = L14_2 * 0.5
  L15_2 = gamelua
  L15_2 = L15_2.screenWidth
  L15_2 = L15_2 * 0.7
  if L7_2 then
    L16_2 = L7_2.text
    if L16_2 then
      L16_2 = L7_2.text
      if L16_2 ~= "" then
        L17_2 = L7_2
        L16_2 = L7_2.setScale
        L18_2 = L1_2 * 2
        L16_2(L17_2, L18_2)
        L16_2 = L7_2.width
        L17_2 = L7_2.scaleX
        L13_2 = L16_2 * L17_2
      end
    end
  end
  if L8_2 then
    L8_2.scaleX = L1_2
    L8_2.scaleY = L1_2
    L16_2 = _G
    L16_2 = L16_2.math
    L16_2 = L16_2.max
    L17_2 = L13_2
    L18_2 = L8_2.w
    L19_2 = L8_2.scaleX
    L18_2 = L18_2 * L19_2
    L16_2 = L16_2(L17_2, L18_2)
    L13_2 = L16_2
  end
  if L4_2 then
    L16_2 = L4_2.text
    if L16_2 then
      L16_2 = L4_2.text
      if L16_2 ~= "" then
        L17_2 = L4_2
        L16_2 = L4_2.setScale
        L18_2 = L1_2 * 2
        L16_2(L17_2, L18_2)
        L16_2 = L4_2.width
        L17_2 = L4_2.scaleX
        L11_2 = L16_2 * L17_2
    end
    else
      L16_2 = L4_2.image
      if L16_2 then
        L16_2 = L4_2.image
        if L16_2 ~= "" then
          L16_2 = A0_2.titleScale
          if not L16_2 then
            L16_2 = 1
          end
          L16_2 = L1_2 * L16_2
          L4_2.scaleX = L16_2
          L16_2 = A0_2.titleScale
          if not L16_2 then
            L16_2 = 1
          end
          L16_2 = L1_2 * L16_2
          L4_2.scaleY = L16_2
          L16_2 = L4_2.w
          L17_2 = L4_2.scaleX
          L11_2 = L16_2 * L17_2
        end
      end
    end
  end
  L16_2 = _G
  L16_2 = L16_2.math
  L16_2 = L16_2.max
  L17_2 = L13_2
  L18_2 = L11_2
  L16_2 = L16_2(L17_2, L18_2)
  if L15_2 < L16_2 then
    L16_2 = L15_2
  elseif L14_2 > L16_2 then
    L16_2 = L14_2
  end
  if L16_2 == L15_2 then
    L17_2 = L7_2.text
    if L17_2 then
      if L9_2 then
        L17_2 = L9_2.text
        if L17_2 then
          L17_2 = L16_2 * 1.8
          L7_2.textBoxSize = L17_2
      end
      else
        L17_2 = L16_2 * 2
        L7_2.textBoxSize = L17_2
      end
    end
    L17_2 = L4_2.text
    if L17_2 then
      L17_2 = L16_2 * 2
      L4_2.textBoxSize = L17_2
    end
  end
  if L7_2 then
    L17_2 = L7_2.text
    if L17_2 then
      L17_2 = L7_2.text
      if L17_2 ~= "" then
        L18_2 = L7_2
        L17_2 = L7_2.getFontLeading
        L17_2 = L17_2(L18_2)
        L12_2 = L17_2 * L1_2
        L17_2 = L7_2.lines
        if L17_2 then
          L17_2 = L12_2 / 2
          L18_2 = L7_2.lines
          L18_2 = #L18_2
          L12_2 = L17_2 * L18_2
        end
      end
    end
    if L8_2 then
      L17_2 = L8_2.h
      L18_2 = L8_2.scaleY
      L17_2 = L17_2 * L18_2
      L12_2 = L12_2 + L17_2
    end
  end
  if L4_2 then
    L17_2 = L4_2.text
    if L17_2 then
      L17_2 = L4_2.text
      if L17_2 ~= "" then
        L18_2 = L4_2
        L17_2 = L4_2.getFontLeading
        L17_2 = L17_2(L18_2)
        L10_2 = L17_2 * L1_2
        L17_2 = L4_2.lines
        if L17_2 then
          L17_2 = L10_2 / 2
          L18_2 = L4_2.lines
          L18_2 = #L18_2
          L10_2 = L17_2 * L18_2
        end
    end
    else
      L17_2 = L4_2.image
      if L17_2 then
        L17_2 = L4_2.image
        if L17_2 ~= "" then
          L17_2 = L4_2.h
          L18_2 = L4_2.scaleY
          L10_2 = L17_2 * L18_2
        end
      end
    end
  end
  L17_2 = L10_2 + L12_2
  L18_2 = L5_2.h
  L18_2 = L18_2 * L1_2
  L17_2 = L17_2 + L18_2
  L19_2 = L3_2
  L18_2 = L3_2.setSize
  L20_2 = L16_2
  L21_2 = L17_2
  L18_2(L19_2, L20_2, L21_2)
  L18_2 = L16_2
  A0_2.bgEndHeight = L17_2
  A0_2.bgEndWidth = L18_2
  if L4_2 then
    L18_2 = L16_2 / 2
    L4_2.x = L18_2
    L18_2 = L4_2.text
    if L18_2 then
      L4_2.y = 0
    else
      L18_2 = L4_2.image
      if L18_2 then
        L18_2 = L4_2.py
        if L18_2 then
          L18_2 = L4_2.image
          if L18_2 ~= "" then
            L18_2 = L17_2 - L10_2
            L18_2 = L18_2 / 2
            L4_2.y = L18_2
          end
        end
      end
    end
  end
  if L8_2 then
    L18_2 = L4_2.x
    L8_2.x = L18_2
    if L10_2 ~= 0 then
      L18_2 = L4_2.y
      L19_2 = L8_2.h
      L19_2 = L19_2 * L1_2
      L18_2 = L18_2 + L19_2
      L8_2.y = L18_2
    else
      L19_2 = L3_2
      L18_2 = L3_2.getTopBlockH
      L18_2 = L18_2(L19_2)
      L18_2 = -L18_2
      L19_2 = L8_2.h
      L19_2 = L19_2 * 0.8
      L19_2 = L19_2 * L1_2
      L18_2 = L18_2 + L19_2
      L8_2.y = L18_2
    end
  end
  if L7_2 then
    L18_2 = L16_2 / 2
    L7_2.x = L18_2
    if L8_2 then
      L18_2 = L8_2.y
      L19_2 = L8_2.h
      L19_2 = L19_2 * L1_2
      L18_2 = L18_2 + L19_2
      L7_2.y = L18_2
    elseif L10_2 == 0 then
      L18_2 = L17_2 - L12_2
      L18_2 = L18_2 / 2
      L7_2.y = L18_2
    else
      L18_2 = L4_2.image
      if L18_2 then
        L18_2 = L4_2.py
        if L18_2 then
          L18_2 = L4_2.image
          if L18_2 ~= "" then
            L18_2 = L4_2.y
            L19_2 = L10_2 * 0.75
            L18_2 = L18_2 + L19_2
            L7_2.y = L18_2
        end
      end
      else
        L18_2 = L4_2.y
        L19_2 = L10_2 / 2
        L18_2 = L18_2 + L19_2
        L20_2 = L7_2
        L19_2 = L7_2.getFontLeading
        L19_2 = L19_2(L20_2)
        L19_2 = L19_2 * L1_2
        L18_2 = L18_2 + L19_2
        L7_2.y = L18_2
      end
    end
    if L9_2 then
      L18_2 = L7_2.lines
      L18_2 = #L18_2
      L20_2 = L9_2
      L19_2 = L9_2.setScale
      L21_2 = L1_2
      L19_2(L20_2, L21_2)
      L19_2 = L7_2.y
      L9_2.y = L19_2
      L19_2 = L7_2.lines
      L19_2 = #L19_2
      if 1 < L19_2 then
        L19_2 = L7_2.y
        L21_2 = L7_2
        L20_2 = L7_2.getFontLeading
        L20_2 = L20_2(L21_2)
        L20_2 = L20_2 * L2_2
        L21_2 = L7_2.lines
        L21_2 = #L21_2
        L21_2 = L21_2 - 1
        L20_2 = L20_2 * L21_2
        L19_2 = L19_2 + L20_2
        L9_2.y = L19_2
      end
      L19_2 = L7_2.lines
      L20_2 = L7_2.lines
      L20_2 = #L20_2
      L19_2 = L19_2[L20_2]
      L20_2 = L19_2.x
      L22_2 = L9_2
      L21_2 = L9_2.getWidth
      L21_2 = L21_2(L22_2)
      L21_2 = L21_2 / 2
      L21_2 = L21_2 * L2_2
      L20_2 = L20_2 - L21_2
      L19_2.x = L20_2
      L20_2 = L7_2.x
      L22_2 = L7_2
      L21_2 = L7_2.getLineWidth
      L23_2 = L18_2
      L21_2 = L21_2(L22_2, L23_2)
      L21_2 = L21_2 / 2
      L21_2 = L21_2 * L2_2
      L20_2 = L20_2 + L21_2
      L9_2.x = L20_2
    end
  end
  L19_2 = L5_2
  L18_2 = L5_2.setScale
  L20_2 = L1_2
  L18_2(L19_2, L20_2)
  L19_2 = L6_2
  L18_2 = L6_2.setScale
  L20_2 = L1_2
  L18_2(L19_2, L20_2)
  L18_2 = A0_2.screenWidth
  L19_2 = L3_2.width
  L18_2 = L18_2 - L19_2
  L18_2 = L18_2 * 0.5
  L3_2.x = L18_2
  L18_2 = A0_2.screenHeight
  L19_2 = L3_2.height
  L18_2 = L18_2 - L19_2
  L18_2 = L18_2 * 0.5
  L3_2.y = L18_2
  L19_2 = L3_2
  L18_2 = L3_2.getBottomBlockH
  L18_2 = L18_2(L19_2)
  L18_2 = L17_2 + L18_2
  L5_2.y = L18_2
  L19_2 = L3_2
  L18_2 = L3_2.getRightBlockW
  L18_2 = L18_2(L19_2)
  L18_2 = -L18_2
  L19_2 = L5_2.w
  L19_2 = L19_2 * 1.5
  L19_2 = L19_2 * L1_2
  L18_2 = L18_2 + L19_2
  L5_2.x = L18_2
  L19_2 = L3_2
  L18_2 = L3_2.getBottomBlockH
  L18_2 = L18_2(L19_2)
  L18_2 = L17_2 + L18_2
  L6_2.y = L18_2
  L18_2 = A0_2.hideCloseButton
  if L18_2 then
    L19_2 = L3_2
    L18_2 = L3_2.getRightBlockW
    L18_2 = L18_2(L19_2)
    L18_2 = L16_2 + L18_2
    L19_2 = L6_2.w
    L19_2 = L19_2 * 0.2
    L19_2 = L19_2 * L1_2
    L18_2 = L18_2 - L19_2
    L6_2.x = L18_2
  else
    L19_2 = L3_2
    L18_2 = L3_2.getRightBlockW
    L18_2 = L18_2(L19_2)
    L18_2 = L16_2 + L18_2
    L19_2 = L6_2.w
    L19_2 = L19_2 * 1.5
    L19_2 = L19_2 * L1_2
    L18_2 = L18_2 - L19_2
    L6_2.x = L18_2
  end
  L18_2 = A0_2.confirmOnLeft
  if L18_2 then
    L18_2 = A0_2.hideCloseButton
    if not L18_2 then
      L18_2 = L6_2.x
      L19_2 = L5_2.x
      L6_2.x = L19_2
      L5_2.x = L18_2
    end
  end
  L18_2 = A0_2.animationState
  if L18_2 ~= 2 then
    A0_2.animationState = 0
    A0_2.animationTimer = 0
    L4_2.visible = false
    L4_2.alpha = 0
    L5_2.visible = false
    L5_2.alpha = 0
    L6_2.visible = false
    L6_2.alpha = 0
    L7_2.visible = false
    L7_2.alpha = 0
    if L8_2 then
      L8_2.visible = false
      L8_2.alpha = 0
    end
    if L9_2 then
      L9_2.visible = false
      L9_2.alpha = 0
    end
    L3_2.visible = true
    L18_2 = 0
    L19_2 = 0
    L20_2 = 0
    L21_2 = A0_2.bgEndHeight
    if L21_2 then
      L21_2 = A0_2.screenHeight
      L21_2 = L21_2 - L19_2
      L21_2 = L21_2 * 0.5
      L22_2 = A0_2.screenHeight
      L23_2 = L3_2.height
      L22_2 = L22_2 - L23_2
      L22_2 = L22_2 * 0.5
      L20_2 = L21_2 - L22_2
    end
    L21_2 = A0_2.bgEndWidth
    if L21_2 then
      L22_2 = L3_2
      L21_2 = L3_2.setSize
      L23_2 = A0_2.bgEndWidth
      L24_2 = L19_2
      L21_2(L22_2, L23_2, L24_2)
    else
      L22_2 = L3_2
      L21_2 = L3_2.setSize
      L23_2 = 200
      L24_2 = L19_2
      L21_2(L22_2, L23_2, L24_2)
    end
    L21_2 = A0_2.screenWidth
    L22_2 = L3_2.width
    L21_2 = L21_2 - L22_2
    L21_2 = L21_2 * 0.5
    L3_2.x = L21_2
    L21_2 = A0_2.screenHeight
    L22_2 = L3_2.height
    L21_2 = L21_2 - L22_2
    L21_2 = L21_2 * 0.5
    L3_2.y = L21_2
  end
end

L0_1.layout = L1_1
L0_1 = ConfirmPrompt

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
    L7_2 = A0_2.closeCallback
    if L7_2 then
      L7_2 = _G
      L7_2 = L7_2.type
      L8_2 = A0_2.closeCallback
      L7_2 = L7_2(L8_2)
      if L7_2 == "function" then
        L7_2 = A0_2.closeCallback
        L7_2()
      end
    end
  else
    L7_2 = A0_2.returnValue
    if L4_2 == L7_2 then
      L7_2 = _G
      L7_2 = L7_2.type
      L8_2 = A0_2.returnValue
      L7_2 = L7_2(L8_2)
      if L7_2 == "function" then
        L7_2 = A0_2.returnValue
        L7_2()
      else
        L7_2 = gamelua
        L7_2 = L7_2.eventManager
        L8_2 = L7_2
        L7_2 = L7_2.notify
        L9_2 = {}
        L10_2 = A0_2.returnValue
        L9_2.id = L10_2
        L10_2 = A0_2.meta
        L9_2.meta = L10_2
        L7_2(L8_2, L9_2)
      end
      L7_2 = A0_2.closeOnCancelKeyHandler
      if L7_2 ~= nil then
        L7_2 = _G
        L7_2 = L7_2.type
        L8_2 = closeOnCancelKeyHandler
        L7_2 = L7_2(L8_2)
        if L7_2 ~= "function" then
          goto lbl_76
        end
        L7_2 = closeOnCancelKeyHandler
        L7_2 = L7_2()
        if not L7_2 then
          goto lbl_76
        end
      end
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
    end
  end
  ::lbl_76::
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
L0_1 = ConfirmPrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "ESCAPE" or A2_2 == "KEY_BACK" then
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
      L6_2 = A0_2.closeCallback
      if L6_2 then
        L6_2 = _G
        L6_2 = L6_2.type
        L7_2 = A0_2.closeCallback
        L6_2 = L6_2(L7_2)
        if L6_2 == "function" then
          L6_2 = A0_2.closeCallback
          L6_2()
        end
      end
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonBack"
      L6_2(L7_2)
    elseif A2_2 == "RETURN" then
      L6_2 = A0_2.hideCloseButton
      if not L6_2 then
        L6_2 = A0_2.returnValue
        if L6_2 then
          goto lbl_65
        end
      end
      L6_2 = A0_2.closeCallback
      if not L6_2 then
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
      else
        ::lbl_65::
        L6_2 = A0_2.closeCallback
        if L6_2 then
          L6_2 = _G
          L6_2 = L6_2.type
          L7_2 = A0_2.closeCallback
          L6_2 = L6_2(L7_2)
          if L6_2 == "function" then
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
            L6_2 = A0_2.closeCallback
            L6_2()
        end
        else
          L7_2 = A0_2
          L6_2 = A0_2.getChild
          L8_2 = "confirm"
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = gamelua
          L7_2 = L7_2.playAudio
          L8_2 = L6_2.clickSound
          L7_2(L8_2)
          L7_2 = gamelua
          L7_2 = L7_2.eventManager
          L8_2 = L7_2
          L7_2 = L7_2.queueEvent
          L9_2 = {}
          L10_2 = gamelua
          L10_2 = L10_2.events
          L10_2 = L10_2.EID_POP_FRAME
          L9_2.id = L10_2
          L7_2(L8_2, L9_2)
          L7_2 = _G
          L7_2 = L7_2.type
          L8_2 = A0_2.returnValue
          L7_2 = L7_2(L8_2)
          if L7_2 == "function" then
            L7_2 = A0_2.returnValue
            L7_2()
          else
            L7_2 = gamelua
            L7_2 = L7_2.eventManager
            L8_2 = L7_2
            L7_2 = L7_2.notify
            L9_2 = {}
            L10_2 = A0_2.returnValue
            L9_2.id = L10_2
            L10_2 = A0_2.meta
            L9_2.meta = L10_2
            L7_2(L8_2, L9_2)
          end
        end
      end
    elseif A2_2 == "S" then
      L6_2 = L3_2
      L7_2 = L4_2
      L8_2 = L5_2
      return L6_2, L7_2, L8_2
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
L0_1 = ConfirmPrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.appearCounter
  L5_2 = A1_2 * 2
  L4_2 = L4_2 + L5_2
  L5_2 = 0.8
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.appearCounter = L3_2
  L3_2 = A0_2.animationTimer
  L3_2 = L3_2 + A1_2
  A0_2.animationTimer = L3_2
  L3_2 = A0_2.animationState
  if L3_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2.getChild
    L5_2 = "bg"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2.animationTimer
    L5_2 = SLIDE_ANIMATION_DURATION
    if L4_2 < L5_2 then
      L4_2 = A0_2.screenWidth
      L5_2 = A0_2.animationTimer
      L6_2 = A0_2.screenWidth
      L7_2 = A0_2.screenWidth
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
      L4_2 = A0_2.screenWidth
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
      L5_2 = "bg"
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
        L6_2 = A0_2.screenHeight
        L6_2 = L6_2 - L5_2
        L6_2 = L6_2 * 0.5
        L3_2.y = L6_2
      else
        A0_2.animationState = 2
        L5_2 = A0_2.animationTimer
        L6_2 = OPEN_ANIMATION_DURATION
        L5_2 = L5_2 - L6_2
        A0_2.animationTimer = L5_2
        L6_2 = A0_2
        L5_2 = A0_2.getChild
        L7_2 = "title"
        L5_2 = L5_2(L6_2, L7_2)
        L7_2 = A0_2
        L6_2 = A0_2.getChild
        L8_2 = "close"
        L6_2 = L6_2(L7_2, L8_2)
        L8_2 = A0_2
        L7_2 = A0_2.getChild
        L9_2 = "confirm"
        L7_2 = L7_2(L8_2, L9_2)
        L9_2 = A0_2
        L8_2 = A0_2.getChild
        L10_2 = "content"
        L8_2 = L8_2(L9_2, L10_2)
        L10_2 = A0_2
        L9_2 = A0_2.getChild
        L11_2 = "contentImage"
        L9_2 = L9_2(L10_2, L11_2)
        L11_2 = A0_2
        L10_2 = A0_2.getChild
        L12_2 = "secondaryContent"
        L10_2 = L10_2(L11_2, L12_2)
        L5_2.visible = true
        L7_2.visible = true
        L8_2.visible = true
        if L9_2 then
          L9_2.visible = true
        end
        L11_2 = A0_2.hideCloseButton
        if not L11_2 then
          L6_2.visible = true
        end
        if L10_2 then
          L10_2.visible = true
        end
        L12_2 = A0_2
        L11_2 = A0_2.layout
        L11_2(L12_2)
      end
    else
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "title"
      L3_2 = L3_2(L4_2, L5_2)
      L5_2 = A0_2
      L4_2 = A0_2.getChild
      L6_2 = "close"
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = A0_2
      L5_2 = A0_2.getChild
      L7_2 = "confirm"
      L5_2 = L5_2(L6_2, L7_2)
      L7_2 = A0_2
      L6_2 = A0_2.getChild
      L8_2 = "content"
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = A0_2
      L7_2 = A0_2.getChild
      L9_2 = "contentImage"
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2.getChild
      L10_2 = "secondaryContent"
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.min
      L10_2 = A0_2.animationTimer
      L11_2 = FADE_IN_DURATION
      L10_2 = L10_2 / L11_2
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L3_2.alpha = L9_2
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.min
      L10_2 = A0_2.animationTimer
      L11_2 = FADE_IN_DURATION
      L10_2 = L10_2 / L11_2
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L4_2.alpha = L9_2
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.min
      L10_2 = A0_2.animationTimer
      L11_2 = FADE_IN_DURATION
      L10_2 = L10_2 / L11_2
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L5_2.alpha = L9_2
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.min
      L10_2 = A0_2.animationTimer
      L11_2 = FADE_IN_DURATION
      L10_2 = L10_2 / L11_2
      L11_2 = 1
      L9_2 = L9_2(L10_2, L11_2)
      L6_2.alpha = L9_2
      if L7_2 then
        L9_2 = _G
        L9_2 = L9_2.math
        L9_2 = L9_2.min
        L10_2 = A0_2.animationTimer
        L11_2 = FADE_IN_DURATION
        L10_2 = L10_2 / L11_2
        L11_2 = 1
        L9_2 = L9_2(L10_2, L11_2)
        L7_2.alpha = L9_2
      end
      if L8_2 then
        L9_2 = _G
        L9_2 = L9_2.math
        L9_2 = L9_2.min
        L10_2 = A0_2.animationTimer
        L11_2 = FADE_IN_DURATION
        L10_2 = L10_2 / L11_2
        L11_2 = 1
        L9_2 = L9_2(L10_2, L11_2)
        L8_2.alpha = L9_2
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
L0_1 = ConfirmPrompt

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
L0_1 = ConfirmPrompt

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = true
  g_showCoinParticles = L1_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
