local L0_1, L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.isInGameMode
  return L0_2()
end

isInPlayMode = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.deviceModel
  L0_2 = L0_2 == "android"
  L1_2 = gamelua
  L1_2 = L1_2.isHDVersion
  return L0_2, L1_2
end

isAndroid = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.deviceModel
  L0_2 = L0_2 == "ipad"
  return L0_2
end

isiPad = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.isIOSVersion
  return L0_2()
end

isiOS = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.deviceModel
  L0_2 = L0_2 == "iphone"
  return L0_2
end

isiPhone = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.deviceModel
  L0_2 = L0_2 == "iphone4"
  return L0_2
end

isiPhone4 = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.isLiteVersion
  return L0_2
end

isLiteVersion = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.deviceModel
  L0_2 = L0_2 == "iphone"
  return L0_2
end

isPhone = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = gamelua
  L1_2 = L1_2.highscores
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.score
  return L1_2
end

getHighscoreAtlevel = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.currentLevel
  L0_2 = L0_2 - 1
  return L0_2
end

getCurrentLevelNumber = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.getLevelMetadata
  L1_2 = gamelua
  L1_2 = L1_2.levelName
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.levelNumberSuffix
  if not L0_2 then
    L0_2 = _G
    L0_2 = L0_2.tostring
    L1_2 = getCurrentLevelNumber
    L1_2 = L1_2()
    L0_2 = L0_2(L1_2)
  end
  return L0_2
end

getCurrentLevelNumberOrSuffix = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = gamelua
  L0_2 = L0_2.getLevelMetadata
  L1_2 = gamelua
  L1_2 = L1_2.levelName
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.flurrySuffix
  if L0_2 then
    L1_2 = getCurrentLevelNumberOrSuffix
    L1_2 = L1_2()
    L2_2 = L0_2
    L1_2 = L1_2 .. L2_2
    return L1_2
  end
  L1_2 = getCurrentLevelNumberOrSuffix
  return L1_2()
end

getCurrentLevelNumberForFlurry = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = gamelua
  L0_2 = L0_2.getEpisodeNumber
  L1_2 = gamelua
  L1_2 = L1_2.currentFolder
  L0_2 = L0_2(L1_2)
  L1_2 = gamelua
  L1_2 = L1_2.getEpisodeMetadata
  L2_2 = gamelua
  L2_2 = L2_2.currentFolder
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.levelNumberPrefix
  if not L1_2 then
    L1_2 = L0_2
  end
  return L1_2
end

getCurrentEpisodeNumberForFlurry = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = _G
  L0_2 = L0_2.assert
  L1_2 = false
  L2_2 = "no current world in space!"
  L0_2(L1_2, L2_2)
end

getCurrentWorldNumber = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.getEpisodeNumber
  L1_2 = gamelua
  L1_2 = L1_2.currentFolder
  return L0_2(L1_2)
end

getCurrentEpisodeNumber = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.actions
  L0_2 = L0_2.myLevelFolders
  L1_2 = getCurrentEpisodeNumber
  L1_2 = L1_2()
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2 == "bonus"
  return L0_2
end

isCurrentLevelGE = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.actions
  L0_2 = L0_2.myLevelFolders
  L0_2 = #L0_2
  return L0_2
end

getTotalEpisodes = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = gamelua
  L4_2 = L4_2.g_episodes
  L4_2 = L4_2[A0_2]
  if L4_2 ~= nil then
    L4_2 = gamelua
    L4_2 = L4_2.g_episodes
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.pages
    L4_2 = L4_2[A1_2]
    if L4_2 ~= nil then
      L4_2 = gamelua
      L4_2 = L4_2.g_episodes
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.pages
      L4_2 = L4_2[A1_2]
      L4_2 = L4_2.levels
      L4_2 = L4_2[A2_2]
      if L4_2 ~= nil then
        L4_2 = gamelua
        L4_2 = L4_2.g_episodes
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2.pages
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2.levels
        L4_2 = L4_2[A2_2]
        L3_2 = L4_2.name
        L4_2 = gamelua
        L4_2 = L4_2.highscores
        L4_2 = L4_2[L3_2]
        if L4_2 ~= nil then
          L4_2 = gamelua
          L4_2 = L4_2.highscores
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.score
          if not L4_2 then
            L4_2 = 0
          end
          L5_2 = 0
          L6_2 = gamelua
          L6_2 = L6_2.starTable
          L6_2 = L6_2[L3_2]
          L6_2 = L6_2.goldScore
          if L4_2 >= L6_2 then
            L5_2 = 3
          else
            L6_2 = starTable
            L6_2 = L6_2[L3_2]
            L6_2 = L6_2.silverScore
            if L4_2 >= L6_2 then
              L5_2 = 2
            else
              L5_2 = 1
            end
          end
          L6_2 = {}
          L7_2 = gamelua
          L7_2 = L7_2.highscores
          L7_2 = L7_2[L3_2]
          L7_2 = L7_2.completed
          L6_2.completed = L7_2
          L6_2.stars = L5_2
          return L6_2
        end
      end
    end
  end
  L4_2 = {}
  L4_2.completed = false
  L4_2.stars = 0
  return L4_2
end

getLevelData = L0_1

function L0_1()
  local L0_2, L1_2
end

getAchievements = L0_1

function L0_1()
  local L0_2, L1_2
end

getUnlockedAchievements = L0_1

function L0_1(A0_2)
  local L1_2
end

getAchievementIconByName = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L2_2 = gamelua
  L2_2 = L2_2.bi_data
  L2_2 = L2_2.root
  L2_2 = L2_2.levelStartDates
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.levelStartDates = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L1_2 = L1_2.levelStartDates
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = gamelua
    L2_2 = L2_2.getTimeDifference
    L3_2 = gamelua
    L3_2 = L3_2.getCurrentTime
    L3_2 = L3_2()
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
    L2_2 = L1_2.days
    return L2_2
  else
    L2_2 = nil
    return L2_2
  end
end

daysSinceLastLevelStart = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L1_2 = L1_2.levelStartDates
  L2_2 = gamelua
  L2_2 = L2_2.getCurrentTime
  L2_2 = L2_2()
  L1_2[A0_2] = L2_2
end

resetLevelStartDate = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L2_2 = gamelua
  L2_2 = L2_2.bi_data
  L2_2 = L2_2.root
  L2_2 = L2_2.levelAttemptsSinceLastSuccess
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.levelAttemptsSinceLastSuccess = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L1_2 = L1_2.levelAttemptsSinceLastSuccess
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = 1
  end
  return L1_2
end

getAttemptsSinceLastLevelSuccess = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L2_2 = gamelua
  L2_2 = L2_2.bi_data
  L2_2 = L2_2.root
  L2_2 = L2_2.levelAttemptsSinceLastSuccess
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.levelAttemptsSinceLastSuccess = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L1_2 = L1_2.levelAttemptsSinceLastSuccess
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.bi_data
    L1_2 = L1_2.root
    L1_2 = L1_2.levelAttemptsSinceLastSuccess
    L2_2 = gamelua
    L2_2 = L2_2.bi_data
    L2_2 = L2_2.root
    L2_2 = L2_2.levelAttemptsSinceLastSuccess
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2 + 1
    L1_2[A0_2] = L2_2
  else
    L1_2 = gamelua
    L1_2 = L1_2.bi_data
    L1_2 = L1_2.root
    L1_2 = L1_2.levelAttemptsSinceLastSuccess
    L1_2[A0_2] = 1
  end
end

increaseAttemptsSinceLastLevelSuccess = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L2_2 = gamelua
  L2_2 = L2_2.bi_data
  L2_2 = L2_2.root
  L2_2 = L2_2.levelAttemptsSinceLastSuccess
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.levelAttemptsSinceLastSuccess = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.bi_data
  L1_2 = L1_2.root
  L1_2 = L1_2.levelAttemptsSinceLastSuccess
  L1_2[A0_2] = 0
end

resetAttemptsSinceLastLevelSuccess = L0_1
