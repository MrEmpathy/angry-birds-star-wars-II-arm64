local L0_1, L1_1
L0_1 = {}
L0_1.dont_sync = false
L0_1.init_cloud_data_received = false
L0_1.show_profile_screen_after_sync = false
L0_1.last_sync_time = 0
L0_1.sync_frequency = 180
CloudSync = L0_1
L0_1 = _G
L0_1 = L0_1.CloudSync

function L1_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "[ID]:<Cloud Sync:cloudDataFirstSync()> settings from cloud received for account"
  L0_2(L1_2)
  L0_2 = RASettingsManager
  L1_2 = L0_2
  L0_2 = L0_2.createEmptySettings
  L0_2 = L0_2(L1_2)
  data = L0_2
  L0_2 = _G
  L0_2 = L0_2.CloudSync
  L0_2 = L0_2.cloudDataSync
  L1_2 = data
  L0_2(L1_2)
end

L0_1.cloudDataFirstSync = L1_1
L0_1 = _G
L0_1 = L0_1.CloudSync

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = RovioAccount
  L1_2 = L1_2.isAccountLoggedIn
  L1_2 = L1_2()
  if L1_2 then
    cloudData = A0_2
    L1_2 = print
    L2_2 = "[ID]:<Cloud Sync:cloudDataSync()> settings from cloud received for account "
    L3_2 = RovioAccount
    L3_2 = L3_2.profile
    L3_2 = L3_2.id
    L4_2 = "\n"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
    L1_2 = cloudData
    L1_2 = L1_2.settings
    if L1_2 then
      L1_2 = cloudData
      L1_2 = L1_2.settings
      L1_2 = L1_2.root
      if L1_2 then
        goto lbl_29
      end
    end
    L1_2 = cloudData
    L2_2 = {}
    L3_2 = {}
    L2_2.root = L3_2
    L1_2.settings = L2_2
    ::lbl_29::
    L1_2 = CloudSync
    L1_2 = L1_2.resolveVersionMismatch
    L2_2 = cloudData
    L2_2 = L2_2.settings
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      return
    end
    L1_2 = CloudSync
    L1_2.init_cloud_data_received = true
    L1_2 = cloudData
    if L1_2 then
      L1_2 = {}
      L2_2 = settings
      L1_2.settings = L2_2
      L2_2 = highscores
      L1_2.highscores = L2_2
      L2_2 = RASettingsManager
      L3_2 = L2_2
      L2_2 = L2_2.mergeSettings
      L4_2 = L1_2
      L5_2 = cloudData
      L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
      L4_2 = CloudSync
      L4_2 = L4_2.saveToCloud
      L5_2 = L2_2
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L4_2 = RovioAccount
      L4_2 = L4_2.getMainMenu
      L4_2 = L4_2()
      if L4_2 then
        L5_2 = RASettingsManager
        L6_2 = L5_2
        L5_2 = L5_2.mergeAndApplySettings
        L7_2 = L1_2
        L8_2 = cloudData
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = RASettingsManager
        L6_2 = L5_2
        L5_2 = L5_2.saveRuntimeSettings
        L5_2(L6_2)
        L5_2 = eventManager
        L6_2 = L5_2
        L5_2 = L5_2.queueEvent
        L7_2 = {}
        L8_2 = events
        L8_2 = L8_2.EID_CHECK_ALL_QUESTS
        L7_2.id = L8_2
        L7_2.questName = "Galactic Network"
        L5_2(L6_2, L7_2)
        L5_2 = nil
        cloudData = L5_2
        L6_2 = L4_2
        L5_2 = L4_2.refreshMiddleButtons
        L5_2(L6_2)
        L5_2 = CloudSync
        L5_2 = L5_2.show_profile_screen_after_sync
        if L5_2 then
          L5_2 = RovioAccount
          L5_2 = L5_2.showStatsScreen
          L5_2()
          L5_2 = checkAllQuests
          L5_2()
          L5_2 = CloudSync
          L5_2.show_profile_screen_after_sync = false
        end
      end
    end
  end
end

L0_1.cloudDataSync = L1_1
L0_1 = _G
L0_1 = L0_1.CloudSync

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.CloudSync
  L1_2 = L1_2.cloudDataSync
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.cloudDataNewDataAvailable = L1_1
L0_1 = CloudSync

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = isInGameMode
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = RovioAccount
    L1_2 = L1_2.isAccountLoggedIn
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = CloudSync
      L1_2 = L1_2.last_sync_time
      if L1_2 ~= nil then
        L1_2 = CloudSync
        L1_2 = L1_2.sync_frequency
        if L1_2 ~= nil then
          L1_2 = CloudSync
          L1_2 = L1_2.dont_sync
          if not L1_2 then
            L1_2 = time
            L2_2 = CloudSync
            L2_2 = L2_2.last_sync_time
            L1_2 = L1_2 - L2_2
            L2_2 = CloudSync
            L2_2 = L2_2.sync_frequency
            if L1_2 > L2_2 then
              L1_2 = print
              L2_2 = "[ID] - periodic cloud sync"
              L1_2(L2_2)
              L1_2 = CloudSync
              L1_2 = L1_2.syncWithCloud
              L2_2 = false
              L1_2(L2_2)
            end
          end
        end
      end
    end
  end
end

L0_1.update = L1_1
L0_1 = CloudSync

function L1_1()
  local L0_2, L1_2
  L0_2 = RASettingsManager
  L1_2 = L0_2
  L0_2 = L0_2.switchToGuestSettings
  L0_2(L1_2)
  L0_2 = nil
  cloudData = L0_2
  L0_2 = CloudSync
  L0_2.init_cloud_data_received = false
end

L0_1.onAccountLogout = L1_1
L0_1 = CloudSync

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.id
  L2_2 = events
  L2_2 = L2_2.EID_LEVEL_LOADING_INIT
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.id
    L2_2 = events
    L2_2 = L2_2.EID_CHANGE_SCENE
    if L1_2 ~= L2_2 then
      goto lbl_38
    end
  end
  L1_2 = cloudData
  if L1_2 then
    L1_2 = {}
    L2_2 = settings
    L1_2.settings = L2_2
    L2_2 = highscores
    L1_2.highscores = L2_2
    L2_2 = RASettingsManager
    L3_2 = L2_2
    L2_2 = L2_2.mergeAndApplySettings
    L4_2 = L1_2
    L5_2 = cloudData
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = RASettingsManager
    L3_2 = L2_2
    L2_2 = L2_2.saveRuntimeSettings
    L2_2(L3_2)
    L2_2 = eventManager
    L3_2 = L2_2
    L2_2 = L2_2.queueEvent
    L4_2 = {}
    L5_2 = events
    L5_2 = L5_2.EID_CHECK_ALL_QUESTS
    L4_2.id = L5_2
    L4_2.questName = "Galactic Network"
    L2_2(L3_2, L4_2)
    L2_2 = nil
    cloudData = L2_2
    goto lbl_115
    ::lbl_38::
    L1_2 = A0_2.id
    L2_2 = events
    L2_2 = L2_2.EID_SYNC_CLOUD_COMPLETED
    if L1_2 == L2_2 then
      L1_2 = RovioAccount
      L1_2 = L1_2.loggingOut
      if L1_2 then
        L1_2 = RovioAccount
        L1_2.loggingOut = false
        L1_2 = RovioAccount
        L1_2 = L1_2.doLogout
        L1_2()
      end
    else
      L1_2 = A0_2.id
      L2_2 = events
      L2_2 = L2_2.EID_SYNC_CLOUD_LOAD_FAILED
      if L1_2 == L2_2 then
        L1_2 = RovioAccount
        L1_2 = L1_2.loggingOut
        if L1_2 then
          L1_2 = RovioAccount
          L1_2.loggingOut = false
          L1_2 = RovioAccount
          L1_2 = L1_2.doLogout
          L1_2()
        end
      else
        L1_2 = A0_2.id
        L2_2 = events
        L2_2 = L2_2.EID_SYNC_CLOUD
        if L1_2 == L2_2 then
          L1_2 = print
          L2_2 = "[ID]:<Cloud Sync:EVENT()> EID_SYNC_CLOUD: "
          L3_2 = A0_2.id
          L4_2 = "\n"
          L2_2 = L2_2 .. L3_2 .. L4_2
          L1_2(L2_2)
          L1_2 = CloudSync
          L1_2 = L1_2.syncRovioAccount
          L1_2()
        else
          L1_2 = A0_2.id
          L2_2 = events
          L2_2 = L2_2.EID_GAME_PAUSED
          if L1_2 == L2_2 then
            L1_2 = print
            L2_2 = "[ID]:<Cloud Sync:EVENT()> EID_GAME_PAUSED: "
            L3_2 = A0_2.id
            L4_2 = "\n"
            L2_2 = L2_2 .. L3_2 .. L4_2
            L1_2(L2_2)
            L1_2 = CloudSync
            L1_2 = L1_2.syncRovioAccount
            L1_2()
          else
            L1_2 = A0_2.id
            L2_2 = events
            L2_2 = L2_2.EID_GAME_RESUMED
            if L1_2 == L2_2 then
              L1_2 = print
              L2_2 = "[ID]:<Cloud Sync:EVENT()> EID_GAME_RESUMED: "
              L3_2 = A0_2.id
              L4_2 = "\n"
              L2_2 = L2_2 .. L3_2 .. L4_2
              L1_2(L2_2)
              L1_2 = CloudSync
              L1_2 = L1_2.syncRovioAccount
              L1_2()
              L1_2 = Assets
              L1_2 = L1_2.beginAssetLoading
              L1_2()
            end
          end
        end
      end
    end
  end
  ::lbl_115::
end

L0_1.eventTriggered = L1_1
L0_1 = CloudSync

function L1_1()
  local L0_2, L1_2
  L0_2 = RovioAccount
  L0_2 = L0_2.isAccountLoggedIn
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = CloudSync
    L0_2 = L0_2.dont_sync
    if not L0_2 then
      L0_2 = CloudSync
      L0_2 = L0_2.syncWithCloud
      L0_2()
    end
  end
end

L0_1.syncRovioAccount = L1_1
L0_1 = CloudSync

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "[ID]:<Cloud Sync> syncWithCloud(loadfirst:"
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = ")"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = CloudSync
  L2_2 = time
  L1_2.last_sync_time = L2_2
  if not A0_2 then
    L1_2 = CloudSync
    L1_2 = L1_2.init_cloud_data_received
    if L1_2 then
      goto lbl_24
    end
  end
  L1_2 = _G
  L1_2 = L1_2.CloudSync
  L1_2 = L1_2.native_loadCloudSettings
  L1_2 = L1_2()
  goto lbl_32
  ::lbl_24::
  L1_2 = CloudSync
  L1_2 = L1_2.saveToCloud
  L2_2 = RASettingsManager
  L3_2 = L2_2
  L2_2 = L2_2.cleanLocalSettings
  L4_2 = settings
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = highscores
  L1_2(L2_2, L3_2)
  ::lbl_32::
end

L0_1.syncWithCloud = L1_1
L0_1 = CloudSync

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = print
  L3_2 = "[ID]:<Cloud Sync> saveToCloud()"
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = deepCopy
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.settings = L3_2
  L3_2 = deepCopy
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2.highscores = L3_2
  syncReadySettings = L2_2
  L2_2 = syncReadySettings
  L2_2 = L2_2.settings
  L2_2 = L2_2.root
  if L2_2 then
    L2_2 = syncReadySettings
    L2_2 = L2_2.settings
    L2_2 = L2_2.root
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.getBuildSupportedSettings
    L3_2 = L3_2(L4_2)
    L2_2.settingsVersion = L3_2
  end
  L2_2 = _G
  L2_2 = L2_2.CloudSync
  L2_2 = L2_2.native_saveCloudSettings
  L3_2 = "syncReadySettings"
  L2_2(L3_2)
end

L0_1.saveToCloud = L1_1
L0_1 = CloudSync

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getExternalSettingsVersion
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.id
  L2_2 = SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.getLowestBuildSupportedSettings
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.id
  if L1_2 < L2_2 then
    L1_2 = print
    L2_2 = "<Cloud Sync> Version mismatch, override with local settings and continue"
    L1_2(L2_2)
    L1_2 = nil
    cloudData = L1_2
    L1_2 = true
    return L1_2
  else
    L1_2 = SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.getExternalSettingsVersion
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.id
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.getBuildSupportedSettings
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.id
    if L1_2 > L2_2 then
      L1_2 = print
      L2_2 = "<Cloud Sync> Version mismatch, cloud version is higher, can't merge!"
      L1_2(L2_2)
      L1_2 = nil
      cloudData = L1_2
      L1_2 = CloudSync
      L1_2 = L1_2.showUpdateNeeded
      L1_2()
      L1_2 = RovioAccount
      L1_2 = L1_2.doLogout
      L1_2()
      L1_2 = false
      return L1_2
    else
      L1_2 = SettingsWrapper
      L2_2 = L1_2
      L1_2 = L1_2.getExternalSettingsVersion
      L3_2 = A0_2
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2.id
      L2_2 = SettingsWrapper
      L3_2 = L2_2
      L2_2 = L2_2.getBuildSupportedSettings
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.id
      if L1_2 < L2_2 then
        L1_2 = print
        L2_2 = "<Cloud Sync> Version mismatch, converting cloud settings.."
        L1_2(L2_2)
        L1_2 = SettingsWrapper
        L2_2 = L1_2
        L1_2 = L1_2.convertSettings
        L3_2 = A0_2
        L1_2 = L1_2(L2_2, L3_2)
        A0_2 = L1_2
        L1_2 = true
        return L1_2
      end
    end
  end
  L1_2 = print
  L2_2 = "<Cloud Sync> Version mismatch, everything OK, continue.."
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end

L0_1.resolveVersionMismatch = L1_1
L0_1 = CloudSync

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = RovioAccount
  L0_2 = L0_2.mainMenuLoaded
  if not L0_2 then
    L0_2 = RovioAccount
    L0_2.action = "VERSION_MISMATCH_LOGOUT"
    return
  end
  L0_2 = ui
  L0_2 = L0_2.RovioIDUpdatePage
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = {}
  L3_2 = getText
  L4_2 = "TEXT_ID_UPDATE_TITLE"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = getText
  L4_2 = "TEXT_ID_UPDATE_CONTENT"
  L3_2 = L3_2(L4_2)
  L2_2.content = L3_2
  
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

L0_1.showUpdateNeeded = L1_1
