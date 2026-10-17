local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
BonusLevelButton = L0_1
L0_1 = BonusLevelButton
L1_1 = {}
L0_1.m_drawBatches = L1_1
L0_1 = BonusLevelButton
L0_1.totalStars = nil
L0_1 = BonusLevelButton
L0_1.BUTTON_SCALE = 1
L0_1 = BonusLevelButton
L0_1.TELEPOD_SCALE = 0.5
L0_1 = BonusLevelButton
L1_1 = gamelua
L1_1 = L1_1.getFontScore
L1_1 = L1_1()
L0_1.SCORE_FONT = L1_1
L0_1 = BonusLevelButton

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = BonusLevelButton
  L1_2 = gamelua
  L1_2 = L1_2.calculateStarsForAllEpisodes
  L1_2 = L1_2()
  L0_2.totalStars = L1_2
  L0_2 = BonusLevelButton
  L1_2 = _G
  L1_2 = L1_2.string
  L1_2 = L1_2.format
  L2_2 = "%.0f"
  L3_2 = BonusLevelButton
  L3_2 = L3_2.totalStars
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.formattedTotalStars = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.setFont
  L1_2 = BonusLevelButton
  L1_2 = L1_2.SCORE_FONT
  L0_2(L1_2)
  L0_2 = BonusLevelButton
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getStringWidth
  L2_2 = BonusLevelButton
  L2_2 = L2_2.formattedTotalStars
  L1_2 = L1_2(L2_2)
  L0_2.formattedTotalStarsStringW = L1_2
end

L0_1.calculateEpisodeStars = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.ImageButton
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.image
  A0_2.originalImageUnlocked = L1_2
  A0_2.inWorld = true
  A0_2.disabledClickSound = "LevelLocked"
  A0_2.clickSound = "ButtonProceed"
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.image
  L1_2, L2_2 = L1_2(L2_2)
  A0_2.h = L2_2
  A0_2.w = L1_2
  L1_2 = A0_2.isDark
  A0_2.isDark = L1_2
  L1_2 = BonusLevelButton
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "SCORE_BOX_STAR"
  L2_2 = L2_2(L3_2)
  L1_2.scoreBoxStarW = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.deviceModel
  if L1_2 == "wp8" then
    L1_2 = _G
    L1_2 = L1_2.res
    L1_2 = L1_2.setClipRect
    L2_2 = 0
    L3_2 = 0
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.g_usingPhoneCamera
  if L1_2 then
    L1_2 = BonusLevelButton
    L1_2.BUTTON_SCALE = 1.3
    L1_2 = BonusLevelButton
    L1_2 = L1_2.BUTTON_SCALE
    A0_2.hitAreaScale = L1_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.getQuest
  L2_2 = A0_2.bonusLevelAchievement
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.rewardImage
  A0_2.bonusCharacterSprite = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.getCurrentQuestProgress
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = gamelua
  L3_2 = L3_2.getCurrentQuestGoal
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 / L3_2
  L2_2 = L2_2 * 100
  A0_2.openPercentage = L2_2
  L2_2 = A0_2.inactive
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.getCurrentQuestProgress
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 <= 0 then
      A0_2.showCharacter = false
  end
  else
    A0_2.showCharacter = true
  end
  L2_2 = A0_2.showCharacter
  if L2_2 then
    L2_2 = A0_2.openPercentage
    if L2_2 < 100 then
      A0_2.showGauge = true
      L2_2 = ui
      L2_2 = L2_2.ProgressBar
      L3_2 = L2_2
      L2_2 = L2_2.new
      L4_2 = {}
      L5_2 = "progressBar_"
      L6_2 = A0_2.name
      L5_2 = L5_2 .. L6_2
      L4_2.name = L5_2
      L2_2 = L2_2(L3_2, L4_2)
      A0_2.progress = L2_2
      L2_2 = "LIGHT"
      L3_2 = A0_2.isDark
      if L3_2 then
        L2_2 = "SITH"
      end
      L3_2 = A0_2.progress
      L4_2 = L3_2
      L3_2 = L3_2.setImages
      L5_2 = "BOX_GAUGE_EMPTY_"
      L6_2 = L2_2
      L5_2 = L5_2 .. L6_2
      L6_2 = "BOX_GAUGE_FULL_"
      L7_2 = L2_2
      L6_2 = L6_2 .. L7_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2.progress
      L4_2 = L3_2
      L3_2 = L3_2.setValue
      L5_2 = A0_2.openPercentage
      L3_2(L4_2, L5_2)
      L3_2 = A0_2.progress
      L4_2 = L3_2
      L3_2 = L3_2.setMax
      L5_2 = 100
      L3_2(L4_2, L5_2)
  end
  else
    A0_2.showGauge = false
  end
  L2_2 = gamelua
  L2_2 = L2_2.getButtonImageName
  L3_2 = "pauseMenuResumeButton"
  L4_2 = A0_2.isDark
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.playButtonName = L2_2
  L2_2 = A0_2.inactive
  if L2_2 then
    A0_2.showPlayButton = false
  else
    A0_2.showPlayButton = true
  end
  L2_2 = BonusLevelButton
  L2_2 = L2_2.totalStars
  if not L2_2 then
    L2_2 = BonusLevelButton
    L2_2 = L2_2.calculateEpisodeStars
    L2_2()
  end
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isTelepodCharacterScanned
  L4_2 = L1_2.title
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    A0_2.showTelepodBadge = true
  end
end

L0_1.init = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.iapId
  if L1_2 ~= nil then
    L1_2 = spriteBeforePurchase
    A0_2.spriteLocked = L1_2
  end
end

L0_1.onEntry = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2, A1_2)
end

L0_1.eventTriggered = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L2_2 = L1_2
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.ScallableButton
  L2_2 = L2_2.layout
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.layout = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = BonusLevelButton
  L3_2 = L3_2.clearBatches
  if L3_2 then
    L3_2 = BonusLevelButton
    L4_2 = {}
    L3_2.m_drawBatches = L4_2
    L3_2 = BonusLevelButton
    L3_2.clearBatches = false
  end
  L3_2 = BonusLevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = BonusLevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[1]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[1] = L4_2
  L3_2 = BonusLevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = BonusLevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[2] = L4_2
  L3_2 = BonusLevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = BonusLevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[3]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[3] = L4_2
  L3_2 = BonusLevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = BonusLevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[4]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[4] = L4_2
  L3_2 = BonusLevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = BonusLevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[5]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[5] = L4_2
  L3_2 = BonusLevelButton
  L3_2.batchesDrawn = false
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.ScallableButton
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.setupDrawBatches
  L5_2 = 0
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.x
  L5_2 = A0_2.px
  L4_2 = L4_2 - L5_2
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  if not (L4_2 > L5_2) then
    L4_2 = A0_2.px
    L5_2 = A0_2.x
    L4_2 = L4_2 + L5_2
    if not (L4_2 < 0) then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.ScallableButton
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = 1
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L5_2 = A0_2.physicsObject
  L5_2 = L5_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.scale
  L5_2 = gamelua
  L5_2 = L5_2.worldScale
  L6_2 = L5_2 * L3_2
  L7_2 = A0_2.scaleX
  L6_2 = L6_2 * L7_2
  L6_2 = L6_2 * L4_2
  L7_2 = BonusLevelButton
  L7_2 = L7_2.BUTTON_SCALE
  L6_2 = L6_2 * L7_2
  L7_2 = L5_2 * L3_2
  L8_2 = A0_2.scaleY
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 * L4_2
  L8_2 = BonusLevelButton
  L8_2 = L8_2.BUTTON_SCALE
  L7_2 = L7_2 * L8_2
  L8_2 = 1.6
  L9_2 = A0_2.x
  L9_2 = A1_2 + L9_2
  L10_2 = A0_2.px
  L10_2 = L10_2 * L6_2
  L10_2 = L10_2 * L8_2
  L9_2 = L9_2 - L10_2
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  if not (L9_2 > L10_2) then
    L9_2 = A0_2.px
    L9_2 = L9_2 * L6_2
    L9_2 = L9_2 * L8_2
    L9_2 = A1_2 + L9_2
    L10_2 = A0_2.x
    L9_2 = L9_2 + L10_2
    if not (L9_2 < 0) then
      goto lbl_45
    end
  end
  do return end
  ::lbl_45::
  L9_2 = gamelua
  L9_2 = L9_2.deviceModel
  if L9_2 == "iphone" then
    L9_2 = gamelua
    L5_2 = L9_2.worldScale
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L5_2
    L1_3 = L3_2
    L0_3 = L0_3 * L1_3
    L1_3 = A0_2
    L1_3 = L1_3.scaleX
    L0_3 = L0_3 * L1_3
    L1_3 = L4_2
    L0_3 = L0_3 * L1_3
    L1_3 = BonusLevelButton
    L1_3 = L1_3.BUTTON_SCALE
    L0_3 = L0_3 * L1_3
    L6_2 = L0_3
    L0_3 = L5_2
    L1_3 = L3_2
    L0_3 = L0_3 * L1_3
    L1_3 = A0_2
    L1_3 = L1_3.scaleY
    L0_3 = L0_3 * L1_3
    L1_3 = L4_2
    L0_3 = L0_3 * L1_3
    L1_3 = BonusLevelButton
    L1_3 = L1_3.BUTTON_SCALE
    L0_3 = L0_3 * L1_3
    L7_2 = L0_3
    L0_3 = gamelua
    L0_3 = L0_3.setRenderState
    L1_3 = A1_2
    L2_3 = A0_2
    L2_3 = L2_3.x
    L3_3 = L6_2
    L2_3 = L2_3 / L3_3
    L1_3 = L1_3 + L2_3
    L2_3 = A2_2
    L3_3 = A0_2
    L3_3 = L3_3.y
    L4_3 = L7_2
    L3_3 = L3_3 / L4_3
    L2_3 = L2_3 + L3_3
    L3_3 = L6_2
    L4_3 = L7_2
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = 1
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L0_3 = _G
    L0_3 = L0_3.res
    L0_3 = L0_3.drawSprite
    L1_3 = ""
    L2_3 = A0_2
    L2_3 = L2_3.spriteBack
    L3_3 = 0
    L4_3 = 0
    L5_3 = "HCENTER"
    L6_3 = "VCENTER"
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = 1
  L15_2 = A0_2.showCharacter
  if not L15_2 then
    L14_2 = 0.2
  end
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = gamelua
    L0_3 = L0_3.setRenderState
    L1_3 = A1_2
    L2_3 = A0_2
    L2_3 = L2_3.x
    L1_3 = L1_3 + L2_3
    L2_3 = L6_2
    L1_3 = L1_3 / L2_3
    L2_3 = A2_2
    L3_3 = A0_2
    L3_3 = L3_3.y
    L2_3 = L2_3 + L3_3
    L3_3 = L7_2
    L2_3 = L2_3 / L3_3
    L3_3 = L6_2
    L4_3 = L7_2
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = L14_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L0_3 = _G
    L0_3 = L0_3.res
    L0_3 = L0_3.drawSprite
    L1_3 = ""
    L2_3 = A0_2
    L2_3 = L2_3.bonusCharacterSprite
    L3_3 = 0
    L4_3 = 0
    L5_3 = "HPIVOT"
    L6_3 = "VPIVOT"
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = A0_2
    L0_3 = L0_3.physicsObject
    L0_3 = L0_3.startNumber
    if L0_3 ~= nil then
      L0_3 = gamelua
      L0_3 = L0_3.setRenderState
      L1_3 = A1_2
      L2_3 = A0_2
      L2_3 = L2_3.x
      L3_3 = L6_2
      L2_3 = L2_3 / L3_3
      L1_3 = L1_3 + L2_3
      L2_3 = A2_2
      L3_3 = A0_2
      L3_3 = L3_3.y
      L4_3 = L7_2
      L3_3 = L3_3 / L4_3
      L2_3 = L2_3 + L3_3
      L3_3 = L6_2
      L4_3 = L7_2
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L0_3 = _G
      L0_3 = L0_3.res
      L0_3 = L0_3.drawSprite
      L1_3 = ""
      L2_3 = A0_2
      L2_3 = L2_3.sprite
      L3_3 = 0
      L4_3 = 0
      L5_3 = "HCENTER"
      L6_3 = "VCENTER"
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
  end
  
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L5_2
    L1_3 = L3_2
    L0_3 = L0_3 * L1_3
    L1_3 = A0_2
    L1_3 = L1_3.scaleX
    L0_3 = L0_3 * L1_3
    L1_3 = L4_2
    L0_3 = L0_3 * L1_3
    L1_3 = BonusLevelButton
    L1_3 = L1_3.BUTTON_SCALE
    L0_3 = L0_3 * L1_3
    L6_2 = L0_3
    L0_3 = L5_2
    L1_3 = L3_2
    L0_3 = L0_3 * L1_3
    L1_3 = A0_2
    L1_3 = L1_3.scaleY
    L0_3 = L0_3 * L1_3
    L1_3 = L4_2
    L0_3 = L0_3 * L1_3
    L1_3 = BonusLevelButton
    L1_3 = L1_3.BUTTON_SCALE
    L0_3 = L0_3 * L1_3
    L7_2 = L0_3
    L0_3 = A0_2
    L0_3 = L0_3.showCharacter
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.inactive
      if not L0_3 then
        L0_3 = gamelua
        L0_3 = L0_3.setRenderState
        L1_3 = A1_2
        L2_3 = A0_2
        L2_3 = L2_3.x
        L3_3 = L6_2
        L2_3 = L2_3 / L3_3
        L1_3 = L1_3 + L2_3
        L2_3 = A2_2
        L3_3 = A0_2
        L3_3 = L3_3.y
        L2_3 = L2_3 + L3_3
        L3_3 = A0_2
        L3_3 = L3_3.h
        L3_3 = L3_3 * 0.1
        L4_3 = L5_2
        L3_3 = L3_3 * L4_3
        L2_3 = L2_3 + L3_3
        L3_3 = L7_2
        L2_3 = L2_3 / L3_3
        L3_3 = L6_2
        L4_3 = L7_2
        L5_3 = 0
        L6_3 = 0
        L7_3 = 0
        L8_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L0_3 = _G
        L0_3 = L0_3.res
        L0_3 = L0_3.drawSprite
        L1_3 = ""
        L2_3 = "LEVELSTAR"
        L3_3 = A0_2
        L3_3 = L3_3.stars
        L2_3 = L2_3 .. L3_3
        L3_3 = 0
        L4_3 = A0_2
        L4_3 = L4_3.starsYOffset
        L5_3 = "HPIVOT"
        L6_3 = "VPIVOT"
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
    else
      L0_3 = A0_2
      L0_3 = L0_3.showGauge
      if L0_3 then
        L0_3 = gamelua
        L0_3 = L0_3.setRenderState
        L1_3 = A1_2
        L2_3 = A0_2
        L2_3 = L2_3.x
        L3_3 = L6_2
        L2_3 = L2_3 / L3_3
        L1_3 = L1_3 + L2_3
        L2_3 = A2_2
        L3_3 = A0_2
        L3_3 = L3_3.y
        L4_3 = L7_2
        L3_3 = L3_3 / L4_3
        L2_3 = L2_3 + L3_3
        L3_3 = L6_2
        L4_3 = L7_2
        L5_3 = 0
        L6_3 = 0
        L7_3 = 0
        L8_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L0_3 = A0_2
        L0_3 = L0_3.progress
        L1_3 = L0_3
        L0_3 = L0_3.draw
        L2_3 = A0_2
        L2_3 = L2_3.x
        L3_3 = A0_2
        L3_3 = L3_3.y
        L4_3 = A0_2
        L4_3 = L4_3.progressYOffset
        L5_3 = L7_2
        L4_3 = L4_3 * L5_3
        L3_3 = L3_3 + L4_3
        L4_3 = L6_2
        L5_3 = L7_2
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
    end
  end
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = A0_2
    L0_3 = L0_3.showPlayButton
    if L0_3 then
      L0_3 = L5_2
      L1_3 = L3_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.scaleX
      L0_3 = L0_3 * L1_3
      L1_3 = L4_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.playButtonScale
      L0_3 = L0_3 * L1_3
      L1_3 = BonusLevelButton
      L1_3 = L1_3.BUTTON_SCALE
      L0_3 = L0_3 * L1_3
      L6_2 = L0_3
      L0_3 = L5_2
      L1_3 = L3_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.scaleY
      L0_3 = L0_3 * L1_3
      L1_3 = L4_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.playButtonScale
      L0_3 = L0_3 * L1_3
      L1_3 = BonusLevelButton
      L1_3 = L1_3.BUTTON_SCALE
      L0_3 = L0_3 * L1_3
      L7_2 = L0_3
      L0_3 = gamelua
      L0_3 = L0_3.setRenderState
      L1_3 = A1_2
      L2_3 = A0_2
      L2_3 = L2_3.x
      L3_3 = L6_2
      L2_3 = L2_3 / L3_3
      L1_3 = L1_3 + L2_3
      L2_3 = A2_2
      L3_3 = A0_2
      L3_3 = L3_3.y
      L4_3 = L7_2
      L3_3 = L3_3 / L4_3
      L2_3 = L2_3 + L3_3
      L3_3 = L6_2
      L4_3 = L7_2
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L0_3 = _G
      L0_3 = L0_3.res
      L0_3 = L0_3.drawSprite
      L1_3 = ""
      L2_3 = A0_2
      L2_3 = L2_3.playButtonName
      L3_3 = 0
      L4_3 = A0_2
      L4_3 = L4_3.playButtonYOffset
      L5_3 = "HPIVOT"
      L6_3 = "VPIVOT"
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    else
      L0_3 = L5_2
      L1_3 = L3_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.scaleX
      L0_3 = L0_3 * L1_3
      L1_3 = L4_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.lockScale
      L0_3 = L0_3 * L1_3
      L1_3 = BonusLevelButton
      L1_3 = L1_3.BUTTON_SCALE
      L0_3 = L0_3 * L1_3
      L6_2 = L0_3
      L0_3 = L5_2
      L1_3 = L3_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.scaleY
      L0_3 = L0_3 * L1_3
      L1_3 = L4_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.lockScale
      L0_3 = L0_3 * L1_3
      L1_3 = BonusLevelButton
      L1_3 = L1_3.BUTTON_SCALE
      L0_3 = L0_3 * L1_3
      L7_2 = L0_3
      L0_3 = gamelua
      L0_3 = L0_3.setRenderState
      L1_3 = A1_2
      L2_3 = A0_2
      L2_3 = L2_3.x
      L3_3 = L6_2
      L2_3 = L2_3 / L3_3
      L1_3 = L1_3 + L2_3
      L2_3 = A2_2
      L3_3 = A0_2
      L3_3 = L3_3.y
      L4_3 = L7_2
      L3_3 = L3_3 / L4_3
      L2_3 = L2_3 + L3_3
      L3_3 = L6_2
      L4_3 = L7_2
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L0_3 = _G
      L0_3 = L0_3.res
      L0_3 = L0_3.drawSprite
      L1_3 = ""
      L2_3 = "EPISODE_PLANET_LOCK"
      L3_3 = 0
      L4_3 = A0_2
      L4_3 = L4_3.playButtonYOffset
      L5_3 = "HPIVOT"
      L6_3 = "VPIVOT"
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
    L0_3 = A0_2
    L0_3 = L0_3.showTelepodBadge
    if L0_3 then
      L0_3 = L5_2
      L1_3 = L3_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.scaleX
      L0_3 = L0_3 * L1_3
      L1_3 = L4_2
      L0_3 = L0_3 * L1_3
      L1_3 = BonusLevelButton
      L1_3 = L1_3.TELEPOD_SCALE
      L0_3 = L0_3 * L1_3
      L6_2 = L0_3
      L0_3 = L5_2
      L1_3 = L3_2
      L0_3 = L0_3 * L1_3
      L1_3 = A0_2
      L1_3 = L1_3.scaleY
      L0_3 = L0_3 * L1_3
      L1_3 = L4_2
      L0_3 = L0_3 * L1_3
      L1_3 = BonusLevelButton
      L1_3 = L1_3.TELEPOD_SCALE
      L0_3 = L0_3 * L1_3
      L7_2 = L0_3
      L0_3 = gamelua
      L0_3 = L0_3.setRenderState
      L1_3 = A1_2
      L2_3 = A0_2
      L2_3 = L2_3.x
      L3_3 = L6_2
      L2_3 = L2_3 / L3_3
      L1_3 = L1_3 + L2_3
      L2_3 = A2_2
      L3_3 = A0_2
      L3_3 = L3_3.y
      L4_3 = L7_2
      L3_3 = L3_3 / L4_3
      L2_3 = L2_3 + L3_3
      L3_3 = L6_2
      L4_3 = L7_2
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L0_3 = _G
      L0_3 = L0_3.res
      L0_3 = L0_3.drawSprite
      L1_3 = ""
      L2_3 = "TELEPOD_LOGO_TEXT"
      L3_3 = -140
      L4_3 = 100
      L5_3 = "HPIVOT"
      L6_3 = "VPIVOT"
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
  end
  
  L15_2 = _G
  L15_2 = L15_2.table
  L15_2 = L15_2.insert
  L16_2 = BonusLevelButton
  L16_2 = L16_2.m_drawBatches
  L16_2 = L16_2[1]
  L17_2 = L9_2
  L15_2(L16_2, L17_2)
  L15_2 = _G
  L15_2 = L15_2.table
  L15_2 = L15_2.insert
  L16_2 = BonusLevelButton
  L16_2 = L16_2.m_drawBatches
  L16_2 = L16_2[2]
  L17_2 = L10_2
  L15_2(L16_2, L17_2)
  L15_2 = _G
  L15_2 = L15_2.table
  L15_2 = L15_2.insert
  L16_2 = BonusLevelButton
  L16_2 = L16_2.m_drawBatches
  L16_2 = L16_2[3]
  L17_2 = L11_2
  L15_2(L16_2, L17_2)
  L15_2 = _G
  L15_2 = L15_2.table
  L15_2 = L15_2.insert
  L16_2 = BonusLevelButton
  L16_2 = L16_2.m_drawBatches
  L16_2 = L16_2[4]
  L17_2 = L12_2
  L15_2(L16_2, L17_2)
  L15_2 = _G
  L15_2 = L15_2.table
  L15_2 = L15_2.insert
  L16_2 = BonusLevelButton
  L16_2 = L16_2.m_drawBatches
  L16_2 = L16_2[5]
  L17_2 = L13_2
  L15_2(L16_2, L17_2)
end

L0_1.setupDrawBatches = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = BonusLevelButton
  L3_2 = L3_2.batchesDrawn
  if L3_2 ~= true then
    L3_2 = BonusLevelButton
    L4_2 = L3_2
    L3_2 = L3_2.handleDrawBatches
    L3_2(L4_2)
    L3_2 = BonusLevelButton
    L3_2.batchesDrawn = true
  end
end

L0_1.draw = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = BonusLevelButton
  L1_2.totalStars = nil
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = BonusLevelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = BonusLevelButton
  L2_2 = L2_2.m_drawBatches
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2
      L11_2()
    end
  end
  L1_2 = BonusLevelButton
  L1_2.clearBatches = true
end

L0_1.handleDrawBatches = L1_1
