local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CarboniteAvailableAnimation = L0_1
L0_1 = CarboniteAvailableAnimation
L0_1.isShown = false
L0_1 = CarboniteAvailableAnimation
L0_1.isVideoShowing = false
L0_1 = CarboniteAvailableAnimation
L0_1.isBuyShowing = false
L0_1 = CarboniteAvailableAnimation
L0_1.isHelpShowing = false
L0_1 = CarboniteAvailableAnimation
L0_1.isNetErrorShowing = false
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  A0_2.name = "CarboniteAvailableAnimation"
  A0_2.PROMPT_BG_BOX_WIDTH = 660
  A0_2.PROMPT_BG_BOX_HEIGHT = 440
  L2_2 = gamelua
  L2_2 = L2_2.loadImages
  L3_2 = {}
  L4_2 = "ANIMATION_CARBONITE"
  L3_2[1] = L4_2
  L2_2(L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isDarkSide
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = "SITH"
    if L2_2 then
      goto lbl_23
    end
  end
  L2_2 = "LIGHT"
  ::lbl_23::
  A0_2.suffix = L2_2
  L2_2 = {}
  A0_2.showAfterAnimation = L2_2
  L2_2 = {}
  A0_2.hideWhenClosing = L2_2
  L2_2 = ui
  L2_2 = L2_2.BGBox
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "bgBox"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.bgBox = L2_2
  L2_2 = A0_2.bgBox
  L3_2 = {}
  L4_2 = "TUTBOX_TOP_LEFT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.topLeft = L4_2
  L4_2 = "TUTBOX_TOP_MIDDLE_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.topMiddle = L4_2
  L4_2 = "TUTBOX_TOP_RIGHT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.topRight = L4_2
  L4_2 = "TUTBOX_MIDDLE_LEFT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.left = L4_2
  L4_2 = "TUTBOX_CENTER_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.center = L4_2
  L4_2 = "TUTBOX_MIDDLE_RIGHT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.right = L4_2
  L4_2 = "TUTBOX_BOTTOM_LEFT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.bottomLeft = L4_2
  L4_2 = "TUTBOX_BOTTOM_MIDDLE_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.bottomMiddle = L4_2
  L4_2 = "TUTBOX_BOTTOM_RIGHT_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L3_2.bottomRight = L4_2
  L2_2.components = L3_2
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.bgBox
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.floor
  L3_2 = A0_2.PROMPT_BG_BOX_WIDTH
  L2_2 = L2_2(L3_2)
  A0_2.width = L2_2
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.floor
  L3_2 = A0_2.PROMPT_BG_BOX_HEIGHT
  L2_2 = L2_2(L3_2)
  A0_2.height = L2_2
  L2_2 = ui
  L2_2 = L2_2.PowerUpMachineFrame
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = CarboniteAvailableAnimation
  L5_2 = L5_2.getNextPossibleRewards
  L5_2 = L5_2()
  L4_2.rewards = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.spinner = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.spinner
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "smoke"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.smoke = L2_2
  L2_2 = A0_2.smoke
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_FOG_1"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.smoke
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "smoke_front"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.smoke_front = L2_2
  L2_2 = A0_2.smoke_front
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_FOG_1"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.smoke_front
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "rightCloud"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.rightCloud = L2_2
  L2_2 = A0_2.rightCloud
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_BLUE_CLOUD"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.rightCloud
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "leftCloud"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.leftCloud = L2_2
  L2_2 = A0_2.leftCloud
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_BLUE_CLOUD_MIRROR"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.leftCloud
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "pipes"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.pipes = L2_2
  L2_2 = A0_2.pipes
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE_PIPES_1"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.pipes
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "rim_back"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.rim_back = L2_2
  L2_2 = A0_2.rim_back
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE_RIM_1"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.rim_back
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "rim_front"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.rim_front = L2_2
  L2_2 = A0_2.rim_front
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE_RIM_2"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.rim_front
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "hole"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.hole = L2_2
  L2_2 = A0_2.hole
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE_HOLE"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.hole
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "carboniteBase"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.carboniteBase = L2_2
  L2_2 = A0_2.carboniteBase
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE"
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "carboniteRedLight"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.carboniteRedLight = L2_2
  L2_2 = A0_2.carboniteRedLight
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE_BUTTONS_2"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.carboniteRedLight
  L2_2.visible = false
  L2_2 = A0_2.carboniteBase
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.carboniteRedLight
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "carboniteGreenLight"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.carboniteGreenLight = L2_2
  L2_2 = A0_2.carboniteGreenLight
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE_BUTTONS_1"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.carboniteGreenLight
  L2_2.visible = false
  L2_2 = A0_2.carboniteBase
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.carboniteGreenLight
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "carboniteMeltGlow"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.carboniteMeltGlow = L2_2
  L2_2 = A0_2.carboniteMeltGlow
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CARBONITE_GLOW"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.carboniteMeltGlow
  L2_2.visible = false
  L2_2 = A0_2.carboniteMeltGlow
  L2_2.direction = 1
  L2_2 = A0_2.carboniteMeltGlow
  L2_2.alpha = 0
  L2_2 = A0_2.carboniteBase
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.carboniteMeltGlow
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "buyButtonGlow"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.carboniteBaseGlow = L2_2
  L2_2 = A0_2.carboniteBaseGlow
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "GOLD_SHINE_1"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.carboniteBaseGlow
  L2_2.visible = false
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.carboniteBaseGlow
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.showAfterAnimation
  L4_2 = A0_2.carboniteBaseGlow
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "backBtn"
  L4_2.returnValue = "CLOSE"
  L4_2.clickSound = "ButtonBack"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.backBtn = L2_2
  L2_2 = A0_2.backBtn
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.isDarkSide
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = "BTN_X"
    if L4_2 then
      goto lbl_353
    end
  end
  L4_2 = "BTN_X_LIGHT"
  ::lbl_353::
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.backBtn
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.backBtn
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "helpBtn"
  L4_2.returnValue = "HELP"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.helpBtn = L2_2
  L2_2 = A0_2.helpBtn
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.getButtonImageName
  L5_2 = "pauseMenuTutorialsButton"
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.isDarkSide
  L6_2, L7_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.helpBtn
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.helpBtn
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "title"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_CARBONITE_INFO_TITLE"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontHeadline
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.title = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.title
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.title
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.showAfterAnimation
  L4_2 = A0_2.title
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "blurryCharacter"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.blurryCharacter = L2_2
  L2_2 = A0_2.blurryCharacter
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "ANIMATION_CHARACTER"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.blurryCharacter
  L3_2 = L2_2
  L2_2 = L2_2.setVisible
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.blurryCharacter
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.initTimeAndPrice
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.initMeltButton
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.initBuyButton
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.initAdButton
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.initAnimationState
  L2_2(L3_2)
end

L0_1.init = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getCarboniteMeltingEndTime
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getBirdInCarbonite
  L2_2 = L2_2(L3_2)
  if L1_2 then
    L3_2 = L1_2.hour
  end
  if not L3_2 and not L2_2 then
    A0_2.carbonitePosition = nil
    A0_2.allInvisible = true
    A0_2.blurryCharacterPosition = 0
  else
    L4_2 = A0_2
    L3_2 = A0_2.endCarboniteInitAnimation
    L3_2(L4_2)
  end
end

L0_1.initAnimationState = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.carbonitePosition
  if L1_2 then
    L1_2 = A0_2.carbonitePosition
    L1_2 = 1 <= L1_2
  end
  return L1_2
end

L0_1.isCarboniteInitAnimationComplete = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.carbonitePosition = 1
  A0_2.blurryCharacterPosition = 1
  A0_2.allInvisible = false
  L2_2 = A0_2
  L1_2 = A0_2.removeChild
  L3_2 = A0_2.spinner
  L1_2(L2_2, L3_2)
  A0_2.finishSpinnerAnimation = true
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setBirdInCarbonite
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.blurryCharacter
  L2_2 = L1_2
  L1_2 = L1_2.setVisible
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "eggsteroid_destroyed"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "enter_atmosphere"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "carbonite_launch_01"
  L1_2(L2_2)
  L1_2 = A0_2.spinner
  L2_2 = L1_2
  L1_2 = L1_2.stopAudio
  L1_2(L2_2)
end

L0_1.endCarboniteInitAnimation = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = gamelua
  L0_2 = L0_2.timeToDay
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getLastCarbonitePromoTime
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2(L2_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = CarboniteAvailableAnimation
  L1_2 = L1_2.getMeltEndAt
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getServerTime
  L2_2 = L2_2()
  L3_2 = gamelua
  L3_2 = L3_2.getServerTimeInLocalTimeZone
  L3_2 = L3_2()
  if L2_2 then
    L4_2 = {}
    L5_2 = L2_2.year
    L4_2.year = L5_2
    L5_2 = L2_2.month
    L4_2.month = L5_2
    L5_2 = L2_2.day
    L4_2.day = L5_2
    if L4_2 then
      goto lbl_29
    end
  end
  L4_2 = nil
  ::lbl_29::
  if L2_2 == nil then
    L5_2 = gamelua
    L5_2 = L5_2.timeToDay
    L6_2 = gamelua
    L6_2 = L6_2.getCurrentTime
    L6_2, L7_2, L8_2, L9_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
  end
  if L1_2 ~= nil then
    L5_2 = L1_2.hour
    if L5_2 ~= nil then
      goto lbl_84
    end
  end
  if L0_2 ~= nil then
    L5_2 = gamelua
    L5_2 = L5_2.getTimeDifferenceInSeconds
    L6_2 = L4_2
    L7_2 = L0_2
    L5_2 = L5_2(L6_2, L7_2)
    if not (86400 <= L5_2) then
      goto lbl_84
    end
  end
  if L2_2 == nil then
    L5_2 = ui
    L5_2 = L5_2.CarboniteNoNetworkPrompt
    L6_2 = L5_2
    L5_2 = L5_2.new
    L5_2 = L5_2(L6_2)
    L6_2 = gamelua
    L6_2 = L6_2.eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = gamelua
    L9_2 = L9_2.events
    L9_2 = L9_2.EID_PUSH_FRAME
    L8_2.id = L9_2
    L8_2.target = L5_2
    L6_2(L7_2, L8_2)
  else
    L5_2 = gamelua
    L5_2 = L5_2.eventManager
    L6_2 = L5_2
    L5_2 = L5_2.notify
    L7_2 = {}
    L8_2 = gamelua
    L8_2 = L8_2.events
    L8_2 = L8_2.EID_SHOW_CARBONITE_REWARD
    L7_2.id = L8_2
    L7_2.screen = "Main menu"
    L5_2(L6_2, L7_2)
    L5_2 = gamelua
    L5_2 = L5_2.SettingsWrapper
    L6_2 = L5_2
    L5_2 = L5_2.setLastCarbonitePromoTime
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
  ::lbl_84::
end

L0_1.showCarbonitePrompt = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2
  L1_2 = CarboniteAvailableAnimation
  L1_2 = L1_2.getData
  L1_2 = L1_2()
  L1_2 = L1_2.carboniteReward
  A0_2.rewardParameters = L1_2
  L1_2 = A0_2.rewardParameters
  L1_2 = L1_2.price
  A0_2.meltPrice = L1_2
  L1_2 = A0_2.rewardParameters
  L1_2 = L1_2.timeToMelt
  A0_2.meltTime = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.cheatsEnabled
  if L1_2 then
    A0_2.meltTime = 60
  end
  L1_2 = A0_2.meltPrice
  A0_2.currentMeltPrice = L1_2
  L1_2 = CarboniteAvailableAnimation
  L1_2 = L1_2.getMeltEndAt
  L1_2 = L1_2()
  A0_2.meltEndAt = L1_2
end

L0_1.initTimeAndPrice = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "meltButton"
  L3_2.returnValue = "MELT"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.meltButton = L1_2
  L1_2 = A0_2.meltButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "carboniteMeltButton"
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.isDarkSide
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.meltButton
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.DummyText
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "meltButtonText"
  L4_2 = gamelua
  L4_2 = L4_2.getText
  L5_2 = "TEXT_CARBONITE_WAIT_TO_MELT"
  L6_2 = {}
  L7_2 = "$TIME"
  L9_2 = A0_2
  L8_2 = A0_2.getSecondsToString
  L10_2 = A0_2.meltTime
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.text = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.meltButtonText = L1_2
  L1_2 = A0_2.meltButtonText
  L2_2 = L1_2
  L1_2 = L1_2.setScale
  L3_2 = 0.9
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.meltButton
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.meltButtonText
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "meltbuttonNoConnection"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.meltButtonNoConnection = L1_2
  L1_2 = A0_2.meltButtonNoConnection
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "NO_CONNECTION"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.meltButton
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.meltButtonNoConnection
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.meltButtonNoConnection
  L2_2 = L1_2
  L1_2 = L1_2.setVisible
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.meltButton
  L1_2.visible = false
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.showAfterAnimation
  L3_2 = A0_2.meltButton
  L1_2(L2_2, L3_2)
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.hideWhenClosing
  L3_2 = A0_2.meltButton
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.ProgressBar
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "progressBar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.progress = L1_2
  L1_2 = A0_2.progress
  L2_2 = L1_2
  L1_2 = L1_2.setImages
  L3_2 = "BTN_RED2_1"
  L4_2 = "BTN_GREEN2_1"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.progress
  L2_2 = L1_2
  L1_2 = L1_2.setValue
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.progress
  L2_2 = L1_2
  L1_2 = L1_2.setMax
  L3_2 = 100
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.progress
  L1_2.visible = false
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.progress
  L1_2(L2_2, L3_2)
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.hideWhenClosing
  L3_2 = A0_2.progress
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.DummyText
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "progressText"
  L3_2.text = ""
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.progressText = L1_2
  L1_2 = A0_2.progress
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = A0_2.progressText
  L1_2(L2_2, L3_2)
end

L0_1.initMeltButton = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "buyButton"
  L3_2.returnValue = "BUY"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.buyButton = L1_2
  L1_2 = A0_2.buyButton
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "BTN_GREEN_2"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.buyButton
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.meltPrice
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "buyButtonText"
  L5_2 = gamelua
  L5_2 = L5_2.getText
  L6_2 = "TEXT_CARBONITE_MELT_FOR_PRICE"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.buyButtonText = L2_2
  L2_2 = A0_2.buyButtonText
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = 0.9
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.buyButton
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.buyButtonText
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.DummyText
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "buyButtonPrice"
  L5_2 = "#"
  L6_2 = L1_2
  L5_2 = L5_2 .. L6_2
  L4_2.text = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.getFontIngameMoney
  L5_2 = L5_2()
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.buyButtonPrice = L2_2
  L2_2 = A0_2.buyButtonPrice
  L3_2 = L2_2
  L2_2 = L2_2.setScale
  L4_2 = 0.9
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.buyButton
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A0_2.buyButtonPrice
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.buyButton
  L2_2.visible = false
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.showAfterAnimation
  L4_2 = A0_2.buyButton
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.hideWhenClosing
  L4_2 = A0_2.buyButton
  L2_2(L3_2, L4_2)
end

L0_1.initBuyButton = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.useCarboniteAds
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.ScallableButton
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "adButton"
    L3_2.returnValue = "VIEW_VIDEO"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.adButton = L1_2
    L1_2 = A0_2.adButton
    L2_2 = L1_2
    L1_2 = L1_2.setImage
    L3_2 = "BTN_GREEN_2"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = A0_2.adButton
    L1_2(L2_2, L3_2)
    L1_2 = gamelua
    L1_2 = L1_2.ui
    L1_2 = L1_2.DummyText
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "adButtonText"
    L4_2 = gamelua
    L4_2 = L4_2.getText
    L5_2 = "TEXT_CARBONITE_VIDEO_TO_MELT"
    L4_2 = L4_2(L5_2)
    L3_2.text = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.getFontBasic
    L4_2 = L4_2()
    L3_2.font = L4_2
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.adButtonText = L1_2
    L1_2 = A0_2.adButtonText
    L2_2 = L1_2
    L1_2 = L1_2.setScale
    L3_2 = 0.9
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.adButton
    L2_2 = L1_2
    L1_2 = L1_2.addChild
    L3_2 = A0_2.adButtonText
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.adButton
    L1_2.visible = false
    L1_2 = _G
    L1_2 = L1_2.table
    L1_2 = L1_2.insert
    L2_2 = A0_2.showAfterAnimation
    L3_2 = A0_2.adButton
    L1_2(L2_2, L3_2)
    L1_2 = _G
    L1_2 = L1_2.table
    L1_2 = L1_2.insert
    L2_2 = A0_2.hideWhenClosing
    L3_2 = A0_2.adButton
    L1_2(L2_2, L3_2)
  end
end

L0_1.initAdButton = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getCarboniteMeltingEndTime
  return L0_2(L1_2)
end

L0_1.getMeltEndAt = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    L1_2 = gamelua
    L1_2 = L1_2.getServerTime
    L1_2 = L1_2()
    A0_2 = L1_2
  end
  L1_2 = CarboniteAvailableAnimation
  L1_2 = L1_2.getMeltEndAt
  L1_2 = L1_2()
  L2_2 = CarboniteAvailableAnimation
  L2_2 = L2_2.getData
  L2_2 = L2_2()
  L2_2 = L2_2.carboniteReward
  if A0_2 and L1_2 then
    L3_2 = L1_2.hour
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.getTimeDifferenceInSeconds
      L4_2 = L1_2
      L5_2 = A0_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 < 0 then
        L3_2 = 0
      end
      L4_2 = L2_2.timeToMelt
      L4_2 = L4_2 - L3_2
      L5_2 = L2_2.timeToMelt
      L4_2 = L4_2 / L5_2
      L4_2 = L4_2 * 100
      return L4_2
    end
  end
  L3_2 = nil
  return L3_2
end

L0_1.getMeltProgress = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
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
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = gamelua
  L6_2 = L6_2.getButtonImageName
  L7_2 = "pauseMenuTutorialsButton"
  L8_2 = gamelua
  L8_2 = L8_2.SettingsWrapper
  L9_2 = L8_2
  L8_2 = L8_2.isDarkSide
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.getSpriteBounds
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "hintPopupButton"
  L10_2 = gamelua
  L10_2 = L10_2.SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.isDarkSide
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = A0_2.spinner
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.spinner
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = 70 * L2_2
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.title
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.title
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.4
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.title
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2 * 1.5
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.progress
  L10_2 = A0_2.title
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.progress
  L10_2 = A0_2.title
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.progress
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.backBtn
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L11_2 = L3_2 * 0.5
  L10_2 = L10_2 + L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.backBtn
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.backBtn
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.helpBtn
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L11_2 = L3_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.helpBtn
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.helpBtn
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.pipes
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L11_2 = L3_2 * 0.48
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.pipes
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.pipes
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.95 * L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.rightCloud
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L11_2 = L3_2 * 0.5
  L10_2 = L10_2 + L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.rightCloud
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.25
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.rightCloud
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.8 * L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.leftCloud
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L11_2 = L3_2 * 0.5
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.leftCloud
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.25
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.leftCloud
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.8 * L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.smoke
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L11_2 = L3_2 * 0.2
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.smoke
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.smoke
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.7 * L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.smoke_front
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L11_2 = L3_2 * 0.2
  L10_2 = L10_2 + L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.smoke_front
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.smoke_front
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.8 * L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.hole
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.hole
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.35
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.rim_back
  L10_2 = A0_2.hole
  L10_2 = L10_2.h
  L10_2 = -L10_2
  L10_2 = L10_2 * 0.2
  L9_2.y = L10_2
  L9_2 = A0_2.rim_front
  L10_2 = A0_2.hole
  L10_2 = L10_2.h
  L10_2 = L10_2 * 0.3
  L9_2.y = L10_2
  L9_2 = 0.8 * L2_2
  A0_2.holeScale = L9_2
  L9_2 = A0_2.carboniteBase
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.characterBox
  if not L9_2 then
    L9_2 = A0_2.carboniteBase
    L10_2 = A0_2.bgBox
    L10_2 = L10_2.y
    L11_2 = L4_2 * 0.7
    L10_2 = L10_2 + L11_2
    L9_2.y = L10_2
    L9_2 = A0_2.carboniteBase
    L10_2 = A0_2.carboniteBase
    L10_2 = L10_2.y
    L11_2 = L4_2 * 0.1
    L10_2 = L10_2 - L11_2
    L9_2.origY = L10_2
  end
  L9_2 = A0_2.carbonitePosition
  if L9_2 then
    L9_2 = A0_2.carbonitePosition
    if 1 <= L9_2 then
      L9_2 = A0_2.carboniteBase
      L10_2 = A0_2.bgBox
      L10_2 = L10_2.y
      L11_2 = L4_2 * 0.1
      L10_2 = L10_2 - L11_2
      L9_2.y = L10_2
    end
  end
  L9_2 = A0_2.carboniteBaseGlow
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.carboniteBaseGlow
  L10_2 = A0_2.carboniteBase
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.carboniteBaseGlow
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.bgBox
  L9_2 = L9_2.y
  L10_2 = A0_2.carboniteBase
  L10_2 = L10_2.y
  L9_2 = L9_2 - L10_2
  A0_2.carboniteBaseMoveV = L9_2
  L9_2 = A0_2.carboniteBase
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.8 * L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.carboniteMeltGlow
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.8
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.carboniteMeltGlow
  L10_2 = L3_2 * 0.01
  L9_2.x = L10_2
  L9_2 = A0_2.blurryCharacter
  L10_2 = A0_2.spinner
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.blurryCharacter
  L10_2 = A0_2.spinner
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.blurryCharacter
  L10_2 = A0_2.blurryCharacter
  L10_2 = L10_2.y
  L9_2.origY = L10_2
  L9_2 = A0_2.blurryCharacter
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = 0.8 * L2_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.carboniteBase
  L9_2 = L9_2.y
  L10_2 = A0_2.blurryCharacter
  L10_2 = L10_2.y
  L9_2 = L9_2 - L10_2
  A0_2.blurryCharacterMoveV = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.useCarboniteAds
  if L9_2 then
    L9_2 = gamelua
    L9_2 = L9_2.g_carboniteAdAvailable
    if L9_2 then
      L9_2 = A0_2.buyButton
      L10_2 = A0_2.bgBox
      L10_2 = L10_2.x
      L11_2 = L3_2 * 0.22
      L10_2 = L10_2 + L11_2
      L9_2.x = L10_2
      L9_2 = A0_2.adButton
      L10_2 = A0_2.bgBox
      L10_2 = L10_2.x
      L11_2 = L3_2 * 0.22
      L10_2 = L10_2 - L11_2
      L9_2.x = L10_2
  end
  else
    L9_2 = A0_2.buyButton
    L10_2 = A0_2.bgBox
    L10_2 = L10_2.x
    L9_2.x = L10_2
  end
  L9_2 = A0_2.meltButton
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.meltButton
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.5
  L10_2 = L10_2 + L11_2
  L11_2 = L6_2 * 1.5
  L11_2 = L11_2 * L2_2
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.meltButton
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2 * 0.85
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.buyButton
  L10_2 = A0_2.bgBox
  L10_2 = L10_2.y
  L11_2 = L4_2 * 0.5
  L10_2 = L10_2 + L11_2
  L11_2 = L6_2 * 0.5
  L11_2 = L11_2 * L2_2
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L9_2 = A0_2.buyButton
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2 * 0.85
  L9_2(L10_2, L11_2)
  L9_2 = gamelua
  L9_2 = L9_2.useCarboniteAds
  if L9_2 then
    L9_2 = A0_2.adButton
    L10_2 = A0_2.buyButton
    L10_2 = L10_2.y
    L9_2.y = L10_2
    L9_2 = A0_2.adButton
    L10_2 = L9_2
    L9_2 = L9_2.setScale
    L11_2 = L2_2 * 0.85
    L9_2(L10_2, L11_2)
  end
  L9_2 = A0_2.progress
  L10_2 = A0_2.meltButton
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.progress
  L10_2 = A0_2.meltButton
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.progress
  L10_2 = L9_2
  L9_2 = L9_2.setScale
  L11_2 = L2_2 * 0.85
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.characterBox
  if L9_2 then
    L9_2 = A0_2.characterBox
    L10_2 = A0_2.characterBox
    L10_2 = L10_2.h
    L10_2 = -L10_2
    L10_2 = L10_2 * 0.5
    L10_2 = L10_2 * L2_2
    L9_2.y = L10_2
    L9_2 = A0_2.characterBox
    L10_2 = gamelua
    L10_2 = L10_2.screenWidth
    L10_2 = L10_2 * 0.5
    L9_2.x = L10_2
  end
  L9_2 = A0_2.buyButtonText
  L10_2 = A0_2.buyButtonText
  L11_2 = L10_2
  L10_2 = L10_2.getFontLeading
  L10_2 = L10_2(L11_2)
  L10_2 = -L10_2
  L10_2 = L10_2 * 0.5
  L10_2 = L10_2 * L1_2
  L9_2.y = L10_2
  L9_2 = A0_2.buyButtonPrice
  L10_2 = A0_2.buyButtonText
  L10_2 = L10_2.y
  L11_2 = A0_2.buyButtonText
  L12_2 = L11_2
  L11_2 = L11_2.getFontLeading
  L11_2 = L11_2(L12_2)
  L12_2 = A0_2.buyButtonPrice
  L13_2 = L12_2
  L12_2 = L12_2.getFontLeading
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2 * 0.5
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 * 0.5
  L11_2 = L11_2 * L1_2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L9_2 = ui
  L9_2 = L9_2.Frame
  L9_2 = L9_2.layout
  L10_2 = A0_2
  L9_2(L10_2)
end

L0_1.layout = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CarboniteAvailableAnimation
  L1_2.isShown = true
  L1_2 = gamelua
  L1_2.g_blockMainMenuAd = true
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REWARD_VIDEO_AVAILABLE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REWARD_VIDEO_COMPLETED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REWARD_VIDEO_CANCELED_OR_FAILED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.getServerTime
  L2_2 = true
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CARBONITE_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CarboniteAvailableAnimation
  L1_2.isShown = false
  L1_2 = gamelua
  L1_2 = L1_2.releaseImages
  L2_2 = {}
  L3_2 = "ANIMATION_CARBONITE"
  L2_2[1] = L3_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REWARD_VIDEO_AVAILABLE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REWARD_VIDEO_COMPLETED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REWARD_VIDEO_CANCELED_OR_FAILED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CARBONITE_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "eggsteroid_destroyed"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "enter_atmosphere"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = "carbonite_launch_01"
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REWARD_VIDEO_AVAILABLE
  if L2_2 == L3_2 then
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_REWARD_VIDEO_CANCELED_OR_FAILED
    if L2_2 == L3_2 then
      L2_2 = CarboniteAvailableAnimation
      L2_2.isVideoShowing = false
      L2_2 = gamelua
      L2_2 = L2_2.eventManager
      L3_2 = L2_2
      L2_2 = L2_2.queueEvent
      L4_2 = {}
      L5_2 = gamelua
      L5_2 = L5_2.events
      L5_2 = L5_2.EID_CHECK_CARBONITE_MELTING
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.turnedSoundsOffForVideoAd
      if L2_2 then
        L2_2 = gamelua
        L2_2 = L2_2.setMusicVolume
        L3_2 = 1
        L2_2(L3_2)
        A0_2.turnedSoundsOffForVideoAd = false
      end
    else
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_REWARD_VIDEO_COMPLETED
      if L2_2 == L3_2 then
        L2_2 = CarboniteAvailableAnimation
        L2_2.isVideoShowing = false
        L2_2 = gamelua
        L2_2 = L2_2.eventManager
        L3_2 = L2_2
        L2_2 = L2_2.queueEvent
        L4_2 = {}
        L5_2 = gamelua
        L5_2 = L5_2.events
        L5_2 = L5_2.EID_CHECK_CARBONITE_MELTING
        L4_2.id = L5_2
        L2_2(L3_2, L4_2)
        L2_2 = gamelua
        L2_2 = L2_2.useCarboniteAds
        if L2_2 then
          L2_2 = A0_2.adButton
          if L2_2 then
            L2_2 = A0_2.adButton
            L3_2 = gamelua
            L3_2 = L3_2.g_carboniteAdAvailable
            if not L3_2 then
              L3_2 = false
            end
            L2_2.visible = L3_2
          end
        end
        L2_2 = A0_2.turnedSoundsOffForVideoAd
        if L2_2 then
          L2_2 = gamelua
          L2_2 = L2_2.setMusicVolume
          L3_2 = 1
          L2_2(L3_2)
          A0_2.turnedSoundsOffForVideoAd = false
        end
        L2_2 = gamelua
        L2_2 = L2_2.eventManager
        L3_2 = L2_2
        L2_2 = L2_2.notify
        L4_2 = {}
        L5_2 = gamelua
        L5_2 = L5_2.events
        L5_2 = L5_2.EID_POP_FRAME
        L4_2.id = L5_2
        L2_2(L3_2, L4_2)
        L2_2 = gamelua
        L2_2 = L2_2.eventManager
        L3_2 = L2_2
        L2_2 = L2_2.notify
        L4_2 = {}
        L5_2 = gamelua
        L5_2 = L5_2.events
        L5_2 = L5_2.EID_CARBONITE_SCREEN_EXITED
        L4_2.id = L5_2
        L4_2.exitMethod = "Reward video completed"
        L2_2(L3_2, L4_2)
        L2_2 = gamelua
        L2_2 = L2_2.LocalNotifications
        L2_2 = L2_2.claimReward
        L3_2 = true
        
        function L4_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = gamelua
          L0_3 = L0_3.eventManager
          L1_3 = L0_3
          L0_3 = L0_3.queueEvent
          L2_3 = {}
          L3_3 = gamelua
          L3_3 = L3_3.events
          L3_3 = L3_3.EID_SHOW_CARBONITE_REWARD
          L2_3.id = L3_3
          L2_3.screen = "Video watched"
          L0_3(L1_3, L2_3)
        end
        
        L2_2(L3_2, L4_2)
      end
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "carboniteButton"
  L4_2.returnValue = "CHARACTER_CLICKED"
  L5_2 = {}
  L5_2.birdName = "HanSoloCarbonite"
  L4_2.meta = L5_2
  L4_2.refuseDragTargetting = true
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setEnabled
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L2_2.birdName = "HanSoloCarbonite"
  L3_2 = {}
  L2_2.badges = L3_2
  return L2_2
end

L0_1.createCarboniteButton = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.carboniteBaseGlow
  L4_2 = A0_2.carboniteBaseGlow
  L4_2 = L4_2.angle
  L4_2 = L4_2 + A1_2
  L4_2 = L4_2 % 360
  L3_2.angle = L4_2
  L3_2 = gamelua
  L3_2 = L3_2.getServerTime
  L3_2 = L3_2()
  if not L3_2 then
    L4_2 = A0_2.meltButtonNoConnection
    L5_2 = L4_2
    L4_2 = L4_2.setVisible
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2.meltButtonNoConnection
    L5_2 = L4_2
    L4_2 = L4_2.setVisible
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  if L3_2 then
    L4_2 = A0_2.meltEndAt
    if L4_2 then
      L4_2 = A0_2.meltEndAt
      L4_2 = L4_2.hour
      if L4_2 then
        L4_2 = CarboniteAvailableAnimation
        L4_2 = L4_2.isVideoShowing
        if not L4_2 then
          L4_2 = CarboniteAvailableAnimation
          L4_2 = L4_2.isBuyShowing
          if not L4_2 then
            L4_2 = CarboniteAvailableAnimation
            L4_2 = L4_2.isHelpShowing
            if not L4_2 then
              L4_2 = CarboniteAvailableAnimation
              L4_2 = L4_2.isNetErrorShowing
              if not L4_2 then
                L4_2 = gamelua
                L4_2 = L4_2.getTimeDifferenceInSeconds
                L5_2 = A0_2.meltEndAt
                L6_2 = L3_2
                L4_2 = L4_2(L5_2, L6_2)
                if L4_2 and L4_2 <= 0 then
                  L6_2 = A0_2
                  L5_2 = A0_2.close
                  L5_2(L6_2)
                  L5_2 = gamelua
                  L5_2 = L5_2.LocalNotifications
                  L5_2 = L5_2.claimReward
                  L6_2 = false
                  
                  function L7_2()
                    local L0_3, L1_3, L2_3, L3_3
                    L0_3 = gamelua
                    L0_3 = L0_3.eventManager
                    L1_3 = L0_3
                    L0_3 = L0_3.queueEvent
                    L2_3 = {}
                    L3_3 = gamelua
                    L3_3 = L3_3.events
                    L3_3 = L3_3.EID_SHOW_CARBONITE_REWARD
                    L2_3.id = L3_3
                    L2_3.screen = "Time has passed"
                    L0_3(L1_3, L2_3)
                  end
                  
                  L5_2(L6_2, L7_2)
                end
              end
            end
          end
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.updateMeltingAnimation
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.updateSpinnerAnimation
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.updateTimeAndPrice
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.updateCarbonitePosition
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.updateCarboniteClosing
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.update = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.allInvisible
  if L3_2 then
    return
  end
  L3_2 = CarboniteAvailableAnimation
  L3_2 = L3_2.getMeltTimeString
  L4_2 = serverTime
  L5_2 = A0_2.meltEndAt
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2.carboniteRedLight
    L4_2 = L4_2.timer
    if not L4_2 then
      L4_2 = A0_2.carboniteRedLight
      L4_2.timer = 0
    end
    L4_2 = A0_2.carboniteGreenLight
    L4_2 = L4_2.timer
    if not L4_2 then
      L4_2 = A0_2.carboniteGreenLight
      L4_2.timer = 0
    end
    L4_2 = A0_2.carboniteRedLight
    L5_2 = A0_2.carboniteRedLight
    L5_2 = L5_2.timer
    L5_2 = L5_2 + A1_2
    L4_2.timer = L5_2
    L4_2 = A0_2.carboniteGreenLight
    L5_2 = A0_2.carboniteGreenLight
    L5_2 = L5_2.timer
    L5_2 = L5_2 + A1_2
    L4_2.timer = L5_2
    L4_2 = A0_2.carboniteRedLight
    L4_2 = L4_2.timer
    if 0.4 < L4_2 then
      L4_2 = A0_2.carboniteRedLight
      L5_2 = A0_2.carboniteRedLight
      L5_2 = L5_2.timer
      L5_2 = L5_2 - 0.4
      L4_2.timer = L5_2
      L4_2 = A0_2.carboniteRedLight
      L5_2 = A0_2.carboniteRedLight
      L5_2 = L5_2.visible
      L5_2 = not L5_2
      L4_2.visible = L5_2
    end
    L4_2 = A0_2.carboniteGreenLight
    L4_2 = L4_2.timer
    if 0.8 < L4_2 then
      L4_2 = A0_2.carboniteGreenLight
      L5_2 = A0_2.carboniteGreenLight
      L5_2 = L5_2.timer
      L5_2 = L5_2 - 0.4
      L4_2.timer = L5_2
      L4_2 = A0_2.carboniteGreenLight
      L5_2 = A0_2.carboniteGreenLight
      L5_2 = L5_2.visible
      L5_2 = not L5_2
      L4_2.visible = L5_2
    end
    L4_2 = A0_2.dripTimer
    if not L4_2 then
      A0_2.dripTimer = 0
    end
    L4_2 = A0_2.dripTimer
    if L4_2 then
      L4_2 = CarboniteAvailableAnimation
      L4_2 = L4_2.isBuyShowing
      if not L4_2 then
        L4_2 = CarboniteAvailableAnimation
        L4_2 = L4_2.isHelpShowing
        if not L4_2 then
          L4_2 = CarboniteAvailableAnimation
          L4_2 = L4_2.isNetErrorShowing
          if not L4_2 then
            L4_2 = A0_2.dripTimer
            L4_2 = L4_2 + A1_2
            A0_2.dripTimer = L4_2
            L4_2 = A0_2.dripTimer
            if 0.4 < L4_2 then
              A0_2.dripTimer = 0
              L4_2 = gamelua
              L4_2 = L4_2.getUIScale
              L4_2 = L4_2()
              L5_2 = A0_2.carboniteBase
              L5_2 = L5_2.w
              L5_2 = -L5_2
              L5_2 = L5_2 * 0.2
              L6_2 = A0_2.carboniteBase
              L6_2 = L6_2.scaleX
              L5_2 = L5_2 * L6_2
              L6_2 = A0_2.carboniteBase
              L6_2 = L6_2.w
              L7_2 = A0_2.carboniteBase
              L7_2 = L7_2.scaleX
              L6_2 = L6_2 * L7_2
              L7_2 = _G
              L7_2 = L7_2.math
              L7_2 = L7_2.random
              L7_2 = L7_2()
              L6_2 = L6_2 * L7_2
              L6_2 = L6_2 * 0.6
              L5_2 = L5_2 + L6_2
              L6_2 = A0_2.carboniteBase
              L6_2 = L6_2.h
              L6_2 = -L6_2
              L6_2 = L6_2 * 0.35
              L7_2 = A0_2.carboniteBase
              L7_2 = L7_2.scaleY
              L6_2 = L6_2 * L7_2
              L7_2 = A0_2.carboniteBase
              L7_2 = L7_2.h
              L8_2 = A0_2.carboniteBase
              L8_2 = L8_2.scaleY
              L7_2 = L7_2 * L8_2
              L8_2 = _G
              L8_2 = L8_2.math
              L8_2 = L8_2.random
              L8_2 = L8_2()
              L7_2 = L7_2 * L8_2
              L7_2 = L7_2 * 0.7
              L6_2 = L6_2 + L7_2
              L7_2 = gamelua
              L7_2 = L7_2.putMenuParticles
              L8_2 = {}
              L9_2 = A0_2.carboniteBase
              L9_2 = L9_2.x
              L9_2 = L9_2 + L5_2
              L8_2.x = L9_2
              L9_2 = A0_2.carboniteBase
              L9_2 = L9_2.y
              L9_2 = L9_2 + L6_2
              L8_2.y = L9_2
              L8_2.particles = "carboniteMeltDrip"
              L7_2(L8_2)
            end
          end
        end
      end
    end
    L4_2 = A0_2.carboniteMeltGlow
    L4_2.visible = true
    L4_2 = A0_2.carboniteMeltGlow
    L4_2 = L4_2.visible
    if L4_2 then
      L4_2 = A0_2.carboniteMeltGlow
      L5_2 = A0_2.carboniteMeltGlow
      L5_2 = L5_2.alpha
      L6_2 = gamelua
      L6_2 = L6_2.getDeltaTimeMultiplier
      L6_2 = L6_2()
      L6_2 = A1_2 / L6_2
      L7_2 = A0_2.carboniteMeltGlow
      L7_2 = L7_2.direction
      L6_2 = L6_2 * L7_2
      L6_2 = L6_2 * 0.25
      L5_2 = L5_2 + L6_2
      L4_2.alpha = L5_2
      L4_2 = A0_2.carboniteMeltGlow
      L4_2 = L4_2.alpha
      if 0.25 <= L4_2 then
        L4_2 = A0_2.carboniteMeltGlow
        L4_2.alpha = 0.25
        L4_2 = A0_2.carboniteMeltGlow
        L4_2.direction = -1
      else
        L4_2 = A0_2.carboniteMeltGlow
        L4_2 = L4_2.alpha
        if L4_2 <= 0 then
          L4_2 = A0_2.carboniteMeltGlow
          L4_2.alpha = 0
          L4_2 = A0_2.carboniteMeltGlow
          L4_2.direction = 1
        end
      end
    end
  end
end

L0_1.updateMeltingAnimation = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.finishSpinnerAnimation
  if not L3_2 then
    L3_2 = A0_2.spinner
    L4_2 = L3_2
    L3_2 = L3_2.isFullSpeed
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2.blurryCharacterPosition
      if L3_2 < 1 then
        L3_2 = A0_2.blurryCharacterPosition
        if L3_2 == 0 then
          L3_2 = gamelua
          L3_2 = L3_2.playAudio
          L4_2 = "eggsteroid_destroyed"
          L3_2(L4_2)
          L3_2 = gamelua
          L3_2 = L3_2.playAudio
          L4_2 = "enter_atmosphere"
          L3_2(L4_2)
        end
        L3_2 = A0_2.blurryCharacter
        L4_2 = L3_2
        L3_2 = L3_2.setVisible
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.blurryCharacter
        L4_2 = A0_2.blurryCharacter
        L4_2 = L4_2.origY
        L5_2 = gamelua
        L5_2 = L5_2.tweenEaseCubicIn
        L6_2 = A0_2.blurryCharacterPosition
        L7_2 = 0
        L8_2 = 1
        L9_2 = 1
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L6_2 = A0_2.blurryCharacterMoveV
        L5_2 = L5_2 * L6_2
        L4_2 = L4_2 + L5_2
        L3_2.y = L4_2
        L3_2 = A0_2.blurryCharacterPosition
        L3_2 = L3_2 + A1_2
        A0_2.blurryCharacterPosition = L3_2
        L3_2 = A0_2.spinner
        L4_2 = L3_2
        L3_2 = L3_2.setTransparrency
        L5_2 = A0_2.blurryCharacterPosition
        L5_2 = 1 - L5_2
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = A0_2.blurryCharacterPosition
      if 1 <= L3_2 then
        A0_2.carbonitePosition = 0
        A0_2.finishSpinnerAnimation = true
        L4_2 = A0_2
        L3_2 = A0_2.removeChild
        L5_2 = A0_2.spinner
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.blurryCharacter
        L4_2 = L3_2
        L3_2 = L3_2.setVisible
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = gamelua
        L3_2 = L3_2.SettingsWrapper
        L4_2 = L3_2
        L3_2 = L3_2.setBirdInCarbonite
        L5_2 = true
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L0_1.updateSpinnerAnimation = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.animateTime
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.tweenEaseCubicOut
    L5_2 = CarboniteMeltAnimation
    L5_2 = L5_2.boxTransition
    L6_2 = A0_2.animateTime
    L7_2 = 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = 0
    L7_2 = 1
    L8_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = A0_2.characterBox
    L6_2 = A0_2.characterBox
    L6_2 = L6_2.h
    L6_2 = L6_2 * 0.5
    L6_2 = L6_2 * L3_2
    L6_2 = -L6_2
    L7_2 = A0_2.characterBox
    L7_2 = L7_2.h
    L7_2 = L4_2 * L7_2
    L7_2 = L7_2 * L3_2
    L6_2 = L6_2 + L7_2
    L5_2.y = L6_2
    L5_2 = A0_2.animateTime
    L5_2 = L5_2 + A1_2
    A0_2.animateTime = L5_2
    L5_2 = A0_2.animationDone
    if L5_2 and L4_2 == 0 then
      L6_2 = A0_2
      L5_2 = A0_2.close
      L5_2(L6_2)
      return
    end
    L5_2 = A0_2.buttonAnimationCompleted
    if not L5_2 and L4_2 == 1 then
      L5_2 = A0_2.moveV
      if L5_2 == nil then
        L5_2 = A0_2.characterBox
        L6_2 = L5_2
        L5_2 = L5_2.getAnimateToElement
        L5_2 = L5_2(L6_2)
        A0_2.animateTo = L5_2
        L5_2 = {}
        L6_2 = A0_2.carboniteBase
        L6_2 = L6_2.x
        L7_2 = A0_2.animateTo
        L7_2 = L7_2.x
        L6_2 = L6_2 - L7_2
        L7_2 = A0_2.carboniteBase
        L7_2 = L7_2.y
        L8_2 = A0_2.animateTo
        L8_2 = L8_2.y
        L7_2 = L7_2 - L8_2
        L5_2[1] = L6_2
        L5_2[2] = L7_2
        A0_2.moveV = L5_2
      end
      L6_2 = A0_2
      L5_2 = A0_2.updateCarboniteToMenuAnimation
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end

L0_1.updateCarboniteClosing = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.moveV
  if L4_2 then
    L4_2 = A0_2.position
    if not L4_2 then
      A0_2.position = 0
      L4_2 = A0_2.carboniteBase
      L4_2 = L4_2.x
      A0_2.birdReceivedOrigX = L4_2
      L4_2 = A0_2.carboniteBase
      L4_2 = L4_2.y
      A0_2.birdReceivedOrigY = L4_2
    end
    L4_2 = A1_2 * 2
    L5_2 = A0_2.position
    L5_2 = L5_2 + L4_2
    A0_2.position = L5_2
    L5_2 = A0_2.position
    if 1 <= L5_2 then
      A0_2.moveV = nil
      A0_2.position = nil
      L5_2 = A0_2.carboniteBase
      L6_2 = A0_2.animateTo
      L6_2 = L6_2.x
      L5_2.x = L6_2
      L5_2 = A0_2.carboniteBase
      L6_2 = A0_2.animateTo
      L6_2 = L6_2.y
      L5_2.y = L6_2
      A0_2.buttonAnimationCompleted = true
      A0_2.animationDone = true
      L6_2 = A0_2
      L5_2 = A0_2.removeChild
      L7_2 = A0_2.carboniteBase
      L5_2(L6_2, L7_2)
      L5_2 = A0_2.characterBox
      L6_2 = L5_2
      L5_2 = L5_2.placeReward
      L8_2 = A0_2
      L7_2 = A0_2.createCarboniteButton
      L9_2 = gamelua
      L9_2 = L9_2.getButtonImageName
      L10_2 = "carboniteButton"
      L11_2 = gamelua
      L11_2 = L11_2.SettingsWrapper
      L12_2 = L11_2
      L11_2 = L11_2.isDarkSide
      L11_2, L12_2 = L11_2(L12_2)
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      return
    end
    L5_2 = L3_2 * 0.8
    L6_2 = A0_2.position
    if L6_2 < 0.6 then
      L6_2 = A0_2.position
      if L6_2 then
        goto lbl_61
      end
    end
    L6_2 = 0.6
    ::lbl_61::
    L6_2 = 1 - L6_2
    L5_2 = L5_2 * L6_2
    L6_2 = A0_2.moveV
    L6_2 = L6_2[1]
    L7_2 = A0_2.position
    L6_2 = L6_2 * L7_2
    L7_2 = A0_2.moveV
    L7_2 = L7_2[2]
    L8_2 = A0_2.position
    L7_2 = L7_2 * L8_2
    L8_2 = A0_2.carboniteBase
    L9_2 = A0_2.birdReceivedOrigX
    L9_2 = L9_2 - L6_2
    L8_2.x = L9_2
    L8_2 = A0_2.carboniteBase
    L9_2 = A0_2.birdReceivedOrigY
    L9_2 = L9_2 - L7_2
    L8_2.y = L9_2
    L8_2 = A0_2.carboniteBase
    L9_2 = L8_2
    L8_2 = L8_2.setScale
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
  end
end

L0_1.updateCarboniteToMenuAnimation = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.carboniteAnimEnded
  if not L3_2 then
    L3_2 = A0_2.carbonitePosition
    if L3_2 then
      L3_2 = A0_2.carbonitePosition
      if L3_2 == 0 then
        L3_2 = gamelua
        L3_2 = L3_2.playAudio
        L4_2 = "carbonite_launch_01"
        L3_2(L4_2)
      end
      L3_2 = A0_2.bgBox
      L4_2 = L3_2
      L3_2 = L3_2.getSize
      L3_2, L4_2 = L3_2(L4_2)
      L5_2 = A0_2.carbonitePosition
      if L5_2 < 1 then
        L5_2 = A0_2.carboniteBase
        L6_2 = A0_2.carboniteBase
        L6_2 = L6_2.origY
        L7_2 = gamelua
        L7_2 = L7_2.tweenEaseCubicOut
        L8_2 = A0_2.carbonitePosition
        L9_2 = 0
        L10_2 = 1
        L11_2 = 1
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L8_2 = A0_2.carboniteBaseMoveV
        L7_2 = L7_2 * L8_2
        L6_2 = L6_2 + L7_2
        L5_2.y = L6_2
        L5_2 = A0_2.carbonitePosition
        L5_2 = L5_2 + A1_2
        A0_2.carbonitePosition = L5_2
      else
        A0_2.carboniteAnimEnded = true
        L6_2 = A0_2
        L5_2 = A0_2.showHiddenElement
        L5_2(L6_2)
        L5_2 = A0_2.carboniteBase
        L6_2 = A0_2.bgBox
        L6_2 = L6_2.y
        L7_2 = L4_2 * 0.1
        L6_2 = L6_2 - L7_2
        L5_2.y = L6_2
      end
    end
  end
end

L0_1.updateCarbonitePosition = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2.allInvisible
  if L4_2 then
    return
  end
  L4_2 = CarboniteAvailableAnimation
  L4_2 = L4_2.getMeltTimeString
  L5_2 = A3_2
  L6_2 = A0_2.meltEndAt
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = A0_2.meltButtonText
    L6_2 = L5_2
    L5_2 = L5_2.setText
    L7_2 = ""
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.meltButton
    L6_2 = L5_2
    L5_2 = L5_2.setVisible
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.progressText
    L6_2 = L5_2
    L5_2 = L5_2.setText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.progress
    L5_2.visible = true
    L5_2 = A0_2.progress
    L6_2 = L5_2
    L5_2 = L5_2.setValue
    L7_2 = CarboniteAvailableAnimation
    L7_2 = L7_2.getMeltProgress
    L8_2 = A3_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L5_2 = A0_2.meltButtonText
    L6_2 = L5_2
    L5_2 = L5_2.setText
    L7_2 = gamelua
    L7_2 = L7_2.getText
    L8_2 = "TEXT_CARBONITE_WAIT_TO_MELT"
    L9_2 = {}
    L10_2 = "$TIME"
    L12_2 = A0_2
    L11_2 = A0_2.getSecondsToString
    L13_2 = A0_2.meltTime
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = A0_2.meltButton
    L6_2 = L5_2
    L5_2 = L5_2.setVisible
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.progressText
    L6_2 = L5_2
    L5_2 = L5_2.setText
    L7_2 = ""
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.progress
    L5_2.visible = false
    L5_2 = A0_2.progress
    L6_2 = L5_2
    L5_2 = L5_2.setValue
    L7_2 = 0
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2.getMeltPrice
  L7_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and 0 < L5_2 then
    A0_2.currentMeltPrice = L5_2
  else
    L6_2 = A0_2.meltPrice
    A0_2.currentMeltPrice = L6_2
  end
  L6_2 = A0_2.buyButtonPrice
  L7_2 = L6_2
  L6_2 = L6_2.setText
  L8_2 = "#"
  L9_2 = _G
  L9_2 = L9_2.tostring
  L10_2 = A0_2.currentMeltPrice
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 .. L9_2
  L6_2(L7_2, L8_2)
end

L0_1.updateTimeAndPrice = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
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
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.bgBox
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.bgBox
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.setClipRect
  L5_2 = A0_2.bgBox
  L5_2 = L5_2.x
  L6_2 = A0_2.PROMPT_BG_BOX_WIDTH
  L6_2 = L6_2 * 0.5
  L6_2 = L6_2 * L3_2
  L5_2 = L5_2 - L6_2
  L6_2 = A0_2.bgBox
  L7_2 = L6_2
  L6_2 = L6_2.getLeftBlockW
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 + 5
  L6_2 = A0_2.bgBox
  L6_2 = L6_2.y
  L7_2 = A0_2.PROMPT_BG_BOX_HEIGHT
  L7_2 = L7_2 * 0.5
  L7_2 = L7_2 * L3_2
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.bgBox
  L8_2 = L7_2
  L7_2 = L7_2.getTopBlockH
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 5
  L7_2 = A0_2.PROMPT_BG_BOX_WIDTH
  L7_2 = L7_2 * L3_2
  L8_2 = A0_2.bgBox
  L9_2 = L8_2
  L8_2 = L8_2.getRightBlockW
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 - 10
  L8_2 = A0_2.PROMPT_BG_BOX_HEIGHT
  L8_2 = L8_2 * L3_2
  L9_2 = A0_2.bgBox
  L10_2 = L9_2
  L9_2 = L9_2.getBottomBlockH
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 * 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 10
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.rightCloud
  L5_2 = L4_2
  L4_2 = L4_2.draw
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.leftCloud
  L5_2 = L4_2
  L4_2 = L4_2.draw
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.smoke
  L5_2 = L4_2
  L4_2 = L4_2.draw
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.smoke_front
  L5_2 = L4_2
  L4_2 = L4_2.draw
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.pipes
  L5_2 = L4_2
  L4_2 = L4_2.draw
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.holeScale
  L5_2 = A0_2.holeScale
  L6_2 = gamelua
  L6_2 = L6_2.setRenderState
  L7_2 = A0_2.hole
  L7_2 = L7_2.x
  L7_2 = A1_2 + L7_2
  L7_2 = L7_2 / L4_2
  L8_2 = A0_2.hole
  L8_2 = L8_2.y
  L8_2 = A2_2 + L8_2
  L8_2 = L8_2 / L5_2
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = 0
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.w
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.floor
  L14_2 = A0_2.h
  L13_2 = L13_2(L14_2)
  L14_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = A0_2.rim_back
  L6_2 = L6_2.visible
  if L6_2 then
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.drawSprite
    L7_2 = ""
    L8_2 = A0_2.rim_back
    L8_2 = L8_2.image
    L9_2 = A0_2.rim_back
    L9_2 = L9_2.x
    L10_2 = A0_2.rim_back
    L10_2 = L10_2.y
    L11_2 = "HPIVOT"
    L12_2 = "VPIVOT"
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.floor
    L14_2 = A0_2.rim_back
    L14_2 = L14_2.w
    L13_2 = L13_2(L14_2)
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.floor
    L15_2 = A0_2.rim_back
    L15_2 = L15_2.h
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  end
  L6_2 = A0_2.hole
  L6_2 = L6_2.visible
  if L6_2 then
    L6_2 = _G
    L6_2 = L6_2.res
    L6_2 = L6_2.drawSprite
    L7_2 = ""
    L8_2 = A0_2.hole
    L8_2 = L8_2.image
    L9_2 = 0
    L10_2 = 0
    L11_2 = "HPIVOT"
    L12_2 = "VPIVOT"
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.floor
    L14_2 = A0_2.hole
    L14_2 = L14_2.w
    L13_2 = L13_2(L14_2)
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.floor
    L15_2 = A0_2.hole
    L15_2 = L15_2.h
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  end
  L6_2 = A0_2.carboniteBaseGlow
  L6_2 = L6_2.visible
  if L6_2 then
    L6_2 = A0_2.carboniteBaseGlow
    L7_2 = L6_2
    L6_2 = L6_2.draw
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getClipRect
  L6_2, L7_2, L8_2, L9_2 = L6_2()
  L10_2 = A0_2.hole
  L10_2 = L10_2.x
  L10_2 = A1_2 + L10_2
  L11_2 = A0_2.rim_front
  L11_2 = L11_2.x
  L11_2 = L11_2 - 170
  L11_2 = L11_2 * L3_2
  L10_2 = L10_2 + L11_2
  L11_2 = A0_2.hole
  L11_2 = L11_2.y
  L11_2 = A2_2 + L11_2
  L12_2 = A0_2.rim_front
  L12_2 = L12_2.y
  L12_2 = L12_2 - 400
  L12_2 = L12_2 * L3_2
  L11_2 = L11_2 + L12_2
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.setClipRect
  L13_2 = L10_2
  L14_2 = L11_2
  L15_2 = 340 * L3_2
  L16_2 = 400 * L3_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = A0_2.carboniteBase
  L13_2 = L12_2
  L12_2 = L12_2.draw
  L14_2 = A1_2
  L15_2 = A2_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = A0_2.blurryCharacter
  L13_2 = L12_2
  L12_2 = L12_2.draw
  L14_2 = A1_2
  L15_2 = A2_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.setClipRect
  L13_2 = L6_2
  L14_2 = L7_2
  L15_2 = L8_2
  L16_2 = L9_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = gamelua
  L12_2 = L12_2.setRenderState
  L13_2 = A0_2.hole
  L13_2 = L13_2.x
  L13_2 = A1_2 + L13_2
  L13_2 = L13_2 / L4_2
  L14_2 = A0_2.hole
  L14_2 = L14_2.y
  L14_2 = A2_2 + L14_2
  L14_2 = L14_2 / L5_2
  L15_2 = L4_2
  L16_2 = L5_2
  L17_2 = 0
  L18_2 = _G
  L18_2 = L18_2.math
  L18_2 = L18_2.floor
  L19_2 = A0_2.w
  L18_2 = L18_2(L19_2)
  L19_2 = _G
  L19_2 = L19_2.math
  L19_2 = L19_2.floor
  L20_2 = A0_2.h
  L19_2 = L19_2(L20_2)
  L20_2 = 1
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A0_2.rim_front
  L12_2 = L12_2.visible
  if L12_2 then
    L12_2 = _G
    L12_2 = L12_2.res
    L12_2 = L12_2.drawSprite
    L13_2 = ""
    L14_2 = A0_2.rim_front
    L14_2 = L14_2.image
    L15_2 = A0_2.rim_front
    L15_2 = L15_2.x
    L16_2 = A0_2.rim_front
    L16_2 = L16_2.y
    L17_2 = "HPIVOT"
    L18_2 = "VPIVOT"
    L19_2 = _G
    L19_2 = L19_2.math
    L19_2 = L19_2.floor
    L20_2 = A0_2.rim_front
    L20_2 = L20_2.w
    L19_2 = L19_2(L20_2)
    L20_2 = _G
    L20_2 = L20_2.math
    L20_2 = L20_2.floor
    L21_2 = A0_2.rim_front
    L21_2 = L21_2.h
    L20_2, L21_2 = L20_2(L21_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  end
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.setClipRect
  L13_2 = 0
  L14_2 = 0
  L15_2 = gamelua
  L15_2 = L15_2.screenWidth
  L16_2 = gamelua
  L16_2 = L16_2.screenHeight
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = ui
  L12_2 = L12_2.Frame
  L12_2 = L12_2.draw
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = A2_2
  L12_2(L13_2, L14_2, L15_2)
end

L0_1.draw = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.random
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L1_2 >= L2_2 then
      L8_2 = L7_2.probability
      L8_2 = L2_2 + L8_2
      if L1_2 < L8_2 then
        return L7_2
      end
    end
    L8_2 = L7_2.probability
    L2_2 = L2_2 + L8_2
  end
  L3_2 = #A0_2
  L3_2 = A0_2[L3_2]
  return L3_2
end

L0_1.getRandomReward = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = CarboniteAvailableAnimation
  L1_2 = L1_2.getData
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getMeltRewardIndex
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2.carboniteReward
  L3_2 = L3_2.meltReward
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = L3_2[L2_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.insert
    L10_2 = L0_2
    L11_2 = gamelua
    L11_2 = L11_2.deepCopy
    L12_2 = L8_2
    L11_2, L12_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2)
  end
  L4_2 = gamelua
  L4_2 = L4_2.SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.getBuyRewardIndex
  L4_2 = L4_2(L5_2)
  L2_2 = L4_2
  L4_2 = L1_2.carboniteReward
  L3_2 = L4_2.buyReward
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = L3_2[L2_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.insert
    L10_2 = L0_2
    L11_2 = gamelua
    L11_2 = L11_2.deepCopy
    L12_2 = L8_2
    L11_2, L12_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2)
  end
  return L0_2
end

L0_1.getNextPossibleRewards = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = CarboniteAvailableAnimation
  L1_2 = L1_2.getData
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getMeltRewardIndex
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2.carboniteReward
  L3_2 = L3_2.meltReward
  if A0_2 then
    L4_2 = L1_2.carboniteReward
    L3_2 = L4_2.buyReward
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.getBuyRewardIndex
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  L4_2 = L3_2[L2_2]
  L5_2 = {}
  L6_2 = 0
  L7_2 = _G
  L7_2 = L7_2.ipairs
  L8_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = gamelua
    L12_2 = L12_2.deepCopy
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = gamelua
    L13_2 = L13_2.isCharacterDarkSide
    L14_2 = L12_2.character
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L13_2 = gamelua
      L13_2 = L13_2.SettingsWrapper
      L14_2 = L13_2
      L13_2 = L13_2.isDarkSideOpen
      L13_2 = L13_2(L14_2)
      if not L13_2 then
        goto lbl_51
      end
    end
    L13_2 = _G
    L13_2 = L13_2.table
    L13_2 = L13_2.insert
    L14_2 = L5_2
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L13_2 = L12_2.probability
    L6_2 = L6_2 + L13_2
    ::lbl_51::
  end
  L7_2 = _G
  L7_2 = L7_2.ipairs
  L8_2 = L5_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.probability
    L12_2 = L12_2 / L6_2
    L11_2.probability = L12_2
  end
  L7_2 = CarboniteAvailableAnimation
  L7_2 = L7_2.getRandomReward
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L2_2 = L2_2 + 1
  L8_2 = #L3_2
  if L2_2 > L8_2 then
    L2_2 = 1
  end
  if A0_2 then
    L8_2 = gamelua
    L8_2 = L8_2.SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.setBuyRewardIndex
    L10_2 = L2_2
    L8_2(L9_2, L10_2)
  else
    L8_2 = gamelua
    L8_2 = L8_2.SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.setMeltRewardIndex
    L10_2 = L2_2
    L8_2(L9_2, L10_2)
  end
  return L7_2
end

L0_1.getReward = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1()
  local L0_2, L1_2
  L0_2 = CarboniteAvailableAnimation
  L0_2 = L0_2.cloudData
  if L0_2 then
    L0_2 = CarboniteAvailableAnimation
    L0_2 = L0_2.cloudData
    L0_2 = L0_2.data
    return L0_2
  else
    L0_2 = CarboniteAvailableAnimation
    L0_2 = L0_2.cachedData
    if L0_2 then
      L0_2 = CarboniteAvailableAnimation
      L0_2 = L0_2.cachedData
      L0_2 = L0_2.data
      return L0_2
    else
      L0_2 = CarboniteAvailableAnimation
      L0_2 = L0_2.packageData
      L0_2 = L0_2.data
      return L0_2
    end
  end
end

L0_1.getData = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE" then
    L7_2 = gamelua
    L7_2 = L7_2.clearParticlesWithTagNative
    L8_2 = "MENU"
    L7_2(L8_2)
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_CARBONITE_SCREEN_EXITED
    L9_2.id = L10_2
    L9_2.exitMethod = "Close button"
    L7_2(L8_2, L9_2)
    L7_2 = gamelua
    L7_2 = L7_2.SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.getCarboniteMeltingEndTime
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L7_2.hour
      if L8_2 then
        goto lbl_77
      end
    end
    L8_2 = gamelua
    L8_2 = L8_2.getServerTime
    L8_2 = L8_2()
    L9_2 = gamelua
    L9_2 = L9_2.getCurrentTime
    L9_2 = L9_2()
    if L8_2 and L9_2 then
      L10_2 = gamelua
      L10_2 = L10_2.native_addSecondsToTime
      L11_2 = L9_2
      L12_2 = A0_2.meltTime
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = gamelua
      L11_2 = L11_2.roundTimeToDayRange
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = gamelua
      L12_2 = L12_2.getTimeDifferenceInSeconds
      L13_2 = L11_2
      L14_2 = L9_2
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = gamelua
      L13_2 = L13_2.LocalNotifications
      L13_2 = L13_2.addLocalNotification
      L14_2 = "CARBONITE_MELTED"
      L15_2 = L12_2
      L16_2 = A0_2.rewardParameters
      L16_2 = L16_2.notificationText
      L13_2(L14_2, L15_2, L16_2)
      L13_2 = gamelua
      L13_2 = L13_2.native_addSecondsToTime
      L14_2 = L8_2
      L15_2 = A0_2.meltTime
      L13_2 = L13_2(L14_2, L15_2)
      A0_2.meltEndAt = L13_2
      L13_2 = gamelua
      L13_2 = L13_2.SettingsWrapper
      L14_2 = L13_2
      L13_2 = L13_2.setCarboniteMeltingEndTime
      L15_2 = A0_2.meltEndAt
      L13_2(L14_2, L15_2)
    end
    ::lbl_77::
    L9_2 = A0_2
    L8_2 = A0_2.close
    L8_2(L9_2)
  elseif L4_2 == "VIEW_VIDEO" then
    L7_2 = gamelua
    L7_2 = L7_2.adSystem
    L8_2 = L7_2
    L7_2 = L7_2.showRewardVideo
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = CarboniteAvailableAnimation
      L8_2.isVideoShowing = true
      L8_2 = gamelua
      L8_2 = L8_2.SettingsWrapper
      L9_2 = L8_2
      L8_2 = L8_2.isAudioEnabled
      L8_2 = L8_2(L9_2)
      if L8_2 then
        A0_2.turnedSoundsOffForVideoAd = true
        L8_2 = gamelua
        L8_2 = L8_2.setMusicVolume
        L9_2 = 0
        L8_2(L9_2)
      end
    else
      L8_2 = gamelua
      L8_2.g_carboniteAdAvailable = false
      L8_2 = A0_2.adButton
      L9_2 = gamelua
      L9_2 = L9_2.g_carboniteAdAvailable
      if not L9_2 then
        L9_2 = false
      end
      L8_2.visible = L9_2
    end
  elseif L4_2 == "MELT" then
    L7_2 = A0_2.backBtn
    L8_2 = L7_2
    L7_2 = L7_2.setVisible
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = gamelua
    L7_2 = L7_2.getServerTime
    L7_2 = L7_2()
    L8_2 = gamelua
    L8_2 = L8_2.getCurrentTime
    L8_2 = L8_2()
    if L7_2 and L8_2 then
      L9_2 = gamelua
      L9_2 = L9_2.native_addSecondsToTime
      L10_2 = L8_2
      L11_2 = A0_2.meltTime
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = gamelua
      L10_2 = L10_2.roundTimeToDayRange
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = gamelua
      L11_2 = L11_2.getTimeDifferenceInSeconds
      L12_2 = L10_2
      L13_2 = L8_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = gamelua
      L12_2 = L12_2.LocalNotifications
      L12_2 = L12_2.addLocalNotification
      L13_2 = "CARBONITE_MELTED"
      L14_2 = L11_2
      L15_2 = A0_2.rewardParameters
      L15_2 = L15_2.notificationText
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = gamelua
      L12_2 = L12_2.native_addSecondsToTime
      L13_2 = L7_2
      L14_2 = A0_2.meltTime
      L12_2 = L12_2(L13_2, L14_2)
      A0_2.meltEndAt = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.SettingsWrapper
      L13_2 = L12_2
      L12_2 = L12_2.setCarboniteMeltingEndTime
      L14_2 = A0_2.meltEndAt
      L12_2(L13_2, L14_2)
      L12_2 = A0_2.meltButton
      L13_2 = L12_2
      L12_2 = L12_2.setEnabled
      L14_2 = false
      L12_2(L13_2, L14_2)
    else
      L9_2 = ui
      L9_2 = L9_2.ConfirmPrompt
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      
      function L12_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = gamelua
        L0_3 = L0_3.eventManager
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = {}
        L3_3 = gamelua
        L3_3 = L3_3.events
        L3_3 = L3_3.EID_POP_FRAME
        L2_3.id = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = CarboniteAvailableAnimation
        L0_3.isNetErrorShowing = false
      end
      
      L11_2.returnValue = L12_2
      L11_2.hideCloseButton = true
      L11_2.closeOnCancelKeyHandler = true
      L11_2.title = ""
      L12_2 = gamelua
      L12_2 = L12_2.getText
      L13_2 = "TEXT_COIN_PAGE_GENERIC_ERROR"
      L12_2 = L12_2(L13_2)
      L11_2.content = L12_2
      
      function L12_2()
        local L0_3, L1_3
        L0_3 = CarboniteAvailableAnimation
        L0_3.isNetErrorShowing = false
      end
      
      L11_2.closeCallback = L12_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = CarboniteAvailableAnimation
      L10_2.isNetErrorShowing = true
      L10_2 = gamelua
      L10_2 = L10_2.eventManager
      L11_2 = L10_2
      L10_2 = L10_2.notify
      L12_2 = {}
      L13_2 = gamelua
      L13_2 = L13_2.events
      L13_2 = L13_2.EID_PUSH_FRAME
      L12_2.id = L13_2
      L12_2.target = L9_2
      L10_2(L11_2, L12_2)
      L10_2 = gamelua
      L10_2 = L10_2.getServerTime
      L11_2 = true
      L10_2(L11_2)
    end
  elseif L4_2 == "BUY" then
    L7_2 = CarboniteAvailableAnimation
    L7_2 = L7_2.isVideoShowing
    if L7_2 then
      return
    end
    L7_2 = gamelua
    L7_2 = L7_2.clearParticlesWithTagNative
    L8_2 = "MENU"
    L7_2(L8_2)
    L7_2 = A0_2.currentMeltPrice
    
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L0_3 = gamelua
      L0_3 = L0_3.SettingsWrapper
      L1_3 = L0_3
      L0_3 = L0_3.getAmount
      L2_3 = "coins"
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = L7_2
      if L0_3 < L1_3 then
        L1_3 = gamelua
        L1_3 = L1_3.eventManager
        L2_3 = L1_3
        L1_3 = L1_3.notify
        L3_3 = {}
        L4_3 = gamelua
        L4_3 = L4_3.events
        L4_3 = L4_3.EID_PUSH_FRAME
        L3_3.id = L4_3
        L4_3 = ui
        L4_3 = L4_3.PurchaseRedirectDialog
        L5_3 = L4_3
        L4_3 = L4_3.new
        L6_3 = {}
        L7_3 = L7_2
        L7_3 = L7_3 - L0_3
        L6_3.missingCoins = L7_3
        L4_3 = L4_3(L5_3, L6_3)
        L3_3.target = L4_3
        L1_3(L2_3, L3_3)
      else
        L1_3 = gamelua
        L1_3 = L1_3.eventManager
        L2_3 = L1_3
        L1_3 = L1_3.notify
        L3_3 = {}
        L4_3 = gamelua
        L4_3 = L4_3.events
        L4_3 = L4_3.EID_POP_FRAME
        L3_3.id = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = gamelua
        L1_3 = L1_3.eventManager
        L2_3 = L1_3
        L1_3 = L1_3.notify
        L3_3 = {}
        L4_3 = gamelua
        L4_3 = L4_3.events
        L4_3 = L4_3.EID_POP_FRAME
        L3_3.id = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = gamelua
        L1_3 = L1_3.LocalNotifications
        L1_3 = L1_3.claimReward
        L2_3 = true
        
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = gamelua
          L0_4 = L0_4.eventManager
          L1_4 = L0_4
          L0_4 = L0_4.queueEvent
          L2_4 = {}
          L3_4 = gamelua
          L3_4 = L3_4.events
          L3_4 = L3_4.EID_SHOW_CARBONITE_REWARD
          L2_4.id = L3_4
          L2_4.screen = "Buy to melt"
          L0_4(L1_4, L2_4)
        end
        
        L1_3(L2_3, L3_3)
        L1_3 = gamelua
        L1_3 = L1_3.eventManager
        L2_3 = L1_3
        L1_3 = L1_3.notify
        L3_3 = {}
        L4_3 = gamelua
        L4_3 = L4_3.events
        L4_3 = L4_3.EID_CARBONITE_SCREEN_EXITED
        L3_3.id = L4_3
        L3_3.exitMethod = "Buy to melt"
        L1_3(L2_3, L3_3)
        L1_3 = gamelua
        L1_3 = L1_3.addCoins
        L2_3 = L7_2
        L2_3 = -L2_3
        L1_3(L2_3)
        L1_3 = gamelua
        L1_3 = L1_3.LocalNotifications
        L1_3 = L1_3.removeLocalNotification
        L2_3 = "CARBONITE_MELTED"
        L1_3(L2_3)
        L1_3 = A0_2
        L2_3 = {}
        L1_3.meltEndAt = L2_3
        L1_3 = CarboniteAvailableAnimation
        L1_3.isBuyShowing = false
      end
    end
    
    L9_2 = ui
    L9_2 = L9_2.ConfirmPrompt
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L11_2.returnValue = L8_2
    L11_2.title = ""
    L12_2 = gamelua
    L12_2 = L12_2.getText
    L13_2 = "TEXT_CARBONITE_MELT_FOR_PRICE_CONFIRM"
    L12_2 = L12_2(L13_2)
    L11_2.content = L12_2
    L12_2 = gamelua
    L12_2 = L12_2.getFontBasic
    L12_2 = L12_2()
    L11_2.font = L12_2
    L12_2 = " #"
    L13_2 = _G
    L13_2 = L13_2.tostring
    L14_2 = L7_2
    L13_2 = L13_2(L14_2)
    L12_2 = L12_2 .. L13_2
    L11_2.secondaryContent = L12_2
    L12_2 = gamelua
    L12_2 = L12_2.getFontIngameMoney
    L12_2 = L12_2()
    L11_2.secondaryFont = L12_2
    L11_2.closeOnCancelKeyHandler = true
    
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = CarboniteAvailableAnimation
      L0_3.isBuyShowing = false
      L0_3 = gamelua
      L0_3 = L0_3.eventManager
      L1_3 = L0_3
      L0_3 = L0_3.queueEvent
      L2_3 = {}
      L3_3 = gamelua
      L3_3 = L3_3.events
      L3_3 = L3_3.EID_CHECK_CARBONITE_MELTING
      L2_3.id = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L11_2.closeCallback = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = gamelua
    L10_2 = L10_2.eventManager
    L11_2 = L10_2
    L10_2 = L10_2.notify
    L12_2 = {}
    L13_2 = gamelua
    L13_2 = L13_2.events
    L13_2 = L13_2.EID_PUSH_FRAME
    L12_2.id = L13_2
    L12_2.target = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = CarboniteAvailableAnimation
    L10_2.isBuyShowing = true
  elseif L4_2 == "HELP" then
    L7_2 = gamelua
    L7_2 = L7_2.clearParticlesWithTagNative
    L8_2 = "MENU"
    L7_2(L8_2)
    L7_2 = ui
    L7_2 = L7_2.ConfirmPrompt
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = gamelua
      L0_3 = L0_3.eventManager
      L1_3 = L0_3
      L0_3 = L0_3.notify
      L2_3 = {}
      L3_3 = gamelua
      L3_3 = L3_3.events
      L3_3 = L3_3.EID_POP_FRAME
      L2_3.id = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = CarboniteAvailableAnimation
      L0_3.isHelpShowing = false
    end
    
    L9_2.returnValue = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.getText
    L11_2 = "TEXT_CARBONITE_INFO_TITLE"
    L10_2 = L10_2(L11_2)
    L9_2.title = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.getText
    L11_2 = "TEXT_CARBONITE_INFO_TEXT"
    L10_2 = L10_2(L11_2)
    L9_2.content = L10_2
    L9_2.hideCloseButton = true
    L9_2.closeOnCancelKeyHandler = true
    
    function L10_2()
      local L0_3, L1_3
      L0_3 = CarboniteAvailableAnimation
      L0_3.isHelpShowing = false
    end
    
    L9_2.closeCallback = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = gamelua
    L11_2 = L11_2.events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = CarboniteAvailableAnimation
    L8_2.isHelpShowing = true
  elseif A1_2 == "LRELEASE" then
    L8_2 = A0_2
    L7_2 = A0_2.isCarboniteInitAnimationComplete
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2.endCarboniteInitAnimation
      L7_2(L8_2)
    else
      L7_2 = A0_2.animateTime
      if L7_2 then
        L7_2 = A0_2.animationDone
        if not L7_2 then
          L8_2 = A0_2
          L7_2 = A0_2.close
          L7_2(L8_2)
        end
      end
    end
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L4_2 = A0_2
    L3_2 = A0_2.isCarboniteInitAnimationComplete
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.endCarboniteInitAnimation
      L3_2(L4_2)
    else
      L3_2 = A0_2.animateTime
      if L3_2 then
        L3_2 = A0_2.animationDone
        if not L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.close
          L3_2(L4_2)
          L3_2 = gamelua
          L3_2 = L3_2.playAudio
          L4_2 = "ButtonBack"
          L3_2(L4_2)
      end
      else
        L3_2 = gamelua
        L3_2 = L3_2.SettingsWrapper
        L4_2 = L3_2
        L3_2 = L3_2.getCarboniteMeltingEndTime
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L4_2 = L3_2.hour
          if L4_2 then
            goto lbl_79
          end
        end
        L4_2 = gamelua
        L4_2 = L4_2.getServerTime
        L4_2 = L4_2()
        L5_2 = gamelua
        L5_2 = L5_2.getCurrentTime
        L5_2 = L5_2()
        if L4_2 and L5_2 then
          L6_2 = gamelua
          L6_2 = L6_2.native_addSecondsToTime
          L7_2 = L5_2
          L8_2 = A0_2.meltTime
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = gamelua
          L7_2 = L7_2.roundTimeToDayRange
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L8_2 = gamelua
          L8_2 = L8_2.getTimeDifferenceInSeconds
          L9_2 = L7_2
          L10_2 = L5_2
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = gamelua
          L9_2 = L9_2.LocalNotifications
          L9_2 = L9_2.addLocalNotification
          L10_2 = "CARBONITE_MELTED"
          L11_2 = L8_2
          L12_2 = A0_2.rewardParameters
          L12_2 = L12_2.notificationText
          L9_2(L10_2, L11_2, L12_2)
          L9_2 = gamelua
          L9_2 = L9_2.native_addSecondsToTime
          L10_2 = L4_2
          L11_2 = A0_2.meltTime
          L9_2 = L9_2(L10_2, L11_2)
          A0_2.meltEndAt = L9_2
          L9_2 = gamelua
          L9_2 = L9_2.SettingsWrapper
          L10_2 = L9_2
          L9_2 = L9_2.setCarboniteMeltingEndTime
          L11_2 = A0_2.meltEndAt
          L9_2(L10_2, L11_2)
        end
        ::lbl_79::
        L4_2 = gamelua
        L4_2 = L4_2.eventManager
        L5_2 = L4_2
        L4_2 = L4_2.notify
        L6_2 = {}
        L7_2 = gamelua
        L7_2 = L7_2.events
        L7_2 = L7_2.EID_CARBONITE_SCREEN_EXITED
        L6_2.id = L7_2
        L6_2.exitMethod = "Close button"
        L4_2(L5_2, L6_2)
        L5_2 = A0_2
        L4_2 = A0_2.close
        L4_2(L5_2)
        L4_2 = gamelua
        L4_2 = L4_2.playAudio
        L5_2 = "ButtonBack"
        L4_2(L5_2)
      end
    end
  end
  L3_2 = "BLOCK"
  return L3_2
end

L0_1.onKeyEvent = L1_1
L0_1 = CarboniteAvailableAnimation

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
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.allInvisible = true
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.hideWhenClosing
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.setVisible
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.setVisible
      L8_2 = false
      L6_2(L7_2, L8_2)
    else
      L5_2.visible = false
    end
  end
end

L0_1.hideElementsWhenClosing = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.allInvisible = false
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = A0_2.showAfterAnimation
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = true
    L7_2 = A0_2.adButton
    if L5_2 == L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.g_carboniteAdAvailable
      L6_2 = L7_2 or L6_2
      if not L7_2 then
        L6_2 = false
      end
    end
    L7_2 = L5_2.setVisible
    if L7_2 then
      L8_2 = L5_2
      L7_2 = L5_2.setVisible
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L5_2.visible = L6_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
end

L0_1.showHiddenElement = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A1_2.hour
    if L2_2 and A0_2 then
      L2_2 = gamelua
      L2_2 = L2_2.getTimeDifferenceInSeconds
      L3_2 = A1_2
      L4_2 = A0_2
      L2_2 = L2_2(L3_2, L4_2)
      if 0 < L2_2 then
        L3_2 = gamelua
        L3_2 = L3_2.getTimeDifference
        L4_2 = A1_2
        L5_2 = A0_2
        return L3_2(L4_2, L5_2)
      end
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.getMeltTimeLeft = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A1_2 / 3600
  L3_2 = L3_2(L4_2)
  L2_2.hours = L3_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A1_2 / 60
  L4_2 = L4_2 % 60
  L3_2 = L3_2(L4_2)
  L2_2.minutes = L3_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A1_2 % 60
  L3_2 = L3_2(L4_2)
  L2_2.seconds = L3_2
  L3_2 = nil
  if L2_2 then
    L3_2 = ""
    L4_2 = L2_2.hours
    if L4_2 ~= 0 then
      L4_2 = L3_2
      L5_2 = _G
      L5_2 = L5_2.tostring
      L6_2 = L2_2.hours
      L5_2 = L5_2(L6_2)
      L6_2 = gamelua
      L6_2 = L6_2.getText
      L7_2 = "TEXT_CARBONITE_HOUR"
      L6_2 = L6_2(L7_2)
      L7_2 = " "
      L3_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    end
    L4_2 = L2_2.minutes
    if L4_2 ~= 0 then
      L4_2 = L3_2
      L5_2 = _G
      L5_2 = L5_2.tostring
      L6_2 = L2_2.minutes
      L5_2 = L5_2(L6_2)
      L6_2 = gamelua
      L6_2 = L6_2.getText
      L7_2 = "TEXT_CARBONITE_MINUTE"
      L6_2 = L6_2(L7_2)
      L7_2 = " "
      L3_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    end
    L4_2 = L2_2.seconds
    if L4_2 ~= 0 then
      L4_2 = L3_2
      L5_2 = _G
      L5_2 = L5_2.tostring
      L6_2 = L2_2.seconds
      L5_2 = L5_2(L6_2)
      L6_2 = gamelua
      L6_2 = L6_2.getText
      L7_2 = "TEXT_CARBONITE_SECOND"
      L6_2 = L6_2(L7_2)
      L7_2 = " "
      L3_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    end
  end
  return L3_2
end

L0_1.getSecondsToString = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A0_2 then
    L3_2 = gamelua
    L3_2 = L3_2.getServerTime
    L3_2 = L3_2()
    A0_2 = L3_2
  end
  if A1_2 then
    L3_2 = A1_2.hour
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = CarboniteAvailableAnimation
  L3_2 = L3_2.getMeltEndAt
  L3_2 = L3_2()
  A1_2 = L3_2
  ::lbl_16::
  L3_2 = CarboniteAvailableAnimation
  L3_2 = L3_2.getMeltTimeLeft
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = nil
  L5_2 = false
  L6_2 = false
  L7_2 = false
  if L3_2 then
    L4_2 = ""
    L8_2 = L3_2.hours
    if L8_2 ~= 0 then
      L8_2 = L4_2
      L9_2 = _G
      L9_2 = L9_2.tostring
      L10_2 = L3_2.hours
      L9_2 = L9_2(L10_2)
      L10_2 = gamelua
      L10_2 = L10_2.getText
      L11_2 = "TEXT_CARBONITE_HOUR"
      L10_2 = L10_2(L11_2)
      L4_2 = L8_2 .. L9_2 .. L10_2
      L5_2 = true
    end
    L8_2 = L3_2.minutes
    if L8_2 ~= 0 then
      if L4_2 ~= "" then
        L8_2 = " "
        if L8_2 then
          goto lbl_51
        end
      end
      L8_2 = ""
      ::lbl_51::
      L9_2 = L4_2
      L10_2 = L8_2
      L11_2 = _G
      L11_2 = L11_2.tostring
      L12_2 = L3_2.minutes
      L11_2 = L11_2(L12_2)
      L12_2 = gamelua
      L12_2 = L12_2.getText
      L13_2 = "TEXT_CARBONITE_MINUTE"
      L12_2 = L12_2(L13_2)
      L4_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L6_2 = true
    end
    if L5_2 and L6_2 and A2_2 then
      return L4_2
    end
    L8_2 = L3_2.seconds
    if L8_2 ~= 0 then
      L8_2 = noSec
      if not L8_2 then
        if L4_2 ~= "" then
          L8_2 = " "
          if L8_2 then
            goto lbl_82
          end
        end
        L8_2 = ""
        ::lbl_82::
        L9_2 = L4_2
        L10_2 = L8_2
        L11_2 = _G
        L11_2 = L11_2.tostring
        L12_2 = L3_2.seconds
        L11_2 = L11_2(L12_2)
        L12_2 = gamelua
        L12_2 = L12_2.getText
        L13_2 = "TEXT_CARBONITE_SECOND"
        L12_2 = L12_2(L13_2)
        L4_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
        L7_2 = true
      end
    end
  end
  return L4_2
end

L0_1.getMeltTimeString = L1_1
L0_1 = CarboniteAvailableAnimation

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.meltEndAt
  if L2_2 then
    L2_2 = A0_2.meltEndAt
    L2_2 = L2_2.hour
    if L2_2 and A1_2 then
      L2_2 = gamelua
      L2_2 = L2_2.getTimeDifferenceInSeconds
      L3_2 = A0_2.meltEndAt
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.ceil
      L4_2 = A0_2.meltPrice
      L5_2 = A0_2.meltTime
      L4_2 = L4_2 / L5_2
      L4_2 = L4_2 * L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2.meltPrice
      if L3_2 > L4_2 then
        L4_2 = A0_2.meltPrice
        L3_2 = L4_2 or L3_2
        if not L4_2 then
        end
      end
      return L3_2
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.getMeltPrice = L1_1
