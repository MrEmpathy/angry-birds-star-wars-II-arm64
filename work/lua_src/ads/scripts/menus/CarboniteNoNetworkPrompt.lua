local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CarboniteNoNetworkPrompt = L0_1
L0_1 = CarboniteNoNetworkPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.PROMPT_BG_BOX_WIDTH = 620
  A0_2.PROMPT_BG_BOX_HEIGHT = 390
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.floor
  L2_2 = A0_2.PROMPT_BG_BOX_WIDTH
  L1_2 = L1_2(L2_2)
  A0_2.width = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.floor
  L2_2 = A0_2.PROMPT_BG_BOX_HEIGHT
  L1_2 = L1_2(L2_2)
  A0_2.height = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_25
    end
  end
  L1_2 = "LIGHT"
  ::lbl_25::
  A0_2.suffix = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.loadImages
  L2_2 = {}
  L3_2 = "ANIMATION_CARBONITE"
  L2_2[1] = L3_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bgBox = L1_2
  L1_2 = A0_2.bgBox
  L2_2 = {}
  L3_2 = "TUTBOX_TOP_LEFT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.topLeft = L3_2
  L3_2 = "TUTBOX_TOP_MIDDLE_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.topMiddle = L3_2
  L3_2 = "TUTBOX_TOP_RIGHT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.topRight = L3_2
  L3_2 = "TUTBOX_MIDDLE_LEFT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.left = L3_2
  L3_2 = "TUTBOX_CENTER_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.center = L3_2
  L3_2 = "TUTBOX_MIDDLE_RIGHT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.right = L3_2
  L3_2 = "TUTBOX_BOTTOM_LEFT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.bottomLeft = L3_2
  L3_2 = "TUTBOX_BOTTOM_MIDDLE_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.bottomMiddle = L3_2
  L3_2 = "TUTBOX_BOTTOM_RIGHT_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L2_2.bottomRight = L3_2
  L1_2.components = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.bgBox
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "backBtn"
  L3_2.returnValue = "CLOSE"
  L3_2.clickSound = "ButtonBack"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.backBtn = L1_2
  L1_2 = A0_2.backBtn
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.isDarkSide
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = "BTN_X"
    if L3_2 then
      goto lbl_102
    end
  end
  L3_2 = "BTN_X_LIGHT"
  ::lbl_102::
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bgBox
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.backBtn
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "carboniteBase"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.carboniteBase = L1_2
  L1_2 = A0_2.carboniteBase
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ANIMATION_CARBONITE"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bgBox
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.carboniteBase
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "text"
  L4_2 = gamelua
  L4_2 = L4_2.getText
  L5_2 = "TEXT_CARBONITE_NO_CONNECTION_TEXT"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L3_2.hanchor = "LEFT"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.text = L1_2
  L1_2 = A0_2.text
  L2_2 = gamelua
  L2_2 = L2_2.getFontBasic
  L2_2 = L2_2()
  L1_2.font = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.text
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  A0_2.bird = L1_2
  L1_2 = A0_2.bird
  L1_2.name = "bird"
  L1_2 = A0_2.bird
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "RED_CONNECTING"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bgBox
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.bird
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  A0_2.eyebrows = L1_2
  L1_2 = A0_2.eyebrows
  L1_2.name = "eyebrows"
  L1_2 = A0_2.eyebrows
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "RED_BROW_1"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bird
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.eyebrows
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  A0_2.phone = L1_2
  L1_2 = A0_2.phone
  L1_2.name = "phone"
  L1_2 = A0_2.phone
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "PHONE_CONNECTING"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bird
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.phone
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "globe"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.globe = L1_2
  L1_2 = A0_2.bgBox
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.globe
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "globe_shadow"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "GLOBE_SHADOW"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.globe
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "globe_image"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "GLOBE"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.globe
  L4_2 = L3_2
  L3_2 = L3_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "tryButton"
  L5_2.returnValue = "TRY_AGAIN"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.tryButton = L3_2
  L3_2 = A0_2.tryButton
  L4_2 = L3_2
  L3_2 = L3_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "hintPopupButton"
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2, L8_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2.bgBox
  L4_2 = L3_2
  L3_2 = L3_2.addChild
  L5_2 = A0_2.tryButton
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.DummyText
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "tryButtonText"
  L6_2 = gamelua
  L6_2 = L6_2.getText
  L7_2 = "TEXT_CARBONITE_NO_NETWORK_TRY_AGAIN"
  L6_2 = L6_2(L7_2)
  L5_2.text = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.getFontBasic
  L6_2 = L6_2()
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.tryButtonText = L3_2
  L3_2 = A0_2.tryButton
  L4_2 = L3_2
  L3_2 = L3_2.addChild
  L5_2 = A0_2.tryButtonText
  L3_2(L4_2, L5_2)
end

L0_1.init = L1_1
L0_1 = CarboniteNoNetworkPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = gamelua
  L1_2 = L1_2.getFontScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L3_2 = A0_2.bgBox
  L4_2 = gamelua
  L4_2 = L4_2.screenWidth
  L4_2 = L4_2 * 0.5
  L3_2.x = L4_2
  L3_2 = A0_2.bgBox
  L4_2 = gamelua
  L4_2 = L4_2.screenHeight
  L4_2 = L4_2 * 0.5
  L3_2.y = L4_2
  L3_2 = A0_2.bgBox
  L4_2 = L3_2
  L3_2 = L3_2.setSize
  L5_2 = A0_2.width
  L5_2 = L5_2 * L2_2
  L6_2 = A0_2.height
  L6_2 = L6_2 * L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.bgBox
  L4_2 = L3_2
  L3_2 = L3_2.setScale
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.bgBox
  L4_2 = L3_2
  L3_2 = L3_2.getSize
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = A0_2.backBtn
  L6_2 = L3_2 * 0.5
  L5_2.x = L6_2
  L5_2 = A0_2.backBtn
  L6_2 = -L4_2
  L6_2 = L6_2 * 0.5
  L5_2.y = L6_2
  L5_2 = A0_2.backBtn
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.carboniteBase
  L6_2 = -L3_2
  L6_2 = L6_2 * 0.25
  L5_2.x = L6_2
  L5_2 = A0_2.text
  L6_2 = A0_2.width
  L6_2 = L6_2 * 0.65
  L5_2.textBoxSize = L6_2
  L5_2 = A0_2.text
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = L2_2 * 1.5
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.text
  L6_2 = L5_2
  L5_2 = L5_2.clip
  L5_2(L6_2)
  L5_2 = A0_2.text
  L6_2 = A0_2.bgBox
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = A0_2.text
  L6_2 = A0_2.bgBox
  L6_2 = L6_2.y
  L7_2 = A0_2.text
  L8_2 = L7_2
  L7_2 = L7_2.getHeight
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * 0.5
  L8_2 = A0_2.text
  L8_2 = L8_2.lines
  L8_2 = #L8_2
  L7_2 = L7_2 / L8_2
  L6_2 = L6_2 - L7_2
  L5_2.y = L6_2
  L5_2 = A0_2.bird
  L6_2 = L3_2 * 0.07
  L5_2.x = L6_2
  L5_2 = A0_2.bird
  L6_2 = L4_2 * 0.2
  L5_2.y = L6_2
  L5_2 = A0_2.bird
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = 0.5
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.globe
  L6_2 = L3_2 * 0.3
  L5_2.x = L6_2
  L5_2 = A0_2.globe
  L6_2 = L4_2 * 0.2
  L5_2.y = L6_2
  L5_2 = A0_2.globe
  L6_2 = L5_2
  L5_2 = L5_2.setScale
  L7_2 = 0.5
  L5_2(L6_2, L7_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = "BTN_BLUE_1"
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = A0_2.tryButton
  L8_2 = L3_2 * 0.5
  L9_2 = L5_2 * 0.3
  L9_2 = L9_2 * L2_2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = A0_2.tryButton
  L8_2 = L4_2 * 0.5
  L7_2.y = L8_2
  L7_2 = A0_2.tryButton
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = 0.8 * L2_2
  L7_2(L8_2, L9_2)
  L7_2 = 1
  L8_2 = 330
  L9_2 = A0_2.tryButtonText
  L10_2 = L9_2
  L9_2 = L9_2.getWidth
  L9_2 = L9_2(L10_2)
  if L8_2 < L9_2 then
    L9_2 = A0_2.tryButtonText
    L10_2 = L9_2
    L9_2 = L9_2.getWidth
    L9_2 = L9_2(L10_2)
    L7_2 = L8_2 / L9_2
  end
  L9_2 = A0_2.tryButtonText
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L7_2
  L9_2(L10_2, L11_2)
  L9_2 = ui
  L9_2 = L9_2.Frame
  L9_2 = L9_2.layout
  L10_2 = A0_2
  L9_2(L10_2)
end

L0_1.layout = L1_1
L0_1 = CarboniteNoNetworkPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_POP_FRAME
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.close = L1_1
L0_1 = CarboniteNoNetworkPrompt

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
    L7_2 = gamelua
    L7_2 = L7_2.SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.setLastCarbonitePromoTime
    L9_2 = gamelua
    L9_2 = L9_2.getCurrentTime
    L9_2, L10_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2)
  elseif L4_2 == "TRY_AGAIN" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L7_2(L8_2)
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.queueEvent
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_CHECK_CARBONITE_PROMPT
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = "BLOCK"
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = CarboniteNoNetworkPrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L6_2 = A0_2
    L5_2 = A0_2.close
    L5_2(L6_2)
  end
  L5_2 = "BLOCK"
  return L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = CarboniteNoNetworkPrompt

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2.g_blockMainMenuAd = true
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = CarboniteNoNetworkPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.releaseImages
  L2_2 = {}
  L3_2 = "ANIMATION_CARBONITE"
  L2_2[1] = L3_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
