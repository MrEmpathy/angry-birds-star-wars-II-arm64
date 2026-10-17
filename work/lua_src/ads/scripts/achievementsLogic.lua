local L0_1, L1_1
L0_1 = {}
achievementUnlockQueue = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "initializeAchievements"
  L0_2(L1_2)
  L0_2 = gamerService
  if L0_2 then
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_ACHIEVEMENT_COMPLETED
    L3_2 = gamerService
    L0_2(L1_2, L2_2, L3_2)
  else
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_ACHIEVEMENT_COMPLETED
    L3_2 = achievementCompletedEventListener
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = initializeAchievementLimits
  L0_2()
end

initializeAchievements = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = checkForAllGameCenterAchievements
  L0_2()
end

gameCenterAchievementsLoaded = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = gameCenterAchievementDataAvailable
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = achievements
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.id
    L6_2 = gameCenter
    L6_2 = L6_2.achievements
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = SettingsWrapper
      L8_2 = L7_2
      L7_2 = L7_2.hasAchievement
      L9_2 = L3_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = L6_2.completed
        if not L7_2 then
          L7_2 = unlockAchievement
          L8_2 = L5_2
          L9_2 = L3_2
          L7_2(L8_2, L9_2)
        end
      end
    else
      L7_2 = print
      L8_2 = "-------------------------------------------\n"
      L7_2(L8_2)
      L7_2 = print
      L8_2 = "!!! achievement id missing: "
      L9_2 = _G
      L9_2 = L9_2.tostring
      L10_2 = L5_2
      L9_2 = L9_2(L10_2)
      L10_2 = "\n"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L7_2(L8_2)
      L7_2 = print
      L8_2 = "-------------------------------------------\n"
      L7_2(L8_2)
    end
  end
end

checkForAllGameCenterAchievements = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2 ~= nil
  L1_2(L2_2)
  L1_2 = achievements
  if L1_2 == nil then
    return
  end
  L1_2 = achievements
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    return
  end
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.registerAchievement
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = achievementsEnabled
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_ACHIEVEMENT_COMPLETED
    L3_2.id = L4_2
    L3_2.achievementName = A0_2
    L1_2(L2_2, L3_2)
  end
end

registerAchievement = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2.achievementName
  L3_2 = L3_2 ~= nil
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "achievementCompletedEventListener\n"
  L2_2(L3_2)
  L2_2 = achievementsEnabled
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = achievements
    L3_2 = A1_2.achievementName
    L2_2 = L2_2[L3_2]
    L3_2 = _G
    L3_2 = L3_2.assert
    L4_2 = L2_2 ~= nil
    L5_2 = "Achievement "
    L6_2 = A1_2.achievementName
    L7_2 = " not recognized"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.assert
    L4_2 = L2_2.id
    L4_2 = L4_2 ~= nil
    L3_2(L4_2)
    L3_2 = unlockAchievement
    L4_2 = L2_2.id
    L5_2 = A1_2.achievementName
    L3_2(L4_2, L5_2)
  end
end

L0_1.eventTriggered = L1_1
achievementCompletedEventListener = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = addToAchievementUnlockQueue
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end

achievementRegisteredCallback = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A0_2 ~= nil
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "gamelogic: addToAchievementUnlockQueue "
  L4_2 = A0_2
  L5_2 = "\n"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = achievementsEnabled
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = gameCenter
    L2_2 = L2_2.achievements
    L2_2 = L2_2.loading
    if L2_2 ~= true then
      L2_2 = g_showAchievementPopup
      if L2_2 then
        L2_2 = _G
        L2_2 = L2_2.assert
        L3_2 = gameCenter
        L3_2 = L3_2.achievements
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2 ~= nil
        L2_2(L3_2)
        L2_2 = _G
        L2_2 = L2_2.assert
        L3_2 = gameCenter
        L3_2 = L3_2.achievements
        L3_2 = L3_2[A0_2]
        L3_2 = L3_2.completed
        L2_2(L3_2)
        L2_2 = 1
        L3_2 = achievementUnlockQueue
        L3_2 = #L3_2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = achievementUnlockQueue
          L6_2 = L6_2[L5_2]
          L6_2 = L6_2.id
          if L6_2 == A0_2 then
            L6_2 = print
            L7_2 = "Not adding achievement id "
            L8_2 = A0_2
            L9_2 = " to the queue since it is already queued. \n"
            L7_2 = L7_2 .. L8_2 .. L9_2
            L6_2(L7_2)
            return
          end
        end
        if not A1_2 then
          A1_2 = false
        end
        L2_2 = print
        L3_2 = "Adding achievement id "
        L4_2 = A0_2
        L5_2 = " to the queue \n"
        L3_2 = L3_2 .. L4_2 .. L5_2
        L2_2(L3_2)
        if A1_2 then
          L2_2 = _G
          L2_2 = L2_2.table
          L2_2 = L2_2.insert
          L3_2 = achievementUnlockQueue
          L4_2 = 1
          L5_2 = {}
          L5_2.id = A0_2
          L2_2(L3_2, L4_2, L5_2)
        else
          L2_2 = _G
          L2_2 = L2_2.table
          L2_2 = L2_2.insert
          L3_2 = achievementUnlockQueue
          L4_2 = {}
          L4_2.id = A0_2
          L2_2(L3_2, L4_2)
        end
    end
  end
  else
    L2_2 = print
    L3_2 = "Failed to find achievement information for id "
    L4_2 = A0_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
end

addToAchievementUnlockQueue = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = gameCenterEnabled
  if L0_2 then
    L0_2 = achievementUnlockQueue
    L0_2 = #L0_2
    if 0 < L0_2 then
      L0_2 = lastAchievementUnlockTime
      if not L0_2 then
        L0_2 = -3
      end
      lastAchievementUnlockTime = L0_2
      L0_2 = time
      L1_2 = lastAchievementUnlockTime
      L0_2 = L0_2 - L1_2
      L1_2 = achievementPopUpDuration
      if L0_2 > L1_2 then
        L0_2 = gameCenter
        if L0_2 then
          L0_2 = gameCenter
          L0_2 = L0_2.achievements
          if L0_2 then
            L0_2 = gameCenter
            L0_2 = L0_2.achievements
            L0_2 = L0_2.loading
            if L0_2 ~= true then
              L0_2 = displayAchievementPopup
              L1_2 = achievementUnlockQueue
              L1_2 = L1_2[1]
              L1_2 = L1_2.id
              L0_2(L1_2)
              L0_2 = _G
              L0_2 = L0_2.table
              L0_2 = L0_2.remove
              L1_2 = achievementUnlockQueue
              L2_2 = 1
              L0_2(L1_2, L2_2)
              L0_2 = time
              lastAchievementUnlockTime = L0_2
            end
          end
        end
      end
    end
  end
end

achievementsFrameUpdate = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = print
  L2_2 = "Achievement id = "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = assert
  L2_2 = A0_2 ~= nil
  L3_2 = "achievementId is empty"
  L1_2(L2_2, L3_2)
  L1_2 = achievementsEnabled
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = g_showAchievementPopup
    if L1_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L1_2 = gameCenter
  L1_2 = L1_2.achievements
  L1_2 = L1_2[A0_2]
  L2_2 = assert
  L3_2 = L1_2 ~= nil
  L4_2 = "gameCenter achievement data not found for achievement id "
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = assert
  L3_2 = L1_2.icon
  L3_2 = L3_2 ~= nil
  L4_2 = "Icon unavailable for achievement id "
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.title
  L3_2 = L1_2.achievedText
  L4_2 = L1_2.icon
  L5_2 = BannerPopup
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L1_2.title
  L8_2 = L1_2.achievedText
  L9_2 = L1_2.icon
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2.name = "achievement"
  L6_2 = notificationsFrame
  L7_2 = L6_2
  L6_2 = L6_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.onEntry
  L6_2(L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.layout
  L6_2(L7_2)
end

displayAchievementPopup = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = BannerPopup
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = "test title test title test title"
  L3_2 = "Foo the Bar."
  L4_2 = "ACHIEVEMENT_DAGOBAH_WAR_FOR_THE_STARS"
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2.name = "achievement"
  L1_2 = notificationsFrame
  L2_2 = L1_2
  L1_2 = L1_2.addChild
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L2_2 = L0_2
  L1_2 = L0_2.onEntry
  L1_2(L2_2)
  L2_2 = L0_2
  L1_2 = L0_2.layout
  L1_2(L2_2)
end

testAchievementPopup = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamerService
  if not L0_2 then
    L0_2 = achievements
    if L0_2 then
      L0_2 = gameCenterEnabled
      if L0_2 then
        L0_2 = gameCenter
        if L0_2 then
          L0_2 = gameCenter
          L0_2 = L0_2.achievements
        end
      end
    end
  end
  return L0_2
end

achievementsEnabled = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = achievementsEnabled
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = gameCenter
    L0_2 = L0_2.achievements
    L0_2 = L0_2.loading
    L0_2 = L0_2 ~= true
  end
  return L0_2
end

gameCenterAchievementDataAvailable = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = {}
  L1_2.id = "2001"
  L1_2.text_id = "ACHIEVEMENT_NAME_FOWLDELIVERY"
  L1_2.icon = "ACHIEVEMENT_FOWL_DELIVERY"
  L0_2["Fowl Delivery"] = L1_2
  achievements = L0_2
  L0_2 = {}
  gameCenter = L0_2
  L0_2 = gameCenter
  L1_2 = {}
  L2_2 = {}
  L2_2.icon = "ACHIEVEMENT_FOWL_DELIVERY"
  L2_2.title = "Title"
  L2_2.achievedText = "Achieved text"
  L2_2.completed = false
  L1_2["2001"] = L2_2
  L0_2.achievements = L1_2
  L0_2 = true
  gameCenterEnabled = L0_2
end

debugGCpopup = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = _G
  L0_2 = L0_2.assert
  L1_2 = useMockAchievementLimits
  L1_2 = L1_2 ~= nil
  L0_2(L1_2)
  L0_2 = isIOSFree
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = freeAchievementLimits
    currentAchievementLimits = L0_2
    L0_2 = 3
    achievementPopUpDuration = L0_2
  else
    L0_2 = useMockAchievementLimits
    if L0_2 then
      L0_2 = mockAchievementLimits
      currentAchievementLimits = L0_2
      L0_2 = 15
      achievementPopUpDuration = L0_2
    else
      L0_2 = achievementLimits
      currentAchievementLimits = L0_2
      L0_2 = 3
      achievementPopUpDuration = L0_2
    end
  end
end

initializeAchievementLimits = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = currentAchievementLimits
  L2_2 = L2_2 ~= nil
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2 ~= nil
  L1_2(L2_2)
  L1_2 = currentAchievementLimits
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

getAchievementLimit = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.controllable
  if not L2_2 then
    L2_2 = A0_2.controllable
    if not L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A1_2.yellowBirdShot
  if not L2_2 then
    L2_2 = A0_2.yellowBirdShot
  end
  ::lbl_11::
  if not L2_2 then
    if L2_2 ~= nil then
      L3_2 = A1_2.strength
      if L3_2 <= 0 then
        L3_2 = A0_2.yellowBirdShot
        if L3_2 then
          L3_2 = A1_2.levelGoal
          if not L3_2 then
            L3_2 = SettingsWrapper
            L4_2 = L3_2
            L3_2 = L3_2.blockDestroyedByPlayerLaser
            L3_2(L4_2)
            L3_2 = isIOSFree
            L3_2 = L3_2()
            if L3_2 then
              L3_2 = SettingsWrapper
              L4_2 = L3_2
              L3_2 = L3_2.getNumBlocksDestroyedByPlayerLaser
              L3_2 = L3_2(L4_2)
              L4_2 = getAchievementLimit
              L5_2 = "Laser Shooter Trainee"
              L4_2 = L4_2(L5_2)
              if L3_2 >= L4_2 then
                L3_2 = registerAchievement
                L4_2 = "Laser Shooter Trainee"
                L3_2(L4_2)
              end
            else
              L3_2 = SettingsWrapper
              L4_2 = L3_2
              L3_2 = L3_2.getNumBlocksDestroyedByPlayerLaser
              L3_2 = L3_2(L4_2)
              L4_2 = getAchievementLimit
              L5_2 = "Ultimate Laser Shooter"
              L4_2 = L4_2(L5_2)
              if L3_2 >= L4_2 then
                L3_2 = registerAchievement
                L4_2 = "Ultimate Laser Shooter"
                L3_2(L4_2)
              end
            end
          end
          L3_2 = checkForPigsDirectShotAchievement
          L4_2 = A0_2
          L3_2(L4_2)
        else
          L3_2 = getObjectDefinition
          L4_2 = A0_2.emitterName
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L4_2 = objects
            L4_2 = L4_2.world
            L5_2 = A0_2.emitterName
            L4_2 = L4_2[L5_2]
            L4_2 = L4_2.parent
            L5_2 = isStormTrooper
            L6_2 = L4_2.definition
            L5_2 = L5_2(L6_2)
            if L5_2 then
              L5_2 = isStormTrooper
              L6_2 = A1_2.definition
              L5_2 = L5_2(L6_2)
              if L5_2 and L4_2 ~= A1_2 then
                L5_2 = registerAchievement
                L6_2 = "There's No-one Here"
                L5_2(L6_2)
              end
            end
          end
        end
      end
    else
      L3_2 = getObjectDefinition
      L4_2 = A0_2.emitterName
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = objects
        L4_2 = L4_2.world
        L5_2 = A0_2.emitterName
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.parent
        L5_2 = isTurret
        L6_2 = L4_2.definition
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = isChewbacca
          L6_2 = A1_2.definition
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = SettingsWrapper
            L6_2 = L5_2
            L5_2 = L5_2.nonPlayerGunShotBird
            L7_2 = L4_2.name
            L8_2 = A1_2.name
            L9_2 = L4_2.timeCreated
            L5_2(L6_2, L7_2, L8_2, L9_2)
            L5_2 = SettingsWrapper
            L6_2 = L5_2
            L5_2 = L5_2.getTimesNonPlayerGunShotBird
            L7_2 = L4_2.name
            L8_2 = A1_2.name
            L9_2 = L4_2.timeCreated
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
            L6_2 = getAchievementLimit
            L7_2 = "Walking Carpet"
            L6_2 = L6_2(L7_2)
            if L5_2 > L6_2 then
              L5_2 = registerAchievement
              L6_2 = "Walking Carpet"
              L5_2(L6_2)
            end
          end
        end
      end
    end
  end
end

checkForLaserShotAchievements = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2 == "PIG_SMALL" or A0_2 == "PIG_MEDIUM" or A0_2 == "PIG_LARGE"
  return L1_2
end

isStormTrooper = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2 == "RedBigBird_1" or A0_2 == "RedBigBird_2" or A0_2 == "RedBigBird_3"
  return L1_2
end

isChewbacca = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2 == "PIG_TURRET_BODY_1" or A0_2 == "PIG_TURRET_BODY_2" or A0_2 == "PIG_TURRET_COVER_1" or A0_2 == "PIG_TURRET_COVER_2" or A0_2 == "PIG_TURRET_CANNON_1" or A0_2 == "PIG_TURRET_CANNON_2"
  return L1_2
end

isTurret = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.laserCollisions
  L1_2 = L1_2[1]
  L1_2 = L1_2.material
  if L1_2 then
    L1_2 = A0_2.laserCollisions
    L1_2 = L1_2[1]
    L1_2 = L1_2.levelGoal
    if L1_2 then
      L1_2 = A0_2.numPigHit
      if not L1_2 then
        L1_2 = 0
      end
      A0_2.numPigHit = L1_2
      L1_2 = A0_2.numPigHit
      L1_2 = L1_2 + 1
      A0_2.numPigHit = L1_2
      L1_2 = A0_2.numPigHit
      L2_2 = getAchievementLimit
      L3_2 = "Target Shooter"
      L2_2 = L2_2(L3_2)
      if L1_2 == L2_2 then
        L1_2 = registerAchievement
        L2_2 = "Target Shooter"
        L1_2(L2_2)
      end
    end
  end
end

checkForPigsDirectShotAchievement = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = getObjectDefinition
  L2_2 = A0_2.other
  L1_2 = L1_2(L2_2)
  L2_2 = isStormTrooper
  L3_2 = L1_2.definition
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L1_2.strength
    L3_2 = A0_2.resultDamage
    if L2_2 <= L3_2 then
      L2_2 = registerAchievement
      L3_2 = "Imperial Entanglement"
      L2_2(L3_2)
    end
  end
end

checkForWingPoppedPigAchievement = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.levelGoal
  if L3_2 then
    L3_2 = A0_2.strength
    if L3_2 <= 0 then
      L3_2 = A1_2.levelGoal
      if L3_2 then
        L3_2 = A1_2.strength
        if L3_2 <= 0 then
          L3_2 = getLevelMetadata
          L4_2 = A2_2
          L3_2 = L3_2(L4_2)
          L3_2 = L3_2.objectsDestroyableByTap
          if not L3_2 then
            L3_2 = registerAchievement
            L4_2 = "Banging Heads"
            L3_2(L4_2)
          end
        end
      end
    end
  end
end

checkTwoWayLevelGoalPopAchievement = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.levelRestarted
  L0_2(L1_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getTimesLevelRestarted
  L0_2 = L0_2(L1_2)
  L1_2 = getAchievementLimit
  L2_2 = "Lack of Faith"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = registerAchievement
    L1_2 = "Lack of Faith"
    L0_2(L1_2)
  end
end

checkLevelRestartAchievement = L0_1
L0_1 = nil
currentAchievementLimits = L0_1
L0_1 = {}
freeAchievementLimits = L0_1
L0_1 = {}
achievementLimits = L0_1
L0_1 = {}
mockAchievementLimits = L0_1
