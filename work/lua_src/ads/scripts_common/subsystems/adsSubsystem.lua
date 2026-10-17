local L0_1, L1_1, L2_1
L0_1 = subsystems
L0_1 = L0_1.SubSystem
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
AdsSubSystem = L0_1
L0_1 = 0.7
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem: init()"
  L1_2(L2_2)
  A0_2.defaultBannerWidth = 0
  A0_2.defaultBannerHeight = 0
  L2_2 = A0_2
  L1_2 = A0_2.resetFade
  L1_2(L2_2)
  A0_2.newsCreated = false
  A0_2.expandableExpanded = false
  A0_2.isAdVisible = false
  A0_2.rovioNewsPlacementVisible = false
  L2_2 = A0_2
  L1_2 = A0_2.addEventListeners
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.addPlacements
  L1_2(L2_2)
end

L1_1.init = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.defaultBannerWidth
  A0_2.bannerWidth = L1_2
  L1_2 = A0_2.defaultBannerHeight
  A0_2.bannerHeight = L1_2
  L1_2 = print
  L2_2 = "reset banner size to "
  L3_2 = A0_2.bannerWidth
  L4_2 = "x"
  L5_2 = A0_2.bannerHeight
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
end

L1_1.resetBannerSize = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "AdsSubSystem: addEventListeners"
  L1_2(L2_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MAIN_MENU_ENTERED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MENUMANAGER_ROOT_CHANGED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_GAME_INITIALIZED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSE_PAGE_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_TELEPOD_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSE_PAGE_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSE_PAGE_HIDE_COMPLETED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_RESTART_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_WILL_END
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_TUTORIAL_VIEWED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_LOADING_DONE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MAIN_MENU_AD_READY_TO_BE_SHOWN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_FULLSCREEN_AD_SHOWING
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_TUTORIAL_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L1_1.addEventListeners = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = screenWidth
  L1_2 = L1_2 / 320
  L1_2 = 320 * L1_2
  A0_2.defaultBannerWidth = L1_2
  L1_2 = screenHeight
  L1_2 = L1_2 / 320
  L1_2 = 160 * L1_2
  A0_2.defaultBannerHeight = L1_2
  L1_2 = print
  L2_2 = "defaultBannerWidth: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2.defaultBannerWidth
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = print
  L2_2 = "defaultBannerHeight: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2.defaultBannerHeight
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = subsystemsapi
  L2_2 = L1_2
  L1_2 = L1_2.isAndroid
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 and L2_2 then
    A0_2.bannerHeight = 160
  else
    L3_2 = deviceModel
    if L3_2 ~= "iphone" then
      L3_2 = deviceModel
      if L3_2 ~= "ipad" then
        goto lbl_60
      end
    end
    A0_2.defaultBannerWidth = 320
    A0_2.defaultBannerHeight = 170
    L3_2 = deviceModel
    if L3_2 == "iphone" then
      L3_2 = screenWidth
      if 960 <= L3_2 then
        goto lbl_54
      end
    end
    L3_2 = deviceModel
    if L3_2 == "ipad" then
      L3_2 = screenWidth
      ::lbl_54::
      if 2048 <= L3_2 then
        L3_2 = A0_2.defaultBannerWidth
        L3_2 = L3_2 * 2
        A0_2.defaultBannerWidth = L3_2
        L3_2 = A0_2.defaultBannerHeight
        L3_2 = L3_2 * 2
        A0_2.defaultBannerHeight = L3_2
      end
    end
  end
  ::lbl_60::
  L4_2 = A0_2
  L3_2 = A0_2.resetBannerSize
  L3_2(L4_2)
end

L1_1.initBannerSize = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = _G
  L2_2 = L2_2.RovioAds
  if L2_2 == nil then
    return
  end
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_GAME_INITIALIZED
  if L2_2 == L3_2 then
    L2_2 = A1_2.screenWidth
    L2_2 = L2_2 / 320
    L2_2 = 320 * L2_2
    A0_2.defaultBannerWidth = L2_2
    L2_2 = A1_2.screenHeight
    L2_2 = L2_2 / 320
    L2_2 = 48 * L2_2
    A0_2.defaultBannerHeight = L2_2
    L2_2 = print
    L3_2 = "defaultBannerWidth: "
    L4_2 = _G
    L4_2 = L4_2.tostring
    L5_2 = A0_2.defaultBannerWidth
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = print
    L3_2 = "defaultBannerHeight: "
    L4_2 = _G
    L4_2 = L4_2.tostring
    L5_2 = A0_2.defaultBannerHeight
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = subsystemsapi
    L3_2 = L2_2
    L2_2 = L2_2.isAndroid
    L2_2, L3_2 = L2_2(L3_2)
    if L2_2 and L3_2 then
      A0_2.bannerHeight = 48
    else
      L4_2 = deviceModel
      if L4_2 ~= "iphone" then
        L4_2 = deviceModel
        if L4_2 ~= "ipad" then
          goto lbl_70
        end
      end
      A0_2.defaultBannerWidth = 320
      A0_2.defaultBannerHeight = 50
      L4_2 = deviceModel
      if L4_2 == "iphone" then
        L4_2 = screenWidth
        if 960 <= L4_2 then
          goto lbl_64
        end
      end
      L4_2 = deviceModel
      if L4_2 == "ipad" then
        L4_2 = screenWidth
        ::lbl_64::
        if 2048 <= L4_2 then
          L4_2 = A0_2.defaultBannerWidth
          L4_2 = L4_2 * 2
          A0_2.defaultBannerWidth = L4_2
          L4_2 = A0_2.defaultBannerHeight
          L4_2 = L4_2 * 2
          A0_2.defaultBannerHeight = L4_2
        end
      end
    end
    ::lbl_70::
    L5_2 = A0_2
    L4_2 = A0_2.resetBannerSize
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.addPlacements
    L4_2(L5_2)
  else
    L2_2 = A1_2.id
    L3_2 = events
    L3_2 = L3_2.EID_MAIN_MENU_ENTERED
    if L2_2 == L3_2 then
      L2_2 = _G
      L2_2 = L2_2.RovioAds
      L2_2 = L2_2.trackConversion
      L2_2()
      L2_2 = A1_2.firstEntrance
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.initBannerSize
        L2_2(L3_2)
        L2_2 = _G
        L2_2 = L2_2.res
        L2_2 = L2_2.getSpriteBounds
        L3_2 = "MENU_PAUSE_BG_DARK"
        L2_2 = L2_2(L3_2)
        L2_2 = L2_2 + 50
        L3_2 = getUIScale
        L3_2 = L3_2()
        L2_2 = L2_2 * L3_2
        L4_2 = A0_2
        L3_2 = A0_2.initRovioNews
        L5_2 = L2_2
        L6_2 = 0
        L7_2 = screenWidth
        L7_2 = L7_2 - L2_2
        L8_2 = screenHeight
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      end
    else
      L2_2 = A1_2.id
      L3_2 = events
      L3_2 = L3_2.EID_PAUSE_PAGE_OPENED
      if L2_2 ~= L3_2 then
        L2_2 = A1_2.id
        L3_2 = events
        L3_2 = L3_2.EID_SHOP_OPENED
        if L2_2 ~= L3_2 then
          L2_2 = A1_2.id
          L3_2 = events
          L3_2 = L3_2.EID_TELEPOD_OPENED
          if L2_2 ~= L3_2 then
            L2_2 = A1_2.id
            L3_2 = events
            L3_2 = L3_2.EID_CHARACTER_MENU_OPENED
            if L2_2 ~= L3_2 then
              L2_2 = A1_2.id
              L3_2 = events
              L3_2 = L3_2.EID_TUTORIAL_OPENED
              if L2_2 ~= L3_2 then
                goto lbl_135
              end
            end
          end
        end
      end
      A0_2.rovioNewsPlacementVisible = true
      L3_2 = A0_2
      L2_2 = A0_2.hideAd
      L2_2(L3_2)
      goto lbl_229
      ::lbl_135::
      L2_2 = A1_2.id
      L3_2 = events
      L3_2 = L3_2.EID_PAUSE_PAGE_CLOSED
      if L2_2 ~= L3_2 then
        L2_2 = A1_2.id
        L3_2 = events
        L3_2 = L3_2.EID_LEVEL_RESTART_CLICKED
        if L2_2 ~= L3_2 then
          L2_2 = A1_2.id
          L3_2 = events
          L3_2 = L3_2.EID_TUTORIAL_VIEWED
          if L2_2 ~= L3_2 then
            goto lbl_152
          end
        end
      end
      A0_2.rovioNewsPlacementVisible = false
      goto lbl_229
      ::lbl_152::
      L2_2 = A1_2.id
      L3_2 = events
      L3_2 = L3_2.EID_PAUSE_PAGE_HIDE_COMPLETED
      if L2_2 == L3_2 then
        L2_2 = canShowAd
        L2_2 = L2_2()
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.showBanner
          L2_2(L3_2)
        end
      else
        L2_2 = A1_2.id
        L3_2 = events
        L3_2 = L3_2.EID_LEVEL_LOADING_DONE
        if L2_2 == L3_2 then
          L2_2 = _G
          L2_2 = L2_2.RovioAds
          L2_2 = L2_2.startSession
          L2_2()
          L2_2 = canShowAd
          L2_2 = L2_2()
          if L2_2 then
            L3_2 = A0_2
            L2_2 = A0_2.showExpandable
            L2_2 = L2_2(L3_2)
            if not L2_2 then
              L3_2 = A0_2
              L2_2 = A0_2.showInterstitial
              L2_2(L3_2)
            end
          end
        else
          L2_2 = A1_2.id
          L3_2 = events
          L3_2 = L3_2.EID_LEVEL_WILL_END
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2.hideAd
            L2_2(L3_2)
          else
            L2_2 = A1_2.id
            L3_2 = events
            L3_2 = L3_2.EID_MAIN_MENU_AD_READY_TO_BE_SHOWN
            if L2_2 == L3_2 then
              L2_2 = print
              L3_2 = "AdsSubSystem - MAIN MENU AD READY TO BE SHOWN"
              L2_2(L3_2)
              A0_2.mainMenuAdReady = true
            else
              L2_2 = A1_2.id
              L3_2 = events
              L3_2 = L3_2.EID_FULLSCREEN_AD_DISMISSED
              if L2_2 == L3_2 then
                L2_2 = enableGameUpdate
                L2_2()
                L2_2 = setEffectsVolume
                L3_2 = 1
                L2_2(L3_2)
                L2_2 = setMusicVolume
                L3_2 = 1
                L2_2(L3_2)
              else
                L2_2 = A1_2.id
                L3_2 = events
                L3_2 = L3_2.EID_FULLSCREEN_AD_SHOWING
                if L2_2 == L3_2 then
                  L2_2 = disableGameUpdate
                  L2_2()
                  L2_2 = setEffectsVolume
                  L3_2 = 0
                  L2_2(L3_2)
                  L2_2 = setMusicVolume
                  L3_2 = 0
                  L2_2(L3_2)
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_229::
end

L1_1.eventTriggered = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdSubsystem: addPlacements()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.addPlacementNative
  L2_2 = "MainMenuPopup"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.addPlacementNative
  L2_2 = "InGameNative.NativeCrosspromo"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.addPlacement
  L2_2 = "RewardVideo.Extracoins"
  L1_2(L2_2)
  L1_2 = useCarboniteAds
  if L1_2 then
    L1_2 = print
    L2_2 = "Asking for RewardVideo placement"
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.RovioAds
    L1_2 = L1_2.addPlacement
    L2_2 = "RewardVideo"
    L1_2(L2_2)
  end
  L1_2 = haveInGameAds
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = deviceModel
    if L1_2 == "ios" then
      L1_2 = showIOSAds
      L1_2 = L1_2()
      if L1_2 then
        L1_2 = print
        L2_2 = "AdSubSystem: addPlacements() - adding interstitial for iOS"
        L1_2(L2_2)
        L1_2 = _G
        L1_2 = L1_2.RovioAds
        L1_2 = L1_2.addPlacement
        L2_2 = "LevelStartInterstitial"
        L1_2(L2_2)
      else
        L1_2 = print
        L2_2 = "AdSubSystem: addPlacements() - not showing ads on iOS"
        L1_2(L2_2)
      end
    else
      L1_2 = print
      L2_2 = "AdSubSystem: addPlacements() - adding ingame ads"
      L1_2(L2_2)
      L1_2 = _G
      L1_2 = L1_2.RovioAds
      L1_2 = L1_2.addPlacement
      L2_2 = "LevelStartInterstitial"
      L1_2(L2_2)
      L1_2 = _G
      L1_2 = L1_2.RovioAds
      L1_2 = L1_2.addPlacement
      L2_2 = "InGameBanner"
      L1_2(L2_2)
      L1_2 = _G
      L1_2 = L1_2.RovioAds
      L1_2 = L1_2.addPlacement
      L2_2 = "LevelStartExpandable"
      L1_2(L2_2)
    end
  end
end

L1_1.addPlacements = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = haveInGameAds
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.updateScoreOffset
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.rovioNewsPlacementVisible
  if L3_2 then
    L3_2 = isRovioNewsShowAllowed
    L3_2 = L3_2()
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.showRovioNews
      L3_2(L4_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2.hideRovioNews
    L3_2(L4_2)
  end
  L3_2 = menuManager
  L4_2 = L3_2
  L3_2 = L3_2.getRoot
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.getChild
  L5_2 = "mainMenu"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L3_2 = g_showingNativeLoginUI
    if not L3_2 then
      L3_2 = g_blockMainMenuAd
      if not L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.showMainMenuPopup
        L3_2(L4_2)
        L4_2 = A0_2
        L3_2 = A0_2.showInGameNative
        L3_2(L4_2)
      end
    end
  end
end

L1_1.update = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.fadeScoreDown
  L1_2(L2_2)
end

L1_1.startScoreFadeAnimation = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2
  A0_2.adFadeState = "FADING_DOWN"
  L1_2 = L0_1
  A0_2.adFadeTimer = L1_2
end

L1_1.fadeScoreDown = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2
  A0_2.adFadeState = "DOWN"
end

L1_1.holdScoreDown = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2
  A0_2.adFadeState = "FADING_UP"
  L1_2 = L0_1
  A0_2.adFadeTimer = L1_2
end

L1_1.fadeScoreUp = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2
  A0_2.adFadeState = ""
  A0_2.adFadeTimer = nil
  A0_2.isAdVisible = false
end

L1_1.resetFade = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.hideExpandable
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.hideBanner
  L1_2(L2_2)
end

L1_1.hideAd = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.adFadeTimer
  if L3_2 then
    L3_2 = A0_2.adFadeTimer
    L3_2 = L3_2 - A1_2
    A0_2.adFadeTimer = L3_2
    L3_2 = A0_2.adFadeTimer
    if L3_2 <= 0 then
      L3_2 = A0_2.adFadeState
      if L3_2 == "FADING_DOWN" then
        L4_2 = A0_2
        L3_2 = A0_2.holdScoreDown
        L3_2(L4_2)
      else
        L3_2 = A0_2.adFadeState
        if L3_2 == "FADING_UP" then
          L4_2 = A0_2
          L3_2 = A0_2.resetFade
          L3_2(L4_2)
        end
      end
    end
  end
  L3_2 = A0_2.adFadeState
  if L3_2 == "FADING_DOWN" then
    L3_2 = A0_2.adFadeTimer
    if L3_2 ~= nil then
      L3_2 = A0_2.bannerHeight
      L4_2 = A0_2.adFadeTimer
      L5_2 = L0_1
      L4_2 = L4_2 / L5_2
      L5_2 = A0_2.bannerHeight
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 - L4_2
      A0_2.scoreAdOffsetY = L3_2
  end
  else
    L3_2 = A0_2.adFadeState
    if L3_2 == "DOWN" then
      L3_2 = A0_2.scoreAdOffsetY
      L4_2 = A0_2.bannerHeight
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.bannerHeight
        A0_2.scoreAdOffsetY = L3_2
      end
    else
      L3_2 = A0_2.adFadeState
      if L3_2 == "FADING_UP" then
        L3_2 = A0_2.adFadeTimer
        if L3_2 ~= nil then
          L3_2 = A0_2.bannerHeight
          L4_2 = A0_2.adFadeTimer
          L3_2 = L3_2 * L4_2
          A0_2.scoreAdOffsetY = L3_2
      end
      else
        L3_2 = A0_2.scoreAdOffsetY
        if L3_2 ~= 0 then
          A0_2.scoreAdOffsetY = 0
        end
      end
    end
  end
end

L1_1.updateScoreOffset = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.scoreAdOffsetY
  return L1_2
end

L1_1.getScoreAdYOffset = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:showBanner()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.show
  L2_2 = "InGameBanner"
  L1_2(L2_2)
end

L1_1.showBanner = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:hideBanner()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.hide
  L2_2 = "InGameBanner"
  L1_2(L2_2)
end

L1_1.hideBanner = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:showExpandable()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.show
  L2_2 = "LevelStartExpandable"
  return L1_2(L2_2)
end

L1_1.showExpandable = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:hideExpandable()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.hide
  L2_2 = "LevelStartExpandable"
  L1_2(L2_2)
end

L1_1.hideExpandable = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.nativeShown
  if L1_2 ~= false then
    A0_2.nativeShown = false
    L1_2 = print
    L2_2 = "AdsSubSystem:showInGameNative()"
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.RovioAds
    L1_2 = L1_2.show
    L2_2 = "InGameNative.NativeCrosspromo"
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.RovioAds
    L1_2 = L1_2.wasSuccessfullyShown
    L2_2 = "InGameNative.NativeCrosspromo"
    L1_2(L2_2)
  end
end

L1_1.showInGameNative = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = deviceModel
  if L1_2 == "ios" then
    L1_2 = showIOSAds
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = print
      L2_2 = "AdsSubSystem:showInterstitial() - Ads disabled mid session"
      L1_2(L2_2)
      return
    end
  end
  L1_2 = deviceModel
  if L1_2 == "android" then
    L1_2 = showAndroidAds
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = print
      L2_2 = "AdsSubSystem:showInterstitial() - Ads disabled mid session"
      L1_2(L2_2)
      return
    end
  end
  L1_2 = print
  L2_2 = "AdsSubSystem:showInterstitial()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.show
  L2_2 = "LevelStartInterstitial"
  return L1_2(L2_2)
end

L1_1.showInterstitial = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:showRewardVideo()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.show
  L2_2 = "RewardVideo"
  return L1_2(L2_2)
end

L1_1.showRewardVideo = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:showLevelEndRewardVideo()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.show
  L2_2 = "RewardVideo.Extracoins"
  return L1_2(L2_2)
end

L1_1.showLevelEndRewardVideo = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2.newsCreated
  if L5_2 then
    return
  end
  L5_2 = print
  L6_2 = "AdsSubSystem:initRovioNews()"
  L5_2(L6_2)
  L5_2 = _G
  L5_2 = L5_2.RovioAds
  L5_2 = L5_2.addPlacementWithGeometry
  L6_2 = "NewsFeed.Xp"
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.newsCreated = true
  L5_2 = g_rovionews_allowed
  if L5_2 == nil then
    L5_2 = true
    g_rovionews_allowed = L5_2
  end
end

L1_1.initRovioNews = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.newsCreated
  if not L1_2 then
    return
  end
  L1_2 = A0_2.rovioNewsShowing
  if not L1_2 then
    L1_2 = print
    L2_2 = "AdsSubSystem:showRovioNews()"
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.RovioAds
    L1_2 = L1_2.show
    L2_2 = "NewsFeed.Xp"
    L1_2(L2_2)
    A0_2.rovioNewsShowing = true
  end
end

L1_1.showRovioNews = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2
  L1_2 = adSystem
  L1_2 = L1_2.mainMenuAdShowing
  if not L1_2 then
    L1_2 = adSystem
    L1_2 = L1_2.isAdVisible
  end
  return L1_2
end

L1_1.isAdShowing = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.newsCreated
  if not L1_2 then
    return
  end
  L1_2 = A0_2.rovioNewsShowing
  if L1_2 then
    L1_2 = print
    L2_2 = "AdsSubSystem:hideRovioNews()"
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.RovioAds
    L1_2 = L1_2.hide
    L2_2 = "NewsFeed.Xp"
    L1_2(L2_2)
    A0_2.rovioNewsShowing = false
  end
end

L1_1.hideRovioNews = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "AdsSubSystem: isExpandableExpanded() : "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2.expandableExpanded
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.expandableExpanded
  return L1_2
end

L1_1.isExpandableExpanded = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:clickPopup()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.click
  L2_2 = "MainMenuPopup"
  L1_2(L2_2)
end

L1_1.clickPopup = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "AdsSubSystem:hidePopup()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.hide
  L2_2 = "MainMenuPopup"
  L1_2(L2_2)
end

L1_1.hidePopup = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = print
  L3_2 = "RovioAds.lua: onAdStateChanged "
  L4_2 = A0_2
  L5_2 = " state "
  L6_2 = A1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  if A1_2 == "hidden" then
    L2_2 = adSystem
    L2_2.adShown = false
    if A0_2 == "InGameBanner" then
      L2_2 = adSystem
      L3_2 = L2_2
      L2_2 = L2_2.fadeScoreUp
      L2_2(L3_2)
      L2_2 = adSystem
      L3_2 = L2_2
      L2_2 = L2_2.resetBannerSize
      L2_2(L3_2)
    elseif A0_2 == "LevelStartExpandable" then
      L2_2 = adSystem
      L2_2 = L2_2.expandableExpanded
      if L2_2 then
        L2_2 = eventManager
        L3_2 = L2_2
        L2_2 = L2_2.notify
        L4_2 = {}
        L5_2 = events
        L5_2 = L5_2.EID_FULLSCREEN_AD_DISMISSED
        L4_2.id = L5_2
        L2_2(L3_2, L4_2)
      end
      L2_2 = adSystem
      L3_2 = L2_2
      L2_2 = L2_2.fadeScoreUp
      L2_2(L3_2)
      L2_2 = adSystem
      L3_2 = L2_2
      L2_2 = L2_2.resetBannerSize
      L2_2(L3_2)
      L2_2 = adSystem
      L2_2.expandableExpanded = false
      L2_2 = canShowAd
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = adSystem
        L3_2 = L2_2
        L2_2 = L2_2.showBanner
        L2_2(L3_2)
      end
    elseif A0_2 == "LevelStartInterstitial" then
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_FULLSCREEN_AD_DISMISSED
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
      L2_2 = canShowAd
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = adSystem
        L3_2 = L2_2
        L2_2 = L2_2.showBanner
        L2_2(L3_2)
      end
    else
      L2_2 = useCarboniteAds
      if L2_2 and A0_2 == "RewardVideo" then
        L2_2 = _G
        L2_2 = L2_2.RovioAds
        L2_2 = L2_2.refresh
        L3_2 = "RewardVideo"
        L2_2(L3_2)
      elseif A0_2 == "RewardVideo.Extracoins" then
        L2_2 = _G
        L2_2 = L2_2.RovioAds
        L2_2 = L2_2.refresh
        L3_2 = "RewardVideo.Extracoins"
        L2_2(L3_2)
      end
    end
  elseif A1_2 == "shown" then
    if A0_2 == "InGameBanner" or A0_2 == "LevelStartExpandable" then
      L2_2 = adSystem
      L3_2 = L2_2
      L2_2 = L2_2.startScoreFadeAnimation
      L2_2(L3_2)
      L2_2 = adSystem
      L2_2.isAdVisible = true
    elseif A0_2 == "LevelStartInterstitial" then
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_FULLSCREEN_AD_SHOWING
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
    end
  elseif A1_2 == "ready" then
    L2_2 = useCarboniteAds
    if L2_2 and A0_2 == "RewardVideo" then
      L2_2 = true
      g_carboniteAdAvailable = L2_2
      L2_2 = print
      L3_2 = "notifying reward video is available"
      L2_2(L3_2)
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_REWARD_VIDEO_AVAILABLE
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
    elseif A0_2 == "RewardVideo.Extracoins" then
      L2_2 = true
      g_levelEndAdAvailable = L2_2
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_LEVEL_END_REWARD_VIDEO_AVAILABLE
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
    end
  elseif A1_2 == "expanded" then
    L2_2 = eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = events
    L5_2 = L5_2.EID_FULLSCREEN_AD_SHOWING
    L4_2.id = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = adSystem
    L2_2.expandableExpanded = true
  end
end

L1_1.adStateChanged = L2_1
L1_1 = AdsSubSystem

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.mainMenuAdReady
  if L1_2 then
    A0_2.mainMenuAdReady = false
    L1_2 = print
    L2_2 = "AdsSubSystem - showMainMenuPopup() - showing main menu popup"
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.RovioAds
    L1_2 = L1_2.show
    L2_2 = "MainMenuPopup"
    L1_2(L2_2)
    L1_2 = _G
    L1_2 = L1_2.RovioAds
    L1_2 = L1_2.wasSuccessfullyShown
    L2_2 = "MainMenuPopup"
    L1_2(L2_2)
  end
end

L1_1.showMainMenuPopup = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = print
  L3_2 = "onRewardResult: "
  L4_2 = A0_2
  L5_2 = ", result: "
  L6_2 = A1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  if A1_2 == 0 or A1_2 == 4 then
    if A0_2 == "RewardVideo.Extracoins" then
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_LEVEL_END_REWARD_VIDEO_CANCELED_OR_FAILED
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_REWARD_VIDEO_CANCELED_OR_FAILED
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
    end
  elseif A1_2 == 1 then
  elseif A1_2 == 3 then
  elseif A1_2 == 2 then
    if A0_2 == "RewardVideo.Extracoins" then
      L2_2 = false
      g_levelEndAdAvailable = L2_2
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_LEVEL_END_REWARD_VIDEO_COMPLETED
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = false
      g_carboniteAdAvailable = L2_2
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_REWARD_VIDEO_COMPLETED
      L4_2.id = L5_2
      L2_2(L3_2, L4_2)
    end
  end
end

L1_1.onRewardResult = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = print
  L4_2 = "RovioAds.lua: onAdSizeChanged "
  L5_2 = A0_2
  L6_2 = " size: "
  L7_2 = A1_2
  L8_2 = ", "
  L9_2 = A2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  if (A0_2 == "InGameBanner" or A0_2 == "LevelStartExpandable") and 0 < A1_2 and 0 < A2_2 then
    L3_2 = adSystem
    L3_2.bannerWidth = A1_2
    L3_2 = adSystem
    L3_2.bannerHeight = A2_2
    L3_2 = print
    L4_2 = "set banner size to "
    L5_2 = adSystem
    L5_2 = L5_2.bannerWidth
    L6_2 = "x"
    L7_2 = adSystem
    L7_2 = L7_2.bannerHeight
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L3_2(L4_2)
  end
end

L1_1.adSizeChanged = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds
L1_1.g_adOpenedShop = false
L1_1 = _G
L1_1 = L1_1.RovioAds
L1_1.g_adOpenedCreditShop = false
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = print
  L5_2 = "RovioAds.lua: adOpenToons()"
  L4_2(L5_2)
  L4_2 = rovioChannel
  if L4_2 ~= nil then
    L4_2 = rovioChannel
    L5_2 = L4_2
    L4_2 = L4_2.openView
    L6_2 = ""
    L7_2 = ""
    L8_2 = "pause_menu"
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

L1_1.adOpenToons = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = print
  L4_2 = "RovioAds.lua: adOpenShop() "
  L5_2 = _G
  L5_2 = L5_2.tostring
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = " - "
  L7_2 = _G
  L7_2 = L7_2.tostring
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L8_2 = " - "
  L9_2 = _G
  L9_2 = L9_2.tostring
  L10_2 = A2_2
  L9_2 = L9_2(L10_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  L3_2 = checkShopAvailability
  if not L3_2 then
    L3_2 = _G
    L3_2 = L3_2.RovioAds
    L3_2.g_adOpenedShop = false
    return
  end
  L3_2 = _G
  L3_2 = L3_2.RovioAds
  L4_2 = checkShopAvailability
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.g_adOpenedShop = L4_2
  L3_2 = _G
  L3_2 = L3_2.RovioAds
  L3_2 = L3_2.g_adOpenedShop
  if not L3_2 then
    return
  end
  if 0 < A2_2 then
    L3_2 = eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = events
    L6_2 = L6_2.EID_OPEN_SHOP_AT
    L5_2.id = L6_2
    L5_2.page = A0_2
    L5_2.element = A1_2
    L5_2.autoPromptIndex = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = events
    L6_2 = L6_2.EID_OPEN_SHOP_AT
    L5_2.id = L6_2
    L5_2.page = A0_2
    L5_2.element = A1_2
    L3_2(L4_2, L5_2)
  end
end

L1_1.adOpenShop = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "RovioAds.lua: adOpenCreditShop()"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L2_2 = isIapEnabled
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = g_coinShopAvailable
  end
  L1_2.g_adOpenedCreditShop = L2_2
  L1_2 = _G
  L1_2 = L1_2.RovioAds
  L1_2 = L1_2.g_adOpenedCreditShop
  if not L1_2 then
    return
  end
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_OPEN_COIN_SHOP_AT
  L3_2.id = L4_2
  L3_2.autoBuyId = A0_2
  L1_2(L2_2, L3_2)
end

L1_1.adOpenCreditShop = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "RovioAds.lua: adOpenRovioIdRegistration()"
  L0_2(L1_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_ROVIO_ID_REGISTRATION
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
end

L1_1.adOpenRovioIdRegistration = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1()
  local L0_2, L1_2
end

L1_1.serviceAvailable = L2_1

function L1_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  if L0_2 == "android" then
    L0_2 = showAndroidAds
    return L0_2()
  end
  L0_2 = deviceModel
  if L0_2 == "ios" then
    L0_2 = showIOSAds
    return L0_2()
  end
  L0_2 = true
  return L0_2
end

haveInGameAds = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isPayingCustomer
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = highscores
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = highscores
  if L0_2 then
    L0_2 = 0
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = highscores
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L0_2 = L0_2 + 1
    end
    if L0_2 <= 10 then
      L1_2 = false
      return L1_2
    end
  end
  L0_2 = true
  return L0_2
end

showIOSAds = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isPayingCustomer
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = highscores
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = highscores
  if L0_2 then
    L0_2 = 0
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = highscores
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L0_2 = L0_2 + 1
    end
    if L0_2 <= 10 then
      L1_2 = false
      return L1_2
    end
  end
  L0_2 = true
  return L0_2
end

showAndroidAds = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end

shouldShowPopup = L1_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "_G.RovioAds.onRenderableAdReady callback - placement ready: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  if A0_2 == "MainMenuPopup" then
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_MAIN_MENU_AD_READY_TO_BE_SHOWN
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.onRenderableAdReady = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = print
  L2_2 = "RovioAds.lua: show native"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  if A0_2 == "MainMenuPopup" then
    L1_2 = AdPopup
    L2_2 = L1_2
    L1_2 = L1_2.new
    L1_2 = L1_2(L2_2)
    L2_2 = adSystem
    L2_2.mainMenuAdShowing = true
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
end

L1_1.onShow = L2_1
L1_1 = _G
L1_1 = L1_1.RovioAds

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "RovioAds.lua: hide native"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  if A0_2 == "MainMenuPopup" then
    L1_2 = adSystem
    L1_2.mainMenuAdShowing = false
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.notify
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_POP_FRAME
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.onHide = L2_1
L1_1 = ui
L1_1 = L1_1.Frame
L2_1 = L1_1
L1_1 = L1_1.inherit
L1_1 = L1_1(L2_1)
AdPopup = L1_1
L1_1 = AdPopup

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.ImageButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "banner"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "AD_MainMenuPopup"
  L2_2(L3_2, L4_2)
  L1_2.returnValue = "OPEN_AD_SPLASH_LINK"
  L1_2.activateOnRelease = true
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ImageButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "cancel_button"
  L3_2 = getButtonImageName
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setImage
    L5_2 = getButtonImageName
    L6_2 = "buttonX"
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.isDarkSide
    L7_2, L8_2 = L7_2(L8_2)
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = getButtonImageNameBlack
    if L3_2 then
      L4_2 = L2_2
      L3_2 = L2_2.setImage
      L5_2 = getButtonImageNameBlack
      L6_2 = "buttonX"
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    else
      L4_2 = L2_2
      L3_2 = L2_2.setImage
      L5_2 = "MENU_NO"
      L3_2(L4_2, L5_2)
    end
  end
  L2_2.returnValue = "CLOSE_AD_SPLASH"
  L2_2.activateOnRelease = true
  L2_2.clickSound = "ButtonBack"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L1_1.init = L2_1
L1_1 = AdPopup

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = screenWidth
  L1_2 = L1_2 * 0.5
  A0_2.x = L1_2
  L1_2 = screenHeight
  L1_2 = L1_2 * 0.5
  A0_2.y = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "banner"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "cancel_button"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = L1_2.image
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = L2_2.image
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = screenWidth
  L7_2 = L7_2 / L3_2
  L7_2 = L7_2 * 0.9
  L9_2 = L1_2
  L8_2 = L1_2.setScale
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L3_2 = L3_2 * L7_2
  L4_2 = L4_2 * L7_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.min
  L9_2 = L3_2 * 0.5
  L10_2 = 0.12 * L5_2
  L9_2 = L9_2 + L10_2
  L10_2 = screenWidth
  L10_2 = L10_2 * 0.5
  L11_2 = L5_2 * 0.55
  L10_2 = L10_2 - L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L2_2.x = L8_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.max
  L9_2 = -L4_2
  L9_2 = L9_2 * 0.5
  L10_2 = screenHeight
  L10_2 = -L10_2
  L10_2 = L10_2 * 0.5
  L11_2 = L5_2 * 0.55
  L10_2 = L10_2 + L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L2_2.y = L8_2
  L8_2 = getUIScale
  if L8_2 then
    L9_2 = L2_2
    L8_2 = L2_2.setScale
    L10_2 = getUIScale
    L10_2, L11_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2)
  end
end

L1_1.layout = L2_1
L1_1 = AdPopup

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = setRenderState
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.65
  L8_2 = 0
  L9_2 = 0
  L10_2 = screenWidth
  L11_2 = screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L1_1.draw = L2_1
L1_1 = AdPopup

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    if L4_2 == "OPEN_AD_SPLASH_LINK" then
      L7_2 = adSystem
      L8_2 = L7_2
      L7_2 = L7_2.hidePopup
      L7_2(L8_2)
      L7_2 = adSystem
      L8_2 = L7_2
      L7_2 = L7_2.clickPopup
      L7_2(L8_2)
    elseif L4_2 == "CLOSE_AD_SPLASH" then
      L7_2 = adSystem
      L8_2 = L7_2
      L7_2 = L7_2.hidePopup
      L7_2(L8_2)
    else
      L7_2 = L4_2
      L8_2 = L5_2
      L9_2 = L6_2
      return L7_2, L8_2, L9_2
    end
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  return L7_2, L8_2, L9_2
end

L1_1.onPointerEvent = L2_1
L1_1 = AdPopup

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L4_2 = adSystem
    L5_2 = L4_2
    L4_2 = L4_2.hidePopup
    L4_2(L5_2)
    L4_2 = -1
    return L4_2
  end
end

L1_1.onKeyEvent = L2_1
