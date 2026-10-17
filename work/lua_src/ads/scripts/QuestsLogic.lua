local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
gamePlayQuests = L0_1
L0_1 = {}
collectibleQuests = L0_1
L0_1 = {}
levelStartQuests = L0_1
L0_1 = {}
L1_1 = {}
L0_1.chapterQuests = L1_1
L1_1 = {}
L2_1 = "Galactic Network"
L1_1[1] = L2_1
L0_1.overallQuests = L1_1
L1_1 = {}
L0_1.characterQuests = L1_1
excludedQuests = L0_1
L0_1 = 0
g_gamePlayItemsCheckTimer = L0_1
L0_1 = 4
QUESTS_PER_POPUP = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.characterQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.questType
    if L5_2 == "collectible" then
      L5_2 = _G
      L5_2 = L5_2.table
      L5_2 = L5_2.insert
      L6_2 = collectibleQuests
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.overallQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.questType
    if L5_2 == "collectible" then
      L5_2 = _G
      L5_2 = L5_2.table
      L5_2 = L5_2.insert
      L6_2 = collectibleQuests
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.chapterQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = _G
    L5_2 = L5_2.pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L9_2.questType
      if L10_2 == "collectible" then
        L10_2 = _G
        L10_2 = L10_2.table
        L10_2 = L10_2.insert
        L11_2 = collectibleQuests
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
      L10_2 = L9_2.rewardOnLevelStart
      if L10_2 then
        L10_2 = _G
        L10_2 = L10_2.table
        L10_2 = L10_2.insert
        L11_2 = levelStartQuests
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  L0_2 = ui
  L0_2 = L0_2.QuestLine
  L0_2 = L0_2.getHeight
  L1_2 = nil
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2 * 1.1
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.floor
  L2_2 = screenHeight
  L2_2 = L2_2 / L0_2
  L1_2 = L1_2(L2_2)
  QUESTS_PER_POPUP = L1_2
end

initGamePlayQuests = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 <= 0 then
    return
  end
  L1_2 = g_firstBirdShot
  if not L1_2 then
    L1_2 = print
    L2_2 = "Getting score before shooting bird!"
    L1_2(L2_2)
  end
  L1_2 = birdTypeCollectingScore
  if L1_2 then
    L1_2 = blockTable
    L1_2 = L1_2.blocks
    L2_2 = birdTypeCollectingScore
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.doesNotCollectPoints
    if not L1_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L1_2 = birdLevelScores
  L2_2 = birdTypeCollectingScore
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = numberOfBirdLevelScores
    L1_2 = L1_2 + 1
    numberOfBirdLevelScores = L1_2
    L1_2 = birdLevelScores
    L2_2 = birdTypeCollectingScore
    L3_2 = {}
    L3_2.score = 0
    L4_2 = numberOfBirdLevelScores
    L3_2.order = L4_2
    L1_2[L2_2] = L3_2
  end
  L1_2 = birdLevelScores
  L2_2 = birdTypeCollectingScore
  L1_2 = L1_2[L2_2]
  L2_2 = birdLevelScores
  L3_2 = birdTypeCollectingScore
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.score
  L2_2 = L2_2 + A0_2
  L1_2.score = L2_2
end

addScoreToBird = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = "leftover_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = birdLevelScores
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L3_2 = numberOfBirdLevelScores
    L3_2 = L3_2 + 1
    numberOfBirdLevelScores = L3_2
    L3_2 = birdLevelScores
    L4_2 = {}
    L4_2.score = 0
    L5_2 = numberOfBirdLevelScores
    L4_2.order = L5_2
    L4_2.leftover = true
    L3_2[L2_2] = L4_2
  end
  L3_2 = birdLevelScores
  L3_2 = L3_2[L2_2]
  L4_2 = birdLevelScores
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.score
  L4_2 = L4_2 + A1_2
  L3_2.score = L4_2
end

addLeftoverBirdScore = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = g_questDataTable
  L4_2 = L4_2.characterQuests
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.questParameter
    if L8_2 == A0_2 then
      L2_2 = L7_2
      break
    end
  end
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.addBirdScore
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end

addScoreToBirdQuest = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = getQuest
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = nil
    L3_2 = L1_2.title
    L3_2 = L3_2.en_EN
    if L3_2 then
      L3_2 = getLocalizedText
      L4_2 = getCharacterText
      L5_2 = L1_2.title
      L4_2, L5_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    else
      L3_2 = getCharacterText
      L4_2 = L1_2.title
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
    L3_2 = L2_2[1]
    if L3_2 then
      L3_2 = #L2_2
      return L3_2
    else
      L3_2 = 1
      return L3_2
    end
  end
  L2_2 = 0
  return L2_2
end

getQuestMaximumLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.overallQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.name
    if L6_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

isQuestOverallQuest = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.characterQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.name
    if L6_2 == A0_2 then
      return L5_2
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.overallQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.name
    if L6_2 == A0_2 then
      return L5_2
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.chapterQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2.name
      if L11_2 == A0_2 then
        return L10_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end

getQuest = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end

isQuestAlreadyGivenOnDevice = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = getCurrentQuestProgress
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = getCurrentQuestGoal
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L1_2 >= L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = isQuestAlreadyGivenOnDevice
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end

isQuestCompleted = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = isQuestAlreadyGivenOnDevice
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = getQuestLevel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isQuestClaimed
  L4_2 = A0_2
  L5_2 = L1_2
  return L2_2(L3_2, L4_2, L5_2)
end

isQuestClaimed = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = getQuest
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = getCurrentQuestProgress
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 + A1_2
  L4_2 = getCurrentQuestGoal
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L3_2 >= L4_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end

isQuestCompletedWithGivenIncrement = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getQuestLevel
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = getQuestMaximumLevel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = L1_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end

getQuestLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.type
  L2_2 = A0_2.goal
  L1_2 = L1_2(L2_2)
  if L1_2 == "table" then
    L1_2 = A0_2.goal
    L2_2 = getQuestLevel
    L3_2 = A0_2.name
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = A0_2.goal
    return L1_2
  end
end

getCurrentQuestGoal = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.name
  L2_2 = A0_2.questType
  if not L2_2 then
    L2_2 = ""
  end
  if L2_2 == "levelsCompleted" then
    L3_2 = 0
    L4_2 = _G
    L4_2 = L4_2.pairs
    L5_2 = highscores
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L3_2 = L3_2 + 1
    end
    return L3_2
  else
    if L2_2 == "samsungAchievement" then
      L3_2 = isValidQuestDevice
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = SettingsWrapper
        L4_2 = L3_2
        L3_2 = L3_2.getSmsngDevicePassedLevels
        return L3_2(L4_2)
    end
    elseif L2_2 == "totalStars" then
      L3_2 = calculateStarsForAllEpisodes
      return L3_2()
    elseif L2_2 == "totalScore" then
      L3_2 = calculateScoreForAllEpisodes
      return L3_2()
    elseif L2_2 == "collectedCoins" then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.getTotalHiddenCoinsCollected
      return L3_2(L4_2)
    elseif L2_2 == "totalBirdsLaunched" then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.getBirdsShot
      return L3_2(L4_2)
    elseif L2_2 == "totalTimePlayed" then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.getPlaytime
      return L3_2(L4_2)
    elseif L2_2 == "totalDamage" then
      L3_2 = 0
      L4_2 = _G
      L4_2 = L4_2.pairs
      L5_2 = g_questDataTable
      L5_2 = L5_2.characterQuests
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.getBirdScore
        L11_2 = L8_2.questParameter
        L9_2 = L9_2(L10_2, L11_2)
        L3_2 = L3_2 + L9_2
      end
      return L3_2
    elseif L2_2 == "idLogin" then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.hasPlayerSignedInToID
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = 1
        return L3_2
      else
        L3_2 = 0
        return L3_2
      end
    elseif L2_2 == "characterScore" then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.getBirdScore
      L5_2 = A0_2.questParameter
      return L3_2(L4_2, L5_2)
    elseif L2_2 == "chapterScore" then
      L3_2 = calculateEpisodeScoreAndStarsWithName
      L4_2 = A0_2.questParameter
      L3_2 = L3_2(L4_2)
      return L3_2
    elseif L2_2 == "chapterStars" then
      L3_2 = calculateEpisodeScoreAndStarsWithName
      L4_2 = A0_2.questParameter
      L3_2, L4_2 = L3_2(L4_2)
      return L4_2
    elseif L2_2 == "chapterLightSideOpen" then
      L3_2 = isEpisodeSideDisabled
      L4_2 = A0_2.questParameter
      L5_2 = true
      L3_2, L4_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L5_2 = getCurrentQuestGoal
        L6_2 = A0_2
        return L5_2(L6_2)
      else
        L5_2 = getCurrentQuestGoal
        L6_2 = A0_2
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2 - L4_2
        return L5_2
      end
    elseif L2_2 == "chapterCompleted" then
      L3_2 = getEpisodeProgress
      L4_2 = A0_2.questParameter
      L5_2 = false
      return L3_2(L4_2, L5_2)
    elseif L2_2 == "chapterDarkSideOpen" then
      L3_2 = isEpisodeSideDisabled
      L4_2 = A0_2.questParameter
      L5_2 = false
      L3_2, L4_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L5_2 = getCurrentQuestGoal
        L6_2 = A0_2
        return L5_2(L6_2)
      else
        L5_2 = getCurrentQuestGoal
        L6_2 = A0_2
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2 - L4_2
        return L5_2
      end
    elseif L2_2 == "collectible" then
      L3_2 = 0
      L4_2 = SettingsWrapper
      L5_2 = L4_2
      L4_2 = L4_2.getCollectiblesFound
      L4_2 = L4_2(L5_2)
      collectedItems = L4_2
      L4_2 = collectedItems
      L5_2 = A0_2.questParameter
      L4_2 = L4_2[L5_2]
      if L4_2 then
        L4_2 = _G
        L4_2 = L4_2.pairs
        L5_2 = collectedItems
        L6_2 = A0_2.questParameter
        L5_2 = L5_2[L6_2]
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        for L7_2, L8_2 in L4_2, L5_2, L6_2 do
          L3_2 = L3_2 + 1
        end
      end
      return L3_2
    elseif L2_2 == "levelStarted" then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.wasLevelStartedBefore
      L5_2 = A0_2.questParameter
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = 1
        if L3_2 then
          goto lbl_198
        end
      end
      L3_2 = 0
      ::lbl_198::
      return L3_2
    elseif L2_2 == "rank" then
      L3_2 = calculateEpisodeScoreAndStarsWithName
      L4_2 = A0_2.questParameter
      L3_2, L4_2 = L3_2(L4_2)
      return L4_2
    else
      L3_2 = 0
      return L3_2
    end
  end
end

getCurrentQuestProgress = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.questType
  if L1_2 then
    L1_2 = A0_2.questType
    if L1_2 == "samsungAchievement" then
      L1_2 = _G
      L1_2 = L1_2.tostring
      L2_2 = deviceInfoModel
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2
      L1_2 = L1_2.lower
      L1_2 = L1_2(L2_2)
      L2_2 = nil
      L3_2 = g_samsungDeviceData
      L3_2 = L3_2.cloudData
      if L3_2 then
        L3_2 = print
        L4_2 = "Using samsung device cloud data."
        L3_2(L4_2)
        L3_2 = g_samsungDeviceData
        L3_2 = L3_2.cloudData
        L2_2 = L3_2.data
      else
        L3_2 = g_samsungDeviceData
        L3_2 = L3_2.cachedData
        if L3_2 then
          L3_2 = print
          L4_2 = "Using samsung device cached data."
          L3_2(L4_2)
          L3_2 = g_samsungDeviceData
          L3_2 = L3_2.cachedData
          L2_2 = L3_2.data
        else
          L3_2 = g_samsungDeviceData
          L3_2 = L3_2.packageData
          if L3_2 then
            L3_2 = print
            L4_2 = "Using samsung device package data."
            L3_2(L4_2)
            L3_2 = g_samsungDeviceData
            L3_2 = L3_2.packageData
            L2_2 = L3_2.data
          end
        end
      end
      if L2_2 then
        L3_2 = L2_2.deviceModels
        if L3_2 then
          L3_2 = _G
          L3_2 = L3_2.pairs
          L4_2 = L2_2.deviceModels
          L3_2, L4_2, L5_2 = L3_2(L4_2)
          for L6_2, L7_2 in L3_2, L4_2, L5_2 do
            L8_2 = _G
            L8_2 = L8_2.type
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            if L8_2 ~= "number" then
              L9_2 = L6_2
              L8_2 = L6_2.lower
              L8_2 = L8_2(L9_2)
              if L8_2 == L1_2 then
                L8_2 = getText
                L9_2 = "TEXT_SAMSUNG_ACHIEVEMENT_TITLE"
                L10_2 = {}
                L11_2 = "$DEVICE_NAME"
                L12_2 = L7_2
                L10_2[1] = L11_2
                L10_2[2] = L12_2
                return L8_2(L9_2, L10_2)
              end
            end
          end
        end
      end
    end
  end
  L1_2 = getLocalizedText
  L2_2 = A0_2.title
  return L1_2(L2_2)
end

getQuestTitle = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.questType
  if L1_2 then
    L1_2 = A0_2.questType
    if L1_2 == "samsungAchievement" then
      L1_2 = _G
      L1_2 = L1_2.tostring
      L2_2 = deviceInfoModel
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2
      L1_2 = L1_2.lower
      L1_2 = L1_2(L2_2)
      L2_2 = nil
      L3_2 = g_samsungDeviceData
      L3_2 = L3_2.cloudData
      if L3_2 then
        L3_2 = print
        L4_2 = "Using samsung device cloud data."
        L3_2(L4_2)
        L3_2 = g_samsungDeviceData
        L3_2 = L3_2.cloudData
        L2_2 = L3_2.data
      else
        L3_2 = g_samsungDeviceData
        L3_2 = L3_2.cachedData
        if L3_2 then
          L3_2 = print
          L4_2 = "Using samsung device cached data."
          L3_2(L4_2)
          L3_2 = g_samsungDeviceData
          L3_2 = L3_2.cachedData
          L2_2 = L3_2.data
        else
          L3_2 = g_samsungDeviceData
          L3_2 = L3_2.packageData
          if L3_2 then
            L3_2 = print
            L4_2 = "Using samsung device package data."
            L3_2(L4_2)
            L3_2 = g_samsungDeviceData
            L3_2 = L3_2.packageData
            L2_2 = L3_2.data
          end
        end
      end
      if L2_2 then
        L3_2 = L2_2.deviceModels
        if L3_2 then
          L3_2 = _G
          L3_2 = L3_2.pairs
          L4_2 = L2_2.deviceModels
          L3_2, L4_2, L5_2 = L3_2(L4_2)
          for L6_2, L7_2 in L3_2, L4_2, L5_2 do
            L8_2 = _G
            L8_2 = L8_2.type
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            if L8_2 ~= "number" then
              L9_2 = L6_2
              L8_2 = L6_2.lower
              L8_2 = L8_2(L9_2)
              if L8_2 == L1_2 then
                L8_2 = getText
                L9_2 = "TEXT_SAMSUNG_ACHIEVEMENT_DESCRIPTION"
                L10_2 = {}
                L11_2 = "$CREDITS"
                L12_2 = A0_2.rewardText
                L13_2 = "$DEVICE_NAME"
                L14_2 = L7_2
                L10_2[1] = L11_2
                L10_2[2] = L12_2
                L10_2[3] = L13_2
                L10_2[4] = L14_2
                return L8_2(L9_2, L10_2)
              end
            end
          end
        end
      end
    end
  end
  L1_2 = getLocalizedText
  L2_2 = A0_2.description
  return L1_2(L2_2)
end

getQuestDescription = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2.questType
  if L1_2 then
    L1_2 = A0_2.questType
    if L1_2 == "samsungAchievement" then
      L1_2 = isValidQuestDevice
      L1_2 = L1_2()
      if not L1_2 then
        L1_2 = false
        return L1_2
      end
    end
  end
  L1_2 = true
  return L1_2
end

isQuestSupportedByDevice = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = _G
  L0_2 = L0_2.tostring
  L1_2 = deviceInfoModel
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2
  L0_2 = L0_2.lower
  L0_2 = L0_2(L1_2)
  L1_2 = nil
  L2_2 = g_samsungDeviceData
  L2_2 = L2_2.cloudData
  if L2_2 then
    L2_2 = print
    L3_2 = "Using samsung device cloud data."
    L2_2(L3_2)
    L2_2 = g_samsungDeviceData
    L2_2 = L2_2.cloudData
    L1_2 = L2_2.data
  else
    L2_2 = g_samsungDeviceData
    L2_2 = L2_2.cachedData
    if L2_2 then
      L2_2 = print
      L3_2 = "Using samsung device cached data."
      L2_2(L3_2)
      L2_2 = g_samsungDeviceData
      L2_2 = L2_2.cachedData
      L1_2 = L2_2.data
    else
      L2_2 = g_samsungDeviceData
      L2_2 = L2_2.packageData
      if L2_2 then
        L2_2 = print
        L3_2 = "Using samsung device package data."
        L2_2(L3_2)
        L2_2 = g_samsungDeviceData
        L2_2 = L2_2.packageData
        L1_2 = L2_2.data
      end
    end
  end
  if L1_2 then
    L2_2 = L1_2.deviceModels
    if L2_2 then
      L2_2 = _G
      L2_2 = L2_2.pairs
      L3_2 = L1_2.deviceModels
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = _G
        L7_2 = L7_2.type
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        if L7_2 ~= "number" then
          L8_2 = L5_2
          L7_2 = L5_2.lower
          L7_2 = L7_2(L8_2)
          if L7_2 == L0_2 then
            L7_2 = true
            return L7_2
          end
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end

isValidQuestDevice = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.characterQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.questParameter
    if L6_2 == A0_2 then
      L6_2 = getCurrentQuestProgress
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L7_2 = getCurrentQuestGoal
      L8_2 = L5_2
      L7_2, L8_2 = L7_2(L8_2)
      return L6_2, L7_2, L8_2
    end
  end
end

getBirdQuestProgress = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = g_questDataTable
  L3_2 = L3_2.characterQuests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = isQuestCompleted
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = isQuestClaimed
      L8_2 = L6_2.name
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        if A0_2 ~= nil then
          L7_2 = L6_2.reward
          if A0_2 ~= L7_2 then
            goto lbl_29
          end
        end
        L7_2 = _G
        L7_2 = L7_2.table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
    ::lbl_29::
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = g_questDataTable
  L3_2 = L3_2.overallQuests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = isQuestCompleted
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = isQuestClaimed
      L8_2 = L6_2.name
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        if A0_2 ~= nil then
          L7_2 = L6_2.reward
          if A0_2 ~= L7_2 then
            goto lbl_58
          end
        end
        L7_2 = _G
        L7_2 = L7_2.table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
    ::lbl_58::
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = g_questDataTable
  L3_2 = L3_2.chapterQuests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = isQuestCompleted
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = isQuestClaimed
        L13_2 = L11_2.name
        L12_2 = L12_2(L13_2)
        if not L12_2 then
          if A0_2 ~= nil then
            L12_2 = L11_2.reward
            if A0_2 ~= L12_2 then
              goto lbl_92
            end
          end
          L12_2 = _G
          L12_2 = L12_2.table
          L12_2 = L12_2.insert
          L13_2 = L1_2
          L14_2 = L11_2
          L12_2(L13_2, L14_2)
        end
      end
      ::lbl_92::
    end
  end
  return L1_2
end

getAllClaimableQuests = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = getQuestLevel
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2.title
  L7_2 = L7_2.en_EN
  if L7_2 then
    L7_2 = getLocalizedText
    L8_2 = getCharacterText
    L9_2 = A0_2.title
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = L7_2
  else
    L7_2 = getCharacterText
    L8_2 = A0_2.title
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  end
  L7_2 = _G
  L7_2 = L7_2.type
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if L7_2 == "table" then
    L2_2 = A0_2.reward
    L7_2 = A0_2.rewardNumber
    if L7_2 then
      L7_2 = A0_2.rewardNumber
      L3_2 = L7_2[L1_2]
    end
    L7_2 = A0_2.rewardText
    if L7_2 then
      L7_2 = A0_2.rewardText
      L4_2 = L7_2[L1_2]
    end
    L7_2 = A0_2.rewardType
    if L7_2 then
      L7_2 = A0_2.rewardType
      L5_2 = L7_2[L1_2]
    end
  else
    L2_2 = A0_2.reward
    L3_2 = A0_2.rewardNumber
    L4_2 = A0_2.rewardText
    L5_2 = A0_2.rewardType
  end
  if L2_2 == "bird" then
    L7_2 = addCharacter
    L8_2 = L5_2
    L9_2 = L3_2
    L7_2(L8_2, L9_2)
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_SET_DEVICE_ACHIEVEMENT_GIVEN
    L9_2.id = L10_2
    L10_2 = A0_2.name
    L9_2.questName = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_CHARACTER_GAINED
    L9_2.id = L10_2
    L9_2.typeOfItem = "character"
    L9_2.amount = L3_2
    L9_2.typeOfGain = "achievement reward"
    L9_2.itemName = L5_2
    L9_2.packetSize = L3_2
    L7_2(L8_2, L9_2)
  elseif L2_2 == "birdPack" then
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_SET_DEVICE_ACHIEVEMENT_GIVEN
    L9_2.id = L10_2
    L10_2 = A0_2.name
    L9_2.questName = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L8_2 = L5_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = _G
      L12_2 = L12_2.type
      L13_2 = L3_2[L10_2]
      L12_2 = L12_2(L13_2)
      if L12_2 == "string" then
        L12_2 = L3_2[L10_2]
        if L12_2 == "unlimited" then
          L12_2 = addCharacter
          L13_2 = L11_2
          L14_2 = 1
          L15_2 = L3_2[L10_2]
          L12_2(L13_2, L14_2, L15_2)
          L12_2 = eventManager
          L13_2 = L12_2
          L12_2 = L12_2.notify
          L14_2 = {}
          L15_2 = events
          L15_2 = L15_2.EID_CHARACTER_GAINED
          L14_2.id = L15_2
          L14_2.typeOfItem = "unlimited"
          L14_2.amount = 1
          L14_2.typeOfGain = "achievement reward"
          L14_2.itemName = L11_2
          L14_2.packetSize = 1
          L12_2(L13_2, L14_2)
      end
      else
        L12_2 = addCharacter
        L13_2 = L11_2
        L14_2 = L3_2[L10_2]
        L12_2(L13_2, L14_2)
        L12_2 = eventManager
        L13_2 = L12_2
        L12_2 = L12_2.notify
        L14_2 = {}
        L15_2 = events
        L15_2 = L15_2.EID_CHARACTER_GAINED
        L14_2.id = L15_2
        L14_2.typeOfItem = "character"
        L15_2 = L3_2[L10_2]
        L14_2.amount = L15_2
        L14_2.typeOfGain = "achievement reward"
        L14_2.itemName = L11_2
        L15_2 = L3_2[L10_2]
        L14_2.packetSize = L15_2
        L12_2(L13_2, L14_2)
      end
    end
  elseif L2_2 == "level" then
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.unlockBonusLevel
    L9_2 = A0_2.rewardLevel
    L7_2(L8_2, L9_2)
  elseif L2_2 == "credits" then
    L7_2 = addCoins
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_SET_DEVICE_ACHIEVEMENT_GIVEN
    L9_2.id = L10_2
    L10_2 = A0_2.name
    L9_2.questName = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_COINS_GAINED
    L9_2.id = L10_2
    L9_2.amount = L3_2
    L9_2.typeOfGain = "achievement reward"
    L9_2.itemName = "Achievement reward coins"
    L9_2.iapType = "none"
    L7_2(L8_2, L9_2)
  end
  L7_2 = SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.claimQuest
  L9_2 = A0_2.name
  L10_2 = L1_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = getQuestMaximumLevel
  L8_2 = A0_2.name
  L7_2 = L7_2(L8_2)
  if L1_2 < L7_2 then
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.setQuestLevel
    L9_2 = A0_2.name
    L10_2 = L1_2 + 1
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = CloudSync
  if L7_2 then
    L7_2 = A0_2.syncCompletionToCloud
    if L7_2 then
      L7_2 = CloudSync
      L7_2 = L7_2.saveToCloud
      L8_2 = RASettingsManager
      L9_2 = L8_2
      L8_2 = L8_2.cleanLocalSettings
      L10_2 = settings
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = highscores
      L7_2(L8_2, L9_2)
    end
  end
end

claimQuestReward = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questQueue
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.name
    if L6_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

isQuestAlreadyInQueue = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = getQuest
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = isQuestCompleted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.isQuestCompletionNotified
    L4_2 = L1_2.name
    L5_2 = getQuestLevel
    L6_2 = L1_2.name
    L5_2, L6_2 = L5_2(L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = isQuestAlreadyGivenOnDevice
      L3_2 = L1_2.name
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = isQuestAlreadyInQueue
        L3_2 = L1_2.name
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = isQuestAutomaticallyRewarded
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = getQuestLevel
            L3_2 = L1_2.name
            L2_2 = L2_2(L3_2)
            L1_2.popupLevel = L2_2
            L2_2 = notifyQuestCompletion
            L3_2 = L1_2.name
            L2_2(L3_2)
            L2_2 = claimQuestReward
            L3_2 = L1_2
            L2_2(L3_2)
          else
            L2_2 = notifyQuestCompletion
            L3_2 = L1_2.name
            L2_2(L3_2)
          end
          L2_2 = queueQuestPopup
          L3_2 = L1_2
          L2_2(L3_2)
        end
      end
    end
  end
end

checkQuest = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setRewardChapterOpen
  L1_2(L2_2)
  L1_2 = nil
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = actions
  L3_2 = L3_2.myLevelFolders
  L3_2 = L3_2.bonusLevelFolders
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L8_2 = actions
    L8_2 = L8_2.myLevels
    L8_2 = L8_2[L6_2]
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = A0_2.rewardLevel
      if L12_2 == L11_2 then
        L1_2 = L6_2
      end
    end
  end
  if L1_2 then
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.addNewBonusLevels
    L4_2 = L1_2
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = events
    L5_2 = L5_2.EID_CHARACTER_ACHIEVEMENT_UNLOCKED
    L4_2.id = L5_2
    L2_2(L3_2, L4_2)
  end
end

completedCharacterQuest = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = collectibleQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = isQuestCompleted
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = SettingsWrapper
      L6_2 = L5_2
      L5_2 = L5_2.isQuestCompletionNotified
      L7_2 = L4_2.name
      L8_2 = getQuestLevel
      L9_2 = L4_2.name
      L8_2, L9_2 = L8_2(L9_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if not L5_2 then
        L5_2 = isQuestAlreadyGivenOnDevice
        L6_2 = L4_2.name
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L5_2 = isQuestAutomaticallyRewarded
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = getQuestLevel
            L6_2 = L4_2.name
            L5_2 = L5_2(L6_2)
            L4_2.popupLevel = L5_2
            L5_2 = claimQuestReward
            L6_2 = L4_2
            L5_2(L6_2)
            L5_2 = notifyQuestCompletion
            L6_2 = L4_2.name
            L5_2(L6_2)
          end
          L5_2 = queueQuestPopup
          L6_2 = L4_2
          L5_2(L6_2)
        end
      end
    end
  end
end

checkAllCollectibleItems = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = levelStartQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = isQuestCompleted
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = SettingsWrapper
      L6_2 = L5_2
      L5_2 = L5_2.isQuestCompletionNotified
      L7_2 = L4_2.name
      L8_2 = getQuestLevel
      L9_2 = L4_2.name
      L8_2, L9_2 = L8_2(L9_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if not L5_2 then
        L5_2 = isQuestAlreadyGivenOnDevice
        L6_2 = L4_2.name
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L5_2 = SettingsWrapper
          L6_2 = L5_2
          L5_2 = L5_2.isDarkSide
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = L4_2.isDark
            if L5_2 then
              goto lbl_41
            end
          end
          L5_2 = SettingsWrapper
          L6_2 = L5_2
          L5_2 = L5_2.isDarkSide
          L5_2 = L5_2(L6_2)
          if not L5_2 then
            L5_2 = L4_2.isDark
            ::lbl_41::
            if not L5_2 then
              L5_2 = isQuestAutomaticallyRewarded
              L6_2 = L4_2
              L5_2 = L5_2(L6_2)
              if L5_2 then
                L5_2 = getQuestLevel
                L6_2 = L4_2.name
                L5_2 = L5_2(L6_2)
                L4_2.popupLevel = L5_2
                L5_2 = claimQuestReward
                L6_2 = L4_2
                L5_2(L6_2)
                L5_2 = notifyQuestCompletion
                L6_2 = L4_2.name
                L5_2(L6_2)
              end
              L5_2 = queueQuestPopup
              L6_2 = L4_2
              L5_2(L6_2)
            end
          end
        end
      end
    end
  end
end

checkAllLevelStartQuests = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = gamePlayQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = isQuestCompleted
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = SettingsWrapper
      L6_2 = L5_2
      L5_2 = L5_2.isQuestCompletionNotified
      L7_2 = L4_2.name
      L8_2 = getQuestLevel
      L9_2 = L4_2.name
      L8_2, L9_2 = L8_2(L9_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if not L5_2 then
        L5_2 = isQuestAlreadyGivenOnDevice
        L6_2 = L4_2.name
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L5_2 = isQuestAutomaticallyRewarded
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = getQuestLevel
            L6_2 = L4_2.name
            L5_2 = L5_2(L6_2)
            L4_2.popupLevel = L5_2
            L5_2 = claimQuestReward
            L6_2 = L4_2
            L5_2(L6_2)
            L5_2 = eventManager
            L6_2 = L5_2
            L5_2 = L5_2.notify
            L7_2 = {}
            L8_2 = events
            L8_2 = L8_2.EID_REFRESH_COIN_AMOUNT
            L7_2.id = L8_2
            L5_2(L6_2, L7_2)
          else
            L5_2 = notifyQuestCompletion
            L6_2 = L4_2.name
            L5_2(L6_2)
          end
          L5_2 = queueQuestPopup
          L6_2 = L4_2
          L5_2(L6_2)
        end
      end
    end
  end
end

checkAllGameplayQuest = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.characterQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = checkDeviceAchievement
    L6_2 = L4_2.name
    L5_2(L6_2)
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.overallQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = checkDeviceAchievement
    L6_2 = L4_2.name
    L5_2(L6_2)
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.chapterQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = _G
    L5_2 = L5_2.pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = checkDeviceAchievement
      L11_2 = L9_2.name
      L10_2(L11_2)
    end
  end
end

checkAllDeviceAchievements = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = getQuest
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.deviceAchievement
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = _G
  L2_2 = L2_2.type
  L3_2 = L1_2.deviceAchievement
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L2_2 = _G
    L2_2 = L2_2.ipairs
    L3_2 = L1_2.deviceAchievement
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = SettingsWrapper
      L8_2 = L7_2
      L7_2 = L7_2.isQuestCompletionNotified
      L9_2 = A0_2
      L10_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if L7_2 then
        L7_2 = L1_2.deviceAchievement
        L7_2 = L7_2[L5_2]
        if L7_2 then
          L8_2 = registerAchievement
          L9_2 = L7_2
          L8_2(L9_2)
        end
      end
    end
  else
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.isQuestCompletionNotified
    L4_2 = A0_2
    L5_2 = 1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L2_2 = L1_2.deviceAchievement
      if L2_2 then
        L3_2 = registerAchievement
        L4_2 = L2_2
        L3_2(L4_2)
      end
    end
  end
end

checkDeviceAchievement = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = false
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = g_questDataTable
  L3_2 = L3_2.characterQuests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = isQuestCompleted
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = SettingsWrapper
      L8_2 = L7_2
      L7_2 = L7_2.isQuestCompletionNotified
      L9_2 = L6_2.name
      L10_2 = getQuestLevel
      L11_2 = L6_2.name
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      if not L7_2 then
        L7_2 = isQuestAlreadyGivenOnDevice
        L8_2 = L6_2.name
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = isQuestAutomaticallyRewarded
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = getQuestLevel
            L8_2 = L6_2.name
            L7_2 = L7_2(L8_2)
            L6_2.popupLevel = L7_2
            L7_2 = claimQuestReward
            L8_2 = L6_2
            L7_2(L8_2)
          elseif not A0_2 then
            L7_2 = notifyQuestCompletion
            L8_2 = L6_2.name
            L7_2(L8_2)
          end
          L7_2 = completedCharacterQuest
          L8_2 = L6_2
          L7_2(L8_2)
          L1_2 = true
          L7_2 = queueQuestPopup
          L8_2 = L6_2
          L7_2(L8_2)
        end
      end
    end
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = g_questDataTable
  L3_2 = L3_2.overallQuests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = isQuestCompleted
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = SettingsWrapper
      L8_2 = L7_2
      L7_2 = L7_2.isQuestCompletionNotified
      L9_2 = L6_2.name
      L10_2 = getQuestLevel
      L11_2 = L6_2.name
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      if not L7_2 then
        L7_2 = isQuestAlreadyGivenOnDevice
        L8_2 = L6_2.name
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = isQuestAutomaticallyRewarded
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = getQuestLevel
            L8_2 = L6_2.name
            L7_2 = L7_2(L8_2)
            L6_2.popupLevel = L7_2
            L7_2 = claimQuestReward
            L8_2 = L6_2
            L7_2(L8_2)
          elseif not A0_2 then
            L7_2 = notifyQuestCompletion
            L8_2 = L6_2.name
            L7_2(L8_2)
          end
          L1_2 = true
          L7_2 = queueQuestPopup
          L8_2 = L6_2
          L7_2(L8_2)
        end
      end
    end
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = g_questDataTable
  L3_2 = L3_2.chapterQuests
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = isQuestCompleted
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = SettingsWrapper
        L13_2 = L12_2
        L12_2 = L12_2.isQuestCompletionNotified
        L14_2 = L11_2.name
        L15_2 = getQuestLevel
        L16_2 = L11_2.name
        L15_2, L16_2 = L15_2(L16_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        if not L12_2 then
          L12_2 = isQuestAlreadyGivenOnDevice
          L13_2 = L11_2.name
          L12_2 = L12_2(L13_2)
          if not L12_2 then
            L12_2 = isQuestAutomaticallyRewarded
            L13_2 = L11_2
            L12_2 = L12_2(L13_2)
            if L12_2 then
              L12_2 = getQuestLevel
              L13_2 = L11_2.name
              L12_2 = L12_2(L13_2)
              L11_2.popupLevel = L12_2
              L12_2 = claimQuestReward
              L13_2 = L11_2
              L12_2(L13_2)
            elseif not A0_2 then
              L12_2 = notifyQuestCompletion
              L13_2 = L11_2.name
              L12_2(L13_2)
            end
            L1_2 = true
            L12_2 = queueQuestPopup
            L13_2 = L11_2
            L12_2(L13_2)
          end
        end
      end
    end
  end
  return L1_2
end

checkAllQuests = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setNewlyCompletedQuestName
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.notifyQuestCompletion
  L3_2 = A0_2
  L4_2 = getQuestLevel
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_SHOP_CLAIM_REWARD
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

notifyQuestCompletion = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if A0_2 then
    L2_2 = g_questDataTable
    L2_2 = L2_2.chapterQuests
    L1_2 = L2_2.chapter_IAP_dark
  else
    L2_2 = g_questDataTable
    L2_2 = L2_2.chapterQuests
    L1_2 = L2_2.chapter_IAP_light
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.questType
    if L7_2 == "rank" then
      L7_2 = L6_2.goal
      L8_2 = getCurrentQuestProgress
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = 0
      L10_2 = _G
      L10_2 = L10_2.ipairs
      L11_2 = L7_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        if L14_2 > L8_2 then
          L9_2 = L13_2 - 1
          break
        elseif L14_2 == L8_2 then
          L9_2 = L13_2
          break
        end
      end
      L10_2 = nil
      if L9_2 then
        L11_2 = {}
        L10_2 = L11_2
        if L9_2 == 0 then
          L6_2 = L6_2.defaultRank
          L11_2 = getLocalizedText
          L12_2 = getCharacterText
          L13_2 = L6_2.title
          L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L10_2.title = L11_2
          L11_2 = getLocalizedText
          L12_2 = getCharacterText
          L13_2 = L6_2.rankLevel
          L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L10_2.rankLevel = L11_2
          L11_2 = L6_2.thumb
          L10_2.thumb = L11_2
        else
          L11_2 = getLocalizedText
          L12_2 = getCharacterText
          L13_2 = L6_2.title
          L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L11_2 = L11_2[L9_2]
          L10_2.title = L11_2
          L11_2 = getLocalizedText
          L12_2 = getCharacterText
          L13_2 = L6_2.rankLevel
          L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L11_2 = L11_2[L9_2]
          L10_2.rankLevel = L11_2
          L11_2 = L6_2.rewardThumb
          L11_2 = L11_2[L9_2]
          L10_2.thumb = L11_2
        end
      end
      return L10_2
    end
  end
  L2_2 = assert
  L3_2 = false
  L4_2 = "Returning nil from getCurrentRank"
  L2_2(L3_2, L4_2)
end

getCurrentRank = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if A0_2 then
    L2_2 = g_questDataTable
    L2_2 = L2_2.chapterQuests
    L1_2 = L2_2.chapter_IAP_dark
  else
    L2_2 = g_questDataTable
    L2_2 = L2_2.chapterQuests
    L1_2 = L2_2.chapter_IAP_light
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.questType
    if L7_2 == "rank" then
      L7_2 = L6_2.goal
      L8_2 = getCurrentQuestProgress
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = nil
      L10_2 = _G
      L10_2 = L10_2.ipairs
      L11_2 = L7_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        if not (L14_2 > L8_2) then
          if L14_2 ~= L8_2 then
            goto lbl_38
          end
          L15_2 = #L7_2
          if L13_2 ~= L15_2 then
            goto lbl_38
          end
        end
        L9_2 = L13_2
        do break end
        goto lbl_42
        ::lbl_38::
        if L14_2 == L8_2 then
          L9_2 = L13_2 + 1
          break
        end
        ::lbl_42::
      end
      L10_2 = nil
      if L9_2 then
        L11_2 = {}
        L10_2 = L11_2
        L11_2 = getLocalizedText
        L12_2 = getCharacterText
        L13_2 = L6_2.title
        L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = L11_2[L9_2]
        L10_2.title = L11_2
        L11_2 = getLocalizedText
        L12_2 = getCharacterText
        L13_2 = L6_2.rankLevel
        L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = L11_2[L9_2]
        L10_2.rankLevel = L11_2
        L11_2 = L6_2.rewardImage
        L11_2 = L11_2[L9_2]
        L10_2.thumb = L11_2
        L11_2 = getCurrentQuestProgress
        L12_2 = L6_2
        L11_2 = L11_2(L12_2)
        L10_2.currentProgress = L11_2
        L11_2 = L7_2[L9_2]
        L10_2.goalProgress = L11_2
        L11_2 = getCurrentQuestGoal
        L12_2 = L6_2
        L11_2 = L11_2(L12_2)
        L10_2.currentGoal = L11_2
        L11_2 = L6_2.rewardText
        L11_2 = L11_2[L9_2]
        L10_2.amountNum = L11_2
      end
      L11_2 = getQuestMaximumLevel
      L12_2 = L6_2.name
      L11_2 = L11_2(L12_2)
      if L9_2 >= L11_2 then
        L11_2 = isQuestClaimed
        L12_2 = L6_2.name
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = getQuestLevel
          L12_2 = L6_2.name
          L11_2 = L11_2(L12_2)
          L12_2 = getQuestMaximumLevel
          L13_2 = L6_2.name
          L12_2 = L12_2(L13_2)
          if L11_2 >= L12_2 then
            L11_2 = nil
            return L11_2
          end
        end
      end
      return L10_2
    end
  end
end

getNextUnfinishedRank = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 then
    L2_2 = g_questDataTable
    L2_2 = L2_2.chapterQuests
    L1_2 = L2_2.chapter_IAP_dark
  else
    L2_2 = g_questDataTable
    L2_2 = L2_2.chapterQuests
    L1_2 = L2_2.chapter_IAP_light
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.questType
    if L7_2 == "rank" then
      L7_2 = nil
      L8_2 = getQuestLevel
      L9_2 = L6_2.name
      L8_2 = L8_2(L9_2)
      L9_2 = getQuestMaximumLevel
      L10_2 = L6_2.name
      L9_2 = L9_2(L10_2)
      if L8_2 >= L9_2 then
        L9_2 = isQuestClaimed
        L10_2 = L6_2.name
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = getQuestLevel
          L10_2 = L6_2.name
          L9_2 = L9_2(L10_2)
          L10_2 = getQuestMaximumLevel
          L11_2 = L6_2.name
          L10_2 = L10_2(L11_2)
          if L9_2 >= L10_2 then
            L8_2 = nil
          end
        end
      end
      if L8_2 then
        L9_2 = {}
        L7_2 = L9_2
        L9_2 = getLocalizedText
        L10_2 = getCharacterText
        L11_2 = L6_2.title
        L10_2, L11_2 = L10_2(L11_2)
        L9_2 = L9_2(L10_2, L11_2)
        L9_2 = L9_2[L8_2]
        L7_2.title = L9_2
        L9_2 = getLocalizedText
        L10_2 = getCharacterText
        L11_2 = L6_2.rankLevel
        L10_2, L11_2 = L10_2(L11_2)
        L9_2 = L9_2(L10_2, L11_2)
        L9_2 = L9_2[L8_2]
        L7_2.rankLevel = L9_2
        L9_2 = L6_2.rewardImage
        L9_2 = L9_2[L8_2]
        L7_2.thumb = L9_2
        L9_2 = getCurrentQuestProgress
        L10_2 = L6_2
        L9_2 = L9_2(L10_2)
        L7_2.currentProgress = L9_2
        L9_2 = getCurrentQuestGoal
        L10_2 = L6_2
        L9_2 = L9_2(L10_2)
        L7_2.goalProgress = L9_2
        L9_2 = L6_2.rewardText
        L9_2 = L9_2[L8_2]
        L7_2.amountNum = L9_2
      end
      return L7_2
    end
  end
end

getNextRank = L0_1
L0_1 = false

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = menuManager
  L2_2 = L1_2
  L1_2 = L1_2.getRoot
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.getChild
  L4_2 = "newQuestBox"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = g_gamePlayItemsCheckTimer
  L3_2 = L3_2 + A0_2
  g_gamePlayItemsCheckTimer = L3_2
  L3_2 = g_gamePlayItemsCheckTimer
  if 1 <= L3_2 then
    L3_2 = isInGameplay
    L3_2 = L3_2()
    if L3_2 then
      L3_2 = g_gamePaused
      if not L3_2 then
        L3_2 = calculatePlaytime
        L3_2()
        L3_2 = checkAllGameplayQuest
        L3_2()
        L3_2 = 0
        g_gamePlayItemsCheckTimer = L3_2
      end
    end
  end
  L3_2 = g_questQueue
  L3_2 = #L3_2
  if 0 < L3_2 then
    if not L2_2 then
      L3_2 = {}
      while true do
        L4_2 = #L3_2
        L5_2 = QUESTS_PER_POPUP
        if not (L4_2 < L5_2) then
          break
        end
        L4_2 = g_questQueue
        L4_2 = #L4_2
        if not (0 < L4_2) then
          break
        end
        L4_2 = _G
        L4_2 = L4_2.table
        L4_2 = L4_2.insert
        L5_2 = L3_2
        L6_2 = _G
        L6_2 = L6_2.table
        L6_2 = L6_2.remove
        L7_2 = g_questQueue
        L8_2 = 1
        L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      L4_2 = displayQuestPopup
      L5_2 = L3_2
      L4_2(L5_2)
    end
    L3_2 = g_questQueue
    L3_2 = #L3_2
    if L3_2 == 0 then
      L3_2 = true
      L0_1 = L3_2
    end
  elseif not L2_2 then
    L3_2 = L0_1
    if L3_2 then
      L3_2 = eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_CURRENT_QUESTS_SHOWN
      L5_2.id = L6_2
      L3_2(L4_2, L5_2)
      L3_2 = false
      L0_1 = L3_2
    end
  end
end

updateQuests = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.popupLevel
  if not L1_2 then
    L1_2 = getQuestLevel
    L2_2 = A0_2.name
    L1_2 = L1_2(L2_2)
  end
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_QUEST_COMPLETED
  L4_2.id = L5_2
  L5_2 = A0_2.name
  L4_2.name = L5_2
  L4_2.questLevel = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.deviceAchievement
  if L2_2 then
    L2_2 = nil
    L3_2 = _G
    L3_2 = L3_2.type
    L4_2 = A0_2.deviceAchievement
    L3_2 = L3_2(L4_2)
    if L3_2 == "table" then
      L3_2 = _G
      L3_2 = L3_2.ipairs
      L4_2 = A0_2.deviceAchievement
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        if L6_2 <= L1_2 then
          L8_2 = A0_2.deviceAchievement
          L2_2 = L8_2[L6_2]
          if L2_2 then
            L8_2 = registerAchievement
            L9_2 = L2_2
            L8_2(L9_2)
          end
        end
      end
    else
      L2_2 = A0_2.deviceAchievement
      if L2_2 then
        L3_2 = registerAchievement
        L4_2 = L2_2
        L3_2(L4_2)
      end
    end
  end
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = g_questQueue
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end

queueQuestPopup = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.setNewlyCompletedQuestName
    L9_2 = L6_2.name
    L7_2(L8_2, L9_2)
    L7_2 = L6_2.popupLevel
    if not L7_2 then
      L7_2 = getQuestLevel
      L8_2 = L6_2.name
      L7_2 = L7_2(L8_2)
    end
    L8_2 = SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.notifyQuestCompletion
    L10_2 = L6_2.name
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L1_2 = AchievementPopup
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "newQuestBox"
  L3_2.quests = A0_2
  L4_2 = isQuestDismissable
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.isDismissable = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_PUSH_FRAME
  L4_2.id = L5_2
  L4_2.target = L1_2
  L2_2(L3_2, L4_2)
end

displayQuestPopup = L1_1
L1_1 = {}
L2_1 = "credits"
L3_1 = "level"
L1_1[1] = L2_1
L1_1[2] = L3_1
autoRewardedQuestTypes = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.dismissableQuest
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

isQuestDismissable = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = autoRewardedQuestTypes
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.reward
    if L6_2 ~= L5_2 then
      L6_2 = A0_2.rewardOnLevelStart
      if not L6_2 then
        goto lbl_14
      end
    end
    L6_2 = true
    do return L6_2 end
    ::lbl_14::
  end
  L1_2 = false
  return L1_2
end

isQuestAutomaticallyRewarded = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.overallQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = isQuestAutomaticallyRewarded
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = claimQuestReward
      L6_2 = L4_2
      L5_2(L6_2)
    else
      L5_2 = notifyQuestCompletion
      L6_2 = L4_2.name
      L5_2(L6_2)
    end
    L5_2 = queueQuestPopup
    L6_2 = L4_2
    L5_2(L6_2)
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.chapterQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = _G
    L5_2 = L5_2.pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = isQuestAutomaticallyRewarded
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = claimQuestReward
        L11_2 = L9_2
        L10_2(L11_2)
      else
        L10_2 = notifyQuestCompletion
        L11_2 = L9_2.name
        L10_2(L11_2)
      end
      L10_2 = queueQuestPopup
      L11_2 = L9_2
      L10_2(L11_2)
    end
  end
end

cheatAllNonCharacterQuests = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_questDataTable
  L1_2 = L1_2.characterQuests
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = isQuestAutomaticallyRewarded
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = claimQuestReward
      L6_2 = L4_2
      L5_2(L6_2)
    else
      L5_2 = notifyQuestCompletion
      L6_2 = L4_2.name
      L5_2(L6_2)
    end
    L5_2 = completedCharacterQuest
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = queueQuestPopup
    L6_2 = L4_2
    L5_2(L6_2)
  end
end

cheatAllCharacterQuests = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = excludedQuests
  L0_2 = L0_2.characterQuests
  L0_2 = #L0_2
  if 0 < L0_2 then
    L0_2 = _G
    L0_2 = L0_2.pairs
    L1_2 = g_questDataTable
    L1_2 = L1_2.characterQuests
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L5_2 = _G
      L5_2 = L5_2.pairs
      L6_2 = excludedQuests
      L6_2 = L6_2.characterQuests
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L4_2.name
        if L10_2 == L9_2 then
          L10_2 = g_questDataTable
          L10_2 = L10_2.characterQuests
          L10_2[L3_2] = nil
        end
      end
    end
  end
  L0_2 = excludedQuests
  L0_2 = L0_2.overallQuests
  L0_2 = #L0_2
  if 0 < L0_2 then
    L0_2 = _G
    L0_2 = L0_2.pairs
    L1_2 = g_questDataTable
    L1_2 = L1_2.overallQuests
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L5_2 = _G
      L5_2 = L5_2.pairs
      L6_2 = excludedQuests
      L6_2 = L6_2.overallQuests
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L4_2.name
        if L10_2 == L9_2 then
          L10_2 = g_questDataTable
          L10_2 = L10_2.overallQuests
          L10_2[L3_2] = nil
        end
      end
    end
  end
  L0_2 = excludedQuests
  L0_2 = L0_2.chapterQuests
  L0_2 = #L0_2
  if 0 < L0_2 then
    L0_2 = _G
    L0_2 = L0_2.pairs
    L1_2 = g_questDataTable
    L1_2 = L1_2.chapterQuests
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L5_2 = _G
      L5_2 = L5_2.pairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = _G
        L10_2 = L10_2.pairs
        L11_2 = excludedQuests
        L11_2 = L11_2.chapterQuests
        L10_2, L11_2, L12_2 = L10_2(L11_2)
        for L13_2, L14_2 in L10_2, L11_2, L12_2 do
          L15_2 = v
          L15_2 = L15_2.name
          if L15_2 == L14_2 then
            L15_2 = g_questDataTable
            L15_2 = L15_2.chapterQuests
            L16_2 = k
            L15_2[L16_2] = nil
          end
        end
      end
    end
  end
end

filterQuests = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "< createQuestsData >"
  L0_2(L1_2)
  L0_2 = questsCloudData
  if L0_2 then
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.isCloudQuestFileReceived
    L2_2 = gameVersionNumber
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = print
      L1_2 = "\t< createQuestsData >  using data from questsCloudData"
      L0_2(L1_2)
      L0_2 = questsCloudData
      g_questDataTable = L0_2
  end
  else
    L0_2 = print
    L1_2 = "\t< createQuestsData >  using local data (questsPackageData)"
    L0_2(L1_2)
    L0_2 = questsPackageData
    g_questDataTable = L0_2
  end
  L0_2 = rovioAccountEnabled
  if not L0_2 then
    L0_2 = filterQuests
    L0_2()
  end
end

createQuestsData = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = 0
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.overallQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = getQuestMaximumLevel
    L7_2 = L5_2.name
    L6_2 = L6_2(L7_2)
    L7_2 = 1
    L8_2 = L6_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = SettingsWrapper
      L12_2 = L11_2
      L11_2 = L11_2.isQuestClaimed
      L13_2 = L5_2.name
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      if not L11_2 then
        L11_2 = SettingsWrapper
        L12_2 = L11_2
        L11_2 = L11_2.isQuestCompletionNotified
        L13_2 = L5_2.name
        L14_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        if not L11_2 then
          goto lbl_35
        end
      end
      L11_2 = isQuestSupportedByDevice
      L12_2 = L5_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L0_2 = L0_2 + 1
      end
      ::lbl_35::
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.characterQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = getQuestMaximumLevel
    L7_2 = L5_2.name
    L6_2 = L6_2(L7_2)
    L7_2 = 1
    L8_2 = L6_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = SettingsWrapper
      L12_2 = L11_2
      L11_2 = L11_2.isQuestClaimed
      L13_2 = L5_2.name
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      if not L11_2 then
        L11_2 = SettingsWrapper
        L12_2 = L11_2
        L11_2 = L11_2.isQuestCompletionNotified
        L13_2 = L5_2.name
        L14_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        if not L11_2 then
          goto lbl_71
        end
      end
      L11_2 = isQuestSupportedByDevice
      L12_2 = L5_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L0_2 = L0_2 + 1
      end
      ::lbl_71::
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.chapterQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = getQuestMaximumLevel
      L12_2 = L10_2.name
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      L13_2 = L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = SettingsWrapper
        L17_2 = L16_2
        L16_2 = L16_2.isQuestClaimed
        L18_2 = L10_2.name
        L19_2 = L15_2
        L16_2 = L16_2(L17_2, L18_2, L19_2)
        if not L16_2 then
          L16_2 = SettingsWrapper
          L17_2 = L16_2
          L16_2 = L16_2.isQuestCompletionNotified
          L18_2 = L10_2.name
          L19_2 = L15_2
          L16_2 = L16_2(L17_2, L18_2, L19_2)
          if not L16_2 then
            goto lbl_112
          end
        end
        L16_2 = isQuestSupportedByDevice
        L17_2 = L10_2
        L16_2 = L16_2(L17_2)
        if L16_2 then
          L0_2 = L0_2 + 1
        end
        ::lbl_112::
      end
    end
  end
  return L0_2
end

getNumberOfCompletedQuests = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = 0
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.overallQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = isQuestSupportedByDevice
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = getQuestMaximumLevel
      L7_2 = L5_2.name
      L6_2 = L6_2(L7_2)
      L0_2 = L0_2 + L6_2
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.characterQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = isQuestSupportedByDevice
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = getQuestMaximumLevel
      L7_2 = L5_2.name
      L6_2 = L6_2(L7_2)
      L0_2 = L0_2 + L6_2
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_questDataTable
  L2_2 = L2_2.chapterQuests
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = isQuestSupportedByDevice
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = getQuestMaximumLevel
        L12_2 = L10_2.name
        L11_2 = L11_2(L12_2)
        L0_2 = L0_2 + L11_2
      end
    end
  end
  return L0_2
end

getNumberOfTotalQuests = L1_1
