local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  return A0_2
end

L0_1.exampeKey = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 == nil then
    return A1_2
  end
  if A1_2 == nil then
    return A0_2
  end
  L2_2 = A0_2.score
  L3_2 = A1_2.score
  if L2_2 > L3_2 then
    return A0_2
  else
  end
end

L0_1.extraCharacterScore = L1_1

function L1_1(A0_2, A1_2)
  return A0_2
end

L0_1.lastOpenedEpisode = L1_1

function L1_1(A0_2, A1_2)
  return A0_2
end

L0_1.lastOpenedEpisodeType = L1_1

function L1_1(A0_2, A1_2)
  return A0_2
end

L0_1.lastOpenedEpisodeIndex = L1_1
L1_1 = {}
L2_1 = "rovioIDIntroPageShown"
L3_1 = "firstPurchaseDone"
L4_1 = "sessionNumber"
L5_1 = "currentTheme"
L6_1 = "birdTutorials"
L7_1 = "possibleAppsList"
L8_1 = "gamePurchasedFrom"
L9_1 = "channelIntroShown"
L10_1 = "installedAppsTTL"
L11_1 = "installedAppsLastCheck"
L12_1 = "installedApps"
L13_1 = "currentVersion"
L14_1 = "birdPowersNotUsed"
L15_1 = "playerRegistered"
L16_1 = "audioEnabled"
L17_1 = "androidPremium"
L18_1 = "storedToyKeys"
L19_1 = "gameStartedLastTime"
L20_1 = "newCreditsGained"
L21_1 = "lastCarbonitePromoTime"
L22_1 = "carboniteMeltingEndTime"
L23_1 = "idleRewardTime"
L24_1 = "buyRewardIndex"
L25_1 = "meltRewardIndex"
L26_1 = "carboniteReady"
L27_1 = "assetData"
L28_1 = "weeklyRewardAvailable"
L29_1 = "dolbyProfileIndex"
L30_1 = "iapChapterRewardDisplayState"
L31_1 = "scannedTelepodCharacter"
L32_1 = "ageAndGenderCancelledOnStartup"
L33_1 = "updateNotifications"
L34_1 = "forceUpdateCheckTime"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
L1_1[11] = L12_1
L1_1[12] = L13_1
L1_1[13] = L14_1
L1_1[14] = L15_1
L1_1[15] = L16_1
L1_1[16] = L17_1
L1_1[17] = L18_1
L1_1[18] = L19_1
L1_1[19] = L20_1
L1_1[20] = L21_1
L1_1[21] = L22_1
L1_1[22] = L23_1
L1_1[23] = L24_1
L1_1[24] = L25_1
L1_1[25] = L26_1
L1_1[26] = L27_1
L1_1[27] = L28_1
L1_1[28] = L29_1
L1_1[29] = L30_1
L1_1[30] = L31_1
L1_1[31] = L32_1
L1_1[32] = L33_1
L1_1[33] = L34_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.getBuildSupportedSettings
  L4_2 = L4_2(L5_2)
  L3_2.settingsVersion = L4_2
  L2_2.root = L3_2
  L1_2.settings = L2_2
  L2_2 = {}
  L1_2.highscores = L2_2
  return L1_2
end

createEmptySettings = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L5_2 = A0_2
  L4_2 = A0_2.cleanSyncableSettings
  L6_2 = A2_2.settings
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.settings = L4_2
  L4_2 = {}
  L3_2.highscores = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.getLocalAccountConfiguration
  L6_2 = A1_2.id
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.mergeAndApplySettings
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end

loadLocalAccountConfiguration = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = gamelua
  L3_2 = L3_2.SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.removeAllIAPs
  L3_2(L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.savePersistentLuaFile
  L4_2 = "settings.lua"
  L5_2 = "settings"
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.getLocalAccountConfiguration
  L5_2 = A1_2.id
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.mergeAndApplySettings
  L6_2 = A2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end

loadMergedAccountConfiguration = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.loadTableFromFile
  L3_2 = "settings_"
  L4_2 = A1_2
  L5_2 = ".lua"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = "localAccountSettings"
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.next
  L3_2 = gamelua
  L3_2 = L3_2.localAccountSettings
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  else
    L2_2 = true
    return L2_2
  end
end

areLocalAccountSettingsAvailable = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = gamelua
  L0_2 = L0_2.SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.hasIAPs
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = true
    return L0_2
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = gamelua
  L1_2 = L1_2.highscores
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = true
    return L5_2
  end
  L0_2 = false
  return L0_2
end

hasDataToMerge = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L4_2 = A0_2
  L3_2 = A0_2.getLocalAccountSettings
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.settings = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getLocalAccountHighscores
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.highscores = L3_2
  return L2_2
end

getLocalAccountConfiguration = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.loadTableFromFile
  L3_2 = "settings_"
  L4_2 = A1_2
  L5_2 = ".lua"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = "localAccountSettings"
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.localAccountSettings
  L2_2 = L2_2.root
  if not L2_2 then
    L2_2 = gamelua
    L3_2 = {}
    L4_2 = {}
    L3_2.root = L4_2
    L2_2.localAccountSettings = L3_2
  end
  L2_2 = gamelua
  L2_2 = L2_2.localAccountSettings
  return L2_2
end

getLocalAccountSettings = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.loadTableFromFile
  L3_2 = "highscores_"
  L4_2 = A1_2
  L5_2 = ".lua"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = "localAccountHighscores"
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.localAccountHighscores
  return L2_2
end

getLocalAccountHighscores = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= "table" then
    return A1_2
  end
  L4_2 = gamelua
  L4_2 = L4_2.deepCopy
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
    L5_2 = {}
    L4_2.root = L5_2
  end
  if A3_2 then
    L5_2 = L4_2.root
    if not L5_2 then
      L5_2 = L4_2
    end
    L6_2 = A2_2.root
    if not L6_2 then
      L6_2 = A2_2
    end
    L7_2 = _G
    L7_2 = L7_2.pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L5_2[L10_2] = L11_2
    end
    return L4_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.handleTableCombine
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  if L4_2 == nil then
    L5_2 = _G
    L5_2 = L5_2.assert
    L6_2 = false
    L7_2 = "FAILED TO COMBINE SETTINGS"
    L5_2(L6_2, L7_2)
    L5_2 = {}
    L6_2 = {}
    L5_2.root = L6_2
    L4_2 = L5_2
    return L4_2
  end
  L5_2 = L4_2.root
  if L5_2 then
    L5_2 = combineAllUsedIAPs
    L6_2 = L4_2
    L5_2(L6_2)
  end
  return L4_2
end

combineSettings = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.root
  L2_2 = "IAPsUsed_"
  L3_2 = gamelua
  L3_2 = L3_2.localPlatform
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L1_2 = A0_2.root
    L2_2 = "IAPsUsed_"
    L3_2 = gamelua
    L3_2 = L3_2.localPlatform
    L2_2 = L2_2 .. L3_2
    L3_2 = {}
    L1_2[L2_2] = L3_2
  end
  L1_2 = A0_2.root
  L2_2 = "IAPsGained_"
  L3_2 = gamelua
  L3_2 = L3_2.localPlatform
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L1_2 = A0_2.root
    L2_2 = "IAPsGained_"
    L3_2 = gamelua
    L3_2 = L3_2.localPlatform
    L2_2 = L2_2 .. L3_2
    L3_2 = {}
    L1_2[L2_2] = L3_2
  end
  L1_2 = A0_2.root
  L2_2 = "IAPsLostToSynch_"
  L3_2 = gamelua
  L3_2 = L3_2.localPlatform
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L1_2 = A0_2.root
    L2_2 = "IAPsLostToSynch_"
    L3_2 = gamelua
    L3_2 = L3_2.localPlatform
    L2_2 = L2_2 .. L3_2
    L3_2 = {}
    L1_2[L2_2] = L3_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getTableDeviceSumAll
  L3_2 = A0_2.root
  L4_2 = "IAPsGained_"
  L5_2 = gamelua
  L5_2 = L5_2.localPlatform
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2[L4_2]
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSumAll
  L4_2 = A0_2.root
  L5_2 = "IAPsUsed_"
  L6_2 = gamelua
  L6_2 = L6_2.localPlatform
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getTableDeviceSumAll
  L5_2 = A0_2.root
  L6_2 = "IAPsLostToSynch_"
  L7_2 = gamelua
  L7_2 = L7_2.localPlatform
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2[L6_2]
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L4_2[L8_2] = L8_2
  end
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L4_2[L8_2]
    if L10_2 == nil then
      L4_2[L8_2] = L8_2
    end
  end
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L4_2[L8_2]
    if L10_2 == nil then
      L4_2[L8_2] = L8_2
    end
  end
  L5_2 = _G
  L5_2 = L5_2.pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L1_2[L9_2]
    if not L10_2 then
      L10_2 = 0
    end
    L11_2 = L3_2[L9_2]
    if not L11_2 then
      L11_2 = 0
    end
    L10_2 = L10_2 + L11_2
    L11_2 = L2_2[L9_2]
    if not L11_2 then
      L11_2 = 0
    end
    L10_2 = L10_2 - L11_2
    if L10_2 < 0 then
      L11_2 = addIAPsLostToSynch
      L12_2 = A0_2
      L13_2 = L9_2
      L14_2 = -L10_2
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = gamelua
      L11_2 = L11_2.print
      L12_2 = "Adding coins lost: "
      L13_2 = L10_2
      L12_2 = L12_2 .. L13_2
      L11_2(L12_2)
    end
  end
end

combineAllUsedIAPs = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.root
  L3_2 = "IAPsUsed_"
  L4_2 = gamelua
  L4_2 = L4_2.localPlatform
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = A0_2.root
    L3_2 = "IAPsUsed_"
    L4_2 = gamelua
    L4_2 = L4_2.localPlatform
    L3_2 = L3_2 .. L4_2
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSum
  L4_2 = A0_2.root
  L5_2 = "IAPsUsed_"
  L6_2 = gamelua
  L6_2 = L6_2.localPlatform
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end

getIAPsUsed = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.root
  L3_2 = "IAPsGained_"
  L4_2 = gamelua
  L4_2 = L4_2.localPlatform
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = A0_2.root
    L3_2 = "IAPsGained_"
    L4_2 = gamelua
    L4_2 = L4_2.localPlatform
    L3_2 = L3_2 .. L4_2
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSum
  L4_2 = A0_2.root
  L5_2 = "IAPsGained_"
  L6_2 = gamelua
  L6_2 = L6_2.localPlatform
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end

getIAPsGained = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.root
  L3_2 = "IAPsLostToSynch_"
  L4_2 = gamelua
  L4_2 = L4_2.localPlatform
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = A0_2.root
    L3_2 = "IAPsLostToSynch_"
    L4_2 = gamelua
    L4_2 = L4_2.localPlatform
    L3_2 = L3_2 .. L4_2
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSum
  L4_2 = A0_2.root
  L5_2 = "IAPsLostToSynch_"
  L6_2 = gamelua
  L6_2 = L6_2.localPlatform
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end

getIAPsLostToSynch = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.root
  L4_2 = "IAPsLostToSynch_"
  L5_2 = gamelua
  L5_2 = L5_2.localPlatform
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    L3_2 = A0_2.root
    L4_2 = "IAPsLostToSynch_"
    L5_2 = gamelua
    L5_2 = L5_2.localPlatform
    L4_2 = L4_2 .. L5_2
    L5_2 = {}
    L3_2[L4_2] = L5_2
  end
  L3_2 = gamelua
  L3_2 = L3_2.SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getLocalValue
  L5_2 = A0_2.root
  L6_2 = "IAPsLostToSynch_"
  L7_2 = gamelua
  L7_2 = L7_2.localPlatform
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2[L6_2]
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setLocalValue
  L6_2 = A0_2.root
  L7_2 = "IAPsLostToSynch_"
  L8_2 = gamelua
  L8_2 = L8_2.localPlatform
  L7_2 = L7_2 .. L8_2
  L6_2 = L6_2[L7_2]
  L7_2 = A1_2
  L8_2 = L3_2 + A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

addIAPsLostToSynch = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.deepCopy
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if A1_2 ~= nil then
      L9_2 = A1_2[L7_2]
      if L9_2 ~= nil then
        goto lbl_31
      end
    end
    L9_2 = L0_1
    L9_2 = L9_2[L7_2]
    if L9_2 ~= nil then
      L9_2 = L0_1
      L9_2 = L9_2[L7_2]
      L10_2 = nil
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L3_2[L7_2] = L9_2
    else
      L3_2[L7_2] = L8_2
      goto lbl_114
      ::lbl_31::
      L9_2 = L0_1
      L9_2 = L9_2[L7_2]
      if L9_2 ~= nil then
        L9_2 = L0_1
        L9_2 = L9_2[L7_2]
        L10_2 = A1_2[L7_2]
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L3_2[L7_2] = L9_2
      else
        L9_2 = _G
        L9_2 = L9_2.type
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = _G
        L10_2 = L10_2.type
        L11_2 = A1_2[L7_2]
        L10_2 = L10_2(L11_2)
        if L9_2 ~= L10_2 then
          L9_2 = nil
          return L9_2
        else
          L9_2 = _G
          L9_2 = L9_2.type
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if L9_2 == "boolean" then
            L9_2 = A1_2[L7_2]
            if not L9_2 then
              L9_2 = L8_2
            end
            L3_2[L7_2] = L9_2
          else
            L9_2 = _G
            L9_2 = L9_2.type
            L10_2 = L8_2
            L9_2 = L9_2(L10_2)
            if L9_2 == "number" then
              L9_2 = _G
              L9_2 = L9_2.math
              L9_2 = L9_2.max
              L10_2 = A1_2[L7_2]
              L11_2 = L8_2
              L9_2 = L9_2(L10_2, L11_2)
              L3_2[L7_2] = L9_2
            else
              L9_2 = _G
              L9_2 = L9_2.type
              L10_2 = L8_2
              L9_2 = L9_2(L10_2)
              if L9_2 == "table" then
                L10_2 = A0_2
                L9_2 = A0_2.isDate
                L11_2 = L8_2
                L9_2 = L9_2(L10_2, L11_2)
                if L9_2 then
                  L10_2 = A0_2
                  L9_2 = A0_2.isDate
                  L11_2 = A1_2[L7_2]
                  L9_2 = L9_2(L10_2, L11_2)
                  if L9_2 then
                    L9_2 = gamelua
                    L9_2 = L9_2.getTimeDifferenceInSeconds
                    L10_2 = A1_2[L7_2]
                    L11_2 = L8_2
                    L9_2 = L9_2(L10_2, L11_2)
                    if 0 < L9_2 then
                      L9_2 = A1_2[L7_2]
                      L3_2[L7_2] = L9_2
                    else
                      L3_2[L7_2] = L8_2
                    end
                end
                else
                  L10_2 = A0_2
                  L9_2 = A0_2.handleTableCombine
                  L11_2 = A1_2[L7_2]
                  L12_2 = L8_2
                  L9_2 = L9_2(L10_2, L11_2, L12_2)
                  L3_2[L7_2] = L9_2
                end
              end
            end
          end
        end
      end
    end
    ::lbl_114::
  end
  return L3_2
end

handleTableCombine = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = gamelua
  L2_2 = L2_2.deepCopy
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
    L3_2 = {}
    L2_2.root = L3_2
  end
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2.root
    L8_2[L7_2] = nil
  end
  return L2_2
end

cleanLocalSettings = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = {}
  L2_2.root = L3_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2.root
    L9_2 = A1_2.root
    L9_2 = L9_2[L7_2]
    L8_2[L7_2] = L9_2
  end
  return L2_2
end

cleanSyncableSettings = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2.combineSettings
  L5_2 = A1_2.settings
  L7_2 = A0_2
  L6_2 = A0_2.cleanLocalSettings
  L8_2 = A2_2.settings
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.combineSettings
  L6_2 = A1_2.highscores
  L7_2 = A2_2.highscores
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end

mergeSettings = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.savePersistentLuaFileWrapper
  L2_2 = "highscores.lua"
  L3_2 = "highscores"
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.savePersistentLuaFileWrapper
  L2_2 = "settings.lua"
  L3_2 = "settings"
  L1_2(L2_2, L3_2)
end

saveRuntimeSettings = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2.mergeSettings
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.replaceSettingsTable
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2.highscores = L4_2
  L5_2 = gamelua
  L5_2 = L5_2.checkAllDeviceAchievements
  if L5_2 then
    L5_2 = gamelua
    L5_2 = L5_2.checkAllDeviceAchievements
    L5_2()
  end
  L5_2 = gamelua
  L5_2 = L5_2.checkForAllGameCenterAchievements
  L5_2()
  L5_2 = gamelua
  L5_2 = L5_2.eventManager
  L6_2 = L5_2
  L5_2 = L5_2.notify
  L7_2 = {}
  L8_2 = gamelua
  L8_2 = L8_2.events
  L8_2 = L8_2.EID_NEW_SETTINGS_APPLIED
  L7_2.id = L8_2
  L5_2(L6_2, L7_2)
end

mergeAndApplySettings = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.print
  L2_2 = "[ID]:<Cloud Sync:EVENT()> EID_ROVIO_ID_LOGOUT switchToGuestSettings\n"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.loadTableFromFile
  L2_2 = "settings.lua"
  L3_2 = "localAccountSettings"
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.loadTableFromFile
  L2_2 = "highscores.lua"
  L3_2 = "localAccountHighscores"
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.cleanSyncableSettings
  L4_2 = gamelua
  L4_2 = L4_2.settings
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.settings = L2_2
  L2_2 = {}
  L1_2.highscores = L2_2
  L2_2 = {}
  L3_2 = gamelua
  L3_2 = L3_2.localAccountSettings
  L2_2.settings = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.localAccountHighscores
  L2_2.highscores = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.mergeAndApplySettings
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end

switchToGuestSettings = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = _G
  L2_2 = L2_2.type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L2_2 = A1_2.year
    if L2_2 then
      L2_2 = A1_2.month
      if L2_2 then
        L2_2 = A1_2.day
        if L2_2 then
          L2_2 = A1_2.hour
          if L2_2 then
            L2_2 = A1_2.minutes
            if L2_2 then
              L2_2 = A1_2.seconds
              if L2_2 then
                L2_2 = true
                return L2_2
              end
            end
          end
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end

isDate = L2_1
