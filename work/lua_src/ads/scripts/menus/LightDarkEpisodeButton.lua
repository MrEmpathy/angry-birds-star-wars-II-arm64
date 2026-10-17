local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
LightDarkEpisodeButton = L0_1
L0_1 = LightDarkEpisodeButton
L1_1 = {}
L0_1.closestToCamera = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = scoreBoxSprite
  if not L1_2 then
    L1_2 = "MENU_EPISODE_BUTTON_SCORE_FRAMES_1"
  end
  A0_2.scoreBoxSprite = L1_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpritePivot
  L2_2 = A0_2.scoreBoxSprite
  L1_2, L2_2 = L1_2(L2_2)
  scoreBoxPY = L2_2
  A0_2.scoreBoxPX = L1_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.scoreBoxSprite
  L1_2, L2_2 = L1_2(L2_2)
  A0_2.scoreBoxH = L2_2
  A0_2.scoreBoxW = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.physicsObject
  L2_2 = L2_2.definition
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.scale
  A0_2.scale = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.getFontHeadline
  L1_2 = L1_2()
  A0_2.headlineFont = L1_2
  L1_2 = LightDarkEpisodeButton
  L1_2.closestToCamera = nil
  A0_2.scoreBoxScale = 1
  A0_2.fontScale = 1
  A0_2.lockScale = 0.5
  L1_2 = A0_2.lightSideEpisode
  L2_2 = L1_2
  L1_2 = L1_2.find
  L3_2 = "_bonus"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    if L1_2 then
      goto lbl_53
    end
  end
  L1_2 = false
  ::lbl_53::
  A0_2.isBonus = L1_2
  L1_2 = A0_2.lightSideEpisode
  L2_2 = L1_2
  L1_2 = L1_2.find
  L3_2 = "_IAP"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    if L1_2 then
      goto lbl_64
    end
  end
  L1_2 = false
  ::lbl_64::
  A0_2.isIAPChapter = L1_2
  A0_2.lockedEpisodeMissingStarsScale = 1.25
  A0_2.lockedEpisodePriceTextScale = 0.5
  L1_2 = {}
  A0_2.flashAnimations = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.getFontIngameMoney
  L1_2 = L1_2()
  A0_2.moneyFont = L1_2
  A0_2.inWorld = true
  A0_2.disabledClickSound = "LevelLocked"
  A0_2.clickSound = "ButtonProceed"
  L1_2 = gamelua
  L1_2 = L1_2.getFontBasic
  L1_2 = L1_2()
  A0_2.scoreFont = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.setFont
  L2_2 = A0_2.scoreFont
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getFontLeading
  L1_2 = L1_2()
  A0_2.fontH = L1_2
  A0_2.hitAreaScale = 0.8
  L1_2 = LightDarkEpisodeButton
  L1_2.calculateButtonDistances = true
  A0_2.canBlock = true
  L1_2 = gamelua
  L1_2 = L1_2.blockTable
  L1_2 = L1_2.blocks
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L3_2 = A0_2.physicsObject
  L3_2 = L3_2.name
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.definition
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.lightSideButton
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = A0_2.physicsObject
  L4_2 = L4_2.name
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.definition
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.darkSideButton
  L3_2 = gamelua
  L3_2 = L3_2.blockTable
  L3_2 = L3_2.blocks
  L4_2 = gamelua
  L4_2 = L4_2.objects
  L4_2 = L4_2.world
  L5_2 = A0_2.physicsObject
  L5_2 = L5_2.name
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.definition
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.isComingSoonButton
  A0_2.isComingSoonButton = L3_2
  L3_2 = nil
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "lightSideBG"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = L1_2.backgroundSprite
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "darkSideBG"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = L2_2.backgroundSprite
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "lightSideButtonGlow"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = L1_2.buttonSpriteGlow
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = true
  L7_2 = 0
  L8_2 = A0_2.lightSideEpisode
  if L8_2 then
    L8_2 = gamelua
    L8_2 = L8_2.isEpisodeSideDisabled
    L9_2 = A0_2.lightSideEpisode
    L10_2 = true
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    L7_2 = L9_2
    L6_2 = L8_2
  end
  L8_2 = gamelua
  L8_2 = L8_2.blockTable
  L8_2 = L8_2.blocks
  L9_2 = gamelua
  L9_2 = L9_2.objects
  L9_2 = L9_2.world
  L10_2 = A0_2.physicsObject
  L10_2 = L10_2.name
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.definition
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.alwaysLocked
  if L8_2 then
    L6_2 = true
  end
  A0_2.lightSideDisabled = L6_2
  L8_2 = "emblemButton"
  L9_2 = A0_2.lightSideDisabled
  if L9_2 then
    L8_2 = "emblemButtonBG"
  end
  L9_2 = gamelua
  L9_2 = L9_2.ui
  L9_2 = L9_2.ScallableButton
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.name = "lightSideButton"
  L11_2.activateOnRelease = true
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = L9_2
  L10_2 = L9_2.setImage
  L12_2 = gamelua
  L12_2 = L12_2.getButtonImageName
  L13_2 = L8_2
  L14_2 = false
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L12_2(L13_2, L14_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L10_2 = A0_2.physicsObject
  L9_2.parentPhysicsObject = L10_2
  L9_2.meta = "LIGHT"
  L9_2.missingStars = L7_2
  if L6_2 then
    L10_2 = gamelua
    L10_2 = L10_2.blockTable
    L10_2 = L10_2.blocks
    L11_2 = gamelua
    L11_2 = L11_2.objects
    L11_2 = L11_2.world
    L12_2 = A0_2.physicsObject
    L12_2 = L12_2.name
    L11_2 = L11_2[L12_2]
    L11_2 = L11_2.definition
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.alwaysLocked
    if L10_2 then
      L9_2.returnValue = ""
    else
      L9_2.returnValue = "EPISODE_SIDE_NOT_OPEN"
    end
    L10_2 = A0_2.disabledClickSound
    L9_2.clickSound = L10_2
  else
    L9_2.returnValue = "GOTO_EPISODE_LIGHT"
    L10_2 = A0_2.clickSound
    L9_2.clickSound = L10_2
  end
  L10_2 = L9_2.returnValue
  L9_2.originalReturnValue = L10_2
  L11_2 = A0_2
  L10_2 = A0_2.addChild
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  A0_2.lightSideButton = L9_2
  L10_2 = ui
  L10_2 = L10_2.Image
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L12_2.name = "badgeBgLight"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = L10_2
  L11_2 = L10_2.setImage
  L13_2 = "BOX_COUNTER_MEDAL"
  L11_2(L12_2, L13_2)
  L12_2 = A0_2
  L11_2 = A0_2.addChild
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = gamelua
  L11_2 = L11_2.ui
  L11_2 = L11_2.Text
  L12_2 = L11_2
  L11_2 = L11_2.new
  L13_2 = {}
  L13_2.name = "badgeAmountLight"
  L14_2 = gamelua
  L14_2 = L14_2.getFontBasic
  L13_2.font = L14_2
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = A0_2
  L12_2 = A0_2.addChild
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
  L12_2 = gamelua
  L12_2 = L12_2.ui
  L12_2 = L12_2.Image
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L14_2.name = "darkSideButtonGlow"
  L12_2 = L12_2(L13_2, L14_2)
  L14_2 = L12_2
  L13_2 = L12_2.setImage
  L15_2 = L2_2.buttonSpriteGlow
  L13_2(L14_2, L15_2)
  L14_2 = A0_2
  L13_2 = A0_2.addChild
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = true
  L7_2 = 0
  L6_2 = L13_2
  L13_2 = A0_2.darkSideEpisode
  if L13_2 then
    L13_2 = gamelua
    L13_2 = L13_2.isEpisodeSideDisabled
    L14_2 = A0_2.darkSideEpisode
    L15_2 = false
    L13_2, L14_2 = L13_2(L14_2, L15_2)
    L7_2 = L14_2
    L6_2 = L13_2
  end
  L13_2 = gamelua
  L13_2 = L13_2.blockTable
  L13_2 = L13_2.blocks
  L14_2 = gamelua
  L14_2 = L14_2.objects
  L14_2 = L14_2.world
  L15_2 = A0_2.physicsObject
  L15_2 = L15_2.name
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.definition
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.alwaysLocked
  if L13_2 then
    L6_2 = true
  end
  A0_2.darkSideDisabled = L6_2
  L13_2 = "emblemButton"
  L14_2 = A0_2.darkSideDisabled
  if L14_2 then
    L13_2 = "emblemButtonBG"
  end
  L14_2 = gamelua
  L14_2 = L14_2.ui
  L14_2 = L14_2.ScallableButton
  L15_2 = L14_2
  L14_2 = L14_2.new
  L16_2 = {}
  L16_2.name = "darkSideButton"
  L16_2.activateOnRelease = true
  L14_2 = L14_2(L15_2, L16_2)
  L16_2 = L14_2
  L15_2 = L14_2.setImage
  L17_2 = gamelua
  L17_2 = L17_2.getButtonImageName
  L18_2 = L13_2
  L19_2 = true
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L17_2(L18_2, L19_2)
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L15_2 = A0_2.physicsObject
  L14_2.parentPhysicsObject = L15_2
  L14_2.meta = "DARK"
  A0_2.darkSideButton = L14_2
  L14_2.missingStars = L7_2
  if L6_2 then
    L15_2 = gamelua
    L15_2 = L15_2.blockTable
    L15_2 = L15_2.blocks
    L16_2 = gamelua
    L16_2 = L16_2.objects
    L16_2 = L16_2.world
    L17_2 = A0_2.physicsObject
    L17_2 = L17_2.name
    L16_2 = L16_2[L17_2]
    L16_2 = L16_2.definition
    L15_2 = L15_2[L16_2]
    L15_2 = L15_2.alwaysLocked
    if L15_2 then
      L14_2.returnValue = ""
    else
      L14_2.returnValue = "EPISODE_SIDE_NOT_OPEN"
    end
    L15_2 = A0_2.disabledClickSound
    L14_2.clickSound = L15_2
  else
    L14_2.returnValue = "GOTO_EPISODE_DARK"
    L15_2 = A0_2.clickSound
    L14_2.clickSound = L15_2
  end
  L15_2 = L14_2.returnValue
  L14_2.originalReturnValue = L15_2
  L16_2 = A0_2
  L15_2 = A0_2.addChild
  L17_2 = L14_2
  L15_2(L16_2, L17_2)
  L15_2 = gamelua
  L15_2 = L15_2.releaseBuild
  if L15_2 then
    L15_2 = A0_2.isBonus
    if L15_2 then
      L15_2 = gamelua
      L15_2 = L15_2.SettingsWrapper
      L16_2 = L15_2
      L15_2 = L15_2.isRewardChapterOpen
      L15_2 = L15_2(L16_2)
      if not L15_2 then
        A0_2.lightSideDisabled = true
        A0_2.darkSideDisabled = true
        L9_2.returnValue = "REWARD_CHAPTER_NOT_OPEN"
        L15_2 = L9_2.returnValue
        L9_2.originalReturnValue = L15_2
        L15_2 = A0_2.disabledClickSound
        L9_2.clickSound = L15_2
        L14_2.returnValue = "REWARD_CHAPTER_NOT_OPEN"
        L15_2 = L14_2.returnValue
        L14_2.originalReturnValue = L15_2
        L15_2 = A0_2.disabledClickSound
        L14_2.clickSound = L15_2
      end
    end
  end
  L15_2 = A0_2.isIAPChapter
  if L15_2 then
    A0_2.lightSideDisabled = false
    L15_2 = gamelua
    L15_2 = L15_2.ui
    L15_2 = L15_2.Image
    L16_2 = L15_2
    L15_2 = L15_2.new
    L17_2 = {}
    L17_2.name = "lightSideClock"
    L15_2 = L15_2(L16_2, L17_2)
    A0_2.lightSideClock = L15_2
    L15_2 = A0_2.lightSideClock
    L16_2 = L15_2
    L15_2 = L15_2.setImage
    L17_2 = "BUTTON_JEDI_SHIELDED_CLOCK"
    L15_2(L16_2, L17_2)
    L16_2 = A0_2
    L15_2 = A0_2.addChild
    L17_2 = A0_2.lightSideClock
    L15_2(L16_2, L17_2)
    L15_2 = ui
    L15_2 = L15_2.DummyText
    L16_2 = L15_2
    L15_2 = L15_2.new
    L17_2 = {}
    L17_2.name = "lightSideClockText"
    L17_2.text = "9 days"
    L18_2 = gamelua
    L18_2 = L18_2.getFontBasic
    L18_2 = L18_2()
    L17_2.font = L18_2
    L15_2 = L15_2(L16_2, L17_2)
    A0_2.lightSideClockText = L15_2
    L16_2 = A0_2
    L15_2 = A0_2.addChild
    L17_2 = A0_2.lightSideClockText
    L15_2(L16_2, L17_2)
    L15_2 = gamelua
    L15_2 = L15_2.ui
    L15_2 = L15_2.Image
    L16_2 = L15_2
    L15_2 = L15_2.new
    L17_2 = {}
    L17_2.name = "darkSideClock"
    L15_2 = L15_2(L16_2, L17_2)
    A0_2.darkSideClock = L15_2
    L15_2 = A0_2.darkSideClock
    L16_2 = L15_2
    L15_2 = L15_2.setImage
    L17_2 = "BUTTON_SITH_SHIELDED_CLOCK"
    L15_2(L16_2, L17_2)
    L16_2 = A0_2
    L15_2 = A0_2.addChild
    L17_2 = A0_2.darkSideClock
    L15_2(L16_2, L17_2)
    L15_2 = ui
    L15_2 = L15_2.DummyText
    L16_2 = L15_2
    L15_2 = L15_2.new
    L17_2 = {}
    L17_2.name = "darkSideClockText"
    L17_2.text = "6 days"
    L18_2 = gamelua
    L18_2 = L18_2.getFontBasic
    L18_2 = L18_2()
    L17_2.font = L18_2
    L15_2 = L15_2(L16_2, L17_2)
    A0_2.darkSideClockText = L15_2
    L16_2 = A0_2
    L15_2 = A0_2.addChild
    L17_2 = A0_2.darkSideClockText
    L15_2(L16_2, L17_2)
    L15_2 = A0_2.lightSideClock
    L15_2.visible = false
    L15_2 = A0_2.lightSideClockText
    L15_2.visible = false
    L15_2 = A0_2.darkSideClock
    L15_2.visible = false
    L15_2 = A0_2.darkSideClockText
    L15_2.visible = false
    L15_2 = nil
    L16_2 = nil
    L17_2 = _G
    L17_2 = L17_2.ipairs
    L18_2 = gamelua
    L18_2 = L18_2.actions
    L18_2 = L18_2.myLevels
    L18_2 = L18_2.chapter_IAP_light
    L17_2, L18_2, L19_2 = L17_2(L18_2)
    for L20_2, L21_2 in L17_2, L18_2, L19_2 do
      L22_2 = gamelua
      L22_2 = L22_2.isFirstLockedMYDLevel
      L23_2 = L21_2
      L24_2 = false
      L22_2 = L22_2(L23_2, L24_2)
      if L22_2 then
        L22_2 = gamelua
        L22_2 = L22_2.isLevelLockedByTimer
        L23_2 = L21_2
        L22_2, L23_2 = L22_2(L23_2)
        L15_2 = L23_2
        L20_2 = L22_2
        break
      end
    end
    L17_2 = _G
    L17_2 = L17_2.ipairs
    L18_2 = gamelua
    L18_2 = L18_2.actions
    L18_2 = L18_2.myLevels
    L18_2 = L18_2.chapter_IAP_dark
    L17_2, L18_2, L19_2 = L17_2(L18_2)
    for L20_2, L21_2 in L17_2, L18_2, L19_2 do
      L22_2 = gamelua
      L22_2 = L22_2.isFirstLockedMYDLevel
      L23_2 = L21_2
      L24_2 = true
      L22_2 = L22_2(L23_2, L24_2)
      if L22_2 then
        L22_2 = gamelua
        L22_2 = L22_2.isLevelLockedByTimer
        L23_2 = L21_2
        L22_2, L23_2 = L22_2(L23_2)
        L16_2 = L23_2
        L20_2 = L22_2
        break
      end
    end
    if L15_2 then
      L17_2 = A0_2.lightSideClock
      L17_2.visible = true
      L17_2 = A0_2.lightSideClockText
      L17_2.visible = true
      L17_2 = A0_2.lightSideClockText
      L18_2 = L17_2
      L17_2 = L17_2.setText
      L19_2 = gamelua
      L19_2 = L19_2.getMYDLockText
      L20_2 = L15_2
      L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L19_2(L20_2)
      L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    end
    if L16_2 then
      L17_2 = A0_2.darkSideClock
      L17_2.visible = true
      L17_2 = A0_2.darkSideClockText
      L17_2.visible = true
      L17_2 = A0_2.darkSideClockText
      L18_2 = L17_2
      L17_2 = L17_2.setText
      L19_2 = gamelua
      L19_2 = L19_2.getMYDLockText
      L20_2 = L16_2
      L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L19_2(L20_2)
      L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    end
  end
  L15_2 = ui
  L15_2 = L15_2.Image
  L16_2 = L15_2
  L15_2 = L15_2.new
  L17_2 = {}
  L17_2.name = "badgeBgDark"
  L15_2 = L15_2(L16_2, L17_2)
  L17_2 = L15_2
  L16_2 = L15_2.setImage
  L18_2 = "BOX_COUNTER_MEDAL"
  L16_2(L17_2, L18_2)
  L17_2 = A0_2
  L16_2 = A0_2.addChild
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
  L16_2 = gamelua
  L16_2 = L16_2.ui
  L16_2 = L16_2.Text
  L17_2 = L16_2
  L16_2 = L16_2.new
  L18_2 = {}
  L18_2.name = "badgeAmountDark"
  L19_2 = gamelua
  L19_2 = L19_2.getFontBasic
  L18_2.font = L19_2
  L16_2 = L16_2(L17_2, L18_2)
  L18_2 = A0_2
  L17_2 = A0_2.addChild
  L19_2 = L16_2
  L17_2(L18_2, L19_2)
  L17_2 = gamelua
  L17_2 = L17_2.ui
  L17_2 = L17_2.InvisibleButton
  L18_2 = L17_2
  L17_2 = L17_2.new
  L19_2 = {}
  L19_2.name = "lightSideInvisibleButton"
  L19_2.activateOnRelease = true
  L19_2.passNonActivationEvents = true
  L17_2 = L17_2(L18_2, L19_2)
  A0_2.lightSideInvisibleButton = L17_2
  L17_2 = A0_2.lightSideInvisibleButton
  L18_2 = L9_2.returnValue
  L17_2.returnValue = L18_2
  L17_2 = A0_2.lightSideInvisibleButton
  L17_2.meta = "LIGHT"
  L17_2 = A0_2.lightSideInvisibleButton
  L18_2 = L9_2.returnValue
  L17_2.originalReturnValue = L18_2
  L17_2 = A0_2.lightSideInvisibleButton
  L18_2 = L9_2.missingStars
  L17_2.missingStars = L18_2
  L17_2 = A0_2.lightSideInvisibleButton
  L18_2 = A0_2.physicsObject
  L17_2.parentPhysicsObject = L18_2
  L17_2 = A0_2.lightSideInvisibleButton
  L18_2 = L9_2.clickSound
  L17_2.sound = L18_2
  L18_2 = A0_2
  L17_2 = A0_2.addChild
  L19_2 = A0_2.lightSideInvisibleButton
  L17_2(L18_2, L19_2)
  L17_2 = gamelua
  L17_2 = L17_2.ui
  L17_2 = L17_2.InvisibleButton
  L18_2 = L17_2
  L17_2 = L17_2.new
  L19_2 = {}
  L19_2.name = "lightScoreBarButton"
  L19_2.activateOnRelease = true
  L19_2.passNonActivationEvents = true
  L17_2 = L17_2(L18_2, L19_2)
  A0_2.lightScoreBarButton = L17_2
  L17_2 = A0_2.lightScoreBarButton
  L18_2 = L9_2.returnValue
  L17_2.returnValue = L18_2
  L17_2 = A0_2.lightScoreBarButton
  L18_2 = L9_2.returnValue
  L17_2.originalReturnValue = L18_2
  L17_2 = A0_2.lightScoreBarButton
  L18_2 = L9_2.missingStars
  L17_2.missingStars = L18_2
  L17_2 = A0_2.lightScoreBarButton
  L18_2 = A0_2.physicsObject
  L17_2.parentPhysicsObject = L18_2
  L17_2 = A0_2.lightScoreBarButton
  L18_2 = L9_2.clickSound
  L17_2.sound = L18_2
  L17_2 = A0_2.lightScoreBarButton
  L17_2.meta = "LIGHT"
  L18_2 = A0_2
  L17_2 = A0_2.addChild
  L19_2 = A0_2.lightScoreBarButton
  L17_2(L18_2, L19_2)
  L17_2 = gamelua
  L17_2 = L17_2.ui
  L17_2 = L17_2.InvisibleButton
  L18_2 = L17_2
  L17_2 = L17_2.new
  L19_2 = {}
  L19_2.name = "darkSideInvisibleButton"
  L19_2.activateOnRelease = true
  L19_2.passNonActivationEvents = true
  L17_2 = L17_2(L18_2, L19_2)
  A0_2.darkSideInvisibleButton = L17_2
  L17_2 = A0_2.darkSideInvisibleButton
  L18_2 = L14_2.returnValue
  L17_2.returnValue = L18_2
  L17_2 = A0_2.darkSideInvisibleButton
  L17_2.meta = "DARK"
  L17_2 = A0_2.darkSideInvisibleButton
  L18_2 = L14_2.returnValue
  L17_2.originalReturnValue = L18_2
  L17_2 = A0_2.darkSideInvisibleButton
  L18_2 = L14_2.missingStars
  L17_2.missingStars = L18_2
  L17_2 = A0_2.darkSideInvisibleButton
  L18_2 = A0_2.physicsObject
  L17_2.parentPhysicsObject = L18_2
  L17_2 = A0_2.darkSideInvisibleButton
  L18_2 = L14_2.clickSound
  L17_2.sound = L18_2
  L18_2 = A0_2
  L17_2 = A0_2.addChild
  L19_2 = A0_2.darkSideInvisibleButton
  L17_2(L18_2, L19_2)
  L17_2 = gamelua
  L17_2 = L17_2.ui
  L17_2 = L17_2.InvisibleButton
  L18_2 = L17_2
  L17_2 = L17_2.new
  L19_2 = {}
  L19_2.name = "darkScoreBarButton"
  L19_2.activateOnRelease = true
  L19_2.passNonActivationEvents = true
  L17_2 = L17_2(L18_2, L19_2)
  A0_2.darkScoreBarButton = L17_2
  L17_2 = A0_2.darkScoreBarButton
  L18_2 = L14_2.returnValue
  L17_2.returnValue = L18_2
  L17_2 = A0_2.darkScoreBarButton
  L18_2 = L14_2.returnValue
  L17_2.originalReturnValue = L18_2
  L17_2 = A0_2.darkScoreBarButton
  L18_2 = L14_2.missingStars
  L17_2.missingStars = L18_2
  L17_2 = A0_2.darkScoreBarButton
  L18_2 = A0_2.physicsObject
  L17_2.parentPhysicsObject = L18_2
  L17_2 = A0_2.darkScoreBarButton
  L18_2 = L14_2.clickSound
  L17_2.sound = L18_2
  L17_2 = A0_2.darkScoreBarButton
  L17_2.meta = "DARK"
  L18_2 = A0_2
  L17_2 = A0_2.addChild
  L19_2 = A0_2.darkScoreBarButton
  L17_2(L18_2, L19_2)
  L17_2 = nil
  L18_2 = A0_2.lightSideDisabled
  if L18_2 then
    L18_2 = A0_2.darkSideDisabled
  end
  L19_2 = A0_2.physicsObject
  if L19_2 then
    L19_2 = A0_2.isBonus
    if not L19_2 then
      L19_2 = A0_2.isIAPChapter
      if not L19_2 then
        L19_2 = A0_2.isComingSoonButton
        if not L19_2 and L18_2 then
          L19_2 = gamelua
          L19_2 = L19_2.getPriceForEpisode
          L20_2 = A0_2.physicsObject
          L19_2 = L19_2(L20_2)
          L17_2 = L19_2
        end
      end
    end
  end
  L19_2 = gamelua
  L19_2 = L19_2.ui
  L19_2 = L19_2.Frame
  L20_2 = L19_2
  L19_2 = L19_2.new
  L21_2 = {}
  L21_2.name = "lightSideScoreFrame"
  L19_2 = L19_2(L20_2, L21_2)
  L20_2 = gamelua
  L20_2 = L20_2.ui
  L20_2 = L20_2.Text
  L21_2 = L20_2
  L20_2 = L20_2.new
  L22_2 = {}
  L22_2.name = "lightSideScoreIcon"
  L23_2 = gamelua
  L23_2 = L23_2.getText
  L24_2 = "TEXT_ID_EPISODE_SELECTION_SCORE"
  L23_2 = L23_2(L24_2)
  L22_2.text = L23_2
  L23_2 = gamelua
  L23_2 = L23_2.getFontHeadline
  L22_2.font = L23_2
  L20_2 = L20_2(L21_2, L22_2)
  L21_2 = gamelua
  L21_2 = L21_2.ui
  L21_2 = L21_2.Text
  L22_2 = L21_2
  L21_2 = L21_2.new
  L23_2 = {}
  L23_2.name = "lightSideScoreText"
  L24_2 = ""
  L25_2 = A0_2.totalScoreLight
  if not L25_2 then
    L25_2 = ""
  end
  L24_2 = L24_2 .. L25_2
  L23_2.text = L24_2
  L24_2 = gamelua
  L24_2 = L24_2.getFontBasic
  L23_2.font = L24_2
  L21_2 = L21_2(L22_2, L23_2)
  L22_2 = gamelua
  L22_2 = L22_2.ui
  L22_2 = L22_2.Image
  L23_2 = L22_2
  L22_2 = L22_2.new
  L24_2 = {}
  L24_2.name = "lightSideStarIcon"
  L22_2 = L22_2(L23_2, L24_2)
  L23_2 = gamelua
  L23_2 = L23_2.ui
  L23_2 = L23_2.Text
  L24_2 = L23_2
  L23_2 = L23_2.new
  L25_2 = {}
  L25_2.name = "lightSideStarText"
  L26_2 = A0_2.totalStarsLight
  if not L26_2 then
    L26_2 = ""
  end
  L27_2 = "/"
  L28_2 = A0_2.maxStarsLight
  if not L28_2 then
    L28_2 = ""
  end
  L26_2 = L26_2 .. L27_2 .. L28_2
  L25_2.text = L26_2
  L26_2 = gamelua
  L26_2 = L26_2.getFontStarcount
  L25_2.font = L26_2
  L23_2 = L23_2(L24_2, L25_2)
  L24_2 = gamelua
  L24_2 = L24_2.ui
  L24_2 = L24_2.Frame
  L25_2 = L24_2
  L24_2 = L24_2.new
  L26_2 = {}
  L26_2.name = "darkSideScoreFrame"
  L24_2 = L24_2(L25_2, L26_2)
  L25_2 = gamelua
  L25_2 = L25_2.ui
  L25_2 = L25_2.Text
  L26_2 = L25_2
  L25_2 = L25_2.new
  L27_2 = {}
  L27_2.name = "darkSideScoreIcon"
  L28_2 = gamelua
  L28_2 = L28_2.getText
  L29_2 = "TEXT_ID_EPISODE_SELECTION_SCORE"
  L28_2 = L28_2(L29_2)
  L27_2.text = L28_2
  L28_2 = gamelua
  L28_2 = L28_2.getFontHeadline
  L27_2.font = L28_2
  L25_2 = L25_2(L26_2, L27_2)
  L26_2 = gamelua
  L26_2 = L26_2.ui
  L26_2 = L26_2.Text
  L27_2 = L26_2
  L26_2 = L26_2.new
  L28_2 = {}
  L28_2.name = "darkSideScoreText"
  L29_2 = ""
  L30_2 = A0_2.totalScoreDark
  if not L30_2 then
    L30_2 = ""
  end
  L29_2 = L29_2 .. L30_2
  L28_2.text = L29_2
  L29_2 = gamelua
  L29_2 = L29_2.getFontBasic
  L28_2.font = L29_2
  L26_2 = L26_2(L27_2, L28_2)
  L27_2 = gamelua
  L27_2 = L27_2.ui
  L27_2 = L27_2.Image
  L28_2 = L27_2
  L27_2 = L27_2.new
  L29_2 = {}
  L29_2.name = "darkSideStarIcon"
  L27_2 = L27_2(L28_2, L29_2)
  L28_2 = gamelua
  L28_2 = L28_2.ui
  L28_2 = L28_2.Text
  L29_2 = L28_2
  L28_2 = L28_2.new
  L30_2 = {}
  L30_2.name = "darkSideStarText"
  L31_2 = A0_2.totalStarsDark
  if not L31_2 then
    L31_2 = ""
  end
  L32_2 = "/"
  L33_2 = A0_2.maxStarsDark
  if not L33_2 then
    L33_2 = ""
  end
  L31_2 = L31_2 .. L32_2 .. L33_2
  L30_2.text = L31_2
  L31_2 = gamelua
  L31_2 = L31_2.getFontStarcount
  L30_2.font = L31_2
  L28_2 = L28_2(L29_2, L30_2)
  L29_2 = A0_2.lightSideDisabled
  if L29_2 then
    L29_2 = gamelua
    L29_2 = L29_2.ui
    L29_2 = L29_2.Image
    L30_2 = L29_2
    L29_2 = L29_2.new
    L31_2 = {}
    L31_2.name = "lightSideLockIcon"
    L31_2.activateOnRelease = true
    L29_2 = L29_2(L30_2, L31_2)
    L31_2 = L29_2
    L30_2 = L29_2.setImage
    L32_2 = L1_2.lockedImage
    L30_2(L31_2, L32_2)
    L31_2 = L29_2
    L30_2 = L29_2.setScale
    L32_2 = A0_2.lockScale
    L30_2(L31_2, L32_2)
    L31_2 = L9_2
    L30_2 = L9_2.addChild
    L32_2 = L29_2
    L30_2(L31_2, L32_2)
    if not L18_2 then
      L30_2 = gamelua
      L30_2 = L30_2.ui
      L30_2 = L30_2.Text
      L31_2 = L30_2
      L30_2 = L30_2.new
      L32_2 = {}
      L32_2.name = "lightSidePriceText"
      L32_2.activateOnRelease = true
      L33_2 = A0_2.moneyFont
      L32_2.font = L33_2
      L30_2 = L30_2(L31_2, L32_2)
      A0_2.lightSidePriceText = L30_2
      L31_2 = gamelua
      L31_2 = L31_2.ui
      L31_2 = L31_2.Text
      L32_2 = L31_2
      L31_2 = L31_2.new
      L33_2 = {}
      L33_2.name = "lightSideMissingStarsText"
      L33_2.activateOnRelease = true
      L34_2 = ""
      L35_2 = L9_2.missingStars
      L34_2 = L34_2 .. L35_2
      L33_2.text = L34_2
      L34_2 = gamelua
      L34_2 = L34_2.getFontStarcount
      L33_2.font = L34_2
      L31_2 = L31_2(L32_2, L33_2)
      A0_2.lightSideMissingStarsText = L31_2
      L33_2 = L19_2
      L32_2 = L19_2.addChild
      L34_2 = L31_2
      L32_2(L33_2, L34_2)
      L32_2 = gamelua
      L32_2 = L32_2.getPriceForHalfEpisode
      L33_2 = A0_2.physicsObject
      L34_2 = "DARK"
      L32_2 = L32_2(L33_2, L34_2)
      L17_2 = L32_2
      if L17_2 then
        L32_2 = "#"
        L33_2 = L17_2
        L32_2 = L32_2 .. L33_2
        L30_2.text = L32_2
        L33_2 = L19_2
        L32_2 = L19_2.addChild
        L34_2 = L30_2
        L32_2(L33_2, L34_2)
      end
    end
  end
  L29_2 = A0_2.darkSideDisabled
  if L29_2 then
    L29_2 = gamelua
    L29_2 = L29_2.ui
    L29_2 = L29_2.Image
    L30_2 = L29_2
    L29_2 = L29_2.new
    L31_2 = {}
    L31_2.name = "darkSideLockIcon"
    L29_2 = L29_2(L30_2, L31_2)
    L31_2 = L29_2
    L30_2 = L29_2.setImage
    L32_2 = L2_2.lockedImage
    L30_2(L31_2, L32_2)
    L31_2 = L29_2
    L30_2 = L29_2.setScale
    L32_2 = A0_2.lockScale
    L30_2(L31_2, L32_2)
    L31_2 = L14_2
    L30_2 = L14_2.addChild
    L32_2 = L29_2
    L30_2(L31_2, L32_2)
    if not L18_2 then
      L30_2 = gamelua
      L30_2 = L30_2.ui
      L30_2 = L30_2.Text
      L31_2 = L30_2
      L30_2 = L30_2.new
      L32_2 = {}
      L32_2.name = "darkSidePriceText"
      L32_2.activateOnRelease = true
      L33_2 = A0_2.moneyFont
      L32_2.font = L33_2
      L30_2 = L30_2(L31_2, L32_2)
      A0_2.darkSidePriceText = L30_2
      L31_2 = gamelua
      L31_2 = L31_2.ui
      L31_2 = L31_2.Text
      L32_2 = L31_2
      L31_2 = L31_2.new
      L33_2 = {}
      L33_2.name = "darkSideMissingStarsText"
      L33_2.activateOnRelease = true
      L34_2 = ""
      L35_2 = L14_2.missingStars
      L34_2 = L34_2 .. L35_2
      L33_2.text = L34_2
      L34_2 = gamelua
      L34_2 = L34_2.getFontStarcount
      L33_2.font = L34_2
      L31_2 = L31_2(L32_2, L33_2)
      A0_2.darkSideMissingStarsText = L31_2
      L33_2 = L24_2
      L32_2 = L24_2.addChild
      L34_2 = L31_2
      L32_2(L33_2, L34_2)
      L32_2 = gamelua
      L32_2 = L32_2.getPriceForHalfEpisode
      L33_2 = A0_2.physicsObject
      L34_2 = "LIGHT"
      L32_2 = L32_2(L33_2, L34_2)
      L17_2 = L32_2
      if L17_2 then
        L32_2 = "#"
        L33_2 = L17_2
        L32_2 = L32_2 .. L33_2
        L30_2.text = L32_2
        L33_2 = L24_2
        L32_2 = L24_2.addChild
        L34_2 = L30_2
        L32_2(L33_2, L34_2)
      end
    end
  end
  L29_2 = A0_2.darkSideDisabled
  if L29_2 then
    L29_2 = A0_2.lightSideDisabled
    if L29_2 then
      L29_2 = A0_2.isBonus
      if not L29_2 then
        L29_2 = A0_2.isComingSoonButton
        if not L29_2 and L17_2 then
          L29_2 = "#"
          L30_2 = L17_2
          L29_2 = L29_2 .. L30_2
          A0_2.priceText = L29_2
          L29_2 = gamelua
          L29_2 = L29_2.getText
          L30_2 = "TEXT_EPISODE_SELECTION_DISCLAIMER_1"
          L29_2 = L29_2(L30_2)
          A0_2.priceTextDisclaimerText = L29_2
          L29_2 = gamelua
          L29_2 = L29_2.getText
          L30_2 = "TEXT_EPISODE_SELECTION_DISCLAIMER_2"
          L29_2 = L29_2(L30_2)
          A0_2.priceTextDisclaimerText2 = L29_2
        end
      end
    end
  end
  L29_2 = A0_2.lightSideDisabled
  if L29_2 then
    L20_2.visible = false
    L21_2.visible = false
    L22_2.visible = false
    L23_2.visible = false
  end
  L29_2 = A0_2.darkSideDisabled
  if L29_2 then
    L25_2.visible = false
    L26_2.visible = false
    L27_2.visible = false
    L28_2.visible = false
  end
  L30_2 = L22_2
  L29_2 = L22_2.setImage
  L31_2 = "ICON_LEVELSTAR_2"
  L29_2(L30_2, L31_2)
  L23_2.hanchor = "RIGHT"
  L29_2 = A0_2.scoreBoxW
  L29_2 = L29_2 * 0.525
  L23_2.xPos = L29_2
  L29_2 = A0_2.fontH
  L29_2 = L29_2 * 0
  L23_2.yPos = L29_2
  L29_2 = 280
  L30_2 = 1
  L32_2 = L20_2
  L31_2 = L20_2.getWidth
  L31_2 = L31_2(L32_2)
  if L29_2 < L31_2 then
    L32_2 = L20_2
    L31_2 = L20_2.getWidth
    L31_2 = L31_2(L32_2)
    L30_2 = L29_2 / L31_2
  end
  L21_2.hanchor = "LEFT"
  L31_2 = A0_2.scoreBoxW
  L31_2 = -L31_2
  L31_2 = L31_2 * 0.5
  L32_2 = L9_2.w
  L32_2 = L32_2 * 0.8
  L31_2 = L31_2 + L32_2
  L21_2.xPos = L31_2
  L31_2 = A0_2.fontH
  L31_2 = L31_2 * 1.21
  L21_2.yPos = L31_2
  L20_2.hanchor = "LEFT"
  L31_2 = A0_2.scoreBoxW
  L31_2 = -L31_2
  L31_2 = L31_2 * 0.5
  L32_2 = L9_2.w
  L32_2 = L32_2 * 0.8
  L31_2 = L31_2 + L32_2
  L20_2.xPos = L31_2
  L31_2 = L22_2.h
  L31_2 = L31_2 * 0.12
  L32_2 = L1_2.starIconScale
  L31_2 = L31_2 * L32_2
  L20_2.yPos = L31_2
  L20_2.extraScale = L30_2
  L31_2 = L23_2.xPos
  L33_2 = L23_2
  L32_2 = L23_2.getWidth
  L32_2 = L32_2(L33_2)
  L31_2 = L31_2 - L32_2
  L32_2 = L22_2.w
  L32_2 = L32_2 * 0.8
  L31_2 = L31_2 - L32_2
  L22_2.xPos = L31_2
  L31_2 = L22_2.h
  L31_2 = L31_2 * 0.13
  L32_2 = L1_2.starIconScale
  L31_2 = L31_2 * L32_2
  L22_2.yPos = L31_2
  L32_2 = L27_2
  L31_2 = L27_2.setImage
  L33_2 = "ICON_LEVELSTAR_2"
  L31_2(L32_2, L33_2)
  L28_2.hanchor = "RIGHT"
  L31_2 = A0_2.scoreBoxW
  L31_2 = L31_2 * 0.5
  L32_2 = L14_2.w
  L32_2 = L32_2 * 0.8
  L31_2 = L31_2 - L32_2
  L28_2.xPos = L31_2
  L31_2 = A0_2.fontH
  L31_2 = L31_2 * 0
  L28_2.yPos = L31_2
  L26_2.hanchor = "LEFT"
  L31_2 = A0_2.scoreBoxW
  L31_2 = -L31_2
  L31_2 = L31_2 * 0.5
  L26_2.xPos = L31_2
  L31_2 = A0_2.fontH
  L31_2 = L31_2 * 1.21
  L26_2.yPos = L31_2
  L25_2.hanchor = "LEFT"
  L31_2 = A0_2.scoreBoxW
  L31_2 = -L31_2
  L31_2 = L31_2 * 0.5
  L25_2.xPos = L31_2
  L31_2 = L27_2.h
  L31_2 = L31_2 * 0.12
  L32_2 = L2_2.starIconScale
  L31_2 = L31_2 * L32_2
  L25_2.yPos = L31_2
  L25_2.extraScale = L30_2
  L31_2 = L28_2.xPos
  L33_2 = L28_2
  L32_2 = L28_2.getWidth
  L32_2 = L32_2(L33_2)
  L31_2 = L31_2 - L32_2
  L32_2 = L27_2.w
  L32_2 = L32_2 * 0.8
  L31_2 = L31_2 - L32_2
  L27_2.xPos = L31_2
  L31_2 = L27_2.h
  L31_2 = L31_2 * 0.13
  L32_2 = L2_2.starIconScale
  L31_2 = L31_2 * L32_2
  L27_2.yPos = L31_2
  L32_2 = L19_2
  L31_2 = L19_2.addChild
  L33_2 = L22_2
  L31_2(L32_2, L33_2)
  L32_2 = L19_2
  L31_2 = L19_2.addChild
  L33_2 = L20_2
  L31_2(L32_2, L33_2)
  L32_2 = L19_2
  L31_2 = L19_2.addChild
  L33_2 = L21_2
  L31_2(L32_2, L33_2)
  L32_2 = L19_2
  L31_2 = L19_2.addChild
  L33_2 = L23_2
  L31_2(L32_2, L33_2)
  L32_2 = A0_2
  L31_2 = A0_2.addChild
  L33_2 = L19_2
  L31_2(L32_2, L33_2)
  L32_2 = L24_2
  L31_2 = L24_2.addChild
  L33_2 = L27_2
  L31_2(L32_2, L33_2)
  L32_2 = L24_2
  L31_2 = L24_2.addChild
  L33_2 = L25_2
  L31_2(L32_2, L33_2)
  L32_2 = L24_2
  L31_2 = L24_2.addChild
  L33_2 = L26_2
  L31_2(L32_2, L33_2)
  L32_2 = L24_2
  L31_2 = L24_2.addChild
  L33_2 = L28_2
  L31_2(L32_2, L33_2)
  L32_2 = A0_2
  L31_2 = A0_2.addChild
  L33_2 = L24_2
  L31_2(L32_2, L33_2)
  L31_2 = gamelua
  L31_2 = L31_2.blockTable
  L31_2 = L31_2.blocks
  L32_2 = gamelua
  L32_2 = L32_2.objects
  L32_2 = L32_2.world
  L33_2 = A0_2.physicsObject
  L33_2 = L33_2.name
  L32_2 = L32_2[L33_2]
  L32_2 = L32_2.definition
  L31_2 = L31_2[L32_2]
  L31_2 = L31_2.backgroundObjects
  if L31_2 then
    L31_2 = _G
    L31_2 = L31_2.pairs
    L32_2 = gamelua
    L32_2 = L32_2.blockTable
    L32_2 = L32_2.blocks
    L33_2 = gamelua
    L33_2 = L33_2.objects
    L33_2 = L33_2.world
    L34_2 = A0_2.physicsObject
    L34_2 = L34_2.name
    L33_2 = L33_2[L34_2]
    L33_2 = L33_2.definition
    L32_2 = L32_2[L33_2]
    L32_2 = L32_2.backgroundObjects
    L31_2, L32_2, L33_2 = L31_2(L32_2)
    for L34_2, L35_2 in L31_2, L32_2, L33_2 do
      L36_2 = L35_2.flashAnimation
      if L36_2 then
        L36_2 = A0_2.flashAnimations
        L37_2 = L35_2.flashAnimation
        L37_2 = L37_2.name
        L38_2 = {}
        L38_2.running = false
        L39_2 = L35_2.flashAnimation
        L39_2 = L39_2.action
        L38_2.action = L39_2
        L36_2[L37_2] = L38_2
        L36_2 = gamelua
        L36_2 = L36_2.cutsceneLoad
        L37_2 = L35_2.flashAnimation
        L37_2 = L37_2.name
        L38_2 = L35_2.flashAnimation
        L38_2 = L38_2.file
        L36_2(L37_2, L38_2)
        L36_2 = gamelua
        L36_2 = L36_2.cutsceneStart
        L37_2 = L35_2.flashAnimation
        L37_2 = L37_2.name
        L38_2 = L35_2.flashAnimation
        L38_2 = L38_2.action
        L39_2 = "repeat"
        L36_2(L37_2, L38_2, L39_2)
        L36_2 = gamelua
        L36_2 = L36_2.cutsceneStop
        L37_2 = L35_2.flashAnimation
        L37_2 = L37_2.name
        L38_2 = L35_2.flashAnimation
        L38_2 = L38_2.action
        L36_2(L37_2, L38_2)
      end
    end
  end
end

L0_1.init = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "badgeBgLight"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "badgeAmountLight"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "badgeBgDark"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "badgeAmountDark"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.getNewBonusLevels
  L7_2 = A0_2.lightSideEpisode
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.getNewOpenedLevels
  L8_2 = A0_2.lightSideEpisode
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2 + L6_2
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.getNewBonusLevels
  L8_2 = A0_2.darkSideEpisode
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.getNewOpenedLevels
  L9_2 = A0_2.darkSideEpisode
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 + L7_2
  if L5_2 == 0 then
    L1_2.visible = false
    L2_2.visible = false
  else
    L7_2 = _G
    L7_2 = L7_2.tostring
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L2_2.text = L7_2
    L1_2.visible = true
    L2_2.visible = true
    L7_2 = A0_2.isIAPChapter
    if L7_2 then
      L7_2 = A0_2.lightSideClock
      L7_2.visible = false
      L7_2 = A0_2.lightSideClockText
      L7_2.visible = false
    end
  end
  if L6_2 == 0 then
    L3_2.visible = false
    L4_2.visible = false
  else
    L7_2 = _G
    L7_2 = L7_2.tostring
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L4_2.text = L7_2
    L3_2.visible = true
    L4_2.visible = true
    L7_2 = A0_2.isIAPChapter
    if L7_2 then
      L7_2 = A0_2.darkSideClock
      L7_2.visible = false
      L7_2 = A0_2.darkSideClockText
      L7_2.visible = false
    end
  end
end

L0_1.updateBadges = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.physicsObject
  L2_2 = L2_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.physicsObject
    L2_2 = L2_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.calculateEpisodeSelectionScale
    L3_2 = A0_2.physicsObject
    L3_2 = L3_2.name
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    L1_2.episodeScale = L2_2
    L1_2.episodeRelativeX = L3_2
    L5_2 = gamelua
    L5_2 = L5_2.setScale
    L6_2 = A0_2.physicsObject
    L6_2 = L6_2.name
    L7_2 = L4_2 * L2_2
    L8_2 = L4_2 * L2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end

L0_1.layout = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = LightDarkEpisodeButton
  L4_2 = L4_2.closestToCamera
  if L4_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "lightSideButton"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "darkSideButton"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = LightDarkEpisodeButton
  L6_2 = L6_2.closestToCamera
  L6_2 = L6_2[2]
  L6_2 = L6_2.name
  L7_2 = A0_2.name
  if L6_2 == L7_2 then
    L6_2 = A0_2.dist
    if L6_2 ~= nil then
      L6_2 = A0_2.dist
      if L6_2 < 40 then
        L6_2 = L4_2.originalReturnValue
        L4_2.returnValue = L6_2
        L6_2 = L5_2.originalReturnValue
        L5_2.returnValue = L6_2
        L6_2 = A0_2.lightSideInvisibleButton
        L7_2 = L4_2.originalReturnValue
        L6_2.returnValue = L7_2
        L6_2 = A0_2.lightScoreBarButton
        L7_2 = L4_2.originalReturnValue
        L6_2.returnValue = L7_2
        L6_2 = A0_2.darkSideInvisibleButton
        L7_2 = L5_2.originalReturnValue
        L6_2.returnValue = L7_2
        L6_2 = A0_2.darkScoreBarButton
        L7_2 = L5_2.originalReturnValue
        L6_2.returnValue = L7_2
        A0_2.maxScale = 1.1
        L6_2 = gamelua
        L6_2 = L6_2.ui
        L6_2 = L6_2.Frame
        L6_2 = L6_2.onPointerEvent
        L7_2 = A0_2
        L8_2 = A1_2
        L9_2 = A2_2
        L10_2 = A3_2
        L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        if (L6_2 == "GOTO_EPISODE_DARK" or L6_2 == "GOTO_EPISODE_LIGHT") and A1_2 == "LRELEASE" then
          L9_2 = A0_2.isBonus
          if L9_2 then
            L9_2 = gamelua
            L9_2 = L9_2.g_isRegistered
            if L9_2 then
              L9_2 = gamelua
              L9_2 = L9_2.SettingsWrapper
              L10_2 = L9_2
              L9_2 = L9_2.setNewBonusLevels
              if L6_2 == "GOTO_EPISODE_DARK" then
                L11_2 = A0_2.darkSideEpisode
                if L11_2 then
                  goto lbl_73
                end
              end
              L11_2 = A0_2.lightSideEpisode
              ::lbl_73::
              L12_2 = 0
              L9_2(L10_2, L11_2, L12_2)
            end
          end
        end
        if (L6_2 == "GOTO_EPISODE_DARK" or L6_2 == "GOTO_EPISODE_LIGHT") and A1_2 == "LRELEASE" then
          L9_2 = A0_2.isIAPChapter
          if L9_2 then
            L9_2 = gamelua
            L9_2 = L9_2.g_isRegistered
            if L9_2 then
              L9_2 = gamelua
              L9_2 = L9_2.SettingsWrapper
              L10_2 = L9_2
              L9_2 = L9_2.setNewOpenedLevels
              if L6_2 == "GOTO_EPISODE_DARK" then
                L11_2 = A0_2.darkSideEpisode
                if L11_2 then
                  goto lbl_97
                end
              end
              L11_2 = A0_2.lightSideEpisode
              ::lbl_97::
              L12_2 = 0
              L9_2(L10_2, L11_2, L12_2)
            end
          end
        end
        L9_2 = nil
        if L8_2 then
          L9_2 = L8_2.meta
        end
        L10_2 = L6_2
        L11_2 = L9_2
        L12_2 = L8_2
        return L10_2, L11_2, L12_2
    end
  end
  else
    A0_2.maxScale = 1
    L6_2 = A0_2.cameraXDiff
    if L6_2 < 0 then
      L4_2.returnValue = "LEFT_CLICKED"
      L5_2.returnValue = "LEFT_CLICKED"
      L6_2 = A0_2.lightSideInvisibleButton
      L6_2.returnValue = "LEFT_CLICKED"
      L6_2 = A0_2.darkSideInvisibleButton
      L6_2.returnValue = "LEFT_CLICKED"
      L6_2 = A0_2.lightScoreBarButton
      L6_2.returnValue = "LEFT_CLICKED"
      L6_2 = A0_2.darkScoreBarButton
      L6_2.returnValue = "LEFT_CLICKED"
    else
      L4_2.returnValue = "RIGHT_CLICKED"
      L5_2.returnValue = "RIGHT_CLICKED"
      L6_2 = A0_2.lightSideInvisibleButton
      L6_2.returnValue = "RIGHT_CLICKED"
      L6_2 = A0_2.darkSideInvisibleButton
      L6_2.returnValue = "RIGHT_CLICKED"
      L6_2 = A0_2.lightScoreBarButton
      L6_2.returnValue = "RIGHT_CLICKED"
      L6_2 = A0_2.darkScoreBarButton
      L6_2.returnValue = "RIGHT_CLICKED"
    end
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.Frame
    L6_2 = L6_2.onPointerEvent
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L9_2 = L6_2
    L10_2 = L7_2
    L11_2 = L8_2
    return L9_2, L10_2, L11_2
  end
  L6_2 = -1
  return L6_2
end

L0_1.onPointerEvent = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = LightDarkEpisodeButton
  L4_2 = L4_2.calculateButtonDistances
  if L4_2 == true then
    L4_2 = LightDarkEpisodeButton
    L4_2.closestToCamera = nil
    L4_2 = LightDarkEpisodeButton
    L4_2.calculateButtonDistances = false
  end
  L4_2 = gamelua
  L4_2 = L4_2.worldToPhysicsTransform
  L5_2 = gamelua
  L5_2 = L5_2.screen
  L5_2 = L5_2.x
  L6_2 = gamelua
  L6_2 = L6_2.screen
  L6_2 = L6_2.y
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2.physicsObject
  L6_2 = L6_2.x
  L6_2 = L6_2 - L4_2
  L7_2 = A0_2.physicsObject
  L7_2 = L7_2.y
  L7_2 = L7_2 - L5_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.sqrt
  L9_2 = L6_2 * L6_2
  L10_2 = L7_2 * L7_2
  L9_2 = L9_2 + L10_2
  L8_2 = L8_2(L9_2)
  A0_2.cameraXDiff = L6_2
  L9_2 = LightDarkEpisodeButton
  L9_2 = L9_2.closestToCamera
  if L9_2 ~= nil then
    L9_2 = LightDarkEpisodeButton
    L9_2 = L9_2.closestToCamera
    if L9_2 == nil then
      goto lbl_61
    end
    L9_2 = LightDarkEpisodeButton
    L9_2 = L9_2.closestToCamera
    L9_2 = L9_2[1]
    if not (L8_2 < L9_2) then
      goto lbl_61
    end
  end
  L9_2 = LightDarkEpisodeButton
  L9_2 = L9_2.closestToCamera
  if L9_2 == nil then
    L9_2 = LightDarkEpisodeButton
    L10_2 = {}
    L9_2.closestToCamera = L10_2
  end
  L9_2 = LightDarkEpisodeButton
  L9_2 = L9_2.closestToCamera
  L9_2[1] = L8_2
  L9_2 = LightDarkEpisodeButton
  L9_2 = L9_2.closestToCamera
  L9_2[2] = A0_2
  ::lbl_61::
  A0_2.dist = L8_2
  L9_2 = LightDarkEpisodeButton
  L9_2 = L9_2.closestToCamera
  L9_2 = L9_2[2]
  L9_2 = L9_2.name
  L10_2 = A0_2.name
  if L9_2 == L10_2 then
    L9_2 = A0_2.dist
    if L9_2 < 10 then
      L9_2 = _G
      L9_2 = L9_2.pairs
      L10_2 = A0_2.flashAnimations
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = L13_2.running
        if L14_2 == false then
          L13_2.running = true
          L14_2 = gamelua
          L14_2 = L14_2.cutsceneStart
          L15_2 = L12_2
          L16_2 = L13_2.action
          L17_2 = "repeat"
          L14_2(L15_2, L16_2, L17_2)
        end
      end
  end
  else
    L9_2 = _G
    L9_2 = L9_2.pairs
    L10_2 = A0_2.flashAnimations
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L13_2.running
      if L14_2 == true then
        L14_2 = A0_2.dist
        if 10 <= L14_2 then
          L14_2 = gamelua
          L14_2 = L14_2.cutsceneStop
          L15_2 = L12_2
          L16_2 = L13_2.action
          L14_2(L15_2, L16_2)
          L13_2.running = false
        end
      end
    end
  end
  L9_2 = gamelua
  L9_2 = L9_2.objects
  L9_2 = L9_2.world
  L10_2 = A0_2.physicsObject
  L10_2 = L10_2.name
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.episodeRelativeX
  if not L9_2 then
    L9_2 = 0.5
  end
  L10_2 = gamelua
  L10_2 = L10_2.calculateScaleFactor
  L11_2 = L9_2
  L12_2 = gamelua
  L12_2 = L12_2.blockTable
  L12_2 = L12_2.blocks
  L13_2 = gamelua
  L13_2 = L13_2.objects
  L13_2 = L13_2.world
  L14_2 = A0_2.physicsObject
  L14_2 = L14_2.name
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.definition
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.episodeScalingValues
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = gamelua
  L11_2 = L11_2.blockTable
  L11_2 = L11_2.blocks
  L12_2 = gamelua
  L12_2 = L12_2.objects
  L12_2 = L12_2.world
  L13_2 = A0_2.physicsObject
  L13_2 = L13_2.name
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.definition
  L11_2 = L11_2[L12_2]
  L11_2 = L11_2.lightSideButton
  L12_2 = gamelua
  L12_2 = L12_2.blockTable
  L12_2 = L12_2.blocks
  L13_2 = gamelua
  L13_2 = L13_2.objects
  L13_2 = L13_2.world
  L14_2 = A0_2.physicsObject
  L14_2 = L14_2.name
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.definition
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.darkSideButton
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "lightSideBG"
  L13_2 = L13_2(L14_2, L15_2)
  L15_2 = A0_2
  L14_2 = A0_2.getChild
  L16_2 = "darkSideBG"
  L14_2 = L14_2(L15_2, L16_2)
  L16_2 = A0_2
  L15_2 = A0_2.getChild
  L17_2 = "lightSideButton"
  L15_2 = L15_2(L16_2, L17_2)
  L17_2 = A0_2
  L16_2 = A0_2.getChild
  L18_2 = "darkSideButton"
  L16_2 = L16_2(L17_2, L18_2)
  L18_2 = A0_2
  L17_2 = A0_2.getChild
  L19_2 = "lightSideScoreFrame"
  L17_2 = L17_2(L18_2, L19_2)
  L19_2 = A0_2
  L18_2 = A0_2.getChild
  L20_2 = "lightSideStarText"
  L18_2 = L18_2(L19_2, L20_2)
  L20_2 = A0_2
  L19_2 = A0_2.getChild
  L21_2 = "lightSideScoreText"
  L19_2 = L19_2(L20_2, L21_2)
  L21_2 = A0_2
  L20_2 = A0_2.getChild
  L22_2 = "darkSideScoreFrame"
  L20_2 = L20_2(L21_2, L22_2)
  L22_2 = A0_2
  L21_2 = A0_2.getChild
  L23_2 = "darkSideStarText"
  L21_2 = L21_2(L22_2, L23_2)
  L23_2 = A0_2
  L22_2 = A0_2.getChild
  L24_2 = "darkSideScoreText"
  L22_2 = L22_2(L23_2, L24_2)
  L24_2 = A0_2
  L23_2 = A0_2.getChild
  L25_2 = "lightSideScoreIcon"
  L23_2 = L23_2(L24_2, L25_2)
  L25_2 = A0_2
  L24_2 = A0_2.getChild
  L26_2 = "darkSideScoreIcon"
  L24_2 = L24_2(L25_2, L26_2)
  L26_2 = A0_2
  L25_2 = A0_2.getChild
  L27_2 = "lightSideStarIcon"
  L25_2 = L25_2(L26_2, L27_2)
  L27_2 = A0_2
  L26_2 = A0_2.getChild
  L28_2 = "darkSideStarIcon"
  L26_2 = L26_2(L27_2, L28_2)
  L28_2 = A0_2
  L27_2 = A0_2.getChild
  L29_2 = "lightSideButtonGlow"
  L27_2 = L27_2(L28_2, L29_2)
  L29_2 = A0_2
  L28_2 = A0_2.getChild
  L30_2 = "darkSideButtonGlow"
  L28_2 = L28_2(L29_2, L30_2)
  L30_2 = A0_2
  L29_2 = A0_2.getChild
  L31_2 = "badgeBgLight"
  L29_2 = L29_2(L30_2, L31_2)
  L31_2 = A0_2
  L30_2 = A0_2.getChild
  L32_2 = "badgeAmountLight"
  L30_2 = L30_2(L31_2, L32_2)
  L32_2 = A0_2
  L31_2 = A0_2.getChild
  L33_2 = "badgeBgDark"
  L31_2 = L31_2(L32_2, L33_2)
  L33_2 = A0_2
  L32_2 = A0_2.getChild
  L34_2 = "badgeAmountDark"
  L32_2 = L32_2(L33_2, L34_2)
  A0_2.scaleFactor = L10_2
  L33_2 = L18_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L18_2.x = L33_2
  L33_2 = L18_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L18_2.y = L33_2
  L34_2 = L18_2
  L33_2 = L18_2.setScale
  L35_2 = L11_2.starScale
  L33_2(L34_2, L35_2)
  L33_2 = L19_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L19_2.x = L33_2
  L33_2 = L19_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L19_2.y = L33_2
  L34_2 = L19_2
  L33_2 = L19_2.setScale
  L35_2 = L11_2.scoreScale
  L33_2(L34_2, L35_2)
  L33_2 = L23_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L23_2.x = L33_2
  L33_2 = L23_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L23_2.y = L33_2
  L34_2 = L23_2
  L33_2 = L23_2.setScale
  L35_2 = L11_2.scoreIconScale
  L36_2 = L23_2.extraScale
  L35_2 = L35_2 * L36_2
  L33_2(L34_2, L35_2)
  L33_2 = L25_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L25_2.x = L33_2
  L33_2 = L25_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L25_2.y = L33_2
  L34_2 = L25_2
  L33_2 = L25_2.setScale
  L35_2 = L11_2.starIconScale
  L33_2(L34_2, L35_2)
  L33_2 = L11_2.scoreXOffset
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L17_2.x = L33_2
  L33_2 = L11_2.scoreYOffset
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L17_2.y = L33_2
  L33_2 = L21_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L21_2.x = L33_2
  L33_2 = L21_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L21_2.y = L33_2
  L34_2 = L21_2
  L33_2 = L21_2.setScale
  L35_2 = L12_2.starScale
  L33_2(L34_2, L35_2)
  L33_2 = L22_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L22_2.x = L33_2
  L33_2 = L22_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L22_2.y = L33_2
  L34_2 = L22_2
  L33_2 = L22_2.setScale
  L35_2 = L11_2.scoreScale
  L33_2(L34_2, L35_2)
  L33_2 = L24_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L24_2.x = L33_2
  L33_2 = L24_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L24_2.y = L33_2
  L34_2 = L24_2
  L33_2 = L24_2.setScale
  L35_2 = L12_2.scoreIconScale
  L36_2 = L24_2.extraScale
  L35_2 = L35_2 * L36_2
  L33_2(L34_2, L35_2)
  L33_2 = L26_2.xPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L26_2.x = L33_2
  L33_2 = L26_2.yPos
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L26_2.y = L33_2
  L34_2 = L26_2
  L33_2 = L26_2.setScale
  L35_2 = L12_2.starIconScale
  L33_2(L34_2, L35_2)
  L33_2 = L12_2.scoreXOffset
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L20_2.x = L33_2
  L33_2 = L12_2.scoreYOffset
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L20_2.y = L33_2
  L33_2 = A0_2.isIAPChapter
  if L33_2 then
    L33_2 = {}
    L34_2 = 425 * L10_2
    L35_2 = gamelua
    L35_2 = L35_2.worldScale
    L34_2 = L34_2 * L35_2
    L33_2.x = L34_2
    L34_2 = 25 * L10_2
    L35_2 = gamelua
    L35_2 = L35_2.worldScale
    L34_2 = L34_2 * L35_2
    L33_2.y = L34_2
    L34_2 = 90 * L10_2
    L35_2 = gamelua
    L35_2 = L35_2.worldScale
    L34_2 = L34_2 * L35_2
    L35_2 = A0_2.lightSideClock
    L36_2 = L33_2.x
    L36_2 = -L36_2
    L35_2.x = L36_2
    L35_2 = A0_2.lightSideClock
    L36_2 = L33_2.y
    L35_2.y = L36_2
    L35_2 = A0_2.lightSideClockText
    L36_2 = A0_2.lightSideClock
    L36_2 = L36_2.x
    L35_2.x = L36_2
    L35_2 = A0_2.lightSideClockText
    L36_2 = A0_2.lightSideClock
    L36_2 = L36_2.y
    L36_2 = L36_2 + L34_2
    L35_2.y = L36_2
    L35_2 = A0_2.lightSideClockText
    L36_2 = L35_2
    L35_2 = L35_2.setScale
    L37_2 = 1.35
    L35_2(L36_2, L37_2)
    L35_2 = A0_2.darkSideClock
    L36_2 = L33_2.x
    L35_2.x = L36_2
    L35_2 = A0_2.darkSideClock
    L36_2 = L33_2.y
    L35_2.y = L36_2
    L35_2 = A0_2.darkSideClockText
    L36_2 = A0_2.darkSideClock
    L36_2 = L36_2.x
    L35_2.x = L36_2
    L35_2 = A0_2.darkSideClockText
    L36_2 = A0_2.darkSideClock
    L36_2 = L36_2.y
    L36_2 = L36_2 + L34_2
    L35_2.y = L36_2
    L35_2 = A0_2.darkSideClockText
    L36_2 = L35_2
    L35_2 = L35_2.setScale
    L37_2 = 1.35
    L35_2(L36_2, L37_2)
  end
  L33_2 = A0_2.lightSidePriceText
  if L33_2 then
    L33_2 = A0_2.lightSidePriceText
    L33_2.hanchor = "HCENTER"
    L33_2 = A0_2.lightSidePriceText
    L33_2.x = 0
    L33_2 = A0_2.lightSidePriceText
    L34_2 = L19_2.y
    L33_2.y = L34_2
    L33_2 = A0_2.lightSidePriceText
    L34_2 = A0_2.lockedEpisodePriceTextScale
    L33_2.scaleX = L34_2
    L33_2 = A0_2.lightSidePriceText
    L34_2 = A0_2.lockedEpisodePriceTextScale
    L33_2.scaleY = L34_2
  end
  L33_2 = A0_2.lightSideMissingStarsText
  if L33_2 then
    L33_2 = A0_2.lightSideMissingStarsText
    L34_2 = A0_2.lightSideMissingStarsText
    L34_2 = L34_2.width
    L34_2 = -L34_2
    L34_2 = L34_2 * 0.5
    L34_2 = L34_2 * L10_2
    L35_2 = gamelua
    L35_2 = L35_2.worldScale
    L34_2 = L34_2 * L35_2
    L33_2.x = L34_2
    L33_2 = A0_2.lightSideMissingStarsText
    L33_2.y = 0
    L33_2 = A0_2.lightSideMissingStarsText
    L34_2 = A0_2.lockedEpisodeMissingStarsScale
    L33_2.scaleX = L34_2
    L33_2 = A0_2.lightSideMissingStarsText
    L34_2 = A0_2.lockedEpisodeMissingStarsScale
    L33_2.scaleY = L34_2
    L25_2.visible = true
    L33_2 = L23_2.y
    L25_2.y = L33_2
    L33_2 = L25_2.w
    L33_2 = L33_2 * 0.6
    L33_2 = L33_2 * L10_2
    L34_2 = gamelua
    L34_2 = L34_2.worldScale
    L33_2 = L33_2 * L34_2
    L25_2.x = L33_2
  end
  L33_2 = A0_2.darkSidePriceText
  if L33_2 then
    L33_2 = A0_2.darkSidePriceText
    L33_2.hanchor = "HCENTER"
    L33_2 = A0_2.darkSidePriceText
    L33_2.x = 0
    L33_2 = A0_2.darkSidePriceText
    L34_2 = L22_2.y
    L33_2.y = L34_2
    L33_2 = A0_2.darkSidePriceText
    L34_2 = A0_2.lockedEpisodePriceTextScale
    L33_2.scaleX = L34_2
    L33_2 = A0_2.darkSidePriceText
    L34_2 = A0_2.lockedEpisodePriceTextScale
    L33_2.scaleY = L34_2
  end
  L33_2 = A0_2.darkSideMissingStarsText
  if L33_2 then
    L33_2 = A0_2.darkSideMissingStarsText
    L34_2 = A0_2.darkSideMissingStarsText
    L34_2 = L34_2.width
    L34_2 = -L34_2
    L34_2 = L34_2 * 0.5
    L34_2 = L34_2 * L10_2
    L35_2 = gamelua
    L35_2 = L35_2.worldScale
    L34_2 = L34_2 * L35_2
    L33_2.x = L34_2
    L33_2 = A0_2.darkSideMissingStarsText
    L33_2.y = 0
    L33_2 = A0_2.darkSideMissingStarsText
    L34_2 = A0_2.lockedEpisodeMissingStarsScale
    L33_2.scaleX = L34_2
    L33_2 = A0_2.darkSideMissingStarsText
    L34_2 = A0_2.lockedEpisodeMissingStarsScale
    L33_2.scaleY = L34_2
    L26_2.visible = true
    L33_2 = L24_2.y
    L26_2.y = L33_2
    L33_2 = L26_2.w
    L33_2 = L33_2 * 0.6
    L33_2 = L33_2 * L10_2
    L34_2 = gamelua
    L34_2 = L34_2.worldScale
    L33_2 = L33_2 * L34_2
    L26_2.x = L33_2
  end
  L33_2 = L11_2.backgroundSprite
  if L33_2 then
    L33_2 = L11_2.xOffset
    L33_2 = L33_2 * L10_2
    L34_2 = gamelua
    L34_2 = L34_2.worldScale
    L33_2 = L33_2 * L34_2
    L13_2.x = L33_2
    L33_2 = L11_2.yOffset
    L33_2 = L33_2 * L10_2
    L34_2 = gamelua
    L34_2 = L34_2.worldScale
    L33_2 = L33_2 * L34_2
    L13_2.y = L33_2
    L33_2 = L11_2.bgScale
    L13_2.scaleX = L33_2
    L33_2 = L11_2.bgScale
    L13_2.scaleY = L33_2
  else
    L34_2 = L13_2
    L33_2 = L13_2.getRightBlockW
    L33_2 = L33_2(L34_2)
    L35_2 = L13_2
    L34_2 = L13_2.getLeftBlockW
    L34_2 = L34_2(L35_2)
    L33_2 = L33_2 + L34_2
    L35_2 = L13_2
    L34_2 = L13_2.getTopBlockH
    L34_2 = L34_2(L35_2)
    L36_2 = L13_2
    L35_2 = L13_2.getBottomBlockH
    L35_2 = L35_2(L36_2)
    L34_2 = L34_2 + L35_2
    L35_2 = L11_2.bgWidth
    L35_2 = L35_2 * L10_2
    L36_2 = gamelua
    L36_2 = L36_2.worldScale
    L35_2 = L35_2 * L36_2
    L36_2 = L11_2.bgHeight
    L36_2 = L36_2 * L10_2
    L37_2 = gamelua
    L37_2 = L37_2.worldScale
    L36_2 = L36_2 * L37_2
    L37_2 = L11_2.xOffset
    L37_2 = L37_2 * L10_2
    L38_2 = gamelua
    L38_2 = L38_2.worldScale
    L37_2 = L37_2 * L38_2
    L13_2.x = L37_2
    L37_2 = L11_2.yOffset
    L37_2 = L37_2 * L10_2
    L38_2 = gamelua
    L38_2 = L38_2.worldScale
    L37_2 = L37_2 * L38_2
    L13_2.y = L37_2
    L38_2 = L13_2
    L37_2 = L13_2.setSize
    L39_2 = L35_2 - L33_2
    L40_2 = L36_2 - L34_2
    L37_2(L38_2, L39_2, L40_2)
  end
  L33_2 = A0_2.lightScoreBarButton
  if L33_2 then
    L33_2 = L11_2.backgroundSprite
    if L33_2 then
      L33_2 = A0_2.lightScoreBarButton
      L34_2 = L13_2.w
      L35_2 = L11_2.bgScale
      L34_2 = L34_2 * L35_2
      L34_2 = L34_2 * L10_2
      L35_2 = gamelua
      L35_2 = L35_2.worldScale
      L34_2 = L34_2 * L35_2
      L33_2.width = L34_2
      L33_2 = A0_2.lightScoreBarButton
      L34_2 = L13_2.h
      L35_2 = L11_2.bgScale
      L34_2 = L34_2 * L35_2
      L34_2 = L34_2 * L10_2
      L35_2 = gamelua
      L35_2 = L35_2.worldScale
      L34_2 = L34_2 * L35_2
      L33_2.height = L34_2
      L33_2 = A0_2.lightScoreBarButton
      L34_2 = L13_2.x
      L35_2 = A0_2.lightScoreBarButton
      L35_2 = L35_2.width
      L35_2 = L35_2 / 2
      L34_2 = L34_2 + L35_2
      L33_2.x = L34_2
      L33_2 = A0_2.lightScoreBarButton
      L34_2 = L13_2.y
      L33_2.y = L34_2
      L33_2 = A0_2.lightScoreBarButton
      L34_2 = A0_2.lightScoreBarButton
      L34_2 = L34_2.width
      L34_2 = L34_2 * 0.2
      L33_2.clickThreshold = L34_2
    end
  end
  L33_2 = L12_2.xOffset
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L14_2.x = L33_2
  L33_2 = L12_2.yOffset
  L33_2 = L33_2 * L10_2
  L34_2 = gamelua
  L34_2 = L34_2.worldScale
  L33_2 = L33_2 * L34_2
  L14_2.y = L33_2
  L33_2 = L12_2.bgScale
  L14_2.scaleX = L33_2
  L33_2 = L12_2.bgScale
  L14_2.scaleY = L33_2
  L33_2 = A0_2.darkScoreBarButton
  if L33_2 then
    L33_2 = A0_2.darkScoreBarButton
    L34_2 = L14_2.w
    L35_2 = L12_2.bgScale
    L34_2 = L34_2 * L35_2
    L34_2 = L34_2 * L10_2
    L35_2 = gamelua
    L35_2 = L35_2.worldScale
    L34_2 = L34_2 * L35_2
    L33_2.width = L34_2
    L33_2 = A0_2.darkScoreBarButton
    L34_2 = L14_2.h
    L35_2 = L12_2.bgScale
    L34_2 = L34_2 * L35_2
    L34_2 = L34_2 * L10_2
    L35_2 = gamelua
    L35_2 = L35_2.worldScale
    L34_2 = L34_2 * L35_2
    L33_2.height = L34_2
    L33_2 = A0_2.darkScoreBarButton
    L34_2 = L14_2.x
    L35_2 = A0_2.darkScoreBarButton
    L35_2 = L35_2.width
    L35_2 = L35_2 / 2
    L34_2 = L34_2 - L35_2
    L33_2.x = L34_2
    L33_2 = A0_2.darkScoreBarButton
    L34_2 = L14_2.y
    L33_2.y = L34_2
    L33_2 = A0_2.darkScoreBarButton
    L34_2 = A0_2.darkScoreBarButton
    L34_2 = L34_2.width
    L34_2 = L34_2 * 0.2
    L33_2.clickThreshold = L34_2
  end
  L33_2 = L13_2.x
  L15_2.x = L33_2
  L33_2 = L13_2.y
  L15_2.y = L33_2
  L34_2 = L15_2
  L33_2 = L15_2.setScale
  L35_2 = gamelua
  L35_2 = L35_2.worldScale
  L35_2 = L10_2 * L35_2
  L36_2 = L11_2.buttonScale
  L35_2 = L35_2 * L36_2
  L33_2(L34_2, L35_2)
  L33_2 = L15_2.x
  L27_2.x = L33_2
  L33_2 = L15_2.y
  L27_2.y = L33_2
  L33_2 = _G
  L33_2 = L33_2.math
  L33_2 = L33_2.abs
  L34_2 = _G
  L34_2 = L34_2.math
  L34_2 = L34_2.sin
  L35_2 = A2_2
  L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L34_2(L35_2)
  L33_2 = L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
  L33_2 = L33_2 * 0.1
  L33_2 = 1 - L33_2
  L35_2 = L27_2
  L34_2 = L27_2.setScale
  L36_2 = L11_2.buttonGlowScale
  L36_2 = L36_2 * L33_2
  L34_2(L35_2, L36_2)
  L34_2 = L14_2.x
  L16_2.x = L34_2
  L34_2 = L14_2.y
  L16_2.y = L34_2
  L35_2 = L16_2
  L34_2 = L16_2.setScale
  L36_2 = gamelua
  L36_2 = L36_2.worldScale
  L36_2 = L10_2 * L36_2
  L37_2 = L12_2.buttonScale
  L36_2 = L36_2 * L37_2
  L34_2(L35_2, L36_2)
  L34_2 = L16_2.x
  L28_2.x = L34_2
  L34_2 = L16_2.y
  L28_2.y = L34_2
  L34_2 = _G
  L34_2 = L34_2.math
  L34_2 = L34_2.abs
  L35_2 = _G
  L35_2 = L35_2.math
  L35_2 = L35_2.sin
  L36_2 = A2_2
  L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L35_2(L36_2)
  L34_2 = L34_2(L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
  L34_2 = L34_2 * 0.1
  L33_2 = 1 - L34_2
  L35_2 = L28_2
  L34_2 = L28_2.setScale
  L36_2 = L12_2.buttonGlowScale
  L36_2 = L36_2 * L33_2
  L34_2(L35_2, L36_2)
  L34_2 = 1
  L35_2 = A0_2.lightSideDisabled
  if L35_2 then
    L35_2 = A0_2.darkSideDisabled
    if L35_2 then
      L34_2 = 0.79
    end
  end
  L35_2 = A0_2.lightSideInvisibleButton
  if L35_2 then
    L35_2 = A0_2.lightSideInvisibleButton
    L36_2 = L11_2.invisibleCenterButtonWidth
    L36_2 = L36_2 * L10_2
    L37_2 = gamelua
    L37_2 = L37_2.worldScale
    L36_2 = L36_2 * L37_2
    L35_2.width = L36_2
    L35_2 = A0_2.lightSideInvisibleButton
    L36_2 = L11_2.invisibleCenterButtonHeight
    L36_2 = L36_2 * L10_2
    L37_2 = gamelua
    L37_2 = L37_2.worldScale
    L36_2 = L36_2 * L37_2
    L35_2.height = L36_2
    L35_2 = A0_2.lightSideInvisibleButton
    L36_2 = A0_2.lightSideInvisibleButton
    L36_2 = L36_2.width
    L36_2 = -L36_2
    L36_2 = L36_2 * 0.5
    L36_2 = L36_2 * L34_2
    L35_2.x = L36_2
    L35_2 = A0_2.lightSideInvisibleButton
    L35_2.y = 0
    L35_2 = A0_2.lightSideInvisibleButton
    L36_2 = A0_2.lightSideInvisibleButton
    L36_2 = L36_2.width
    L36_2 = L36_2 * 0.8
    L35_2.width = L36_2
    L35_2 = A0_2.lightSideInvisibleButton
    L36_2 = A0_2.lightSideInvisibleButton
    L36_2 = L36_2.width
    L36_2 = L36_2 * 0.2
    L35_2.clickThreshold = L36_2
  end
  L35_2 = A0_2.darkSideInvisibleButton
  if L35_2 then
    L35_2 = A0_2.darkSideInvisibleButton
    L36_2 = L12_2.invisibleCenterButtonWidth
    L36_2 = L36_2 * L10_2
    L37_2 = gamelua
    L37_2 = L37_2.worldScale
    L36_2 = L36_2 * L37_2
    L35_2.width = L36_2
    L35_2 = A0_2.darkSideInvisibleButton
    L36_2 = L12_2.invisibleCenterButtonHeight
    L36_2 = L36_2 * L10_2
    L37_2 = gamelua
    L37_2 = L37_2.worldScale
    L36_2 = L36_2 * L37_2
    L35_2.height = L36_2
    L35_2 = A0_2.darkSideInvisibleButton
    L36_2 = A0_2.darkSideInvisibleButton
    L36_2 = L36_2.width
    L36_2 = L36_2 * 0.5
    L36_2 = L36_2 * L34_2
    L35_2.x = L36_2
    L35_2 = A0_2.darkSideInvisibleButton
    L35_2.y = 0
    L35_2 = A0_2.darkSideInvisibleButton
    L36_2 = A0_2.darkSideInvisibleButton
    L36_2 = L36_2.width
    L36_2 = L36_2 * 0.8
    L35_2.width = L36_2
    L35_2 = A0_2.darkSideInvisibleButton
    L36_2 = A0_2.darkSideInvisibleButton
    L36_2 = L36_2.width
    L36_2 = L36_2 * 0.2
    L35_2.clickThreshold = L36_2
  end
  L35_2 = gamelua
  L35_2 = L35_2.ui
  L35_2 = L35_2.Frame
  L35_2 = L35_2.update
  L36_2 = A0_2
  L37_2 = A1_2
  L35_2(L36_2, L37_2)
  L35_2 = L15_2.x
  L36_2 = L15_2.h
  L36_2 = L36_2 * 0.15
  L37_2 = L15_2.scaleX
  L36_2 = L36_2 * L37_2
  L35_2 = L35_2 - L36_2
  L29_2.x = L35_2
  L35_2 = L15_2.y
  L36_2 = L15_2.h
  L36_2 = L36_2 * 0.3
  L37_2 = L15_2.scaleX
  L36_2 = L36_2 * L37_2
  L35_2 = L35_2 - L36_2
  L29_2.y = L35_2
  L36_2 = L29_2
  L35_2 = L29_2.setScale
  L37_2 = 1.7
  L35_2(L36_2, L37_2)
  L35_2 = L29_2.x
  L36_2 = L29_2.w
  L36_2 = L36_2 * 0.5
  L37_2 = L15_2.scaleX
  L36_2 = L36_2 * L37_2
  L35_2 = L35_2 - L36_2
  L30_2.x = L35_2
  L35_2 = L29_2.y
  L30_2.y = L35_2
  L36_2 = L30_2
  L35_2 = L30_2.setScale
  L37_2 = 1.6
  L35_2(L36_2, L37_2)
  L35_2 = L16_2.x
  L36_2 = L16_2.h
  L36_2 = L36_2 * 0.15
  L37_2 = L16_2.scaleX
  L36_2 = L36_2 * L37_2
  L35_2 = L35_2 + L36_2
  L36_2 = L31_2.w
  L37_2 = L16_2.scaleX
  L36_2 = L36_2 * L37_2
  L35_2 = L35_2 + L36_2
  L31_2.x = L35_2
  L35_2 = L16_2.y
  L36_2 = L16_2.h
  L36_2 = L36_2 * 0.3
  L37_2 = L16_2.scaleX
  L36_2 = L36_2 * L37_2
  L35_2 = L35_2 - L36_2
  L31_2.y = L35_2
  L36_2 = L31_2
  L35_2 = L31_2.setScale
  L37_2 = 1.7
  L35_2(L36_2, L37_2)
  L35_2 = L31_2.x
  L36_2 = L31_2.w
  L36_2 = L36_2 * 0.5
  L37_2 = L16_2.scaleX
  L36_2 = L36_2 * L37_2
  L35_2 = L35_2 - L36_2
  L32_2.x = L35_2
  L35_2 = L31_2.y
  L32_2.y = L35_2
  L36_2 = L32_2
  L35_2 = L32_2.setScale
  L37_2 = 1.6
  L35_2(L36_2, L37_2)
end

L0_1.update = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = A0_2.physicsObject
  L4_2 = L4_2.name
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.episodeScale
  if not L3_2 then
    L3_2 = 1
  end
  L4_2 = gamelua
  L4_2 = L4_2.worldScale
  L4_2 = L4_2 * L3_2
  L5_2 = A0_2.scoreBoxH
  L5_2 = -L5_2
  L5_2 = L5_2 * 0.15
  L6_2 = A0_2.scoreBoxH
  L6_2 = L6_2 * 0.15
  L7_2 = LightDarkEpisodeButton
  L7_2.calculateButtonDistances = true
  L7_2 = A0_2.scoreBoxScale
  L8_2 = A0_2.fontScale
  L7_2 = L7_2 / L8_2
  L6_2 = L6_2 * L7_2
  L7_2 = A0_2.scaleY
  L7_2 = L4_2 * L7_2
  L8_2 = A0_2.scoreBoxScale
  L7_2 = L7_2 * L8_2
  L8_2 = A0_2.scaleX
  L8_2 = L4_2 * L8_2
  L9_2 = A0_2.scoreBoxScale
  L8_2 = L8_2 * L9_2
  L9_2 = nil
  L10_2 = nil
  L11_2 = 0.35
  L12_2 = A0_2.scoreBoxW
  L12_2 = L12_2 * L11_2
  L13_2 = A0_2.scoreBoxScale
  L12_2 = L12_2 * L13_2
  L12_2 = -L12_2
  L13_2 = A0_2.fontScale
  L12_2 = L12_2 / L13_2
  L13_2 = 0
  L14_2 = -L12_2
  L15_2 = gamelua
  L15_2 = L15_2.setFont
  L15_2()
  L15_2 = gamelua
  L15_2 = L15_2.blockTable
  L15_2 = L15_2.blocks
  L16_2 = gamelua
  L16_2 = L16_2.objects
  L16_2 = L16_2.world
  L17_2 = A0_2.physicsObject
  L17_2 = L17_2.name
  L16_2 = L16_2[L17_2]
  L16_2 = L16_2.definition
  L15_2 = L15_2[L16_2]
  L15_2 = L15_2.backgroundObjects
  if L15_2 then
    L15_2 = _G
    L15_2 = L15_2.pairs
    L16_2 = gamelua
    L16_2 = L16_2.blockTable
    L16_2 = L16_2.blocks
    L17_2 = gamelua
    L17_2 = L17_2.objects
    L17_2 = L17_2.world
    L18_2 = A0_2.physicsObject
    L18_2 = L18_2.name
    L17_2 = L17_2[L18_2]
    L17_2 = L17_2.definition
    L16_2 = L16_2[L17_2]
    L16_2 = L16_2.backgroundObjects
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    for L18_2, L19_2 in L15_2, L16_2, L17_2 do
      L20_2 = L19_2.scoreBox
      if L20_2 then
        L20_2 = A0_2.disabled
        if L20_2 then
          goto lbl_245
        end
      end
      L20_2 = gamelua
      L20_2 = L20_2.objects
      L20_2 = L20_2.world
      L21_2 = A0_2.physicsObject
      L21_2 = L21_2.name
      L20_2 = L20_2[L21_2]
      L20_2 = L20_2.episodeRelativeX
      if not L20_2 then
        L20_2 = 0.5
      end
      L21_2 = gamelua
      L21_2 = L21_2.calculateScaleFactor
      L22_2 = L20_2
      L23_2 = L19_2
      L21_2 = L21_2(L22_2, L23_2)
      if 0 < L21_2 then
        L22_2 = gamelua
        L22_2 = L22_2.worldScale
        L22_2 = L22_2 * L21_2
        L23_2 = A0_2.scaleY
        L22_2 = L22_2 * L23_2
        L23_2 = A0_2.scoreBoxScale
        L22_2 = L22_2 * L23_2
        L23_2 = gamelua
        L23_2 = L23_2.worldScale
        L23_2 = L23_2 * L21_2
        L24_2 = A0_2.scaleX
        L23_2 = L23_2 * L24_2
        L24_2 = A0_2.scoreBoxScale
        L23_2 = L23_2 * L24_2
        L24_2 = L19_2.scaleAlpha
        if L24_2 then
          L24_2 = gamelua
          L24_2 = L24_2.setRenderState
          L25_2 = A0_2.x
          L25_2 = A1_2 + L25_2
          L25_2 = L25_2 / L23_2
          L26_2 = A0_2.y
          L26_2 = A2_2 + L26_2
          L26_2 = L26_2 / L22_2
          L27_2 = L23_2
          L28_2 = L22_2
          L29_2 = 0
          L30_2 = 0
          L31_2 = 0
          L32_2 = _G
          L32_2 = L32_2.math
          L32_2 = L32_2.min
          L33_2 = L21_2
          L34_2 = 1
          L32_2, L33_2, L34_2, L35_2, L36_2 = L32_2(L33_2, L34_2)
          L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
        else
          L24_2 = gamelua
          L24_2 = L24_2.setRenderState
          L25_2 = A0_2.x
          L25_2 = A1_2 + L25_2
          L25_2 = L25_2 / L23_2
          L26_2 = A0_2.y
          L26_2 = A2_2 + L26_2
          L26_2 = L26_2 / L22_2
          L27_2 = L23_2
          L28_2 = L22_2
          L29_2 = 0
          L30_2 = 0
          L31_2 = 0
          L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        end
        L24_2 = L19_2.sprite
        if L24_2 then
          L24_2 = _G
          L24_2 = L24_2.res
          L24_2 = L24_2.drawSprite
          L25_2 = L19_2.sprite
          L26_2 = 0
          L27_2 = 0
          L24_2(L25_2, L26_2, L27_2)
        end
        L24_2 = L19_2.text
        if L24_2 then
          L24_2 = _G
          L24_2 = L24_2.res
          L24_2 = L24_2.useFont
          L25_2 = A0_2.headlineFont
          L24_2(L25_2)
          L24_2 = _G
          L24_2 = L24_2.res
          L24_2 = L24_2.drawString
          L25_2 = "TEXTS_BASIC"
          L26_2 = L19_2.text
          L26_2 = L26_2.text
          L27_2 = L19_2.text
          L27_2 = L27_2.xOffset
          L28_2 = L19_2.text
          L28_2 = L28_2.yOffset
          L29_2 = "BOTTOM"
          L30_2 = "HCENTER"
          L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        end
        L24_2 = L19_2.flashAnimation
        if L24_2 then
          L24_2 = gamelua
          L24_2 = L24_2.cutsceneSetTranslation
          L25_2 = L19_2.flashAnimation
          L25_2 = L25_2.name
          L26_2 = A0_2.x
          L26_2 = A1_2 + L26_2
          L27_2 = L19_2.flashAnimation
          L27_2 = L27_2.width
          L27_2 = L27_2 * 0.5
          L27_2 = L27_2 * L23_2
          L26_2 = L26_2 - L27_2
          L27_2 = A0_2.y
          L27_2 = A2_2 + L27_2
          L28_2 = L19_2.flashAnimation
          L28_2 = L28_2.height
          L28_2 = L28_2 * 0.5
          L28_2 = L28_2 * L22_2
          L27_2 = L27_2 - L28_2
          L24_2(L25_2, L26_2, L27_2)
          L24_2 = gamelua
          L24_2 = L24_2.cutsceneSetScale
          L25_2 = L19_2.flashAnimation
          L25_2 = L25_2.name
          L26_2 = L23_2
          L27_2 = L22_2
          L24_2(L25_2, L26_2, L27_2)
          L24_2 = gamelua
          L24_2 = L24_2.drawCutscene
          L25_2 = L19_2.flashAnimation
          L25_2 = L25_2.name
          L24_2(L25_2)
        end
        L24_2 = L19_2.scaleAlpha
        if L24_2 then
          L24_2 = gamelua
          L24_2 = L24_2.setRenderState
          L25_2 = A0_2.x
          L25_2 = A1_2 + L25_2
          L25_2 = L25_2 / L23_2
          L26_2 = A0_2.y
          L26_2 = A2_2 + L26_2
          L26_2 = L26_2 / L22_2
          L27_2 = L23_2
          L28_2 = L22_2
          L29_2 = 0
          L30_2 = 0
          L31_2 = 0
          L32_2 = 1
          L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        end
        L24_2 = L19_2.scoreBox
        if L24_2 then
          L24_2 = scoreBoxPY
          L24_2 = -L24_2
          L25_2 = A0_2.scoreBoxH
          L25_2 = L25_2 / 2
          L24_2 = L24_2 + L25_2
          L9_2 = L24_2 * L22_2
          scoreBoxScaleFactor = L21_2
        end
      end
      ::lbl_245::
    end
  end
  L15_2 = gamelua
  L15_2 = L15_2.objects
  L15_2 = L15_2.world
  L16_2 = A0_2.physicsObject
  L16_2 = L16_2.name
  L15_2 = L15_2[L16_2]
  L15_2 = L15_2.episodeRelativeX
  if not L15_2 then
    L15_2 = 0.5
  end
  L16_2 = A0_2.scaleFactor
  L17_2 = A0_2.lightSideDisabled
  if L17_2 then
    L17_2 = A0_2.darkSideDisabled
    if L17_2 then
      goto lbl_278
    end
  end
  L17_2 = gamelua
  L17_2 = L17_2.ui
  L17_2 = L17_2.Frame
  L17_2 = L17_2.draw
  L18_2 = A0_2
  L19_2 = A1_2
  L20_2 = A2_2
  L21_2 = gamelua
  L21_2 = L21_2.worldScale
  L21_2 = L21_2 * L16_2
  L22_2 = gamelua
  L22_2 = L22_2.worldScale
  L22_2 = L22_2 * L16_2
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
  ::lbl_278::
  L17_2 = gamelua
  L17_2 = L17_2.blockTable
  L17_2 = L17_2.blocks
  L18_2 = gamelua
  L18_2 = L18_2.objects
  L18_2 = L18_2.world
  L19_2 = A0_2.physicsObject
  L19_2 = L19_2.name
  L18_2 = L18_2[L19_2]
  L18_2 = L18_2.definition
  L17_2 = L17_2[L18_2]
  L17_2 = L17_2.foregroundObjects
  if L17_2 then
    L17_2 = _G
    L17_2 = L17_2.pairs
    L18_2 = gamelua
    L18_2 = L18_2.blockTable
    L18_2 = L18_2.blocks
    L19_2 = gamelua
    L19_2 = L19_2.objects
    L19_2 = L19_2.world
    L20_2 = A0_2.physicsObject
    L20_2 = L20_2.name
    L19_2 = L19_2[L20_2]
    L19_2 = L19_2.definition
    L18_2 = L18_2[L19_2]
    L18_2 = L18_2.foregroundObjects
    L17_2, L18_2, L19_2 = L17_2(L18_2)
    for L20_2, L21_2 in L17_2, L18_2, L19_2 do
      L22_2 = gamelua
      L22_2 = L22_2.calculateScaleFactor
      L23_2 = L15_2
      L24_2 = L21_2
      L22_2 = L22_2(L23_2, L24_2)
      if 0 < L22_2 then
        L23_2 = gamelua
        L23_2 = L23_2.worldScale
        L23_2 = L23_2 * L22_2
        L24_2 = A0_2.scaleY
        L23_2 = L23_2 * L24_2
        L24_2 = A0_2.scoreBoxScale
        L23_2 = L23_2 * L24_2
        L24_2 = gamelua
        L24_2 = L24_2.worldScale
        L24_2 = L24_2 * L22_2
        L25_2 = A0_2.scaleX
        L24_2 = L24_2 * L25_2
        L25_2 = A0_2.scoreBoxScale
        L24_2 = L24_2 * L25_2
        L25_2 = 0
        L26_2 = L21_2.yOffset
        if L26_2 then
          L26_2 = L21_2.yOffset
          L27_2 = L21_2.centerScale
          L27_2 = L27_2 - L22_2
          L26_2 = L26_2 * L27_2
          L27_2 = gamelua
          L27_2 = L27_2.worldScale
          L25_2 = L26_2 * L27_2
        end
        L26_2 = L21_2.scaleAlpha
        if L26_2 then
          L26_2 = gamelua
          L26_2 = L26_2.setRenderState
          L27_2 = A0_2.x
          L27_2 = A1_2 + L27_2
          L27_2 = L27_2 / L24_2
          L28_2 = A0_2.y
          L28_2 = A2_2 + L28_2
          L28_2 = L28_2 + L25_2
          L28_2 = L28_2 / L23_2
          L29_2 = L24_2
          L30_2 = L23_2
          L31_2 = 0
          L32_2 = 0
          L33_2 = 0
          L34_2 = _G
          L34_2 = L34_2.math
          L34_2 = L34_2.min
          L35_2 = L22_2
          L36_2 = 1
          L34_2, L35_2, L36_2 = L34_2(L35_2, L36_2)
          L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
        else
          L26_2 = gamelua
          L26_2 = L26_2.setRenderState
          L27_2 = A0_2.x
          L27_2 = A1_2 + L27_2
          L27_2 = L27_2 / L24_2
          L28_2 = A0_2.y
          L28_2 = A2_2 + L28_2
          L28_2 = L28_2 + L25_2
          L28_2 = L28_2 / L23_2
          L29_2 = L24_2
          L30_2 = L23_2
          L31_2 = 0
          L32_2 = 0
          L33_2 = 0
          L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
        end
        L26_2 = _G
        L26_2 = L26_2.res
        L26_2 = L26_2.drawSprite
        L27_2 = L21_2.sprite
        L28_2 = 0
        L29_2 = 0
        L26_2(L27_2, L28_2, L29_2)
        L26_2 = L21_2.scaleAlpha
        if L26_2 then
          L26_2 = gamelua
          L26_2 = L26_2.setRenderState
          L27_2 = A0_2.x
          L27_2 = A1_2 + L27_2
          L27_2 = L27_2 / L24_2
          L28_2 = A0_2.y
          L28_2 = A2_2 + L28_2
          L28_2 = L28_2 / L23_2
          L29_2 = L24_2
          L30_2 = L23_2
          L31_2 = 0
          L32_2 = 0
          L33_2 = 0
          L34_2 = 1
          L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
        end
      end
    end
  end
  L17_2 = A0_2.lightSideDisabled
  if L17_2 then
    L17_2 = A0_2.darkSideDisabled
    if L17_2 then
      L17_2 = A0_2.scaleY
      L17_2 = L4_2 * L17_2
      L18_2 = A0_2.scoreBoxScale
      L17_2 = L17_2 * L18_2
      L17_2 = L17_2 * 1.5
      L18_2 = A0_2.scaleX
      L18_2 = L4_2 * L18_2
      L19_2 = A0_2.scoreBoxScale
      L18_2 = L18_2 * L19_2
      L18_2 = L18_2 * 1.5
      L19_2 = gamelua
      L19_2 = L19_2.setRenderState
      L20_2 = A0_2.x
      L20_2 = A1_2 + L20_2
      L20_2 = L20_2 / L18_2
      L21_2 = A0_2.y
      L21_2 = A2_2 + L21_2
      L21_2 = L21_2 / L17_2
      L22_2 = L18_2
      L23_2 = L17_2
      L24_2 = 0
      L25_2 = 0
      L26_2 = 0
      L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L19_2 = _G
      L19_2 = L19_2.res
      L19_2 = L19_2.drawSprite
      L20_2 = A0_2.lockedImage
      L21_2 = 0
      L22_2 = 0
      L19_2(L20_2, L21_2, L22_2)
      L19_2 = A0_2.isBonus
      if not L19_2 then
        L19_2 = A0_2.isComingSoonButton
        if not L19_2 then
          L19_2 = A0_2.priceText
          if L19_2 then
            L19_2 = L18_2 * 0.5
            L20_2 = L17_2 * 0.5
            L21_2 = gamelua
            L21_2 = L21_2.setRenderState
            L22_2 = A0_2.x
            L22_2 = A1_2 + L22_2
            L22_2 = L22_2 / L19_2
            L23_2 = A0_2.y
            L23_2 = A2_2 + L23_2
            L24_2 = A0_2.fontH
            L24_2 = L24_2 * L20_2
            L24_2 = L24_2 * 3
            L23_2 = L23_2 + L24_2
            L23_2 = L23_2 / L20_2
            L24_2 = L19_2
            L25_2 = L20_2
            L26_2 = 0
            L27_2 = 0
            L28_2 = 0
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
            L21_2 = gamelua
            L21_2 = L21_2.setFont
            L22_2 = gamelua
            L22_2 = L22_2.getFontBasic
            L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2 = L22_2()
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
            L21_2 = _G
            L21_2 = L21_2.res
            L21_2 = L21_2.drawString
            L22_2 = "TEXT_BASIC"
            L23_2 = A0_2.priceTextDisclaimerText
            L24_2 = 0
            L25_2 = 0
            L26_2 = "HCENTER"
            L27_2 = "VCENTER"
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
            L21_2 = gamelua
            L21_2 = L21_2.setRenderState
            L22_2 = A0_2.x
            L22_2 = A1_2 + L22_2
            L22_2 = L22_2 / L19_2
            L23_2 = A0_2.y
            L23_2 = A2_2 + L23_2
            L24_2 = A0_2.fontH
            L24_2 = L24_2 * L20_2
            L24_2 = L24_2 * 4
            L23_2 = L23_2 + L24_2
            L23_2 = L23_2 / L20_2
            L24_2 = L19_2
            L25_2 = L20_2
            L26_2 = 0
            L27_2 = 0
            L28_2 = 0
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
            L21_2 = gamelua
            L21_2 = L21_2.setFont
            L22_2 = gamelua
            L22_2 = L22_2.getFontBasic
            L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2 = L22_2()
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
            L21_2 = _G
            L21_2 = L21_2.res
            L21_2 = L21_2.drawString
            L22_2 = "TEXT_BASIC"
            L23_2 = A0_2.priceTextDisclaimerText2
            L24_2 = 0
            L25_2 = 0
            L26_2 = "HCENTER"
            L27_2 = "VCENTER"
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
            L21_2 = gamelua
            L21_2 = L21_2.setRenderState
            L22_2 = A0_2.x
            L22_2 = A1_2 + L22_2
            L22_2 = L22_2 / L19_2
            L23_2 = A0_2.y
            L23_2 = A2_2 + L23_2
            L24_2 = A0_2.fontH
            L24_2 = L24_2 * L20_2
            L24_2 = L24_2 * 5
            L23_2 = L23_2 + L24_2
            L23_2 = L23_2 / L20_2
            L24_2 = L19_2
            L25_2 = L20_2
            L26_2 = 0
            L27_2 = 0
            L28_2 = 0
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
            L21_2 = gamelua
            L21_2 = L21_2.setFont
            L22_2 = A0_2.moneyFont
            L21_2(L22_2)
            L21_2 = _G
            L21_2 = L21_2.res
            L21_2 = L21_2.drawString
            L22_2 = "TEXT_BASIC"
            L23_2 = A0_2.priceText
            L24_2 = 0
            L25_2 = 0
            L26_2 = "HCENTER"
            L27_2 = "VCENTER"
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          end
        end
      end
    end
  end
  L17_2 = gamelua
  L17_2 = L17_2.setRenderState
  L18_2 = 0
  L19_2 = 0
  L20_2 = 1
  L21_2 = 1
  L22_2 = 0
  L23_2 = 0
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
end

L0_1.draw = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_CHARACTER_ACHIEVEMENT_UNLOCKED
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.updateBadges
    L2_2(L3_2)
  end
end

L0_1.eventTriggered = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_ACHIEVEMENT_UNLOCKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.updateBadges
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = LightDarkEpisodeButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.flashAnimations
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = A0_2.flashAnimations
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = gamelua
      L6_2 = L6_2.cutsceneClose
      L7_2 = L4_2
      L6_2(L7_2)
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CHARACTER_ACHIEVEMENT_UNLOCKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
