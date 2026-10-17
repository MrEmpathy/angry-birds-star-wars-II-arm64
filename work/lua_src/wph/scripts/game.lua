local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = 0.0867
gameWorldScale = L0_1
L0_1 = 100
episodeTypeIndexIncrement = L0_1
L0_1 = 3.5
defaultForceDrag = L0_1
L0_1 = 2
defaultAngularDrag = L0_1
L0_1 = 5
defaultForceAngularDrag = L0_1
L0_1 = 2
defaultYodaForceDrag = L0_1
L0_1 = 2
defaultYodaForceAngularDrag = L0_1
L0_1 = 0.5
defaultHoveringForceDrag = L0_1
L0_1 = 0.85
g_slingShotScaleMultiplier = L0_1
L0_1 = 0.9
g_levelGoalDamageStatePercent = L0_1
L0_1 = true
g_saveGamePurchasesOnPC = L0_1
L0_1 = true
g_usingNewCamera = L0_1
L0_1 = true
g_useLowerCameraAsThemeReferencePoint = L0_1
L0_1 = false
g_showConflictPrompt = L0_1
L0_1 = nil
g_switchedCharacter = L0_1
L0_1 = true
g_blockMainMenuAd = L0_1
L0_1 = false
g_rovioShelfOpened = L0_1
L0_1 = false
g_isSandboxLevel = L0_1
L0_1 = false
g_showAchievementPopup = L0_1
L0_1 = {}
g_samsungDeviceData = L0_1
L0_1 = {}
g_forceUpdateData = L0_1
L0_1 = true
g_showCoinParticles = L0_1
L0_1 = false
g_loginInProgress = L0_1
L0_1 = true
g_coinShopAvailable = L0_1
L0_1 = 20
g_starToCredits = L0_1
L0_1 = false
g_checkAllQuests = L0_1
L0_1 = 2
levelFailedDelay = L0_1
L0_1 = {}
powerups = L0_1
L0_1 = {}
L0_1.transitionTime = 2
L0_1.lockedImage = "ICON_DOT_1"
L0_1.openImage = "ICON_DOT_2"
L0_1.scale = 1.5
L0_1.lockedAlternativeAlpha = 0.5
L0_1.openingScale = 3
L0_1.scalingTime = 0.2
L0_1.dotInterval = 0.3
L0_1.startThreshold = 0.5
L0_1.endThreshold = 0.2
pathItemDefinition = L0_1
L0_1 = 2
TARGET_VISUALIZATION_TIMER_TIME = L0_1
L0_1 = 2
TARGET_VISUALIZATION_WAIT_LEVEL_START = L0_1
L0_1 = 10
TARGET_VISUALIZATION_WAIT_FOR_USER_INPUT = L0_1
L0_1 = TARGET_VISUALIZATION_WAIT_LEVEL_START
g_targetVisualizationUserInputWaitTimer = L0_1
L0_1 = {}
L1_1 = "P_TARGET_MARKER_5"
L2_1 = "P_TARGET_MARKER_4"
L3_1 = "P_TARGET_MARKER_3"
L4_1 = "P_TARGET_MARKER_2"
L5_1 = "P_TARGET_MARKER_1"
L6_1 = "P_TARGET_MARKER_1"
L7_1 = "P_TARGET_MARKER_1"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
g_targetVisualizationDefaultSprites = L0_1
L0_1 = 0.5
g_targetVisualizationEffectScale = L0_1
L0_1 = 2
g_targetVisualizationEffectSpriteScale = L0_1
L0_1 = true
g_useNewBirdLaunch = L0_1
L0_1 = {}
L0_1.buttons = "BUTTONS"
L0_1.ingame = "INGAME"
L0_1.menu = "MENU"
L0_1.menu_common = "MENU_COMMON"
L0_1.theme_common = "THEME_COMMON"
L0_1.portraits = "SHOP_PORTRAITS"
L0_1.shop = "SHOP"
L0_1.rewardVideo = "REWARD_VIDEO"
g_defaultLoadGroups = L0_1
L0_1 = deviceModel
if L0_1 == "windows" then
  L0_1 = g_registrationEnabled
  if L0_1 then
    L0_1 = g_defaultLoadGroups
    L0_1.upsellPC = "ACTIVATION_PC"
  end
end

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "table" then
    L1_2 = g_currentLocale
    L1_2 = A0_2[L1_2]
    if L1_2 and L1_2 ~= "" then
      return L1_2
    else
      L2_2 = A0_2.en_EN
      if L2_2 then
        L2_2 = A0_2.en_EN
        return L2_2
      else
        return A0_2
      end
    end
  end
  return A0_2
end

getLocalizedText = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/AchievementBox.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L3_2 = "ui"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/AchievementDialog.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/ErrorDialog.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/GamerServiceButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/GamerServicesPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/LeaderboardBox.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/LeaderboardDialog.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/LeaderboardEntry.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/xboxlive/ui_components/LeaderboardPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end

loadGamerServiceUIComponents = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/timer.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "util"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/gamerservice/GamerService.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.gamerService
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.gamerService
  L1_2 = loadGamerServiceUIComponents
  L0_2.loadCustomUIComponents = L1_2
  L0_2 = this
  L0_2 = L0_2.gamerService
  L1_2 = L0_2
  L0_2 = L0_2.init
  L0_2(L1_2)
  L0_2 = gamerService
  if L0_2 then
    L0_2 = g_defaultLoadGroups
    L0_2.upsellWP8 = "UPSELL_WP8"
  end
end

initializeGamerService = L0_1
L0_1 = 0.3
forceGlowFadeTimer = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.ShopFrame
  L3_2 = L3_2.checkShopAvailability
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end

checkShopAvailability = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  L0_2 = deviceModel
  L0_2 = deviceModel
  L0_2 = deviceModel
  L0_2 = isIapEnabled
  L0_2 = L0_2()
  L0_2 = L0_2 == "wp8" or L0_2
  return L0_2
end

isPlatformLimited = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  if L2_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = getEpisodeMetadata
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = _G
  L8_2 = L8_2.ipairs
  L9_2 = actions
  L9_2 = L9_2.myLevels
  L9_2 = L9_2[A0_2]
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = getLevelMetadata
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L14_2 = false
    if A1_2 then
      L15_2 = highscores
      L15_2 = L15_2[L12_2]
      if L15_2 then
        L15_2 = highscores
        L15_2 = L15_2[L12_2]
        L15_2 = L15_2.score
        if L15_2 then
          goto lbl_51
          L14_2 = L15_2 or L14_2
        end
      end
      L15_2 = SettingsWrapper
      L16_2 = L15_2
      L15_2 = L15_2.isLevelBoughtOpen
      L17_2 = L12_2
      L15_2 = L15_2(L16_2, L17_2)
      L14_2 = L15_2 or L14_2
      if L15_2 then
        L14_2 = not L13_2
      end
      ::lbl_51::
    else
      L15_2 = highscores
      L15_2 = L15_2[L12_2]
      L14_2 = L15_2 or L14_2
      if L15_2 then
        L15_2 = highscores
        L15_2 = L15_2[L12_2]
        L14_2 = L15_2.score
      end
    end
    if L14_2 then
      L15_2 = L13_2.isAlternativePathLevel
      if L15_2 then
        L15_2 = L2_2.alternativeRouteFirstLevelNumber
        L15_2 = L15_2[1]
        if L11_2 >= L15_2 then
          L15_2 = L2_2.alternativeRouteLastLevelNumber
          L15_2 = L15_2[1]
          if L11_2 <= L15_2 then
            L4_2 = L4_2 + 1
        end
        else
          L5_2 = L5_2 + 1
        end
      else
        L15_2 = L2_2.alternativeRouteStartLevelNumber
        if L15_2 then
          L15_2 = L2_2.alternativeRouteStartLevelNumber
          L15_2 = L15_2[1]
          if L15_2 then
            goto lbl_85
          end
        end
        L6_2 = L6_2 + 1
        goto lbl_110
        ::lbl_85::
        L15_2 = L2_2.alternativeRouteStartLevelNumber
        L15_2 = L15_2[1]
        if L11_2 > L15_2 then
          L15_2 = L2_2.alternativeRouteEndLevelNumber
          L15_2 = L15_2[1]
          if L11_2 < L15_2 then
            L6_2 = L6_2 + 1
        end
        else
          L15_2 = L2_2.alternativeRouteStartLevelNumber
          L15_2 = L15_2[2]
          if L15_2 then
            L15_2 = L2_2.alternativeRouteStartLevelNumber
            L15_2 = L15_2[2]
            if L11_2 > L15_2 then
              L15_2 = L2_2.alternativeRouteEndLevelNumber
              L15_2 = L15_2[2]
              if L11_2 < L15_2 then
                L7_2 = L7_2 + 1
            end
          end
          else
            L3_2 = L3_2 + 1
          end
        end
      end
    end
    ::lbl_110::
  end
  if L4_2 < L6_2 then
    L3_2 = L3_2 + L6_2
  else
    L3_2 = L3_2 + L4_2
  end
  if L5_2 < L7_2 then
    L3_2 = L3_2 + L7_2
  else
    L3_2 = L3_2 + L5_2
  end
  return L3_2
end

getEpisodeProgress = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = actions
  L3_2 = L3_2.myLevels
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = getLevelMetadata
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = isLevelUnlocked
    L9_2 = A0_2
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      if L7_2 then
        L8_2 = L7_2.type
        if L8_2 == "comic" then
          goto lbl_27
        end
        L8_2 = L7_2.isAlternativePathLevel
        if L8_2 then
          goto lbl_27
        end
      end
      L1_2 = L1_2 + 1
    end
    ::lbl_27::
  end
  return L1_2
end

getEpisodeOpenLevels = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = actions
  L1_2 = L1_2.myLevels
  L2_2 = currentFolder
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = getLevelMetadata
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L3_2 = currentFolder
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.isShopPromoPromptLevel
  if L2_2 then
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.wasLevelShopPromoShown
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = not L2_2
  end
  return L2_2
end

isValidShopPromoLevel = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = getDolbyProfileCount
  L0_2 = L0_2()
  if 0 < L0_2 then
    L0_2 = true
    return L0_2
  end
end

isDolbySupported = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = native_isCameraSupported
  return L0_2()
end

isTelepodSupported = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = native_hasFrontCamera
  return L0_2()
end

hasFrontTelepodCamera = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = false
  return L0_2
end

isTransitionSupported = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L1_2.vaderGravity = 1
  L1_2.wicket = 2
  L1_2.aayla = 3
  L1_2.coruscantGravitationPush = 4
  L1_2.sabine = 5
  L1_2.imperialOfficer = 6
  L1_2.kallus = 7
  L1_2.chikatroExplosive = 8
  L1_2.ezra = 9
  L1_2.bodyguard = 10
  L1_2.junk = 11
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 then
      return L6_2
    end
  end
  L2_2 = assert
  L3_2 = false
  L4_2 = "Invalid collision group name: "
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end

collisionGroupNameToNumber = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 1
  L1_2 = isPCVersion
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = screenWidth
    L2_2 = screenHeight
    if L1_2 == L2_2 then
      L0_2 = 0.8
    end
  end
  L1_2 = screenHeight
  if L1_2 < 640 then
    L1_2 = _G
    L1_2 = L1_2.math
    L1_2 = L1_2.max
    L2_2 = 0.01
    L3_2 = screenHeight
    L3_2 = L3_2 / 640
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2 * L0_2
    return L1_2
  else
    L1_2 = screenHeight
    if L1_2 < 768 then
      L1_2 = 1 * L0_2
      return L1_2
    else
      L1_2 = screenHeight
      L1_2 = L1_2 / 768
      L1_2 = L1_2 * L0_2
      return L1_2
    end
  end
end

getUIScale = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = getUIScale
  L0_2 = L0_2()
  L0_2 = L0_2 * 0.5
  return L0_2
end

getFontScale = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = "..."
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getStringWidth
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = getFontScale
  L4_2 = L4_2()
  L3_2 = L3_2 * L4_2
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getStringWidth
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = getFontScale
  L5_2 = L5_2()
  L4_2 = L4_2 * L5_2
  if A1_2 >= L4_2 then
    return A0_2
  end
  L4_2 = _G
  L4_2 = L4_2.string
  L4_2 = L4_2.len
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = _G
    L9_2 = L9_2.string
    L9_2 = L9_2.sub
    L10_2 = A0_2
    L11_2 = 1
    L12_2 = L4_2 - L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = L2_2
    L9_2 = L9_2 .. L10_2
    L10_2 = _G
    L10_2 = L10_2.res
    L10_2 = L10_2.getStringWidth
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = getFontScale
    L11_2 = L11_2()
    L10_2 = L10_2 * L11_2
    if A1_2 >= L10_2 then
      return L9_2
    end
  end
  return L2_2
end

shortenEmail = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = initializeBulletTime
  L0_2()
  L0_2 = true
  g_disableBirdToSlingshotSound = L0_2
end

initializeGame = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 0
  bulletTimeDuration = L0_2
  L0_2 = 0
  bulletTimeSmoothIn = L0_2
  L0_2 = 0
  bulletTimeSmoothOut = L0_2
  L0_2 = 1
  bulletTimeMultiplier = L0_2
  L0_2 = 0
  bulletTimeTimer = L0_2
  L0_2 = setDeltaTimeMultiplier
  L1_2 = 1
  L0_2(L1_2)
end

initializeBulletTime = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2 + A1_2
  L4_2 = L4_2 + A2_2
  bulletTimeTimer = L4_2
  bulletTimeDuration = L4_2
  bulletTimeSmoothIn = A0_2
  bulletTimeSmoothOut = A2_2
  bulletTimeMultiplier = A3_2
end

activateBulletTime = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = bulletTimeTimer
  if L1_2 <= 0 then
    return
  end
  L1_2 = bulletTimeTimer
  L2_2 = getDeltaTimeMultiplier
  L2_2 = L2_2()
  L2_2 = A0_2 / L2_2
  L1_2 = L1_2 - L2_2
  bulletTimeTimer = L1_2
  L1_2 = nil
  L2_2 = bulletTimeTimer
  if 0 < L2_2 then
    L2_2 = bulletTimeDuration
    L3_2 = bulletTimeTimer
    L2_2 = L2_2 - L3_2
    L3_2 = bulletTimeSmoothIn
    if L2_2 <= L3_2 then
      L2_2 = bulletTimeDuration
      L3_2 = bulletTimeTimer
      L2_2 = L2_2 - L3_2
      L3_2 = bulletTimeSmoothIn
      L2_2 = L2_2 / L3_2
      L3_2 = bulletTimeMultiplier
      L3_2 = 1 - L3_2
      L2_2 = L2_2 * L3_2
      L1_2 = 1 - L2_2
    else
      L2_2 = bulletTimeTimer
      L3_2 = bulletTimeSmoothOut
      if L2_2 <= L3_2 then
        L2_2 = bulletTimeMultiplier
        L2_2 = 1 - L2_2
        L3_2 = bulletTimeTimer
        L4_2 = bulletTimeSmoothOut
        L3_2 = L3_2 / L4_2
        L2_2 = L2_2 * L3_2
        L1_2 = 1 - L2_2
      else
        L1_2 = bulletTimeMultiplier
      end
    end
  else
    L2_2 = 0
    bulletTimeTimer = L2_2
    L1_2 = 1
  end
  L2_2 = setDeltaTimeMultiplier
  L3_2 = L1_2
  L2_2(L3_2)
end

updateBulletTime = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/Frame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "ui"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/AnchorFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/Text.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/TextButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/DummyText.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/Image.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/BGBox.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/ImageButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/Rectangle.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/RectangleButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/ScallableButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/StaticButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/ProgressBar.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/ToggleButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/GridFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/SliderFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/ScrollFrame2.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/InvisibleButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/BackgroundBox.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/FlashAnimation.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/Spinner.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamerService
  if L0_2 then
    L0_2 = initializeGamerService
    L0_2()
  end
  L0_2 = deviceModel
  if L0_2 == "metro" then
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/ui_components/MetroSnapBar.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/TriangleInvisibleButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/Prompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/ConfirmPrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/ForceUpdatePrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/PurchaseOppositeSidePrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/EpicSelection.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/QuestPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/TabButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/RewardPopup.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/GameHud.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/LevelButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/BonusLevelButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CameraPointer.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/RotatingCoin.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CoinButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/ClaimBadge.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/NewSpecialsBadge.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/LightDarkEpisodeButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/PausePage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/AnimatedTutorial.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/main_menu.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/MainMenuCar.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/LevelSelectionPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CreditsFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/CharacterMenuShop.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopBackgroundButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopBackground.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/CharacterPurchasePopup.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopOfferButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/DolbyPopup.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/HintPopup.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/TelepodPrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/TelepodPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CarboniteMeltAnimation.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CarboniteAvailableAnimation.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CarboniteNoNetworkPrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/PowerUpMachineFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/AdButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/iap.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/local_notifications.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/KeyBoard.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/pause.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "pause"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/StartSequencePage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/comicPage1.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/WarpTransition.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/game_center.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/menus/ProcessManager.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/menus/TrialVersionPopup.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/menus/RemoveAdsPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = cheatsEnabled
  if L0_2 then
    L0_2 = loadLuaFile
    L1_2 = scriptPath
    L2_2 = "/menus/QAPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = ""
    L3_2 = false
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/buttonConfig.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = commonScriptPath
  L2_2 = "/utils.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = commonScriptPath
  L2_2 = "/math.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = commonScriptPath
  L2_2 = "/ui_components/FrameUtils.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/characters.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Characters
  L1_2 = L0_2
  L0_2 = L0_2.setupEventListeners
  L0_2(L1_2)
  L0_2 = loadLuaFileToObject
  L1_2 = commonScriptPath
  L2_2 = "/trackpad.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "OSX"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = showEditor
  if L0_2 then
    L0_2 = loadLuaFile
    L1_2 = commonScriptPath
    L2_2 = "/../editor/EditorUtils.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = ""
    L3_2 = false
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/EditorScene.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/editableAttributes.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L3_2 = "editableAttributes"
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = {}
    keyDefinitions = L0_2
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/KeyDefinitions.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.keyDefinitions
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = {}
    propertyDefinitions = L0_2
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/PropertyDefinitions.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.propertyDefinitions
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/JointDefinitions.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/JointPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/BlockAttributesPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/EditorLevelSelection.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = commonScriptPath
    L2_2 = "/../editor/PropertyEditor.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = ui
    L0_2 = L0_2.EditorScene
    L1_2 = {}
    L0_2.groupOrders = L1_2
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/editor/GroupOrders.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/rovioid/RovioAccount.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/rovioid/Assets.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/rovioid/CloudSync.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/rovioid/RASettingsManager.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "RASettingsManager"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = rovioAccountEnabled
  if L0_2 then
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/IDPopup.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/RovioIDMergePage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/RovioIDConflictPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/RovioIDMergeWarningPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/RovioIDProfilePage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/RovioIDSignedOutPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/RovioIDSignOutPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/rovioid/RovioIDUpdatePage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = channelEnabled
  if L0_2 then
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/channel/ChannelButton.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = RovioShelf
  if L0_2 then
    L0_2 = loadLuaFile
    L1_2 = commonScriptPath
    L2_2 = "/RovioShelf.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = ""
    L3_2 = false
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/CoinsPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/SpinnerFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/Shop.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopCarousel.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ClaimRewardButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopPromoPrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopTutorial.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShoppingUIFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/PurchaseConfirmationDialog.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/PurchaseRedirectDialog.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.ShopFrame
  L1_2 = {}
  L0_2.packageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopData.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L2_2 = L2_2.ShopFrame
  L2_2 = L2_2.packageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.ShopFrame
  L1_2 = loadCloudAssetFile
  L2_2 = Assets
  L2_2 = L2_2.getAssetName
  L3_2 = "shop"
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.cachedData = L1_2
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.CarboniteAvailableAnimation
  L1_2 = {}
  L0_2.packageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/RewardData.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L2_2 = L2_2.CarboniteAvailableAnimation
  L2_2 = L2_2.packageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.CarboniteAvailableAnimation
  L1_2 = loadCloudAssetFile
  L2_2 = Assets
  L2_2 = L2_2.getAssetName
  L3_2 = "reward"
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.cachedData = L1_2
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.TelepodPage
  L1_2 = {}
  L0_2.packageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CameraData.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L2_2 = L2_2.TelepodPage
  L2_2 = L2_2.packageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.TelepodPage
  L1_2 = loadCloudAssetFile
  L2_2 = Assets
  L2_2 = L2_2.getAssetName
  L3_2 = "camera"
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.cachedData = L1_2
  L0_2 = g_samsungDeviceData
  L1_2 = {}
  L0_2.packageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/SamsungDeviceData.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = g_samsungDeviceData
  L2_2 = L2_2.packageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = g_samsungDeviceData
  L1_2 = loadCloudAssetFile
  L2_2 = Assets
  L2_2 = L2_2.getAssetName
  L3_2 = "camera"
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.cachedData = L1_2
  L0_2 = g_forceUpdateData
  L1_2 = {}
  L0_2.packageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/UpdateData.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = g_forceUpdateData
  L2_2 = L2_2.packageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = g_forceUpdateData
  L1_2 = loadCloudAssetFile
  L2_2 = Assets
  L2_2 = L2_2.getAssetName
  L3_2 = "force-update"
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.cachedData = L1_2
  L0_2 = true
  g_isRegistered = L0_2
  L0_2 = gamerService
  if L0_2 then
    L0_2 = gamerService
    L1_2 = L0_2
    L0_2 = L0_2.isTrial
    L0_2 = L0_2(L1_2)
    L0_2 = not L0_2
    g_isRegistered = L0_2
  else
    L0_2 = g_registrationEnabled
    if L0_2 then
      L0_2 = releaseBuild
      if L0_2 then
        L0_2 = isPCVersion
        L0_2 = L0_2()
        if L0_2 then
          L0_2 = steam
          if L0_2 then
            L0_2 = steam
            L0_2 = L0_2.registered
            if L0_2 then
              L0_2 = true
              g_isRegistered = L0_2
            else
              L0_2 = false
              g_isRegistered = L0_2
            end
          else
            L0_2 = loadLuaFileToObject
            L1_2 = scriptPath
            L2_2 = "/menus/RegistrationDialog.lua"
            L1_2 = L1_2 .. L2_2
            L2_2 = this
            L3_2 = "DRM"
            L0_2(L1_2, L2_2, L3_2)
            L0_2 = loadLuaFileToObject
            L1_2 = scriptPath
            L2_2 = "/PC_DRM.lua"
            L1_2 = L1_2 .. L2_2
            L2_2 = this
            L2_2 = L2_2.DRM
            L3_2 = ""
            L0_2(L1_2, L2_2, L3_2)
            L0_2 = DRM
            L0_2 = L0_2.checkRegistration
            L0_2 = L0_2()
            g_isRegistered = L0_2
          end
        end
      end
    end
  end
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/menus/resolution.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/menus/UpdatePrompt.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = isIOSFree
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = loadLuaFile
    L1_2 = scriptPath
    L2_2 = "/menus/GetFullVersionPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = ""
    L3_2 = false
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = loadLuaFile
    L1_2 = scriptPath
    L2_2 = "/menus/TimedGetFullVersionPage.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = ""
    L3_2 = false
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_GAME_INITIALIZED
  L3_2 = gameInitializedListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = events
  L2_2 = L2_2.EID_GAME_PAUSED
  L3_2 = pauseGameEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = ProcessManager
  L1_2 = L0_2
  L0_2 = L0_2.new
  L0_2 = L0_2(L1_2)
  processManager = L0_2
  L0_2 = ui
  L0_2 = L0_2.Frame
  L1_2 = L0_2
  L0_2 = L0_2.new
  L0_2 = L0_2(L1_2)
  notificationsFrame = L0_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setPlayMainMusic
  L2_2 = true
  L0_2(L1_2, L2_2)
end

initializeGameMenus = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = cancelBirdDrag
  L2_2()
  L2_2 = closeTelepodPage
  L2_2()
  L2_2 = closeShopPopups
  L2_2()
end

L0_1.eventTriggered = L1_1
pauseGameEventListener = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.moveIAPsFromLocalToCloud
  L2_2(L3_2)
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.moveIAPsFromDefaultToPlatform
  L2_2(L3_2)
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.increaseNumberOfStartups
  L2_2(L3_2)
end

L0_1.eventTriggered = L1_1
gameInitializedListener = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/achievementsLogic.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/menus/AchievementPopup.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/leaderboardsLogic.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = initializeAchievements
  L0_2()
  L0_2 = initializeLeaderboards
  L0_2()
end

loadGameCenter = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = loadImages
  L1_2 = {}
  L2_2 = "MENU"
  L1_2[1] = L2_2
  L0_2(L1_2)
  L0_2 = loadImages
  L1_2 = {}
  L2_2 = "BUTTONS"
  L1_2[1] = L2_2
  L0_2(L1_2)
end

loadStartSequenceAssets = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = initializeGame
  L0_2()
  L0_2 = createAssets
  L0_2()
  L0_2 = restoreSettings
  L0_2()
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.resetSessionStartTime
  L0_2(L1_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getSettingsVersion
  L0_2(L1_2)
end

startInitialLoading = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = false
  if not A0_2 then
    L2_2 = checkForceUpdate
    L2_2 = L2_2()
    L1_2 = L2_2
  end
  if not L1_2 then
    L2_2 = true
    fadeIsFadeIn = L2_2
    L2_2 = 0.5
    fadeTotalTimer = L2_2
    L2_2 = 0
    fadeTimer = L2_2
    L2_2 = {}
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    fadeColor = L2_2
    L2_2 = loadLuaFile
    L3_2 = scriptPath
    L4_2 = "/menus/level_end.lua"
    L3_2 = L3_2 .. L4_2
    L4_2 = ""
    L5_2 = false
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = menuManager
    L3_2 = L2_2
    L2_2 = L2_2.addLink
    L4_2 = "GameScene"
    L5_2 = GameScene
    L6_2 = L5_2
    L5_2 = L5_2.new
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = showEditor
    if L2_2 == true then
      L2_2 = releaseBuild
      if L2_2 ~= true then
        L2_2 = menuManager
        L3_2 = L2_2
        L2_2 = L2_2.addLink
        L4_2 = "editorScene"
        L5_2 = ui
        L5_2 = L5_2.EditorScene
        L6_2 = L5_2
        L5_2 = L5_2.new
        L5_2, L6_2 = L5_2(L6_2)
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
    L2_2 = gotoMenuLevel
    L3_2 = "MainMenu"
    L2_2(L3_2)
    L2_2 = true
    splashShown = L2_2
    L2_2 = handleResolutionPopup
    L2_2()
  end
end

startSequenceEnded = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getLink
  L2_2 = "GameScene"
  L0_2 = L0_2(L1_2, L2_2)
  L2_2 = L0_2
  L1_2 = L0_2.getChild
  L3_2 = "characterMenu"
  return L1_2(L2_2, L3_2)
end

getCharacterMenu = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  actions = L0_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "actions"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_birds.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "bird_actions"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_pigEmotions.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "pigEmotions_actions"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_menuStructure.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "menuStructure_actions"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_water.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "actions_water"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_boss_B1.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "actions_boss_B1"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_boss_B2.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "actions_boss_B2"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_boss_B3.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "actions_boss_B3"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_boss_P2.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "actions_boss_P2"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/actions_boss_P3.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L3_2 = "actions_boss_P3"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = isIOSFree
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/levelOrder.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.menuStructure_actions
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  else
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/levelOrder_free.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.menuStructure_actions
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = {}
  L1_2 = bird_actions
  L2_2 = pigEmotions_actions
  L3_2 = menuStructure_actions
  L4_2 = actions_water
  L5_2 = actions_boss_B1
  L6_2 = actions_boss_B2
  L7_2 = actions_boss_B3
  L8_2 = actions_boss_P2
  L9_2 = actions_boss_P3
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = actions
  L1_2 = L1_2.Initialize
  L1_2()
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Initialize
    L6_2()
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = actions
      L11_2[L9_2] = L10_2
    end
    L5_2 = nil
  end
  L1_2 = {}
  eventCalls = L1_2
  L1_2 = 0
  numEventCalls = L1_2
  L1_2 = {}
  updateCalls = L1_2
  L1_2 = isIOSFree
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = actions
    L1_2 = L1_2.myLevelsMetadata
    L2_2 = actions
    L2_2 = L2_2.myLevelsMetadata
    L2_2 = L2_2.EpisodeSelection
    L1_2.EpisodeSelection_Free = L2_2
  end
end

initializeEventSystem = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = {}
  eventCalls = L0_2
  L0_2 = 0
  numEventCalls = L0_2
  L0_2 = {}
  updateCalls = L0_2
  L0_2 = true
  g_eventSystemResetDone = L0_2
end

resetEventSystem = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = deviceModel
  if L1_2 == "ios" then
    L1_2 = "1024x768"
    return L1_2
  else
    L1_2 = deviceModel
    if L1_2 ~= "android" then
      L1_2 = deviceModel
      if L1_2 ~= "blackberry" then
        goto lbl_16
      end
    end
    L1_2 = "android"
    do return L1_2 end
    goto lbl_30
    ::lbl_16::
    L1_2 = deviceModel
    if L1_2 ~= "windows" then
      L1_2 = deviceModel
      if L1_2 ~= "osx" then
        goto lbl_25
      end
    end
    L1_2 = "pc"
    do return L1_2 end
    goto lbl_30
    ::lbl_25::
    L1_2 = deviceModel
    if L1_2 == "wp8" then
      L1_2 = "wp8"
      return L1_2
    end
  end
  ::lbl_30::
end

selectAssetProfile = L0_1
L0_1 = {}
loadedFonts = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = selectAssetProfile
  return L0_2()
end

selectFontProfile = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontCredits
  return L0_2
end

getFontCredits = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontIngameMoney
  return L0_2
end

getFontIngameMoney = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontStarCount
  return L0_2
end

getFontStarcount = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontScore
  return L0_2
end

getFontScore = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontLevelselection
  return L0_2
end

getFontLevelselection = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontPrice
  return L0_2
end

getFontPrice = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontScoreBig
  return L0_2
end

getFontScoreBig = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontBasic
  if not L0_2 then
    L0_2 = "FONT_SPACE_BASIC"
  end
  return L0_2
end

getFontBasic = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontCrimsonBasic
  return L0_2
end

getFontCrimsonBasic = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontHeadline
  return L0_2
end

getFontHeadline = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontAmount
  return L0_2
end

getFontAmount = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontIDScoreLight
  return L0_2
end

getFontIDScoreLight = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = loadedFonts
  L0_2 = L0_2.fontIDScoreDark
  return L0_2
end

getFontIDScoreDark = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getString
  L2_2 = "TEXTS_BASIC"
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= "" then
    return L1_2
  end
  return A0_2
end

getFont = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = selectFontProfile
  L0_2 = L0_2()
  L1_2 = getFont
  L2_2 = "FONT_SPACE_BASIC"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= "FONT_SPACE_BASIC" then
    L1_2 = releaseFont
    L2_2 = "fontBasic"
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = loadedFonts
    L1_2.fontBasic = nil
  end
  L1_2 = releaseFont
  L2_2 = "fontScore"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = releaseFont
  L2_2 = "fontCrimsonBasic"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = releaseFont
  L2_2 = "fontHeadline"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end

releaseLocalizedFonts = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = selectFontProfile
  L0_2 = L0_2()
  L1_2 = getFont
  L2_2 = "FONT_SPACE_BASIC"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= "FONT_SPACE_BASIC" then
    L1_2 = loadFont
    L2_2 = "fontBasic"
    L3_2 = getFont
    L4_2 = "FONT_SPACE_BASIC"
    L3_2 = L3_2(L4_2)
    L4_2 = L0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = loadedFonts
    L1_2.fontBasic = "FONT_SPACE_BASIC"
  end
  L1_2 = loadFont
  L2_2 = "fontCrimsonBasic"
  L3_2 = getFont
  L4_2 = "FONT_CRIMSON_BASIC"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontScore"
  L3_2 = getFont
  L4_2 = "FONT_SPACE_SCORE_TEXT"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontHeadline"
  L3_2 = getFont
  L4_2 = "FONT_SW_BIG_HEADLINE"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
end

loadLocalizedFonts = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = loadedFonts
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.releaseFont
    L3_2 = fontPath
    L4_2 = "/"
    L5_2 = A1_2
    L6_2 = "/"
    L7_2 = loadedFonts
    L7_2 = L7_2[A0_2]
    L8_2 = ".dat"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L2_2(L3_2)
    L2_2 = loadedFonts
    L2_2[A0_2] = nil
  end
end

releaseFont = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.createBitmapFont
  L4_2 = fontPath
  L5_2 = "/"
  L6_2 = A2_2
  L7_2 = "/"
  L8_2 = A1_2
  L9_2 = ".dat"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  L3_2 = loadedFonts
  L3_2[A0_2] = A1_2
end

loadFont = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = selectFontProfile
  L0_2 = L0_2()
  L1_2 = print
  L2_2 = "Loading fonts for profile "
  L3_2 = L0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.createBitmapFont
  L2_2 = fontPath
  L3_2 = "/"
  L4_2 = L0_2
  L5_2 = "/FONT_SPACE_BASIC.dat"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
  L1_2 = getFont
  L2_2 = "FONT_SPACE_BASIC"
  L1_2 = L1_2(L2_2)
  if L1_2 == "FONT_SPACE_BASIC" then
    L1_2 = loadedFonts
    L1_2.fontBasic = "FONT_SPACE_BASIC"
  else
    L1_2 = loadFont
    L2_2 = "fontBasic"
    L3_2 = getFont
    L4_2 = "FONT_SPACE_BASIC"
    L3_2 = L3_2(L4_2)
    L4_2 = L0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = loadFont
  L2_2 = "fontCredits"
  L3_2 = getFont
  L4_2 = "FONT_CREDITS"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontIngameMoney"
  L3_2 = getFont
  L4_2 = "FONT_SW_MONEY"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontStarCount"
  L3_2 = getFont
  L4_2 = "FONT_CRIMSON_STARCOUNT"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontScore"
  L3_2 = getFont
  L4_2 = "FONT_SPACE_SCORE_TEXT"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontLevelselection"
  L3_2 = getFont
  L4_2 = "FONT_SPACE_LS"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontPrice"
  L3_2 = getFont
  L4_2 = "FONT_SW_PRICE"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontScoreBig"
  L3_2 = getFont
  L4_2 = "FONT_SPACE_SCORE_BIG"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontBasic"
  L3_2 = getFont
  L4_2 = "FONT_SPACE_BASIC"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontCrimsonBasic"
  L3_2 = getFont
  L4_2 = "FONT_CRIMSON_BASIC"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontHeadline"
  L3_2 = getFont
  L4_2 = "FONT_SW_BIG_HEADLINE"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontAmount"
  L3_2 = getFont
  L4_2 = "FONT_SW_AMOUNTS"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontIDScoreLight"
  L3_2 = getFont
  L4_2 = "FONT_ID_SCORE_LIGHT"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadFont
  L2_2 = "fontIDScoreDark"
  L3_2 = getFont
  L4_2 = "FONT_ID_SCORE_DARK"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
end

loadFonts = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = "http://cloud.rovio.com/link/redirect/?d="
  L3_2 = getDeviceModelParameter
  L3_2 = L3_2()
  L4_2 = "&p="
  L5_2 = gameId
  L6_2 = "&a="
  L7_2 = A0_2
  L8_2 = "&v="
  L9_2 = gameVersionNumber
  L10_2 = "&t="
  L11_2 = A1_2
  L12_2 = "&r=game&c="
  L13_2 = customerString
  L14_2 = "&dm="
  L15_2 = deviceInfoModel
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
  return L2_2
end

generateRedirectURL = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = deviceModel
  L1_2 = deviceModel
  if L1_2 == "ios" then
    L1_2 = _G
    L1_2 = L1_2.string
    L1_2 = L1_2.lower
    L2_2 = _G
    L2_2 = L2_2.string
    L2_2 = L2_2.sub
    L3_2 = deviceInfoModel
    L4_2 = 1
    L5_2 = 4
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 == "ipad" then
      L0_2 = "ipad"
    else
      L0_2 = "iphone"
    end
  end
  return L0_2
end

getDeviceModelParameter = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = "full"
  L1_2 = isLiteVersion
  if L1_2 then
    L0_2 = "lite"
  end
  L1_2 = isHDVersion
  if L1_2 then
    L0_2 = "HD"
  end
  L1_2 = applyChinaRestictions
  if L1_2 then
    L1_2 = L0_2
    L2_2 = "_china"
    L0_2 = L1_2 .. L2_2
  end
  return L0_2
end

getVariant = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = {}
    L1_2 = "ios"
    L0_2[1] = L1_2
    g_cameraProfileList = L0_2
  else
    L0_2 = screenWidth
    L1_2 = screenHeight
    L0_2 = L0_2 / L1_2
    L1_2 = screenWidth
    L1_2 = L1_2 <= 1334
    g_usingPhoneCamera = L1_2
    L1_2 = g_usingPhoneCamera
    if L1_2 then
      L1_2 = {}
      L2_2 = "android"
      L3_2 = "ios"
      L1_2[1] = L2_2
      L1_2[2] = L3_2
      g_cameraProfileList = L1_2
    else
      L1_2 = {}
      L2_2 = "ios"
      L3_2 = "android"
      L1_2[1] = L2_2
      L1_2[2] = L3_2
      g_cameraProfileList = L1_2
    end
  end
  L0_2 = LocalNotifications
  L0_2 = L0_2.initLocalNotifications
  L0_2()
  L0_2 = print
  L1_2 = "------------- create startup assets ------------ \n"
  L0_2(L1_2)
  L0_2 = 0.8
  LEVEL_SELECTION_VIEW_AREA_SCALE_X = L0_2
  L0_2 = 0.7
  LEVEL_SELECTION_VIEW_AREA_SCALE_Y = L0_2
  L0_2 = 0.25
  LEVEL_SELECTION_PAGE_ALIGNMENT_Y = L0_2
  L0_2 = 0.5
  LEVEL_SELECTION_PAGE_ALIGNMENT_X = L0_2
  L0_2 = 5
  LEVEL_SELECTION_PAGE_MAX_COLS = L0_2
  L0_2 = 3
  LEVEL_SELECTION_PAGE_MAX_ROWS = L0_2
  L0_2 = "full"
  L1_2 = isLiteVersion
  if L1_2 then
    L0_2 = "lite"
  end
  L1_2 = isHDVersion
  if L1_2 then
    L0_2 = "HD"
  end
  L1_2 = applyChinaRestictions
  if L1_2 then
    L1_2 = L0_2
    L2_2 = "_china"
    L0_2 = L1_2 .. L2_2
  end
  L1_2 = ""
  L2_2 = customerString
  if L2_2 ~= "rovio" then
    L2_2 = "_"
    L3_2 = customerString
    L1_2 = L2_2 .. L3_2
  end
  L2_2 = "originalfull"
  L3_2 = "halloweenfull"
  L4_2 = customerString
  if L4_2 ~= "rovio" then
    L4_2 = L2_2
    L5_2 = "_"
    L6_2 = customerString
    L2_2 = L4_2 .. L5_2 .. L6_2
    L4_2 = L3_2
    L5_2 = "_"
    L6_2 = customerString
    L3_2 = L4_2 .. L5_2 .. L6_2
  end
  L4_2 = native_getCloudType
  L4_2 = L4_2()
  if L4_2 == "CLOUD" then
    L5_2 = "https://account.rovio.com"
    ID_ACCOUNT_DETAILS_URL = L5_2
  else
    L5_2 = "https://account-stage.rovio.com"
    ID_ACCOUNT_DETAILS_URL = L5_2
  end
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "rovio"
  L5_2 = L5_2(L6_2, L7_2)
  ROVIO_WEBSITE_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "starwarstrailer"
  L5_2 = L5_2(L6_2, L7_2)
  MOVIE_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "telepodsinfo"
  L5_2 = L5_2(L6_2, L7_2)
  TELEPODSINFO_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "angrybirdsstarwars2full"
  L5_2 = L5_2(L6_2, L7_2)
  FORCED_UPDATE_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "angrybirdsstarwars2paid"
  L8_2 = L1_2
  L7_2 = L7_2 .. L8_2
  L5_2 = L5_2(L6_2, L7_2)
  FORCE_UPDATE_URL_PAID = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "angrybirdsstarwarsiifull"
  L8_2 = L1_2
  L7_2 = L7_2 .. L8_2
  L5_2 = L5_2(L6_2, L7_2)
  FULL_GAME_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "nasa"
  L5_2 = L5_2(L6_2, L7_2)
  NASA_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "weibo"
  L5_2 = L5_2(L6_2, L7_2)
  WEIBO_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "facebook"
  L5_2 = L5_2(L6_2, L7_2)
  FACEBOOK_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "twitterfollow"
  L5_2 = L5_2(L6_2, L7_2)
  TWITTER_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "galaxyvideo"
  L5_2 = L5_2(L6_2, L7_2)
  SAMSUNG_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "qzone"
  L5_2 = L5_2(L6_2, L7_2)
  QZONE_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "tencentweibo"
  L5_2 = L5_2(L6_2, L7_2)
  TENCENT_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "privacypolicy"
  L5_2 = L5_2(L6_2, L7_2)
  PRIVACY_POLICY_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "eula"
  L5_2 = L5_2(L6_2, L7_2)
  EULA_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  APP_STORE_SEASONS_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  APP_STORE_ABCLASSIC_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "purchasegift"
  L5_2 = L5_2(L6_2, L7_2)
  APPLE_GIFT_PURCHASE_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "ringtone"
  L5_2 = L5_2(L6_2, L7_2)
  RINGTONE_PURCHASE_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "renren"
  L5_2 = L5_2(L6_2, L7_2)
  RENREN_URL = L5_2
  L5_2 = generateRedirectURL
  L6_2 = L0_2
  L7_2 = "amazingalexfull"
  L5_2 = L5_2(L6_2, L7_2)
  ALEX_URL = L5_2
  L5_2 = releaseBuild
  if L5_2 == true then
    L5_2 = "http://cloud.rovio.com/content/embed/gameList/?d="
    L6_2 = getDeviceModelParameter
    L6_2 = L6_2()
    L7_2 = "&p=abc&a="
    L8_2 = L0_2
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    CHECK_APPLICATIONS_URL = L5_2
  else
    L5_2 = "http://smoke.rovio.com/content/embed/gameList/?d="
    L6_2 = getDeviceModelParameter
    L6_2 = L6_2()
    L7_2 = "&p=abc&a="
    L8_2 = L0_2
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    CHECK_APPLICATIONS_URL = L5_2
  end
  L5_2 = loadImages
  L6_2 = {}
  L7_2 = "SPLASHES"
  L6_2[1] = L7_2
  L5_2(L6_2)
  L5_2 = loadCompoSprites
  L6_2 = {}
  L7_2 = "SPLASHES_COMPOSPRITES"
  L6_2[1] = L7_2
  L5_2(L6_2)
  L5_2 = isPCVersion
  L5_2 = L5_2()
  if L5_2 == true then
    L5_2 = res
    L5_2 = L5_2.createAudioOutput
    L6_2 = 2
    L7_2 = 16
    L8_2 = 44100
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = res
    L5_2 = L5_2.createAudioOutput
    L6_2 = 1
    L7_2 = 16
    L8_2 = 16000
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = getTimeDifferenceInSeconds
  L6_2 = getCurrentTime
  L6_2 = L6_2()
  L7_2 = SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.getInstalledAppsLastCheck
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L5_2 / 3600
  L7_2 = SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.getInstalledAppsTTL
  L7_2 = L7_2(L8_2)
  if L6_2 > L7_2 then
    L6_2 = checkInstalledAppsOnline
    L7_2 = CHECK_APPLICATIONS_URL
    L6_2(L7_2)
  else
    L6_2 = SettingsWrapper
    L7_2 = L6_2
    L6_2 = L6_2.getPossibleAppsList
    L6_2 = L6_2(L7_2)
    possibleInstalledApps = L6_2
    L6_2 = possibleInstalledApps
    if L6_2 then
      L6_2 = checkInstalledAppsOffline
      L7_2 = exportLuaTableAsJSON
      L8_2 = "possibleInstalledApps"
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L6_2 = loadFonts
  L6_2()
  L6_2 = setFont
  L7_2 = getFontBasic
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = native_showAppirater
  L7_2 = getText
  L8_2 = "TEXT_APPIRATER_QUESTION"
  L7_2 = L7_2(L8_2)
  L8_2 = getText
  L9_2 = "TEXT_APPIRATER_YES"
  L8_2 = L8_2(L9_2)
  L9_2 = getText
  L10_2 = "TEXT_APPIRATER_NO"
  L9_2 = L9_2(L10_2)
  L10_2 = getText
  L11_2 = "TEXT_APPIRATER_LATER"
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = ui
  L6_2 = L6_2.StartSequencePage
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "startSequencePage"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.notify
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_CHANGE_SCENE
  L9_2.id = L10_2
  L9_2.target = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = print
  L8_2 = "------------- setGameParameters ------------"
  L7_2(L8_2)
  L7_2 = setGameParameters
  L8_2 = {}
  L9_2 = deterministicPhysics
  L8_2.deterministicPhysics = L9_2
  L9_2 = gameWorldScale
  L8_2.gameWorldScale = L9_2
  L7_2(L8_2)
  L7_2 = print
  L8_2 = "------------- end of create startup assets ------------"
  L7_2(L8_2)
  L7_2 = deviceModel
  if L7_2 ~= "windows" then
    L7_2 = deviceModel
    if L7_2 ~= "osx" then
      goto lbl_402
    end
  end
  L7_2 = SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.getFullScreen
  L7_2 = L7_2(L8_2)
  if L7_2 == nil then
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.setFullScreen
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = setFullScreenMode
    L8_2 = SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.getFullScreen
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.getFullScreen
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = setFullScreenMode
      L8_2 = SettingsWrapper
      L9_2 = L8_2
      L8_2 = L8_2.getFullScreen
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    else
      L7_2 = 1024
      L8_2 = 600
      L9_2 = SettingsWrapper
      L10_2 = L9_2
      L9_2 = L9_2.getScreenWidth
      L9_2 = L9_2(L10_2)
      if L9_2 == nil then
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.setScreenWidth
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
      L9_2 = SettingsWrapper
      L10_2 = L9_2
      L9_2 = L9_2.getScreenHeight
      L9_2 = L9_2(L10_2)
      if L9_2 == nil then
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.setScreenHeight
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.max
      L10_2 = L7_2
      L11_2 = SettingsWrapper
      L12_2 = L11_2
      L11_2 = L11_2.getScreenWidth
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.max
      L11_2 = L8_2
      L12_2 = SettingsWrapper
      L13_2 = L12_2
      L12_2 = L12_2.getScreenHeight
      L12_2, L13_2 = L12_2(L13_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = setResolution
      L12_2 = L9_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  ::lbl_402::
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.createTextGroupSet
  L8_2 = localizationPath
  L9_2 = "/TEXTS_BASIC.dat"
  L8_2 = L8_2 .. L9_2
  L7_2(L8_2)
end

createStartUpAssets = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    A0_2 = 0
  end
  L1_2 = res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = "MAIN_BG_SKY"
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = mainMenuBGMoved
  L3_2 = L3_2 + A0_2
  mainMenuBGMoved = L3_2
  L3_2 = -L1_2
  L3_2 = L3_2 * 0.2
  L4_2 = mainMenuBGMoved
  L3_2 = L3_2 + L4_2
  return L3_2
end

getBGInitialPosition = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = g_defaultLoadGroups
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = loadImages
    L6_2 = {}
    L7_2 = L4_2
    L6_2[1] = L7_2
    L5_2(L6_2)
  end
  L0_2 = applyChinaRestictions
  if L0_2 then
    L0_2 = loadImages
    L1_2 = {}
    L2_2 = "CHINA"
    L1_2[1] = L2_2
    L0_2(L1_2)
  end
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = loadImages
    L1_2 = {}
    L2_2 = "CURSORS"
    L1_2[1] = L2_2
    L0_2(L1_2)
  end
  L0_2 = showEditor
  if L0_2 == true then
    L0_2 = {}
    themes = L0_2
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/themes.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.themes
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = {}
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = themes
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = _G
      L6_2 = L6_2.ipairs
      L7_2 = L5_2.loadListGroup
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = _G
        L11_2 = L11_2.table
        L11_2 = L11_2.insert
        L12_2 = L0_2
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      end
    end
    L1_2 = loadImages
    L2_2 = L0_2
    L1_2(L2_2)
  end
end

createAssets = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = initializeSoundManager
  L0_2()
  L0_2 = downloadSoundAssets
  if not L0_2 then
    L0_2 = soundManager
    L0_2 = L0_2.createAudioAssets
    L1_2 = g_soundsAssetPath
    L0_2(L1_2)
  end
end

initializeSoundSystem = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = g_usingGestureControls
  if not L0_2 then
    L0_2 = cursor
    L0_2 = L0_2.x
    L0_2 = cursor
    L0_2 = L0_2.y
  end
  L0_2 = deviceModel
  L0_2 = deviceModel
  L0_2 = isPCTouchState
  L0_2 = L0_2()
  L0_2 = L0_2 ~= 0 or L0_2
  return L0_2
end

shouldDrawCursor = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = isInGameMode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = setIsMultitouchMouseWheelSimulationEnabled
    L1_2 = false
    L0_2(L1_2)
    L0_2 = g_usingGestureControls
    if not L0_2 then
      L0_2 = isPCTouchState
      L0_2 = L0_2()
      if not L0_2 then
        goto lbl_31
      end
    end
    L0_2 = g_laserGestureMode
    if L0_2 then
      L0_2 = g_laserGestureMode
      if L0_2 ~= "invisible" then
        L0_2 = _G
        L0_2 = L0_2.res
        L0_2 = L0_2.drawSprite
        L1_2 = "RETICLE_RED"
        L2_2 = laser_cursor
        L2_2 = L2_2.x
        L3_2 = laser_cursor
        L3_2 = L3_2.y
        L0_2(L1_2, L2_2, L3_2)
      end
    end
    goto lbl_80
    ::lbl_31::
    L0_2 = shouldDrawCursor
    if L0_2 then
    end
    L0_2 = setRenderState
    L1_2 = 0
    L2_2 = 0
    L3_2 = 1
    L4_2 = 1
    L5_2 = 0
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = _G
    L0_2 = L0_2.res
    L0_2 = L0_2.drawSprite
    L1_2 = g_currentCursorName
    L2_2 = cursor
    L2_2 = L2_2.x
    L3_2 = cursor
    L3_2 = L3_2.y
    L0_2(L1_2, L2_2, L3_2)
  else
    L0_2 = setIsMultitouchMouseWheelSimulationEnabled
    L1_2 = true
    L0_2(L1_2)
    L0_2 = g_gestureMenuCursorHide
    if not L0_2 then
      L0_2 = deviceModel
      if L0_2 == "metro" then
        L0_2 = isPCTouchState
        L0_2 = L0_2()
        if L0_2 then
          goto lbl_80
        end
      end
      L0_2 = setRenderState
      L1_2 = 0
      L2_2 = 0
      L3_2 = 1
      L4_2 = 1
      L5_2 = 0
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
      L0_2 = _G
      L0_2 = L0_2.res
      L0_2 = L0_2.drawSprite
      L1_2 = g_currentCursorName
      L2_2 = cursor
      L2_2 = L2_2.x
      L3_2 = cursor
      L3_2 = L3_2.y
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  ::lbl_80::
end

drawPCCursor = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = -300
  defaultForce = L0_2
  L0_2 = defaultForce
  boostForce = L0_2
  L0_2 = 10
  collisionParticleForceThreshold = L0_2
  L0_2 = 3
  collisionSoundForceThreshold = L0_2
  L0_2 = 300
  blockDestroyedScoreIncrement = L0_2
  L0_2 = 10000
  birdsLeftScoreIncrement = L0_2
  L0_2 = 150
  hardLimitSimultaneousParticles = L0_2
  L0_2 = 75
  softLimitSimultaneousParticles = L0_2
end

updateValues = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = ui
  L1_2 = L1_2.WarpTransition
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "warpT"
  L1_2 = L1_2(L2_2, L3_2)
  if A0_2 == true and L1_2 ~= nil then
    L1_2.reverseT = true
  end
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_CHANGE_SCENE
  L4_2.id = L5_2
  L4_2.target = L1_2
  L2_2(L3_2, L4_2)
end

startWarpTransition = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = objects
  L0_2 = L0_2.world
  if L0_2 == nil then
    return
  end
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = deadBlocks
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = getJointedObjects
    L7_2 = objects
    L7_2 = L7_2.joints
    L8_2 = L4_2.name
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = getObjectDefinition
      L11_2 = L9_2.name
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.shotData
      if L10_2 ~= nil then
        L10_2 = destroyEmitter
        L11_2 = L9_2
        L10_2(L11_2)
      end
    end
    L5_2 = L4_2.isEmittedParticle
    if L5_2 then
      L5_2 = createDestroyParticles
      L6_2 = getObjectDefinition
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      L7_2 = L4_2
      L8_2 = L3_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = removeUpdateCall
      L6_2 = L4_2.name
      L5_2(L6_2)
      L5_2 = removeObject
      L6_2 = L4_2.name
      L5_2(L6_2)
      L5_2 = deadBlocks
      L5_2[L3_2] = nil
      L5_2 = objects
      L5_2 = L5_2.world
      L5_2[L3_2] = nil
    else
      L5_2 = L4_2.isSword
      if L5_2 then
        L5_2 = removeObject
        L6_2 = L4_2.name
        L5_2(L6_2)
        L5_2 = objects
        L5_2 = L5_2.world
        L5_2[L3_2] = nil
        L5_2 = dummyTable
        L5_2[L3_2] = nil
        L5_2 = deadBlocks
        L5_2[L3_2] = nil
      else
        L5_2 = L4_2.isSensor
        if L5_2 then
          L5_2 = getObjectDefinition
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L6_2 = L5_2.specialty
            if L6_2 == "BOMB" then
              L6_2 = makeExplosion
              L7_2 = deadBlocks
              L7_2 = L7_2[L3_2]
              L8_2 = L5_2
              L6_2(L7_2, L8_2)
            end
          end
          if L5_2 then
            L6_2 = blockTable
            L6_2 = L6_2.materials
            L7_2 = L5_2.material
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.destroyedSound
            if not L6_2 then
              L6_2 = L5_2.destroyedSound
            end
            if L6_2 then
              L7_2 = playAudio
              L8_2 = L6_2
              L7_2(L8_2)
            end
          end
          L6_2 = L4_2.sensorType
          if L6_2 == "gravitation" then
            L6_2 = objects
            L6_2 = L6_2.sensorList
            L6_2 = L6_2.gravitation
            L7_2 = L4_2.name
            L6_2[L7_2] = nil
          end
          L6_2 = removeObject
          L7_2 = L4_2.name
          L6_2(L7_2)
          L6_2 = objects
          L6_2 = L6_2.world
          L6_2[L3_2] = nil
          L6_2 = dummyTable
          L6_2[L3_2] = nil
          L6_2 = deadBlocks
          L6_2[L3_2] = nil
        elseif L4_2 ~= nil then
          L5_2 = L4_2.strength
          if L5_2 ~= nil then
            L5_2 = L4_2.name
            if L5_2 ~= "killingBox" then
              L5_2 = L4_2.strength
              if L5_2 <= 0 then
                L5_2 = L4_2.destroyed
                if L5_2 ~= true then
                  L5_2 = L4_2.onDestroyed
                  if L5_2 ~= nil then
                    L5_2 = L4_2.ignoreOnDestroyed
                    if not L5_2 then
                      L5_2 = fireAction
                      L6_2 = L4_2.onDestroyed
                      L7_2 = {}
                      L7_2.obj = L4_2
                      L8_2 = "onDestroyed"
                      L5_2(L6_2, L7_2, L8_2)
                    end
                  end
                  L5_2 = checkFreezingObjects
                  L6_2 = L3_2
                  L5_2(L6_2)
                  L5_2 = L4_2.ignoreGameplayActions
                  if not L5_2 then
                    L5_2 = getObjectDefinition
                    L6_2 = L3_2
                    L5_2 = L5_2(L6_2)
                    L6_2 = blockDestroyedScoreIncrement
                    L7_2 = blockTable
                    L7_2 = L7_2.blocks
                    L8_2 = L4_2.definition
                    L7_2 = L7_2[L8_2]
                    L7_2 = L7_2.destroyedScoreInc
                    if L7_2 ~= nil then
                      L7_2 = blockTable
                      L7_2 = L7_2.blocks
                      L8_2 = L4_2.definition
                      L7_2 = L7_2[L8_2]
                      L6_2 = L7_2.destroyedScoreInc
                    end
                    L7_2 = blockTable
                    L7_2 = L7_2.blocks
                    L8_2 = L4_2.definition
                    L7_2 = L7_2[L8_2]
                    L7_2 = L7_2.scoreMultiplier
                    if not L7_2 then
                      L7_2 = 1
                    end
                    L6_2 = L6_2 * L7_2
                    L7_2 = L4_2.levelGoal
                    if L7_2 then
                      L7_2 = 0
                      timeWithoutLevelGoals = L7_2
                      L7_2 = L4_2.sensorB
                      if L7_2 ~= nil then
                        L7_2 = removeObject
                        L8_2 = L4_2.sensorB
                        L7_2(L8_2)
                        L7_2 = objects
                        L7_2 = L7_2.world
                        L8_2 = L4_2.sensorB
                        L7_2[L8_2] = nil
                      end
                      L7_2 = L4_2.sensorA
                      if L7_2 ~= nil then
                        L7_2 = removeObject
                        L8_2 = L4_2.sensorA
                        L7_2(L8_2)
                        L7_2 = objects
                        L7_2 = L7_2.world
                        L8_2 = L4_2.sensorA
                        L7_2[L8_2] = nil
                      end
                    end
                    L7_2 = blockTable
                    L7_2 = L7_2.blocks
                    L8_2 = L4_2.definition
                    L7_2 = L7_2[L8_2]
                    L7_2 = L7_2.ignoresScore
                    if not L7_2 then
                      L7_2 = blockTable
                      L7_2 = L7_2.blocks
                      L8_2 = L4_2.definition
                      L7_2 = L7_2[L8_2]
                      L7_2 = L7_2.spriteScore
                      if L7_2 ~= nil then
                        L7_2 = _G
                        L7_2 = L7_2.table
                        L7_2 = L7_2.insert
                        L8_2 = floatingScores
                        L9_2 = {}
                        L10_2 = L4_2.x
                        L9_2.x = L10_2
                        L10_2 = L4_2.y
                        L9_2.y = L10_2
                        L10_2 = blockTable
                        L10_2 = L10_2.blocks
                        L11_2 = L4_2.definition
                        L10_2 = L10_2[L11_2]
                        L10_2 = L10_2.spriteScore
                        L9_2.sprite = L10_2
                        L9_2.score = L6_2
                        L9_2.time = 0
                        L9_2.lifetime = 0.9
                        L9_2.maxScale = 1
                        L9_2.xs = 0
                        L7_2(L8_2, L9_2)
                      elseif 0 < L6_2 then
                        L7_2 = _G
                        L7_2 = L7_2.table
                        L7_2 = L7_2.insert
                        L8_2 = floatingScores
                        L9_2 = {}
                        L10_2 = L4_2.x
                        L9_2.x = L10_2
                        L10_2 = L4_2.y
                        L9_2.y = L10_2
                        L10_2 = ""
                        L11_2 = L6_2
                        L10_2 = L10_2 .. L11_2
                        L9_2.text = L10_2
                        L9_2.score = L6_2
                        L9_2.time = 0
                        L9_2.lifetime = 0.6
                        L10_2 = L6_2 / 3000
                        L10_2 = 0.25 + L10_2
                        L9_2.maxScale = L10_2
                        L9_2.xs = 0
                        L7_2(L8_2, L9_2)
                      end
                      L7_2 = scoreTable
                      L7_2 = L7_2.blocks
                      L8_2 = scoreTable
                      L8_2 = L8_2.blocks
                      L8_2 = L8_2.score
                      L8_2 = L8_2 + L6_2
                      L7_2.score = L8_2
                      L7_2 = addScoreToBird
                      L8_2 = L6_2
                      L7_2(L8_2)
                    end
                    L7_2 = getLevelMetadata
                    L8_2 = levelName
                    L7_2 = L7_2(L8_2)
                    L7_2 = L7_2.objectsDestroyableByTap
                    if not L7_2 then
                      L7_2 = L4_2.material
                      if L7_2 == "wood" then
                        L7_2 = SettingsWrapper
                        L8_2 = L7_2
                        L7_2 = L7_2.destroyedBlock
                        L9_2 = "wood"
                        L7_2(L8_2, L9_2)
                      else
                        L7_2 = L4_2.material
                        if L7_2 == "stone" then
                          L7_2 = SettingsWrapper
                          L8_2 = L7_2
                          L7_2 = L7_2.destroyedBlock
                          L9_2 = "stone"
                          L7_2(L8_2, L9_2)
                        else
                          L7_2 = L4_2.material
                          if L7_2 == "glass" then
                            L7_2 = SettingsWrapper
                            L8_2 = L7_2
                            L7_2 = L7_2.destroyedBlock
                            L9_2 = "glass"
                            L7_2(L8_2, L9_2)
                          else
                            L7_2 = L4_2.material
                            if L7_2 ~= "bubble" then
                              L7_2 = L4_2.material
                              if L7_2 ~= "bossBubble" then
                                goto lbl_309
                              end
                            end
                            L7_2 = SettingsWrapper
                            L8_2 = L7_2
                            L7_2 = L7_2.destroyedBlock
                            L9_2 = "bubble"
                            L7_2(L8_2, L9_2)
                            goto lbl_357
                            ::lbl_309::
                            L7_2 = L4_2.levelGoal
                            if L7_2 then
                              L7_2 = SettingsWrapper
                              L8_2 = L7_2
                              L7_2 = L7_2.destroyedBlock
                              L9_2 = "levelGoal"
                              L7_2(L8_2, L9_2)
                              L7_2 = isStormTrooper
                              L8_2 = L4_2.definition
                              L7_2 = L7_2(L8_2)
                              if L7_2 then
                                L7_2 = SettingsWrapper
                                L8_2 = L7_2
                                L7_2 = L7_2.destroyedBlock
                                L9_2 = "stormTrooper"
                                L7_2(L8_2, L9_2)
                                L7_2 = SettingsWrapper
                                L8_2 = L7_2
                                L7_2 = L7_2.getDestroyedBlocks
                                L9_2 = "stormTrooper"
                                L7_2 = L7_2(L8_2, L9_2)
                                L8_2 = getAchievementLimit
                                L9_2 = "Simple Pigs and Nonsense"
                                L8_2 = L8_2(L9_2)
                                if L7_2 > L8_2 then
                                  L7_2 = registerAchievement
                                  L8_2 = "Simple Pigs and Nonsense"
                                  L7_2(L8_2)
                                end
                              end
                            else
                              L7_2 = L4_2.material
                              if L7_2 == "popcorn_seed" then
                                L7_2 = SettingsWrapper
                                L8_2 = L7_2
                                L7_2 = L7_2.destroyedBlock
                                L9_2 = "popcorn_seed"
                                L7_2(L8_2, L9_2)
                                L7_2 = SettingsWrapper
                                L8_2 = L7_2
                                L7_2 = L7_2.getDestroyedBlocks
                                L9_2 = "popcorn_seed"
                                L7_2 = L7_2(L8_2, L9_2)
                                L8_2 = getAchievementLimit
                                L9_2 = "Popcorn Popper"
                                L8_2 = L8_2(L9_2)
                                if L7_2 > L8_2 then
                                  L7_2 = registerAchievement
                                  L8_2 = "Popcorn Popper"
                                  L7_2(L8_2)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    ::lbl_357::
                    L7_2 = createDestroyParticles
                    L8_2 = L5_2
                    L9_2 = L4_2
                    L10_2 = L3_2
                    L7_2(L8_2, L9_2, L10_2)
                    if L5_2 then
                      L7_2 = L5_2.specialty
                      if L7_2 == "BOMB" then
                        L7_2 = nil
                        L8_2 = blockTable
                        L8_2 = L8_2.materials
                        L9_2 = L5_2.material
                        L8_2 = L8_2[L9_2]
                        L8_2 = L8_2.destroyedSound
                        L7_2 = L8_2 or L7_2
                        if not L8_2 then
                          L7_2 = L5_2.destroyedSound
                        end
                        L8_2 = objects
                        L8_2 = L8_2.worldGravity
                        if not L8_2 then
                          L8_2 = L5_2.destroyedSoundZeroGravity
                          L7_2 = L8_2 or L7_2
                          if not L8_2 then
                            L8_2 = blockTable
                            L8_2 = L8_2.materials
                            L9_2 = L5_2.material
                            L8_2 = L8_2[L9_2]
                            L8_2 = L8_2.destroyedSoundZeroGravity
                            L7_2 = L8_2 or L7_2
                            if not L8_2 then
                            end
                          end
                        end
                        if not L7_2 then
                          L7_2 = "tnt_explodes"
                        end
                        L8_2 = makeExplosion
                        L9_2 = deadBlocks
                        L9_2 = L9_2[L3_2]
                        L10_2 = L5_2
                        L11_2 = L7_2
                        L8_2(L9_2, L10_2, L11_2)
                      end
                    end
                    if L5_2 then
                      L7_2 = L5_2.destroyedSound
                      if not L7_2 then
                        L7_2 = blockTable
                        L7_2 = L7_2.materials
                        L8_2 = L4_2.material
                        L7_2 = L7_2[L8_2]
                        L7_2 = L7_2.destroyedSound
                      end
                      if L7_2 ~= nil then
                        L8_2 = res
                        L8_2 = L8_2.playAudio
                        L9_2 = L7_2
                        L8_2(L9_2)
                      else
                        L8_2 = blockTable
                        L8_2 = L8_2.materials
                        L9_2 = L4_2.material
                        L8_2 = L8_2[L9_2]
                        L7_2 = L8_2.specialDestroyedSound
                        if L7_2 ~= nil then
                          L8_2 = res
                          L8_2 = L8_2.playAudio
                          L9_2 = L7_2
                          L8_2(L9_2)
                        end
                      end
                      L8_2 = L4_2.currentState
                      if L8_2 == "frozenState" then
                        L8_2 = L5_2.frozenKilledSound
                        if L8_2 ~= nil then
                          L8_2 = res
                          L8_2 = L8_2.playAudio
                          L9_2 = L5_2.frozenKilledSound
                          L8_2(L9_2)
                        end
                      end
                    end
                    if L5_2 then
                      L7_2 = L5_2.ignoreLevelFailTimerOnDestroyed
                      if not L7_2 then
                        L7_2 = 6
                        g_scoreAddedTime = L7_2
                      end
                    end
                  else
                    L5_2 = L4_2.controllable
                    if L5_2 == true then
                      L5_2 = removeBird
                      L6_2 = L4_2
                      L5_2(L6_2)
                    end
                  end
                  L5_2 = L4_2.levelGoal
                  if L5_2 == true then
                    L5_2 = levelGoals
                    L5_2[L3_2] = nil
                  end
                  L5_2 = removeObject
                  L6_2 = L3_2
                  L5_2(L6_2)
                  L5_2 = objects
                  L5_2 = L5_2.world
                  L5_2 = L5_2[L3_2]
                  L6_2 = flyingBird
                  if L5_2 == L6_2 then
                    L5_2 = nil
                    flyingBird = L5_2
                  end
                  L5_2 = animatedObjects
                  L5_2[L3_2] = nil
                  L5_2 = objects
                  L5_2 = L5_2.world
                  L5_2[L3_2] = nil
                  L5_2 = deadBlocks
                  L5_2[L3_2] = nil
                end
              end
            end
          end
        end
      end
    end
  end
end

removeBlocks = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A0_2 then
    return
  end
  L3_2 = A0_2.particlesDestroyed
  if L3_2 == "" then
    return
  end
  L4_2 = A0_2.particleAmount
  L5_2 = false
  if L4_2 ~= nil then
    L5_2 = true
  end
  L6_2 = objects
  L6_2 = L6_2.worldGravity
  if L6_2 == nil then
    L6_2 = A0_2.particlesDestroyedZeroGravity
    if L6_2 then
      L3_2 = A0_2.particlesDestroyedZeroGravity
    else
      L6_2 = blockTable
      L6_2 = L6_2.materials
      L7_2 = A1_2.material
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.particlesDestroyedZeroGravity
      if L6_2 ~= nil then
        L6_2 = blockTable
        L6_2 = L6_2.materials
        L7_2 = A1_2.material
        L6_2 = L6_2[L7_2]
        L3_2 = L6_2.particlesDestroyedZeroGravity
      end
    end
  end
  if L3_2 == nil then
    L6_2 = blockTable
    L6_2 = L6_2.materials
    L7_2 = A1_2.material
    L6_2 = L6_2[L7_2]
    L3_2 = L6_2.particlesDestroyed
  end
  if L3_2 ~= nil then
    L6_2 = L3_2[1]
    if L6_2 == nil then
      L6_2 = {}
      L7_2 = L3_2
      L6_2[1] = L7_2
      L3_2 = L6_2
    end
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L3_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      if L5_2 ~= true then
        L11_2 = particleTable
        L11_2 = L11_2.particles
        L11_2 = L11_2[L10_2]
        L4_2 = L11_2.amount
      end
      if not L4_2 then
        L4_2 = 12
      end
      L11_2 = putParticles
      L12_2 = {}
      L12_2.objectName = A2_2
      L12_2.particles = L10_2
      L12_2.amount = L4_2
      L11_2(L12_2)
    end
  end
end

createDestroyParticles = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/Shop.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopCarousel.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.ShopFrame
  L1_2 = {}
  L0_2.packageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopData.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L2_2 = L2_2.ShopFrame
  L2_2 = L2_2.packageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.ShopFrame
  L1_2 = loadCloudAssetFile
  L2_2 = Assets
  L2_2 = L2_2.getAssetName
  L3_2 = "shop"
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.cachedData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ClaimRewardButton.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/ConfirmPrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/ForceUpdatePrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/CoinsPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/QuestPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/PurchaseConfirmationDialog.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/PurchaseRedirectDialog.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopPromoPrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShopTutorial.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/shop/ShoppingUIFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/TelepodPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/TelepodPrompt.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/HintPopup.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/menus/level_end.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/MainMenuCar.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CarboniteMeltAnimation.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CarboniteAvailableAnimation.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.CarboniteAvailableAnimation
  L1_2 = {}
  L0_2.packageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/RewardData.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L2_2 = L2_2.CarboniteAvailableAnimation
  L2_2 = L2_2.packageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L0_2 = L0_2.ui
  L0_2 = L0_2.CarboniteAvailableAnimation
  L1_2 = loadCloudAssetFile
  L2_2 = Assets
  L2_2 = L2_2.getAssetName
  L3_2 = "reward"
  L2_2 = L2_2(L3_2)
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.cachedData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/PowerUpMachineFrame.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end

reloadLua = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/AnimatedTutorial.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/CameraPointer.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/menus/TelepodPage.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.ui
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
end

reloadTelepodLua = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2
  L3_2 = A0_2.explosionForce
  if not L3_2 then
    L3_2 = A1_2.explosionForce
  end
  L4_2 = A0_2.explosionMinForce
  if not L4_2 then
    L4_2 = A1_2.explosionMinForce
    if not L4_2 then
      L4_2 = 1.0E-4
    end
  end
  L5_2 = A0_2.explosionRadius
  if not L5_2 then
    L5_2 = A1_2.explosionRadius
  end
  L6_2 = A0_2.smallExplosionForce
  if not L6_2 then
    L6_2 = A1_2.smallExplosionForce
  end
  L7_2 = A0_2.smallExplosionMinForce
  if not L7_2 then
    L7_2 = A1_2.smallExplosionMinForce
    if not L7_2 then
      L7_2 = 1.0E-4
    end
  end
  L8_2 = A0_2.smallExplosionRadius
  if not L8_2 then
    L8_2 = A1_2.smallExplosionRadius
    if not L8_2 then
      L8_2 = 1.0E-4
    end
  end
  L9_2 = A0_2.explosionDamageRadius
  if not L9_2 then
    L9_2 = A1_2.explosionDamageRadius
  end
  L10_2 = A0_2.explosionDamage
  if not L10_2 then
    L10_2 = A1_2.explosionDamage
  end
  if L7_2 == 0 then
    L7_2 = 1.0E-4
  end
  L11_2 = showEditor
  if L11_2 then
    L11_2 = {}
    L12_2 = A0_2.x
    L11_2.x = L12_2
    L12_2 = A0_2.y
    L11_2.y = L12_2
    L12_2 = {}
    L12_2.explosion = L5_2
    L12_2.small = L8_2
    L12_2.damage = L9_2
    L11_2.radius = L12_2
    g_explodingBomb = L11_2
  end
  L11_2 = blockTable
  L11_2 = L11_2.blocks
  L12_2 = A0_2.definition
  L11_2 = L11_2[L12_2]
  L11_2 = L11_2.spawningBomb
  if L11_2 then
    L11_2 = A0_2.angle
    L12_2 = blockTable
    L12_2 = L12_2.blocks
    L13_2 = A0_2.definition
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.angleOffset
    if not L12_2 then
      L12_2 = 0
    end
    L11_2 = L11_2 + L12_2
    L12_2 = {}
    L13_2 = blockTable
    L13_2 = L13_2.blocks
    L14_2 = A0_2.definition
    L13_2 = L13_2[L14_2]
    L12_2.definition = L13_2
    L13_2 = A0_2.x
    L12_2.x = L13_2
    L13_2 = A0_2.y
    L12_2.y = L13_2
    L12_2.angle = L11_2
    L13_2 = A0_2.startingXVel
    L12_2.xVel = L13_2
    L13_2 = A0_2.startingYVel
    L12_2.yVel = L13_2
    L13_2 = blockTable
    L13_2 = L13_2.blocks
    L14_2 = A0_2.definition
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.keepOriginalVelocity
    L12_2.keepOriginalVelocity = L13_2
    L13_2 = getAngularVelocity
    L14_2 = A0_2.name
    L13_2 = L13_2(L14_2)
    L12_2.angularVelocity = L13_2
    L13_2 = getLinearVelocity
    L14_2 = A0_2.name
    L13_2, L14_2 = L13_2(L14_2)
    L15_2 = L12_2.xVel
    if L15_2 == nil then
      L12_2.xVel = L13_2
    end
    L15_2 = L12_2.yVel
    if L15_2 == nil then
      L12_2.yVel = L14_2
    end
    L15_2 = spawnObjects
    L16_2 = blockTable
    L16_2 = L16_2.blocks
    L17_2 = A0_2.definition
    L16_2 = L16_2[L17_2]
    L16_2 = L16_2.spawnedObjects
    L17_2 = L12_2
    L15_2(L16_2, L17_2)
    return
  end
  if L3_2 ~= nil then
    if not A2_2 then
      L11_2 = blockTable
      L11_2 = L11_2.blocks
      L12_2 = A0_2.definition
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.explosionSound
      if not L11_2 then
        goto lbl_142
      end
    end
    L11_2 = res
    L11_2 = L11_2.playAudio
    L12_2 = A2_2 or L12_2
    if not A2_2 then
      L12_2 = blockTable
      L12_2 = L12_2.blocks
      L13_2 = A0_2.definition
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.explosionSound
    end
    L11_2(L12_2)
    ::lbl_142::
    L11_2 = 18000
    L12_2 = blockTable
    L12_2 = L12_2.blocks
    L13_2 = A0_2.definition
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.explosionIgnoreShake
    if not L12_2 then
      L12_2 = addCameraShake
      L13_2 = cameraShakeModeSine
      L14_2 = 150
      L15_2 = L3_2 / L11_2
      L15_2 = L15_2 * 4
      L16_2 = L3_2 / L11_2
      L16_2 = L16_2 * 0.4
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
    L12_2 = blockTable
    L12_2 = L12_2.blocks
    L13_2 = A0_2.definition
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.forceBomb
    if L12_2 then
      L12_2 = blockTable
      L12_2 = L12_2.blocks
      L13_2 = A0_2.definition
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.ignoreParticles
      if not L12_2 then
        L12_2 = blockTable
        L12_2 = L12_2.blocks
        L13_2 = A0_2.definition
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.explosionParticles
        if L12_2 then
          L12_2 = putParticles
          L13_2 = {}
          L14_2 = A0_2.x
          L13_2.x = L14_2
          L14_2 = A0_2.y
          L13_2.y = L14_2
          L14_2 = blockTable
          L14_2 = L14_2.blocks
          L15_2 = A0_2.definition
          L14_2 = L14_2[L15_2]
          L14_2 = L14_2.explosionParticles
          L13_2.particles = L14_2
          L13_2.useAmountInDefinition = true
          L12_2(L13_2)
        end
      end
      L12_2 = blockTable
      L12_2 = L12_2.blocks
      L13_2 = A0_2.definition
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.forceEffectDuration
      A0_2.isAffectedByForceTimer = L12_2
      L12_2 = blockTable
      L12_2 = L12_2.blocks
      L13_2 = A0_2.definition
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.forceEffectColor
      A0_2.forceEffectColor = L12_2
    else
      L12_2 = blockTable
      L12_2 = L12_2.blocks
      L13_2 = A0_2.definition
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.ignoreParticles
      if not L12_2 then
        L12_2 = blockTable
        L12_2 = L12_2.blocks
        L13_2 = A0_2.definition
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.explosionParticles
        if L12_2 then
          L12_2 = blockTable
          L12_2 = L12_2.blocks
          L13_2 = A0_2.definition
          L12_2 = L12_2[L13_2]
          L12_2 = L12_2.explosionParticles
          if L12_2 ~= "" then
            L12_2 = putParticles
            L13_2 = {}
            L14_2 = A0_2.x
            L13_2.x = L14_2
            L14_2 = A0_2.y
            L13_2.y = L14_2
            L14_2 = blockTable
            L14_2 = L14_2.blocks
            L15_2 = A0_2.definition
            L14_2 = L14_2[L15_2]
            L14_2 = L14_2.explosionParticles
            L13_2.particles = L14_2
            L13_2.useAmountInDefinition = true
            L12_2(L13_2)
          end
        else
          L12_2 = putParticles
          L13_2 = {}
          L14_2 = A0_2.name
          L13_2.objectName = L14_2
          L13_2.particles = "explosionBuff"
          L14_2 = 1
          L13_2[1] = L14_2
          L12_2(L13_2)
          L12_2 = putParticles
          L13_2 = {}
          L14_2 = A0_2.name
          L13_2.objectName = L14_2
          L13_2.particles = "explosion"
          L14_2 = 1
          L13_2[1] = L14_2
          L12_2(L13_2)
        end
      end
    end
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.max
    L13_2 = L5_2
    L14_2 = L9_2
    L15_2 = L8_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = getIntersectingObjects
    L14_2 = {}
    L15_2 = A0_2.x
    L14_2.x = L15_2
    L15_2 = A0_2.y
    L14_2.y = L15_2
    L15_2 = -L12_2
    L14_2.left = L15_2
    L14_2.right = L12_2
    L15_2 = -L12_2
    L14_2.down = L15_2
    L14_2.up = L12_2
    L13_2 = L13_2(L14_2)
    if L5_2 == 0 then
      L5_2 = 1.0E-4
    end
    if L8_2 == 0 then
      L8_2 = 1.0E-4
    end
    L14_2 = 0
    L15_2 = _G
    L15_2 = L15_2.pairs
    L16_2 = L13_2
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    for L18_2, L19_2 in L15_2, L16_2, L17_2 do
      L20_2 = objects
      L20_2 = L20_2.world
      L20_2 = L20_2[L19_2]
      if L20_2 ~= nil then
        L21_2 = L20_2.definition
        if L21_2 then
          L21_2 = blockTable
          L21_2 = L21_2.blocks
          L22_2 = L20_2.definition
          L21_2 = L21_2[L22_2]
          L21_2 = L21_2.resistsExplosion
          if L21_2 then
            goto lbl_1181
          end
        end
        L21_2 = L20_2.controllable
        if L21_2 then
          L21_2 = blockTable
          L21_2 = L21_2.blocks
          L22_2 = L20_2.definition
          L21_2 = L21_2[L22_2]
          L21_2 = L21_2.affectedByExplosions
        end
        if L21_2 and A0_2 ~= L20_2 then
          L21_2 = L20_2.name
          if L21_2 ~= "killingBox" then
            L21_2 = L20_2.isProjectile
            if L21_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = A0_2.definition
              L21_2 = L21_2[L22_2]
              L21_2 = L21_2.forceBomb
              if not L21_2 then
            end
            else
              L21_2 = 0
              L22_2 = 0
              L23_2 = L20_2.width
              if L23_2 ~= nil then
                L23_2 = L20_2.height
                if L23_2 ~= nil then
                  L23_2 = L20_2.width
                  L22_2 = L20_2.height
                  L21_2 = L23_2
              end
              else
                L23_2 = L20_2.radius
                if L23_2 ~= nil then
                  L23_2 = L20_2.radius
                  L22_2 = L20_2.radius
                  L21_2 = L23_2
                else
                  L23_2 = res
                  L23_2 = L23_2.getSpriteBounds
                  L24_2 = blockTable
                  L24_2 = L24_2.blocks
                  L25_2 = L20_2.definition
                  L24_2 = L24_2[L25_2]
                  L24_2 = L24_2.sprite
                  L23_2, L24_2 = L23_2(L24_2)
                  L22_2 = L24_2
                  L21_2 = L23_2
                  L23_2 = worldToPhysicsTransform
                  L24_2 = L21_2
                  L25_2 = L22_2
                  L23_2, L24_2 = L23_2(L24_2, L25_2)
                  L22_2 = L24_2
                  L21_2 = L23_2
                end
              end
              L23_2 = getSquaredDistanceFromOBBToPoint
              L24_2 = L20_2.x
              L25_2 = L20_2.y
              L26_2 = L21_2
              L27_2 = L22_2
              L28_2 = L20_2.angle
              L29_2 = A0_2.x
              L30_2 = A0_2.y
              L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
              L24_2 = _G
              L24_2 = L24_2.math
              L24_2 = L24_2.sqrt
              L25_2 = L23_2.distance
              L24_2 = L24_2(L25_2)
              L25_2 = 0
              L26_2 = 0
              if L24_2 == 0 then
                L25_2 = 0
                L26_2 = -1
              else
                L27_2 = vNormalize
                L28_2 = L23_2.pointX
                L29_2 = A0_2.x
                L28_2 = L28_2 - L29_2
                L29_2 = L23_2.pointY
                L30_2 = A0_2.y
                L29_2 = L29_2 - L30_2
                L27_2, L28_2 = L27_2(L28_2, L29_2)
                L26_2 = L28_2
                L25_2 = L27_2
              end
              if L5_2 == 0 then
                L5_2 = 1.0E-4
              end
              L27_2 = blockTable
              L27_2 = L27_2.blocks
              L28_2 = A0_2.definition
              L27_2 = L27_2[L28_2]
              L27_2 = L27_2.explosionResetsVelocity
              if L27_2 then
                L27_2 = setVelocity
                L28_2 = L20_2.name
                L29_2 = 0
                L30_2 = 0
                L27_2(L28_2, L29_2, L30_2)
              end
              L27_2 = L24_2 / L5_2
              L27_2 = 1 - L27_2
              L28_2 = false
              L29_2 = A1_2.forceBomb
              if L29_2 then
                L29_2 = blockTable
                L29_2 = L29_2.blocks
                L30_2 = A0_2.definition
                L29_2 = L29_2[L30_2]
                L29_2 = L29_2.forceArcWidth
                if L29_2 then
                  L29_2 = _G
                  L29_2 = L29_2.math
                  L29_2 = L29_2.atan2
                  L30_2 = L26_2
                  L31_2 = L25_2
                  L29_2 = L29_2(L30_2, L31_2)
                  L30_2 = A0_2.angle
                  L31_2 = blockTable
                  L31_2 = L31_2.blocks
                  L32_2 = A0_2.definition
                  L31_2 = L31_2[L32_2]
                  L31_2 = L31_2.forceArcWidth
                  L31_2 = L31_2 / 2
                  L32_2 = L30_2 - L29_2
                  L33_2 = _G
                  L33_2 = L33_2.math
                  L33_2 = L33_2.pi
                  L33_2 = -L33_2
                  if L32_2 < L33_2 then
                    L33_2 = _G
                    L33_2 = L33_2.math
                    L33_2 = L33_2.abs
                    L34_2 = L30_2 - L29_2
                    L35_2 = _G
                    L35_2 = L35_2.math
                    L35_2 = L35_2.pi
                    L35_2 = L35_2 * 2
                    L34_2 = L34_2 + L35_2
                    L33_2 = L33_2(L34_2)
                    L32_2 = L33_2
                  else
                    L33_2 = _G
                    L33_2 = L33_2.math
                    L33_2 = L33_2.pi
                    if L32_2 > L33_2 then
                      L33_2 = _G
                      L33_2 = L33_2.math
                      L33_2 = L33_2.abs
                      L34_2 = L30_2 - L29_2
                      L35_2 = _G
                      L35_2 = L35_2.math
                      L35_2 = L35_2.pi
                      L35_2 = L35_2 * 2
                      L34_2 = L34_2 - L35_2
                      L33_2 = L33_2(L34_2)
                      L32_2 = L33_2
                    end
                  end
                  L33_2 = _G
                  L33_2 = L33_2.math
                  L33_2 = L33_2.abs
                  L34_2 = L32_2
                  L33_2 = L33_2(L34_2)
                  L32_2 = L33_2
                  if L31_2 >= L32_2 then
                    L28_2 = true
                  end
                  L33_2 = L20_2.onReceivedExplosionForce
                  if L33_2 ~= nil and L28_2 then
                    L33_2 = _G
                    L33_2 = L33_2.type
                    L34_2 = L20_2.onReceivedExplosionForce
                    L33_2 = L33_2(L34_2)
                    if L33_2 == "table" then
                      L33_2 = _G
                      L33_2 = L33_2.ipairs
                      L34_2 = L20_2.onReceivedExplosionForce
                      L33_2, L34_2, L35_2 = L33_2(L34_2)
                      for L36_2, L37_2 in L33_2, L34_2, L35_2 do
                        L38_2 = fireAction
                        L39_2 = L37_2
                        L40_2 = {}
                        L41_2 = L20_2.name
                        L40_2.name = L41_2
                        L41_2 = force
                        L40_2.force = L41_2
                        L40_2.angle = L30_2
                        L41_2 = blockTable
                        L41_2 = L41_2.blocks
                        L42_2 = A0_2.definition
                        L41_2 = L41_2[L42_2]
                        L41_2 = L41_2.explosionNoDamageOnBosses
                        L40_2.noDamageOnBosses = L41_2
                        L38_2(L39_2, L40_2)
                      end
                    else
                      L33_2 = fireAction
                      L34_2 = L20_2.onReceivedExplosionForce
                      L35_2 = {}
                      L36_2 = L20_2.name
                      L35_2.name = L36_2
                      L36_2 = force
                      L35_2.force = L36_2
                      L35_2.angle = L30_2
                      L36_2 = blockTable
                      L36_2 = L36_2.blocks
                      L37_2 = A0_2.definition
                      L36_2 = L36_2[L37_2]
                      L36_2 = L36_2.explosionNoDamageOnBosses
                      L35_2.noDamageOnBosses = L36_2
                      L33_2(L34_2, L35_2)
                    end
                  end
                else
                  L28_2 = true
                end
              end
              L29_2 = A1_2.forceBomb
              if L29_2 and L8_2 > L24_2 then
                L29_2 = L20_2.definition
                if L29_2 then
                  L29_2 = L20_2.isProjectile
                  if not L29_2 then
                    L29_2 = physicsScale
                    L30_2 = L6_2 - L7_2
                    L31_2 = L24_2 / L8_2
                    L31_2 = 1 - L31_2
                    L30_2 = L30_2 * L31_2
                    L30_2 = L7_2 + L30_2
                    L29_2 = L29_2 * L30_2
                    L30_2 = applyImpulse
                    L31_2 = L19_2
                    L32_2 = L25_2 * L29_2
                    L33_2 = L26_2 * L29_2
                    L34_2 = L23_2.pointX
                    L35_2 = L23_2.pointY
                    L30_2(L31_2, L32_2, L33_2, L34_2, L35_2)
                    L30_2 = blockTable
                    L30_2 = L30_2.blocks
                    L31_2 = L20_2.definition
                    L30_2 = L30_2[L31_2]
                    L30_2 = L30_2.material
                    if L30_2 ~= "sensor" then
                      L30_2 = isObjectAffectedByForce
                      L31_2 = L20_2
                      L32_2 = blockTable
                      L32_2 = L32_2.materials
                      L33_2 = blockTable
                      L33_2 = L33_2.blocks
                      L34_2 = L20_2.definition
                      L33_2 = L33_2[L34_2]
                      L33_2 = L33_2.material
                      L32_2 = L32_2[L33_2]
                      L30_2 = L30_2(L31_2, L32_2)
                      if L30_2 then
                        L31_2 = blockTable
                        L31_2 = L31_2.blocks
                        L32_2 = A0_2.definition
                        L31_2 = L31_2[L32_2]
                        L31_2 = L31_2.forceEffectDuration
                        L20_2.isAffectedByForceTimer = L31_2
                        L31_2 = blockTable
                        L31_2 = L31_2.blocks
                        L32_2 = A0_2.definition
                        L31_2 = L31_2[L32_2]
                        L31_2 = L31_2.forceEffectColor
                        L20_2.forceEffectColor = L31_2
                      end
                    end
                  end
                end
              end
              L29_2 = A1_2.forceSpreadMultiplier
              if L29_2 then
                L29_2 = assert
                L30_2 = A1_2.forceSpreadMultiplier
                L30_2 = 0 <= L30_2
                L29_2(L30_2)
                L29_2 = _G
                L29_2 = L29_2.math
                L29_2 = L29_2.cos
                L30_2 = A0_2.angle
                L29_2 = L29_2(L30_2)
                L30_2 = _G
                L30_2 = L30_2.math
                L30_2 = L30_2.sin
                L31_2 = A0_2.angle
                L30_2 = L30_2(L31_2)
                L26_2 = L30_2
                L25_2 = L29_2
                L29_2 = L20_2.x
                L30_2 = L23_2.pointX
                L31_2 = L20_2.x
                L30_2 = L30_2 - L31_2
                L31_2 = A1_2.forceSpreadMultiplier
                L30_2 = L30_2 * L31_2
                L29_2 = L29_2 + L30_2
                L23_2.pointX = L29_2
                L29_2 = L20_2.y
                L30_2 = L23_2.pointY
                L31_2 = L20_2.y
                L30_2 = L30_2 - L31_2
                L31_2 = A1_2.forceSpreadMultiplier
                L30_2 = L30_2 * L31_2
                L29_2 = L29_2 + L30_2
                L23_2.pointY = L29_2
              end
              L29_2 = _G
              L29_2 = L29_2.math
              L29_2 = L29_2.atan2
              L30_2 = L20_2.y
              L31_2 = A0_2.y
              L30_2 = L30_2 - L31_2
              L31_2 = L20_2.x
              L32_2 = A0_2.x
              L31_2 = L31_2 - L32_2
              L29_2 = L29_2(L30_2, L31_2)
              if L24_2 < L5_2 then
                L30_2 = A1_2.forceBomb
                if L30_2 then
                  L30_2 = L20_2.definition
                  if L30_2 and L28_2 then
                    L30_2 = physicsScale
                    L31_2 = L3_2 - L4_2
                    L31_2 = L31_2 * L27_2
                    L31_2 = L4_2 + L31_2
                    L30_2 = L30_2 * L31_2
                    L31_2 = blockTable
                    L31_2 = L31_2.blocks
                    L32_2 = L20_2.definition
                    L31_2 = L31_2[L32_2]
                    L31_2 = L31_2.forceExplosionMultiplier
                    if L31_2 then
                      L31_2 = blockTable
                      L31_2 = L31_2.blocks
                      L32_2 = L20_2.definition
                      L31_2 = L31_2[L32_2]
                      L31_2 = L31_2.forceExplosionMultiplier
                      L30_2 = L30_2 * L31_2
                    end
                    L31_2 = blockTable
                    L31_2 = L31_2.blocks
                    L32_2 = L20_2.definition
                    L31_2 = L31_2[L32_2]
                    L31_2 = L31_2.material
                    if L31_2 ~= "lazerProjectile" then
                      L31_2 = applyImpulse
                      L32_2 = L19_2
                      L33_2 = L25_2 * L30_2
                      L34_2 = L26_2 * L30_2
                      L35_2 = L23_2.pointX
                      L36_2 = L23_2.pointY
                      L31_2(L32_2, L33_2, L34_2, L35_2, L36_2)
                    end
                    L31_2 = blockTable
                    L31_2 = L31_2.blocks
                    L32_2 = L20_2.definition
                    L31_2 = L31_2[L32_2]
                    L31_2 = L31_2.material
                    if L31_2 == "lazerProjectile" then
                      L31_2 = _G
                      L31_2 = L31_2.math
                      L31_2 = L31_2.atan2
                      L32_2 = L20_2.y
                      L33_2 = A0_2.y
                      L32_2 = L32_2 - L33_2
                      L33_2 = L20_2.x
                      L34_2 = A0_2.x
                      L33_2 = L33_2 - L34_2
                      L31_2 = L31_2(L32_2, L33_2)
                      L20_2.bounceAngle = L31_2
                      L32_2 = _G
                      L32_2 = L32_2.math
                      L32_2 = L32_2.cos
                      L33_2 = L31_2
                      L32_2 = L32_2(L33_2)
                      L20_2.movementAngleX = L32_2
                      L32_2 = _G
                      L32_2 = L32_2.math
                      L32_2 = L32_2.sin
                      L33_2 = L31_2
                      L32_2 = L32_2(L33_2)
                      L20_2.movementAngleY = L32_2
                      L32_2 = blockTable
                      L32_2 = L32_2.blocks
                      L33_2 = L20_2.definition
                      L32_2 = L32_2[L33_2]
                      L32_2 = L32_2.particlesCollision
                      if L32_2 then
                        L33_2 = putParticles
                        L34_2 = {}
                        L35_2 = L20_2.x
                        L34_2.x = L35_2
                        L35_2 = L20_2.y
                        L34_2.y = L35_2
                        L34_2.particles = L32_2
                        L33_2(L34_2)
                      end
                    else
                      L31_2 = blockTable
                      L31_2 = L31_2.blocks
                      L32_2 = L20_2.definition
                      L31_2 = L31_2[L32_2]
                      L31_2 = L31_2.material
                      if L31_2 ~= "sensor" then
                        L31_2 = isObjectAffectedByForce
                        L32_2 = L20_2
                        L33_2 = blockTable
                        L33_2 = L33_2.materials
                        L34_2 = blockTable
                        L34_2 = L34_2.blocks
                        L35_2 = L20_2.definition
                        L34_2 = L34_2[L35_2]
                        L34_2 = L34_2.material
                        L33_2 = L33_2[L34_2]
                        L31_2 = L31_2(L32_2, L33_2)
                        if L31_2 then
                          L32_2 = blockTable
                          L32_2 = L32_2.blocks
                          L33_2 = A0_2.definition
                          L32_2 = L32_2[L33_2]
                          L32_2 = L32_2.forceEffectDuration
                          L20_2.isAffectedByForceTimer = L32_2
                          L32_2 = blockTable
                          L32_2 = L32_2.blocks
                          L33_2 = A0_2.definition
                          L32_2 = L32_2[L33_2]
                          L32_2 = L32_2.forceEffectColor
                          L20_2.forceEffectColor = L32_2
                          L32_2 = L20_2.material
                          L33_2 = pig
                          if L32_2 ~= L33_2 then
                            L32_2 = SettingsWrapper
                            L33_2 = L32_2
                            L32_2 = L32_2.blockThrownByForce
                            L32_2(L33_2)
                          end
                        end
                      end
                    end
                    L31_2 = L20_2.onReceivedExplosionForce
                    if L31_2 ~= nil then
                      L31_2 = _G
                      L31_2 = L31_2.type
                      L32_2 = L20_2.onReceivedExplosionForce
                      L31_2 = L31_2(L32_2)
                      if L31_2 == "table" then
                        L31_2 = _G
                        L31_2 = L31_2.ipairs
                        L32_2 = L20_2.onReceivedExplosionForce
                        L31_2, L32_2, L33_2 = L31_2(L32_2)
                        for L34_2, L35_2 in L31_2, L32_2, L33_2 do
                          L36_2 = fireAction
                          L37_2 = L35_2
                          L38_2 = {}
                          L39_2 = L20_2.name
                          L38_2.name = L39_2
                          L38_2.force = L30_2
                          L38_2.angle = L29_2
                          L39_2 = blockTable
                          L39_2 = L39_2.blocks
                          L40_2 = A0_2.definition
                          L39_2 = L39_2[L40_2]
                          L39_2 = L39_2.explosionNoDamageOnBosses
                          L38_2.noDamageOnBosses = L39_2
                          L36_2(L37_2, L38_2)
                        end
                      else
                        L31_2 = fireAction
                        L32_2 = L20_2.onReceivedExplosionForce
                        L33_2 = {}
                        L34_2 = L20_2.name
                        L33_2.name = L34_2
                        L33_2.force = L30_2
                        L33_2.angle = L29_2
                        L34_2 = blockTable
                        L34_2 = L34_2.blocks
                        L35_2 = A0_2.definition
                        L34_2 = L34_2[L35_2]
                        L34_2 = L34_2.explosionNoDamageOnBosses
                        L33_2.noDamageOnBosses = L34_2
                        L31_2(L32_2, L33_2)
                      end
                    end
                  end
                end
              end
              if L24_2 < L5_2 then
                L30_2 = A1_2.forceBomb
                if not L30_2 then
                  L30_2 = blockTable
                  L30_2 = L30_2.blocks
                  L31_2 = A0_2.definition
                  L30_2 = L30_2[L31_2]
                  L30_2 = L30_2.isMightyEagle
                  if L30_2 and L20_2 ~= nil then
                    L30_2 = blockTable
                    L30_2 = L30_2.blocks
                    L31_2 = L20_2.definition
                    L30_2 = L30_2[L31_2]
                    if L30_2 ~= nil then
                      L30_2 = blockTable
                      L30_2 = L30_2.blocks
                      L31_2 = L20_2.definition
                      L30_2 = L30_2[L31_2]
                      L30_2 = L30_2.isBubble
                      if not L30_2 then
                        L30_2 = blockTable
                        L30_2 = L30_2.blocks
                        L31_2 = L20_2.definition
                        L30_2 = L30_2[L31_2]
                        L30_2 = L30_2.destroyWithMEForce
                        if not L30_2 then
                          goto lbl_850
                        end
                      end
                      L30_2 = destroyObject
                      L31_2 = L20_2.name
                      L30_2(L31_2)
                    end
                  end
                  ::lbl_850::
                  L30_2 = A0_2.damageDone
                  if L30_2 ~= nil then
                    L30_2 = A0_2.damageDone
                    L30_2 = L30_2 + 10
                    A0_2.damageDone = L30_2
                  end
                  L30_2 = physicsScale
                  L30_2 = L30_2 * L3_2
                  L30_2 = L30_2 * L27_2
                  L31_2 = applyImpulse
                  L32_2 = L19_2
                  L33_2 = L25_2 * L30_2
                  L34_2 = L26_2 * L30_2
                  L35_2 = L23_2.pointX
                  L36_2 = L23_2.pointY
                  L31_2(L32_2, L33_2, L34_2, L35_2, L36_2)
                  L31_2 = L20_2.onReceivedExplosionForce
                  if L31_2 ~= nil then
                    L31_2 = _G
                    L31_2 = L31_2.type
                    L32_2 = L20_2.onReceivedExplosionForce
                    L31_2 = L31_2(L32_2)
                    if L31_2 == "table" then
                      L31_2 = _G
                      L31_2 = L31_2.ipairs
                      L32_2 = L20_2.onReceivedExplosionForce
                      L31_2, L32_2, L33_2 = L31_2(L32_2)
                      for L34_2, L35_2 in L31_2, L32_2, L33_2 do
                        L36_2 = fireAction
                        L37_2 = L35_2
                        L38_2 = {}
                        L39_2 = L20_2.name
                        L38_2.name = L39_2
                        L38_2.force = L30_2
                        L38_2.angle = L29_2
                        L39_2 = blockTable
                        L39_2 = L39_2.blocks
                        L40_2 = A0_2.definition
                        L39_2 = L39_2[L40_2]
                        L39_2 = L39_2.explosionNoDamageOnBosses
                        L38_2.noDamageOnBosses = L39_2
                        L36_2(L37_2, L38_2)
                      end
                    else
                      L31_2 = fireAction
                      L32_2 = L20_2.onReceivedExplosionForce
                      L33_2 = {}
                      L34_2 = L20_2.name
                      L33_2.name = L34_2
                      L33_2.force = L30_2
                      L33_2.angle = L29_2
                      L34_2 = blockTable
                      L34_2 = L34_2.blocks
                      L35_2 = A0_2.definition
                      L34_2 = L34_2[L35_2]
                      L34_2 = L34_2.explosionNoDamageOnBosses
                      L33_2.noDamageOnBosses = L34_2
                      L31_2(L32_2, L33_2)
                    end
                  end
                end
              end
              L30_2 = L9_2
              L31_2 = getObjectDefinition
              L32_2 = L19_2
              L31_2 = L31_2(L32_2)
              if L31_2 ~= nil then
                L31_2 = getObjectDefinition
                L32_2 = L19_2
                L31_2 = L31_2(L32_2)
                L31_2 = L31_2.extendedExplosionDamageRadius
                if L31_2 == true then
                  L30_2 = L5_2
                end
                if L30_2 == 0 then
                  L30_2 = 1.0E-4
                end
                L31_2 = L24_2 / L30_2
                L31_2 = 1 - L31_2
                if L24_2 < L30_2 then
                  L32_2 = L10_2 * L31_2
                  L33_2 = L20_2.defence
                  if L33_2 == nil then
                    L33_2 = L10_2 * L31_2
                    L20_2.defence = L33_2
                  end
                  L33_2 = L20_2.defence
                  L34_2 = L10_2 * L31_2
                  if L33_2 < L34_2 then
                    L33_2 = blockTable
                    L33_2 = L33_2.blocks
                    L34_2 = A0_2.definition
                    L33_2 = L33_2[L34_2]
                    L33_2 = L33_2.explosionFactors
                    if L33_2 ~= nil then
                      L33_2 = blockTable
                      L33_2 = L33_2.blocks
                      L34_2 = L20_2.definition
                      L33_2 = L33_2[L34_2]
                      L33_2 = L33_2.material
                      L34_2 = blockTable
                      L34_2 = L34_2.damageFactors
                      L35_2 = blockTable
                      L35_2 = L35_2.blocks
                      L36_2 = A0_2.definition
                      L35_2 = L35_2[L36_2]
                      L35_2 = L35_2.explosionFactors
                      L34_2 = L34_2[L35_2]
                      L34_2 = L34_2.damageMultiplier
                      L35_2 = material
                      L34_2 = L34_2[L35_2]
                      if L34_2 ~= nil then
                        L34_2 = blockTable
                        L34_2 = L34_2.blocks
                        L35_2 = A0_2.definition
                        L34_2 = L34_2[L35_2]
                        L34_2 = L34_2.explosionFactors
                        L35_2 = material
                        L34_2 = L34_2[L35_2]
                        if L34_2 ~= nil then
                          L34_2 = blockTable
                          L34_2 = L34_2.damageFactors
                          L35_2 = blockTable
                          L35_2 = L35_2.blocks
                          L36_2 = A0_2.definition
                          L35_2 = L35_2[L36_2]
                          L35_2 = L35_2.explosionFactors
                          L34_2 = L34_2[L35_2]
                          L34_2 = L34_2.damageMultiplier
                          L35_2 = material
                          L34_2 = L34_2[L35_2]
                          L10_2 = L10_2 * L34_2
                        end
                      end
                    end
                    L33_2 = L20_2.strength
                    L34_2 = L20_2.strength
                    L35_2 = _G
                    L35_2 = L35_2.math
                    L35_2 = L35_2.floor
                    L36_2 = L10_2 * L31_2
                    L35_2 = L35_2(L36_2)
                    L34_2 = L34_2 - L35_2
                    L20_2.strength = L34_2
                    L34_2 = scoreTable
                    L35_2 = L20_2.name
                    L34_2 = L34_2[L35_2]
                    if L34_2 == nil then
                      L34_2 = scoreTable
                      L35_2 = L20_2.name
                      L36_2 = {}
                      L34_2[L35_2] = L36_2
                      L34_2 = scoreTable
                      L35_2 = L20_2.name
                      L34_2 = L34_2[L35_2]
                      L34_2.score = 0
                    end
                    L34_2 = _G
                    L34_2 = L34_2.math
                    L34_2 = L34_2.ceil
                    L35_2 = _G
                    L35_2 = L35_2.math
                    L35_2 = L35_2.min
                    L36_2 = _G
                    L36_2 = L36_2.math
                    L36_2 = L36_2.floor
                    L37_2 = L10_2 * L31_2
                    L36_2 = L36_2(L37_2)
                    L37_2 = L33_2
                    L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2 = L35_2(L36_2, L37_2)
                    L34_2 = L34_2(L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
                    L35_2 = _G
                    L35_2 = L35_2.math
                    L35_2 = L35_2.max
                    L36_2 = L34_2
                    L37_2 = 0
                    L35_2 = L35_2(L36_2, L37_2)
                    L36_2 = worldAttributes
                    L36_2 = L36_2.scoreDamageMultiplier
                    L35_2 = L35_2 * L36_2
                    L36_2 = blockTable
                    L36_2 = L36_2.blocks
                    L37_2 = L20_2.definition
                    L36_2 = L36_2[L37_2]
                    L36_2 = L36_2.scoreMultiplier
                    if not L36_2 then
                      L36_2 = 1
                    end
                    L35_2 = L35_2 * L36_2
                    L36_2 = scoreTable
                    L37_2 = L20_2.name
                    L36_2 = L36_2[L37_2]
                    L37_2 = scoreTable
                    L38_2 = L20_2.name
                    L37_2 = L37_2[L38_2]
                    L37_2 = L37_2.score
                    L37_2 = L37_2 + L35_2
                    L36_2.score = L37_2
                    L36_2 = addScoreToBird
                    L37_2 = L35_2
                    L36_2(L37_2)
                    L36_2 = L20_2.strength
                    if L36_2 <= 0 then
                      L36_2 = deadBlocks
                      L36_2[L19_2] = L20_2
                    end
                    L36_2 = getDamageSprite
                    L37_2 = L20_2
                    L38_2 = blockTable
                    L38_2 = L38_2.blocks
                    L36_2 = L36_2(L37_2, L38_2)
                    L37_2 = L36_2.sprite
                    L20_2.damageSprite = L37_2
                    L37_2 = L36_2.blink
                    L20_2.blinkSprite = L37_2
                    L37_2 = L36_2.smile
                    L20_2.smileSprite = L37_2
                    L37_2 = createDamageParticles
                    L38_2 = L20_2
                    L39_2 = blockTable
                    L39_2 = L39_2.blocks
                    L40_2 = L33_2
                    L37_2(L38_2, L39_2, L40_2)
                    L37_2 = getObjectDefinition
                    L38_2 = L19_2
                    L37_2 = L37_2(L38_2)
                    L37_2 = L37_2.damageParticles
                    if L37_2 ~= nil then
                      L38_2 = putParticles
                      L39_2 = {}
                      L40_2 = object1
                      L39_2.objectName = L40_2
                      L39_2.particles = L37_2
                      L40_2 = _G
                      L40_2 = L40_2.math
                      L40_2 = L40_2.ceil
                      L41_2 = L10_2 * L31_2
                      L41_2 = L41_2 / 10
                      L40_2 = L40_2(L41_2)
                      L39_2.amount = L40_2
                      L38_2(L39_2)
                    end
                    L38_2 = blockTable
                    L38_2 = L38_2.materials
                    L39_2 = getObjectDefinition
                    L40_2 = L19_2
                    L39_2 = L39_2(L40_2)
                    L39_2 = L39_2.material
                    L38_2 = L38_2[L39_2]
                    L38_2 = L38_2.damageSound
                    if L38_2 ~= nil then
                      L38_2 = res
                      L38_2 = L38_2.playAudio
                      L39_2 = blockTable
                      L39_2 = L39_2.materials
                      L40_2 = getObjectDefinition
                      L41_2 = L19_2
                      L40_2 = L40_2(L41_2)
                      L40_2 = L40_2.material
                      L39_2 = L39_2[L40_2]
                      L39_2 = L39_2.damageSound
                      L38_2(L39_2)
                    end
                  end
                  L33_2 = L20_2.onReceivedExplosionDamage
                  if L33_2 ~= nil then
                    L33_2 = fireAction
                    L34_2 = L20_2.onReceivedExplosionDamage
                    L35_2 = {}
                    L36_2 = L20_2.name
                    L35_2.name = L36_2
                    L35_2.damage = L32_2
                    L33_2(L34_2, L35_2)
                  end
                end
              end
              L31_2 = L20_2.levelGoal
              if L31_2 then
                L31_2 = blockTable
                L31_2 = L31_2.blocks
                L32_2 = L20_2.definition
                L31_2 = L31_2[L32_2]
                L31_2 = L31_2.damagedStateInMakeExplosion
                if L31_2 then
                  L31_2 = L20_2.strength
                  L32_2 = blockTable
                  L32_2 = L32_2.blocks
                  L33_2 = L20_2.definition
                  L32_2 = L32_2[L33_2]
                  L32_2 = L32_2.strength
                  L31_2 = L31_2 / L32_2
                  L32_2 = g_levelGoalDamageStatePercent
                  if not L32_2 then
                    L32_2 = 0.5
                  end
                  if L31_2 < L32_2 then
                    L32_2 = setPigDamageState
                    L33_2 = L20_2
                    L32_2(L33_2)
                    L32_2 = putParticles
                    L33_2 = {}
                    L34_2 = L20_2.name
                    L33_2.objectName = L34_2
                    L34_2 = blockTable
                    L34_2 = L34_2.blocks
                    L35_2 = L20_2.definition
                    L34_2 = L34_2[L35_2]
                    L34_2 = L34_2.particlesDamageState
                    L33_2.particles = L34_2
                    L33_2.useAmountInDefinition = true
                    L32_2(L33_2)
                  end
                end
              end
              if L20_2 ~= nil then
                L31_2 = blockTable
                L31_2 = L31_2.blocks
                L32_2 = L20_2.definition
                L31_2 = L31_2[L32_2]
                if L31_2 ~= nil then
                  L31_2 = blockTable
                  L31_2 = L31_2.blocks
                  L32_2 = L20_2.definition
                  L31_2 = L31_2[L32_2]
                  L31_2 = L31_2.destroyWithExplosionForce
                  if L31_2 then
                    L31_2 = destroyObject
                    L32_2 = L20_2.name
                    L31_2(L32_2)
                  end
                end
              end
            end
          end
        end
      end
      ::lbl_1181::
    end
    L15_2 = SettingsWrapper
    L16_2 = L15_2
    L15_2 = L15_2.getNumBlocksThrownByForce
    L15_2 = L15_2(L16_2)
    L16_2 = getAchievementLimit
    L17_2 = "Force Learner"
    L16_2 = L16_2(L17_2)
    if L15_2 >= L16_2 then
      L15_2 = registerAchievement
      L16_2 = "Force Learner"
      L15_2(L16_2)
    end
  end
  L11_2 = A0_2.insideWater
  if L11_2 then
    L11_2 = actions
    L11_2 = L11_2.waterAddExplosion
    L12_2 = A0_2
    L13_2 = L3_2
    L14_2 = L5_2
    L11_2(L12_2, L13_2, L14_2)
  end
end

makeExplosion = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = false
  if A1_2 then
    L3_2 = A1_2.collision
    if L3_2 ~= nil then
      L3_2 = A1_2.collision
      if L3_2 == false then
        L2_2 = false
      end
    end
  end
  L3_2 = blockTable
  L3_2 = L3_2.blocks
  L4_2 = A0_2.definition
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.density
  if L3_2 ~= nil then
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = A0_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.density
    if L3_2 == 0 then
      L2_2 = false
  end
  else
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = A0_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.density
    if L3_2 then
      L2_2 = true
    end
  end
  L3_2 = blockTable
  L3_2 = L3_2.blocks
  L4_2 = A0_2.definition
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.collision
  if L3_2 ~= nil then
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = A0_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.collision
    if L3_2 == false then
      L2_2 = false
  end
  else
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = A0_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.collision
    if L3_2 then
      L2_2 = true
    end
  end
  return L2_2
end

isObjectAffectedByForce = L0_1

function L0_1()
  local L0_2, L1_2
end

checkForLevelCompleteRewards = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_BIRD_SHOT
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getBirdsShot
  L0_2 = L0_2(L1_2)
  L1_2 = getAchievementLimit
  L2_2 = "Fly Bird Fly"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L1_2 = registerAchievement
    L2_2 = "Fly Bird Fly"
    L1_2(L2_2)
  end
end

checkForBirdsShotAchievement = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = levelCompleted
  if L0_2 then
    L0_2 = getLevelMetadata
    L1_2 = levelName
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2.levelAchievement
    if L0_2 then
      L0_2 = registerAchievement
      L1_2 = getLevelMetadata
      L2_2 = levelName
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2.levelAchievement
      L0_2(L1_2)
    end
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.getLastOpenedEpisodeIndex
    L0_2 = L0_2(L1_2)
    L1_2 = SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.getLastOpenedEpisodeType
    L1_2 = L1_2(L2_2)
    L2_2 = calculateEpisodeScoreAndStars
    L3_2 = L1_2
    L4_2 = L0_2
    L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
  end
  L0_2 = calculatePlaytime
  L0_2()
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getPlaytime
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2 * 1
  L1_2 = getAchievementLimit
  L2_2 = "Star Bird Fan"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = registerAchievement
    L1_2 = "Star Bird Fan"
    L0_2(L1_2)
  end
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getPlaytime
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2 * 1
  L1_2 = getAchievementLimit
  L2_2 = "True Star Bird Fan"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = registerAchievement
    L1_2 = "True Star Bird Fan"
    L0_2(L1_2)
  end
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getPlaytime
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2 * 1
  L1_2 = getAchievementLimit
  L2_2 = "Star Bird Addict"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = registerAchievement
    L1_2 = "Star Bird Addict"
    L0_2(L1_2)
  end
  L0_2 = calculateStarsForAllEpisodes
  L0_2, L1_2 = L0_2()
end

checkForLevelCompleteAchievements = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getNumDroidLevelUnlockedThroughEggsteroid
  L0_2 = L0_2(L1_2)
  L1_2 = getAchievementLimit
  L2_2 = "Probe Gatherer"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L1_2 = registerAchievement
    L2_2 = "Probe Gatherer"
    L1_2(L2_2)
  elseif 1 <= L0_2 then
    L1_2 = registerAchievement
    L2_2 = "Probe Explorer"
    L1_2(L2_2)
  end
end

checkForDroidLevelAchievements = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = actions
  L2_2 = L2_2.myEpisodesMetadata
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.leaderBoard
  if L2_2 then
    L3_2 = "leaderBoard_"
    L4_2 = L2_2
    L3_2 = L3_2 .. L4_2
    return L3_2
  end
  L3_2 = false
  return L3_2
end

getLeaderboardNameForEpisode = L0_1

function L0_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = "leaderBoard_totalPowerupScore"
    return L1_2
  else
    L1_2 = "leaderBoard_totalScore"
    return L1_2
  end
end

getLeaderboardNameForTotalScore = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = isDagobahAvailableForDevice
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "EpisodeSelection"
    return L0_2
  else
    L0_2 = isIOSFree
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = "EpisodeSelection_Free"
      return L0_2
    else
      L0_2 = "EpisodeSelection"
      return L0_2
    end
  end
  L0_2 = "EpisodeSelection"
  return L0_2
end

getEpisodeSelectionLevelName = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.ipairs
    L7_2 = actions
    L7_2 = L7_2.myLevelFolders
    L7_2 = L7_2[L5_2]
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = _G
      L11_2 = L11_2.ipairs
      L12_2 = actions
      L12_2 = L12_2.myLevels
      L12_2 = L12_2[L10_2]
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      for L14_2, L15_2 in L11_2, L12_2, L13_2 do
        L16_2 = getLevelMetadata
        L17_2 = L15_2
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2.unlocksOnTimer
        if L16_2 then
          L16_2 = isLevelLockedByTimer
          L17_2 = L15_2
          L16_2, L17_2 = L16_2(L17_2)
          if L17_2 then
            if not L0_2 then
              L0_2 = L17_2
            elseif L17_2 < L0_2 then
              L0_2 = L17_2
            end
          end
        end
      end
    end
  end
  return L0_2
end

getTimeToNextLevelOpening = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.CarboniteAvailableAnimation
  L1_2 = L1_2.getData
  L1_2 = L1_2()
  L2_2 = L1_2.timedLevelOpenings
  if L2_2 then
    L2_2 = L1_2.timedLevelOpenings
    L2_2 = L2_2[A0_2]
    return L2_2
  else
    L2_2 = nil
    return L2_2
  end
end

getLevelOpeningTime = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ui
  L2_2 = L2_2.CarboniteAvailableAnimation
  L2_2 = L2_2.getData
  L2_2 = L2_2()
  L3_2 = L2_2.timedLevelOpenings
  if L3_2 then
    L3_2 = {}
    L4_2 = _G
    L4_2 = L4_2.pairs
    L5_2 = L2_2.timedLevelOpenings
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.isDark
      if L9_2 ~= A1_2 then
        L9_2 = L8_2.isDark
        if L9_2 ~= nil or A1_2 ~= false and A1_2 ~= nil then
          goto lbl_30
        end
      end
      L9_2 = _G
      L9_2 = L9_2.table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      ::lbl_30::
    end
    L4_2 = _G
    L4_2 = L4_2.table
    L4_2 = L4_2.sort
    L5_2 = L3_2
    
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = getTimeDifferenceInSeconds
      L3_3 = L2_2
      L3_3 = L3_3.timedLevelOpenings
      L3_3 = L3_3[A0_3]
      L4_3 = L2_2
      L4_3 = L4_3.timedLevelOpenings
      L4_3 = L4_3[A1_3]
      L2_3 = L2_3(L3_3, L4_3)
      L2_3 = L2_3 < 0
      return L2_3
    end
    
    L4_2(L5_2, L6_2)
    L4_2 = _G
    L4_2 = L4_2.ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = isLevelLockedByTimer
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = L3_2[L7_2]
        L9_2 = L9_2 == A0_2
        return L9_2
      end
    end
  end
  L3_2 = false
  return L3_2
end

isFirstLockedMYDLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = getLevelOpeningTime
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = getLevelMetadata
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.unlocksOnTimer
  if L1_2 or L2_2 then
    L3_2 = getServerTime
    L3_2 = L3_2()
    if not L3_2 then
      L4_2 = SettingsWrapper
      L5_2 = L4_2
      L4_2 = L4_2.wasLevelStartedBefore
      L6_2 = A0_2
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        L4_2 = SettingsWrapper
        L5_2 = L4_2
        L4_2 = L4_2.isOpenedLevelAlreadyNotified
        L6_2 = A0_2
        L4_2 = L4_2(L5_2, L6_2)
        if not L4_2 then
          goto lbl_31
        end
      end
      L4_2 = false
      do return L4_2 end
      goto lbl_34
      ::lbl_31::
      L4_2 = true
      L5_2 = nil
      return L4_2, L5_2
    end
    ::lbl_34::
    if not L1_2 then
      L4_2 = true
      L5_2 = nil
      return L4_2, L5_2
    end
    L4_2 = getTimeDifferenceInSeconds
    L5_2 = L3_2
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 < 0 then
      L5_2 = true
      L6_2 = -L4_2
      return L5_2, L6_2
    end
  end
  L3_2 = false
  return L3_2
end

isLevelLockedByTimer = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = _G
  L0_2 = L0_2.ipairs
  L1_2 = actions
  L1_2 = L1_2.episodeTypeTable
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = actions
    L6_2 = L6_2.myLevelFolders
    L6_2 = L6_2[L4_2]
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = _G
      L10_2 = L10_2.ipairs
      L11_2 = actions
      L11_2 = L11_2.myLevels
      L11_2 = L11_2[L9_2]
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = getLevelMetadata
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L15_2 = L15_2.unlocksOnTimer
        if L15_2 then
          L15_2 = isLevelLockedByTimer
          L16_2 = L14_2
          L15_2, L16_2 = L15_2(L16_2)
          if not L15_2 then
            L17_2 = SettingsWrapper
            L18_2 = L17_2
            L17_2 = L17_2.isOpenedLevelAlreadyNotified
            L19_2 = L14_2
            L17_2 = L17_2(L18_2, L19_2)
            if not L17_2 then
              L17_2 = SettingsWrapper
              L18_2 = L17_2
              L17_2 = L17_2.markOpenedLevelNotified
              L19_2 = L14_2
              L17_2(L18_2, L19_2)
              L17_2 = SettingsWrapper
              L18_2 = L17_2
              L17_2 = L17_2.wasLevelStartedBefore
              L19_2 = L14_2
              L17_2 = L17_2(L18_2, L19_2)
              if not L17_2 then
                L17_2 = SettingsWrapper
                L18_2 = L17_2
                L17_2 = L17_2.addNewOpenedLevels
                L19_2 = L9_2
                L20_2 = 1
                L17_2(L18_2, L19_2, L20_2)
              end
            end
          end
        end
      end
    end
  end
end

checkForNewOpenedLevels = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = assert
  L3_2 = A0_2 ~= nil
  L4_2 = "folder is nil at isLevelUnlocked"
  L2_2(L3_2, L4_2)
  L2_2 = assert
  L3_2 = A1_2 ~= nil
  L4_2 = "levelNumber is nil at isLevelUnlocked"
  L2_2(L3_2, L4_2)
  L2_2 = hasbroCheats
  if L2_2 then
    L2_2 = hasbroCheats
    return L2_2
  end
  L2_2 = getEpisodeMetadata
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.openLevelsLimit
  if L2_2 ~= nil then
    L2_2 = getEpisodeMetadata
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.openLevelsLimit
    L2_2 = L2_2 + 2
    if A1_2 >= L2_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = releaseBuild
  if L2_2 == false then
    L2_2 = true
    return L2_2
  end
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = actions
  L3_2 = L3_2.myLevels
  L3_2 = L3_2[A0_2]
  L4_2 = A1_2 - 1
  L3_2 = L3_2[L4_2]
  L4_2 = getEpisodeMetadata
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.bonusChapter
  L5_2 = getEpisodeMetadata
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.alternativeRouteFirstLevelNumber
  L6_2 = getLevelMetadata
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.unlockedAsDefault
  if L6_2 then
    L6_2 = true
    return L6_2
  end
  L6_2 = getLevelMetadata
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.unlocksOnTimer
  if L6_2 then
    L6_2 = isLevelLockedByTimer
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = false
      return L6_2
    end
  end
  if L4_2 then
    L6_2 = SettingsWrapper
    L7_2 = L6_2
    L6_2 = L6_2.isBonusLevelUnlocked
    L8_2 = L2_2
    L6_2 = L6_2(L7_2, L8_2)
    return L6_2
  end
  L6_2 = isEpisodeFolder
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    if L5_2 then
      L6_2 = L5_2[1]
      if A1_2 == L6_2 then
        goto lbl_115
      end
    end
    if L5_2 then
      L6_2 = L5_2[2]
      if L6_2 then
        L6_2 = L5_2[2]
        if A1_2 == L6_2 then
          goto lbl_115
        end
      end
    end
    if A1_2 ~= 1 then
      if L3_2 == nil then
        goto lbl_115
      end
      L6_2 = SettingsWrapper
      L7_2 = L6_2
      L6_2 = L6_2.isComicWatched
      L8_2 = L3_2
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_115
      end
    end
    L6_2 = true
    return L6_2
  end
  ::lbl_115::
  L6_2 = getEpisodeMetadata
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = getEpisodeMetadataWithParam
  L8_2 = A0_2
  L9_2 = "iapPurchaseId"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = SettingsWrapper
  L9_2 = L8_2
  L8_2 = L8_2.isEpisodePurchased
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  if L7_2 ~= nil then
    L9_2 = L6_2.iapPurchase
    if L9_2 and not L8_2 then
      L9_2 = false
      return L9_2
    end
  end
  if L5_2 then
    L9_2 = L5_2[1]
    if A1_2 == L9_2 then
      L9_2 = SettingsWrapper
      L10_2 = L9_2
      L9_2 = L9_2.isMapFound
      L11_2 = A0_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        goto lbl_158
      end
    end
    L9_2 = L5_2[2]
    if L9_2 then
      L9_2 = L5_2[2]
      if A1_2 == L9_2 then
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.isMap2Found
        L11_2 = A0_2
        L9_2 = L9_2(L10_2, L11_2)
        ::lbl_158::
        if L9_2 then
          L9_2 = true
          return L9_2
        end
      end
    end
    L9_2 = highscores
    if L9_2 then
      L9_2 = getEpisodeMetadata
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.alternativeRouteEndLevelNumber
      L9_2 = L9_2[1]
      if A1_2 == L9_2 then
        L9_2 = highscores
        L10_2 = actions
        L10_2 = L10_2.myLevels
        L10_2 = L10_2[A0_2]
        L11_2 = getEpisodeMetadata
        L12_2 = A0_2
        L11_2 = L11_2(L12_2)
        L11_2 = L11_2.alternativeRouteLastLevelNumber
        L11_2 = L11_2[1]
        L10_2 = L10_2[L11_2]
        L9_2 = L9_2[L10_2]
        if L9_2 then
          goto lbl_210
        end
      end
    end
    L9_2 = getEpisodeMetadata
    L10_2 = A0_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2.alternativeRouteEndLevelNumber
    L9_2 = L9_2[2]
    if L9_2 then
      L9_2 = getEpisodeMetadata
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.alternativeRouteEndLevelNumber
      L9_2 = L9_2[2]
      if A1_2 == L9_2 then
        L9_2 = highscores
        L10_2 = actions
        L10_2 = L10_2.myLevels
        L10_2 = L10_2[A0_2]
        L11_2 = getEpisodeMetadata
        L12_2 = A0_2
        L11_2 = L11_2(L12_2)
        L11_2 = L11_2.alternativeRouteLastLevelNumber
        L11_2 = L11_2[2]
        L10_2 = L10_2[L11_2]
        L9_2 = L9_2[L10_2]
        ::lbl_210::
        if L9_2 then
          L9_2 = true
          return L9_2
        end
      end
    end
    L9_2 = L5_2[2]
    if L9_2 then
      L9_2 = L5_2[2]
      if L9_2 == A1_2 then
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.isMap2Found
        L11_2 = A0_2
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = false
          return L9_2
        end
      end
    end
  end
  L9_2 = SettingsWrapper
  L10_2 = L9_2
  L9_2 = L9_2.getLevelProgress
  L11_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2)
  if A1_2 <= L9_2 and not L5_2 then
    L9_2 = true
    return L9_2
  end
  L9_2 = highscores
  if L9_2 then
    L9_2 = highscores
    L9_2 = L9_2[L3_2]
    if L9_2 then
      L9_2 = true
      return L9_2
    end
  end
  L9_2 = highscores
  if L9_2 then
    L9_2 = highscores
    L9_2 = L9_2[L2_2]
    if L9_2 then
      L9_2 = true
      return L9_2
    end
  end
  L9_2 = SettingsWrapper
  L10_2 = L9_2
  L9_2 = L9_2.isLevelBoughtOpen
  L11_2 = L2_2
  L9_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L9_2 = SettingsWrapper
    L10_2 = L9_2
    L9_2 = L9_2.isLevelBoughtOpen
    L11_2 = L3_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      goto lbl_268
    end
  end
  L9_2 = true
  do return L9_2 end
  ::lbl_268::
  L9_2 = false
  return L9_2
end

isLevelUnlocked = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = actions
  L3_2 = L3_2.myLevelFolders
  L4_2 = actions
  L4_2 = L4_2.episodeTypeTable
  L4_2 = L4_2[A0_2]
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2[A1_2]
  L4_2 = calculateEpisodeScoreAndStarsWithName
  L5_2 = L3_2
  L6_2 = A2_2
  return L4_2(L5_2, L6_2)
end

calculateEpisodeScoreAndStars = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  if not A0_2 then
    L9_2 = nil
    return L9_2
  end
  L9_2 = A1_2 or L9_2
  if not A1_2 then
    L9_2 = highscores
  end
  L10_2 = _G
  L10_2 = L10_2.ipairs
  L11_2 = actions
  L11_2 = L11_2.myLevels
  L11_2 = L11_2[A0_2]
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = getLevelMetadata
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    L15_2 = L15_2.type
    if L15_2 ~= "comic" then
      L15_2 = getLevelStarsFromHighscores
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      L3_2 = L3_2 + L15_2
      L15_2 = false
      L16_2 = getLevelMetadata
      L17_2 = L14_2
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.deviceRestrictions
      if L16_2 ~= nil then
        L15_2 = true
        L16_2 = _G
        L16_2 = L16_2.ipairs
        L17_2 = getLevelMetadata
        L18_2 = L14_2
        L17_2 = L17_2(L18_2)
        L17_2 = L17_2.deviceRestrictions
        L16_2, L17_2, L18_2 = L16_2(L17_2)
        for L19_2, L20_2 in L16_2, L17_2, L18_2 do
          L21_2 = deviceManufacturer
          if L20_2 == L21_2 then
            L15_2 = false
            break
          end
        end
      end
      L16_2 = getLevelMetadata
      L17_2 = L14_2
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.ignoreScore
      if not L16_2 and L15_2 ~= true then
        L16_2 = isPlatformLimited
        L16_2 = L16_2()
        if L16_2 then
          L16_2 = getLevelMetadata
          L17_2 = L14_2
          L16_2 = L16_2(L17_2)
          L16_2 = L16_2.unavailableOnNonIaps
          if L16_2 then
            goto lbl_82
          end
        end
        L4_2 = L4_2 + 3
        L6_2 = L6_2 + 1
        L16_2 = getLevelMetadata
        L17_2 = L14_2
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2.isAlternativePathLevel
        if not L16_2 then
          L8_2 = L8_2 + 1
        end
      end
      ::lbl_82::
      L16_2 = L9_2[L14_2]
      if L16_2 then
        L16_2 = getLevelMetadata
        L17_2 = L14_2
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2.isAlternativePathLevel
        if not L16_2 then
          L7_2 = L7_2 + 1
        end
        L16_2 = L9_2[L14_2]
        L16_2 = L16_2.score
        L16_2 = L2_2 + L16_2
        L2_2 = L16_2 or L2_2
        if not L16_2 then
          L2_2 = 0
        end
        L16_2 = L9_2[L14_2]
        L16_2 = L16_2.eagleScore
        if L16_2 then
          L16_2 = L9_2[L14_2]
          L16_2 = L16_2.eagleScore
          if 100 <= L16_2 then
            L5_2 = L5_2 + 1
          end
        end
      end
    end
  end
  L10_2 = steam
  if L10_2 then
    if A0_2 == "theme1" then
      L10_2 = setStat
      L11_2 = "spaceEpisode1Score"
      L12_2 = L2_2
      L10_2(L11_2, L12_2)
      L10_2 = setStat
      L11_2 = "spaceEpisode1Stars"
      L12_2 = L3_2
      L10_2(L11_2, L12_2)
    elseif A0_2 == "theme2" then
      L10_2 = setStat
      L11_2 = "spaceEpisode2Score"
      L12_2 = L2_2
      L10_2(L11_2, L12_2)
      L10_2 = setStat
      L11_2 = "spaceEpisode2Stars"
      L12_2 = L3_2
      L10_2(L11_2, L12_2)
    elseif A0_2 == "dangerZone" then
      L10_2 = setStat
      L11_2 = "dangerZone1Score"
      L12_2 = L2_2
      L10_2(L11_2, L12_2)
      L10_2 = setStat
      L11_2 = "dangerZone1Stars"
      L12_2 = L3_2
      L10_2(L11_2, L12_2)
    end
  end
  L10_2 = L2_2
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = L6_2
  L15_2 = L7_2
  L16_2 = L8_2
  return L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
end

calculateEpisodeScoreAndStarsWithName = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = isDroidLevel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = assert
  L3_2 = L1_2 ~= true
  L4_2 = "not a droid level"
  L2_2(L3_2, L4_2)
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.storeDroidLevelUnlocked
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end

unlockDroidLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2.bonus
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L4_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
end

isDroidLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = isDroidLevel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = assert
  L3_2 = L1_2 ~= true
  L4_2 = "not a droid level"
  L2_2(L3_2, L4_2)
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isDroidLevelUnlocked
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end

isDroidLevelUnlocked = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = 1
  while not L1_2 do
    L3_2 = actions
    L3_2 = L3_2.myLevels
    L3_2 = L3_2[A0_2]
    L3_2 = #L3_2
    if not (L2_2 <= L3_2) then
      break
    end
    L3_2 = actions
    L3_2 = L3_2.myLevels
    L3_2 = L3_2[A0_2]
    L1_2 = L3_2[L2_2]
    L3_2 = getLevelMetadata
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.type
    if L3_2 == "comic" then
      L1_2 = nil
    end
    L2_2 = L2_2 + 1
  end
  return L1_2
end

getFirstPlayableLevelName = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = releaseBuild
  if L2_2 then
    L2_2 = hasbroCheats
    if not L2_2 then
      goto lbl_10
    end
  end
  L2_2 = false
  L3_2 = 0
  do return L2_2, L3_2 end
  ::lbl_10::
  L2_2 = getEpisodeMetadata
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.unlockedAsDefault
  if L2_2 then
    L2_2 = false
    L3_2 = 0
    return L2_2, L3_2
  end
  L2_2 = nil
  if A1_2 then
    L3_2 = _G
    L3_2 = L3_2.string
    L3_2 = L3_2.gsub
    L4_2 = A0_2
    L5_2 = "light"
    L6_2 = "dark"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  else
    L3_2 = _G
    L3_2 = L3_2.string
    L3_2 = L3_2.gsub
    L4_2 = A0_2
    L5_2 = "dark"
    L6_2 = "light"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = getFirstPlayableLevelName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = getFirstPlayableLevelName
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = getEpisodeProgress
  L6_2 = A0_2
  L7_2 = true
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = getEpisodeProgress
  L7_2 = L2_2
  L8_2 = true
  L6_2 = L6_2(L7_2, L8_2)
  if not L3_2 or not L4_2 then
    L7_2 = true
    L8_2 = 100000000
    return L7_2, L8_2
  end
  if not (0 < L5_2) or not (0 < L6_2) then
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.isEpisodeStarted
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      goto lbl_74
    end
  end
  L7_2 = false
  L8_2 = 0
  do return L7_2, L8_2 end
  goto lbl_184
  ::lbl_74::
  if L5_2 == 0 and L6_2 == 0 then
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.isEpisodeStarted
    L9_2 = L2_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L7_2 = getEpisodeMetadata
      L8_2 = A0_2
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.iapChapter
      if not L7_2 then
        goto lbl_97
      end
    end
    L7_2 = true
    L8_2 = getEpisodeMetadata
    L9_2 = L2_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.starsToUnlockOtherSide
    do return L7_2, L8_2 end
    goto lbl_184
    ::lbl_97::
    L7_2 = 0
    L8_2 = _G
    L8_2 = L8_2.ipairs
    L9_2 = actions
    L9_2 = L9_2.myLevelFolders
    L10_2 = actions
    L10_2 = L10_2.episodeTypeTable
    L10_2 = L10_2[1]
    L9_2 = L9_2[L10_2]
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      if L12_2 == A0_2 then
        L7_2 = L11_2
        break
      end
    end
    L7_2 = L7_2 - 2
    if not A1_2 then
      L7_2 = L7_2 - 1
    end
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.max
    L9_2 = 1
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
    L8_2 = isEpisodeCompleted
    L9_2 = actions
    L9_2 = L9_2.myLevelFolders
    L10_2 = actions
    L10_2 = L10_2.episodeTypeTable
    L10_2 = L10_2[1]
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2[L7_2]
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = isEpisodeCompleted
      L9_2 = actions
      L9_2 = L9_2.myLevelFolders
      L10_2 = actions
      L10_2 = L10_2.episodeTypeTable
      L10_2 = L10_2[1]
      L9_2 = L9_2[L10_2]
      L10_2 = L7_2 + 1
      L9_2 = L9_2[L10_2]
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = true
        L9_2 = 9999
        return L8_2, L9_2
    end
    else
      L8_2 = false
      L9_2 = 0
      return L8_2, L9_2
    end
  elseif 0 < L5_2 then
    L7_2 = false
    L8_2 = 0
    return L7_2, L8_2
  elseif 0 < L6_2 then
    L7_2 = calculateEpisodeScoreAndStarsWithName
    L8_2 = L2_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    L12_2 = getEpisodeMetadata
    L13_2 = L2_2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2.starsToUnlockOtherSide
    if L8_2 >= L12_2 then
      L12_2 = false
      L13_2 = 0
      return L12_2, L13_2
    else
      L12_2 = true
      L13_2 = getEpisodeMetadata
      L14_2 = L2_2
      L13_2 = L13_2(L14_2)
      L13_2 = L13_2.starsToUnlockOtherSide
      L13_2 = L13_2 - L8_2
      return L12_2, L13_2
    end
  end
  ::lbl_184::
  L7_2 = assert
  L8_2 = false
  L9_2 = "Problem in isEpisodeSideDisabled()"
  L7_2(L8_2, L9_2)
end

isEpisodeSideDisabled = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 then
    L3_2 = _G
    L3_2 = L3_2.string
    L3_2 = L3_2.gsub
    L4_2 = A0_2
    L5_2 = "light"
    L6_2 = "dark"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  else
    L3_2 = _G
    L3_2 = L3_2.string
    L3_2 = L3_2.gsub
    L4_2 = A0_2
    L5_2 = "dark"
    L6_2 = "light"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = calculateEpisodeScoreAndStarsWithName
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L8_2 = L4_2
  L9_2 = getEpisodeMetadata
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.starsToUnlockOtherSide
  return L8_2, L9_2
end

getOtherSideStarCounts = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == "nextEpisode" then
    L1_2 = true
    return L1_2
  end
  L1_2 = releaseBuild
  if L1_2 ~= false then
    L1_2 = hasbroCheats
    if not L1_2 then
      goto lbl_13
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_13::
  L1_2 = getEpisodeMetadata
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.unlockedAsDefault
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = getEpisodeMetadata
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.droidEpisode
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = actions
    L2_2 = L2_2.myLevels
    L2_2 = L2_2[A0_2]
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = isDroidLevelUnlocked
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = false
        return L6_2
      end
    end
    L1_2 = true
    return L1_2
  end
  L1_2 = true
  return L1_2
end

isEpisodeDisabled = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  if L0_2 == "android" then
    L0_2 = isIapEnabled
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = print
      L1_2 = "<iap> attempting iap restore\n"
      L0_2(L1_2)
    end
  end
end

restoreSettings = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ui
  L1_2 = L1_2.Shop
  L1_2 = L1_2.getDataById
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.episode
    if L2_2 == "dagobah_1" then
      L2_2 = registerAchievement
      L3_2 = "Dangerous It Will Be"
      L2_2(L3_2)
    end
  end
end

checkForDagobahAchievement = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = isPlatformLimited
  L0_2 = L0_2()
  L0_2 = isIOSFree
  L0_2 = L0_2()
  L0_2 = not L0_2 and L0_2
  return L0_2
end

isDagobahAvailableForDevice = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = applyChinaRestictions
  if L0_2 then
    L0_2 = replaceBlocks
    L1_2 = loadedObjects
    L2_2 = {}
    L3_2 = {}
    L3_2.what = "BLOCK_MENU_EPISODE_BUTTON_HOTH"
    L3_2.with = "BLOCK_MENU_EPISODE_BUTTON_HOTH_CHINA"
    L2_2[1] = L3_2
    L0_2(L1_2, L2_2)
  end
end

filterLoadedLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = actions
  L3_2 = L3_2.myLevels
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = getLevelMetadata
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.type
    if L7_2 ~= "comic" then
      L7_2 = getLevelStarsFromHighscores
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L1_2 = L1_2 + L7_2
    end
  end
  return L1_2
end

getEpisodeStars = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/materials.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "materials"
  L3_2 = true
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/damagefactors.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "damageFactors"
  L3_2 = true
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/birds.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_gameElements.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_glass.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_levelgoals.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_menu.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_levelSelectionDark.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_levelSelectionLight.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_misc.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_planets.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_sensors.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_static.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_stone.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_wood.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_bosses.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_1_light.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_1_dark.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_2_light.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_2_dark.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_3_light.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_3_dark.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_4_light.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_4_dark.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_5_light.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_5_dark.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_R_light.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/blocks_chapter_R_dark.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "blockTable"
  L3_2 = true
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/themes.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "themes"
  L3_2 = true
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/textures.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "textures"
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/worldAttributes.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "worldAttributes"
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/QuestsLogic.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = ""
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = this
  L1_2 = {}
  L0_2.questsPackageData = L1_2
  L0_2 = loadLuaFileToObject
  L1_2 = scriptPath
  L2_2 = "/quests.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = this
  L2_2 = L2_2.questsPackageData
  L3_2 = ""
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = this
  L1_2 = loadCloudAssetFile
  L2_2 = "quests"
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.questsCloudData = L1_2
  L0_2 = createQuestsData
  L0_2()
  L0_2 = initGamePlayQuests
  L0_2()
  L0_2 = loadLuaFile
  L1_2 = scriptPath
  L2_2 = "/particles.lua"
  L1_2 = L1_2 .. L2_2
  L2_2 = "particleTable"
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = populateCharacterParticles
  L0_2()
  L0_2 = showEditor
  if L0_2 then
    L0_2 = loadLuaFileToObject
    L1_2 = scriptPath
    L2_2 = "/menus/AnimatedTutorial.lua"
    L1_2 = L1_2 .. L2_2
    L2_2 = this
    L2_2 = L2_2.ui
    L3_2 = ""
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = createForceGlowProperties
  L0_2()
end

loadBlockData = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = _G
  L0_2 = L0_2.pairs
  L1_2 = blockTable
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = _G
    L5_2 = L5_2.type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 == "table" then
      L5_2 = _G
      L5_2 = L5_2.pairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.definitionHeldByForce
        if L10_2 then
          L10_2 = L9_2.definitionHeldByYodaForce
          if not L10_2 then
            L10_2 = _G
            L10_2 = L10_2.string
            L10_2 = L10_2.gsub
            L11_2 = L9_2.definitionHeldByForce
            L12_2 = "RED"
            L13_2 = "GREEN"
            L10_2 = L10_2(L11_2, L12_2, L13_2)
            L9_2.definitionHeldByYodaForce = L10_2
          end
        end
        L10_2 = L9_2.definitionHeldByForce
        if L10_2 then
          L10_2 = blockTable
          L10_2 = L10_2.blocks
          L10_2 = L10_2.BirdObiWan
          L10_2 = L10_2.forceGlowColor
          if not L10_2 then
            L10_2 = "BLUE"
          end
          L11_2 = _G
          L11_2 = L11_2.string
          L11_2 = L11_2.gsub
          L12_2 = L9_2.definitionHeldByForce
          L13_2 = "RED"
          L14_2 = L10_2
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L9_2.definitionAffectedByForce = L11_2
        end
        L10_2 = L9_2.definitionHeldByForce
        if L10_2 then
          L10_2 = L9_2.definitionLiftedByLeia
          if not L10_2 then
            L10_2 = "PINK"
            L11_2 = _G
            L11_2 = L11_2.string
            L11_2 = L11_2.gsub
            L12_2 = L9_2.definitionHeldByForce
            L13_2 = "RED"
            L14_2 = L10_2
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            L9_2.definitionLiftedByLeia = L11_2
          end
        end
      end
    end
  end
end

createForceGlowProperties = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_INITIALIZE_PENDING_CHARACTERS
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = false
  g_disableGameupdate = L1_2
  L1_2 = false
  g_gameFailedState = L1_2
  L1_2 = false
  g_gameCompletedState = L1_2
  L1_2 = false
  g_isUsingPowerup = L1_2
  L1_2 = nil
  g_explodingBomb = L1_2
  L1_2 = initializeEventSystem
  L1_2()
  L1_2 = {}
  g_queuedEventCalls = L1_2
  L1_2 = clearLuaForceFunctions
  L1_2()
  L1_2 = getLevelMetadata
  L2_2 = levelName
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = res
    L2_2 = L2_2.stopAllAudio
    L2_2()
  else
    L2_2 = g_notFirstTimeLoad
    if L2_2 then
      L2_2 = {}
      L3_2 = "level_start_lightside"
      L4_2 = "level_start_darkside"
      L5_2 = "level clear ingame"
      L6_2 = "level fail ingame"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L2_2[4] = L6_2
      L3_2 = _G
      L3_2 = L3_2.ipairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = res
        L8_2 = L8_2.stopAudio
        L9_2 = L7_2
        L8_2(L9_2)
      end
      L3_2 = _G
      L3_2 = L3_2.pairs
      L4_2 = Characters
      L4_2 = L4_2.list
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = blockTable
        L8_2 = L8_2.blocks
        L9_2 = L7_2.def
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.sounds
        L8_2 = L8_2.special
        if L8_2 then
          L9_2 = res
          L9_2 = L9_2.stopAudio
          L10_2 = L8_2
          L9_2(L10_2)
        end
      end
    end
  end
  if L1_2 ~= nil then
    L2_2 = L1_2.erasePreviousLevel
    if L2_2 then
      L2_2 = objects
      L2_2.previousLevel = nil
    end
  end
  L2_2 = g_releaseGroups
  if L2_2 ~= nil then
    L2_2 = releaseImages
    L3_2 = g_releaseGroups
    L2_2(L3_2)
    L2_2 = nil
    g_releaseGroups = L2_2
  end
  L2_2 = rewardPopup
  if L2_2 then
    L2_2 = rewardPopup
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
  end
  L2_2 = 0
  gameTimer = L2_2
  L2_2 = false
  g_threeStarsCheat = L2_2
  L2_2 = false
  quadClick = L2_2
  L2_2 = 0
  quadClickCounter = L2_2
  L2_2 = 0
  quadClickFalconCounter = L2_2
  L2_2 = 0
  lastTimeSetDCursor = L2_2
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  delayedCursorPhysics = L2_2
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  previousDelayedCursorPhysics = L2_2
  L2_2 = nil
  freezingObjects = L2_2
  L2_2 = nil
  forceObjects = L2_2
  L2_2 = nil
  myCameras = L2_2
  L2_2 = 0
  numMightyEaglesCalled = L2_2
  L2_2 = 0
  numMightyEaglesShot = L2_2
  L2_2 = false
  usedMightyEagle = L2_2
  L2_2 = nil
  mightyEagleBird = L2_2
  L2_2 = nil
  mightyEagleBird2 = L2_2
  L2_2 = nil
  mightyEagleBGAlpha = L2_2
  L2_2 = nil
  mightyEagleFlashAlpha = L2_2
  L2_2 = nil
  mightyEagleBGAlphaDecreese = L2_2
  L2_2 = nil
  mightyEagleFlashAlphaDecreese = L2_2
  L2_2 = false
  mightyEagleDisabled = L2_2
  L2_2 = false
  inEggsteroidTransition = L2_2
  L2_2 = false
  ignorePlayerInput = L2_2
  L2_2 = {}
  mightyEagleBHBG = L2_2
  L2_2 = 0
  numMEFired = L2_2
  L2_2 = 0
  birdToSlingshotAnimationTimer = L2_2
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.pi
  L2_2 = 0.75 * L2_2
  birdToSlingshotAnimationAngle = L2_2
  L2_2 = birdToSlingshotAnimationAngle
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.pi
  L3_2 = L3_2 * 0.5
  L2_2 = L2_2 - L3_2
  birdToSlingshotSurplusAngle = L2_2
  L2_2 = 0
  birdToSlingshotAnimationHeight = L2_2
  L2_2 = 0
  birdToSlingshotAnimationStartX = L2_2
  L2_2 = 0
  birdToSlingshotAnimationStartY = L2_2
  L2_2 = nil
  birdToSlingshotBirdName = L2_2
  L2_2 = 0
  L3_2 = 0
  bird_touch_begin_y = L3_2
  bird_touch_begin_x = L2_2
  L2_2 = 0
  L3_2 = 0
  last_touch_y = L3_2
  last_touch_x = L2_2
  L2_2 = true
  g_touch_released_after_specialty = L2_2
  L2_2 = false
  g_laserGestureMode = L2_2
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  laser_cursor = L2_2
  L2_2 = false
  g_isSandboxLevel = L2_2
  L2_2 = nil
  isComicLevel = L2_2
  L2_2 = 1
  currentBirdIndex = L2_2
  L2_2 = nil
  currentBirdName = L2_2
  L2_2 = nil
  flyingBird = L2_2
  L2_2 = nil
  birdTypeCollectingScore = L2_2
  L2_2 = false
  g_firstBirdShot = L2_2
  L2_2 = false
  birdSpecialtyAvailable = L2_2
  L2_2 = false
  birdFired = L2_2
  L2_2 = false
  birdReady = L2_2
  L2_2 = false
  fillInNextBird = L2_2
  L2_2 = false
  birdSelected = L2_2
  L2_2 = 0
  birdsShot = L2_2
  L2_2 = {}
  g_blueBirdDidDamage = L2_2
  L2_2 = 0
  numberOfBirdLevelScores = L2_2
  L2_2 = {}
  birdLevelScores = L2_2
  L2_2 = g_levelOpenAnimationComplete
  if L2_2 then
    L2_2 = nil
    g_levelOpenAnimationComplete = L2_2
    L2_2 = nil
    g_showLevelOpenAnimation = L2_2
    L2_2 = false
    g_showLevelOpenAnimationFromAlternativeRoute = L2_2
    L2_2 = nil
    g_showLevelOpenAnimationScrolled = L2_2
    L2_2 = nil
    levelOpenAnimationTimer = L2_2
  end
  L2_2 = {}
  g_cameraShakes = L2_2
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  g_cameraShakePosition = L2_2
  L2_2 = addCameraShake
  L3_2 = cameraShakeModeMightyEagle
  L2_2 = L2_2(L3_2)
  mightyEagleCameraShake = L2_2
  L2_2 = mightyEagleCameraShake
  L2_2.running = false
  L2_2 = nil
  g_levelFailedDisabled = L2_2
  L2_2 = false
  g_levelEndCameraActive = L2_2
  L2_2 = nil
  g_refuseDrags = L2_2
  L2_2 = nil
  g_scopeDelta = L2_2
  L2_2 = 0
  g_sandBoxClickCount = L2_2
  L2_2 = false
  tapStarted = L2_2
  L2_2 = 0
  tapCount = L2_2
  L2_2 = 0
  tapTimer = L2_2
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  tapPosition = L2_2
  L2_2 = 0
  doubleClickTimer = L2_2
  L2_2 = 0
  levelCompleteTimer = L2_2
  L2_2 = false
  levelCompleted = L2_2
  L2_2 = false
  levelFailed = L2_2
  L2_2 = 0
  levelFailedTimer = L2_2
  L2_2 = 0
  birdBuffTimer = L2_2
  L2_2 = 0
  castleCameraTimer = L2_2
  L2_2 = 1
  dragCursorIndex = L2_2
  L2_2 = {}
  L3_2 = {}
  L3_2.dx = 0
  L3_2.dy = 0
  L3_2.dt = 1
  L2_2[1] = L3_2
  dragCursorTable = L2_2
  L2_2 = 0
  rubberBandAngle = L2_2
  L2_2 = 0
  rubberBandLength = L2_2
  L2_2 = 0
  oldRubberBandLength = L2_2
  L2_2 = g_defaultCameraResetTime
  cameraResetTimer = L2_2
  L2_2 = 0.5
  nextBirdTimer = L2_2
  L2_2 = 0
  zoomLevel = L2_2
  L2_2 = 0
  oldZoomLevel = L2_2
  L2_2 = 1
  worldScale = L2_2
  L2_2 = 0
  sweepSpeed = L2_2
  L2_2 = 0
  particleAmount = L2_2
  L2_2 = nil
  timeWithoutLevelGoals = L2_2
  L2_2 = nil
  skipSequenceClicks = L2_2
  L2_2 = false
  ignoreCameraSweep = L2_2
  L2_2 = false
  ignoreCameraMovement = L2_2
  L2_2 = 10000
  levelLeftEdgePhysics = L2_2
  L2_2 = -10000
  levelRightEdgePhysics = L2_2
  L2_2 = 10000
  levelTopEdgePhysics = L2_2
  L2_2 = -10000
  levelBottomEdgePhysics = L2_2
  L2_2 = 0
  L3_2 = {}
  g_levelParticleBlocks = L3_2
  L3_2 = 0
  numGravitationParticles = L3_2
  L3_2 = {}
  aimingTrail = L3_2
  L3_2 = {}
  dummyTable = L3_2
  L3_2 = {}
  dummyPositions = L3_2
  L3_2 = 0
  numDummies = L3_2
  L3_2 = 5
  maxDumies = L3_2
  L3_2 = 0.3
  timeBetweenDummies = L3_2
  L3_2 = 0.05
  timeBetweenDots = L3_2
  L3_2 = 20
  maxDots = L3_2
  L3_2 = {}
  deadBlocks = L3_2
  L3_2 = 0
  birdsCounter = L3_2
  L3_2 = {}
  objectCounts = L3_2
  L3_2 = {}
  floatingScores = L3_2
  L3_2 = 0
  score = L3_2
  L3_2 = {}
  scoreTable = L3_2
  L3_2 = scoreTable
  L4_2 = {}
  L4_2.score = 0
  L5_2 = blockDestroyedScoreIncrement
  L4_2.blockDestroyedScore = L5_2
  L3_2.blocks = L4_2
  L3_2 = scoreTable
  L4_2 = {}
  L4_2.score = 0
  L3_2.birds = L4_2
  L3_2 = {}
  selectedObjects = L3_2
  L3_2 = false
  allowResetToBirdCamera = L3_2
  L3_2 = {}
  particles = L3_2
  L3_2 = 0
  timeSpentInLevel = L3_2
  L3_2 = -2
  lastBirdFailedTime = L3_2
  L3_2 = {}
  BHTrajectory = L3_2
  L3_2 = objects
  L4_2 = {}
  L3_2.levelStars = L4_2
  L3_2 = true
  cameraShakeOn = L3_2
  L3_2 = screen
  L3_2.deltaX = 0
  L3_2 = screen
  L3_2.deltaY = 0
  L3_2 = objects
  L3_2 = L3_2.world
  if L3_2 ~= nil then
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = objects
    L4_2 = L4_2.world
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = objects
      L8_2 = L8_2.world
      L8_2[L6_2] = nil
    end
  end
  L3_2 = {}
  birds = L3_2
  L3_2 = {}
  levelGoals = L3_2
  L3_2 = {}
  animatedObjects = L3_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L6_2 = {}
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  birdTrajectory = L3_2
  L3_2 = {}
  otherBirds = L3_2
  L3_2 = nil
  timeWithoutBirds = L3_2
  L3_2 = {}
  g_newlyGottenDeviceAchievements = L3_2
  L3_2 = initializeBulletTime
  L3_2()
  L3_2 = fireAction
  L4_2 = "onLevelLoad"
  L5_2 = {}
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "LOAD  LEVEL filename  = : "
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = print
  L4_2 = "LOAD  LEVEL currentFolder: "
  L5_2 = _G
  L5_2 = L5_2.tostring
  L6_2 = levelFolder
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = showEditor
  if L3_2 ~= true then
    L3_2 = checkGetLevelFileName
    L3_2 = L3_2()
    if L3_2 ~= nil then
      A0_2 = L3_2
    end
  end
  L3_2 = showEditor
  if L3_2 then
    L3_2 = startedFromEditor
    if L3_2 then
      L3_2 = actions
      L3_2 = L3_2.editorEpisodeMetadata
      if L3_2 then
        L3_2 = print
        L4_2 = "Using metadata '"
        L5_2 = actions
        L5_2 = L5_2.editorEpisodeMetadata
        L6_2 = "' in editor."
        L4_2 = L4_2 .. L5_2 .. L6_2
        L3_2(L4_2)
        L3_2 = actions
        L3_2 = L3_2.editorEpisodeMetadata
        currentFolder = L3_2
      end
    end
  end
  L3_2 = g_notFirstTimeLoad
  if L3_2 == true then
    L3_2 = showEditor
    if L3_2 ~= true then
      goto lbl_475
    end
  end
  L3_2 = loadBlockData
  L3_2()
  goto lbl_477
  ::lbl_475::
  L3_2 = createForceGlowProperties
  L3_2()
  ::lbl_477::
  L3_2 = loadLevel
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = startedFromEditor
  if L3_2 ~= true then
    L3_2 = filterLoadedLevel
    L3_2()
  end
  L3_2 = true
  g_notFirstTimeLoad = L3_2
  L3_2 = currentFolder
  if L3_2 ~= "bonus" then
    L3_2 = objects
    L3_2 = L3_2.previousLevel
    if L3_2 ~= nil then
      L3_2 = objects
      L3_2.previousLevel = nil
      L3_2 = objects
      L3_2.previousScoreTable = nil
    end
  end
  L3_2 = objects
  L4_2 = {}
  L3_2.animatedSprites = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.animatedObjects = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.decorationObjects = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.spriteObjects = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.buttonObjects = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.world = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.pathItems = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.joints = L4_2
  L3_2 = objects
  L4_2 = {}
  L5_2 = {}
  L4_2.gravitation = L5_2
  L5_2 = {}
  L4_2.destroyer = L5_2
  L5_2 = {}
  L4_2.portal = L5_2
  L5_2 = {}
  L4_2.stream = L5_2
  L5_2 = {}
  L4_2.killing = L5_2
  L3_2.sensorList = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.counts = L4_2
  L3_2 = objects
  L4_2 = {}
  L3_2.destroyableByTap = L4_2
  L3_2 = objects
  L4_2 = physicsToWorld
  L3_2.physicsToWorld = L4_2
  L3_2 = objects
  L3_2.theme = "theme_crimson"
  L3_2 = objects
  L3_2.castleCameraData = nil
  L3_2 = objects
  L3_2.birdCameraData = nil
  L3_2 = objects
  L4_2 = {}
  L3_2.frameObjects = L4_2
  L3_2 = objects
  L3_2.rotatingMenuJoint = nil
  L3_2 = -1
  L4_2 = gameCamera
  if L4_2 ~= nil then
    L4_2 = gameCamera
    L3_2 = L4_2.currentZoomedScale
  end
  L4_2 = loadLuaFileToObject
  L5_2 = commonScriptPath
  L6_2 = "/gameCamera.lua"
  L5_2 = L5_2 .. L6_2
  L6_2 = this
  L7_2 = ""
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Camera
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  gameCamera = L4_2
  L4_2 = gameCamera
  L5_2 = L4_2
  L4_2 = L4_2.setGameEngine
  L6_2 = this
  L4_2(L5_2, L6_2)
  L4_2 = 3.5
  g_cameraSpringForceConstant = L4_2
  L4_2 = 2
  g_cameraSpringForceConstantNoTarget = L4_2
  L4_2 = loadedObjects
  L5_2 = nil
  if L4_2 ~= L5_2 then
    L4_2 = objects
    L5_2 = "compounds"
    L6_2 = loadedObjects
    L7_2 = "compounds"
    L6_2 = L6_2[L7_2]
    L4_2[L5_2] = L6_2
    L4_2 = objects
    L5_2 = "gravityForceMultiplier"
    L6_2 = loadedObjects
    L7_2 = "gravityForceMultiplier"
    L6_2 = L6_2[L7_2]
    if not L6_2 then
      L6_2 = worldAttributes
      L7_2 = "defaultGravityForceMultiplier"
      L6_2 = L6_2[L7_2]
    end
    L4_2[L5_2] = L6_2
    L4_2 = objects
    L5_2 = "waterForceMultiplier"
    L6_2 = loadedObjects
    L7_2 = "waterForceMultiplier"
    L6_2 = L6_2[L7_2]
    if not L6_2 then
      L6_2 = worldAttributes
      L7_2 = "defaultWaterForceMultiplier"
      L6_2 = L6_2[L7_2]
    end
    L4_2[L5_2] = L6_2
  else
    L4_2 = objects
    L5_2 = "compounds"
    L6_2 = {}
    L4_2[L5_2] = L6_2
  end
  L4_2 = setWorldScale
  L5_2 = worldScale
  L4_2(L5_2)
  L4_2 = screen
  L5_2 = 0
  L4_2.x = L5_2
  L4_2 = screen
  L5_2 = 0
  L4_2.y = L5_2
  L4_2 = levelStartPosition
  L5_2 = 0
  L4_2.x = L5_2
  L4_2 = levelStartPosition
  L5_2 = 0
  L4_2.y = L5_2
  L4_2 = rubberBandPos
  L5_2 = 0
  L4_2.x = L5_2
  L4_2 = rubberBandPos
  L5_2 = 0
  L4_2.y = L5_2
  L4_2 = 0
  rubberBandSpeed = L4_2
  L4_2 = loadSpecificLevelAudioAssets
  L4_2()
  L4_2 = loadedObjects
  L5_2 = nil
  if L4_2 == L5_2 then
    L4_2 = showEditor
    L5_2 = true
    if L4_2 == L5_2 then
      L4_2 = "theme_crimson"
      currentTheme = L4_2
    else
      L4_2 = assert
      L5_2 = false
      L6_2 = "Level: "
      L7_2 = A0_2
      L8_2 = " not found."
      L6_2 = L6_2 .. L7_2 .. L8_2
      L4_2(L5_2, L6_2)
      L4_2 = checkAndLoadTheme
      L5_2 = "theme_crimson"
      L4_2(L5_2)
    end
    L4_2 = {}
    L5_2 = {}
    L4_2.world = L5_2
    loadedObjects = L4_2
    L4_2 = setTheme
    L5_2 = currentTheme
    L4_2(L5_2)
  end
  L4_2 = false
  L5_2 = loadedObjects
  L5_2 = L5_2.counts
  L6_2 = nil
  if L5_2 ~= L6_2 then
    L4_2 = true
    L5_2 = _G
    L5_2 = L5_2.pairs
    L6_2 = loadedObjects
    L6_2 = L6_2.counts
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = objects
      L10_2 = L10_2.counts
      L10_2[L8_2] = L9_2
    end
  end
  L5_2 = 100
  L6_2 = loadedObjects
  L6_2 = L6_2.physicsToWorld
  L7_2 = nil
  if L6_2 ~= L7_2 then
    L6_2 = loadedObjects
    L5_2 = L6_2.physicsToWorld
  end
  L6_2 = physicsToWorld
  L6_2 = L5_2 / L6_2
  scaleFactor = L6_2
  L6_2 = levelName
  L7_2 = getEpisodeSelectionLevelName
  L7_2 = L7_2()
  if L6_2 == L7_2 then
    L6_2 = checkForNewOpenedLevels
    L6_2()
  end
  L6_2 = loadedObjects
  L6_2 = L6_2.theme
  L7_2 = nil
  if L6_2 ~= L7_2 then
    L6_2 = objects
    L7_2 = loadedObjects
    L7_2 = L7_2.theme
    L6_2.theme = L7_2
    L6_2 = showEditor
    L7_2 = true
    if L6_2 == L7_2 then
      L6_2 = objects
      L6_2 = L6_2.theme
      currentTheme = L6_2
      L6_2 = checkAndLoadTheme
      L7_2 = currentTheme
      L6_2(L7_2)
      L6_2 = setTheme
      L7_2 = currentTheme
      L6_2(L7_2)
    else
      L6_2 = levelName
      L7_2 = "MainMenu"
      if L6_2 == L7_2 then
        L6_2 = getMainMenuTheme
        L6_2 = L6_2()
        L7_2 = checkAndLoadTheme
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = setTheme
        L8_2 = L6_2
        L7_2(L8_2)
      else
        L6_2 = getLevelMetadata
        L7_2 = levelName
        L6_2 = L6_2(L7_2)
        L7_2 = "usesGlobalTheme"
        L6_2 = L6_2[L7_2]
        if L6_2 then
          L6_2 = SettingsWrapper
          L8_2 = "getCurrentTheme"
          L7_2 = L6_2
          L6_2 = L6_2[L8_2]
          L6_2 = L6_2(L7_2)
          globalTheme = L6_2
          L6_2 = checkAndLoadTheme
          L7_2 = globalTheme
          L6_2(L7_2)
          L6_2 = setTheme
          L7_2 = globalTheme
          L6_2(L7_2)
        else
          L6_2 = checkAndLoadTheme
          L7_2 = objects
          L7_2 = L7_2.theme
          L6_2(L7_2)
          L6_2 = setTheme
          L7_2 = objects
          L7_2 = L7_2.theme
          L6_2(L7_2)
        end
      end
      L6_2 = getLevelMetadata
      L7_2 = levelName
      L6_2 = L6_2(L7_2)
      L7_2 = "doesNotchangeGlobalTheme"
      L6_2 = L6_2[L7_2]
      if L6_2 then
        L6_2 = loadedObjects
        L6_2 = L6_2.previousLevel
        L7_2 = nil
        if L6_2 == L7_2 then
          goto lbl_788
        end
      end
      L6_2 = currentTheme
      globalTheme = L6_2
      L6_2 = SettingsWrapper
      L8_2 = "setCurrentTheme"
      L7_2 = L6_2
      L6_2 = L6_2[L8_2]
      L8_2 = currentTheme
      L6_2(L7_2, L8_2)
    end
  end
  ::lbl_788::
  L6_2 = {}
  themeSpriteObjects = L6_2
  L6_2 = loadedObjects
  L6_2 = L6_2.world
  L7_2 = "killingBox"
  L8_2 = nil
  L6_2[L7_2] = L8_2
  L6_2 = {}
  L7_2 = 1
  L8_2 = loadedObjects
  L8_2 = L8_2.world
  L9_2 = nil
  if L8_2 ~= L9_2 then
    L8_2 = _G
    L8_2 = L8_2.pairs
    L9_2 = loadedObjects
    L9_2 = L9_2.world
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L12_2
      L14_2 = blockTable
      L14_2 = L14_2.blocks
      L15_2 = "definition"
      L15_2 = L13_2[L15_2]
      L14_2 = L14_2[L15_2]
      if not L14_2 then
        L14_2 = assert
        L15_2 = false
        L16_2 = "Object definition is not in blocks: "
        L17_2 = "definition"
        L17_2 = L13_2[L17_2]
        L16_2 = L16_2 .. L17_2
        L14_2(L15_2, L16_2)
      end
      L14_2 = false
      L15_2 = SettingsWrapper
      L17_2 = "getCollectableBlock"
      L16_2 = L15_2
      L15_2 = L15_2[L17_2]
      L17_2 = levelName
      L18_2 = L11_2
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      if L15_2 then
        L15_2 = print
        L16_2 = _G
        L16_2 = L16_2.tostring
        L17_2 = L11_2
        L16_2 = L16_2(L17_2)
        L17_2 = " has been collected."
        L16_2 = L16_2 .. L17_2
        L15_2(L16_2)
        L14_2 = true
      end
      L15_2 = getLevelMetadata
      L16_2 = levelName
      L15_2 = L15_2(L16_2)
      L16_2 = "type"
      L15_2 = L15_2[L16_2]
      if L15_2 then
        L16_2 = "menu"
        if L15_2 ~= L16_2 then
          goto lbl_869
        end
        L16_2 = "comic"
        if L15_2 ~= L16_2 then
          goto lbl_869
        end
      end
      L16_2 = blockTable
      L16_2 = L16_2.blocks
      L17_2 = "definition"
      L17_2 = L13_2[L17_2]
      L16_2 = L16_2[L17_2]
      if L16_2 then
        L17_2 = "trophy"
        L17_2 = L16_2[L17_2]
        if L17_2 then
          L17_2 = checkStoreLevelTrophy
          L18_2 = "trophy"
          L18_2 = L16_2[L18_2]
          L17_2(L18_2)
        end
      end
      ::lbl_869::
      L16_2 = getEpisodeMetadata
      L17_2 = "bonus"
      L16_2 = L16_2(L17_2)
      L17_2 = "levelNumberAdjustment"
      L16_2 = L16_2[L17_2]
      if not L14_2 then
        L17_2 = blockTable
        L17_2 = L17_2.blocks
        L18_2 = "definition"
        L18_2 = L13_2[L18_2]
        L17_2 = L17_2[L18_2]
        L18_2 = "ignoreFromLevelFile"
        L17_2 = L17_2[L18_2]
        L18_2 = true
        if L17_2 == L18_2 then
          L17_2 = getLevelMetadata
          L18_2 = levelName
          L17_2 = L17_2(L18_2)
          L18_2 = "type"
          L17_2 = L17_2[L18_2]
          if L17_2 ~= "bonus" then
            goto lbl_4691
          end
          L17_2 = objects
          L17_2 = L17_2.previousLevel
          L18_2 = nil
          if L17_2 == L18_2 then
            goto lbl_4691
          end
          L17_2 = blockTable
          L17_2 = L17_2.blocks
          L18_2 = "definition"
          L18_2 = L13_2[L18_2]
          L17_2 = L17_2[L18_2]
          L18_2 = "createFromTransition"
          L17_2 = L17_2[L18_2]
          if not L17_2 then
            goto lbl_4691
          end
        end
        L17_2 = isObjectAvailableForDevice
        L18_2 = "definition"
        L18_2 = L13_2[L18_2]
        L17_2 = L17_2(L18_2)
        if L17_2 then
          L17_2 = startedFromEditor
          if not L17_2 then
            L17_2 = blockTable
            L17_2 = L17_2.blocks
            L18_2 = "definition"
            L18_2 = L13_2[L18_2]
            L17_2 = L17_2[L18_2]
            L18_2 = "spriteObject"
            L17_2 = L17_2[L18_2]
            L18_2 = true
            if L17_2 == L18_2 then
              L17_2 = 0
              L18_2 = 0
              L19_2 = blockTable
              L19_2 = L19_2.blocks
              L20_2 = "definition"
              L20_2 = L13_2[L20_2]
              L19_2 = L19_2[L20_2]
              L20_2 = "guiObject"
              L19_2 = L19_2[L20_2]
              L20_2 = true
              if L19_2 == L20_2 then
                L19_2 = physicsToScreenTransform
                L20_2 = L13_2.x
                L21_2 = L13_2.y
                L19_2, L20_2 = L19_2(L20_2, L21_2)
                L18_2 = L20_2
                L17_2 = L19_2
              else
                L19_2 = physicsToWorldTransform
                L20_2 = L13_2.x
                L21_2 = L13_2.y
                L19_2, L20_2 = L19_2(L20_2, L21_2)
                L18_2 = L20_2
                L17_2 = L19_2
              end
              L19_2 = blockTable
              L19_2 = L19_2.blocks
              L20_2 = "definition"
              L20_2 = L13_2[L20_2]
              L19_2 = L19_2[L20_2]
              L20_2 = "scale"
              L19_2 = L19_2[L20_2]
              if not L19_2 then
                L19_2 = 1
              end
              L20_2 = objects
              L20_2 = L20_2.spriteObjects
              L21_2 = "name"
              L21_2 = L13_2[L21_2]
              L22_2 = {}
              L23_2 = "name"
              L24_2 = "name"
              L24_2 = L13_2[L24_2]
              L22_2[L23_2] = L24_2
              L22_2.x = L17_2
              L22_2.y = L18_2
              L23_2 = "angle"
              L24_2 = "angle"
              L24_2 = L13_2[L24_2]
              L22_2[L23_2] = L24_2
              L23_2 = "sprite"
              L24_2 = blockTable
              L24_2 = L24_2.blocks
              L25_2 = "definition"
              L25_2 = L13_2[L25_2]
              L24_2 = L24_2[L25_2]
              L25_2 = "sprite"
              L24_2 = L24_2[L25_2]
              L22_2[L23_2] = L24_2
              L23_2 = "scaleX"
              L22_2[L23_2] = L19_2
              L23_2 = "scaleY"
              L22_2[L23_2] = L19_2
              L23_2 = "onCreated"
              L24_2 = blockTable
              L24_2 = L24_2.blocks
              L25_2 = "definition"
              L25_2 = L13_2[L25_2]
              L24_2 = L24_2[L25_2]
              L25_2 = "onCreated"
              L24_2 = L24_2[L25_2]
              L22_2[L23_2] = L24_2
              L23_2 = "guiObject"
              L24_2 = blockTable
              L24_2 = L24_2.blocks
              L25_2 = "definition"
              L25_2 = L13_2[L25_2]
              L24_2 = L24_2[L25_2]
              L25_2 = "guiObject"
              L24_2 = L24_2[L25_2]
              L22_2[L23_2] = L24_2
              L23_2 = "definition"
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L22_2[L23_2] = L24_2
              L20_2[L21_2] = L22_2
              L20_2 = objects
              L20_2 = L20_2.spriteObjects
              L21_2 = "name"
              L21_2 = L13_2[L21_2]
              L20_2 = L20_2[L21_2]
              L21_2 = "onCreated"
              L20_2 = L20_2[L21_2]
              L21_2 = nil
              if L20_2 ~= L21_2 then
                L20_2 = addEventCall
                L21_2 = objects
                L21_2 = L21_2.spriteObjects
                L22_2 = "name"
                L22_2 = L13_2[L22_2]
                L21_2 = L21_2[L22_2]
                L22_2 = "onCreated"
                L21_2 = L21_2[L22_2]
                L22_2 = {}
                L23_2 = "name"
                L24_2 = "name"
                L24_2 = L13_2[L24_2]
                L22_2[L23_2] = L24_2
                L20_2(L21_2, L22_2)
              end
              L20_2 = blockTable
              L20_2 = L20_2.blocks
              L21_2 = "definition"
              L21_2 = L13_2[L21_2]
              L20_2 = L20_2[L21_2]
              L21_2 = "animateRotation"
              L20_2 = L20_2[L21_2]
              L21_2 = true
              if L20_2 == L21_2 then
                L20_2 = objects
                L20_2 = L20_2.animatedSprites
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L22_2 = "name"
                L22_2 = L13_2[L22_2]
                L20_2[L21_2] = L22_2
              end
              L20_2 = blockTable
              L20_2 = L20_2.blocks
              L21_2 = "definition"
              L21_2 = L13_2[L21_2]
              L20_2 = L20_2[L21_2]
              L21_2 = "animateScaleX"
              L20_2 = L20_2[L21_2]
              L21_2 = true
              if L20_2 == L21_2 then
                L20_2 = objects
                L20_2 = L20_2.animatedSprites
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L22_2 = "name"
                L22_2 = L13_2[L22_2]
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "animateScaleX"
                L22_2 = true
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "frequencyX"
                L22_2 = blockTable
                L22_2 = L22_2.blocks
                L23_2 = "definition"
                L23_2 = L13_2[L23_2]
                L22_2 = L22_2[L23_2]
                L23_2 = "scaleXFrequency"
                L22_2 = L22_2[L23_2]
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "amplitudeX"
                L22_2 = blockTable
                L22_2 = L22_2.blocks
                L23_2 = "definition"
                L23_2 = L13_2[L23_2]
                L22_2 = L22_2[L23_2]
                L23_2 = "scaleXAmplitude"
                L22_2 = L22_2[L23_2]
                L20_2[L21_2] = L22_2
              end
              L20_2 = blockTable
              L20_2 = L20_2.blocks
              L21_2 = "definition"
              L21_2 = L13_2[L21_2]
              L20_2 = L20_2[L21_2]
              L21_2 = "animateScaleY"
              L20_2 = L20_2[L21_2]
              L21_2 = true
              if L20_2 == L21_2 then
                L20_2 = objects
                L20_2 = L20_2.animatedSprites
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L22_2 = "name"
                L22_2 = L13_2[L22_2]
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "animateScaleY"
                L22_2 = true
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "frequencyY"
                L22_2 = blockTable
                L22_2 = L22_2.blocks
                L23_2 = "definition"
                L23_2 = L13_2[L23_2]
                L22_2 = L22_2[L23_2]
                L23_2 = "scaleYFrequency"
                L22_2 = L22_2[L23_2]
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "amplitudeY"
                L22_2 = blockTable
                L22_2 = L22_2.blocks
                L23_2 = "definition"
                L23_2 = L13_2[L23_2]
                L22_2 = L22_2[L23_2]
                L23_2 = "scaleYAmplitude"
                L22_2 = L22_2[L23_2]
                L20_2[L21_2] = L22_2
              end
              L20_2 = blockTable
              L20_2 = L20_2.blocks
              L21_2 = "definition"
              L21_2 = L13_2[L21_2]
              L20_2 = L20_2[L21_2]
              L21_2 = "animateRotation"
              L20_2 = L20_2[L21_2]
              L21_2 = true
              if L20_2 == L21_2 then
                L20_2 = objects
                L20_2 = L20_2.animatedSprites
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L22_2 = "name"
                L22_2 = L13_2[L22_2]
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "animateRotation"
                L22_2 = true
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "rotationFrequency"
                L22_2 = _G
                L22_2 = L22_2.math
                L23_2 = "random"
                L22_2 = L22_2[L23_2]
                L23_2 = blockTable
                L23_2 = L23_2.blocks
                L24_2 = "definition"
                L24_2 = L13_2[L24_2]
                L23_2 = L23_2[L24_2]
                L24_2 = "minRotationFrequency"
                L23_2 = L23_2[L24_2]
                L24_2 = blockTable
                L24_2 = L24_2.blocks
                L25_2 = "definition"
                L25_2 = L13_2[L25_2]
                L24_2 = L24_2[L25_2]
                L25_2 = "maxRotationFrequency"
                L24_2 = L24_2[L25_2]
                L22_2 = L22_2(L23_2, L24_2)
                L23_2 = _G
                L23_2 = L23_2.math
                L23_2 = L23_2.pi
                L22_2 = L22_2 * L23_2
                L23_2 = 180
                L22_2 = L22_2 / L23_2
                L20_2[L21_2] = L22_2
                L20_2 = objects
                L20_2 = L20_2.spriteObjects
                L21_2 = "name"
                L21_2 = L13_2[L21_2]
                L20_2 = L20_2[L21_2]
                L21_2 = "rotationAmplitude"
                L22_2 = blockTable
                L22_2 = L22_2.blocks
                L23_2 = "definition"
                L23_2 = L13_2[L23_2]
                L22_2 = L22_2[L23_2]
                L23_2 = "rotationAmplitude"
                L22_2 = L22_2[L23_2]
                L23_2 = _G
                L23_2 = L23_2.math
                L23_2 = L23_2.pi
                L22_2 = L22_2 * L23_2
                L23_2 = 180
                L22_2 = L22_2 / L23_2
                L20_2[L21_2] = L22_2
              end
          end
          else
            L17_2 = showEditor
            L18_2 = true
            if L17_2 == L18_2 then
              L17_2 = releaseBuild
              L18_2 = true
              if L17_2 ~= L18_2 then
                goto lbl_1364
              end
            end
            L17_2 = startedFromEditor
            if not L17_2 then
              L17_2 = blockTable
              L17_2 = L17_2.blocks
              L18_2 = "definition"
              L18_2 = L13_2[L18_2]
              L17_2 = L17_2[L18_2]
              L18_2 = "isCollectible"
              L17_2 = L17_2[L18_2]
              L18_2 = true
              if L17_2 ~= L18_2 then
                L17_2 = blockTable
                L17_2 = L17_2.blocks
                L18_2 = "definition"
                L18_2 = L13_2[L18_2]
                L17_2 = L17_2[L18_2]
                L18_2 = "levelFilterProperty"
                L17_2 = L17_2[L18_2]
                L18_2 = nil
                if L17_2 == L18_2 then
                  L17_2 = blockTable
                  L17_2 = L17_2.blocks
                  L18_2 = "definition"
                  L18_2 = L13_2[L18_2]
                  L17_2 = L17_2[L18_2]
                  L18_2 = "isMap"
                  L17_2 = L17_2[L18_2]
                  L18_2 = true
                  if L17_2 ~= L18_2 then
                    L17_2 = blockTable
                    L17_2 = L17_2.blocks
                    L18_2 = "definition"
                    L18_2 = L13_2[L18_2]
                    L17_2 = L17_2[L18_2]
                    L18_2 = "isMap2"
                    L17_2 = L17_2[L18_2]
                    L18_2 = true
                    if L17_2 ~= L18_2 then
                      goto lbl_1364
                    end
                  end
                end
              end
              L17_2 = blockTable
              L17_2 = L17_2.blocks
              L18_2 = "definition"
              L18_2 = L13_2[L18_2]
              L17_2 = L17_2[L18_2]
              L18_2 = "isCollectible"
              L17_2 = L17_2[L18_2]
              L18_2 = true
              if L17_2 == L18_2 then
                L17_2 = SettingsWrapper
                L19_2 = "isCollectibleFound"
                L18_2 = L17_2
                L17_2 = L17_2[L19_2]
                L19_2 = currentFolder
                L20_2 = levelName
                L17_2 = L17_2(L18_2, L19_2, L20_2)
                if not L17_2 then
                  goto lbl_1364
                end
              end
              L17_2 = blockTable
              L17_2 = L17_2.blocks
              L18_2 = "definition"
              L18_2 = L13_2[L18_2]
              L17_2 = L17_2[L18_2]
              L18_2 = "isMap"
              L17_2 = L17_2[L18_2]
              L18_2 = true
              if L17_2 == L18_2 then
                L17_2 = SettingsWrapper
                L19_2 = "isMapFound"
                L18_2 = L17_2
                L17_2 = L17_2[L19_2]
                L19_2 = currentFolder
                L17_2 = L17_2(L18_2, L19_2)
                if not L17_2 then
                  goto lbl_1364
                end
              end
              L17_2 = blockTable
              L17_2 = L17_2.blocks
              L18_2 = "definition"
              L18_2 = L13_2[L18_2]
              L17_2 = L17_2[L18_2]
              L18_2 = "isMap2"
              L17_2 = L17_2[L18_2]
              L18_2 = true
              if L17_2 == L18_2 then
                L17_2 = SettingsWrapper
                L19_2 = "isMap2Found"
                L18_2 = L17_2
                L17_2 = L17_2[L19_2]
                L19_2 = currentFolder
                L17_2 = L17_2(L18_2, L19_2)
                if not L17_2 then
                  goto lbl_1364
                end
              end
              L17_2 = blockTable
              L17_2 = L17_2.blocks
              L18_2 = "definition"
              L18_2 = L13_2[L18_2]
              L17_2 = L17_2[L18_2]
              L18_2 = "levelFilterProperty"
              L17_2 = L17_2[L18_2]
              L18_2 = nil
              if L17_2 == L18_2 then
                goto lbl_4691
              end
              L17_2 = SettingsWrapper
              L19_2 = "isObjectFilterPropertyStored"
              L18_2 = L17_2
              L17_2 = L17_2[L19_2]
              L19_2 = blockTable
              L19_2 = L19_2.blocks
              L20_2 = "definition"
              L20_2 = L13_2[L20_2]
              L19_2 = L19_2[L20_2]
              L20_2 = "levelFilterProperty"
              L19_2 = L19_2[L20_2]
              L17_2 = L17_2(L18_2, L19_2)
              L18_2 = true
              if L17_2 == L18_2 then
                goto lbl_4691
              end
            end
            ::lbl_1364::
            L17_2 = "scaleX"
            L17_2 = L13_2[L17_2]
            if not L17_2 then
              L17_2 = "scale"
              L17_2 = L13_2[L17_2]
            end
            L18_2 = "scaleY"
            L18_2 = L13_2[L18_2]
            if not L18_2 then
              L18_2 = "scale"
              L18_2 = L13_2[L18_2]
            end
            L19_2 = createObject
            L20_2 = blockTable
            L21_2 = "definition"
            L21_2 = L13_2[L21_2]
            L22_2 = "name"
            L22_2 = L13_2[L22_2]
            L23_2 = L13_2.x
            L24_2 = scaleFactor
            L23_2 = L23_2 * L24_2
            L24_2 = L13_2.y
            L25_2 = scaleFactor
            L24_2 = L24_2 * L25_2
            L25_2 = "radius"
            L25_2 = L12_2[L25_2]
            L26_2 = "width"
            L26_2 = L12_2[L26_2]
            L27_2 = "height"
            L27_2 = L12_2[L27_2]
            L28_2 = L17_2
            L29_2 = L18_2
            L30_2 = "vertices"
            L30_2 = L13_2[L30_2]
            L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
            L20_2 = objects
            L20_2 = L20_2.world
            L20_2 = L20_2[L19_2]
            L21_2 = "gravityFilterCategory"
            L22_2 = "gravityFilterCategory"
            L22_2 = L13_2[L22_2]
            L20_2[L21_2] = L22_2
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "pathItem"
            L21_2 = L21_2[L22_2]
            if not L21_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L22_2 = "pathItemInvisiblePoint"
              L21_2 = L21_2[L22_2]
              if not L21_2 then
                goto lbl_1801
              end
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "pathItemInvisiblePoint"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = "startNumber"
              L22_2 = "startNumber"
              L22_2 = L13_2[L22_2]
              L20_2[L21_2] = L22_2
              L21_2 = "pathItemInvisiblePoint"
              L22_2 = true
              L20_2[L21_2] = L22_2
            end
            L21_2 = "startNumberDecimal"
            L22_2 = "startNumberDecimal"
            L22_2 = L13_2[L22_2]
            if not L22_2 then
              L22_2 = 0
            end
            L20_2[L21_2] = L22_2
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "isAlternativeRoute"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = "isAlternativeRoute"
              L22_2 = true
              L20_2[L21_2] = L22_2
            end
            L21_2 = 1
            L22_2 = getEpisodeMetadata
            L23_2 = currentFolder
            L22_2 = L22_2(L23_2)
            L23_2 = "alternativeRouteFirstLevelNumber"
            L22_2 = L22_2[L23_2]
            if L22_2 then
              L22_2 = getEpisodeMetadata
              L23_2 = currentFolder
              L22_2 = L22_2(L23_2)
              L23_2 = "alternativeRouteFirstLevelNumber"
              L22_2 = L22_2[L23_2]
              L23_2 = 2
              L22_2 = L22_2[L23_2]
              if L22_2 then
                L22_2 = getEpisodeMetadata
                L23_2 = currentFolder
                L22_2 = L22_2(L23_2)
                L23_2 = "alternativeRouteFirstLevelNumber"
                L22_2 = L22_2[L23_2]
                L23_2 = 2
                L22_2 = L22_2[L23_2]
                L23_2 = "startNumber"
                L23_2 = L13_2[L23_2]
                if L22_2 >= L23_2 then
                  L22_2 = getEpisodeMetadata
                  L23_2 = currentFolder
                  L22_2 = L22_2(L23_2)
                  L23_2 = "alternativeRouteLastLevelNumber"
                  L22_2 = L22_2[L23_2]
                  L23_2 = 2
                  L22_2 = L22_2[L23_2]
                  L23_2 = "startNumber"
                  L23_2 = L13_2[L23_2]
                  if L22_2 <= L23_2 then
                    L21_2 = 2
                  end
                end
              end
            end
            L22_2 = blockTable
            L22_2 = L22_2.blocks
            L23_2 = "definition"
            L23_2 = L13_2[L23_2]
            L22_2 = L22_2[L23_2]
            L23_2 = "isAlternativeRoute"
            L22_2 = L22_2[L23_2]
            if L22_2 then
              L22_2 = SettingsWrapper
              L24_2 = "isMapFound"
              L23_2 = L22_2
              L22_2 = L22_2[L24_2]
              L24_2 = currentFolder
              L22_2 = L22_2(L23_2, L24_2)
              if not L22_2 then
                L22_2 = 1
                if L21_2 == L22_2 then
                  goto lbl_1528
                end
              end
            end
            L22_2 = SettingsWrapper
            L24_2 = "isMap2Found"
            L23_2 = L22_2
            L22_2 = L22_2[L24_2]
            L24_2 = currentFolder
            L22_2 = L22_2(L23_2, L24_2)
            if not L22_2 then
              L22_2 = 2
              ::lbl_1528::
              if L21_2 == L22_2 then
                L22_2 = "alpha"
                L23_2 = pathItemDefinition
                L24_2 = "lockedAlternativeAlpha"
                L23_2 = L23_2[L24_2]
                L20_2[L22_2] = L23_2
              end
            end
            L22_2 = _G
            L23_2 = "table"
            L22_2 = L22_2[L23_2]
            L23_2 = "insert"
            L22_2 = L22_2[L23_2]
            L23_2 = objects
            L23_2 = L23_2.pathItems
            L24_2 = L20_2
            L22_2(L23_2, L24_2)
            L22_2 = getEpisodeMetadata
            L23_2 = currentFolder
            L22_2 = L22_2(L23_2)
            L23_2 = "alternativeRouteStartLevelNumber"
            L22_2 = L22_2[L23_2]
            if L22_2 then
              L22_2 = getEpisodeMetadata
              L23_2 = currentFolder
              L22_2 = L22_2(L23_2)
              L23_2 = "alternativeRouteStartLevelNumber"
              L22_2 = L22_2[L23_2]
              L23_2 = 1
              L22_2 = L22_2[L23_2]
              L23_2 = "startNumber"
              L23_2 = L13_2[L23_2]
              if L22_2 == L23_2 then
                goto lbl_1587
              end
            end
            L22_2 = getEpisodeMetadata
            L23_2 = currentFolder
            L22_2 = L22_2(L23_2)
            L23_2 = "alternativeRouteStartLevelNumber"
            L22_2 = L22_2[L23_2]
            if L22_2 then
              L22_2 = getEpisodeMetadata
              L23_2 = currentFolder
              L22_2 = L22_2(L23_2)
              L23_2 = "alternativeRouteStartLevelNumber"
              L22_2 = L22_2[L23_2]
              L23_2 = 2
              L22_2 = L22_2[L23_2]
              if L22_2 then
                L22_2 = getEpisodeMetadata
                L23_2 = currentFolder
                L22_2 = L22_2(L23_2)
                L23_2 = "alternativeRouteStartLevelNumber"
                L22_2 = L22_2[L23_2]
                L23_2 = 2
                L22_2 = L22_2[L23_2]
                L23_2 = "startNumber"
                L23_2 = L13_2[L23_2]
                ::lbl_1587::
                if L22_2 == L23_2 then
                  L22_2 = 1
                  L23_2 = getEpisodeMetadata
                  L24_2 = currentFolder
                  L23_2 = L23_2(L24_2)
                  L24_2 = "alternativeRouteStartLevelNumber"
                  L23_2 = L23_2[L24_2]
                  L24_2 = 2
                  L23_2 = L23_2[L24_2]
                  if L23_2 then
                    L23_2 = getEpisodeMetadata
                    L24_2 = currentFolder
                    L23_2 = L23_2(L24_2)
                    L24_2 = "alternativeRouteStartLevelNumber"
                    L23_2 = L23_2[L24_2]
                    L24_2 = 2
                    L23_2 = L23_2[L24_2]
                    L24_2 = "startNumber"
                    L24_2 = L13_2[L24_2]
                    if L23_2 == L24_2 then
                      L22_2 = 2
                    end
                  end
                  L23_2 = deepCopy
                  L24_2 = L20_2
                  L23_2 = L23_2(L24_2)
                  L24_2 = "name"
                  L25_2 = "name"
                  L25_2 = L23_2[L25_2]
                  L26_2 = "_PATHSTART"
                  L25_2 = L25_2 .. L26_2
                  L23_2[L24_2] = L25_2
                  L24_2 = "startNumber"
                  L25_2 = getEpisodeMetadata
                  L26_2 = currentFolder
                  L25_2 = L25_2(L26_2)
                  L26_2 = "alternativeRouteFirstLevelNumber"
                  L25_2 = L25_2[L26_2]
                  L25_2 = L25_2[L22_2]
                  L26_2 = 1
                  L25_2 = L25_2 - L26_2
                  L23_2[L24_2] = L25_2
                  L24_2 = "startNumberDecimal"
                  L25_2 = 9
                  L23_2[L24_2] = L25_2
                  L24_2 = "alternativeStartNumber"
                  L25_2 = getEpisodeMetadata
                  L26_2 = currentFolder
                  L25_2 = L25_2(L26_2)
                  L26_2 = "alternativeRouteStartLevelNumber"
                  L25_2 = L25_2[L26_2]
                  L25_2 = L25_2[L22_2]
                  L23_2[L24_2] = L25_2
                  L24_2 = "pathStartPointOnly"
                  L25_2 = true
                  L23_2[L24_2] = L25_2
                  L24_2 = _G
                  L25_2 = "table"
                  L24_2 = L24_2[L25_2]
                  L25_2 = "insert"
                  L24_2 = L24_2[L25_2]
                  L25_2 = objects
                  L25_2 = L25_2.pathItems
                  L26_2 = L23_2
                  L24_2(L25_2, L26_2)
                  L24_2 = deepCopy
                  L25_2 = L23_2
                  L24_2 = L24_2(L25_2)
                  L25_2 = "startNumberDecimal"
                  L26_2 = 8
                  L24_2[L25_2] = L26_2
                  L25_2 = "name"
                  L26_2 = "name"
                  L26_2 = L24_2[L26_2]
                  L27_2 = "_PATHSTART2"
                  L26_2 = L26_2 .. L27_2
                  L24_2[L25_2] = L26_2
                  L25_2 = _G
                  L26_2 = "table"
                  L25_2 = L25_2[L26_2]
                  L26_2 = "insert"
                  L25_2 = L25_2[L26_2]
                  L26_2 = objects
                  L26_2 = L26_2.pathItems
                  L27_2 = L24_2
                  L25_2(L26_2, L27_2)
                end
              end
            end
            L22_2 = getEpisodeMetadata
            L23_2 = currentFolder
            L22_2 = L22_2(L23_2)
            L23_2 = "alternativeRouteEndLevelNumber"
            L22_2 = L22_2[L23_2]
            if L22_2 then
              L22_2 = getEpisodeMetadata
              L23_2 = currentFolder
              L22_2 = L22_2(L23_2)
              L23_2 = "alternativeRouteEndLevelNumber"
              L22_2 = L22_2[L23_2]
              L23_2 = 1
              L22_2 = L22_2[L23_2]
              L23_2 = "startNumber"
              L23_2 = L13_2[L23_2]
              if L22_2 == L23_2 then
                goto lbl_1717
              end
            end
            L22_2 = getEpisodeMetadata
            L23_2 = currentFolder
            L22_2 = L22_2(L23_2)
            L23_2 = "alternativeRouteEndLevelNumber"
            L22_2 = L22_2[L23_2]
            if L22_2 then
              L22_2 = getEpisodeMetadata
              L23_2 = currentFolder
              L22_2 = L22_2(L23_2)
              L23_2 = "alternativeRouteEndLevelNumber"
              L22_2 = L22_2[L23_2]
              L23_2 = 2
              L22_2 = L22_2[L23_2]
              if L22_2 then
                L22_2 = getEpisodeMetadata
                L23_2 = currentFolder
                L22_2 = L22_2(L23_2)
                L23_2 = "alternativeRouteEndLevelNumber"
                L22_2 = L22_2[L23_2]
                L23_2 = 2
                L22_2 = L22_2[L23_2]
                L23_2 = "startNumber"
                L23_2 = L13_2[L23_2]
                ::lbl_1717::
                if L22_2 == L23_2 then
                  L22_2 = 1
                  L23_2 = getEpisodeMetadata
                  L24_2 = currentFolder
                  L23_2 = L23_2(L24_2)
                  L24_2 = "alternativeRouteEndLevelNumber"
                  L23_2 = L23_2[L24_2]
                  L24_2 = 2
                  L23_2 = L23_2[L24_2]
                  if L23_2 then
                    L23_2 = getEpisodeMetadata
                    L24_2 = currentFolder
                    L23_2 = L23_2(L24_2)
                    L24_2 = "alternativeRouteEndLevelNumber"
                    L23_2 = L23_2[L24_2]
                    L24_2 = 2
                    L23_2 = L23_2[L24_2]
                    L24_2 = "startNumber"
                    L24_2 = L13_2[L24_2]
                    if L23_2 == L24_2 then
                      L22_2 = 2
                    end
                  end
                  L23_2 = deepCopy
                  L24_2 = L20_2
                  L23_2 = L23_2(L24_2)
                  L24_2 = "name"
                  L25_2 = "name"
                  L25_2 = L23_2[L25_2]
                  L26_2 = "_PATHEND"
                  L25_2 = L25_2 .. L26_2
                  L23_2[L24_2] = L25_2
                  L24_2 = "startNumber"
                  L25_2 = getEpisodeMetadata
                  L26_2 = currentFolder
                  L25_2 = L25_2(L26_2)
                  L26_2 = "alternativeRouteLastLevelNumber"
                  L25_2 = L25_2[L26_2]
                  L25_2 = L25_2[L22_2]
                  L23_2[L24_2] = L25_2
                  L24_2 = "alternativeStartNumber"
                  L25_2 = getEpisodeMetadata
                  L26_2 = currentFolder
                  L25_2 = L25_2(L26_2)
                  L26_2 = "alternativeRouteEndLevelNumber"
                  L25_2 = L25_2[L26_2]
                  L25_2 = L25_2[L22_2]
                  L23_2[L24_2] = L25_2
                  L24_2 = "startNumberDecimal"
                  L25_2 = 1
                  L23_2[L24_2] = L25_2
                  L24_2 = SettingsWrapper
                  L26_2 = "isMapFound"
                  L25_2 = L24_2
                  L24_2 = L24_2[L26_2]
                  L26_2 = currentFolder
                  L24_2 = L24_2(L25_2, L26_2)
                  if not L24_2 then
                    L24_2 = 1
                    if L22_2 == L24_2 then
                      goto lbl_1787
                    end
                  end
                  L24_2 = SettingsWrapper
                  L26_2 = "isMap2Found"
                  L25_2 = L24_2
                  L24_2 = L24_2[L26_2]
                  L26_2 = currentFolder
                  L24_2 = L24_2(L25_2, L26_2)
                  if not L24_2 then
                    L24_2 = 2
                    ::lbl_1787::
                    if L22_2 == L24_2 then
                      L24_2 = "alpha"
                      L25_2 = pathItemDefinition
                      L26_2 = "lockedAlternativeAlpha"
                      L25_2 = L25_2[L26_2]
                      L23_2[L24_2] = L25_2
                    end
                  end
                  L24_2 = _G
                  L25_2 = "table"
                  L24_2 = L24_2[L25_2]
                  L25_2 = "insert"
                  L24_2 = L24_2[L25_2]
                  L25_2 = objects
                  L25_2 = L25_2.pathItems
                  L26_2 = L23_2
                  L24_2(L25_2, L26_2)
                end
              end
            end
            ::lbl_1801::
            L21_2 = "triggerEvents"
            L21_2 = L13_2[L21_2]
            if L21_2 then
              L21_2 = "triggerEvents"
              L22_2 = {}
              L20_2[L21_2] = L22_2
              L21_2 = _G
              L21_2 = L21_2.pairs
              L22_2 = "triggerEvents"
              L22_2 = L13_2[L22_2]
              L21_2, L22_2, L23_2 = L21_2(L22_2)
              for L24_2, L25_2 in L21_2, L22_2, L23_2 do
                L26_2 = "triggerEvents"
                L26_2 = L20_2[L26_2]
                L27_2 = "triggerEvents"
                L27_2 = L20_2[L27_2]
                L27_2 = L27_2[L24_2]
                if not L27_2 then
                  L27_2 = {}
                end
                L26_2[L24_2] = L27_2
                L26_2 = _G
                L26_2 = L26_2.pairs
                L27_2 = L25_2
                L26_2, L27_2, L28_2 = L26_2(L27_2)
                for L29_2, L30_2 in L26_2, L27_2, L28_2 do
                  L31_2 = "triggerEvents"
                  L31_2 = L20_2[L31_2]
                  L31_2 = L31_2[L24_2]
                  L32_2 = "triggerEvents"
                  L32_2 = L20_2[L32_2]
                  L32_2 = L32_2[L24_2]
                  L32_2 = L32_2[L29_2]
                  if not L32_2 then
                    L32_2 = {}
                  end
                  L31_2[L29_2] = L32_2
                  L31_2 = _G
                  L31_2 = L31_2.ipairs
                  L32_2 = L30_2
                  L31_2, L32_2, L33_2 = L31_2(L32_2)
                  for L34_2, L35_2 in L31_2, L32_2, L33_2 do
                    L36_2 = _G
                    L37_2 = "table"
                    L36_2 = L36_2[L37_2]
                    L37_2 = "insert"
                    L36_2 = L36_2[L37_2]
                    L37_2 = "triggerEvents"
                    L37_2 = L20_2[L37_2]
                    L37_2 = L37_2[L24_2]
                    L37_2 = L37_2[L29_2]
                    L38_2 = L35_2
                    L36_2(L37_2, L38_2)
                    L36_2 = "onDestroyed"
                    if L24_2 == L36_2 then
                      L36_2 = "removeGravityFilterCategory"
                      if L35_2 == L36_2 then
                        L36_2 = blockTable
                        L36_2 = L36_2.blocks
                        L37_2 = "definition"
                        L37_2 = L13_2[L37_2]
                        L36_2 = L36_2[L37_2]
                        L37_2 = "forceEffectColor"
                        L36_2 = L36_2[L37_2]
                        if L36_2 then
                          L36_2 = _G
                          L37_2 = "table"
                          L36_2 = L36_2[L37_2]
                          L37_2 = "insert"
                          L36_2 = L36_2[L37_2]
                          L37_2 = L6_2
                          L38_2 = {}
                          L39_2 = "name"
                          L38_2[L39_2] = L29_2
                          L39_2 = "forceEffectColor"
                          L40_2 = blockTable
                          L40_2 = L40_2.blocks
                          L41_2 = "definition"
                          L41_2 = L13_2[L41_2]
                          L40_2 = L40_2[L41_2]
                          L41_2 = "forceEffectColor"
                          L40_2 = L40_2[L41_2]
                          L38_2[L39_2] = L40_2
                          L36_2(L37_2, L38_2)
                        end
                      end
                    end
                  end
                end
              end
            end
            L21_2 = native_setWaterDensity
            L22_2 = L19_2
            L23_2 = getWaterDensity
            L24_2 = L13_2
            L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L23_2(L24_2)
            L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "disableRotation"
            L21_2 = L21_2[L22_2]
            L22_2 = true
            if L21_2 == L22_2 then
              L21_2 = setObjectParameter
              L22_2 = L19_2
              L23_2 = 10
              L24_2 = 1
              L21_2(L22_2, L23_2, L24_2)
            end
            L21_2 = startedFromEditor
            L22_2 = true
            if L21_2 ~= L22_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L22_2 = "isVisible"
              L21_2 = L21_2[L22_2]
              L22_2 = false
              if L21_2 == L22_2 then
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 33
                L24_2 = 0
                L21_2(L22_2, L23_2, L24_2)
              end
            end
            L21_2 = getLevelMetadata
            L22_2 = levelName
            L21_2 = L21_2(L22_2)
            L22_2 = "ignoreGravityCenters"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L22_2 = "sensorType"
              L21_2 = L21_2[L22_2]
              if L21_2 == "gravitation" then
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 33
                L24_2 = 0
                L21_2(L22_2, L23_2, L24_2)
              end
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = nil
            if L21_2 ~= L22_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L22_2 = "animateRotation"
              L21_2 = L21_2[L22_2]
              L22_2 = true
              if L21_2 == L22_2 then
                L21_2 = objects
                L21_2 = L21_2.animatedObjects
                L22_2 = "name"
                L22_2 = L13_2[L22_2]
                L21_2[L19_2] = L22_2
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "animateRotation"
                L23_2 = true
                L21_2[L22_2] = L23_2
                L21_2 = blockTable
                L21_2 = L21_2.blocks
                L22_2 = "definition"
                L22_2 = L13_2[L22_2]
                L21_2 = L21_2[L22_2]
                L22_2 = "minRotationFrequency"
                L21_2 = L21_2[L22_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = blockTable
                  L21_2 = L21_2.blocks
                  L22_2 = "definition"
                  L22_2 = L13_2[L22_2]
                  L21_2 = L21_2[L22_2]
                  L22_2 = "maxRotationFrequency"
                  L21_2 = L21_2[L22_2]
                  L22_2 = nil
                  if L21_2 ~= L22_2 then
                    L21_2 = objects
                    L21_2 = L21_2.world
                    L21_2 = L21_2[L19_2]
                    L22_2 = "rotationFrequency"
                    L23_2 = _G
                    L23_2 = L23_2.math
                    L24_2 = "random"
                    L23_2 = L23_2[L24_2]
                    L24_2 = blockTable
                    L24_2 = L24_2.blocks
                    L25_2 = "definition"
                    L25_2 = L13_2[L25_2]
                    L24_2 = L24_2[L25_2]
                    L25_2 = "minRotationFrequency"
                    L24_2 = L24_2[L25_2]
                    L25_2 = blockTable
                    L25_2 = L25_2.blocks
                    L26_2 = "definition"
                    L26_2 = L13_2[L26_2]
                    L25_2 = L25_2[L26_2]
                    L26_2 = "maxRotationFrequency"
                    L25_2 = L25_2[L26_2]
                    L23_2 = L23_2(L24_2, L25_2)
                    L24_2 = _G
                    L24_2 = L24_2.math
                    L24_2 = L24_2.pi
                    L23_2 = L23_2 * L24_2
                    L24_2 = 180
                    L23_2 = L23_2 / L24_2
                    L21_2[L22_2] = L23_2
                    L21_2 = objects
                    L21_2 = L21_2.world
                    L21_2 = L21_2[L19_2]
                    L22_2 = "rotationAmplitude"
                    L23_2 = _G
                    L23_2 = L23_2.math
                    L24_2 = "random"
                    L23_2 = L23_2[L24_2]
                    L24_2 = blockTable
                    L24_2 = L24_2.blocks
                    L25_2 = "definition"
                    L25_2 = L13_2[L25_2]
                    L24_2 = L24_2[L25_2]
                    L25_2 = "minRotationAmplitude"
                    L24_2 = L24_2[L25_2]
                    L25_2 = 100
                    L24_2 = L25_2 * L24_2
                    L25_2 = blockTable
                    L25_2 = L25_2.blocks
                    L26_2 = "definition"
                    L26_2 = L13_2[L26_2]
                    L25_2 = L25_2[L26_2]
                    L26_2 = "maxRotationAmplitude"
                    L25_2 = L25_2[L26_2]
                    L26_2 = 100
                    L25_2 = L26_2 * L25_2
                    L23_2 = L23_2(L24_2, L25_2)
                    L24_2 = 100
                    L23_2 = L23_2 / L24_2
                    L24_2 = _G
                    L24_2 = L24_2.math
                    L24_2 = L24_2.pi
                    L23_2 = L23_2 * L24_2
                    L24_2 = 180
                    L23_2 = L23_2 / L24_2
                    L21_2[L22_2] = L23_2
                  end
                end
              end
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "animateScaleX"
            L21_2 = L21_2[L22_2]
            L22_2 = true
            if L21_2 == L22_2 then
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "animateScaleX"
              L23_2 = true
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.animatedObjects
              L22_2 = "name"
              L22_2 = L13_2[L22_2]
              L21_2[L19_2] = L22_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "originalScaleX"
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "scale"
              L23_2 = L23_2[L24_2]
              if not L23_2 then
                L23_2 = 1
              end
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "frequencyX"
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "scaleXFrequency"
              L23_2 = L23_2[L24_2]
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "amplitudeX"
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "scaleXAmplitude"
              L23_2 = L23_2[L24_2]
              L21_2[L22_2] = L23_2
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "animateScaleY"
            L21_2 = L21_2[L22_2]
            L22_2 = true
            if L21_2 == L22_2 then
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "animateScaleY"
              L23_2 = true
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.animatedObjects
              L22_2 = "name"
              L22_2 = L13_2[L22_2]
              L21_2[L19_2] = L22_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "originalScaleY"
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "scale"
              L23_2 = L23_2[L24_2]
              if not L23_2 then
                L23_2 = 1
              end
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "frequencyY"
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "scaleYFrequency"
              L23_2 = L23_2[L24_2]
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "amplitudeY"
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "scaleYAmplitude"
              L23_2 = L23_2[L24_2]
              L21_2[L22_2] = L23_2
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "pivotOffsetX"
            L21_2 = L21_2[L22_2]
            L22_2 = nil
            if L21_2 == L22_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L22_2 = "pivotOffsetY"
              L21_2 = L21_2[L22_2]
              L22_2 = nil
              if L21_2 == L22_2 then
                goto lbl_2237
              end
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "pivotOffsetX"
            L21_2 = L21_2[L22_2]
            if not L21_2 then
              L21_2 = 0
            end
            L22_2 = blockTable
            L22_2 = L22_2.blocks
            L23_2 = "definition"
            L23_2 = L13_2[L23_2]
            L22_2 = L22_2[L23_2]
            L23_2 = "pivotOffsetY"
            L22_2 = L22_2[L23_2]
            if not L22_2 then
              L22_2 = 0
            end
            L23_2 = setPivotOffset
            L24_2 = "name"
            L24_2 = L13_2[L24_2]
            L25_2 = L21_2
            L26_2 = L22_2
            L23_2(L24_2, L25_2, L26_2)
            ::lbl_2237::
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "randomizeAnimationStart"
            L21_2 = L21_2[L22_2]
            L22_2 = true
            if L21_2 == L22_2 then
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "randomizeAnimationStart"
              L23_2 = _G
              L23_2 = L23_2.math
              L24_2 = "random"
              L23_2 = L23_2[L24_2]
              L23_2 = L23_2()
              L24_2 = 60
              L23_2 = L23_2 * L24_2
              L21_2[L22_2] = L23_2
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "decorations"
            L21_2 = L21_2[L22_2]
            L22_2 = nil
            if L21_2 ~= L22_2 then
              L21_2 = setDecorationObjects
              L22_2 = L19_2
              L21_2(L22_2)
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "isLevelButton"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L22_2 = "meta"
              L21_2 = L21_2[L22_2]
              L22_2 = "startNumber"
              L22_2 = L13_2[L22_2]
              L23_2 = nil
              if L22_2 ~= L23_2 then
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "startNumber"
                L24_2 = "startNumber"
                L24_2 = L13_2[L24_2]
                L22_2[L23_2] = L24_2
              else
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "startNumber"
                L24_2 = 1
                L22_2[L23_2] = L24_2
              end
              L22_2 = "episodeType"
              L22_2 = L13_2[L22_2]
              L23_2 = nil
              if L22_2 ~= L23_2 then
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "episodeType"
                L24_2 = "episodeType"
                L24_2 = L13_2[L24_2]
                L22_2[L23_2] = L24_2
              else
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "episodeType"
                L24_2 = 1
                L22_2[L23_2] = L24_2
              end
              L22_2 = "URL_BUTTON"
              if L21_2 == L22_2 then
                L22_2 = ui
                L23_2 = "ScallableButton"
                L22_2 = L22_2[L23_2]
                L23_2 = L22_2
                L22_2 = L22_2.new
                L24_2 = {}
                L25_2 = "physicsObject"
                L24_2[L25_2] = L13_2
                L25_2 = "name"
                L24_2[L25_2] = L19_2
                L25_2 = "inWorld"
                L26_2 = true
                L24_2[L25_2] = L26_2
                L22_2 = L22_2(L23_2, L24_2)
                L23_2 = "floorCoordinates"
                L24_2 = false
                L22_2[L23_2] = L24_2
                L23_2 = "returnValue"
                L24_2 = "URL_BUTTON_CLICKED"
                L22_2[L23_2] = L24_2
                L23_2 = menuManager
                L25_2 = "getRoot"
                L24_2 = L23_2
                L23_2 = L23_2[L25_2]
                L23_2 = L23_2(L24_2)
                L24_2 = nil
                if L23_2 ~= L24_2 then
                  L23_2 = menuManager
                  L25_2 = "getRoot"
                  L24_2 = L23_2
                  L23_2 = L23_2[L25_2]
                  L23_2 = L23_2(L24_2)
                  L25_2 = "addChild"
                  L24_2 = L23_2
                  L23_2 = L23_2[L25_2]
                  L25_2 = L22_2
                  L23_2(L24_2, L25_2)
                end
              else
                L22_2 = levelName
                L23_2 = "LevelSelection"
                if L22_2 == L23_2 then
                  L22_2 = startedFromEditor
                  if not L22_2 then
                    L22_2 = actions
                    L23_2 = "myLevels"
                    L22_2 = L22_2[L23_2]
                    L23_2 = currentFolder
                    L22_2 = L22_2[L23_2]
                    L23_2 = "startNumber"
                    L23_2 = L13_2[L23_2]
                    L22_2 = L22_2[L23_2]
                    L23_2 = SettingsWrapper
                    L25_2 = "isOppositeSideCharacterEnabledForSide"
                    L24_2 = L23_2
                    L23_2 = L23_2[L25_2]
                    L25_2 = loadedObjects
                    L26_2 = "isDarkSideLevel"
                    L25_2 = L25_2[L26_2]
                    L23_2 = L23_2(L24_2, L25_2)
                    if not L23_2 then
                      L23_2 = SettingsWrapper
                      L25_2 = "isOppositeSideCharacterEnabledInLevel"
                      L24_2 = L23_2
                      L23_2 = L23_2[L25_2]
                      L25_2 = L22_2
                      L23_2 = L23_2(L24_2, L25_2)
                    end
                    L24_2 = nil
                    L25_2 = blockTable
                    L25_2 = L25_2.blocks
                    L26_2 = "definition"
                    L26_2 = L13_2[L26_2]
                    L25_2 = L25_2[L26_2]
                    L26_2 = "isBonusLevel"
                    L25_2 = L25_2[L26_2]
                    if L25_2 then
                      L25_2 = ui
                      L26_2 = "BonusLevelButton"
                      L25_2 = L25_2[L26_2]
                      L26_2 = L25_2
                      L25_2 = L25_2.new
                      L27_2 = {}
                      L28_2 = "name"
                      L27_2[L28_2] = L19_2
                      L28_2 = "physicsObject"
                      L27_2[L28_2] = L13_2
                      L28_2 = "isDark"
                      L29_2 = loadedObjects
                      L30_2 = "isDarkSideLevel"
                      L29_2 = L29_2[L30_2]
                      L30_2 = true
                      L29_2 = L29_2 == L30_2
                      L27_2[L28_2] = L29_2
                      L28_2 = "bonusLevelAchievement"
                      L29_2 = getLevelMetadata
                      L30_2 = L22_2
                      L29_2 = L29_2(L30_2)
                      L30_2 = "bonusLevelAchievement"
                      L29_2 = L29_2[L30_2]
                      L27_2[L28_2] = L29_2
                      L28_2 = "inactive"
                      L29_2 = isLevelUnlocked
                      L30_2 = currentFolder
                      L31_2 = "startNumber"
                      L31_2 = L13_2[L31_2]
                      L29_2 = L29_2(L30_2, L31_2)
                      L29_2 = not L29_2
                      L27_2[L28_2] = L29_2
                      L25_2 = L25_2(L26_2, L27_2)
                      L24_2 = L25_2
                      L25_2 = "spriteBack"
                      L26_2 = blockTable
                      L26_2 = L26_2.blocks
                      L27_2 = "definition"
                      L27_2 = L13_2[L27_2]
                      L26_2 = L26_2[L27_2]
                      L27_2 = "spriteBack"
                      L26_2 = L26_2[L27_2]
                      L24_2[L25_2] = L26_2
                      L25_2 = "sprite"
                      L26_2 = blockTable
                      L26_2 = L26_2.blocks
                      L27_2 = "definition"
                      L27_2 = L13_2[L27_2]
                      L26_2 = L26_2[L27_2]
                      L27_2 = "sprite"
                      L26_2 = L26_2[L27_2]
                      L24_2[L25_2] = L26_2
                      if L23_2 then
                        L25_2 = loadedObjects
                        L26_2 = "isDarkSideLevel"
                        L25_2 = L25_2[L26_2]
                        if L25_2 then
                          L25_2 = "sprite"
                          L26_2 = blockTable
                          L26_2 = L26_2.blocks
                          L27_2 = "definition"
                          L27_2 = L13_2[L27_2]
                          L26_2 = L26_2[L27_2]
                          L27_2 = "spriteOppositeSideBird"
                          L26_2 = L26_2[L27_2]
                          L24_2[L25_2] = L26_2
                        else
                          L25_2 = "sprite"
                          L26_2 = blockTable
                          L26_2 = L26_2.blocks
                          L27_2 = "definition"
                          L27_2 = L13_2[L27_2]
                          L26_2 = L26_2[L27_2]
                          L27_2 = "spriteOppositeSidePork"
                          L26_2 = L26_2[L27_2]
                          L24_2[L25_2] = L26_2
                        end
                      end
                      L25_2 = "starsYOffset"
                      L26_2 = blockTable
                      L26_2 = L26_2.blocks
                      L27_2 = "definition"
                      L27_2 = L13_2[L27_2]
                      L26_2 = L26_2[L27_2]
                      L27_2 = "starsYOffset"
                      L26_2 = L26_2[L27_2]
                      L24_2[L25_2] = L26_2
                      L25_2 = "progressYOffset"
                      L26_2 = blockTable
                      L26_2 = L26_2.blocks
                      L27_2 = "definition"
                      L27_2 = L13_2[L27_2]
                      L26_2 = L26_2[L27_2]
                      L27_2 = "progressYOffset"
                      L26_2 = L26_2[L27_2]
                      L24_2[L25_2] = L26_2
                      L25_2 = "playButtonYOffset"
                      L26_2 = blockTable
                      L26_2 = L26_2.blocks
                      L27_2 = "definition"
                      L27_2 = L13_2[L27_2]
                      L26_2 = L26_2[L27_2]
                      L27_2 = "playButtonYOffset"
                      L26_2 = L26_2[L27_2]
                      L24_2[L25_2] = L26_2
                      L25_2 = "playButtonScale"
                      L26_2 = blockTable
                      L26_2 = L26_2.blocks
                      L27_2 = "definition"
                      L27_2 = L13_2[L27_2]
                      L26_2 = L26_2[L27_2]
                      L27_2 = "playButtonScale"
                      L26_2 = L26_2[L27_2]
                      L24_2[L25_2] = L26_2
                      L25_2 = "lockScale"
                      L26_2 = blockTable
                      L26_2 = L26_2.blocks
                      L27_2 = "definition"
                      L27_2 = L13_2[L27_2]
                      L26_2 = L26_2[L27_2]
                      L27_2 = "lockScale"
                      L26_2 = L26_2[L27_2]
                      L24_2[L25_2] = L26_2
                    else
                      L25_2 = ui
                      L26_2 = "LevelButton"
                      L25_2 = L25_2[L26_2]
                      L26_2 = L25_2
                      L25_2 = L25_2.new
                      L27_2 = {}
                      L28_2 = "name"
                      L27_2[L28_2] = L19_2
                      L28_2 = "physicsObject"
                      L27_2[L28_2] = L13_2
                      L28_2 = "disabled"
                      L29_2 = isLevelUnlocked
                      L30_2 = currentFolder
                      L31_2 = "startNumber"
                      L31_2 = L13_2[L31_2]
                      L29_2 = L29_2(L30_2, L31_2)
                      L29_2 = not L29_2
                      L27_2[L28_2] = L29_2
                      L25_2 = L25_2(L26_2, L27_2)
                      L24_2 = L25_2
                      if L23_2 then
                        L25_2 = blockTable
                        L25_2 = L25_2.blocks
                        L26_2 = "definition"
                        L26_2 = L13_2[L26_2]
                        L25_2 = L25_2[L26_2]
                        L26_2 = "spriteDarkSideOtherSideOpened"
                        L25_2 = L25_2[L26_2]
                        L26_2 = blockTable
                        L26_2 = L26_2.blocks
                        L27_2 = "definition"
                        L27_2 = L13_2[L27_2]
                        L26_2 = L26_2[L27_2]
                        L27_2 = "spriteOtherSideOpened"
                        L26_2 = L26_2[L27_2]
                        if L26_2 then
                          L27_2 = loadedObjects
                          L28_2 = "isDarkSideLevel"
                          L27_2 = L27_2[L28_2]
                          if not L27_2 then
                            L27_2 = "image"
                            L24_2[L27_2] = L26_2
                          end
                        end
                        if L25_2 then
                          L27_2 = loadedObjects
                          L28_2 = "isDarkSideLevel"
                          L27_2 = L27_2[L28_2]
                          if L27_2 then
                            L27_2 = "image"
                            L24_2[L27_2] = L25_2
                          end
                        end
                      else
                        L25_2 = blockTable
                        L25_2 = L25_2.blocks
                        L26_2 = "definition"
                        L26_2 = L13_2[L26_2]
                        L25_2 = L25_2[L26_2]
                        L26_2 = "spriteDarkSide"
                        L25_2 = L25_2[L26_2]
                        if L25_2 then
                          L26_2 = loadedObjects
                          L27_2 = "isDarkSideLevel"
                          L26_2 = L26_2[L27_2]
                          if L26_2 then
                            L26_2 = "image"
                            L24_2[L26_2] = L25_2
                          end
                        end
                      end
                      L25_2 = loadedObjects
                      L26_2 = "isDarkSideLevel"
                      L25_2 = L25_2[L26_2]
                      if L25_2 then
                        L25_2 = blockTable
                        L25_2 = L25_2.blocks
                        L26_2 = "definition"
                        L26_2 = L13_2[L26_2]
                        L25_2 = L25_2[L26_2]
                        L26_2 = "openingAnimationDarkSide"
                        L25_2 = L25_2[L26_2]
                        if L25_2 then
                          if L23_2 then
                            L25_2 = blockTable
                            L25_2 = L25_2.blocks
                            L26_2 = "definition"
                            L26_2 = L13_2[L26_2]
                            L25_2 = L25_2[L26_2]
                            L26_2 = "openingAnimationDarkSideOtherSideOpen"
                            L25_2 = L25_2[L26_2]
                            if L25_2 then
                              L25_2 = "openingAnimation"
                              L26_2 = blockTable
                              L26_2 = L26_2.blocks
                              L27_2 = "definition"
                              L27_2 = L13_2[L27_2]
                              L26_2 = L26_2[L27_2]
                              L27_2 = "openingAnimationDarkSideOtherSideOpen"
                              L26_2 = L26_2[L27_2]
                              L24_2[L25_2] = L26_2
                          end
                          else
                            L25_2 = "openingAnimation"
                            L26_2 = blockTable
                            L26_2 = L26_2.blocks
                            L27_2 = "definition"
                            L27_2 = L13_2[L27_2]
                            L26_2 = L26_2[L27_2]
                            L27_2 = "openingAnimationDarkSide"
                            L26_2 = L26_2[L27_2]
                            L24_2[L25_2] = L26_2
                          end
                          L25_2 = "openingAnimationFrameDuration"
                          L26_2 = blockTable
                          L26_2 = L26_2.blocks
                          L27_2 = "definition"
                          L27_2 = L13_2[L27_2]
                          L26_2 = L26_2[L27_2]
                          L27_2 = "openingAnimationFrameDurationDarkSide"
                          L26_2 = L26_2[L27_2]
                          L24_2[L25_2] = L26_2
                        end
                      else
                        L25_2 = blockTable
                        L25_2 = L25_2.blocks
                        L26_2 = "definition"
                        L26_2 = L13_2[L26_2]
                        L25_2 = L25_2[L26_2]
                        L26_2 = "openingAnimation"
                        L25_2 = L25_2[L26_2]
                        if L25_2 then
                          if L23_2 then
                            L25_2 = blockTable
                            L25_2 = L25_2.blocks
                            L26_2 = "definition"
                            L26_2 = L13_2[L26_2]
                            L25_2 = L25_2[L26_2]
                            L26_2 = "openingAnimationOtherSideOpen"
                            L25_2 = L25_2[L26_2]
                            if L25_2 then
                              L25_2 = "openingAnimation"
                              L26_2 = blockTable
                              L26_2 = L26_2.blocks
                              L27_2 = "definition"
                              L27_2 = L13_2[L27_2]
                              L26_2 = L26_2[L27_2]
                              L27_2 = "openingAnimationOtherSideOpen"
                              L26_2 = L26_2[L27_2]
                              L24_2[L25_2] = L26_2
                          end
                          else
                            L25_2 = "openingAnimation"
                            L26_2 = blockTable
                            L26_2 = L26_2.blocks
                            L27_2 = "definition"
                            L27_2 = L13_2[L27_2]
                            L26_2 = L26_2[L27_2]
                            L27_2 = "openingAnimation"
                            L26_2 = L26_2[L27_2]
                            L24_2[L25_2] = L26_2
                          end
                          L25_2 = "openingAnimationFrameDuration"
                          L26_2 = blockTable
                          L26_2 = L26_2.blocks
                          L27_2 = "definition"
                          L27_2 = L13_2[L27_2]
                          L26_2 = L26_2[L27_2]
                          L27_2 = "openingAnimationFrameDuration"
                          L26_2 = L26_2[L27_2]
                          L24_2[L25_2] = L26_2
                        end
                      end
                      L25_2 = g_showLevelOpenAnimation
                      if L25_2 then
                        L25_2 = g_showLevelOpenAnimation
                        L26_2 = "startNumber"
                        L26_2 = L13_2[L26_2]
                        if L25_2 == L26_2 then
                          L25_2 = "disabled"
                          L26_2 = true
                          L24_2[L25_2] = L26_2
                          L25_2 = "name"
                          L25_2 = L24_2[L25_2]
                          levelOpenAnimationLevelButtonName = L25_2
                        end
                      end
                    end
                    L25_2 = setVisible
                    L26_2 = L19_2
                    L27_2 = false
                    L25_2(L26_2, L27_2)
                    L25_2 = isLevelLockedByTimer
                    L26_2 = L22_2
                    L25_2, L26_2 = L25_2(L26_2)
                    if L25_2 then
                      L27_2 = releaseBuild
                      if L27_2 then
                        L27_2 = "lockedByTimer"
                        L28_2 = true
                        L24_2[L27_2] = L28_2
                        L27_2 = "lockedByTimerDuration"
                        L24_2[L27_2] = L26_2
                        L27_2 = "isLockedByTimerTextVisible"
                        L28_2 = false
                        L24_2[L27_2] = L28_2
                        L27_2 = L26_2
                        if not L27_2 then
                          L28_2 = getLevelOpeningTime
                          L29_2 = L22_2
                          L28_2 = L28_2(L29_2)
                          if L28_2 then
                            L29_2 = getTimeDifferenceInSeconds
                            L30_2 = getCurrentTime
                            L30_2 = L30_2()
                            L31_2 = L28_2
                            L29_2 = L29_2(L30_2, L31_2)
                            L27_2 = -L29_2
                          end
                        end
                        if L27_2 then
                          L28_2 = isFirstLockedMYDLevel
                          L29_2 = L22_2
                          L30_2 = loadedObjects
                          L31_2 = "isDarkSideLevel"
                          L30_2 = L30_2[L31_2]
                          L28_2 = L28_2(L29_2, L30_2)
                          if L28_2 then
                            L28_2 = "isLockedByTimerTextVisible"
                            L29_2 = true
                            L24_2[L28_2] = L29_2
                            L28_2 = "lockedByTimerText"
                            L29_2 = getMYDLockText
                            L30_2 = L27_2
                            L29_2 = L29_2(L30_2)
                            L24_2[L28_2] = L29_2
                          end
                        end
                        if L23_2 then
                          L28_2 = loadedObjects
                          L29_2 = "isDarkSideLevel"
                          L28_2 = L28_2[L29_2]
                          if L28_2 then
                            L28_2 = "image"
                            L29_2 = blockTable
                            L29_2 = L29_2.blocks
                            L30_2 = "definition"
                            L30_2 = L13_2[L30_2]
                            L29_2 = L29_2[L30_2]
                            L30_2 = "spriteDarkLockedByTimerOtherSideOpened"
                            L29_2 = L29_2[L30_2]
                            L24_2[L28_2] = L29_2
                          else
                            L28_2 = "image"
                            L29_2 = blockTable
                            L29_2 = L29_2.blocks
                            L30_2 = "definition"
                            L30_2 = L13_2[L30_2]
                            L29_2 = L29_2[L30_2]
                            L30_2 = "spriteLockedByTimerOtherSideOpened"
                            L29_2 = L29_2[L30_2]
                            L24_2[L28_2] = L29_2
                          end
                        else
                          L28_2 = loadedObjects
                          L29_2 = "isDarkSideLevel"
                          L28_2 = L28_2[L29_2]
                          if L28_2 then
                            L28_2 = "image"
                            L29_2 = blockTable
                            L29_2 = L29_2.blocks
                            L30_2 = "definition"
                            L30_2 = L13_2[L30_2]
                            L29_2 = L29_2[L30_2]
                            L30_2 = "spriteDarkLockedByTimer"
                            L29_2 = L29_2[L30_2]
                            L24_2[L28_2] = L29_2
                          else
                            L28_2 = "image"
                            L29_2 = blockTable
                            L29_2 = L29_2.blocks
                            L30_2 = "definition"
                            L30_2 = L13_2[L30_2]
                            L29_2 = L29_2[L30_2]
                            L30_2 = "spriteLockedByTimer"
                            L29_2 = L29_2[L30_2]
                            L24_2[L28_2] = L29_2
                          end
                        end
                        L28_2 = "originalImageLocked"
                        L29_2 = "image"
                        L29_2 = L24_2[L29_2]
                        L24_2[L28_2] = L29_2
                      end
                    end
                    L27_2 = "buttonLevelName"
                    L24_2[L27_2] = L22_2
                    L27_2 = "floorCoordinates"
                    L28_2 = false
                    L24_2[L27_2] = L28_2
                    L27_2 = currentFolder
                    L24_2.currentFolder = L27_2
                    L27_2 = "showStartNumber"
                    L28_2 = blockTable
                    L28_2 = L28_2.blocks
                    L29_2 = "definition"
                    L29_2 = L13_2[L29_2]
                    L28_2 = L28_2[L29_2]
                    L29_2 = "showStartNumber"
                    L28_2 = L28_2[L29_2]
                    L24_2[L27_2] = L28_2
                    L27_2 = getEpisodeMetadata
                    L28_2 = currentFolder
                    L27_2 = L27_2(L28_2)
                    L28_2 = "alternativeRouteFirstLevelNumber"
                    L27_2 = L27_2[L28_2]
                    L28_2 = getEpisodeMetadata
                    L29_2 = currentFolder
                    L28_2 = L28_2(L29_2)
                    L29_2 = "alternativeRouteLastLevelNumber"
                    L28_2 = L28_2[L29_2]
                    L29_2 = blockTable
                    L29_2 = L29_2.blocks
                    L30_2 = "definition"
                    L30_2 = L13_2[L30_2]
                    L29_2 = L29_2[L30_2]
                    L30_2 = "isAlternativeRoute"
                    L29_2 = L29_2[L30_2]
                    if L29_2 then
                      L29_2 = SettingsWrapper
                      L31_2 = "isMapFound"
                      L30_2 = L29_2
                      L29_2 = L29_2[L31_2]
                      L31_2 = currentFolder
                      L29_2 = L29_2(L30_2, L31_2)
                      if not L29_2 then
                        L29_2 = "startNumber"
                        L29_2 = L13_2[L29_2]
                        L30_2 = 1
                        L30_2 = L27_2[L30_2]
                        if L29_2 >= L30_2 then
                          L29_2 = "startNumber"
                          L29_2 = L13_2[L29_2]
                          L30_2 = 1
                          L30_2 = L28_2[L30_2]
                          if L29_2 <= L30_2 then
                            goto lbl_2899
                          end
                        end
                      end
                      L29_2 = 2
                      L29_2 = L27_2[L29_2]
                      if L29_2 then
                        L29_2 = SettingsWrapper
                        L31_2 = "isMap2Found"
                        L30_2 = L29_2
                        L29_2 = L29_2[L31_2]
                        L31_2 = currentFolder
                        L29_2 = L29_2(L30_2, L31_2)
                        if not L29_2 then
                          L29_2 = "startNumber"
                          L29_2 = L13_2[L29_2]
                          L30_2 = 2
                          L30_2 = L27_2[L30_2]
                          if L29_2 >= L30_2 then
                            L29_2 = "startNumber"
                            L29_2 = L13_2[L29_2]
                            L30_2 = 2
                            L30_2 = L28_2[L30_2]
                            if L29_2 <= L30_2 then
                              ::lbl_2899::
                              L29_2 = "originalImageLocked"
                              L30_2 = blockTable
                              L30_2 = L30_2.blocks
                              L31_2 = "definition"
                              L31_2 = L13_2[L31_2]
                              L30_2 = L30_2[L31_2]
                              L31_2 = "spritePathNotOpened"
                              L30_2 = L30_2[L31_2]
                              L24_2[L29_2] = L30_2
                          end
                        end
                      end
                    end
                    elseif not L25_2 then
                      if L23_2 then
                        L29_2 = blockTable
                        L29_2 = L29_2.blocks
                        L30_2 = "definition"
                        L30_2 = L13_2[L30_2]
                        L29_2 = L29_2[L30_2]
                        L30_2 = "spriteDarkSideLockedOtherSideOpen"
                        L29_2 = L29_2[L30_2]
                        L30_2 = blockTable
                        L30_2 = L30_2.blocks
                        L31_2 = "definition"
                        L31_2 = L13_2[L31_2]
                        L30_2 = L30_2[L31_2]
                        L31_2 = "spriteLockedOtherSideOpened"
                        L30_2 = L30_2[L31_2]
                        L31_2 = "originalImageLocked"
                        L32_2 = blockTable
                        L32_2 = L32_2.blocks
                        L33_2 = "definition"
                        L33_2 = L13_2[L33_2]
                        L32_2 = L32_2[L33_2]
                        L33_2 = "spriteLocked"
                        L32_2 = L32_2[L33_2]
                        L24_2[L31_2] = L32_2
                        if L30_2 then
                          L31_2 = loadedObjects
                          L32_2 = "isDarkSideLevel"
                          L31_2 = L31_2[L32_2]
                          if not L31_2 then
                            L31_2 = "originalImageLocked"
                            L24_2[L31_2] = L30_2
                          end
                        end
                        if L29_2 then
                          L31_2 = loadedObjects
                          L32_2 = "isDarkSideLevel"
                          L31_2 = L31_2[L32_2]
                          if L31_2 then
                            L31_2 = "originalImageLocked"
                            L24_2[L31_2] = L29_2
                          end
                        end
                      else
                        L29_2 = "originalImageLocked"
                        L30_2 = blockTable
                        L30_2 = L30_2.blocks
                        L31_2 = "definition"
                        L31_2 = L13_2[L31_2]
                        L30_2 = L30_2[L31_2]
                        L31_2 = "spriteLocked"
                        L30_2 = L30_2[L31_2]
                        L24_2[L29_2] = L30_2
                        L29_2 = blockTable
                        L29_2 = L29_2.blocks
                        L30_2 = "definition"
                        L30_2 = L13_2[L30_2]
                        L29_2 = L29_2[L30_2]
                        L30_2 = "spriteDarkSideLocked"
                        L29_2 = L29_2[L30_2]
                        if L29_2 then
                          L30_2 = loadedObjects
                          L31_2 = "isDarkSideLevel"
                          L30_2 = L30_2[L31_2]
                          if L30_2 then
                            L30_2 = "originalImageLocked"
                            L24_2[L30_2] = L29_2
                          end
                        end
                      end
                    end
                    L29_2 = "renderLevelNumber"
                    L30_2 = getRenderedLevelNumber
                    L31_2 = currentFolder
                    L32_2 = "startNumber"
                    L32_2 = L13_2[L32_2]
                    L30_2 = L30_2(L31_2, L32_2)
                    L24_2[L29_2] = L30_2
                    L29_2 = nil
                    L30_2 = isIapEnabled
                    L30_2 = L30_2()
                    if L30_2 then
                      L30_2 = getEpisodeMetadataWithParam
                      L31_2 = currentFolder
                      L32_2 = "iapPurchaseId"
                      L30_2 = L30_2(L31_2, L32_2)
                      L29_2 = L30_2
                    end
                    L30_2 = isBuildUnlocked
                    L30_2 = L30_2()
                    L31_2 = true
                    if L30_2 ~= L31_2 then
                      L30_2 = nil
                      if L29_2 ~= L30_2 then
                        L30_2 = "disabled"
                        L30_2 = L24_2[L30_2]
                        if L30_2 then
                          L30_2 = getEpisodeMetadata
                          L31_2 = currentFolder
                          L30_2 = L30_2(L31_2)
                          L31_2 = "iapPurchase"
                          L30_2 = L30_2[L31_2]
                          if L30_2 then
                            L30_2 = SettingsWrapper
                            L32_2 = "isEpisodePurchased"
                            L31_2 = L30_2
                            L30_2 = L30_2[L32_2]
                            L32_2 = L29_2
                            L30_2 = L30_2(L31_2, L32_2)
                            if not L30_2 then
                              L30_2 = "showPurchaseEpisodeDialog"
                              L31_2 = true
                              L24_2[L30_2] = L31_2
                              L30_2 = assert
                              L31_2 = nil
                              L31_2 = L29_2 ~= L31_2
                              L32_2 = "iap id not defined for this episode"
                              L30_2(L31_2, L32_2)
                              L30_2 = "iapId"
                              L24_2[L30_2] = L29_2
                              L30_2 = "originalImageLocked"
                              L31_2 = blockTable
                              L31_2 = L31_2.blocks
                              L32_2 = "definition"
                              L32_2 = L13_2[L32_2]
                              L31_2 = L31_2[L32_2]
                              L32_2 = "spriteBeforePurchase"
                              L31_2 = L31_2[L32_2]
                              L24_2[L30_2] = L31_2
                              L30_2 = currentFolder
                              L24_2.currentFolder = L30_2
                            end
                          end
                        end
                      end
                    end
                    L30_2 = blockTable
                    L30_2 = L30_2.blocks
                    L31_2 = "definition"
                    L31_2 = L13_2[L31_2]
                    L30_2 = L30_2[L31_2]
                    L31_2 = "isBonusLevel"
                    L30_2 = L30_2[L31_2]
                    if L30_2 then
                      L30_2 = isLevelUnlocked
                      L31_2 = currentFolder
                      L32_2 = "startNumber"
                      L32_2 = L13_2[L32_2]
                      L30_2 = L30_2(L31_2, L32_2)
                      if L30_2 then
                        L30_2 = "returnValue"
                        L31_2 = "GOTO_LEVEL"
                        L24_2[L30_2] = L31_2
                      else
                        L30_2 = "returnValue"
                        L31_2 = "GOTO_LOCKED_ACHIEVEMENT"
                        L24_2[L30_2] = L31_2
                      end
                    else
                      L30_2 = "returnValue"
                      L31_2 = "GOTO_LEVEL"
                      L24_2[L30_2] = L31_2
                    end
                    L30_2 = blockTable
                    L30_2 = L30_2.blocks
                    L31_2 = "definition"
                    L31_2 = L13_2[L31_2]
                    L30_2 = L30_2[L31_2]
                    L31_2 = "isAlternativeRoute"
                    L30_2 = L30_2[L31_2]
                    if L30_2 then
                      L30_2 = "disabled"
                      L30_2 = L24_2[L30_2]
                      if L30_2 then
                        L30_2 = "startNumber"
                        L30_2 = L13_2[L30_2]
                        L31_2 = 1
                        L31_2 = L27_2[L31_2]
                        if L30_2 >= L31_2 then
                          L30_2 = "startNumber"
                          L30_2 = L13_2[L30_2]
                          L31_2 = 1
                          L31_2 = L28_2[L31_2]
                          if L30_2 <= L31_2 then
                            L30_2 = SettingsWrapper
                            L32_2 = "isMapFound"
                            L31_2 = L30_2
                            L30_2 = L30_2[L32_2]
                            L32_2 = currentFolder
                            L30_2 = L30_2(L31_2, L32_2)
                            if not L30_2 then
                              goto lbl_3129
                            end
                          end
                        end
                        L30_2 = 2
                        L30_2 = L27_2[L30_2]
                        if L30_2 then
                          L30_2 = "startNumber"
                          L30_2 = L13_2[L30_2]
                          L31_2 = 2
                          L31_2 = L27_2[L31_2]
                          if L30_2 >= L31_2 then
                            L30_2 = "startNumber"
                            L30_2 = L13_2[L30_2]
                            L31_2 = 2
                            L31_2 = L28_2[L31_2]
                            if L30_2 <= L31_2 then
                              L30_2 = SettingsWrapper
                              L32_2 = "isMap2Found"
                              L31_2 = L30_2
                              L30_2 = L30_2[L32_2]
                              L32_2 = currentFolder
                              L30_2 = L30_2(L31_2, L32_2)
                              ::lbl_3129::
                              if not L30_2 then
                                L30_2 = "disabled"
                                L31_2 = false
                                L24_2[L30_2] = L31_2
                                L30_2 = "inactive"
                                L31_2 = true
                                L24_2[L30_2] = L31_2
                                L30_2 = "returnValue"
                                L31_2 = "SHOW_ALTERNATIVE_ROUTE_POPUP"
                                L24_2[L30_2] = L31_2
                              end
                            end
                          end
                        end
                      end
                    end
                    L30_2 = menuManager
                    L32_2 = "getRoot"
                    L31_2 = L30_2
                    L30_2 = L30_2[L32_2]
                    L30_2 = L30_2(L31_2)
                    L31_2 = nil
                    if L30_2 ~= L31_2 then
                      L30_2 = isPlatformLimited
                      L30_2 = L30_2()
                      if L30_2 then
                        L30_2 = isStarLevelAvailableOnThisPlatform
                        L31_2 = currentFolder
                        L32_2 = "startNumber"
                        L32_2 = L13_2[L32_2]
                        L30_2 = L30_2(L31_2, L32_2)
                        if not L30_2 then
                          goto lbl_3164
                        end
                      end
                      L30_2 = menuManager
                      L32_2 = "getRoot"
                      L31_2 = L30_2
                      L30_2 = L30_2[L32_2]
                      L30_2 = L30_2(L31_2)
                      L32_2 = "addChild"
                      L31_2 = L30_2
                      L30_2 = L30_2[L32_2]
                      L32_2 = L24_2
                      L30_2(L31_2, L32_2)
                    end
                    ::lbl_3164::
                    L30_2 = "stars"
                    L31_2 = getLevelStarsFromHighscores
                    L32_2 = L22_2
                    L31_2 = L31_2(L32_2)
                    L24_2[L30_2] = L31_2
                end
                else
                  L22_2 = levelName
                  L23_2 = getEpisodeSelectionLevelName
                  L23_2 = L23_2()
                  if L22_2 == L23_2 then
                    L22_2 = blockTable
                    L22_2 = L22_2.blocks
                    L23_2 = "definition"
                    L23_2 = L13_2[L23_2]
                    L22_2 = L22_2[L23_2]
                    L23_2 = "lightDarkSide"
                    L22_2 = L22_2[L23_2]
                    if L22_2 then
                      L22_2 = "startNumber"
                      L23_2 = "startNumber"
                      L23_2 = L13_2[L23_2]
                      L24_2 = 1
                      L23_2 = L23_2 - L24_2
                      L24_2 = 2
                      L23_2 = L23_2 * L24_2
                      L24_2 = 1
                      L23_2 = L23_2 + L24_2
                      L13_2[L22_2] = L23_2
                      L22_2 = calculateEpisodeScoreAndStars
                      L23_2 = "episodeType"
                      L23_2 = L13_2[L23_2]
                      L24_2 = "startNumber"
                      L24_2 = L13_2[L24_2]
                      L22_2, L23_2, L24_2, L25_2, L26_2 = L22_2(L23_2, L24_2)
                      L27_2 = calculateEpisodeScoreAndStars
                      L28_2 = "episodeType"
                      L28_2 = L13_2[L28_2]
                      L29_2 = "startNumber"
                      L29_2 = L13_2[L29_2]
                      L30_2 = 1
                      L29_2 = L29_2 + L30_2
                      L27_2, L28_2, L29_2, L30_2, L31_2 = L27_2(L28_2, L29_2)
                      L32_2 = actions
                      L33_2 = "myLevelFolders"
                      L32_2 = L32_2[L33_2]
                      L33_2 = actions
                      L34_2 = "episodeTypeTable"
                      L33_2 = L33_2[L34_2]
                      L34_2 = "episodeType"
                      L34_2 = L13_2[L34_2]
                      L33_2 = L33_2[L34_2]
                      L32_2 = L32_2[L33_2]
                      L33_2 = "startNumber"
                      L33_2 = L13_2[L33_2]
                      L32_2 = L32_2[L33_2]
                      L33_2 = setVisible
                      L34_2 = "name"
                      L34_2 = L13_2[L34_2]
                      L35_2 = false
                      L33_2(L34_2, L35_2)
                      L33_2 = blockTable
                      L33_2 = L33_2.blocks
                      L34_2 = "definition"
                      L34_2 = L13_2[L34_2]
                      L33_2 = L33_2[L34_2]
                      L34_2 = "lockedImage"
                      L33_2 = L33_2[L34_2]
                      L34_2 = ui
                      L35_2 = "LightDarkEpisodeButton"
                      L34_2 = L34_2[L35_2]
                      L35_2 = L34_2
                      L34_2 = L34_2.new
                      L36_2 = {}
                      L37_2 = "name"
                      L36_2[L37_2] = L19_2
                      L37_2 = "physicsObject"
                      L36_2[L37_2] = L13_2
                      L37_2 = "totalScoreLight"
                      L36_2[L37_2] = L22_2
                      L37_2 = "totalStarsLight"
                      L36_2[L37_2] = L23_2
                      L37_2 = "maxStarsLight"
                      L36_2[L37_2] = L24_2
                      L37_2 = "totalScoreDark"
                      L36_2[L37_2] = L27_2
                      L37_2 = "totalStarsDark"
                      L36_2[L37_2] = L28_2
                      L37_2 = "maxStarsDark"
                      L36_2[L37_2] = L29_2
                      L37_2 = "lockedImage"
                      L36_2[L37_2] = L33_2
                      L37_2 = "lightSideEpisode"
                      L38_2 = actions
                      L39_2 = "myLevelFolders"
                      L38_2 = L38_2[L39_2]
                      L39_2 = actions
                      L40_2 = "episodeTypeTable"
                      L39_2 = L39_2[L40_2]
                      L40_2 = "episodeType"
                      L40_2 = L13_2[L40_2]
                      L39_2 = L39_2[L40_2]
                      L38_2 = L38_2[L39_2]
                      L39_2 = "startNumber"
                      L39_2 = L13_2[L39_2]
                      L38_2 = L38_2[L39_2]
                      L36_2[L37_2] = L38_2
                      L37_2 = "darkSideEpisode"
                      L38_2 = actions
                      L39_2 = "myLevelFolders"
                      L38_2 = L38_2[L39_2]
                      L39_2 = actions
                      L40_2 = "episodeTypeTable"
                      L39_2 = L39_2[L40_2]
                      L40_2 = "episodeType"
                      L40_2 = L13_2[L40_2]
                      L39_2 = L39_2[L40_2]
                      L38_2 = L38_2[L39_2]
                      L39_2 = "startNumber"
                      L39_2 = L13_2[L39_2]
                      L40_2 = 1
                      L39_2 = L39_2 + L40_2
                      L38_2 = L38_2[L39_2]
                      L36_2[L37_2] = L38_2
                      L34_2 = L34_2(L35_2, L36_2)
                      L35_2 = "floorCoordinates"
                      L36_2 = false
                      L34_2[L35_2] = L36_2
                      L35_2 = "disabled"
                      L36_2 = isEpisodeDisabled
                      L37_2 = actions
                      L38_2 = "myLevelFolders"
                      L37_2 = L37_2[L38_2]
                      L38_2 = actions
                      L39_2 = "episodeTypeTable"
                      L38_2 = L38_2[L39_2]
                      L39_2 = "episodeType"
                      L39_2 = L13_2[L39_2]
                      L38_2 = L38_2[L39_2]
                      L37_2 = L37_2[L38_2]
                      L38_2 = "startNumber"
                      L38_2 = L13_2[L38_2]
                      L37_2 = L37_2[L38_2]
                      L36_2 = L36_2(L37_2)
                      L34_2[L35_2] = L36_2
                      L35_2 = blockTable
                      L35_2 = L35_2.blocks
                      L36_2 = "definition"
                      L36_2 = L13_2[L36_2]
                      L35_2 = L35_2[L36_2]
                      L36_2 = "spriteLocked"
                      L35_2 = L35_2[L36_2]
                      if L35_2 then
                        L35_2 = "lockedImage"
                        L36_2 = blockTable
                        L36_2 = L36_2.blocks
                        L37_2 = "definition"
                        L37_2 = L13_2[L37_2]
                        L36_2 = L36_2[L37_2]
                        L37_2 = "spriteLocked"
                        L36_2 = L36_2[L37_2]
                        L34_2[L35_2] = L36_2
                      end
                      L35_2 = getEpisodeMetadata
                      L36_2 = L32_2
                      L35_2 = L35_2(L36_2)
                      L36_2 = "isAvailableForDeviceFunction"
                      L35_2 = L35_2[L36_2]
                      L36_2 = nil
                      if L35_2 ~= L36_2 then
                        L36_2 = "isEpisodeDisabledByDevice"
                        L37_2 = this
                        L37_2 = L37_2[L35_2]
                        L37_2 = L37_2()
                        L38_2 = true
                        L37_2 = L37_2 ~= L38_2
                        L34_2[L36_2] = L37_2
                      end
                      L36_2 = "isEpisodeDisabledByDevice"
                      L36_2 = L34_2[L36_2]
                      if L36_2 then
                        L36_2 = "disabled"
                        L36_2 = L34_2[L36_2]
                        L37_2 = true
                        if L36_2 ~= L37_2 then
                          L36_2 = "disabled"
                          L37_2 = true
                          L34_2[L36_2] = L37_2
                        end
                      end
                      L36_2 = "returnValue"
                      L37_2 = "GOTO_EPISODE"
                      L34_2[L36_2] = L37_2
                      L36_2 = "originalReturnValue"
                      L37_2 = "GOTO_EPISODE"
                      L34_2[L36_2] = L37_2
                      L36_2 = menuManager
                      L38_2 = "getRoot"
                      L37_2 = L36_2
                      L36_2 = L36_2[L38_2]
                      L36_2 = L36_2(L37_2)
                      L37_2 = nil
                      if L36_2 ~= L37_2 then
                        L36_2 = menuManager
                        L38_2 = "getRoot"
                        L37_2 = L36_2
                        L36_2 = L36_2[L38_2]
                        L36_2 = L36_2(L37_2)
                        L38_2 = "addChild"
                        L37_2 = L36_2
                        L36_2 = L36_2[L38_2]
                        L38_2 = L34_2
                        L36_2(L37_2, L38_2)
                      end
                    else
                      L22_2 = nil
                      if L21_2 == L22_2 then
                        L22_2 = calculateEpisodeScoreAndStars
                        L23_2 = "episodeType"
                        L23_2 = L13_2[L23_2]
                        L24_2 = "startNumber"
                        L24_2 = L13_2[L24_2]
                        L22_2, L23_2, L24_2, L25_2, L26_2 = L22_2(L23_2, L24_2)
                        L27_2 = actions
                        L28_2 = "myLevelFolders"
                        L27_2 = L27_2[L28_2]
                        L28_2 = actions
                        L29_2 = "episodeTypeTable"
                        L28_2 = L28_2[L29_2]
                        L29_2 = "episodeType"
                        L29_2 = L13_2[L29_2]
                        L28_2 = L28_2[L29_2]
                        L27_2 = L27_2[L28_2]
                        L28_2 = "startNumber"
                        L28_2 = L13_2[L28_2]
                        L27_2 = L27_2[L28_2]
                        L28_2 = getEpisodeMetadata
                        L29_2 = L27_2
                        L28_2 = L28_2(L29_2)
                        L29_2 = "droidEpisode"
                        L28_2 = L28_2[L29_2]
                        L29_2 = setVisible
                        L30_2 = "name"
                        L30_2 = L13_2[L30_2]
                        L31_2 = false
                        L29_2(L30_2, L31_2)
                        L29_2 = blockTable
                        L29_2 = L29_2.blocks
                        L30_2 = "definition"
                        L30_2 = L13_2[L30_2]
                        L29_2 = L29_2[L30_2]
                        L30_2 = "lockedImage"
                        L29_2 = L29_2[L30_2]
                        L30_2 = ui
                        L31_2 = "EpisodeButton"
                        L30_2 = L30_2[L31_2]
                        L31_2 = L30_2
                        L30_2 = L30_2.new
                        L32_2 = {}
                        L33_2 = "noEagleElements"
                        L32_2[L33_2] = L28_2
                        L33_2 = "name"
                        L32_2[L33_2] = L19_2
                        L33_2 = "physicsObject"
                        L32_2[L33_2] = L13_2
                        L33_2 = "totalScore"
                        L32_2[L33_2] = L22_2
                        L33_2 = "totalStars"
                        L32_2[L33_2] = L23_2
                        L33_2 = "maxStars"
                        L32_2[L33_2] = L24_2
                        L33_2 = "feathers"
                        L32_2[L33_2] = L25_2
                        L33_2 = "maxFeathers"
                        L32_2[L33_2] = L26_2
                        L33_2 = "lockedImage"
                        L32_2[L33_2] = L29_2
                        L30_2 = L30_2(L31_2, L32_2)
                        L31_2 = "floorCoordinates"
                        L32_2 = false
                        L30_2[L31_2] = L32_2
                        L31_2 = "disabled"
                        L32_2 = isEpisodeDisabled
                        L33_2 = actions
                        L34_2 = "myLevelFolders"
                        L33_2 = L33_2[L34_2]
                        L34_2 = actions
                        L35_2 = "episodeTypeTable"
                        L34_2 = L34_2[L35_2]
                        L35_2 = "episodeType"
                        L35_2 = L13_2[L35_2]
                        L34_2 = L34_2[L35_2]
                        L33_2 = L33_2[L34_2]
                        L34_2 = "startNumber"
                        L34_2 = L13_2[L34_2]
                        L33_2 = L33_2[L34_2]
                        L32_2 = L32_2(L33_2)
                        L30_2[L31_2] = L32_2
                        L31_2 = blockTable
                        L31_2 = L31_2.blocks
                        L32_2 = "definition"
                        L32_2 = L13_2[L32_2]
                        L31_2 = L31_2[L32_2]
                        L32_2 = "spriteLocked"
                        L31_2 = L31_2[L32_2]
                        if L31_2 then
                          L31_2 = "lockedImage"
                          L32_2 = blockTable
                          L32_2 = L32_2.blocks
                          L33_2 = "definition"
                          L33_2 = L13_2[L33_2]
                          L32_2 = L32_2[L33_2]
                          L33_2 = "spriteLocked"
                          L32_2 = L32_2[L33_2]
                          L30_2[L31_2] = L32_2
                        end
                        L31_2 = getEpisodeMetadata
                        L32_2 = L27_2
                        L31_2 = L31_2(L32_2)
                        L32_2 = "isAvailableForDeviceFunction"
                        L31_2 = L31_2[L32_2]
                        L32_2 = nil
                        if L31_2 ~= L32_2 then
                          L32_2 = "isEpisodeDisabledByDevice"
                          L33_2 = this
                          L33_2 = L33_2[L31_2]
                          L33_2 = L33_2()
                          L34_2 = true
                          L33_2 = L33_2 ~= L34_2
                          L30_2[L32_2] = L33_2
                        end
                        L32_2 = "isEpisodeDisabledByDevice"
                        L32_2 = L30_2[L32_2]
                        if L32_2 then
                          L32_2 = "disabled"
                          L32_2 = L30_2[L32_2]
                          L33_2 = true
                          if L32_2 ~= L33_2 then
                            L32_2 = "disabled"
                            L33_2 = true
                            L30_2[L32_2] = L33_2
                          end
                        end
                        L32_2 = "returnValue"
                        L33_2 = "GOTO_EPISODE"
                        L30_2[L32_2] = L33_2
                        L32_2 = "originalReturnValue"
                        L33_2 = "GOTO_EPISODE"
                        L30_2[L32_2] = L33_2
                        L32_2 = menuManager
                        L34_2 = "getRoot"
                        L33_2 = L32_2
                        L32_2 = L32_2[L34_2]
                        L32_2 = L32_2(L33_2)
                        L33_2 = nil
                        if L32_2 ~= L33_2 then
                          L32_2 = menuManager
                          L34_2 = "getRoot"
                          L33_2 = L32_2
                          L32_2 = L32_2[L34_2]
                          L32_2 = L32_2(L33_2)
                          L34_2 = "addChild"
                          L33_2 = L32_2
                          L32_2 = L32_2[L34_2]
                          L34_2 = L30_2
                          L32_2(L33_2, L34_2)
                        end
                      end
                    end
                  end
                end
              end
            end
            L21_2 = getLevelMetadata
            L22_2 = levelName
            L21_2 = L21_2(L22_2)
            L22_2 = "objectsDestroyableByTap"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L21_2 = L21_2.destroyableByTap
              if L21_2 then
                L21_2 = objects
                L21_2 = L21_2.destroyableByTap
                L22_2 = objects
                L22_2 = L22_2.destroyableByTap
                L22_2 = #L22_2
                L23_2 = 1
                L22_2 = L22_2 + L23_2
                L21_2[L22_2] = L19_2
              end
            end
            L21_2 = "angle"
            L22_2 = _G
            L22_2 = L22_2.math
            L23_2 = "fmod"
            L22_2 = L22_2[L23_2]
            L23_2 = "angle"
            L23_2 = L13_2[L23_2]
            L24_2 = _G
            L24_2 = L24_2.math
            L24_2 = L24_2.pi
            L25_2 = 2
            L24_2 = L24_2 * L25_2
            L22_2 = L22_2(L23_2, L24_2)
            L13_2[L21_2] = L22_2
            L21_2 = "angle"
            L21_2 = L13_2[L21_2]
            L22_2 = 0
            if L21_2 < L22_2 then
              L21_2 = "angle"
              L22_2 = "angle"
              L22_2 = L13_2[L22_2]
              L23_2 = _G
              L23_2 = L23_2.math
              L23_2 = L23_2.pi
              L24_2 = 2
              L23_2 = L23_2 * L24_2
              L22_2 = L22_2 + L23_2
              L13_2[L21_2] = L22_2
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "startingAngle"
            L23_2 = "angle"
            L23_2 = L13_2[L23_2]
            L21_2[L22_2] = L23_2
            L21_2 = nil
            if L17_2 == L21_2 then
              L21_2 = nil
              if L18_2 == L21_2 then
                goto lbl_3619
              end
            end
            L21_2 = nil
            if L17_2 == L21_2 then
              L21_2 = setScale
              L22_2 = L19_2
              L23_2 = 1
              L24_2 = L18_2
              L21_2(L22_2, L23_2, L24_2)
            else
              L21_2 = nil
              if L18_2 == L21_2 then
                L21_2 = setScale
                L22_2 = L19_2
                L23_2 = L17_2
                L24_2 = 1
                L21_2(L22_2, L23_2, L24_2)
              else
                L21_2 = setScale
                L22_2 = L19_2
                L23_2 = L17_2
                L24_2 = L18_2
                L21_2(L22_2, L23_2, L24_2)
              end
            end
            ::lbl_3619::
            L21_2 = setRotation
            L22_2 = L19_2
            L23_2 = "angle"
            L23_2 = L13_2[L23_2]
            L21_2(L22_2, L23_2)
            L21_2 = setMaterial
            L22_2 = L19_2
            L23_2 = objects
            L23_2 = L23_2.world
            L23_2 = L23_2[L19_2]
            L24_2 = "material"
            L23_2 = L23_2[L24_2]
            L21_2(L22_2, L23_2)
            L21_2 = "gravityFilterCategory"
            L21_2 = L13_2[L21_2]
            if L21_2 then
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "gravityFilterCategory"
              L23_2 = "gravityFilterCategory"
              L23_2 = L13_2[L23_2]
              L21_2[L22_2] = L23_2
              L21_2 = g_gravityFiltersCategories
              L22_2 = objects
              L22_2 = L22_2.world
              L22_2 = L22_2[L19_2]
              L23_2 = "gravityFilterCategory"
              L22_2 = L22_2[L23_2]
              L21_2 = L21_2[L22_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = setObjectGravityCategory
                L22_2 = L19_2
                L23_2 = g_gravityFiltersCategories
                L24_2 = objects
                L24_2 = L24_2.world
                L24_2 = L24_2[L19_2]
                L25_2 = "gravityFilterCategory"
                L24_2 = L24_2[L25_2]
                L23_2 = L23_2[L24_2]
                L21_2(L22_2, L23_2)
              end
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = objects
            L22_2 = L22_2.world
            L22_2 = L22_2[L19_2]
            L23_2 = "definition"
            L22_2 = L22_2[L23_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "themed"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = "definition"
              L22_2 = L13_2[L22_2]
              L21_2 = L21_2[L22_2]
              L22_2 = blockTable
              L22_2 = L22_2.blocks
              L23_2 = "definition"
              L23_2 = L13_2[L23_2]
              L22_2 = L22_2[L23_2]
              L23_2 = "useCurrentTheme"
              L22_2 = L22_2[L23_2]
              L23_2 = nil
              if L22_2 ~= L23_2 then
                L22_2 = blockTable
                L23_2 = "themes"
                L22_2 = L22_2[L23_2]
                L23_2 = currentTheme
                L22_2 = L22_2[L23_2]
                L23_2 = "texture"
                L22_2 = L22_2[L23_2]
                L23_2 = setTexture
                L24_2 = L19_2
                L25_2 = L22_2
                L23_2(L24_2, L25_2)
                L23_2 = objects
                L23_2 = L23_2.world
                L23_2 = L23_2[L19_2]
                L24_2 = "themeTexture"
                L23_2[L24_2] = L22_2
                L23_2 = blockTable
                L24_2 = "themes"
                L23_2 = L23_2[L24_2]
                L24_2 = currentTheme
                L23_2 = L23_2[L24_2]
                L24_2 = "textureScale"
                L23_2 = L23_2[L24_2]
                if not L23_2 then
                  L23_2 = 1
                end
                L24_2 = gameWorldScale
                L23_2 = L23_2 * L24_2
                L24_2 = setTextureScale
                L25_2 = L19_2
                L26_2 = L23_2
                L24_2(L25_2, L26_2)
              else
                L22_2 = "themeTexture"
                L22_2 = L13_2[L22_2]
                if not L22_2 then
                  L22_2 = "themeTexture"
                  L22_2 = L21_2[L22_2]
                  if not L22_2 then
                    L22_2 = blockTable
                    L23_2 = "themes"
                    L22_2 = L22_2[L23_2]
                    L23_2 = objects
                    L23_2 = L23_2.theme
                    L22_2 = L22_2[L23_2]
                    L23_2 = "texture"
                    L22_2 = L22_2[L23_2]
                  end
                end
                L23_2 = setTexture
                L24_2 = L19_2
                L25_2 = L22_2
                L23_2(L24_2, L25_2)
                L23_2 = objects
                L23_2 = L23_2.world
                L23_2 = L23_2[L19_2]
                L24_2 = "themeTexture"
                L23_2[L24_2] = L22_2
                L23_2 = blockTable
                L23_2 = L23_2.blocks
                L24_2 = objects
                L24_2 = L24_2.world
                L24_2 = L24_2[L19_2]
                L25_2 = "definition"
                L24_2 = L24_2[L25_2]
                L23_2 = L23_2[L24_2]
                L24_2 = "textureScale"
                L23_2 = L23_2[L24_2]
                if not L23_2 then
                  L23_2 = blockTable
                  L24_2 = "themes"
                  L23_2 = L23_2[L24_2]
                  L24_2 = currentTheme
                  L23_2 = L23_2[L24_2]
                  L24_2 = "textureScale"
                  L23_2 = L23_2[L24_2]
                  if not L23_2 then
                    L23_2 = 1
                  end
                end
                L24_2 = gameWorldScale
                L23_2 = L23_2 * L24_2
                L24_2 = setTextureScale
                L25_2 = L19_2
                L26_2 = L23_2
                L24_2(L25_2, L26_2)
              end
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "isSensor"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "sensorType"
              L21_2 = L21_2[L22_2]
              if L21_2 == "stream" then
                L21_2 = "nodes"
                L21_2 = L12_2[L21_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "nodes"
                  L23_2 = "nodes"
                  L23_2 = L12_2[L23_2]
                  L21_2[L22_2] = L23_2
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "radius"
                  L23_2 = "radius"
                  L23_2 = L12_2[L23_2]
                  L21_2[L22_2] = L23_2
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "force"
                  L23_2 = "force"
                  L23_2 = L12_2[L23_2]
                  L21_2[L22_2] = L23_2
                  L21_2 = print
                  L22_2 = "LOADING STREAM NODES FROM LEVEL Force: "
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "force"
                  L23_2 = L23_2[L24_2]
                  L22_2 = L22_2 .. L23_2
                  L21_2(L22_2)
                  L21_2 = _G
                  L21_2 = L21_2.pairs
                  L22_2 = objects
                  L22_2 = L22_2.world
                  L22_2 = L22_2[L19_2]
                  L23_2 = "nodes"
                  L22_2 = L22_2[L23_2]
                  L21_2, L22_2, L23_2 = L21_2(L22_2)
                  for L24_2, L25_2 in L21_2, L22_2, L23_2 do
                    L26_2 = print
                    L27_2 = "x: "
                    L28_2 = L25_2.x
                    L29_2 = " Y: "
                    L30_2 = L25_2.y
                    L27_2 = L27_2 .. L28_2 .. L29_2 .. L30_2
                    L26_2(L27_2)
                  end
                end
                L21_2 = "vertices"
                L21_2 = L12_2[L21_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "vertices"
                  L23_2 = "vertices"
                  L23_2 = L12_2[L23_2]
                  L21_2[L22_2] = L23_2
                end
              end
            end
            L21_2 = blockTable
            L21_2 = L21_2.blocks
            L22_2 = "definition"
            L22_2 = L13_2[L22_2]
            L21_2 = L21_2[L22_2]
            L22_2 = "flashAnimation"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = setFlashAnimation
              L22_2 = L19_2
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = "definition"
              L24_2 = L13_2[L24_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "flashAnimation"
              L23_2 = L23_2[L24_2]
              L24_2 = "file"
              L23_2 = L23_2[L24_2]
              L24_2 = blockTable
              L24_2 = L24_2.blocks
              L25_2 = "definition"
              L25_2 = L13_2[L25_2]
              L24_2 = L24_2[L25_2]
              L25_2 = "flashAnimation"
              L24_2 = L24_2[L25_2]
              L25_2 = "onEntryAction"
              L24_2 = L24_2[L25_2]
              L21_2(L22_2, L23_2, L24_2)
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "isSensor"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "sensorType"
              L21_2 = L21_2[L22_2]
              if L21_2 == "gravitation" then
                L21_2 = physicsToWorldTransform
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L22_2 = L22_2.x
                L23_2 = objects
                L23_2 = L23_2.world
                L23_2 = L23_2[L19_2]
                L23_2 = L23_2.y
                L21_2, L22_2 = L21_2(L22_2, L23_2)
                L23_2 = blockTable
                L23_2 = L23_2.blocks
                L24_2 = objects
                L24_2 = L24_2.world
                L24_2 = L24_2[L19_2]
                L25_2 = "definition"
                L24_2 = L24_2[L25_2]
                L23_2 = L23_2[L24_2]
                L24_2 = "type"
                L23_2 = L23_2[L24_2]
                L24_2 = "box"
                if L23_2 == L24_2 then
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "gravitationMinForce"
                  L25_2 = "gravitationMinForce"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "gravitationMaxForce"
                  L25_2 = "gravitationMaxForce"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "waterDensityZeroLevel"
                  L25_2 = "waterDensityZeroLevel"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "height"
                  L25_2 = "height"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "width"
                  L25_2 = "width"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "forceAngle"
                  L25_2 = "forceAngle"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = _G
                  L23_2 = L23_2.math
                  L24_2 = "sin"
                  L23_2 = L23_2[L24_2]
                  L24_2 = objects
                  L24_2 = L24_2.world
                  L24_2 = L24_2[L19_2]
                  L25_2 = "angle"
                  L24_2 = L24_2[L25_2]
                  L23_2 = L23_2(L24_2)
                  L24_2 = _G
                  L24_2 = L24_2.math
                  L25_2 = "cos"
                  L24_2 = L24_2[L25_2]
                  L25_2 = objects
                  L25_2 = L25_2.world
                  L25_2 = L25_2[L19_2]
                  L26_2 = "angle"
                  L25_2 = L25_2[L26_2]
                  L24_2 = L24_2(L25_2)
                  L25_2 = vNormalize
                  L26_2 = L23_2
                  L27_2 = L24_2
                  L25_2, L26_2 = L25_2(L26_2, L27_2)
                  L24_2 = L26_2
                  L23_2 = L25_2
                else
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "gravitationMinForce"
                  L25_2 = "gravitationMinForce"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "gravitationMaxForce"
                  L25_2 = "gravitationMaxForce"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "waterDensityZeroLevel"
                  L25_2 = "waterDensityZeroLevel"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                  L23_2 = objects
                  L23_2 = L23_2.world
                  L23_2 = L23_2[L19_2]
                  L24_2 = "radius"
                  L25_2 = "radius"
                  L25_2 = L12_2[L25_2]
                  L23_2[L24_2] = L25_2
                end
                L23_2 = "waterDensityZeroLevel"
                L23_2 = L12_2[L23_2]
                if L23_2 then
                  L23_2 = native_setIsWater
                  L24_2 = L19_2
                  L25_2 = true
                  L23_2(L24_2, L25_2)
                  L23_2 = native_setWaterDensity
                  L24_2 = L19_2
                  L25_2 = "waterDensityZeroLevel"
                  L25_2 = L12_2[L25_2]
                  L23_2(L24_2, L25_2)
                end
              else
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "sensorType"
                L21_2 = L21_2[L22_2]
                if L21_2 == "killing" then
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "height"
                  L23_2 = "height"
                  L23_2 = L12_2[L23_2]
                  L21_2[L22_2] = L23_2
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "width"
                  L23_2 = "width"
                  L23_2 = L12_2[L23_2]
                  L21_2[L22_2] = L23_2
                end
              end
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "shotData"
              L23_2 = "shotData"
              L23_2 = L12_2[L23_2]
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "shotPattern"
              L23_2 = "shotPattern"
              L23_2 = L12_2[L23_2]
              L21_2[L22_2] = L23_2
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "active"
              L23_2 = blockTable
              L23_2 = L23_2.blocks
              L24_2 = objects
              L24_2 = L24_2.world
              L24_2 = L24_2[L19_2]
              L25_2 = "definition"
              L24_2 = L24_2[L25_2]
              L23_2 = L23_2[L24_2]
              L24_2 = "active"
              L23_2 = L23_2[L24_2]
              L21_2[L22_2] = L23_2
              L21_2 = setObjectParameter
              L22_2 = L19_2
              L23_2 = 20
              L24_2 = 1
              L21_2(L22_2, L23_2, L24_2)
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "sensorType"
              L21_2 = L21_2[L22_2]
              if L21_2 == "gravitation" then
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 21
                L24_2 = 2
                L21_2(L22_2, L23_2, L24_2)
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "gravitationMinForce"
                L21_2 = L21_2[L22_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = setObjectParameter
                  L22_2 = L19_2
                  L23_2 = 25
                  L24_2 = objects
                  L24_2 = L24_2.world
                  L24_2 = L24_2[L19_2]
                  L25_2 = "gravitationMinForce"
                  L24_2 = L24_2[L25_2]
                  L21_2(L22_2, L23_2, L24_2)
                end
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "gravitationMaxForce"
                L21_2 = L21_2[L22_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = setObjectParameter
                  L22_2 = L19_2
                  L23_2 = 26
                  L24_2 = objects
                  L24_2 = L24_2.world
                  L24_2 = L24_2[L19_2]
                  L25_2 = "gravitationMaxForce"
                  L24_2 = L24_2[L25_2]
                  L21_2(L22_2, L23_2, L24_2)
                end
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 32
                L24_2 = 1
                L21_2(L22_2, L23_2, L24_2)
              else
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "sensorType"
                L21_2 = L21_2[L22_2]
                if L21_2 == "stream" then
                  L21_2 = setObjectParameter
                  L22_2 = L19_2
                  L23_2 = 21
                  L24_2 = 3
                  L21_2(L22_2, L23_2, L24_2)
                else
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "sensorType"
                  L21_2 = L21_2[L22_2]
                  L22_2 = "projectile"
                  if L21_2 == L22_2 then
                    L21_2 = setObjectParameter
                    L22_2 = L19_2
                    L23_2 = 21
                    L24_2 = 5
                    L21_2(L22_2, L23_2, L24_2)
                  else
                    L21_2 = objects
                    L21_2 = L21_2.world
                    L21_2 = L21_2[L19_2]
                    L22_2 = "sensorType"
                    L21_2 = L21_2[L22_2]
                    L22_2 = "coin"
                    if L21_2 == L22_2 then
                      L21_2 = setObjectParameter
                      L22_2 = L19_2
                      L23_2 = 21
                      L24_2 = 9
                      L21_2(L22_2, L23_2, L24_2)
                    end
                  end
                end
              end
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "gravityCollisionMask"
              L21_2 = L21_2[L22_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = g_gravityFiltersMasks
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "gravityCollisionMask"
                L22_2 = L22_2[L23_2]
                L21_2 = L21_2[L22_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = setSensorGravityMask
                  L22_2 = L19_2
                  L23_2 = g_gravityFiltersMasks
                  L24_2 = objects
                  L24_2 = L24_2.world
                  L24_2 = L24_2[L19_2]
                  L25_2 = gravityCollisionMask
                  L24_2 = L24_2 .. L25_2
                  L23_2 = L23_2[L24_2]
                  L21_2(L22_2, L23_2)
                end
              end
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "gravityFilterCategory"
              L21_2 = L21_2[L22_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = g_gravityFiltersCategories
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "gravityFilterCategory"
                L22_2 = L22_2[L23_2]
                L21_2 = L21_2[L22_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = setObjectGravityCategory
                  L22_2 = L19_2
                  L23_2 = g_gravityFiltersCategories
                  L24_2 = objects
                  L24_2 = L24_2.world
                  L24_2 = L24_2[L19_2]
                  L25_2 = "gravityFilterCategory"
                  L24_2 = L24_2[L25_2]
                  L23_2 = L23_2[L24_2]
                  L21_2(L22_2, L23_2)
                end
              end
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "active"
              L21_2 = L21_2[L22_2]
              L22_2 = true
              if L21_2 == L22_2 then
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 22
                L24_2 = 1
                L21_2(L22_2, L23_2, L24_2)
              else
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 22
                L24_2 = 0
                L21_2(L22_2, L23_2, L24_2)
              end
              L21_2 = blockTable
              L21_2 = L21_2.blocks
              L22_2 = objects
              L22_2 = L22_2.world
              L22_2 = L22_2[L19_2]
              L23_2 = "definition"
              L22_2 = L22_2[L23_2]
              L21_2 = L21_2[L22_2]
              L22_2 = "type"
              L21_2 = L21_2[L22_2]
              L22_2 = "box"
              if L21_2 == L22_2 then
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 24
                L24_2 = 1
                L21_2(L22_2, L23_2, L24_2)
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 28
                L24_2 = objects
                L24_2 = L24_2.world
                L24_2 = L24_2[L19_2]
                L25_2 = "width"
                L24_2 = L24_2[L25_2]
                L21_2(L22_2, L23_2, L24_2)
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 35
                L24_2 = objects
                L24_2 = L24_2.world
                L24_2 = L24_2[L19_2]
                L25_2 = "height"
                L24_2 = L24_2[L25_2]
                L21_2(L22_2, L23_2, L24_2)
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "forceAngle"
                L21_2 = L21_2[L22_2]
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = setObjectParameter
                  L22_2 = L19_2
                  L23_2 = 29
                  L24_2 = objects
                  L24_2 = L24_2.world
                  L24_2 = L24_2[L19_2]
                  L25_2 = "forceAngle"
                  L24_2 = L24_2[L25_2]
                  L21_2(L22_2, L23_2, L24_2)
                end
              else
                L21_2 = blockTable
                L21_2 = L21_2.blocks
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "definition"
                L22_2 = L22_2[L23_2]
                L21_2 = L21_2[L22_2]
                L22_2 = "type"
                L21_2 = L21_2[L22_2]
                L22_2 = "polygon"
                if L21_2 == L22_2 then
                else
                  L21_2 = setObjectParameter
                  L22_2 = L19_2
                  L23_2 = 24
                  L24_2 = 0
                  L21_2(L22_2, L23_2, L24_2)
                  L21_2 = objects
                  L21_2 = L21_2.world
                  L21_2 = L21_2[L19_2]
                  L22_2 = "radius"
                  L21_2 = L21_2[L22_2]
                  L22_2 = nil
                  if L21_2 ~= L22_2 then
                    L21_2 = setObjectParameter
                    L22_2 = L19_2
                    L23_2 = 27
                    L24_2 = objects
                    L24_2 = L24_2.world
                    L24_2 = L24_2[L19_2]
                    L25_2 = "radius"
                    L24_2 = L24_2[L25_2]
                    L21_2(L22_2, L23_2, L24_2)
                  end
                end
              end
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "levelGoal"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "useEmotionSensor"
              L23_2 = "useEmotionSensor"
              L23_2 = L12_2[L23_2]
              L21_2[L22_2] = L23_2
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "canBeEdited"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = "explosionRadius"
              L21_2 = L12_2[L21_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "explosionRadius"
                L23_2 = "explosionRadius"
                L23_2 = L12_2[L23_2]
                L21_2[L22_2] = L23_2
              end
              L21_2 = "explosionForce"
              L21_2 = L12_2[L21_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "explosionForce"
                L23_2 = "explosionForce"
                L23_2 = L12_2[L23_2]
                L21_2[L22_2] = L23_2
              end
              L21_2 = "explosionDamageRadius"
              L21_2 = L12_2[L21_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "explosionDamageRadius"
                L23_2 = "explosionDamageRadius"
                L23_2 = L12_2[L23_2]
                L21_2[L22_2] = L23_2
              end
              L21_2 = "explosionDamage"
              L21_2 = L12_2[L21_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "explosionDamage"
                L23_2 = "explosionDamage"
                L23_2 = L12_2[L23_2]
                L21_2[L22_2] = L23_2
              end
              L21_2 = "startingForce"
              L21_2 = L12_2[L21_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "startingForce"
                L23_2 = "startingForce"
                L23_2 = L12_2[L23_2]
                L21_2[L22_2] = L23_2
              end
              L21_2 = "forceAngle"
              L21_2 = L12_2[L21_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "forceAngle"
                L23_2 = "forceAngle"
                L23_2 = L12_2[L23_2]
                L21_2[L22_2] = L23_2
              end
              L21_2 = objects
              L21_2 = L21_2.world
              L21_2 = L21_2[L19_2]
              L22_2 = "startingForce"
              L21_2 = L21_2[L22_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = {}
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "startingForce"
                L22_2 = L22_2[L23_2]
                L23_2 = _G
                L23_2 = L23_2.math
                L24_2 = "sin"
                L23_2 = L23_2[L24_2]
                L24_2 = objects
                L24_2 = L24_2.world
                L24_2 = L24_2[L19_2]
                L25_2 = "forceAngle"
                L24_2 = L24_2[L25_2]
                L23_2 = L23_2(L24_2)
                L22_2 = L22_2 * L23_2
                L21_2.x = L22_2
                L22_2 = objects
                L22_2 = L22_2.world
                L22_2 = L22_2[L19_2]
                L23_2 = "startingForce"
                L22_2 = L22_2[L23_2]
                L23_2 = _G
                L23_2 = L23_2.math
                L24_2 = "cos"
                L23_2 = L23_2[L24_2]
                L24_2 = objects
                L24_2 = L24_2.world
                L24_2 = L24_2[L19_2]
                L25_2 = "forceAngle"
                L24_2 = L24_2[L25_2]
                L23_2 = L23_2(L24_2)
                L22_2 = L22_2 * L23_2
                L21_2.y = L22_2
                L22_2 = applyImpulse
                L23_2 = L19_2
                L24_2 = L21_2.x
                L25_2 = L21_2.y
                L26_2 = objects
                L26_2 = L26_2.world
                L26_2 = L26_2[L19_2]
                L26_2 = L26_2.x
                L27_2 = objects
                L27_2 = L27_2.world
                L27_2 = L27_2[L19_2]
                L27_2 = L27_2.y
                L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
              end
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "definition"
            L21_2 = L21_2[L22_2]
            L22_2 = "BLOCK_LEVEL_STARS_3"
            if L21_2 == L22_2 then
              L21_2 = objects
              L21_2 = L21_2.levelStars
              L22_2 = objects
              L22_2 = L22_2.world
              L22_2 = L22_2[L19_2]
              L21_2[L19_2] = L22_2
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "controllable"
            L21_2 = L21_2[L22_2]
            if L21_2 then
              L21_2 = "startNumber"
              L21_2 = L13_2[L21_2]
              L22_2 = 1
              if L21_2 == L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "definition"
                L21_2 = L21_2[L22_2]
                birdTypeCollectingScore = L21_2
              end
              L21_2 = birdsCounter
              L22_2 = 1
              L21_2 = L21_2 + L22_2
              birdsCounter = L21_2
              L21_2 = "startNumber"
              L21_2 = L13_2[L21_2]
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "startNumber"
                L23_2 = "startNumber"
                L23_2 = L13_2[L23_2]
                L21_2[L22_2] = L23_2
              else
                L21_2 = objects
                L21_2 = L21_2.world
                L21_2 = L21_2[L19_2]
                L22_2 = "startNumber"
                L23_2 = birdsCounter
                L21_2[L22_2] = L23_2
              end
              L21_2 = getLevelMetadata
              L22_2 = levelName
              L21_2 = L21_2(L22_2)
              L22_2 = "hideBirdsAndSlingshot"
              L21_2 = L21_2[L22_2]
              if L21_2 then
                L21_2 = setObjectParameter
                L22_2 = L19_2
                L23_2 = 33
                L24_2 = 0
                L21_2(L22_2, L23_2, L24_2)
              end
            end
            L21_2 = objects
            L21_2 = L21_2.world
            L21_2 = L21_2[L19_2]
            L22_2 = "width"
            L21_2 = L21_2[L22_2]
            L22_2 = objects
            L22_2 = L22_2.world
            L22_2 = L22_2[L19_2]
            L23_2 = "height"
            L22_2 = L22_2[L23_2]
            L23_2 = nil
            if L21_2 == L23_2 then
              L23_2 = objects
              L23_2 = L23_2.world
              L23_2 = L23_2[L19_2]
              L24_2 = "radius"
              L21_2 = L23_2[L24_2]
            end
            L23_2 = nil
            if L22_2 == L23_2 then
              L23_2 = objects
              L23_2 = L23_2.world
              L23_2 = L23_2[L19_2]
              L24_2 = "radius"
              L22_2 = L23_2[L24_2]
            end
            L23_2 = objects
            L23_2 = L23_2.world
            L23_2 = L23_2[L19_2]
            L23_2 = L23_2.x
            L23_2 = L23_2 - L21_2
            L24_2 = levelLeftEdgePhysics
            if L23_2 < L24_2 then
              L23_2 = objects
              L23_2 = L23_2.world
              L23_2 = L23_2[L19_2]
              L23_2 = L23_2.x
              L23_2 = L23_2 - L21_2
              levelLeftEdgePhysics = L23_2
            end
            L23_2 = objects
            L23_2 = L23_2.world
            L23_2 = L23_2[L19_2]
            L23_2 = L23_2.x
            L23_2 = L23_2 + L21_2
            L24_2 = levelRightEdgePhysics
            if L23_2 > L24_2 then
              L23_2 = objects
              L23_2 = L23_2.world
              L23_2 = L23_2[L19_2]
              L23_2 = L23_2.x
              L23_2 = L23_2 + L21_2
              levelRightEdgePhysics = L23_2
            end
            L23_2 = objects
            L23_2 = L23_2.world
            L23_2 = L23_2[L19_2]
            L23_2 = L23_2.y
            L23_2 = L23_2 - L21_2
            L24_2 = levelTopEdgePhysics
            if L23_2 < L24_2 then
              L23_2 = objects
              L23_2 = L23_2.world
              L23_2 = L23_2[L19_2]
              L23_2 = L23_2.y
              L23_2 = L23_2 - L22_2
              levelTopEdgePhysics = L23_2
            end
            L23_2 = objects
            L23_2 = L23_2.world
            L23_2 = L23_2[L19_2]
            L23_2 = L23_2.y
            L23_2 = L23_2 + L21_2
            L24_2 = levelBottomEdgePhysics
            if L23_2 > L24_2 then
              L23_2 = objects
              L23_2 = L23_2.world
              L23_2 = L23_2[L19_2]
              L23_2 = L23_2.y
              L23_2 = L23_2 + L22_2
              levelBottomEdgePhysics = L23_2
            end
            L23_2 = blockTable
            L23_2 = L23_2.blocks
            L24_2 = objects
            L24_2 = L24_2.world
            L24_2 = L24_2[L19_2]
            L25_2 = "definition"
            L24_2 = L24_2[L25_2]
            L23_2 = L23_2[L24_2]
            L24_2 = "movesWaterSurface"
            L23_2 = L23_2[L24_2]
            if L23_2 then
              L23_2 = objects
              L23_2 = L23_2.world
              L23_2 = L23_2[L19_2]
              L23_2 = L23_2.y
              L24_2 = 0.5
              L24_2 = L22_2 * L24_2
              L23_2 = L23_2 - L24_2
              if L2_2 > L23_2 then
                L23_2 = objects
                L23_2 = L23_2.world
                L23_2 = L23_2[L19_2]
                L23_2 = L23_2.y
                L24_2 = 0.5
                L24_2 = L22_2 * L24_2
                L2_2 = L23_2 - L24_2
              end
            end
            L23_2 = blockTable
            L23_2 = L23_2.blocks
            L24_2 = objects
            L24_2 = L24_2.world
            L24_2 = L24_2[L19_2]
            L25_2 = "definition"
            L24_2 = L24_2[L25_2]
            L23_2 = L23_2[L24_2]
            L24_2 = "levelParticles"
            L23_2 = L23_2[L24_2]
            if L23_2 then
              L23_2 = _G
              L24_2 = "table"
              L23_2 = L23_2[L24_2]
              L24_2 = "insert"
              L23_2 = L23_2[L24_2]
              L24_2 = g_levelParticleBlocks
              L25_2 = L19_2
              L23_2(L24_2, L25_2)
            end
          end
        end
      end
      ::lbl_4691::
    end
  end
  L8_2 = _G
  L8_2 = L8_2.ipairs
  L9_2 = L6_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = objects
    L13_2 = L13_2.world
    L14_2 = "name"
    L14_2 = L12_2[L14_2]
    L13_2 = L13_2[L14_2]
    L14_2 = "forceEffectColor"
    L15_2 = "forceEffectColor"
    L15_2 = L12_2[L15_2]
    L13_2[L14_2] = L15_2
  end
  L8_2 = objects
  L8_2 = L8_2.pathItems
  if L8_2 then
    L8_2 = _G
    L9_2 = "table"
    L8_2 = L8_2[L9_2]
    L9_2 = "sort"
    L8_2 = L8_2[L9_2]
    L9_2 = objects
    L9_2 = L9_2.pathItems
    
    function L10_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.startNumber
      L3_3 = A1_3.startNumber
      if L2_3 == L3_3 then
        L2_3 = A0_3.startNumberDecimal
        L3_3 = A1_3.startNumberDecimal
        L2_3 = L2_3 < L3_3
        return L2_3
      else
        L2_3 = A0_3.startNumber
        L3_3 = A1_3.startNumber
        L2_3 = L2_3 < L3_3
        return L2_3
      end
    end
    
    L8_2(L9_2, L10_2)
    L8_2 = nil
    L9_2 = 1
    L10_2 = _G
    L10_2 = L10_2.ipairs
    L11_2 = objects
    L11_2 = L11_2.pathItems
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      if L8_2 then
        L15_2 = "pathStartPointOnly"
        L15_2 = L14_2[L15_2]
        if not L15_2 then
          L15_2 = objects
          L15_2 = L15_2.pathItems
          L15_2 = L15_2[L13_2]
          L16_2 = "dots"
          L17_2 = {}
          L15_2[L16_2] = L17_2
          L15_2 = distance
          L16_2 = L8_2.x
          L17_2 = L8_2.y
          L18_2 = L14_2.x
          L19_2 = L14_2.y
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
          L16_2 = _G
          L16_2 = L16_2.math
          L17_2 = "atan2"
          L16_2 = L16_2[L17_2]
          L17_2 = L14_2.x
          L18_2 = L8_2.x
          L17_2 = L17_2 - L18_2
          L18_2 = L8_2.y
          L19_2 = L14_2.y
          L18_2 = L18_2 - L19_2
          L16_2 = L16_2(L17_2, L18_2)
          L17_2 = _G
          L17_2 = L17_2.math
          L17_2 = L17_2.pi
          L18_2 = 2
          L17_2 = L17_2 / L18_2
          L16_2 = L16_2 - L17_2
          L17_2 = _G
          L17_2 = L17_2.math
          L18_2 = "floor"
          L17_2 = L17_2[L18_2]
          L18_2 = pathItemDefinition
          L19_2 = "startThreshold"
          L18_2 = L18_2[L19_2]
          L18_2 = L15_2 - L18_2
          L19_2 = pathItemDefinition
          L20_2 = "endThreshold"
          L19_2 = L19_2[L20_2]
          L18_2 = L18_2 - L19_2
          L19_2 = pathItemDefinition
          L20_2 = "dotInterval"
          L19_2 = L19_2[L20_2]
          L18_2 = L18_2 / L19_2
          L17_2 = L17_2(L18_2)
          L18_2 = pathItemDefinition
          L19_2 = "startThreshold"
          L18_2 = L18_2[L19_2]
          L18_2 = L15_2 - L18_2
          L19_2 = pathItemDefinition
          L20_2 = "endThreshold"
          L19_2 = L19_2[L20_2]
          L18_2 = L18_2 - L19_2
          L19_2 = pathItemDefinition
          L20_2 = "dotInterval"
          L19_2 = L19_2[L20_2]
          L19_2 = L17_2 * L19_2
          L18_2 = L18_2 - L19_2
          L19_2 = 2
          L18_2 = L18_2 / L19_2
          L19_2 = pathItemDefinition
          L20_2 = "startThreshold"
          L19_2 = L19_2[L20_2]
          L19_2 = L19_2 + L18_2
          while true do
            L20_2 = pathItemDefinition
            L21_2 = "endThreshold"
            L20_2 = L20_2[L21_2]
            L20_2 = L15_2 - L20_2
            L20_2 = L20_2 - L18_2
            if not (L19_2 < L20_2) then
              goto lbl_5020
            end
            L20_2 = nil
            L21_2 = "alternativeStartNumber"
            L21_2 = L14_2[L21_2]
            if not L21_2 then
              L21_2 = "startNumber"
              L21_2 = L14_2[L21_2]
            end
            L22_2 = "alternativeStartNumber"
            L22_2 = L8_2[L22_2]
            if not L22_2 then
              L22_2 = "startNumber"
              L22_2 = L8_2[L22_2]
            end
            L23_2 = "pathItemInvisiblePoint"
            L23_2 = L14_2[L23_2]
            if L23_2 then
              L23_2 = _G
              L23_2 = L23_2.math
              L24_2 = "ceil"
              L23_2 = L23_2[L24_2]
              L24_2 = "startNumber"
              L24_2 = L14_2[L24_2]
              L23_2 = L23_2(L24_2)
              L21_2 = L23_2
            end
            L23_2 = startedFromEditor
            if not L23_2 then
              L23_2 = isLevelUnlocked
              L24_2 = currentFolder
              L25_2 = L22_2
              L23_2 = L23_2(L24_2, L25_2)
              if not L23_2 then
                goto lbl_4881
              end
              L23_2 = isLevelUnlocked
              L24_2 = currentFolder
              L25_2 = L21_2
              L23_2 = L23_2(L24_2, L25_2)
              if not L23_2 then
                goto lbl_4881
              end
            end
            L23_2 = 0
            L24_2 = g_showLevelOpenAnimation
            if L24_2 then
              L24_2 = 1
              L25_2 = g_showLevelOpenAnimation
              L26_2 = 1
              for L27_2 = L24_2, L25_2, L26_2 do
                L28_2 = objects
                L28_2 = L28_2.pathItems
                L28_2 = L28_2[L27_2]
                L29_2 = "pathItemInvisiblePoint"
                L28_2 = L28_2[L29_2]
                if L28_2 then
                  L28_2 = 1
                  L23_2 = L23_2 + L28_2
                end
              end
            end
            L24_2 = g_showLevelOpenAnimation
            if L24_2 then
              L24_2 = g_showLevelOpenAnimation
              L24_2 = L24_2 + L23_2
              if L24_2 == L21_2 then
                L24_2 = pathItemDefinition
                L25_2 = "lockedImage"
                L20_2 = L24_2[L25_2]
            end
            else
              L24_2 = pathItemDefinition
              L25_2 = "openImage"
              L20_2 = L24_2[L25_2]
              goto lbl_4884
              ::lbl_4881::
              L23_2 = pathItemDefinition
              L24_2 = "lockedImage"
              L20_2 = L23_2[L24_2]
            end
            ::lbl_4884::
            L23_2 = L8_2.x
            L24_2 = _G
            L24_2 = L24_2.math
            L25_2 = "cos"
            L24_2 = L24_2[L25_2]
            L25_2 = L16_2
            L24_2 = L24_2(L25_2)
            L24_2 = L24_2 * L19_2
            L23_2 = L23_2 + L24_2
            L24_2 = L8_2.y
            L25_2 = _G
            L25_2 = L25_2.math
            L26_2 = "sin"
            L25_2 = L25_2[L26_2]
            L26_2 = L16_2
            L25_2 = L25_2(L26_2)
            L25_2 = L25_2 * L19_2
            L24_2 = L24_2 + L25_2
            L25_2 = 0
            L26_2 = 2
            if L13_2 > L26_2 then
              L26_2 = objects
              L26_2 = L26_2.pathItems
              L26_2 = #L26_2
              if L13_2 < L26_2 then
                L26_2 = objects
                L26_2 = L26_2.pathItems
                L27_2 = 1
                L27_2 = L13_2 + L27_2
                L26_2 = L26_2[L27_2]
                L27_2 = "pathStartPointOnly"
                L26_2 = L26_2[L27_2]
                if not L26_2 then
                  L26_2 = interpolatedPosition
                  L27_2 = {}
                  L28_2 = objects
                  L28_2 = L28_2.pathItems
                  L29_2 = 2
                  L29_2 = L13_2 - L29_2
                  L28_2 = L28_2[L29_2]
                  L28_2 = L28_2.x
                  L27_2.x = L28_2
                  L28_2 = objects
                  L28_2 = L28_2.pathItems
                  L29_2 = 2
                  L29_2 = L13_2 - L29_2
                  L28_2 = L28_2[L29_2]
                  L28_2 = L28_2.y
                  L28_2 = L28_2 + L25_2
                  L27_2.y = L28_2
                  L28_2 = {}
                  L29_2 = objects
                  L29_2 = L29_2.pathItems
                  L30_2 = 1
                  L30_2 = L13_2 - L30_2
                  L29_2 = L29_2[L30_2]
                  L29_2 = L29_2.x
                  L28_2.x = L29_2
                  L29_2 = objects
                  L29_2 = L29_2.pathItems
                  L30_2 = 1
                  L30_2 = L13_2 - L30_2
                  L29_2 = L29_2[L30_2]
                  L29_2 = L29_2.y
                  L29_2 = L29_2 + L25_2
                  L28_2.y = L29_2
                  L29_2 = {}
                  L30_2 = objects
                  L30_2 = L30_2.pathItems
                  L30_2 = L30_2[L13_2]
                  L30_2 = L30_2.x
                  L29_2.x = L30_2
                  L30_2 = objects
                  L30_2 = L30_2.pathItems
                  L30_2 = L30_2[L13_2]
                  L30_2 = L30_2.y
                  L30_2 = L30_2 + L25_2
                  L29_2.y = L30_2
                  L30_2 = {}
                  L31_2 = objects
                  L31_2 = L31_2.pathItems
                  L32_2 = 1
                  L32_2 = L13_2 + L32_2
                  L31_2 = L31_2[L32_2]
                  L31_2 = L31_2.x
                  L30_2.x = L31_2
                  L31_2 = objects
                  L31_2 = L31_2.pathItems
                  L32_2 = 1
                  L32_2 = L13_2 + L32_2
                  L31_2 = L31_2[L32_2]
                  L31_2 = L31_2.y
                  L31_2 = L31_2 + L25_2
                  L30_2.y = L31_2
                  L31_2 = L19_2 / L15_2
                  L26_2, L27_2 = L26_2(L27_2, L28_2, L29_2, L30_2, L31_2)
                  L24_2 = L27_2
                  L23_2 = L26_2
                end
              end
            end
            L26_2 = {}
            L26_2.x = L23_2
            L26_2.y = L24_2
            L27_2 = "sprite"
            L26_2[L27_2] = L20_2
            L27_2 = "scale"
            L28_2 = pathItemDefinition
            L29_2 = "scale"
            L28_2 = L28_2[L29_2]
            L26_2[L27_2] = L28_2
            L27_2 = "targetScale"
            L28_2 = pathItemDefinition
            L29_2 = "scale"
            L28_2 = L28_2[L29_2]
            L26_2[L27_2] = L28_2
            L27_2 = _G
            L28_2 = "table"
            L27_2 = L27_2[L28_2]
            L28_2 = "insert"
            L27_2 = L27_2[L28_2]
            L28_2 = objects
            L28_2 = L28_2.pathItems
            L28_2 = L28_2[L13_2]
            L29_2 = "dots"
            L28_2 = L28_2[L29_2]
            L29_2 = L26_2
            L27_2(L28_2, L29_2)
            L27_2 = 1
            L9_2 = L9_2 + L27_2
            L27_2 = pathItemDefinition
            L28_2 = "dotInterval"
            L27_2 = L27_2[L28_2]
            L19_2 = L19_2 + L27_2
          end
        else
        end
      end
      ::lbl_5020::
      L8_2 = L14_2
    end
    L10_2 = g_showLevelOpenAnimation
    if L10_2 then
      L10_2 = pathItemDefinition
      L11_2 = "transitionTime"
      L10_2 = L10_2[L11_2]
      levelOpenAnimationTimer = L10_2
    end
  end
  L8_2 = _G
  L8_2 = L8_2.pairs
  L9_2 = objects
  L9_2 = L9_2.world
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = getObjectDefinition
    L14_2 = L11_2
    L13_2 = L13_2(L14_2)
    L14_2 = "shotData"
    L13_2 = L13_2[L14_2]
    if L13_2 then
      L13_2 = getJointedObjects
      L14_2 = loadedObjects
      L14_2 = L14_2.joints
      L15_2 = L11_2
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = 1
      L13_2 = L13_2[L14_2]
      L14_2 = nil
      if L13_2 == L14_2 then
      else
        L14_2 = fireAction
        L15_2 = "initEmitter"
        L16_2 = {}
        L17_2 = "name"
        L16_2[L17_2] = L11_2
        L17_2 = "objectCreated"
        L18_2 = true
        L16_2[L17_2] = L18_2
        L17_2 = "parent"
        L18_2 = "name"
        L18_2 = L13_2[L18_2]
        L16_2[L17_2] = L18_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  L8_2 = setupLevelTutorials
  L8_2()
  L8_2 = getLevelMetadata
  L9_2 = levelName
  L8_2 = L8_2(L9_2)
  L9_2 = "additionalChild"
  L8_2 = L8_2[L9_2]
  L9_2 = startedFromEditor
  if not L9_2 then
    L9_2 = _G
    L9_2 = L9_2.pairs
    L10_2 = loadedObjects
    L10_2 = L10_2.joints
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = "end1"
      L14_2 = L13_2[L14_2]
      if L14_2 then
        L14_2 = "end2"
        L14_2 = L13_2[L14_2]
        if L14_2 then
          L14_2 = objects
          L14_2 = L14_2.world
          L15_2 = "end1"
          L15_2 = L13_2[L15_2]
          L14_2 = L14_2[L15_2]
          L15_2 = nil
          if L14_2 ~= L15_2 then
            L14_2 = objects
            L14_2 = L14_2.world
            L15_2 = "end2"
            L15_2 = L13_2[L15_2]
            L14_2 = L14_2[L15_2]
            L15_2 = nil
            if L14_2 ~= L15_2 then
              L14_2 = blockTable
              L14_2 = L14_2.blocks
              L15_2 = objects
              L15_2 = L15_2.world
              L16_2 = "end1"
              L16_2 = L13_2[L16_2]
              L15_2 = L15_2[L16_2]
              L16_2 = "definition"
              L15_2 = L15_2[L16_2]
              L14_2 = L14_2[L15_2]
              L15_2 = blockTable
              L15_2 = L15_2.blocks
              L16_2 = objects
              L16_2 = L16_2.world
              L17_2 = "end2"
              L17_2 = L13_2[L17_2]
              L16_2 = L16_2[L17_2]
              L17_2 = "definition"
              L16_2 = L16_2[L17_2]
              L15_2 = L15_2[L16_2]
              L16_2 = nil
              L17_2 = nil
              L18_2 = L14_2.levelStars
              if L18_2 then
                L18_2 = objects
                L18_2 = L18_2.world
                L19_2 = "end2"
                L19_2 = L13_2[L19_2]
                L16_2 = L18_2[L19_2]
                L18_2 = objects
                L18_2 = L18_2.world
                L19_2 = "end1"
                L19_2 = L13_2[L19_2]
                L17_2 = L18_2[L19_2]
              else
                L18_2 = L15_2.levelStars
                if L18_2 then
                  L18_2 = objects
                  L18_2 = L18_2.world
                  L19_2 = "end1"
                  L19_2 = L13_2[L19_2]
                  L16_2 = L18_2[L19_2]
                  L18_2 = objects
                  L18_2 = L18_2.world
                  L19_2 = "end2"
                  L19_2 = L13_2[L19_2]
                  L17_2 = L18_2[L19_2]
                end
              end
              if L16_2 and L17_2 then
                L18_2 = objects
                L18_2 = L18_2.world
                L19_2 = "name"
                L19_2 = L16_2[L19_2]
                L18_2 = L18_2[L19_2]
                L19_2 = "startNumber"
                L18_2 = L18_2[L19_2]
                if L18_2 then
                  L18_2 = setVisible
                  L19_2 = "name"
                  L19_2 = L17_2[L19_2]
                  L20_2 = true
                  L18_2(L19_2, L20_2)
                  L18_2 = actions
                  L19_2 = "myLevels"
                  L18_2 = L18_2[L19_2]
                  L19_2 = currentFolder
                  L18_2 = L18_2[L19_2]
                  L19_2 = objects
                  L19_2 = L19_2.world
                  L20_2 = "name"
                  L20_2 = L16_2[L20_2]
                  L19_2 = L19_2[L20_2]
                  L20_2 = "startNumber"
                  L19_2 = L19_2[L20_2]
                  L18_2 = L18_2[L19_2]
                  L19_2 = getLevelStarsFromHighscores
                  L20_2 = L18_2
                  L19_2 = L19_2(L20_2)
                  L20_2 = 0
                  if L19_2 == L20_2 then
                    L20_2 = "sprite"
                    L21_2 = "BUTTON_LEVEL_STAR_0"
                    L17_2[L20_2] = L21_2
                    L20_2 = isLevelUnlocked
                    L21_2 = currentFolder
                    L22_2 = objects
                    L22_2 = L22_2.world
                    L23_2 = "name"
                    L23_2 = L16_2[L23_2]
                    L22_2 = L22_2[L23_2]
                    L23_2 = "startNumber"
                    L22_2 = L22_2[L23_2]
                    L20_2 = L20_2(L21_2, L22_2)
                    if not L20_2 then
                      L20_2 = setVisible
                      L21_2 = "name"
                      L21_2 = L17_2[L21_2]
                      L22_2 = false
                      L20_2(L21_2, L22_2)
                    end
                    L20_2 = highscores
                    L20_2 = L20_2[L18_2]
                    L21_2 = nil
                    if L20_2 ~= L21_2 then
                      L20_2 = highscores
                      L20_2 = L20_2[L18_2]
                      L21_2 = "eagleScore"
                      L20_2 = L20_2[L21_2]
                      L21_2 = nil
                      if L20_2 ~= L21_2 then
                        L20_2 = setVisible
                        L21_2 = "name"
                        L21_2 = L17_2[L21_2]
                        L22_2 = true
                        L20_2(L21_2, L22_2)
                      end
                    end
                    L20_2 = SettingsWrapper
                    L22_2 = "getLevelProgress"
                    L21_2 = L20_2
                    L20_2 = L20_2[L22_2]
                    L22_2 = currentFolder
                    L20_2 = L20_2(L21_2, L22_2)
                    L21_2 = objects
                    L21_2 = L21_2.world
                    L22_2 = "name"
                    L22_2 = L16_2[L22_2]
                    L21_2 = L21_2[L22_2]
                    L22_2 = "startNumber"
                    L21_2 = L21_2[L22_2]
                    if L20_2 == L21_2 then
                      L20_2 = setVisible
                      L21_2 = "name"
                      L21_2 = L17_2[L21_2]
                      L22_2 = true
                      L20_2(L21_2, L22_2)
                      L20_2 = getEpisodeMetadata
                      L21_2 = currentFolder
                      L20_2 = L20_2(L21_2)
                      L21_2 = "openLevelsLimit"
                      L20_2 = L20_2[L21_2]
                      if L20_2 then
                        L20_2 = getEpisodeMetadata
                        L21_2 = currentFolder
                        L20_2 = L20_2(L21_2)
                        L21_2 = "openLevelsLimit"
                        L20_2 = L20_2[L21_2]
                        L21_2 = 2
                        L20_2 = L20_2 + L21_2
                        L21_2 = objects
                        L21_2 = L21_2.world
                        L22_2 = "name"
                        L22_2 = L16_2[L22_2]
                        L21_2 = L21_2[L22_2]
                        L22_2 = "startNumber"
                        L21_2 = L21_2[L22_2]
                        if L20_2 <= L21_2 then
                          L20_2 = setVisible
                          L21_2 = "name"
                          L21_2 = L17_2[L21_2]
                          L22_2 = false
                          L20_2(L21_2, L22_2)
                        end
                      end
                    end
                  else
                    L20_2 = 1
                    if L19_2 == L20_2 then
                      L20_2 = "sprite"
                      L21_2 = "BUTTON_LEVEL_STAR_1"
                      L17_2[L20_2] = L21_2
                    else
                      L20_2 = 2
                      if L19_2 == L20_2 then
                        L20_2 = "sprite"
                        L21_2 = "BUTTON_LEVEL_STAR_2"
                        L17_2[L20_2] = L21_2
                      else
                        L20_2 = 3
                        if L19_2 == L20_2 then
                          L20_2 = "sprite"
                          L21_2 = "BUTTON_LEVEL_STAR_3"
                          L17_2[L20_2] = L21_2
                        end
                      end
                    end
                  end
                  L20_2 = getEpisodeMetadata
                  L21_2 = currentFolder
                  L20_2 = L20_2(L21_2)
                  L21_2 = "iapPurchase"
                  L20_2 = L20_2[L21_2]
                  L21_2 = true
                  if L20_2 == L21_2 then
                    L20_2 = getEpisodeMetadataWithParam
                    L21_2 = currentFolder
                    L22_2 = "iapPurchaseId"
                    L20_2 = L20_2(L21_2, L22_2)
                    L21_2 = nil
                    if L20_2 ~= L21_2 then
                      L21_2 = SettingsWrapper
                      L23_2 = "isEpisodePurchased"
                      L22_2 = L21_2
                      L21_2 = L21_2[L23_2]
                      L23_2 = L20_2
                      L21_2 = L21_2(L22_2, L23_2)
                      L22_2 = true
                      if L21_2 ~= L22_2 then
                        L21_2 = highscores
                        L21_2 = L21_2[L18_2]
                        L22_2 = nil
                        if L21_2 == L22_2 then
                          L21_2 = setVisible
                          L22_2 = "name"
                          L22_2 = L17_2[L22_2]
                          L23_2 = false
                          L21_2(L22_2, L23_2)
                        end
                      end
                    end
                  end
                  L20_2 = getEpisodeMetadata
                  L21_2 = currentFolder
                  L20_2 = L20_2(L21_2)
                  L21_2 = "droidEpisode"
                  L20_2 = L20_2[L21_2]
                  if L20_2 then
                    L20_2 = SettingsWrapper
                    L22_2 = "isDroidLevelUnlocked"
                    L21_2 = L20_2
                    L20_2 = L20_2[L22_2]
                    L22_2 = L18_2
                    L20_2 = L20_2(L21_2, L22_2)
                    L21_2 = true
                    if L20_2 ~= L21_2 then
                      L20_2 = highscores
                      L20_2 = L20_2[L18_2]
                      L21_2 = nil
                      if L20_2 == L21_2 then
                        L20_2 = setVisible
                        L21_2 = "name"
                        L21_2 = L17_2[L21_2]
                        L22_2 = false
                        L20_2(L21_2, L22_2)
                      end
                    end
                  end
                  L20_2 = setVisible
                  L21_2 = "name"
                  L21_2 = L17_2[L21_2]
                  L22_2 = false
                  L20_2(L21_2, L22_2)
                  L20_2 = setSprite
                  L21_2 = "name"
                  L21_2 = L17_2[L21_2]
                  L22_2 = "sprite"
                  L22_2 = L17_2[L22_2]
                  L20_2(L21_2, L22_2)
                end
              end
          end
          else
            L14_2 = levelName
            L15_2 = "LevelSelection"
            if L14_2 == L15_2 then
              L14_2 = objects
              L14_2 = L14_2.world
              L15_2 = "end2"
              L15_2 = L13_2[L15_2]
              L14_2 = L14_2[L15_2]
              L15_2 = nil
              if L14_2 ~= L15_2 then
                L14_2 = objects
                L14_2 = L14_2.levelStars
                L15_2 = "end2"
                L15_2 = L13_2[L15_2]
                L16_2 = nil
                L14_2[L15_2] = L16_2
                L14_2 = setObjectParameter
                L15_2 = "end2"
                L15_2 = L13_2[L15_2]
                L16_2 = 33
                L17_2 = 0
                L14_2(L15_2, L16_2, L17_2)
              else
                L14_2 = objects
                L14_2 = L14_2.world
                L15_2 = "end1"
                L15_2 = L13_2[L15_2]
                L14_2 = L14_2[L15_2]
                L15_2 = nil
                if L14_2 ~= L15_2 then
                  L14_2 = objects
                  L14_2 = L14_2.levelStars
                  L15_2 = "end1"
                  L15_2 = L13_2[L15_2]
                  L16_2 = nil
                  L14_2[L15_2] = L16_2
                  L14_2 = setObjectParameter
                  L15_2 = "end1"
                  L15_2 = L13_2[L15_2]
                  L16_2 = 33
                  L17_2 = 0
                  L14_2(L15_2, L16_2, L17_2)
                end
              end
            end
            L14_2 = loadedObjects
            L14_2 = L14_2.joints
            L15_2 = nil
            L14_2[L12_2] = L15_2
          end
        end
      end
    end
  end
  L9_2 = connectPortals
  L9_2()
  L4_2 = true
  L9_2 = setWindForceFromTheme
  L10_2 = currentTheme
  L9_2(L10_2)
  L9_2 = objects
  L10_2 = "worldGravity"
  L11_2 = loadedObjects
  L12_2 = "worldGravity"
  L11_2 = L11_2[L12_2]
  L9_2[L10_2] = L11_2
  L9_2 = setWorldGravity
  L10_2 = objects
  L11_2 = "windForce"
  L10_2 = L10_2[L11_2]
  L11_2 = objects
  L12_2 = "worldGravity"
  L11_2 = L11_2[L12_2]
  if not L11_2 then
    L11_2 = 0
  end
  L9_2(L10_2, L11_2)
  L9_2 = objects
  L10_2 = "isDarkSideLevel"
  L11_2 = loadedObjects
  L12_2 = "isDarkSideLevel"
  L11_2 = L11_2[L12_2]
  L9_2[L10_2] = L11_2
  L9_2 = objects
  L10_2 = "isDarkSideLevel"
  L9_2 = L9_2[L10_2]
  if L9_2 then
    L9_2 = getEpisodeMetadata
    L10_2 = currentFolder
    L9_2 = L9_2(L10_2)
    L10_2 = "bonusChapter"
    L9_2 = L9_2[L10_2]
    if L9_2 then
      L9_2 = getLevelMetadata
      L10_2 = levelName
      L9_2 = L9_2(L10_2)
      L10_2 = "type"
      L9_2 = L9_2[L10_2]
      L10_2 = "menu"
      if L9_2 == L10_2 then
        goto lbl_5473
      end
    end
    L9_2 = SettingsWrapper
    L11_2 = "setDarkSideOpen"
    L10_2 = L9_2
    L9_2 = L9_2[L11_2]
    L9_2(L10_2)
  end
  ::lbl_5473::
  if L8_2 then
    L9_2 = ui
    L10_2 = "className"
    L10_2 = L8_2[L10_2]
    L9_2 = L9_2[L10_2]
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L12_2 = "name"
    L13_2 = "name"
    L13_2 = L8_2[L13_2]
    if not L13_2 then
      L13_2 = ""
    end
    L11_2[L12_2] = L13_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = menuManager
    L12_2 = "getRoot"
    L11_2 = L10_2
    L10_2 = L10_2[L12_2]
    L10_2 = L10_2(L11_2)
    L12_2 = "addChild"
    L11_2 = L10_2
    L10_2 = L10_2[L12_2]
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L9_2 = {}
  spawnList = L9_2
  L9_2 = loadedObjects
  L10_2 = "themeSprites"
  L9_2 = L9_2[L10_2]
  if L9_2 then
    L9_2 = _G
    L9_2 = L9_2.pairs
    L10_2 = loadedObjects
    L11_2 = "themeSprites"
    L10_2 = L10_2[L11_2]
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = addThemeSprite
      L15_2 = L12_2
      L16_2 = L13_2
      L17_2 = "layer"
      L17_2 = L13_2[L17_2]
      L14_2(L15_2, L16_2, L17_2)
      L14_2 = objects
      L15_2 = "themeSprites"
      L14_2 = L14_2[L15_2]
      if not L14_2 then
        L14_2 = objects
        L15_2 = "themeSprites"
        L16_2 = {}
        L14_2[L15_2] = L16_2
      end
      L14_2 = objects
      L15_2 = "themeSprites"
      L14_2 = L14_2[L15_2]
      L15_2 = "name"
      L15_2 = L13_2[L15_2]
      L16_2 = {}
      L17_2 = "definition"
      L18_2 = "definition"
      L18_2 = L13_2[L18_2]
      L16_2[L17_2] = L18_2
      L17_2 = "name"
      L18_2 = "name"
      L18_2 = L13_2[L18_2]
      L16_2[L17_2] = L18_2
      L17_2 = L13_2.x
      L16_2.x = L17_2
      L17_2 = L13_2.y
      L16_2.y = L17_2
      L17_2 = "layer"
      L18_2 = "layer"
      L18_2 = L13_2[L18_2]
      L16_2[L17_2] = L18_2
      L17_2 = "angle"
      L18_2 = "angle"
      L18_2 = L13_2[L18_2]
      L16_2[L17_2] = L18_2
      L17_2 = "scale"
      L18_2 = {}
      L19_2 = "scale"
      L19_2 = L13_2[L19_2]
      L19_2 = L19_2.x
      L18_2.x = L19_2
      L19_2 = "scale"
      L19_2 = L13_2[L19_2]
      L19_2 = L19_2.y
      L18_2.y = L19_2
      L16_2[L17_2] = L18_2
      L17_2 = "screenX"
      L18_2 = "screenX"
      L18_2 = L13_2[L18_2]
      L16_2[L17_2] = L18_2
      L17_2 = "screenY"
      L18_2 = "screenY"
      L18_2 = L13_2[L18_2]
      L16_2[L17_2] = L18_2
      L14_2[L15_2] = L16_2
    end
  end
  L9_2 = loadedObjects
  L9_2 = L9_2.joints
  L10_2 = nil
  if L9_2 ~= L10_2 then
    L9_2 = createJoints
    L10_2 = loadedObjects
    L10_2 = L10_2.joints
    L9_2(L10_2)
  end
  L9_2 = objects
  L10_2 = loadedObjects
  L10_2 = L10_2.castleCameraData
  L9_2.castleCameraData = L10_2
  L9_2 = objects
  L10_2 = loadedObjects
  L10_2 = L10_2.birdCameraData
  L9_2.birdCameraData = L10_2
  L9_2 = objects
  L10_2 = "doNotWaitForMovingObjects"
  L11_2 = loadedObjects
  L12_2 = "doNotWaitForMovingObjects"
  L11_2 = L11_2[L12_2]
  L9_2[L10_2] = L11_2
  L9_2 = nil
  selectedBird = L9_2
  L9_2 = 0
  L10_2 = _G
  L10_2 = L10_2.pairs
  L11_2 = objects
  L11_2 = L11_2.world
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = "controllable"
    L15_2 = L14_2[L15_2]
    L16_2 = true
    if L15_2 == L16_2 then
      L15_2 = "damageDone"
      L16_2 = 0
      L14_2[L15_2] = L16_2
      L15_2 = "animTimer"
      L16_2 = 0
      L14_2[L15_2] = L16_2
      L15_2 = "jumpTimer"
      L16_2 = _G
      L16_2 = L16_2.math
      L17_2 = "random"
      L16_2 = L16_2[L17_2]
      L17_2 = 10
      L18_2 = 30
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = 10
      L16_2 = L16_2 / L17_2
      L14_2[L15_2] = L16_2
      L15_2 = setObjectParameter
      L16_2 = "name"
      L16_2 = L14_2[L16_2]
      L17_2 = 2
      L18_2 = 0
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = startedFromEditor
      if not L15_2 then
        L15_2 = _G
        L15_2 = L15_2.pairs
        L16_2 = birds
        L15_2, L16_2, L17_2 = L15_2(L16_2)
        for L18_2, L19_2 in L15_2, L16_2, L17_2 do
          L20_2 = assert
          L21_2 = "startNumber"
          L21_2 = L19_2[L21_2]
          L22_2 = "startNumber"
          L22_2 = L14_2[L22_2]
          L21_2 = L21_2 ~= L22_2
          L22_2 = "Duplicate start numbers for birds in level "
          L23_2 = A0_2
          L22_2 = L22_2 .. L23_2
          L20_2(L21_2, L22_2)
        end
      end
      L15_2 = birds
      L15_2[L13_2] = L14_2
    end
    L15_2 = "levelGoal"
    L15_2 = L14_2[L15_2]
    if L15_2 then
      L15_2 = "blinkTimer"
      L16_2 = _G
      L16_2 = L16_2.math
      L17_2 = "random"
      L16_2 = L16_2[L17_2]
      L17_2 = 5
      L18_2 = 30
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = 10
      L16_2 = L16_2 / L17_2
      L14_2[L15_2] = L16_2
      L15_2 = levelGoals
      L15_2[L13_2] = L14_2
      L15_2 = setObjectParameter
      L16_2 = L13_2
      L17_2 = 1
      L18_2 = 1
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = "useEmotionSensor"
      L15_2 = L14_2[L15_2]
      L16_2 = nil
      if L15_2 == L16_2 then
        L15_2 = "useEmotionSensor"
        L16_2 = true
        L14_2[L15_2] = L16_2
      end
    end
    L15_2 = getObjectDefinition
    L16_2 = L13_2
    L15_2 = L15_2(L16_2)
    L16_2 = "isBubble"
    L15_2 = L15_2[L16_2]
    if L15_2 then
      L15_2 = setObjectParameter
      L16_2 = L13_2
      L17_2 = 34
      L18_2 = 1
      L15_2(L16_2, L17_2, L18_2)
    end
    L15_2 = "definition"
    L15_2 = L14_2[L15_2]
    L16_2 = "compound"
    if L15_2 ~= L16_2 then
      L15_2 = getObjectDefinition
      L16_2 = L13_2
      L15_2 = L15_2(L16_2)
      L16_2 = "animations"
      L15_2 = L15_2[L16_2]
      L16_2 = nil
      if L15_2 ~= L16_2 then
        L15_2 = animatedObjects
        L15_2[L13_2] = L14_2
        L15_2 = setObjectParameter
        L16_2 = L13_2
        L17_2 = 13
        L18_2 = 1
        L15_2(L16_2, L17_2, L18_2)
      end
      L15_2 = blockTable
      L15_2 = L15_2.blocks
      L16_2 = "definition"
      L16_2 = L14_2[L16_2]
      L15_2 = L15_2[L16_2]
      L16_2 = "bounceAmplitudeMultiplier"
      L15_2 = L15_2[L16_2]
      if not L15_2 then
        L15_2 = 0
      end
      L16_2 = blockTable
      L16_2 = L16_2.blocks
      L17_2 = "definition"
      L17_2 = L14_2[L17_2]
      L16_2 = L16_2[L17_2]
      L17_2 = "bounceFrequencyMultiplier"
      L16_2 = L16_2[L17_2]
      if not L16_2 then
        L16_2 = 0
      end
      L17_2 = setObjectParameter
      L18_2 = "name"
      L18_2 = L14_2[L18_2]
      L19_2 = 6
      L20_2 = L15_2
      L17_2(L18_2, L19_2, L20_2)
      L17_2 = setObjectParameter
      L18_2 = "name"
      L18_2 = L14_2[L18_2]
      L19_2 = 7
      L20_2 = L16_2
      L17_2(L18_2, L19_2, L20_2)
      L17_2 = getDamageSprite
      L18_2 = L14_2
      L19_2 = blockTable
      L19_2 = L19_2.blocks
      L17_2 = L17_2(L18_2, L19_2)
      L18_2 = "damageSprite"
      L19_2 = "sprite"
      L19_2 = L17_2[L19_2]
      L14_2[L18_2] = L19_2
      L18_2 = "blinkSprite"
      L19_2 = "blink"
      L19_2 = L17_2[L19_2]
      L14_2[L18_2] = L19_2
      L18_2 = "smileSprite"
      L19_2 = "smile"
      L19_2 = L17_2[L19_2]
      L14_2[L18_2] = L19_2
      L18_2 = "frozen"
      L19_2 = false
      L14_2[L18_2] = L19_2
      L18_2 = blockTable
      L18_2 = L18_2.blocks
      L19_2 = "definition"
      L19_2 = L14_2[L19_2]
      L18_2 = L18_2[L19_2]
      L19_2 = "destroyedScoreInc"
      L18_2 = L18_2[L19_2]
      L19_2 = "controllable"
      L19_2 = L14_2[L19_2]
      if L19_2 then
        L19_2 = birdsLeftScoreIncrement
        L9_2 = L9_2 + L19_2
      else
        L19_2 = "levelGoal"
        L19_2 = L14_2[L19_2]
        if L19_2 then
          L19_2 = "strength"
          L19_2 = L14_2[L19_2]
          L20_2 = 10
          L19_2 = L19_2 * L20_2
          L19_2 = L9_2 + L19_2
          L9_2 = L19_2 + L18_2
        else
          L19_2 = "defence"
          L19_2 = L14_2[L19_2]
          L20_2 = 1000
          if L19_2 <= L20_2 then
            L19_2 = "strength"
            L19_2 = L14_2[L19_2]
            L20_2 = 10
            L19_2 = L19_2 * L20_2
            L9_2 = L9_2 + L19_2
            L19_2 = blockDestroyedScoreIncrement
            destroyedBonus = L19_2
            L19_2 = blockTable
            L19_2 = L19_2.blocks
            L20_2 = "definition"
            L20_2 = L14_2[L20_2]
            L19_2 = L19_2[L20_2]
            L20_2 = "destroyedScoreInc"
            L19_2 = L19_2[L20_2]
            L20_2 = nil
            if L19_2 ~= L20_2 then
              L19_2 = blockTable
              L19_2 = L19_2.blocks
              L20_2 = "definition"
              L20_2 = L14_2[L20_2]
              L19_2 = L19_2[L20_2]
              L20_2 = "destroyedScoreInc"
              L19_2 = L19_2[L20_2]
              destroyedBonus = L19_2
            end
            L19_2 = destroyedBonus
            L9_2 = L9_2 + L19_2
          end
        end
      end
    end
  end
  L10_2 = birdsLeftScoreIncrement
  L9_2 = L9_2 - L10_2
  L10_2 = 0
  levelStartTimer = L10_2
  L10_2 = _G
  L10_2 = L10_2.pairs
  L11_2 = birds
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = setObjectParameter
    L16_2 = L13_2
    L17_2 = 2
    L18_2 = 1
    L15_2(L16_2, L17_2, L18_2)
    L15_2 = "controlRadius"
    L16_2 = slingshotScale
    L17_2 = 5.5
    L16_2 = L17_2 * L16_2
    L14_2[L15_2] = L16_2
    L15_2 = "originalPosX"
    L15_2 = L14_2[L15_2]
    if L15_2 then
      L15_2 = "originalPosY"
      L15_2 = L14_2[L15_2]
      if L15_2 then
        goto lbl_5865
      end
    end
    L15_2 = "originalPosX"
    L16_2 = L14_2.x
    L14_2[L15_2] = L16_2
    L15_2 = "originalPosY"
    L16_2 = L14_2.y
    L14_2[L15_2] = L16_2
    ::lbl_5865::
  end
  L10_2 = getNextBird
  L11_2 = 1
  L10_2 = L10_2(L11_2)
  L11_2 = nil
  if L10_2 ~= L11_2 then
    L11_2 = setObjectParameter
    L12_2 = L10_2
    L13_2 = 2
    L14_2 = 1
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = isSandboxBird
    L12_2 = objects
    L12_2 = L12_2.world
    L12_2 = L12_2[L10_2]
    L13_2 = "definition"
    L12_2 = L12_2[L13_2]
    L11_2 = L11_2(L12_2)
    g_isSandboxLevel = L11_2
  end
  L11_2 = currentFolder
  if L11_2 ~= "bonus" then
    L11_2 = resumingOldLevel
    if L11_2 then
      L11_2 = levelStartPosition
      L12_2 = oldLevelStartPosition
      L12_2 = L12_2.x
      L11_2.x = L12_2
      L11_2 = levelStartPosition
      L12_2 = oldLevelStartPosition
      L12_2 = L12_2.y
      L11_2.y = L12_2
      L11_2 = rubberBandPos
      L12_2 = oldLevelStartPosition
      L12_2 = L12_2.x
      L13_2 = slingshotScale
      L14_2 = 0.1
      L13_2 = L14_2 * L13_2
      L12_2 = L12_2 - L13_2
      L11_2.x = L12_2
      L11_2 = rubberBandPos
      L12_2 = oldLevelStartPosition
      L12_2 = L12_2.y
      L13_2 = slingshotScale
      L14_2 = 0.1
      L13_2 = L14_2 * L13_2
      L12_2 = L12_2 - L13_2
      L11_2.y = L12_2
      L11_2 = oldSlingShotAngle
      slingShotAngle = L11_2
      L11_2 = false
      resumingOldLevel = L11_2
  end
  else
    L11_2 = nil
    if L10_2 ~= L11_2 then
      L11_2 = objects
      L11_2 = L11_2.world
      L11_2 = L11_2[L10_2]
      L12_2 = nil
      if L11_2 ~= L12_2 then
        L11_2 = res
        L12_2 = "getSpritePivot"
        L11_2 = L11_2[L12_2]
        L12_2 = "SLING_SHOT_01_BACK"
        L11_2, L12_2 = L11_2(L12_2)
        L13_2 = slingshotScale
        L13_2 = L11_2 * L13_2
        L14_2 = slingshotScale
        L12_2 = L12_2 * L14_2
        L11_2 = L13_2
        L13_2 = res
        L14_2 = "getSpriteBounds"
        L13_2 = L13_2[L14_2]
        L14_2 = "SLING_SHOT_01_BACK"
        L13_2, L14_2 = L13_2(L14_2)
        L15_2 = slingshotScale
        L15_2 = L13_2 * L15_2
        L16_2 = slingshotScale
        L14_2 = L14_2 * L16_2
        L13_2 = L15_2
        L15_2 = objects
        L15_2 = L15_2.world
        L15_2 = L15_2[L10_2]
        L16_2 = "radius"
        L15_2 = L15_2[L16_2]
        L16_2 = nil
        if L15_2 == L16_2 then
          L15_2 = 0
        end
        L16_2 = levelStartPosition
        L17_2 = objects
        L17_2 = L17_2.world
        L17_2 = L17_2[L10_2]
        L17_2 = L17_2.x
        L16_2.x = L17_2
        L16_2 = levelStartPosition
        L17_2 = objects
        L17_2 = L17_2.world
        L17_2 = L17_2[L10_2]
        L17_2 = L17_2.y
        L18_2 = L14_2 - L12_2
        L19_2 = physicsScale
        L18_2 = L18_2 * L19_2
        L17_2 = L17_2 - L18_2
        L17_2 = L17_2 + L15_2
        L18_2 = slingshotScale
        L19_2 = 0.2
        L18_2 = L19_2 * L18_2
        L17_2 = L17_2 + L18_2
        L16_2.y = L17_2
        L16_2 = rubberBandPos
        L17_2 = levelStartPosition
        L17_2 = L17_2.x
        L18_2 = slingshotScale
        L19_2 = 0.1
        L18_2 = L19_2 * L18_2
        L17_2 = L17_2 - L18_2
        L16_2.x = L17_2
        L16_2 = rubberBandPos
        L17_2 = levelStartPosition
        L17_2 = L17_2.y
        L18_2 = slingshotScale
        L19_2 = 0.1
        L18_2 = L19_2 * L18_2
        L17_2 = L17_2 - L18_2
        L16_2.y = L17_2
        L16_2 = objects
        L16_2 = L16_2.world
        L16_2 = L16_2[L10_2]
        L17_2 = "angle"
        L16_2 = L16_2[L17_2]
        slingShotAngle = L16_2
      end
    end
  end
  L11_2 = blockTable
  L12_2 = "themes"
  L11_2 = L11_2[L12_2]
  L12_2 = objects
  L12_2 = L12_2.theme
  L11_2 = L11_2[L12_2]
  L12_2 = "skyColor"
  L11_2 = L11_2[L12_2]
  L12_2 = setBGColor
  L13_2 = "r"
  L13_2 = L11_2[L13_2]
  L14_2 = "g"
  L14_2 = L11_2[L14_2]
  L15_2 = "b"
  L15_2 = L11_2[L15_2]
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = objects
  L12_2 = L12_2.birdCameraData
  L13_2 = nil
  if L12_2 ~= L13_2 then
    L12_2 = false
    L13_2 = 1
    L14_2 = g_cameraProfileList
    L14_2 = #L14_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = g_cameraProfileList
      L17_2 = L17_2[L16_2]
      L18_2 = objects
      L18_2 = L18_2.birdCameraData
      L18_2 = L18_2[L17_2]
      L19_2 = nil
      if L18_2 ~= L19_2 then
        L12_2 = true
        L18_2 = deviceModel
        if L17_2 ~= L18_2 then
          L18_2 = objects
          L18_2 = L18_2.birdCameraData
          L19_2 = deviceModel
          L20_2 = {}
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.birdCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "px"
          L20_2 = objects
          L20_2 = L20_2.birdCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "px"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.birdCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "py"
          L20_2 = objects
          L20_2 = L20_2.birdCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "py"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.birdCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "sx"
          L20_2 = objects
          L20_2 = L20_2.birdCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "sx"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.birdCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "sy"
          L20_2 = objects
          L20_2 = L20_2.birdCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "sy"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.birdCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "screenWidth"
          L20_2 = objects
          L20_2 = L20_2.birdCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "screenWidth"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.birdCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "screenHeight"
          L20_2 = objects
          L20_2 = L20_2.birdCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "screenHeight"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
        end
        break
      end
    end
    L13_2 = assert
    L14_2 = true
    L14_2 = L12_2 == L14_2
    L15_2 = "No camera data found for "
    L16_2 = levelName
    L15_2 = L15_2 .. L16_2
    L13_2(L14_2, L15_2)
    L13_2 = objects
    L13_2 = L13_2.birdCameraData
    L14_2 = deviceModel
    L13_2 = L13_2[L14_2]
    L14_2 = "screenWidth"
    L14_2 = L13_2[L14_2]
    L15_2 = nil
    if L14_2 == L15_2 then
      L14_2 = "screenWidth"
      L15_2 = 1680
      L13_2[L14_2] = L15_2
    end
    L14_2 = "screenHeight"
    L14_2 = L13_2[L14_2]
    L15_2 = nil
    if L14_2 == L15_2 then
      L14_2 = "screenHeight"
      L15_2 = 1050
      L13_2[L14_2] = L15_2
    end
    L14_2 = gameCamera
    L16_2 = "addCamera"
    L15_2 = L14_2
    L14_2 = L14_2[L16_2]
    L16_2 = "bird"
    L17_2 = L13_2
    L14_2(L15_2, L16_2, L17_2)
  else
    L12_2 = objects
    L13_2 = {}
    L12_2.birdCameraData = L13_2
    L12_2 = objects
    L12_2 = L12_2.birdCameraData
    L13_2 = deviceModel
    L14_2 = {}
    L12_2[L13_2] = L14_2
    L12_2 = objects
    L12_2 = L12_2.birdCameraData
    L13_2 = deviceModel
    L12_2 = L12_2[L13_2]
    L13_2 = "sx"
    L14_2 = 1
    L12_2[L13_2] = L14_2
    L13_2 = "sy"
    L14_2 = 1
    L12_2[L13_2] = L14_2
    L13_2 = "px"
    L14_2 = screen
    L14_2 = L14_2.x
    L12_2[L13_2] = L14_2
    L13_2 = "py"
    L14_2 = screen
    L14_2 = L14_2.y
    L12_2[L13_2] = L14_2
    L13_2 = "screenWidth"
    L14_2 = screenWidth
    L12_2[L13_2] = L14_2
    L13_2 = "screenHeight"
    L14_2 = screenHeight
    L12_2[L13_2] = L14_2
    L13_2 = gameCamera
    L15_2 = "addCamera"
    L14_2 = L13_2
    L13_2 = L13_2[L15_2]
    L15_2 = "bird"
    L16_2 = L12_2
    L13_2(L14_2, L15_2, L16_2)
  end
  L12_2 = objects
  L12_2 = L12_2.castleCameraData
  L13_2 = nil
  if L12_2 ~= L13_2 then
    L12_2 = objects
    L12_2 = L12_2.castleCameraData
    L13_2 = "referenceCamera"
    L14_2 = {}
    L12_2[L13_2] = L14_2
    L12_2 = _G
    L12_2 = L12_2.pairs
    L13_2 = objects
    L13_2 = L13_2.castleCameraData
    L14_2 = "ios"
    L13_2 = L13_2[L14_2]
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    for L15_2, L16_2 in L12_2, L13_2, L14_2 do
      L17_2 = objects
      L17_2 = L17_2.castleCameraData
      L18_2 = "referenceCamera"
      L17_2 = L17_2[L18_2]
      L17_2[L15_2] = L16_2
    end
    L12_2 = false
    L13_2 = 1
    L14_2 = g_cameraProfileList
    L14_2 = #L14_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = g_cameraProfileList
      L17_2 = L17_2[L16_2]
      L18_2 = objects
      L18_2 = L18_2.castleCameraData
      L18_2 = L18_2[L17_2]
      L19_2 = nil
      if L18_2 ~= L19_2 then
        L12_2 = true
        L18_2 = deviceModel
        if L17_2 ~= L18_2 then
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L20_2 = {}
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "px"
          L20_2 = objects
          L20_2 = L20_2.castleCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "px"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "py"
          L20_2 = objects
          L20_2 = L20_2.castleCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "py"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "sx"
          L20_2 = objects
          L20_2 = L20_2.castleCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "sx"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "sy"
          L20_2 = objects
          L20_2 = L20_2.castleCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "sy"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "screenWidth"
          L20_2 = objects
          L20_2 = L20_2.castleCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "screenWidth"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "screenHeight"
          L20_2 = objects
          L20_2 = L20_2.castleCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "screenHeight"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
          L18_2 = objects
          L18_2 = L18_2.castleCameraData
          L19_2 = deviceModel
          L18_2 = L18_2[L19_2]
          L19_2 = "otherCameras"
          L20_2 = objects
          L20_2 = L20_2.castleCameraData
          L20_2 = L20_2[L17_2]
          L21_2 = "otherCameras"
          L20_2 = L20_2[L21_2]
          L18_2[L19_2] = L20_2
        end
        break
      end
    end
    L13_2 = assert
    L14_2 = true
    L14_2 = L12_2 == L14_2
    L15_2 = "No camera data found for "
    L16_2 = levelName
    L15_2 = L15_2 .. L16_2
    L13_2(L14_2, L15_2)
    L13_2 = objects
    L13_2 = L13_2.castleCameraData
    L14_2 = deviceModel
    L13_2 = L13_2[L14_2]
    L14_2 = "screenWidth"
    L14_2 = L13_2[L14_2]
    L15_2 = nil
    if L14_2 == L15_2 then
      L14_2 = "screenWidth"
      L15_2 = 1680
      L13_2[L14_2] = L15_2
    end
    L14_2 = "screenHeight"
    L14_2 = L13_2[L14_2]
    L15_2 = nil
    if L14_2 == L15_2 then
      L14_2 = "screenHeight"
      L15_2 = 1050
      L13_2[L14_2] = L15_2
    end
    L14_2 = gameCamera
    L16_2 = "addCamera"
    L15_2 = L14_2
    L14_2 = L14_2[L16_2]
    L16_2 = "castle"
    L17_2 = L13_2
    L14_2(L15_2, L16_2, L17_2)
  else
    L12_2 = objects
    L13_2 = {}
    L12_2.castleCameraData = L13_2
    L12_2 = objects
    L12_2 = L12_2.castleCameraData
    L13_2 = deviceModel
    L14_2 = {}
    L12_2[L13_2] = L14_2
    L12_2 = objects
    L12_2 = L12_2.castleCameraData
    L13_2 = deviceModel
    L12_2 = L12_2[L13_2]
    L13_2 = "sx"
    L14_2 = 1
    L12_2[L13_2] = L14_2
    L13_2 = "sy"
    L14_2 = 1
    L12_2[L13_2] = L14_2
    L13_2 = "px"
    L14_2 = screen
    L14_2 = L14_2.x
    L12_2[L13_2] = L14_2
    L13_2 = "py"
    L14_2 = screen
    L14_2 = L14_2.y
    L12_2[L13_2] = L14_2
    L13_2 = "screenWidth"
    L14_2 = screenWidth
    L12_2[L13_2] = L14_2
    L13_2 = "screenHeight"
    L14_2 = screenHeight
    L12_2[L13_2] = L14_2
    L13_2 = gameCamera
    L15_2 = "addCamera"
    L14_2 = L13_2
    L13_2 = L13_2[L15_2]
    L15_2 = "castle"
    L16_2 = L12_2
    L13_2(L14_2, L15_2, L16_2)
    L13_2 = objects
    L13_2 = L13_2.castleCameraData
    L14_2 = "referenceCamera"
    L15_2 = {}
    L13_2[L14_2] = L15_2
    L13_2 = _G
    L13_2 = L13_2.pairs
    L14_2 = L12_2
    L13_2, L14_2, L15_2 = L13_2(L14_2)
    for L16_2, L17_2 in L13_2, L14_2, L15_2 do
      L18_2 = objects
      L18_2 = L18_2.castleCameraData
      L19_2 = "referenceCamera"
      L18_2 = L18_2[L19_2]
      L18_2[L16_2] = L17_2
    end
  end
  L12_2 = false
  g_toggleLevelCameraControl = L12_2
  L12_2 = objects
  L12_2 = L12_2.castleCameraData
  L13_2 = deviceModel
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = objects
    L12_2 = L12_2.castleCameraData
    L13_2 = deviceModel
    L12_2 = L12_2[L13_2]
    L13_2 = "otherCameras"
    L12_2 = L12_2[L13_2]
    L13_2 = nil
    if L12_2 ~= L13_2 then
      L12_2 = 3
      L13_2 = _G
      L13_2 = L13_2.pairs
      L14_2 = objects
      L14_2 = L14_2.castleCameraData
      L15_2 = deviceModel
      L14_2 = L14_2[L15_2]
      L15_2 = "otherCameras"
      L14_2 = L14_2[L15_2]
      L13_2, L14_2, L15_2 = L13_2(L14_2)
      for L16_2, L17_2 in L13_2, L14_2, L15_2 do
        L18_2 = nil
        if L17_2 ~= L18_2 then
          L18_2 = gameCamera
          L20_2 = "addCamera"
          L19_2 = L18_2
          L18_2 = L18_2[L20_2]
          L20_2 = ""
          L21_2 = L12_2
          L20_2 = L20_2 .. L21_2
          L21_2 = L17_2
          L18_2(L19_2, L20_2, L21_2)
          L18_2 = 1
          L12_2 = L12_2 + L18_2
        end
      end
    end
  end
  L12_2 = nil
  g_useZeroAsThemeReferencePointX = L12_2
  L12_2 = nil
  g_useZeroAsThemeReferencePointY = L12_2
  L12_2 = blockTable
  L13_2 = "themes"
  L12_2 = L12_2[L13_2]
  L13_2 = currentTheme
  L12_2 = L12_2[L13_2]
  L13_2 = "keepBackgroundPositionX"
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = true
    g_useZeroAsThemeReferencePointX = L12_2
  end
  L12_2 = blockTable
  L13_2 = "themes"
  L12_2 = L12_2[L13_2]
  L13_2 = currentTheme
  L12_2 = L12_2[L13_2]
  L13_2 = "keepBackgroundPositionY"
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = true
    g_useZeroAsThemeReferencePointY = L12_2
  end
  L12_2 = false
  g_useSkyLimit = L12_2
  L12_2 = blockTable
  L13_2 = "themes"
  L12_2 = L12_2[L13_2]
  L13_2 = currentTheme
  L12_2 = L12_2[L13_2]
  L13_2 = "whenZoomingOutKeepLevelAtCenter"
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = true
    g_useSkyLimit = L12_2
  end
  L12_2 = {}
  g_waterLayers = L12_2
  L12_2 = _G
  L12_2 = L12_2.ipairs
  L13_2 = blockTable
  L14_2 = "themes"
  L13_2 = L13_2[L14_2]
  L14_2 = currentTheme
  L13_2 = L13_2[L14_2]
  L14_2 = "fgLayers"
  L13_2 = L13_2[L14_2]
  L12_2, L13_2, L14_2 = L12_2(L13_2)
  for L15_2, L16_2 in L12_2, L13_2, L14_2 do
    L17_2 = "isWaterLayer"
    L17_2 = L16_2[L17_2]
    if L17_2 then
      L17_2 = objects
      L17_2 = L17_2.castleCameraData
      L18_2 = "referenceCamera"
      L17_2 = L17_2[L18_2]
      L18_2 = "sy"
      L17_2 = L17_2[L18_2]
      L18_2 = physicsToWorld
      L17_2 = L17_2 * L18_2
      L18_2 = "offsetX"
      L18_2 = L16_2[L18_2]
      if not L18_2 then
        L18_2 = 0
      end
      L19_2 = L2_2 * L17_2
      L20_2 = "offsetY"
      L20_2 = L16_2[L20_2]
      if not L20_2 then
        L20_2 = 0
      end
      L19_2 = L19_2 + L20_2
      L20_2 = native_setThemeLayerOffset
      L21_2 = L15_2
      L22_2 = true
      L23_2 = L18_2
      L24_2 = L19_2
      L20_2(L21_2, L22_2, L23_2, L24_2)
      L20_2 = _G
      L21_2 = "table"
      L20_2 = L20_2[L21_2]
      L21_2 = "insert"
      L20_2 = L20_2[L21_2]
      L21_2 = g_waterLayers
      L22_2 = {}
      L23_2 = "index"
      L22_2[L23_2] = L15_2
      L23_2 = "isFg"
      L24_2 = true
      L22_2[L23_2] = L24_2
      L23_2 = "xPos"
      L22_2[L23_2] = L18_2
      L23_2 = "yPos"
      L22_2[L23_2] = L19_2
      L23_2 = "scaleX"
      L24_2 = "scaleX"
      L24_2 = L16_2[L24_2]
      if not L24_2 then
        L24_2 = 1
      end
      L22_2[L23_2] = L24_2
      L23_2 = "scaleY"
      L24_2 = "scaleY"
      L24_2 = L16_2[L24_2]
      if not L24_2 then
        L24_2 = 1
      end
      L22_2[L23_2] = L24_2
      L23_2 = "speed"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "speed"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "movement"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "movement"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "offset"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "offset"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "scaling"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "scaling"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "velX"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "velX"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L20_2(L21_2, L22_2)
    end
  end
  L12_2 = _G
  L12_2 = L12_2.ipairs
  L13_2 = blockTable
  L14_2 = "themes"
  L13_2 = L13_2[L14_2]
  L14_2 = currentTheme
  L13_2 = L13_2[L14_2]
  L14_2 = "bgLayers"
  L13_2 = L13_2[L14_2]
  L12_2, L13_2, L14_2 = L12_2(L13_2)
  for L15_2, L16_2 in L12_2, L13_2, L14_2 do
    L17_2 = "isWaterLayer"
    L17_2 = L16_2[L17_2]
    if L17_2 then
      L17_2 = objects
      L17_2 = L17_2.castleCameraData
      L18_2 = "referenceCamera"
      L17_2 = L17_2[L18_2]
      L18_2 = "sy"
      L17_2 = L17_2[L18_2]
      L18_2 = physicsToWorld
      L17_2 = L17_2 * L18_2
      L18_2 = "offsetX"
      L18_2 = L16_2[L18_2]
      if not L18_2 then
        L18_2 = 0
      end
      L19_2 = L2_2 * L17_2
      L20_2 = "offsetY"
      L20_2 = L16_2[L20_2]
      if not L20_2 then
        L20_2 = 0
      end
      L19_2 = L19_2 + L20_2
      L20_2 = native_setThemeLayerOffset
      L21_2 = L15_2
      L22_2 = false
      L23_2 = L18_2
      L24_2 = L19_2
      L20_2(L21_2, L22_2, L23_2, L24_2)
      L20_2 = _G
      L21_2 = "table"
      L20_2 = L20_2[L21_2]
      L21_2 = "insert"
      L20_2 = L20_2[L21_2]
      L21_2 = g_waterLayers
      L22_2 = {}
      L23_2 = "index"
      L22_2[L23_2] = L15_2
      L23_2 = "isFg"
      L24_2 = false
      L22_2[L23_2] = L24_2
      L23_2 = "xPos"
      L22_2[L23_2] = L18_2
      L23_2 = "yPos"
      L22_2[L23_2] = L19_2
      L23_2 = "scaleX"
      L24_2 = "scaleX"
      L24_2 = L16_2[L24_2]
      if not L24_2 then
        L24_2 = 1
      end
      L22_2[L23_2] = L24_2
      L23_2 = "scaleY"
      L24_2 = "scaleY"
      L24_2 = L16_2[L24_2]
      if not L24_2 then
        L24_2 = 1
      end
      L22_2[L23_2] = L24_2
      L23_2 = "speed"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "speed"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "movement"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "movement"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "offset"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "offset"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "scaling"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "scaling"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L23_2 = "velX"
      L24_2 = "isWaterLayer"
      L24_2 = L16_2[L24_2]
      L25_2 = "velX"
      L24_2 = L24_2[L25_2]
      if not L24_2 then
        L24_2 = 0
      end
      L22_2[L23_2] = L24_2
      L20_2(L21_2, L22_2)
    end
  end
  L12_2 = blockTable
  L13_2 = "themes"
  L12_2 = L12_2[L13_2]
  L13_2 = currentTheme
  L12_2 = L12_2[L13_2]
  L13_2 = "moveBgLayersWithWaterLevel"
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = _G
    L12_2 = L12_2.ipairs
    L13_2 = blockTable
    L14_2 = "themes"
    L13_2 = L13_2[L14_2]
    L14_2 = currentTheme
    L13_2 = L13_2[L14_2]
    L14_2 = "bgLayers"
    L13_2 = L13_2[L14_2]
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    for L15_2, L16_2 in L12_2, L13_2, L14_2 do
      L17_2 = objects
      L17_2 = L17_2.castleCameraData
      L18_2 = "referenceCamera"
      L17_2 = L17_2[L18_2]
      L18_2 = "sy"
      L17_2 = L17_2[L18_2]
      L18_2 = physicsToWorld
      L17_2 = L17_2 * L18_2
      L18_2 = native_setThemeLayerOffset
      L19_2 = L15_2
      L20_2 = false
      L21_2 = "offsetX"
      L21_2 = L16_2[L21_2]
      if not L21_2 then
        L21_2 = 0
      end
      L22_2 = L2_2 * L17_2
      L23_2 = "offsetY"
      L23_2 = L16_2[L23_2]
      if not L23_2 then
        L23_2 = 0
      end
      L22_2 = L22_2 + L23_2
      L23_2 = getLevelMetadata
      L24_2 = levelName
      L23_2 = L23_2(L24_2)
      L24_2 = "backgroundOffsetY"
      L23_2 = L23_2[L24_2]
      if not L23_2 then
        L23_2 = 0
      end
      L22_2 = L22_2 + L23_2
      L18_2(L19_2, L20_2, L21_2, L22_2)
    end
  end
  L12_2 = getEpisodeMetadata
  L13_2 = currentFolder
  L12_2 = L12_2(L13_2)
  L13_2 = "waterDrag"
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = native_setObjectWaterDrag
    L13_2 = getEpisodeMetadata
    L14_2 = currentFolder
    L13_2 = L13_2(L14_2)
    L14_2 = "waterDrag"
    L13_2 = L13_2[L14_2]
    L14_2 = "object"
    L13_2 = L13_2[L14_2]
    L12_2(L13_2)
    L12_2 = native_setBirdWaterDrag
    L13_2 = getEpisodeMetadata
    L14_2 = currentFolder
    L13_2 = L13_2(L14_2)
    L14_2 = "waterDrag"
    L13_2 = L13_2[L14_2]
    L14_2 = "bird"
    L13_2 = L13_2[L14_2]
    L12_2(L13_2)
  else
    L12_2 = native_setObjectWaterDrag
    L13_2 = 1
    L12_2(L13_2)
    L12_2 = native_setBirdWaterDrag
    L13_2 = 0.25
    L12_2(L13_2)
  end
  L12_2 = getEpisodeMetadata
  L13_2 = currentFolder
  L12_2 = L12_2(L13_2)
  L13_2 = "waterColor"
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = getEpisodeMetadata
    L13_2 = currentFolder
    L12_2 = L12_2(L13_2)
    L13_2 = "waterColor"
    L12_2 = L12_2[L13_2]
    L13_2 = native_setWaterColor
    L14_2 = "r"
    L14_2 = L12_2[L14_2]
    L15_2 = "g"
    L15_2 = L12_2[L15_2]
    L16_2 = "b"
    L16_2 = L12_2[L16_2]
    L17_2 = "a"
    L17_2 = L12_2[L17_2]
    L13_2(L14_2, L15_2, L16_2, L17_2)
  else
    L12_2 = native_setWaterColor
    L13_2 = 0.1
    L14_2 = 0.8
    L15_2 = 1
    L16_2 = 0.5
    L12_2(L13_2, L14_2, L15_2, L16_2)
  end
  L12_2 = nil
  g_additionalBirdGravity = L12_2
  L12_2 = getEpisodeMetadata
  L13_2 = currentFolder
  L12_2 = L12_2(L13_2)
  L13_2 = "additionalBirdGravity"
  L12_2 = L12_2[L13_2]
  if L12_2 then
    L12_2 = getEpisodeMetadata
    L13_2 = currentFolder
    L12_2 = L12_2(L13_2)
    L13_2 = "additionalBirdGravity"
    L12_2 = L12_2[L13_2]
    g_additionalBirdGravity = L12_2
    L12_2 = native_setAdditionalBirdGravityY
    L13_2 = g_additionalBirdGravity
    L14_2 = 1.1
    L13_2 = L13_2 * L14_2
    L12_2(L13_2)
  else
    L12_2 = native_setAdditionalBirdGravityY
    L13_2 = 0
    L12_2(L13_2)
  end
  L12_2 = native_refreshThemeSystem
  L12_2()
  L12_2 = gameCamera
  L14_2 = "registerCallback"
  L13_2 = L12_2
  L12_2 = L12_2[L14_2]
  L14_2 = "gameCameraEffects"
  L15_2 = gameCameraEffects
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = gameCamera
  L14_2 = "registerCameraFunction"
  L13_2 = L12_2
  L12_2 = L12_2[L14_2]
  L14_2 = "levelStartCamera"
  L15_2 = levelStartCamera
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = gameCamera
  L14_2 = "setCameraFunction"
  L13_2 = L12_2
  L12_2 = L12_2[L14_2]
  L14_2 = "levelStartCamera"
  L12_2(L13_2, L14_2)
  L12_2 = gameCamera
  L14_2 = "calculateResolutionCorrectCameras"
  L13_2 = L12_2
  L12_2 = L12_2[L14_2]
  L12_2(L13_2)
  L12_2 = gameCamera
  L14_2 = "getEdgeCameras"
  L13_2 = L12_2
  L12_2 = L12_2[L14_2]
  L12_2 = L12_2(L13_2)
  L13_2 = recalculateLevelLimits
  L14_2 = L12_2
  L13_2(L14_2)
  L13_2 = gameCamera
  L15_2 = "setActiveCameras"
  L14_2 = L13_2
  L13_2 = L13_2[L15_2]
  L15_2 = "bird"
  L16_2 = "castle"
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = gameCamera
  L15_2 = "getCamera"
  L14_2 = L13_2
  L13_2 = L13_2[L15_2]
  L15_2 = "bird"
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = gameCamera
  L16_2 = "getCamera"
  L15_2 = L14_2
  L14_2 = L14_2[L16_2]
  L16_2 = "castle"
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = "sx"
  L15_2 = L14_2[L15_2]
  worldScale = L15_2
  L15_2 = setWorldScale
  L16_2 = worldScale
  L15_2(L16_2)
  L15_2 = screen
  L16_2 = "px"
  L16_2 = L14_2[L16_2]
  L15_2.x = L16_2
  L15_2 = screen
  L16_2 = "py"
  L16_2 = L14_2[L16_2]
  L15_2.y = L16_2
  L15_2 = screen
  L16_2 = "left"
  L17_2 = screen
  L17_2 = L17_2.x
  L18_2 = screenWidth
  L19_2 = 0.5
  L18_2 = L18_2 * L19_2
  L19_2 = worldScale
  L18_2 = L18_2 / L19_2
  L17_2 = L17_2 - L18_2
  L15_2[L16_2] = L17_2
  L15_2 = screen
  L16_2 = "top"
  L17_2 = screen
  L17_2 = L17_2.y
  L18_2 = screenHeight
  L19_2 = 0.5
  L18_2 = L18_2 * L19_2
  L19_2 = worldScale
  L18_2 = L18_2 / L19_2
  L17_2 = L17_2 - L18_2
  L15_2[L16_2] = L17_2
  L15_2 = screen
  L16_2 = "right"
  L17_2 = screen
  L17_2 = L17_2.x
  L18_2 = screenWidth
  L19_2 = 0.5
  L18_2 = L18_2 * L19_2
  L19_2 = worldScale
  L18_2 = L18_2 / L19_2
  L17_2 = L17_2 + L18_2
  L15_2[L16_2] = L17_2
  L15_2 = screen
  L16_2 = "bottom"
  L17_2 = screen
  L17_2 = L17_2.y
  L18_2 = screenHeight
  L19_2 = 0.5
  L18_2 = L18_2 * L19_2
  L19_2 = worldScale
  L18_2 = L18_2 / L19_2
  L17_2 = L17_2 + L18_2
  L15_2[L16_2] = L17_2
  L15_2 = gameCamera
  L17_2 = "setViewToCamera"
  L16_2 = L15_2
  L15_2 = L15_2[L17_2]
  L17_2 = "castle"
  L15_2(L16_2, L17_2)
  L15_2 = setMaxWorldScale
  L16_2 = _G
  L16_2 = L16_2.math
  L17_2 = "min"
  L16_2 = L16_2[L17_2]
  L17_2 = "sx"
  L17_2 = L13_2[L17_2]
  L18_2 = "sx"
  L18_2 = L14_2[L18_2]
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L16_2(L17_2, L18_2)
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
  L15_2 = g_oldLevelName
  L16_2 = levelName
  if L15_2 == L16_2 then
    L15_2 = numberOfAttemptsInLevel
    L16_2 = 0
    if L15_2 ~= L16_2 then
      L15_2 = startedFromEditor
      L16_2 = true
      if L15_2 ~= L16_2 then
        goto lbl_7014
      end
    end
  end
  L15_2 = "sx"
  L15_2 = L14_2[L15_2]
  L16_2 = "sx"
  L16_2 = L13_2[L16_2]
  if L15_2 > L16_2 then
    L15_2 = "sx"
    L15_2 = L14_2[L15_2]
    if L15_2 then
      goto lbl_7014
      L3_2 = L15_2 or L3_2
    end
  end
  L15_2 = "sx"
  L3_2 = L13_2[L15_2]
  ::lbl_7014::
  L15_2 = gameCamera
  L17_2 = "setZoomScale"
  L16_2 = L15_2
  L15_2 = L15_2[L17_2]
  L17_2 = L3_2
  L15_2(L16_2, L17_2)
  L15_2 = gameCamera
  L17_2 = "storeCameraPosition"
  L16_2 = L15_2
  L15_2 = L15_2[L17_2]
  L17_2 = "px"
  L17_2 = L14_2[L17_2]
  L18_2 = "py"
  L18_2 = L14_2[L18_2]
  L19_2 = gameCamera
  L19_2 = L19_2.currentZoomedScale
  L15_2(L16_2, L17_2, L18_2, L19_2)
  L15_2 = _G
  L16_2 = "collectgarbage"
  L15_2 = L15_2[L16_2]
  L16_2 = "collect"
  L15_2(L16_2)
  L15_2 = _G
  L15_2 = L15_2.pairs
  L16_2 = activeSensors
  L15_2, L16_2, L17_2 = L15_2(L16_2)
  for L18_2, L19_2 in L15_2, L16_2, L17_2 do
    L20_2 = "touchingObjects"
    L21_2 = nil
    L19_2[L20_2] = L21_2
  end
  L15_2 = {}
  activeSensors = L15_2
  L15_2 = populateWithRandomThemeSprites
  L15_2()
  L15_2 = ClearSimulationTrajectory
  L15_2()
  L15_2 = objects
  L15_2 = L15_2.rotatingMenuJoint
  L16_2 = nil
  if L15_2 ~= L16_2 then
    L15_2 = setRevoluteJointSpeed
    L16_2 = objects
    L16_2 = L16_2.rotatingMenuJoint
    L17_2 = 0
    L15_2(L16_2, L17_2)
  end
  L15_2 = getLevelMetadata
  L16_2 = levelName
  L15_2 = L15_2(L16_2)
  L16_2 = "drawCameraIndexes"
  L15_2 = L15_2[L16_2]
  g_drawLevelCameraIndexes = L15_2
  L15_2 = getLevelMetadata
  L16_2 = levelName
  L15_2 = L15_2(L16_2)
  L16_2 = "triggerEventList"
  L16_2 = L15_2[L16_2]
  L17_2 = nil
  if L16_2 ~= L17_2 then
    L16_2 = _G
    L16_2 = L16_2.pairs
    L17_2 = "triggerEventList"
    L17_2 = L15_2[L17_2]
    L16_2, L17_2, L18_2 = L16_2(L17_2)
    for L19_2, L20_2 in L16_2, L17_2, L18_2 do
      L21_2 = addEventCall
      L22_2 = "name"
      L22_2 = L20_2[L22_2]
      L23_2 = "params"
      L23_2 = L20_2[L23_2]
      L21_2(L22_2, L23_2)
    end
  end
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L17_2 = "hidePauseButton"
  L16_2 = L16_2[L17_2]
  if not L16_2 then
    L16_2 = startedFromEditor
    if not L16_2 then
      L16_2 = g_showLevelOpenAnimation
      if not L16_2 then
        L16_2 = ui
        L17_2 = "ScallableButton"
        L16_2 = L16_2[L17_2]
        L17_2 = L16_2
        L16_2 = L16_2.new
        L18_2 = {}
        L19_2 = "name"
        L20_2 = "pauseButton"
        L18_2[L19_2] = L20_2
        L19_2 = "activateOnRelease"
        L20_2 = true
        L18_2[L19_2] = L20_2
        L19_2 = "refuseDragTargetting"
        L20_2 = true
        L18_2[L19_2] = L20_2
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = "clickSound"
        L18_2 = "ButtonBack"
        L16_2[L17_2] = L18_2
        L17_2 = nil
        L18_2 = getLevelMetadata
        L19_2 = levelName
        L18_2 = L18_2(L19_2)
        L19_2 = "backButtonSprite"
        L18_2 = L18_2[L19_2]
        if L18_2 then
          L18_2 = getLevelMetadata
          L19_2 = levelName
          L18_2 = L18_2(L19_2)
          L19_2 = "backButtonSprite"
          L18_2 = L18_2[L19_2]
          L19_2 = 1
          L18_2 = L18_2[L19_2]
          if L18_2 then
            L18_2 = SettingsWrapper
            L20_2 = "isDarkSide"
            L19_2 = L18_2
            L18_2 = L18_2[L20_2]
            L18_2 = L18_2(L19_2)
            if L18_2 then
              L18_2 = getLevelMetadata
              L19_2 = levelName
              L18_2 = L18_2(L19_2)
              L19_2 = "backButtonSprite"
              L18_2 = L18_2[L19_2]
              L19_2 = 1
              L17_2 = L18_2[L19_2]
            else
              L18_2 = getLevelMetadata
              L19_2 = levelName
              L18_2 = L18_2(L19_2)
              L19_2 = "backButtonSprite"
              L18_2 = L18_2[L19_2]
              L19_2 = 2
              L17_2 = L18_2[L19_2]
            end
          else
            L18_2 = getLevelMetadata
            L19_2 = levelName
            L18_2 = L18_2(L19_2)
            L19_2 = "backButtonSprite"
            L17_2 = L18_2[L19_2]
          end
        end
        L20_2 = "setImage"
        L19_2 = L16_2
        L18_2 = L16_2[L20_2]
        L20_2 = L17_2 or L20_2
        if not L17_2 then
          L20_2 = getButtonImageName
          L21_2 = "pauseButton"
          L22_2 = objects
          L23_2 = "isDarkSideLevel"
          L22_2 = L22_2[L23_2]
          L20_2 = L20_2(L21_2, L22_2)
        end
        L18_2(L19_2, L20_2)
        L18_2 = "returnValue"
        L19_2 = "PAUSE_CLICKED"
        L16_2[L18_2] = L19_2
        L18_2 = menuManager
        L20_2 = "getRoot"
        L19_2 = L18_2
        L18_2 = L18_2[L20_2]
        L18_2 = L18_2(L19_2)
        L19_2 = nil
        if L18_2 ~= L19_2 then
          L21_2 = "addChild"
          L20_2 = L18_2
          L19_2 = L18_2[L21_2]
          L21_2 = L16_2
          L19_2(L20_2, L21_2)
        end
      end
    end
  end
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L17_2 = "showSideSwitchButton"
  L16_2 = L16_2[L17_2]
  if L16_2 then
    L16_2 = startedFromEditor
    if not L16_2 then
      L16_2 = g_showLevelOpenAnimation
      if not L16_2 then
        L16_2 = ui
        L17_2 = "ScallableButton"
        L16_2 = L16_2[L17_2]
        L17_2 = L16_2
        L16_2 = L16_2.new
        L18_2 = {}
        L19_2 = "name"
        L20_2 = "sideSwitchButton"
        L18_2[L19_2] = L20_2
        L19_2 = "activateOnRelease"
        L20_2 = true
        L18_2[L19_2] = L20_2
        L19_2 = "refuseDragTargetting"
        L20_2 = true
        L18_2[L19_2] = L20_2
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = currentFolder
        L18_2 = SettingsWrapper
        L20_2 = "isDarkSide"
        L19_2 = L18_2
        L18_2 = L18_2[L20_2]
        L18_2 = L18_2(L19_2)
        if L18_2 then
          L18_2 = _G
          L19_2 = "string"
          L18_2 = L18_2[L19_2]
          L19_2 = "gsub"
          L18_2 = L18_2[L19_2]
          L19_2 = L17_2
          L20_2 = "dark"
          L21_2 = "light"
          L18_2 = L18_2(L19_2, L20_2, L21_2)
          L17_2 = L18_2
        else
          L18_2 = _G
          L19_2 = "string"
          L18_2 = L18_2[L19_2]
          L19_2 = "gsub"
          L18_2 = L18_2[L19_2]
          L19_2 = L17_2
          L20_2 = "light"
          L21_2 = "dark"
          L18_2 = L18_2(L19_2, L20_2, L21_2)
          L17_2 = L18_2
        end
        L18_2 = isEpisodeSideDisabled
        L19_2 = L17_2
        L20_2 = SettingsWrapper
        L22_2 = "isDarkSide"
        L21_2 = L20_2
        L20_2 = L20_2[L22_2]
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L20_2(L21_2)
        L18_2, L19_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        if L18_2 then
          L20_2 = "missingStars"
          L16_2[L20_2] = L19_2
          L20_2 = "returnValue"
          L21_2 = "LS_EPISODE_SIDE_NOT_OPEN"
          L16_2[L20_2] = L21_2
          L22_2 = "setImage"
          L21_2 = L16_2
          L20_2 = L16_2[L22_2]
          L22_2 = getButtonImageName
          L23_2 = "sideSwitchInactiveButton"
          L24_2 = SettingsWrapper
          L26_2 = "isDarkSide"
          L25_2 = L24_2
          L24_2 = L24_2[L26_2]
          L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L24_2(L25_2)
          L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          L20_2 = "metaData"
          L21_2 = {}
          L16_2[L20_2] = L21_2
          L20_2 = currentFolder
          L21_2 = SettingsWrapper
          L23_2 = "isDarkSide"
          L22_2 = L21_2
          L21_2 = L21_2[L23_2]
          L21_2 = L21_2(L22_2)
          if L21_2 then
            L21_2 = _G
            L22_2 = "string"
            L21_2 = L21_2[L22_2]
            L22_2 = "gsub"
            L21_2 = L21_2[L22_2]
            L22_2 = currentFolder
            L23_2 = "_dark"
            L24_2 = "_light"
            L21_2 = L21_2(L22_2, L23_2, L24_2)
            L20_2 = L21_2
          end
          L21_2 = getEpisodeMetadata
          L22_2 = currentFolder
          L21_2 = L21_2(L22_2)
          L22_2 = "iapChapter"
          L21_2 = L21_2[L22_2]
          if L21_2 then
            L21_2 = "metaData"
            L21_2 = L16_2[L21_2]
            L22_2 = "startNumber"
            L23_2 = 1
            L21_2[L22_2] = L23_2
            L21_2 = "metaData"
            L21_2 = L16_2[L21_2]
            L22_2 = "episodeType"
            L23_2 = 4
            L21_2[L22_2] = L23_2
          else
            L21_2 = _G
            L21_2 = L21_2.ipairs
            L22_2 = actions
            L23_2 = "myLevelFolders"
            L22_2 = L22_2[L23_2]
            L23_2 = "normalLevelFolders"
            L22_2 = L22_2[L23_2]
            L21_2, L22_2, L23_2 = L21_2(L22_2)
            for L24_2, L25_2 in L21_2, L22_2, L23_2 do
              if L25_2 == L20_2 then
                L26_2 = "metaData"
                L26_2 = L16_2[L26_2]
                L27_2 = "startNumber"
                L26_2[L27_2] = L24_2
                break
              end
            end
            L21_2 = "metaData"
            L21_2 = L16_2[L21_2]
            L22_2 = "episodeType"
            L23_2 = 1
            L21_2[L22_2] = L23_2
          end
          L21_2 = getOtherSideStarCounts
          L22_2 = L17_2
          L23_2 = SettingsWrapper
          L25_2 = "isDarkSide"
          L24_2 = L23_2
          L23_2 = L23_2[L25_2]
          L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L23_2(L24_2)
          L21_2, L22_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
          L23_2 = "sideSwitchText"
          L24_2 = ui
          L25_2 = "DummyText"
          L24_2 = L24_2[L25_2]
          L25_2 = L24_2
          L24_2 = L24_2.new
          L26_2 = {}
          L27_2 = "name"
          L28_2 = "sideSwitchText"
          L26_2[L27_2] = L28_2
          L27_2 = "text"
          L28_2 = L21_2
          L29_2 = "/"
          L30_2 = L22_2
          L28_2 = L28_2 .. L29_2 .. L30_2
          L26_2[L27_2] = L28_2
          L27_2 = "font"
          L28_2 = getFontBasic
          L28_2 = L28_2()
          L26_2[L27_2] = L28_2
          L24_2 = L24_2(L25_2, L26_2)
          L16_2[L23_2] = L24_2
          L25_2 = "addChild"
          L24_2 = L16_2
          L23_2 = L16_2[L25_2]
          L25_2 = "sideSwitchText"
          L25_2 = L16_2[L25_2]
          L23_2(L24_2, L25_2)
        else
          L20_2 = "returnValue"
          L21_2 = "SWITCH_SIDES"
          L16_2[L20_2] = L21_2
          L22_2 = "setImage"
          L21_2 = L16_2
          L20_2 = L16_2[L22_2]
          L22_2 = getButtonImageName
          L23_2 = "emblemButton"
          L24_2 = SettingsWrapper
          L26_2 = "isDarkSide"
          L25_2 = L24_2
          L24_2 = L24_2[L26_2]
          L24_2 = L24_2(L25_2)
          L24_2 = not L24_2
          L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L22_2(L23_2, L24_2)
          L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        end
        L20_2 = menuManager
        L22_2 = "getRoot"
        L21_2 = L20_2
        L20_2 = L20_2[L22_2]
        L20_2 = L20_2(L21_2)
        L21_2 = nil
        if L20_2 ~= L21_2 then
          L23_2 = "addChild"
          L22_2 = L20_2
          L21_2 = L20_2[L23_2]
          L23_2 = L16_2
          L21_2(L22_2, L23_2)
        end
      end
    end
  end
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L17_2 = "showQuestButton"
  L16_2 = L16_2[L17_2]
  if L16_2 then
    L16_2 = startedFromEditor
    if not L16_2 then
      L16_2 = g_showLevelOpenAnimation
      if not L16_2 then
        L16_2 = ui
        L17_2 = "ScallableButton"
        L16_2 = L16_2[L17_2]
        L17_2 = L16_2
        L16_2 = L16_2.new
        L18_2 = {}
        L19_2 = "name"
        L20_2 = "questButton"
        L18_2[L19_2] = L20_2
        L19_2 = "activateOnRelease"
        L20_2 = true
        L18_2[L19_2] = L20_2
        L19_2 = "refuseDragTargetting"
        L20_2 = true
        L18_2[L19_2] = L20_2
        L19_2 = "returnValue"
        L20_2 = "SHOW_QUEST"
        L18_2[L19_2] = L20_2
        L16_2 = L16_2(L17_2, L18_2)
        L19_2 = "setImage"
        L18_2 = L16_2
        L17_2 = L16_2[L19_2]
        L19_2 = getButtonImageName
        L20_2 = "questButton"
        L21_2 = SettingsWrapper
        L23_2 = "isDarkSide"
        L22_2 = L21_2
        L21_2 = L21_2[L23_2]
        L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L21_2(L22_2)
        L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        L17_2 = menuManager
        L19_2 = "getRoot"
        L18_2 = L17_2
        L17_2 = L17_2[L19_2]
        L17_2 = L17_2(L18_2)
        L18_2 = nil
        if L17_2 ~= L18_2 then
          L20_2 = "addChild"
          L19_2 = L17_2
          L18_2 = L17_2[L20_2]
          L20_2 = L16_2
          L18_2(L19_2, L20_2)
        end
      end
    end
  end
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L17_2 = "showShopButton"
  L16_2 = L16_2[L17_2]
  if L16_2 then
    L16_2 = startedFromEditor
    if not L16_2 then
      L16_2 = g_showLevelOpenAnimation
      if not L16_2 then
        L16_2 = ui
        L17_2 = "ScallableButton"
        L16_2 = L16_2[L17_2]
        L17_2 = L16_2
        L16_2 = L16_2.new
        L18_2 = {}
        L19_2 = "name"
        L20_2 = "shopButton"
        L18_2[L19_2] = L20_2
        L19_2 = "returnValue"
        L20_2 = "GOTO_SHOP"
        L18_2[L19_2] = L20_2
        L16_2 = L16_2(L17_2, L18_2)
        L19_2 = "setImage"
        L18_2 = L16_2
        L17_2 = L16_2[L19_2]
        L19_2 = getButtonImageName
        L20_2 = "shopButton"
        L21_2 = SettingsWrapper
        L23_2 = "isDarkSide"
        L22_2 = L21_2
        L21_2 = L21_2[L23_2]
        L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L21_2(L22_2)
        L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
        L17_2 = menuManager
        L19_2 = "getRoot"
        L18_2 = L17_2
        L17_2 = L17_2[L19_2]
        L17_2 = L17_2(L18_2)
        L18_2 = ui
        L19_2 = "Image"
        L18_2 = L18_2[L19_2]
        L19_2 = L18_2
        L18_2 = L18_2.new
        L20_2 = {}
        L21_2 = "name"
        L22_2 = "shopButtonGlow"
        L20_2[L21_2] = L22_2
        L18_2 = L18_2(L19_2, L20_2)
        L21_2 = "setImage"
        L20_2 = L18_2
        L19_2 = L18_2[L21_2]
        L21_2 = "EAGLE_gamelua.getFontIngameMoney()_1"
        L19_2(L20_2, L21_2)
        L19_2 = "visible"
        L20_2 = false
        L18_2[L19_2] = L20_2
        L19_2 = "parent"
        L18_2[L19_2] = L16_2
        L19_2 = "update"
        L20_2 = shopGlowUpdater
        L18_2[L19_2] = L20_2
        L19_2 = nil
        if L17_2 ~= L19_2 then
          L21_2 = "addChild"
          L20_2 = L17_2
          L19_2 = L17_2[L21_2]
          L21_2 = L18_2
          L19_2(L20_2, L21_2)
        end
        L19_2 = "visible"
        L20_2 = shouldShowShopGlow
        L20_2 = L20_2()
        L18_2[L19_2] = L20_2
        L19_2 = ui
        L20_2 = "ClaimBadge"
        L19_2 = L19_2[L20_2]
        L20_2 = L19_2
        L19_2 = L19_2.new
        L21_2 = {}
        L22_2 = "name"
        L23_2 = "claimBadge"
        L21_2[L22_2] = L23_2
        L19_2 = L19_2(L20_2, L21_2)
        L22_2 = "addChild"
        L21_2 = L16_2
        L20_2 = L16_2[L22_2]
        L22_2 = L19_2
        L20_2(L21_2, L22_2)
        L20_2 = isNewSpecialsInShop
        L20_2 = L20_2()
        if L20_2 then
          L20_2 = ui
          L21_2 = "NewSpecialsBadge"
          L20_2 = L20_2[L21_2]
          L21_2 = L20_2
          L20_2 = L20_2.new
          L22_2 = {}
          L23_2 = "name"
          L24_2 = "newShopBadge"
          L22_2[L23_2] = L24_2
          L20_2 = L20_2(L21_2, L22_2)
          L23_2 = "addChild"
          L22_2 = L16_2
          L21_2 = L16_2[L23_2]
          L23_2 = L20_2
          L21_2(L22_2, L23_2)
        end
        L20_2 = nil
        if L17_2 ~= L20_2 then
          L22_2 = "addChild"
          L21_2 = L17_2
          L20_2 = L17_2[L22_2]
          L22_2 = L16_2
          L20_2(L21_2, L22_2)
        end
        L20_2 = ui
        L21_2 = "CharacterMenuShop"
        L20_2 = L20_2[L21_2]
        L21_2 = L20_2
        L20_2 = L20_2.new
        L22_2 = {}
        L23_2 = "name"
        L24_2 = "characterMenuShop"
        L22_2[L23_2] = L24_2
        L23_2 = "isInMenu"
        L24_2 = true
        L22_2[L23_2] = L24_2
        L20_2 = L20_2(L21_2, L22_2)
        L23_2 = "generateCharacterButton"
        L22_2 = L20_2
        L21_2 = L20_2[L23_2]
        L21_2(L22_2)
        L23_2 = "addChild"
        L22_2 = L17_2
        L21_2 = L17_2[L23_2]
        L23_2 = L20_2
        L21_2(L22_2, L23_2)
      end
    end
  end
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L17_2 = "showCurrencyButton"
  L16_2 = L16_2[L17_2]
  if L16_2 then
    L16_2 = startedFromEditor
    if not L16_2 then
      L16_2 = ui
      L17_2 = "CoinButton"
      L16_2 = L16_2[L17_2]
      L17_2 = L16_2
      L16_2 = L16_2.new
      L18_2 = {}
      L19_2 = "name"
      L20_2 = "currencyShopButton"
      L18_2[L19_2] = L20_2
      L19_2 = "returnValue"
      L20_2 = "GOTO_COINS"
      L18_2[L19_2] = L20_2
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = menuManager
      L19_2 = "getRoot"
      L18_2 = L17_2
      L17_2 = L17_2[L19_2]
      L17_2 = L17_2(L18_2)
      L18_2 = nil
      if L17_2 ~= L18_2 then
        L20_2 = "addChild"
        L19_2 = L17_2
        L18_2 = L17_2[L20_2]
        L20_2 = L16_2
        L18_2(L19_2, L20_2)
      end
    end
  end
  L16_2 = isInGameMode
  L16_2 = L16_2()
  if L16_2 then
    L16_2 = menuManager
    L18_2 = "getRoot"
    L17_2 = L16_2
    L16_2 = L16_2[L18_2]
    L16_2 = L16_2(L17_2)
    L17_2 = nil
    if L16_2 ~= L17_2 then
      L19_2 = "getChild"
      L18_2 = L16_2
      L17_2 = L16_2[L19_2]
      L19_2 = "gameHud"
      L17_2 = L17_2(L18_2, L19_2)
      if not L17_2 then
        L20_2 = "addChild"
        L19_2 = L16_2
        L18_2 = L16_2[L20_2]
        L20_2 = ui
        L21_2 = "GameHud"
        L20_2 = L20_2[L21_2]
        L21_2 = L20_2
        L20_2 = L20_2.new
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L20_2(L21_2)
        L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
      end
    end
  end
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L17_2 = "ignoreTutorial"
  L16_2 = L16_2[L17_2]
  L17_2 = true
  if L16_2 ~= L17_2 then
    L16_2 = calculateRewardState
    L16_2()
  end
  L16_2 = objects
  L17_2 = "worldGravity"
  L16_2 = L16_2[L17_2]
  if not L16_2 then
    L16_2 = getLevelMetadata
    L17_2 = levelName
    L16_2 = L16_2(L17_2)
    L17_2 = "ignoreKillingVolume"
    L16_2 = L16_2[L17_2]
    if not L16_2 then
      L16_2 = startedFromEditor
      if L16_2 then
        L16_2 = physicsEnabled
        if not L16_2 then
          goto lbl_7657
        end
      end
      L16_2 = addKillingBox
      L17_2 = 0.25
      L18_2 = 0.25
      L16_2(L17_2, L18_2)
    end
  end
  ::lbl_7657::
  L16_2 = _G
  L16_2 = L16_2.pairs
  L17_2 = loadedObjects
  L16_2, L17_2, L18_2 = L16_2(L17_2)
  for L19_2, L20_2 in L16_2, L17_2, L18_2 do
    L21_2 = loadedObjects
    L22_2 = nil
    L21_2[L19_2] = L22_2
  end
  L16_2 = loadedObjects
  L17_2 = "cameraData"
  L18_2 = nil
  L16_2[L17_2] = L18_2
  L16_2 = nil
  loadedObjects = L16_2
  L16_2 = setupComic
  L16_2()
  L16_2 = SettingsWrapper
  L18_2 = "setCurrentVersion"
  L17_2 = L16_2
  L16_2 = L16_2[L18_2]
  L18_2 = gameVersionNumber
  L16_2(L17_2, L18_2)
  L16_2 = resetMouseWheelScale
  L17_2 = 1
  L16_2(L17_2)
  L16_2 = levelStartCamera
  L17_2 = gameCamera
  L18_2 = 0
  L16_2(L17_2, L18_2)
  L16_2 = TARGET_VISUALIZATION_WAIT_LEVEL_START
  g_targetVisualizationUserInputWaitTimer = L16_2
  L16_2 = nil
  g_showTargetVisualizationTimer = L16_2
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L17_2 = "trophy"
  L16_2 = L16_2[L17_2]
  L17_2 = _G
  L18_2 = "type"
  L17_2 = L17_2[L18_2]
  L18_2 = L16_2
  L17_2 = L17_2(L18_2)
  L18_2 = "table"
  if L17_2 == L18_2 then
    L17_2 = _G
    L17_2 = L17_2.ipairs
    L18_2 = L16_2
    L17_2, L18_2, L19_2 = L17_2(L18_2)
    for L20_2, L21_2 in L17_2, L18_2, L19_2 do
      L22_2 = checkStoreLevelTrophy
      L23_2 = L21_2
      L22_2(L23_2)
    end
  else
    L17_2 = checkStoreLevelTrophy
    L18_2 = L16_2
    L17_2(L18_2)
  end
  L17_2 = native_onLevelInitComplete
  L17_2()
  L17_2 = eventManager
  L19_2 = "queueEvent"
  L18_2 = L17_2
  L17_2 = L17_2[L19_2]
  L19_2 = {}
  L20_2 = events
  L21_2 = "EID_LEVEL_LOADING_FINISHED"
  L20_2 = L20_2[L21_2]
  L19_2.id = L20_2
  L17_2(L18_2, L19_2)
  L17_2 = createForegroundParticles
  L18_2 = levelName
  L17_2(L18_2)
  L17_2 = native_redistributeInfiniteParticles
  L17_2()
  L17_2 = blockTable
  L18_2 = "themes"
  L17_2 = L17_2[L18_2]
  L18_2 = currentTheme
  L17_2 = L17_2[L18_2]
  L18_2 = "simulateParticles"
  L17_2 = L17_2[L18_2]
  if L17_2 then
    L17_2 = 0
    L18_2 = blockTable
    L19_2 = "themes"
    L18_2 = L18_2[L19_2]
    L19_2 = currentTheme
    L18_2 = L18_2[L19_2]
    L19_2 = "simulateParticles"
    L18_2 = L18_2[L19_2]
    L19_2 = "time"
    L18_2 = L18_2[L19_2]
    L19_2 = blockTable
    L20_2 = "themes"
    L19_2 = L19_2[L20_2]
    L20_2 = currentTheme
    L19_2 = L19_2[L20_2]
    L20_2 = "simulateParticles"
    L19_2 = L19_2[L20_2]
    L20_2 = "step"
    L19_2 = L19_2[L20_2]
    for L20_2 = L17_2, L18_2, L19_2 do
      L21_2 = updateThemeParticlesNative
      L22_2 = blockTable
      L23_2 = "themes"
      L22_2 = L22_2[L23_2]
      L23_2 = currentTheme
      L22_2 = L22_2[L23_2]
      L23_2 = "simulateParticles"
      L22_2 = L22_2[L23_2]
      L23_2 = "step"
      L22_2 = L22_2[L23_2]
      L21_2(L22_2)
    end
  end
end

loadLevelInternal = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = getObjectDefinition
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.specialty
  if L2_2 ~= "BOMB" then
    L2_2 = L1_2.specialty
    if L2_2 ~= "LAZER_SHOT" then
      L2_2 = L1_2.specialty
      if L2_2 ~= "RAGDOLL_AFTERBURNER" then
        L2_2 = L1_2.specialty
        if L2_2 ~= "TONGUE_SWING" then
          L2_2 = L1_2.specialty
          if L2_2 ~= "GRAVITY_DISRUPTOR" then
            L2_2 = L1_2.specialty
            if L2_2 ~= "SABER_BOOMERANG" then
              L2_2 = L1_2.specialty
              if L2_2 ~= "FORCE_LIGHTNING" then
                L2_2 = L1_2.specialty
                if L2_2 ~= "ROCKET_LAUNCHER" then
                  goto lbl_30
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_30::
  L2_2 = false
  return L2_2
end

birdSpecialtyTargetable = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = getLevelMetadata
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.foregroundParticleEffect
  if not L1_2 then
    L1_2 = blockTable
    L1_2 = L1_2.themes
    L2_2 = currentTheme
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.foregroundParticleEffect
  end
  if L1_2 then
    L2_2 = screenWidth
    L3_2 = screenHeight
    L2_2 = L2_2 / L3_2
    L3_2 = levelLeftEdgePhysics
    L4_2 = levelRightEdgePhysics
    L5_2 = levelTopEdgePhysics
    L6_2 = levelBottomEdgePhysics
    L7_2 = L4_2 - L3_2
    L8_2 = L6_2 - L5_2
    L9_2 = physicsScale
    L9_2 = L3_2 / L9_2
    L10_2 = physicsScale
    L10_2 = L5_2 / L10_2
    L11_2 = physicsScale
    L11_2 = L7_2 / L11_2
    L12_2 = physicsScale
    L12_2 = L8_2 / L12_2
    L13_2 = L12_2 * L2_2
    L13_2 = L13_2 - L12_2
    L14_2 = L13_2 * 0.5
    L10_2 = L10_2 - L14_2
    L14_2 = _G
    L14_2 = L14_2.type
    L15_2 = L1_2
    L14_2 = L14_2(L15_2)
    if L14_2 == "table" then
      L14_2 = _G
      L14_2 = L14_2.ipairs
      L15_2 = L1_2
      L14_2, L15_2, L16_2 = L14_2(L15_2)
      for L17_2, L18_2 in L14_2, L15_2, L16_2 do
        L19_2 = putParticles
        L20_2 = {}
        L20_2.particles = L18_2
        L21_2 = particleTable
        L21_2 = L21_2.particles
        L21_2 = L21_2[L18_2]
        L21_2 = L21_2.amount
        L20_2.amount = L21_2
        L21_2 = L11_2 * 0.5
        L21_2 = L9_2 + L21_2
        L20_2.worldX = L21_2
        L21_2 = L13_2 * 0.5
        L21_2 = L21_2 + L10_2
        L22_2 = L12_2 * 0.5
        L21_2 = L21_2 + L22_2
        L20_2.worldY = L21_2
        L20_2.w = L11_2
        L21_2 = L12_2 + L13_2
        L20_2.h = L21_2
        L20_2.mode = 1
        L19_2(L20_2)
      end
    else
      L14_2 = putParticles
      L15_2 = {}
      L15_2.particles = L1_2
      L16_2 = particleTable
      L16_2 = L16_2.particles
      L16_2 = L16_2[L1_2]
      L16_2 = L16_2.amount
      L15_2.amount = L16_2
      L16_2 = L11_2 * 0.5
      L16_2 = L9_2 + L16_2
      L15_2.worldX = L16_2
      L16_2 = L13_2 * 0.5
      L16_2 = L16_2 + L10_2
      L17_2 = L12_2 * 0.5
      L16_2 = L16_2 + L17_2
      L15_2.worldY = L16_2
      L15_2.w = L11_2
      L16_2 = L12_2 + L13_2
      L15_2.h = L16_2
      L15_2.mode = 1
      L14_2(L15_2)
    end
  end
end

createForegroundParticles = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isLevelTrophyStored
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.storeLevelTrophy
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end

checkStoreLevelTrophy = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L2_2 = L2_2[A0_2]
  if L2_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = actions
  L2_2 = L2_2.myLevelsMetadata
  L3_2 = actions
  L3_2 = L3_2.myLevels
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L2_2 = actions
    L2_2 = L2_2.myLevelsMetadata
    L3_2 = actions
    L3_2 = L3_2.myLevels
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.unavailableOnNonIaps
    if L2_2 then
      L2_2 = isPlatformLimited
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = false
        return L2_2
    end
    else
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end

isStarLevelAvailableOnThisPlatform = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = getLevelMetadata
  L1_2 = levelName
  L0_2 = L0_2(L1_2)
  levelMD = L0_2
  L0_2 = levelMD
  L0_2 = L0_2.type
  if L0_2 == "comic" then
    L0_2 = ui
    L0_2 = L0_2.comicPage1
    L1_2 = L0_2
    L0_2 = L0_2.new
    L2_2 = {}
    L2_2.name = "comicsPage"
    L3_2 = levelName
    L2_2.levelName = L3_2
    L3_2 = currentFolder
    L2_2.currentFolder = L3_2
    L3_2 = levelMD
    L3_2 = L3_2.comicAnimName
    L2_2.animName = L3_2
    L0_2 = L0_2(L1_2, L2_2)
    comicPage = L0_2
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.notify
    L2_2 = {}
    L3_2 = events
    L3_2 = L3_2.EID_PUSH_FRAME
    L2_2.id = L3_2
    L3_2 = comicPage
    L2_2.target = L3_2
    L0_2(L1_2, L2_2)
  end
end

setupComic = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 == "table" then
      L7_2 = {}
      L1_2[L5_2] = L7_2
      L7_2 = _G
      L7_2 = L7_2.pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        L12_2 = L1_2[L5_2]
        L12_2[L10_2] = L11_2
      end
    else
      L1_2[L5_2] = L6_2
    end
  end
  return L1_2
end

copyProjectileTable = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = _G
  L2_2 = L2_2.type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L2_2 = {}
    L1_2 = L2_2
    L2_2 = _G
    L2_2 = L2_2.pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = deepCopy
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L1_2[L5_2] = L7_2
    end
  else
    L1_2 = A0_2
  end
  return L1_2
end

deepCopy = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = handleBirdPowerUseCounting
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.controllable
  if L1_2 then
    L1_2 = A0_2.damageDone
    if L1_2 == 0 then
      L1_2 = timeSpentInLevel
      lastBirdFailedTime = L1_2
    end
  end
  A0_2.startedOutsideAtmosphere = nil
  L1_2 = A0_2.name
  L2_2 = A0_2.linkedObject
  if L2_2 ~= nil then
    L2_2 = objects
    L2_2 = L2_2.world
    L3_2 = A0_2.linkedObject
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = objects
      L2_2 = L2_2.world
      L3_2 = A0_2.linkedObject
      L2_2 = L2_2[L3_2]
      L2_2.linkedObject = nil
      L2_2 = removeBird
      L3_2 = objects
      L3_2 = L3_2.world
      L4_2 = A0_2.linkedObject
      L3_2 = L3_2[L4_2]
      L2_2(L3_2)
    end
  end
  L2_2 = A0_2.didDamage
  if not L2_2 then
    L2_2 = A0_2.doNotCount
    if L2_2 ~= true then
      L2_2 = true
      L3_2 = getObjectDefinition
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.specialty
      if L3_2 == "CLUSTER_BOMB" then
        L3_2 = _G
        L3_2 = L3_2.string
        L3_2 = L3_2.sub
        L4_2 = L1_2
        L5_2 = _G
        L5_2 = L5_2.string
        L5_2 = L5_2.len
        L6_2 = L1_2
        L5_2 = L5_2(L6_2)
        L6_2 = _G
        L6_2 = L6_2.string
        L6_2 = L6_2.len
        L7_2 = L1_2
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        if L3_2 == "a" or L3_2 == "b" or L3_2 == "c" then
          L4_2 = _G
          L4_2 = L4_2.string
          L4_2 = L4_2.sub
          L5_2 = L1_2
          L6_2 = 1
          L7_2 = _G
          L7_2 = L7_2.string
          L7_2 = L7_2.len
          L8_2 = L1_2
          L7_2 = L7_2(L8_2)
          L7_2 = L7_2 - 1
          L4_2 = L4_2(L5_2, L6_2, L7_2)
          L5_2 = g_blueBirdDidDamage
          if L5_2 == nil then
            L5_2 = {}
            g_blueBirdDidDamage = L5_2
          end
          L5_2 = g_blueBirdDidDamage
          L5_2 = L5_2[L4_2]
          if L5_2 == nil then
            L5_2 = g_blueBirdDidDamage
            L5_2[L4_2] = 1
          else
            L5_2 = g_blueBirdDidDamage
            L6_2 = g_blueBirdDidDamage
            L6_2 = L6_2[L4_2]
            L6_2 = L6_2 + 1
            L5_2[L4_2] = L6_2
          end
          L5_2 = g_blueBirdDidDamage
          L5_2 = L5_2[L4_2]
          if L5_2 < 3 then
            L2_2 = false
          end
        end
      end
    end
  end
  L2_2 = objects
  L2_2 = L2_2.world
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.emitterBody
  if L2_2 ~= nil then
    L3_2 = destroyEmitter
    L4_2 = L2_2
    L3_2(L4_2)
  end
  L3_2 = putParticles
  L4_2 = {}
  L4_2.objectName = L1_2
  L5_2 = getObjectDefinition
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.particlesDestroyed
  L4_2.particles = L5_2
  L4_2.amount = 10
  L3_2(L4_2)
  L3_2 = gameCamera
  L4_2 = L3_2
  L3_2 = L3_2.removeCameraTargetObject
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
  end
  L3_2 = currentBirdName
  if L3_2 == L1_2 then
    L3_2 = nil
    currentBirdName = L3_2
  end
  L3_2 = flyingBird
  if L3_2 == A0_2 then
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = flyingBird
    L4_2 = L4_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.sounds
    L3_2 = L3_2.special_loop
    if L3_2 then
      L4_2 = stopAudio
      L5_2 = L3_2
      L4_2(L5_2)
    end
    L4_2 = nil
    flyingBird = L4_2
    L4_2 = false
    birdSpecialtyAvailable = L4_2
  end
  L3_2 = A0_2.ignoreDestroySound
  if not L3_2 then
    L3_2 = blockTable
    L3_2 = L3_2.blocks
    L4_2 = A0_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.sounds
    L3_2 = L3_2.destroy
    if L3_2 then
      L3_2 = res
      L3_2 = L3_2.playAudio
      L4_2 = blockTable
      L4_2 = L4_2.blocks
      L5_2 = A0_2.definition
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.sounds
      L4_2 = L4_2.destroy
      L3_2(L4_2)
    end
  end
  L3_2 = removeObject
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = objects
  L3_2 = L3_2.world
  L3_2[L1_2] = nil
  L3_2 = birds
  L3_2[L1_2] = nil
  L3_2 = otherBirds
  L3_2[L1_2] = nil
  L3_2 = animatedObjects
  L3_2[L1_2] = nil
end

removeBird = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L0_2 = startedFromEditor
  if L0_2 then
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.notify
    L2_2 = {}
    L3_2 = events
    L3_2 = L3_2.EID_CHANGE_SCENE
    L2_2.id = L3_2
    L2_2.target = "editorScene"
    L0_2(L1_2, L2_2)
    return
  else
    L0_2 = false
    L1_2 = highscores
    L2_2 = levelName
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = highscores
      L2_2 = levelName
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.score
      if L1_2 then
        goto lbl_32
      end
    end
    L1_2 = SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isLevelBoughtOpen
    L3_2 = levelName
    L1_2 = L1_2(L2_2, L3_2)
    ::lbl_32::
    if L1_2 then
      L0_2 = true
    end
    L1_2 = 0
    L2_2 = highscores
    L3_2 = levelName
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = highscores
      L3_2 = levelName
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.score
      if L2_2 ~= nil then
        L2_2 = highscores
        L3_2 = levelName
        L2_2 = L2_2[L3_2]
        L1_2 = L2_2.score
      end
    end
    L2_2 = eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = events
    L5_2 = L5_2.EID_PUSH_FRAME
    L4_2.id = L5_2
    L5_2 = LevelEndRoot
    L6_2 = L5_2
    L5_2 = L5_2.new
    L5_2 = L5_2(L6_2)
    L4_2.target = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = disableGameUpdate
    L2_2()
    L2_2 = clearParticlesNative
    L2_2()
    L2_2 = enableInGameParticlesNative
    L3_2 = false
    L2_2(L3_2)
    L2_2 = getEpisodeMetadata
    L3_2 = currentFolder
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.bonusChapter
    L3_2 = levelCompleted
    if L3_2 then
      L3_2 = actions
      L3_2 = L3_2.myLevels
      L4_2 = currentFolder
      L3_2 = L3_2[L4_2]
      L4_2 = currentLevel
      L4_2 = L4_2 + 1
      L3_2 = L3_2[L4_2]
      if L3_2 ~= nil then
        L3_2 = storeLevelProgress
        L4_2 = currentFolder
        L5_2 = currentLevel
        L3_2(L4_2, L5_2)
      end
      L3_2 = isEagleUsedInLevel
      L3_2 = L3_2()
      L4_2 = getLevelStarsFromHighscores
      L5_2 = levelName
      L4_2 = L4_2(L5_2)
      L5_2 = getLevelStars
      L6_2 = levelName
      L7_2 = score
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = nil
      L7_2 = eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = events
      L10_2 = L10_2.EID_LEVEL_COMPLETED
      L9_2.id = L10_2
      L9_2.isBonusLevel = L2_2
      L9_2.levelCompleted = true
      L10_2 = levelName
      L9_2.levelName = L10_2
      L9_2.stars = L5_2
      L9_2.eagleUsed = L3_2
      L10_2 = score
      L9_2.score = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = nil
      L8_2 = nil
      if not L3_2 then
        L9_2 = getLevelMetadata
        L10_2 = levelName
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2.nextButtonURL
        L10_2 = getLevelMetadata
        L11_2 = levelName
        L10_2 = L10_2(L11_2)
        L10_2 = L10_2.lastLevelOfEpisode
        L11_2 = L10_2 or L11_2
        if L10_2 then
          L11_2 = not L0_2
        end
        L12_2 = getLevelMetadata
        L13_2 = levelName
        L12_2 = L12_2(L13_2)
        L12_2 = L12_2.lastLevelOfIAPEpisode
        if L10_2 == true then
          L13_2 = SettingsWrapper
          L14_2 = L13_2
          L13_2 = L13_2.isZoomingMarkedUsed
          L13_2 = L13_2(L14_2)
          if L13_2 ~= true and not L0_2 then
            L13_2 = eventManager
            L14_2 = L13_2
            L13_2 = L13_2.notify
            L15_2 = {}
            L16_2 = events
            L16_2 = L16_2.EID_EPISODE_COMPLETED_WITHOUT_ZOOMING_OUT
            L15_2.id = L16_2
            L16_2 = currentFolder
            L15_2.episode = L16_2
            L13_2(L14_2, L15_2)
          end
          L13_2 = eventManager
          L14_2 = L13_2
          L13_2 = L13_2.notify
          L15_2 = {}
          L16_2 = events
          L16_2 = L16_2.EID_EPISODE_COMPLETED
          L15_2.id = L16_2
          L16_2 = currentFolder
          L15_2.episode = L16_2
          L13_2(L14_2, L15_2)
        end
        L13_2 = _G
        L13_2 = L13_2.math
        L13_2 = L13_2.floor
        L14_2 = score
        L14_2 = L14_2 * 0.1
        L13_2 = L13_2(L14_2)
        L13_2 = L13_2 * 10
        L14_2 = isNextLevelComic
        L14_2 = L14_2()
        L15_2 = isNextLevelLockedByTimer
        L15_2 = L15_2()
        L16_2 = LevelComplete
        L17_2 = L16_2
        L16_2 = L16_2.new
        L18_2 = {}
        L18_2.popScreen = L7_2
        L19_2 = levelName
        L20_2 = L0_2
        L21_2 = L5_2
        L22_2 = L13_2
        L23_2 = L1_2
        L24_2 = L4_2
        L25_2 = L6_2
        L26_2 = L9_2
        L27_2 = L2_2
        L28_2 = L11_2
        L29_2 = L10_2
        L30_2 = L14_2
        L31_2 = L12_2
        L32_2 = L15_2
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        L8_2 = L16_2
      end
      L9_2 = true
      g_disableGameupdate = L9_2
      L9_2 = true
      g_gameCompletedState = L9_2
      L9_2 = eventManager
      L10_2 = L9_2
      L9_2 = L9_2.notify
      L11_2 = {}
      L12_2 = events
      L12_2 = L12_2.EID_PUSH_FRAME
      L11_2.id = L12_2
      L11_2.target = L8_2
      L9_2(L10_2, L11_2)
    else
      L3_2 = getLevelMetadata
      L4_2 = levelName
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.lastLevelOfEpisode
      L4_2 = getLevelMetadata
      L5_2 = levelName
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.lastLevelOfIAPEpisode
      L5_2 = getLevelMetadata
      L6_2 = levelName
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.levelFailedImage
      L6_2 = isNextLevelComic
      L6_2 = L6_2()
      L7_2 = isNextLevelLockedByTimer
      L7_2 = L7_2()
      L8_2 = LevelFailed
      L9_2 = L8_2
      L8_2 = L8_2.new
      L10_2 = levelName
      L11_2 = false
      L12_2 = L0_2
      L13_2 = score
      L14_2 = L3_2
      L15_2 = L5_2
      L16_2 = L2_2
      L17_2 = L6_2
      L18_2 = L4_2
      L19_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L9_2 = true
      g_disableGameupdate = L9_2
      L9_2 = true
      g_gameFailedState = L9_2
      L9_2 = eventManager
      L10_2 = L9_2
      L9_2 = L9_2.notify
      L11_2 = {}
      L12_2 = events
      L12_2 = L12_2.EID_LEVEL_FAILED
      L11_2.id = L12_2
      L12_2 = levelName
      L11_2.levelName = L12_2
      L11_2.isBonusLevel = L2_2
      L11_2.screen = "Level failed"
      L9_2(L10_2, L11_2)
      L9_2 = eventManager
      L10_2 = L9_2
      L9_2 = L9_2.notify
      L11_2 = {}
      L12_2 = events
      L12_2 = L12_2.EID_PUSH_FRAME
      L11_2.id = L12_2
      L11_2.target = L8_2
      L9_2(L10_2, L11_2)
    end
    L3_2 = levelCompleted
    if L3_2 then
      L3_2 = highscores
      L4_2 = levelName
      L3_2 = L3_2[L4_2]
      if L3_2 == nil then
        L3_2 = highscores
        L4_2 = levelName
        L5_2 = {}
        L3_2[L4_2] = L5_2
      end
      L3_2 = highscores
      L4_2 = levelName
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.score
      if L3_2 == nil then
        L3_2 = highscores
        L4_2 = levelName
        L3_2 = L3_2[L4_2]
        L3_2.score = 0
      end
      L3_2 = Characters
      L3_2 = L3_2.characterUsedInLevel
      if L3_2 then
        L3_2 = highscores
        L4_2 = levelName
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.extraCharacterScore
        if not L3_2 then
          L3_2 = highscores
          L4_2 = levelName
          L3_2 = L3_2[L4_2]
          L4_2 = {}
          L4_2.score = 0
          L3_2.extraCharacterScore = L4_2
        end
      end
      L3_2 = score
      L4_2 = highscores
      L5_2 = levelName
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.score
      if L3_2 > L4_2 then
        L3_2 = _G
        L3_2 = L3_2.math
        L3_2 = L3_2.floor
        L4_2 = score
        L4_2 = L4_2 * 0.1
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2 * 10
        L4_2 = highscores
        L5_2 = levelName
        L4_2 = L4_2[L5_2]
        L4_2.score = L3_2
      end
      L3_2 = Characters
      L3_2 = L3_2.characterUsedInLevel
      if L3_2 then
        L3_2 = score
        L4_2 = highscores
        L5_2 = levelName
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.extraCharacterScore
        L4_2 = L4_2.score
        if L3_2 > L4_2 then
          L3_2 = _G
          L3_2 = L3_2.math
          L3_2 = L3_2.floor
          L4_2 = score
          L4_2 = L4_2 * 0.1
          L3_2 = L3_2(L4_2)
          L3_2 = L3_2 * 10
          L4_2 = highscores
          L5_2 = levelName
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2.extraCharacterScore
          L4_2.score = L3_2
          L4_2 = highscores
          L5_2 = levelName
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2.extraCharacterScore
          L5_2 = Characters
          L5_2 = L5_2.allUsedCharacters
          L4_2.characters = L5_2
        end
      end
      if L1_2 ~= nil then
        L3_2 = score
        if L1_2 < L3_2 then
          L3_2 = eventManager
          L4_2 = L3_2
          L3_2 = L3_2.notify
          L5_2 = {}
          L6_2 = events
          L6_2 = L6_2.EID_NEW_HIGHSCORE
          L5_2.id = L6_2
          L5_2.oldHighScore = L1_2
          L6_2 = score
          L5_2.score = L6_2
          L6_2 = levelName
          L5_2.levelName = L6_2
          L5_2.isBonusLevel = L2_2
          L6_2 = isEagleUsedInLevel
          L6_2 = L6_2()
          L5_2.eagleUsed = L6_2
          L3_2(L4_2, L5_2)
          L3_2 = gameCenterSupported
          if L3_2 then
            L3_2 = setPostedStatus
            L4_2 = currentFolder
            L3_2(L4_2)
            L3_2 = postTotalHighScores
            L3_2()
          else
            L3_2 = steam
            if not L3_2 then
              L3_2 = gamerService
              if not L3_2 then
                goto lbl_378
              end
            end
            L3_2 = postTotalHighScores
            L3_2()
          end
        end
      end
    end
    ::lbl_378::
    L3_2 = savePersistentLuaFileWrapper
    L4_2 = "settings.lua"
    L5_2 = "settings"
    L3_2(L4_2, L5_2)
    L3_2 = savePersistentLuaFileWrapper
    L4_2 = "highscores.lua"
    L5_2 = "highscores"
    L3_2(L4_2, L5_2)
    L3_2 = startedFromEditor
    if not L3_2 then
      L3_2 = editor
      if L3_2 == nil then
        L3_2 = checkForLevelCompleteAchievements
        L3_2()
      end
    end
  end
end

gotoLevelEnding = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L9_2 = objects
  L9_2 = L9_2.world
  L9_2 = L9_2[A0_2]
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L9_2.hasCollided
  L12_2 = blockTable
  L12_2 = L12_2.blocks
  L13_2 = L9_2.definition
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.stopAnimationsAfterCollision
  if L12_2 then
    L12_2 = objects
    L12_2 = L12_2.animatedObjects
    L12_2[A0_2] = nil
  end
  L12_2 = blockTable
  L12_2 = L12_2.blocks
  L13_2 = L10_2.definition
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.stopAnimationsAfterCollision
  if L12_2 then
    L12_2 = objects
    L12_2 = L12_2.animatedObjects
    L12_2[A1_2] = nil
  end
  L12_2 = L9_2.onCollisionEnter
  if L12_2 ~= nil and not A8_2 then
    L12_2 = _G
    L12_2 = L12_2.type
    L13_2 = L9_2.onCollisionEnter
    L12_2 = L12_2(L13_2)
    if L12_2 == "table" then
      L12_2 = _G
      L12_2 = L12_2.ipairs
      L13_2 = L9_2.onCollisionEnter
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      for L15_2, L16_2 in L12_2, L13_2, L14_2 do
        L17_2 = fireAction
        L18_2 = L16_2
        L19_2 = {}
        L19_2.name = A0_2
        L19_2.other = A1_2
        L19_2.force = A2_2
        L20_2 = wasDamageDone
        L19_2.wasDamageDone = L20_2
        L20_2 = dot
        L19_2.dot = L20_2
        L19_2.damage = A3_2
        L19_2.collisionPointX = A4_2
        L19_2.collisionPointY = A5_2
        L19_2.collisionNormalX = A6_2
        L19_2.collisionNormalY = A7_2
        L17_2(L18_2, L19_2)
      end
    else
      L12_2 = fireAction
      L13_2 = L9_2.onCollisionEnter
      L14_2 = {}
      L14_2.name = A0_2
      L14_2.other = A1_2
      L14_2.force = A2_2
      L15_2 = wasDamageDone
      L14_2.wasDamageDone = L15_2
      L15_2 = dot
      L14_2.dot = L15_2
      L14_2.damage = A3_2
      L14_2.collisionPointX = A4_2
      L14_2.collisionPointY = A5_2
      L14_2.collisionNormalX = A6_2
      L14_2.collisionNormalY = A7_2
      L12_2(L13_2, L14_2)
    end
  end
  L12_2 = L10_2.onCollisionEnter
  if L12_2 ~= nil and not A8_2 then
    L12_2 = _G
    L12_2 = L12_2.type
    L13_2 = L10_2.onCollisionEnter
    L12_2 = L12_2(L13_2)
    if L12_2 == "table" then
      L12_2 = _G
      L12_2 = L12_2.ipairs
      L13_2 = L10_2.onCollisionEnter
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      for L15_2, L16_2 in L12_2, L13_2, L14_2 do
        L17_2 = fireAction
        L18_2 = L16_2
        L19_2 = {}
        L19_2.name = A1_2
        L19_2.other = A0_2
        L19_2.force = A2_2
        L20_2 = wasDamageDone
        L19_2.wasDamageDone = L20_2
        L20_2 = dot
        L19_2.dot = L20_2
        L19_2.damage = A3_2
        L19_2.collisionPointX = A4_2
        L19_2.collisionPointY = A5_2
        L19_2.collisionNormalX = A6_2
        L19_2.collisionNormalY = A7_2
        L17_2(L18_2, L19_2)
      end
    else
      L12_2 = fireAction
      L13_2 = L10_2.onCollisionEnter
      L14_2 = {}
      L14_2.name = A1_2
      L14_2.other = A0_2
      L14_2.force = A2_2
      L15_2 = wasDamageDone
      L14_2.wasDamageDone = L15_2
      L15_2 = dot
      L14_2.dot = L15_2
      L14_2.damage = A3_2
      L14_2.collisionPointX = A4_2
      L14_2.collisionPointY = A5_2
      L14_2.collisionNormalX = A6_2
      L14_2.collisionNormalY = A7_2
      L12_2(L13_2, L14_2)
    end
  end
  L12_2 = blockTable
  L12_2 = L12_2.blocks
  L13_2 = L9_2.definition
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.collisionSpawn
  if L12_2 ~= nil then
    L12_2 = L9_2.angle
    L13_2 = blockTable
    L13_2 = L13_2.blocks
    L14_2 = L9_2.definition
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.angleOffset
    if not L13_2 then
      L13_2 = 0
    end
    L12_2 = L12_2 + L13_2
    L13_2 = {}
    L14_2 = blockTable
    L14_2 = L14_2.blocks
    L15_2 = L9_2.definition
    L14_2 = L14_2[L15_2]
    L13_2.definition = L14_2
    L14_2 = L9_2.x
    L13_2.x = L14_2
    L14_2 = L9_2.y
    L13_2.y = L14_2
    L13_2.angle = L12_2
    L14_2 = {}
    L15_2 = L13_2.definition
    L15_2 = L15_2.collisionSpawn
    L14_2.spawnedObjects = L15_2
    L14_2.info = L13_2
    L15_2 = spawnList
    L16_2 = spawnList
    L16_2 = #L16_2
    L16_2 = L16_2 + 1
    L15_2[L16_2] = L14_2
  end
  L12_2 = blockTable
  L12_2 = L12_2.blocks
  L13_2 = L10_2.definition
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.collisionSpawn
  if L12_2 ~= nil then
    L12_2 = L10_2.angle
    L13_2 = blockTable
    L13_2 = L13_2.blocks
    L14_2 = L10_2.definition
    L13_2 = L13_2[L14_2]
    L13_2 = L13_2.angleOffset
    if not L13_2 then
      L13_2 = 0
    end
    L12_2 = L12_2 + L13_2
    L13_2 = {}
    L14_2 = blockTable
    L14_2 = L14_2.blocks
    L15_2 = L10_2.definition
    L14_2 = L14_2[L15_2]
    L13_2.definition = L14_2
    L14_2 = L10_2.x
    L13_2.x = L14_2
    L14_2 = L10_2.y
    L13_2.y = L14_2
    L13_2.angle = L12_2
    L14_2 = {}
    L15_2 = L13_2.definition
    L15_2 = L15_2.collisionSpawn
    L14_2.spawnedObjects = L15_2
    L14_2.info = L13_2
    L15_2 = spawnList
    L16_2 = spawnList
    L16_2 = #L16_2
    L16_2 = L16_2 + 1
    L15_2[L16_2] = L14_2
  end
  if 0 < A3_2 then
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.max
    L13_2 = g_defaultCameraResetTime
    L14_2 = cameraResetTimer
    if not L14_2 then
      L14_2 = 0
    end
    L12_2 = L12_2(L13_2, L14_2)
    cameraResetTimer = L12_2
    if 25 < A3_2 then
      L12_2 = 10000000
      L13_2 = _G
      L13_2 = L13_2.math
      L13_2 = L13_2.min
      L14_2 = A3_2 * A3_2
      L14_2 = L14_2 * A3_2
      L15_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = addCameraShake
      L15_2 = cameraShakeModeSine
      L16_2 = 150
      L17_2 = L13_2 / L12_2
      L17_2 = L17_2 * 4
      L18_2 = L13_2 / L12_2
      L18_2 = L18_2 * 0.5
      L14_2(L15_2, L16_2, L17_2, L18_2)
    end
  end
  L12_2 = L9_2.controllable
  if L12_2 then
    L12_2 = blockTable
    L12_2 = L12_2.blocks
    L13_2 = L10_2.definition
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.preventBirdCollision
    if L12_2 then
      goto lbl_256
    end
  end
  L12_2 = L10_2.controllable
  if L12_2 then
    L12_2 = blockTable
    L12_2 = L12_2.blocks
    L13_2 = L9_2.definition
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.preventBirdCollision
    ::lbl_256::
    if L12_2 then
      return
    end
  end
  L12_2 = L9_2.controllable
  if L12_2 and 0 < A3_2 then
    L12_2 = L9_2
    L13_2 = worldAttributes
    L13_2 = L13_2.scoreDamageMultiplier
    L13_2 = A3_2 * L13_2
    L14_2 = blockTable
    L14_2 = L14_2.blocks
    L15_2 = L10_2.definition
    L14_2 = L14_2[L15_2]
    L14_2 = L14_2.scoreMultiplier
    if not L14_2 then
      L14_2 = 1
    end
    L13_2 = L13_2 * L14_2
    L14_2 = L12_2.hasCollided
    if L14_2 then
      L14_2 = _G
      L14_2 = L14_2.table
      L14_2 = L14_2.insert
      L15_2 = floatingScores
      L16_2 = {}
      L17_2 = L12_2.x
      L16_2.x = L17_2
      L17_2 = L12_2.y
      L16_2.y = L17_2
      L17_2 = ""
      L18_2 = L13_2
      L17_2 = L17_2 .. L18_2
      L16_2.text = L17_2
      L16_2.score = L13_2
      L16_2.time = 0
      L16_2.lifetime = 0.6
      L17_2 = L13_2 / 3000
      L17_2 = 0.25 + L17_2
      L16_2.maxScale = L17_2
      L16_2.xs = 0
      L14_2(L15_2, L16_2)
    end
    L14_2 = scoreTable
    L14_2 = L14_2[A0_2]
    if L14_2 == nil then
      L14_2 = scoreTable
      L15_2 = {}
      L14_2[A0_2] = L15_2
      L14_2 = scoreTable
      L14_2 = L14_2[A0_2]
      L14_2.score = 0
    end
    L14_2 = scoreTable
    L14_2 = L14_2[A0_2]
    L15_2 = scoreTable
    L15_2 = L15_2[A0_2]
    L15_2 = L15_2.score
    L15_2 = L15_2 + L13_2
    L14_2.score = L15_2
    L14_2 = addScoreToBird
    L15_2 = L13_2
    L14_2(L15_2)
    L9_2.didDamage = true
  end
  L12_2 = L9_2.shot
  if L12_2 then
    L12_2 = L9_2.controllable
    if L12_2 then
      L12_2 = L9_2.hasCollided
      if not L12_2 then
        L12_2 = L9_2.damageDone
        L12_2 = L12_2 + A3_2
        L9_2.damageDone = L12_2
      end
    end
  end
  L12_2 = L10_2.shot
  if L12_2 then
    L12_2 = L10_2.controllable
    if L12_2 then
      L12_2 = L10_2.hasCollided
      if not L12_2 then
        L12_2 = L10_2.damageDone
        L12_2 = L12_2 + A3_2
        L10_2.damageDone = L12_2
      end
    end
  end
  L12_2 = false
  L13_2 = L9_2.shot
  if L13_2 then
    L13_2 = L10_2.shot
    if L13_2 then
  end
  else
    L13_2 = L9_2.shot
    if L13_2 then
      L13_2 = L9_2.hasCollided
      if not L13_2 then
        L12_2 = true
        L9_2.hasCollided = true
        L13_2 = setLinearDamping
        L14_2 = L9_2.name
        L15_2 = defaultBirdsDrag
        L13_2(L14_2, L15_2)
    end
    else
      L13_2 = L10_2.shot
      if L13_2 then
        L13_2 = L9_2.hasCollided
        if not L13_2 then
          L12_2 = true
          L10_2.hasCollided = true
          L13_2 = setLinearDamping
          L14_2 = L10_2.name
          L15_2 = defaultBirdsDrag
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L13_2 = L9_2.controllable
  if L13_2 == true then
    L13_2 = L10_2.controllable
    if L13_2 == true then
      goto lbl_418
    end
  end
  L13_2 = gameCamera
  L14_2 = L13_2
  L13_2 = L13_2.getNumOfCameraTargetObjects
  L13_2 = L13_2(L14_2)
  if 0 < L13_2 then
    L13_2 = nil
    L14_2 = gameCamera
    L15_2 = L14_2
    L14_2 = L14_2.isCameraTargetObject
    L16_2 = L9_2
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L13_2 = L9_2
    end
    L14_2 = gameCamera
    L15_2 = L14_2
    L14_2 = L14_2.isCameraTargetObject
    L16_2 = L10_2
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L13_2 = L10_2
    end
    if L13_2 ~= nil then
      L14_2 = g_delayedBirdFocusLost
      if L14_2 then
        L14_2 = L13_2.delayedRemovalTimer
        if L14_2 == nil then
          L14_2 = g_delayedBirdFocusLostTimeLimit
          L13_2.delayedRemovalTimer = L14_2
        end
      else
        L14_2 = gameCamera
        L15_2 = L14_2
        L14_2 = L14_2.removeCameraTargetObject
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  ::lbl_418::
  if not L12_2 then
    L13_2 = L9_2.controllable
    if L13_2 then
      L13_2 = L9_2.timeSinceCollision
      if L13_2 ~= nil then
        L13_2 = setObjectParameter
        L14_2 = L9_2.name
        L15_2 = 31
        L16_2 = L9_2.timeSinceCollision
        L16_2 = L16_2 * 2
        L13_2(L14_2, L15_2, L16_2)
      end
    else
      L13_2 = L10_2.controllable
      if L13_2 then
        L13_2 = L10_2.timeSinceCollision
        if L13_2 ~= nil then
          L13_2 = setObjectParameter
          L14_2 = L10_2.name
          L15_2 = 31
          L16_2 = L10_2.timeSinceCollision
          L16_2 = L16_2 * 2
          L13_2(L14_2, L15_2, L16_2)
        end
      end
    end
  end
  L13_2 = L9_2
  L14_2 = 1
  L15_2 = 2
  L16_2 = 1
  for L17_2 = L14_2, L15_2, L16_2 do
    L18_2 = getObjectDefinition
    L19_2 = L13_2.name
    L18_2 = L18_2(L19_2)
    L19_2 = L13_2.controllable
    if L19_2 then
      L19_2 = L18_2.sprites
      if L19_2 ~= nil then
        L19_2 = L13_2.shot
        if L19_2 == true then
          L19_2 = L18_2.specialty
          L20_2 = L18_2.sprites
          L20_2 = L20_2.collision
          if L20_2 ~= nil then
            L20_2 = L9_2.notCollided
            if L20_2 == true then
              L20_2 = L10_2.notCollided
              if L20_2 == true then
                goto lbl_514
              end
            end
            L20_2 = objects
            L20_2 = L20_2.world
            L21_2 = L13_2.name
            L20_2 = L20_2[L21_2]
            L20_2 = L20_2.shot
            if L20_2 == true then
              L20_2 = objects
              L20_2 = L20_2.world
              L21_2 = L13_2.name
              L20_2 = L20_2[L21_2]
              L20_2 = L20_2.ignoreCollisionSprite
              if not L20_2 then
                L20_2 = objects
                L20_2 = L20_2.world
                L21_2 = L13_2.name
                L20_2 = L20_2[L21_2]
                L21_2 = L18_2.sprites
                L21_2 = L21_2.collision
                L20_2.sprite = L21_2
                L20_2 = setSprite
                L21_2 = L13_2.name
                L22_2 = objects
                L22_2 = L22_2.world
                L23_2 = L13_2.name
                L22_2 = L22_2[L23_2]
                L22_2 = L22_2.sprite
                L20_2(L21_2, L22_2)
              end
            end
            L9_2.notCollided = nil
            L10_2.notCollided = nil
            L20_2 = setObjectParameter
            L21_2 = A0_2
            L22_2 = 11
            L23_2 = 0
            L20_2(L21_2, L22_2, L23_2)
            L20_2 = setObjectParameter
            L21_2 = A1_2
            L22_2 = 11
            L23_2 = 0
            L20_2(L21_2, L22_2, L23_2)
          end
          ::lbl_514::
          L20_2 = flyingBird
          if L20_2 ~= nil then
            L20_2 = L13_2.name
            L21_2 = flyingBird
            L21_2 = L21_2.name
            if L20_2 == L21_2 and L19_2 ~= "Mighty_Falcon" then
              L20_2 = L18_2.specialtyActivationDelay
              if L20_2 == nil then
                L20_2 = false
                birdSpecialtyAvailable = L20_2
              else
                L20_2 = objects
                L20_2 = L20_2.world
                L21_2 = flyingBird
                L21_2 = L21_2.name
                L20_2 = L20_2[L21_2]
                L20_2 = L20_2.specialtyTimer
                if L20_2 == nil then
                  L20_2 = objects
                  L20_2 = L20_2.world
                  L21_2 = flyingBird
                  L21_2 = L21_2.name
                  L20_2 = L20_2[L21_2]
                  L21_2 = L18_2.specialtyActivationDelay
                  L20_2.specialtyTimer = L21_2
                end
              end
            end
          end
          if L19_2 == "THREE_SPLIT_EXPLOSION" then
            L20_2 = L13_2.hasExploded
            if L20_2 ~= true then
              L20_2 = L10_2.controllable
              if L20_2 ~= true then
                L20_2 = nil
                L21_2 = L18_2.sounds
                if L21_2 ~= nil then
                  L21_2 = L18_2.sounds
                  L20_2 = L21_2.explosion
                end
                L21_2 = makeExplosion
                L22_2 = L13_2
                L23_2 = L18_2
                L24_2 = L20_2
                L21_2(L22_2, L23_2, L24_2)
                L13_2.hasExploded = true
              end
            end
          end
          L20_2 = L13_2.collision
          if L20_2 ~= true then
            L20_2 = setLinearDamping
            L21_2 = L13_2.name
            L22_2 = defaultPhysicsDrag
            L20_2(L21_2, L22_2)
            L20_2 = _G
            L20_2 = L20_2.pairs
            L21_2 = otherBirds
            L20_2, L21_2, L22_2 = L20_2(L21_2)
            for L23_2, L24_2 in L20_2, L21_2, L22_2 do
              L25_2 = setLinearDamping
              L26_2 = L24_2
              L27_2 = defaultPhysicsDrag
              L25_2(L26_2, L27_2)
            end
          end
          L13_2.collision = true
        end
      end
    end
    L13_2 = L10_2
  end
  L14_2 = L9_2.controllable
  if L14_2 then
    L14_2 = L9_2
    L15_2 = getObjectDefinition
    L16_2 = L14_2.name
    L15_2 = L15_2(L16_2)
    L16_2 = L15_2.specialty
    L17_2 = actions
    L17_2 = L17_2.handleStateChange
    L18_2 = L14_2.name
    L19_2 = L15_2.states
    if L19_2 then
      L19_2 = L15_2.states
      L19_2 = L19_2.collision
    end
    L17_2(L18_2, L19_2)
  end
  L14_2 = L10_2.controllable
  if L14_2 then
    L14_2 = L10_2
    L15_2 = getObjectDefinition
    L16_2 = L14_2.name
    L15_2 = L15_2(L16_2)
    L16_2 = L15_2.specialty
    L17_2 = actions
    L17_2 = L17_2.handleStateChange
    L18_2 = L14_2.name
    L19_2 = L15_2.states
    if L19_2 then
      L19_2 = L15_2.states
      L19_2 = L19_2.collision
    end
    L17_2(L18_2, L19_2)
  end
  L14_2 = L9_2.shot
  if L14_2 then
    L14_2 = L9_2.controllable
    if L14_2 then
      L9_2.collision = true
      L14_2 = L10_2.controllable
      if L14_2 ~= true then
        L9_2.recordTrajectory = false
      end
    end
  end
  L14_2 = L10_2.shot
  if L14_2 then
    L14_2 = L10_2.controllable
    if L14_2 then
      L10_2.collision = true
      L14_2 = L9_2.controllable
      if L14_2 ~= true then
        L10_2.recordTrajectory = false
      end
    end
  end
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.random
  L15_2 = 12
  L16_2 = 20
  L14_2 = L14_2(L15_2, L16_2)
  if A0_2 ~= nil then
    L15_2 = birds
    L15_2 = L15_2[A0_2]
    L16_2 = 0
    if A1_2 ~= nil then
      L17_2 = getObjectDefinition
      L18_2 = A1_2
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.material
      if L17_2 == "immovable" and L15_2 ~= nil then
        L17_2 = L15_2.xVel
        if L17_2 ~= nil then
          L17_2 = L15_2.yVel
          if L17_2 ~= nil then
            L17_2 = vLength
            L18_2 = L15_2.xVel
            L19_2 = L15_2.yVel
            L17_2 = L17_2(L18_2, L19_2)
            L18_2 = L15_2.mass
            L17_2 = L17_2 * L18_2
            L16_2 = L17_2 / 10
          end
        end
      end
    end
    L17_2 = collisionParticleForceThreshold
    if not (A2_2 > L17_2) then
      L17_2 = collisionParticleForceThreshold
      if not (L16_2 > L17_2) then
        goto lbl_824
      end
    end
    L17_2 = getObjectDefinition
    L18_2 = A1_2
    L17_2 = L17_2(L18_2)
    L18_2 = blockTable
    L18_2 = L18_2.materials
    L19_2 = L17_2.material
    L18_2 = L18_2[L19_2]
    if L18_2 ~= nil then
      L19_2 = L17_2.collisionSound
      if not L19_2 then
        L19_2 = L18_2.collisionSound
      end
      if 10 < A3_2 then
        L20_2 = L17_2.damageSound
        L19_2 = L20_2 or L19_2
        if not L20_2 then
          L20_2 = L18_2.damageSound
          L19_2 = L20_2 or L19_2
          if not L20_2 then
          end
        end
      end
      if L19_2 ~= nil then
        L20_2 = res
        L20_2 = L20_2.playAudio
        L21_2 = L19_2
        L20_2(L21_2)
      end
    end
    L19_2 = getObjectDefinition
    L20_2 = A0_2
    L19_2 = L19_2(L20_2)
    L19_2 = L19_2.particlesCollision
    if L19_2 ~= nil then
      L20_2 = particleTable
      L20_2 = L20_2.particles
      L20_2 = L20_2[L19_2]
      L20_2 = L20_2.amount
      if L20_2 == nil then
        L21_2 = _G
        L21_2 = L21_2.math
        L21_2 = L21_2.random
        L22_2 = 12
        L23_2 = 20
        L21_2 = L21_2(L22_2, L23_2)
        L20_2 = L21_2
      end
      L21_2 = putParticles
      L22_2 = {}
      L22_2.objectName = A0_2
      L22_2.particles = L19_2
      L22_2.amount = L20_2
      L21_2(L22_2)
    end
    L20_2 = getObjectDefinition
    L21_2 = A1_2
    L20_2 = L20_2(L21_2)
    L20_2 = L20_2.damageParticles
    if A1_2 == "ground" then
      L21_2 = putParticles
      L22_2 = {}
      L22_2.objectName = A0_2
      L23_2 = getObjectDefinition
      L24_2 = A0_2
      L23_2 = L23_2(L24_2)
      L23_2 = L23_2.groundCollisionParticles
      L22_2.particles = L23_2
      L22_2.amount = 1
      L21_2(L22_2)
    elseif L20_2 ~= nil then
      L21_2 = putParticles
      L22_2 = {}
      L22_2.objectName = A1_2
      L22_2.particles = L20_2
      L23_2 = _G
      L23_2 = L23_2.math
      L23_2 = L23_2.ceil
      L24_2 = A2_2 / 10
      L23_2 = L23_2(L24_2)
      L22_2.amount = L23_2
      L21_2(L22_2)
    end
    L21_2 = 0.7
    if L15_2 ~= nil then
      L22_2 = L15_2.mass
      L22_2 = 60 * L22_2
      L22_2 = L22_2 / 10
      L23_2 = blockTable
      L23_2 = L23_2.damageFactors
      L24_2 = L15_2.damageFactors
      L23_2 = L23_2[L24_2]
      L23_2 = L23_2.damageMultiplier
      L24_2 = getObjectDefinition
      L25_2 = A1_2
      L24_2 = L24_2(L25_2)
      L24_2 = L24_2.material
      L23_2 = L23_2[L24_2]
      if L23_2 ~= nil and 1 < L23_2 then
        L22_2 = L22_2 * L23_2
      end
      L24_2 = _G
      L24_2 = L24_2.math
      L24_2 = L24_2.max
      L25_2 = _G
      L25_2 = L25_2.math
      L25_2 = L25_2.max
      L26_2 = A2_2
      L27_2 = L16_2
      L25_2 = L25_2(L26_2, L27_2)
      L25_2 = L25_2 / L22_2
      L26_2 = 0.2
      L24_2 = L24_2(L25_2, L26_2)
      L21_2 = L24_2
    end
    L22_2 = getObjectDefinition
    L23_2 = A0_2
    L22_2 = L22_2(L23_2)
    L22_2 = L22_2.sounds
    if L22_2 ~= nil then
      L22_2 = getObjectDefinition
      L23_2 = A0_2
      L22_2 = L22_2(L23_2)
      L22_2 = L22_2.sounds
      L22_2 = L22_2.collision
      if L22_2 ~= nil and L15_2 ~= nil then
        L22_2 = L15_2.collisionSoundDisabled
        if not L22_2 then
          L22_2 = res
          L22_2 = L22_2.playAudio
          L23_2 = getObjectDefinition
          L24_2 = A0_2
          L23_2 = L23_2(L24_2)
          L23_2 = L23_2.sounds
          L23_2 = L23_2.collision
          L22_2(L23_2)
        end
      end
    end
  end
  ::lbl_824::
  L15_2 = L10_2.controllable
  if L15_2 ~= true then
    L15_2 = getDamageSprite
    L16_2 = L10_2
    L17_2 = blockTable
    L17_2 = L17_2.blocks
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = L15_2.sprite
    L10_2.damageSprite = L16_2
    L16_2 = L15_2.blink
    L10_2.blinkSprite = L16_2
    L16_2 = L15_2.smile
    L10_2.smileSprite = L16_2
    L16_2 = createDamageParticles
    L17_2 = L10_2
    L18_2 = blockTable
    L18_2 = L18_2.blocks
    L19_2 = L10_2.strength
    L19_2 = L19_2 + A3_2
    L16_2(L17_2, L18_2, L19_2)
  end
end

birdCollision = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.ipairs
    L7_2 = actions
    L7_2 = L7_2.myLevelFolders
    L7_2 = L7_2[L5_2]
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = _G
      L11_2 = L11_2.ipairs
      L12_2 = actions
      L12_2 = L12_2.myLevels
      L12_2 = L12_2[L10_2]
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      for L14_2, L15_2 in L11_2, L12_2, L13_2 do
        if L15_2 == A0_2 then
          return L10_2
        end
      end
    end
  end
end

getEpisodeForLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.ipairs
    L7_2 = actions
    L7_2 = L7_2.myLevelFolders
    L7_2 = L7_2[L5_2]
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = _G
      L11_2 = L11_2.ipairs
      L12_2 = actions
      L12_2 = L12_2.myLevels
      L12_2 = L12_2[L10_2]
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      for L14_2, L15_2 in L11_2, L12_2, L13_2 do
        if L15_2 == A0_2 then
          return L14_2
        end
      end
    end
  end
end

getLevelNumberForLevelName = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = _G
  L1_2 = L1_2.string
  L1_2 = L1_2.find
  L2_2 = A0_2
  L3_2 = "_light"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "_light"
    L4_2 = "_dark"
    return L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = _G
    L1_2 = L1_2.string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "_dark"
    L4_2 = "_light"
    return L1_2(L2_2, L3_2, L4_2)
  end
end

getOpposideSideEpisode = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = getOpposideSideEpisode
  L3_2 = currentFolder
  L2_2 = L2_2(L3_2)
  if A1_2 ~= true then
    L3_2 = isEpisodeCompleted
    L4_2 = currentFolder
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = updatePCCameraPanningToDirection
      L4_2 = true
      L3_2(L4_2)
    end
  end
  if A0_2 == true then
    L3_2 = isBuildUnlocked
    L3_2 = L3_2()
    if L3_2 ~= true then
      L3_2 = {}
      L3_2.from = "After episode complete"
      L4_2 = actions
      L4_2 = L4_2.myLevelFolders
      L5_2 = gameCamera
      L6_2 = L5_2
      L5_2 = L5_2.getCurrentCameraIndex
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2 + 2
      L4_2 = L4_2[L5_2]
      L3_2.episodeIdx = L4_2
      L4_2 = addEventCall
      L5_2 = "checkForIApPurchaseEpisode"
      L6_2 = L3_2
      L7_2 = 1.75
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end

setupEpisodeCompletedActions = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A0_2 ~= nil
  L2_2(L3_2)
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2 ~= nil
  L2_2(L3_2)
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = actions
  L3_2 = L3_2.episodeTypeTable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L8_2 = actions
    L8_2 = L8_2.myLevelFolders
    L8_2 = L8_2[L6_2]
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      if L11_2 == A0_2 then
        return L10_2
      end
    end
  end
  L2_2 = assert
  L3_2 = false
  L4_2 = "could not get world number for theme "
  L5_2 = A0_2
  L6_2 = ", level #"
  L7_2 = A1_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L2_2(L3_2, L4_2)
end

getWorldNumber = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.ipairs
    L7_2 = actions
    L7_2 = L7_2.myLevelFolders
    L7_2 = L7_2[L5_2]
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      if L10_2 == A0_2 then
        L11_2 = true
        return L11_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

isEpisodeFolder = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = 0
  L1_2 = 0
  L2_2 = 1
  L3_2 = actions
  L3_2 = L3_2.episodeTypeTable
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = 1
    L7_2 = actions
    L7_2 = L7_2.myLevelFolders
    L8_2 = actions
    L8_2 = L8_2.episodeTypeTable
    L8_2 = L8_2[L5_2]
    L7_2 = L7_2[L8_2]
    L7_2 = #L7_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = calculateEpisodeScoreAndStars
      L11_2 = L5_2
      L12_2 = L9_2
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2)
      L0_2 = L0_2 + L11_2
      L1_2 = L1_2 + L13_2
    end
  end
  L2_2 = steam
  if L2_2 then
    L2_2 = setStat
    L3_2 = "totalStars"
    L4_2 = L0_2
    L2_2(L3_2, L4_2)
    L2_2 = setStat
    L3_2 = "totalFeathers"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end

calculateStarsForAllEpisodes = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = 0
  L1_2 = 1
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = 1
    L6_2 = actions
    L6_2 = L6_2.myLevelFolders
    L7_2 = actions
    L7_2 = L7_2.episodeTypeTable
    L7_2 = L7_2[L4_2]
    L6_2 = L6_2[L7_2]
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = calculateEpisodeScoreAndStars
      L10_2 = L4_2
      L11_2 = L8_2
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
      L0_2 = L0_2 + L9_2
    end
  end
  return L0_2
end

calculateScoreForAllEpisodes = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = actions
  L3_2 = L3_2.episodeTypeTable
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = nil
    if A0_2 then
      L6_2 = 2
    else
      L6_2 = 1
    end
    L7_2 = L6_2
    L8_2 = actions
    L8_2 = L8_2.myLevelFolders
    L9_2 = actions
    L9_2 = L9_2.episodeTypeTable
    L9_2 = L9_2[L5_2]
    L8_2 = L8_2[L9_2]
    L8_2 = #L8_2
    L9_2 = 2
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = calculateEpisodeScoreAndStars
      L12_2 = L5_2
      L13_2 = L10_2
      L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
      L1_2 = L1_2 + L11_2
    end
  end
  return L1_2
end

calculateTotalSideScore = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 0
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = actions
  L3_2 = L3_2.episodeTypeTable
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L8_2 = actions
    L8_2 = L8_2.myLevelFolders
    L8_2 = L8_2[L6_2]
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      if L11_2 == A0_2 then
        L12_2 = L10_2 + L1_2
        return L12_2
      end
    end
    L7_2 = episodeTypeIndexIncrement
    L1_2 = L1_2 + L7_2
  end
  L2_2 = assert
  L3_2 = false
  L4_2 = "could not resolve current folder index from current folder"
  L2_2(L3_2, L4_2)
end

getCurrentFolderIndex = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = 1
  while true do
    L3_2 = episodeTypeIndexIncrement
    if not (L1_2 > L3_2) then
      break
    end
    L2_2 = L2_2 + 1
    L3_2 = episodeTypeIndexIncrement
    L1_2 = L1_2 - L3_2
  end
  L3_2 = actions
  L3_2 = L3_2.myLevelFolders
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L1_2]
  return L3_2
end

getEpisodeName = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = actions
  L1_2 = L1_2.myLevelFolders
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L3_2 = A0_2.episodeType
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.startNumber
  L1_2 = L1_2[L2_2]
  L2_2 = getEpisodeMetadata
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.levelsAvailableInFree
  L2_2 = L2_2 ~= nil
  L3_2 = getEpisodeMetadata
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.iapPurchase
  L4_2 = true
  L5_2 = deviceModel
  if L5_2 ~= "windows" then
    L5_2 = gamerService
    if not L5_2 then
      goto lbl_34
    end
  end
  L5_2 = g_isRegistered
  L4_2 = L5_2 or L4_2
  if not L5_2 then
    L4_2 = L2_2
  end
  goto lbl_42
  ::lbl_34::
  L5_2 = isIOSFree
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = getEpisodeMetadata
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2.availableInIOSFree
  end
  ::lbl_42::
  if L4_2 then
    L5_2 = fireAction
    L6_2 = "loadLevelSelectionMenu"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = deviceModel
    if L5_2 ~= "windows" then
      L5_2 = gamerService
      if not L5_2 then
        goto lbl_68
      end
    end
    L5_2 = eventManager
    L6_2 = L5_2
    L5_2 = L5_2.notify
    L7_2 = {}
    L8_2 = events
    L8_2 = L8_2.EID_SHOW_REGISTRATION_DIALOG
    L7_2.id = L8_2
    
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = fireAction
      L1_3 = "loadLevelSelectionMenu"
      L2_3 = A0_2
      L0_3(L1_3, L2_3)
    end
    
    L7_2.success_call = L8_2
    L5_2(L6_2, L7_2)
    L5_2 = false
    do return L5_2 end
    goto lbl_80
    ::lbl_68::
    L5_2 = isIOSFree
    L5_2 = L5_2()
    if L5_2 then
      L5_2 = eventManager
      L6_2 = L5_2
      L5_2 = L5_2.notify
      L7_2 = {}
      L8_2 = events
      L8_2 = L8_2.EID_OPEN_BUY_FREE_IOS_VERSION_POPUP
      L7_2.id = L8_2
      L7_2.openedFrom = L1_2
      L5_2(L6_2, L7_2)
    end
  end
  ::lbl_80::
  L5_2 = true
  return L5_2
end

gotoLevelSelectionMenu = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getLastOpenedEpisodeIndex
  L0_2 = L0_2(L1_2)
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getLastOpenedEpisodeType
  L1_2 = L1_2(L2_2)
  L2_2 = calculateEpisodeScoreAndStars
  L3_2 = L1_2
  L4_2 = L0_2
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
  L7_2 = L3_2 == L4_2
  maxStarsObtained = L7_2
end

calculateRewardState = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = actions
  L3_2 = L3_2.episodeTypeTable
  L3_2 = L3_2[A0_2]
  L4_2 = 1
  L5_2 = actions
  L5_2 = L5_2.myLevelFolders
  L5_2 = L5_2[L3_2]
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = actions
    L8_2 = L8_2.myLevelFolders
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2[L7_2]
    if L8_2 == A1_2 then
      return L7_2
    end
  end
end

getEpisodeNumberWithType = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getLastOpenedEpisodeType
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  L3_2 = 1
  L4_2 = actions
  L4_2 = L4_2.myLevelFolders
  L4_2 = L4_2[L2_2]
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = actions
    L7_2 = L7_2.myLevelFolders
    L7_2 = L7_2[L2_2]
    L7_2 = L7_2[L6_2]
    if L7_2 == A0_2 then
      return L6_2
    end
  end
end

getEpisodeNumber = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = setGameOn
  L1_2 = false
  L0_2(L1_2)
  L0_2 = setPhysicsEnabled
  L1_2 = false
  L0_2(L1_2)
end

disableGameUpdate = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = "BTN_BG_SW"
  return L0_2
end

getEmptyButtonSpriteName = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L2_2.id = A0_2
  if A1_2 then
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L2_2[L6_2] = L7_2
    end
  end
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

notifyEventManager = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = startedFromEditor
  if L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = g_showTutorials
  if L3_2 then
    L3_2 = getLevelMetadata
    L4_2 = levelName
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.ignoreTutorial
    if not L3_2 then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.isTutorialShown
      L5_2 = A0_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = SettingsWrapper
        L4_2 = L3_2
        L3_2 = L3_2.getTimesBirdPowerNotUsed
        L5_2 = A0_2
        L3_2 = L3_2(L4_2, L5_2)
        if not (5 <= L3_2 or A1_2) then
          goto lbl_78
        end
      end
      L3_2 = A0_2
      if not A2_2 then
        L4_2 = objects
        L4_2 = L4_2.world
        L4_2 = L4_2[A0_2]
        L3_2 = L4_2.definition
      end
      L4_2 = SettingsWrapper
      L5_2 = L4_2
      L4_2 = L4_2.isTutorialShown
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = loadImages
      L6_2 = {}
      L7_2 = "TUTORIALS"
      L6_2[1] = L7_2
      L5_2(L6_2)
      L5_2 = nil
      L6_2 = ui
      L6_2 = L6_2.AnimatedTutorial
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = L3_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
      L6_2 = queuedTutorials
      if not L6_2 then
        L6_2 = {}
      end
      queuedTutorials = L6_2
      L6_2 = _G
      L6_2 = L6_2.table
      L6_2 = L6_2.insert
      L7_2 = queuedTutorials
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = SettingsWrapper
      L7_2 = L6_2
      L6_2 = L6_2.markTutorialShown
      L8_2 = L3_2
      L6_2(L7_2, L8_2)
      if not L4_2 then
        L6_2 = SettingsWrapper
        L7_2 = L6_2
        L6_2 = L6_2.birdPowerNotUsed
        L8_2 = L3_2
        L6_2(L7_2, L8_2)
      else
        L6_2 = SettingsWrapper
        L7_2 = L6_2
        L6_2 = L6_2.resetBirdPowerNotUsed
        L8_2 = L3_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  ::lbl_78::
end

setupTutorial = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.tutorialSpecialtyHandled
  if not L1_2 then
    A0_2.tutorialSpecialtyHandled = true
    L1_2 = birdSpecialtyUsed
    if L1_2 then
      L1_2 = print
      L2_2 = "specialty RESET: "
      L3_2 = A0_2.definition
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.resetBirdPowerNotUsed
      L3_2 = A0_2.definition
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.ignoreTutorialPowerUsage
      if not L1_2 then
        L1_2 = print
        L2_2 = "NOT used specialty: "
        L3_2 = A0_2.definition
        L2_2 = L2_2 .. L3_2
        L1_2(L2_2)
        L1_2 = SettingsWrapper
        L2_2 = L1_2
        L1_2 = L1_2.birdPowerNotUsed
        L3_2 = A0_2.definition
        L1_2(L2_2, L3_2)
      end
    end
  end
end

handleBirdPowerUseCounting = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = ui
  L0_2 = L0_2.ShopFrame
  L0_2 = L0_2.getData
  return L0_2()
end

getShopData = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = g_forceUpdateData
  L0_2 = L0_2.cloudData
  if L0_2 then
    L0_2 = g_forceUpdateData
    L0_2 = L0_2.cloudData
    L0_2 = L0_2.data
    return L0_2
  else
    L0_2 = g_forceUpdateData
    L0_2 = L0_2.cachedData
    if L0_2 then
      L0_2 = g_forceUpdateData
      L0_2 = L0_2.cachedData
      L0_2 = L0_2.data
      return L0_2
    else
      L0_2 = g_forceUpdateData
      L0_2 = L0_2.packageData
      L0_2 = L0_2.data
      return L0_2
    end
  end
end

getForceUpdateData = L0_1

function L0_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = g_toyCodeURLs
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = g_toyCodeURLs
      L1_2[A0_2] = nil
    end
  end
end

cancelRequestToURL = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = g_toyCodeURLs
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = parseToyValidationResponseParameters
    L3_2 = A1_2
    L4_2 = false
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    if L2_2 == "1" then
      L4_2 = getCharacterBasedOnGroup
      L5_2 = L3_2
      L4_2, L5_2 = L4_2(L5_2)
      if L4_2 ~= nil and L5_2 ~= nil then
        L6_2 = SettingsWrapper
        L7_2 = L6_2
        L6_2 = L6_2.storeValidatedTelepodToy
        L8_2 = g_toyCodeURLs
        L8_2 = L8_2[A0_2]
        L9_2 = L4_2
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = SettingsWrapper
        L7_2 = L6_2
        L6_2 = L6_2.setScannedTelepodCharacter
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
        L6_2 = eventManager
        L7_2 = L6_2
        L6_2 = L6_2.notify
        L8_2 = {}
        L9_2 = events
        L9_2 = L9_2.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED
        L8_2.id = L9_2
        L8_2.status = "1"
        L8_2.birdType = L4_2
        L9_2 = L5_2.portrait
        L8_2.img = L9_2
        L9_2 = L5_2.button
        L8_2.button_img = L9_2
        L9_2 = g_toyCodeURLs
        L9_2 = L9_2[A0_2]
        L8_2.qrCode = L9_2
        L6_2(L7_2, L8_2)
        L6_2 = eventManager
        L7_2 = L6_2
        L6_2 = L6_2.notify
        L8_2 = {}
        L9_2 = events
        L9_2 = L9_2.EID_CHARACTER_MENU_REFRESH
        L8_2.id = L9_2
        L6_2(L7_2, L8_2)
      else
        L6_2 = eventManager
        L7_2 = L6_2
        L6_2 = L6_2.notify
        L8_2 = {}
        L9_2 = events
        L9_2 = L9_2.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED
        L8_2.id = L9_2
        L8_2.status = "0"
        L8_2.errorCode = "update-game"
        L6_2(L7_2, L8_2)
      end
    else
      L4_2 = eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = events
      L7_2 = L7_2.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED
      L6_2.id = L7_2
      L6_2.status = "0"
      L6_2.errorCode = L3_2
      L4_2(L5_2, L6_2)
    end
    L4_2 = g_toyCodeURLs
    L4_2[A0_2] = nil
  end
end

nativecallback_telepodValidationResponse = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = g_toyCodeURLs
  L2_2 = L2_2[A0_2]
  if L2_2 ~= nil then
    L2_2 = parseToyValidationResponseParameters
    L3_2 = A1_2
    L4_2 = true
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L4_2 = ""
    L5_2 = getShopData
    L5_2 = L5_2()
    L6_2 = g_toyCodeURLs
    L6_2 = L6_2[A0_2]
    L7_2 = getText
    L8_2 = "TEXT_TOYCODE_INVALID_KEY"
    L7_2 = L7_2(L8_2)
    L8_2 = nil
    L9_2 = 100
    L10_2 = 300
    if L5_2 then
      L11_2 = L5_2.jengaCodeRewardT1
      if L11_2 then
        L11_2 = L5_2.jengaCodeRewardT2
        if L11_2 then
          L11_2 = L5_2.jengaCodeRewardT1
          L9_2 = L11_2.value
          L11_2 = L5_2.jengaCodeRewardT2
          L10_2 = L11_2.value
        end
      end
    end
    if L2_2 == "1" then
      if L3_2 == "cred-tier1" or L3_2 == "hasbro-toy-codes-10" then
        L11_2 = SettingsWrapper
        L12_2 = L11_2
        L11_2 = L11_2.isToyKeyUsed
        L13_2 = L6_2
        L11_2 = L11_2(L12_2, L13_2)
        if not L11_2 then
          L11_2 = addCoins
          L12_2 = L9_2
          L11_2(L12_2)
          L11_2 = eventManager
          L12_2 = L11_2
          L11_2 = L11_2.notify
          L13_2 = {}
          L14_2 = events
          L14_2 = L14_2.EID_COINS_GAINED
          L13_2.id = L14_2
          L13_2.amount = L9_2
          L13_2.typeOfGain = "jengaCode"
          L13_2.screen = "MainMenu"
          L13_2.itemName = "Jenga code coins"
          L13_2.iapType = "none"
          L11_2(L12_2, L13_2)
          L11_2 = L9_2
          L12_2 = " coins added from Jenga code"
          L4_2 = L11_2 .. L12_2
          L11_2 = getText
          L12_2 = "TEXT_JENGACODE_CREDITS_AWARD"
          L13_2 = {}
          L14_2 = "$CREDITS"
          L15_2 = _G
          L15_2 = L15_2.tostring
          L16_2 = L9_2
          L15_2, L16_2 = L15_2(L16_2)
          L13_2[1] = L14_2
          L13_2[2] = L15_2
          L13_2[3] = L16_2
          L11_2 = L11_2(L12_2, L13_2)
          L7_2 = L11_2
          L11_2 = ui
          L11_2 = L11_2.Image
          L12_2 = L11_2
          L11_2 = L11_2.new
          L13_2 = {}
          L13_2.name = "title"
          L11_2 = L11_2(L12_2, L13_2)
          L8_2 = L11_2
          L12_2 = L8_2
          L11_2 = L8_2.setImage
          L13_2 = "COINS_S_3"
          L11_2(L12_2, L13_2)
          L11_2 = SettingsWrapper
          L12_2 = L11_2
          L11_2 = L11_2.storeToyUnlock
          L13_2 = L6_2
          L11_2(L12_2, L13_2)
      end
      else
        if L3_2 == "cred-tier2" or L3_2 == "hasbro-toy-codes-11" then
          L11_2 = SettingsWrapper
          L12_2 = L11_2
          L11_2 = L11_2.isToyKeyUsed
          L13_2 = L6_2
          L11_2 = L11_2(L12_2, L13_2)
          if not L11_2 then
            L11_2 = addCoins
            L12_2 = L10_2
            L11_2(L12_2)
            L11_2 = eventManager
            L12_2 = L11_2
            L11_2 = L11_2.notify
            L13_2 = {}
            L14_2 = events
            L14_2 = L14_2.EID_COINS_GAINED
            L13_2.id = L14_2
            L13_2.amount = L10_2
            L13_2.typeOfGain = "jengaCode"
            L13_2.screen = "MainMenu"
            L13_2.itemName = "Jenga code coins"
            L13_2.iapType = "none"
            L11_2(L12_2, L13_2)
            L11_2 = L10_2
            L12_2 = " coins added from Jenga code"
            L4_2 = L11_2 .. L12_2
            L11_2 = getText
            L12_2 = "TEXT_JENGACODE_CREDITS_AWARD"
            L13_2 = {}
            L14_2 = "$CREDITS"
            L15_2 = _G
            L15_2 = L15_2.tostring
            L16_2 = L10_2
            L15_2, L16_2 = L15_2(L16_2)
            L13_2[1] = L14_2
            L13_2[2] = L15_2
            L13_2[3] = L16_2
            L11_2 = L11_2(L12_2, L13_2)
            L7_2 = L11_2
            L11_2 = ui
            L11_2 = L11_2.Image
            L12_2 = L11_2
            L11_2 = L11_2.new
            L13_2 = {}
            L13_2.name = "title"
            L11_2 = L11_2(L12_2, L13_2)
            L8_2 = L11_2
            L12_2 = L8_2
            L11_2 = L8_2.setImage
            L13_2 = "COINS_S_3"
            L11_2(L12_2, L13_2)
            L11_2 = SettingsWrapper
            L12_2 = L11_2
            L11_2 = L11_2.storeToyUnlock
            L13_2 = L6_2
            L11_2(L12_2, L13_2)
        end
        else
          L11_2 = SettingsWrapper
          L12_2 = L11_2
          L11_2 = L11_2.isToyKeyUsed
          L13_2 = L6_2
          L11_2 = L11_2(L12_2, L13_2)
          if L11_2 then
            L4_2 = "Toy key already used on this device"
            L11_2 = getText
            L12_2 = "TEXT_TOYCODE_ALREADY_USED"
            L11_2 = L11_2(L12_2)
            L7_2 = L11_2
          else
            L4_2 = "Invalid jenga code entered"
          end
        end
      end
    elseif L3_2 == "invalid-key" then
      L4_2 = "Invalid jenga code entered"
    elseif L3_2 == "max-uses-exceeded" then
      L11_2 = getText
      L12_2 = "TEXT_TOYCODE_ALREADY_USED"
      L11_2 = L11_2(L12_2)
      L7_2 = L11_2
      L4_2 = "Code was used too many times"
    elseif L3_2 == "type-mismatch" then
      L11_2 = getText
      L12_2 = "TEXT_JENGACODE_ANOTHER_GAME"
      L11_2 = L11_2(L12_2)
      L7_2 = L11_2
      L4_2 = "Code is for another game"
    elseif L3_2 == "server-side-error" then
      L11_2 = getText
      L12_2 = "TEXT_TOYCODE_UKNOWN_ERROR"
      L11_2 = L11_2(L12_2)
      L7_2 = L11_2
      L4_2 = "Server side error occured when validating jenga code"
    elseif L3_2 == "param-missing" then
      L11_2 = getText
      L12_2 = "TEXT_TOYCODE_UKNOWN_ERROR"
      L11_2 = L11_2(L12_2)
      L7_2 = L11_2
      L4_2 = "Invalid request when validating jenga code (param-missing)"
    end
    if L2_2 then
      L11_2 = eventManager
      L12_2 = L11_2
      L11_2 = L11_2.notify
      L13_2 = {}
      L14_2 = events
      L14_2 = L14_2.EID_TOY_URL_CALLBACK_RECEIVED
      L13_2.id = L14_2
      L13_2.status = L2_2
      L13_2.title = L8_2
      L13_2.message = L7_2
      L13_2.flurryMessage = L4_2
      L11_2(L12_2, L13_2)
    end
    L11_2 = g_toyCodeURLs
    L11_2[A0_2] = nil
  end
end

nativecallback_jengaValidationResponse = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.getChild
    L3_2 = "telepodPage"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.close
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end

closeTelepodPage = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = isInGameMode
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L2_2 = L0_2
    L1_2 = L0_2.getChild
    L3_2 = "coinsPage"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      return
    end
    L2_2 = {}
    L3_2 = "ShopTutorial"
    L4_2 = "purchaseRedirectDialog"
    L5_2 = "purchaseCharacterPrompt"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L0_2
      L8_2 = L0_2.getChild
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L10_2 = L8_2
        L9_2 = L8_2.close
        L9_2(L10_2)
      end
    end
  end
end

closeShopPopups = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = "ShopTutorial"
  L2_2 = "purchaseCharacterPrompt"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = menuManager
  L2_2 = L1_2
  L1_2 = L1_2.getRoot
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L1_2
    L7_2 = L1_2.getChild
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = ui
  L2_2 = L2_2.CharacterMenuShop
  L2_2 = L2_2.isShown
  return L2_2
end

isAnyShopPromptOpen = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = Characters
  L1_2 = L1_2.list
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = Characters
    L1_2 = L1_2.list
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.def
    return L1_2
  end
  L1_2 = nil
  return L1_2
end

getCharacterDefinition = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = Characters
  L2_2 = L2_2.hasbroChars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L4_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

isGroupInCharactersList = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = "-1"
  L3_2 = nil
  L4_2 = {}
  L6_2 = A0_2
  L5_2 = A0_2.gmatch
  L7_2 = "(%w+)=([%w%-?]*)"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L4_2[L8_2] = L9_2
  end
  L5_2 = L4_2.status
  if L5_2 == "1" then
    L5_2 = L4_2.type
    if L5_2 == "HSBR2013TS" then
      L5_2 = isGroupInCharactersList
      L6_2 = L4_2.group
      L5_2 = L5_2(L6_2)
      if L5_2 or A1_2 then
        L2_2 = "1"
        L3_2 = L4_2.group
      end
  end
  else
    L5_2 = L4_2.status
    if L5_2 == "0" then
      L2_2 = "0"
      L3_2 = L4_2.msg
    end
  end
  L5_2 = L2_2
  L6_2 = L3_2
  return L5_2, L6_2
end

parseToyValidationResponseParameters = L0_1
L0_1 = {}
g_toyCodeURLs = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = releaseBuild
  if L1_2 == true then
    L1_2 = "http://147.45.197.213:7873"
    TOY_CODE_SERVER_URL = L1_2
  else
    L1_2 = "http://147.45.197.213:7873"
    TOY_CODE_SERVER_URL = L1_2
  end
  L1_2 = getUnlockRequestChecksum
  L2_2 = uniqueDeviceId
  L3_2 = A0_2
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = {}
  L3_2 = TOY_CODE_SERVER_URL
  L4_2 = "/drm/checkCode/"
  L5_2 = "?d="
  L6_2 = deviceModel
  L7_2 = "&key="
  L8_2 = A0_2
  L9_2 = "&types="
  L10_2 = "HSBR2013TS"
  L11_2 = "&uid="
  L12_2 = uniqueDeviceId
  L13_2 = "&p="
  L14_2 = "abj"
  L15_2 = "&h="
  L16_2 = L1_2
  L17_2 = "&v="
  L18_2 = gameVersionNumber
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L2_2[15] = L17_2
  L2_2[16] = L18_2
  L3_2 = _G
  L3_2 = L3_2.table
  L3_2 = L3_2.concat
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = g_toyCodeURLs
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L4_2 = g_toyCodeURLs
    L4_2[L3_2] = A0_2
    L4_2 = native_startURLThread
    L5_2 = L3_2
    L6_2 = nativecallback_telepodValidationResponse
    L4_2(L5_2, L6_2)
  end
  return L3_2
end

startValidateTelepodToyCodeServerURL = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = releaseBuild
  if L1_2 == true then
    L1_2 = "http://147.45.197.213:7873"
    TOY_CODE_SERVER_URL = L1_2
  else
    L1_2 = "http://147.45.197.213:7873"
    TOY_CODE_SERVER_URL = L1_2
  end
  L1_2 = getUnlockRequestChecksum
  L2_2 = uniqueDeviceId
  L3_2 = A0_2
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = {}
  L3_2 = TOY_CODE_SERVER_URL
  L4_2 = "/drm/checkKey/"
  L5_2 = "?d="
  L6_2 = deviceModel
  L7_2 = "&key="
  L8_2 = A0_2
  L9_2 = "&types="
  L10_2 = "HSBR2013TS"
  L11_2 = "&uid="
  L12_2 = uniqueDeviceId
  L13_2 = "&p="
  L14_2 = "abw"
  L15_2 = "&h="
  L16_2 = L1_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L3_2 = _G
  L3_2 = L3_2.table
  L3_2 = L3_2.concat
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = g_toyCodeURLs
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L4_2 = g_toyCodeURLs
    L4_2[L3_2] = A0_2
    L4_2 = native_startURLThread
    L5_2 = L3_2
    L6_2 = nativecallback_jengaValidationResponse
    L4_2(L5_2, L6_2)
  end
end

startCheckToyCodeServerURL = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = Characters
  L2_2 = L2_2.darkSideChars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

isCharacterDark = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  if L0_2 == "ios" then
    L0_2 = getEpisodeMetadata
    L1_2 = "dagobah_1"
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2.iapPurchaseId
    return L0_2
  else
    L0_2 = deviceModel
    if L0_2 == "android" then
      L0_2 = isHDVersion
      if L0_2 then
        L0_2 = getEpisodeMetadata
        L1_2 = "dagobah_1"
        L0_2 = L0_2(L1_2)
        L0_2 = L0_2.iapPurchaseIdAndroidHD
        return L0_2
      else
        L0_2 = getEpisodeMetadata
        L1_2 = "dagobah_1"
        L0_2 = L0_2(L1_2)
        L0_2 = L0_2.iapPurchaseIdAndroid
        return L0_2
      end
    end
  end
end

getIapMetadata = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = print
  L4_2 = "<iap> restore callback; pid: "
  L5_2 = _G
  L5_2 = L5_2.tostring
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = " status: "
  L7_2 = _G
  L7_2 = L7_2.tostring
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L8_2 = " error: "
  L9_2 = _G
  L9_2 = L9_2.tostring
  L10_2 = A2_2
  L9_2 = L9_2(L10_2)
  L10_2 = "\n"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L3_2(L4_2)
  L3_2 = getIapMetadata
  L3_2 = L3_2()
  L4_2 = false
  L5_2 = nil
  L6_2 = isEaglePurchaseSpinnerPageShowing
  L6_2 = L6_2()
  if L6_2 then
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_POP_FRAME
    L8_2.id = L9_2
    L8_2.target = "eaglePurchasePage"
    L6_2(L7_2, L8_2)
  else
    L4_2 = true
  end
  if A1_2 == 1 or A1_2 == 3 or A1_2 == 4 then
    if A0_2 == L3_2 then
      L6_2 = callBackSuccess
      if not L6_2 then
        L6_2 = print
        L7_2 = "<iap> restore item.."
        L8_2 = L3_2
        L9_2 = "\n"
        L7_2 = L7_2 .. L8_2 .. L9_2
        L6_2(L7_2)
        L6_2 = ui
        L6_2 = L6_2.Prompt
        L7_2 = L6_2
        L6_2 = L6_2.new
        L8_2 = {}
        L8_2.name = "purchaseRestoreSuccessfulPrompt"
        L9_2 = _G
        L9_2 = L9_2.res
        L9_2 = L9_2.getString
        L10_2 = "TEXTS_BASIC"
        L11_2 = "TEXT_DAGOBAH_RESTORE_SUCCESS"
        L9_2 = L9_2(L10_2, L11_2)
        L8_2.content = L9_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
        L6_2 = true
        callBackSuccess = L6_2
    end
    else
      L6_2 = print
      L7_2 = "<iap> attempted to restore unknown item id\n"
      L6_2(L7_2)
      L6_2 = callBackSuccess
      if not L6_2 then
        L6_2 = ui
        L6_2 = L6_2.Prompt
        L7_2 = L6_2
        L6_2 = L6_2.new
        L8_2 = {}
        L8_2.name = "restoreNotSuccessfulPrompt"
        L8_2.title = "Error 3"
        L9_2 = _G
        L9_2 = L9_2.res
        L9_2 = L9_2.getString
        L10_2 = "TEXTS_BASIC"
        L11_2 = "TEXT_DAGOBAH_RESTORE_FAILURE"
        L9_2 = L9_2(L10_2, L11_2)
        L8_2.content = L9_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      else
        L6_2 = nil
        callBackSuccess = L6_2
      end
    end
  else
    L6_2 = print
    L7_2 = "<iap> restore failed?\n"
    L6_2(L7_2)
    L6_2 = "Error restoring purchase"
    L7_2 = ui
    L7_2 = L7_2.Prompt
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "purchaseRestoreFailedPrompt"
    L9_2.title = L6_2
    L10_2 = _G
    L10_2 = L10_2.res
    L10_2 = L10_2.getString
    L11_2 = "TEXTS_BASIC"
    L12_2 = "TEXT_DAGOBAH_RESTORE_FAILURE"
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.content = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L5_2 = L7_2
  end
  if not L4_2 and L5_2 ~= nil then
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.queueEvent
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_PUSH_FRAME
    L8_2.id = L9_2
    L8_2.target = L5_2
    L6_2(L7_2, L8_2)
  end
end

iosPurchaseRestoreCallback = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = actions
  L2_2 = L2_2.myLevels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = _G
    L6_2 = L6_2.pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      if L10_2 == A0_2 then
        return L4_2
      end
    end
  end
end

getFolderNameForLevel = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L2_2 = L2_2[A0_2]
  L3_2 = nil
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = actions
  L5_2 = L5_2.myLevelFolders
  L5_2 = L5_2[L2_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 == A1_2 then
      L3_2 = L7_2
    end
  end
  L4_2 = calculateEpisodeScoreAndStars
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L7_2 = print
  L8_2 = "<isEpisodeThreeStarred> Episode: "
  L9_2 = A1_2
  L10_2 = " totalStars = "
  L11_2 = L5_2
  L12_2 = " maxStars = "
  L13_2 = L6_2
  L14_2 = "\n"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
  L7_2(L8_2)
  if L6_2 <= L5_2 then
    L7_2 = true
    return L7_2
  end
  L7_2 = false
  return L7_2
end

isEpisodeThreeStarred = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L2_2 = L2_2[A0_2]
  L3_2 = nil
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = actions
  L5_2 = L5_2.myLevelFolders
  L5_2 = L5_2[L2_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 == A1_2 then
      L3_2 = L7_2
    end
  end
  L4_2 = calculateEpisodeScoreAndStars
  L5_2 = A0_2
  L6_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L9_2 = print
  L10_2 = "<isEpisodeThreeStarred> Episode: "
  L11_2 = A1_2
  L12_2 = " totalStars = "
  L13_2 = L5_2
  L14_2 = " maxStars = "
  L15_2 = L6_2
  L16_2 = "\n"
  L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
  L9_2(L10_2)
  if L8_2 <= L7_2 then
    L9_2 = true
    return L9_2
  end
  L9_2 = false
  return L9_2
end

isEpisodeFalconed = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getLastOpenedEpisodeIndex
  L0_2 = L0_2(L1_2)
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getLastOpenedEpisodeType
  L1_2 = L1_2(L2_2)
  if not L0_2 or not L1_2 then
    L2_2 = "theme_menu_main_city"
    return L2_2
  end
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L2_2 = L2_2[L1_2]
  L3_2 = actions
  L3_2 = L3_2.myLevelFolders
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[L0_2]
  L4_2 = print
  L5_2 = "<getMainMenuTheme> episodeNameFolder = "
  L6_2 = L3_2
  L7_2 = "\n"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L4_2(L5_2)
  L4_2 = getEpisodeMetadata
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.mainMenuTheme
  return L4_2
end

getMainMenuTheme = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = g_showLevelOpenAnimation
  if L0_2 then
    L0_2 = nil
    return L0_2
  end
  L0_2 = _G
  L0_2 = L0_2.res
  L0_2 = L0_2.isAudioPlaying
  L1_2 = "mainThemeAndMenuMusic"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = getEpisodeSelectionLevelName
    L0_2 = L0_2()
    L1_2 = levelName
    if L0_2 == L1_2 then
      goto lbl_40
    end
    L0_2 = levelName
    if L0_2 == "Credits" then
      goto lbl_40
    end
  end
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.getPlayMainMusic
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = levelName
    if L0_2 ~= "MainMenu" then
      L0_2 = SettingsWrapper
      L1_2 = L0_2
      L0_2 = L0_2.isDarkSide
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = "music_darkside_1"
        return L0_2
      else
        L0_2 = "music_lightside_1"
        return L0_2
      end
  end
  else
    ::lbl_40::
    L0_2 = _G
    L0_2 = L0_2.res
    L0_2 = L0_2.isAudioPlaying
    L1_2 = "mainThemeAndMenuMusic"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = SettingsWrapper
      L1_2 = L0_2
      L0_2 = L0_2.getPlayMainMusic
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        goto lbl_67
      end
      L0_2 = levelName
      if L0_2 ~= "MainMenu" then
        L0_2 = levelName
        L1_2 = getEpisodeSelectionLevelName
        L1_2 = L1_2()
        if L0_2 ~= L1_2 then
          goto lbl_67
        end
      end
    end
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.setPlayMainMusic
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = "mainThemeAndMenuMusic"
    do return L0_2 end
    goto lbl_77
    ::lbl_67::
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.isDarkSide
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = "music_darkside_1"
      return L0_2
    else
      L0_2 = "music_lightside_1"
      return L0_2
    end
  end
  ::lbl_77::
end

getTitleTheme = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = actions
  L0_2 = L0_2.myLevels
  L1_2 = currentFolder
  L0_2 = L0_2[L1_2]
  L1_2 = currentLevel
  L1_2 = L1_2 + 1
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = getLevelMetadata
  L1_2 = actions
  L1_2 = L1_2.myLevels
  L2_2 = currentFolder
  L1_2 = L1_2[L2_2]
  L2_2 = currentLevel
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.type
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = getLevelMetadata
  L1_2 = actions
  L1_2 = L1_2.myLevels
  L2_2 = currentFolder
  L1_2 = L1_2[L2_2]
  L2_2 = currentLevel
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.type
  if L0_2 == "comic" then
    L0_2 = true
    return L0_2
  end
  L0_2 = false
  return L0_2
end

isNextLevelComic = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = actions
  L0_2 = L0_2.myLevels
  L1_2 = currentFolder
  L0_2 = L0_2[L1_2]
  L1_2 = currentLevel
  L1_2 = L1_2 + 1
  L0_2 = L0_2[L1_2]
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = getLevelMetadata
  L1_2 = actions
  L1_2 = L1_2.myLevels
  L2_2 = currentFolder
  L1_2 = L1_2[L2_2]
  L2_2 = currentLevel
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.unlocksOnTimer
  if not L0_2 then
    L0_2 = false
    return L0_2
  else
    L0_2 = isLevelLockedByTimer
    L1_2 = actions
    L1_2 = L1_2.myLevels
    L2_2 = currentFolder
    L1_2 = L1_2[L2_2]
    L2_2 = currentLevel
    L2_2 = L2_2 + 1
    L1_2 = L1_2[L2_2]
    return L0_2(L1_2)
  end
  L0_2 = false
  return L0_2
end

isNextLevelLockedByTimer = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "iapPurchaseId" then
    L2_2 = getEpisodeMetadata
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = deviceModel
    if L3_2 == "android" then
      L3_2 = customerString
      if L3_2 == "amazon" then
        L3_2 = isHDVersion
        if L3_2 then
          L3_2 = isPremium
          if L3_2 then
            L3_2 = L2_2.iapPurchaseIdAndroidAmazonHDPremium
            return L3_2
          else
            L3_2 = L2_2.iapPurchaseIdAndroidAmazonHDFree
            return L3_2
          end
        else
          L3_2 = isPremium
          if L3_2 then
            L3_2 = L2_2.iapPurchaseIdAndroidAmazonPremium
            return L3_2
          else
            L3_2 = L2_2.iapPurchaseIdAndroidAmazonFree
            return L3_2
          end
        end
      else
        L3_2 = isHDVersion
        if L3_2 then
          L3_2 = L2_2.iapPurchaseIdAndroidHD
          return L3_2
        else
          L3_2 = L2_2.iapPurchaseIdAndroid
          return L3_2
        end
      end
    else
      L3_2 = deviceModel
      if L3_2 == "ios" then
        L3_2 = L2_2.iapPurchaseId
        return L3_2
      end
    end
  end
end

getEpisodeMetadataWithParam = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = "LS_BUTTON_BG_1"
  return L0_2
end

getEmptyButtonSpriteName = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = isIOSFree
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2
    L0_2 = L0_2.getChild
    L2_2 = TimedGetFullVersionPage
    L2_2 = L2_2.getName
    L2_2 = L2_2()
    L0_2 = L0_2(L1_2, L2_2)
    L0_2 = L0_2 ~= nil
  end
  return L0_2
end

isTimedGetFullVersionPageShown = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = ui
  L0_2 = L0_2.ShopFrame
  L0_2 = L0_2.isShown
  return L0_2
end

isShopVisible = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = ui
  L0_2 = L0_2.TelepodPage
  L0_2 = L0_2.isShown
  return L0_2
end

isTelepodVisible = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = ui
  L0_2 = L0_2.CharacterMenuShop
  L0_2 = L0_2.isShown
  return L0_2
end

isCharacterMenuVisible = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2
  L0_2 = L0_2.getChild
  L2_2 = "AnimatedTutorial"
  L0_2 = L0_2(L1_2, L2_2)
  L0_2 = L0_2 ~= nil
  return L0_2
end

isTutorialShown = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = isIOSFree
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2
    L0_2 = L0_2.getChild
    L2_2 = GetFullVersionPage
    L2_2 = L2_2.getName
    L2_2 = L2_2()
    L0_2 = L0_2(L1_2, L2_2)
    L0_2 = L0_2 ~= nil
  end
  return L0_2
end

isGetFullVersionPageShown = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  L2_2 = blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.episodeScalingValues
  L4_2 = 1
  L5_2 = L2_2.scale
  if L5_2 then
    L4_2 = L2_2.scale
  end
  L5_2 = screenWidth
  L6_2 = physicsToScreenTransform
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if 1024 < L5_2 then
    L8_2 = L5_2 - 1024
    L9_2 = L8_2 / 2
    L6_2 = L6_2 - L9_2
    L5_2 = 1024
    if L6_2 < 0 then
      L6_2 = 0
    elseif L5_2 < L6_2 then
      L6_2 = L5_2
    end
  end
  L8_2 = L6_2 / L5_2
  L9_2 = calculateScaleFactor
  L10_2 = L8_2
  L11_2 = L3_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L9_2
  L11_2 = L8_2
  L12_2 = L4_2
  return L10_2, L11_2, L12_2
end

calculateEpisodeSelectionScale = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.leftMinimumLocation
  if A0_2 <= L2_2 then
    L2_2 = A1_2.leftMinimumScale
    scaleFactor = L2_2
  else
    L2_2 = A1_2.leftMaximumLocation
    if A0_2 < L2_2 then
      L2_2 = A1_2.leftMinimumScale
      L3_2 = A1_2.leftMinimumLocation
      L3_2 = A0_2 - L3_2
      L4_2 = A1_2.leftMaximumLocation
      L5_2 = A1_2.leftMinimumLocation
      L4_2 = L4_2 - L5_2
      L3_2 = L3_2 / L4_2
      L4_2 = A1_2.centerScale
      L5_2 = A1_2.leftMinimumScale
      L4_2 = L4_2 - L5_2
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      scaleFactor = L2_2
    else
      L2_2 = A1_2.rightMaximumLocation
      if A0_2 <= L2_2 then
        L2_2 = A1_2.centerScale
        scaleFactor = L2_2
      else
        L2_2 = A1_2.rightMinimumLocation
        if A0_2 <= L2_2 then
          L2_2 = A1_2.rightMinimumScale
          L3_2 = A1_2.rightMinimumLocation
          L3_2 = L3_2 - A0_2
          L4_2 = A1_2.rightMinimumLocation
          L5_2 = A1_2.rightMaximumLocation
          L4_2 = L4_2 - L5_2
          L3_2 = L3_2 / L4_2
          L4_2 = A1_2.centerScale
          L5_2 = A1_2.rightMinimumScale
          L4_2 = L4_2 - L5_2
          L3_2 = L3_2 * L4_2
          L2_2 = L2_2 + L3_2
          scaleFactor = L2_2
        else
          L2_2 = A1_2.rightMinimumScale
          scaleFactor = L2_2
        end
      end
    end
  end
  L2_2 = scaleFactor
  return L2_2
end

calculateScaleFactor = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = objects
  L1_2 = L1_2.joints
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.jointPosX
  if L2_2 then
    L2_2 = L1_2.jointPosY
    if L2_2 then
      L2_2 = addEventCall
      L3_2 = "addParticlesToJoint"
      L4_2 = {}
      L5_2 = L1_2.jointPosX
      L4_2.sx = L5_2
      L5_2 = L1_2.jointPosY
      L4_2.sy = L5_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

lua_addParticlesToJoint = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = A0_2.end1
  L1_2 = L1_2[L2_2]
  L2_2 = objects
  L2_2 = L2_2.world
  L3_2 = A0_2.end2
  L2_2 = L2_2[L3_2]
  L3_2 = vec2Rotate
  L4_2 = A0_2.x1
  L5_2 = A0_2.y1
  L6_2 = getAngle
  L7_2 = L1_2.name
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = vec2Rotate
  L6_2 = A0_2.x2
  L7_2 = A0_2.y2
  L8_2 = getAngle
  L9_2 = L2_2.name
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L1_2.x
  L7_2 = L7_2 + L3_2
  L8_2 = L2_2.x
  L8_2 = L8_2 + L5_2
  L9_2 = L1_2.y
  L9_2 = L9_2 + L4_2
  L10_2 = L2_2.y
  L10_2 = L10_2 + L6_2
  return L7_2, L8_2, L9_2, L10_2
end

getJointAnchorPositions = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.getChild
  L3_2 = "gameHud"
  return L1_2(L2_2, L3_2)
end

getGameHud = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.getChild
  L3_2 = "characterMenuShop"
  return L1_2(L2_2, L3_2)
end

getMenuShopButton = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = objects
  L1_2 = L1_2.joints
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    return
  end
  L2_2 = checkStillInWorld
  L3_2 = L1_2.end1
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = objects
    L2_2 = L2_2.world
    L3_2 = L1_2.end1
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.onJointRemoved
    if L3_2 then
      L3_2 = fireAction
      L4_2 = L2_2.onJointRemoved
      L5_2 = {}
      L6_2 = L2_2.name
      L5_2.name = L6_2
      L5_2.jointName = A0_2
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = checkStillInWorld
  L3_2 = L1_2.end2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = objects
    L2_2 = L2_2.world
    L3_2 = L1_2.end2
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.onJointRemoved
    if L3_2 then
      L3_2 = fireAction
      L4_2 = L2_2.onJointRemoved
      L5_2 = {}
      L6_2 = L2_2.name
      L5_2.name = L6_2
      L5_2.jointName = A0_2
      L3_2(L4_2, L5_2)
    end
  end
end

jointRemoved = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = assert
  L7_2 = A3_2 < A4_2
  L6_2(L7_2)
  L6_2 = {}
  g_autoReticle = L6_2
  L6_2 = g_autoReticle
  L6_2.x = A0_2
  L6_2 = g_autoReticle
  L6_2.y = A1_2
  L6_2 = g_autoReticle
  L6_2.sprite = A2_2
  L6_2 = g_autoReticle
  L6_2.minScale = A3_2
  L6_2 = g_autoReticle
  L6_2.maxScale = A4_2
  L6_2 = g_autoReticle
  L6_2.maxTime = A5_2
  L6_2 = g_autoReticle
  L6_2.timer = 0
end

addAutoReticle = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = g_autoReticle
  if L1_2 then
    L1_2 = g_autoReticle
    L2_2 = g_autoReticle
    L2_2 = L2_2.timer
    L3_2 = A0_2 or L3_2
    if not A0_2 then
      L3_2 = 0.2
    end
    L2_2 = L2_2 + L3_2
    L1_2.maxTime = L2_2
  end
end

hideAutoReticle = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = getAngle
  L4_2 = A0_2.name
  L3_2 = L3_2(L4_2)
  L4_2 = vec2Rotate
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2.x
  L6_2 = L6_2 + L4_2
  L7_2 = A0_2.y
  L7_2 = L7_2 + L5_2
  return L6_2, L7_2
end

offsetOfObject = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = vNormalize
  L4_2 = A0_2.x
  L4_2 = A1_2 - L4_2
  L5_2 = A0_2.y
  L5_2 = A2_2 - L5_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = getLinearVelocity
  L6_2 = A0_2.name
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = vNormalize
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2, L8_2 = L7_2(L8_2, L9_2)
  L9_2 = {}
  A0_2.tongueRedactAnimation = L9_2
  L9_2 = A0_2.tongueRedactAnimation
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.atan2
  L11_2 = L4_2
  L12_2 = L3_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.startAngle = L10_2
  L9_2 = A0_2.tongueRedactAnimation
  L10_2 = distance
  L11_2 = A0_2.x
  L12_2 = A0_2.y
  L13_2 = A1_2
  L14_2 = A2_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L9_2.startLength = L10_2
  L9_2 = A0_2.tongueRedactAnimation
  L10_2 = A0_2.tongueRedactAnimation
  L10_2 = L10_2.startAngle
  L9_2.endAngle = L10_2
  A0_2.tongueAnimationTime = 0
end

addTongueRedactionAnimation = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2.tongueOutAnimation = L3_2
  L3_2 = A0_2.tongueOutAnimation
  L3_2.targetX = A1_2
  L3_2 = A0_2.tongueOutAnimation
  L3_2.targetY = A2_2
  A0_2.tongueAnimationTime = 0
end

addTongueOutAnimation = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = raycastFromObject
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L4_2[1]
  return L4_2
end

raycastToFirstObject = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = getRayCastedObjects
  L5_2 = {}
  L6_2 = A0_2.x
  L5_2.x1 = L6_2
  L6_2 = A0_2.y
  L5_2.y1 = L6_2
  L5_2.x2 = A1_2
  L5_2.y2 = A2_2
  L5_2.includeSensors = true
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = {}
  L7_2 = L4_2[1]
  if L7_2 then
    L7_2 = 1
    L8_2 = #L4_2
    L9_2 = 6
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = objects
      L11_2 = L11_2.world
      L12_2 = L4_2[L10_2]
      L11_2 = L11_2[L12_2]
      L12_2 = L11_2.name
      if L12_2 ~= "killingBox" then
        L12_2 = blockTable
        L12_2 = L12_2.blocks
        L13_2 = L11_2.definition
        L12_2 = L12_2[L13_2]
        L13_2 = blockTable
        L13_2 = L13_2.materials
        L14_2 = L12_2.material
        L13_2 = L13_2[L14_2]
        L14_2 = L10_2 + 5
        L14_2 = L4_2[L14_2]
        L11_2.rayCastFraction = L14_2
        L14_2 = L10_2 + 1
        L14_2 = L4_2[L14_2]
        L11_2.rayCastContactX = L14_2
        L14_2 = L10_2 + 2
        L14_2 = L4_2[L14_2]
        L11_2.rayCastContactY = L14_2
        L14_2 = L10_2 + 3
        L14_2 = L4_2[L14_2]
        L11_2.rayCastNormalX = L14_2
        L14_2 = L10_2 + 4
        L14_2 = L4_2[L14_2]
        L11_2.rayCastNormalY = L14_2
        L14_2 = L11_2.name
        L15_2 = A0_2.name
        if L14_2 ~= L15_2 then
          L14_2 = L12_2.collision
          if L14_2 ~= false then
            L14_2 = L13_2.collision
            if L14_2 ~= false then
              L14_2 = L12_2.ignoreRayCasts
              if not L14_2 then
                L14_2 = L11_2.isSensor
                if L14_2 then
                  L14_2 = L12_2.includeInRaycast
                  if not L14_2 then
                    goto lbl_82
                  end
                end
                if A3_2 then
                  L14_2 = L12_2.material
                  L14_2 = A3_2[L14_2]
                  if L14_2 then
                    goto lbl_82
                  end
                end
                L14_2 = _G
                L14_2 = L14_2.table
                L14_2 = L14_2.insert
                L15_2 = L5_2
                L16_2 = L11_2
                L14_2(L15_2, L16_2)
            end
          end
        end
        else
          ::lbl_82::
          L14_2 = L11_2.isSensor
          if L14_2 then
            L14_2 = L12_2.collectableCoin
            if L14_2 then
              L14_2 = _G
              L14_2 = L14_2.table
              L14_2 = L14_2.insert
              L15_2 = L6_2
              L16_2 = L11_2
              L14_2(L15_2, L16_2)
            end
          end
        end
      end
    end
    L7_2 = L6_2[1]
    if L7_2 then
      L7_2 = _G
      L7_2 = L7_2.table
      L7_2 = L7_2.sort
      L8_2 = L6_2
      
      function L9_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.rayCastFraction
        L3_3 = A1_3.rayCastFraction
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      
      L7_2(L8_2, L9_2)
    end
    L7_2 = 1
    L8_2 = L5_2[1]
    if L8_2 then
      L8_2 = _G
      L8_2 = L8_2.table
      L8_2 = L8_2.sort
      L9_2 = L5_2
      
      function L10_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.rayCastFraction
        L3_3 = A1_3.rayCastFraction
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      
      L8_2(L9_2, L10_2)
      L8_2 = L5_2[1]
      L7_2 = L8_2.rayCastFraction
    end
    L8_2 = blockTable
    L8_2 = L8_2.blocks
    L9_2 = A0_2.definition
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.specialtyStopMaterials
    if not L8_2 then
      L8_2 = blockTable
      L8_2 = L8_2.blocks
      L9_2 = A0_2.definition
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.specialtyTeleCollideMaterials
    end
    
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = blockTable
      L1_3 = L1_3.materials
      L2_3 = A0_3.material
      L1_3 = L1_3[L2_3]
      L2_3 = blockTable
      L2_3 = L2_3.blocks
      L3_3 = A0_3.definition
      L2_3 = L2_3[L3_3]
      L3_3 = blockTable
      L3_3 = L3_3.blocks
      L4_3 = A0_2
      L4_3 = L4_3.definition
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.specialtyStopMaterials
      if L3_3 then
        L3_3 = L1_3.bouncesLaser
        if not L3_3 then
          L3_3 = L2_3.bouncesLaser
        end
      end
      return L3_3
    end
    
    if L8_2 then
      L7_2 = 1
      L10_2 = _G
      L10_2 = L10_2.ipairs
      L11_2 = L5_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = L14_2.material
        L15_2 = L8_2[L15_2]
        if not L15_2 then
          L15_2 = L9_2
          L16_2 = L14_2
          L15_2 = L15_2(L16_2)
          if not L15_2 then
            goto lbl_149
          end
        end
        L7_2 = L14_2.rayCastFraction
        do break end
        ::lbl_149::
      end
    end
    L10_2 = _G
    L10_2 = L10_2.pairs
    L11_2 = L6_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.rayCastFraction
      if L7_2 >= L15_2 then
        L15_2 = enterCollision
        L16_2 = ""
        L17_2 = L14_2.name
        L15_2(L16_2, L17_2)
      end
    end
  end
  return L5_2
end

raycastFromObject = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L4_2 = blockTable
  L4_2 = L4_2.blocks
  L5_2 = A0_2.definition
  L4_2 = L4_2[L5_2]
  if not (A2_2 <= 0.1) then
    L5_2 = L4_2.specialtyTeleTrailMaxBounces
    if not (A3_2 > L5_2) then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L5_2 = {}
  L6_2 = A0_2.x
  L7_2 = A1_2.x
  L7_2 = L7_2 * A2_2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = A0_2.y
  L7_2 = A1_2.y
  L7_2 = L7_2 * A2_2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = distance
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = L5_2.x
  L10_2 = L5_2.y
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = raycastFromObject
  L8_2 = A0_2
  L9_2 = L5_2.x
  L10_2 = L5_2.y
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = _G
  L8_2 = L8_2.ipairs
  L9_2 = L7_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = blockTable
    L13_2 = L13_2.materials
    L14_2 = L12_2.material
    L13_2 = L13_2[L14_2]
    L14_2 = blockTable
    L14_2 = L14_2.blocks
    L15_2 = L12_2.definition
    L14_2 = L14_2[L15_2]
    L15_2 = L4_2.specialtyTeleDamageObject
    if L15_2 then
      L15_2 = createObject
      L16_2 = blockTable
      L17_2 = L4_2.specialtyTeleDamageObject
      L18_2 = nil
      L19_2 = L12_2.x
      L20_2 = L12_2.y
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L15_2 = blockTable
    L15_2 = L15_2.blocks
    L16_2 = L12_2.definition
    L15_2 = L15_2[L16_2]
    L15_2 = L15_2.controllable
    if L15_2 then
      L15_2 = 0.5
      L16_2 = addEventCall
      L17_2 = "applyImpulseAction"
      L18_2 = {}
      L19_2 = L12_2.name
      L18_2.name = L19_2
      L19_2 = A1_2.x
      L19_2 = L19_2 * L15_2
      L18_2.forceX = L19_2
      L19_2 = A1_2.y
      L19_2 = L19_2 * L15_2
      L18_2.forceY = L19_2
      L18_2.offsetX = 0
      L18_2.offsetY = 0
      L16_2(L17_2, L18_2)
      L16_2 = birdCollision
      L17_2 = L12_2.name
      L18_2 = L12_2.name
      L19_2 = 0
      L20_2 = 0
      L21_2 = L12_2.x
      L22_2 = L12_2.y
      L23_2 = 0
      L24_2 = 0
      L25_2 = true
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    end
    L15_2 = L13_2.bouncesLaser
    if not L15_2 then
      L15_2 = L14_2.bouncesLaser
      if not L15_2 then
        goto lbl_201
      end
    end
    L15_2 = dotProduct
    L16_2 = L12_2.rayCastNormalX
    L17_2 = L12_2.rayCastNormalY
    L18_2 = A1_2.x
    L19_2 = A1_2.y
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = 2 * L15_2
    L16_2 = A1_2.x
    L17_2 = L12_2.rayCastNormalX
    L17_2 = L17_2 * L15_2
    L16_2 = L16_2 - L17_2
    L17_2 = A1_2.y
    L18_2 = L12_2.rayCastNormalY
    L18_2 = L18_2 * L15_2
    L17_2 = L17_2 - L18_2
    L18_2 = L12_2.rayCastContactX
    L19_2 = L12_2.rayCastContactY
    L5_2.y = L19_2
    L5_2.x = L18_2
    L18_2 = distance
    L19_2 = A0_2.x
    L20_2 = A0_2.y
    L21_2 = L5_2.x
    L22_2 = L5_2.y
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
    L6_2 = L18_2
    L18_2 = L4_2.specialtyTeleTrailCornerParticle
    if L18_2 then
      L18_2 = putParticles
      L19_2 = {}
      L20_2 = L5_2.x
      L19_2.x = L20_2
      L20_2 = L5_2.y
      L19_2.y = L20_2
      L20_2 = _G
      L20_2 = L20_2.math
      L20_2 = L20_2.atan2
      L21_2 = L12_2.rayCastNormalY
      L22_2 = L12_2.rayCastNormalX
      L20_2 = L20_2(L21_2, L22_2)
      L19_2.angle = L20_2
      L20_2 = L4_2.specialtyTeleTrailCornerParticle
      L19_2.particles = L20_2
      L19_2.useAmountInDefinition = true
      L18_2(L19_2)
    end
    L18_2 = L4_2.specialtyTeleTrailCornerObject
    if L18_2 then
      L18_2 = createObject
      L19_2 = blockTable
      L20_2 = L4_2.specialtyTeleTrailCornerObject
      L21_2 = nil
      L22_2 = L5_2.x
      L23_2 = L5_2.y
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
      n = L18_2
      L18_2 = objects
      L18_2 = L18_2.world
      L19_2 = n
      L18_2 = L18_2[L19_2]
      L19_2 = blockTable
      L19_2 = L19_2.blocks
      L20_2 = L18_2.definition
      L19_2 = L19_2[L20_2]
      L20_2 = objects
      L20_2 = L20_2.world
      L21_2 = n
      L20_2 = L20_2[L21_2]
      L21_2 = _G
      L21_2 = L21_2.math
      L21_2 = L21_2.min
      L22_2 = L6_2
      L23_2 = L19_2.trail
      L23_2 = L23_2.maxDistance
      L21_2 = L21_2(L22_2, L23_2)
      L20_2.trailDistance = L21_2
      L20_2 = setRotation
      L21_2 = n
      L22_2 = _G
      L22_2 = L22_2.math
      L22_2 = L22_2.atan2
      L23_2 = L5_2.y
      L24_2 = A0_2.y
      L23_2 = L23_2 - L24_2
      L24_2 = L5_2.x
      L25_2 = A0_2.x
      L24_2 = L24_2 - L25_2
      L22_2, L23_2, L24_2, L25_2 = L22_2(L23_2, L24_2)
      L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
    end
    L18_2 = raycastBeamFromObject
    L19_2 = {}
    L20_2 = L12_2.rayCastContactX
    L19_2.x = L20_2
    L20_2 = L12_2.rayCastContactY
    L19_2.y = L20_2
    L20_2 = A0_2.definition
    L19_2.definition = L20_2
    L20_2 = {}
    L20_2.x = L16_2
    L20_2.y = L17_2
    L21_2 = A2_2 - L6_2
    L22_2 = A3_2 + 1
    L18_2(L19_2, L20_2, L21_2, L22_2)
    do break end
    goto lbl_275
    ::lbl_201::
    L15_2 = L4_2.specialtyStopMaterials
    L16_2 = L14_2.material
    L15_2 = L15_2[L16_2]
    if L15_2 then
      L15_2 = L12_2.rayCastContactX
      L16_2 = L12_2.rayCastContactY
      L5_2.y = L16_2
      L5_2.x = L15_2
      L15_2 = L4_2.specialtyTeleTrailCornerParticle
      if L15_2 then
        L15_2 = putParticles
        L16_2 = {}
        L17_2 = L5_2.x
        L16_2.x = L17_2
        L17_2 = L5_2.y
        L16_2.y = L17_2
        L17_2 = _G
        L17_2 = L17_2.math
        L17_2 = L17_2.atan2
        L18_2 = L12_2.rayCastNormalY
        L19_2 = L12_2.rayCastNormalX
        L17_2 = L17_2(L18_2, L19_2)
        L16_2.angle = L17_2
        L17_2 = L4_2.specialtyTeleTrailCornerParticle
        L16_2.particles = L17_2
        L16_2.useAmountInDefinition = true
        L15_2(L16_2)
      end
      L15_2 = L4_2.specialtyTeleTrailCornerObject
      if L15_2 then
        L15_2 = createObject
        L16_2 = blockTable
        L17_2 = L4_2.specialtyTeleTrailCornerObject
        L18_2 = nil
        L19_2 = L5_2.x
        L20_2 = L5_2.y
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
        n = L15_2
        L15_2 = objects
        L15_2 = L15_2.world
        L16_2 = n
        L15_2 = L15_2[L16_2]
        L16_2 = blockTable
        L16_2 = L16_2.blocks
        L17_2 = L15_2.definition
        L16_2 = L16_2[L17_2]
        L17_2 = objects
        L17_2 = L17_2.world
        L18_2 = n
        L17_2 = L17_2[L18_2]
        L18_2 = _G
        L18_2 = L18_2.math
        L18_2 = L18_2.min
        L19_2 = L6_2
        L20_2 = L16_2.trail
        L20_2 = L20_2.maxDistance
        L18_2 = L18_2(L19_2, L20_2)
        L17_2.trailDistance = L18_2
        L17_2 = setRotation
        L18_2 = n
        L19_2 = _G
        L19_2 = L19_2.math
        L19_2 = L19_2.atan2
        L20_2 = L5_2.y
        L21_2 = A0_2.y
        L20_2 = L20_2 - L21_2
        L21_2 = L5_2.x
        L22_2 = A0_2.x
        L21_2 = L21_2 - L22_2
        L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L19_2(L20_2, L21_2)
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      end
      break
    end
    ::lbl_275::
  end
  L8_2 = distance
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = L5_2.x
  L12_2 = L5_2.y
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = 0.2
  L10_2 = 0.05
  L11_2 = L9_2
  while true do
    L12_2 = L8_2 - L10_2
    if not (L11_2 < L12_2) then
      break
    end
    L12_2 = A0_2.x
    L13_2 = A1_2.x
    L13_2 = L13_2 * L11_2
    L12_2 = L12_2 + L13_2
    L13_2 = A0_2.y
    L14_2 = A1_2.y
    L14_2 = L14_2 * L11_2
    L13_2 = L13_2 + L14_2
    L14_2 = createObject
    L15_2 = blockTable
    L16_2 = L4_2.specialtyTeleTrailObject
    L17_2 = nil
    L18_2 = L12_2
    L19_2 = L13_2
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    n = L14_2
    L14_2 = setRotation
    L15_2 = n
    L16_2 = _G
    L16_2 = L16_2.math
    L16_2 = L16_2.atan2
    L17_2 = A1_2.y
    L18_2 = A1_2.x
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L14_2 = L4_2.specialtyTeleTrailObjectStep
    L11_2 = L11_2 + L14_2
  end
end

raycastBeamFromObject = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = allowLocalization
  return L0_2
end

applyLocalization = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = physicsToScreenTransform
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = "PLANET_CIRCLE_WATER_1"
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = L3_2 * 0.5
  L4_2 = L4_2 * 0.5
  L3_2 = L5_2
  L5_2 = A0_2.radius
  L5_2 = L5_2 / 12.9
  L6_2 = worldScale
  L5_2 = L5_2 * L6_2
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.max
  L7_2 = A0_2.radius
  L8_2 = 30
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = 1 / L6_2
  L6_2 = L6_2 * 50
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.min
  L8_2 = A0_2.radius
  L9_2 = 50
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 / 1000
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.cos
  L9_2 = gameTimer
  L9_2 = L9_2 * L6_2
  L9_2 = L9_2 * 1.2
  L8_2 = L8_2(L9_2)
  L9_2 = worldScale
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 * L7_2
  L8_2 = L5_2 + L8_2
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.sin
  L10_2 = gameTimer
  L10_2 = L10_2 * L6_2
  L9_2 = L9_2(L10_2)
  L10_2 = worldScale
  L9_2 = L9_2 * L10_2
  L9_2 = L9_2 * L7_2
  L9_2 = L5_2 + L9_2
  L10_2 = setRenderState
  L11_2 = L1_2 / L8_2
  L12_2 = L2_2 / L9_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = 0
  L16_2 = L3_2
  L17_2 = L4_2
  L18_2 = 1
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.drawSprite
  L11_2 = "PLANET_CIRCLE_WATER_1"
  L12_2 = 0
  L13_2 = 0
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = setRenderState
  L11_2 = L1_2 / L8_2
  L12_2 = L2_2 / L9_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = gameTimer
  L15_2 = L15_2 * 0.02
  L16_2 = L3_2
  L17_2 = L4_2
  L18_2 = 1
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.drawSprite
  L11_2 = "PLANET_CIRCLE_WATER_1_EFFECT_1"
  L12_2 = 0
  L13_2 = 0
  L10_2(L11_2, L12_2, L13_2)
end

drawPointWater = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = A4_2 * A4_2
  L5_2 = L5_2 * A4_2
  L6_2 = A4_2 * A4_2
  L7_2 = -0.5 * L5_2
  L7_2 = L7_2 + L6_2
  L8_2 = 0.5 * A4_2
  L7_2 = L7_2 - L8_2
  L8_2 = 1.5 * L5_2
  L9_2 = 2.5 * L6_2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 1
  L9_2 = -1.5 * L5_2
  L10_2 = 2 * L6_2
  L9_2 = L9_2 + L10_2
  L10_2 = 0.5 * A4_2
  L9_2 = L9_2 + L10_2
  L10_2 = 0.5 * L5_2
  L11_2 = 0.5 * L6_2
  L10_2 = L10_2 - L11_2
  L11_2 = A0_2.x
  L11_2 = L11_2 * L7_2
  L12_2 = A1_2.x
  L12_2 = L12_2 * L8_2
  L11_2 = L11_2 + L12_2
  L12_2 = A2_2.x
  L12_2 = L12_2 * L9_2
  L11_2 = L11_2 + L12_2
  L12_2 = A3_2.x
  L12_2 = L12_2 * L10_2
  L11_2 = L11_2 + L12_2
  L12_2 = A0_2.y
  L12_2 = L12_2 * L7_2
  L13_2 = A1_2.y
  L13_2 = L13_2 * L8_2
  L12_2 = L12_2 + L13_2
  L13_2 = A2_2.y
  L13_2 = L13_2 * L9_2
  L12_2 = L12_2 + L13_2
  L13_2 = A3_2.y
  L13_2 = L13_2 * L10_2
  L12_2 = L12_2 + L13_2
  L13_2 = L11_2
  L14_2 = L12_2
  return L13_2, L14_2
end

interpolatedPosition = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = true
  L4_2 = Assets
  if L4_2 then
    L4_2 = Assets
    L4_2 = L4_2.getAssetFilename
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
    if not L2_2 then
      L4_2 = "assets_service/"
      L5_2 = A0_2
      L2_2 = L4_2 .. L5_2
    end
  else
    L4_2 = "assets_service/"
    L5_2 = A0_2
    L2_2 = L4_2 .. L5_2
  end
  if not L2_2 then
    return
  end
  if A1_2 then
    L4_2 = native_loadTextFileToLuaTable
    L5_2 = L2_2
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  else
    L4_2 = loadTextFileToString
    L5_2 = L2_2
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  end
end

loadCloudAssetFile = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.ipairs
  L2_2 = getEpisodeMetadata
  L3_2 = currentFolder
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.alternativeRouteLastLevelNumber
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = currentLevel
    if L5_2 == L6_2 then
      L0_2 = L4_2
    end
  end
  return L0_2
end

getAlternativeLevelSetIndex = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = currentLevel
  L2_2 = getEpisodeMetadata
  L3_2 = currentFolder
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.alternativeRouteLastLevelNumber
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2 == L2_2
  return L1_2
end

isAlternativeRouteEnd = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = getEpisodeMetadata
  L2_2 = currentFolder
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.alternativeRouteEndLevelNumber
  L1_2 = L1_2[A0_2]
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.wasLevelStartedBefore
  L4_2 = actions
  L4_2 = L4_2.myLevels
  L5_2 = currentFolder
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2[L1_2]
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.isLevelBoughtOpen
    L4_2 = actions
    L4_2 = L4_2.myLevels
    L5_2 = currentFolder
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2[L1_2]
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      goto lbl_48
    end
  end
  L2_2 = setCurrentLevel
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = setNextLevel
  L3_2 = "levels/"
  L4_2 = currentFolder
  L5_2 = "/"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = actions
  L4_2 = L4_2.myLevels
  L5_2 = currentFolder
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2[L1_2]
  L2_2(L3_2, L4_2)
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_CAPTURE_SCREEN
  L4_2.id = L5_2
  L2_2(L3_2, L4_2)
  goto lbl_57
  ::lbl_48::
  L2_2 = nil
  returnLevelFolder = L2_2
  L2_2 = actions
  L2_2 = L2_2.loadLevelSelectionMenu
  L2_2 = L2_2.action
  L2_2()
  g_showLevelOpenAnimation = L1_2
  L2_2 = true
  g_showLevelOpenAnimationFromAlternativeRoute = L2_2
  ::lbl_57::
end

gotoNextLevelFromAlternativeRoute = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = getEpisodeMetadata
  L2_2 = currentFolder
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.levelsAvailableInFree
  if L1_2 then
    L2_2 = currentLevel
    if L1_2 <= L2_2 then
      L2_2 = g_isRegistered
      if not L2_2 then
        L2_2 = eventManager
        L3_2 = L2_2
        L2_2 = L2_2.notify
        L4_2 = {}
        L5_2 = events
        L5_2 = L5_2.EID_SHOW_REGISTRATION_DIALOG
        L4_2.id = L5_2
        L2_2(L3_2, L4_2)
        return
      end
    end
  end
  L2_2 = objects
  L2_2 = L2_2.previousLevel
  if L2_2 == nil then
    L2_2 = returnLevelFolder
    if L2_2 then
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_CAPTURE_SCREEN
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
      L2_2 = setNextLevel
      L3_2 = returnLevelFolder
      L4_2 = returnLevelName
      L2_2(L3_2, L4_2)
      L2_2 = setCurrentFolder
      L3_2 = returnLevelFolder
      L2_2(L3_2)
      L2_2 = setCurrentLevel
      L3_2 = getLevelNumberForLevelName
      L4_2 = returnLevelName
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = nil
      returnLevelFolder = L2_2
      L2_2 = nil
      returnLevelName = L2_2
    else
      L2_2 = actions
      L2_2 = L2_2.myLevels
      L3_2 = currentFolder
      L2_2 = L2_2[L3_2]
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.wasLevelStartedBefore
      L5_2 = getNextLevelName
      L6_2 = currentLevel
      L6_2 = L6_2 + 1
      L6_2 = L2_2[L6_2]
      L5_2, L6_2 = L5_2(L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      if not L3_2 then
        L3_2 = currentLevel
        L3_2 = L3_2 + 1
        L3_2 = L2_2[L3_2]
        if L3_2 and not A0_2 then
          L3_2 = SettingsWrapper
          L4_2 = L3_2
          L3_2 = L3_2.isLevelBoughtOpen
          L5_2 = getNextLevelName
          L6_2 = currentLevel
          L6_2 = L6_2 + 1
          L6_2 = L2_2[L6_2]
          L5_2, L6_2 = L5_2(L6_2)
          L3_2 = L3_2(L4_2, L5_2, L6_2)
          if not L3_2 then
            goto lbl_97
          end
        end
      end
      if A0_2 then
        L3_2 = true
        gotoLevelFromComic = L3_2
      end
      L3_2 = eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_CAPTURE_SCREEN
      L5_2.id = L6_2
      L3_2(L4_2, L5_2)
      L3_2 = setNextLevel
      L3_2()
      goto lbl_112
      ::lbl_97::
      L3_2 = nil
      returnLevelFolder = L3_2
      L3_2 = actions
      L3_2 = L3_2.loadLevelSelectionMenu
      L3_2 = L3_2.action
      L3_2()
      L3_2 = currentLevel
      L3_2 = L3_2 + 1
      g_showLevelOpenAnimation = L3_2
      L3_2 = false
      g_showLevelOpenAnimationFromAlternativeRoute = L3_2
    end
  else
    L2_2 = startWarpTransition
    L3_2 = true
    L2_2(L3_2)
  end
  ::lbl_112::
end

gotoNextLevel = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = worldScale
  L2_2 = physicsToScreenTransform
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = setRenderState
  L5_2 = L2_2 / L1_2
  L6_2 = L3_2 / L1_2
  L7_2 = L1_2
  L8_2 = L1_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = physicsToWorldTransform
  L5_2 = A0_2.width
  L5_2 = L5_2 * 0.5
  L6_2 = A0_2.height
  L6_2 = L6_2 * 0.5
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = drawLine2D
  L7_2 = -L4_2
  L8_2 = -L5_2
  L9_2 = -L4_2
  L10_2 = L5_2
  L11_2 = 0.75
  L12_2 = 255
  L13_2 = 255
  L14_2 = 255
  L15_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = drawLine2D
  L7_2 = -L4_2
  L8_2 = L5_2
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = 0.75
  L12_2 = 255
  L13_2 = 255
  L14_2 = 255
  L15_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = drawLine2D
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L4_2
  L10_2 = -L5_2
  L11_2 = 0.75
  L12_2 = 255
  L13_2 = 255
  L14_2 = 255
  L15_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = drawLine2D
  L7_2 = L4_2
  L8_2 = -L5_2
  L9_2 = -L4_2
  L10_2 = -L5_2
  L11_2 = 0.75
  L12_2 = 255
  L13_2 = 255
  L14_2 = 255
  L15_2 = 255
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

drawBoxSensorBounds = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ui
  L2_2 = L2_2.BGBox
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = "LIGHT"
  L4_2 = SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.isDarkSide
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L3_2 = "SITH"
  end
  L4_2 = {}
  L5_2 = "BOX_TOP_LEFT_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.topLeft = L5_2
  L5_2 = "BOX_TOP_MIDDLE_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.topMiddle = L5_2
  L5_2 = "BOX_TOP_RIGHT_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.topRight = L5_2
  L5_2 = "BOX_MIDDLE_LEFT_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.left = L5_2
  L5_2 = "BOX_CENTER_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.center = L5_2
  L5_2 = "BOX_MIDDLE_RIGHT_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.right = L5_2
  L5_2 = "BOX_BOTTOM_LEFT_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.bottomLeft = L5_2
  L5_2 = "BOX_BOTTOM_MIDDLE_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.bottomMiddle = L5_2
  L5_2 = "BOX_BOTTOM_RIGHT_"
  L6_2 = A1_2
  L7_2 = "_"
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2.bottomRight = L5_2
  L2_2.components = L4_2
  return L2_2
end

createBgBoxForSide = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.atan2
  L5_2 = A1_2.y
  L6_2 = A0_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = A1_2.x
  L7_2 = A0_2.x
  L6_2 = L6_2 - L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = blockTable
  L5_2 = L5_2.blocks
  L5_2 = L5_2[A2_2]
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getSpriteBounds
  L7_2 = L5_2.sprite
  L6_2, L7_2 = L6_2(L7_2)
  L8_2 = physicsToWorld
  L8_2 = A3_2 * L8_2
  L8_2 = L8_2 / L6_2
  L9_2 = createObject
  L10_2 = blockTable
  L11_2 = A2_2
  L12_2 = nil
  L13_2 = A0_2.x
  L14_2 = A0_2.y
  L15_2 = L5_2.radius
  L16_2 = physicsToWorld
  L16_2 = A3_2 * L16_2
  L17_2 = 10
  L18_2 = L8_2
  L19_2 = L8_2
  L20_2 = L5_2.vertices
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = setObjectParameter
  L11_2 = L9_2
  L12_2 = 21
  L13_2 = 6
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[L9_2]
  L11_2 = physicsToWorld
  L11_2 = A3_2 * L11_2
  L10_2.width = L11_2
  L10_2.height = 10
  L11_2 = getObjectDefinition
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2.animations
  if L11_2 ~= nil then
    L11_2 = animatedObjects
    L11_2[L9_2] = L10_2
    L11_2 = setObjectParameter
    L12_2 = L9_2
    L13_2 = 13
    L14_2 = 1
    L11_2(L12_2, L13_2, L14_2)
  end
  L11_2 = print
  L12_2 = "Zapping "
  L13_2 = A1_2.name
  L14_2 = " from distance "
  L15_2 = A3_2
  L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
  L11_2(L12_2)
  L10_2.angle = L4_2
  L10_2.scaleX = L8_2
  L10_2.scaleY = L8_2
  L11_2 = setRotation
  L12_2 = L10_2.name
  L13_2 = L10_2.angle
  L11_2(L12_2, L13_2)
end

createR2D2Zap = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = getUIScale
  L1_2 = L1_2()
  L2_2 = putParticles
  L3_2 = {}
  L4_2 = A0_2.x
  L3_2.worldX = L4_2
  L4_2 = A0_2.y
  L3_2.worldY = L4_2
  L4_2 = A0_2.particles
  L3_2.particles = L4_2
  L4_2 = A0_2.amount
  L3_2.amount = L4_2
  L3_2.layer = 3
  L4_2 = A0_2.minScaleBegin
  if not L4_2 then
    L4_2 = particleTable
    L4_2 = L4_2.particles
    L5_2 = A0_2.particles
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.minScaleBegin
  end
  L4_2 = L1_2 * L4_2
  L3_2.minScaleBegin = L4_2
  L4_2 = A0_2.maxScaleBegin
  if not L4_2 then
    L4_2 = particleTable
    L4_2 = L4_2.particles
    L5_2 = A0_2.particles
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.maxScaleBegin
  end
  L4_2 = L1_2 * L4_2
  L3_2.maxScaleBegin = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.minScaleEnd
  L4_2 = L1_2 * L4_2
  L3_2.minScaleEnd = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.maxScaleEnd
  L4_2 = L1_2 * L4_2
  L3_2.maxScaleEnd = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.minVel
  L4_2 = L1_2 * L4_2
  L3_2.minVel = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.maxVel
  L4_2 = L1_2 * L4_2
  L3_2.maxVel = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.gravityX
  L4_2 = L1_2 * L4_2
  L3_2.gravityX = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.gravityY
  L4_2 = L1_2 * L4_2
  L3_2.gravityY = L4_2
  L4_2 = A0_2.minAngleEmitter
  L3_2.minAngleEmitter = L4_2
  L4_2 = A0_2.maxAngleEmitter
  L3_2.maxAngleEmitter = L4_2
  L2_2(L3_2)
end

putMenuParticles = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = putParticles
  L2_2 = {}
  L3_2 = A0_2.x
  L2_2.worldX = L3_2
  L3_2 = A0_2.y
  L2_2.worldY = L3_2
  L3_2 = A0_2.particles
  L2_2.particles = L3_2
  L3_2 = A0_2.amount
  L2_2.amount = L3_2
  L2_2.layer = 3
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.minScaleBegin
  L2_2.minScaleBegin = L3_2
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.maxScaleBegin
  L2_2.maxScaleBegin = L3_2
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.minScaleEnd
  L2_2.minScaleEnd = L3_2
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.maxScaleEnd
  L2_2.maxScaleEnd = L3_2
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.minVel
  L2_2.minVel = L3_2
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.maxVel
  L2_2.maxVel = L3_2
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.gravityX
  L2_2.gravityX = L3_2
  L3_2 = particleTable
  L3_2 = L3_2.particles
  L4_2 = A0_2.particles
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.gravityY
  L2_2.gravityY = L3_2
  L3_2 = A0_2.minAngleEmitter
  L2_2.minAngleEmitter = L3_2
  L3_2 = A0_2.maxAngleEmitter
  L2_2.maxAngleEmitter = L3_2
  L1_2(L2_2)
end

putMenuParticlesUnscaled = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = getUIScale
  L1_2 = L1_2()
  L2_2 = putParticles
  L3_2 = {}
  L4_2 = A0_2.x
  L3_2.worldX = L4_2
  L4_2 = A0_2.y
  L3_2.worldY = L4_2
  L4_2 = A0_2.particles
  L3_2.particles = L4_2
  L4_2 = A0_2.amount
  L3_2.amount = L4_2
  L3_2.layer = 4
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.minScaleBegin
  L4_2 = L1_2 * L4_2
  L3_2.minScaleBegin = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.maxScaleBegin
  L4_2 = L1_2 * L4_2
  L3_2.maxScaleBegin = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.minScaleEnd
  L4_2 = L1_2 * L4_2
  L3_2.minScaleEnd = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.maxScaleEnd
  L4_2 = L1_2 * L4_2
  L3_2.maxScaleEnd = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.minVel
  L4_2 = L1_2 * L4_2
  L3_2.minVel = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.maxVel
  L4_2 = L1_2 * L4_2
  L3_2.maxVel = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.gravityX
  L4_2 = L1_2 * L4_2
  L3_2.gravityX = L4_2
  L4_2 = particleTable
  L4_2 = L4_2.particles
  L5_2 = A0_2.particles
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.gravityY
  L4_2 = L1_2 * L4_2
  L3_2.gravityY = L4_2
  L2_2(L3_2)
end

putNotificationParticles = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = isPausePageVisible
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = setPhysicsEnabled
    L2_2 = A0_2
    L1_2(L2_2)
  end
end

checkSetPhysicsState = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = true
  g_levelEndCameraActive = L0_2
end

activateLevelEndCamera = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 1
  L4_2 = A0_2.visible
  if L4_2 then
    L4_2 = A0_2.parent
    L4_2 = L4_2.clickStarted
    if not L4_2 then
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.sin
      L5_2 = A2_2 * 5
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2 * 0.05
      L4_2 = 1 + L4_2
      L5_2 = getUIScale
      L5_2 = L5_2()
      L3_2 = L4_2 * L5_2
      L4_2 = A0_2.parent
      L5_2 = L4_2
      L4_2 = L4_2.setScale
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L4_2 = A0_2.angle
      L4_2 = L4_2 + A1_2
      A0_2.angle = L4_2
      L4_2 = A0_2.parent
      L5_2 = L4_2
      L4_2 = L4_2.getChild
      L6_2 = "claimBadge"
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = _G
      L5_2 = L5_2.res
      L5_2 = L5_2.getSpriteBounds
      L6_2 = "BTN_SHOP"
      L5_2, L6_2 = L5_2(L6_2)
      if L4_2 then
        L7_2 = L5_2 * 0.3
        L7_2 = L7_2 * L3_2
        L4_2.x = L7_2
        L7_2 = -L6_2
        L7_2 = L7_2 * 0.4
        L7_2 = L7_2 * L3_2
        L4_2.y = L7_2
        L8_2 = L4_2
        L7_2 = L4_2.setScale
        L9_2 = L3_2
        L7_2(L8_2, L9_2)
        L8_2 = L4_2
        L7_2 = L4_2.layout
        L7_2(L8_2)
      end
  end
  else
    L4_2 = A0_2.visible
    if L4_2 then
      L4_2 = A0_2.parent
      L4_2 = L4_2.clickStarted
      if L4_2 then
        L4_2 = A0_2.parent
        L3_2 = L4_2.scaleX
        L4_2 = A0_2.parent
        L5_2 = L4_2
        L4_2 = L4_2.getChild
        L6_2 = "claimBadge"
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = _G
        L5_2 = L5_2.res
        L5_2 = L5_2.getSpriteBounds
        L6_2 = "BTN_SHOP"
        L5_2, L6_2 = L5_2(L6_2)
        if L4_2 then
          L7_2 = L5_2 * 0.3
          L7_2 = L7_2 * L3_2
          L4_2.x = L7_2
          L7_2 = -L6_2
          L7_2 = L7_2 * 0.4
          L7_2 = L7_2 * L3_2
          L4_2.y = L7_2
          L8_2 = L4_2
          L7_2 = L4_2.setScale
          L9_2 = L3_2
          L7_2(L8_2, L9_2)
          L8_2 = L4_2
          L7_2 = L4_2.layout
          L7_2(L8_2)
        end
      end
    end
  end
  L4_2 = A0_2.parent
  L3_2 = L4_2.scaleX
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = "BTN_SHOP"
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = A0_2.parent
  L7_2 = L6_2
  L6_2 = L6_2.getChild
  L8_2 = "newShopBadge"
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = -L4_2
    L7_2 = L7_2 * 0.3
    L7_2 = L7_2 * L3_2
    L6_2.x = L7_2
    L7_2 = -L5_2
    L7_2 = L7_2 * 0.4
    L7_2 = L7_2 * L3_2
    L6_2.y = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.setScale
    L9_2 = 0.3 * L3_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.layout
    L7_2(L8_2)
    L7_2 = isNewSpecialsInShop
    L7_2 = L7_2()
    L6_2.visible = L7_2
  end
end

shopGlowUpdater = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = ui
  L0_2 = L0_2.CharacterMenuShop
  L0_2 = L0_2.isShown
  L0_2 = ui
  L0_2 = L0_2.CharacterPurchasePopup
  L0_2 = L0_2.isShown
  L0_2 = not L0_2 and L0_2
  return L0_2
end

isShopClosed = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = getShopData
  L0_2 = L0_2()
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getOpenSpecialsVersion
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L2_2 = ui
    L2_2 = L2_2.ShopFrame
    L2_2 = L2_2.packageData
    if L2_2 then
      L2_2 = ui
      L2_2 = L2_2.ShopFrame
      L2_2 = L2_2.packageData
      L2_2 = L2_2.data
      if L2_2 then
        L2_2 = SettingsWrapper
        L3_2 = L2_2
        L2_2 = L2_2.setOpenSpecialsVersion
        L4_2 = ui
        L4_2 = L4_2.ShopFrame
        L4_2 = L4_2.packageData
        L4_2 = L4_2.data
        L4_2 = L4_2.specialsVersion
        L2_2(L3_2, L4_2)
        L2_2 = SettingsWrapper
        L3_2 = L2_2
        L2_2 = L2_2.getOpenSpecialsVersion
        L2_2 = L2_2(L3_2)
        L1_2 = L2_2
      end
    end
  end
  L2_2 = L0_2 ~= nil
  return L2_2
end

isNewSpecialsInShop = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = isPCVersion
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = SettingsWrapper
    L1_2 = L0_2
    L0_2 = L0_2.isNewCreditsGained
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = getClaimableRewards
      L0_2 = L0_2()
      L0_2 = 0 < L0_2
    end
    return L0_2
  end
  L0_2 = false
  return L0_2
end

shouldShowShopGlow = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = getNextBird
  L1_2 = currentBirdIndex
  L1_2 = L1_2 + 1
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2 ~= nil
  return L0_2
end

isBirdsLeft = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = {}
    L8_2 = _G
    L8_2 = L8_2.pairs
    L9_2 = L6_2.params
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L7_2[L11_2] = L12_2
    end
    L8_2 = L7_2.name
    if not L8_2 then
      L7_2.name = A1_2
    end
    L8_2 = addEventCall
    L9_2 = L6_2.name
    L10_2 = L7_2
    L11_2 = L6_2.delay
    L8_2(L9_2, L10_2, L11_2)
  end
end

handleActionTable = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = getLevelMetadata
  L1_2 = levelName
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.type
  L0_2 = L0_2 == "comic"
  return L0_2
end

isInComicMode = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = isInGameMode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = menuManager
    if L0_2 ~= nil then
      L0_2 = menuManager
      L1_2 = L0_2
      L0_2 = L0_2.getRoot
      L0_2 = L0_2(L1_2)
      if L0_2 ~= nil then
        L0_2 = menuManager
        L1_2 = L0_2
        L0_2 = L0_2.getRoot
        L0_2 = L0_2(L1_2)
        L1_2 = L0_2
        L0_2 = L0_2.getChild
        L2_2 = "pausePage"
        L0_2 = L0_2(L1_2, L2_2)
        L1_2 = ui
        L1_2 = L1_2.RovioIDSignOutPage
        if L1_2 then
          L1_2 = ui
          L1_2 = L1_2.RovioIDSignOutPage
          L1_2 = L1_2.isShown
          if L1_2 then
            goto lbl_71
          end
        end
        L1_2 = ui
        L1_2 = L1_2.RovioIDConflictPage
        if L1_2 then
          L1_2 = ui
          L1_2 = L1_2.RovioIDConflictPage
          L1_2 = L1_2.isShown
          if L1_2 then
            goto lbl_71
          end
        end
        L1_2 = ui
        L1_2 = L1_2.RovioIDMergeWarningPage
        if L1_2 then
          L1_2 = ui
          L1_2 = L1_2.RovioIDMergeWarningPage
          L1_2 = L1_2.isShown
          if L1_2 then
            goto lbl_71
          end
        end
        L1_2 = ui
        L1_2 = L1_2.RovioIDMergePage
        if L1_2 then
          L1_2 = ui
          L1_2 = L1_2.RovioIDMergePage
          L1_2 = L1_2.isShown
          if L1_2 then
            goto lbl_71
          end
        end
        L1_2 = ui
        L1_2 = L1_2.RovioIDProfilePage
        if L1_2 then
          L1_2 = ui
          L1_2 = L1_2.RovioIDProfilePage
          L1_2 = L1_2.isShown
          if L1_2 then
            goto lbl_71
          end
        end
        L1_2 = ui
        L1_2 = L1_2.RovioIDSignedOutPage
        if L1_2 then
          L1_2 = ui
          L1_2 = L1_2.RovioIDSignedOutPage
          L1_2 = L1_2.isShown
        end
        ::lbl_71::
        L2_2 = L0_2 ~= nil
        L3_2 = g_showingChannelOrID
        if not L3_2 then
          L3_2 = g_showingSoundPopup
          if not L3_2 then
            L3_2 = ui
            L3_2 = L3_2.ShopFrame
            L3_2 = L3_2.isShown
            if not L3_2 then
              L3_2 = g_coinPageOpen
              if not L3_2 then
                L3_2 = g_loginInProgress
                if not L3_2 then
                  L3_2 = g_tutorialShowing
                end
              end
            end
          end
        end
        L4_2 = L2_2 or L4_2
        L4_2 = not L1_2 and L2_2 and L4_2
        return L4_2
      end
    end
  end
  L0_2 = false
  return L0_2
end

isRovioNewsShowAllowed = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = haveInGameAds
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = isInGameMode
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = isPausePageVisible
      L0_2 = L0_2()
      L0_2 = isTutorialShown
      L0_2 = L0_2()
      L0_2 = SettingsWrapper
      L1_2 = L0_2
      L0_2 = L0_2.hasAnyLevelBeenCompleted
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = g_tutorialShowing
        L0_2 = isShopVisible
        L0_2 = L0_2()
        L0_2 = isTelepodVisible
        L0_2 = L0_2()
        L0_2 = isCharacterMenuVisible
        L0_2 = L0_2()
        L0_2 = not L0_2 and L0_2
      end
    end
  end
  return L0_2
end

canShowAd = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = applyLocalization
  L2_2 = L2_2()
  if not L2_2 or not A0_2 then
    L2_2 = print
    L3_2 = "Localization not available."
    L2_2(L3_2)
    A0_2 = "en_EN"
  end
  L2_2 = g_currentLocale
  if L2_2 == nil then
    L2_2 = print
    L3_2 = "Initial locale: "
    L4_2 = _G
    L4_2 = L4_2.tostring
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.loadLocale
    L3_2 = "TEXTS_BASIC"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.useLocale
    L3_2 = A0_2
    L2_2(L3_2)
    g_currentLocale = A0_2
  else
    L2_2 = g_currentLocale
    if A0_2 ~= L2_2 then
      L2_2 = print
      L3_2 = "Changing locale to "
      L4_2 = _G
      L4_2 = L4_2.tostring
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = isInGameMode
      L2_2 = L2_2()
      if not L2_2 or A1_2 then
        L2_2 = releaseLocalizedFonts
        L2_2()
        L2_2 = _G
        L2_2 = L2_2.res
        L2_2 = L2_2.loadLocale
        L3_2 = "TEXTS_BASIC"
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
        L2_2 = _G
        L2_2 = L2_2.res
        L2_2 = L2_2.useLocale
        L3_2 = A0_2
        L2_2(L3_2)
        g_currentLocale = A0_2
        L2_2 = loadLocalizedFonts
        L2_2()
        if not A1_2 then
          L2_2 = menuManager
          L3_2 = L2_2
          L2_2 = L2_2.refreshCurrentRoot
          L2_2(L3_2)
        end
        L2_2 = nil
        queuedLocale = L2_2
      else
        L2_2 = print
        L3_2 = "In game mode, locale change to queue"
        L2_2(L3_2)
        queuedLocale = A0_2
      end
    end
  end
end

setLocale = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = false
  allowResetToBirdCamera = L1_2
  L1_2 = setCameraTarget
  L2_2 = A0_2
  L1_2(L2_2)
end

keepAsCameraTarget = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = g_defaultCameraResetTime
  end
  cameraResetTimer = L1_2
  L1_2 = 12
  g_scoreAddedTime = L1_2
  L1_2 = -6
  timeWithoutLevelGoals = L1_2
end

keepLevelAlive = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = actions
  L2_2 = L2_2.myLevelFolders
  L3_2 = actions
  L3_2 = L3_2.episodeTypeTable
  L4_2 = A0_2.episodeType
  L3_2 = L3_2[L4_2]
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.startNumber
  L2_2 = L2_2[L3_2]
  if A1_2 == "DARK" then
    L3_2 = _G
    L3_2 = L3_2.string
    L3_2 = L3_2.gsub
    L4_2 = L2_2
    L5_2 = "light"
    L6_2 = "dark"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = getOtherSideStarCounts
  L4_2 = L2_2
  L5_2 = A1_2 == "DARK"
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L4_2 - L3_2
  L6_2 = getShopData
  L6_2 = L6_2()
  L6_2 = L6_2.starToCredits
  if not L6_2 then
    L6_2 = g_starToCredits
  end
  L5_2 = L5_2 * L6_2
  return L5_2
end

getPriceForHalfEpisode = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = actions
  L1_2 = L1_2.myLevelFolders
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L3_2 = A0_2.episodeType
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.startNumber
  L2_2 = L2_2 - 2
  L1_2 = L1_2[L2_2]
  L2_2 = actions
  L2_2 = L2_2.myLevelFolders
  L3_2 = actions
  L3_2 = L3_2.episodeTypeTable
  L4_2 = A0_2.episodeType
  L3_2 = L3_2[L4_2]
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.startNumber
  L3_2 = L3_2 - 1
  L2_2 = L2_2[L3_2]
  L3_2 = calculateEpisodeScoreAndStarsWithName
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L10_2 = calculateEpisodeScoreAndStarsWithName
  L11_2 = L2_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
  L17_2 = getEpisodeProgress
  L18_2 = L1_2
  L19_2 = true
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = getEpisodeProgress
  L19_2 = L2_2
  L20_2 = true
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = _G
  L19_2 = L19_2.math
  L19_2 = L19_2.min
  L20_2 = L9_2 - L17_2
  L21_2 = L16_2 - L18_2
  L19_2 = L19_2(L20_2, L21_2)
  L20_2 = _G
  L20_2 = L20_2.math
  L20_2 = L20_2.max
  L21_2 = 0
  L22_2 = L19_2
  L20_2 = L20_2(L21_2, L22_2)
  L19_2 = L20_2
  L20_2 = getShopData
  L20_2 = L20_2()
  L20_2 = L20_2.starToCredits
  if not L20_2 then
    L20_2 = g_starToCredits
  end
  L20_2 = L19_2 * L20_2
  return L20_2
end

getPriceForEpisode = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = _G
  L0_2 = L0_2.iap
  L0_2 = L0_2.native_isInitialized
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = print
    L1_2 = "<<Attempting restore purchases>>"
    L0_2(L1_2)
    L0_2 = native_iapRestorePurchases
    L1_2 = true
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "<<Initializing payment>>"
    L0_2(L1_2)
    L0_2 = native_initPaymentProvider
    L0_2()
  end
end

restorePurchasesOrInitialize = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = getEpisodeOpenLevels
  L3_2 = currentFolder
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = getLevelMetadata
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L4_2.isAlternativePathLevel
    if L5_2 then
  end
  else
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.max
    L6_2 = getLevelIndex
    L7_2 = currentFolder
    L8_2 = A0_2.startNumber
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2 - L2_2
    L7_2 = 1
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
  end
  L5_2 = getShopData
  L5_2 = L5_2()
  L5_2 = L5_2.starToCredits
  if not L5_2 then
    L5_2 = g_starToCredits
  end
  L5_2 = L3_2 * L5_2
  L6_2 = L3_2
  return L5_2, L6_2
end

getPriceForLevel = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = actions
  L4_2 = L4_2.myLevels
  L4_2 = L4_2[A0_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = getLevelMetadata
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L8_2.type
      if L9_2 == "comic" then
        goto lbl_18
      end
    end
    L2_2 = L2_2 + 1
    ::lbl_18::
    if L6_2 == A1_2 then
      return L2_2
    end
  end
end

getLevelIndex = L0_1

function L0_1(A0_2)
  local L1_2
  if A0_2 then
    A0_2.hour = 0
    A0_2.minutes = 0
    A0_2.seconds = 0
  end
  return A0_2
end

timeToDay = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.hour
  if not (21 < L1_2) then
    L1_2 = A0_2.hour
    if not (L1_2 < 10) then
      goto lbl_22
    end
  end
  L1_2 = deepCopy
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2.seconds = 0
  L1_2.minutes = 0
  L1_2.hour = 10
  L2_2 = A0_2.hour
  if 21 < L2_2 then
    L2_2 = native_addSecondsToTime
    L3_2 = L1_2
    L4_2 = 86400
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  do return L1_2 end
  ::lbl_22::
  return A0_2
end

roundTimeToDayRange = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = timeToDay
  L1_2 = getServerTime
  L1_2 = L1_2()
  return L0_2(L1_2)
end

getServerDay = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = _G
  L1_2 = L1_2.ServerTime
  L1_2 = L1_2.getStatus
  L1_2 = L1_2()
  if L1_2 == "STATUS_OK" then
    L1_2 = _G
    L1_2 = L1_2.ServerTime
    L1_2 = L1_2.getServerTimeInUTC
    L1_2 = L1_2()
    return L1_2
  elseif A0_2 then
    L1_2 = _G
    L1_2 = L1_2.ServerTime
    L1_2 = L1_2.synchronizeServerTime
    L1_2()
  end
  L1_2 = nil
  return L1_2
end

getServerTime = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = _G
  L1_2 = L1_2.ServerTime
  L1_2 = L1_2.getStatus
  L1_2 = L1_2()
  if L1_2 == "STATUS_OK" then
    L1_2 = _G
    L1_2 = L1_2.ServerTime
    L1_2 = L1_2.getServerTimeInLocalTimeZone
    L1_2 = L1_2()
    return L1_2
  elseif A0_2 then
    L1_2 = _G
    L1_2 = L1_2.ServerTime
    L1_2 = L1_2.synchronizeServerTime
    L1_2()
  end
  L1_2 = nil
  return L1_2
end

getServerTimeInLocalTimeZone = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setHintsEnabled
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getHintsEnabled
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L0_2(L1_2, L2_2)
  L0_2 = ui
  L0_2 = L0_2.ConfirmPrompt
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = {}
  L2_2.name = "hintsPrompt"
  L2_2.title = nil
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getHintsEnabled
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = getText
    L4_2 = "TEXT_BIRD_HINTS_ENABLED"
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = getText
  L4_2 = "TEXT_BIRD_HINTS_DISABLED"
  L3_2 = L3_2(L4_2)
  ::lbl_27::
  L2_2.content = L3_2
  L2_2.returnValue = "CLOSE"
  L2_2.inMenuSpace = true
  L2_2.hideCloseButton = true
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_PUSH_FRAME
  L3_2.id = L4_2
  L3_2.target = L0_2
  L1_2(L2_2, L3_2)
end

toggleHints = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = getForceUpdateData
  L0_2 = L0_2()
  L1_2 = L0_2.isEnabled
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = deviceModel
  if L1_2 == "ios" then
    L1_2 = g_iOSVersion
    if L1_2 then
      L1_2 = print
      L2_2 = "FORCE UPDATE: current iOS version is: "
      L3_2 = _G
      L3_2 = L3_2.tostring
      L4_2 = g_iOSVersion
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = isVersionEqualOrBigger
      L2_2 = g_iOSVersion
      L3_2 = L0_2.minimumIOSVersionRequired
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = print
        L2_2 = "FORCE UPDATE, skipping check due to old iOS version"
        L1_2(L2_2)
        L1_2 = false
        return L1_2
      end
    end
  end
  L1_2 = deviceModel
  if L1_2 == "android" then
    L1_2 = g_androidVersion
    if L1_2 then
      L1_2 = print
      L2_2 = "FORCE UPDATE: current Android version is: "
      L3_2 = _G
      L3_2 = L3_2.tostring
      L4_2 = g_androidVersion
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = isVersionEqualOrBigger
      L2_2 = g_androidVersion
      L3_2 = L0_2.minimumAndroidVersionRequired
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = print
        L2_2 = "FORCE UPDATE, skipping check due to old Android version"
        L1_2(L2_2)
        L1_2 = false
        return L1_2
      end
    end
  end
  L1_2 = gameVersionNumber
  if L1_2 then
    L1_2 = print
    L2_2 = "FORCE UPDATE: game: "
    L3_2 = gameVersionNumber
    L4_2 = ", recommended: "
    L5_2 = L0_2.recommendedVersion
    L6_2 = ", required: "
    L7_2 = L0_2.requiredVersion
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L1_2(L2_2)
    L1_2 = isVersionEqualOrBigger
    L2_2 = gameVersionNumber
    L3_2 = L0_2.requiredVersion
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.getForceUpdateCheckTime
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = print
        L3_2 = "FORCE UPDATE: Launching first time with outdated version"
        L2_2(L3_2)
        L2_2 = SettingsWrapper
        L3_2 = L2_2
        L2_2 = L2_2.setForceUpdateCheckTime
        L4_2 = getCurrentTime
        L4_2, L5_2, L6_2, L7_2 = L4_2()
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
        L2_2 = getCurrentTime
        L2_2 = L2_2()
        L1_2 = L2_2
      end
      L2_2 = getTimeDifferenceInSeconds
      L3_2 = getCurrentTime
      L3_2 = L3_2()
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L0_2.timeAllowedForUpdate
      if L2_2 >= L3_2 then
        L3_2 = print
        L4_2 = "FORCE UPDATE: Update window has closed, update required to continue playing, time difference: "
        L5_2 = L2_2
        L4_2 = L4_2 .. L5_2
        L3_2(L4_2)
        L3_2 = ui
        L3_2 = L3_2.ForceUpdatePrompt
        L4_2 = L3_2
        L3_2 = L3_2.new
        L5_2 = {}
        L5_2.name = "updatePrompt"
        L6_2 = getText
        L7_2 = "TEXT_TITLE_FORCED_UPDATE_REQUIRED"
        L6_2 = L6_2(L7_2)
        L5_2.title = L6_2
        L6_2 = getText
        L7_2 = "TEXT_FORCED_UPDATE_REQUIRED"
        L6_2 = L6_2(L7_2)
        L5_2.content = L6_2
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = eventManager
        L5_2 = L4_2
        L4_2 = L4_2.notify
        L6_2 = {}
        L7_2 = events
        L7_2 = L7_2.EID_PUSH_FRAME
        L6_2.id = L7_2
        L6_2.target = L3_2
        L4_2(L5_2, L6_2)
      else
        L3_2 = print
        L4_2 = "FORCE UPDATE: Update window has closed, time left for update: "
        L5_2 = L2_2
        L4_2 = L4_2 .. L5_2
        L3_2(L4_2)
        L3_2 = ui
        L3_2 = L3_2.ForceUpdatePrompt
        L4_2 = L3_2
        L3_2 = L3_2.new
        L5_2 = {}
        L5_2.name = "updatePrompt"
        L6_2 = getText
        L7_2 = "TEXT_TITLE_FORCED_UPDATE_AVAILABLE"
        L6_2 = L6_2(L7_2)
        L5_2.title = L6_2
        L6_2 = getText
        L7_2 = "TEXT_FORCED_UPDATE_AVAILABLE"
        L6_2 = L6_2(L7_2)
        L5_2.content = L6_2
        L5_2.returnValue = "CLOSE"
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = eventManager
        L5_2 = L4_2
        L4_2 = L4_2.notify
        L6_2 = {}
        L7_2 = events
        L7_2 = L7_2.EID_PUSH_FRAME
        L6_2.id = L7_2
        L6_2.target = L3_2
        L4_2(L5_2, L6_2)
      end
      L3_2 = true
      return L3_2
    else
      L1_2 = SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.setForceUpdateCheckTime
      L3_2 = nil
      L1_2(L2_2, L3_2)
    end
    L1_2 = isVersionEqualOrBigger
    L2_2 = gameVersionNumber
    L3_2 = L0_2.recommendedVersion
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.hasUpdateBeenNotified
      L3_2 = gameVersionNumber
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = print
        L2_2 = "FORCE UPDATE: new update available, showing recommendation to update"
        L1_2(L2_2)
        L1_2 = ui
        L1_2 = L1_2.ForceUpdatePrompt
        L2_2 = L1_2
        L1_2 = L1_2.new
        L3_2 = {}
        L3_2.name = "updatePrompt"
        L4_2 = getText
        L5_2 = "TEXT_TITLE_GAME_UPDATE_NOTIFICATION"
        L4_2 = L4_2(L5_2)
        L3_2.title = L4_2
        L4_2 = getText
        L5_2 = "TEXT_GAME_UPDATE_NOTIFICATION"
        L4_2 = L4_2(L5_2)
        L3_2.content = L4_2
        L3_2.returnValue = "CLOSE"
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
        L2_2 = SettingsWrapper
        L3_2 = L2_2
        L2_2 = L2_2.setUpdateNotifiedVersion
        L4_2 = gameVersionNumber
        L2_2(L3_2, L4_2)
        L2_2 = true
        return L2_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

checkForceUpdate = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = 1
  L5_2 = _G
  L5_2 = L5_2.string
  L5_2 = L5_2.gmatch
  L6_2 = A0_2
  L7_2 = "%d+"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2 in L5_2, L6_2, L7_2 do
    L9_2 = _G
    L9_2 = L9_2.tonumber
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L2_2[L4_2] = L9_2
    L4_2 = L4_2 + 1
  end
  L4_2 = 1
  L5_2 = _G
  L5_2 = L5_2.string
  L5_2 = L5_2.gmatch
  L6_2 = A1_2
  L7_2 = "%d+"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2 in L5_2, L6_2, L7_2 do
    L9_2 = _G
    L9_2 = L9_2.tonumber
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L3_2[L4_2] = L9_2
    L4_2 = L4_2 + 1
  end
  L5_2 = 1
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.max
  L7_2 = #L2_2
  L8_2 = #L3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    if not L9_2 then
      L2_2[L8_2] = 0
    end
    L9_2 = L3_2[L8_2]
    if not L9_2 then
      L3_2[L8_2] = 0
    end
  end
  L5_2 = 1
  L6_2 = #L2_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    L10_2 = L3_2[L8_2]
    if L9_2 < L10_2 then
      L9_2 = false
      return L9_2
    else
      L9_2 = L2_2[L8_2]
      L10_2 = L3_2[L8_2]
      if L9_2 > L10_2 then
        L9_2 = true
        return L9_2
      end
    end
  end
  L5_2 = true
  return L5_2
end

isVersionEqualOrBigger = L0_1

function L0_1()
  local L0_2, L1_2
end

restorePurchasesOrInitialize = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = objects
  L1_2.windForce = 0
  L1_2 = blockTable
  L1_2 = L1_2.themes
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.themeWindForce
  if L1_2 then
    L2_2 = print
    L3_2 = "Theme wind force is "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = objects
    L2_2.windForce = L1_2
  end
  L2_2 = native_setAdditionalBirdGravityX
  L3_2 = objects
  L3_2 = L3_2.windForce
  L4_2 = objects
  L4_2 = L4_2.gravityForceMultiplier
  L3_2 = L3_2 * L4_2
  L2_2(L3_2)
end

setWindForceFromTheme = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = g_isSandboxLevel
  return L0_2
end

isSandboxLevel = L0_1

function L0_1(A0_2)
  local L1_2
  L1_2 = A0_2 == "SandboxBirdDark" or A0_2 == "SandboxBirdLight"
  return L1_2
end

isSandboxBird = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = getAllClaimableQuests
  L1_2 = "bird"
  L0_2 = L0_2(L1_2)
  L0_2 = #L0_2
  L1_2 = getAllClaimableQuests
  L2_2 = "birdPack"
  L1_2 = L1_2(L2_2)
  L1_2 = #L1_2
  L0_2 = L0_2 + L1_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getWeeklyRewardAvailable
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = 1
    if L1_2 then
      goto lbl_19
    end
  end
  L1_2 = 0
  ::lbl_19::
  L2_2 = L0_2 + L1_2
  return L2_2
end

getClaimableRewards = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = objects
      L1_2 = L1_2.world
      L1_2 = L1_2[A0_2]
      L2_2 = blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.preventBirdCollision
      if L3_2 then
        L3_2 = true
        return L3_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

isPreventBirdCollision = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.ceil
  L2_2 = A0_2 / 86400
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.ceil
  L3_2 = A0_2 / 3600
  L2_2 = L2_2(L3_2)
  if 1 < L1_2 then
    L3_2 = getText
    L4_2 = "TEXT_LEVEL_LOCKED_BUTTON_SEVERAL_DAYS"
    L5_2 = {}
    L6_2 = "$DAYS"
    L7_2 = L1_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    return L3_2(L4_2, L5_2)
  elseif 1 < L2_2 then
    L3_2 = getText
    L4_2 = "TEXT_LEVEL_LOCKED_BUTTON_SEVERAL_HOURS"
    L5_2 = {}
    L6_2 = "$HOURS"
    L7_2 = L2_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    return L3_2(L4_2, L5_2)
  else
    L3_2 = getText
    L4_2 = "TEXT_LEVEL_LOCKED_BUTTON_HOUR"
    return L3_2(L4_2)
  end
end

getMYDLockText = L0_1
