local L0_1, L1_1, L2_1
L0_1 = {}
SettingsWrapper = L0_1
L0_1 = settings
L0_1 = L0_1.root
if L0_1 == nil then
  L0_1 = settings
  L1_1 = {}
  L0_1.root = L1_1
end
L0_1 = "device_"
L1_1 = uniqueDeviceId
L0_1 = L0_1 .. L1_1
localDevice = L0_1
L0_1 = rovioIDPlatform
if not L0_1 then
  L0_1 = "default"
end
localPlatform = L0_1
L0_1 = g_eaglePurchasesTable
if not L0_1 then
  L0_1 = {}
end
g_eaglePurchasesTable = L0_1
L0_1 = g_eaglePurchasesTable
L1_1 = g_eaglePurchasesTable
L1_1 = L1_1.root
if not L1_1 then
  L1_1 = {}
end
L0_1.root = L1_1
L0_1 = g_episodePurchasesTable
if not L0_1 then
  L0_1 = {}
end
g_episodePurchasesTable = L0_1
L0_1 = g_episodePurchasesTable
L1_1 = g_episodePurchasesTable
L1_1 = L1_1.root
if not L1_1 then
  L1_1 = {}
end
L0_1.root = L1_1
L0_1 = g_gamePurchasesTable
if not L0_1 then
  L0_1 = {}
end
g_gamePurchasesTable = L0_1
L0_1 = g_gamePurchasesTable
L1_1 = g_gamePurchasesTable
L1_1 = L1_1.root
if not L1_1 then
  L1_1 = {}
end
L0_1.root = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  settings = A1_2
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_UPDATE_ALL_COIN_UI_AMOUNT
  L4_2.id = L5_2
  L2_2(L3_2, L4_2)
end

L0_1.replaceSettingsTable = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.ageAndGenderCancelledOnStartup = A1_2
end

L0_1.setAgeAndGenderCancelledOnStartup = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.ageAndGenderCancelledOnStartup
  return L1_2
end

L0_1.getAgeAndGenderCancelledOnStartup = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.ageAndGenderGiven = true
end

L0_1.setAgeAndGenderGiven = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.ageAndGenderGiven
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.getAgeAndGenderGiven = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.ageAndGenderRewardGiven = true
end

L0_1.setAgeAndGenderRewardGiven = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.ageAndGenderRewardGiven
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.isAgeAndGenderRewardGiven = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.ageAndGenderRewardGiven
  if L1_2 then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2 = L1_2.ageAndGenderRewardClaimed
    L1_2 = not L1_2
  end
  return L1_2
end

L0_1.isAgeAndGenderRewardAvailable = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.ageAndGenderRewardClaimed = true
end

L0_1.claimAgeAndGenderReward = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.playerRegistered = true
end

L0_1.setPlayerRegistered = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.playerRegistered
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.hasPlayerRegistered = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.signedIntoID = true
end

L0_1.setPlayerSignedInToID = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.signedIntoID
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.hasPlayerSignedInToID = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.rovioIDIntroPageShown
  if not L1_2 then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.rovioIDIntroPageShown = 0
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.rovioIDIntroPageShown
  L2_2 = L2_2 + 1
  L1_2.rovioIDIntroPageShown = L2_2
end

L0_1.rovioIDIntroPageShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = settings
  L2_2 = L2_2.root
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.receivedCloudQuestFiles
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.receivedCloudQuestFiles = L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.receivedCloudQuestFiles
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2[L3_2] = true
end

L0_1.storeReceivedCloudQuestFile = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.receivedCloudQuestFiles
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.receivedCloudQuestFiles = L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.receivedCloudQuestFiles
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isCloudQuestFileReceived = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.receivedCloudQuestFiles
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.receivedCloudQuestFiles = L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.receivedCloudQuestFiles
  return L1_2
end

L0_1.getAllReceivedCloudQuestFiles = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.rovioAccountPromoShown
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.rovioAccountPromoShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.rovioAccountPromoShown = true
end

L0_1.setRovioAccountPromoShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.rovioAccountPromoCounter
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.rovioAccountPromoCounter = 1
  else
    L1_2 = settings
    L1_2 = L1_2.root
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.rovioAccountPromoCounter
    L2_2 = L2_2 + 1
    L1_2.rovioAccountPromoCounter = L2_2
  end
end

L0_1.incrementRovioAccountPromoCounter = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.rovioAccountPromoCounter
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getRovioAccountPromoCounter = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.iapChapterRewardDisplayState
  return L1_2
end

L0_1.getIAPChapterRewardDisplayState = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.iapChapterRewardDisplayState = A1_2
end

L0_1.setIAPChapterRewardDisplayState = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.assetData
  if not L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.assetData = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.assetData
  L3_2[A1_2] = A2_2
end

L0_1.setAssetHash = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.assetData
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.assetData
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getAssetHash = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.forceUpdateCheckTime = A1_2
end

L0_1.setForceUpdateCheckTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.forceUpdateCheckTime
  return L1_2
end

L0_1.getForceUpdateCheckTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.updateNotifications
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.updateNotifications = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.updateNotifications
  L2_2[A1_2] = true
end

L0_1.setUpdateNotifiedVersion = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.updateNotifications
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.updateNotifications = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.updateNotifications
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.hasUpdateBeenNotified = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.carboniteReady = A1_2
end

L0_1.setBirdInCarbonite = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.carboniteReady
  return L1_2
end

L0_1.getBirdInCarbonite = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.idleRewardTime = A1_2
end

L0_1.setIdleRewardTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.idleRewardTime
  return L1_2
end

L0_1.getIdleRewardTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.weeklyRewardAvailable = A1_2
end

L0_1.setWeeklyRewardAvailable = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.weeklyRewardAvailable
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.getWeeklyRewardAvailable = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.lastCarbonitePromoTime = A1_2
end

L0_1.setLastCarbonitePromoTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.lastCarbonitePromoTime
  return L1_2
end

L0_1.getLastCarbonitePromoTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.carboniteMeltingEndTime = A1_2
end

L0_1.setCarboniteMeltingEndTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.carboniteMeltingEndTime
  return L1_2
end

L0_1.getCarboniteMeltingEndTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.meltRewardIndex
  if not L1_2 then
    L1_2 = 1
  end
  return L1_2
end

L0_1.getMeltRewardIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.meltRewardIndex = A1_2
end

L0_1.setMeltRewardIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.buyRewardIndex
  if not L1_2 then
    L1_2 = 1
  end
  return L1_2
end

L0_1.getBuyRewardIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.buyRewardIndex = A1_2
end

L0_1.setBuyRewardIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.lastTimeGamePaused
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L2_2 = {}
    L2_2.year = 2000
    L2_2.month = 1
    L2_2.day = 1
    L2_2.hour = 0
    L2_2.minutes = 0
    L2_2.seconds = 0
    L1_2.lastTimeGamePaused = L2_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.lastTimeGamePaused
  return L1_2
end

L0_1.getLastTimeGamePaused = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.lastTimeGamePaused = A1_2
end

L0_1.setLastTimeGamePaused = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.audioEnabled = A1_2
end

L0_1.setAudioEnabled = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.audioEnabled
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.audioEnabled = true
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.audioEnabled
  return L1_2
end

L0_1.isAudioEnabled = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.smsngdeviceLevels
  if not L1_2 then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.smsngdeviceLevels = 0
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.smsngdeviceLevels
  L2_2 = L2_2 + 1
  L1_2.smsngdeviceLevels = L2_2
end

L0_1.addSmsngDevicePassedLevel = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.smsngdeviceLevels
  if not L1_2 then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.smsngdeviceLevels = 0
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.smsngdeviceLevels
  return L1_2
end

L0_1.getSmsngDevicePassedLevels = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.shopPromo
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.shopPromo = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.shopPromo
  L2_2[A1_2] = true
end

L0_1.setLevelShopPromoShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.shopPromo
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.shopPromo
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = false
  end
  return L2_2
end

L0_1.wasLevelShopPromoShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.wasShopOpened
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.wasShopOpened
  return L1_2
end

L0_1.wasShopOpened = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.wasShopOpened = true
end

L0_1.setShopOpened = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.isRewardChapterOpen
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.isRewardChapterOpen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.isRewardChapterOpen = true
end

L0_1.setRewardChapterOpen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A1_2]
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.birdPowersNotUsed
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.birdPowersNotUsed = L4_2
  end
  if L2_2 ~= nil then
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.definition
    L4_2 = L3_2.specialty
    if L4_2 == nil then
      L4_2 = 0
      return L4_2
    end
    L4_2 = settings
    L4_2 = L4_2.root
    L4_2 = L4_2.birdPowersNotUsed
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = settings
      L4_2 = L4_2.root
      L4_2 = L4_2.birdPowersNotUsed
      L4_2 = L4_2[L3_2]
      return L4_2
    else
      L4_2 = 0
      return L4_2
    end
  else
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.birdPowersNotUsed
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = settings
      L3_2 = L3_2.root
      L3_2 = L3_2.birdPowersNotUsed
      L3_2 = L3_2[A1_2]
      return L3_2
    else
      L3_2 = 0
      return L3_2
    end
  end
end

L0_1.getTimesBirdPowerNotUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdPowersNotUsed
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.birdPowersNotUsed = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdPowersNotUsed
  L2_2[A1_2] = 0
end

L0_1.resetBirdPowerNotUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdPowersNotUsed
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.birdPowersNotUsed = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdPowersNotUsed
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.birdPowersNotUsed
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.birdPowersNotUsed
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2 + 1
    L2_2[A1_2] = L3_2
  else
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.birdPowersNotUsed
    L2_2[A1_2] = 3
  end
end

L0_1.birdPowerNotUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = settings
  L2_2 = L2_2.root
  L3_2 = "IAPsUsed_"
  L4_2 = localPlatform
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = "IAPsUsed_"
    L4_2 = localPlatform
    L3_2 = L3_2 .. L4_2
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSum
  L4_2 = settings
  L4_2 = L4_2.root
  L5_2 = "IAPsUsed_"
  L6_2 = localPlatform
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end

L0_1.getIAPsUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = settings
  L3_2 = L3_2.root
  L4_2 = "IAPsUsed_"
  L5_2 = localPlatform
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = "IAPsUsed_"
    L5_2 = localPlatform
    L4_2 = L4_2 .. L5_2
    L5_2 = {}
    L3_2[L4_2] = L5_2
  end
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getLocalValue
  L5_2 = settings
  L5_2 = L5_2.root
  L6_2 = "IAPsUsed_"
  L7_2 = localPlatform
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2[L6_2]
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setLocalValue
  L6_2 = settings
  L6_2 = L6_2.root
  L7_2 = "IAPsUsed_"
  L8_2 = localPlatform
  L7_2 = L7_2 .. L8_2
  L6_2 = L6_2[L7_2]
  L7_2 = A1_2
  L8_2 = L3_2 + A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.addIAPsUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = settings
  L2_2 = L2_2.root
  L3_2 = "IAPsGained_"
  L4_2 = localPlatform
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = "IAPsGained_"
    L4_2 = localPlatform
    L3_2 = L3_2 .. L4_2
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSum
  L4_2 = settings
  L4_2 = L4_2.root
  L5_2 = "IAPsGained_"
  L6_2 = localPlatform
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end

L0_1.getIAPsGained = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = settings
  L3_2 = L3_2.root
  L4_2 = "IAPsGained_"
  L5_2 = localPlatform
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = "IAPsGained_"
    L5_2 = localPlatform
    L4_2 = L4_2 .. L5_2
    L5_2 = {}
    L3_2[L4_2] = L5_2
  end
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getLocalValue
  L5_2 = settings
  L5_2 = L5_2.root
  L6_2 = "IAPsGained_"
  L7_2 = localPlatform
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2[L6_2]
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setLocalValue
  L6_2 = settings
  L6_2 = L6_2.root
  L7_2 = "IAPsGained_"
  L8_2 = localPlatform
  L7_2 = L7_2 .. L8_2
  L6_2 = L6_2[L7_2]
  L7_2 = A1_2
  L8_2 = L3_2 + A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.addIAPsGained = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = settings
  L2_2 = L2_2.root
  L3_2 = "IAPsLostToSynch_"
  L4_2 = localPlatform
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = "IAPsLostToSynch_"
    L4_2 = localPlatform
    L3_2 = L3_2 .. L4_2
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSum
  L4_2 = settings
  L4_2 = L4_2.root
  L5_2 = "IAPsLostToSynch_"
  L6_2 = localPlatform
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2[L5_2]
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end

L0_1.getIAPsLostToSynch = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = settings
  L3_2 = L3_2.root
  L4_2 = "IAPsLostToSynch_"
  L5_2 = localPlatform
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = "IAPsLostToSynch_"
    L5_2 = localPlatform
    L4_2 = L4_2 .. L5_2
    L5_2 = {}
    L3_2[L4_2] = L5_2
  end
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getLocalValue
  L5_2 = settings
  L5_2 = L5_2.root
  L6_2 = "IAPsLostToSynch_"
  L7_2 = localPlatform
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2[L6_2]
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setLocalValue
  L6_2 = settings
  L6_2 = L6_2.root
  L7_2 = "IAPsLostToSynch_"
  L8_2 = localPlatform
  L7_2 = L7_2 .. L8_2
  L6_2 = L6_2[L7_2]
  L7_2 = A1_2
  L8_2 = L3_2 + A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.addIAPsLostToSynch = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdScores
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.birdScores = L3_2
  end
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getTableDeviceSum
  L4_2 = settings
  L4_2 = L4_2.root
  L4_2 = L4_2.birdScores
  L5_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2)
end

L0_1.getBirdScore = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.birdScores
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.birdScores = L4_2
  end
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getLocalValue
  L5_2 = settings
  L5_2 = L5_2.root
  L5_2 = L5_2.birdScores
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setLocalValue
  L6_2 = settings
  L6_2 = L6_2.root
  L6_2 = L6_2.birdScores
  L7_2 = A1_2
  L8_2 = L3_2 + A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.addBirdScore = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.questLevels
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.questLevels = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.questLevels
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = 1
  end
  return L2_2
end

L0_1.getQuestLevel = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.questLevels
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.questLevels = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.questLevels
  L3_2[A1_2] = A2_2
end

L0_1.setQuestLevel = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.newlyCompletedQuestName
  return L1_2
end

L0_1.getNewlyCompletedQuestName = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.newlyCompletedQuestName = A1_2
end

L0_1.setNewlyCompletedQuestName = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.notifiedQuests
  if not L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.notifiedQuests = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.notifiedQuests
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.notifiedQuests
    L3_2 = L3_2[A1_2]
    L3_2 = A2_2 <= L3_2
    return L3_2
  else
    L3_2 = false
    return L3_2
  end
end

L0_1.isQuestCompletionNotified = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.notifiedQuests
  if not L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.notifiedQuests = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.notifiedQuests
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.notifiedQuests
    L3_2 = L3_2[A1_2]
    if A2_2 > L3_2 then
      L3_2 = settings
      L3_2 = L3_2.root
      L3_2 = L3_2.notifiedQuests
      L3_2[A1_2] = A2_2
    end
  else
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.notifiedQuests
    L3_2[A1_2] = A2_2
  end
end

L0_1.notifyQuestCompletion = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.claimedQuests
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.claimedQuests = L4_2
  end
  if A2_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.claimedQuests
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = settings
      L3_2 = L3_2.root
      L3_2 = L3_2.claimedQuests
      L3_2 = L3_2[A1_2]
      L3_2 = A2_2 <= L3_2
      return L3_2
    else
      L3_2 = false
      return L3_2
    end
  else
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.claimedQuests
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = true
      return L3_2
    else
      L3_2 = false
      return L3_2
    end
  end
end

L0_1.isQuestClaimed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.claimedQuests
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.claimedQuests = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.claimedQuests
  L3_2[A1_2] = A2_2
end

L0_1.claimQuest = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.lastViewedQuestTab
  if not L1_2 then
    L1_2 = 1
  end
  return L1_2
end

L0_1.getLastViewedQuestTab = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.lastViewedQuestTab = A1_2
end

L0_1.setLastViewedQuestTab = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.newCreditsGained
  return L1_2
end

L0_1.isNewCreditsGained = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.newCreditsGained = A1_2
end

L0_1.setNewCreditsGained = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = blockTable
  if L2_2 then
    L2_2 = blockTable
    L2_2 = L2_2.blocks
    if L2_2 then
      L3_2 = L2_2[A1_2]
      if L3_2 then
        L4_2 = settings
        L4_2 = L4_2.root
        L4_2 = L4_2.birdTutorials
        if L4_2 == nil then
          L4_2 = settings
          L4_2 = L4_2.root
          L5_2 = {}
          L4_2.birdTutorials = L5_2
        end
        L4_2 = settings
        L4_2 = L4_2.root
        L4_2 = L4_2.birdTutorials
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2 == true
        return L4_2
      end
    end
  end
end

L0_1.isTutorialShownByDefinition = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdTutorials
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.birdTutorials = L3_2
  end
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L3_2 = objects
    L3_2 = L3_2.world
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.definition
    L4_2 = settings
    L4_2 = L4_2.root
    L4_2 = L4_2.birdTutorials
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2 == true
    return L4_2
  else
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.birdTutorials
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2 == true
    return L3_2
  end
end

L0_1.isTutorialShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdTutorials
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.birdTutorials = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.birdTutorials
  L2_2[A1_2] = true
  L2_2 = objects
  if L2_2 then
    L2_2 = objects
    L2_2 = L2_2.world
    if L2_2 then
      L2_2 = objects
      L2_2 = L2_2.world
      L2_2 = L2_2[A1_2]
      if L2_2 then
        L3_2 = L2_2.definition
        L4_2 = definition
        if L4_2 then
          L4_2 = settings
          L4_2 = L4_2.root
          L4_2 = L4_2.birdTutorials
          L5_2 = definition
          L4_2[L5_2] = true
        end
      end
    end
  end
end

L0_1.markTutorialShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.firstPurchaseDone
  if L1_2 then
    L1_2 = false
    return L1_2
  else
    L1_2 = true
    return L1_2
  end
end

L0_1.isFirstPurchase = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.firstPurchaseDone = true
end

L0_1.setFirstPurchase = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsBoughtOpen
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.levelsBoughtOpen = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsBoughtOpen
  L2_2[A1_2] = true
end

L0_1.setLevelBoughtOpen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsBoughtOpen
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.levelsBoughtOpen = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsBoughtOpen
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = false
  end
  return L2_2
end

L0_1.isLevelBoughtOpen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelProgress
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.levelProgress = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelProgress
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = 0
  end
  return L2_2
end

L0_1.getLevelProgress = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.levelProgress
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L2_2 = {}
    L1_2.levelProgress = L2_2
  end
  L1_2 = countKeys
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelProgress
  L1_2 = L1_2(L2_2)
  L1_2 = 0 < L1_2
  return L1_2
end

L0_1.hasAnyLevelBeenCompleted = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.levelProgress
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.levelProgress = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.levelProgress
  L4_2 = currentFolder
  L3_2[L4_2] = A2_2
end

L0_1.setLevelProgress = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.startedEpisodes
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L3_2.chapter_1_light = true
    L3_2.chapter_bonus_light = true
    L3_2.chapter_bonus_dark = true
    L2_2.startedEpisodes = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.startedEpisodes
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isEpisodeStarted = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.startedEpisodes
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L3_2.chapter_1_light = true
    L3_2.chapter_bonus_light = true
    L3_2.chapter_bonus_dark = true
    L2_2.startedEpisodes = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.startedEpisodes
  L2_2[A1_2] = true
end

L0_1.startEpisode = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.episodeEpicSelectionShown
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.episodeEpicSelectionShown = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.episodeEpicSelectionShown
  L2_2[A1_2] = true
end

L0_1.setEpisodeEpicSelectionShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.episodeEpicSelectionShown
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.episodeEpicSelectionShown
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isEpisodeEpicSelectionShown = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.playMainMusic = A1_2
end

L0_1.setPlayMainMusic = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.playMainMusic
  return L1_2
end

L0_1.getPlayMainMusic = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.lastOpenedEpisode
  if not L1_2 then
    L1_2 = 2
  end
  return L1_2
end

L0_1.getLastOpenedEpisode = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.lastOpenedEpisode
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2.lastOpenedEpisode = 0
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L3_2.theme1 = 0
    L3_2.theme2 = 0
    L3_2.bonus = 0
    L2_2.lastLevelPage = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.lastOpenedEpisode = A1_2
end

L0_1.setLastOpenedEpisode = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.lastOpenedEpisodeIndex
  if not L1_2 then
    L1_2 = 1
  end
  return L1_2
end

L0_1.getLastOpenedEpisodeIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.lastOpenedEpisodeIndex = A1_2
end

L0_1.setLastOpenedEpisodeIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.lastOpenedEpisodeType
  if not L1_2 then
    L1_2 = 1
  end
  return L1_2
end

L0_1.getLastOpenedEpisodeType = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.lastOpenedEpisodeType = A1_2
end

L0_1.setLastOpenedEpisodeType = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.lastLevelPage
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.lastLevelPage = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.lastLevelPage
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getLastLevelPage = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.lastLevelPage
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.lastLevelPage = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.lastLevelPage
  L3_2[A1_2] = A2_2
end

L0_1.setLastLevelPage = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.isDarkSide = A1_2
end

L0_1.setIsDarkSide = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = isInGameMode
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = levelName
    if L1_2 ~= "LevelSelection" then
      L1_2 = isInComicMode
      L1_2 = L1_2()
      if not L1_2 then
        goto lbl_18
      end
    end
  end
  L1_2 = objects
  L1_2 = L1_2.isDarkSideLevel
  if not L1_2 then
    L1_2 = false
  end
  do return L1_2 end
  ::lbl_18::
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.isDarkSide
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.isDarkSide = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.isDarkSideOpen
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.isDarkSideOpen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.isDarkSideOpen = true
end

L0_1.setDarkSideOpen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.fullScreen = A1_2
end

L0_1.setFullScreen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.fullScreen
  return L1_2
end

L0_1.getFullScreen = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.screenWidth = A1_2
end

L0_1.setScreenWidth = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.screenWidth
  return L1_2
end

L0_1.getScreenWidth = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.screenHeight = A1_2
end

L0_1.setScreenHeight = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.screenHeight
  return L1_2
end

L0_1.getScreenHeight = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.currentTheme = A1_2
end

L0_1.setCurrentTheme = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.oppositeSideCharactersEnabledForDarkSide
    if not L2_2 then
      L2_2 = false
    end
    return L2_2
  else
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.oppositeSideCharactersEnabledForLightSide
    if not L2_2 then
      L2_2 = false
    end
    return L2_2
  end
end

L0_1.isOppositeSideCharacterEnabledForSide = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2.oppositeSideCharactersEnabledForDarkSide = true
  else
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2.oppositeSideCharactersEnabledForLightSide = true
  end
end

L0_1.enableOppositeSideCharacterForSide = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.oppositeSideCharactersEnabledLevels
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.oppositeSideCharactersEnabledLevels = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.oppositeSideCharactersEnabledLevels
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = false
  end
  return L2_2
end

L0_1.isOppositeSideCharacterEnabledInLevel = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.oppositeSideCharactersEnabledLevels
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.oppositeSideCharactersEnabledLevels = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.oppositeSideCharactersEnabledLevels
  L2_2[A1_2] = true
end

L0_1.enableOppositeSideCharacterInLevel = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = startedFromEditor
  if L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = assert
  L4_2 = A1_2 ~= nil
  L5_2 = "getCollectableBlock: levelName is nil"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = A2_2 ~= nil
  L5_2 = "getCollectableBlock: blockName is nil"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == "string"
  L5_2 = "getCollectableBlock: levelName is not a string"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == "string"
  L5_2 = "getCollectableBlock: blockName is not a string"
  L3_2(L4_2, L5_2)
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectedBlocks
  if L3_2 ~= nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.collectedBlocks
    L3_2 = L3_2[A1_2]
    if L3_2 ~= nil then
      L3_2 = settings
      L3_2 = L3_2.root
      L3_2 = L3_2.collectedBlocks
      L3_2 = L3_2[A1_2]
      L3_2 = L3_2[A2_2]
      L3_2 = L3_2 == true
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end

L0_1.getCollectableBlock = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = startedFromEditor
  if L3_2 then
    return
  end
  L3_2 = assert
  L4_2 = A1_2 ~= nil
  L5_2 = "setCollectableBlock: levelName is nil"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = A2_2 ~= nil
  L5_2 = "setCollectableBlock: blockName is nil"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == "string"
  L5_2 = "setCollectableBlock: levelName is not a string"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == "string"
  L5_2 = "setCollectableBlock: blockName is not a string"
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "Collected "
  L5_2 = A2_2
  L6_2 = " in "
  L7_2 = A1_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectedBlocks
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.collectedBlocks = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectedBlocks
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.collectedBlocks
    L4_2 = {}
    L3_2[A1_2] = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectedBlocks
  L3_2 = L3_2[A1_2]
  L3_2[A2_2] = true
end

L0_1.setCollectableBlock = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.collectedBlocks
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectedBlocks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = _G
      L12_2 = L12_2.string
      L12_2 = L12_2.sub
      L13_2 = _G
      L13_2 = L13_2.tostring
      L14_2 = L10_2
      L13_2 = L13_2(L14_2)
      L14_2 = 0
      L15_2 = 10
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      if L12_2 == "BLOCK_COIN" and L11_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  return L1_2
end

L0_1.getTotalHiddenCoinsCollected = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.currentTheme
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.currentTheme = "theme_crimson"
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.currentTheme
  return L1_2
end

L0_1.getCurrentTheme = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.license
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L2_2 = {}
    L1_2.license = L2_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.license
  return L1_2
end

L0_1.getLicense = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getLicense
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.registeredKeyTypes
  if L2_2 == nil then
    L2_2 = {}
    L1_2.registeredKeyTypes = L2_2
  end
  L2_2 = L1_2.registeredKeyTypes
  return L2_2
end

L0_1.getKeyTypes = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getLicense
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.hardwareID
  if not L1_2 then
    L1_2 = ""
  end
  return L1_2
end

L0_1.getHardwareID = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getLicense
  L2_2 = L2_2(L3_2)
  L2_2.hardwareID = A1_2
end

L0_1.setHardwareID = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getKeyTypes
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1.isKeyRegistered = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getKeyTypes
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.addRegisteredKey = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.setLocalAmount
  L4_2 = "playtime"
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.floor
  L6_2 = SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.getLocalAmount
  L8_2 = "playtime"
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 + A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end

L0_1.setPlaytime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getDeviceSum
  L3_2 = "playtime"
  return L1_2(L2_2, L3_2)
end

L0_1.getPlaytime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = g_episodePurchasesTable
  L2_2 = L2_2.root
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 == true
  return L2_2
end

L0_1.isEpisodePurchased = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = assert
  L3_2 = A1_2 ~= nil
  L4_2 = "purchaseEpisode: iapId is nil!"
  L2_2(L3_2, L4_2)
  L2_2 = g_episodePurchasesTable
  L2_2 = L2_2.root
  L2_2[A1_2] = true
end

L0_1.purchaseEpisode = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = assert
  L3_2 = A1_2 ~= nil
  L4_2 = "setPurchase: iapId is nil!"
  L2_2(L3_2, L4_2)
  L2_2 = g_gamePurchasesTable
  L2_2 = L2_2.root
  L2_2[A1_2] = true
end

L0_1.setPurchase = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = g_gamePurchasesTable
  L2_2 = L2_2.root
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = false
  end
  return L2_2
end

L0_1.getPurchase = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = assert
  L4_2 = A1_2 ~= nil
  L5_2 = "addAmount: iapId is nil!"
  L3_2(L4_2, L5_2)
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "string" then
    L3_2 = _G
    L3_2 = L3_2.tonumber
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    A2_2 = L3_2
  end
  if 0 <= A2_2 then
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.addIAPsGained
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.addIAPsUsed
    L5_2 = A1_2
    L6_2 = -A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.addAmount = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getIAPsGained
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getIAPsLostToSynch
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 + L3_2
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getIAPsUsed
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 - L3_2
  return L2_2
end

L0_1.getAmount = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = g_gamePurchasesTable
  L2_2 = L2_2.root
  L2_2 = L2_2.achievementsGiven
  if not L2_2 then
    L2_2 = g_gamePurchasesTable
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.achievementsGiven = L3_2
  end
  L2_2 = g_gamePurchasesTable
  L2_2 = L2_2.root
  L2_2 = L2_2.achievementsGiven
  L3_2 = getQuestLevel
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2[A1_2] = L3_2
end

L0_1.setDeviceAchievementGiven = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = g_gamePurchasesTable
  L2_2 = L2_2.root
  L2_2 = L2_2.achievementsGiven
  if not L2_2 then
    L2_2 = g_gamePurchasesTable
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.achievementsGiven = L3_2
  end
  L2_2 = g_gamePurchasesTable
  L2_2 = L2_2.root
  L2_2 = L2_2.achievementsGiven
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = 0
  end
  return L2_2
end

L0_1.isDeviceAchievementGiven = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getNewBonusLevels
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setNewBonusLevels
  L6_2 = A1_2
  L7_2 = L3_2 + A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.addNewBonusLevels = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.newBonusLevels
  if not L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.newBonusLevels = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.newBonusLevels
  L3_2[A1_2] = A2_2
end

L0_1.setNewBonusLevels = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.newBonusLevels
  if L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.newBonusLevels
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = settings
      L2_2 = L2_2.root
      L2_2 = L2_2.newBonusLevels
      L2_2 = L2_2[A1_2]
      return L2_2
  end
  else
    L2_2 = 0
    return L2_2
  end
end

L0_1.getNewBonusLevels = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getNewOpenedLevels
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setNewOpenedLevels
  L6_2 = A1_2
  L7_2 = L3_2 + A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.addNewOpenedLevels = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.newOpenedLevels
  if not L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.newOpenedLevels = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.newOpenedLevels
  L3_2[A1_2] = A2_2
end

L0_1.setNewOpenedLevels = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.newOpenedLevels
  if L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.newOpenedLevels
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = settings
      L2_2 = L2_2.root
      L2_2 = L2_2.newOpenedLevels
      L2_2 = L2_2[A1_2]
      return L2_2
  end
  else
    L2_2 = 0
    return L2_2
  end
end

L0_1.getNewOpenedLevels = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.openedLevelsNotified
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.openedLevelsNotified = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.openedLevelsNotified
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isOpenedLevelAlreadyNotified = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.openedLevelsNotified
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.openedLevelsNotified = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.openedLevelsNotified
  L2_2[A1_2] = true
end

L0_1.markOpenedLevelNotified = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedDroidsThroughEggsteroids
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.unlockedDroidsThroughEggsteroids = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedDroidsThroughEggsteroids
  L3_2 = levelName
  L2_2[L3_2] = true
end

L0_1.storeDroidLevelUnlockedThroughEggsteroid = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.unlockedDroidsThroughEggsteroids
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L2_2 = {}
    L1_2.unlockedDroidsThroughEggsteroids = L2_2
  end
  L1_2 = countKeys
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedDroidsThroughEggsteroids
  return L1_2(L2_2)
end

L0_1.getNumDroidLevelUnlockedThroughEggsteroid = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedDroids
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.unlockedDroids = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedDroids
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isDroidLevelUnlocked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedDroids
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.unlockedDroids = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedDroids
  L2_2[A1_2] = true
end

L0_1.storeDroidLevelUnlocked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedBonusLevels
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.unlockedBonusLevels = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedBonusLevels
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isBonusLevelUnlocked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedBonusLevels
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.unlockedBonusLevels = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.unlockedBonusLevels
  L2_2[A1_2] = true
end

L0_1.unlockBonusLevel = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.masterYourDestinyChecked
  return L1_2
end

L0_1.isMasterYourDestinyChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.masterYourDestinyChecked = true
end

L0_1.setMasterYourDestinyChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.rankQuestChecked
  return L1_2
end

L0_1.isRankQuestChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.rankQuestChecked = true
end

L0_1.setRankQuestChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.rankQuest2Checked
  return L1_2
end

L0_1.isRankQuest2Checked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.rankQuest2Checked = true
end

L0_1.setRankQuest2Checked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.payingCustomerChecked
  return L1_2
end

L0_1.isPayingCustomerChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.payingCustomerChecked = true
end

L0_1.setPayingCustomerChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.maps = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps
  L2_2[A1_2] = true
end

L0_1.setMapFound = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isMapFound = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps2
  if not L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.maps2 = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps2
  L2_2[A1_2] = true
end

L0_1.setMap2Found = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps2
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.maps2
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isMap2Found = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectibles
  if not L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.collectibles = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectibles
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.collectibles
    L4_2 = {}
    L3_2[A1_2] = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectibles
  L3_2 = L3_2[A1_2]
  L3_2[A2_2] = true
end

L0_1.setCollectibleFound = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectibles
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectibles
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.collectibles
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2[A2_2]
  return L3_2
end

L0_1.isCollectibleFound = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.collectibles
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.collectibles
  return L1_2
end

L0_1.getCollectiblesFound = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.destroyedBlocks
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.destroyedBlocks = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.destroyedBlocks
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.destroyedBlocks
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.destroyedBlocks
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2 + 1
    L2_2[A1_2] = L3_2
  else
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.destroyedBlocks
    L2_2[A1_2] = 1
  end
end

L0_1.destroyedBlock = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.destroyedBlocks
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getDestroyedBlocks = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.dolbyProfileIndex
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.dolbyProfileIndex = 0
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.dolbyProfileIndex
  return L1_2
end

L0_1.getDolbyProfileIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.dolbyProfileIndex = A1_2
end

L0_1.setDolbyProfileIndex = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setLocalAmount
  L3_2 = "birdsShot"
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.getLocalAmount
  L6_2 = "birdsShot"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 + 1
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.birdShot = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getDeviceSum
  L3_2 = "birdsShot"
  return L1_2(L2_2, L3_2)
end

L0_1.getBirdsShot = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = assert
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 == "boolean"
  L2_2(L3_2)
  if A1_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.newDarkSideBirdsAvailable
    if not L2_2 then
      L2_2 = false
    end
    return L2_2
  else
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.newLightSideBirdsAvailable
    if not L2_2 then
      L2_2 = false
    end
    return L2_2
  end
end

L0_1.isNewBirdsAvailable = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = assert
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == "boolean"
  L3_2(L4_2)
  L3_2 = assert
  L4_2 = _G
  L4_2 = L4_2.type
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == "boolean"
  L3_2(L4_2)
  if A2_2 then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2.newDarkSideBirdsAvailable = A1_2
  else
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2.newLightSideBirdsAvailable = A1_2
  end
end

L0_1.setNewBirdsAvailable = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.eaglesRewarded
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.eaglesRewarded = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.eaglesRewarded
  L2_2[A1_2] = true
end

L0_1.setEaglesRewarderFrom = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.eaglesRewarded
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.eaglesRewarded = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.eaglesRewarded
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 == true
  return L2_2
end

L0_1.isEaglesRewardedFrom = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.achievements
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.achievements = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.achievements
  L2_2[A1_2] = true
end

L0_1.registerAchievement = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.achievements
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.achievements = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.achievements
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.hasAchievement = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.openSpecialsVersion
  if not L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.openSpecialsVersion
  return L1_2
end

L0_1.getOpenSpecialsVersion = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.openSpecialsVersion = A1_2
end

L0_1.setOpenSpecialsVersion = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.watchedComics
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.watchedComics = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.watchedComics
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isComicWatched = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.watchedComics
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.watchedComics = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.watchedComics
  L2_2[A1_2] = true
end

L0_1.storeComicWatched = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsStarted
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.levelsStarted = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsStarted
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 ~= nil
  return L2_2
end

L0_1.wasLevelStartedBefore = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsStarted
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.levelsStarted = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelsStarted
  L2_2[A1_2] = true
end

L0_1.levelStarted = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.filteredItemProperties
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.filteredItemProperties = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.filteredItemProperties
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 == true
  return L2_2
end

L0_1.isObjectFilterPropertyStored = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.filteredItemProperties
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.filteredItemProperties = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.filteredItemProperties
  L2_2[A1_2] = true
end

L0_1.storeObjectFilterProperty = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.sessionNumber
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.sessionNumber = 0
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.sessionNumber
  L2_2 = L2_2 + 1
  L1_2.sessionNumber = L2_2
end

L0_1.increaseSessionNumber = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.sessionNumber
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getSessionNumber = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.numberOfStartups
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L1_2.numberOfStartups = 0
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numberOfStartups
  L2_2 = L2_2 + 1
  L1_2.numberOfStartups = L2_2
end

L0_1.increaseNumberOfStartups = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.numberOfStartups
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getNumberOfStartups = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numberOfAgeChecks
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  L1_2.numberOfAgeChecks = L2_2
end

L0_1.increaseNumberOfAgeChecks = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.numberOfAgeChecks
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getNumberOfAgeChecks = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = assert
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 == "boolean"
  L4_2 = "setIsNewUser: isNewUser is not a boolean"
  L2_2(L3_2, L4_2)
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.isNewUser = A1_2
end

L0_1.setIsNewUser = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.isNewUser
  return L1_2
end

L0_1.getIsNewUser = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.userUnder13CheckTime = A1_2
end

L0_1.setUserUnder13CheckTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.userUnder13CheckTime
  return L1_2
end

L0_1.getUserUnder13CheckTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.gamePurchasedFrom
  return L1_2
end

L0_1.getGamePurchasedFrom = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.gamePurchasedFrom = A1_2
end

L0_1.setGamePurchasedFrom = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.zoomingUsed
  L1_2 = L1_2 == true
  return L1_2
end

L0_1.isZoomingMarkedUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.zoomingUsed = true
end

L0_1.markZoomingUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.timesLevelRestarted
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.timesLevelRestarted = L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.timesLevelRestarted
  L2_2 = L2_2 + 1
  L1_2.timesLevelRestarted = L2_2
end

L0_1.levelRestarted = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.timesLevelRestarted
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getTimesLevelRestarted = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.shelfOpenCount
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  L1_2.shelfOpenCount = L2_2
end

L0_1.increaseShelfOpenCount = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.shelfOpenCount
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getShelfOpenCount = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.laserDeflectedBySword
  if L3_2 ~= nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L3_2 = L3_2.laserDeflectedBySword
    L3_2 = L3_2[A1_2]
    if L3_2 ~= nil then
      goto lbl_16
    end
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L4_2 = {}
  L3_2.laserDeflectedBySword = L4_2
  ::lbl_16::
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.laserDeflectedBySword
  L4_2 = settings
  L4_2 = L4_2.root
  L4_2 = L4_2.laserDeflectedBySword
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[A1_2] = L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.laserDeflectedBySword
  L3_2 = L3_2[A1_2]
  L4_2 = contains
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = _G
    L4_2 = L4_2.table
    L4_2 = L4_2.insert
    L5_2 = L3_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end

L0_1.laserDeflectedBySword = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.laserDeflectedBySword
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.laserDeflectedBySword
    L2_2 = L2_2[A1_2]
    L2_2 = #L2_2
    return L2_2
  else
    L2_2 = 0
    return L2_2
  end
end

L0_1.getTimesLaserDeflectedBySword = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.blocksDestroyedBySword
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.blocksDestroyedBySword = L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.blocksDestroyedBySword
  L2_2 = L2_2 + 1
  L1_2.blocksDestroyedBySword = L2_2
end

L0_1.blockDestroyedBySword = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.blocksDestroyedBySword
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getNumBlocksDestroyedBySword = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.blocksLiftedByLeia
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.blocksLiftedByLeia = L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.blocksLiftedByLeia
  L2_2 = L2_2 + 1
  L1_2.blocksLiftedByLeia = L2_2
end

L0_1.blockLiftedByLeia = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.blocksLiftedByLeia
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getNumBlocksLiftedByLeia = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numBlocksThrownByForce
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.numBlocksThrownByForce = L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numBlocksThrownByForce
  L2_2 = L2_2 + 1
  L1_2.numBlocksThrownByForce = L2_2
end

L0_1.blockThrownByForce = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.numBlocksThrownByForce
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getNumBlocksThrownByForce = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numBlocksDestroyedByLaser
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.numBlocksDestroyedByLaser = L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numBlocksDestroyedByLaser
  L2_2 = L2_2 + 1
  L1_2.numBlocksDestroyedByLaser = L2_2
end

L0_1.blockDestroyedByPlayerLaser = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.numBlocksDestroyedByLaser
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getNumBlocksDestroyedByPlayerLaser = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.numBlocksDestroyedByBird
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.numBlocksDestroyedByBird = L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numBlocksDestroyedByBird
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.numBlocksDestroyedByBird
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = 0
  end
  L2_2[A1_2] = L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numBlocksDestroyedByBird
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.numBlocksDestroyedByBird
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2 + 1
  L2_2[A1_2] = L3_2
end

L0_1.blockDestroyedByBird = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.numBlocksDestroyedByBird
  if not L2_2 then
    L2_2 = 0
    return L2_2
  else
    L2_2 = settings
    L2_2 = L2_2.root
    L2_2 = L2_2.numBlocksDestroyedByBird
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = 0
    end
    return L2_2
  end
end

L0_1.getNumBlocksDestroyedByBird = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L5_2 = A2_2
  L6_2 = A3_2.year
  L7_2 = A3_2.month
  L8_2 = A3_2.day
  L9_2 = A3_2.hour
  L10_2 = A3_2.minutes
  L11_2 = A3_2.seconds
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L5_2 = settings
  L5_2 = L5_2.root
  L6_2 = settings
  L6_2 = L6_2.root
  L6_2 = L6_2.gunShotBird
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.gunShotBird = L6_2
  L5_2 = settings
  L5_2 = L5_2.root
  L5_2 = L5_2.gunShotBird
  L5_2 = L5_2[L4_2]
  if not L5_2 then
    L5_2 = settings
    L5_2 = L5_2.root
    L6_2 = {}
    L5_2.gunShotBird = L6_2
  end
  L5_2 = settings
  L5_2 = L5_2.root
  L5_2 = L5_2.gunShotBird
  L6_2 = settings
  L6_2 = L6_2.root
  L6_2 = L6_2.gunShotBird
  L6_2 = L6_2[L4_2]
  if not L6_2 then
    L6_2 = 0
  end
  L5_2[L4_2] = L6_2
  L5_2 = settings
  L5_2 = L5_2.root
  L5_2 = L5_2.gunShotBird
  L6_2 = settings
  L6_2 = L6_2.root
  L6_2 = L6_2.gunShotBird
  L6_2 = L6_2[L4_2]
  L6_2 = L6_2 + 1
  L5_2[L4_2] = L6_2
end

L0_1.nonPlayerGunShotBird = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L5_2 = A2_2
  L6_2 = A3_2.year
  L7_2 = A3_2.month
  L8_2 = A3_2.day
  L9_2 = A3_2.hour
  L10_2 = A3_2.minutes
  L11_2 = A3_2.seconds
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L5_2 = settings
  L5_2 = L5_2.root
  L5_2 = L5_2.gunShotBird
  if not L5_2 then
    L5_2 = 0
    return L5_2
  else
    L5_2 = settings
    L5_2 = L5_2.root
    L5_2 = L5_2.gunShotBird
    L5_2 = L5_2[L4_2]
    if not L5_2 then
      L5_2 = 0
    end
    return L5_2
  end
end

L0_1.getTimesNonPlayerGunShotBird = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.gameStartedLastTime
  if L1_2 then
    L2_2 = getTimeDifference
    L3_2 = getCurrentTime
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

L0_1.daysSinceLastPlay = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L2_2 = getCurrentTime
  L2_2 = L2_2()
  L1_2.gameStartedLastTime = L2_2
end

L0_1.resetSessionStartTime = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.androidPremium
  L1_2 = L1_2 == true
  return L1_2
end

L0_1.isAndroidPremium = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.androidPremium = A1_2
end

L0_1.storeAndroidPremium = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.currentVersion = A1_2
end

L0_1.setCurrentVersion = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.currentVersion
  return L1_2
end

L0_1.getCurrentVersion = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.adsRemoved = true
end

L0_1.removeAds = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.adsRemoved
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.adsRemoved = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.iap_restore_checked
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.isIAPRestoreChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2.iap_restore_checked = true
end

L0_1.setIAPRestoreChecked = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.validatedTelepodToys
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2.validatedTelepodToys = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2.validatedTelepodToys
  L3_2[A1_2] = A2_2
end

L0_1.storeValidatedTelepodToy = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.validatedTelepodToys
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.validatedTelepodToys = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.validatedTelepodToys
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getValidatedTelepodToy = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.scannedTelepodCharacter
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.scannedTelepodCharacter = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.scannedTelepodCharacter
  L2_2[A1_2] = true
end

L0_1.setScannedTelepodCharacter = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.scannedTelepodCharacter
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.scannedTelepodCharacter = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.scannedTelepodCharacter
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.isTelepodCharacterScanned = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.storedToyKeys
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.storedToyKeys = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.storedToyKeys
  L2_2[A1_2] = true
end

L0_1.storeToyUnlock = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.storedToyKeys
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.storedToyKeys = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.storedToyKeys
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 == true
  return L2_2
end

L0_1.isToyKeyUsed = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelTrophies
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.levelTrophies = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelTrophies
  L2_2[A1_2] = true
end

L0_1.storeLevelTrophy = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelTrophies
  if L2_2 == nil then
    L2_2 = settings
    L2_2 = L2_2.root
    L3_2 = {}
    L2_2.levelTrophies = L3_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2.levelTrophies
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2 == true
  return L2_2
end

L0_1.isLevelTrophyStored = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.isPayingCustomer
  if not L1_2 then
    L1_2 = false
  end
  return L1_2
end

L0_1.isPayingCustomer = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.isPayingCustomer = A1_2
end

L0_1.setIsPayingCustomer = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  L5_2 = settings
  L5_2 = L5_2.root
  L5_2.installedApps = A1_2
  if A2_2 then
    L5_2 = settings
    L5_2 = L5_2.root
    L5_2.installedAppsTTL = A2_2
  end
  if A3_2 then
    L5_2 = settings
    L5_2 = L5_2.root
    L5_2.installedAppsLastCheck = A3_2
  end
  if A4_2 then
    L5_2 = settings
    L5_2 = L5_2.root
    L5_2.possibleAppsList = A4_2
  end
end

L0_1.setInstalledApps = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.installedAppsTTL
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end

L0_1.getInstalledAppsTTL = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.installedApps
  if not L1_2 then
    L1_2 = ""
  end
  return L1_2
end

L0_1.getInstalledApps = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.possibleAppsList
  return L1_2
end

L0_1.getPossibleAppsList = L1_1
L0_1 = SettingsWrapper

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.installedAppsLastCheck
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L2_2 = {}
    L2_2.year = 2000
    L2_2.month = 1
    L2_2.day = 1
    L2_2.hour = 0
    L2_2.minutes = 0
    L2_2.seconds = 0
    L1_2.installedAppsLastCheck = L2_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.installedAppsLastCheck
  return L1_2
end

L0_1.getInstalledAppsLastCheck = L1_1
L0_1 = SettingsWrapper
L1_1 = "getTableDeviceSumAll"

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = _G
    L8_2 = L8_2.pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L2_2[L11_2]
      if not L13_2 then
        L13_2 = 0
      end
      L13_2 = L13_2 + L12_2
      L2_2[L11_2] = L13_2
    end
  end
  return L2_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getTableDeviceSum"

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 0
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2[A2_2]
    if not L9_2 then
      L9_2 = 0
    end
    L3_2 = L3_2 + L9_2
  end
  return L3_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "setLocalValue"

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = localDevice
  L4_2 = A1_2[L4_2]
  if L4_2 == nil then
    L4_2 = localDevice
    L5_2 = {}
    A1_2[L4_2] = L5_2
  end
  L4_2 = localDevice
  L4_2 = A1_2[L4_2]
  L4_2[A2_2] = A3_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getLocalValue"

function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = localDevice
  L3_2 = A1_2[L3_2]
  if L3_2 == nil then
    L3_2 = 0
    return L3_2
  end
  L3_2 = localDevice
  L3_2 = A1_2[L3_2]
  L3_2 = L3_2[A2_2]
  if not L3_2 then
    L3_2 = 0
  end
  return L3_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getDeviceSum"

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = settings
    L4_2 = L4_2.root
    L4_2 = L4_2[A1_2]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L2_2 = L2_2 + L7_2
    end
  end
  return L2_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getLocalAmount"

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2 = L2_2[A1_2]
  L3_2 = localDevice
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L2_2 = 0
  end
  return L2_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "setLocalAmount"

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    L3_2 = settings
    L3_2 = L3_2.root
    L4_2 = {}
    L3_2[A1_2] = L4_2
  end
  L3_2 = settings
  L3_2 = L3_2.root
  L3_2 = L3_2[A1_2]
  L4_2 = localDevice
  L3_2[L4_2] = A2_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getLowestBuildSupportedSettings"

function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  L1_2.id = 1
  L1_2.version = "1.2.5"
  return L1_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getBuildSupportedSettings"

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.id = 2
  L2_2 = gameVersionNumber
  L1_2.version = L2_2
  return L1_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getExternalSettingsVersion"

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.root
  if L2_2 then
    L2_2 = A1_2.root
    L2_2 = L2_2.settingsVersion
    if L2_2 then
      L2_2 = A1_2.root
      L2_2 = L2_2.settingsVersion
      return L2_2
  end
  else
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.getLowestBuildSupportedSettings
    return L2_2(L3_2)
  end
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "setSettingsVersion"

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.settingsVersion = A1_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getHintsEnabled"

function L2_1(A0_2)
  local L1_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.hintsEnabled
  if L1_2 == nil then
    L1_2 = true
    return L1_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.hintsEnabled
  return L1_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "setHintsEnabled"

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = assert
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 == "boolean"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "Setting hints enabled to "
  L4_2 = _G
  L4_2 = L4_2.tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = settings
  L2_2 = L2_2.root
  L2_2.hintsEnabled = A1_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "getSettingsVersion"

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.settingsVersion
  if L1_2 == nil then
    L1_2 = settings
    L1_2 = L1_2.root
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.getBuildSupportedSettings
    L2_2 = L2_2(L3_2)
    L1_2.settingsVersion = L2_2
  end
  L1_2 = settings
  L1_2 = L1_2.root
  L1_2 = L1_2.settingsVersion
  return L1_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "convertSettings"

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A1_2.root
    if L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A1_2.root
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getBuildSupportedSettings
  L3_2 = L3_2(L4_2)
  L2_2.settingsVersion = L3_2
  return A1_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "hasIAPs"

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getAmount
  L3_2 = "coins"
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = Characters
  L3_2 = L3_2.list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.getAmount
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if 0 < L7_2 then
      L8_2 = true
      return L8_2
    end
    L8_2 = L5_2
    L9_2 = "_unlimited"
    L8_2 = L8_2 .. L9_2
    L9_2 = SettingsWrapper
    L10_2 = L9_2
    L9_2 = L9_2.getAmount
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if 0 < L9_2 then
      L10_2 = true
      return L10_2
    end
  end
  L2_2 = false
  return L2_2
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "removeAllIAPs"

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getAmount
  L3_2 = "coins"
  L1_2 = L1_2(L2_2, L3_2)
  if 0 < L1_2 then
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.addIAPsUsed
    L4_2 = "coins"
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = Characters
  L3_2 = L3_2.list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.getAmount
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if 0 < L7_2 then
      L8_2 = SettingsWrapper
      L9_2 = L8_2
      L8_2 = L8_2.addIAPsUsed
      L10_2 = L5_2
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
    L8_2 = L5_2
    L9_2 = "_unlimited"
    L8_2 = L8_2 .. L9_2
    L9_2 = SettingsWrapper
    L10_2 = L9_2
    L9_2 = L9_2.getAmount
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if 0 < L9_2 then
      L10_2 = SettingsWrapper
      L11_2 = L10_2
      L10_2 = L10_2.addIAPsUsed
      L12_2 = L8_2
      L13_2 = L9_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "moveIAPsFromDefaultToPlatform"

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = mergeIAPsFromDefault
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = "IAPsGained_"
  L3_2 = "IAPsLostToSynch_"
  L4_2 = "IAPsUsed_"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = nil
    L8_2 = nil
    L9_2 = settings
    L9_2 = L9_2.root
    L10_2 = L6_2
    L11_2 = localPlatform
    L10_2 = L10_2 .. L11_2
    L9_2 = L9_2[L10_2]
    if not L9_2 then
      L9_2 = L6_2
      L10_2 = localPlatform
      L9_2 = L9_2 .. L10_2
      L10_2 = settings
      L10_2 = L10_2.root
      L11_2 = {}
      L10_2[L9_2] = L11_2
      L10_2 = settings
      L10_2 = L10_2.root
      L10_2 = L10_2[L9_2]
      L11_2 = localDevice
      L12_2 = {}
      L10_2[L11_2] = L12_2
    end
    L9_2 = settings
    L9_2 = L9_2.root
    L10_2 = L6_2
    L11_2 = localPlatform
    L10_2 = L10_2 .. L11_2
    L9_2 = L9_2[L10_2]
    L10_2 = localDevice
    L8_2 = L9_2[L10_2]
    L9_2 = settings
    L9_2 = L9_2.root
    L10_2 = L6_2
    L11_2 = "default"
    L10_2 = L10_2 .. L11_2
    L9_2 = L9_2[L10_2]
    if L9_2 then
      L9_2 = settings
      L9_2 = L9_2.root
      L10_2 = L6_2
      L11_2 = "default"
      L10_2 = L10_2 .. L11_2
      L9_2 = L9_2[L10_2]
      L10_2 = localDevice
      L7_2 = L9_2[L10_2]
    end
    if L7_2 then
      L9_2 = _G
      L9_2 = L9_2.pairs
      L10_2 = L7_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      for L12_2, L13_2 in L9_2, L10_2, L11_2 do
        L14_2 = false
        if L12_2 == "coins" then
          L14_2 = true
        end
        L15_2 = _G
        L15_2 = L15_2.pairs
        L16_2 = Characters
        L16_2 = L16_2.list
        L15_2, L16_2, L17_2 = L15_2(L16_2)
        for L18_2, L19_2 in L15_2, L16_2, L17_2 do
          if L18_2 ~= L12_2 then
            L20_2 = L18_2
            L21_2 = "_unlimited"
            L20_2 = L20_2 .. L21_2
            if L20_2 ~= L12_2 then
              goto lbl_86
            end
          end
          L14_2 = true
          ::lbl_86::
        end
        if L14_2 then
          L8_2[L12_2] = L13_2
          L7_2[L12_2] = nil
        end
      end
    end
  end
end

L0_1[L1_1] = L2_1
L0_1 = SettingsWrapper
L1_1 = "moveIAPsFromLocalToCloud"

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = g_gamePurchasesTable
  L1_2 = L1_2.root
  if not L1_2 then
    return
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_gamePurchasesTable
  L2_2 = L2_2.root
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = false
    if L4_2 == "coins" then
      L6_2 = true
    end
    L7_2 = _G
    L7_2 = L7_2.pairs
    L8_2 = Characters
    L8_2 = L8_2.list
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      if L10_2 ~= L4_2 then
        L12_2 = L10_2
        L13_2 = "_unlimited"
        L12_2 = L12_2 .. L13_2
        if L12_2 ~= L4_2 then
          goto lbl_30
        end
      end
      L6_2 = true
      ::lbl_30::
    end
    if L6_2 then
      L7_2 = SettingsWrapper
      L8_2 = L7_2
      L7_2 = L7_2.addAmount
      L9_2 = L4_2
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = g_gamePurchasesTable
      L7_2 = L7_2.root
      L7_2[L4_2] = 0
    end
  end
end

L0_1[L1_1] = L2_1
