local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
LevelButton = L0_1
L0_1 = LevelButton
L1_1 = {}
L0_1.m_drawBatches = L1_1
L0_1 = LevelButton
L0_1.totalStars = nil
L0_1 = LevelButton
L0_1.LEVEL_NUMBER_SCALE = 0.1
L0_1 = LevelButton
L0_1.BUTTON_SCALE = 1
L0_1 = LevelButton
L1_1 = gamelua
L1_1 = L1_1.getFontScore
L1_1 = L1_1()
L0_1.SCORE_FONT = L1_1
L0_1 = LevelButton

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = LevelButton
  L1_2 = gamelua
  L1_2 = L1_2.calculateStarsForAllEpisodes
  L1_2 = L1_2()
  L0_2.totalStars = L1_2
  L0_2 = LevelButton
  L1_2 = _G
  L1_2 = L1_2.string
  L1_2 = L1_2.format
  L2_2 = "%.0f"
  L3_2 = LevelButton
  L3_2 = L3_2.totalStars
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.formattedTotalStars = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.setFont
  L1_2 = LevelButton
  L1_2 = L1_2.SCORE_FONT
  L0_2(L1_2)
  L0_2 = LevelButton
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getStringWidth
  L2_2 = LevelButton
  L2_2 = L2_2.formattedTotalStars
  L1_2 = L1_2(L2_2)
  L0_2.formattedTotalStarsStringW = L1_2
end

L0_1.calculateEpisodeStars = L1_1
L0_1 = LevelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
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
  A0_2.particleTimer = 0
  L1_2 = LevelButton
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "SCORE_BOX_STAR"
  L2_2 = L2_2(L3_2)
  L1_2.scoreBoxStarW = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.g_usingPhoneCamera
  if L1_2 then
    L1_2 = LevelButton
    L1_2.BUTTON_SCALE = 1.1
    L1_2 = LevelButton
    L1_2.LEVEL_NUMBER_SCALE = 0.11
    L1_2 = LevelButton
    L1_2 = L1_2.BUTTON_SCALE
    A0_2.hitAreaScale = L1_2
  end
  L1_2 = LevelButton
  L1_2 = L1_2.totalStars
  if not L1_2 then
    L1_2 = LevelButton
    L1_2 = L1_2.calculateEpisodeStars
    L1_2()
  end
end

L0_1.init = L1_1
L0_1 = LevelButton

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
L0_1 = LevelButton

function L1_1(A0_2, A1_2)
end

L0_1.eventTriggered = L1_1
L0_1 = LevelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.renderLevelNumber
  if L1_2 ~= nil then
    L1_2 = _G
    L1_2 = L1_2.string
    L1_2 = L1_2.format
    L2_2 = "%.0f"
    L3_2 = A0_2.renderLevelNumber
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.formattedNumber = L1_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.physicsObject
  L2_2 = L2_2.definition
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.levelNumberPrefix
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.blockTable
    L1_2 = L1_2.blocks
    L2_2 = A0_2.physicsObject
    L2_2 = L2_2.definition
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.levelNumberPrefix
    L2_2 = A0_2.formattedNumber
    L1_2 = L1_2 .. L2_2
    A0_2.formattedNumber = L1_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.ScallableButton
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.layout = L1_1
L0_1 = LevelButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.disabled
  if not L1_2 then
    L1_2 = A0_2.inactive
    if not L1_2 then
      return
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "hologram"
  L1_2(L2_2)
  L1_2 = A0_2.openingAnimation
  if L1_2 then
    A0_2.openingAnimationFrame = 1
    A0_2.openingAnimationTimer = 0
    L1_2 = A0_2.openingAnimation
    L1_2 = L1_2[1]
    A0_2.image = L1_2
  else
    L1_2 = A0_2.originalImageUnlocked
    A0_2.image = L1_2
  end
end

L0_1.startOpeningAnimation = L1_1
L0_1 = LevelButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LevelButton
  L3_2 = L3_2.clearBatches
  if L3_2 then
    L3_2 = LevelButton
    L4_2 = {}
    L3_2.m_drawBatches = L4_2
    L3_2 = LevelButton
    L3_2.clearBatches = false
  end
  L3_2 = LevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = LevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[1]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[1] = L4_2
  L3_2 = LevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = LevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[2] = L4_2
  L3_2 = LevelButton
  L3_2 = L3_2.m_drawBatches
  L4_2 = LevelButton
  L4_2 = L4_2.m_drawBatches
  L4_2 = L4_2[3]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[3] = L4_2
  L3_2 = LevelButton
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
  L3_2 = A0_2.particles
  if L3_2 then
    L3_2 = A0_2.disabled
    if L3_2 == true then
      L3_2 = gamelua
      L3_2 = L3_2.isPhysicsEnabled
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = A0_2.particleTimer
        L3_2 = L3_2 + A1_2
        A0_2.particleTimer = L3_2
        L3_2 = A0_2.particleTriggerTime
        if not L3_2 then
          L3_2 = A0_2.particleTiming
          L3_2 = L3_2[1]
          L4_2 = _G
          L4_2 = L4_2.math
          L4_2 = L4_2.random
          L4_2 = L4_2()
          L5_2 = A0_2.particleTiming
          L5_2 = L5_2[2]
          L6_2 = A0_2.particleTiming
          L6_2 = L6_2[1]
          L5_2 = L5_2 - L6_2
          L4_2 = L4_2 * L5_2
          L3_2 = L3_2 + L4_2
          A0_2.particleTriggerTime = L3_2
        end
        L3_2 = A0_2.particleTimer
        L4_2 = A0_2.particleTriggerTime
        if L3_2 >= L4_2 then
          A0_2.particleTimer = 0
          L3_2 = A0_2.particleTiming
          L3_2 = L3_2[1]
          L4_2 = _G
          L4_2 = L4_2.math
          L4_2 = L4_2.random
          L4_2 = L4_2()
          L5_2 = A0_2.particleTiming
          L5_2 = L5_2[2]
          L6_2 = A0_2.particleTiming
          L6_2 = L6_2[1]
          L5_2 = L5_2 - L6_2
          L4_2 = L4_2 * L5_2
          L3_2 = L3_2 + L4_2
          A0_2.particleTriggerTime = L3_2
          L3_2 = gamelua
          L3_2 = L3_2.putMenuParticles
          L4_2 = {}
          L5_2 = A0_2.x
          L4_2.x = L5_2
          L5_2 = A0_2.y
          L4_2.y = L5_2
          L5_2 = A0_2.particles
          L4_2.particles = L5_2
          L4_2.amount = 1
          L3_2(L4_2)
        end
      end
    end
  end
  L3_2 = A0_2.openingAnimationTimer
  if L3_2 then
    L3_2 = A0_2.openingAnimationTimer
    L3_2 = L3_2 + A1_2
    A0_2.openingAnimationTimer = L3_2
    L3_2 = A0_2.openingAnimationTimer
    L4_2 = A0_2.openingAnimationFrameDuration
    if L3_2 > L4_2 then
      L3_2 = A0_2.openingAnimationTimer
      L4_2 = A0_2.openingAnimationTimer
      L3_2 = L3_2 - L4_2
      A0_2.openingAnimationTimer = L3_2
      L3_2 = A0_2.openingAnimationFrame
      L3_2 = L3_2 + 1
      A0_2.openingAnimationFrame = L3_2
      L3_2 = A0_2.openingAnimationFrame
      L4_2 = gamelua
      L4_2 = L4_2.countKeys
      L5_2 = A0_2.openingAnimation
      L4_2 = L4_2(L5_2)
      if L3_2 >= L4_2 then
        A0_2.openingAnimationTimer = nil
      end
      L3_2 = A0_2.openingAnimation
      L4_2 = A0_2.openingAnimationFrame
      L3_2 = L3_2[L4_2]
      A0_2.image = L3_2
    end
  end
end

L0_1.update = L1_1
L0_1 = LevelButton

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
L0_1 = LevelButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = 1
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L5_2 = A0_2.physicsObject
  L5_2 = L5_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.scale
  L5_2 = gamelua
  L5_2 = L5_2.blockTable
  L5_2 = L5_2.blocks
  L6_2 = A0_2.physicsObject
  L6_2 = L6_2.definition
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.isAlternativeRoute
  L6_2 = gamelua
  L6_2 = L6_2.worldScale
  L7_2 = L6_2 * L3_2
  L8_2 = A0_2.scaleX
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 * L4_2
  L8_2 = LevelButton
  L8_2 = L8_2.BUTTON_SCALE
  L7_2 = L7_2 * L8_2
  L8_2 = L6_2 * L3_2
  L9_2 = A0_2.scaleY
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 * L4_2
  L9_2 = LevelButton
  L9_2 = L9_2.BUTTON_SCALE
  L8_2 = L8_2 * L9_2
  L9_2 = 1.6
  L10_2 = A0_2.x
  L10_2 = A1_2 + L10_2
  L11_2 = A0_2.px
  L11_2 = L11_2 * L7_2
  L11_2 = L11_2 * L9_2
  L10_2 = L10_2 - L11_2
  L11_2 = gamelua
  L11_2 = L11_2.screenWidth
  if not (L10_2 > L11_2) then
    L10_2 = A0_2.px
    L10_2 = L10_2 * L7_2
    L10_2 = L10_2 * L9_2
    L10_2 = A1_2 + L10_2
    L11_2 = A0_2.x
    L10_2 = L10_2 + L11_2
    if not (L10_2 < 0) then
      goto lbl_52
    end
  end
  do return end
  ::lbl_52::
  L10_2 = gamelua
  L10_2 = L10_2.deviceModel
  if L10_2 == "iphone" then
    L10_2 = gamelua
    L6_2 = L10_2.worldScale
  end
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = gamelua
    L0_3 = L0_3.setRenderState
    L1_3 = A1_2
    L2_3 = A0_2
    L2_3 = L2_3.x
    L3_3 = L7_2
    L2_3 = L2_3 / L3_3
    L1_3 = L1_3 + L2_3
    L2_3 = A2_2
    L3_3 = A0_2
    L3_3 = L3_3.y
    L4_3 = L8_2
    L3_3 = L3_3 / L4_3
    L2_3 = L2_3 + L3_3
    L3_3 = L7_2
    L4_3 = L8_2
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L0_3 = A0_2
    L0_3 = L0_3.disabled
    if L0_3 ~= true then
      L0_3 = A0_2
      L0_3 = L0_3.inactive
      if not L0_3 then
        L0_3 = _G
        L0_3 = L0_3.res
        L0_3 = L0_3.drawSprite
        L1_3 = ""
        L2_3 = A0_2
        L2_3 = L2_3.image
        L3_3 = 0
        L4_3 = 0
        L5_3 = "HCENTER"
        L6_3 = "VCENTER"
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    end
    else
      L0_3 = A0_2
      L0_3 = L0_3.originalImageLocked
      if L0_3 ~= nil then
        L0_3 = L5_2
        if L0_3 then
          L0_3 = gamelua
          L0_3 = L0_3.native_setAlpha
          L1_3 = gamelua
          L1_3 = L1_3.blockTable
          L1_3 = L1_3.blocks
          L2_3 = A0_2
          L2_3 = L2_3.physicsObject
          L2_3 = L2_3.definition
          L1_3 = L1_3[L2_3]
          L1_3 = L1_3.lockedAlpha
          if not L1_3 then
            L1_3 = 0.5
          end
          L0_3(L1_3)
        end
        L0_3 = _G
        L0_3 = L0_3.res
        L0_3 = L0_3.drawSprite
        L1_3 = ""
        L2_3 = A0_2
        L2_3 = L2_3.originalImageLocked
        L3_3 = 0
        L4_3 = 0
        L5_3 = "HPIVOT"
        L6_3 = "VPIVOT"
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
        L0_3 = L5_2
        if L0_3 then
          L0_3 = gamelua
          L0_3 = L0_3.native_setAlpha
          L1_3 = 1
          L0_3(L1_3)
        end
      end
    end
  end
  
  L11_2 = nil
  L12_2 = nil
  L13_2 = A0_2.disabled
  if L13_2 ~= true then
    L13_2 = A0_2.inactive
    if not L13_2 then
      function L12_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
        
        L0_3 = A0_2
        L0_3 = L0_3.physicsObject
        L0_3 = L0_3.startNumber
        if L0_3 ~= nil then
          L0_3 = A0_2
          L0_3 = L0_3.showStartNumber
          if L0_3 then
            L0_3 = A0_2
            L0_3 = L0_3.formattedNumber
            if L0_3 ~= nil then
              L0_3 = gamelua
              L0_3 = L0_3.setFont
              L1_3 = gamelua
              L1_3 = L1_3.getFontLevelselection
              L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L1_3()
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
              L0_3 = L6_2
              L0_3 = L0_3 * 2
              L1_3 = A0_2
              L1_3 = L1_3.scaleX
              L0_3 = L0_3 * L1_3
              L1_3 = LevelButton
              L1_3 = L1_3.LEVEL_NUMBER_SCALE
              L0_3 = L0_3 * L1_3
              L1_3 = L6_2
              L1_3 = L1_3 * 2
              L2_3 = A0_2
              L2_3 = L2_3.scaleY
              L1_3 = L1_3 * L2_3
              L2_3 = LevelButton
              L2_3 = L2_3.LEVEL_NUMBER_SCALE
              L1_3 = L1_3 * L2_3
              L2_3 = gamelua
              L2_3 = L2_3.setRenderState
              L3_3 = A1_2
              L4_3 = A0_2
              L4_3 = L4_3.x
              L3_3 = L3_3 + L4_3
              L3_3 = L3_3 / L0_3
              L4_3 = A2_2
              L5_3 = A0_2
              L5_3 = L5_3.y
              L4_3 = L4_3 + L5_3
              L4_3 = L4_3 / L1_3
              L5_3 = L0_3
              L6_3 = L1_3
              L7_3 = 0
              L8_3 = 0
              L9_3 = 0
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
              L2_3 = gamelua
              L2_3 = L2_3.res
              L2_3 = L2_3.drawString
              L3_3 = "TEXT_BASIC"
              L4_3 = A0_2
              L4_3 = L4_3.formattedNumber
              L5_3 = 0
              L6_3 = 0
              L7_3 = "HCENTER"
              L8_3 = "VCENTER"
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
              L2_3 = L6_2
              L3_3 = L3_2
              L2_3 = L2_3 * L3_3
              L3_3 = A0_2
              L3_3 = L3_3.scaleX
              L2_3 = L2_3 * L3_3
              L3_3 = L4_2
              L0_3 = L2_3 * L3_3
              L2_3 = L6_2
              L3_3 = L3_2
              L2_3 = L2_3 * L3_3
              L3_3 = A0_2
              L3_3 = L3_3.scaleY
              L2_3 = L2_3 * L3_3
              L3_3 = L4_2
              L1_3 = L2_3 * L3_3
              L2_3 = gamelua
              L2_3 = L2_3.setRenderState
              L3_3 = A1_2
              L4_3 = A0_2
              L4_3 = L4_3.x
              L4_3 = L4_3 / L0_3
              L3_3 = L3_3 + L4_3
              L4_3 = A2_2
              L5_3 = A0_2
              L5_3 = L5_3.y
              L4_3 = L4_3 + L5_3
              L5_3 = A0_2
              L5_3 = L5_3.h
              L5_3 = L5_3 * 0.1
              L6_3 = L6_2
              L5_3 = L5_3 * L6_3
              L4_3 = L4_3 + L5_3
              L4_3 = L4_3 / L1_3
              L5_3 = L0_3
              L6_3 = L1_3
              L7_3 = 0
              L8_3 = 0
              L9_3 = 0
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
              L2_3 = _G
              L2_3 = L2_3.res
              L2_3 = L2_3.drawSprite
              L3_3 = ""
              L4_3 = "LEVELSTAR"
              L5_3 = A0_2
              L5_3 = L5_3.stars
              L4_3 = L4_3 .. L5_3
              L5_3 = 0
              L6_3 = 0
              L7_3 = "HPIVOT"
              L8_3 = "VPIVOT"
              L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            end
          end
        end
      end
    end
  end
  L13_2 = A0_2.lockedByTimerText
  if L13_2 then
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      
      L0_3 = gamelua
      L0_3 = L0_3.setFont
      L1_3 = gamelua
      L1_3 = L1_3.getFontCrimsonBasic
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L1_3()
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      L0_3 = L6_2
      L1_3 = A0_2
      L1_3 = L1_3.scaleX
      L0_3 = L0_3 * L1_3
      L1_3 = LevelButton
      L1_3 = L1_3.LEVEL_NUMBER_SCALE
      L0_3 = L0_3 * L1_3
      L1_3 = L6_2
      L2_3 = A0_2
      L2_3 = L2_3.scaleY
      L1_3 = L1_3 * L2_3
      L2_3 = LevelButton
      L2_3 = L2_3.LEVEL_NUMBER_SCALE
      L1_3 = L1_3 * L2_3
      L2_3 = gamelua
      L2_3 = L2_3.setRenderState
      L3_3 = A1_2
      L4_3 = A0_2
      L4_3 = L4_3.x
      L3_3 = L3_3 + L4_3
      L3_3 = L3_3 / L0_3
      L4_3 = A2_2
      L5_3 = A0_2
      L5_3 = L5_3.y
      L4_3 = L4_3 + L5_3
      L5_3 = A0_2
      L5_3 = L5_3.h
      L5_3 = L5_3 * 0.1
      L6_3 = L6_2
      L5_3 = L5_3 * L6_3
      L4_3 = L4_3 + L5_3
      L4_3 = L4_3 / L1_3
      L5_3 = L0_3
      L6_3 = L1_3
      L7_3 = 0
      L8_3 = 0
      L9_3 = 0
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      L2_3 = gamelua
      L2_3 = L2_3.res
      L2_3 = L2_3.drawString
      L3_3 = "TEXT_BASIC"
      L4_3 = A0_2
      L4_3 = L4_3.lockedByTimerText
      L5_3 = 0
      L6_3 = 0
      L7_3 = "HCENTER"
      L8_3 = "VCENTER"
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
  end
  L13_2 = _G
  L13_2 = L13_2.table
  L13_2 = L13_2.insert
  L14_2 = LevelButton
  L14_2 = L14_2.m_drawBatches
  L14_2 = L14_2[1]
  L15_2 = L10_2
  L13_2(L14_2, L15_2)
  L13_2 = _G
  L13_2 = L13_2.table
  L13_2 = L13_2.insert
  L14_2 = LevelButton
  L14_2 = L14_2.m_drawBatches
  L14_2 = L14_2[2]
  L15_2 = L11_2
  L13_2(L14_2, L15_2)
  L13_2 = _G
  L13_2 = L13_2.table
  L13_2 = L13_2.insert
  L14_2 = LevelButton
  L14_2 = L14_2.m_drawBatches
  L14_2 = L14_2[3]
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
end

L0_1.setupDrawBatches = L1_1
L0_1 = LevelButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = LevelButton
  L3_2 = L3_2.batchesDrawn
  if L3_2 ~= true then
    L3_2 = LevelButton
    L4_2 = L3_2
    L3_2 = L3_2.handleDrawBatches
    L3_2(L4_2)
    L3_2 = LevelButton
    L3_2.batchesDrawn = true
  end
end

L0_1.draw = L1_1
L0_1 = LevelButton

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = LevelButton
  L1_2.totalStars = nil
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = LevelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = LevelButton
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
  L1_2 = LevelButton
  L1_2.clearBatches = true
end

L0_1.handleDrawBatches = L1_1
