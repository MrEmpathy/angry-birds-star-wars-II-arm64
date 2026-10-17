local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ClaimRewardButton = L0_1
L0_1 = ClaimRewardButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setImage
  L3_2 = "PRIZEBOX_BACK"
  L1_2(L2_2, L3_2)
  A0_2.offY = 0
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "boxFront"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.boxFront = L1_2
  L1_2 = A0_2.boxFront
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "PRIZEBOX_FRONT"
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "boxTop"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.boxTop = L1_2
  L1_2 = A0_2.boxTop
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "PRIZEBOX_TOP"
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getWeeklyRewardAvailable
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.CarboniteAvailableAnimation
    L1_2 = L1_2.getData
    L1_2 = L1_2()
    if L1_2 then
      L2_2 = L1_2.longTimenoseeReward
      if L2_2 then
        L2_2 = L1_2.longTimenoseeReward
        L2_2 = L2_2.reward
        A0_2.weeklyReward = L2_2
      end
    end
  end
  A0_2.clickSound = ""
end

L0_1.init = L1_1
L0_1 = ClaimRewardButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.disablePointerEvents = false
  A0_2.alpha = 1
  A0_2.scale = 1
  A0_2.stopAnimation = false
  L1_2 = A0_2.boxFront
  L1_2.y = 11
  A0_2.offY = 0
  L1_2 = A0_2.boxTop
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.floor
  L3_2 = A0_2.boxFront
  L3_2 = L3_2.w
  L3_2 = -L3_2
  L3_2 = L3_2 * 0.3
  L2_2 = L2_2(L3_2)
  L1_2.y = L2_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ClaimRewardButton

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.disablePointerEvents
  if not L4_2 then
    L4_2 = ui
    L4_2 = L4_2.ScallableButton
    L4_2 = L4_2.onPointerEvent
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    return L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end

L0_1.onPointerEvent = L1_1
L0_1 = ClaimRewardButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.boxOpened
  if not L2_2 then
    A0_2.boxOpened = true
    A0_2.removeTop = 0.25
    A0_2.stopAnimation = true
    A0_2.disablePointerEvents = true
    A0_2.onAnimationFinishCallback = A1_2
    L2_2 = gamelua
    L2_2 = L2_2.playAudio
    L3_2 = "black_hole_close"
    L2_2(L3_2)
    L2_2 = gamelua
    L2_2 = L2_2.playAudio
    L3_2 = "ButtonBack"
    L2_2(L3_2)
  end
end

L0_1.openBox = L1_1
L0_1 = ClaimRewardButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.stopAnimation
  if not L3_2 then
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.sin
    L4_2 = A2_2 * 5
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 * 0.05
    L3_2 = 1 + L3_2
    A0_2.scale = L3_2
  else
    A0_2.scale = 1
  end
  L3_2 = A0_2.removeTop
  if L3_2 then
    L3_2 = A0_2.removeTop
    if 0 <= L3_2 then
      L3_2 = A0_2.removeTop
      L3_2 = L3_2 * 10
      L4_2 = A0_2.removeTop
      L4_2 = L4_2 - A1_2
      A0_2.removeTop = L4_2
      L4_2 = A0_2.boxTop
      L5_2 = A0_2.boxTop
      L5_2 = L5_2.y
      L6_2 = A0_2.boxTop
      L6_2 = L6_2.h
      L6_2 = L6_2 * 1.8
      L6_2 = L6_2 * A1_2
      L6_2 = L6_2 * L3_2
      L5_2 = L5_2 - L6_2
      L4_2.y = L5_2
      L4_2 = A0_2.boxFront
      L5_2 = A0_2.boxFront
      L5_2 = L5_2.y
      L6_2 = A0_2.boxFront
      L6_2 = L6_2.h
      L6_2 = L6_2 * 1.6
      L6_2 = L6_2 * A1_2
      L6_2 = L6_2 * L3_2
      L5_2 = L5_2 + L6_2
      L4_2.y = L5_2
      L4_2 = A0_2.offY
      L5_2 = A0_2.boxFront
      L5_2 = L5_2.h
      L5_2 = L5_2 * 1.6
      L5_2 = L5_2 * A1_2
      L5_2 = L5_2 * L3_2
      L4_2 = L4_2 + L5_2
      A0_2.offY = L4_2
  end
  else
    L3_2 = A0_2.removeTop
    if L3_2 then
      L3_2 = A0_2.removeTop
      if L3_2 < 0 then
        L3_2 = gamelua
        L3_2 = L3_2.getAllClaimableQuests
        L4_2 = "bird"
        L3_2 = L3_2(L4_2)
        L4_2 = gamelua
        L4_2 = L4_2.getAllClaimableQuests
        L5_2 = "birdPack"
        L4_2 = L4_2(L5_2)
        L5_2 = _G
        L5_2 = L5_2.pairs
        L6_2 = L4_2
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        for L8_2, L9_2 in L5_2, L6_2, L7_2 do
          L10_2 = _G
          L10_2 = L10_2.table
          L10_2 = L10_2.insert
          L11_2 = L3_2
          L12_2 = L9_2
          L10_2(L11_2, L12_2)
        end
        L5_2 = #L3_2
        if 0 < L5_2 then
          L5_2 = _G
          L5_2 = L5_2.ipairs
          L6_2 = L3_2
          L5_2, L6_2, L7_2 = L5_2(L6_2)
          for L8_2, L9_2 in L5_2, L6_2, L7_2 do
            L10_2 = gamelua
            L10_2 = L10_2.putMenuParticles
            L11_2 = {}
            L12_2 = A0_2.x
            L11_2.x = L12_2
            L12_2 = A0_2.y
            L11_2.y = L12_2
            L11_2.particles = "claimStars"
            L11_2.amount = 20
            L10_2(L11_2)
            L10_2 = L9_2.reward
            if L10_2 == "birdPack" then
              L10_2 = L9_2.rewardType
              L11_2 = _G
              L11_2 = L11_2.type
              L12_2 = L9_2.goal
              L11_2 = L11_2(L12_2)
              if L11_2 == "table" then
                L11_2 = L9_2.popupLevel
                if not L11_2 then
                  L11_2 = gamelua
                  L11_2 = L11_2.getQuestLevel
                  L12_2 = L9_2.name
                  L11_2 = L11_2(L12_2)
                end
                L12_2 = L9_2.rewardType
                L10_2 = L12_2[L11_2]
              end
              L11_2 = _G
              L11_2 = L11_2.ipairs
              L12_2 = L10_2
              L11_2, L12_2, L13_2 = L11_2(L12_2)
              for L14_2, L15_2 in L11_2, L12_2, L13_2 do
                L16_2 = 1
                L17_2 = _G
                L17_2 = L17_2.math
                L17_2 = L17_2.min
                L18_2 = 10
                L19_2 = _G
                L19_2 = L19_2.tonumber
                L20_2 = L9_2.rewardNumber
                L20_2 = L20_2[L14_2]
                L19_2 = L19_2(L20_2)
                if not L19_2 then
                  L19_2 = 1
                end
                L17_2 = L17_2(L18_2, L19_2)
                L18_2 = 1
                for L19_2 = L16_2, L17_2, L18_2 do
                  L20_2 = gamelua
                  L20_2 = L20_2.putMenuParticles
                  L21_2 = {}
                  L22_2 = A0_2.x
                  L21_2.x = L22_2
                  L22_2 = A0_2.y
                  L21_2.y = L22_2
                  L22_2 = "claimSprite_"
                  L23_2 = L15_2
                  L22_2 = L22_2 .. L23_2
                  L21_2.particles = L22_2
                  L20_2(L21_2)
                end
              end
            else
              L10_2 = 1
              L11_2 = _G
              L11_2 = L11_2.math
              L11_2 = L11_2.min
              L12_2 = 10
              L13_2 = _G
              L13_2 = L13_2.tonumber
              L14_2 = L9_2.rewardNumber
              L13_2 = L13_2(L14_2)
              if not L13_2 then
                L13_2 = 1
              end
              L11_2 = L11_2(L12_2, L13_2)
              L12_2 = 1
              for L13_2 = L10_2, L11_2, L12_2 do
                L14_2 = _G
                L14_2 = L14_2.type
                L15_2 = L9_2.rewardType
                L14_2 = L14_2(L15_2)
                if L14_2 == "table" then
                  L14_2 = gamelua
                  L14_2 = L14_2.putMenuParticles
                  L15_2 = {}
                  L16_2 = A0_2.x
                  L15_2.x = L16_2
                  L16_2 = A0_2.y
                  L15_2.y = L16_2
                  L16_2 = "claimSprite_"
                  L17_2 = L9_2.rewardType
                  L18_2 = gamelua
                  L18_2 = L18_2.getQuestLevel
                  L19_2 = L9_2.name
                  L18_2 = L18_2(L19_2)
                  L17_2 = L17_2[L18_2]
                  L16_2 = L16_2 .. L17_2
                  L15_2.particles = L16_2
                  L14_2(L15_2)
                else
                  L14_2 = gamelua
                  L14_2 = L14_2.putMenuParticles
                  L15_2 = {}
                  L16_2 = A0_2.x
                  L15_2.x = L16_2
                  L16_2 = A0_2.y
                  L15_2.y = L16_2
                  L16_2 = "claimSprite_"
                  L17_2 = L9_2.rewardType
                  L16_2 = L16_2 .. L17_2
                  L15_2.particles = L16_2
                  L14_2(L15_2)
                end
              end
            end
            L10_2 = gamelua
            L10_2 = L10_2.claimQuestReward
            L11_2 = L9_2
            L10_2(L11_2)
            L10_2 = gamelua
            L10_2 = L10_2.eventManager
            L11_2 = L10_2
            L10_2 = L10_2.notify
            L12_2 = {}
            L13_2 = gamelua
            L13_2 = L13_2.events
            L13_2 = L13_2.EID_SHOP_CLAIM_REWARD
            L12_2.id = L13_2
            L10_2(L11_2, L12_2)
          end
        end
        L5_2 = A0_2.weeklyReward
        if L5_2 then
          L5_2 = _G
          L5_2 = L5_2.ipairs
          L6_2 = A0_2.weeklyReward
          L5_2, L6_2, L7_2 = L5_2(L6_2)
          for L8_2, L9_2 in L5_2, L6_2, L7_2 do
            L10_2 = 1
            L11_2 = _G
            L11_2 = L11_2.math
            L11_2 = L11_2.min
            L12_2 = 10
            L13_2 = _G
            L13_2 = L13_2.tonumber
            L14_2 = L9_2.amount
            L13_2 = L13_2(L14_2)
            if not L13_2 then
              L13_2 = 1
            end
            L11_2 = L11_2(L12_2, L13_2)
            L12_2 = 1
            for L13_2 = L10_2, L11_2, L12_2 do
              L14_2 = gamelua
              L14_2 = L14_2.putMenuParticles
              L15_2 = {}
              L16_2 = A0_2.x
              L15_2.x = L16_2
              L16_2 = A0_2.y
              L15_2.y = L16_2
              L16_2 = "claimSprite_"
              L17_2 = L9_2.character
              L16_2 = L16_2 .. L17_2
              L15_2.particles = L16_2
              L14_2(L15_2)
            end
            L10_2 = gamelua
            L10_2 = L10_2.addCharacter
            L11_2 = L9_2.character
            L12_2 = L9_2.amount
            L10_2(L11_2, L12_2)
            L10_2 = gamelua
            L10_2 = L10_2.eventManager
            L11_2 = L10_2
            L10_2 = L10_2.notify
            L12_2 = {}
            L13_2 = gamelua
            L13_2 = L13_2.events
            L13_2 = L13_2.EID_CHARACTER_GAINED
            L12_2.id = L13_2
            L12_2.typeOfItem = "character"
            L13_2 = L9_2.amount
            L12_2.amount = L13_2
            L12_2.typeOfGain = "weekly reward"
            L13_2 = L9_2.character
            L12_2.itemName = L13_2
            L13_2 = L9_2.amount
            L12_2.packetSize = L13_2
            L10_2(L11_2, L12_2)
          end
          L5_2 = gamelua
          L5_2 = L5_2.SettingsWrapper
          L6_2 = L5_2
          L5_2 = L5_2.setWeeklyRewardAvailable
          L7_2 = false
          L5_2(L6_2, L7_2)
          L5_2 = gamelua
          L5_2 = L5_2.eventManager
          L6_2 = L5_2
          L5_2 = L5_2.notify
          L7_2 = {}
          L8_2 = gamelua
          L8_2 = L8_2.events
          L8_2 = L8_2.EID_SHOP_CLAIM_REWARD
          L7_2.id = L8_2
          L5_2(L6_2, L7_2)
        end
        L5_2 = A0_2.ageAndGenderReward
        if L5_2 then
          L5_2 = _G
          L5_2 = L5_2.ipairs
          L6_2 = A0_2.ageAndGenderReward
          L5_2, L6_2, L7_2 = L5_2(L6_2)
          for L8_2, L9_2 in L5_2, L6_2, L7_2 do
            L10_2 = 1
            L11_2 = _G
            L11_2 = L11_2.math
            L11_2 = L11_2.min
            L12_2 = 10
            L13_2 = _G
            L13_2 = L13_2.tonumber
            L14_2 = L9_2.amount
            L13_2 = L13_2(L14_2)
            if not L13_2 then
              L13_2 = 1
            end
            L11_2 = L11_2(L12_2, L13_2)
            L12_2 = 1
            for L13_2 = L10_2, L11_2, L12_2 do
              L14_2 = gamelua
              L14_2 = L14_2.putMenuParticles
              L15_2 = {}
              L16_2 = A0_2.x
              L15_2.x = L16_2
              L16_2 = A0_2.y
              L15_2.y = L16_2
              L16_2 = "claimSprite_"
              L17_2 = L9_2.character
              L16_2 = L16_2 .. L17_2
              L15_2.particles = L16_2
              L14_2(L15_2)
            end
            L10_2 = gamelua
            L10_2 = L10_2.addCharacter
            L11_2 = L9_2.character
            L12_2 = L9_2.amount
            L10_2(L11_2, L12_2)
            L10_2 = gamelua
            L10_2 = L10_2.eventManager
            L11_2 = L10_2
            L10_2 = L10_2.notify
            L12_2 = {}
            L13_2 = gamelua
            L13_2 = L13_2.events
            L13_2 = L13_2.EID_CHARACTER_GAINED
            L12_2.id = L13_2
            L12_2.typeOfItem = "character"
            L13_2 = L9_2.amount
            L12_2.amount = L13_2
            L12_2.typeOfGain = "age and gender reward"
            L13_2 = L9_2.character
            L12_2.itemName = L13_2
            L13_2 = L9_2.amount
            L12_2.packetSize = L13_2
            L10_2(L11_2, L12_2)
          end
          L5_2 = gamelua
          L5_2 = L5_2.SettingsWrapper
          L6_2 = L5_2
          L5_2 = L5_2.claimAgeAndGenderReward
          L5_2(L6_2)
          L5_2 = gamelua
          L5_2 = L5_2.eventManager
          L6_2 = L5_2
          L5_2 = L5_2.notify
          L7_2 = {}
          L8_2 = gamelua
          L8_2 = L8_2.events
          L8_2 = L8_2.EID_SHOP_CLAIM_REWARD
          L7_2.id = L8_2
          L5_2(L6_2, L7_2)
        end
        L5_2 = A2_2 + 1.25
        A0_2.animationCallbackTimer = L5_2
        A0_2.removeTop = nil
      end
    end
  end
  L3_2 = A0_2.animationCallbackTimer
  if L3_2 then
    L3_2 = A0_2.onAnimationFinishCallback
    if L3_2 then
      L3_2 = A0_2.animationCallbackTimer
      if A2_2 > L3_2 then
        L3_2 = A0_2.onAnimationFinishCallback
        L3_2()
        A0_2.animationCallbackTimer = nil
      end
    end
  end
end

L0_1.update = L1_1
L0_1 = ClaimRewardButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A0_2.scaleX
  L4_2 = A0_2.scale
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.scaleY
  L5_2 = A0_2.scale
  L4_2 = L4_2 * L5_2
  L5_2 = gamelua
  L5_2 = L5_2.setRenderState
  L6_2 = A0_2.x
  L6_2 = A1_2 + L6_2
  L6_2 = L6_2 / L3_2
  L7_2 = A0_2.y
  L7_2 = A2_2 + L7_2
  L7_2 = L7_2 / L4_2
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = 0
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.floor
  L12_2 = A0_2.w
  L11_2 = L11_2(L12_2)
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.h
  L12_2 = L12_2(L13_2)
  L13_2 = A0_2.alpha
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.drawSprite
  L6_2 = ""
  L7_2 = A0_2.image
  L8_2 = 0
  L9_2 = A0_2.offY
  L10_2 = "HPIVOT"
  L11_2 = "VPIVOT"
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.w
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.floor
  L14_2 = A0_2.h
  L13_2, L14_2 = L13_2(L14_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.drawSprite
  L6_2 = ""
  L7_2 = A0_2.boxFront
  L7_2 = L7_2.image
  L8_2 = A0_2.boxFront
  L8_2 = L8_2.x
  L9_2 = A0_2.boxFront
  L9_2 = L9_2.y
  L10_2 = "HPIVOT"
  L11_2 = "VPIVOT"
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.boxFront
  L13_2 = L13_2.w
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.floor
  L14_2 = A0_2.boxFront
  L14_2 = L14_2.h
  L13_2, L14_2 = L13_2(L14_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.drawSprite
  L6_2 = ""
  L7_2 = A0_2.boxTop
  L7_2 = L7_2.image
  L8_2 = A0_2.boxTop
  L8_2 = L8_2.x
  L9_2 = A0_2.boxTop
  L9_2 = L9_2.y
  L10_2 = "HPIVOT"
  L11_2 = "VPIVOT"
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.floor
  L13_2 = A0_2.boxTop
  L13_2 = L13_2.w
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.floor
  L14_2 = A0_2.boxTop
  L14_2 = L14_2.h
  L13_2, L14_2 = L13_2(L14_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = gamelua
  L5_2 = L5_2.setRenderState
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
end

L0_1.draw = L1_1
