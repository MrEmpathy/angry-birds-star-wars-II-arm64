local L0_1, L1_1
L0_1 = false
firstInterstitialDisplayed = L0_1
L0_1 = false
bannersEnabled = L0_1
L0_1 = true
expandablesEnabled = L0_1
L0_1 = true
interstitialsEnabled = L0_1
L0_1 = 50
scaledFrameHeight = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads_use_test_mode
  if L0_2 then
    L0_2 = 30
    return L0_2
  else
    L0_2 = 60
    return L0_2
  end
end

getExpandableMinimumDisplayInterval = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads_use_test_mode
  if L0_2 then
    L0_2 = 40
    return L0_2
  else
    L0_2 = 120
    return L0_2
  end
end

getInterstitialMinimumDisplayInterval = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 10
  return L0_2
end

getDefaultMinimumDisplayInterval = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.BannerAdManager
  L1_2 = L1_2.enabled
  L0_2.bannerAdManagerEnabled = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.InterstitialAdManager
  L1_2 = L1_2.enabled
  L0_2.interstitialAdManagerEnabled = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.ExpandableAdManager
  L1_2 = L1_2.enabled
  L0_2.expandableAdManagerEnabled = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L0_2 = L0_2.BannerAdManager
  L0_2.enabled = false
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L0_2 = L0_2.InterstitialAdManager
  L0_2.enabled = false
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L0_2 = L0_2.ExpandableAdManager
  L0_2.enabled = false
end

disableAdManagers = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L0_2 = L0_2.BannerAdManager
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.bannerAdManagerEnabled
  L0_2.enabled = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L0_2 = L0_2.InterstitialAdManager
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.interstitialAdManagerEnabled
  L0_2.enabled = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L0_2 = L0_2.ExpandableAdManager
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.expandableAdManagerEnabled
  L0_2.enabled = L1_2
end

reEnableAdManagers = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L0_2 = L0_2.BannerAdManager
  L0_2 = L0_2.AdShowState
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.AdShowState
  L1_2 = L1_2.Invisible
  L0_2 = L0_2 ~= L1_2
  return L0_2
end

isAdShown = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = gamelua
  L0_2 = L0_2.print
  print = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.screenHeight
  screenHeight = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.screenWidth
  screenWidth = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.ads
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.hasAnyLevelBeenCompleted
  L1_2 = L1_2(L2_2)
  L0_2.anyKindOfAdEnabled = L1_2
  L0_2 = BannerAdManager
  L1_2 = bannersEnabled
  L0_2.enabled = L1_2
  L0_2 = InterstitialAdManager
  L1_2 = interstitialsEnabled
  L0_2.enabled = L1_2
  L0_2 = ExpandableAdManager
  L1_2 = expandablesEnabled
  L0_2.enabled = L1_2
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_GAME_INITIALIZED
  L3_2 = gameInitializationEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_MAIN_MENU_ENTERED
  L3_2 = mainMenuEnteredEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_GAMESCENE_ENTERED
  L3_2 = gameSceneEnteredEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_PAUSE_PAGE_EXTENDED
  L3_2 = pausePageExtendedEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_PAUSE_PAGE_CLOSED
  L3_2 = pausePageClosedEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_LEVEL_COMPLETED
  L3_2 = levelCompletedOrFailedEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_LEVEL_FAILED
  L3_2 = levelCompletedOrFailedEventListener
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = gamelua
  L0_2 = L0_2.eventManager
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = gamelua
  L2_2 = L2_2.events
  L2_2 = L2_2.EID_FIRST_LEVEL_COMPLETED
  L3_2 = firstLevelCompletedEventListener
  L0_2(L1_2, L2_2, L3_2)
end

initializeAds = L0_1
L0_1 = false
bannerFrameInitialized = L0_1
L0_1 = false
interstitialFrameInitialized = L0_1
L0_1 = "SPRITE_TRANSPARENT"
bannerFrameSpriteName = L0_1
L0_1 = "SPRITE_TRANSPARENT"
adScreenSpriteName = L0_1
L0_1 = "PIG_NORMAL_HAPPY"
adScreenPigSpriteName = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = print
  L1_2 = "ads.lua:initializeBannerFrame.\n"
  L0_2(L1_2)
  L0_2 = _G
  L0_2 = L0_2.assert
  L1_2 = gamelua
  L1_2 = L1_2.g_AndroidAdScalingDensity
  L1_2 = L1_2 ~= nil
  L2_2 = "g_AndroidAdScalingDensity is not defined"
  L0_2(L1_2, L2_2)
  L0_2 = gamelua
  L0_2 = L0_2.g_AndroidAdScalingDensity
  L0_2 = 320 * L0_2
  bannerWidth = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.g_AndroidAdScalingDensity
  L0_2 = 50 * L0_2
  bannerHeight = L0_2
  L0_2 = 0.95427436
  L1_2 = 0.7326733
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = bannerFrameSpriteName
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = bannerWidth
  L4_2 = L4_2 / L0_2
  scaledFrameWidth = L4_2
  L4_2 = bannerHeight
  L4_2 = L4_2 / L1_2
  scaledFrameHeight = L4_2
  L4_2 = scaledFrameWidth
  L4_2 = L4_2 / L2_2
  frameScaleX = L4_2
  L4_2 = scaledFrameHeight
  L4_2 = L4_2 / L3_2
  frameScaleY = L4_2
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpritePivot
  L5_2 = bannerFrameSpriteName
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = true
  bannerFrameInitialized = L6_2
end

initializeBannerFrame = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = print
  L1_2 = "ads.lua:initializeInterstitialFrame.\n"
  L0_2(L1_2)
  L0_2 = _G
  L0_2 = L0_2.res
  L0_2 = L0_2.getSpriteBounds
  L1_2 = adScreenSpriteName
  L0_2, L1_2 = L0_2(L1_2)
  L2_2 = 0.85365856
  L3_2 = 0.8009259
  L4_2 = 1.517341
  L5_2 = screenWidth
  L6_2 = screenHeight
  L5_2 = L5_2 / L6_2
  L6_2 = nil
  L7_2 = nil
  if L4_2 >= L5_2 then
    L7_2 = screenHeight
    L6_2 = L7_2 * L4_2
  else
    L6_2 = screenWidth
    L7_2 = L6_2 / L4_2
  end
  L8_2 = L6_2 / L2_2
  scaledAdScreenWidth = L8_2
  L8_2 = L7_2 / L3_2
  scaledAdScreenHeight = L8_2
  L8_2 = scaledAdScreenWidth
  L8_2 = L8_2 / L0_2
  adScreenScaleX = L8_2
  L8_2 = scaledAdScreenHeight
  L8_2 = L8_2 / L1_2
  adScreenScaleY = L8_2
  L8_2 = print
  L9_2 = "ads.lua:Screen size is "
  L10_2 = screenWidth
  L11_2 = "x"
  L12_2 = screenHeight
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L8_2(L9_2)
  L8_2 = print
  L9_2 = "ads.lua:Ad screen size is "
  L10_2 = L0_2
  L11_2 = "x"
  L12_2 = L1_2
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L8_2(L9_2)
  L8_2 = print
  L9_2 = "ads.lua:Scaled ad screen size is "
  L10_2 = scaledAdScreenWidth
  L11_2 = "x"
  L12_2 = scaledAdScreenHeight
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L8_2(L9_2)
  L8_2 = print
  L9_2 = "ads.lua:Scaled ad screen target area size is "
  L10_2 = L6_2
  L11_2 = "x"
  L12_2 = L7_2
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L8_2(L9_2)
  L8_2 = print
  L9_2 = "ads.lua:Ad screen scale x "
  L10_2 = adScreenScaleX
  L11_2 = ", y "
  L12_2 = adScreenScaleY
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L8_2(L9_2)
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getSpritePivot
  L9_2 = adScreenSpriteName
  L8_2, L9_2 = L8_2(L9_2)
  L10_2 = print
  L11_2 = "ads.lua:Ad screen pivot "
  L12_2 = L8_2
  L13_2 = "x"
  L14_2 = L9_2
  L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
  L10_2(L11_2)
  L10_2 = print
  L11_2 = "ads.lua:Ad screen size "
  L12_2 = L0_2
  L13_2 = "x"
  L14_2 = L1_2
  L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
  L10_2(L11_2)
  L10_2 = true
  interstitialFrameInitialized = L10_2
end

initializeInterstitialFrame = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = BannerAdManager
  L1_2 = L0_2
  L0_2 = L0_2.checkRequestAd
  L0_2(L1_2)
  L0_2 = ExpandableAdManager
  L1_2 = L0_2
  L0_2 = L0_2.checkRequestAd
  L0_2(L1_2)
  L0_2 = InterstitialAdManager
  L1_2 = L0_2
  L0_2 = L0_2.checkRequestAd
  L0_2(L1_2)
end

checkRequestAllAdTypes = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2.id
  L3_2 = L3_2 == "EID_GAME_INITIALIZED"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "ads.lua:gameInitializationEventListener.\n"
  L2_2(L3_2)
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  if L2_2 then
    return
  end
end

L0_1.eventTriggered = L1_1
gameInitializationEventListener = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2.id
  L3_2 = L3_2 == "EID_MAIN_MENU_ENTERED"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "ads.lua:mainMenuEnteredEventListener.\n"
  L2_2(L3_2)
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  if L2_2 then
    return
  end
  L2_2 = firstInterstitialDisplayed
  if not L2_2 then
    L2_2 = InterstitialAdManager
    L3_2 = L2_2
    L2_2 = L2_2.checkBeginShowAd
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = true
      firstInterstitialDisplayed = L2_2
    else
    end
  end
end

L0_1.eventTriggered = L1_1
mainMenuEnteredEventListener = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = gamelua
  L2_2 = L2_2.assert
  L3_2 = A1_2.id
  L3_2 = L3_2 == "EID_GAMESCENE_ENTERED"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "ads.lua:gameSceneEnteredEventListener.\n"
  L2_2(L3_2)
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.inEggsteroidTransition
    if not L2_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L2_2 = gamelua
  L2_2 = L2_2.g_tutorialShowing
  if L2_2 then
    L2_2 = print
    L3_2 = "ads.lua:Tutorial is visible - skipping ads.\n"
    L2_2(L3_2)
    return
  end
  L2_2 = A1_2.inGame
  if L2_2 then
    L2_2 = checkRequestAllAdTypes
    L2_2()
    L2_2 = ExpandableAdManager
    L3_2 = L2_2
    L2_2 = L2_2.checkBeginShowAd
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = print
      L3_2 = "ads.lua:gameSceneEnteredEventListener showing expandable.\n"
      L2_2(L3_2)
    else
      L2_2 = InterstitialAdManager
      L3_2 = L2_2
      L2_2 = L2_2.checkBeginShowAd
      L2_2 = L2_2(L3_2)
      if L2_2 then
      else
        L2_2 = BannerAdManager
        L3_2 = L2_2
        L2_2 = L2_2.checkBeginShowAd
        L2_2 = L2_2(L3_2)
        if L2_2 then
        end
      end
    end
  end
end

L0_1.eventTriggered = L1_1
gameSceneEnteredEventListener = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = gamelua
  L2_2 = L2_2.assert
  L3_2 = A1_2.id
  L3_2 = L3_2 == "EID_PAUSE_PAGE_EXTENDED"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "ads.lua:pausePageExtendedEventListener.\n"
  L2_2(L3_2)
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  if L2_2 then
    return
  end
  L2_2 = BannerAdManager
  L3_2 = L2_2
  L2_2 = L2_2.checkHideAdImmediate
  L2_2(L3_2)
  L2_2 = ExpandableAdManager
  L3_2 = L2_2
  L2_2 = L2_2.checkHideAdImmediate
  L2_2(L3_2)
end

L0_1.eventTriggered = L1_1
pausePageExtendedEventListener = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2.id
  L3_2 = L3_2 == "EID_PAUSE_PAGE_CLOSED"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "ads.lua:pausePageClosedEventListener.\n"
  L2_2(L3_2)
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  if L2_2 then
    return
  end
end

L0_1.eventTriggered = L1_1
pausePageClosedEventListener = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2.id
  L3_2 = L3_2 == "EID_LEVEL_COMPLETED"
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "ads.lua:levelCompletedOrFailedEventListener "
  L4_2 = A1_2.id
  L5_2 = ".\n"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  if L2_2 then
    return
  end
  L2_2 = BannerAdManager
  L3_2 = L2_2
  L2_2 = L2_2.checkHideAdImmediate
  L2_2(L3_2)
  L2_2 = ExpandableAdManager
  L3_2 = L2_2
  L2_2 = L2_2.checkHideAdImmediate
  L2_2(L3_2)
end

L0_1.eventTriggered = L1_1
levelCompletedOrFailedEventListener = L0_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = gamelua
  L2_2 = L2_2.ads
  L2_2.anyKindOfAdEnabled = true
end

L0_1.eventTriggered = L1_1
firstLevelCompletedEventListener = L0_1
L0_1 = false
disableRovioNews = L0_1
L0_1 = false
audioWasDisabled = L0_1
L0_1 = false
queuePauseGame = L0_1
L0_1 = false
queueResumeGame = L0_1
L0_1 = false
gamePaused = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "ads.lua:Game paused.\n"
  L0_2(L1_2)
  L0_2 = true
  queuePauseGame = L0_2
  L0_2 = gamePaused
  if L0_2 then
    L0_2 = print
    L1_2 = "ads.lua:gamePaused is true when calling pauseGame.\n"
    L0_2(L1_2)
  end
  L0_2 = checkCancelBirdDrag
  L0_2()
  L0_2 = true
  gamePaused = L0_2
end

pauseGame = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.selectedBird
  if L0_2 ~= nil then
    L0_2 = print
    L1_2 = "ads.lua:Slingshot is dragged while pausing for ads - cancelling bird drag.\n"
    L0_2(L1_2)
    L0_2 = gamelua
    L0_2 = L0_2.cancelBirdDrag
    L0_2()
  end
end

checkCancelBirdDrag = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "ads.lua:pauseGameImpl()\n"
  L0_2(L1_2)
  L0_2 = gamelua
  L0_2 = L0_2.setPhysicsEnabled
  L1_2 = false
  L0_2(L1_2)
  L0_2 = gamelua
  L0_2 = L0_2.SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isAudioEnabled
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = gamelua
    L0_2 = L0_2.toggleAudio
    L0_2()
    L0_2 = true
    audioWasDisabled = L0_2
  else
    L0_2 = false
    audioWasDisabled = L0_2
  end
end

pauseGameImpl = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "ads.lua:Game resumed.\n"
  L0_2(L1_2)
  L0_2 = true
  queueResumeGame = L0_2
  L0_2 = gamePaused
  if not L0_2 then
    L0_2 = print
    L1_2 = "ads.lua:gamePaused is false when calling resumeGame.\n"
    L0_2(L1_2)
  end
  L0_2 = false
  gamePaused = L0_2
end

resumeGame = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = isPausePageVisible
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = gamelua
    L0_2 = L0_2.setPhysicsEnabled
    L1_2 = true
    L0_2(L1_2)
  end
  L0_2 = audioWasDisabled
  if L0_2 then
    L0_2 = _G
    L0_2 = L0_2.assert
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.isAudioEnabled
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
    L2_2 = "Inconsistent audio enabled state"
    L0_2(L1_2, L2_2)
    L0_2 = gamelua
    L0_2 = L0_2.toggleAudio
    L0_2()
    L0_2 = false
    audioWasDisabled = L0_2
  end
end

resumeGameImpl = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = gamelua
  L0_2 = L0_2.menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getRoot
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2
  L0_2 = L0_2.getChild
  L2_2 = "gameHud"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.getChild
    L3_2 = "pausePage"
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.visible
    return L1_2
  else
    L1_2 = print
    L2_2 = "ads.lua:Failed to check pause page visibility state.\n"
    L1_2(L2_2)
  end
end

isPausePageVisible = L0_1
L0_1 = {}
L0_1.NotRequested = 0
L0_1.Requested = 1
L0_1.Ready = 2
L0_1.Failed = 3
AdRequestState = L0_1
L0_1 = {}
L0_1.Invisible = 0
L0_1.ScrollingIn = 1
L0_1.Visible = 2
L0_1.ScrollingOutDelay = 3
L0_1.ScrollingOut = 4
AdShowState = L0_1
L0_1 = {}
L0_1.name = "undefined_ad_manager"
L1_1 = AdRequestState
L1_1 = L1_1.NotRequested
L0_1.requestState = L1_1
L1_1 = AdShowState
L1_1 = L1_1.Invisible
L0_1.showState = L1_1
L0_1.displayPeriod = 15
L1_1 = getDefaultMinimumDisplayInterval
L0_1.getMinimumDisplayInterval = L1_1
L0_1.timeElapsed = 0
L0_1.timeSinceLastAdDisplayed = 0
AdManager = L0_1
L0_1 = AdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = _G
  L2_2 = L2_2.setmetatable
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return L1_2
end

L0_1.new = L1_1
L0_1 = AdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.enabled
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.requestState
  L2_2 = AdRequestState
  L2_2 = L2_2.NotRequested
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.requestState
    L2_2 = AdRequestState
    L2_2 = L2_2.Failed
    if L1_2 ~= L2_2 then
      goto lbl_40
    end
  end
  L1_2 = print
  L2_2 = "---------------------------------------------------------------\n"
  L1_2(L2_2)
  L1_2 = print
  L2_2 = "-- ads.lua:checkRequestAd: requesting ad ("
  L3_2 = A0_2.name
  L4_2 = ") --\n"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = print
  L2_2 = "---------------------------------------------------------------\n"
  L1_2(L2_2)
  L1_2 = "false"
  L2_2 = A0_2.requestState
  L3_2 = AdRequestState
  L3_2 = L3_2.Failed
  if L2_2 == L3_2 then
    L1_2 = "true"
  end
  L2_2 = AdRequestState
  L2_2 = L2_2.Requested
  A0_2.requestState = L2_2
  L2_2 = A0_2.requestAd
  L2_2()
  ::lbl_40::
end

L0_1.checkRequestAd = L1_1
L0_1 = AdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.enabled
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.ads
    L1_2 = L1_2.anyKindOfAdEnabled
    if not L1_2 then
      L1_2 = print
      L2_2 = "ads.lua:  checkBeginShowAd() banners disabled"
      L1_2(L2_2)
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = BannerAdManager
  L1_2 = L1_2.showState
  L2_2 = AdShowState
  L2_2 = L2_2.Visible
  if L1_2 ~= L2_2 then
    L1_2 = ExpandableAdManager
    L1_2 = L1_2.showState
    L2_2 = AdShowState
    L2_2 = L2_2.Visible
    if L1_2 ~= L2_2 then
      L1_2 = InterstitialAdManager
      L1_2 = L1_2.showState
      L2_2 = AdShowState
      L2_2 = L2_2.Visible
      if L1_2 ~= L2_2 then
        goto lbl_34
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_34::
  L1_2 = A0_2.requestState
  L2_2 = AdRequestState
  L2_2 = L2_2.Ready
  if L1_2 == L2_2 then
    L1_2 = A0_2.showState
    L2_2 = AdShowState
    L2_2 = L2_2.Invisible
    if L1_2 == L2_2 then
      L1_2 = print
      L2_2 = "ads.lua:  checkBeginShowAd() self.timeElapsed = "
      L3_2 = A0_2.timeElapsed
      L4_2 = " interval = "
      L5_2 = A0_2.getMinimumDisplayInterval
      L5_2 = L5_2()
      L6_2 = "\n"
      L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
      L1_2(L2_2)
      L1_2 = A0_2.timeElapsed
      L2_2 = A0_2.getMinimumDisplayInterval
      L2_2 = L2_2()
      if L1_2 >= L2_2 then
        L1_2 = print
        L2_2 = "ads.lua:checkBeginShowAd: showing ad ("
        L3_2 = A0_2.name
        L4_2 = ").\n"
        L2_2 = L2_2 .. L3_2 .. L4_2
        L1_2(L2_2)
        A0_2.timeElapsed = 0
        L2_2 = A0_2
        L1_2 = A0_2.beginShowAd
        L1_2(L2_2)
        L1_2 = true
        return L1_2
      else
        L1_2 = print
        L2_2 = "ads.lua:checkBeginShowAd: too soon display a ("
        L3_2 = A0_2.name
        L4_2 = ") self.timeElapsed:"
        L5_2 = A0_2.timeElapsed
        L6_2 = "\n"
        L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
        L1_2(L2_2)
      end
  end
  else
    L1_2 = print
    L2_2 = "ads.lua:checkBeginShowAd: ad ("
    L3_2 = A0_2.name
    L4_2 = ") not ready requestState:"
    L5_2 = A0_2.requestState
    L6_2 = " showState:"
    L7_2 = A0_2.showState
    L8_2 = "\n"
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
end

L0_1.checkBeginShowAd = L1_1
L0_1 = AdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.requestState
  L3_2 = AdRequestState
  L3_2 = L3_2.Ready
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.Invisible
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = print
  L2_2 = "ads.lua:"
  L3_2 = A0_2.name
  L4_2 = " called AdManager:beginShowAd() called - state set to visible.\n"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = AdShowState
  L1_2 = L1_2.Visible
  A0_2.showState = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.showAd
  L1_2(L2_2)
end

L0_1.beginShowAd = L1_1
L0_1 = AdManager
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
BannerAdManager = L0_1
L0_1 = BannerAdManager
L0_1.name = "BannerAdManager"
L0_1 = BannerAdManager
L0_1.adTypeFlurry = "banner"
L0_1 = BannerAdManager
L1_1 = gamelua
L1_1 = L1_1.requestBannerAd
L0_1.requestAd = L1_1
L0_1 = BannerAdManager
L1_1 = gamelua
L1_1 = L1_1.showBannerAd
L0_1.showAd = L1_1
L0_1 = BannerAdManager
L0_1.scrollPeriod = 0.1
L0_1 = BannerAdManager
L0_1.scrollOutDelay = 0.5
L0_1 = BannerAdManager
L0_1.scrollProgress = 0
L0_1 = 0
bannerOffset = L0_1
L0_1 = BannerAdManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.Invisible
  if L2_2 == L3_2 then
    return
  end
  L2_2 = scaledFrameHeight
  if L2_2 ~= nil then
    L2_2 = bannerFrameInitialized
    if L2_2 then
      L2_2 = scaledFrameHeight
      L3_2 = A0_2.scrollProgress
      L3_2 = L3_2 - 1
      L2_2 = L2_2 * L3_2
      L3_2 = gamelua
      L3_2 = L3_2.setRenderState
      L4_2 = screenWidth
      L5_2 = frameScaleX
      L4_2 = L4_2 / L5_2
      L5_2 = frameScaleY
      L5_2 = L2_2 / L5_2
      L6_2 = frameScaleX
      L7_2 = frameScaleY
      L8_2 = 0
      L9_2 = _G
      L9_2 = L9_2.res
      L9_2 = L9_2.getSpritePivot
      L10_2 = bannerFrameSpriteName
      L9_2, L10_2 = L9_2(L10_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L3_2 = _G
      L3_2 = L3_2.res
      L3_2 = L3_2.drawSprite
      L4_2 = bannerFrameSpriteName
      L5_2 = 0
      L6_2 = 0
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = gamelua
      L3_2 = L3_2.setRenderState
      L4_2 = 0
      L5_2 = 0
      L6_2 = 1
      L7_2 = 1
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L3_2 = scaledFrameHeight
      L4_2 = A0_2.scrollProgress
      L3_2 = L3_2 * L4_2
      bannerOffset = L3_2
  end
  else
    L2_2 = A0_2.scrollProgress
    L2_2 = 100 * L2_2
    bannerOffset = L2_2
  end
end

L0_1.drawUpdate = L1_1
L0_1 = BannerAdManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = A0_2.enabled
    if L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2.timeElapsed
  L2_2 = L2_2 + A1_2
  A0_2.timeElapsed = L2_2
  L2_2 = bannerFrameInitialized
  if not L2_2 then
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getSpriteBounds
    L3_2 = bannerFrameSpriteName
    L2_2, L3_2 = L2_2(L3_2)
    if 0 < L2_2 and 0 < L3_2 then
      L4_2 = initializeBannerFrame
      L4_2()
    else
      return
    end
  end
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.ScrollingIn
  if L2_2 == L3_2 then
    L2_2 = A0_2.timeElapsed
    L3_2 = A0_2.scrollPeriod
    if L2_2 < L3_2 then
      L2_2 = A0_2.timeElapsed
      L3_2 = A0_2.scrollPeriod
      L2_2 = L2_2 / L3_2
      A0_2.scrollProgress = L2_2
    else
      A0_2.scrollProgress = 1
      L2_2 = A0_2.showAd
      L2_2()
      L2_2 = AdShowState
      L2_2 = L2_2.Visible
      A0_2.showState = L2_2
      A0_2.timeElapsed = 0
    end
  else
    L2_2 = A0_2.showState
    L3_2 = AdShowState
    L3_2 = L3_2.Visible
    if L2_2 == L3_2 then
      L2_2 = A0_2.timeElapsed
      L3_2 = A0_2.displayPeriod
      if L2_2 > L3_2 then
        L2_2 = gamelua
        L2_2 = L2_2.hideBannerAd
        L2_2()
        L2_2 = AdShowState
        L2_2 = L2_2.ScrollingOutDelay
        A0_2.showState = L2_2
        A0_2.timeElapsed = 0
      end
    else
      L2_2 = A0_2.showState
      L3_2 = AdShowState
      L3_2 = L3_2.ScrollingOutDelay
      if L2_2 == L3_2 then
        A0_2.scrollProgress = 1
        L2_2 = A0_2.timeElapsed
        L3_2 = A0_2.scrollOutDelay
        if L2_2 >= L3_2 then
          L2_2 = AdShowState
          L2_2 = L2_2.ScrollingOut
          A0_2.showState = L2_2
          A0_2.timeElapsed = 0
        end
      else
        L2_2 = A0_2.showState
        L3_2 = AdShowState
        L3_2 = L3_2.ScrollingOut
        if L2_2 == L3_2 then
          L2_2 = A0_2.timeElapsed
          L3_2 = A0_2.scrollPeriod
          if L2_2 < L3_2 then
            L2_2 = A0_2.timeElapsed
            L3_2 = A0_2.scrollPeriod
            L2_2 = L2_2 / L3_2
            L2_2 = 1 - L2_2
            A0_2.scrollProgress = L2_2
          else
            L2_2 = AdShowState
            L2_2 = L2_2.Invisible
            A0_2.showState = L2_2
            L2_2 = AdRequestState
            L2_2 = L2_2.NotRequested
            A0_2.requestState = L2_2
            A0_2.scrollProgress = 0
          end
        else
          L2_2 = A0_2.timeSinceLastAdDisplayed
          L2_2 = L2_2 + A1_2
          A0_2.timeSinceLastAdDisplayed = L2_2
        end
      end
    end
  end
end

L0_1.frameUpdate = L1_1
L0_1 = BannerAdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.requestState
  L3_2 = AdRequestState
  L3_2 = L3_2.Ready
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.Invisible
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = false
  disableRovioNews = L1_2
  L1_2 = AdShowState
  L1_2 = L1_2.ScrollingIn
  A0_2.showState = L1_2
  A0_2.timeElapsed = 0
  A0_2.scrollProgress = 0
end

L0_1.beginShowAd = L1_1
L0_1 = BannerAdManager

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "ads.lua:BannerAdManager:checkHideAdImmediate()"
  L1_2(L2_2)
  L1_2 = A0_2.showState
  L2_2 = AdShowState
  L2_2 = L2_2.Visible
  if L1_2 == L2_2 then
    L1_2 = print
    L2_2 = "ads.lua:calling hideBannerAd()"
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.hideBannerAd
    L1_2()
    L1_2 = AdRequestState
    L1_2 = L1_2.NotRequested
    A0_2.requestState = L1_2
    L1_2 = false
    disableRovioNews = L1_2
  end
  L1_2 = AdShowState
  L1_2 = L1_2.Invisible
  A0_2.showState = L1_2
  L1_2 = resetScoreOffset
  L1_2()
end

L0_1.checkHideAdImmediate = L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = 0
  bannerOffset = L0_2
end

resetScoreOffset = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.getLevelMetadata
  L1_2 = gamelua
  L1_2 = L1_2.levelName
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.ignoreBannerAds
  L0_2 = L0_2 == true
  return L0_2
end

ignoreBannerAdsOnCurrentLevel = L0_1
L0_1 = BannerAdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ignoreBannerAdsOnCurrentLevel
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = print
    L2_2 = "ads.lua: BannerAdManager:checkBeginShowAd() not showing banner because banners are disabled for "
    L3_2 = gamelua
    L3_2 = L3_2.levelName
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  else
    L1_2 = AdManager
    L1_2 = L1_2.checkBeginShowAd
    L2_2 = A0_2
    return L1_2(L2_2)
  end
end

L0_1.checkBeginShowAd = L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "ads.lua:onRequestBannerAd()"
  L0_2(L1_2)
end

onRequestBannerAd = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = burstlyAdsDisabled
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = burstlyAdsDisabled
  L2_2 = L2_2()
  L2_2 = not L2_2
  L1_2(L2_2)
  if A0_2 then
    L1_2 = print
    L2_2 = "ads.lua:onBannerAdRequestCompleted: Succesful\n"
    L1_2(L2_2)
    L1_2 = BannerAdManager
    L2_2 = AdRequestState
    L2_2 = L2_2.Ready
    L1_2.requestState = L2_2
  else
    L1_2 = print
    L2_2 = "ads.lua:onBannerAdRequestCompleted: Failed\n"
    L1_2(L2_2)
    L1_2 = BannerAdManager
    L2_2 = AdRequestState
    L2_2 = L2_2.Failed
    L1_2.requestState = L2_2
  end
end

onBannerAdRequestCompleted = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = print
  L1_2 = "ads.lua:onBannerAdWasHidden"
  L0_2(L1_2)
  L0_2 = false
  disableRovioNews = L0_2
end

onBannerAdWasHidden = L0_1
L0_1 = false
disableBackButton = L0_1
L0_1 = AdManager
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ExpandableAdManager = L0_1
L0_1 = ExpandableAdManager
L0_1.name = "ExpandableAdManager"
L0_1 = ExpandableAdManager
L0_1.adTypeFlurry = "expandable"
L0_1 = ExpandableAdManager
L1_1 = gamelua
L1_1 = L1_1.requestExpandableAd
L0_1.requestAd = L1_1
L0_1 = ExpandableAdManager
L1_1 = gamelua
L1_1 = L1_1.showExpandableAd
L0_1.showAd = L1_1
L0_1 = ExpandableAdManager
L1_1 = getExpandableMinimumDisplayInterval
L0_1.getMinimumDisplayInterval = L1_1
L0_1 = ExpandableAdManager

function L1_1(A0_2, A1_2)
end

L0_1.drawUpdate = L1_1
L0_1 = ExpandableAdManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = burstlyAdsDisabled
  L3_2 = L3_2()
  L3_2 = not L3_2
  L2_2(L3_2)
  L2_2 = A0_2.timeElapsed
  L2_2 = L2_2 + A1_2
  A0_2.timeElapsed = L2_2
end

L0_1.frameUpdate = L1_1
L0_1 = ExpandableAdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = scaledFrameHeight
  L2_2 = L2_2 ~= nil
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.requestState
  L3_2 = AdRequestState
  L3_2 = L3_2.Ready
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.Invisible
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = true
  disableRovioNews = L1_2
  L1_2 = scaledFrameHeight
  L1_2 = L1_2 * 1.1
  bannerOffset = L1_2
  L1_2 = AdManager
  L1_2 = L1_2.beginShowAd
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.beginShowAd = L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.getLevelMetadata
  L1_2 = gamelua
  L1_2 = L1_2.levelName
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.ignoreExpandableAds
  L0_2 = L0_2 == true
  return L0_2
end

ignoreExpandableAdsOnCurrentLevel = L0_1
L0_1 = ExpandableAdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ignoreExpandableAdsOnCurrentLevel
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = print
    L2_2 = "ads.lua: BannerAdManager:checkBeginShowAd() not showing expandable because banners are disabled for "
    L3_2 = gamelua
    L3_2 = L3_2.levelName
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  else
    L1_2 = AdManager
    L1_2 = L1_2.checkBeginShowAd
    L2_2 = A0_2
    return L1_2(L2_2)
  end
end

L0_1.checkBeginShowAd = L1_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "ads.lua:onExpandableAdReady"
  L0_2(L1_2)
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = _G
  L0_2 = L0_2.assert
  L1_2 = burstlyAdsDisabled
  L1_2 = L1_2()
  L1_2 = not L1_2
  L0_2(L1_2)
  L0_2 = ExpandableAdManager
  L0_2 = L0_2.showState
  L1_2 = AdShowState
  L1_2 = L1_2.Invisible
  if L0_2 ~= L1_2 then
    L0_2 = print
    L1_2 = "ads.lua: DEBUG: onExpandableAdReady called but ExpandableAdManager.showState is "
    L2_2 = ExpandableAdManager
    L2_2 = L2_2.showState
    L1_2 = L1_2 .. L2_2
    L0_2(L1_2)
  end
  L0_2 = ExpandableAdManager
  L1_2 = AdShowState
  L1_2 = L1_2.Invisible
  L0_2.showState = L1_2
  L0_2 = ExpandableAdManager
  L1_2 = AdRequestState
  L1_2 = L1_2.Ready
  L0_2.requestState = L1_2
end

onExpandableAdReady = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "ads.lua:onExpandableAdShowRequestFailed"
  L0_2(L1_2)
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = _G
  L0_2 = L0_2.assert
  L1_2 = burstlyAdsDisabled
  L1_2 = L1_2()
  L1_2 = not L1_2
  L0_2(L1_2)
  L0_2 = ExpandableAdManager
  L1_2 = AdRequestState
  L1_2 = L1_2.Failed
  L0_2.requestState = L1_2
  L0_2 = ExpandableAdManager
  L1_2 = AdShowState
  L1_2 = L1_2.Invisible
  L0_2.showState = L1_2
  L0_2 = false
  disableRovioNews = L0_2
end

onExpandableAdShowRequestFailed = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = true
  disableRovioNews = L0_2
  L0_2 = true
  disableBackButton = L0_2
  L0_2 = print
  L1_2 = "ads.lua:onExpandableAdWillExpand"
  L0_2(L1_2)
  L0_2 = resetScoreOffset
  L0_2()
  L0_2 = pauseGame
  L0_2()
end

onExpandableAdWillExpand = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = print
  L1_2 = "ads.lua:onExpandableAdWasHidden"
  L0_2(L1_2)
  L0_2 = false
  disableRovioNews = L0_2
  L0_2 = false
  disableBackButton = L0_2
  L0_2 = resetScoreOffset
  L0_2()
  L0_2 = ExpandableAdManager
  L1_2 = AdShowState
  L1_2 = L1_2.Invisible
  L0_2.showState = L1_2
  L0_2 = ExpandableAdManager
  L1_2 = AdRequestState
  L1_2 = L1_2.NotRequested
  L0_2.requestState = L1_2
  L0_2 = gamePaused
  if L0_2 then
    L0_2 = resumeGame
    L0_2()
  end
end

onExpandableAdWasHidden = L0_1
L0_1 = ExpandableAdManager

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "ads.lua:ExpandableAdManager:checkHideAdImmediate()"
  L1_2(L2_2)
  L1_2 = A0_2.showState
  L2_2 = AdShowState
  L2_2 = L2_2.Visible
  if L1_2 == L2_2 then
    L1_2 = print
    L2_2 = "ads.lua:calling hideExpandableAd()"
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.hideExpandableAd
    L1_2()
    L1_2 = AdRequestState
    L1_2 = L1_2.NotRequested
    A0_2.requestState = L1_2
    L1_2 = false
    disableRovioNews = L1_2
  end
  L1_2 = AdShowState
  L1_2 = L1_2.Invisible
  A0_2.showState = L1_2
  L1_2 = resetScoreOffset
  L1_2()
end

L0_1.checkHideAdImmediate = L1_1
L0_1 = AdManager
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
InterstitialAdManager = L0_1
L0_1 = InterstitialAdManager
L0_1.name = "InterstitialAdManager"
L0_1 = InterstitialAdManager
L0_1.adTypeFlurry = "interstitial"
L0_1 = InterstitialAdManager
L0_1.scrollPeriod = 0.1
L0_1 = InterstitialAdManager
L0_1.scrollOutDelay = 0.1
L0_1 = InterstitialAdManager
L1_1 = getInterstitialMinimumDisplayInterval
L1_1 = L1_1()
L0_1.timeElapsed = L1_1
L0_1 = InterstitialAdManager
L1_1 = AdRequestState
L1_1 = L1_1.Requested
L0_1.requestState = L1_1
L0_1 = InterstitialAdManager
L1_1 = gamelua
L1_1 = L1_1.requestInterstitialAd
L0_1.requestAd = L1_1
L0_1 = InterstitialAdManager
L1_1 = gamelua
L1_1 = L1_1.showInterstitialAd
L0_1.showAd = L1_1
L0_1 = InterstitialAdManager
L1_1 = getInterstitialMinimumDisplayInterval
L0_1.getMinimumDisplayInterval = L1_1
L0_1 = InterstitialAdManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.Invisible
  if L2_2 == L3_2 then
    return
  end
  L2_2 = nil
  L3_2 = A0_2.scrollProgress
  if L3_2 <= 1 then
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.cos
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.pi
    L5_2 = A0_2.scrollProgress
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2(L4_2)
    L3_2 = 1 - L3_2
    L2_2 = 0.5 * L3_2
  else
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.cos
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.pi
    L5_2 = A0_2.scrollProgress
    L5_2 = L5_2 - 1
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2(L4_2)
    L3_2 = 1 + L3_2
    L2_2 = 0.5 * L3_2
  end
  L3_2 = screenWidth
  L4_2 = scaledAdScreenWidth
  L4_2 = 0.5 * L4_2
  L3_2 = L3_2 + L4_2
  L4_2 = screenWidth
  L5_2 = scaledAdScreenWidth
  L4_2 = L4_2 + L5_2
  L4_2 = 0.5 * L4_2
  L4_2 = L4_2 * L2_2
  L3_2 = L3_2 - L4_2
  L4_2 = renderSprite
  L5_2 = adScreenSpriteName
  L6_2 = L3_2
  L7_2 = screenHeight
  L7_2 = 0.5 * L7_2
  L8_2 = adScreenScaleX
  L9_2 = adScreenScaleY
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = scaledAdScreenWidth
  L4_2 = L4_2 * 0.485
  L4_2 = L3_2 - L4_2
  L5_2 = screenHeight
  L5_2 = 0.35 * L5_2
  L6_2 = scaledAdScreenWidth
  L6_2 = 0.01 * L6_2
  L6_2 = L4_2 - L6_2
  L7_2 = screenHeight
  L7_2 = 0.45 * L7_2
  L8_2 = scaledAdScreenWidth
  L8_2 = 0.02 * L8_2
  L8_2 = L4_2 + L8_2
  L9_2 = screenHeight
  L9_2 = 0.55 * L9_2
  L10_2 = renderSprite
  L11_2 = adScreenPigSpriteName
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = 0.5
  L15_2 = 0.5
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = renderSprite
  L11_2 = adScreenPigSpriteName
  L12_2 = L6_2
  L13_2 = L7_2
  L14_2 = 0.5
  L15_2 = 0.5
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = renderSprite
  L11_2 = adScreenPigSpriteName
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = 0.5
  L15_2 = 0.5
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
end

L0_1.drawUpdate = L1_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = gamelua
  L5_2 = L5_2.setRenderState
  L6_2 = A1_2 / A3_2
  L7_2 = A2_2 / A4_2
  L8_2 = A3_2
  L9_2 = A4_2
  L10_2 = 0
  L11_2 = _G
  L11_2 = L11_2.res
  L11_2 = L11_2.getSpritePivot
  L12_2 = A0_2
  L11_2, L12_2 = L11_2(L12_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.drawSprite
  L6_2 = A0_2
  L7_2 = 0
  L8_2 = 0
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = gamelua
  L5_2 = L5_2.setRenderState
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1
  L9_2 = 1
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

renderSprite = L0_1
L0_1 = false
disableAutoPauseMenu = L0_1
L0_1 = InterstitialAdManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = interstitialFrameInitialized
  if not L2_2 then
    L2_2 = _G
    L2_2 = L2_2.res
    L2_2 = L2_2.getSpriteBounds
    L3_2 = adScreenSpriteName
    L2_2, L3_2 = L2_2(L3_2)
    if 0 < L2_2 and 0 < L3_2 then
      L4_2 = initializeInterstitialFrame
      L4_2()
    else
      return
    end
  end
  L2_2 = A0_2.timeElapsed
  L2_2 = L2_2 + A1_2
  A0_2.timeElapsed = L2_2
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.ScrollingIn
  if L2_2 == L3_2 then
    L2_2 = A0_2.timeElapsed
    L3_2 = A0_2.scrollPeriod
    if L2_2 < L3_2 then
      L2_2 = A0_2.timeElapsed
      L3_2 = A0_2.scrollPeriod
      L2_2 = L2_2 / L3_2
      A0_2.scrollProgress = L2_2
    else
      A0_2.scrollProgress = 1
      L2_2 = checkCancelBirdDrag
      L2_2()
      L2_2 = true
      disableAutoPauseMenu = L2_2
      L2_2 = A0_2.showAd
      L2_2()
      L2_2 = AdShowState
      L2_2 = L2_2.Visible
      A0_2.showState = L2_2
      A0_2.timeElapsed = 0
    end
  else
    L2_2 = A0_2.showState
    L3_2 = AdShowState
    L3_2 = L3_2.Visible
    if L2_2 == L3_2 then
      L2_2 = _G
      L2_2 = L2_2.assert
      L3_2 = A0_2.scrollProgress
      L3_2 = L3_2 == 1
      L2_2(L3_2)
      L2_2 = AdShowState
      L2_2 = L2_2.ScrollingOutDelay
      A0_2.showState = L2_2
    else
      L2_2 = A0_2.showState
      L3_2 = AdShowState
      L3_2 = L3_2.ScrollingOutDelay
      if L2_2 == L3_2 then
        A0_2.scrollProgress = 1
        L2_2 = gamePaused
        if L2_2 then
          A0_2.timeElapsed = 0
        else
          L2_2 = A0_2.timeElapsed
          L3_2 = A0_2.scrollOutDelay
          if L2_2 >= L3_2 then
            L2_2 = AdShowState
            L2_2 = L2_2.ScrollingOut
            A0_2.showState = L2_2
            A0_2.timeElapsed = 0
            L2_2 = false
            disableAutoPauseMenu = L2_2
          end
        end
      else
        L2_2 = A0_2.showState
        L3_2 = AdShowState
        L3_2 = L3_2.ScrollingOut
        if L2_2 == L3_2 then
          L2_2 = A0_2.timeElapsed
          L3_2 = A0_2.scrollPeriod
          if L2_2 < L3_2 then
            L2_2 = A0_2.timeElapsed
            L3_2 = A0_2.scrollPeriod
            L2_2 = L2_2 / L3_2
            L2_2 = 1 + L2_2
            A0_2.scrollProgress = L2_2
          else
            L2_2 = AdShowState
            L2_2 = L2_2.Invisible
            A0_2.showState = L2_2
            L2_2 = AdRequestState
            L2_2 = L2_2.NotRequested
            A0_2.requestState = L2_2
            A0_2.scrollProgress = 0
            L2_2 = false
            disableRovioNews = L2_2
          end
        else
          L2_2 = A0_2.timeSinceLastAdDisplayed
          L2_2 = L2_2 + A1_2
          A0_2.timeSinceLastAdDisplayed = L2_2
        end
      end
    end
  end
end

L0_1.frameUpdate = L1_1
L0_1 = InterstitialAdManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.requestState
  L3_2 = AdRequestState
  L3_2 = L3_2.Ready
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.assert
  L2_2 = A0_2.showState
  L3_2 = AdShowState
  L3_2 = L3_2.Invisible
  L2_2 = L2_2 == L3_2
  L1_2(L2_2)
  L1_2 = print
  L2_2 = "ads.lua:InterstitialAdManager:beginShowAd"
  L1_2(L2_2)
  L1_2 = AdShowState
  L1_2 = L1_2.ScrollingIn
  A0_2.showState = L1_2
  A0_2.timeElapsed = 0
  A0_2.scrollProgress = 0
  L1_2 = true
  disableRovioNews = L1_2
end

L0_1.beginShowAd = L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = print
  L1_2 = "ads.lua:onInterstitialAdIsDisplayed"
  L0_2(L1_2)
  L0_2 = pauseGame
  L0_2()
end

onInterstitialAdIsDisplayed = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = print
  L1_2 = "ads.lua:onInterstitialAdHidden"
  L0_2(L1_2)
  L0_2 = false
  disableRovioNews = L0_2
  L0_2 = false
  disableBackButton = L0_2
  L0_2 = gamePaused
  if L0_2 then
    L0_2 = resumeGame
    L0_2()
  end
end

onInterstitialAdWasHidden = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = burstlyAdsDisabled
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  if A0_2 then
    L1_2 = print
    L2_2 = "ads.lua:onInterstitialAdRequestCompleted: Succesful\n"
    L1_2(L2_2)
    L1_2 = InterstitialAdManager
    L2_2 = AdRequestState
    L2_2 = L2_2.Ready
    L1_2.requestState = L2_2
  else
    L1_2 = print
    L2_2 = "ads.lua:onInterstitialAdRequestCompleted: Failed\n"
    L1_2(L2_2)
    L1_2 = InterstitialAdManager
    L2_2 = AdRequestState
    L2_2 = L2_2.Failed
    L1_2.requestState = L2_2
  end
end

onInterstitialAdRequestCompleted = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.g_AdsSupported
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = gamelua
  L0_2 = L0_2.deviceModel
  if L0_2 == "android" then
    L0_2 = gamelua
    L0_2 = L0_2.isPremium
    if not L0_2 then
      L0_2 = true
      return L0_2
  end
  else
    L0_2 = gamelua
    L0_2 = L0_2.isIOSFree
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = true
      return L0_2
    end
  end
  L0_2 = false
  return L0_2
end

burstlyAdsEnabled = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsEnabled
  L0_2 = L0_2()
  L0_2 = not L0_2
  return L0_2
end

burstlyAdsDisabled = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsEnabled
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = gamelua
    L0_2 = L0_2.isIapEnabled
    L0_2 = L0_2()
  end
  return L0_2
end

areAdsRemovable = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = burstlyAdsDisabled
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L1_2 = queuePauseGame
  if L1_2 then
    L1_2 = false
    queuePauseGame = L1_2
    L1_2 = pauseGameImpl
    L1_2()
  end
  L1_2 = queueResumeGame
  if L1_2 then
    L1_2 = false
    queueResumeGame = L1_2
    L1_2 = resumeGameImpl
    L1_2()
  end
  L1_2 = BannerAdManager
  L2_2 = L1_2
  L1_2 = L1_2.frameUpdate
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = ExpandableAdManager
  L2_2 = L1_2
  L1_2 = L1_2.frameUpdate
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = InterstitialAdManager
  L2_2 = L1_2
  L1_2 = L1_2.frameUpdate
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

frameUpdate = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = BannerAdManager
  L1_2 = L0_2
  L0_2 = L0_2.drawUpdate
  L0_2(L1_2)
  L0_2 = ExpandableAdManager
  L1_2 = L0_2
  L0_2 = L0_2.drawUpdate
  L0_2(L1_2)
  L0_2 = InterstitialAdManager
  L1_2 = L0_2
  L0_2 = L0_2.drawUpdate
  L0_2(L1_2)
end

drawUpdate = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = burstlyAdsDisabled
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = BannerAdManager
  L1_2 = L0_2
  L0_2 = L0_2.checkHideAdImmediate
  L0_2(L1_2)
end

androidBackButtonInvoked = L0_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
UpsellScreenManager = L0_1
L0_1 = UpsellScreenManager
L0_1.showUpsellTimer = 0
L0_1 = gamelua
L0_1 = L0_1.releaseBuild
if not L0_1 then
  L0_1 = UpsellScreenManager
  L0_1.SHOW_UPSELL_DELAY = 10
else
  L0_1 = UpsellScreenManager
  L0_1.SHOW_UPSELL_DELAY = 180
end
L0_1 = UpsellScreenManager

function L1_1(A0_2)
  local L1_2
  L1_2 = UpsellScreenManager
  L1_2 = L1_2.SHOW_UPSELL_DELAY
  A0_2.showUpsellTimer = L1_2
end

L0_1.resetTimer = L1_1
L0_1 = UpsellScreenManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.resetTimer
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CLOSE_UPSELL_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.init = L1_1
L0_1 = UpsellScreenManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.disableAdManagers
  L1_2()
  L1_2 = gamelua
  L1_2 = L1_2.ads
  L1_2 = L1_2.checkCancelBirdDrag
  L1_2()
  L1_2 = gamelua
  L1_2 = L1_2.isInGameMode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.disableGameUpdate
    L1_2()
  end
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_PUSH_FRAME
  L3_2.id = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.TimedGetFullVersionPage
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L3_2.target = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_SHOW_TIMED_BUY_FREE_IOS_VERSION_POPUP
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.showUpsellScreen = L1_1
L0_1 = UpsellScreenManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.showUpsellTimer
  L3_2 = L3_2 - A1_2
  A0_2.showUpsellTimer = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.ads
  L3_2 = L3_2.anyKindOfAdEnabled
  if L3_2 then
    L3_2 = A0_2.showUpsellTimer
    if L3_2 < 0 then
      L3_2 = gamelua
      L3_2 = L3_2.isTutorialShown
      L3_2 = L3_2()
      if not L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.isTimedGetFullVersionPageShown
        L3_2 = L3_2()
        if not L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.isGetFullVersionPageShown
          L3_2 = L3_2()
          if not L3_2 then
            L3_2 = isPausePageVisible
            L3_2 = L3_2()
            if not L3_2 then
              L3_2 = gamelua
              L3_2 = L3_2.ads
              L3_2 = L3_2.isAdShown
              L3_2 = L3_2()
              if not L3_2 then
                L4_2 = A0_2
                L3_2 = A0_2.showUpsellScreen
                L3_2(L4_2)
              end
            end
          end
        end
      end
    end
  end
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = UpsellScreenManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_CLOSE_UPSELL_POPUP
  if L2_2 == L3_2 then
    L2_2 = gamelua
    L2_2 = L2_2.isInGameMode
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.isPausePageVisible
      L2_2 = L2_2()
      if not L2_2 then
        L2_2 = gamelua
        L2_2 = L2_2.enableGameUpdate
        L2_2()
      end
    end
    L2_2 = gamelua
    L2_2 = L2_2.ads
    L2_2 = L2_2.reEnableAdManagers
    L2_2()
    L3_2 = A0_2
    L2_2 = A0_2.resetTimer
    L2_2(L3_2)
  end
end

L0_1.eventTriggered = L1_1
