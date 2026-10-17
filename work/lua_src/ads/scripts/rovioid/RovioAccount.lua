local L0_1, L1_1
L0_1 = {}
L0_1.profile = nil
L0_1.loggingOut = false
L0_1.loginState = "GUEST"
L0_1.action = "NONE"
L0_1.mainMenuLoaded = false
L0_1.deviceSettings = nil
L0_1.isNativeUIVisible = false
L0_1.loginButtonBlocked = true
L0_1.loginStatus = "UNKNOWN"
RovioAccount = L0_1
L0_1 = _G
L0_1 = L0_1.RovioAccount

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = "[ID]: RovioAccount.serviceAvailable -Showing name popup on login"
  L1_2(L2_2)
  rovioAccountAvailable = A0_2
end

L0_1.serviceAvailable = L1_1
L0_1 = _G
L0_1 = L0_1.RovioAccount

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = print
  L3_2 = "[ID]: RovioAccount.onLoginSuccess -Showing name popup on login"
  L2_2(L3_2)
  L2_2 = false
  g_showingNativeLoginUI = L2_2
  L2_2 = RovioAccount
  L2_2.profile = A1_2
  L2_2 = RovioAccount
  L2_2.loginButtonBlocked = false
  L2_2 = RovioAccount
  L2_2.loginStatus = "SUCCESS"
  L2_2 = RovioAccount
  L2_2.loginState = "GUEST"
  L2_2 = false
  g_blockIDPopup = L2_2
  L2_2 = _G
  L2_2 = L2_2.RovioAccount
  L2_2 = L2_2.UserState
  L2_2 = L2_2.REGISTERED
  if A0_2 == L2_2 then
    L2_2 = print
    L3_2 = "[ID]: RovioAccount.onLoginSuccess - NOT GUEST - "
    L4_2 = RovioAccount
    L4_2 = L4_2.profile
    L4_2 = L4_2.email
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = RovioAccount
    L2_2.loginState = "LOGGED_IN"
    L2_2 = CloudSync
    L2_2.dont_sync = true
    L2_2 = {}
    L3_2 = deepCopy
    L4_2 = settings
    L3_2 = L3_2(L4_2)
    L2_2.settings = L3_2
    L3_2 = deepCopy
    L4_2 = highscores
    L3_2 = L3_2(L4_2)
    L2_2.highscores = L3_2
    L3_2 = RASettingsManager
    L4_2 = L3_2
    L3_2 = L3_2.areLocalAccountSettingsAvailable
    L5_2 = RovioAccount
    L5_2 = L5_2.profile
    L5_2 = L5_2.id
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = RASettingsManager
      L4_2 = L3_2
      L3_2 = L3_2.hasDataToMerge
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_70
      end
    end
    L3_2 = print
    L4_2 = "[ID]:NO MERGE, USE LOCAL"
    L3_2(L4_2)
    L3_2 = RovioAccount
    L3_2 = L3_2.useLocalAccountConfiguration
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = RovioAccount
    L3_2 = L3_2.mainMenuLoaded
    if L3_2 then
      L3_2 = RovioAccount
      L3_2 = L3_2.showAccountNamePopup
      L3_2()
      goto lbl_77
      ::lbl_70::
      L3_2 = print
      L4_2 = "[ID]:HAS TO PROMPT FOR MERGE"
      L3_2(L4_2)
      L3_2 = RovioAccount
      L3_2 = L3_2.showMergeQuestion
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
  ::lbl_77::
  L2_2 = RovioAccount
  L2_2 = L2_2.getMainMenu
  L2_2 = L2_2()
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.refreshMiddleButtons
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.enableLoginButton
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.queueEvent
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_ROVIO_ID_LOGIN_ACCEPTED
  L5_2.id = L6_2
  L3_2(L4_2, L5_2)
end

L0_1.onLoginSuccess = L1_1
L0_1 = RovioAccount

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = RovioAccount
  L1_2 = L1_2.mainMenuLoaded
  if not L1_2 then
    L1_2 = RovioAccount
    L1_2.deviceSettings = A0_2
    L1_2 = RovioAccount
    L1_2.action = "PROMPT_MERGE_QUESTION"
  else
    L1_2 = SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.hasIAPs
    L1_2 = L1_2(L2_2)
    L2_2 = getText
    L3_2 = "TEXT_ID_MERGE_QUESTION_NO_IAP"
    L2_2 = L2_2(L3_2)
    L3_2 = getText
    L4_2 = "TEXT_ID_MERGE_CONFIRM_NO_IAP"
    L3_2 = L3_2(L4_2)
    if L1_2 then
      L4_2 = getText
      L5_2 = "TEXT_ID_MERGE_QUESTION_IAP"
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2
      L4_2 = getText
      L5_2 = "TEXT_ID_MERGE_CONFIRM_IAP"
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
    L4_2 = loadAssets
    L5_2 = {}
    L6_2 = "ID"
    L5_2[1] = L6_2
    L4_2(L5_2)
    L4_2 = ui
    L4_2 = L4_2.Image
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L6_2.name = "title"
    L4_2 = L4_2(L5_2, L6_2)
    L6_2 = L4_2
    L5_2 = L4_2.setImage
    L7_2 = "ID_TRANSFER_DATA_GRAPHIC"
    L5_2(L6_2, L7_2)
    L5_2 = ui
    L5_2 = L5_2.RovioIDMergePage
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.title = L4_2
    L7_2.mergeConfirmText = L3_2
    L7_2.content = L2_2
    
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = eventManager
      L1_3 = L0_3
      L0_3 = L0_3.notify
      L2_3 = {}
      L3_3 = events
      L3_3 = L3_3.EID_POP_FRAME
      L2_3.id = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = RovioAccount
      L0_3 = L0_3.useMergedAccountConfiguration
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = releaseAssets
      L1_3 = {}
      L2_3 = "ID"
      L1_3[1] = L2_3
      L0_3(L1_3)
      L0_3 = isInGameMode
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = RovioAccount
        L0_3 = L0_3.showAccountNamePopup
        L0_3()
      end
    end
    
    L7_2.returnValue = L8_2
    
    function L8_2()
      local L0_3, L1_3
      L0_3 = RovioAccount
      L0_3 = L0_3.useLocalAccountConfiguration
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = isInGameMode
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = RovioAccount
        L0_3 = L0_3.moveToMainMenu
        L0_3()
        L0_3 = RovioAccount
        L0_3.action = "SHOW_LOGIN_POPUP"
      else
        L0_3 = RovioAccount
        L0_3 = L0_3.showAccountNamePopup
        L0_3()
      end
    end
    
    L7_2.dontMerge = L8_2
    L7_2.inMenuSpace = true
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_PUSH_FRAME
    L8_2.id = L9_2
    L8_2.target = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.layout
    L6_2(L7_2)
  end
end

L0_1.showMergeQuestion = L1_1
L0_1 = _G
L0_1 = L0_1.RovioAccount

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = print
  L5_2 = "[ID]: RovioAccount.onLoginFailure() - "
  L6_2 = _G
  L6_2 = L6_2.tostring
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = " - "
  L8_2 = _G
  L8_2 = L8_2.tostring
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2(L5_2)
  L4_2 = false
  g_showingNativeLoginUI = L4_2
  L4_2 = RovioAccount
  L4_2.profile = A3_2
  L4_2 = RovioAccount
  L4_2.loginButtonBlocked = false
  if A0_2 ~= "ERROR_BAD_REQUEST" then
    L4_2 = RovioAccount
    L4_2.loginStatus = "FAILED"
  end
  L4_2 = _G
  L4_2 = L4_2.RovioAccount
  L4_2 = L4_2.UserState
  L4_2 = L4_2.REGISTERED
  if A2_2 == L4_2 then
    L4_2 = print
    L5_2 = "[ID]: Loading offline game state for "
    L6_2 = RovioAccount
    L6_2 = L6_2.profile
    L6_2 = L6_2.email
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
    L4_2 = RovioAccount
    L4_2.loginState = "LOGGED_IN"
    L4_2 = CloudSync
    L4_2.dont_sync = true
    L4_2 = {}
    L5_2 = deepCopy
    L6_2 = settings
    L5_2 = L5_2(L6_2)
    L4_2.settings = L5_2
    L5_2 = deepCopy
    L6_2 = highscores
    L5_2 = L5_2(L6_2)
    L4_2.highscores = L5_2
    L5_2 = RASettingsManager
    L6_2 = L5_2
    L5_2 = L5_2.areLocalAccountSettingsAvailable
    L7_2 = RovioAccount
    L7_2 = L7_2.profile
    L7_2 = L7_2.id
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = RovioAccount
      L5_2 = L5_2.useLocalAccountConfiguration
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = RovioAccount
      L5_2 = L5_2.mainMenuLoaded
      if L5_2 then
        L5_2 = RovioAccount
        L5_2 = L5_2.showAccountNamePopup
        L5_2()
      end
    end
  else
    L4_2 = RovioAccount
    L4_2.loginState = "GUEST"
  end
  L4_2 = RovioAccount
  L4_2 = L4_2.getMainMenu
  L4_2 = L4_2()
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.refreshMiddleButtons
    L5_2(L6_2)
    L6_2 = L4_2
    L5_2 = L4_2.enableLoginButton
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  if A0_2 == "ERROR_ACCOUNT_NOT_CONFIRMED" or A0_2 == "ERROR_ACCOUNT_INVALID" or A0_2 == "ERROR_INVALID_CLIENT" or A0_2 == "ERROR_OTHER" then
    L5_2 = RovioAccount
    L5_2 = L5_2.forcedLogout
    L5_2()
  end
  L5_2 = false
  g_blockIDPopup = L5_2
end

L0_1.onLoginFailure = L1_1
L0_1 = _G
L0_1 = L0_1.RovioAccount

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = RovioAccount
  L1_2.loginButtonBlocked = A0_2
  L1_2 = RovioAccount
  L1_2 = L1_2.getMainMenu
  L1_2 = L1_2()
  if not A0_2 then
    L2_2 = RovioAccount
    L2_2.isNativeUIVisible = false
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.enableMainMenu
      L2_2(L3_2)
    end
  end
  if A0_2 and L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.setLoginState
    L4_2 = "NOT_LOGGED"
    L2_2(L3_2, L4_2)
  else
    L2_2 = RovioAccount
    L2_2 = L2_2.isAccountLoggedIn
    L2_2 = L2_2()
    if L2_2 and L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.setLoginState
      L4_2 = "LOGGED"
      L2_2(L3_2, L4_2)
    elseif L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.setLoginState
      L4_2 = "GUEST"
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.setLoggingIn = L1_1
L0_1 = RovioAccount

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "[ID]: Not merging guest account to ID account"
  L1_2(L2_2)
  L1_2 = RASettingsManager
  L2_2 = L1_2
  L1_2 = L1_2.loadLocalAccountConfiguration
  L3_2 = RovioAccount
  L3_2 = L3_2.profile
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setPlayerRegistered
  L1_2(L2_2)
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setPlayerSignedInToID
  L1_2(L2_2)
  L1_2 = CloudSync
  L1_2.dont_sync = false
  L1_2 = CloudSync
  L1_2 = L1_2.syncWithCloud
  L2_2 = true
  L1_2(L2_2)
  L1_2 = Assets
  L1_2 = L1_2.beginAssetLoading
  L1_2()
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_ANALYTICS_ACCOUNT_LOGGED_IN
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.useLocalAccountConfiguration = L1_1
L0_1 = RovioAccount

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "[ID]: Merging guest account to ID account"
  L1_2(L2_2)
  L1_2 = RASettingsManager
  L2_2 = L1_2
  L1_2 = L1_2.loadMergedAccountConfiguration
  L3_2 = RovioAccount
  L3_2 = L3_2.profile
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setPlayerRegistered
  L1_2(L2_2)
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.setPlayerSignedInToID
  L1_2(L2_2)
  L1_2 = CloudSync
  L1_2.dont_sync = false
  L1_2 = CloudSync
  L1_2.show_profile_screen_after_sync = true
  L1_2 = CloudSync
  L1_2 = L1_2.syncWithCloud
  L2_2 = true
  L1_2(L2_2)
  L1_2 = Assets
  L1_2 = L1_2.beginAssetLoading
  L1_2()
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_ANALYTICS_ACCOUNT_LOGGED_IN
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.useMergedAccountConfiguration = L1_1
L0_1 = RovioAccount

function L1_1(A0_2)
  local L1_2
end

L0_1.update = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2
  L0_2 = menuManager
  if L0_2 then
    L0_2 = menuManager
    L1_2 = L0_2
    L0_2 = L0_2.getRoot
    L0_2 = L0_2(L1_2)
    if L0_2 ~= nil then
      L0_2 = menuManager
      L1_2 = L0_2
      L0_2 = L0_2.getRoot
      L0_2 = L0_2(L1_2)
      L0_2 = L0_2.children
      L0_2 = L0_2[1]
      if L0_2 then
        L0_2 = menuManager
        L1_2 = L0_2
        L0_2 = L0_2.getRoot
        L0_2 = L0_2(L1_2)
        L0_2 = L0_2.children
        L0_2 = L0_2[1]
        L0_2 = L0_2.name
        if L0_2 == "mainMenu" then
          L0_2 = menuManager
          L1_2 = L0_2
          L0_2 = L0_2.getRoot
          L0_2 = L0_2(L1_2)
          L0_2 = L0_2.children
          L0_2 = L0_2[1]
          return L0_2
        end
      end
    end
  end
  L0_2 = nil
  return L0_2
end

L0_1.getMainMenu = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioAccount
  L0_2 = L0_2.loginState
  if L0_2 == "LOGGED_IN" then
    L0_2 = RovioAccount
    L0_2 = L0_2.showIDPopup
    L1_2 = RovioAccount
    L1_2 = L1_2.profile
    L1_2 = L1_2.nickname
    if not L1_2 then
      L1_2 = RovioAccount
      L1_2 = L1_2.profile
      L1_2 = L1_2.email
      if not L1_2 then
        L1_2 = ""
      end
    end
    L0_2(L1_2)
  else
    L0_2 = RovioAccount
    L0_2 = L0_2.showIDPopup
    L1_2 = "Guest"
    L0_2(L1_2)
  end
end

L0_1.showAccountNamePopup = L1_1
L0_1 = RovioAccount

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.id
  L2_2 = events
  L2_2 = L2_2.EID_MAIN_MENU_ENTERED
  if L1_2 == L2_2 then
    L1_2 = A0_2.firstEntrance
    if L1_2 then
      L1_2 = print
      L2_2 = "[ID] - events.EID_MAIN_MENU_ENTERED "
      L3_2 = RovioAccount
      L3_2 = L3_2.loginState
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = RovioAccount
      L1_2.mainMenuLoaded = true
      L1_2 = RovioAccount
      L1_2 = L1_2.getMainMenu
      L1_2 = L1_2()
      L2_2 = RovioAccount
      L2_2 = L2_2.isAccountLoggedIn
      L2_2 = L2_2()
      if L2_2 then
        if L1_2 then
          L3_2 = L1_2
          L2_2 = L1_2.setLoginState
          L4_2 = "LOGGED"
          L2_2(L3_2, L4_2)
        end
      else
        L2_2 = RovioAccount
        L2_2 = L2_2.isGuestLoggedIn
        L2_2 = L2_2()
        if L2_2 and L1_2 then
          L3_2 = L1_2
          L2_2 = L1_2.setLoginState
          L4_2 = "GUEST"
          L2_2(L3_2, L4_2)
        end
      end
      L2_2 = RovioAccount
      L2_2 = L2_2.showAccountNamePopup
      L2_2()
      L2_2 = RovioAccount
      L2_2 = L2_2.loginButtonBlocked
      if L2_2 and L1_2 then
        L3_2 = L1_2
        L2_2 = L1_2.setLoginState
        L4_2 = "NOT_LOGGED"
        L2_2(L3_2, L4_2)
      end
      L2_2 = RovioAccount
      L2_2 = L2_2.action
      if L2_2 == "PROMPT_MERGE_QUESTION" then
        L2_2 = RovioAccount
        L2_2 = L2_2.showMergeQuestion
        L3_2 = RovioAccount
        L3_2 = L3_2.deviceSettings
        L2_2(L3_2)
      else
        L2_2 = RovioAccount
        L2_2 = L2_2.action
        if L2_2 == "FORCE_LOGOUT" then
          L2_2 = RovioAccount
          L2_2 = L2_2.forcedLogout
          L2_2()
          if L1_2 then
            L3_2 = L1_2
            L2_2 = L1_2.setLoginState
            L4_2 = "NOT_LOGGED"
            L2_2(L3_2, L4_2)
          end
        else
          L2_2 = RovioAccount
          L2_2 = L2_2.action
          if L2_2 == "VERSION_MISMATCH_LOGOUT" then
            L2_2 = CloudSync
            L2_2 = L2_2.showUpdateNeeded
            L2_2()
            if L1_2 then
              L3_2 = L1_2
              L2_2 = L1_2.setLoginState
              L4_2 = "NOT_LOGGED"
              L2_2(L3_2, L4_2)
            end
          end
        end
      end
      if L1_2 then
        L3_2 = L1_2
        L2_2 = L1_2.refreshMiddleButtons
        L2_2(L3_2)
      end
  end
  else
    L1_2 = A0_2.id
    L2_2 = events
    L2_2 = L2_2.EID_GAME_RESUMED
    if L1_2 == L2_2 then
      L1_2 = RovioAccount
      L1_2 = L1_2.showAccountNamePopup
      L1_2()
    else
      L1_2 = A0_2.id
      L2_2 = events
      L2_2 = L2_2.EID_MAIN_MENU_ENTERED
      if L1_2 == L2_2 then
        L1_2 = RovioAccount
        L1_2 = L1_2.action
        if L1_2 == "SHOW_LOGIN_POPUP" then
          L1_2 = RovioAccount
          L1_2 = L1_2.showAccountNamePopup
          L1_2()
          L1_2 = RovioAccount
          L1_2.action = "NONE"
        end
      else
        L1_2 = A0_2.id
        L2_2 = events
        L2_2 = L2_2.EID_ROVIO_ID_VIEW_CLOSED
        if L1_2 == L2_2 then
          L1_2 = menuManager
          L2_2 = L1_2
          L1_2 = L1_2.setAllowInput
          L3_2 = true
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2.id
          L2_2 = events
          L2_2 = L2_2.EID_OPEN_ROVIO_ID_REGISTRATION
          if L1_2 == L2_2 then
            L1_2 = RovioAccount
            L1_2 = L1_2.isNativeUIVisible
            if not L1_2 then
              L1_2 = RovioAccount
              L1_2 = L1_2.isAccountLoggedIn
              L1_2 = L1_2()
              if not L1_2 then
                L1_2 = RovioAccount
                L1_2 = L1_2.register
                L1_2()
                L1_2 = RovioAccount
                L1_2.isNativeUIVisible = true
              end
            end
          end
        end
      end
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = print
  L1_2 = "[ID]: Showing profile view"
  L0_2(L1_2)
  L0_2 = loadAssets
  L1_2 = {}
  L2_2 = "ID"
  L1_2[1] = L2_2
  L0_2(L1_2)
  L0_2 = true
  g_blockIDPopup = L0_2
  L0_2 = ui
  L0_2 = L0_2.RovioIDProfilePage
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = {}
  L2_2.name = "IDProfilePage"
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = eventManager
    L1_3 = L0_3
    L0_3 = L0_3.notify
    L2_3 = {}
    L3_3 = events
    L3_3 = L3_3.EID_POP_FRAME
    L2_3.id = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L2_2.returnValue = L3_2
  L2_2.inMenuSpace = true
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

L0_1.showStatsScreen = L1_1
L0_1 = RovioAccount

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = rovioAccountAvailable
  if L1_2 then
    L1_2 = notificationsFrame
    L2_2 = L1_2
    L1_2 = L1_2.getChild
    L3_2 = "IDPopup"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = g_blockIDPopup
      if not L1_2 then
        L1_2 = g_showingChannelOrID
        if not L1_2 then
          L1_2 = startedFromEditor
          if not L1_2 then
            L1_2 = g_coinPageOpen
            if not L1_2 then
              L1_2 = ui
              L1_2 = L1_2.IDPopup
              L2_2 = L1_2
              L1_2 = L1_2.new
              L3_2 = {}
              L4_2 = RovioAccount
              L4_2 = L4_2.isAccountLoggedIn
              L4_2 = L4_2()
              L4_2 = not L4_2
              L3_2.isGuest = L4_2
              L3_2.accountName = A0_2
              L4_2 = getButtonImageName
              L5_2 = "rovioIDLoggedInButton"
              L6_2 = SettingsWrapper
              L7_2 = L6_2
              L6_2 = L6_2.isDarkSide
              L6_2, L7_2 = L6_2(L7_2)
              L4_2 = L4_2(L5_2, L6_2, L7_2)
              L3_2.icon = L4_2
              L1_2 = L1_2(L2_2, L3_2)
              L1_2.name = "IDPopup"
              L2_2 = notificationsFrame
              L3_2 = L2_2
              L2_2 = L2_2.addChild
              L4_2 = L1_2
              L2_2(L3_2, L4_2)
              L3_2 = L1_2
              L2_2 = L1_2.onEntry
              L2_2(L3_2)
              L3_2 = L1_2
              L2_2 = L1_2.layout
              L2_2(L3_2)
              L2_2 = true
              g_IDPopupShown = L2_2
            end
          end
        end
      end
    end
  end
end

L0_1.showIDPopup = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = notificationsFrame
  L1_2 = L0_2
  L0_2 = L0_2.getChild
  L2_2 = "IDPopup"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = notificationsFrame
    L2_2 = L1_2
    L1_2 = L1_2.removeChild
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = false
    g_IDPopupShown = L1_2
  end
end

L0_1.removeIDPopup = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = setLevelFolder
  L1_2 = "levels/"
  L0_2(L1_2)
  L0_2 = setLevelName
  L1_2 = "MainMenu"
  L0_2(L1_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_CHANGE_SCENE
  L2_2.id = L3_2
  L2_2.target = "GameScene"
  L0_2(L1_2, L2_2)
end

L0_1.moveToMainMenu = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioAccount
  L0_2 = L0_2.loginState
  L0_2 = L0_2 == "LOGGED_IN"
  return L0_2
end

L0_1.isAccountLoggedIn = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioAccount
  L0_2 = L0_2.loginState
  L0_2 = L0_2 == "GUEST"
  return L0_2
end

L0_1.isGuestLoggedIn = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioAccount
  L0_2 = L0_2.loginState
  L0_2 = L0_2 == "NOT_LOGGED"
  return L0_2
end

L0_1.isNotLoggedIn = L1_1
L0_1 = RovioAccount

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = print
  L3_2 = "[ID]: RovioAccount.login() - logging in"
  L2_2(L3_2)
  L2_2 = RASettingsManager
  L3_2 = L2_2
  L2_2 = L2_2.saveRuntimeSettings
  L2_2(L3_2)
  L2_2 = true
  g_loginInProgress = L2_2
  if A0_2 then
    L2_2 = true
    g_blockIDPopup = L2_2
    L2_2 = true
    g_showingNativeLoginUI = L2_2
    L2_2 = RovioAccount
    L2_2 = L2_2.getMainMenu
    L2_2 = L2_2()
    if L2_2 then
      L4_2 = L2_2
      L3_2 = L2_2.enableLoginButton
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = _G
  L2_2 = L2_2.RovioAccount
  L2_2 = L2_2.native_login
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.login = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = RovioAccount
  L0_2 = L0_2.mainMenuLoaded
  if not L0_2 then
    L0_2 = RovioAccount
    L0_2.action = "FORCE_LOGOUT"
    return
  end
  L0_2 = RASettingsManager
  L1_2 = L0_2
  L0_2 = L0_2.saveRuntimeSettings
  L0_2(L1_2)
  L0_2 = RovioAccount
  L0_2 = L0_2.profile
  if L0_2 then
    L0_2 = ui
    L0_2 = L0_2.RovioIDSignedOutPage
    L1_2 = L0_2
    L0_2 = L0_2.new
    L2_2 = {}
    L3_2 = getText
    L4_2 = "TEXT_ID_SIGNED_OUT_TITLE"
    L3_2 = L3_2(L4_2)
    L2_2.title = L3_2
    L3_2 = getText
    L4_2 = "TEXT_ID_SIGNED_OUT_CONTENT"
    L5_2 = {}
    L6_2 = "$ID"
    L7_2 = RovioAccount
    L7_2 = L7_2.profile
    L7_2 = L7_2.email
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.content = L3_2
    
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = g_inMainMenu
      if not L0_3 then
        L0_3 = RovioAccount
        L0_3 = L0_3.moveToMainMenu
        L0_3()
      end
      L0_3 = eventManager
      L1_3 = L0_3
      L0_3 = L0_3.notify
      L2_3 = {}
      L3_3 = events
      L3_3 = L3_3.EID_POP_FRAME
      L2_3.id = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L2_2.returnValue = L3_2
    L2_2.inMenuSpace = true
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
    L2_2 = L0_2
    L1_2 = L0_2.layout
    L1_2(L2_2)
  end
  L0_2 = RovioAccount
  L0_2 = L0_2.doLogout
  L0_2()
end

L0_1.forcedLogout = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = RASettingsManager
  L1_2 = L0_2
  L0_2 = L0_2.saveRuntimeSettings
  L0_2(L1_2)
  L0_2 = savePurchases
  L0_2()
  L0_2 = RovioAccount
  L0_2.loggingOut = true
  L0_2 = _G
  L0_2 = L0_2.RovioAccount
  L0_2 = L0_2.setLoggingIn
  L1_2 = true
  L0_2(L1_2)
  L0_2 = RovioAccount
  L0_2 = L0_2.getMainMenu
  L0_2 = L0_2()
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.disableMainMenu
    L1_2(L2_2)
  end
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_SYNC_CLOUD
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.logout = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = RovioAccount
  L0_2.loginState = "GUEST"
  L0_2 = RovioAccount
  L1_2 = {}
  L0_2.profile = L1_2
  L0_2 = CloudSync
  L0_2 = L0_2.onAccountLogout
  L0_2()
  L0_2 = _G
  L0_2 = L0_2.RovioAccount
  L0_2 = L0_2.native_logout
  L0_2()
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_ROVIO_ID_LOGOUT
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
end

L0_1.doLogout = L1_1
L0_1 = RovioAccount

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = RASettingsManager
  L1_2 = L0_2
  L0_2 = L0_2.saveRuntimeSettings
  L0_2(L1_2)
  L0_2 = RovioAccount
  L0_2 = L0_2.login
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
end

L0_1.register = L1_1
L0_1 = ui
ui = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
SyncPopupPrompt = L0_1
L0_1 = SyncPopupPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Rectangle
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.centered = true
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.name = "background"
  L1_2.a = 0.85
  L2_2 = screenWidth
  L1_2.width = L2_2
  L2_2 = screenHeight
  L1_2.height = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

L0_1.init = L1_1
L0_1 = SyncPopupPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = loadAssets
  L2_2 = {}
  L3_2 = "ID"
  L2_2[1] = L3_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = SyncPopupPrompt

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "background"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = screenWidth
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L2_2 = screenHeight
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
end

L0_1.layout = L1_1
L0_1 = SyncPopupPrompt

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
