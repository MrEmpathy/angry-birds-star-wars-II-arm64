local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
GameScene = L0_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = print
  L2_2 = "Version: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = gameVersionNumber
  L3_2 = L3_2(L4_2)
  L4_2 = " ("
  L5_2 = _G
  L5_2 = L5_2.tostring
  L6_2 = svnRevisionNumber
  L5_2 = L5_2(L6_2)
  L6_2 = ")"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L1_2(L2_2)
  A0_2.currentFrame = 0
  A0_2.name = "GameScene"
  L1_2 = g_questQueue
  if not L1_2 then
    L1_2 = {}
    g_questQueue = L1_2
  end
end

L0_1.init = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = loginfo
  L2_2 = "--------- GameScene:setupFrameElements() --------"
  L1_2(L2_2)
  L1_2 = {}
  A0_2.children = L1_2
end

L0_1.setupFrameElements = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CloudSync
  if L2_2 then
    L2_2 = CloudSync
    L2_2 = L2_2.eventTriggered
    if L2_2 then
      L2_2 = rovioAccountEnabled
      if L2_2 then
        L2_2 = CloudSync
        L2_2 = L2_2.eventTriggered
        L3_2 = A1_2
        L2_2(L3_2)
      end
    end
  end
  L2_2 = RovioAccount
  if L2_2 then
    L2_2 = RovioAccount
    L2_2 = L2_2.eventTriggered
    if L2_2 then
      L2_2 = rovioAccountEnabled
      if L2_2 then
        L2_2 = RovioAccount
        L2_2 = L2_2.eventTriggered
        L3_2 = A1_2
        L2_2(L3_2)
      end
    end
  end
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_JOINT_REMOVED
  if L2_2 ~= L3_2 then
    L2_2 = print
    L3_2 = "GAMESCENE : EVENT TRIGGERED "
    L4_2 = A1_2.id
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_EPIC_SELECTION_DONE
  if L2_2 == L3_2 then
    L2_2 = A1_2.price
    if L2_2 then
      L2_2 = addCoins
      L3_2 = A1_2.price
      L3_2 = -L3_2
      L2_2(L3_2)
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_INVENTORY_USED
      L4_2.id = L5_2
      L4_2.typeOfItem = "coin"
      L5_2 = A1_2.price
      L4_2.amount = L5_2
      L5_2 = "Bought open episode "
      L6_2 = _G
      L6_2 = L6_2.tostring
      L7_2 = A1_2.episodeName
      L6_2 = L6_2(L7_2)
      L5_2 = L5_2 .. L6_2
      L4_2.typeOfUse = L5_2
      L4_2.screen = "EpicSelection"
      L4_2.iapType = "coin"
      L2_2(L3_2, L4_2)
      L2_2 = eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = events
      L5_2 = L5_2.EID_EPISODE_BOUGHT
      L4_2.id = L5_2
      L5_2 = _G
      L5_2 = L5_2.tostring
      L6_2 = A1_2.episodeName
      L5_2 = L5_2(L6_2)
      L4_2.name = L5_2
      L5_2 = A1_2.price
      L4_2.price = L5_2
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A1_2.id
    L3_2 = events
    L3_2 = L3_2.EID_NEXT_BIRD_READY
    if L2_2 == L3_2 then
    else
      L2_2 = A1_2.id
      L3_2 = events
      L3_2 = L3_2.EID_INLEVEL_CAMERA_MOVED
      if L2_2 == L3_2 then
      else
        L2_2 = A1_2.id
        L3_2 = events
        L3_2 = L3_2.EID_JOINT_REMOVED
        if L2_2 == L3_2 then
          L2_2 = jointRemoved
          L3_2 = A1_2.jointName
          L2_2(L3_2)
        else
          L2_2 = A1_2.id
          L3_2 = events
          L3_2 = L3_2.EID_BIRD_SHOT
          if L2_2 == L3_2 then
            L2_2 = selectedBird
            if L2_2 then
              L2_2 = blockTable
              L2_2 = L2_2.blocks
              L3_2 = selectedBird
              L3_2 = L3_2.definition
              L2_2 = L2_2[L3_2]
              L2_2 = L2_2.sounds
              L2_2 = L2_2.specialLaunchSound
              if L2_2 then
                L3_2 = isAudioPlaying
                L4_2 = L2_2
                L3_2 = L3_2(L4_2)
                if not L3_2 then
                  L3_2 = playAudio
                  L4_2 = L2_2
                  L3_2(L4_2)
                end
              end
            end
          else
            L2_2 = A1_2.id
            L3_2 = events
            L3_2 = L3_2.EID_PAUSE_CLICKED
            if L2_2 == L3_2 then
              L2_2 = disableGameUpdate
              L2_2()
            else
              L2_2 = A1_2.id
              L3_2 = events
              L3_2 = L3_2.EID_PAUSE_PAGE_CLOSED
              if L2_2 == L3_2 then
                L2_2 = enableGameUpdate
                L2_2()
                L2_2 = getLevelMetadata
                L3_2 = levelName
                L2_2 = L2_2(L3_2)
                L2_2 = L2_2.onResumeGame
                if L2_2 then
                  L3_2 = fireAction
                  L4_2 = L2_2
                  L5_2 = {}
                  L3_2(L4_2, L5_2)
                end
              else
                L2_2 = A1_2.id
                L3_2 = events
                L3_2 = L3_2.EID_PAUSE_PAGE_OPENED
                if L2_2 ~= L3_2 then
                  L2_2 = A1_2.id
                  L3_2 = events
                  L3_2 = L3_2.EID_SHOW_TIMED_BUY_FREE_IOS_VERSION_POPUP
                  if L2_2 ~= L3_2 then
                    goto lbl_208
                  end
                end
                L2_2 = flyingBird
                if L2_2 then
                  L2_2 = blockTable
                  L2_2 = L2_2.blocks
                  L3_2 = flyingBird
                  L3_2 = L3_2.definition
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2.sounds
                  if L2_2 then
                    L2_2 = blockTable
                    L2_2 = L2_2.blocks
                    L3_2 = flyingBird
                    L3_2 = L3_2.definition
                    L2_2 = L2_2[L3_2]
                    L2_2 = L2_2.sounds
                    L2_2 = L2_2.special_loop
                    if L2_2 then
                      L2_2 = stopAudio
                      L3_2 = blockTable
                      L3_2 = L3_2.blocks
                      L4_2 = flyingBird
                      L4_2 = L4_2.definition
                      L3_2 = L3_2[L4_2]
                      L3_2 = L3_2.sounds
                      L3_2 = L3_2.special_loop
                      L2_2(L3_2)
                    end
                  end
                end
                L2_2 = getLevelMetadata
                L3_2 = levelName
                L2_2 = L2_2(L3_2)
                L2_2 = L2_2.onPauseGame
                if L2_2 then
                  L3_2 = fireAction
                  L4_2 = L2_2
                  L5_2 = {}
                  L3_2(L4_2, L5_2)
                  goto lbl_1711
                  ::lbl_208::
                  L2_2 = A1_2.id
                  L3_2 = events
                  L3_2 = L3_2.EID_GAME_RESUMED
                  if L2_2 == L3_2 then
                    L2_2 = restorePurchasesOrInitialize
                    L2_2()
                    L2_2 = LocalNotifications
                    L2_2 = L2_2.removeLocalNotification
                    L3_2 = "LONG_TIME_NO_SEE"
                    L2_2(L3_2)
                    L2_2 = LocalNotifications
                    L2_2 = L2_2.removeLocalNotification
                    L3_2 = "MYD_LEVEL_OPENING"
                    L2_2(L3_2)
                    L2_2 = _G
                    L2_2 = L2_2.ServerTime
                    L2_2 = L2_2.synchronizeServerTime
                    
                    function L3_2(A0_3)
                      local L1_3, L2_3, L3_3, L4_3, L5_3
                      if A0_3 then
                        L1_3 = g_showLevelOpenAnimation
                        L1_3 = isInComic
                        L1_3 = L1_3()
                        L1_3 = isInGameMode
                        L1_3 = L1_3()
                        L1_3 = not L1_3 and L1_3
                        L2_3 = eventManager
                        L3_3 = L2_3
                        L2_3 = L2_3.queueEvent
                        L4_3 = {}
                        L5_3 = events
                        L5_3 = L5_3.EID_CHECK_CARBONITE_MELTING
                        L4_3.id = L5_3
                        L4_3.forceCheck = L1_3
                        L2_3(L3_3, L4_3)
                      end
                    end
                    
                    L2_2(L3_2)
                  else
                    L2_2 = A1_2.id
                    L3_2 = events
                    L3_2 = L3_2.EID_GAME_PAUSED
                    if L2_2 == L3_2 then
                      L2_2 = menuManager
                      L2_2.targetObject = nil
                      L2_2 = ui
                      L2_2 = L2_2.CarboniteAvailableAnimation
                      L2_2 = L2_2.getData
                      L2_2 = L2_2()
                      L2_2 = L2_2.longTimenoseeReward
                      L3_2 = getServerTime
                      L3_2 = L3_2()
                      L4_2 = getCurrentTime
                      L4_2 = L4_2()
                      if L3_2 and L4_2 then
                        L5_2 = weeklyRewardsEnabled
                        if L5_2 then
                          L5_2 = native_addSecondsToTime
                          L6_2 = L4_2
                          L7_2 = L2_2.timeToTrigger
                          L5_2 = L5_2(L6_2, L7_2)
                          L6_2 = roundTimeToDayRange
                          L7_2 = L5_2
                          L6_2 = L6_2(L7_2)
                          L7_2 = getTimeDifferenceInSeconds
                          L8_2 = L6_2
                          L9_2 = L4_2
                          L7_2 = L7_2(L8_2, L9_2)
                          L8_2 = LocalNotifications
                          L8_2 = L8_2.addLocalNotification
                          L9_2 = "LONG_TIME_NO_SEE"
                          L10_2 = L7_2
                          L11_2 = L2_2.notificationText
                          L8_2(L9_2, L10_2, L11_2)
                          L8_2 = native_addSecondsToTime
                          L9_2 = L3_2
                          L10_2 = L2_2.timeToTrigger
                          L8_2 = L8_2(L9_2, L10_2)
                          L9_2 = SettingsWrapper
                          L10_2 = L9_2
                          L9_2 = L9_2.setIdleRewardTime
                          L11_2 = L8_2
                          L9_2(L10_2, L11_2)
                      end
                      else
                        L5_2 = SettingsWrapper
                        L6_2 = L5_2
                        L5_2 = L5_2.setIdleRewardTime
                        L7_2 = nil
                        L5_2(L6_2, L7_2)
                      end
                      L5_2 = getTimeToNextLevelOpening
                      L5_2 = L5_2()
                      if L5_2 then
                        L6_2 = print
                        L7_2 = "Next level opens in "
                        L8_2 = L5_2
                        L7_2 = L7_2 .. L8_2
                        L6_2(L7_2)
                        L6_2 = native_addSecondsToTime
                        L7_2 = L4_2
                        L8_2 = L5_2
                        L6_2 = L6_2(L7_2, L8_2)
                        L7_2 = roundTimeToDayRange
                        L8_2 = L6_2
                        L7_2 = L7_2(L8_2)
                        L8_2 = getTimeDifferenceInSeconds
                        L9_2 = L7_2
                        L10_2 = L4_2
                        L8_2 = L8_2(L9_2, L10_2)
                        L9_2 = LocalNotifications
                        L9_2 = L9_2.addLocalNotification
                        L10_2 = "MYD_LEVEL_OPENING"
                        L11_2 = L8_2
                        L12_2 = getText
                        L13_2 = "TEXT_NOTIFICATION_NEW_LEVEL_AVAILABLE"
                        L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
                        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                      end
                      L6_2 = saveSettings
                      L6_2()
                    else
                      L2_2 = A1_2.id
                      L3_2 = events
                      L3_2 = L3_2.EID_BACK_TO_GAME_CLICKED
                      if L2_2 == L3_2 then
                        L2_2 = bar
                        foo = L2_2
                      else
                        L2_2 = A1_2.id
                        L3_2 = events
                        L3_2 = L3_2.EID_LEVEL_RESTART_CLICKED
                        if L2_2 == L3_2 then
                          L3_2 = A0_2
                          L2_2 = A0_2.triggerRestart
                          L2_2(L3_2)
                        else
                          L2_2 = A1_2.id
                          L3_2 = events
                          L3_2 = L3_2.EID_CAPTURE_SCREEN
                          if L2_2 == L3_2 then
                            L3_2 = A0_2
                            L2_2 = A0_2.initializeTransition
                            L2_2(L3_2)
                          else
                            L2_2 = A1_2.id
                            L3_2 = events
                            L3_2 = L3_2.EID_LEVEL_STARTED
                            if L2_2 == L3_2 then
                              L2_2 = g_checkAllQuests
                              if L2_2 then
                                L2_2 = checkAllQuests
                                L2_2()
                                L2_2 = false
                                g_checkAllQuests = L2_2
                              end
                              L2_2 = checkAllLevelStartQuests
                              L2_2()
                              L3_2 = A0_2
                              L2_2 = A0_2.startTransition
                              L2_2(L3_2)
                            else
                              L2_2 = A1_2.id
                              L3_2 = events
                              L3_2 = L3_2.EID_SPLASH_SEQUENCE_COMPLETED
                              if L2_2 == L3_2 then
                              else
                                L2_2 = A1_2.id
                                L3_2 = events
                                L3_2 = L3_2.EID_MIGHTY_EAGLE_BUTTON_CLICKED
                                if L2_2 == L3_2 then
                                else
                                  L2_2 = A1_2.id
                                  L3_2 = events
                                  L3_2 = L3_2.EID_MIGHTY_EAGLE_TRAILER_CLICKED
                                  if L2_2 == L3_2 then
                                  else
                                    L2_2 = A1_2.id
                                    L3_2 = events
                                    L3_2 = L3_2.EID_MIGHTY_EAGLE_PURCHASE_CLICKED
                                    if L2_2 == L3_2 then
                                      L2_2 = startMEPurchaseFlow
                                      L3_2 = A1_2.quantity
                                      L4_2 = A1_2.iapId
                                      L5_2 = A1_2.openedFrom
                                      L2_2(L3_2, L4_2, L5_2)
                                    else
                                      L2_2 = A1_2.id
                                      L3_2 = events
                                      L3_2 = L3_2.EID_EPISODE_PURCHASE_CLOSE_CLICKED
                                      if L2_2 == L3_2 then
                                        L2_2 = eventManager
                                        L3_2 = L2_2
                                        L2_2 = L2_2.notify
                                        L4_2 = {}
                                        L5_2 = events
                                        L5_2 = L5_2.EID_POP_FRAME
                                        L4_2.id = L5_2
                                        L2_2(L3_2, L4_2)
                                      else
                                        L2_2 = A1_2.id
                                        L3_2 = events
                                        L3_2 = L3_2.EID_EPISODE_PURCHASE_CLICKED
                                        if L2_2 == L3_2 then
                                          L2_2 = startEpisodePurchaseFlow
                                          L3_2 = A1_2.currentFolder
                                          L4_2 = A1_2.iapId
                                          L5_2 = A1_2.openedFrom
                                          L2_2(L3_2, L4_2, L5_2)
                                        else
                                          L2_2 = A1_2.id
                                          L3_2 = events
                                          L3_2 = L3_2.EID_AUDIO_TOGGLED
                                          if L2_2 == L3_2 then
                                            L2_2 = toggleAudio
                                            L2_2()
                                          else
                                            L2_2 = A1_2.id
                                            L3_2 = events
                                            L3_2 = L3_2.EID_OPEN_URL
                                            if L2_2 == L3_2 then
                                              L2_2 = _G
                                              L2_2 = L2_2.res
                                              L2_2 = L2_2.openURL
                                              L3_2 = A1_2.meta
                                              L3_2 = L3_2.url
                                              L2_2(L3_2)
                                            else
                                              L2_2 = A1_2.id
                                              L3_2 = events
                                              L3_2 = L3_2.EID_OPEN_SHOP
                                              if L2_2 == L3_2 then
                                                L2_2 = ui
                                                L2_2 = L2_2.CharacterMenuShop
                                                L2_2 = L2_2.isShown
                                                if L2_2 then
                                                  L2_2 = menuManager
                                                  L3_2 = L2_2
                                                  L2_2 = L2_2.getRoot
                                                  L2_2 = L2_2(L3_2)
                                                  L3_2 = L2_2
                                                  L2_2 = L2_2.getChild
                                                  L4_2 = "characterMenuShop"
                                                  L2_2 = L2_2(L3_2, L4_2)
                                                  L3_2 = L2_2
                                                  L2_2 = L2_2.close
                                                  L2_2(L3_2)
                                                  L2_2 = menuManager
                                                  L3_2 = L2_2
                                                  L2_2 = L2_2.getRoot
                                                  L2_2 = L2_2(L3_2)
                                                  L3_2 = L2_2
                                                  L2_2 = L2_2.getChild
                                                  L4_2 = "characterMenuShop"
                                                  L2_2 = L2_2(L3_2, L4_2)
                                                  L2_2.screenOpenedFrom = nil
                                                else
                                                  L2_2 = nil
                                                  L3_2 = A1_2.screen
                                                  if L3_2 == "QuestPage" then
                                                    L3_2 = eventManager
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.notify
                                                    L5_2 = {}
                                                    L6_2 = events
                                                    L6_2 = L6_2.EID_POP_FRAME
                                                    L5_2.id = L6_2
                                                    L3_2(L4_2, L5_2)
                                                    L3_2 = menuManager
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.getRoot
                                                    L3_2 = L3_2(L4_2)
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.getChild
                                                    L5_2 = "characterMenuShop"
                                                    L3_2 = L3_2(L4_2, L5_2)
                                                    L3_2.autoClaimReward = true
                                                    L2_2 = true
                                                  else
                                                    L3_2 = A1_2.screen
                                                    if L3_2 == "RankPage" then
                                                      L3_2 = menuManager
                                                      L4_2 = L3_2
                                                      L3_2 = L3_2.getRoot
                                                      L3_2 = L3_2(L4_2)
                                                      L4_2 = L3_2
                                                      L3_2 = L3_2.getChild
                                                      L5_2 = "characterMenuShop"
                                                      L3_2 = L3_2(L4_2, L5_2)
                                                      L3_2.autoClaimReward = true
                                                      L2_2 = true
                                                    end
                                                  end
                                                  L3_2 = A1_2.onCloseCall
                                                  if L3_2 then
                                                    L3_2 = menuManager
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.getRoot
                                                    L3_2 = L3_2(L4_2)
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.getChild
                                                    L5_2 = "characterMenuShop"
                                                    L3_2 = L3_2(L4_2, L5_2)
                                                    L4_2 = A1_2.onCloseCall
                                                    L3_2.onCloseCall = L4_2
                                                  end
                                                  L3_2 = menuManager
                                                  L4_2 = L3_2
                                                  L3_2 = L3_2.getRoot
                                                  L3_2 = L3_2(L4_2)
                                                  L4_2 = L3_2
                                                  L3_2 = L3_2.getChild
                                                  L5_2 = "characterMenuShop"
                                                  L3_2 = L3_2(L4_2, L5_2)
                                                  if L3_2 then
                                                    L3_2 = menuManager
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.getRoot
                                                    L3_2 = L3_2(L4_2)
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.getChild
                                                    L5_2 = "characterMenuShop"
                                                    L3_2 = L3_2(L4_2, L5_2)
                                                    L4_2 = A1_2.screen
                                                    L3_2.screenOpenedFrom = L4_2
                                                  end
                                                  L3_2 = ui
                                                  L3_2 = L3_2.CharacterMenuShop
                                                  L3_2.isShown = true
                                                  L3_2 = eventManager
                                                  L4_2 = L3_2
                                                  L3_2 = L3_2.notify
                                                  L5_2 = {}
                                                  L6_2 = events
                                                  L6_2 = L6_2.EID_CHARACTER_MENU_OPENED
                                                  L5_2.id = L6_2
                                                  L5_2.openIntoCharacters = L2_2
                                                  L6_2 = A1_2.openPreviousPage
                                                  L5_2.openPreviousPage = L6_2
                                                  L3_2(L4_2, L5_2)
                                                end
                                              else
                                                L2_2 = A1_2.id
                                                L3_2 = events
                                                L3_2 = L3_2.EID_OPEN_SHOP_AT
                                                if L2_2 == L3_2 then
                                                  L2_2 = ui
                                                  L2_2 = L2_2.ShopFrame
                                                  L2_2 = L2_2.isShown
                                                  if not L2_2 then
                                                    L2_2 = ui
                                                    L2_2 = L2_2.ShopFrame
                                                    L2_2 = L2_2.isInit
                                                    if not L2_2 then
                                                      L2_2 = menuManager
                                                      L3_2 = L2_2
                                                      L2_2 = L2_2.getRoot
                                                      L2_2 = L2_2(L3_2)
                                                      L3_2 = L2_2
                                                      L2_2 = L2_2.getChild
                                                      L4_2 = "gameHud"
                                                      L2_2 = L2_2(L3_2, L4_2)
                                                      if L2_2 then
                                                        L4_2 = L2_2
                                                        L3_2 = L2_2.getChild
                                                        L5_2 = "pausePage"
                                                        L3_2 = L3_2(L4_2, L5_2)
                                                        L3_2 = L3_2.visible
                                                        if L3_2 then
                                                          L4_2 = L2_2
                                                          L3_2 = L2_2.returnToGame
                                                          L3_2(L4_2)
                                                        end
                                                      end
                                                      L3_2 = ui
                                                      L3_2 = L3_2.CharacterMenuShop
                                                      L3_2.isShown = true
                                                      L3_2 = eventManager
                                                      L4_2 = L3_2
                                                      L3_2 = L3_2.notify
                                                      L5_2 = {}
                                                      L6_2 = events
                                                      L6_2 = L6_2.EID_CHARACTER_MENU_OPENED
                                                      L5_2.id = L6_2
                                                      L6_2 = A1_2.page
                                                      L5_2.openAt = L6_2
                                                      L6_2 = A1_2.element
                                                      L5_2.itemId = L6_2
                                                      L6_2 = A1_2.autoPromptIndex
                                                      L5_2.autoPromptIndex = L6_2
                                                      L3_2(L4_2, L5_2)
                                                  end
                                                end
                                                else
                                                  L2_2 = A1_2.id
                                                  L3_2 = events
                                                  L3_2 = L3_2.EID_OPEN_COIN_SHOP
                                                  if L2_2 == L3_2 then
                                                    L2_2 = ui
                                                    L2_2 = L2_2.CoinsPage
                                                    L3_2 = L2_2
                                                    L2_2 = L2_2.new
                                                    L2_2 = L2_2(L3_2)
                                                    L3_2 = eventManager
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.notify
                                                    L5_2 = {}
                                                    L6_2 = events
                                                    L6_2 = L6_2.EID_PUSH_FRAME
                                                    L5_2.id = L6_2
                                                    L5_2.target = L2_2
                                                    L3_2(L4_2, L5_2)
                                                  else
                                                    L2_2 = A1_2.id
                                                    L3_2 = events
                                                    L3_2 = L3_2.EID_OPEN_COIN_SHOP_AT
                                                    if L2_2 == L3_2 then
                                                      L2_2 = ui
                                                      L2_2 = L2_2.CoinsPage
                                                      L2_2 = L2_2.isInit
                                                      if not L2_2 then
                                                        L2_2 = ui
                                                        L2_2 = L2_2.CoinsPage
                                                        L3_2 = L2_2
                                                        L2_2 = L2_2.new
                                                        L4_2 = {}
                                                        L5_2 = A1_2.autoBuyId
                                                        L4_2.autoBuyId = L5_2
                                                        L2_2 = L2_2(L3_2, L4_2)
                                                        L3_2 = eventManager
                                                        L4_2 = L3_2
                                                        L3_2 = L3_2.notify
                                                        L5_2 = {}
                                                        L6_2 = events
                                                        L6_2 = L6_2.EID_PUSH_FRAME
                                                        L5_2.id = L6_2
                                                        L5_2.target = L2_2
                                                        L3_2(L4_2, L5_2)
                                                    end
                                                    else
                                                      L2_2 = A1_2.id
                                                      L3_2 = events
                                                      L3_2 = L3_2.EID_TELEPOD_OPENED
                                                      if L2_2 ~= L3_2 then
                                                        L2_2 = A1_2.id
                                                        L3_2 = events
                                                        L3_2 = L3_2.EID_NOTIFICATION_OPEN
                                                        if L2_2 ~= L3_2 then
                                                          L2_2 = A1_2.id
                                                          L3_2 = events
                                                          L3_2 = L3_2.EID_QUEST_PAGE_OPENED
                                                          if L2_2 ~= L3_2 then
                                                            L2_2 = A1_2.id
                                                            L3_2 = events
                                                            L3_2 = L3_2.EID_PAUSING_POPUP_OPENED
                                                            if L2_2 ~= L3_2 then
                                                              L2_2 = A1_2.id
                                                              L3_2 = events
                                                              L3_2 = L3_2.EID_CARBONITE_OPENED
                                                              if L2_2 ~= L3_2 then
                                                                L2_2 = A1_2.id
                                                                L3_2 = events
                                                                L3_2 = L3_2.EID_CARBONITE_MELT_ANIMATION_OPENED
                                                                if L2_2 ~= L3_2 then
                                                                  L2_2 = A1_2.id
                                                                  L3_2 = events
                                                                  L3_2 = L3_2.EID_SHOP_CLAIM_SCREEN_OPENED
                                                                  if L2_2 ~= L3_2 then
                                                                    goto lbl_670
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                      L2_2 = setPhysicsEnabled
                                                      L3_2 = false
                                                      L2_2(L3_2)
                                                      L2_2 = true
                                                      g_gamePaused = L2_2
                                                      L2_2 = true
                                                      g_disableGameupdate = L2_2
                                                      L2_2 = getLevelMetadata
                                                      L3_2 = levelName
                                                      L2_2 = L2_2(L3_2)
                                                      L2_2 = L2_2.onPauseGame
                                                      if L2_2 then
                                                        L3_2 = fireAction
                                                        L4_2 = L2_2
                                                        L5_2 = {}
                                                        L3_2(L4_2, L5_2)
                                                        goto lbl_1711
                                                        ::lbl_670::
                                                        L2_2 = A1_2.id
                                                        L3_2 = events
                                                        L3_2 = L3_2.EID_SHOP_CLOSED
                                                        if L2_2 ~= L3_2 then
                                                          L2_2 = A1_2.id
                                                          L3_2 = events
                                                          L3_2 = L3_2.EID_TELEPOD_CLOSED
                                                          if L2_2 ~= L3_2 then
                                                            L2_2 = A1_2.id
                                                            L3_2 = events
                                                            L3_2 = L3_2.EID_NOTIFICATION_CLOSED
                                                            if L2_2 ~= L3_2 then
                                                              L2_2 = A1_2.id
                                                              L3_2 = events
                                                              L3_2 = L3_2.EID_QUEST_PAGE_CLOSED
                                                              if L2_2 ~= L3_2 then
                                                                L2_2 = A1_2.id
                                                                L3_2 = events
                                                                L3_2 = L3_2.EID_PAUSING_POPUP_CLOSED
                                                                if L2_2 ~= L3_2 then
                                                                  L2_2 = A1_2.id
                                                                  L3_2 = events
                                                                  L3_2 = L3_2.EID_CARBONITE_CLOSED
                                                                  if L2_2 ~= L3_2 then
                                                                    L2_2 = A1_2.id
                                                                    L3_2 = events
                                                                    L3_2 = L3_2.EID_CARBONITE_MELT_ANIMATION_CLOSED
                                                                    if L2_2 ~= L3_2 then
                                                                      L2_2 = A1_2.id
                                                                      L3_2 = events
                                                                      L3_2 = L3_2.EID_SHOP_CLAIM_SCREEN_CLOSED
                                                                      if L2_2 ~= L3_2 then
                                                                        goto lbl_761
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                        L2_2 = menuManager
                                                        L3_2 = L2_2
                                                        L2_2 = L2_2.getRoot
                                                        L2_2 = L2_2(L3_2)
                                                        L3_2 = L2_2
                                                        L2_2 = L2_2.getChild
                                                        L4_2 = "gameHud"
                                                        L2_2 = L2_2(L3_2, L4_2)
                                                        if L2_2 then
                                                          L4_2 = L2_2
                                                          L3_2 = L2_2.getChild
                                                          L5_2 = "pausePage"
                                                          L3_2 = L3_2(L4_2, L5_2)
                                                          L3_2 = L3_2.show
                                                          if L3_2 then
                                                        end
                                                        else
                                                          L3_2 = setPhysicsEnabled
                                                          L4_2 = true
                                                          L3_2(L4_2)
                                                        end
                                                        L3_2 = false
                                                        g_gamePaused = L3_2
                                                        L3_2 = false
                                                        g_disableGameupdate = L3_2
                                                        L3_2 = getLevelMetadata
                                                        L4_2 = levelName
                                                        L3_2 = L3_2(L4_2)
                                                        L3_2 = L3_2.onResumeGame
                                                        if L3_2 then
                                                          L4_2 = fireAction
                                                          L5_2 = L3_2
                                                          L6_2 = {}
                                                          L4_2(L5_2, L6_2)
                                                        end
                                                        L4_2 = A1_2.id
                                                        L5_2 = events
                                                        L5_2 = L5_2.EID_SHOP_CLOSED
                                                        if L4_2 == L5_2 then
                                                          L4_2 = menuManager
                                                          L5_2 = L4_2
                                                          L4_2 = L4_2.getRoot
                                                          L4_2 = L4_2(L5_2)
                                                          if L4_2 then
                                                            L6_2 = L4_2
                                                            L5_2 = L4_2.getChild
                                                            L7_2 = "shopButtonGlow"
                                                            L5_2 = L5_2(L6_2, L7_2)
                                                            if L5_2 then
                                                              L6_2 = shouldShowShopGlow
                                                              L6_2 = L6_2()
                                                              L5_2.visible = L6_2
                                                              goto lbl_1711
                                                              ::lbl_761::
                                                              L2_2 = A1_2.id
                                                              L3_2 = events
                                                              L3_2 = L3_2.EID_OPEN_TELEPOD
                                                              if L2_2 == L3_2 then
                                                                L2_2 = ui
                                                                L2_2 = L2_2.TelepodPage
                                                                L3_2 = L2_2
                                                                L2_2 = L2_2.new
                                                                L4_2 = {}
                                                                L4_2.name = "telepodPage"
                                                                L2_2 = L2_2(L3_2, L4_2)
                                                                L3_2 = eventManager
                                                                L4_2 = L3_2
                                                                L3_2 = L3_2.notify
                                                                L5_2 = {}
                                                                L6_2 = events
                                                                L6_2 = L6_2.EID_PUSH_FRAME
                                                                L5_2.id = L6_2
                                                                L5_2.target = L2_2
                                                                L3_2(L4_2, L5_2)
                                                              else
                                                                L2_2 = A1_2.id
                                                                L3_2 = events
                                                                L3_2 = L3_2.EID_EPISODE_COMPLETED
                                                                if L2_2 == L3_2 then
                                                                  L2_2 = SettingsWrapper
                                                                  L3_2 = L2_2
                                                                  L2_2 = L2_2.setPlayMainMusic
                                                                  L4_2 = true
                                                                  L2_2(L3_2, L4_2)
                                                                  L2_2 = actions
                                                                  L2_2 = L2_2.myLevelFolders
                                                                  L2_2 = L2_2.normalLevelFolders
                                                                  L3_2 = actions
                                                                  L3_2 = L3_2.myLevelFolders
                                                                  L3_2 = L3_2.normalLevelFolders
                                                                  L3_2 = #L3_2
                                                                  L2_2 = L2_2[L3_2]
                                                                  L3_2 = A1_2.episode
                                                                  if L2_2 == L3_2 then
                                                                    L2_2 = print
                                                                    L3_2 = "Completed last episode."
                                                                    L2_2(L3_2)
                                                                  end
                                                                else
                                                                  L2_2 = A1_2.id
                                                                  L3_2 = events
                                                                  L3_2 = L3_2.EID_INIT_EPISODE_COMPLETED_ACTIONS
                                                                  if L2_2 == L3_2 then
                                                                    L2_2 = A1_2.showDialogs
                                                                    if L2_2 then
                                                                      L2_2 = ui
                                                                      L2_2 = L2_2.ConfirmPrompt
                                                                      L3_2 = L2_2
                                                                      L2_2 = L2_2.new
                                                                      L4_2 = {}
                                                                      L4_2.title = "TEXT_GAME_COMPLETE_TITLE"
                                                                      L5_2 = _G
                                                                      L5_2 = L5_2.res
                                                                      L5_2 = L5_2.getString
                                                                      L6_2 = "TEXTS_BASIC"
                                                                      L7_2 = complete_text
                                                                      L5_2 = L5_2(L6_2, L7_2)
                                                                      L4_2.content = L5_2
                                                                      L5_2 = events
                                                                      L5_2 = L5_2.EID_POP_FRAME
                                                                      L4_2.returnValue = L5_2
                                                                      L4_2.inMenuSpace = true
                                                                      L4_2.hideCloseButton = true
                                                                      L2_2 = L2_2(L3_2, L4_2)
                                                                      L3_2 = eventManager
                                                                      L4_2 = L3_2
                                                                      L3_2 = L3_2.notify
                                                                      L5_2 = {}
                                                                      L6_2 = events
                                                                      L6_2 = L6_2.EID_PUSH_FRAME
                                                                      L5_2.id = L6_2
                                                                      L5_2.target = L2_2
                                                                      L3_2(L4_2, L5_2)
                                                                    else
                                                                      L2_2 = A1_2.comicWatched
                                                                      if L2_2 ~= true then
                                                                        L2_2 = setupEpisodeCompletedActions
                                                                        L3_2 = false
                                                                        L4_2 = A1_2.lastComicOfGame
                                                                        L2_2(L3_2, L4_2)
                                                                      end
                                                                    end
                                                                  else
                                                                    L2_2 = A1_2.id
                                                                    L3_2 = events
                                                                    L3_2 = L3_2.EID_EPISODE_THREE_STARS_POPUP_OPENED
                                                                    if L2_2 == L3_2 then
                                                                    else
                                                                      L2_2 = A1_2.id
                                                                      L3_2 = events
                                                                      L3_2 = L3_2.EID_REMOVE_ADS_CLICKED
                                                                      if L2_2 == L3_2 then
                                                                        L2_2 = startRemoveAdsPurchaseFlow
                                                                        L2_2()
                                                                      else
                                                                        L2_2 = A1_2.id
                                                                        L3_2 = events
                                                                        L3_2 = L3_2.EID_ADS_REMOVED
                                                                        if L2_2 == L3_2 then
                                                                        else
                                                                          L2_2 = A1_2.id
                                                                          L3_2 = events
                                                                          L3_2 = L3_2.EID_SCROLL_RIGHT
                                                                          if L2_2 == L3_2 then
                                                                            L2_2 = A1_2.delayed
                                                                            if L2_2 then
                                                                              L2_2 = updatePCCameraPanningToDirection
                                                                              L3_2 = true
                                                                              L2_2(L3_2)
                                                                            else
                                                                              L2_2 = eventManager
                                                                              L3_2 = L2_2
                                                                              L2_2 = L2_2.queueEvent
                                                                              L4_2 = {}
                                                                              L5_2 = events
                                                                              L5_2 = L5_2.EID_SCROLL_RIGHT
                                                                              L4_2.id = L5_2
                                                                              L4_2.delayed = true
                                                                              L2_2(L3_2, L4_2)
                                                                            end
                                                                          else
                                                                            L2_2 = A1_2.id
                                                                            L3_2 = events
                                                                            L3_2 = L3_2.EID_OPEN_BUY_FREE_IOS_VERSION_POPUP
                                                                            if L2_2 == L3_2 then
                                                                              L2_2 = GetFullVersionPage
                                                                              L3_2 = L2_2
                                                                              L2_2 = L2_2.new
                                                                              L2_2 = L2_2(L3_2)
                                                                              L3_2 = openedFrom
                                                                              L2_2.openedFrom = L3_2
                                                                              L3_2 = eventManager
                                                                              L4_2 = L3_2
                                                                              L3_2 = L3_2.notify
                                                                              L5_2 = {}
                                                                              L6_2 = events
                                                                              L6_2 = L6_2.EID_PUSH_FRAME
                                                                              L5_2.id = L6_2
                                                                              L5_2.target = L2_2
                                                                              L3_2(L4_2, L5_2)
                                                                              L3_2 = isInGameMode
                                                                              L3_2 = L3_2()
                                                                              if L3_2 then
                                                                                L3_2 = disableGameUpdate
                                                                                L3_2()
                                                                              end
                                                                            else
                                                                              L2_2 = A1_2.id
                                                                              L3_2 = events
                                                                              L3_2 = L3_2.EID_CLOSE_BUY_FREE_IOS_VERSION_POPUP
                                                                              if L2_2 == L3_2 then
                                                                                L2_2 = isInGameMode
                                                                                L2_2 = L2_2()
                                                                                if L2_2 then
                                                                                  L2_2 = enableGameUpdate
                                                                                  L2_2()
                                                                                end
                                                                                L2_2 = eventManager
                                                                                L3_2 = L2_2
                                                                                L2_2 = L2_2.notify
                                                                                L4_2 = {}
                                                                                L5_2 = events
                                                                                L5_2 = L5_2.EID_POP_FRAME
                                                                                L4_2.id = L5_2
                                                                                L2_2(L3_2, L4_2)
                                                                              else
                                                                                L2_2 = A1_2.id
                                                                                L3_2 = events
                                                                                L3_2 = L3_2.EID_SHOW_CARBONITE_REWARD
                                                                                if L2_2 == L3_2 then
                                                                                  L2_2 = isPausePageVisible
                                                                                  L2_2 = L2_2()
                                                                                  if not L2_2 then
                                                                                    L2_2 = ui
                                                                                    L2_2 = L2_2.HintPopup
                                                                                    L2_2 = L2_2.isShown
                                                                                    if not L2_2 then
                                                                                      L2_2 = ui
                                                                                      L2_2 = L2_2.CarboniteAvailableAnimation
                                                                                      L3_2 = L2_2
                                                                                      L2_2 = L2_2.new
                                                                                      L4_2 = {}
                                                                                      L4_2.carboniteType = "BIRD"
                                                                                      L2_2 = L2_2(L3_2, L4_2)
                                                                                      L3_2 = eventManager
                                                                                      L4_2 = L3_2
                                                                                      L3_2 = L3_2.notify
                                                                                      L5_2 = {}
                                                                                      L6_2 = events
                                                                                      L6_2 = L6_2.EID_PUSH_FRAME
                                                                                      L5_2.id = L6_2
                                                                                      L5_2.target = L2_2
                                                                                      L3_2(L4_2, L5_2)
                                                                                      L3_2 = eventManager
                                                                                      L4_2 = L3_2
                                                                                      L3_2 = L3_2.notify
                                                                                      L5_2 = {}
                                                                                      L6_2 = events
                                                                                      L6_2 = L6_2.EID_CARBONITE_SCREEN_ENTERED
                                                                                      L5_2.id = L6_2
                                                                                      L6_2 = A1_2.screen
                                                                                      L5_2.screen = L6_2
                                                                                      L3_2(L4_2, L5_2)
                                                                                    end
                                                                                  end
                                                                                else
                                                                                  L2_2 = A1_2.id
                                                                                  L3_2 = events
                                                                                  L3_2 = L3_2.EID_CHECK_WEEKLY_REWARD
                                                                                  if L2_2 == L3_2 then
                                                                                    L2_2 = LocalNotifications
                                                                                    L2_2 = L2_2.showLongTimeNoSeePrompt
                                                                                    L3_2 = false
                                                                                    L4_2 = A1_2.openShop
                                                                                    L2_2(L3_2, L4_2)
                                                                                  else
                                                                                    L2_2 = A1_2.id
                                                                                    L3_2 = events
                                                                                    L3_2 = L3_2.EID_CHECK_CARBONITE_PROMPT
                                                                                    if L2_2 == L3_2 then
                                                                                      L2_2 = ui
                                                                                      L2_2 = L2_2.CarboniteAvailableAnimation
                                                                                      L2_2 = L2_2.showCarbonitePrompt
                                                                                      L2_2()
                                                                                    else
                                                                                      L2_2 = A1_2.id
                                                                                      L3_2 = events
                                                                                      L3_2 = L3_2.EID_MAIN_MENU_ENTERED
                                                                                      if L2_2 == L3_2 then
                                                                                        L2_2 = g_checkAllQuests
                                                                                        if L2_2 then
                                                                                          L2_2 = checkAllQuests
                                                                                          L2_2()
                                                                                          L2_2 = false
                                                                                          g_checkAllQuests = L2_2
                                                                                        end
                                                                                        L2_2 = SettingsWrapper
                                                                                        L3_2 = L2_2
                                                                                        L2_2 = L2_2.isMasterYourDestinyChecked
                                                                                        L2_2 = L2_2(L3_2)
                                                                                        if not L2_2 then
                                                                                          L2_2 = SettingsWrapper
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.setMasterYourDestinyChecked
                                                                                          L2_2(L3_2)
                                                                                          L2_2 = isQuestCompleted
                                                                                          L3_2 = getQuest
                                                                                          L4_2 = "Path of the Jedi"
                                                                                          L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2)
                                                                                          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                                                                                          if not L2_2 then
                                                                                            L2_2 = isQuestCompleted
                                                                                            L3_2 = getQuest
                                                                                            L4_2 = "Path of the Sith"
                                                                                            L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2)
                                                                                            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                                                                                            if not L2_2 then
                                                                                              goto lbl_1038
                                                                                            end
                                                                                          end
                                                                                          L2_2 = SettingsWrapper
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.setLastOpenedEpisode
                                                                                          L4_2 = 1
                                                                                          L2_2(L3_2, L4_2)
                                                                                          L2_2 = SettingsWrapper
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.setLastOpenedEpisodeIndex
                                                                                          L4_2 = 1
                                                                                          L2_2(L3_2, L4_2)
                                                                                          L2_2 = SettingsWrapper
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.setLastOpenedEpisodeType
                                                                                          L4_2 = 4
                                                                                          L2_2(L3_2, L4_2)
                                                                                        end
                                                                                        ::lbl_1038::
                                                                                        L2_2 = SettingsWrapper
                                                                                        L3_2 = L2_2
                                                                                        L2_2 = L2_2.isRankQuestChecked
                                                                                        L2_2 = L2_2(L3_2)
                                                                                        if not L2_2 then
                                                                                          L2_2 = SettingsWrapper
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.setRankQuestChecked
                                                                                          L2_2(L3_2)
                                                                                          L2_2 = {}
                                                                                          L3_2 = "Rank Quest Light"
                                                                                          L4_2 = "Rank Quest Dark"
                                                                                          L2_2[1] = L3_2
                                                                                          L2_2[2] = L4_2
                                                                                          L3_2 = _G
                                                                                          L3_2 = L3_2.ipairs
                                                                                          L4_2 = L2_2
                                                                                          L3_2, L4_2, L5_2 = L3_2(L4_2)
                                                                                          for L6_2, L7_2 in L3_2, L4_2, L5_2 do
                                                                                            L8_2 = SettingsWrapper
                                                                                            L9_2 = L8_2
                                                                                            L8_2 = L8_2.getQuestLevel
                                                                                            L10_2 = L7_2
                                                                                            L8_2 = L8_2(L9_2, L10_2)
                                                                                            if L8_2 == 5 then
                                                                                              L8_2 = SettingsWrapper
                                                                                              L9_2 = L8_2
                                                                                              L8_2 = L8_2.isQuestClaimed
                                                                                              L10_2 = L7_2
                                                                                              L11_2 = 5
                                                                                              L8_2 = L8_2(L9_2, L10_2, L11_2)
                                                                                              if L8_2 then
                                                                                                L8_2 = SettingsWrapper
                                                                                                L9_2 = L8_2
                                                                                                L8_2 = L8_2.setQuestLevel
                                                                                                L10_2 = L7_2
                                                                                                L11_2 = 6
                                                                                                L8_2(L9_2, L10_2, L11_2)
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                        L2_2 = SettingsWrapper
                                                                                        L3_2 = L2_2
                                                                                        L2_2 = L2_2.isRankQuest2Checked
                                                                                        L2_2 = L2_2(L3_2)
                                                                                        if not L2_2 then
                                                                                          L2_2 = SettingsWrapper
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.setRankQuest2Checked
                                                                                          L2_2(L3_2)
                                                                                          L2_2 = {}
                                                                                          L3_2 = "Rank Quest Light"
                                                                                          L4_2 = "Rank Quest Dark"
                                                                                          L2_2[1] = L3_2
                                                                                          L2_2[2] = L4_2
                                                                                          L3_2 = _G
                                                                                          L3_2 = L3_2.ipairs
                                                                                          L4_2 = L2_2
                                                                                          L3_2, L4_2, L5_2 = L3_2(L4_2)
                                                                                          for L6_2, L7_2 in L3_2, L4_2, L5_2 do
                                                                                            L8_2 = SettingsWrapper
                                                                                            L9_2 = L8_2
                                                                                            L8_2 = L8_2.getQuestLevel
                                                                                            L10_2 = L7_2
                                                                                            L8_2 = L8_2(L9_2, L10_2)
                                                                                            if L8_2 == 8 then
                                                                                              L8_2 = SettingsWrapper
                                                                                              L9_2 = L8_2
                                                                                              L8_2 = L8_2.isQuestClaimed
                                                                                              L10_2 = L7_2
                                                                                              L11_2 = 8
                                                                                              L8_2 = L8_2(L9_2, L10_2, L11_2)
                                                                                              if L8_2 then
                                                                                                L8_2 = SettingsWrapper
                                                                                                L9_2 = L8_2
                                                                                                L8_2 = L8_2.setQuestLevel
                                                                                                L10_2 = L7_2
                                                                                                L11_2 = 9
                                                                                                L8_2(L9_2, L10_2, L11_2)
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                        L2_2 = SettingsWrapper
                                                                                        L3_2 = L2_2
                                                                                        L2_2 = L2_2.isPayingCustomerChecked
                                                                                        L2_2 = L2_2(L3_2)
                                                                                        if not L2_2 then
                                                                                          L2_2 = SettingsWrapper
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.getAllReceivedCloudQuestFiles
                                                                                          L2_2 = L2_2(L3_2)
                                                                                          L3_2 = _G
                                                                                          L3_2 = L3_2.pairs
                                                                                          L4_2 = L2_2
                                                                                          L3_2, L4_2, L5_2 = L3_2(L4_2)
                                                                                          for L6_2, L7_2 in L3_2, L4_2, L5_2 do
                                                                                            L8_2 = {}
                                                                                            L9_2 = 1
                                                                                            L10_2 = _G
                                                                                            L10_2 = L10_2.string
                                                                                            L10_2 = L10_2.gmatch
                                                                                            L11_2 = L6_2
                                                                                            L12_2 = "%d+"
                                                                                            L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
                                                                                            for L13_2 in L10_2, L11_2, L12_2 do
                                                                                              L14_2 = _G
                                                                                              L14_2 = L14_2.tonumber
                                                                                              L15_2 = L13_2
                                                                                              L14_2 = L14_2(L15_2)
                                                                                              L8_2[L9_2] = L14_2
                                                                                              L14_2 = 1
                                                                                              L9_2 = L9_2 + L14_2
                                                                                            end
                                                                                            L10_2 = 1
                                                                                            L10_2 = L8_2[L10_2]
                                                                                            L11_2 = 1
                                                                                            if L10_2 <= L11_2 then
                                                                                              L10_2 = 2
                                                                                              L10_2 = L8_2[L10_2]
                                                                                              L11_2 = 5
                                                                                              if L10_2 <= L11_2 then
                                                                                                L10_2 = print
                                                                                                L11_2 = "Setting paying customer on iOS because has played old version"
                                                                                                L10_2(L11_2)
                                                                                                L10_2 = SettingsWrapper
                                                                                                L12_2 = "setIsPayingCustomer"
                                                                                                L11_2 = L10_2
                                                                                                L10_2 = L10_2[L12_2]
                                                                                                L12_2 = true
                                                                                                L10_2(L11_2, L12_2)
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                          L3_2 = SettingsWrapper
                                                                                          L5_2 = "setPayingCustomerChecked"
                                                                                          L4_2 = L3_2
                                                                                          L3_2 = L3_2[L5_2]
                                                                                          L3_2(L4_2)
                                                                                        end
                                                                                        L2_2 = false
                                                                                        g_blockMainMenuAd = L2_2
                                                                                        L2_2 = "firstEntrance"
                                                                                        L2_2 = A1_2[L2_2]
                                                                                        if L2_2 then
                                                                                          L2_2 = eventManager
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.queueEvent
                                                                                          L4_2 = {}
                                                                                          L5_2 = events
                                                                                          L6_2 = "EID_CHECK_CARBONITE_MELTING"
                                                                                          L5_2 = L5_2[L6_2]
                                                                                          L4_2.id = L5_2
                                                                                          L5_2 = "mainMenuFirstEntrance"
                                                                                          L6_2 = "firstEntrance"
                                                                                          L6_2 = A1_2[L6_2]
                                                                                          L4_2[L5_2] = L6_2
                                                                                          L2_2(L3_2, L4_2)
                                                                                        end
                                                                                        L2_2 = "firstEntrance"
                                                                                        L2_2 = A1_2[L2_2]
                                                                                        if L2_2 then
                                                                                          L2_2 = LocalNotifications
                                                                                          L3_2 = "isCarboniteRewardScheduled"
                                                                                          L2_2 = L2_2[L3_2]
                                                                                          L2_2 = L2_2()
                                                                                          if not L2_2 then
                                                                                            L2_2 = adSystem
                                                                                            if L2_2 then
                                                                                              L2_2 = adSystem
                                                                                              L3_2 = "mainMenuAdShowing"
                                                                                              L2_2 = L2_2[L3_2]
                                                                                              if not L2_2 then
                                                                                                goto lbl_1207
                                                                                              end
                                                                                            end
                                                                                            L2_2 = adSystem
                                                                                            L3_2 = nil
                                                                                            ::lbl_1207::
                                                                                            if L2_2 == L3_2 then
                                                                                              L2_2 = eventManager
                                                                                              L3_2 = L2_2
                                                                                              L2_2 = L2_2.notify
                                                                                              L4_2 = {}
                                                                                              L5_2 = events
                                                                                              L5_2 = L5_2.EID_CHECK_CARBONITE_PROMPT
                                                                                              L4_2.id = L5_2
                                                                                              L2_2(L3_2, L4_2)
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                        L2_2 = "firstEntrance"
                                                                                        L2_2 = A1_2[L2_2]
                                                                                        if not L2_2 then
                                                                                          L2_2 = eventManager
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.notify
                                                                                          L4_2 = {}
                                                                                          L5_2 = events
                                                                                          L5_2 = L5_2.EID_CHECK_WEEKLY_REWARD
                                                                                          L4_2.id = L5_2
                                                                                          L5_2 = "firstEntrance"
                                                                                          L5_2 = A1_2[L5_2]
                                                                                          L4_2.openShop = L5_2
                                                                                          L2_2(L3_2, L4_2)
                                                                                        end
                                                                                        L2_2 = LocalNotifications
                                                                                        L3_2 = "mainMenuEntered"
                                                                                        L2_2 = L2_2[L3_2]
                                                                                        L3_2 = A1_2
                                                                                        L2_2(L3_2)
                                                                                      else
                                                                                        L2_2 = A1_2.id
                                                                                        L3_2 = events
                                                                                        L4_2 = "EID_START_BUY_ANIMATION"
                                                                                        L3_2 = L3_2[L4_2]
                                                                                        if L2_2 == L3_2 then
                                                                                          L2_2 = ui
                                                                                          L3_2 = "CarboniteMeltAnimation"
                                                                                          L2_2 = L2_2[L3_2]
                                                                                          L3_2 = L2_2
                                                                                          L2_2 = L2_2.new
                                                                                          L4_2 = {}
                                                                                          L5_2 = "carboniteMeltAnimation"
                                                                                          L4_2.name = L5_2
                                                                                          L5_2 = "reward"
                                                                                          L6_2 = "reward"
                                                                                          L6_2 = A1_2[L6_2]
                                                                                          L4_2[L5_2] = L6_2
                                                                                          L5_2 = "rewardAmount"
                                                                                          L6_2 = "reward"
                                                                                          L6_2 = A1_2[L6_2]
                                                                                          L6_2 = L6_2.amount
                                                                                          L4_2[L5_2] = L6_2
                                                                                          L5_2 = "animateToRealCharMenu"
                                                                                          L6_2 = "animateToRealCharMenu"
                                                                                          L6_2 = A1_2[L6_2]
                                                                                          L4_2[L5_2] = L6_2
                                                                                          L5_2 = "onAnimationEnd"
                                                                                          L6_2 = "onAnimationEnd"
                                                                                          L6_2 = A1_2[L6_2]
                                                                                          L4_2[L5_2] = L6_2
                                                                                          L5_2 = "type"
                                                                                          L6_2 = "type"
                                                                                          L6_2 = A1_2[L6_2]
                                                                                          L4_2[L5_2] = L6_2
                                                                                          L2_2 = L2_2(L3_2, L4_2)
                                                                                          L3_2 = eventManager
                                                                                          L4_2 = L3_2
                                                                                          L3_2 = L3_2.notify
                                                                                          L5_2 = {}
                                                                                          L6_2 = events
                                                                                          L6_2 = L6_2.EID_PUSH_FRAME
                                                                                          L5_2.id = L6_2
                                                                                          L5_2.target = L2_2
                                                                                          L3_2(L4_2, L5_2)
                                                                                        else
                                                                                          L2_2 = A1_2.id
                                                                                          L3_2 = events
                                                                                          L4_2 = "EID_START_CARBONITE_CLAIM_ANIMATION"
                                                                                          L3_2 = L3_2[L4_2]
                                                                                          if L2_2 == L3_2 then
                                                                                            L2_2 = ui
                                                                                            L3_2 = "CarboniteMeltAnimation"
                                                                                            L2_2 = L2_2[L3_2]
                                                                                            L3_2 = L2_2
                                                                                            L2_2 = L2_2.new
                                                                                            L4_2 = {}
                                                                                            L5_2 = "carboniteMeltAnimation"
                                                                                            L4_2.name = L5_2
                                                                                            L5_2 = "reward"
                                                                                            L6_2 = "reward"
                                                                                            L6_2 = A1_2[L6_2]
                                                                                            L4_2[L5_2] = L6_2
                                                                                            L5_2 = "rewardAmount"
                                                                                            L6_2 = "reward"
                                                                                            L6_2 = A1_2[L6_2]
                                                                                            L6_2 = L6_2.amount
                                                                                            L4_2[L5_2] = L6_2
                                                                                            L5_2 = "animateToRealCharMenu"
                                                                                            L6_2 = "animateToRealCharMenu"
                                                                                            L6_2 = A1_2[L6_2]
                                                                                            L4_2[L5_2] = L6_2
                                                                                            L5_2 = "onAnimationEnd"
                                                                                            L6_2 = "onAnimationEnd"
                                                                                            L6_2 = A1_2[L6_2]
                                                                                            L4_2[L5_2] = L6_2
                                                                                            L5_2 = "type"
                                                                                            L6_2 = "type"
                                                                                            L6_2 = A1_2[L6_2]
                                                                                            L4_2[L5_2] = L6_2
                                                                                            L2_2 = L2_2(L3_2, L4_2)
                                                                                            L3_2 = eventManager
                                                                                            L4_2 = L3_2
                                                                                            L3_2 = L3_2.notify
                                                                                            L5_2 = {}
                                                                                            L6_2 = events
                                                                                            L6_2 = L6_2.EID_PUSH_FRAME
                                                                                            L5_2.id = L6_2
                                                                                            L5_2.target = L2_2
                                                                                            L3_2(L4_2, L5_2)
                                                                                            L3_2 = addCharacter
                                                                                            L4_2 = "reward"
                                                                                            L4_2 = A1_2[L4_2]
                                                                                            L5_2 = "character"
                                                                                            L4_2 = L4_2[L5_2]
                                                                                            L5_2 = "reward"
                                                                                            L5_2 = A1_2[L5_2]
                                                                                            L5_2 = L5_2.amount
                                                                                            L6_2 = "reward"
                                                                                            L6_2 = A1_2[L6_2]
                                                                                            L7_2 = "type"
                                                                                            L6_2 = L6_2[L7_2]
                                                                                            L3_2(L4_2, L5_2, L6_2)
                                                                                            L3_2 = eventManager
                                                                                            L4_2 = L3_2
                                                                                            L3_2 = L3_2.notify
                                                                                            L5_2 = {}
                                                                                            L6_2 = events
                                                                                            L7_2 = "EID_CHARACTER_GAINED"
                                                                                            L6_2 = L6_2[L7_2]
                                                                                            L5_2.id = L6_2
                                                                                            L6_2 = "character"
                                                                                            L5_2.typeOfItem = L6_2
                                                                                            L6_2 = "reward"
                                                                                            L6_2 = A1_2[L6_2]
                                                                                            L6_2 = L6_2.amount
                                                                                            L5_2.amount = L6_2
                                                                                            L6_2 = "typeOfGain"
                                                                                            L7_2 = "carbonite reward"
                                                                                            L5_2[L6_2] = L7_2
                                                                                            L6_2 = "Carbonite"
                                                                                            L5_2.screen = L6_2
                                                                                            L6_2 = "itemName"
                                                                                            L7_2 = "reward"
                                                                                            L7_2 = A1_2[L7_2]
                                                                                            L8_2 = "character"
                                                                                            L7_2 = L7_2[L8_2]
                                                                                            L5_2[L6_2] = L7_2
                                                                                            L3_2(L4_2, L5_2)
                                                                                          else
                                                                                            L2_2 = A1_2.id
                                                                                            L3_2 = events
                                                                                            L4_2 = "EID_ASSET_LOAD_SUCCESS"
                                                                                            L3_2 = L3_2[L4_2]
                                                                                            if L2_2 == L3_2 then
                                                                                              L2_2 = Assets
                                                                                              L3_2 = "getAssetName"
                                                                                              L2_2 = L2_2[L3_2]
                                                                                              L3_2 = A1_2.target
                                                                                              L2_2 = L2_2(L3_2)
                                                                                              L3_2 = A1_2.target
                                                                                              L4_2 = "shop"
                                                                                              if L3_2 == L4_2 then
                                                                                                L3_2 = ui
                                                                                                L3_2 = L3_2.ShopFrame
                                                                                                L4_2 = "cloudData"
                                                                                                L5_2 = loadCloudAssetFile
                                                                                                L6_2 = L2_2
                                                                                                L7_2 = true
                                                                                                L5_2 = L5_2(L6_2, L7_2)
                                                                                                L3_2[L4_2] = L5_2
                                                                                              else
                                                                                                L3_2 = A1_2.target
                                                                                                L4_2 = "camera"
                                                                                                if L3_2 == L4_2 then
                                                                                                  L3_2 = ui
                                                                                                  L3_2 = L3_2.TelepodPage
                                                                                                  L4_2 = "cloudData"
                                                                                                  L5_2 = loadCloudAssetFile
                                                                                                  L6_2 = L2_2
                                                                                                  L7_2 = true
                                                                                                  L5_2 = L5_2(L6_2, L7_2)
                                                                                                  L3_2[L4_2] = L5_2
                                                                                                else
                                                                                                  L3_2 = A1_2.target
                                                                                                  L4_2 = "samsung"
                                                                                                  if L3_2 == L4_2 then
                                                                                                    L3_2 = g_samsungDeviceData
                                                                                                    L4_2 = "cloudData"
                                                                                                    L5_2 = loadCloudAssetFile
                                                                                                    L6_2 = L2_2
                                                                                                    L7_2 = true
                                                                                                    L5_2 = L5_2(L6_2, L7_2)
                                                                                                    L3_2[L4_2] = L5_2
                                                                                                  else
                                                                                                    L3_2 = A1_2.target
                                                                                                    L4_2 = "force-update"
                                                                                                    if L3_2 == L4_2 then
                                                                                                      L3_2 = g_forceUpdateData
                                                                                                      L4_2 = "cloudData"
                                                                                                      L5_2 = loadCloudAssetFile
                                                                                                      L6_2 = L2_2
                                                                                                      L7_2 = true
                                                                                                      L5_2 = L5_2(L6_2, L7_2)
                                                                                                      L3_2[L4_2] = L5_2
                                                                                                    else
                                                                                                      L3_2 = A1_2.target
                                                                                                      L4_2 = "quests"
                                                                                                      if L3_2 == L4_2 then
                                                                                                        L3_2 = loadCloudAssetFile
                                                                                                        L4_2 = L2_2
                                                                                                        L5_2 = true
                                                                                                        L3_2 = L3_2(L4_2, L5_2)
                                                                                                        questsCloudData = L3_2
                                                                                                        L3_2 = questsCloudData
                                                                                                        if L3_2 then
                                                                                                          L3_2 = print
                                                                                                          L4_2 = " < EID_ASSET_LOAD_SUCCESS > succesfully loaded quest cloud data file, storing version info "
                                                                                                          L3_2(L4_2)
                                                                                                          L3_2 = SettingsWrapper
                                                                                                          L5_2 = "storeReceivedCloudQuestFile"
                                                                                                          L4_2 = L3_2
                                                                                                          L3_2 = L3_2[L5_2]
                                                                                                          L5_2 = gameVersionNumber
                                                                                                          L3_2(L4_2, L5_2)
                                                                                                        end
                                                                                                        L3_2 = createQuestsData
                                                                                                        L3_2()
                                                                                                      else
                                                                                                        L3_2 = A1_2.target
                                                                                                        L4_2 = "reward"
                                                                                                        if L3_2 == L4_2 then
                                                                                                          L3_2 = ui
                                                                                                          L3_2 = L3_2.CarboniteAvailableAnimation
                                                                                                          L4_2 = "cloudData"
                                                                                                          L5_2 = loadCloudAssetFile
                                                                                                          L6_2 = L2_2
                                                                                                          L7_2 = true
                                                                                                          L5_2 = L5_2(L6_2, L7_2)
                                                                                                          L3_2[L4_2] = L5_2
                                                                                                        else
                                                                                                          L3_2 = A1_2.target
                                                                                                          L4_2 = "sounds_1_8_0"
                                                                                                          if L3_2 == L4_2 then
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            else
                                                                                              L2_2 = A1_2.id
                                                                                              L3_2 = events
                                                                                              L4_2 = "EID_ASSET_LOAD_FAILED"
                                                                                              L3_2 = L3_2[L4_2]
                                                                                              if L2_2 == L3_2 then
                                                                                                L2_2 = print
                                                                                                L3_2 = " < EID_ASSET_LOAD_FAILED > failed to load "
                                                                                                L4_2 = _G
                                                                                                L4_2 = L4_2.tostring
                                                                                                L5_2 = A1_2.target
                                                                                                L4_2 = L4_2(L5_2)
                                                                                                L3_2 = L3_2 .. L4_2
                                                                                                L2_2(L3_2)
                                                                                                L2_2 = A1_2.target
                                                                                                L3_2 = "quests"
                                                                                                if L2_2 == L3_2 then
                                                                                                  L2_2 = createQuestsData
                                                                                                  L2_2()
                                                                                                end
                                                                                              else
                                                                                                L2_2 = A1_2.id
                                                                                                L3_2 = events
                                                                                                L4_2 = "EID_SHOP_SHOW_PROMO_POPUP"
                                                                                                L3_2 = L3_2[L4_2]
                                                                                                if L2_2 == L3_2 then
                                                                                                  L2_2 = ui
                                                                                                  L3_2 = "ShopPromoPrompt"
                                                                                                  L2_2 = L2_2[L3_2]
                                                                                                  L3_2 = L2_2
                                                                                                  L2_2 = L2_2.new
                                                                                                  L4_2 = {}
                                                                                                  L5_2 = "onContinueCall"
                                                                                                  L6_2 = "continue_call"
                                                                                                  L6_2 = A1_2[L6_2]
                                                                                                  L4_2[L5_2] = L6_2
                                                                                                  L5_2 = "levelNumber"
                                                                                                  L6_2 = "levelNumber"
                                                                                                  L6_2 = A1_2[L6_2]
                                                                                                  L4_2[L5_2] = L6_2
                                                                                                  L2_2 = L2_2(L3_2, L4_2)
                                                                                                  L3_2 = eventManager
                                                                                                  L4_2 = L3_2
                                                                                                  L3_2 = L3_2.notify
                                                                                                  L5_2 = {}
                                                                                                  L6_2 = events
                                                                                                  L6_2 = L6_2.EID_PUSH_FRAME
                                                                                                  L5_2.id = L6_2
                                                                                                  L5_2.target = L2_2
                                                                                                  L3_2(L4_2, L5_2)
                                                                                                else
                                                                                                  L2_2 = A1_2.id
                                                                                                  L3_2 = events
                                                                                                  L4_2 = "EID_SET_DEVICE_ACHIEVEMENT_GIVEN"
                                                                                                  L3_2 = L3_2[L4_2]
                                                                                                  if L2_2 == L3_2 then
                                                                                                    L2_2 = g_newlyGottenDeviceAchievements
                                                                                                    if not L2_2 then
                                                                                                      L2_2 = {}
                                                                                                      g_newlyGottenDeviceAchievements = L2_2
                                                                                                    end
                                                                                                    L2_2 = g_newlyGottenDeviceAchievements
                                                                                                    L3_2 = "questName"
                                                                                                    L3_2 = A1_2[L3_2]
                                                                                                    L4_2 = true
                                                                                                    L2_2[L3_2] = L4_2
                                                                                                  else
                                                                                                    L2_2 = A1_2.id
                                                                                                    L3_2 = events
                                                                                                    L4_2 = "EID_LEVEL_FAILED"
                                                                                                    L3_2 = L3_2[L4_2]
                                                                                                    if L2_2 == L3_2 then
                                                                                                      L2_2 = getLevelMetadata
                                                                                                      L3_2 = levelName
                                                                                                      L2_2 = L2_2(L3_2)
                                                                                                      L3_2 = "onLevelFailed"
                                                                                                      L2_2 = L2_2[L3_2]
                                                                                                      if L2_2 then
                                                                                                        L3_2 = fireAction
                                                                                                        L4_2 = L2_2
                                                                                                        L5_2 = {}
                                                                                                        L3_2(L4_2, L5_2)
                                                                                                      end
                                                                                                    else
                                                                                                      L2_2 = A1_2.id
                                                                                                      L3_2 = events
                                                                                                      L4_2 = "EID_LEVEL_COMPLETED"
                                                                                                      L3_2 = L3_2[L4_2]
                                                                                                      if L2_2 == L3_2 then
                                                                                                        L2_2 = getLevelMetadata
                                                                                                        L3_2 = levelName
                                                                                                        L2_2 = L2_2(L3_2)
                                                                                                        L3_2 = "onLevelComplete"
                                                                                                        L2_2 = L2_2[L3_2]
                                                                                                        if L2_2 then
                                                                                                          L3_2 = fireAction
                                                                                                          L4_2 = L2_2
                                                                                                          L5_2 = {}
                                                                                                          L3_2(L4_2, L5_2)
                                                                                                        end
                                                                                                      else
                                                                                                        L2_2 = A1_2.id
                                                                                                        L3_2 = events
                                                                                                        L4_2 = "EID_ROVIO_ID_VIEW_CLOSED"
                                                                                                        L3_2 = L3_2[L4_2]
                                                                                                        if L2_2 == L3_2 then
                                                                                                          L2_2 = false
                                                                                                          g_showingChannelOrID = L2_2
                                                                                                        else
                                                                                                          L2_2 = A1_2.id
                                                                                                          L3_2 = events
                                                                                                          L4_2 = "EID_CHECK_CARBONITE_MELTING"
                                                                                                          L3_2 = L3_2[L4_2]
                                                                                                          if L2_2 == L3_2 then
                                                                                                            L2_2 = getServerTime
                                                                                                            L2_2 = L2_2()
                                                                                                            L3_2 = SettingsWrapper
                                                                                                            L5_2 = "getCarboniteMeltingEndTime"
                                                                                                            L4_2 = L3_2
                                                                                                            L3_2 = L3_2[L5_2]
                                                                                                            L3_2 = L3_2(L4_2)
                                                                                                            L4_2 = isInGameMode
                                                                                                            L4_2 = L4_2()
                                                                                                            if not L4_2 then
                                                                                                              L4_2 = "mainMenuFirstEntrance"
                                                                                                              L4_2 = A1_2[L4_2]
                                                                                                              if not L4_2 then
                                                                                                                L4_2 = "forceCheck"
                                                                                                                L4_2 = A1_2[L4_2]
                                                                                                              end
                                                                                                            end
                                                                                                            L5_2 = isInGameMode
                                                                                                            L5_2 = L5_2()
                                                                                                            if L5_2 then
                                                                                                              L5_2 = isBirdsLeft
                                                                                                              L5_2 = L5_2()
                                                                                                              if not L5_2 then
                                                                                                                L5_2 = showLastChance
                                                                                                                if not L5_2 then
                                                                                                                  L4_2 = false
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                            if L2_2 and L3_2 then
                                                                                                              L5_2 = "hour"
                                                                                                              L5_2 = L3_2[L5_2]
                                                                                                              if L5_2 then
                                                                                                                L5_2 = getTimeDifferenceInSeconds
                                                                                                                L6_2 = L2_2
                                                                                                                L7_2 = L3_2
                                                                                                                L5_2 = L5_2(L6_2, L7_2)
                                                                                                                L6_2 = 0
                                                                                                                if L5_2 >= L6_2 and L4_2 then
                                                                                                                  L5_2 = LocalNotifications
                                                                                                                  L6_2 = "showCarboniteMeltedPrompt"
                                                                                                                  L5_2 = L5_2[L6_2]
                                                                                                                  L6_2 = L3_2
                                                                                                                  L5_2(L6_2)
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          else
                                                                                                            L2_2 = A1_2.id
                                                                                                            L3_2 = events
                                                                                                            L4_2 = "EID_LEVEL_LOADING_FINISHED"
                                                                                                            L3_2 = L3_2[L4_2]
                                                                                                            if L2_2 == L3_2 then
                                                                                                              L2_2 = eventManager
                                                                                                              L3_2 = L2_2
                                                                                                              L2_2 = L2_2.queueEvent
                                                                                                              L4_2 = {}
                                                                                                              L5_2 = events
                                                                                                              L6_2 = "EID_LEVEL_LOADING_DONE"
                                                                                                              L5_2 = L5_2[L6_2]
                                                                                                              L4_2.id = L5_2
                                                                                                              L2_2(L3_2, L4_2)
                                                                                                              L2_2 = LocalNotifications
                                                                                                              L3_2 = "getMainMenu"
                                                                                                              L2_2 = L2_2[L3_2]
                                                                                                              L2_2 = L2_2()
                                                                                                              if not L2_2 then
                                                                                                                L2_2 = eventManager
                                                                                                                L3_2 = L2_2
                                                                                                                L2_2 = L2_2.queueEvent
                                                                                                                L4_2 = {}
                                                                                                                L5_2 = events
                                                                                                                L6_2 = "EID_CHECK_CARBONITE_MELTING"
                                                                                                                L5_2 = L5_2[L6_2]
                                                                                                                L4_2.id = L5_2
                                                                                                                L5_2 = "openCharacterMenu"
                                                                                                                L6_2 = true
                                                                                                                L4_2[L5_2] = L6_2
                                                                                                                L2_2(L3_2, L4_2)
                                                                                                              end
                                                                                                              L2_2 = g_showLevelOpenAnimation
                                                                                                              if not L2_2 then
                                                                                                                L2_2 = isInComic
                                                                                                                L2_2 = L2_2()
                                                                                                                if not L2_2 then
                                                                                                                  L2_2 = eventManager
                                                                                                                  L3_2 = L2_2
                                                                                                                  L2_2 = L2_2.queueEvent
                                                                                                                  L4_2 = {}
                                                                                                                  L5_2 = events
                                                                                                                  L5_2 = L5_2.EID_CHECK_WEEKLY_REWARD
                                                                                                                  L4_2.id = L5_2
                                                                                                                  L5_2 = isInGameMode
                                                                                                                  L5_2 = L5_2()
                                                                                                                  L4_2.openShop = L5_2
                                                                                                                  L2_2(L3_2, L4_2)
                                                                                                                end
                                                                                                              end
                                                                                                            else
                                                                                                              L2_2 = A1_2.id
                                                                                                              L3_2 = events
                                                                                                              L4_2 = "EID_CHECK_ALL_QUESTS"
                                                                                                              L3_2 = L3_2[L4_2]
                                                                                                              if L2_2 == L3_2 then
                                                                                                                L2_2 = "questName"
                                                                                                                L2_2 = A1_2[L2_2]
                                                                                                                if L2_2 then
                                                                                                                  L2_2 = checkQuest
                                                                                                                  L3_2 = "questName"
                                                                                                                  L3_2 = A1_2[L3_2]
                                                                                                                  L2_2(L3_2)
                                                                                                                else
                                                                                                                  L2_2 = checkAllQuests
                                                                                                                  L2_2()
                                                                                                                end
                                                                                                              else
                                                                                                                L2_2 = A1_2.id
                                                                                                                L3_2 = events
                                                                                                                L4_2 = "EID_CHANGE_LOCALE"
                                                                                                                L3_2 = L3_2[L4_2]
                                                                                                                if L2_2 == L3_2 then
                                                                                                                  L2_2 = queuedLocale
                                                                                                                  if L2_2 then
                                                                                                                    L2_2 = setLocale
                                                                                                                    L3_2 = queuedLocale
                                                                                                                    L4_2 = true
                                                                                                                    L2_2(L3_2, L4_2)
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_1711::
end

L0_1.eventTriggered = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "eagleButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "trailerButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "gameLogo"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsSlider"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsImage"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "playButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
end

L0_1.setMainmenuItemsVisible = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = queuedTutorials
    if L2_2 ~= nil then
      L2_2 = queuedTutorials
      L2_2 = #L2_2
      if L2_2 == 0 then
        L3_2 = A0_2
        L2_2 = A0_2.getChild
        L4_2 = "AnimatedTutorial"
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil then
          L2_2 = eventManager
          L3_2 = L2_2
          L2_2 = L2_2.notify
          L4_2 = {}
          L5_2 = events
          L5_2 = L5_2.EID_POP_FRAME
          L4_2.id = L5_2
          L2_2(L3_2, L4_2)
          L2_2 = setPhysicsEnabled
          L3_2 = true
          L2_2(L3_2)
          L2_2 = nil
          g_tutorialShowing = L2_2
          L2_2 = releaseImages
          L3_2 = {}
          L4_2 = "TUTORIALS"
          L3_2[1] = L4_2
          L2_2(L3_2)
        end
      end
    end
  end
  L2_2 = queuedTutorials
  if L2_2 ~= nil then
    L2_2 = queuedTutorials
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = gameCamera
      L3_2 = L2_2
      L2_2 = L2_2.updateZoomLevel
      L4_2 = zoomLevel
      L2_2(L3_2, L4_2)
      L2_2 = setPhysicsEnabled
      L3_2 = false
      L2_2(L3_2)
      L2_2 = true
      g_tutorialShowing = L2_2
      if A1_2 then
        L3_2 = A0_2
        L2_2 = A0_2.getChild
        L4_2 = "AnimatedTutorial"
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil then
          L2_2 = eventManager
          L3_2 = L2_2
          L2_2 = L2_2.notify
          L4_2 = {}
          L5_2 = events
          L5_2 = L5_2.EID_POP_FRAME
          L4_2.id = L5_2
          L2_2(L3_2, L4_2)
          L2_2 = eventManager
          L3_2 = L2_2
          L2_2 = L2_2.notify
          L4_2 = {}
          L5_2 = events
          L5_2 = L5_2.EID_PUSH_FRAME
          L4_2.id = L5_2
          L5_2 = _G
          L5_2 = L5_2.table
          L5_2 = L5_2.remove
          L6_2 = queuedTutorials
          L7_2 = 1
          L5_2 = L5_2(L6_2, L7_2)
          L4_2.target = L5_2
          L2_2(L3_2, L4_2)
        end
      else
        L3_2 = A0_2
        L2_2 = A0_2.getChild
        L4_2 = "AnimatedTutorial"
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 == nil then
          L2_2 = eventManager
          L3_2 = L2_2
          L2_2 = L2_2.notify
          L4_2 = {}
          L5_2 = events
          L5_2 = L5_2.EID_PUSH_FRAME
          L4_2.id = L5_2
          L5_2 = _G
          L5_2 = L5_2.table
          L5_2 = L5_2.remove
          L6_2 = queuedTutorials
          L7_2 = 1
          L5_2 = L5_2(L6_2, L7_2)
          L4_2.target = L5_2
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end

L0_1.checkForShowTutorial = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2
  L1_2 = A0_2.drawTarget
  if L1_2 then
    L1_2 = A0_2.drawTarget
    L2_2 = L1_2
    L1_2 = L1_2.draw
    L3_2 = 0
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = g_showCameraDebugData
  if L1_2 then
    L1_2 = {}
    tempScreen = L1_2
    L1_2 = tempScreen
    L2_2 = screen
    L2_2 = L2_2.x
    L1_2.x = L2_2
    L1_2 = tempScreen
    L2_2 = screen
    L2_2 = L2_2.y
    L1_2.y = L2_2
    L1_2 = tempScreen
    L2_2 = screen
    L2_2 = L2_2.left
    L1_2.left = L2_2
    L1_2 = tempScreen
    L2_2 = screen
    L2_2 = L2_2.right
    L1_2.right = L2_2
    L1_2 = tempScreen
    L2_2 = screen
    L2_2 = L2_2.top
    L1_2.top = L2_2
    L1_2 = tempScreen
    L2_2 = screen
    L2_2 = L2_2.bottom
    L1_2.bottom = L2_2
    L1_2 = tempScreen
    L2_2 = worldScale
    L1_2.scale = L2_2
    L1_2 = rightLimitWorld
    L2_2 = leftLimitWorld
    L1_2 = L1_2 - L2_2
    L2_2 = screen
    L3_2 = rightLimitWorld
    L4_2 = leftLimitWorld
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 * 0.5
    L2_2.x = L3_2
    L2_2 = screen
    L3_2 = bottomLimitWorld
    L4_2 = topLimitWorld
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 * 0.5
    L2_2.y = L3_2
    L2_2 = _G
    L2_2 = L2_2.math
    L2_2 = L2_2.min
    L3_2 = screenWidth
    L3_2 = L3_2 / L1_2
    L4_2 = screenHeight
    L5_2 = bottomLimitWorld
    L6_2 = topLimitWorld
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2 / L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 * 0.85
    worldScale = L2_2
    L2_2 = gameCamera
    L3_2 = L2_2
    L2_2 = L2_2.defaultCamera
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
  L1_2 = {}
  L1_2.r = 0
  L1_2.g = 0
  L1_2.b = 0
  L2_2 = blockTable
  if L2_2 then
    L2_2 = blockTable
    L2_2 = L2_2.themes
    if L2_2 then
      L2_2 = objects
      if L2_2 then
        L2_2 = objects
        L2_2 = L2_2.theme
        if L2_2 then
          L2_2 = blockTable
          L2_2 = L2_2.themes
          L3_2 = objects
          L3_2 = L3_2.theme
          L2_2 = L2_2[L3_2]
          if L2_2 then
            L2_2 = blockTable
            L2_2 = L2_2.themes
            L3_2 = objects
            L3_2 = L3_2.theme
            L2_2 = L2_2[L3_2]
            L1_2 = L2_2.skyColor
          end
        end
      end
    end
  end
  L2_2 = setBGColor
  L3_2 = L1_2.r
  L4_2 = L1_2.g
  L5_2 = L1_2.b
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = setFont
  L3_2 = getFontBasic
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
  L2_2 = showBG
  if L2_2 then
    L2_2 = drawBackgroundNative
    L3_2 = g_layerDrawIndex
    if not L3_2 then
      L3_2 = -1
    end
    L2_2(L3_2)
  else
    L2_2 = setRenderState
    L3_2 = screen
    L3_2 = L3_2.left
    L3_2 = -L3_2
    L4_2 = screen
    L4_2 = L4_2.top
    L4_2 = -L4_2
    L5_2 = worldScale
    L6_2 = worldScale
    L7_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = drawLine2D
    L3_2 = screen
    L3_2 = L3_2.left
    L4_2 = 0
    L5_2 = screen
    L5_2 = L5_2.right
    L6_2 = 0
    L7_2 = gameWorldScale
    L7_2 = 10 * L7_2
    L8_2 = 255
    L9_2 = 0
    L10_2 = 0
    L11_2 = 128
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L2_2 = mightyEagleBGAlpha
  if L2_2 ~= nil then
    L2_2 = drawRect
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    L6_2 = mightyEagleBGAlpha
    L7_2 = 0
    L8_2 = 0
    L9_2 = screenWidth
    L10_2 = screenHeight
    L11_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L2_2 = g_lineGravityVisualization
  if L2_2 then
    L2_2 = getLevelMetadata
    L3_2 = levelName
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.ignoreTutorial
    if not L2_2 then
      L2_2 = _G
      L2_2 = L2_2.pairs
      L3_2 = objects
      L3_2 = L3_2.sensorList
      L3_2 = L3_2.gravitation
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2.isWater
        if not L7_2 then
          L7_2 = physicsToScreenTransform
          L8_2 = L6_2.x
          L9_2 = L6_2.y
          L7_2, L8_2 = L7_2(L8_2, L9_2)
          L9_2 = renderGravityVisualsNative
          L10_2 = L6_2
          L11_2 = L7_2
          L12_2 = L8_2
          L13_2 = worldScale
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
      end
    end
  end
  L2_2 = setRenderState
  L3_2 = screen
  L3_2 = L3_2.left
  L3_2 = -L3_2
  L4_2 = screen
  L4_2 = L4_2.top
  L4_2 = -L4_2
  L5_2 = worldScale
  L6_2 = worldScale
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = native_setAlpha
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = native_setZOrderRange
  L3_2 = 0
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = drawGameNative
  L3_2 = -1
  L2_2(L3_2)
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = objects
  L3_2 = L3_2.sensorList
  L3_2 = L3_2.gravitation
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.isWater
    if L7_2 then
      L7_2 = L6_2.sensorType
      if L7_2 == "gravitation" then
        L7_2 = L6_2.active
        if L7_2 then
          L7_2 = blockTable
          L7_2 = L7_2.blocks
          L8_2 = L6_2.definition
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.boxWater
          if not L7_2 then
            L7_2 = blockTable
            L7_2 = L7_2.blocks
            L8_2 = L6_2.definition
            L7_2 = L7_2[L8_2]
            L7_2 = L7_2.isBubble
            if L7_2 then
              L7_2 = actions
              L7_2 = L7_2.drawWaterBubble
              L8_2 = L6_2
              L9_2 = "BUBBLE_SIDE_EFFECT"
              L7_2(L8_2, L9_2)
            end
          end
        end
      end
    end
  end
  L2_2 = physicsToWorldTransform
  L3_2 = rubberBandPos
  L3_2 = L3_2.x
  L4_2 = rubberBandPos
  L4_2 = L4_2.y
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = physicsToWorldTransform
  L5_2 = levelStartPosition
  L5_2 = L5_2.x
  L6_2 = levelStartPosition
  L6_2 = L6_2.y
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = currentBirdName
  if L8_2 ~= nil then
    L8_2 = objects
    L8_2 = L8_2.world
    L9_2 = currentBirdName
    L8_2 = L8_2[L9_2]
    if L8_2 ~= nil then
      L8_2 = objects
      L8_2 = L8_2.world
      L9_2 = currentBirdName
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.radius
      if not L8_2 then
        L8_2 = objects
        L8_2 = L8_2.world
        L9_2 = currentBirdName
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.width
        L8_2 = L8_2 * 0.3
      end
      L9_2 = blockTable
      L9_2 = L9_2.blocks
      L10_2 = objects
      L10_2 = L10_2.world
      L11_2 = currentBirdName
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.definition
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.slingshotRadius
      if L9_2 then
        L9_2 = blockTable
        L9_2 = L9_2.blocks
        L10_2 = objects
        L10_2 = L10_2.world
        L11_2 = currentBirdName
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.definition
        L9_2 = L9_2[L10_2]
        L8_2 = L9_2.slingshotRadius
      end
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.cos
      L10_2 = rubberBandAngle
      L9_2 = L9_2(L10_2)
      L9_2 = L8_2 * L9_2
      L9_2 = L9_2 * 32
      L6_2 = L2_2 - L9_2
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.sin
      L10_2 = rubberBandAngle
      L9_2 = L9_2(L10_2)
      L9_2 = L8_2 * L9_2
      L9_2 = L9_2 * 32
      L7_2 = L3_2 - L9_2
    end
  end
  L8_2 = selectedBird
  if L8_2 ~= nil then
    L8_2 = selectedBird
    L8_2 = L8_2.shot
    if not L8_2 then
      L8_2 = enableAimingAid
      L9_2 = true
      L8_2(L9_2)
      L8_2 = true
      streamEnabled = L8_2
  end
  else
    L8_2 = enableAimingAid
    L9_2 = false
    L8_2(L9_2)
    L8_2 = streamEnabled
    if L8_2 == true then
      L8_2 = getAimingTime
      L8_2 = L8_2()
      totalAimingTime = L8_2
      L8_2 = false
      streamEnabled = L8_2
    end
    L8_2 = flyingBird
    if L8_2 ~= nil then
      L8_2 = totalAimingTime
      if L8_2 ~= nil then
        L8_2 = clearAimingAid
        L9_2 = flightTime
        L10_2 = totalAimingTime
        L9_2 = L9_2 / L10_2
        L8_2(L9_2)
      end
    end
  end
  L8_2 = flyingBird
  if L8_2 ~= nil then
    L8_2 = flyingBird
    L8_2 = L8_2.laserField
    if L8_2 ~= nil then
      L8_2 = "LASER_TRAIL_3"
      L9_2 = "LASER_EFFECT_1"
      L10_2 = flyingBird
      L10_2 = L10_2.x
      L11_2 = flyingBird
      L11_2 = L11_2.laserField
      L11_2 = L11_2.x
      L10_2 = L10_2 - L11_2
      L11_2 = flyingBird
      L11_2 = L11_2.y
      L12_2 = flyingBird
      L12_2 = L12_2.laserField
      L12_2 = L12_2.y
      L11_2 = L11_2 - L12_2
      L12_2 = physicsToWorld
      L12_2 = L10_2 * L12_2
      L13_2 = physicsToWorld
      L13_2 = L11_2 * L13_2
      L14_2 = _G
      L14_2 = L14_2.math
      L14_2 = L14_2.atan2
      L15_2 = L11_2
      L16_2 = L10_2
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.pi
      L15_2 = L14_2 / L15_2
      L16_2 = _G
      L16_2 = L16_2.res
      L16_2 = L16_2.getSpritePivot
      L17_2 = L9_2
      L16_2, L17_2 = L16_2(L17_2)
      L18_2 = worldScale
      L16_2 = L16_2 * L18_2
      L18_2 = worldScale
      L17_2 = L17_2 * L18_2
      L18_2 = physicsToScreenTransform
      L19_2 = flyingBird
      L19_2 = L19_2.laserField
      L19_2 = L19_2.x
      L20_2 = flyingBird
      L20_2 = L20_2.laserField
      L20_2 = L20_2.y
      L18_2, L19_2 = L18_2(L19_2, L20_2)
      L20_2 = setRenderState
      L21_2 = 0
      L22_2 = 0
      L23_2 = worldScale
      L24_2 = worldScale
      L25_2 = 0
      L26_2 = L16_2
      L27_2 = L17_2
      L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L20_2 = res
      L20_2 = L20_2.drawSprite
      L21_2 = L9_2
      L22_2 = worldScale
      L22_2 = L18_2 / L22_2
      L23_2 = worldScale
      L23_2 = L19_2 / L23_2
      L20_2(L21_2, L22_2, L23_2)
      L18_2 = L18_2 - L16_2
      L19_2 = L19_2 - L17_2
      L20_2 = vLength
      L21_2 = L12_2
      L22_2 = L13_2
      L20_2 = L20_2(L21_2, L22_2)
      L21_2 = setRenderState
      L22_2 = 0
      L23_2 = 0
      L24_2 = worldScale
      L25_2 = worldScale
      L26_2 = L14_2
      L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
      L21_2 = _G
      L21_2 = L21_2.res
      L21_2 = L21_2.getSpriteBounds
      L22_2 = L8_2
      L21_2, L22_2 = L21_2(L22_2)
      L23_2 = _G
      L23_2 = L23_2.res
      L23_2 = L23_2.getSpriteBounds
      L24_2 = getObjectDefinition
      L25_2 = flyingBird
      L25_2 = L25_2.name
      L24_2 = L24_2(L25_2)
      L24_2 = L24_2.sprites
      L24_2 = L24_2.action
      L23_2, L24_2 = L23_2(L24_2)
      L25_2 = worldScale
      L25_2 = L23_2 * L25_2
      L26_2 = worldScale
      L26_2 = L24_2 * L26_2
      L25_2 = L25_2 / 2
      L26_2 = L26_2 / 2
      L27_2 = -L26_2
      L28_2 = _G
      L28_2 = L28_2.math
      L28_2 = L28_2.sin
      L29_2 = _G
      L29_2 = L29_2.math
      L29_2 = L29_2.pi
      L29_2 = L29_2 / 2
      L29_2 = L14_2 - L29_2
      L28_2 = L28_2(L29_2)
      L26_2 = L27_2 * L28_2
      L27_2 = -L25_2
      L28_2 = _G
      L28_2 = L28_2.math
      L28_2 = L28_2.cos
      L29_2 = _G
      L29_2 = L29_2.math
      L29_2 = L29_2.pi
      L29_2 = L29_2 / 2
      L29_2 = L14_2 - L29_2
      L28_2 = L28_2(L29_2)
      L25_2 = L27_2 * L28_2
      L27_2 = flyingBird
      L27_2 = L27_2.prevX
      if not L27_2 then
        L27_2 = flyingBird
        L27_2 = L27_2.x
      end
      L28_2 = flyingBird
      L28_2 = L28_2.prevY
      if not L28_2 then
        L28_2 = flyingBird
        L28_2 = L28_2.x
      end
      L29_2 = physicsToScreenTransform
      L30_2 = L27_2
      L31_2 = L28_2
      L29_2, L30_2 = L29_2(L30_2, L31_2)
      L31_2 = flyingBird
      L31_2 = L31_2.hasCollided
      if not L31_2 then
        L31_2 = res
        L31_2 = L31_2.drawSprite
        L32_2 = L8_2
        L33_2 = L29_2 - L25_2
        L34_2 = worldScale
        L33_2 = L33_2 / L34_2
        L34_2 = L30_2 - L26_2
        L35_2 = worldScale
        L34_2 = L34_2 / L35_2
        L35_2 = "HCENTER"
        L36_2 = "VCENTER"
        L37_2 = -L20_2
        L38_2 = L24_2
        L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
      else
        L31_2 = 0.1
        L32_2 = flyingBird
        L32_2 = L32_2.fadeEffectTimer
        if L32_2 == nil then
          L32_2 = flyingBird
          L32_2.fadeEffectTimer = L31_2
        end
        L32_2 = flyingBird
        L32_2 = L32_2.fadeEffectTimer
        if 0 <= L32_2 then
          L32_2 = res
          L32_2 = L32_2.drawSprite
          L33_2 = L8_2
          L34_2 = L29_2 - L25_2
          L35_2 = worldScale
          L34_2 = L34_2 / L35_2
          L35_2 = L30_2 - L26_2
          L36_2 = worldScale
          L35_2 = L35_2 / L36_2
          L36_2 = "HCENTER"
          L37_2 = "VCENTER"
          L38_2 = -L20_2
          L39_2 = flyingBird
          L39_2 = L39_2.fadeEffectTimer
          L39_2 = L39_2 / L31_2
          L38_2 = L38_2 * L39_2
          L39_2 = L24_2
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
        end
      end
    end
  end
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.min
  L9_2 = slingshotScale
  L9_2 = 20 * L9_2
  L10_2 = slingshotScale
  L10_2 = 5 * L10_2
  L11_2 = rubberBandLength
  L10_2 = L10_2 / L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = setRenderState
  L10_2 = screen
  L10_2 = L10_2.left
  L10_2 = -L10_2
  L11_2 = screen
  L11_2 = L11_2.top
  L11_2 = -L11_2
  L12_2 = worldScale
  L13_2 = worldScale
  L14_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = res
  L9_2 = L9_2.getSpritePivot
  L10_2 = "SLING_SHOT_01_BACK"
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = getLevelMetadata
  L12_2 = levelName
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2.hideBirdsAndSlingshot
  if not L11_2 then
    L11_2 = setRenderState
    L12_2 = screen
    L12_2 = L12_2.left
    L12_2 = -L12_2
    L12_2 = L12_2 + L4_2
    L13_2 = slingshotScale
    L12_2 = L12_2 / L13_2
    L13_2 = screen
    L13_2 = L13_2.top
    L13_2 = -L13_2
    L13_2 = L13_2 + L5_2
    L14_2 = slingshotScale
    L13_2 = L13_2 / L14_2
    L14_2 = worldScale
    L15_2 = slingshotScale
    L14_2 = L14_2 * L15_2
    L15_2 = worldScale
    L16_2 = slingshotScale
    L15_2 = L15_2 * L16_2
    L16_2 = slingShotAngle
    L17_2 = L9_2
    L18_2 = L10_2
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = objects
    L11_2 = L11_2.isDarkSideLevel
    if L11_2 then
      L11_2 = res
      L11_2 = L11_2.drawSprite
      L12_2 = "SLING_SHOT_DARK_01_BACK"
      L13_2 = 0
      L14_2 = 0
      L11_2(L12_2, L13_2, L14_2)
    else
      L11_2 = res
      L11_2 = L11_2.drawSprite
      L12_2 = "SLING_SHOT_01_BACK"
      L13_2 = 0
      L14_2 = 0
      L11_2(L12_2, L13_2, L14_2)
    end
  end
  L11_2 = slingshotScale
  L11_2 = 38.5 * L11_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.cos
  L13_2 = slingShotAngle
  L12_2 = L12_2(L13_2)
  L11_2 = L11_2 * L12_2
  L11_2 = L4_2 + L11_2
  L12_2 = slingshotScale
  L12_2 = 20 * L12_2
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.sin
  L14_2 = slingShotAngle
  L13_2 = L13_2(L14_2)
  L12_2 = L12_2 * L13_2
  L12_2 = L5_2 + L12_2
  L13_2 = slingshotScale
  L13_2 = 21 * L13_2
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.cos
  L15_2 = slingShotAngle
  L14_2 = L14_2(L15_2)
  L13_2 = L13_2 * L14_2
  L13_2 = L4_2 - L13_2
  L14_2 = slingshotScale
  L14_2 = 23 * L14_2
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.sin
  L16_2 = slingShotAngle
  L15_2 = L15_2(L16_2)
  L14_2 = L14_2 * L15_2
  L14_2 = L5_2 - L14_2
  L15_2 = "SLING_RUBBERBAND"
  L16_2 = objects
  L16_2 = L16_2.isDarkSideLevel
  if L16_2 then
    L15_2 = "SLING_RUBBERBAND_DARK"
  end
  L16_2 = getLevelMetadata
  L17_2 = levelName
  L16_2 = L16_2(L17_2)
  L16_2 = L16_2.hideBirdsAndSlingshot
  if not L16_2 then
    L16_2 = setRenderState
    L17_2 = 0
    L18_2 = 0
    L19_2 = 1
    L20_2 = 1
    L21_2 = 0
    L22_2 = 0
    L23_2 = 0
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L16_2 = deviceModel
    if L16_2 ~= "android" then
      L16_2 = drawTexturedLine2D
      L17_2 = L15_2
      L18_2 = screen
      L18_2 = L18_2.left
      L18_2 = L11_2 - L18_2
      L19_2 = worldScale
      L18_2 = L18_2 * L19_2
      L19_2 = screen
      L19_2 = L19_2.top
      L19_2 = L12_2 - L19_2
      L20_2 = worldScale
      L19_2 = L19_2 * L20_2
      L20_2 = screen
      L20_2 = L20_2.left
      L20_2 = L6_2 - L20_2
      L21_2 = worldScale
      L20_2 = L20_2 * L21_2
      L21_2 = screen
      L21_2 = L21_2.top
      L21_2 = L7_2 - L21_2
      L22_2 = worldScale
      L21_2 = L21_2 * L22_2
      L22_2 = worldScale
      L22_2 = L8_2 * L22_2
      L23_2 = 255
      L24_2 = 255
      L25_2 = 255
      L26_2 = 255
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    else
      L16_2 = drawRubberband
      L17_2 = screen
      L17_2 = L17_2.left
      L17_2 = L11_2 - L17_2
      L18_2 = worldScale
      L17_2 = L17_2 * L18_2
      L18_2 = screen
      L18_2 = L18_2.top
      L18_2 = L12_2 - L18_2
      L19_2 = worldScale
      L18_2 = L18_2 * L19_2
      L19_2 = screen
      L19_2 = L19_2.left
      L19_2 = L6_2 - L19_2
      L20_2 = worldScale
      L19_2 = L19_2 * L20_2
      L20_2 = screen
      L20_2 = L20_2.top
      L20_2 = L7_2 - L20_2
      L21_2 = worldScale
      L20_2 = L20_2 * L21_2
      L21_2 = worldScale
      L21_2 = L8_2 * L21_2
      L22_2 = L15_2
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    end
    L16_2 = selectedBird
    if L16_2 == nil then
      L16_2 = deviceModel
      if L16_2 ~= "android" then
        L16_2 = drawTexturedLine2D
        L17_2 = L15_2
        L18_2 = screen
        L18_2 = L18_2.left
        L18_2 = L13_2 - L18_2
        L19_2 = worldScale
        L18_2 = L18_2 * L19_2
        L19_2 = screen
        L19_2 = L19_2.top
        L19_2 = L14_2 - L19_2
        L20_2 = worldScale
        L19_2 = L19_2 * L20_2
        L20_2 = screen
        L20_2 = L20_2.left
        L20_2 = L6_2 - L20_2
        L21_2 = worldScale
        L20_2 = L20_2 * L21_2
        L21_2 = screen
        L21_2 = L21_2.top
        L21_2 = L7_2 - L21_2
        L22_2 = worldScale
        L21_2 = L21_2 * L22_2
        L22_2 = worldScale
        L22_2 = L8_2 * L22_2
        L23_2 = 255
        L24_2 = 255
        L25_2 = 255
        L26_2 = 255
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      else
        L16_2 = drawRubberband
        L17_2 = screen
        L17_2 = L17_2.left
        L17_2 = L13_2 - L17_2
        L18_2 = worldScale
        L17_2 = L17_2 * L18_2
        L18_2 = screen
        L18_2 = L18_2.top
        L18_2 = L14_2 - L18_2
        L19_2 = worldScale
        L18_2 = L18_2 * L19_2
        L19_2 = screen
        L19_2 = L19_2.left
        L19_2 = L6_2 - L19_2
        L20_2 = worldScale
        L19_2 = L19_2 * L20_2
        L20_2 = screen
        L20_2 = L20_2.top
        L20_2 = L7_2 - L20_2
        L21_2 = worldScale
        L20_2 = L20_2 * L21_2
        L21_2 = worldScale
        L21_2 = L8_2 * L21_2
        L22_2 = L15_2
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
    end
  end
  L16_2 = setRenderState
  L17_2 = screen
  L17_2 = L17_2.left
  L17_2 = -L17_2
  L17_2 = L17_2 + L6_2
  L18_2 = slingshotScale
  L17_2 = L17_2 / L18_2
  L18_2 = screen
  L18_2 = L18_2.top
  L18_2 = -L18_2
  L18_2 = L18_2 + L7_2
  L19_2 = slingshotScale
  L18_2 = L18_2 / L19_2
  L19_2 = worldScale
  L20_2 = slingshotScale
  L19_2 = L19_2 * L20_2
  L20_2 = worldScale
  L21_2 = slingshotScale
  L20_2 = L20_2 * L21_2
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L16_2 = {}
  L17_2 = _G
  L17_2 = L17_2.pairs
  L18_2 = objects
  L18_2 = L18_2.world
  L17_2, L18_2, L19_2 = L17_2(L18_2)
  for L20_2, L21_2 in L17_2, L18_2, L19_2 do
    L22_2 = L21_2.isAffectedByForceTimer
    if L22_2 ~= nil then
      L22_2 = L21_2.isAffectedByForceTimer
      if 0 < L22_2 then
        L22_2 = physicsToScreenTransform
        L23_2 = L21_2.x
        L24_2 = L21_2.y
        L22_2, L23_2 = L22_2(L23_2, L24_2)
        L24_2 = "FORCE_GLOW_BLUE_CIRCLE_L"
        L25_2 = blockTable
        L25_2 = L25_2.blocks
        L26_2 = L21_2.definition
        L25_2 = L25_2[L26_2]
        L25_2 = L25_2.definitionAffectedByForce
        if not L25_2 then
          L25_2 = L24_2
        end
        L26_2 = L21_2.gravityFilterCategory
        L26_2 = L26_2 == "YODA_FORCE_OBJECT"
        L27_2 = SettingsWrapper
        L28_2 = L27_2
        L27_2 = L27_2.isDarkSide
        L27_2 = L27_2(L28_2)
        if L27_2 then
          L27_2 = L21_2.forceEffectColor
          if L27_2 ~= "BLUE" then
            L27_2 = _G
            L27_2 = L27_2.string
            L27_2 = L27_2.gsub
            L28_2 = L25_2
            L29_2 = "BLUE"
            L30_2 = "RED"
            L27_2 = L27_2(L28_2, L29_2, L30_2)
            L25_2 = L27_2
          end
        end
        L27_2 = SettingsWrapper
        L28_2 = L27_2
        L27_2 = L27_2.isDarkSide
        L27_2 = L27_2(L28_2)
        if not L27_2 then
          L27_2 = L21_2.forceEffectColor
          if L27_2 == "RED" then
            L27_2 = _G
            L27_2 = L27_2.string
            L27_2 = L27_2.gsub
            L28_2 = L25_2
            L29_2 = "BLUE"
            L30_2 = "RED"
            L27_2 = L27_2(L28_2, L29_2, L30_2)
            L25_2 = L27_2
          end
        end
        if L25_2 ~= nil then
          L27_2 = blockTable
          L27_2 = L27_2.blocks
          L28_2 = L21_2.definition
          L27_2 = L27_2[L28_2]
          L27_2 = L27_2.scale
          if not L27_2 then
            L27_2 = 1
          end
          L28_2 = blockTable
          L28_2 = L28_2.blocks
          L29_2 = L21_2.definition
          L28_2 = L28_2[L29_2]
          L28_2 = L28_2.glowScale
          if not L28_2 then
            L28_2 = 1
          end
          L27_2 = L27_2 * L28_2
          L28_2 = worldScale
          L27_2 = L27_2 * L28_2
          L28_2 = L27_2 + 0.1
          L29_2 = _G
          L29_2 = L29_2.math
          L29_2 = L29_2.cos
          L30_2 = L21_2.isAffectedByForceTimer
          L30_2 = L30_2 * 4
          L31_2 = _G
          L31_2 = L31_2.math
          L31_2 = L31_2.pi
          L31_2 = L31_2 * 2
          L30_2 = L30_2 % L31_2
          L29_2 = L29_2(L30_2)
          L30_2 = L27_2 * 0.1
          L29_2 = L29_2 * L30_2
          L27_2 = L28_2 - L29_2
          L28_2 = L21_2.angle
          L29_2 = blockTable
          L29_2 = L29_2.blocks
          L30_2 = L21_2.definition
          L29_2 = L29_2[L30_2]
          L29_2 = L29_2.glowRotation
          if not L29_2 then
            L29_2 = 0
          end
          L30_2 = _G
          L30_2 = L30_2.math
          L30_2 = L30_2.pi
          L29_2 = L29_2 * L30_2
          L29_2 = L29_2 * 2
          L29_2 = L29_2 / 360
          L28_2 = L28_2 + L29_2
          L29_2 = res
          L29_2 = L29_2.getSpritePivot
          L30_2 = L25_2
          L29_2, L30_2 = L29_2(L30_2)
          L31_2 = _G
          L31_2 = L31_2.math
          L31_2 = L31_2.min
          L32_2 = L21_2.isAffectedByForceTimer
          L33_2 = forceGlowFadeTimer
          L32_2 = L32_2 / L33_2
          L33_2 = 1
          L31_2 = L31_2(L32_2, L33_2)
          L32_2 = setRenderState
          L33_2 = L22_2 / L27_2
          L34_2 = L23_2 / L27_2
          L35_2 = L27_2
          L36_2 = L27_2
          L37_2 = L28_2
          L38_2 = L29_2
          L39_2 = L30_2
          L40_2 = L31_2
          L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
          L32_2 = _G
          L32_2 = L32_2.res
          L32_2 = L32_2.drawSprite
          L33_2 = L25_2
          L34_2 = 0
          L35_2 = 0
          L32_2(L33_2, L34_2, L35_2)
        end
      end
    end
    L22_2 = L21_2.gravityFilterCategory
    if L22_2 then
      L22_2 = L21_2.gravityFilterCategory
      if L22_2 == "FORCE_OBJECT" then
        goto lbl_979
      end
      L22_2 = L21_2.gravityFilterCategory
      if L22_2 == "YODA_FORCE_OBJECT" then
        goto lbl_979
      end
    end
    L22_2 = L21_2.isHeldByForceTimer
    if L22_2 ~= nil then
      L22_2 = L21_2.isHeldByForceTimer
      ::lbl_979::
      if 0 < L22_2 then
        L22_2 = physicsToScreenTransform
        L23_2 = L21_2.x
        L24_2 = L21_2.y
        L22_2, L23_2 = L22_2(L23_2, L24_2)
        L24_2 = L21_2.gravityFilterCategory
        L24_2 = L24_2 == "YODA_FORCE_OBJECT" or L24_2
        L25_2 = blockTable
        L25_2 = L25_2.blocks
        L26_2 = L21_2.definition
        L25_2 = L25_2[L26_2]
        L25_2 = L25_2.definitionHeldByForce
        if L24_2 then
          L26_2 = blockTable
          L26_2 = L26_2.blocks
          L27_2 = L21_2.definition
          L26_2 = L26_2[L27_2]
          L26_2 = L26_2.definitionHeldByYodaForce
          L25_2 = L26_2 or L25_2
          if not L26_2 then
            L25_2 = "FORCE_GLOW_GREEN_CIRCLE_L"
          end
          L26_2 = objects
          L26_2 = L26_2.world
          L26_2 = L26_2[L20_2]
          L26_2.yodaForce = true
        end
        if L25_2 ~= nil then
          L26_2 = L21_2.forceEffectColor
          if L26_2 then
            L26_2 = L21_2.originalForceSprite
            if L26_2 then
              L25_2 = L21_2.originalForceSprite
            else
              L26_2 = _G
              L26_2 = L26_2.string
              L26_2 = L26_2.gsub
              L27_2 = L25_2
              L28_2 = "RED"
              L29_2 = L21_2.forceEffectColor
              L26_2 = L26_2(L27_2, L28_2, L29_2)
              L25_2 = L26_2
              L21_2.originalForceSprite = L25_2
            end
          end
        end
        if L25_2 ~= nil then
          L26_2 = blockTable
          L26_2 = L26_2.blocks
          L27_2 = L21_2.definition
          L26_2 = L26_2[L27_2]
          L26_2 = L26_2.scale
          if not L26_2 then
            L26_2 = 1
          end
          L27_2 = blockTable
          L27_2 = L27_2.blocks
          L28_2 = L21_2.definition
          L27_2 = L27_2[L28_2]
          L27_2 = L27_2.glowScale
          if not L27_2 then
            L27_2 = 1
          end
          L26_2 = L26_2 * L27_2
          L27_2 = worldScale
          L26_2 = L26_2 * L27_2
          L27_2 = L26_2 + 0.1
          L28_2 = _G
          L28_2 = L28_2.math
          L28_2 = L28_2.cos
          L29_2 = A0_2.heldByForceTimer
          L29_2 = L29_2 * 2
          L30_2 = _G
          L30_2 = L30_2.math
          L30_2 = L30_2.pi
          L30_2 = L30_2 * 2
          L29_2 = L29_2 % L30_2
          L28_2 = L28_2(L29_2)
          L29_2 = L26_2 * 0.1
          L28_2 = L28_2 * L29_2
          L26_2 = L27_2 - L28_2
          L27_2 = L21_2.angle
          L28_2 = blockTable
          L28_2 = L28_2.blocks
          L29_2 = L21_2.definition
          L28_2 = L28_2[L29_2]
          L28_2 = L28_2.glowRotation
          if not L28_2 then
            L28_2 = 0
          end
          L29_2 = _G
          L29_2 = L29_2.math
          L29_2 = L29_2.pi
          L28_2 = L28_2 * L29_2
          L28_2 = L28_2 * 2
          L28_2 = L28_2 / 360
          L27_2 = L27_2 + L28_2
          L28_2 = res
          L28_2 = L28_2.getSpritePivot
          L29_2 = L25_2
          L28_2, L29_2 = L28_2(L29_2)
          L30_2 = 1
          L31_2 = L21_2.isHeldByForceTimer
          if L31_2 ~= nil then
            L31_2 = L21_2.isHeldByForceTimer
            if 0 < L31_2 then
              L31_2 = _G
              L31_2 = L31_2.math
              L31_2 = L31_2.min
              L32_2 = L21_2.isHeldByForceTimer
              L33_2 = forceGlowFadeTimer
              L32_2 = L32_2 / L33_2
              L33_2 = 1
              L31_2 = L31_2(L32_2, L33_2)
              L30_2 = L31_2
            end
          end
          L31_2 = setRenderState
          L32_2 = L22_2 / L26_2
          L33_2 = L23_2 / L26_2
          L34_2 = L26_2
          L35_2 = L26_2
          L36_2 = L27_2
          L37_2 = L28_2
          L38_2 = L29_2
          L39_2 = L30_2
          L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
          L31_2 = _G
          L31_2 = L31_2.res
          L31_2 = L31_2.drawSprite
          L32_2 = L25_2
          L33_2 = 0
          L34_2 = 0
          L31_2(L32_2, L33_2, L34_2)
        end
      end
    end
    L22_2 = isInGameMode
    L22_2 = L22_2()
    if L22_2 then
      L22_2 = L21_2.levelGoal
      if L22_2 then
        L22_2 = g_showTargetVisualizationTimer
        if L22_2 then
          L22_2 = g_targetVisualizationRelativeTime
          if L22_2 then
            L22_2 = _G
            L22_2 = L22_2.table
            L22_2 = L22_2.insert
            L23_2 = L16_2
            L24_2 = L21_2
            L22_2(L23_2, L24_2)
          end
        end
      end
    end
  end
  L17_2 = {}
  L18_2 = {}
  L19_2 = _G
  L19_2 = L19_2.pairs
  L20_2 = objects
  L20_2 = L20_2.world
  L19_2, L20_2, L21_2 = L19_2(L20_2)
  for L22_2, L23_2 in L19_2, L20_2, L21_2 do
    if L23_2 ~= nil then
      L24_2 = L23_2.inBubble
      if not L24_2 then
        L24_2 = L23_2.bubblePrimaryTarget
        if not L24_2 then
          goto lbl_1385
        end
      end
      L24_2 = L23_2.reticleName
      if not L24_2 then
        L24_2 = L23_2.controllable
        if not L24_2 then
          goto lbl_1286
        end
      end
      L24_2 = nil
      L25_2 = L23_2.reticleName
      if L25_2 then
        L25_2 = objects
        L25_2 = L25_2.world
        L26_2 = L23_2.reticleName
        L24_2 = L25_2[L26_2]
      else
        L24_2 = L23_2
      end
      if L24_2 then
        L25_2 = blockTable
        L25_2 = L25_2.blocks
        L26_2 = L24_2.definition
        L25_2 = L25_2[L26_2]
        L26_2 = setRenderState
        L27_2 = 0
        L28_2 = 0
        L29_2 = 1
        L30_2 = 1
        L31_2 = 0
        L32_2 = 0
        L33_2 = 0
        L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
        L26_2 = physicsToWorldTransform
        L27_2 = L24_2.x
        L28_2 = L24_2.y
        L26_2, L27_2 = L26_2(L27_2, L28_2)
        L28_2 = nil
        L29_2 = nil
        L30_2 = L23_2.bubbleBeamTimer
        if L30_2 then
          L30_2 = L23_2.bubbleBeamPhase
          if L30_2 == 1 then
            L30_2 = L23_2.bubblePrimaryTarget
            if L30_2 then
              L30_2 = physicsToWorldTransform
              L31_2 = L23_2.bubbleActivationX
              L32_2 = L23_2.bubbleActivationX
              L33_2 = L24_2.x
              L32_2 = L32_2 - L33_2
              L33_2 = L23_2.bubbleBeamTimer
              L34_2 = L25_2.specialtyBeamPhase1Time
              L33_2 = L33_2 / L34_2
              L32_2 = L32_2 * L33_2
              L31_2 = L31_2 - L32_2
              L32_2 = L23_2.bubbleActivationY
              L33_2 = L23_2.bubbleActivationY
              L34_2 = L24_2.y
              L33_2 = L33_2 - L34_2
              L34_2 = L23_2.bubbleBeamTimer
              L35_2 = L25_2.specialtyBeamPhase1Time
              L34_2 = L34_2 / L35_2
              L33_2 = L33_2 * L34_2
              L32_2 = L32_2 - L33_2
              L30_2, L31_2 = L30_2(L31_2, L32_2)
              L29_2 = L31_2
              L28_2 = L30_2
            end
          else
            L30_2 = physicsToWorldTransform
            L31_2 = L23_2.x
            L32_2 = L23_2.x
            L33_2 = L23_2.bubbleActivationX
            L32_2 = L32_2 - L33_2
            L33_2 = L23_2.bubbleBeamTimer
            L34_2 = L25_2.specialtyBeamPhase2Time
            L33_2 = L33_2 / L34_2
            L32_2 = L32_2 * L33_2
            L31_2 = L31_2 - L32_2
            L32_2 = L23_2.y
            L33_2 = L23_2.y
            L34_2 = L23_2.bubbleActivationY
            L33_2 = L33_2 - L34_2
            L34_2 = L23_2.bubbleBeamTimer
            L35_2 = L25_2.specialtyBeamPhase2Time
            L34_2 = L34_2 / L35_2
            L33_2 = L33_2 * L34_2
            L32_2 = L32_2 - L33_2
            L30_2, L31_2 = L30_2(L31_2, L32_2)
            L29_2 = L31_2
            L28_2 = L30_2
          end
        else
          L30_2 = physicsToWorldTransform
          L31_2 = L23_2.x
          L32_2 = L23_2.y
          L30_2, L31_2 = L30_2(L31_2, L32_2)
          L29_2 = L31_2
          L28_2 = L30_2
        end
        if L28_2 then
          L30_2 = drawTexturedLine2D
          L31_2 = "PINK_BIRD_GRAVITY_RAY_PINK_"
          L32_2 = L23_2.bubbleBeamAnimationFrame
          L31_2 = L31_2 .. L32_2
          L32_2 = screen
          L32_2 = L32_2.left
          L32_2 = L26_2 - L32_2
          L33_2 = worldScale
          L32_2 = L32_2 * L33_2
          L33_2 = screen
          L33_2 = L33_2.top
          L33_2 = L27_2 - L33_2
          L34_2 = worldScale
          L33_2 = L33_2 * L34_2
          L34_2 = screen
          L34_2 = L34_2.left
          L34_2 = L28_2 - L34_2
          L35_2 = worldScale
          L34_2 = L34_2 * L35_2
          L35_2 = screen
          L35_2 = L35_2.top
          L35_2 = L29_2 - L35_2
          L36_2 = worldScale
          L35_2 = L35_2 * L36_2
          L36_2 = worldScale
          L36_2 = 40 * L36_2
          L37_2 = gameWorldScale
          L36_2 = L36_2 * L37_2
          L37_2 = 255
          L38_2 = 255
          L39_2 = 255
          L40_2 = 255
          L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
        end
      end
      ::lbl_1286::
      L24_2 = L23_2.bubbleAntiGravityTimer
      if L24_2 then
        L24_2 = L23_2.bubbleAntiGravityTimer
        if 0 < L24_2 then
          L24_2 = physicsToScreenTransform
          L25_2 = L23_2.x
          L26_2 = L23_2.y
          L24_2, L25_2 = L24_2(L25_2, L26_2)
          L26_2 = blockTable
          L26_2 = L26_2.blocks
          L27_2 = L23_2.definition
          L26_2 = L26_2[L27_2]
          L26_2 = L26_2.definitionLiftedByLeia
          if not L26_2 then
            L26_2 = "FORCE_GLOW_PINK_CIRCLE_L"
          end
          if L26_2 ~= nil then
            L27_2 = blockTable
            L27_2 = L27_2.blocks
            L28_2 = L23_2.definition
            L27_2 = L27_2[L28_2]
            L27_2 = L27_2.scale
            if not L27_2 then
              L27_2 = 1
            end
            L28_2 = blockTable
            L28_2 = L28_2.blocks
            L29_2 = L23_2.definition
            L28_2 = L28_2[L29_2]
            L28_2 = L28_2.glowScale
            if not L28_2 then
              L28_2 = 1
            end
            L27_2 = L27_2 * L28_2
            L28_2 = worldScale
            L27_2 = L27_2 * L28_2
            L28_2 = L27_2 + 0.1
            L29_2 = _G
            L29_2 = L29_2.math
            L29_2 = L29_2.cos
            L30_2 = L23_2.bubbleAntiGravityTimer
            L30_2 = L30_2 * 4
            L31_2 = _G
            L31_2 = L31_2.math
            L31_2 = L31_2.pi
            L31_2 = L31_2 * 2
            L30_2 = L30_2 % L31_2
            L29_2 = L29_2(L30_2)
            L30_2 = L27_2 * 0.1
            L29_2 = L29_2 * L30_2
            L27_2 = L28_2 - L29_2
            L28_2 = L23_2.angle
            L29_2 = blockTable
            L29_2 = L29_2.blocks
            L30_2 = L23_2.definition
            L29_2 = L29_2[L30_2]
            L29_2 = L29_2.glowRotation
            if not L29_2 then
              L29_2 = 0
            end
            L30_2 = _G
            L30_2 = L30_2.math
            L30_2 = L30_2.pi
            L29_2 = L29_2 * L30_2
            L29_2 = L29_2 * 2
            L29_2 = L29_2 / 360
            L28_2 = L28_2 + L29_2
            L29_2 = res
            L29_2 = L29_2.getSpritePivot
            L30_2 = L26_2
            L29_2, L30_2 = L29_2(L30_2)
            L31_2 = _G
            L31_2 = L31_2.math
            L31_2 = L31_2.min
            L32_2 = L23_2.bubbleAntiGravityTimer
            L33_2 = forceGlowFadeTimer
            L32_2 = L32_2 / L33_2
            L33_2 = 1
            L31_2 = L31_2(L32_2, L33_2)
            L32_2 = setRenderState
            L33_2 = L24_2 / L27_2
            L34_2 = L25_2 / L27_2
            L35_2 = L27_2
            L36_2 = L27_2
            L37_2 = L28_2
            L38_2 = L29_2
            L39_2 = L30_2
            L40_2 = L31_2
            L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
            L32_2 = _G
            L32_2 = L32_2.res
            L32_2 = L32_2.drawSprite
            L33_2 = L26_2
            L34_2 = 0
            L35_2 = 0
            L32_2(L33_2, L34_2, L35_2)
          end
        end
      end
    end
    ::lbl_1385::
    L24_2 = L23_2.tongueRedactAnimation
    if not L24_2 then
      L24_2 = L23_2.tongueOutAnimation
      if not L24_2 then
        L24_2 = L23_2.pullBackObj
        if not L24_2 then
          goto lbl_1400
        end
      end
    end
    L24_2 = _G
    L24_2 = L24_2.table
    L24_2 = L24_2.insert
    L25_2 = L17_2
    L26_2 = L23_2
    L24_2(L25_2, L26_2)
    ::lbl_1400::
    L24_2 = L23_2.forceLightningSparkNumber
    if L24_2 then
      L24_2 = _G
      L24_2 = L24_2.table
      L24_2 = L24_2.insert
      L25_2 = L18_2
      L26_2 = L23_2
      L24_2(L25_2, L26_2)
    end
    L24_2 = L23_2.trailAlpha
    if L24_2 then
      L24_2 = actions
      L24_2 = L24_2.drawTrailVisualization
      L25_2 = L23_2
      L24_2(L25_2)
    end
  end
  L19_2 = setRenderState
  L20_2 = screen
  L20_2 = L20_2.left
  L20_2 = -L20_2
  L21_2 = screen
  L21_2 = L21_2.top
  L21_2 = -L21_2
  L22_2 = worldScale
  L23_2 = worldScale
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L19_2 = native_setAlpha
  L20_2 = 1
  L19_2(L20_2)
  L19_2 = native_drawBackgroundParticles
  L19_2()
  L19_2 = native_setZOrderRange
  L20_2 = 1
  L21_2 = 60
  L19_2(L20_2, L21_2)
  L19_2 = drawGameNative
  L20_2 = -1
  L19_2(L20_2)
  L19_2 = _G
  L19_2 = L19_2.ipairs
  L20_2 = objects
  L20_2 = L20_2.pathItems
  L19_2, L20_2, L21_2 = L19_2(L20_2)
  for L22_2, L23_2 in L19_2, L20_2, L21_2 do
    L24_2 = L23_2.dots
    if L24_2 then
      L24_2 = _G
      L24_2 = L24_2.ipairs
      L25_2 = L23_2.dots
      L24_2, L25_2, L26_2 = L24_2(L25_2)
      for L27_2, L28_2 in L24_2, L25_2, L26_2 do
        L29_2 = physicsToScreenTransform
        L30_2 = L28_2.x
        L31_2 = L28_2.y
        L29_2, L30_2 = L29_2(L30_2, L31_2)
        L31_2 = worldScale
        L32_2 = gameWorldScale
        L31_2 = L31_2 * L32_2
        L32_2 = L28_2.scale
        L31_2 = L31_2 * L32_2
        L32_2 = setRenderState
        L33_2 = 0
        L34_2 = 0
        L35_2 = L31_2
        L36_2 = L31_2
        L37_2 = 0
        L38_2 = 0
        L39_2 = 0
        L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
        L32_2 = L23_2.alpha
        if L32_2 then
          L32_2 = native_setAlpha
          L33_2 = L23_2.alpha
          L32_2(L33_2)
        end
        L32_2 = _G
        L32_2 = L32_2.res
        L32_2 = L32_2.drawSprite
        L33_2 = L28_2.sprite
        L34_2 = L29_2 / L31_2
        L35_2 = L30_2 / L31_2
        L32_2(L33_2, L34_2, L35_2)
        L32_2 = L23_2.alpha
        if L32_2 then
          L32_2 = native_setAlpha
          L33_2 = 1
          L32_2(L33_2)
        end
      end
    end
  end
  L19_2 = #L18_2
  if 0 < L19_2 then
    L19_2 = _G
    L19_2 = L19_2.table
    L19_2 = L19_2.sort
    L20_2 = L18_2
    
    function L21_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = _G
      L2_3 = L2_3.tonumber
      L3_3 = _G
      L3_3 = L3_3.string
      L3_3 = L3_3.sub
      L4_3 = A0_3.parentName
      L5_3 = -1
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L3_3 = _G
      L3_3 = L3_3.tonumber
      L4_3 = _G
      L4_3 = L4_3.string
      L4_3 = L4_3.sub
      L5_3 = A1_3.parentName
      L6_3 = -1
      L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      if L2_3 ~= L3_3 then
        L4_3 = L2_3 < L3_3
        return L4_3
      end
      L4_3 = A0_3.forceLightningSparkNumber
      L5_3 = A1_3.forceLightningSparkNumber
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    
    L19_2(L20_2, L21_2)
    L19_2 = nil
    L20_2 = nil
    L21_2 = nil
    L22_2 = _G
    L22_2 = L22_2.ipairs
    L23_2 = L18_2
    L22_2, L23_2, L24_2 = L22_2(L23_2)
    for L25_2, L26_2 in L22_2, L23_2, L24_2 do
      L27_2 = L26_2.parentName
      if L19_2 ~= L27_2 then
        L19_2 = L26_2.parentName
        L27_2 = objects
        L27_2 = L27_2.world
        L28_2 = L26_2.parentName
        L27_2 = L27_2[L28_2]
        if L27_2 then
          L28_2 = L27_2.x
          L21_2 = L27_2.y
          L20_2 = L28_2
        end
      end
      L27_2 = actions
      L27_2 = L27_2.drawLightning
      L28_2 = L20_2 or L28_2
      if not L20_2 then
        L28_2 = L26_2.x
      end
      L29_2 = L21_2 or L29_2
      if not L21_2 then
        L29_2 = L26_2.y
      end
      L30_2 = L26_2.x
      L31_2 = L26_2.y
      L27_2(L28_2, L29_2, L30_2, L31_2)
      L27_2 = L26_2.x
      L21_2 = L26_2.y
      L20_2 = L27_2
    end
  end
  L19_2 = _G
  L19_2 = L19_2.ipairs
  L20_2 = L16_2
  L19_2, L20_2, L21_2 = L19_2(L20_2)
  for L22_2, L23_2 in L19_2, L20_2, L21_2 do
    L24_2 = physicsToScreenTransform
    L25_2 = L23_2.x
    L26_2 = L23_2.y
    L24_2, L25_2 = L24_2(L25_2, L26_2)
    L26_2 = blockTable
    L26_2 = L26_2.blocks
    L27_2 = L23_2.definition
    L26_2 = L26_2[L27_2]
    L26_2 = L26_2.scale
    if not L26_2 then
      L26_2 = 1
    end
    L27_2 = worldScale
    L26_2 = L26_2 * L27_2
    L27_2 = g_targetVisualizationEffectSpriteScale
    L26_2 = L26_2 * L27_2
    L27_2 = g_targetVisualizationRelativeTime
    L27_2 = 1 - L27_2
    L28_2 = g_targetVisualizationEffectScale
    L27_2 = L27_2 * L28_2
    L27_2 = 1 - L27_2
    L26_2 = L26_2 * L27_2
    L27_2 = blockTable
    L27_2 = L27_2.blocks
    L28_2 = L23_2.definition
    L27_2 = L27_2[L28_2]
    L27_2 = L27_2.targetVisualizationDefaultSprites
    if not L27_2 then
      L27_2 = g_targetVisualizationDefaultSprites
    end
    L28_2 = _G
    L28_2 = L28_2.math
    L28_2 = L28_2.floor
    L29_2 = g_targetVisualizationRelativeTime
    L30_2 = #L27_2
    L29_2 = L29_2 * L30_2
    L28_2 = L28_2(L29_2)
    L28_2 = L28_2 + 1
    L29_2 = _G
    L29_2 = L29_2.math
    L29_2 = L29_2.min
    L30_2 = L28_2
    L31_2 = #L27_2
    L29_2 = L29_2(L30_2, L31_2)
    L28_2 = L29_2
    L29_2 = _G
    L29_2 = L29_2.math
    L29_2 = L29_2.max
    L30_2 = L28_2
    L31_2 = 1
    L29_2 = L29_2(L30_2, L31_2)
    L28_2 = L29_2
    L29_2 = res
    L29_2 = L29_2.getSpritePivot
    L30_2 = L27_2[L28_2]
    L29_2, L30_2 = L29_2(L30_2)
    L31_2 = setRenderState
    L32_2 = L24_2 / L26_2
    L33_2 = L25_2 / L26_2
    L34_2 = L26_2
    L35_2 = L26_2
    L36_2 = L23_2.angle
    L37_2 = L29_2
    L38_2 = L30_2
    L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
    L31_2 = L23_2.targetVisualDisabled
    if not L31_2 then
      L31_2 = _G
      L31_2 = L31_2.res
      L31_2 = L31_2.drawSprite
      L32_2 = L27_2[L28_2]
      L33_2 = 0
      L34_2 = 0
      L31_2(L32_2, L33_2, L34_2)
    end
  end
  L19_2 = mightyEagleFlashAlpha
  if L19_2 ~= nil then
    L19_2 = drawRect
    L20_2 = 1
    L21_2 = 1
    L22_2 = 1
    L23_2 = mightyEagleFlashAlpha
    L24_2 = 0
    L25_2 = 0
    L26_2 = screenWidth
    L27_2 = screenHeight
    L28_2 = false
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  end
  L19_2 = _G
  L19_2 = L19_2.pairs
  L20_2 = objects
  L20_2 = L20_2.decorationObjects
  L19_2, L20_2, L21_2 = L19_2(L20_2)
  for L22_2, L23_2 in L19_2, L20_2, L21_2 do
    L24_2 = objects
    L24_2 = L24_2.world
    L24_2 = L24_2[L22_2]
    if L24_2 ~= nil then
      L25_2 = getObjectDefinition
      L26_2 = L22_2
      L25_2 = L25_2(L26_2)
      L26_2 = L25_2.decorations
      L26_2 = L26_2.amount
      if not L26_2 then
        L26_2 = 1
      end
      L27_2 = L25_2.decorations
      L27_2 = L27_2.angleIncrement
      if not L27_2 then
        L27_2 = 0
      end
      L28_2 = L24_2.angle
      L29_2 = 1
      L30_2 = _G
      L30_2 = L30_2.math
      L30_2 = L30_2.pi
      L30_2 = L27_2 * L30_2
      L27_2 = L30_2 / 180
      L30_2 = 1
      L31_2 = L26_2
      L32_2 = 1
      for L33_2 = L30_2, L31_2, L32_2 do
        L34_2 = _G
        L34_2 = L34_2.pairs
        L35_2 = L25_2.decorations
        L35_2 = L35_2.objects
        L34_2, L35_2, L36_2 = L34_2(L35_2)
        for L37_2, L38_2 in L34_2, L35_2, L36_2 do
          L39_2 = L38_2.scale
          L40_2 = worldScale
          L29_2 = L39_2 * L40_2
          L39_2 = physicsToScreenTransform
          L40_2 = L24_2.x
          L41_2 = L38_2.posX
          L40_2 = L40_2 + L41_2
          L41_2 = L24_2.y
          L42_2 = L38_2.posY
          L41_2 = L41_2 + L42_2
          L39_2, L40_2 = L39_2(L40_2, L41_2)
          L41_2 = setRenderState
          L42_2 = L39_2 / L29_2
          L43_2 = L40_2 / L29_2
          L44_2 = L29_2
          L45_2 = L29_2
          L46_2 = L28_2
          L47_2 = res
          L47_2 = L47_2.getSpritePivot
          L48_2 = L38_2.sprite
          L47_2, L48_2 = L47_2(L48_2)
          L41_2(L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
          L41_2 = res
          L41_2 = L41_2.drawSprite
          L42_2 = L38_2.sprite
          L43_2 = 0
          L44_2 = 0
          L41_2(L42_2, L43_2, L44_2)
        end
        L28_2 = L28_2 + L27_2
      end
    else
      L25_2 = objects
      L25_2 = L25_2.decorationObjects
      L25_2[L22_2] = nil
    end
  end
  L19_2 = flyingBird
  if L19_2 ~= nil then
    L19_2 = flyingBird
    L19_2 = L19_2.boostAim
    if L19_2 ~= nil then
      L19_2 = physicsToScreenTransform
      L20_2 = flyingBird
      L20_2 = L20_2.boostAim
      L20_2 = L20_2.x
      L21_2 = flyingBird
      L21_2 = L21_2.boostAim
      L21_2 = L21_2.y
      L19_2, L20_2 = L19_2(L20_2, L21_2)
      L21_2 = worldScale
      L21_2 = L21_2 * 2
      L22_2 = setRenderState
      L23_2 = L19_2 / L21_2
      L24_2 = L20_2 / L21_2
      L25_2 = L21_2
      L26_2 = L21_2
      L27_2 = 0
      L28_2 = 0
      L29_2 = 0
      L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L22_2 = _G
      L22_2 = L22_2.res
      L22_2 = L22_2.drawSprite
      L23_2 = flyingBird
      L23_2 = L23_2.boostAim
      L23_2 = L23_2.sprite
      L24_2 = 0
      L25_2 = 0
      L22_2(L23_2, L24_2, L25_2)
      L22_2 = setRenderState
      L23_2 = 0
      L24_2 = 0
      L25_2 = 1
      L26_2 = 1
      L27_2 = 0
      L28_2 = 0
      L29_2 = 0
      L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    end
  end
  L19_2 = _G
  L19_2 = L19_2.pairs
  L20_2 = BHTrajectory
  L19_2, L20_2, L21_2 = L19_2(L20_2)
  for L22_2, L23_2 in L19_2, L20_2, L21_2 do
    L24_2 = physicsToScreenTransform
    L25_2 = L23_2.x
    L26_2 = L23_2.y
    L24_2, L25_2 = L24_2(L25_2, L26_2)
    L26_2 = worldScale
    L26_2 = L26_2 + 0.5
    L27_2 = L23_2.timer
    L26_2 = L26_2 * L27_2
    L26_2 = L26_2 * 2
    L27_2 = setRenderState
    L28_2 = L24_2 / L26_2
    L29_2 = L25_2 / L26_2
    L30_2 = L26_2
    L31_2 = L26_2
    L32_2 = 0
    L33_2 = 0
    L34_2 = 0
    L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
    L27_2 = _G
    L27_2 = L27_2.res
    L27_2 = L27_2.drawSprite
    L28_2 = "TRAIL_BLACK_HOLE_BIRD"
    L29_2 = 0
    L30_2 = 0
    L27_2(L28_2, L29_2, L30_2)
    L27_2 = setRenderState
    L28_2 = 0
    L29_2 = 0
    L30_2 = 1
    L31_2 = 1
    L32_2 = 0
    L33_2 = 0
    L34_2 = 0
    L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  end
  L19_2 = freezingObjects
  if L19_2 ~= nil then
    L19_2 = 0
    L20_2 = _G
    L20_2 = L20_2.pairs
    L21_2 = freezingObjects
    L21_2 = L21_2.objects
    L20_2, L21_2, L22_2 = L20_2(L21_2)
    for L23_2, L24_2 in L20_2, L21_2, L22_2 do
      L25_2 = objects
      L25_2 = L25_2.world
      L25_2 = L25_2[L23_2]
      if L25_2 ~= nil then
        L26_2 = _G
        L26_2 = L26_2.pairs
        L27_2 = L24_2.icicles
        L26_2, L27_2, L28_2 = L26_2(L27_2)
        for L29_2, L30_2 in L26_2, L27_2, L28_2 do
          L31_2 = worldToPhysicsTransform
          L32_2 = res
          L32_2 = L32_2.getSpriteBounds
          L33_2 = L25_2.sprite
          L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L32_2(L33_2)
          L31_2, L32_2 = L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
          L33_2 = blockTable
          L33_2 = L33_2.blocks
          L34_2 = L25_2.definition
          L33_2 = L33_2[L34_2]
          L33_2 = L33_2.type
          if L33_2 == "circle" then
            L33_2 = blockTable
            L33_2 = L33_2.blocks
            L34_2 = L25_2.definition
            L33_2 = L33_2[L34_2]
            L33_2 = L33_2.radius
            if L33_2 ~= nil then
              L33_2 = blockTable
              L33_2 = L33_2.blocks
              L34_2 = L25_2.definition
              L33_2 = L33_2[L34_2]
              L33_2 = L33_2.radius
              L34_2 = blockTable
              L34_2 = L34_2.blocks
              L35_2 = L25_2.definition
              L34_2 = L34_2[L35_2]
              L32_2 = L34_2.radius
              L31_2 = L33_2
            end
          end
          L33_2 = L30_2.dm
          L33_2 = L31_2 * L33_2
          L34_2 = _G
          L34_2 = L34_2.math
          L34_2 = L34_2.cos
          L35_2 = L25_2.angle
          L34_2 = L34_2(L35_2)
          L33_2 = L33_2 * L34_2
          L34_2 = L32_2 * 0.5
          L35_2 = _G
          L35_2 = L35_2.math
          L35_2 = L35_2.sin
          L36_2 = L25_2.angle
          L35_2 = L35_2(L36_2)
          L34_2 = L34_2 * L35_2
          L33_2 = L33_2 + L34_2
          L34_2 = -L32_2
          L34_2 = L34_2 * 0.5
          L35_2 = _G
          L35_2 = L35_2.math
          L35_2 = L35_2.cos
          L36_2 = L25_2.angle
          L35_2 = L35_2(L36_2)
          L34_2 = L34_2 * L35_2
          L35_2 = L30_2.dm
          L35_2 = L31_2 * L35_2
          L36_2 = _G
          L36_2 = L36_2.math
          L36_2 = L36_2.sin
          L37_2 = L25_2.angle
          L36_2 = L36_2(L37_2)
          L35_2 = L35_2 * L36_2
          L34_2 = L34_2 + L35_2
          L35_2 = worldScale
          L35_2 = L35_2 * 2
          L36_2 = gameWorldScale
          L35_2 = L35_2 * L36_2
          L36_2 = L30_2.side
          if L36_2 then
            L36_2 = physicsToScreenTransform
            L37_2 = L25_2.x
            L37_2 = L37_2 - L33_2
            L38_2 = L25_2.y
            L38_2 = L38_2 - L34_2
            L36_2, L37_2 = L36_2(L37_2, L38_2)
            L38_2 = setRenderState
            L39_2 = L36_2 / L35_2
            L40_2 = L37_2 / L35_2
            L41_2 = L35_2
            L42_2 = L35_2
            L43_2 = L25_2.angle
            L44_2 = _G
            L44_2 = L44_2.math
            L44_2 = L44_2.pi
            L43_2 = L43_2 - L44_2
            L44_2 = res
            L44_2 = L44_2.getSpritePivot
            L45_2 = L30_2.sprite
            L44_2, L45_2, L46_2, L47_2, L48_2 = L44_2(L45_2)
            L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
            L38_2 = _G
            L38_2 = L38_2.res
            L38_2 = L38_2.drawSprite
            L39_2 = L30_2.sprite
            L40_2 = 0
            L41_2 = 0
            L38_2(L39_2, L40_2, L41_2)
          else
            L36_2 = physicsToScreenTransform
            L37_2 = L25_2.x
            L37_2 = L37_2 + L33_2
            L38_2 = L25_2.y
            L38_2 = L38_2 + L34_2
            L36_2, L37_2 = L36_2(L37_2, L38_2)
            L38_2 = setRenderState
            L39_2 = L36_2 / L35_2
            L40_2 = L37_2 / L35_2
            L41_2 = L35_2
            L42_2 = L35_2
            L43_2 = L25_2.angle
            L44_2 = res
            L44_2 = L44_2.getSpritePivot
            L45_2 = L30_2.sprite
            L44_2, L45_2, L46_2, L47_2, L48_2 = L44_2(L45_2)
            L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
            L38_2 = _G
            L38_2 = L38_2.res
            L38_2 = L38_2.drawSprite
            L39_2 = L30_2.sprite
            L40_2 = 0
            L41_2 = 0
            L38_2(L39_2, L40_2, L41_2)
          end
        end
      end
    end
  end
  L19_2 = native_drawSimulationTrajectory
  L19_2()
  L19_2 = selectedBird
  if L19_2 ~= nil then
    L19_2 = getLevelMetadata
    L20_2 = levelName
    L19_2 = L19_2(L20_2)
    L19_2 = L19_2.hideBirdsAndSlingshot
    if not L19_2 then
      L19_2 = res
      L19_2 = L19_2.getSpritePivot
      L20_2 = "SLING_HOLDER"
      L19_2, L20_2 = L19_2(L20_2)
      L21_2 = L8_2 * 0.3
      L21_2 = 1.2 - L21_2
      L22_2 = setRenderState
      L23_2 = screen
      L23_2 = L23_2.left
      L23_2 = -L23_2
      L23_2 = L23_2 + L6_2
      L24_2 = slingshotScale
      L24_2 = L24_2 * L21_2
      L23_2 = L23_2 / L24_2
      L24_2 = screen
      L24_2 = L24_2.top
      L24_2 = -L24_2
      L24_2 = L24_2 + L7_2
      L25_2 = slingshotScale
      L25_2 = L25_2 * L21_2
      L24_2 = L24_2 / L25_2
      L25_2 = worldScale
      L26_2 = slingshotScale
      L25_2 = L25_2 * L26_2
      L25_2 = L25_2 * L21_2
      L26_2 = worldScale
      L27_2 = slingshotScale
      L26_2 = L26_2 * L27_2
      L26_2 = L26_2 * L21_2
      L27_2 = rubberBandAngle
      L28_2 = L19_2
      L29_2 = L20_2
      L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L22_2 = objects
      L22_2 = L22_2.isDarkSideLevel
      if L22_2 then
        L22_2 = res
        L22_2 = L22_2.drawSprite
        L23_2 = "SLING_HOLDER_DARK"
        L24_2 = 0
        L25_2 = 0
        L22_2(L23_2, L24_2, L25_2)
      else
        L22_2 = res
        L22_2 = L22_2.drawSprite
        L23_2 = "SLING_HOLDER"
        L24_2 = 0
        L25_2 = 0
        L22_2(L23_2, L24_2, L25_2)
      end
    end
  end
  L19_2 = getLevelMetadata
  L20_2 = levelName
  L19_2 = L19_2(L20_2)
  L19_2 = L19_2.hideBirdsAndSlingshot
  if not L19_2 then
    L19_2 = selectedBird
    if L19_2 ~= nil then
      L19_2 = setRenderState
      L20_2 = 0
      L21_2 = 0
      L22_2 = 1
      L23_2 = 1
      L24_2 = 0
      L25_2 = 0
      L26_2 = 0
      L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L19_2 = deviceModel
      if L19_2 ~= "android" then
        L19_2 = drawTexturedLine2D
        L20_2 = L15_2
        L21_2 = screen
        L21_2 = L21_2.left
        L21_2 = L13_2 - L21_2
        L22_2 = worldScale
        L21_2 = L21_2 * L22_2
        L22_2 = screen
        L22_2 = L22_2.top
        L22_2 = L14_2 - L22_2
        L23_2 = worldScale
        L22_2 = L22_2 * L23_2
        L23_2 = screen
        L23_2 = L23_2.left
        L23_2 = L6_2 - L23_2
        L24_2 = worldScale
        L23_2 = L23_2 * L24_2
        L24_2 = screen
        L24_2 = L24_2.top
        L24_2 = L7_2 - L24_2
        L25_2 = worldScale
        L24_2 = L24_2 * L25_2
        L25_2 = worldScale
        L25_2 = L8_2 * L25_2
        L26_2 = 255
        L27_2 = 255
        L28_2 = 255
        L29_2 = 255
        L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      else
        L19_2 = drawRubberband
        L20_2 = screen
        L20_2 = L20_2.left
        L20_2 = L13_2 - L20_2
        L21_2 = worldScale
        L20_2 = L20_2 * L21_2
        L21_2 = screen
        L21_2 = L21_2.top
        L21_2 = L14_2 - L21_2
        L22_2 = worldScale
        L21_2 = L21_2 * L22_2
        L22_2 = screen
        L22_2 = L22_2.left
        L22_2 = L6_2 - L22_2
        L23_2 = worldScale
        L22_2 = L22_2 * L23_2
        L23_2 = screen
        L23_2 = L23_2.top
        L23_2 = L7_2 - L23_2
        L24_2 = worldScale
        L23_2 = L23_2 * L24_2
        L24_2 = worldScale
        L24_2 = L8_2 * L24_2
        L25_2 = L15_2
        L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      end
    end
  end
  L19_2 = res
  L19_2 = L19_2.getSpritePivot
  L20_2 = "SLING_SHOT_01_FRONT"
  L19_2, L20_2 = L19_2(L20_2)
  L21_2 = setRenderState
  L22_2 = screen
  L22_2 = L22_2.left
  L22_2 = -L22_2
  L22_2 = L22_2 + L4_2
  L23_2 = slingshotScale
  L22_2 = L22_2 / L23_2
  L23_2 = screen
  L23_2 = L23_2.top
  L23_2 = -L23_2
  L23_2 = L23_2 + L5_2
  L24_2 = slingshotScale
  L23_2 = L23_2 / L24_2
  L24_2 = worldScale
  L25_2 = slingshotScale
  L24_2 = L24_2 * L25_2
  L25_2 = worldScale
  L26_2 = slingshotScale
  L25_2 = L25_2 * L26_2
  L26_2 = slingShotAngle
  L27_2 = L19_2
  L28_2 = L20_2
  L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L21_2 = getLevelMetadata
  L22_2 = levelName
  L21_2 = L21_2(L22_2)
  L21_2 = L21_2.hideBirdsAndSlingshot
  if not L21_2 then
    L21_2 = objects
    L21_2 = L21_2.isDarkSideLevel
    if L21_2 then
      L21_2 = res
      L21_2 = L21_2.drawSprite
      L22_2 = "SLING_SHOT_DARK_01_FRONT"
      L23_2 = 0
      L24_2 = 0
      L21_2(L22_2, L23_2, L24_2)
    else
      L21_2 = res
      L21_2 = L21_2.drawSprite
      L22_2 = "SLING_SHOT_01_FRONT"
      L23_2 = 0
      L24_2 = 0
      L21_2(L22_2, L23_2, L24_2)
    end
  end
  L21_2 = setRenderState
  L22_2 = 0
  L23_2 = 0
  L24_2 = 1
  L25_2 = 1
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L21_2 = _G
  L21_2 = L21_2.pairs
  L22_2 = objects
  L22_2 = L22_2.sensorList
  L22_2 = L22_2.stream
  L21_2, L22_2, L23_2 = L21_2(L22_2)
  for L24_2, L25_2 in L21_2, L22_2, L23_2 do
    L26_2 = L25_2.sensorType
    if L26_2 == "stream" then
      L26_2 = L25_2.nodes
      L27_2 = #L26_2
      if 0 < L27_2 then
        L27_2 = physicsToScreenTransform
        L28_2 = L25_2.x
        L29_2 = L25_2.nodes
        L29_2 = L29_2[1]
        L29_2 = L29_2.x
        L28_2 = L28_2 + L29_2
        L29_2 = L25_2.y
        L30_2 = L25_2.nodes
        L30_2 = L30_2[1]
        L30_2 = L30_2.y
        L29_2 = L29_2 + L30_2
        L27_2, L28_2 = L27_2(L28_2, L29_2)
        L29_2 = res
        L29_2 = L29_2.drawSprite
        L30_2 = "TRAIL_WHITE_1"
        L31_2 = L27_2
        L32_2 = L28_2
        L29_2(L30_2, L31_2, L32_2)
        L29_2 = 2
        L30_2 = #L26_2
        L31_2 = 1
        for L32_2 = L29_2, L30_2, L31_2 do
          L33_2 = L25_2.nodes
          L33_2 = L33_2[L32_2]
          L34_2 = physicsToScreenTransform
          L35_2 = L25_2.x
          L36_2 = L33_2.x
          L35_2 = L35_2 + L36_2
          L36_2 = L25_2.y
          L37_2 = L33_2.y
          L36_2 = L36_2 + L37_2
          L34_2, L35_2 = L34_2(L35_2, L36_2)
          L36_2 = physicsToScreenTransform
          L37_2 = L25_2.x
          L38_2 = L33_2.x
          L37_2 = L37_2 + L38_2
          L38_2 = L25_2.y
          L39_2 = L33_2.y
          L38_2 = L38_2 + L39_2
          L36_2, L37_2 = L36_2(L37_2, L38_2)
          L28_2 = L37_2
          L27_2 = L36_2
          L36_2 = res
          L36_2 = L36_2.drawSprite
          L37_2 = "TRAIL_WHITE_1"
          L38_2 = L27_2
          L39_2 = L28_2
          L36_2(L37_2, L38_2, L39_2)
        end
      end
      L26_2 = L25_2.vertices
      L27_2 = #L26_2
      if 0 < L27_2 then
        L27_2 = physicsToScreenTransform
        L28_2 = L25_2.x
        L29_2 = L25_2.vertices
        L29_2 = L29_2[1]
        L29_2 = L29_2.x
        L28_2 = L28_2 + L29_2
        L29_2 = L25_2.y
        L30_2 = L25_2.vertices
        L30_2 = L30_2[1]
        L30_2 = L30_2.y
        L29_2 = L29_2 + L30_2
        L27_2, L28_2 = L27_2(L28_2, L29_2)
        L29_2 = 2
        L30_2 = #L26_2
        L31_2 = 1
        for L32_2 = L29_2, L30_2, L31_2 do
          L33_2 = L25_2.vertices
          L33_2 = L33_2[L32_2]
          L34_2 = physicsToScreenTransform
          L35_2 = L25_2.x
          L36_2 = L33_2.x
          L35_2 = L35_2 + L36_2
          L36_2 = L25_2.y
          L37_2 = L33_2.y
          L36_2 = L36_2 + L37_2
          L34_2, L35_2 = L34_2(L35_2, L36_2)
          L36_2 = drawLine2D
          L37_2 = L27_2
          L38_2 = L28_2
          L39_2 = L34_2
          L40_2 = L35_2
          L41_2 = 3
          L42_2 = 255
          L43_2 = 255
          L44_2 = 255
          L45_2 = 255
          L36_2(L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
          L36_2 = physicsToScreenTransform
          L37_2 = L25_2.x
          L38_2 = L33_2.x
          L37_2 = L37_2 + L38_2
          L38_2 = L25_2.y
          L39_2 = L33_2.y
          L38_2 = L38_2 + L39_2
          L36_2, L37_2 = L36_2(L37_2, L38_2)
          L28_2 = L37_2
          L27_2 = L36_2
        end
      end
    end
  end
  L21_2 = 1
  L22_2 = {}
  L23_2 = {}
  L23_2.x = 0
  L23_2.y = 0
  L24_2 = {}
  L24_2.x = 0
  L24_2.y = 0
  L25_2 = {}
  L25_2.x = 0
  L25_2.y = 0
  L26_2 = {}
  L26_2.x = 0
  L26_2.y = 0
  L22_2[1] = L23_2
  L22_2[2] = L24_2
  L22_2[3] = L25_2
  L22_2[4] = L26_2
  L23_2 = _G
  L23_2 = L23_2.pairs
  L24_2 = aimingTrail
  L23_2, L24_2, L25_2 = L23_2(L24_2)
  for L26_2, L27_2 in L23_2, L24_2, L25_2 do
    L28_2 = physicsToScreenTransform
    L29_2 = L27_2.x
    L30_2 = L27_2.y
    L28_2, L29_2 = L28_2(L29_2, L30_2)
    L30_2 = print
    L31_2 = [[

 auei ]]
    L32_2 = L28_2
    L33_2 = " "
    L34_2 = L29_2
    L31_2 = L31_2 .. L32_2 .. L33_2 .. L34_2
    L30_2(L31_2)
    L30_2 = res
    L30_2 = L30_2.drawSprite
    L31_2 = "TRAIL_WHITE_1"
    L32_2 = L28_2
    L33_2 = L29_2
    L30_2(L31_2, L32_2, L33_2)
    if L21_2 < 5 then
      L30_2 = L22_2[L21_2]
      L31_2 = L22_2[L21_2]
      L32_2 = physicsToWorldTransform
      L33_2 = L27_2.x
      L34_2 = L27_2.y
      L32_2, L33_2 = L32_2(L33_2, L34_2)
      L31_2.y = L33_2
      L30_2.x = L32_2
      L21_2 = L21_2 + 1
    end
  end
  L23_2 = startedFromEditor
  if L23_2 then
    L23_2 = _G
    L23_2 = L23_2.pairs
    L24_2 = objects
    L24_2 = L24_2.sensorList
    L24_2 = L24_2.killing
    L23_2, L24_2, L25_2 = L23_2(L24_2)
    for L26_2, L27_2 in L23_2, L24_2, L25_2 do
      L28_2 = drawBoxSensorBounds
      L29_2 = L27_2
      L28_2(L29_2)
    end
  end
  L23_2 = _G
  L23_2 = L23_2.pairs
  L24_2 = objects
  L24_2 = L24_2.joints
  L23_2, L24_2, L25_2 = L23_2(L24_2)
  for L26_2, L27_2 in L23_2, L24_2, L25_2 do
    L28_2 = L27_2.isDrawn
    if L28_2 then
      L28_2 = L27_2.type
      if L28_2 ~= 2 then
        L28_2 = L27_2.type
        if L28_2 ~= 3 then
          goto lbl_2391
        end
      end
      L28_2 = {}
      L28_2[2] = "BLOCK_WOOD_COMBINE_1"
      L28_2[3] = "BLOCK_SCREW_1"
      L29_2 = getJointAnchorPositions
      L30_2 = L27_2
      L29_2, L30_2, L31_2, L32_2 = L29_2(L30_2)
      L33_2 = L29_2 + L30_2
      L33_2 = L33_2 * 0.5
      L27_2.jointPosX = L33_2
      L33_2 = L31_2 + L32_2
      L33_2 = L33_2 * 0.5
      L27_2.jointPosY = L33_2
      L33_2 = physicsToScreenTransform
      L34_2 = L27_2.jointPosX
      L35_2 = L27_2.jointPosY
      L33_2, L34_2 = L33_2(L34_2, L35_2)
      L35_2 = res
      L35_2 = L35_2.getSpritePivot
      L36_2 = L27_2.type
      L36_2 = L28_2[L36_2]
      L35_2, L36_2 = L35_2(L36_2)
      L37_2 = _G
      L37_2 = L37_2.math
      L37_2 = L37_2.atan2
      L38_2 = L31_2 - L32_2
      L39_2 = L29_2 - L30_2
      L37_2 = L37_2(L38_2, L39_2)
      L38_2 = worldScale
      L39_2 = gameWorldScale
      L38_2 = L38_2 * L39_2
      L39_2 = setRenderState
      L40_2 = L33_2 / L38_2
      L41_2 = L34_2 / L38_2
      L42_2 = L38_2
      L43_2 = L38_2
      L44_2 = L37_2
      L45_2 = L35_2
      L46_2 = L36_2
      L47_2 = 1
      L39_2(L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2)
      L39_2 = res
      L39_2 = L39_2.drawSprite
      L40_2 = L27_2.type
      L40_2 = L28_2[L40_2]
      L41_2 = 0
      L42_2 = 0
      L39_2(L40_2, L41_2, L42_2)
    else
      ::lbl_2391::
      L28_2 = L27_2.isTongueJoint
      if L28_2 then
        L28_2 = objects
        L28_2 = L28_2.world
        L29_2 = L27_2.end1
        L28_2 = L28_2[L29_2]
        L29_2 = objects
        L29_2 = L29_2.world
        L30_2 = L27_2.end2
        L29_2 = L29_2[L30_2]
        L30_2 = L28_2.x
        L31_2 = "x1"
        L31_2 = L27_2[L31_2]
        L30_2 = L30_2 + L31_2
        L31_2 = L28_2.y
        L32_2 = "y1"
        L32_2 = L27_2[L32_2]
        L31_2 = L31_2 + L32_2
        L32_2 = vec2Rotate
        L33_2 = "x2"
        L33_2 = L27_2[L33_2]
        L34_2 = "y2"
        L34_2 = L27_2[L34_2]
        L35_2 = getAngle
        L36_2 = L29_2.name
        L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L35_2(L36_2)
        L32_2, L33_2 = L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
        L34_2 = L29_2.x
        L34_2 = L34_2 + L32_2
        L35_2 = L29_2.y
        L35_2 = L35_2 + L33_2
        L36_2 = blockTable
        L36_2 = L36_2.blocks
        L37_2 = L28_2.definition
        L36_2 = L36_2[L37_2]
        L37_2 = "specialtyTongueOutAnimSpeed"
        L36_2 = L36_2[L37_2]
        L37_2 = "tongueTime"
        L37_2 = L27_2[L37_2]
        L37_2 = L36_2 * L37_2
        L38_2 = distance
        L39_2 = L30_2
        L40_2 = L31_2
        L41_2 = L34_2
        L42_2 = L35_2
        L38_2 = L38_2(L39_2, L40_2, L41_2, L42_2)
        if L37_2 < L38_2 then
          L39_2 = L34_2 - L30_2
          L40_2 = L35_2 - L31_2
          L41_2 = L37_2 / L38_2
          L41_2 = L39_2 * L41_2
          L34_2 = L30_2 + L41_2
          L41_2 = L37_2 / L38_2
          L41_2 = L40_2 * L41_2
          L35_2 = L31_2 + L41_2
        end
        L39_2 = actions
        L40_2 = "drawTongue"
        L39_2 = L39_2[L40_2]
        L40_2 = L30_2
        L41_2 = L31_2
        L42_2 = L34_2
        L43_2 = L35_2
        L44_2 = blockTable
        L44_2 = L44_2.blocks
        L45_2 = L28_2.definition
        L44_2 = L44_2[L45_2]
        L39_2(L40_2, L41_2, L42_2, L43_2, L44_2)
      else
        L28_2 = "isAfterburnerJoint"
        L28_2 = L27_2[L28_2]
        if L28_2 then
          L28_2 = objects
          L28_2 = L28_2.world
          L29_2 = L27_2.end1
          L28_2 = L28_2[L29_2]
          L29_2 = objects
          L29_2 = L29_2.world
          L30_2 = L27_2.end2
          L29_2 = L29_2[L30_2]
          L30_2 = physicsToScreenTransform
          L31_2 = L28_2.x
          L32_2 = "x1"
          L32_2 = L27_2[L32_2]
          L31_2 = L31_2 + L32_2
          L32_2 = L28_2.y
          L33_2 = "y1"
          L33_2 = L27_2[L33_2]
          L32_2 = L32_2 + L33_2
          L30_2, L31_2 = L30_2(L31_2, L32_2)
          L32_2 = physicsToScreenTransform
          L33_2 = L29_2.x
          L34_2 = "x2"
          L34_2 = L27_2[L34_2]
          L33_2 = L33_2 + L34_2
          L34_2 = L29_2.y
          L35_2 = "y2"
          L35_2 = L27_2[L35_2]
          L34_2 = L34_2 + L35_2
          L32_2, L33_2 = L32_2(L33_2, L34_2)
          L34_2 = actions
          L35_2 = "drawAfterburnerJoint"
          L34_2 = L34_2[L35_2]
          L35_2 = L30_2
          L36_2 = L31_2
          L37_2 = L32_2
          L38_2 = L33_2
          L39_2 = blockTable
          L39_2 = L39_2.blocks
          L40_2 = objects
          L40_2 = L40_2.world
          L41_2 = L27_2.end1
          L40_2 = L40_2[L41_2]
          L40_2 = L40_2.definition
          L39_2 = L39_2[L40_2]
          L34_2(L35_2, L36_2, L37_2, L38_2, L39_2)
        end
      end
    end
  end
  L23_2 = _G
  L23_2 = L23_2.ipairs
  L24_2 = L17_2
  L23_2, L24_2, L25_2 = L23_2(L24_2)
  for L26_2, L27_2 in L23_2, L24_2, L25_2 do
    L28_2 = L27_2.tongueRedactAnimation
    if L28_2 then
      L28_2 = L27_2.tongueRedactAnimation
      L29_2 = "startAngle"
      L28_2 = L28_2[L29_2]
      L29_2 = L27_2.tongueRedactAnimation
      L30_2 = "endAngle"
      L29_2 = L29_2[L30_2]
      L30_2 = L27_2.tongueRedactAnimation
      L31_2 = "startLength"
      L30_2 = L30_2[L31_2]
      L31_2 = "tongueAnimationTime"
      L31_2 = L27_2[L31_2]
      L32_2 = blockTable
      L32_2 = L32_2.blocks
      L33_2 = L27_2.definition
      L32_2 = L32_2[L33_2]
      L33_2 = "specialtyTongueInAnimLength"
      L32_2 = L32_2[L33_2]
      if L31_2 < L32_2 then
        L33_2 = L31_2 / L32_2
        L34_2 = L28_2 - L29_2
        L34_2 = L34_2 * L33_2
        L34_2 = L28_2 + L34_2
        L35_2 = 1
        L35_2 = L35_2 - L33_2
        L35_2 = L30_2 * L35_2
        L36_2 = _G
        L36_2 = L36_2.math
        L36_2 = L36_2.cos
        L37_2 = L34_2
        L36_2 = L36_2(L37_2)
        L36_2 = L36_2 * L35_2
        L37_2 = _G
        L37_2 = L37_2.math
        L37_2 = L37_2.sin
        L38_2 = L34_2
        L37_2 = L37_2(L38_2)
        L37_2 = L37_2 * L35_2
        L38_2 = actions
        L39_2 = "drawTongue"
        L38_2 = L38_2[L39_2]
        L39_2 = L27_2.x
        L40_2 = L27_2.y
        L41_2 = L27_2.x
        L41_2 = L41_2 + L36_2
        L42_2 = L27_2.y
        L42_2 = L42_2 + L37_2
        L43_2 = blockTable
        L43_2 = L43_2.blocks
        L44_2 = L27_2.definition
        L43_2 = L43_2[L44_2]
        L38_2(L39_2, L40_2, L41_2, L42_2, L43_2)
      else
        L33_2 = nil
        L27_2.tongueRedactAnimation = L33_2
      end
    else
      L28_2 = L27_2.tongueOutAnimation
      if L28_2 then
        L28_2 = blockTable
        L28_2 = L28_2.blocks
        L29_2 = L27_2.definition
        L28_2 = L28_2[L29_2]
        L29_2 = "specialtyTongueOutAnimSpeed"
        L28_2 = L28_2[L29_2]
        L29_2 = "tongueAnimationTime"
        L29_2 = L27_2[L29_2]
        L29_2 = L28_2 * L29_2
        L30_2 = L27_2.x
        L31_2 = L27_2.y
        L32_2 = L27_2.tongueOutAnimation
        L33_2 = "targetX"
        L32_2 = L32_2[L33_2]
        L33_2 = L27_2.tongueOutAnimation
        L34_2 = "targetY"
        L33_2 = L33_2[L34_2]
        L34_2 = distance
        L35_2 = L30_2
        L36_2 = L31_2
        L37_2 = L32_2
        L38_2 = L33_2
        L34_2 = L34_2(L35_2, L36_2, L37_2, L38_2)
        if L29_2 < L34_2 then
          L35_2 = vNormalize
          L36_2 = L32_2 - L30_2
          L37_2 = L33_2 - L31_2
          L35_2, L36_2 = L35_2(L36_2, L37_2)
          L37_2 = L35_2 * L29_2
          L32_2 = L30_2 + L37_2
          L37_2 = L36_2 * L29_2
          L33_2 = L31_2 + L37_2
        else
          L35_2 = addTongueRedactionAnimation
          L36_2 = L27_2
          L37_2 = L27_2.tongueOutAnimation
          L38_2 = "targetX"
          L37_2 = L37_2[L38_2]
          L38_2 = L27_2.tongueOutAnimation
          L39_2 = "targetY"
          L38_2 = L38_2[L39_2]
          L35_2(L36_2, L37_2, L38_2)
          L35_2 = nil
          L27_2.tongueOutAnimation = L35_2
        end
        L35_2 = actions
        L36_2 = "drawTongue"
        L35_2 = L35_2[L36_2]
        L36_2 = L30_2
        L37_2 = L31_2
        L38_2 = L32_2
        L39_2 = L33_2
        L40_2 = blockTable
        L40_2 = L40_2.blocks
        L41_2 = L27_2.definition
        L40_2 = L40_2[L41_2]
        L35_2(L36_2, L37_2, L38_2, L39_2, L40_2)
      else
        L28_2 = L27_2.pullBackObj
        if L28_2 then
          L28_2 = checkStillInWorld
          L29_2 = L27_2.pullBackObj
          L28_2 = L28_2(L29_2)
          if L28_2 then
            L28_2 = objects
            L28_2 = L28_2.world
            L29_2 = L27_2.pullBackObj
            L28_2 = L28_2[L29_2]
            L29_2 = actions
            L30_2 = "drawTongue"
            L29_2 = L29_2[L30_2]
            L30_2 = L27_2.x
            L31_2 = L27_2.y
            L32_2 = L28_2.x
            L33_2 = L28_2.y
            L34_2 = blockTable
            L34_2 = L34_2.blocks
            L35_2 = L27_2.definition
            L34_2 = L34_2[L35_2]
            L35_2 = "tongueWobble"
            L35_2 = L27_2[L35_2]
            L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
          end
        end
      end
    end
  end
  L23_2 = _G
  L23_2 = L23_2.pairs
  L24_2 = objects
  L24_2 = L24_2.sensorList
  L24_2 = L24_2.gravitation
  L23_2, L24_2, L25_2 = L23_2(L24_2)
  for L26_2, L27_2 in L23_2, L24_2, L25_2 do
    L28_2 = L27_2.sensorType
    if L28_2 == "gravitation" then
      L28_2 = L27_2.active
      if L28_2 then
        L28_2 = L27_2.isWater
        if L28_2 then
          L28_2 = blockTable
          L28_2 = L28_2.blocks
          L29_2 = L27_2.definition
          L28_2 = L28_2[L29_2]
          L28_2 = L28_2.boxWater
          if L28_2 then
            L28_2 = startedFromEditor
            if L28_2 then
              L28_2 = drawBoxSensorBounds
              L29_2 = L27_2
              L28_2(L29_2)
            end
          else
            L28_2 = blockTable
            L28_2 = L28_2.blocks
            L29_2 = L27_2.definition
            L28_2 = L28_2[L29_2]
            L28_2 = L28_2.isBubble
            if L28_2 then
              L28_2 = actions
              L28_2 = L28_2.drawWaterBubble
              L29_2 = L27_2
              L30_2 = "GUNGAN_BUBBLE_EFFECT"
              L28_2(L29_2, L30_2)
            else
              L28_2 = drawGravityBubble
              L29_2 = L27_2
              L28_2(L29_2)
            end
          end
        else
          L28_2 = drawGravityBubble
          L29_2 = L27_2
          L28_2(L29_2)
        end
      end
    end
  end
  L23_2 = setRenderState
  L24_2 = screen
  L24_2 = L24_2.left
  L24_2 = -L24_2
  L25_2 = screen
  L25_2 = L25_2.top
  L25_2 = -L25_2
  L26_2 = worldScale
  L27_2 = worldScale
  L28_2 = 0
  L29_2 = 0
  L30_2 = 0
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  L23_2 = native_setZOrderRange
  L24_2 = 60
  L25_2 = 101
  L23_2(L24_2, L25_2)
  L23_2 = drawGameNative
  L24_2 = -1
  L23_2(L24_2)
  L23_2 = native_drawForegroundParticles
  L23_2()
  L23_2 = _G
  L23_2 = L23_2.pairs
  L24_2 = birds
  L23_2, L24_2, L25_2 = L23_2(L24_2)
  for L26_2, L27_2 in L23_2, L24_2, L25_2 do
    L28_2 = "startNumber"
    L28_2 = L27_2[L28_2]
    L29_2 = currentBirdIndex
    if not (L28_2 > L29_2) then
      L28_2 = "startNumber"
      L28_2 = L27_2[L28_2]
      L29_2 = currentBirdIndex
      if L28_2 ~= L29_2 then
        goto lbl_2849
      end
      L28_2 = flyingBird
      if L27_2 == L28_2 then
        goto lbl_2849
      end
    end
    L28_2 = L27_2.shot
    if not L28_2 then
      L28_2 = blockTable
      L28_2 = L28_2.blocks
      L29_2 = L27_2.definition
      L28_2 = L28_2[L29_2]
      L29_2 = "iconSprite"
      L28_2 = L28_2[L29_2]
      if L28_2 then
        L29_2 = physicsToScreenTransform
        L30_2 = L27_2.x
        L31_2 = L27_2.y
        L29_2, L30_2 = L29_2(L30_2, L31_2)
        L31_2 = blockTable
        L31_2 = L31_2.blocks
        L32_2 = L27_2.definition
        L31_2 = L31_2[L32_2]
        L31_2 = L31_2.scale
        if not L31_2 then
          L31_2 = 1
        end
        L32_2 = worldScale
        L31_2 = L31_2 * L32_2
        L32_2 = 1.5
        L31_2 = L31_2 * L32_2
        L32_2 = 30
        L32_2 = L32_2 * L31_2
        L29_2 = L29_2 - L32_2
        L32_2 = 30
        L32_2 = L32_2 * L31_2
        L30_2 = L30_2 - L32_2
        L32_2 = res
        L32_2 = L32_2.getSpritePivot
        L33_2 = L28_2
        L32_2, L33_2 = L32_2(L33_2)
        L34_2 = 1
        L35_2 = "startNumber"
        L35_2 = L27_2[L35_2]
        L36_2 = currentBirdIndex
        if L35_2 == L36_2 then
          L35_2 = "dragStartedTimer"
          L35_2 = L27_2[L35_2]
          if L35_2 then
            L35_2 = _G
            L35_2 = L35_2.math
            L35_2 = L35_2.max
            L36_2 = 0
            L37_2 = "dragStartedTimer"
            L37_2 = L27_2[L37_2]
            L38_2 = 2
            L37_2 = L37_2 * L38_2
            L38_2 = 1
            L37_2 = L38_2 - L37_2
            L35_2 = L35_2(L36_2, L37_2)
            L34_2 = L35_2
            L35_2 = _G
            L35_2 = L35_2.math
            L35_2 = L35_2.min
            L36_2 = 1
            L37_2 = "dragStartedTimer"
            L37_2 = L27_2[L37_2]
            L38_2 = 2
            L37_2 = L37_2 * L38_2
            L35_2 = L35_2(L36_2, L37_2)
            L36_2 = 1
            L35_2 = L36_2 + L35_2
            L31_2 = L31_2 * L35_2
          end
        end
        L35_2 = setRenderState
        L36_2 = L29_2 / L31_2
        L37_2 = L30_2 / L31_2
        L38_2 = L31_2
        L39_2 = L31_2
        L40_2 = 0
        L41_2 = L32_2
        L42_2 = L33_2
        L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
        L35_2 = native_setAlpha
        L36_2 = L34_2
        L35_2(L36_2)
        L35_2 = _G
        L35_2 = L35_2.res
        L35_2 = L35_2.drawSprite
        L36_2 = L28_2
        L37_2 = 0
        L38_2 = 0
        L35_2(L36_2, L37_2, L38_2)
        L35_2 = native_setAlpha
        L36_2 = 1
        L35_2(L36_2)
      end
    end
    ::lbl_2849::
  end
  L23_2 = showBG
  if L23_2 then
    L23_2 = drawForegroundNative
    L23_2()
  end
  L23_2 = setRenderState
  L24_2 = 0
  L25_2 = 0
  L26_2 = 1
  L27_2 = 1
  L28_2 = 0
  L29_2 = 0
  L30_2 = 0
  L31_2 = 1
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L23_2 = showSleepingObjects
  if L23_2 then
    L23_2 = _G
    L23_2 = L23_2.pairs
    L24_2 = objects
    L24_2 = L24_2.world
    L23_2, L24_2, L25_2 = L23_2(L24_2)
    for L26_2, L27_2 in L23_2, L24_2, L25_2 do
      L28_2 = "sleeping"
      L28_2 = L27_2[L28_2]
      L29_2 = true
      if L28_2 == L29_2 then
        L28_2 = L27_2.sprite
        L29_2 = ""
        if L28_2 ~= L29_2 then
          L28_2 = L27_2.sprite
          L29_2 = nil
          if L28_2 ~= L29_2 then
            L28_2 = 0
            L29_2 = 0
            L30_2 = res
            L30_2 = L30_2.getSpriteBounds
            L31_2 = L27_2.sprite
            L30_2, L31_2 = L30_2(L31_2)
            L29_2 = L31_2
            L28_2 = L30_2
            L30_2 = gameWorldScale
            L30_2 = L28_2 * L30_2
            L31_2 = 0.5
            L30_2 = L30_2 * L31_2
            L31_2 = gameWorldScale
            L31_2 = L29_2 * L31_2
            L32_2 = 0.5
            L29_2 = L31_2 * L32_2
            L28_2 = L30_2
            L30_2 = physicsToWorldTransform
            L31_2 = L27_2.x
            L32_2 = L27_2.y
            L30_2, L31_2 = L30_2(L31_2, L32_2)
            L32_2 = L30_2 - L28_2
            L33_2 = L31_2 - L29_2
            L34_2 = L30_2 + L28_2
            L35_2 = L31_2 + L29_2
            L36_2 = setRenderState
            L37_2 = screen
            L37_2 = L37_2.left
            L37_2 = -L37_2
            L38_2 = screen
            L38_2 = L38_2.top
            L38_2 = -L38_2
            L39_2 = worldScale
            L40_2 = worldScale
            L41_2 = L27_2.angle
            L42_2 = "spritePivotX"
            L42_2 = L27_2[L42_2]
            L43_2 = gameWorldScale
            L42_2 = L42_2 * L43_2
            L43_2 = "spritePivotY"
            L43_2 = L27_2[L43_2]
            L44_2 = gameWorldScale
            L43_2 = L43_2 * L44_2
            L36_2(L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
            L36_2 = drawRect
            L37_2 = 1
            L38_2 = 0
            L39_2 = 0
            L40_2 = 0.5
            L41_2 = L32_2
            L42_2 = L33_2
            L43_2 = L34_2
            L44_2 = L35_2
            L45_2 = true
            L36_2(L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
          end
        end
      end
    end
    L23_2 = showEditor
    if L23_2 then
      L23_2 = EditorUtils
      L24_2 = "drawCollisionAreas"
      L23_2 = L23_2[L24_2]
      L23_2()
      L23_2 = g_explodingBomb
      if L23_2 then
        L23_2 = physicsToWorldTransform
        L24_2 = g_explodingBomb
        L24_2 = L24_2.x
        L25_2 = g_explodingBomb
        L25_2 = L25_2.y
        L23_2, L24_2 = L23_2(L24_2, L25_2)
        L25_2 = EditorUtils
        L26_2 = "drawCircle"
        L25_2 = L25_2[L26_2]
        L26_2 = L23_2
        L27_2 = L24_2
        L28_2 = g_explodingBomb
        L28_2 = L28_2.radius
        L29_2 = "explosion"
        L28_2 = L28_2[L29_2]
        L29_2 = 0
        L30_2 = 255
        L31_2 = 255
        L32_2 = 128
        L33_2 = 255
        L34_2 = 1
        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
        L25_2 = EditorUtils
        L26_2 = "drawCircle"
        L25_2 = L25_2[L26_2]
        L26_2 = L23_2
        L27_2 = L24_2
        L28_2 = g_explodingBomb
        L28_2 = L28_2.radius
        L29_2 = "small"
        L28_2 = L28_2[L29_2]
        L29_2 = 0
        L30_2 = 255
        L31_2 = 128
        L32_2 = 0
        L33_2 = 255
        L34_2 = 1
        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
        L25_2 = EditorUtils
        L26_2 = "drawCircle"
        L25_2 = L25_2[L26_2]
        L26_2 = L23_2
        L27_2 = L24_2
        L28_2 = g_explodingBomb
        L28_2 = L28_2.radius
        L29_2 = "damage"
        L28_2 = L28_2[L29_2]
        L29_2 = 0
        L30_2 = 255
        L31_2 = 0
        L32_2 = 0
        L33_2 = 255
        L34_2 = 1
        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
      end
    end
  end
  L23_2 = setRenderState
  L24_2 = 0
  L25_2 = 0
  L26_2 = 1
  L27_2 = 1
  L28_2 = 0
  L29_2 = 0
  L30_2 = 0
  L31_2 = 1
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L23_2 = zoomLevel
  oldZoomLevel = L23_2
  L23_2 = _G
  L23_2 = L23_2.pairs
  L24_2 = objects
  L25_2 = "spriteObjects"
  L24_2 = L24_2[L25_2]
  L23_2, L24_2, L25_2 = L23_2(L24_2)
  for L26_2, L27_2 in L23_2, L24_2, L25_2 do
    L28_2 = L27_2.x
    L29_2 = L27_2.y
    L30_2 = "guiObject"
    L30_2 = L27_2[L30_2]
    L31_2 = true
    if L30_2 ~= L31_2 then
      L30_2 = worldToScreenTransform
      L31_2 = L27_2.x
      L32_2 = L27_2.y
      L30_2, L31_2 = L30_2(L31_2, L32_2)
      L29_2 = L31_2
      L28_2 = L30_2
      L30_2 = worldScale
      L31_2 = "scaleX"
      L31_2 = L27_2[L31_2]
      L30_2 = L30_2 * L31_2
      L31_2 = worldScale
      L32_2 = "scaleY"
      L32_2 = L27_2[L32_2]
      L31_2 = L31_2 * L32_2
      L32_2 = L27_2.angle
      L33_2 = "scaleXAdd"
      L33_2 = L27_2[L33_2]
      L34_2 = nil
      if L33_2 ~= L34_2 then
        L33_2 = worldScale
        L34_2 = "scaleXAdd"
        L34_2 = L27_2[L34_2]
        L33_2 = L33_2 * L34_2
        L30_2 = L30_2 + L33_2
      end
      L33_2 = "scaleYAdd"
      L33_2 = L27_2[L33_2]
      L34_2 = nil
      if L33_2 ~= L34_2 then
        L33_2 = worldScale
        L34_2 = "scaleYAdd"
        L34_2 = L27_2[L34_2]
        L33_2 = L33_2 * L34_2
        L31_2 = L31_2 + L33_2
      end
      L33_2 = "angleAdd"
      L33_2 = L27_2[L33_2]
      L34_2 = nil
      if L33_2 ~= L34_2 then
        L33_2 = "angleAdd"
        L33_2 = L27_2[L33_2]
        L32_2 = L32_2 + L33_2
      end
      L33_2 = setRenderState
      L34_2 = L28_2 / L30_2
      L35_2 = L29_2 / L31_2
      L36_2 = L30_2
      L37_2 = L31_2
      L38_2 = L32_2
      L39_2 = res
      L39_2 = L39_2.getSpritePivot
      L40_2 = L27_2.sprite
      L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L39_2(L40_2)
      L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
    else
      L30_2 = setRenderState
      L31_2 = L27_2.x
      L32_2 = "scaleX"
      L32_2 = L27_2[L32_2]
      L31_2 = L31_2 / L32_2
      L32_2 = L27_2.y
      L33_2 = "scaleY"
      L33_2 = L27_2[L33_2]
      L32_2 = L32_2 / L33_2
      L33_2 = "scaleX"
      L33_2 = L27_2[L33_2]
      L34_2 = "scaleY"
      L34_2 = L27_2[L34_2]
      L35_2 = L27_2.angle
      L36_2 = res
      L36_2 = L36_2.getSpritePivot
      L37_2 = L27_2.sprite
      L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L36_2(L37_2)
      L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
    end
    L30_2 = "textObject"
    L30_2 = L27_2[L30_2]
    if L30_2 then
      L30_2 = res
      L31_2 = "drawString"
      L30_2 = L30_2[L31_2]
      L31_2 = "TEXT_BASIC"
      L32_2 = "DEBUG_TEXT"
      L33_2 = 0
      L34_2 = 0
      L35_2 = "BOTTOM"
      L36_2 = "HCENTER"
      L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
    else
      L30_2 = _G
      L30_2 = L30_2.res
      L30_2 = L30_2.drawSprite
      L31_2 = L27_2.sprite
      L32_2 = 0
      L33_2 = 0
      L30_2(L31_2, L32_2, L33_2)
    end
    L30_2 = setRenderState
    L31_2 = 0
    L32_2 = 0
    L33_2 = 1
    L34_2 = 1
    L35_2 = 0
    L36_2 = 0
    L37_2 = 0
    L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  end
  L23_2 = _G
  L23_2 = L23_2.pairs
  L24_2 = objects
  L25_2 = "buttonObjects"
  L24_2 = L24_2[L25_2]
  L23_2, L24_2, L25_2 = L23_2(L24_2)
  for L26_2, L27_2 in L23_2, L24_2, L25_2 do
    L28_2 = L27_2.x
    L29_2 = L27_2.y
    L30_2 = "guiObject"
    L30_2 = L27_2[L30_2]
    L31_2 = true
    if L30_2 ~= L31_2 then
      L30_2 = worldToScreenTransform
      L31_2 = L27_2.x
      L32_2 = L27_2.y
      L30_2, L31_2 = L30_2(L31_2, L32_2)
      L29_2 = L31_2
      L28_2 = L30_2
      L30_2 = worldScale
      L31_2 = "scaleX"
      L31_2 = L27_2[L31_2]
      L30_2 = L30_2 * L31_2
      L31_2 = worldScale
      L32_2 = "scaleY"
      L32_2 = L27_2[L32_2]
      L31_2 = L31_2 * L32_2
      L32_2 = L27_2.angle
      L33_2 = "scaleXAdd"
      L33_2 = L27_2[L33_2]
      L34_2 = nil
      if L33_2 ~= L34_2 then
        L33_2 = worldScale
        L34_2 = "scaleXAdd"
        L34_2 = L27_2[L34_2]
        L33_2 = L33_2 * L34_2
        L30_2 = L30_2 + L33_2
      end
      L33_2 = "scaleYAdd"
      L33_2 = L27_2[L33_2]
      L34_2 = nil
      if L33_2 ~= L34_2 then
        L33_2 = worldScale
        L34_2 = "scaleYAdd"
        L34_2 = L27_2[L34_2]
        L33_2 = L33_2 * L34_2
        L31_2 = L31_2 + L33_2
      end
      L33_2 = "angleAdd"
      L33_2 = L27_2[L33_2]
      L34_2 = nil
      if L33_2 ~= L34_2 then
        L33_2 = "angleAdd"
        L33_2 = L27_2[L33_2]
        L32_2 = L32_2 + L33_2
      end
      L33_2 = setRenderState
      L34_2 = L28_2 / L30_2
      L35_2 = L29_2 / L31_2
      L36_2 = L30_2
      L37_2 = L31_2
      L38_2 = L32_2
      L39_2 = res
      L39_2 = L39_2.getSpritePivot
      L40_2 = L27_2.sprite
      L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L39_2(L40_2)
      L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
    else
      L30_2 = setRenderState
      L31_2 = L27_2.x
      L32_2 = "scaleX"
      L32_2 = L27_2[L32_2]
      L31_2 = L31_2 / L32_2
      L32_2 = L27_2.y
      L33_2 = "scaleY"
      L33_2 = L27_2[L33_2]
      L32_2 = L32_2 / L33_2
      L33_2 = "scaleX"
      L33_2 = L27_2[L33_2]
      L34_2 = "scaleY"
      L34_2 = L27_2[L34_2]
      L35_2 = L27_2.angle
      L36_2 = res
      L36_2 = L36_2.getSpritePivot
      L37_2 = L27_2.sprite
      L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L36_2(L37_2)
      L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
    end
    L30_2 = _G
    L30_2 = L30_2.res
    L30_2 = L30_2.drawSprite
    L31_2 = L27_2.sprite
    L32_2 = 0
    L33_2 = 0
    L30_2(L31_2, L32_2, L33_2)
    L30_2 = setRenderState
    L31_2 = 0
    L32_2 = 0
    L33_2 = 1
    L34_2 = 1
    L35_2 = 0
    L36_2 = 0
    L37_2 = 0
    L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
  end
  L23_2 = popupPage
  L24_2 = nil
  if L23_2 ~= L24_2 then
    L23_2 = drawMenuPage
    L24_2 = popupPage
    L23_2(L24_2)
  end
  L23_2 = screenWidth
  L24_2 = 0.4
  L23_2 = L23_2 * L24_2
  L24_2 = screenHeight
  L25_2 = 0.25
  L24_2 = L24_2 * L25_2
  L25_2 = setRenderState
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0.2
  L29_2 = 0.2
  L30_2 = 0
  L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
  L25_2 = g_showCameraDebugData
  if L25_2 then
    L25_2 = setRenderState
    L26_2 = screen
    L26_2 = L26_2.left
    L26_2 = -L26_2
    L27_2 = screen
    L27_2 = L27_2.top
    L27_2 = -L27_2
    L28_2 = worldScale
    L29_2 = worldScale
    L30_2 = 0
    L31_2 = 0
    L32_2 = 0
    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L25_2 = gameCamera
    L27_2 = "drawDebugVisualization"
    L26_2 = L25_2
    L25_2 = L25_2[L27_2]
    L27_2 = tempScreen
    L27_2 = L27_2.scale
    L25_2(L26_2, L27_2)
    L25_2 = setRenderState
    L26_2 = 0
    L27_2 = 0
    L28_2 = 1
    L29_2 = 1
    L30_2 = 0
    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
    L25_2 = screen
    L26_2 = tempScreen
    L26_2 = L26_2.x
    L25_2.x = L26_2
    L25_2 = screen
    L26_2 = tempScreen
    L26_2 = L26_2.y
    L25_2.y = L26_2
    L25_2 = screen
    L26_2 = tempScreen
    L26_2 = L26_2.left
    L25_2.left = L26_2
    L25_2 = screen
    L26_2 = tempScreen
    L26_2 = L26_2.right
    L25_2.right = L26_2
    L25_2 = screen
    L26_2 = tempScreen
    L26_2 = L26_2.top
    L25_2.top = L26_2
    L25_2 = screen
    L26_2 = tempScreen
    L26_2 = L26_2.bottom
    L25_2.bottom = L26_2
    L25_2 = tempScreen
    L25_2 = L25_2.scale
    worldScale = L25_2
    L25_2 = gameCamera
    L26_2 = L25_2
    L25_2 = L25_2.defaultCamera
    L27_2 = 0
    L25_2(L26_2, L27_2)
  end
  L25_2 = g_killingVolumeAttributes
  L26_2 = "enableDebugging"
  L25_2 = L25_2[L26_2]
  if L25_2 then
    L25_2 = g_killingVolumePhysics
    L26_2 = nil
    if L25_2 ~= L26_2 then
      L25_2 = objects
      L26_2 = "birdCameraData"
      L25_2 = L25_2[L26_2]
      L26_2 = deviceModel
      L25_2 = L25_2[L26_2]
      L26_2 = objects
      L27_2 = "castleCameraData"
      L26_2 = L26_2[L27_2]
      L27_2 = deviceModel
      L26_2 = L26_2[L27_2]
      L27_2 = worldToScreenTransform
      L28_2 = "px"
      L28_2 = L25_2[L28_2]
      L29_2 = "py"
      L29_2 = L25_2[L29_2]
      L27_2, L28_2 = L27_2(L28_2, L29_2)
      L29_2 = worldToScreenTransform
      L30_2 = "px"
      L30_2 = L25_2[L30_2]
      L31_2 = L25_2.screenWidth
      L32_2 = 0.5
      L31_2 = L31_2 * L32_2
      L32_2 = "sx"
      L32_2 = L25_2[L32_2]
      L31_2 = L31_2 / L32_2
      L30_2 = L30_2 - L31_2
      L31_2 = "py"
      L31_2 = L25_2[L31_2]
      L32_2 = L25_2.screenHeight
      L33_2 = 0.5
      L32_2 = L32_2 * L33_2
      L33_2 = "sy"
      L33_2 = L25_2[L33_2]
      L32_2 = L32_2 / L33_2
      L31_2 = L31_2 - L32_2
      L29_2, L30_2 = L29_2(L30_2, L31_2)
      L31_2 = worldToScreenTransform
      L32_2 = "px"
      L32_2 = L25_2[L32_2]
      L33_2 = L25_2.screenWidth
      L34_2 = 0.5
      L33_2 = L33_2 * L34_2
      L34_2 = "sx"
      L34_2 = L25_2[L34_2]
      L33_2 = L33_2 / L34_2
      L32_2 = L32_2 + L33_2
      L33_2 = "py"
      L33_2 = L25_2[L33_2]
      L34_2 = L25_2.screenHeight
      L35_2 = 0.5
      L34_2 = L34_2 * L35_2
      L35_2 = "sy"
      L35_2 = L25_2[L35_2]
      L34_2 = L34_2 / L35_2
      L33_2 = L33_2 + L34_2
      L31_2, L32_2 = L31_2(L32_2, L33_2)
      L33_2 = drawRect
      L34_2 = 1
      L35_2 = 0
      L36_2 = 0
      L37_2 = 0.5
      L38_2 = L29_2
      L39_2 = L30_2
      L40_2 = L31_2
      L41_2 = L32_2
      L42_2 = false
      L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
      L33_2 = L31_2 - L29_2
      L34_2 = 2
      L33_2 = L33_2 / L34_2
      L33_2 = L29_2 + L33_2
      L34_2 = L32_2 - L30_2
      L35_2 = 2
      L34_2 = L34_2 / L35_2
      L34_2 = L30_2 + L34_2
      L35_2 = drawLine2D
      L36_2 = 10
      L36_2 = L33_2 - L36_2
      L37_2 = L34_2
      L38_2 = 10
      L38_2 = L33_2 + L38_2
      L39_2 = L34_2
      L40_2 = 2
      L41_2 = 255
      L42_2 = 0
      L43_2 = 0
      L44_2 = 255
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
      L35_2 = drawLine2D
      L36_2 = L33_2
      L37_2 = 10
      L37_2 = L34_2 - L37_2
      L38_2 = L33_2
      L39_2 = 10
      L39_2 = L34_2 + L39_2
      L40_2 = 2
      L41_2 = 255
      L42_2 = 0
      L43_2 = 0
      L44_2 = 255
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
      L35_2 = worldToScreenTransform
      L36_2 = "px"
      L36_2 = L26_2[L36_2]
      L37_2 = "py"
      L37_2 = L26_2[L37_2]
      L35_2, L36_2 = L35_2(L36_2, L37_2)
      L28_2 = L36_2
      L27_2 = L35_2
      L35_2 = worldToScreenTransform
      L36_2 = "px"
      L36_2 = L26_2[L36_2]
      L37_2 = L26_2.screenWidth
      L38_2 = 0.5
      L37_2 = L37_2 * L38_2
      L38_2 = "sx"
      L38_2 = L26_2[L38_2]
      L37_2 = L37_2 / L38_2
      L36_2 = L36_2 - L37_2
      L37_2 = "py"
      L37_2 = L26_2[L37_2]
      L38_2 = L26_2.screenHeight
      L39_2 = 0.5
      L38_2 = L38_2 * L39_2
      L39_2 = "sy"
      L39_2 = L26_2[L39_2]
      L38_2 = L38_2 / L39_2
      L37_2 = L37_2 - L38_2
      L35_2, L36_2 = L35_2(L36_2, L37_2)
      L30_2 = L36_2
      L29_2 = L35_2
      L35_2 = worldToScreenTransform
      L36_2 = "px"
      L36_2 = L26_2[L36_2]
      L37_2 = L26_2.screenWidth
      L38_2 = 0.5
      L37_2 = L37_2 * L38_2
      L38_2 = "sx"
      L38_2 = L26_2[L38_2]
      L37_2 = L37_2 / L38_2
      L36_2 = L36_2 + L37_2
      L37_2 = "py"
      L37_2 = L26_2[L37_2]
      L38_2 = L26_2.screenHeight
      L39_2 = 0.5
      L38_2 = L38_2 * L39_2
      L39_2 = "sy"
      L39_2 = L26_2[L39_2]
      L38_2 = L38_2 / L39_2
      L37_2 = L37_2 + L38_2
      L35_2, L36_2 = L35_2(L36_2, L37_2)
      L32_2 = L36_2
      L31_2 = L35_2
      L35_2 = drawRect
      L36_2 = 0
      L37_2 = 1
      L38_2 = 0
      L39_2 = 0.5
      L40_2 = L29_2
      L41_2 = L30_2
      L42_2 = L31_2
      L43_2 = L32_2
      L44_2 = false
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
      L35_2 = L31_2 - L29_2
      L36_2 = 2
      L35_2 = L35_2 / L36_2
      L33_2 = L29_2 + L35_2
      L35_2 = L32_2 - L30_2
      L36_2 = 2
      L35_2 = L35_2 / L36_2
      L34_2 = L30_2 + L35_2
      L35_2 = drawLine2D
      L36_2 = 10
      L36_2 = L33_2 - L36_2
      L37_2 = L34_2
      L38_2 = 10
      L38_2 = L33_2 + L38_2
      L39_2 = L34_2
      L40_2 = 2
      L41_2 = 0
      L42_2 = 255
      L43_2 = 0
      L44_2 = 255
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
      L35_2 = drawLine2D
      L36_2 = L33_2
      L37_2 = 10
      L37_2 = L34_2 - L37_2
      L38_2 = L33_2
      L39_2 = 10
      L39_2 = L34_2 + L39_2
      L40_2 = 2
      L41_2 = 0
      L42_2 = 255
      L43_2 = 0
      L44_2 = 255
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
      L35_2 = drawLine2D
      L36_2 = 0
      L37_2 = screenHeight
      L38_2 = 0.5
      L37_2 = L37_2 * L38_2
      L38_2 = screenWidth
      L39_2 = screenHeight
      L40_2 = 0.5
      L39_2 = L39_2 * L40_2
      L40_2 = 2
      L41_2 = 255
      L42_2 = 0
      L43_2 = 0
      L44_2 = 255
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
      L35_2 = drawLine2D
      L36_2 = screenWidth
      L37_2 = 0.5
      L36_2 = L36_2 * L37_2
      L37_2 = 0
      L38_2 = screenWidth
      L39_2 = 0.5
      L38_2 = L38_2 * L39_2
      L39_2 = screenHeight
      L40_2 = 2
      L41_2 = 0
      L42_2 = 255
      L43_2 = 0
      L44_2 = 255
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
      L35_2 = physicsToScreenTransform
      L36_2 = g_killingVolumePhysics
      L36_2 = L36_2.left
      L37_2 = g_killingVolumePhysics
      L37_2 = L37_2.top
      L35_2, L36_2 = L35_2(L36_2, L37_2)
      L30_2 = L36_2
      L29_2 = L35_2
      L35_2 = physicsToScreenTransform
      L36_2 = g_killingVolumePhysics
      L36_2 = L36_2.right
      L37_2 = g_killingVolumePhysics
      L37_2 = L37_2.bottom
      L35_2, L36_2 = L35_2(L36_2, L37_2)
      L32_2 = L36_2
      L31_2 = L35_2
      L35_2 = 5
      L29_2 = L29_2 + L35_2
      L35_2 = 5
      L30_2 = L30_2 + L35_2
      L35_2 = 5
      L31_2 = L31_2 - L35_2
      L35_2 = 5
      L32_2 = L32_2 - L35_2
      L35_2 = drawRect
      L36_2 = 1
      L37_2 = 1
      L38_2 = 1
      L39_2 = 0.5
      L40_2 = L29_2
      L41_2 = L30_2
      L42_2 = L31_2
      L43_2 = L32_2
      L44_2 = false
      L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
    end
  end
  L25_2 = actions
  L26_2 = "drawLanderFuelGauge"
  L25_2 = L25_2[L26_2]
  L25_2()
  L25_2 = g_autoReticle
  if L25_2 then
    L25_2 = g_autoReticle
    L26_2 = "maxScale"
    L25_2 = L25_2[L26_2]
    L26_2 = g_autoReticle
    L27_2 = "minScale"
    L26_2 = L26_2[L27_2]
    L25_2 = L25_2 - L26_2
    L26_2 = g_autoReticle
    L27_2 = "minScale"
    L26_2 = L26_2[L27_2]
    L27_2 = _G
    L27_2 = L27_2.math
    L27_2 = L27_2.sin
    L28_2 = g_autoReticle
    L28_2 = L28_2.timer
    L29_2 = _G
    L29_2 = L29_2.math
    L29_2 = L29_2.pi
    L28_2 = L28_2 * L29_2
    L27_2 = L27_2(L28_2)
    L28_2 = 1
    L27_2 = L27_2 + L28_2
    L27_2 = L27_2 * L25_2
    L28_2 = 0.5
    L27_2 = L27_2 * L28_2
    L26_2 = L26_2 + L27_2
    L27_2 = _G
    L27_2 = L27_2.math
    L27_2 = L27_2.min
    L28_2 = 0.2
    L29_2 = g_autoReticle
    L30_2 = "maxTime"
    L29_2 = L29_2[L30_2]
    L30_2 = g_autoReticle
    L30_2 = L30_2.timer
    L29_2 = L29_2 - L30_2
    L27_2 = L27_2(L28_2, L29_2)
    L27_2 = L26_2 * L27_2
    L28_2 = 5
    L26_2 = L27_2 * L28_2
    L27_2 = physicsToScreenTransform
    L28_2 = g_autoReticle
    L28_2 = L28_2.x
    L29_2 = g_autoReticle
    L29_2 = L29_2.y
    L27_2, L28_2 = L27_2(L28_2, L29_2)
    L29_2 = setRenderState
    L30_2 = 0
    L31_2 = 0
    L32_2 = L26_2
    L33_2 = L26_2
    L34_2 = 0
    L35_2 = 0
    L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L29_2 = _G
    L29_2 = L29_2.res
    L29_2 = L29_2.drawSprite
    L30_2 = ""
    L31_2 = g_autoReticle
    L31_2 = L31_2.sprite
    L32_2 = L27_2 / L26_2
    L33_2 = L28_2 / L26_2
    L29_2(L30_2, L31_2, L32_2, L33_2)
  end
  L25_2 = g_scopeDelta
  if L25_2 then
    L25_2 = screenWidth
    L26_2 = 0.5
    L25_2 = L25_2 * L26_2
    L26_2 = 1
    L25_2 = L25_2 - L26_2
    L26_2 = screenHeight
    L27_2 = 0.5
    L26_2 = L26_2 * L27_2
    L27_2 = getUIScale
    L27_2 = L27_2()
    L28_2 = g_scopeDelta
    L29_2 = 3
    L28_2 = L28_2 * L29_2
    L29_2 = 5
    L28_2 = L29_2 - L28_2
    L27_2 = L27_2 * L28_2
    L28_2 = setRenderState
    L29_2 = L25_2 / L27_2
    L30_2 = L26_2 / L27_2
    L31_2 = L27_2
    L32_2 = L27_2
    L33_2 = 0
    L34_2 = 0
    L35_2 = 0
    L36_2 = g_scopeDelta
    L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
    L28_2 = _G
    L28_2 = L28_2.res
    L28_2 = L28_2.drawSprite
    L29_2 = "TUSKEN_RAIDER_SCOPE"
    L30_2 = 0
    L31_2 = 0
    L28_2(L29_2, L30_2, L31_2)
  end
  L25_2 = setRenderState
  L26_2 = 0
  L27_2 = 0
  L28_2 = 1
  L29_2 = 1
  L30_2 = 0
  L31_2 = 0
  L32_2 = 0
  L33_2 = 1
  L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L25_2 = ui
  L26_2 = "Frame"
  L25_2 = L25_2[L26_2]
  L25_2 = L25_2.draw
  L26_2 = A0_2
  L27_2 = 0
  L28_2 = 0
  L25_2(L26_2, L27_2, L28_2)
  L25_2 = gameCamera
  L27_2 = "getCurrentCameraIndex"
  L26_2 = L25_2
  L25_2 = L25_2[L27_2]
  L25_2 = L25_2(L26_2)
  L26_2 = 1
  L25_2 = L25_2 + L26_2
  L26_2 = g_drawLevelCameraIndexes
  if L26_2 then
    L26_2 = getEpisodeMetadata
    L27_2 = currentFolder
    L26_2 = L26_2(L27_2)
    L27_2 = "hideCameraIndexes"
    L26_2 = L26_2[L27_2]
    if not L26_2 then
      L26_2 = gameCamera
      L28_2 = "getNumberOfCameras"
      L27_2 = L26_2
      L26_2 = L26_2[L28_2]
      L26_2 = L26_2(L27_2)
      L27_2 = 2
      if L26_2 >= L27_2 then
        L27_2 = _G
        L27_2 = L27_2.res
        L27_2 = L27_2.getSpriteBounds
        L28_2 = "ICON_DOT_1"
        L27_2, L28_2 = L27_2(L28_2)
        L29_2 = 2
        L27_2 = L27_2 * L29_2
        L29_2 = _G
        L29_2 = L29_2.math
        L29_2 = L29_2.floor
        L30_2 = 0.5
        L30_2 = L26_2 - L30_2
        L30_2 = L30_2 * L27_2
        L29_2 = L29_2(L30_2)
        L30_2 = screenHeight
        L30_2 = L30_2 - L28_2
        L31_2 = "leftButton"
        L31_2 = A0_2[L31_2]
        L32_2 = nil
        if L31_2 ~= L32_2 then
          L30_2 = L31_2.y
        end
        L32_2 = setRenderState
        L33_2 = 0
        L34_2 = 0
        L35_2 = 1
        L36_2 = 1
        L37_2 = 0
        L38_2 = 0
        L39_2 = 0
        L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
        L32_2 = 1
        L33_2 = L26_2
        L34_2 = 1
        for L35_2 = L32_2, L33_2, L34_2 do
          L36_2 = -L29_2
          L37_2 = 0.5
          L36_2 = L36_2 * L37_2
          L37_2 = screenWidth
          L38_2 = 0.5
          L37_2 = L37_2 * L38_2
          L36_2 = L36_2 + L37_2
          L37_2 = 1
          L37_2 = L35_2 - L37_2
          L37_2 = L27_2 * L37_2
          L36_2 = L36_2 + L37_2
          L37_2 = 4
          L36_2 = L36_2 + L37_2
          if L35_2 ~= L25_2 then
            L37_2 = res
            L37_2 = L37_2.drawSprite
            L38_2 = ""
            L39_2 = "ICON_DOT_1"
            L40_2 = L36_2
            L41_2 = L30_2
            L37_2(L38_2, L39_2, L40_2, L41_2)
          else
            L37_2 = res
            L37_2 = L37_2.drawSprite
            L38_2 = ""
            L39_2 = "ICON_DOT_2"
            L40_2 = L36_2
            L41_2 = L30_2
            L37_2(L38_2, L39_2, L40_2, L41_2)
          end
        end
      end
    end
  end
  L28_2 = "drawTransition"
  L27_2 = A0_2
  L26_2 = A0_2[L28_2]
  L26_2(L27_2)
  L28_2 = "drawFade"
  L27_2 = A0_2
  L26_2 = A0_2[L28_2]
  L26_2(L27_2)
  L26_2 = g_queuedCursorName
  if L26_2 then
    L26_2 = g_queuedCursorName
    g_currentCursorName = L26_2
    L26_2 = nil
    g_queuedCursorName = L26_2
  end
  L26_2 = drawMenuParticlesNative
  L26_2()
  L26_2 = g_gamePaused
  if not L26_2 then
    L26_2 = flyingBird
    L27_2 = nil
    if L26_2 ~= L27_2 then
      L26_2 = SettingsWrapper
      L28_2 = "getTimesBirdPowerNotUsed"
      L27_2 = L26_2
      L26_2 = L26_2[L28_2]
      L28_2 = flyingBird
      L28_2 = L28_2.definition
      L26_2 = L26_2(L27_2, L28_2)
      L27_2 = 3
      if L26_2 >= L27_2 then
        L26_2 = blockTable
        L26_2 = L26_2.blocks
        L27_2 = flyingBird
        L27_2 = L27_2.definition
        L26_2 = L26_2[L27_2]
        L27_2 = "specialty"
        L26_2 = L26_2[L27_2]
        L27_2 = nil
        if L26_2 ~= L27_2 then
          L26_2 = birdSpecialtyUsed
          if not L26_2 then
            L26_2 = flyingBird
            L27_2 = "tutorialSpecialtyHandled"
            L26_2 = L26_2[L27_2]
            if not L26_2 then
              L26_2 = startedFromEditor
              if not L26_2 then
                L26_2 = flightTime
                L27_2 = 0.5
                if L26_2 > L27_2 then
                  L26_2 = isLevelEnded
                  L26_2 = L26_2()
                  if not L26_2 then
                    L26_2 = isPausePageVisible
                    L26_2 = L26_2()
                    if not L26_2 then
                      L26_2 = g_tutorialShowing
                      if not L26_2 then
                        L26_2 = isCharacterMenuVisible
                        L26_2 = L26_2()
                        if not L26_2 then
                          L26_2 = isAnyShopPromptOpen
                          L26_2 = L26_2()
                          if not L26_2 then
                            L26_2 = screenWidth
                            L27_2 = 0.75
                            L26_2 = L26_2 * L27_2
                            L27_2 = screenHeight
                            L28_2 = 0.75
                            L27_2 = L27_2 * L28_2
                            L28_2 = tweenEaseCubicInOut
                            L29_2 = _G
                            L29_2 = L29_2.math
                            L29_2 = L29_2.min
                            L30_2 = 1
                            L31_2 = flightTime
                            L32_2 = 0.5
                            L31_2 = L31_2 - L32_2
                            L32_2 = 2
                            L31_2 = L31_2 * L32_2
                            L29_2 = L29_2(L30_2, L31_2)
                            L30_2 = 0
                            L31_2 = 1
                            L32_2 = 1
                            L28_2 = L28_2(L29_2, L30_2, L31_2, L32_2)
                            L29_2 = getUIScale
                            L29_2 = L29_2()
                            L29_2 = L29_2 * L28_2
                            L30_2 = setRenderState
                            L31_2 = L26_2 / L29_2
                            L32_2 = L27_2 / L29_2
                            L33_2 = L29_2
                            L34_2 = L29_2
                            L35_2 = 0
                            L36_2 = 0
                            L37_2 = 0
                            L38_2 = 0.75
                            L38_2 = L28_2 * L38_2
                            L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
                            L30_2 = _G
                            L30_2 = L30_2.res
                            L30_2 = L30_2.drawSprite
                            L31_2 = "HELPER_FINGER_1"
                            L32_2 = 0
                            L33_2 = 0
                            L30_2(L31_2, L32_2, L33_2)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L26_2 = setRenderState
  L27_2 = 0
  L28_2 = 0
  L29_2 = 1
  L30_2 = 1
  L31_2 = 0
  L32_2 = 0
  L33_2 = 0
  L34_2 = 1
  L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
end

L0_1.draw = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = fadeTimer
  if L1_2 then
    L1_2 = fadeColor
    if not L1_2 then
      L1_2 = {}
      L2_2 = 1
      L3_2 = 1
      L4_2 = 1
      L1_2[1] = L2_2
      L1_2[2] = L3_2
      L1_2[3] = L4_2
    end
    L2_2 = setRenderState
    L3_2 = 0
    L4_2 = 0
    L5_2 = 1
    L6_2 = 1
    L7_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = drawRect
    L3_2 = L1_2[1]
    L4_2 = L1_2[2]
    L5_2 = L1_2[3]
    L6_2 = fadeTotalTimer
    L7_2 = fadeTimer
    L6_2 = L6_2 - L7_2
    L7_2 = fadeTotalTimer
    L6_2 = L6_2 / L7_2
    L7_2 = 0
    L8_2 = 0
    L9_2 = screenWidth
    L10_2 = screenHeight
    L11_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

L0_1.drawFade = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "BTN_BG_LIGHT"
  L2_2, L3_2 = L2_2(L3_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "pauseButton"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.setScale
    L7_2 = L1_2
    L5_2(L6_2, L7_2)
    L5_2 = L2_2 * 0.55
    L5_2 = L5_2 * L1_2
    L4_2.x = L5_2
    L5_2 = L3_2 * 0.7
    L5_2 = L5_2 * L1_2
    L4_2.y = L5_2
    L5_2 = getLevelMetadata
    L6_2 = levelName
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.type
    if L5_2 == "menu" then
      L5_2 = L2_2 * 0.6
      L5_2 = L5_2 * L1_2
      L4_2.x = L5_2
      L5_2 = screenHeight
      L6_2 = L3_2 * 0.6
      L6_2 = L6_2 * L1_2
      L5_2 = L5_2 - L6_2
      L4_2.y = L5_2
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "sideSwitchButton"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.setScale
    L8_2 = L1_2
    L6_2(L7_2, L8_2)
    L6_2 = L5_2.w
    L6_2 = L6_2 * 0.6
    L6_2 = L6_2 * L1_2
    L5_2.x = L6_2
    L6_2 = L5_2.h
    L6_2 = L6_2 * 0.6
    L6_2 = L6_2 * L1_2
    L5_2.y = L6_2
    L6_2 = L5_2.sideSwitchText
    if L6_2 then
      L6_2 = L5_2.sideSwitchText
      L7_2 = L2_2 * 0.14
      L7_2 = L7_2 * L1_2
      L6_2.x = L7_2
      L6_2 = L5_2.sideSwitchText
      L7_2 = L3_2 * 0.02
      L7_2 = L7_2 * L1_2
      L6_2.y = L7_2
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "questButton"
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L8_2 = L6_2
    L7_2 = L6_2.setScale
    L9_2 = L1_2
    L7_2(L8_2, L9_2)
    L7_2 = screenWidth
    L7_2 = L7_2 * 0.5
    L6_2.x = L7_2
    L7_2 = screenHeight
    L8_2 = L6_2.h
    L8_2 = L8_2 * 0.6
    L8_2 = L8_2 * L1_2
    L7_2 = L7_2 - L8_2
    L6_2.y = L7_2
  end
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "currencyShopButton"
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L8_2 = 12 * L1_2
    L10_2 = L7_2
    L9_2 = L7_2.setScale
    L11_2 = L1_2
    L9_2(L10_2, L11_2)
    L10_2 = L7_2
    L9_2 = L7_2.layout
    L9_2(L10_2)
    L9_2 = screenWidth
    L9_2 = L9_2 - L8_2
    L7_2.x = L9_2
    L9_2 = L7_2.h
    L9_2 = L9_2 * 0.75
    L7_2.y = L9_2
  end
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "shopButton"
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L10_2 = L8_2
    L9_2 = L8_2.setScale
    L11_2 = L1_2
    L9_2(L10_2, L11_2)
    L9_2 = screenWidth
    L10_2 = L8_2.w
    L10_2 = L10_2 * 0.6
    L10_2 = L10_2 * L1_2
    L9_2 = L9_2 - L10_2
    L8_2.x = L9_2
    L9_2 = screenHeight
    L10_2 = L8_2.h
    L10_2 = L10_2 * 0.6
    L10_2 = L10_2 * L1_2
    L9_2 = L9_2 - L10_2
    L8_2.y = L9_2
    L10_2 = A0_2
    L9_2 = A0_2.getChild
    L11_2 = "shopButtonGlow"
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L11_2 = L9_2
      L10_2 = L9_2.setScale
      L12_2 = L1_2 * 0.5
      L10_2(L11_2, L12_2)
      L10_2 = L8_2.x
      L9_2.x = L10_2
      L10_2 = L8_2.y
      L9_2.y = L10_2
    end
    L11_2 = L8_2
    L10_2 = L8_2.getChild
    L12_2 = "claimBadge"
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L11_2 = _G
      L11_2 = L11_2.res
      L11_2 = L11_2.getSpriteBounds
      L12_2 = "BTN_SHOP"
      L11_2, L12_2 = L11_2(L12_2)
      L13_2 = L11_2 * 0.3
      L13_2 = L13_2 * L1_2
      L10_2.x = L13_2
      L13_2 = -L12_2
      L13_2 = L13_2 * 0.4
      L13_2 = L13_2 * L1_2
      L10_2.y = L13_2
      L14_2 = L10_2
      L13_2 = L10_2.setScale
      L15_2 = L1_2
      L13_2(L14_2, L15_2)
      L14_2 = L10_2
      L13_2 = L10_2.layout
      L13_2(L14_2)
    end
  end
  L9_2 = native_redistributeInfiniteParticles
  L9_2()
  L9_2 = ui
  L9_2 = L9_2.Frame
  L9_2 = L9_2.layout
  L10_2 = A0_2
  L9_2(L10_2)
end

L0_1.layout = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = getLevelMetadata
  L2_2 = levelName
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.musicName
  if not L1_2 then
    L1_2 = blockTable
    L1_2 = L1_2.themes
    L2_2 = objects
    L2_2 = L2_2.theme
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.randomAmbient
    g_randomAmbient = L1_2
    L1_2 = 0
    g_randomAmbientTimer = L1_2
    L1_2 = g_randomAmbient
    if L1_2 then
      L1_2 = g_randomAmbient
      L1_2 = L1_2.randomizationTime
      L1_2 = L1_2.low
      L2_2 = _G
      L2_2 = L2_2.math
      L2_2 = L2_2.random
      L2_2 = L2_2()
      L3_2 = g_randomAmbient
      L3_2 = L3_2.randomizationTime
      L3_2 = L3_2.high
      L4_2 = g_randomAmbient
      L4_2 = L4_2.randomizationTime
      L4_2 = L4_2.low
      L3_2 = L3_2 - L4_2
      L2_2 = L2_2 * L3_2
      L1_2 = L1_2 + L2_2
      g_randomAmbientTimer = L1_2
    end
  else
    L1_2 = nil
    g_randomAmbient = L1_2
  end
end

L0_1.initRandomAmbient = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0
  g_levelTimer = L1_2
  L1_2 = queuedLevelFolder
  if L1_2 ~= nil then
    L1_2 = queuedLevelFolder
    levelFolder = L1_2
    L1_2 = nil
    queuedLevelFolder = L1_2
  end
  L1_2 = queuedLevelName
  if L1_2 ~= nil then
    L1_2 = queuedLevelName
    levelName = L1_2
    L1_2 = nil
    queuedLevelName = L1_2
  end
  L1_2 = queuedCurrentPack
  if L1_2 ~= nil then
    L1_2 = queuedCurrentPack
    currentPack = L1_2
    L1_2 = nil
    queuedCurrentPack = L1_2
  end
  L1_2 = queuedCurrentLevel
  if L1_2 ~= nil then
    L1_2 = queuedCurrentLevel
    currentLevel = L1_2
    L1_2 = nil
    queuedCurrentLevel = L1_2
  end
  L1_2 = queuedCurrentFolder
  if L1_2 ~= nil then
    L1_2 = queuedCurrentFolder
    currentFolder = L1_2
    L1_2 = nil
    queuedCurrentFolder = L1_2
  end
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPIC_SELECTION_DONE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_JOINT_REMOVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSE_CLICKED
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
  L3_2 = L3_2.EID_PAUSE_PAGE_OPENED
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
  L3_2 = L3_2.EID_CAPTURE_SCREEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_PURCHASE_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MIGHTY_EAGLE_BUTTON_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MIGHTY_EAGLE_PURCHASE_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_PURCHASE_CLOSE_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_AUDIO_TOGGLED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_URL
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_SHOP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_SHOP_AT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_COIN_SHOP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_COIN_SHOP_AT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_TELEPOD
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
  L3_2 = L3_2.EID_TELEPOD_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NOTIFICATION_OPEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NOTIFICATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_INIT_EPISODE_COMPLETED_ACTIONS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_THREE_STARS_POPUP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SCROLL_RIGHT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_STARTED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_REMOVE_ADS_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ADS_REMOVED
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
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_SCREEN_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_SCREEN_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_COMPLETED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CLOSE_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOW_TIMED_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
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
  L3_2 = L3_2.EID_ASSET_LOAD_SUCCESS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ASSET_LOAD_FAILED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_SHOW_PROMO_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SET_DEVICE_ACHIEVEMENT_GIVEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_FAILED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_COMPLETED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ROVIO_ID_SHOWING_LOGIN_VIEW
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ROVIO_ID_VIEW_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_BIRD_SHOT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_QUEST_PAGE_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_QUEST_PAGE_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSING_POPUP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSING_POPUP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_LOADING_FINISHED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_ALL_QUESTS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_START_CARBONITE_CLAIM_ANIMATION
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_START_BUY_ANIMATION
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_CARBONITE_MELTING
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOW_CARBONITE_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_CARBONITE_PROMPT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_MELT_ANIMATION_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_MELT_ANIMATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_WEEKLY_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHANGE_LOCALE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_GAME_PAUSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_GAME_RESUMED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NEXT_BIRD_READY
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_INLEVEL_CAMERA_MOVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = rovioAccountEnabled
  if L1_2 then
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = events
    L3_2 = L3_2.EID_CHANGE_SCENE
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = events
    L3_2 = L3_2.EID_ROVIO_ID_LOGIN_ACCEPTED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = events
    L3_2 = L3_2.EID_ROVIO_ID_LOGOUT
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = events
    L3_2 = L3_2.EID_SYNC_CLOUD
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = events
    L3_2 = L3_2.EID_SYNC_CLOUD_COMPLETED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = events
    L3_2 = L3_2.EID_OPEN_ROVIO_ID_REGISTRATION
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = events
    L3_2 = L3_2.EID_SYNC_CLOUD_LOAD_FAILED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = resetBGInitialPosition
  L1_2()
  L1_2 = setGameOn
  L2_2 = isInGameMode
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = setEditing
  L2_2 = false
  L1_2(L2_2)
  L1_2 = enableSmoothZooming
  L2_2 = true
  L1_2(L2_2)
  L1_2 = setPhysicsEnabled
  L2_2 = true
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setupFrameElements
  L1_2(L2_2)
  L1_2 = setDeltaTimeMultiplier
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = A0_2.resumeLevel
  if not L1_2 then
    L1_2 = startedFromEditor
    if L1_2 then
      L1_2 = "temp/"
      L2_2 = levelName
      L3_2 = ".temp.playtest"
      L1_2 = L1_2 .. L2_2 .. L3_2
      L2_2 = loadLevelInternal
      L3_2 = levelFolder
      L4_2 = L1_2
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
    else
      L1_2 = loadLevelInternal
      L2_2 = levelFolder
      L3_2 = levelName
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = g_extraPlayMenuUsed
      if L1_2 ~= true then
        L1_2 = levelName
        L2_2 = g_oldLevelName
        if L1_2 == L2_2 then
          L1_2 = numberOfAttemptsInLevel
          L1_2 = L1_2 + 1
          numberOfAttemptsInLevel = L1_2
        else
          L1_2 = 1
          numberOfAttemptsInLevel = L1_2
        end
      end
    end
  else
    A0_2.resumeLevel = false
  end
  L1_2 = levelName
  g_oldLevelName = L1_2
  L1_2 = nil
  g_autoReticle = L1_2
  L1_2 = nil
  g_eventSystemResetDone = L1_2
  A0_2.animationTimer = nil
  L1_2 = enableInGameParticlesNative
  L2_2 = true
  L1_2(L2_2)
  L1_2 = handleLevelMusic
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2.initRandomAmbient
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = releaseBuild
  if L1_2 ~= true then
    L1_2 = g_warningMessages
    if L1_2 ~= nil then
      L1_2 = _G
      L1_2 = L1_2.ipairs
      L2_2 = g_warningMessages
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = eventManager
        L7_2 = L6_2
        L6_2 = L6_2.notify
        L8_2 = {}
        L9_2 = events
        L9_2 = L9_2.EID_PUSH_FRAME
        L8_2.id = L9_2
        L9_2 = ui
        L9_2 = L9_2.Prompt
        L10_2 = L9_2
        L9_2 = L9_2.new
        L11_2 = {}
        L11_2.title = "QA Message"
        L11_2.content = L5_2
        L9_2 = L9_2(L10_2, L11_2)
        L8_2.target = L9_2
        L6_2(L7_2, L8_2)
      end
    end
    L1_2 = nil
    g_warningMessages = L1_2
  end
  L1_2 = g_showEpisodePurchaseDialog
  if L1_2 then
    L1_2 = isBuildUnlocked
    L1_2 = L1_2()
    if L1_2 ~= true then
      L1_2 = getEpisodeMetadataWithParam
      L2_2 = currentFolder
      L3_2 = "iapPurchaseId"
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 ~= nil then
        L2_2 = ui
        L2_2 = L2_2.Shop
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = {}
        L2_2 = L2_2(L3_2, L4_2)
        L3_2 = eventManager
        L4_2 = L3_2
        L3_2 = L3_2.queueEvent
        L5_2 = {}
        L6_2 = events
        L6_2 = L6_2.EID_PUSH_FRAME
        L5_2.id = L6_2
        L5_2.target = L2_2
        L3_2(L4_2, L5_2)
        L4_2 = L2_2
        L3_2 = L2_2.scrollToShortCut
        L5_2 = "EPISODE"
        L3_2(L4_2, L5_2)
      end
      L2_2 = nil
      g_showEpisodePurchaseDialogFrom = L2_2
      L2_2 = nil
      g_showEpisodePurchaseDialog = L2_2
    end
  end
  L1_2 = false
  L2_2 = getLevelStarsFromHighscores
  L3_2 = levelName
  L2_2 = L2_2(L3_2)
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.wasLevelStartedBefore
  L5_2 = levelName
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L1_2 = true
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.levelStarted
    L5_2 = levelName
    L3_2(L4_2, L5_2)
  end
  L3_2 = subsystemsapi
  L3_2 = L3_2.daysSinceLastLevelStart
  L4_2 = levelName
  L3_2 = L3_2(L4_2)
  L4_2 = eventManager
  L5_2 = L4_2
  L4_2 = L4_2.notify
  L6_2 = {}
  L7_2 = events
  L7_2 = L7_2.EID_LEVEL_STARTED
  L6_2.id = L7_2
  L7_2 = levelName
  L6_2.levelName = L7_2
  L6_2.FirstTime = L1_2
  L6_2.starsAchieved = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = subsystemsapi
  L4_2 = L4_2.resetLevelStartDate
  L5_2 = levelName
  L4_2(L5_2)
  A0_2.heldByForceTimer = 0
  L4_2 = g_isRegistered
  if not L4_2 then
    L4_2 = g_openUpsell
    if L4_2 then
      L4_2 = nil
      g_openUpsell = L4_2
      L4_2 = eventManager
      L5_2 = L4_2
      L4_2 = L4_2.queueEvent
      L6_2 = {}
      L7_2 = events
      L7_2 = L7_2.EID_SHOW_REGISTRATION_DIALOG
      L6_2.id = L7_2
      L4_2(L5_2, L6_2)
    end
  end
end

L0_1.onEntry = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L7_2 = flyingBird
  L7_2 = L7_2.radius
  L8_2 = getObjectDefinition
  L9_2 = flyingBird
  L9_2 = L9_2.name
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2.sprites
  L9_2 = L9_2.action
  L10_2 = createCircle
  L11_2 = A1_2
  L12_2 = L9_2
  L13_2 = flyingBird
  L13_2 = L13_2.x
  L13_2 = L13_2 + A2_2
  L14_2 = flyingBird
  L14_2 = L14_2.y
  L14_2 = L14_2 + A3_2
  L15_2 = L7_2
  L16_2 = flyingBird
  L16_2 = L16_2.density
  L17_2 = flyingBird
  L17_2 = L17_2.friction
  L18_2 = flyingBird
  L18_2 = L18_2.restitution
  L19_2 = true
  L20_2 = flyingBird
  L20_2 = L20_2.controllable
  L21_2 = flyingBird
  L21_2 = L21_2.z_order
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.scale
  L10_2.scale = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onTriggerExit
  L10_2.onTriggerExit = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onTriggerEnter
  L10_2.onTriggerEnter = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onCollisionEnter
  L10_2.onCollisionEnter = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onDestroyed
  L10_2.onDestroyed = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onCreated
  L10_2.onCreated = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onCollisionExit
  L10_2.onCollisionExit = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onReceivedExplosionDamage
  L10_2.onReceivedExplosionDamage = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2.onReceivedExplosionForce
  L10_2.onReceivedExplosionForce = L11_2
  L10_2 = setActive
  L11_2 = A1_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = setScale
  L11_2 = A1_2
  L12_2 = L8_2.scale
  if not L12_2 then
    L12_2 = 1
  end
  L13_2 = L8_2.scale
  if not L13_2 then
    L13_2 = 1
  end
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = setLinearDamping
  L11_2 = A1_2
  L12_2 = defaultPhysicsDrag
  L10_2(L11_2, L12_2)
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.hasExploded
  L10_2.hasExploded = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.definition
  L10_2.definition = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.controllable
  L10_2.controllable = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.strength
  L10_2.strength = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.defence
  L10_2.defence = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.material
  L10_2.material = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.levelGoal
  L10_2.levelGoal = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.damageFactors
  L10_2.damageFactors = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.spritePivotX
  L10_2.spritePivotX = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.spritePivotY
  L10_2.spritePivotY = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.damageSprite
  L10_2.damageSprite = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.name
  L10_2.parentName = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.useLegacyCollisionPath
  L10_2.useLegacyCollisionPath = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L10_2.shot = true
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.xVel
  L11_2 = L11_2 + A4_2
  L10_2.xVel = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.yVel
  L11_2 = L11_2 + A5_2
  L10_2.yVel = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L10_2.notCollided = true
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.startingX
  L10_2.startingX = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.startingY
  L10_2.startingY = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.startingAngle
  L10_2.startingAngle = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.controlRadius
  L10_2.controlRadius = L11_2
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L10_2.damageDone = 0
  L10_2 = objects
  L10_2 = L10_2.world
  L10_2 = L10_2[A1_2]
  L11_2 = flyingBird
  L11_2 = L11_2.startNumber
  L10_2.startNumber = L11_2
  L10_2 = native_setWaterDensity
  L11_2 = A1_2
  L12_2 = getWaterDensity
  L13_2 = objects
  L13_2 = L13_2.world
  L13_2 = L13_2[A1_2]
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  if A6_2 ~= nil then
    L10_2 = objects
    L10_2 = L10_2.world
    L10_2 = L10_2[A1_2]
    L10_2.enteredGravitationArea = true
  end
  L10_2 = setObjectParameter
  L11_2 = A1_2
  L12_2 = 11
  L13_2 = 1
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = setActive
  L11_2 = A1_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = setRotation
  L11_2 = A1_2
  L12_2 = flyingBird
  L12_2 = L12_2.angle
  L10_2(L11_2, L12_2)
  L10_2 = setVelocity
  L11_2 = A1_2
  L12_2 = flyingBird
  L12_2 = L12_2.xVel
  L12_2 = L12_2 + A4_2
  L13_2 = flyingBird
  L13_2 = L13_2.yVel
  L13_2 = L13_2 + A5_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = birds
  L11_2 = objects
  L11_2 = L11_2.world
  L11_2 = L11_2[A1_2]
  L10_2[A1_2] = L11_2
  L10_2 = birds
  L10_2 = L10_2[A1_2]
  L10_2.startedOutsideAtmosphere = nil
  L10_2 = blockTable
  L10_2 = L10_2.blocks
  L11_2 = objects
  L11_2 = L11_2.world
  L11_2 = L11_2[A1_2]
  L11_2 = L11_2.definition
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.onLaunched
  if L10_2 ~= nil then
    L10_2 = addEventCall
    L11_2 = blockTable
    L11_2 = L11_2.blocks
    L12_2 = objects
    L12_2 = L12_2.world
    L12_2 = L12_2[A1_2]
    L12_2 = L12_2.definition
    L11_2 = L11_2[L12_2]
    L11_2 = L11_2.onLaunched
    L12_2 = {}
    L12_2.name = A1_2
    L10_2(L11_2, L12_2)
  end
  L10_2 = addUpdateCall
  L11_2 = "setClusterDamping"
  L12_2 = {}
  L12_2.name = A1_2
  L13_2 = A1_2
  L14_2 = "_clusterDamping"
  L13_2 = L13_2 .. L14_2
  L12_2.updateCallName = L13_2
  L13_2 = nil
  L14_2 = A1_2
  L15_2 = "_clusterDamping"
  L14_2 = L14_2 .. L15_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
end

L0_1.makeClusterBird = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = clearParticlesNative
  L1_2()
  L1_2 = setGameOn
  L2_2 = false
  L1_2(L2_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPIC_SELECTION_DONE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_JOINT_REMOVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSE_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSE_PAGE_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSE_PAGE_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_RESTART_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CAPTURE_SCREEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MIGHTY_EAGLE_BUTTON_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MIGHTY_EAGLE_PURCHASE_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_PURCHASE_CLOSE_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_PURCHASE_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_AUDIO_TOGGLED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_URL
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_SHOP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_SHOP_AT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_COIN_SHOP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_COIN_SHOP_AT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_TELEPOD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_TELEPOD_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_TELEPOD_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NOTIFICATION_OPEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NOTIFICATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_INIT_EPISODE_COMPLETED_ACTIONS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_THREE_STARS_POPUP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SCROLL_RIGHT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_STARTED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_REMOVE_ADS_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ADS_REMOVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_SCREEN_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_SCREEN_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_EPISODE_COMPLETED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_OPEN_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOW_TIMED_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CLOSE_BUY_FREE_IOS_VERSION_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_MAIN_MENU_ENTERED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ASSET_LOAD_SUCCESS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ASSET_LOAD_FAILED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_SHOW_PROMO_POPUP
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SET_DEVICE_ACHIEVEMENT_GIVEN
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_FAILED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_COMPLETED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ROVIO_ID_SHOWING_LOGIN_VIEW
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_ROVIO_ID_VIEW_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_BIRD_SHOT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_QUEST_PAGE_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_QUEST_PAGE_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSING_POPUP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PAUSING_POPUP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_LEVEL_LOADING_FINISHED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_ALL_QUESTS
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_START_CARBONITE_CLAIM_ANIMATION
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_START_BUY_ANIMATION
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_CARBONITE_MELTING
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOW_CARBONITE_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_CARBONITE_PROMPT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_MELT_ANIMATION_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CARBONITE_MELT_ANIMATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHECK_WEEKLY_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_CHANGE_LOCALE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_GAME_PAUSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_GAME_RESUMED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NEXT_BIRD_READY
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_INLEVEL_CAMERA_MOVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = rovioAccountEnabled
  if L1_2 then
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = events
    L3_2 = L3_2.EID_CHANGE_SCENE
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = events
    L3_2 = L3_2.EID_ROVIO_ID_LOGIN_ACCEPTED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = events
    L3_2 = L3_2.EID_ROVIO_ID_LOGOUT
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = events
    L3_2 = L3_2.EID_SYNC_CLOUD
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = events
    L3_2 = L3_2.EID_SYNC_CLOUD_COMPLETED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = events
    L3_2 = L3_2.EID_OPEN_ROVIO_ID_REGISTRATION
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = events
    L3_2 = L3_2.EID_SYNC_CLOUD_LOAD_FAILED
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  if A1_2 == "PRESS" then
    L3_2 = g_keyPressed
    L3_2[A2_2] = false
  end
end

L0_1.processKeyEvent = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = g_showLevelOpenAnimation
  if not L3_2 then
    L3_2 = g_showingChannelOrID
    if not L3_2 then
      L3_2 = menuManager
      L4_2 = L3_2
      L3_2 = L3_2.getRoot
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.getChild
      L5_2 = "channelIntroPopup"
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        goto lbl_31
      end
    end
  end
  L3_2 = isPausePageVisible
  L3_2 = L3_2()
  if not L3_2 then
    if A1_2 == "PRESS" and A2_2 == "S" then
      L3_2 = eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = events
      L6_2 = L6_2.EID_AUDIO_TOGGLED
      L5_2.id = L6_2
      L3_2(L4_2, L5_2)
    end
    return
  end
  ::lbl_31::
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
      L5_2 = startedFromEditor
      if not L5_2 then
        L5_2 = deviceModel
        if L5_2 == "android" then
          L5_2 = adSystem
          if L5_2 then
            L5_2 = adSystem
            L6_2 = L5_2
            L5_2 = L5_2.isExpandableExpanded
            L5_2 = L5_2(L6_2)
            if L5_2 then
              L5_2 = print
              L6_2 = "GameScene: blocking back button on android due to expandable ad"
              L5_2(L6_2)
              return
            end
          end
        end
        L5_2 = getLevelMetadata
        L6_2 = levelName
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.backButtonlevelFolder
        if L5_2 then
          L5_2 = getLevelMetadata
          L6_2 = levelName
          L5_2 = L5_2(L6_2)
          L5_2 = L5_2.backButtonLevelName
          if L5_2 then
            L5_2 = getEpisodeMetadata
            L6_2 = currentFolder
            L5_2 = L5_2(L6_2)
            if L5_2 then
              L6_2 = L5_2.bonusChapter
              if L6_2 then
                L6_2 = SettingsWrapper
                L7_2 = L6_2
                L6_2 = L6_2.setNewBonusLevels
                L8_2 = currentFolder
                L9_2 = 0
                L6_2(L7_2, L8_2, L9_2)
              end
            end
            if L5_2 then
              L6_2 = L5_2.iapChapter
              if L6_2 then
                L6_2 = SettingsWrapper
                L7_2 = L6_2
                L6_2 = L6_2.setNewOpenedLevels
                L8_2 = currentFolder
                L9_2 = 0
                L6_2(L7_2, L8_2, L9_2)
              end
            end
            L6_2 = getNextLevelName
            L7_2 = getLevelMetadata
            L8_2 = levelName
            L7_2 = L7_2(L8_2)
            L7_2 = L7_2.backButtonLevelName
            L6_2 = L6_2(L7_2)
            L7_2 = setLevelFolder
            L8_2 = getLevelMetadata
            L9_2 = levelName
            L8_2 = L8_2(L9_2)
            L8_2 = L8_2.backButtonlevelFolder
            L7_2(L8_2)
            L7_2 = setLevelName
            L8_2 = L6_2
            L7_2(L8_2)
            L7_2 = playAudio
            L8_2 = "ButtonBack"
            L7_2(L8_2)
            L7_2 = eventManager
            L8_2 = L7_2
            L7_2 = L7_2.notify
            L9_2 = {}
            L10_2 = events
            L10_2 = L10_2.EID_CHANGE_SCENE
            L9_2.id = L10_2
            L9_2.target = "GameScene"
            L7_2(L8_2, L9_2)
        end
        else
          L5_2 = isLevelEnded
          L5_2 = L5_2()
          if L5_2 then
            L5_2 = menuManager
            L6_2 = L5_2
            L5_2 = L5_2.getRoot
            L5_2 = L5_2(L6_2)
            L6_2 = L5_2
            L5_2 = L5_2.getChild
            L7_2 = "LevelEnd"
            L5_2 = L5_2(L6_2, L7_2)
            L5_2 = L5_2.hideBackToMenuButton
            if not L5_2 then
              L5_2 = returnToLevelSelection
              L5_2()
              L5_2 = playAudio
              L6_2 = "ButtonBack"
              L5_2(L6_2)
            end
          else
            L5_2 = ui
            L5_2 = L5_2.CharacterMenuShop
            L5_2 = L5_2.isShown
            if L5_2 then
              L5_2 = ui
              L5_2 = L5_2.CharacterMenuShop
              L6_2 = L5_2
              L5_2 = L5_2.close
              L5_2(L6_2)
            else
              L5_2 = togglePausePage
              L5_2()
              L5_2 = levelName
              if L5_2 ~= "MainMenu" then
                L5_2 = playAudio
                L6_2 = "ButtonBack"
                L5_2(L6_2)
              end
            end
          end
        end
    end
    else
      if A2_2 == "P" then
        L5_2 = isLevelEnded
        L5_2 = L5_2()
        if not L5_2 then
          L5_2 = isInGameMode
          L5_2 = L5_2()
          if L5_2 then
            L5_2 = togglePausePage
            L5_2()
        end
      end
      else
        if A2_2 == "R" then
          L5_2 = isInGameMode
          L5_2 = L5_2()
          if L5_2 then
            L5_2 = isLevelEnded
            L5_2 = L5_2()
            if L5_2 then
              L5_2 = menuManager
              L6_2 = L5_2
              L5_2 = L5_2.getRoot
              L5_2 = L5_2(L6_2)
              L6_2 = L5_2
              L5_2 = L5_2.getChild
              L7_2 = "LevelEnd"
              L5_2 = L5_2(L6_2, L7_2)
              L5_2 = L5_2.hideBackToMenuButton
              if not L5_2 then
                L5_2 = setLevelLoadingAfterRestartFromPauseMenu
                L5_2()
              end
            else
              L5_2 = playAudio
              L6_2 = "ButtonProceed"
              L5_2(L6_2)
              L5_2 = eventManager
              L6_2 = L5_2
              L5_2 = L5_2.notify
              L7_2 = {}
              L8_2 = events
              L8_2 = L8_2.EID_LEVEL_STARTED_FROM_PAGE
              L7_2.id = L8_2
              L7_2.from = "Pause"
              L5_2(L6_2, L7_2)
              L6_2 = A0_2
              L5_2 = A0_2.triggerRestart
              L5_2(L6_2)
            end
        end
        else
          if A2_2 == "C" then
            L5_2 = isInGameMode
            L5_2 = L5_2()
            if L5_2 then
              L5_2 = cheatsEnabled
              if L5_2 then
                L5_2 = true
                g_threeStarsCheat = L5_2
            end
          end
          else
            if A2_2 == "A" then
              L5_2 = cheatsEnabled
              if L5_2 then
                L6_2 = A0_2
                L5_2 = A0_2.relaunchBird
                L5_2(L6_2)
            end
            else
              if A2_2 == "PAGEUP" then
                L5_2 = isInGameMode
                L5_2 = L5_2()
                if L5_2 then
                  L5_2 = cheatsEnabled
                  if L5_2 then
                    L5_2 = setPreviousLevel
                    L5_2()
                end
              end
              else
                if A2_2 == "PAGEDOWN" then
                  L5_2 = isInGameMode
                  L5_2 = L5_2()
                  if L5_2 then
                    L5_2 = cheatsEnabled
                    if L5_2 then
                      L5_2 = setNextLevel
                      L5_2()
                  end
                end
                else
                  if A2_2 == "G" then
                    L5_2 = isInGameMode
                    L5_2 = L5_2()
                    if L5_2 then
                      L5_2 = cheatsEnabled
                      if L5_2 then
                        L5_2 = 0.1
                        levelCompleteTimer = L5_2
                    end
                  end
                  elseif A2_2 == "S" then
                    L5_2 = eventManager
                    L6_2 = L5_2
                    L5_2 = L5_2.notify
                    L7_2 = {}
                    L8_2 = events
                    L8_2 = L8_2.EID_AUDIO_TOGGLED
                    L7_2.id = L8_2
                    L5_2(L6_2, L7_2)
                  elseif A2_2 == "LEFT" then
                    L5_2 = updatePCCameraPanningToDirection
                    L6_2 = false
                    L5_2(L6_2)
                  elseif A2_2 == "RIGHT" then
                    L5_2 = updatePCCameraPanningToDirection
                    L6_2 = true
                    L5_2(L6_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if L3_2 == "TUTORIAL_SCREEN_CLOSED" then
    L5_2 = _G
    L5_2 = L5_2.res
    L5_2 = L5_2.isAudioPlaying
    L6_2 = "tutorial_music"
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = _G
      L5_2 = L5_2.res
      L5_2 = L5_2.stopAudio
      L6_2 = "tutorial_music"
      L5_2(L6_2)
    end
    L6_2 = A0_2
    L5_2 = A0_2.checkForShowTutorial
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  if L3_2 then
    L6_2 = A0_2
    L5_2 = A0_2.processKeyEvent
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end

L0_1.onKeyEvent = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = objects
  L1_2 = L1_2.world
  L2_2 = currentBirdName
  L1_2 = L1_2[L2_2]
  selectedBirdTemp = L1_2
  L1_2 = selectedBirdTemp
  if L1_2 then
    L1_2 = g_savedBirdShotData
    if L1_2 then
      L1_2 = selectedBirdTemp
      L1_2 = L1_2.definition
      if L1_2 ~= "SandboxBirdLight" then
        L1_2 = selectedBirdTemp
        L1_2 = L1_2.definition
        if L1_2 ~= "SandboxBirdDark" then
          goto lbl_21
        end
      end
    end
  end
  do return end
  ::lbl_21::
  L1_2 = selectedBirdTemp
  selectedBird = L1_2
  L1_2 = true
  g_firstBirdShot = L1_2
  L1_2 = g_aimingAidCursor
  L2_2 = {}
  L1_2.cursorToUse = L2_2
  L1_2 = g_aimingAidCursor
  L1_2 = L1_2.cursorToUse
  L2_2 = g_savedBirdShotData
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L1_2 = g_aimingAidCursor
  L1_2 = L1_2.cursorToUse
  L2_2 = g_savedBirdShotData
  L2_2 = L2_2.y
  L1_2.y = L2_2
  L1_2 = applyForceToSelectedBird
  L2_2 = selectedBird
  L1_2(L2_2)
  L1_2 = 0
  flightTime = L1_2
  L1_2 = setCameraTargetObject
  L2_2 = selectedBird
  L1_2(L2_2)
  L1_2 = storeCameraPosition
  L1_2()
  L1_2 = selectedBird
  flyingBird = L1_2
  L1_2 = selectedBird
  L1_2 = L1_2.definition
  birdTypeCollectingScore = L1_2
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.setCameraFunction
  L3_2 = "ingameCamera"
  L1_2(L2_2, L3_2)
  L1_2 = gameCamera
  L2_2 = L1_2
  L1_2 = L1_2.resetControlFlags
  L1_2(L2_2)
  L1_2 = selectedBird
  L1_2.shot = true
  L1_2 = true
  birdSpecialtyAvailable = L1_2
  L1_2 = false
  birdSpecialtyUsed = L1_2
  L1_2 = true
  allowResetToBirdCamera = L1_2
  L1_2 = true
  allowTrajectoryClearing = L1_2
  L1_2 = true
  hasMovingObjectsZeroTolerance = L1_2
  L1_2 = false
  birdSelected = L1_2
  L1_2 = false
  birdReady = L1_2
  L1_2 = true
  birdFired = L1_2
  L1_2 = birdsShot
  L1_2 = L1_2 + 1
  birdsShot = L1_2
  L1_2 = g_defaultCameraResetTime
  cameraResetTimer = L1_2
  L1_2 = 1
  nextBirdTimer = L1_2
  L1_2 = nil
  currentBirdName = L1_2
  L1_2 = {}
  otherBirds = L1_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  birdTrajectory = L1_2
  L1_2 = getObjectDefinition
  L2_2 = flyingBird
  L2_2 = L2_2.name
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.sprites
  if L1_2 ~= nil then
    L1_2 = flyingBird
    L2_2 = getObjectDefinition
    L3_2 = flyingBird
    L3_2 = L3_2.name
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.sprites
    L2_2 = L2_2.flying
    L1_2.sprite = L2_2
    L1_2 = setSprite
    L2_2 = flyingBird
    L2_2 = L2_2.name
    L3_2 = flyingBird
    L3_2 = L3_2.sprite
    L1_2(L2_2, L3_2)
  end
  L1_2 = getObjectDefinition
  L2_2 = flyingBird
  L2_2 = L2_2.name
  L1_2 = L1_2(L2_2)
  L2_2 = actions
  L2_2 = L2_2.handleStateChange
  L3_2 = flyingBird
  L3_2 = L3_2.name
  L4_2 = L1_2.states
  if L4_2 then
    L4_2 = L1_2.states
    L4_2 = L4_2.flying
  end
  L2_2(L3_2, L4_2)
  L2_2 = getObjectDefinition
  L3_2 = selectedBird
  L3_2 = L3_2.name
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.sounds
  if L2_2 ~= nil then
    L2_2 = getObjectDefinition
    L3_2 = selectedBird
    L3_2 = L3_2.name
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.sounds
    L2_2 = L2_2.launch
    if L2_2 ~= nil then
      L2_2 = res
      L2_2 = L2_2.playAudio
      L3_2 = "bird_shot"
      L2_2(L3_2)
      L2_2 = res
      L2_2 = L2_2.playAudio
      L3_2 = getObjectDefinition
      L4_2 = selectedBird
      L4_2 = L4_2.name
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.sounds
      L3_2 = L3_2.launch
      L2_2(L3_2)
    end
  end
  L2_2 = nil
  selectedBird = L2_2
  L2_2 = objects
  L2_2 = L2_2.world
  L3_2 = flyingBird
  L3_2 = L3_2.name
  L2_2 = L2_2[L3_2]
  L2_2.didDamage = false
  L2_2 = blockTable
  L2_2 = L2_2.blocks
  L3_2 = flyingBird
  L3_2 = L3_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = setNormalTrailSprite
  L4_2 = L2_2.normalTrailSprite
  L3_2(L4_2)
  L3_2 = setSpecialTrailSprite
  L4_2 = L2_2.specialTrailSprite
  L3_2(L4_2)
  L3_2 = g_usingGestureControls
  if L3_2 then
    L3_2 = birdSpecialtyTargetable
    L4_2 = flyingBird
    L4_2 = L4_2.name
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = true
      g_laserGestureMode = L3_2
      L3_2 = laser_cursor
      L4_2 = laser_cursor
      L5_2 = screenWidth
      L5_2 = L5_2 * 0.5
      L6_2 = screenHeight
      L6_2 = L6_2 * 0.5
      L4_2.y = L6_2
      L3_2.x = L5_2
    end
  end
end

L0_1.relaunchBird = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = stopAudioByFilter
  L2_2 = audioFilters
  L2_2 = L2_2.menuFilters
  L1_2(L2_2)
  L1_2 = setLevelLoadingAfterRestartFromPauseMenu
  L1_2()
  L1_2 = levelCompleted
  if not L1_2 then
    L1_2 = levelFailed
    if not L1_2 then
      L1_2 = checkLevelRestartAchievement
      L1_2()
    end
  end
  L1_2 = queuedLocale
  if L1_2 then
    L1_2 = eventManager
    L2_2 = L1_2
    L1_2 = L1_2.queueEvent
    L3_2 = {}
    L4_2 = events
    L4_2 = L4_2.EID_CHANGE_LOCALE
    L3_2.id = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = ui
  L1_2 = L1_2.CharacterMenuShop
  L1_2 = L1_2.isShown
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.CharacterMenuShop
    L1_2.isShown = false
  end
end

L0_1.triggerRestart = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = false
  g_refusedDragTargetting = L4_2
  if A2_2 == "REFUSED_DRAG_TARGETTING" then
    L4_2 = true
    g_refusedDragTargetting = L4_2
    A1_2 = nil
    A2_2 = nil
    L4_2 = nil
    object = L4_2
  end
  if A1_2 ~= nil then
    L4_2 = {}
    L4_2.LBUTTON = false
    L4_2.RBUTTON = false
    g_keyPressed = L4_2
    L4_2 = {}
    L4_2.LBUTTON = false
    L4_2.RBUTTON = false
    g_keyReleased = L4_2
    L4_2 = {}
    L4_2.LBUTTON = false
    L4_2.RBUTTON = false
    g_keyHold = L4_2
  end
  currentEvent = A1_2
  L4_2 = currentEvent
  if L4_2 == nil and A3_2 ~= "HOVER" then
    L4_2 = prevEvent
    if L4_2 == "BLOCK_EVENT" then
      L4_2 = {}
      L4_2.LBUTTON = true
      g_keyPressed = L4_2
    end
  end
  L4_2 = currentEvent
  prevEvent = L4_2
end

L0_1.processPointerEvent = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L4_2 = g_showLevelOpenAnimation
  if L4_2 then
    return
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.processPointerEvent
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = A1_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.physicsObject
    if L7_2 ~= nil then
      L7_2 = blockTable
      L7_2 = L7_2.blocks
      L8_2 = L6_2.physicsObject
      L8_2 = L8_2.definition
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.FREE_VERSION_URL
      if L7_2 then
        if L7_2 == "OPEN_UPSELL_POPUP" then
          L8_2 = eventManager
          L9_2 = L8_2
          L8_2 = L8_2.notify
          L10_2 = {}
          L11_2 = events
          L11_2 = L11_2.EID_OPEN_BUY_FREE_IOS_VERSION_POPUP
          L10_2.id = L11_2
          L8_2(L9_2, L10_2)
        end
      else
        L8_2 = blockTable
        L8_2 = L8_2.blocks
        L9_2 = L6_2.physicsObject
        L9_2 = L9_2.definition
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.URL
        L9_2 = blockTable
        L9_2 = L9_2.blocks
        L10_2 = L6_2.physicsObject
        L10_2 = L10_2.definition
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.TEXT_ID
        L10_2 = blockTable
        L10_2 = L10_2.blocks
        L11_2 = L6_2.physicsObject
        L11_2 = L11_2.definition
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.ICON
        L11_2 = L8_2
        if L8_2 ~= nil and L4_2 ~= "LEFT_CLICKED" and L4_2 ~= "RIGHT_CLICKED" then
          L12_2 = false
          if L8_2 == "ALEX_URL" then
            L8_2 = ALEX_URL
          elseif L8_2 == "RENREN_URL" then
            L8_2 = RENREN_URL
          elseif L8_2 == "NASA_URL" then
            L8_2 = NASA_URL
          elseif L8_2 == "TWITTER_URL" then
            L8_2 = TWITTER_URL
          elseif L8_2 == "FACEBOOK_URL" then
            L8_2 = FACEBOOK_URL
          elseif L8_2 == "WEIBO_URL" then
            L8_2 = WEIBO_URL
          elseif L8_2 == "QZONE_URL" then
            L8_2 = QZONE_URL
          elseif L8_2 == "TENCENT_URL" then
            L8_2 = TENCENT_URL
          elseif L8_2 == "EULA_URL" then
            L8_2 = EULA_URL
            L12_2 = true
          elseif L8_2 == "PRIVACY_POLICY_URL" then
            L8_2 = PRIVACY_POLICY_URL
            L12_2 = true
          end
          L13_2 = openURL
          L14_2 = L8_2
          L15_2 = L9_2
          L16_2 = L10_2
          L17_2 = L12_2
          L18_2 = L11_2
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        end
      end
    end
  end
  if L4_2 == "GOTO_LEVEL" or L4_2 == "GOTO_EPISODE_LIGHT" or L4_2 == "GOTO_EPISODE_DARK" then
    L7_2 = L6_2.disabled
    if not L7_2 then
      L7_2 = L6_2.isEpisodeDisabledByDevice
    end
    L8_2 = L6_2.physicsObject
    if not L8_2 then
      L8_2 = L6_2.parentPhysicsObject
    end
    L9_2 = objects
    L9_2 = L9_2.world
    L10_2 = L8_2.name
    L9_2 = L9_2[L10_2]
    if L4_2 == "GOTO_LEVEL" then
      L10_2 = L6_2.lockedByTimer
      if L10_2 then
        L11_2 = A0_2
        L10_2 = A0_2.showLevelTimerNotification
        L12_2 = L6_2.lockedByTimerDuration
        L13_2 = L6_2.isLockedByTimerTextVisible
        L10_2(L11_2, L12_2, L13_2)
    end
    else
      if L9_2 == nil or L7_2 == true then
        L10_2 = alwaysAllowGotoLevel
        if L10_2 ~= true then
          goto lbl_348
        end
      end
      L10_2 = {}
      L11_2 = L8_2.startNumber
      L10_2.startNumber = L11_2
      L11_2 = L8_2.episodeType
      L10_2.episodeType = L11_2
      L11_2 = gameCamera
      L12_2 = L11_2
      L11_2 = L11_2.getCurrentCameraIndex
      L11_2 = L11_2(L12_2)
      L10_2.cameraIndex = L11_2
      L11_2 = L9_2.episodeSelection
      if L11_2 and L4_2 == "GOTO_EPISODE_LIGHT" or L4_2 == "GOTO_EPISODE_DARK" then
        L11_2 = -1
        L12_2 = actions
        L12_2 = L12_2.myLevelFolders
        L13_2 = actions
        L13_2 = L13_2.episodeTypeTable
        L14_2 = L10_2.episodeType
        L13_2 = L13_2[L14_2]
        L12_2 = L12_2[L13_2]
        L13_2 = L10_2.startNumber
        L12_2 = L12_2[L13_2]
        L13_2 = actions
        L13_2 = L13_2.myLevelFolders
        L14_2 = actions
        L14_2 = L14_2.episodeTypeTable
        L15_2 = L10_2.episodeType
        L14_2 = L14_2[L15_2]
        L13_2 = L13_2[L14_2]
        L14_2 = L10_2.startNumber
        L14_2 = L14_2 + 1
        L13_2 = L13_2[L14_2]
        if L4_2 == "GOTO_EPISODE_DARK" then
          L14_2 = L10_2.startNumber
          L14_2 = L14_2 + 1
          L10_2.startNumber = L14_2
        end
        L14_2 = L10_2.startNumber
        if L14_2 ~= nil then
          L14_2 = actions
          L14_2 = L14_2.myLevelFolders
          L15_2 = actions
          L15_2 = L15_2.episodeTypeTable
          L16_2 = L10_2.episodeType
          L15_2 = L15_2[L16_2]
          L14_2 = L14_2[L15_2]
          L15_2 = L10_2.startNumber
          L11_2 = L14_2[L15_2]
        end
        L14_2 = SettingsWrapper
        L15_2 = L14_2
        L14_2 = L14_2.isEpisodeStarted
        L16_2 = L11_2
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          L14_2 = releaseBuild
          if L14_2 then
            L14_2 = getEpisodeMetadata
            L15_2 = L11_2
            L14_2 = L14_2(L15_2)
            L14_2 = L14_2.unlockedAsDefault
            if not L14_2 then
              goto lbl_247
            end
          end
        end
        L14_2 = eventManager
        L15_2 = L14_2
        L14_2 = L14_2.notify
        L16_2 = {}
        L17_2 = events
        L17_2 = L17_2.EID_GOTO_EPISODE_CLICKED
        L16_2.id = L17_2
        L16_2.episode = L11_2
        L14_2(L15_2, L16_2)
        L14_2 = SettingsWrapper
        L15_2 = L14_2
        L14_2 = L14_2.startEpisode
        L16_2 = L11_2
        L14_2(L15_2, L16_2)
        L14_2 = gotoLevelSelectionMenu
        L15_2 = L10_2
        L14_2 = L14_2(L15_2)
        if L14_2 then
          if L4_2 == "GOTO_EPISODE_DARK" then
            L14_2 = SettingsWrapper
            L15_2 = L14_2
            L14_2 = L14_2.setIsDarkSide
            L16_2 = true
            L14_2(L15_2, L16_2)
          else
            L14_2 = SettingsWrapper
            L15_2 = L14_2
            L14_2 = L14_2.setIsDarkSide
            L16_2 = false
            L14_2(L15_2, L16_2)
            goto lbl_278
            ::lbl_247::
            L14_2 = eventManager
            L15_2 = L14_2
            L14_2 = L14_2.notify
            L16_2 = {}
            L17_2 = events
            L17_2 = L17_2.EID_PUSH_FRAME
            L16_2.id = L17_2
            L17_2 = ui
            L17_2 = L17_2.EpicSelection
            L18_2 = L17_2
            L17_2 = L17_2.new
            L19_2 = {}
            L19_2.name = "EpicSelection"
            if L4_2 == "GOTO_EPISODE_LIGHT" then
              L20_2 = "LIGHT"
              if L20_2 then
                goto lbl_264
              end
            end
            L20_2 = "SITH"
            ::lbl_264::
            L19_2.enteredSide = L20_2
            
            function L20_2()
              local L0_3, L1_3, L2_3, L3_3
              L0_3 = SettingsWrapper
              L1_3 = L0_3
              L0_3 = L0_3.setIsDarkSide
              L2_3 = false
              L0_3(L1_3, L2_3)
              L0_3 = eventManager
              L1_3 = L0_3
              L0_3 = L0_3.notify
              L2_3 = {}
              L3_3 = events
              L3_3 = L3_3.EID_GOTO_EPISODE_CLICKED
              L2_3.id = L3_3
              L3_3 = L12_2
              L2_3.episode = L3_3
              L0_3(L1_3, L2_3)
              L0_3 = SettingsWrapper
              L1_3 = L0_3
              L0_3 = L0_3.startEpisode
              L2_3 = L12_2
              L0_3(L1_3, L2_3)
              L0_3 = L10_2
              L1_3 = getEpisodeNumberWithType
              L2_3 = L10_2
              L2_3 = L2_3.episodeType
              L3_3 = L12_2
              L1_3 = L1_3(L2_3, L3_3)
              L0_3.startNumber = L1_3
              L0_3 = gotoLevelSelectionMenu
              L1_3 = L10_2
              L0_3(L1_3)
            end
            
            L19_2.selectLightSide = L20_2
            
            function L20_2()
              local L0_3, L1_3, L2_3, L3_3
              L0_3 = SettingsWrapper
              L1_3 = L0_3
              L0_3 = L0_3.setIsDarkSide
              L2_3 = true
              L0_3(L1_3, L2_3)
              L0_3 = eventManager
              L1_3 = L0_3
              L0_3 = L0_3.notify
              L2_3 = {}
              L3_3 = events
              L3_3 = L3_3.EID_GOTO_EPISODE_CLICKED
              L2_3.id = L3_3
              L3_3 = L13_2
              L2_3.episode = L3_3
              L0_3(L1_3, L2_3)
              L0_3 = SettingsWrapper
              L1_3 = L0_3
              L0_3 = L0_3.startEpisode
              L2_3 = L13_2
              L0_3(L1_3, L2_3)
              L0_3 = L10_2
              L1_3 = getEpisodeNumberWithType
              L2_3 = L10_2
              L2_3 = L2_3.episodeType
              L3_3 = L13_2
              L1_3 = L1_3(L2_3, L3_3)
              L0_3.startNumber = L1_3
              L0_3 = gotoLevelSelectionMenu
              L1_3 = L10_2
              L0_3(L1_3)
            end
            
            L19_2.selectDarkSide = L20_2
            L20_2 = inMenuSpace
            L19_2.inMenuSpace = L20_2
            L17_2 = L17_2(L18_2, L19_2)
            L16_2.target = L17_2
            L14_2(L15_2, L16_2)
          end
        end
        ::lbl_278::
      elseif L4_2 == "GOTO_LEVEL" then
        L11_2 = getEpisodeMetadata
        L12_2 = currentFolder
        L11_2 = L11_2(L12_2)
        L11_2 = L11_2.levelsAvailableInFree
        L12_2 = g_isRegistered
        if not L12_2 then
          if not L11_2 then
            goto lbl_335
          end
          L12_2 = L10_2.startNumber
          if not (L11_2 >= L12_2) then
            goto lbl_335
          end
        end
        L12_2 = isValidShopPromoLevel
        L13_2 = L10_2.startNumber
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = eventManager
          L13_2 = L12_2
          L12_2 = L12_2.notify
          L14_2 = {}
          L15_2 = events
          L15_2 = L15_2.EID_SHOP_SHOW_PROMO_POPUP
          L14_2.id = L15_2
          L15_2 = L10_2.startNumber
          L14_2.levelNumber = L15_2
          
          function L15_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.initializeTransition
            L0_3(L1_3)
            L0_3 = addEventCall
            L1_3 = "loadLevelFromMenu"
            L2_3 = L10_2
            L3_3 = 0.1
            L0_3(L1_3, L2_3, L3_3)
            L0_3 = eventManager
            L1_3 = L0_3
            L0_3 = L0_3.notify
            L2_3 = {}
            L3_3 = events
            L3_3 = L3_3.EID_LEVEL_STARTED_FROM_PAGE
            L2_3.id = L3_3
            L2_3.from = "Level Selection"
            L0_3(L1_3, L2_3)
            L0_3 = 99
            g_showLevelOpenAnimation = L0_3
            L0_3 = false
            g_showLevelOpenAnimationFromAlternativeRoute = L0_3
            L0_3 = true
            g_levelOpenAnimationComplete = L0_3
          end
          
          L14_2.continue_call = L15_2
          L12_2(L13_2, L14_2)
        else
          L13_2 = A0_2
          L12_2 = A0_2.initializeTransition
          L12_2(L13_2)
          L12_2 = addEventCall
          L13_2 = "loadLevelFromMenu"
          L14_2 = L10_2
          L15_2 = 0.1
          L12_2(L13_2, L14_2, L15_2)
          L12_2 = eventManager
          L13_2 = L12_2
          L12_2 = L12_2.notify
          L14_2 = {}
          L15_2 = events
          L15_2 = L15_2.EID_LEVEL_STARTED_FROM_PAGE
          L14_2.id = L15_2
          L14_2.from = "Level Selection"
          L12_2(L13_2, L14_2)
          L12_2 = 99
          g_showLevelOpenAnimation = L12_2
          L12_2 = false
          g_showLevelOpenAnimationFromAlternativeRoute = L12_2
          L12_2 = true
          g_levelOpenAnimationComplete = L12_2
          goto lbl_346
          ::lbl_335::
          L12_2 = eventManager
          L13_2 = L12_2
          L12_2 = L12_2.notify
          L14_2 = {}
          L15_2 = events
          L15_2 = L15_2.EID_SHOW_REGISTRATION_DIALOG
          L14_2.id = L15_2
          
          function L15_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.initializeTransition
            L0_3(L1_3)
            L0_3 = fireAction
            L1_3 = "loadLevelFromMenu"
            L2_3 = L10_2
            L3_3 = 0.1
            L0_3(L1_3, L2_3, L3_3)
          end
          
          L14_2.success_call = L15_2
          L12_2(L13_2, L14_2)
        end
      end
      ::lbl_346::
      goto lbl_447
      ::lbl_348::
      if L4_2 == "GOTO_LEVEL" and L7_2 then
        L10_2 = actions
        L10_2 = L10_2.myLevels
        L11_2 = currentFolder
        L10_2 = L10_2[L11_2]
        L11_2 = L8_2.startNumber
        L10_2 = L10_2[L11_2]
        L11_2 = {}
        L12_2 = L8_2.startNumber
        L11_2.startNumber = L12_2
        L12_2 = L8_2.episodeType
        L11_2.episodeType = L12_2
        L12_2 = gameCamera
        L13_2 = L12_2
        L12_2 = L12_2.getCurrentCameraIndex
        L12_2 = L12_2(L13_2)
        L11_2.cameraIndex = L12_2
        L12_2 = getLevelMetadata
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L13_2 = getEpisodeMetadata
        L14_2 = currentFolder
        L13_2 = L13_2(L14_2)
        L13_2 = L13_2.levelsAvailableInFree
        L14_2 = g_isRegistered
        if not L14_2 then
          if not L13_2 then
            goto lbl_401
          end
          L14_2 = L11_2.startNumber
          if not (L13_2 >= L14_2) then
            goto lbl_401
          end
        end
        if L12_2 then
          L14_2 = L12_2.type
          if L14_2 == "comic" then
            goto lbl_413
          end
          L14_2 = L12_2.isAlternativePathLevel
          if L14_2 then
            goto lbl_413
          end
        end
        L14_2 = getPriceForLevel
        L15_2 = L8_2
        L16_2 = L10_2
        L14_2, L15_2 = L14_2(L15_2, L16_2)
        L17_2 = A0_2
        L16_2 = A0_2.showLevelPurchase
        L18_2 = L10_2
        L19_2 = L8_2
        L20_2 = L14_2
        L21_2 = L15_2
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
        goto lbl_413
        ::lbl_401::
        L14_2 = eventManager
        L15_2 = L14_2
        L14_2 = L14_2.notify
        L16_2 = {}
        L17_2 = events
        L17_2 = L17_2.EID_SHOW_REGISTRATION_DIALOG
        L16_2.id = L17_2
        
        function L17_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
          L0_3 = getPriceForLevel
          L1_3 = L8_2
          L2_3 = L10_2
          L0_3, L1_3 = L0_3(L1_3, L2_3)
          L2_3 = A0_2
          L3_3 = L2_3
          L2_3 = L2_3.showLevelPurchase
          L4_3 = L10_2
          L5_3 = L8_2
          L6_3 = L0_3
          L7_3 = L1_3
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
        end
        
        L16_2.success_call = L17_2
        L14_2(L15_2, L16_2)
        ::lbl_413::
      else
        L10_2 = L6_2.showPurchaseEpisodeDialog
        if L10_2 then
          L10_2 = isBuildUnlocked
          L10_2 = L10_2()
          if L10_2 ~= true then
            L10_2 = ui
            L10_2 = L10_2.Shop
            L11_2 = L10_2
            L10_2 = L10_2.new
            L12_2 = {}
            L12_2.name = "shop"
            L10_2 = L10_2(L11_2, L12_2)
            L11_2 = eventManager
            L12_2 = L11_2
            L11_2 = L11_2.notify
            L13_2 = {}
            L14_2 = events
            L14_2 = L14_2.EID_PUSH_FRAME
            L13_2.id = L14_2
            L13_2.target = L10_2
            L11_2(L12_2, L13_2)
            L11_2 = ui
            L11_2 = L11_2.Shop
            L11_2 = L11_2.getDataById
            L12_2 = getEpisodeMetadataWithParam
            L13_2 = currentFolder
            L14_2 = "iapPurchaseId"
            L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2, L14_2)
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L13_2 = L10_2
            L12_2 = L10_2.scrollToShortCut
            L14_2 = "EPISODE"
            L12_2(L13_2, L14_2)
          end
        end
      end
    end
    ::lbl_447::
  elseif L4_2 == "GOTO_LOCKED_ACHIEVEMENT" then
    L7_2 = ui
    L7_2 = L7_2.QuestPage
    L8_2 = L7_2
    L7_2 = L7_2.new
    L7_2 = L7_2(L8_2)
    L8_2 = eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = getQuest
    L9_2 = L6_2.bonusLevelAchievement
    L8_2 = L8_2(L9_2)
    L10_2 = L7_2
    L9_2 = L7_2.goToCharacterQuest
    L11_2 = L8_2.questParameter
    L9_2(L10_2, L11_2)
  elseif L4_2 == "SHOW_ALTERNATIVE_ROUTE_POPUP" then
    L7_2 = ui
    L7_2 = L7_2.Image
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "title"
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.setImage
    L10_2 = "TREASURE_MAP_ICON"
    L8_2(L9_2, L10_2)
    L8_2 = ui
    L8_2 = L8_2.ConfirmPrompt
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.title = L7_2
    L11_2 = getText
    L12_2 = "TEXT_LEVEL_ALTERNATIVE_LOCKED"
    L11_2 = L11_2(L12_2)
    L10_2.content = L11_2
    
    function L11_2()
      local L0_3, L1_3
    end
    
    L10_2.returnValue = L11_2
    L10_2.inMenuSpace = false
    L10_2.hideCloseButton = true
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = eventManager
    L10_2 = L9_2
    L9_2 = L9_2.notify
    L11_2 = {}
    L12_2 = events
    L12_2 = L12_2.EID_PUSH_FRAME
    L11_2.id = L12_2
    L11_2.target = L8_2
    L9_2(L10_2, L11_2)
  elseif L4_2 == "EPISODE_SIDE_NOT_OPEN" then
    L7_2 = L6_2.missingStars
    if 1000 < L7_2 then
      L7_2 = L6_2.physicsObject
      if not L7_2 then
        L7_2 = L6_2.parentPhysicsObject
      end
      L8_2 = getPriceForEpisode
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = L7_2.startNumber
      L10_2 = L7_2.episodeType
      L11_2 = SettingsWrapper
      L12_2 = L11_2
      L11_2 = L11_2.getAmount
      L13_2 = "coins"
      L11_2 = L11_2(L12_2, L13_2)
      L11_2 = L8_2 <= L11_2
      L12_2 = g_isRegistered
      if not L12_2 then
        L12_2 = eventManager
        L13_2 = L12_2
        L12_2 = L12_2.notify
        L14_2 = {}
        L15_2 = events
        L15_2 = L15_2.EID_SHOW_REGISTRATION_DIALOG
        L14_2.id = L15_2
        L12_2(L13_2, L14_2)
      elseif L11_2 then
        L13_2 = A0_2
        L12_2 = A0_2.showEpicSelectionWithPurchaseOption
        L14_2 = L9_2
        L15_2 = L10_2
        L16_2 = L8_2
        L12_2(L13_2, L14_2, L15_2, L16_2)
      else
        L13_2 = A0_2
        L12_2 = A0_2.showPurchaseRedirectDialog
        L14_2 = SettingsWrapper
        L15_2 = L14_2
        L14_2 = L14_2.getAmount
        L16_2 = "coins"
        L14_2 = L14_2(L15_2, L16_2)
        L14_2 = L8_2 - L14_2
        L12_2(L13_2, L14_2)
      end
    else
      L7_2 = L6_2.physicsObject
      if not L7_2 then
        L7_2 = L6_2.parentPhysicsObject
      end
      if not L7_2 then
        L7_2 = L6_2.metaData
      end
      L8_2 = actions
      L8_2 = L8_2.myLevelFolders
      L9_2 = actions
      L9_2 = L9_2.episodeTypeTable
      L10_2 = L7_2.episodeType
      L9_2 = L9_2[L10_2]
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.startNumber
      L8_2 = L8_2[L9_2]
      L9_2 = g_isRegistered
      if not L9_2 and L8_2 ~= "chapter_1_light" then
        L9_2 = eventManager
        L10_2 = L9_2
        L9_2 = L9_2.notify
        L11_2 = {}
        L12_2 = events
        L12_2 = L12_2.EID_SHOW_REGISTRATION_DIALOG
        L11_2.id = L12_2
        L9_2(L10_2, L11_2)
        return
      end
      L9_2 = nil
      if L5_2 == "DARK" then
        L9_2 = "LIGHT"
      else
        L9_2 = "DARK"
      end
      L10_2 = getPriceForHalfEpisode
      L11_2 = L7_2
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L12_2 = A0_2
      L11_2 = A0_2.showHalfEpisodePurchase
      L13_2 = L6_2
      L14_2 = L5_2
      L15_2 = L10_2
      L11_2(L12_2, L13_2, L14_2, L15_2)
    end
  elseif L4_2 == "LS_EPISODE_SIDE_NOT_OPEN" then
    L7_2 = nil
    L8_2 = L6_2.missingStars
    if 1000 < L8_2 then
      L8_2 = ui
      L8_2 = L8_2.ConfirmPrompt
      L9_2 = L8_2
      L8_2 = L8_2.new
      L10_2 = {}
      L11_2 = getText
      L12_2 = "TEXT_CHAPTER_LOCKED_TITLE"
      L11_2 = L11_2(L12_2)
      L10_2.title = L11_2
      L11_2 = getText
      L12_2 = "TEXT_CHAPTER_LOCKED_CONTENT"
      L11_2 = L11_2(L12_2)
      L10_2.content = L11_2
      
      function L11_2()
        local L0_3, L1_3
      end
      
      L10_2.returnValue = L11_2
      L10_2.inMenuSpace = true
      L10_2.hideCloseButton = true
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L8_2
      L8_2 = eventManager
      L9_2 = L8_2
      L8_2 = L8_2.notify
      L10_2 = {}
      L11_2 = events
      L11_2 = L11_2.EID_PUSH_FRAME
      L10_2.id = L11_2
      L10_2.target = L7_2
      L8_2(L9_2, L10_2)
    else
      L8_2 = nil
      L9_2 = SettingsWrapper
      L10_2 = L9_2
      L9_2 = L9_2.isDarkSide
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L8_2 = "DARK"
      else
        L8_2 = "LIGHT"
      end
      L9_2 = getPriceForHalfEpisode
      L10_2 = L6_2.metaData
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = "DARK"
      L11_2 = SettingsWrapper
      L12_2 = L11_2
      L11_2 = L11_2.isDarkSide
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L10_2 = "LIGHT"
      end
      L12_2 = A0_2
      L11_2 = A0_2.showHalfEpisodePurchase
      L13_2 = L6_2
      L14_2 = L10_2
      L15_2 = L9_2
      L11_2(L12_2, L13_2, L14_2, L15_2)
    end
  elseif L4_2 == "REWARD_CHAPTER_NOT_OPEN" then
    L7_2 = ui
    L7_2 = L7_2.ConfirmPrompt
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L10_2 = getText
    L11_2 = "TEXT_CHAPTER_LOCKED_TITLE"
    L10_2 = L10_2(L11_2)
    L9_2.title = L10_2
    L10_2 = getText
    L11_2 = "TEXT_REWARD_CHAPTER_LOCKED"
    L10_2 = L10_2(L11_2)
    L9_2.content = L10_2
    
    function L10_2()
      local L0_3, L1_3
    end
    
    L9_2.returnValue = L10_2
    L9_2.inMenuSpace = true
    L9_2.hideCloseButton = true
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
  elseif L4_2 == "GOTO_EPISODE_SELECTION" then
    L7_2 = gotoMenuLevel
    L8_2 = getEpisodeSelectionLevelName
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  elseif L4_2 == "TUTORIAL_SCREEN_CLICKED" then
    L7_2 = _G
    L7_2 = L7_2.res
    L7_2 = L7_2.isAudioPlaying
    L8_2 = "tutorial_music"
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = _G
      L7_2 = L7_2.res
      L7_2 = L7_2.stopAudio
      L8_2 = "tutorial_music"
      L7_2(L8_2)
    end
    L8_2 = A0_2
    L7_2 = A0_2.checkForShowTutorial
    L9_2 = true
    L7_2(L8_2, L9_2)
  elseif L4_2 == "PAUSE_CLICKED" then
    L7_2 = getLevelMetadata
    L8_2 = levelName
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.backButtonlevelFolder
    if L7_2 then
      L7_2 = getLevelMetadata
      L8_2 = levelName
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.backButtonLevelName
      if L7_2 then
        L7_2 = getEpisodeMetadata
        L8_2 = currentFolder
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L8_2 = L7_2.bonusChapter
          if L8_2 then
            L8_2 = SettingsWrapper
            L9_2 = L8_2
            L8_2 = L8_2.setNewBonusLevels
            L10_2 = currentFolder
            L11_2 = 0
            L8_2(L9_2, L10_2, L11_2)
          end
        end
        if L7_2 then
          L8_2 = L7_2.iapChapter
          if L8_2 then
            L8_2 = SettingsWrapper
            L9_2 = L8_2
            L8_2 = L8_2.setNewOpenedLevels
            L10_2 = currentFolder
            L11_2 = 0
            L8_2(L9_2, L10_2, L11_2)
          end
        end
        L8_2 = getNextLevelName
        L9_2 = getLevelMetadata
        L10_2 = levelName
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2.backButtonLevelName
        L8_2 = L8_2(L9_2)
        L9_2 = setLevelFolder
        L10_2 = getLevelMetadata
        L11_2 = levelName
        L10_2 = L10_2(L11_2)
        L10_2 = L10_2.backButtonlevelFolder
        L9_2(L10_2)
        L9_2 = setLevelName
        L10_2 = L8_2
        L9_2(L10_2)
        L9_2 = eventManager
        L10_2 = L9_2
        L9_2 = L9_2.notify
        L11_2 = {}
        L12_2 = events
        L12_2 = L12_2.EID_CHANGE_SCENE
        L11_2.id = L12_2
        L11_2.target = "GameScene"
        L9_2(L10_2, L11_2)
    end
    else
      L7_2 = levelName
      if L7_2 ~= "MainMenu" then
        L7_2 = eventManager
        L8_2 = L7_2
        L7_2 = L7_2.notify
        L9_2 = {}
        L10_2 = events
        L10_2 = L10_2.EID_PAUSE_CLICKED
        L9_2.id = L10_2
        L7_2(L8_2, L9_2)
      end
    end
  elseif L4_2 == "SWITCH_SIDES" then
    L7_2 = ""
    L8_2 = SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.isDarkSide
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = _G
      L8_2 = L8_2.string
      L8_2 = L8_2.gsub
      L9_2 = currentFolder
      L10_2 = "_dark"
      L11_2 = "_light"
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
      L8_2 = SettingsWrapper
      L9_2 = L8_2
      L8_2 = L8_2.setIsDarkSide
      L10_2 = false
      L8_2(L9_2, L10_2)
    else
      L8_2 = _G
      L8_2 = L8_2.string
      L8_2 = L8_2.gsub
      L9_2 = currentFolder
      L10_2 = "_light"
      L11_2 = "_dark"
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
      L8_2 = SettingsWrapper
      L9_2 = L8_2
      L8_2 = L8_2.setIsDarkSide
      L10_2 = true
      L8_2(L9_2, L10_2)
    end
    L8_2 = getEpisodeMetadata
    L9_2 = currentFolder
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L8_2.bonusChapter
      if L9_2 then
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.setNewBonusLevels
        L11_2 = currentFolder
        L12_2 = 0
        L9_2(L10_2, L11_2, L12_2)
      end
    end
    if L8_2 then
      L9_2 = L8_2.iapChapter
      if L9_2 then
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.setNewOpenedLevels
        L11_2 = currentFolder
        L12_2 = 0
        L9_2(L10_2, L11_2, L12_2)
      end
    end
    L9_2 = eventManager
    L10_2 = L9_2
    L9_2 = L9_2.notify
    L11_2 = {}
    L12_2 = events
    L12_2 = L12_2.EID_CAPTURE_SCREEN
    L11_2.id = L12_2
    L9_2(L10_2, L11_2)
    L9_2 = setCurrentFolder
    L10_2 = L7_2
    L9_2(L10_2)
    L9_2 = setLevelFolder
    L10_2 = getLevelMetadata
    L11_2 = levelName
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2.backButtonlevelFolder
    L11_2 = L7_2
    L12_2 = "/"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2(L10_2)
    L9_2 = objects
    L9_2.previousLevel = nil
    L9_2 = setLevelName
    L10_2 = "LevelSelection"
    L9_2(L10_2)
    L9_2 = eventManager
    L10_2 = L9_2
    L9_2 = L9_2.notify
    L11_2 = {}
    L12_2 = events
    L12_2 = L12_2.EID_CHANGE_SCENE
    L11_2.id = L12_2
    L11_2.target = "GameScene"
    L9_2(L10_2, L11_2)
  elseif L4_2 == "SHOW_QUEST" then
    L7_2 = nil
    L8_2 = ui
    L8_2 = L8_2.LightDarkEpisodeButton
    L8_2 = L8_2.closestToCamera
    if L8_2 then
      L8_2 = levelName
      L9_2 = getEpisodeSelectionLevelName
      L9_2 = L9_2()
      if L8_2 == L9_2 then
        L8_2 = ui
        L8_2 = L8_2.LightDarkEpisodeButton
        L8_2 = L8_2.closestToCamera
        L8_2 = L8_2[2]
        L8_2 = L8_2.physicsObject
        L9_2 = SettingsWrapper
        L10_2 = L9_2
        L9_2 = L9_2.isDarkSide
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = 1
          if L9_2 then
            goto lbl_898
          end
        end
        L9_2 = 0
        ::lbl_898::
        L10_2 = actions
        L10_2 = L10_2.myLevelFolders
        L11_2 = actions
        L11_2 = L11_2.episodeTypeTable
        L12_2 = L8_2.episodeType
        L11_2 = L11_2[L12_2]
        L10_2 = L10_2[L11_2]
        L11_2 = L8_2.startNumber
        L11_2 = L11_2 + L9_2
        L7_2 = L10_2[L11_2]
      end
    end
    L8_2 = eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L11_2 = ui
    L11_2 = L11_2.QuestPage
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "QuestPage"
    L13_2.episodeSelectionEpName = L7_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2.target = L11_2
    L8_2(L9_2, L10_2)
  elseif L4_2 == "GOTO_COINS" then
    L7_2 = ui
    L7_2 = L7_2.CoinsPage
    L8_2 = L7_2
    L7_2 = L7_2.new
    L7_2 = L7_2(L8_2)
    L8_2 = eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
  elseif L4_2 == "GOTO_SHOP" then
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_OPEN_SHOP
    L9_2.id = L10_2
    L9_2.screen = "Level/Episode Selection"
    L7_2(L8_2, L9_2)
  elseif L4_2 == "ME_CLICKED" then
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_MIGHTY_EAGLE_BUTTON_CLICKED
    L9_2.id = L10_2
    L9_2.from = "INGAME"
    L7_2(L8_2, L9_2)
  elseif L4_2 == "SHOW_TUTORIALS" then
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_TUTORIAL_VIEWED
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = setupBirdTutorials
    L8_2 = true
    L7_2(L8_2)
  elseif L4_2 == "LEFT_CLICKED" then
    L7_2 = updatePCCameraPanningToDirection
    L8_2 = false
    L7_2(L8_2)
  elseif L4_2 == "RIGHT_CLICKED" then
    L7_2 = updatePCCameraPanningToDirection
    L8_2 = true
    L7_2(L8_2)
  elseif L4_2 == "RESTART_CLICKED" then
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_LEVEL_RESTART_CLICKED
    L9_2.id = L10_2
    L9_2.from = "Pause"
    L7_2(L8_2, L9_2)
  end
  if not L4_2 and A1_2 == "WHEEL" then
    L7_2 = isInGameMode
    L7_2 = L7_2()
    if not L7_2 then
      L7_2 = g_gestureMenuTriggered
      if not (0 < L7_2) then
        L7_2 = cursor
        L7_2 = L7_2.wheel
        if L7_2 < 0 then
          L7_2 = updatePCCameraPanningToDirection
          L8_2 = true
          L7_2(L8_2)
        else
          L7_2 = updatePCCameraPanningToDirection
          L8_2 = false
          L7_2(L8_2)
        end
        L7_2 = _G
        L7_2 = L7_2.math
        L7_2 = L7_2.min
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.max
        L9_2 = cursor
        L9_2 = L9_2.wheel
        L9_2 = L9_2 * 30
        L10_2 = -30
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = 30
        L7_2 = L7_2(L8_2, L9_2)
        g_wheelSpeed = L7_2
      end
    end
  end
end

L0_1.onPointerEvent = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2
  L3_2 = g_levelTimer
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 + A1_2
  g_levelTimer = L3_2
  L3_2 = Assets
  L3_2 = L3_2.update
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = rovioAccountEnabled
  if L3_2 then
    L3_2 = RovioAccount
    L3_2 = L3_2.update
    L4_2 = A1_2
    L3_2(L4_2)
    L3_2 = CloudSync
    L3_2 = L3_2.update
    L4_2 = A1_2
    L3_2(L4_2)
  end
  L3_2 = updateCutscene
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = updateQuests
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = g_gamePaused
  if not L3_2 then
    L3_2 = g_tutorialShowing
    if not L3_2 then
      L3_2 = isLevelEnded
      L3_2 = L3_2()
      if not L3_2 then
        L3_2 = isPausePageShowing
        L3_2 = L3_2()
        if not L3_2 then
          goto lbl_46
        end
      end
    end
  end
  L3_2 = setDeltaTimeMultiplier
  L4_2 = 1
  L3_2(L4_2)
  goto lbl_49
  ::lbl_46::
  L3_2 = updateBulletTime
  L4_2 = A1_2
  L3_2(L4_2)
  ::lbl_49::
  L3_2 = g_gamePaused
  if not L3_2 then
    L3_2 = g_tutorialShowing
    if not L3_2 then
      L3_2 = isLevelEnded
      L3_2 = L3_2()
      if not L3_2 then
        goto lbl_62
      end
    end
  end
  L3_2 = updateMenuParticlesNative
  L4_2 = A1_2
  L3_2(L4_2)
  ::lbl_62::
  L4_2 = A0_2
  L3_2 = A0_2.updateTransition
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.updateFade
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  g_dt = A1_2
  L3_2 = selectedBird
  if L3_2 ~= nil then
    L3_2 = TARGET_VISUALIZATION_WAIT_FOR_USER_INPUT
    g_targetVisualizationUserInputWaitTimer = L3_2
  end
  L3_2 = screen
  if L3_2 then
    L3_2 = {}
    L4_2 = screen
    L4_2 = L4_2.x
    if not L4_2 then
      L4_2 = 0
    end
    L3_2.x = L4_2
    L4_2 = screen
    L4_2 = L4_2.y
    if not L4_2 then
      L4_2 = 0
    end
    L3_2.y = L4_2
    oldScreen = L3_2
  end
  L3_2 = g_targetVisualizationUserInputWaitTimer
  L3_2 = L3_2 - A1_2
  g_targetVisualizationUserInputWaitTimer = L3_2
  L3_2 = g_targetVisualizationUserInputWaitTimer
  if L3_2 < 0 then
    L3_2 = TARGET_VISUALIZATION_WAIT_FOR_USER_INPUT
    g_targetVisualizationUserInputWaitTimer = L3_2
    L3_2 = TARGET_VISUALIZATION_TIMER_TIME
    g_showTargetVisualizationTimer = L3_2
  end
  L3_2 = A0_2.heldByForceTimer
  L3_2 = L3_2 + A1_2
  A0_2.heldByForceTimer = L3_2
  L3_2 = maxZoomLevel
  if L3_2 ~= true then
    L3_2 = SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.isZoomingMarkedUsed
    L3_2 = L3_2(L4_2)
    if L3_2 ~= true then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.markZoomingUsed
      L3_2(L4_2)
    end
  end
  L3_2 = returninMusicVolume
  if L3_2 ~= nil then
    L3_2 = returninMusicVolume
    if L3_2 < 1 then
      L3_2 = setMusicVolume
      L4_2 = returninMusicVolume
      L3_2(L4_2)
      L3_2 = returninMusicVolume
      L3_2 = L3_2 + A1_2
      returninMusicVolume = L3_2
    else
      L3_2 = setMusicVolume
      L4_2 = 1
      L3_2(L4_2)
      L3_2 = nil
      returninMusicVolume = L3_2
    end
  end
  L3_2 = g_randomAmbient
  if L3_2 then
    L3_2 = levelCompleted
    if not L3_2 then
      L3_2 = isLevelEnded
      L3_2 = L3_2()
      if not L3_2 then
        L3_2 = g_showingChannelOrID
        if not L3_2 then
          L3_2 = g_randomAmbientTimer
          L3_2 = L3_2 - A1_2
          g_randomAmbientTimer = L3_2
          L3_2 = g_randomAmbientTimer
          if L3_2 <= 0 then
            L3_2 = g_randomAmbient
            L3_2 = L3_2.sounds
            L4_2 = _G
            L4_2 = L4_2.math
            L4_2 = L4_2.random
            L5_2 = 1
            L6_2 = g_randomAmbient
            L6_2 = L6_2.sounds
            L6_2 = #L6_2
            L4_2 = L4_2(L5_2, L6_2)
            L3_2 = L3_2[L4_2]
            L4_2 = g_randomAmbient
            L4_2 = L4_2.volumeRange
            L4_2 = L4_2.low
            L5_2 = _G
            L5_2 = L5_2.math
            L5_2 = L5_2.random
            L5_2 = L5_2()
            L6_2 = g_randomAmbient
            L6_2 = L6_2.volumeRange
            L6_2 = L6_2.high
            L7_2 = g_randomAmbient
            L7_2 = L7_2.volumeRange
            L7_2 = L7_2.low
            L6_2 = L6_2 - L7_2
            L5_2 = L5_2 * L6_2
            L4_2 = L4_2 + L5_2
            L5_2 = g_randomAmbient
            L5_2 = L5_2.randomizationTime
            L5_2 = L5_2.low
            L6_2 = _G
            L6_2 = L6_2.math
            L6_2 = L6_2.random
            L6_2 = L6_2()
            L7_2 = g_randomAmbient
            L7_2 = L7_2.randomizationTime
            L7_2 = L7_2.high
            L8_2 = g_randomAmbient
            L8_2 = L8_2.randomizationTime
            L8_2 = L8_2.low
            L7_2 = L7_2 - L8_2
            L6_2 = L6_2 * L7_2
            L5_2 = L5_2 + L6_2
            g_randomAmbientTimer = L5_2
            L5_2 = res
            L5_2 = L5_2.playAudio
            L6_2 = L3_2
            L7_2 = L4_2
            L5_2(L6_2, L7_2)
          end
        end
      end
    end
  end
  L3_2 = menuManager
  L4_2 = L3_2
  L3_2 = L3_2.getRoot
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.getChild
    L6_2 = "sideSwitchButton"
    L4_2 = L4_2(L5_2, L6_2)
    sideSwitchBtn = L4_2
    L4_2 = sideSwitchBtn
    if L4_2 then
      L4_2 = sideSwitchBtn
      L5_2 = L4_2
      L4_2 = L4_2.setEnabled
      L6_2 = transitionStarted
      L6_2 = L6_2 == nil
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = AchievementPopup
  L4_2 = L4_2.isShown
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.checkForShowTutorial
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = g_gestureMenuTriggered
  if 0 < L4_2 then
    L4_2 = g_gestureMenuTriggered
    L4_2 = L4_2 - A1_2
    g_gestureMenuTriggered = L4_2
  end
  L4_2 = g_gestureMenuCursorHide
  if L4_2 then
    L4_2 = cursor
    L4_2 = L4_2.x
    if L4_2 == 0 then
      L4_2 = cursor
      L4_2 = L4_2.y
      if L4_2 == 0 then
        goto lbl_249
      end
    end
    L4_2 = false
    g_gestureMenuCursorHide = L4_2
  end
  ::lbl_249::
  L4_2 = isPhysicsEnabled
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = g_disableGameupdate
    if L4_2 ~= true then
      L4_2 = g_gameFailedState
      if L4_2 ~= true then
        L4_2 = g_gameCompletedState
        if L4_2 ~= true then
          goto lbl_277
        end
      end
    end
  end
  L4_2 = isPhysicsEnabled
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = setPhysicsEnabled
    L5_2 = false
    L4_2(L5_2)
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  do return end
  ::lbl_277::
  L4_2 = g_autoReticle
  if L4_2 then
    L4_2 = flyingBird
    if L4_2 then
      L4_2 = flyingBird
      L4_2 = L4_2.reticleFollowsCursor
      if L4_2 then
        L4_2 = isKeyHold
        L5_2 = "LBUTTON"
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = g_autoReticle
          L5_2 = g_autoReticle
          L6_2 = screenToPhysicsTransform
          L7_2 = cursor
          L7_2 = L7_2.x
          L8_2 = cursor
          L8_2 = L8_2.y
          L6_2, L7_2 = L6_2(L7_2, L8_2)
          L5_2.y = L7_2
          L4_2.x = L6_2
        end
      end
    end
    L4_2 = g_autoReticle
    L5_2 = g_autoReticle
    L5_2 = L5_2.timer
    L5_2 = L5_2 + A1_2
    L4_2.timer = L5_2
    L4_2 = g_autoReticle
    L4_2 = L4_2.timer
    L5_2 = g_autoReticle
    L5_2 = L5_2.maxTime
    if L4_2 > L5_2 then
      L4_2 = flyingBird
      if L4_2 then
        L4_2 = flyingBird
        L4_2 = L4_2.reticleFollowsCursor
        if L4_2 then
          L4_2 = g_autoReticle
          L5_2 = g_autoReticle
          L5_2 = L5_2.maxTime
          L4_2.timer = L5_2
      end
      else
        L4_2 = nil
        g_autoReticle = L4_2
      end
    end
  end
  L4_2 = clearAimingAidTimer
  if L4_2 ~= nil then
    L4_2 = clearAimingAidTimer
    if 0 < L4_2 then
      L4_2 = clearAimingAidTimer
      L5_2 = A1_2 * 1.5
      L4_2 = L4_2 - L5_2
      clearAimingAidTimer = L4_2
      L4_2 = clearAimingAid
      L5_2 = clearAimingAidTimer
      L5_2 = 1 - L5_2
      L4_2(L5_2)
    else
      L4_2 = clearAimingAid
      L5_2 = 1
      L4_2(L5_2)
      L4_2 = nil
      clearAimingAidTimer = L4_2
    end
  end
  L4_2 = mightyEagleBGAlpha
  if L4_2 ~= nil then
    L4_2 = mightyEagleBGAlphaDecreese
    if L4_2 then
      L4_2 = mightyEagleBGAlpha
      if 0 < L4_2 then
        L4_2 = mightyEagleBGAlpha
        L5_2 = A1_2 * 3
        L4_2 = L4_2 - L5_2
        mightyEagleBGAlpha = L4_2
        L4_2 = mightyEagleBGAlpha
        if L4_2 < 0 then
          L4_2 = nil
          mightyEagleBGAlpha = L4_2
        end
      end
    end
  end
  L4_2 = mightyEagleBHBG
  if L4_2 ~= nil then
    L4_2 = mightyEagleBHBG
    L4_2 = #L4_2
    if 0 < L4_2 then
      L4_2 = _G
      L4_2 = L4_2.pairs
      L5_2 = mightyEagleBHBG
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        if L8_2 ~= nil then
          L9_2 = L8_2.decreesing
          if L9_2 then
            L9_2 = L8_2.scale
            L10_2 = L8_2.endScale
            if L9_2 > L10_2 then
              L9_2 = L8_2.scale
              L10_2 = L8_2.multiplier
              L10_2 = A1_2 * L10_2
              L10_2 = L10_2 * 2
              L9_2 = L9_2 - L10_2
              L8_2.scale = L9_2
              L9_2 = L8_2.multiplier
              L10_2 = A1_2 * 2
              L9_2 = L9_2 + L10_2
              L8_2.multiplier = L9_2
              L9_2 = setScale
              L10_2 = L8_2.name
              L11_2 = L8_2.scale
              L12_2 = L8_2.scale
              L9_2(L10_2, L11_2, L12_2)
              L9_2 = setScale
              L10_2 = L8_2.mightyEagleBHMask
              L10_2 = L10_2.name
              L11_2 = L8_2.scale
              L11_2 = L11_2 * 0.5
              L12_2 = L8_2.scale
              L12_2 = L12_2 * 0.5
              L9_2(L10_2, L11_2, L12_2)
            else
              L9_2 = objects
              L9_2 = L9_2.world
              L10_2 = L8_2.name
              L9_2 = L9_2[L10_2]
              if L9_2 ~= nil then
                L9_2 = setObjectParameter
                L10_2 = L8_2.mightyEagleBHMask
                L10_2 = L10_2.name
                L11_2 = 33
                L12_2 = 0
                L9_2(L10_2, L11_2, L12_2)
                L9_2 = setObjectParameter
                L10_2 = L8_2.name
                L11_2 = 33
                L12_2 = 0
                L9_2(L10_2, L11_2, L12_2)
                L9_2 = destroyObject
                L10_2 = L8_2.mightyEagleBHMask
                L10_2 = L10_2.name
                L11_2 = true
                L9_2(L10_2, L11_2)
                L9_2 = destroyObject
                L10_2 = L8_2.name
                L11_2 = true
                L9_2(L10_2, L11_2)
              end
            end
          else
            L9_2 = L8_2.scale
            L10_2 = L8_2.endScale
            L10_2 = L10_2 + 0.5
            if L9_2 < L10_2 then
              L9_2 = L8_2.scale
              L10_2 = L8_2.multiplier
              L10_2 = A1_2 * L10_2
              L10_2 = L10_2 * 2
              L9_2 = L9_2 + L10_2
              L8_2.scale = L9_2
              L9_2 = L8_2.multiplier
              L10_2 = A1_2 * 2
              L9_2 = L9_2 + L10_2
              L8_2.multiplier = L9_2
              L9_2 = setScale
              L10_2 = L8_2.name
              L11_2 = L8_2.scale
              L12_2 = L8_2.scale
              L9_2(L10_2, L11_2, L12_2)
              L9_2 = setScale
              L10_2 = L8_2.mightyEagleBHMask
              L10_2 = L10_2.name
              L11_2 = L8_2.scale
              L11_2 = L11_2 * 0.5
              L12_2 = L8_2.scale
              L12_2 = L12_2 * 0.5
              L9_2(L10_2, L11_2, L12_2)
              L9_2 = cameraShake
              if L9_2 ~= nil then
                L9_2 = cameraShake
                L10_2 = cameraShake
                L10_2 = L10_2.speed
                L10_2 = L10_2 + A1_2
                L9_2.speed = L10_2
              end
            else
              L8_2.multiplier = 4
            end
          end
        end
      end
    end
  end
  L4_2 = g_showLevelOpenAnimation
  if not L4_2 then
    L4_2 = _G
    L4_2 = L4_2.pairs
    L5_2 = objects
    L5_2 = L5_2.destroyableByTap
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = objects
      L9_2 = L9_2.world
      L9_2 = L9_2[L8_2]
      if L9_2 ~= nil then
        L10_2 = isKeyPressed
        L11_2 = "LBUTTON"
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = res
          L10_2 = L10_2.getSpriteBounds
          L11_2 = L9_2.sprite
          L10_2, L11_2 = L10_2(L11_2)
          L12_2 = physicsToScreenTransform
          L13_2 = L9_2.x
          L14_2 = L9_2.y
          L12_2, L13_2 = L12_2(L13_2, L14_2)
          L14_2 = worldScale
          L14_2 = L10_2 * L14_2
          L15_2 = worldScale
          L11_2 = L11_2 * L15_2
          L10_2 = L14_2
          L14_2 = L10_2 * 0.1
          L11_2 = L11_2 * 0.1
          L10_2 = L14_2
          L14_2 = L13_2 + L11_2
          L15_2 = L13_2 - L11_2
          L16_2 = L12_2 - L10_2
          L17_2 = L12_2 + L10_2
          L18_2 = cursor
          L18_2 = L18_2.x
          if L16_2 < L18_2 then
            L18_2 = cursor
            L18_2 = L18_2.x
            if L17_2 > L18_2 then
              L18_2 = cursor
              L18_2 = L18_2.y
              if L15_2 < L18_2 then
                L18_2 = cursor
                L18_2 = L18_2.y
                if L14_2 > L18_2 then
                  L18_2 = getObjectDefinition
                  L19_2 = L9_2.name
                  L18_2 = L18_2(L19_2)
                  L19_2 = L18_2.tapParticles
                  if L19_2 then
                    L19_2 = putParticles
                    L20_2 = {}
                    L21_2 = L9_2.name
                    L20_2.objectName = L21_2
                    L21_2 = L18_2.tapParticles
                    L21_2 = L21_2.particleName
                    L20_2.particles = L21_2
                    L21_2 = L18_2.tapParticles
                    L21_2 = L21_2.amount
                    L20_2.amount = L21_2
                    L19_2(L20_2)
                    L19_2 = blockTable
                    L19_2 = L19_2.materials
                    L20_2 = L18_2.material
                    L19_2 = L19_2[L20_2]
                    if L19_2 then
                      L20_2 = L19_2.collisionSound
                      if L20_2 then
                        L20_2 = playAudio
                        L21_2 = L19_2.collisionSound
                        L20_2(L21_2)
                      end
                    end
                  else
                    L19_2 = destroyObject
                    L20_2 = L8_2
                    L19_2(L20_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L4_2 = objects
  L4_2 = L4_2.rotatingMenuJoint
  if L4_2 ~= nil then
    L4_2 = keyPressed
    L4_2 = L4_2.RBUTTON
    if L4_2 then
      L4_2 = currentMenuMotorSpeed
      if L4_2 == 0 then
        L4_2 = 500000
        currentMenuMotorSpeed = L4_2
      else
        L4_2 = 0
        currentMenuMotorSpeed = L4_2
      end
      L4_2 = setRevoluteJointSpeed
      L5_2 = objects
      L5_2 = L5_2.rotatingMenuJoint
      L6_2 = currentMenuMotorSpeed
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = changeCameraTimer
  if L4_2 ~= nil then
    L4_2 = changeCameraTimer
    if 0 < L4_2 then
      L4_2 = changeCameraTimer
      L4_2 = L4_2 - A1_2
      changeCameraTimer = L4_2
    end
  end
  L4_2 = isComicLevel
  if L4_2 then
    L4_2 = isKeyReleased
    L5_2 = "LBUTTON"
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = skipSequenceClicks
      if L4_2 ~= nil then
        L4_2 = skipSequenceClicks
        L4_2 = L4_2 + 1
        skipSequenceClicks = L4_2
        L4_2 = skipSequenceClicks
        if 2 < L4_2 then
          L4_2 = actions
          L4_2 = L4_2.myLevels
          L5_2 = currentFolder
          L4_2 = L4_2[L5_2]
          L5_2 = currentLevel
          L5_2 = L5_2 + 1
          L4_2 = L4_2[L5_2]
          if L4_2 ~= nil then
            L4_2 = storeLevelProgress
            L5_2 = currentFolder
            L6_2 = currentLevel
            L4_2(L5_2, L6_2)
          end
          L4_2 = setNextLevel
          L4_2()
        end
      else
        L4_2 = 1
        skipSequenceClicks = L4_2
      end
    end
  end
  L4_2 = timeSpentInLevel
  L4_2 = L4_2 + A1_2
  timeSpentInLevel = L4_2
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = BHTrajectory
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.timer
    if L9_2 <= 0 then
      L9_2 = BHTrajectory
      L9_2[L7_2] = nil
    else
      L9_2 = L8_2.timer
      L9_2 = L9_2 - A1_2
      L8_2.timer = L9_2
    end
  end
  L4_2 = timeWithoutLevelGoals
  if L4_2 ~= nil then
    L4_2 = timeWithoutLevelGoals
    L4_2 = L4_2 + A1_2
    timeWithoutLevelGoals = L4_2
  end
  L4_2 = timeWithoutBirds
  if L4_2 ~= nil then
    L4_2 = timeWithoutBirds
    L4_2 = L4_2 + A1_2
    timeWithoutBirds = L4_2
  end
  L4_2 = A0_2.animationTimer
  if not L4_2 then
    L4_2 = 0
  end
  L4_2 = L4_2 + A1_2
  A0_2.animationTimer = L4_2
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = objects
  L5_2 = L5_2.animatedObjects
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = objects
    L9_2 = L9_2.world
    L9_2 = L9_2[L7_2]
    if L9_2 ~= nil then
      L10_2 = getObjectDefinition
      L11_2 = L7_2
      L10_2 = L10_2(L11_2)
      L11_2 = A0_2.animationTimer
      L12_2 = L9_2.randomizeAnimationStart
      if not L12_2 then
        L12_2 = 0
      end
      L11_2 = L11_2 + L12_2
      L12_2 = L9_2.animateScaleX
      if L12_2 ~= nil then
        L12_2 = _G
        L12_2 = L12_2.math
        L12_2 = L12_2.sin
        L13_2 = L9_2.frequencyX
        L13_2 = L11_2 * L13_2
        L12_2 = L12_2(L13_2)
        L13_2 = L9_2.amplitudeX
        L12_2 = L12_2 * L13_2
        L9_2.scaleXAdd = L12_2
        L12_2 = setScale
        L13_2 = L7_2
        L14_2 = L9_2.originalScaleX
        L15_2 = L9_2.scaleXAdd
        L14_2 = L14_2 + L15_2
        L15_2 = L9_2.scaleY
        if not L15_2 then
          L15_2 = 1
        end
        L12_2(L13_2, L14_2, L15_2)
      end
      L12_2 = L9_2.animateScaleY
      if L12_2 ~= nil then
        L12_2 = _G
        L12_2 = L12_2.math
        L12_2 = L12_2.sin
        L13_2 = L9_2.frequencyY
        L13_2 = L11_2 * L13_2
        L12_2 = L12_2(L13_2)
        L13_2 = L9_2.amplitudeY
        L12_2 = L12_2 * L13_2
        L9_2.scaleYAdd = L12_2
        L12_2 = setScale
        L13_2 = L7_2
        L14_2 = L9_2.scaleX
        if not L14_2 then
          L14_2 = 1
        end
        L15_2 = L9_2.originalScaleY
        L16_2 = L9_2.scaleYAdd
        L15_2 = L15_2 + L16_2
        L12_2(L13_2, L14_2, L15_2)
      end
      L12_2 = L9_2.animateRotation
      if L12_2 then
        L12_2 = L10_2.constantRotation
        if L12_2 then
          L12_2 = L9_2.accSpriteAngle
          if L12_2 == nil then
            L9_2.accSpriteAngle = 0
          end
          L12_2 = L9_2.accSpriteAngle
          L13_2 = L9_2.rotationFrequency
          L13_2 = L13_2 * A1_2
          L12_2 = L12_2 + L13_2
          L9_2.accSpriteAngle = L12_2
          L12_2 = setSpriteRotation
          L13_2 = L7_2
          L14_2 = L9_2.accSpriteAngle
          L12_2(L13_2, L14_2)
        else
          L12_2 = _G
          L12_2 = L12_2.math
          L12_2 = L12_2.sin
          L13_2 = L9_2.rotationFrequency
          L13_2 = L11_2 * L13_2
          L12_2 = L12_2(L13_2)
          L13_2 = L9_2.rotationAmplitude
          L12_2 = L12_2 * L13_2
          L13_2 = setSpriteRotation
          L14_2 = L7_2
          L15_2 = L12_2
          L13_2(L14_2, L15_2)
        end
      end
    else
      L10_2 = objects
      L10_2 = L10_2.animatedObjects
      L10_2[L7_2] = nil
    end
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = objects
  L5_2 = L5_2.animatedSprites
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = objects
    L9_2 = L9_2.spriteObjects
    L9_2 = L9_2[L7_2]
    L10_2 = L9_2.animateScaleX
    if L10_2 ~= nil then
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.sin
      L11_2 = L9_2.frequencyX
      L11_2 = A2_2 * L11_2
      L10_2 = L10_2(L11_2)
      L11_2 = L9_2.amplitudeX
      L10_2 = L10_2 * L11_2
      L9_2.scaleXAdd = L10_2
    end
    L10_2 = L9_2.animateScaleY
    if L10_2 ~= nil then
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.sin
      L11_2 = L9_2.frequencyY
      L11_2 = A2_2 * L11_2
      L10_2 = L10_2(L11_2)
      L11_2 = L9_2.amplitudeY
      L10_2 = L10_2 * L11_2
      L9_2.scaleYAdd = L10_2
    end
    L10_2 = L9_2.animateRotation
    if L10_2 ~= nil then
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.sin
      L11_2 = L9_2.rotationFrequency
      L11_2 = A2_2 * L11_2
      L10_2 = L10_2(L11_2)
      L11_2 = L9_2.rotationAmplitude
      L10_2 = L10_2 * L11_2
      L9_2.angleAdd = L10_2
    end
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = objects
  L5_2 = L5_2.levelStars
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = applyForce
    L10_2 = L7_2
    L11_2 = 0
    L12_2 = 20
    L13_2 = L8_2.x
    L14_2 = L8_2.y
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L4_2 = selectedBird
  if L4_2 ~= nil then
    L4_2 = levelCompleted
    if L4_2 == false then
      L4_2 = objects
      L4_2.currentTimeStep = 0.011111111
      L4_2 = enableGravityForBird
      L5_2 = selectedBird
      L5_2 = L5_2.name
      L6_2 = false
      L4_2(L5_2, L6_2)
  end
  else
    L4_2 = objects
    L4_2.currentTimeStep = 0.033333335
    L4_2 = {}
    aimingTrail = L4_2
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = spawnList
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = spawnObjects
    L10_2 = L8_2.spawnedObjects
    L11_2 = L8_2.info
    L9_2(L10_2, L11_2)
  end
  L4_2 = {}
  spawnList = L4_2
  L4_2 = flyingBird
  if L4_2 ~= nil then
    L4_2 = flyingBird
    L4_2 = L4_2.ignoreGravityTimer
    if L4_2 ~= nil then
      L4_2 = flyingBird
      L4_2 = L4_2.ignoreGravityTimer
      if 0 < L4_2 then
        L4_2 = flyingBird
        L5_2 = flyingBird
        L5_2 = L5_2.ignoreGravityTimer
        L5_2 = L5_2 - A1_2
        L4_2.ignoreGravityTimer = L5_2
        L4_2 = flyingBird
        L4_2 = L4_2.ignoreGravityTimer
        if not (L4_2 <= 0) then
          L4_2 = flyingBird
          L4_2 = L4_2.hasCollided
          if not L4_2 then
            goto lbl_895
          end
        end
        L4_2 = flyingBird
        L4_2.ignoreGravityTimer = -1
        L4_2 = enableGravityForBird
        L5_2 = flyingBird
        L5_2 = L5_2.name
        L6_2 = true
        L4_2(L5_2, L6_2)
      end
    end
  end
  ::lbl_895::
  L4_2 = flyingBird
  if L4_2 ~= nil then
    L4_2 = flyingBird
    L4_2 = L4_2.hasCollided
    if L4_2 == true then
      L4_2 = flyingBird
      L4_2 = L4_2.timeSinceCollision
      if L4_2 == nil then
        L4_2 = blockTable
        L4_2 = L4_2.blocks
        L5_2 = flyingBird
        L5_2 = L5_2.definition
        L4_2 = L4_2[L5_2]
        L5_2 = L4_2.removeGravityMultiplierInstantly
        if L5_2 then
          L5_2 = flyingBird
          L5_2.timeSinceCollision = 10
        else
          L5_2 = flyingBird
          L5_2.timeSinceCollision = 2
        end
      end
      L4_2 = flyingBird
      L5_2 = flyingBird
      L5_2 = L5_2.timeSinceCollision
      L5_2 = L5_2 + A1_2
      L4_2.timeSinceCollision = L5_2
    end
  end
  L4_2 = flyingBird
  if L4_2 ~= nil then
    L4_2 = flyingBird
    L4_2 = L4_2.laserField
    if L4_2 ~= nil then
      L4_2 = flyingBird
      L5_2 = flyingBird
      L5_2 = L5_2.x
      L4_2.prevX = L5_2
      L4_2 = flyingBird
      L5_2 = flyingBird
      L5_2 = L5_2.y
      L4_2.prevY = L5_2
    end
  end
  L4_2 = flyingBird
  if L4_2 ~= nil then
    L4_2 = flyingBird
    L4_2 = L4_2.laserBoost
    if L4_2 ~= nil then
      L4_2 = flyingBird
      L4_2 = L4_2.laserBoost
      L4_2 = L4_2.timer
      if 0 < L4_2 then
        L4_2 = flyingBird
        L4_2 = L4_2.laserBoost
        L5_2 = flyingBird
        L5_2 = L5_2.laserBoost
        L5_2 = L5_2.timer
        L5_2 = L5_2 - A1_2
        L4_2.timer = L5_2
        L4_2 = flyingBird
        L4_2 = L4_2.laserBoost
        L5_2 = flyingBird
        L5_2 = L5_2.laserBoost
        L5_2 = L5_2.posX
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.sin
        L7_2 = flyingBird
        L7_2 = L7_2.laserField
        L7_2 = L7_2.time
        L7_2 = L7_2 * 50
        L6_2 = L6_2(L7_2)
        L6_2 = L6_2 * 0.1
        L5_2 = L5_2 + L6_2
        L4_2.posX = L5_2
        L4_2 = flyingBird
        L4_2 = L4_2.laserBoost
        L5_2 = flyingBird
        L5_2 = L5_2.laserBoost
        L5_2 = L5_2.posY
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.sin
        L7_2 = flyingBird
        L7_2 = L7_2.laserField
        L7_2 = L7_2.time
        L7_2 = L7_2 * 50
        L6_2 = L6_2(L7_2)
        L6_2 = L6_2 * 0.1
        L5_2 = L5_2 + L6_2
        L4_2.posY = L5_2
        L4_2 = setPosition
        L5_2 = flyingBird
        L5_2 = L5_2.name
        L6_2 = flyingBird
        L6_2 = L6_2.laserBoost
        L6_2 = L6_2.posX
        L7_2 = flyingBird
        L7_2 = L7_2.laserBoost
        L7_2 = L7_2.posY
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = applyImpulse
        L5_2 = flyingBird
        L5_2 = L5_2.name
        L6_2 = flyingBird
        L6_2 = L6_2.laserBoost
        L6_2 = L6_2.x
        L7_2 = flyingBird
        L7_2 = L7_2.laserBoost
        L7_2 = L7_2.force
        L6_2 = L6_2 * L7_2
        L7_2 = flyingBird
        L7_2 = L7_2.laserBoost
        L7_2 = L7_2.y
        L8_2 = flyingBird
        L8_2 = L8_2.laserBoost
        L8_2 = L8_2.force
        L7_2 = L7_2 * L8_2
        L8_2 = flyingBird
        L8_2 = L8_2.x
        L9_2 = flyingBird
        L9_2 = L9_2.y
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L4_2 = flyingBird
        L4_2.laserBoost = nil
        L4_2 = flyingBird
        L4_2 = L4_2.laserField
        L4_2.scale = 1
      end
      L4_2 = flyingBird
      L4_2 = L4_2.laserField
      L5_2 = flyingBird
      L5_2 = L5_2.laserField
      L5_2 = L5_2.time
      L5_2 = L5_2 + A1_2
      L4_2.time = L5_2
    end
  end
  L4_2 = screenToWorldTransform
  L5_2 = screen
  L5_2 = L5_2.x
  L6_2 = 0
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = g_showTargetVisualizationTimer
  if L6_2 then
    L6_2 = g_showTargetVisualizationTimer
    L6_2 = L6_2 - A1_2
    g_showTargetVisualizationTimer = L6_2
    L6_2 = g_showTargetVisualizationTimer
    L7_2 = TARGET_VISUALIZATION_TIMER_TIME
    L6_2 = L6_2 / L7_2
    g_targetVisualizationRelativeTime = L6_2
    L6_2 = g_showTargetVisualizationTimer
    if L6_2 <= 0 then
      L6_2 = nil
      g_showTargetVisualizationTimer = L6_2
    end
  end
  L6_2 = _G
  L6_2 = L6_2.pairs
  L7_2 = levelGoals
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.levelGoal
    if not L11_2 then
      L11_2 = L10_2.frozenPig
      if not L11_2 then
        goto lbl_1362
      end
    end
    L11_2 = updateMySensor
    L12_2 = L9_2
    L11_2(L12_2)
    L11_2 = timeSpentInLevel
    if 1 < L11_2 then
      L11_2 = L10_2.insideGravity
      if not L11_2 then
        L11_2 = L10_2.linkedBubble
        if L11_2 ~= nil then
          L11_2 = L10_2.linkedBubble
          if L11_2 ~= "" then
            L11_2 = objects
            L11_2 = L11_2.world
            L12_2 = L10_2.linkedBubble
            L11_2 = L11_2[L12_2]
            if L11_2 ~= nil then
              goto lbl_1362
            end
          end
        end
        L11_2 = objects
        L11_2 = L11_2.worldGravity
        if L11_2 == nil then
          L11_2 = blockTable
          L11_2 = L11_2.blocks
          L12_2 = L10_2.definition
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.frozenInVacuum
          if L11_2 ~= nil then
            L11_2 = blockTable
            L11_2 = L11_2.blocks
            L12_2 = L10_2.definition
            L11_2 = L11_2[L12_2]
            L11_2 = L11_2.frozenInVacuum
            if L11_2 ~= true then
              goto lbl_1362
            end
          end
          L11_2 = L10_2.timeOutsideAtmosphere
          if L11_2 then
            L11_2 = L10_2.timeOutsideAtmosphere
            L11_2 = L11_2 + A1_2
            if L11_2 then
              goto lbl_1113
            end
          end
          L11_2 = 0
          ::lbl_1113::
          L10_2.timeOutsideAtmosphere = L11_2
          L11_2 = 1.5
          L12_2 = L10_2.timeOutsideAtmosphere
          if L11_2 < L12_2 then
            L12_2 = deadBlocks
            L12_2[L9_2] = L10_2
            L10_2.strength = 0
          end
          L12_2 = L10_2.disableAnimations
          if not L12_2 then
            L12_2 = L10_2.sprite
            L10_2.spriteUnfreeze = L12_2
            L12_2 = L10_2.material
            L10_2.materialUnfreeze = L12_2
            L12_2 = blockTable
            L12_2 = L12_2.blocks
            L13_2 = L10_2.definition
            L12_2 = L12_2[L13_2]
            L12_2 = L12_2.spriteFreeze
            L10_2.sprite = L12_2
            L10_2.material = "glass"
            L10_2.frozenPig = true
            L10_2.disableAnimations = true
            L12_2 = setSprite
            L13_2 = L9_2
            L14_2 = L10_2.sprite
            L12_2(L13_2, L14_2)
            L10_2.enteredState = false
            L12_2 = setCurrentState
            L13_2 = L10_2
            L14_2 = "frozenState"
            L12_2(L13_2, L14_2)
            L12_2 = getObjectDefinition
            L13_2 = L10_2.name
            L12_2 = L12_2(L13_2)
            L13_2 = L12_2.freezeSound
            if L13_2 then
              L14_2 = res
              L14_2 = L14_2.playAudio
              L15_2 = L13_2
              L14_2(L15_2)
            end
            L14_2 = objects
            L14_2 = L14_2.world
            L14_2 = L14_2[L9_2]
            L15_2 = freezingObjects
            if not L15_2 then
              L15_2 = {}
              L15_2.timer = 5.95
              L16_2 = L14_2.x
              L15_2.x = L16_2
              L16_2 = L14_2.y
              L15_2.y = L16_2
              L16_2 = {}
              L15_2.objects = L16_2
              L15_2.sx = 0.25
              L15_2.sy = 0.25
              freezingObjects = L15_2
            end
            L15_2 = putParticles
            L16_2 = {}
            L17_2 = L14_2.name
            L16_2.objectName = L17_2
            L16_2.particles = "iceExplosion"
            L15_2(L16_2)
            L15_2 = 0
            L16_2 = 0
            L17_2 = L10_2.width
            if L17_2 ~= nil then
              L17_2 = L10_2.height
              if L17_2 ~= nil then
                L17_2 = L10_2.width
                L16_2 = L10_2.height
                L15_2 = L17_2
            end
            else
              L17_2 = L10_2.radius
              if L17_2 ~= nil then
                L17_2 = L10_2.radius
                L16_2 = L10_2.radius
                L15_2 = L17_2
              else
                L17_2 = res
                L17_2 = L17_2.getSpriteBounds
                L18_2 = blockTable
                L18_2 = L18_2.blocks
                L19_2 = L10_2.definition
                L18_2 = L18_2[L19_2]
                L18_2 = L18_2.sprite
                L17_2, L18_2 = L17_2(L18_2)
                L16_2 = L18_2
                L15_2 = L17_2
                L17_2 = worldToPhysicsTransform
                L18_2 = L15_2
                L19_2 = L16_2
                L17_2, L18_2 = L17_2(L18_2, L19_2)
                L16_2 = L18_2
                L15_2 = L17_2
              end
            end
            L17_2 = getSquaredDistanceFromOBBToPoint
            L18_2 = L10_2.x
            L19_2 = L10_2.y
            L20_2 = L15_2
            L21_2 = L16_2
            L22_2 = L10_2.angle
            L23_2 = L14_2.x
            L24_2 = L14_2.y
            L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L18_2 = _G
            L18_2 = L18_2.math
            L18_2 = L18_2.sqrt
            L19_2 = L17_2.distance
            L18_2 = L18_2(L19_2)
            L19_2 = 0
            L20_2 = 0
            if L18_2 == 0 then
              L19_2 = 0
              L20_2 = -1
            else
              L21_2 = vNormalize
              L22_2 = L17_2.pointX
              L23_2 = L10_2.x
              L22_2 = L22_2 - L23_2
              L23_2 = L17_2.pointY
              L24_2 = L10_2.y
              L23_2 = L23_2 - L24_2
              L21_2, L22_2 = L21_2(L22_2, L23_2)
              L20_2 = L22_2
              L19_2 = L21_2
            end
            L21_2 = _G
            L21_2 = L21_2.math
            L21_2 = L21_2.random
            L22_2 = 1
            L23_2 = 3
            L21_2 = L21_2(L22_2, L23_2)
            L22_2 = _G
            L22_2 = L22_2.math
            L22_2 = L22_2.random
            L23_2 = 1
            L24_2 = 5
            L22_2 = L22_2(L23_2, L24_2)
            L23_2 = worldToPhysicsTransform
            L24_2 = res
            L24_2 = L24_2.getSpriteBounds
            L25_2 = L10_2.sprite
            L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L24_2(L25_2)
            L23_2, L24_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
            L25_2 = L10_2.angle
            L26_2 = _G
            L26_2 = L26_2.math
            L26_2 = L26_2.atan2
            L27_2 = L19_2
            L28_2 = L20_2
            L26_2 = L26_2(L27_2, L28_2)
            L27_2 = freezingObjects
            L27_2 = L27_2.objects
            L28_2 = {}
            L28_2.force = 0
            L28_2.x = L19_2
            L28_2.y = L20_2
            L29_2 = L17_2.pointX
            L28_2.pointX = L29_2
            L29_2 = L17_2.pointY
            L28_2.pointY = L29_2
            L29_2 = {}
            L30_2 = "P_ICICLE_"
            L31_2 = _G
            L31_2 = L31_2.string
            L31_2 = L31_2.format
            L32_2 = "%d"
            L33_2 = L21_2
            L31_2 = L31_2(L32_2, L33_2)
            L30_2 = L30_2 .. L31_2
            L29_2.sprite = L30_2
            L29_2.angle = L25_2
            L30_2 = L19_2 * L23_2
            L30_2 = L30_2 * 0.25
            L29_2.x = L30_2
            L30_2 = L20_2 * L24_2
            L30_2 = L30_2 * 0.25
            L29_2.y = L30_2
            L28_2.icicle = L29_2
            L29_2 = {}
            L28_2.icicles = L29_2
            L29_2 = _G
            L29_2 = L29_2.math
            L29_2 = L29_2.random
            L29_2 = L29_2()
            L28_2.timer = L29_2
            L27_2[L9_2] = L28_2
            L27_2 = 1
            L28_2 = L22_2
            L29_2 = 1
            for L30_2 = L27_2, L28_2, L29_2 do
              L31_2 = _G
              L31_2 = L31_2.math
              L31_2 = L31_2.random
              L32_2 = 1
              L33_2 = 3
              L31_2 = L31_2(L32_2, L33_2)
              L21_2 = L31_2
              L31_2 = _G
              L31_2 = L31_2.math
              L31_2 = L31_2.random
              L31_2 = L31_2()
              L31_2 = L31_2 * 0.4
              L32_2 = _G
              L32_2 = L32_2.math
              L32_2 = L32_2.random
              L32_2 = L32_2()
              L32_2 = L32_2 * 0.4
              L31_2 = L31_2 - L32_2
              L32_2 = blockTable
              L32_2 = L32_2.blocks
              L33_2 = L10_2.definition
              L32_2 = L32_2[L33_2]
              L32_2 = L32_2.type
              L32_2 = L32_2 == "polygon"
              L33_2 = freezingObjects
              L33_2 = L33_2.objects
              L33_2 = L33_2[L9_2]
              L33_2 = L33_2.icicles
              L34_2 = {}
              L35_2 = "P_ICICLE_"
              L36_2 = _G
              L36_2 = L36_2.string
              L36_2 = L36_2.format
              L37_2 = "%d"
              L38_2 = L21_2
              L36_2 = L36_2(L37_2, L38_2)
              L35_2 = L35_2 .. L36_2
              L34_2.sprite = L35_2
              L34_2.angle = L25_2
              L34_2.dm = L31_2
              L34_2.side = L32_2
              L33_2[L30_2] = L34_2
            end
          end
        end
      end
    end
    ::lbl_1362::
    L11_2 = L10_2.levelGoal
    if L11_2 then
      L11_2 = L10_2.frozenFromBomb
      L12_2 = true
      if L11_2 ~= L12_2 then
        L11_2 = L10_2.disableAnimations
        if L11_2 then
          L11_2 = L10_2.insideGravity
          if L11_2 then
            L11_2 = "currentState"
            L11_2 = L10_2[L11_2]
            if L11_2 == "frozenState" then
              L11_2 = "unfreezable"
              L11_2 = L10_2[L11_2]
              if not L11_2 then
                L11_2 = L10_2.spriteUnfreeze
                L10_2.sprite = L11_2
                L11_2 = L10_2.materialUnfreeze
                L10_2.material = L11_2
                L11_2 = false
                L10_2.disableAnimations = L11_2
                L11_2 = setSprite
                L12_2 = L9_2
                L13_2 = L10_2.sprite
                L11_2(L12_2, L13_2)
                L11_2 = 0
                L10_2.timeOutsideAtmosphere = L11_2
                L11_2 = freezingObjects
                L11_2 = L11_2.objects
                L11_2 = L11_2[L9_2]
                L12_2 = 0
                L11_2.timer = L12_2
                L11_2 = freezeObjects
                L12_2 = freezingObjects
                L12_2 = L12_2.objects
                L13_2 = 0
                L11_2(L12_2, L13_2)
                L11_2 = false
                L10_2.enteredState = L11_2
                L11_2 = setCurrentState
                L12_2 = L10_2
                L13_2 = "idleState"
                L11_2(L12_2, L13_2)
              end
            end
          end
        end
      end
    end
    L11_2 = L10_2.levelGoal
    if L11_2 then
      L11_2 = setCurrentState
      L12_2 = L10_2
      L13_2 = "idleState"
      L11_2(L12_2, L13_2)
    end
  end
  L6_2 = isPCVersion
  L6_2 = L6_2()
  L7_2 = updateEventCalls
  L8_2 = A1_2
  L7_2(L8_2)
  L7_2 = repopulationTimer
  L8_2 = 0
  if L7_2 > L8_2 then
    L7_2 = repopulationTimer
    L7_2 = L7_2 - A1_2
    repopulationTimer = L7_2
  else
    L7_2 = 0.1
    repopulationTimer = L7_2
    L7_2 = rePopulateWithRandomThemeSprites
    L7_2()
  end
  L7_2 = updateCalls
  L8_2 = nil
  if L7_2 ~= L8_2 then
    L7_2 = _G
    L7_2 = L7_2.pairs
    L8_2 = updateCalls
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = actions
      L13_2 = "actionName"
      L13_2 = L11_2[L13_2]
      L12_2 = L12_2[L13_2]
      L13_2 = nil
      if L12_2 ~= L13_2 then
        L12_2 = "params"
        L12_2 = L11_2[L12_2]
        L13_2 = nil
        if L12_2 == L13_2 then
          L12_2 = "params"
          L13_2 = {}
          L11_2[L12_2] = L13_2
        end
        L12_2 = "params"
        L12_2 = L11_2[L12_2]
        L13_2 = "dt"
        L12_2[L13_2] = A1_2
        L12_2 = _G
        L13_2 = "assert"
        L12_2 = L12_2[L13_2]
        L13_2 = actions
        L14_2 = "actionName"
        L14_2 = L11_2[L14_2]
        L13_2 = L13_2[L14_2]
        L14_2 = nil
        L13_2 = L13_2 ~= L14_2
        L14_2 = "Failed to find action "
        L15_2 = "actionName"
        L15_2 = L11_2[L15_2]
        L14_2 = L14_2 .. L15_2
        L12_2(L13_2, L14_2)
        L12_2 = actions
        L13_2 = "actionName"
        L13_2 = L11_2[L13_2]
        L12_2 = L12_2[L13_2]
        L13_2 = "action"
        L12_2 = L12_2[L13_2]
        L13_2 = "params"
        L13_2 = L11_2[L13_2]
        L12_2(L13_2)
      end
    end
  end
  L7_2 = freezingObjects
  L8_2 = nil
  if L7_2 ~= L8_2 then
    L7_2 = freezingObjects
    L7_2 = L7_2.timer
    L8_2 = 0
    if L7_2 < L8_2 then
    else
      L7_2 = freezingObjects
      L8_2 = freezingObjects
      L8_2 = L8_2.timer
      L8_2 = L8_2 - A1_2
      L7_2.timer = L8_2
      L7_2 = freezingObjects
      L8_2 = freezingObjects
      L8_2 = L8_2.sx
      L9_2 = 15
      L9_2 = A1_2 * L9_2
      L8_2 = L8_2 + L9_2
      L7_2.sx = L8_2
      L7_2 = freezingObjects
      L8_2 = freezingObjects
      L8_2 = L8_2.sy
      L9_2 = 15
      L9_2 = A1_2 * L9_2
      L8_2 = L8_2 + L9_2
      L7_2.sy = L8_2
    end
  end
  L7_2 = _G
  L7_2 = L7_2.pairs
  L8_2 = objects
  L9_2 = "pathItems"
  L8_2 = L8_2[L9_2]
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = "dots"
    L12_2 = L11_2[L12_2]
    if L12_2 then
      L12_2 = _G
      L13_2 = "ipairs"
      L12_2 = L12_2[L13_2]
      L13_2 = "dots"
      L13_2 = L11_2[L13_2]
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      for L15_2, L16_2 in L12_2, L13_2, L14_2 do
        L17_2 = L16_2.scale
        L18_2 = "targetScale"
        L18_2 = L16_2[L18_2]
        if L17_2 ~= L18_2 then
          L17_2 = "targetScale"
          L17_2 = L16_2[L17_2]
          L18_2 = L16_2.scale
          if L17_2 > L18_2 then
            L17_2 = L16_2.scale
            L18_2 = pathItemDefinition
            L19_2 = "openingScale"
            L18_2 = L18_2[L19_2]
            L19_2 = pathItemDefinition
            L19_2 = L19_2.scale
            L18_2 = L18_2 - L19_2
            L19_2 = pathItemDefinition
            L20_2 = "scalingTime"
            L19_2 = L19_2[L20_2]
            L18_2 = L18_2 / L19_2
            L18_2 = L18_2 * A1_2
            L17_2 = L17_2 + L18_2
            L16_2.scale = L17_2
            L17_2 = L16_2.scale
            L18_2 = "targetScale"
            L18_2 = L16_2[L18_2]
            if L17_2 > L18_2 then
              L17_2 = "targetScale"
              L17_2 = L16_2[L17_2]
              L16_2.scale = L17_2
              L17_2 = "targetScale"
              L18_2 = pathItemDefinition
              L18_2 = L18_2.scale
              L16_2[L17_2] = L18_2
            end
          else
            L17_2 = L16_2.scale
            L18_2 = pathItemDefinition
            L19_2 = "openingScale"
            L18_2 = L18_2[L19_2]
            L19_2 = pathItemDefinition
            L19_2 = L19_2.scale
            L18_2 = L18_2 - L19_2
            L19_2 = pathItemDefinition
            L20_2 = "scalingTime"
            L19_2 = L19_2[L20_2]
            L18_2 = L18_2 / L19_2
            L18_2 = L18_2 * A1_2
            L17_2 = L17_2 - L18_2
            L16_2.scale = L17_2
            L17_2 = L16_2.scale
            L18_2 = "targetScale"
            L18_2 = L16_2[L18_2]
            if L17_2 < L18_2 then
              L17_2 = "targetScale"
              L17_2 = L16_2[L17_2]
              L16_2.scale = L17_2
            end
          end
        end
      end
    end
  end
  L7_2 = g_showLevelOpenAnimation
  if L7_2 then
    L7_2 = levelOpenAnimationTimer
    if L7_2 then
      L7_2 = levelOpenAnimationTimer
      L7_2 = L7_2 - A1_2
      levelOpenAnimationTimer = L7_2
      L7_2 = g_showLevelOpenAnimationScrolled
      if not L7_2 then
        L7_2 = levelOpenAnimationTimer
        L8_2 = 1.5
        if L7_2 < L8_2 then
          L7_2 = print
          L8_2 = "Episode: "
          L9_2 = currentFolder
          L10_2 = ", level: "
          L11_2 = currentLevel
          L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
          L7_2(L8_2)
          L7_2 = true
          g_showLevelOpenAnimationScrolled = L7_2
          L7_2 = false
          L8_2 = _G
          L9_2 = "ipairs"
          L8_2 = L8_2[L9_2]
          L9_2 = actions
          L10_2 = "myPages"
          L9_2 = L9_2[L10_2]
          L10_2 = currentFolder
          L9_2 = L9_2[L10_2]
          L8_2, L9_2, L10_2 = L8_2(L9_2)
          for L11_2, L12_2 in L8_2, L9_2, L10_2 do
            L13_2 = currentLevel
            if L12_2 == L13_2 then
              L7_2 = true
              break
            end
          end
          if L7_2 then
            L8_2 = print
            L9_2 = "at edge, scrolling"
            L8_2(L9_2)
            L8_2 = moveToBirdCamera
            L9_2 = -500
            L8_2(L9_2)
          end
        end
      end
      L8_2 = A0_2
      L7_2 = A0_2.getChild
      L9_2 = levelOpenAnimationLevelButtonName
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = levelOpenAnimationTimer
      L9_2 = 0
      if L8_2 <= L9_2 then
        L8_2 = g_levelOpenAnimationComplete
        if not L8_2 then
          L8_2 = "openingAnimationTimer"
          L8_2 = L7_2[L8_2]
          if not L8_2 then
            L8_2 = print
            L9_2 = "Moving from level selection to level!"
            L8_2(L9_2)
            L8_2 = {}
            L9_2 = "startNumber"
            L10_2 = g_showLevelOpenAnimation
            L8_2[L9_2] = L10_2
            L9_2 = "episodeType"
            L10_2 = SettingsWrapper
            L12_2 = "getLastOpenedEpisodeType"
            L11_2 = L10_2
            L10_2 = L10_2[L12_2]
            L10_2 = L10_2(L11_2)
            L8_2[L9_2] = L10_2
            L9_2 = "cameraIndex"
            L10_2 = gameCamera
            L12_2 = "getCurrentCameraIndex"
            L11_2 = L10_2
            L10_2 = L10_2[L12_2]
            L10_2 = L10_2(L11_2)
            L8_2[L9_2] = L10_2
            L11_2 = "initializeTransition"
            L10_2 = A0_2
            L9_2 = A0_2[L11_2]
            L9_2(L10_2)
            L9_2 = addEventCall
            L10_2 = "loadLevelFromMenu"
            L11_2 = L8_2
            L12_2 = 0.1
            L9_2(L10_2, L11_2, L12_2)
            L9_2 = true
            g_levelOpenAnimationComplete = L9_2
          end
        end
      end
      L8_2 = 0
      L9_2 = 0
      levelOpenAnimationY = L9_2
      levelOpenAnimationX = L8_2
      L8_2 = levelOpenAnimationTimer
      if L8_2 then
        L8_2 = g_showLevelOpenAnimation
        L9_2 = objects
        L10_2 = "pathItems"
        L9_2 = L9_2[L10_2]
        L9_2 = #L9_2
        if L8_2 <= L9_2 then
          L8_2 = 0
          L9_2 = 1
          L10_2 = g_showLevelOpenAnimation
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = objects
            L14_2 = "pathItems"
            L13_2 = L13_2[L14_2]
            L13_2 = L13_2[L12_2]
            L14_2 = "pathItemInvisiblePoint"
            L13_2 = L13_2[L14_2]
            if L13_2 then
              L13_2 = 1
              L8_2 = L8_2 + L13_2
            end
          end
          L9_2 = nil
          L10_2 = _G
          L10_2 = L10_2.pairs
          L11_2 = objects
          L12_2 = "pathItems"
          L11_2 = L11_2[L12_2]
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          for L13_2, L14_2 in L10_2, L11_2, L12_2 do
            L15_2 = "alternativeStartNumber"
            L15_2 = L14_2[L15_2]
            if not L15_2 then
              L15_2 = "startNumber"
              L15_2 = L14_2[L15_2]
              L16_2 = g_showLevelOpenAnimation
              L16_2 = L16_2 + L8_2
              if L15_2 == L16_2 then
                L15_2 = g_showLevelOpenAnimationFromAlternativeRoute
                if not L15_2 then
                  goto lbl_1765
                end
                L15_2 = "isAlternativeRoute"
                L15_2 = L14_2[L15_2]
                if L15_2 then
                  goto lbl_1765
                end
              end
            end
            L15_2 = "alternativeStartNumber"
            L15_2 = L14_2[L15_2]
            if L15_2 then
              L15_2 = "alternativeStartNumber"
              L15_2 = L14_2[L15_2]
              L16_2 = g_showLevelOpenAnimation
              L16_2 = L16_2 + L8_2
              if L15_2 == L16_2 then
                L15_2 = g_showLevelOpenAnimationFromAlternativeRoute
                ::lbl_1765::
                if L15_2 then
                  L15_2 = "dots"
                  L9_2 = L14_2[L15_2]
                end
              end
            end
          end
          if L9_2 then
            L10_2 = #L9_2
            L11_2 = pathItemDefinition
            L12_2 = "transitionTime"
            L11_2 = L11_2[L12_2]
            L12_2 = 2
            L12_2 = L10_2 + L12_2
            L11_2 = L11_2 / L12_2
            L12_2 = _G
            L12_2 = L12_2.math
            L13_2 = "floor"
            L12_2 = L12_2[L13_2]
            L13_2 = pathItemDefinition
            L14_2 = "transitionTime"
            L13_2 = L13_2[L14_2]
            L14_2 = levelOpenAnimationTimer
            L13_2 = L13_2 - L14_2
            L13_2 = L13_2 / L11_2
            L12_2 = L12_2(L13_2)
            L13_2 = 0
            if L12_2 > L13_2 and L10_2 >= L12_2 then
              L13_2 = L9_2[L12_2]
              L14_2 = L13_2.sprite
              L15_2 = pathItemDefinition
              L16_2 = "lockedImage"
              L15_2 = L15_2[L16_2]
              if L14_2 == L15_2 then
                L14_2 = playAudio
                L15_2 = "small_collision"
                L14_2(L15_2)
                L14_2 = pathItemDefinition
                L15_2 = "openImage"
                L14_2 = L14_2[L15_2]
                L13_2.sprite = L14_2
                L14_2 = "targetScale"
                L15_2 = pathItemDefinition
                L16_2 = "openingScale"
                L15_2 = L15_2[L16_2]
                L13_2[L14_2] = L15_2
              end
            elseif L10_2 < L12_2 and L7_2 then
              L13_2 = "disabled"
              L13_2 = L7_2[L13_2]
              if L13_2 then
                L15_2 = "activateLevelButton"
                L14_2 = A0_2
                L13_2 = A0_2[L15_2]
                L15_2 = L7_2.name
                L13_2(L14_2, L15_2)
              end
            end
          end
        end
      end
    end
  end
  L7_2 = _G
  L7_2 = L7_2.pairs
  L8_2 = objects
  L8_2 = L8_2.world
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = "bubbleSoundTimer"
    L12_2 = L11_2[L12_2]
    if L12_2 then
      L12_2 = "bubbleSoundTimer"
      L13_2 = "bubbleSoundTimer"
      L13_2 = L11_2[L13_2]
      L13_2 = L13_2 - A1_2
      L11_2[L12_2] = L13_2
      L12_2 = "bubbleSoundTimer"
      L12_2 = L11_2[L12_2]
      L13_2 = 0
      if L12_2 <= L13_2 then
        L12_2 = "bubbleSoundTimer"
        L13_2 = nil
        L11_2[L12_2] = L13_2
        L12_2 = blockTable
        L12_2 = L12_2.blocks
        L13_2 = L11_2.definition
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.sounds
        L13_2 = "special_loop"
        L12_2 = L12_2[L13_2]
        if L12_2 then
          L12_2 = stopAudio
          L13_2 = blockTable
          L13_2 = L13_2.blocks
          L14_2 = L11_2.definition
          L13_2 = L13_2[L14_2]
          L13_2 = L13_2.sounds
          L14_2 = "special_loop"
          L13_2 = L13_2[L14_2]
          L12_2(L13_2)
        end
      end
    end
    L12_2 = "inBubble"
    L12_2 = L11_2[L12_2]
    if not L12_2 then
      L12_2 = "bubblePrimaryTarget"
      L12_2 = L11_2[L12_2]
      if not L12_2 then
        goto lbl_1979
      end
    end
    L12_2 = "bubbleBeamTimer"
    L12_2 = L11_2[L12_2]
    if L12_2 then
      L12_2 = "bubbleBeamTimer"
      L13_2 = "bubbleBeamTimer"
      L13_2 = L11_2[L13_2]
      L13_2 = L13_2 - A1_2
      L11_2[L12_2] = L13_2
      L12_2 = "bubbleBeamTimer"
      L12_2 = L11_2[L12_2]
      L13_2 = 0
      if L12_2 < L13_2 then
        L12_2 = "bubbleBeamPhase"
        L12_2 = L11_2[L12_2]
        L13_2 = 1
        if L12_2 == L13_2 then
          L12_2 = "destroyWhenBeamHits"
          L12_2 = L11_2[L12_2]
          if L12_2 then
            L12_2 = destroyObject
            L13_2 = L11_2.name
            L12_2(L13_2)
          else
            L12_2 = "bubbleBeamPhase"
            L13_2 = 2
            L11_2[L12_2] = L13_2
            L12_2 = nil
            L13_2 = "reticleName"
            L13_2 = L11_2[L13_2]
            if L13_2 then
              L13_2 = objects
              L13_2 = L13_2.world
              L14_2 = "reticleName"
              L14_2 = L11_2[L14_2]
              L12_2 = L13_2[L14_2]
            else
              L12_2 = L11_2
            end
            if L12_2 then
              L13_2 = blockTable
              L13_2 = L13_2.blocks
              L14_2 = L12_2.definition
              L13_2 = L13_2[L14_2]
              L14_2 = "bubbleBeamTimer"
              L15_2 = "bubbleBeamTimer"
              L15_2 = L11_2[L15_2]
              L16_2 = "specialtyBeamPhase2Time"
              L16_2 = L13_2[L16_2]
              L15_2 = L15_2 + L16_2
              L11_2[L14_2] = L15_2
            else
              L13_2 = "bubbleBeamTimer"
              L14_2 = nil
              L11_2[L13_2] = L14_2
            end
          end
        else
          L12_2 = "bubbleBeamTimer"
          L13_2 = nil
          L11_2[L12_2] = L13_2
        end
        L12_2 = "bubblePrimaryTarget"
        L12_2 = L11_2[L12_2]
        if L12_2 then
          L12_2 = "bubblePrimaryTarget"
          L13_2 = false
          L11_2[L12_2] = L13_2
        end
      end
    end
    L12_2 = "bubbleBeamAnimationTimer"
    L12_2 = L11_2[L12_2]
    if L12_2 then
      L12_2 = "bubbleBeamAnimationTimer"
      L13_2 = "bubbleBeamAnimationTimer"
      L13_2 = L11_2[L13_2]
      L13_2 = L13_2 + A1_2
      L11_2[L12_2] = L13_2
      L12_2 = "bubbleBeamAnimationTimer"
      L12_2 = L11_2[L12_2]
      L13_2 = 0.03
      if L12_2 > L13_2 then
        L12_2 = "bubbleBeamAnimationTimer"
        L13_2 = "bubbleBeamAnimationTimer"
        L13_2 = L11_2[L13_2]
        L14_2 = 0.03
        L13_2 = L13_2 - L14_2
        L11_2[L12_2] = L13_2
        L12_2 = "bubbleBeamAnimationFrame"
        L13_2 = "bubbleBeamAnimationFrame"
        L13_2 = L11_2[L13_2]
        L14_2 = 1
        L13_2 = L13_2 + L14_2
        L11_2[L12_2] = L13_2
        L12_2 = "bubbleBeamAnimationFrame"
        L12_2 = L11_2[L12_2]
        L13_2 = 4
        if L12_2 > L13_2 then
          L12_2 = "bubbleBeamAnimationFrame"
          L13_2 = 1
          L11_2[L12_2] = L13_2
        end
      end
    end
    ::lbl_1979::
    L12_2 = "inBubble"
    L12_2 = L11_2[L12_2]
    if L12_2 then
      L12_2 = "bubbleAntiGravityTimer"
      L12_2 = L11_2[L12_2]
      if L12_2 then
        L12_2 = "bubbleAntiGravityTimer"
        L12_2 = L11_2[L12_2]
        L13_2 = 0
        if L12_2 > L13_2 then
          L12_2 = "bubbleAntiGravityTimer"
          L13_2 = "bubbleAntiGravityTimer"
          L13_2 = L11_2[L13_2]
          L13_2 = L13_2 - A1_2
          L11_2[L12_2] = L13_2
          L12_2 = objects
          L12_2 = L12_2.worldGravity
          if L12_2 then
            L12_2 = "velocity"
            L12_2 = L11_2[L12_2]
            L13_2 = "specialtyMaximumVelocity"
            L13_2 = L11_2[L13_2]
            if L12_2 < L13_2 then
              L12_2 = "gravityFilterCategory"
              L12_2 = L11_2[L12_2]
              if L12_2 then
                L12_2 = "gravityFilterCategory"
                L12_2 = L11_2[L12_2]
                L13_2 = "IGNOREGRAVITY"
                if L12_2 ~= L13_2 then
                  L12_2 = "gravityFilterCategory"
                  L12_2 = L11_2[L12_2]
                  L13_2 = "FORCE_OBJECT"
                  if L12_2 ~= L13_2 then
                    L12_2 = "gravityFilterCategory"
                    L12_2 = L11_2[L12_2]
                    L13_2 = "YODA_FORCE_OBJECT"
                    if L12_2 ~= L13_2 then
                      L12_2 = "gravityFilterCategory"
                      L12_2 = L11_2[L12_2]
                      L13_2 = "HOVERING_OBJECT"
                      if L12_2 ~= L13_2 then
                        L12_2 = applyForce
                        L13_2 = L11_2.name
                        L14_2 = 0
                        L15_2 = objects
                        L15_2 = L15_2.worldGravity
                        L15_2 = -L15_2
                        L16_2 = "mass"
                        L16_2 = L11_2[L16_2]
                        L15_2 = L15_2 * L16_2
                        L16_2 = "specialtyClassicGravityMultiplier"
                        L16_2 = L11_2[L16_2]
                        L15_2 = L15_2 * L16_2
                        L16_2 = L11_2.x
                        L17_2 = L11_2.y
                        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
                      end
                    end
                  end
                end
              end
            end
          end
        else
          L12_2 = flyingBird
          if L12_2 then
            L12_2 = isAudioPlaying
            L13_2 = blockTable
            L13_2 = L13_2.blocks
            L14_2 = flyingBird
            L14_2 = L14_2.definition
            L13_2 = L13_2[L14_2]
            L13_2 = L13_2.sounds
            L14_2 = "special_loop"
            L13_2 = L13_2[L14_2]
            L12_2 = L12_2(L13_2)
            if L12_2 then
              L12_2 = stopAudio
              L13_2 = blockTable
              L13_2 = L13_2.blocks
              L14_2 = flyingBird
              L14_2 = L14_2.definition
              L13_2 = L13_2[L14_2]
              L13_2 = L13_2.sounds
              L14_2 = "special_loop"
              L13_2 = L13_2[L14_2]
              L12_2(L13_2)
            end
          end
          L12_2 = "bubbleAntiGravityTimer"
          L13_2 = nil
          L11_2[L12_2] = L13_2
          L12_2 = "inBubble"
          L13_2 = nil
          L11_2[L12_2] = L13_2
          L12_2 = setRevertGravityWithMultiplier
          L13_2 = L11_2.name
          L14_2 = false
          L15_2 = 0
          L16_2 = 0
          L12_2(L13_2, L14_2, L15_2, L16_2)
          L12_2 = "controllable"
          L12_2 = L11_2[L12_2]
          if L12_2 then
            L12_2 = removeBird
            L13_2 = L11_2
            L12_2(L13_2)
            L11_2 = nil
          end
        end
      end
    end
    L12_2 = "isAffectedByForceTimer"
    L12_2 = L11_2[L12_2]
    L13_2 = nil
    if L12_2 ~= L13_2 then
      L12_2 = "isAffectedByForceTimer"
      L12_2 = L11_2[L12_2]
      L13_2 = 0
      if L12_2 > L13_2 then
        L12_2 = "isAffectedByForceTimer"
        L13_2 = "isAffectedByForceTimer"
        L13_2 = L11_2[L13_2]
        L13_2 = L13_2 - A1_2
        L11_2[L12_2] = L13_2
        L12_2 = "isAffectedByForceTimer"
        L12_2 = L11_2[L12_2]
        L13_2 = 0
        if L12_2 <= L13_2 then
          L12_2 = "isAffectedByForceTimer"
          L13_2 = nil
          L11_2[L12_2] = L13_2
        end
      end
    end
    L12_2 = "isHeldByForceTimer"
    L12_2 = L11_2[L12_2]
    L13_2 = nil
    if L12_2 ~= L13_2 then
      L12_2 = "isHeldByForceTimer"
      L12_2 = L11_2[L12_2]
      L13_2 = 0
      if L12_2 > L13_2 then
        L12_2 = "isHeldByForceTimer"
        L13_2 = "isHeldByForceTimer"
        L13_2 = L11_2[L13_2]
        L13_2 = L13_2 - A1_2
        L11_2[L12_2] = L13_2
        L12_2 = "isHeldByForceTimer"
        L12_2 = L11_2[L12_2]
        L13_2 = 0
        if L12_2 <= L13_2 then
          L12_2 = "isHeldByForceTimer"
          L13_2 = nil
          L11_2[L12_2] = L13_2
        end
      end
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "shop"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "pauseButton"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "characterButton"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "characterMenu"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = isPCVersion
  L11_2 = L11_2()
  if L11_2 then
    L11_2 = isInGameMode
    L11_2 = L11_2()
    if L11_2 then
      L11_2 = g_laserBirdCursorException
      if not L11_2 then
        L11_2 = selectedBird
        L12_2 = nil
        if L11_2 == L12_2 then
          L11_2 = nil
          if L8_2 ~= L11_2 then
            L13_2 = "hitTest"
            L12_2 = L8_2
            L11_2 = L8_2[L13_2]
            L13_2 = cursor
            L13_2 = L13_2.x
            L14_2 = cursor
            L14_2 = L14_2.y
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            if L11_2 then
              goto lbl_2238
            end
          end
          L11_2 = nil
          if L7_2 ~= L11_2 then
            L13_2 = "hitTest"
            L12_2 = L7_2
            L11_2 = L7_2[L13_2]
            L13_2 = cursor
            L13_2 = L13_2.x
            L14_2 = cursor
            L14_2 = L14_2.y
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            if L11_2 then
              goto lbl_2238
            end
          end
          L11_2 = nil
          if L9_2 ~= L11_2 then
            L13_2 = "hitTest"
            L12_2 = L9_2
            L11_2 = L9_2[L13_2]
            L13_2 = cursor
            L13_2 = L13_2.x
            L14_2 = cursor
            L14_2 = L14_2.y
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            if L11_2 then
              goto lbl_2238
            end
          end
          L11_2 = nil
          if L10_2 ~= L11_2 then
            L13_2 = "isPosInside"
            L12_2 = L10_2
            L11_2 = L10_2[L13_2]
            L13_2 = cursor
            L13_2 = L13_2.x
            L14_2 = cursor
            L14_2 = L14_2.y
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            if L11_2 then
              goto lbl_2238
            end
          end
          L11_2 = flyingBird
          L12_2 = nil
          if L11_2 ~= L12_2 then
            L11_2 = birdSpecialtyAvailable
            if L11_2 then
              L11_2 = birdSpecialtyTargetable
              L12_2 = flyingBird
              L12_2 = L12_2.name
              L11_2 = L11_2(L12_2)
              if L11_2 then
                goto lbl_2238
              end
            end
          end
        end
        L11_2 = isKeyHold
        L12_2 = "LBUTTON"
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = "CURSOR_HAND_GRAB"
          g_currentCursorName = L11_2
        else
          L11_2 = "CURSOR_HAND_HOVER"
          g_currentCursorName = L11_2
        end
      end
    end
  end
  ::lbl_2238::
  L11_2 = true
  if L6_2 == L11_2 then
    L11_2 = updatePCMouseDragging
    L12_2 = A1_2
    L13_2 = A2_2
    L11_2(L12_2, L13_2)
    L11_2 = isInGameMode
    L11_2 = L11_2()
    if L11_2 then
      L11_2 = isLevelEnded
      L11_2 = L11_2()
      if not L11_2 then
        L11_2 = updatePCCameraPanning
        L11_2()
      end
    end
    L11_2 = rubberBandLength
    L12_2 = 0.1
    if L11_2 < L12_2 then
      L11_2 = clearAimingAid
      L12_2 = 1
      L11_2(L12_2)
    end
  end
  L11_2 = "currentFrame"
  L12_2 = "currentFrame"
  L12_2 = A0_2[L12_2]
  L13_2 = 1
  L12_2 = L12_2 + L13_2
  A0_2[L11_2] = L12_2
  L11_2 = updateAnimations
  L12_2 = A1_2
  L11_2(L12_2)
  L11_2 = oldCursorWorld
  L12_2 = cursorWorld
  L12_2 = L12_2.x
  L11_2.x = L12_2
  L11_2 = oldCursorWorld
  L12_2 = cursorWorld
  L12_2 = L12_2.y
  L11_2.y = L12_2
  L11_2 = cursorPhysics
  L12_2 = cursorPhysics
  L13_2 = screenToPhysicsTransform
  L14_2 = cursor
  L14_2 = L14_2.x
  L15_2 = cursor
  L15_2 = L15_2.y
  L13_2, L14_2 = L13_2(L14_2, L15_2)
  L12_2.y = L14_2
  L11_2.x = L13_2
  L11_2 = cursorWorld
  L12_2 = cursorWorld
  L13_2 = screenToWorldTransform
  L14_2 = cursor
  L14_2 = L14_2.x
  L15_2 = cursor
  L15_2 = L15_2.y
  L13_2, L14_2 = L13_2(L14_2, L15_2)
  L12_2.y = L14_2
  L11_2.x = L13_2
  L11_2 = lastTimeSetDCursor
  L11_2 = A2_2 - L11_2
  L12_2 = 0.03
  if L11_2 > L12_2 then
    L11_2 = delayedCursorPhysics
    L12_2 = delayedCursorPhysics
    L13_2 = cursorPhysics
    L13_2 = L13_2.x
    L14_2 = cursorPhysics
    L14_2 = L14_2.y
    L12_2.y = L14_2
    L11_2.x = L13_2
    L11_2 = previousDelayedCursorPhysics
    L12_2 = previousDelayedCursorPhysics
    L13_2 = previousCursorPoint
    L13_2 = L13_2.x
    L14_2 = previousCursorPoint
    L14_2 = L14_2.y
    L12_2.y = L14_2
    L11_2.x = L13_2
    lastTimeSetDCursor = A2_2
  end
  L11_2 = false
  rightSweep = L11_2
  L11_2 = false
  leftSweep = L11_2
  L11_2 = quadClickTimer
  L11_2 = L11_2 - A1_2
  quadClickTimer = L11_2
  L11_2 = keyPressed
  L12_2 = "ESCAPE"
  L11_2 = L11_2[L12_2]
  if L11_2 then
    L11_2 = releaseBuild
    if not L11_2 then
      L11_2 = startedFromEditor
      if L11_2 then
        L11_2 = setEditing
        L12_2 = true
        L11_2(L12_2)
        L11_2 = setPhysicsEnabled
        L12_2 = false
        L11_2(L12_2)
        L11_2 = eventManager
        L13_2 = "notify"
        L12_2 = L11_2
        L11_2 = L11_2[L13_2]
        L13_2 = {}
        L14_2 = "id"
        L15_2 = events
        L16_2 = "EID_CHANGE_SCENE"
        L15_2 = L15_2[L16_2]
        L13_2[L14_2] = L15_2
        L14_2 = "target"
        L15_2 = "editorScene"
        L13_2[L14_2] = L15_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L11_2 = isPCVersion
  L11_2 = L11_2()
  if not L11_2 then
    L11_2 = keyPressed
    L12_2 = "F9"
    L11_2 = L11_2[L12_2]
    if L11_2 then
      L11_2 = releaseBuild
      if not L11_2 then
        L11_2 = initializeEventSystem
        L11_2()
        L11_2 = startedFromEditor
        if not L11_2 then
          L11_2 = initializeGameMenus
          L11_2()
        end
        L11_2 = false
        g_explodingBomb = L11_2
        L11_2 = setLevelLoadingAfterRestartFromGame
        L11_2()
        return
      end
    end
  end
  L11_2 = levelStartTimer
  L12_2 = 0
  if L11_2 == L12_2 then
    L11_2 = levelStartTimer
    L12_2 = 0.01
    L11_2 = L11_2 + L12_2
    levelStartTimer = L11_2
    L11_2 = blockTable
    L12_2 = "themes"
    L11_2 = L11_2[L12_2]
    L12_2 = currentTheme
    L11_2 = L11_2[L12_2]
    L12_2 = "levelStartSound"
    L11_2 = L11_2[L12_2]
    L12_2 = isInGameMode
    L12_2 = L12_2()
    if L12_2 then
      L12_2 = getLevelMetadata
      L13_2 = levelName
      L12_2 = L12_2(L13_2)
      L13_2 = "dontPlayLevelStartSound"
      L12_2 = L12_2[L13_2]
      if not L12_2 and L11_2 and L11_2 ~= "" then
        L12_2 = res
        L12_2 = L12_2.playAudio
        L13_2 = L11_2
        L12_2(L13_2)
      end
    end
    L12_2 = 0
    currentBirdIndex = L12_2
    L12_2 = true
    fillInNextBird = L12_2
  end
  L11_2 = keyPressed
  L12_2 = "MBUTTON"
  L11_2 = L11_2[L12_2]
  if L11_2 then
    L11_2 = showEditor
    if L11_2 then
      L11_2 = setWorldScale
      L12_2 = 1
      L11_2(L12_2)
      L11_2 = 1
      worldScale = L11_2
    end
  end
  L11_2 = gameTimer
  L11_2 = L11_2 + A1_2
  gameTimer = L11_2
  L11_2 = g_eventSystemResetDone
  if L11_2 then
    L11_2 = gotoLevelEnding
    L11_2()
  end
  L11_2 = isInGameMode
  L11_2 = L11_2()
  if L11_2 then
    L11_2 = levelCompleteTimer
    L12_2 = 0
    if L11_2 > L12_2 then
      L11_2 = updateLevelEnding
      L12_2 = A1_2
      L11_2(L12_2)
    else
      L11_2 = isShopClosed
      L11_2 = L11_2()
      if L11_2 then
        L11_2 = quadClick
        L12_2 = true
        if L11_2 == L12_2 then
          L11_2 = cheatsEnabled
          L12_2 = true
          if L11_2 == L12_2 then
            L11_2 = true
            g_threeStarsCheat = L11_2
          end
        end
        L11_2 = levelCompleted
        if not L11_2 then
          L11_2 = checkLevelComplete
          L12_2 = A1_2
          L11_2 = L11_2(L12_2)
          if not L11_2 then
            L11_2 = g_threeStarsCheat
            L12_2 = true
            if L11_2 ~= L12_2 then
              goto lbl_2495
            end
            L11_2 = cheatsEnabled
            L12_2 = true
            if L11_2 ~= L12_2 then
              goto lbl_2495
            end
          end
          L11_2 = initLevelComplete
          L11_2()
          L11_2 = eventManager
          L13_2 = "notify"
          L12_2 = L11_2
          L11_2 = L11_2[L13_2]
          L13_2 = {}
          L14_2 = "id"
          L15_2 = events
          L16_2 = "EID_LEVEL_WILL_END"
          L15_2 = L15_2[L16_2]
          L13_2[L14_2] = L15_2
          L11_2(L12_2, L13_2)
        end
        ::lbl_2495::
        L11_2 = checkLevelFailed
        L11_2 = L11_2()
        if L11_2 then
          L11_2 = g_levelFailedDisabled
          if not L11_2 then
            L11_2 = initLevelFailed
            L12_2 = A1_2
            L11_2(L12_2)
          end
        end
      end
    end
    L11_2 = tapStarted
    if L11_2 then
      L11_2 = tapTimer
      L11_2 = L11_2 + A1_2
      tapTimer = L11_2
      L11_2 = tapTimer
      L12_2 = 0.25
      if L11_2 > L12_2 then
        L11_2 = tapCount
        L12_2 = 1
        if L11_2 == L12_2 then
          L11_2 = gameCamera
          L12_2 = "cameraAnimationSliderTarget"
          L11_2 = L11_2[L12_2]
          L12_2 = 1
          if L11_2 == L12_2 then
            L11_2 = birdSpecialtyAvailable
            L12_2 = false
            if L11_2 == L12_2 then
              L11_2 = gameCamera
              L13_2 = "getNumOfCameraTargetObjects"
              L12_2 = L11_2
              L11_2 = L11_2[L13_2]
              L11_2 = L11_2(L12_2)
              L12_2 = 0
              if L11_2 == L12_2 then
                L11_2 = g_usingGestureControls
                if not L11_2 then
                  L11_2 = vLength
                  L12_2 = objects
                  L13_2 = "castleCameraData"
                  L12_2 = L12_2[L13_2]
                  L13_2 = deviceModel
                  L12_2 = L12_2[L13_2]
                  L13_2 = "px"
                  L12_2 = L12_2[L13_2]
                  L13_2 = objects
                  L14_2 = "birdCameraData"
                  L13_2 = L13_2[L14_2]
                  L14_2 = deviceModel
                  L13_2 = L13_2[L14_2]
                  L14_2 = "px"
                  L13_2 = L13_2[L14_2]
                  L12_2 = L12_2 - L13_2
                  L13_2 = objects
                  L14_2 = "castleCameraData"
                  L13_2 = L13_2[L14_2]
                  L14_2 = deviceModel
                  L13_2 = L13_2[L14_2]
                  L14_2 = "py"
                  L13_2 = L13_2[L14_2]
                  L14_2 = objects
                  L15_2 = "birdCameraData"
                  L14_2 = L14_2[L15_2]
                  L15_2 = deviceModel
                  L14_2 = L14_2[L15_2]
                  L15_2 = "py"
                  L14_2 = L14_2[L15_2]
                  L13_2 = L13_2 - L14_2
                  L11_2 = L11_2(L12_2, L13_2)
                  L12_2 = moveToBirdCamera
                  L13_2 = L11_2
                  L12_2(L13_2)
                  L12_2 = nil
                  flyingBird = L12_2
                end
              end
            end
          end
        end
        L11_2 = tapCount
        L12_2 = 2
        if L11_2 == L12_2 then
          L11_2 = _G
          L11_2 = L11_2.math
          L12_2 = "max"
          L11_2 = L11_2[L12_2]
          L12_2 = objects
          L13_2 = "castleCameraData"
          L12_2 = L12_2[L13_2]
          L13_2 = deviceModel
          L12_2 = L12_2[L13_2]
          L12_2 = L12_2.sx
          L13_2 = objects
          L14_2 = "birdCameraData"
          L13_2 = L13_2[L14_2]
          L14_2 = deviceModel
          L13_2 = L13_2[L14_2]
          L13_2 = L13_2.sx
          L11_2 = L11_2(L12_2, L13_2)
          L12_2 = gameCamera
          L14_2 = "setZoomScale"
          L13_2 = L12_2
          L12_2 = L12_2[L14_2]
          L14_2 = L11_2
          L12_2(L13_2, L14_2)
        end
        L11_2 = 0
        tapTimer = L11_2
        L11_2 = 0
        tapCount = L11_2
        L11_2 = false
        tapStarted = L11_2
      end
    end
  end
  L11_2 = physicsToScreenTransform
  L12_2 = levelStartPosition
  L12_2 = L12_2.x
  L13_2 = levelStartPosition
  L13_2 = L13_2.y
  L11_2, L12_2 = L11_2(L12_2, L13_2)
  L13_2 = 0
  if not (L11_2 < L13_2) then
    L13_2 = 0
    if not (L12_2 < L13_2) then
      L13_2 = screenWidth
      if not (L11_2 > L13_2) then
        L13_2 = screenHeight
        if not (L12_2 > L13_2) then
          goto lbl_2628
        end
      end
    end
  end
  L13_2 = cancelBirdDrag
  L13_2()
  ::lbl_2628::
  L13_2 = flyingBird
  L14_2 = nil
  if L13_2 ~= L14_2 then
    L13_2 = flyingBird
    L13_2 = L13_2.hasCollided
    if not L13_2 then
      L13_2 = isKeyHold
      L14_2 = "LBUTTON"
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = levelCompleted
        if not L13_2 then
          L13_2 = getObjectDefinition
          L14_2 = flyingBird
          L14_2 = L14_2.name
          L13_2 = L13_2(L14_2)
          L14_2 = "specialty"
          L14_2 = L13_2[L14_2]
          birdSpecialty = L14_2
        end
      end
    end
  end
  L13_2 = birdSpecialtyAvailable
  if L13_2 then
    L13_2 = g_usingGestureControls
    if L13_2 then
      goto lbl_2659
    end
  end
  L13_2 = false
  g_laserGestureMode = L13_2
  ::lbl_2659::
  L13_2 = g_laserGestureMode
  if L13_2 then
    L13_2 = laser_cursor
    L14_2 = _G
    L14_2 = L14_2.math
    L15_2 = "min"
    L14_2 = L14_2[L15_2]
    L15_2 = screenWidth
    L16_2 = _G
    L16_2 = L16_2.math
    L17_2 = "max"
    L16_2 = L16_2[L17_2]
    L17_2 = 0
    L18_2 = laser_cursor
    L18_2 = L18_2.x
    L19_2 = cursor
    L19_2 = L19_2.x
    L18_2 = L18_2 + L19_2
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L16_2(L17_2, L18_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
    L13_2.x = L14_2
    L13_2 = laser_cursor
    L14_2 = _G
    L14_2 = L14_2.math
    L15_2 = "min"
    L14_2 = L14_2[L15_2]
    L15_2 = screenHeight
    L16_2 = _G
    L16_2 = L16_2.math
    L17_2 = "max"
    L16_2 = L16_2[L17_2]
    L17_2 = 0
    L18_2 = laser_cursor
    L18_2 = L18_2.y
    L19_2 = cursor
    L19_2 = L19_2.y
    L18_2 = L18_2 + L19_2
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L16_2(L17_2, L18_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
    L13_2.y = L14_2
  end
  L13_2 = false
  L14_2 = isKeyPressed
  L15_2 = "LBUTTON"
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = g_usingGestureControls
    if not L14_2 then
      goto lbl_3556
    end
    L14_2 = g_laserGestureMode
    if L14_2 then
      goto lbl_3556
    end
    L14_2 = touchcount
    L15_2 = 1
    if L14_2 ~= L15_2 then
      goto lbl_3556
    end
  end
  L14_2 = levelCompleted
  if not L14_2 then
    L14_2 = g_refusedDragTargetting
    L15_2 = true
    if L14_2 ~= L15_2 then
      L14_2 = draggingStartPosPhysics
      L15_2 = cursorPhysics
      L15_2 = L15_2.x
      L14_2.x = L15_2
      L14_2 = draggingStartPosPhysics
      L15_2 = cursorPhysics
      L15_2 = L15_2.y
      L14_2.y = L15_2
      L14_2 = draggingStartPosScreen
      L15_2 = cursor
      L15_2 = L15_2.x
      L14_2.x = L15_2
      L14_2 = draggingStartPosScreen
      L15_2 = cursor
      L15_2 = L15_2.y
      L14_2.y = L15_2
      L14_2 = oldCursor
      L15_2 = cursor
      L15_2 = L15_2.x
      L14_2.x = L15_2
      L14_2 = oldCursor
      L15_2 = cursor
      L15_2 = L15_2.y
      L14_2.y = L15_2
      L14_2 = selectedBird
      L15_2 = nil
      if L14_2 == L15_2 then
        L14_2 = delayedCursorPhysics
        L15_2 = cursorPhysics
        L15_2 = L15_2.x
        L14_2.x = L15_2
        L14_2 = delayedCursorPhysics
        L15_2 = cursorPhysics
        L15_2 = L15_2.y
        L14_2.y = L15_2
      end
      L14_2 = flyingBird
      L15_2 = nil
      if L14_2 ~= L15_2 then
        L14_2 = birdSpecialtyAvailable
        if L14_2 then
          L14_2 = true
          birdSpecialtyUsed = L14_2
          L13_2 = true
          L14_2 = false
          g_touch_released_after_specialty = L14_2
          L14_2 = false
          birdSpecialtyAvailable = L14_2
          L14_2 = true
          g_laserBirdCursorException = L14_2
          L14_2 = getObjectDefinition
          L15_2 = flyingBird
          L15_2 = L15_2.name
          L14_2 = L14_2(L15_2)
          L15_2 = "specialty"
          L15_2 = L14_2[L15_2]
          birdSpecialty = L15_2
          L15_2 = screenToPhysicsTransform
          L16_2 = cursor
          L16_2 = L16_2.x
          L17_2 = cursor
          L17_2 = L17_2.y
          L15_2, L16_2 = L15_2(L16_2, L17_2)
          L17_2 = g_laserGestureMode
          if L17_2 then
            L17_2 = false
            g_laserGestureMode = L17_2
            L17_2 = screenToPhysicsTransform
            L18_2 = laser_cursor
            L18_2 = L18_2.x
            L19_2 = laser_cursor
            L19_2 = L19_2.y
            L17_2, L18_2 = L17_2(L18_2, L19_2)
            L16_2 = L18_2
            L15_2 = L17_2
          end
          L17_2 = 1
          clearAimingAidTimer = L17_2
          L17_2 = true
          L18_2 = true
          L19_2 = true
          L20_2 = addBirdSpecialParticles
          L21_2 = flyingBird
          L20_2(L21_2)
          L20_2 = L14_2.sounds
          if L20_2 then
            L20_2 = L14_2.sounds
            L21_2 = "special"
            L20_2 = L20_2[L21_2]
            if L20_2 then
              L20_2 = flyingBird
              L21_2 = "tongueActivated"
              L20_2 = L20_2[L21_2]
              if not L20_2 then
                L20_2 = playAudio
                L21_2 = L14_2.sounds
                L22_2 = "special"
                L21_2 = L21_2[L22_2]
                L20_2(L21_2)
              end
            end
          end
          L20_2 = "sprites"
          L20_2 = L14_2[L20_2]
          L21_2 = "action"
          L20_2 = L20_2[L21_2]
          if L20_2 then
            L20_2 = setSprite
            L21_2 = flyingBird
            L21_2 = L21_2.name
            L22_2 = "sprites"
            L22_2 = L14_2[L22_2]
            L23_2 = "action"
            L22_2 = L22_2[L23_2]
            L20_2(L21_2, L22_2)
          end
          L20_2 = actions
          L21_2 = "handleStateChange"
          L20_2 = L20_2[L21_2]
          L21_2 = flyingBird
          L21_2 = L21_2.name
          L22_2 = "states"
          L22_2 = L14_2[L22_2]
          if L22_2 then
            L22_2 = "states"
            L22_2 = L14_2[L22_2]
            L23_2 = "action"
            L22_2 = L22_2[L23_2]
          end
          L20_2(L21_2, L22_2)
          L20_2 = flyingBird
          L20_2 = L20_2.x
          L21_2 = flyingBird
          L21_2 = L21_2.y
          L22_2 = 0
          L23_2 = "onSpecialtyActivated"
          L23_2 = L14_2[L23_2]
          if L23_2 then
            L23_2 = _G
            L23_2 = L23_2.type
            L24_2 = "onSpecialtyActivated"
            L24_2 = L14_2[L24_2]
            L23_2 = L23_2(L24_2)
            L24_2 = "table"
            if L23_2 == L24_2 then
              L23_2 = _G
              L24_2 = "ipairs"
              L23_2 = L23_2[L24_2]
              L24_2 = "onSpecialtyActivated"
              L24_2 = L14_2[L24_2]
              L23_2, L24_2, L25_2 = L23_2(L24_2)
              for L26_2, L27_2 in L23_2, L24_2, L25_2 do
                L28_2 = fireAction
                L29_2 = L27_2
                L30_2 = {}
                L31_2 = flyingBird
                L31_2 = L31_2.name
                L30_2.name = L31_2
                L31_2 = "dt"
                L30_2[L31_2] = A1_2
                L31_2 = "xPos"
                L30_2[L31_2] = L15_2
                L31_2 = "yPos"
                L30_2[L31_2] = L16_2
                L28_2(L29_2, L30_2)
              end
            else
              L23_2 = fireAction
              L24_2 = "onSpecialtyActivated"
              L24_2 = L14_2[L24_2]
              L25_2 = {}
              L26_2 = flyingBird
              L26_2 = L26_2.name
              L25_2.name = L26_2
              L26_2 = "dt"
              L25_2[L26_2] = A1_2
              L26_2 = "xPos"
              L25_2[L26_2] = L15_2
              L26_2 = "yPos"
              L25_2[L26_2] = L16_2
              L23_2(L24_2, L25_2)
            end
          end
          L23_2 = birdSpecialty
          L24_2 = "BOMB"
          if L23_2 == L24_2 then
            L23_2 = "forceBomb"
            L23_2 = L14_2[L23_2]
            if L23_2 then
              L23_2 = "forceBombTargetWithClick"
              L23_2 = L14_2[L23_2]
              if L23_2 then
                L23_2 = setRotation
                L24_2 = flyingBird
                L24_2 = L24_2.name
                L25_2 = _G
                L25_2 = L25_2.math
                L25_2 = L25_2.atan2
                L26_2 = flyingBird
                L26_2 = L26_2.y
                L26_2 = L16_2 - L26_2
                L27_2 = flyingBird
                L27_2 = L27_2.x
                L27_2 = L15_2 - L27_2
                L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L25_2(L26_2, L27_2)
                L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
                L23_2 = getAngle
                L24_2 = flyingBird
                L24_2 = L24_2.name
                L23_2 = L23_2(L24_2)
                L22_2 = L23_2
              end
              L23_2 = flyingBird
              L24_2 = "ignoreBomb"
              L25_2 = true
              L23_2[L24_2] = L25_2
              L23_2 = flyingBird
              L24_2 = "bombTimer"
              L25_2 = nil
              L23_2[L24_2] = L25_2
              L23_2 = flyingBird
              L24_2 = "rotateWhileFlying"
              L25_2 = false
              L23_2[L24_2] = L25_2
            end
            L23_2 = fireAction
            L24_2 = "useBombSpecialty"
            L25_2 = {}
            L26_2 = flyingBird
            L26_2 = L26_2.name
            L25_2.name = L26_2
            L26_2 = "specialty"
            L27_2 = birdSpecialty
            L25_2[L26_2] = L27_2
            L26_2 = "dt"
            L25_2[L26_2] = A1_2
            L23_2(L24_2, L25_2)
          else
            L23_2 = birdSpecialty
            L24_2 = "SWORD"
            if L23_2 == L24_2 then
              L23_2 = fireAction
              L24_2 = "useSwordSpecialty"
              L25_2 = {}
              L26_2 = flyingBird
              L26_2 = L26_2.name
              L25_2.name = L26_2
              L26_2 = "specialty"
              L27_2 = birdSpecialty
              L25_2[L26_2] = L27_2
              L26_2 = "dt"
              L25_2[L26_2] = A1_2
              L23_2(L24_2, L25_2)
            else
              L23_2 = birdSpecialty
              L24_2 = "MULTISWORD"
              if L23_2 == L24_2 then
                L23_2 = fireAction
                L24_2 = "useMultiSwordSpecialty"
                L25_2 = {}
                L26_2 = flyingBird
                L26_2 = L26_2.name
                L25_2.name = L26_2
                L26_2 = "dt"
                L25_2[L26_2] = A1_2
                L23_2(L24_2, L25_2)
              else
                L23_2 = birdSpecialty
                L24_2 = "YODA_SWORD"
                if L23_2 == L24_2 then
                  L23_2 = fireAction
                  L24_2 = "useYodaSpecialty"
                  L25_2 = {}
                  L26_2 = flyingBird
                  L26_2 = L26_2.name
                  L25_2.name = L26_2
                  L26_2 = "specialty"
                  L27_2 = birdSpecialty
                  L25_2[L26_2] = L27_2
                  L26_2 = "dt"
                  L25_2[L26_2] = A1_2
                  L23_2(L24_2, L25_2)
                else
                  L23_2 = birdSpecialty
                  L24_2 = "SPLIT_YODA_SWORD"
                  if L23_2 == L24_2 then
                    L23_2 = fireAction
                    L24_2 = "useSplitSpinSpecialty"
                    L25_2 = {}
                    L26_2 = flyingBird
                    L26_2 = L26_2.name
                    L25_2.name = L26_2
                    L26_2 = "dt"
                    L25_2[L26_2] = A1_2
                    L23_2(L24_2, L25_2)
                  else
                    L23_2 = birdSpecialty
                    L24_2 = "GRAVITY_DISRUPTOR"
                    if L23_2 == L24_2 then
                      L23_2 = setRotation
                      L24_2 = flyingBird
                      L24_2 = L24_2.name
                      L25_2 = _G
                      L25_2 = L25_2.math
                      L25_2 = L25_2.atan2
                      L26_2 = flyingBird
                      L26_2 = L26_2.y
                      L26_2 = L16_2 - L26_2
                      L27_2 = flyingBird
                      L27_2 = L27_2.x
                      L27_2 = L15_2 - L27_2
                      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L25_2(L26_2, L27_2)
                      L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
                      L23_2 = flyingBird
                      L24_2 = "rotateWhileFlying"
                      L25_2 = false
                      L23_2[L24_2] = L25_2
                      L23_2 = fireAction
                      L24_2 = "usePinkBirdSpecialty"
                      L25_2 = {}
                      L26_2 = flyingBird
                      L26_2 = L26_2.name
                      L25_2.name = L26_2
                      L26_2 = "xPos"
                      L25_2[L26_2] = L15_2
                      L26_2 = "yPos"
                      L25_2[L26_2] = L16_2
                      L26_2 = "dt"
                      L25_2[L26_2] = A1_2
                      L23_2(L24_2, L25_2)
                    else
                      L23_2 = birdSpecialty
                      L24_2 = "GLOBE"
                      if L23_2 == L24_2 then
                        L23_2 = fireAction
                        L24_2 = "GlobeBirdActivated"
                        L25_2 = {}
                        L26_2 = flyingBird
                        L26_2 = L26_2.name
                        L25_2.name = L26_2
                        L26_2 = "specialty"
                        L27_2 = birdSpecialty
                        L25_2[L26_2] = L27_2
                        L26_2 = "dt"
                        L25_2[L26_2] = A1_2
                        L23_2(L24_2, L25_2)
                      else
                        L23_2 = birdSpecialty
                        L24_2 = "LAZER_SHOT"
                        if L23_2 == L24_2 then
                          L23_2 = addEventCall
                          L24_2 = "useLazerShotSpecialty"
                          L25_2 = {}
                          L26_2 = flyingBird
                          L26_2 = L26_2.name
                          L25_2.name = L26_2
                          L26_2 = "xPos"
                          L25_2[L26_2] = L15_2
                          L26_2 = "yPos"
                          L25_2[L26_2] = L16_2
                          L23_2(L24_2, L25_2)
                        else
                          L23_2 = birdSpecialty
                          L24_2 = "MULTI_SPLIT"
                          if L23_2 == L24_2 then
                            L23_2 = fireAction
                            L24_2 = "useMultiSplitSpecialty"
                            L25_2 = {}
                            L26_2 = flyingBird
                            L26_2 = L26_2.name
                            L25_2.name = L26_2
                            L26_2 = "xPos"
                            L25_2[L26_2] = L15_2
                            L26_2 = "yPos"
                            L25_2[L26_2] = L16_2
                            L26_2 = "dt"
                            L25_2[L26_2] = A1_2
                            L23_2(L24_2, L25_2)
                          else
                            L23_2 = birdSpecialty
                            L24_2 = "CLUSTER_BOMB"
                            if L23_2 == L24_2 then
                              L23_2 = fireAction
                              L24_2 = "useClusterSpecialty"
                              L25_2 = {}
                              L26_2 = flyingBird
                              L26_2 = L26_2.name
                              L25_2.name = L26_2
                              L26_2 = "dt"
                              L25_2[L26_2] = A1_2
                              L23_2(L24_2, L25_2)
                            else
                              L23_2 = birdSpecialty
                              L24_2 = "THREE_SPLIT"
                              if L23_2 ~= L24_2 then
                                L23_2 = birdSpecialty
                                L24_2 = "THREE_SPLIT_EXPLOSION"
                                if L23_2 ~= L24_2 then
                                  goto lbl_3146
                                end
                              end
                              L23_2 = fireAction
                              L24_2 = "useClusterSpecialty"
                              L25_2 = {}
                              L26_2 = flyingBird
                              L26_2 = L26_2.name
                              L25_2.name = L26_2
                              L26_2 = "dt"
                              L25_2[L26_2] = A1_2
                              L23_2(L24_2, L25_2)
                              goto lbl_3453
                              ::lbl_3146::
                              L23_2 = birdSpecialty
                              L24_2 = "ROBOT_3CPO"
                              if L23_2 == L24_2 then
                                L23_2 = fireAction
                                L24_2 = "use3CPOSpecialty"
                                L25_2 = {}
                                L26_2 = flyingBird
                                L26_2 = L26_2.name
                                L25_2.name = L26_2
                                L26_2 = "dt"
                                L25_2[L26_2] = A1_2
                                L23_2(L24_2, L25_2)
                              else
                                L23_2 = birdSpecialty
                                L24_2 = "ROBOT_R2D2"
                                if L23_2 == L24_2 then
                                  L23_2 = fireAction
                                  L24_2 = "useR2D2Specialty"
                                  L25_2 = {}
                                  L26_2 = flyingBird
                                  L26_2 = L26_2.name
                                  L25_2.name = L26_2
                                  L26_2 = "dt"
                                  L25_2[L26_2] = A1_2
                                  L23_2(L24_2, L25_2)
                                else
                                  L23_2 = birdSpecialty
                                  L24_2 = "TONGUE_SWING"
                                  if L23_2 == L24_2 then
                                    L23_2 = flyingBird
                                    L24_2 = "tongueActivated"
                                    L23_2 = L23_2[L24_2]
                                    if not L23_2 then
                                      L23_2 = fireAction
                                      L24_2 = "useJarJarSpecialty"
                                      L25_2 = {}
                                      L26_2 = flyingBird
                                      L26_2 = L26_2.name
                                      L25_2.name = L26_2
                                      L26_2 = "xPos"
                                      L25_2[L26_2] = L15_2
                                      L26_2 = "yPos"
                                      L25_2[L26_2] = L16_2
                                      L26_2 = "dt"
                                      L25_2[L26_2] = A1_2
                                      L23_2(L24_2, L25_2)
                                      L23_2 = objects
                                      L24_2 = "joints"
                                      L23_2 = L23_2[L24_2]
                                      L24_2 = flyingBird
                                      L24_2 = L24_2.name
                                      L25_2 = "_tongueJoint"
                                      L24_2 = L24_2 .. L25_2
                                      L23_2 = L23_2[L24_2]
                                      if L23_2 then
                                        L23_2 = false
                                        birdSpecialtyUsed = L23_2
                                        L13_2 = false
                                        L23_2 = true
                                        birdSpecialtyAvailable = L23_2
                                        L23_2 = "invisible"
                                        g_laserGestureMode = L23_2
                                        L23_2 = 0.5
                                        flightTime = L23_2
                                        L23_2 = flyingBird
                                        L24_2 = "specialtyTimer"
                                        L25_2 = nil
                                        L23_2[L24_2] = L25_2
                                        L23_2 = flyingBird
                                        L24_2 = false
                                        L23_2.hasCollided = L24_2
                                      end
                                    else
                                      L17_2 = false
                                      L18_2 = false
                                      L23_2 = false
                                      g_laserGestureMode = L23_2
                                      L23_2 = fireAction
                                      L24_2 = "birdJarJarDestroyTongue"
                                      L25_2 = {}
                                      L26_2 = flyingBird
                                      L26_2 = L26_2.name
                                      L25_2.name = L26_2
                                      L26_2 = "dt"
                                      L25_2[L26_2] = A1_2
                                      L23_2(L24_2, L25_2)
                                    end
                                  else
                                    L23_2 = birdSpecialty
                                    L24_2 = "ROCKET_LAUNCHER"
                                    if L23_2 == L24_2 then
                                      L23_2 = fireAction
                                      L24_2 = "useJangoFettSpecialty"
                                      L25_2 = {}
                                      L26_2 = flyingBird
                                      L26_2 = L26_2.name
                                      L25_2.name = L26_2
                                      L26_2 = "xPos"
                                      L25_2[L26_2] = L15_2
                                      L26_2 = "yPos"
                                      L25_2[L26_2] = L16_2
                                      L26_2 = "dt"
                                      L25_2[L26_2] = A1_2
                                      L23_2(L24_2, L25_2)
                                    else
                                      L23_2 = birdSpecialty
                                      L24_2 = "FLAMETHROWER"
                                      if L23_2 == L24_2 then
                                        L23_2 = fireAction
                                        L24_2 = "useFlamethrowerSpecialty"
                                        L25_2 = {}
                                        L26_2 = flyingBird
                                        L26_2 = L26_2.name
                                        L25_2.name = L26_2
                                        L26_2 = "xPos"
                                        L25_2[L26_2] = L15_2
                                        L26_2 = "yPos"
                                        L25_2[L26_2] = L16_2
                                        L26_2 = "dt"
                                        L25_2[L26_2] = A1_2
                                        L23_2(L24_2, L25_2)
                                      else
                                        L23_2 = birdSpecialty
                                        L24_2 = "SPINNING_BOOMERANG"
                                        if L23_2 == L24_2 then
                                          L23_2 = fireAction
                                          L24_2 = "useSpinningBoomerangSpecialty"
                                          L25_2 = {}
                                          L26_2 = flyingBird
                                          L26_2 = L26_2.name
                                          L25_2.name = L26_2
                                          L26_2 = "xPos"
                                          L25_2[L26_2] = L15_2
                                          L26_2 = "yPos"
                                          L25_2[L26_2] = L16_2
                                          L26_2 = "dt"
                                          L25_2[L26_2] = A1_2
                                          L23_2(L24_2, L25_2)
                                        else
                                          L23_2 = birdSpecialty
                                          L24_2 = "SNIPER"
                                          if L23_2 == L24_2 then
                                            L23_2 = fireAction
                                            L24_2 = "useSniperSpecialty"
                                            L25_2 = {}
                                            L26_2 = flyingBird
                                            L26_2 = L26_2.name
                                            L25_2.name = L26_2
                                            L26_2 = "xPos"
                                            L25_2[L26_2] = L15_2
                                            L26_2 = "yPos"
                                            L25_2[L26_2] = L16_2
                                            L26_2 = "dt"
                                            L25_2[L26_2] = A1_2
                                            L23_2(L24_2, L25_2)
                                          else
                                            L23_2 = birdSpecialty
                                            L24_2 = "LANDER"
                                            if L23_2 == L24_2 then
                                              L23_2 = fireAction
                                              L24_2 = "useLanderSpecialty"
                                              L25_2 = {}
                                              L26_2 = flyingBird
                                              L26_2 = L26_2.name
                                              L25_2.name = L26_2
                                              L26_2 = "xPos"
                                              L25_2[L26_2] = L15_2
                                              L26_2 = "yPos"
                                              L25_2[L26_2] = L16_2
                                              L26_2 = "dt"
                                              L25_2[L26_2] = A1_2
                                              L23_2(L24_2, L25_2)
                                            else
                                              L23_2 = birdSpecialty
                                              L24_2 = "SABER_BOOMERANG"
                                              if L23_2 == L24_2 then
                                                L23_2 = fireAction
                                                L24_2 = "useSaberBoomerangSpecialty"
                                                L25_2 = {}
                                                L26_2 = flyingBird
                                                L26_2 = L26_2.name
                                                L25_2.name = L26_2
                                                L26_2 = "xPos"
                                                L25_2[L26_2] = L15_2
                                                L26_2 = "yPos"
                                                L25_2[L26_2] = L16_2
                                                L26_2 = "dt"
                                                L25_2[L26_2] = A1_2
                                                L23_2(L24_2, L25_2)
                                              else
                                                L23_2 = birdSpecialty
                                                L24_2 = "RAGDOLL_AFTERBURNER"
                                                if L23_2 == L24_2 then
                                                  L17_2 = false
                                                  L23_2 = fireAction
                                                  L24_2 = "useRagdollAfterburnerSpecialty"
                                                  L25_2 = {}
                                                  L26_2 = flyingBird
                                                  L26_2 = L26_2.name
                                                  L25_2.name = L26_2
                                                  L26_2 = "xPos"
                                                  L25_2[L26_2] = L15_2
                                                  L26_2 = "yPos"
                                                  L25_2[L26_2] = L16_2
                                                  L26_2 = "dt"
                                                  L25_2[L26_2] = A1_2
                                                  L23_2(L24_2, L25_2)
                                                else
                                                  L23_2 = birdSpecialty
                                                  L24_2 = "DROIDEKA"
                                                  if L23_2 == L24_2 then
                                                    L23_2 = fireAction
                                                    L24_2 = "useDroidekaSpecialty"
                                                    L25_2 = {}
                                                    L26_2 = flyingBird
                                                    L26_2 = L26_2.name
                                                    L25_2.name = L26_2
                                                    L26_2 = "xPos"
                                                    L25_2[L26_2] = L15_2
                                                    L26_2 = "yPos"
                                                    L25_2[L26_2] = L16_2
                                                    L26_2 = "dt"
                                                    L25_2[L26_2] = A1_2
                                                    L23_2(L24_2, L25_2)
                                                  else
                                                    L23_2 = birdSpecialty
                                                    L24_2 = "FORCE_LIGHTNING"
                                                    if L23_2 == L24_2 then
                                                      L23_2 = fireAction
                                                      L24_2 = "useForceLightningSpecialty"
                                                      L25_2 = {}
                                                      L26_2 = flyingBird
                                                      L26_2 = L26_2.name
                                                      L25_2.name = L26_2
                                                      L26_2 = "xPos"
                                                      L25_2[L26_2] = L15_2
                                                      L26_2 = "yPos"
                                                      L25_2[L26_2] = L16_2
                                                      L26_2 = "dt"
                                                      L25_2[L26_2] = A1_2
                                                      L23_2(L24_2, L25_2)
                                                    else
                                                      L23_2 = birdSpecialty
                                                      L24_2 = "TELE_SLICE"
                                                      if L23_2 == L24_2 then
                                                        L23_2 = fireAction
                                                        L24_2 = "useTeleSliceSpecialty"
                                                        L25_2 = {}
                                                        L26_2 = flyingBird
                                                        L26_2 = L26_2.name
                                                        L25_2.name = L26_2
                                                        L26_2 = "xPos"
                                                        L25_2[L26_2] = L15_2
                                                        L26_2 = "yPos"
                                                        L25_2[L26_2] = L16_2
                                                        L26_2 = "dt"
                                                        L25_2[L26_2] = A1_2
                                                        L23_2(L24_2, L25_2)
                                                      else
                                                        L23_2 = birdSpecialty
                                                        L24_2 = "LAZER_BEAM"
                                                        if L23_2 == L24_2 then
                                                          L23_2 = fireAction
                                                          L24_2 = "useLaserBeamSpecialty"
                                                          L25_2 = {}
                                                          L26_2 = flyingBird
                                                          L26_2 = L26_2.name
                                                          L25_2.name = L26_2
                                                          L26_2 = "xPos"
                                                          L25_2[L26_2] = L15_2
                                                          L26_2 = "yPos"
                                                          L25_2[L26_2] = L16_2
                                                          L26_2 = "dt"
                                                          L25_2[L26_2] = A1_2
                                                          L23_2(L24_2, L25_2)
                                                        else
                                                          L23_2 = birdSpecialty
                                                          L24_2 = "VADER_FORCE"
                                                          if L23_2 == L24_2 then
                                                            L23_2 = fireAction
                                                            L24_2 = "useVaderForceSpecialty"
                                                            L25_2 = {}
                                                            L26_2 = flyingBird
                                                            L26_2 = L26_2.name
                                                            L25_2.name = L26_2
                                                            L26_2 = "xPos"
                                                            L25_2[L26_2] = L15_2
                                                            L26_2 = "yPos"
                                                            L25_2[L26_2] = L16_2
                                                            L26_2 = "dt"
                                                            L25_2[L26_2] = A1_2
                                                            L23_2(L24_2, L25_2)
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          ::lbl_3453::
          L23_2 = "specialParticlesPostUse"
          L23_2 = L14_2[L23_2]
          if L23_2 then
            L23_2 = putParticles
            L24_2 = {}
            L24_2.x = L20_2
            L24_2.y = L21_2
            L24_2.angle = L22_2
            L25_2 = "specialParticlesPostUse"
            L25_2 = L14_2[L25_2]
            L24_2.particles = L25_2
            L23_2(L24_2)
          end
          L23_2 = "specialtyBulletTime"
          L23_2 = L14_2[L23_2]
          if L23_2 and L17_2 then
            L23_2 = activateBulletTime
            L24_2 = "specialtyBulletTime"
            L24_2 = L14_2[L24_2]
            L25_2 = "smoothIn"
            L24_2 = L24_2[L25_2]
            L25_2 = "specialtyBulletTime"
            L25_2 = L14_2[L25_2]
            L26_2 = "duration"
            L25_2 = L25_2[L26_2]
            L26_2 = "specialtyBulletTime"
            L26_2 = L14_2[L26_2]
            L27_2 = "smoothOut"
            L26_2 = L26_2[L27_2]
            L27_2 = "specialtyBulletTime"
            L27_2 = L14_2[L27_2]
            L28_2 = "timeMultiplier"
            L27_2 = L27_2[L28_2]
            L23_2(L24_2, L25_2, L26_2, L27_2)
          end
          L23_2 = "specialtyReticle"
          L23_2 = L14_2[L23_2]
          if L23_2 and L18_2 then
            L23_2 = addAutoReticle
            L24_2 = L15_2
            L25_2 = L16_2
            L26_2 = "specialtyReticle"
            L26_2 = L14_2[L26_2]
            L26_2 = L26_2.sprite
            L27_2 = "specialtyReticle"
            L27_2 = L14_2[L27_2]
            L28_2 = "minScale"
            L27_2 = L27_2[L28_2]
            L28_2 = "specialtyReticle"
            L28_2 = L14_2[L28_2]
            L29_2 = "maxScale"
            L28_2 = L28_2[L29_2]
            L29_2 = "specialtyReticle"
            L29_2 = L14_2[L29_2]
            L29_2 = L29_2.maxTime
            L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
          end
          L23_2 = "specialtyShake"
          L23_2 = L14_2[L23_2]
          if L23_2 and L19_2 then
            L23_2 = addCameraShake
            L24_2 = cameraShakeModeSine
            L25_2 = "specialtyShake"
            L25_2 = L14_2[L25_2]
            L26_2 = "velocity"
            L25_2 = L25_2[L26_2]
            L26_2 = "specialtyShake"
            L26_2 = L14_2[L26_2]
            L27_2 = "distortion"
            L26_2 = L26_2[L27_2]
            L27_2 = "specialtyShake"
            L27_2 = L14_2[L27_2]
            L27_2 = L27_2.timer
            L23_2(L24_2, L25_2, L26_2, L27_2)
          end
      end
      else
        L14_2 = g_usingGestureControls
        if not L14_2 then
          L14_2 = storeCameraPosition
          L14_2()
          L14_2 = isInGameMode
          L14_2 = L14_2()
          if L14_2 then
            L14_2 = gameCamera
            L15_2 = "cameraAnimationSlider"
            L16_2 = gameCamera
            L18_2 = "getSliderPosition"
            L17_2 = L16_2
            L16_2 = L16_2[L18_2]
            L18_2 = screen
            L18_2 = L18_2.x
            L19_2 = screen
            L19_2 = L19_2.y
            L20_2 = false
            L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
            L14_2[L15_2] = L16_2
          end
        end
      end
    end
  end
  ::lbl_3556::
  L14_2 = g_usingGestureControls
  if not L14_2 then
    L14_2 = keyReleased
    L14_2 = L14_2.LBUTTON
    if L14_2 then
      goto lbl_3570
    end
  end
  L14_2 = g_usingGestureControls
  if L14_2 then
    L14_2 = touchcount
    L15_2 = 0
    ::lbl_3570::
    if L14_2 == L15_2 then
      L14_2 = true
      g_touch_released_after_specialty = L14_2
    end
  end
  L14_2 = false
  L15_2 = g_usingGestureControls
  if not L15_2 then
    L15_2 = isKeyPressed
    L16_2 = "LBUTTON"
    L15_2 = L15_2(L16_2)
    L14_2 = L15_2
  else
    L15_2 = touchcount
    L16_2 = 1
    L15_2 = dragStarted
    L15_2 = g_touch_released_after_specialty
    L14_2 = L15_2 or L14_2
    if L15_2 then
      L15_2 = birdSpecialtyAvailable
      L15_2 = isTouchDragAllowed
      L15_2 = L15_2()
      L14_2 = L15_2 == L16_2 and L14_2
    end
  end
  L15_2 = getGameHud
  L15_2 = L15_2()
  if L15_2 and L14_2 then
    L18_2 = "isPosInsideCharacterMenu"
    L17_2 = L15_2
    L16_2 = L15_2[L18_2]
    L18_2 = cursor
    L18_2 = L18_2.x
    L19_2 = cursor
    L19_2 = L19_2.y
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L14_2 = not L16_2
  end
  L16_2 = g_showLevelOpenAnimation
  if not L16_2 then
    L16_2 = g_refuseDrags
    if not L16_2 then
      L16_2 = levelFailed
      if not L16_2 then
        L16_2 = levelCompleted
        if not L16_2 then
          goto lbl_3627
        end
      end
    end
  end
  L14_2 = false
  ::lbl_3627::
  L16_2 = flyingBird
  if L16_2 then
    L16_2 = flyingBird
    L17_2 = "disableDragging"
    L16_2 = L16_2[L17_2]
    if L16_2 then
      L16_2 = birdSpecialtyAvailable
      if L16_2 then
        L14_2 = false
      end
    end
  end
  if L14_2 and not L13_2 then
    L16_2 = tapStarted
    L17_2 = false
    if L16_2 == L17_2 then
      L16_2 = g_refusedDragTargetting
      L17_2 = true
      if L16_2 ~= L17_2 then
        L16_2 = tapPosition
        L17_2 = cursor
        L17_2 = L17_2.x
        L16_2.x = L17_2
        L16_2 = tapPosition
        L17_2 = cursor
        L17_2 = L17_2.y
        L16_2.y = L17_2
        L16_2 = true
        tapStarted = L16_2
        L16_2 = 0
        tapTimer = L16_2
      end
    end
    L16_2 = true
    dragStarted = L16_2
    L16_2 = {}
    dragCursorTable = L16_2
    L16_2 = 1
    dragCursorIndex = L16_2
    L16_2 = dragCursorTable
    L17_2 = dragCursorIndex
    L18_2 = {}
    L19_2 = "dx"
    L20_2 = 0
    L18_2[L19_2] = L20_2
    L19_2 = "dy"
    L20_2 = 0
    L18_2[L19_2] = L20_2
    L19_2 = "dt"
    L18_2[L19_2] = A1_2
    L16_2[L17_2] = L18_2
    L16_2 = tapPosWorld
    L17_2 = cursorWorld
    L17_2 = L17_2.x
    L16_2.x = L17_2
    L16_2 = tapPosWorld
    L17_2 = cursorWorld
    L17_2 = L17_2.y
    L16_2.y = L17_2
    L16_2 = touchcount
    L17_2 = 1
    if L16_2 == L17_2 then
      L16_2 = currentBirdName
      L17_2 = nil
      if L16_2 ~= L17_2 then
        L16_2 = ignorePlayerInput
        if not L16_2 then
          L16_2 = levelCompleted
          if not L16_2 then
            L16_2 = levelFailed
            if not L16_2 then
              L16_2 = objects
              L16_2 = L16_2.world
              L17_2 = currentBirdName
              L16_2 = L16_2[L17_2]
              L17_2 = isSandboxBird
              L18_2 = getObjectDefinition
              L19_2 = currentBirdName
              L18_2 = L18_2(L19_2)
              L18_2 = L18_2.definition
              L17_2 = L17_2(L18_2)
              if L17_2 then
                L17_2 = g_usingGestureControls
                if not L17_2 then
                  L17_2 = distance
                  L18_2 = L16_2.x
                  L19_2 = L16_2.y
                  L20_2 = cursorPhysics
                  L20_2 = L20_2.x
                  L21_2 = cursorPhysics
                  L21_2 = L21_2.y
                  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
                  L18_2 = shootRange
                  L19_2 = worldScale
                  L20_2 = slingshotScale
                  L19_2 = L19_2 * L20_2
                  L18_2 = L18_2 / L19_2
                  L19_2 = screenWidth
                  L18_2 = L18_2 * L19_2
                  L19_2 = 480
                  L18_2 = L18_2 / L19_2
                  if not (L17_2 < L18_2) then
                    goto lbl_3761
                  end
                end
                L17_2 = getGameHud
                L17_2 = L17_2()
                L18_2 = g_sandBoxClickCount
                L19_2 = 1
                L18_2 = L18_2 + L19_2
                g_sandBoxClickCount = L18_2
                L18_2 = g_sandBoxClickCount
                L19_2 = 3
                if L18_2 >= L19_2 then
                  L18_2 = setupTutorial
                  L19_2 = currentBirdName
                  L20_2 = true
                  L18_2(L19_2, L20_2)
                end
                L20_2 = "openCharacterMenu"
                L19_2 = L17_2
                L18_2 = L17_2[L20_2]
                L18_2(L19_2)
                L18_2 = moveToBirdCamera
                L19_2 = 250
                L18_2(L19_2)
              else
                ::lbl_3761::
                L17_2 = g_usingGestureControls
                if not L17_2 then
                  L17_2 = distance
                  L18_2 = L16_2.x
                  L19_2 = L16_2.y
                  L20_2 = cursorPhysics
                  L20_2 = L20_2.x
                  L21_2 = cursorPhysics
                  L21_2 = L21_2.y
                  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
                  L18_2 = shootRange
                  L19_2 = worldScale
                  L20_2 = slingshotScale
                  L19_2 = L19_2 * L20_2
                  L18_2 = L18_2 / L19_2
                  L19_2 = screenWidth
                  L18_2 = L18_2 * L19_2
                  L19_2 = 480
                  L18_2 = L18_2 / L19_2
                  if not (L17_2 < L18_2) then
                    goto lbl_3861
                  end
                end
                selectedBird = L16_2
                L17_2 = gameCamera
                L19_2 = "getCurrentCameraFunction"
                L18_2 = L17_2
                L17_2 = L17_2[L19_2]
                L17_2 = L17_2(L18_2)
                L18_2 = "levelStartCamera"
                if L17_2 == L18_2 then
                  L17_2 = gameCamera
                  L19_2 = "setCameraFunction"
                  L18_2 = L17_2
                  L17_2 = L17_2[L19_2]
                  L19_2 = "ingameCamera"
                  L17_2(L18_2, L19_2)
                end
                L17_2 = gameCamera
                L19_2 = "setAllowCameraAnimation"
                L18_2 = L17_2
                L17_2 = L17_2[L19_2]
                L19_2 = false
                L17_2(L18_2, L19_2)
                L17_2 = handleBirdSelected
                L18_2 = A2_2
                L19_2 = A1_2
                L17_2(L18_2, L19_2)
                L17_2 = "dragStartedTimer"
                L18_2 = 0
                L16_2[L17_2] = L18_2
                L17_2 = g_usingGestureControls
                if L17_2 then
                  L17_2 = _G
                  L18_2 = "next"
                  L17_2 = L17_2[L18_2]
                  L18_2 = touches
                  L17_2, L18_2 = L17_2(L18_2)
                  L19_2 = screenToPhysicsTransform
                  L20_2 = L18_2.x
                  L21_2 = L18_2.y
                  L19_2, L20_2 = L19_2(L20_2, L21_2)
                  bird_touch_begin_y = L20_2
                  bird_touch_begin_x = L19_2
                  L19_2 = bird_touch_begin_x
                  L20_2 = bird_touch_begin_y
                  last_touch_y = L20_2
                  last_touch_x = L19_2
                  L19_2 = vLength
                  L20_2 = objects
                  L21_2 = "castleCameraData"
                  L20_2 = L20_2[L21_2]
                  L21_2 = deviceModel
                  L20_2 = L20_2[L21_2]
                  L21_2 = "px"
                  L20_2 = L20_2[L21_2]
                  L21_2 = objects
                  L22_2 = "birdCameraData"
                  L21_2 = L21_2[L22_2]
                  L22_2 = deviceModel
                  L21_2 = L21_2[L22_2]
                  L22_2 = "px"
                  L21_2 = L21_2[L22_2]
                  L20_2 = L20_2 - L21_2
                  L21_2 = objects
                  L22_2 = "castleCameraData"
                  L21_2 = L21_2[L22_2]
                  L22_2 = deviceModel
                  L21_2 = L21_2[L22_2]
                  L22_2 = "py"
                  L21_2 = L21_2[L22_2]
                  L22_2 = objects
                  L23_2 = "birdCameraData"
                  L22_2 = L22_2[L23_2]
                  L23_2 = deviceModel
                  L22_2 = L22_2[L23_2]
                  L23_2 = "py"
                  L22_2 = L22_2[L23_2]
                  L21_2 = L21_2 - L22_2
                  L19_2 = L19_2(L20_2, L21_2)
                  L20_2 = moveToBirdCamera
                  L21_2 = L19_2
                  L20_2(L21_2)
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_3861::
  L16_2 = _G
  L17_2 = "next"
  L16_2 = L16_2[L17_2]
  L17_2 = touches
  L16_2, L17_2 = L16_2(L17_2)
  L18_2 = not L6_2
  L19_2 = deviceModel
  L20_2 = "windows"
  L19_2 = L19_2 ~= L20_2
  L20_2 = g_useNewBirdLaunch
  if L20_2 and L19_2 then
    L20_2 = selectedBird
    L21_2 = nil
    if L20_2 ~= L21_2 then
      L20_2 = levelCompleted
      L21_2 = false
      if L20_2 == L21_2 then
        L20_2 = updateDraggingCursorLagOnly
        L21_2 = A2_2
        L22_2 = A1_2
        L20_2(L21_2, L22_2)
    end
    else
      L20_2 = selectedBird
      L21_2 = nil
      if L20_2 == L21_2 then
        L20_2 = clearDraggingCursor
        L20_2()
      end
    end
  else
    L20_2 = g_usingGestureControls
    if not L20_2 then
      L20_2 = g_aimingAidCursor
      L21_2 = "cursorToUse"
      L22_2 = {}
      L20_2[L21_2] = L22_2
      L20_2 = g_aimingAidCursor
      L21_2 = "cursorToUse"
      L20_2 = L20_2[L21_2]
      L21_2 = cursorPhysics
      L21_2 = L21_2.x
      L20_2.x = L21_2
      L20_2 = g_aimingAidCursor
      L21_2 = "cursorToUse"
      L20_2 = L20_2[L21_2]
      L21_2 = cursorPhysics
      L21_2 = L21_2.y
      L20_2.y = L21_2
    else
      L20_2 = g_aimingAidCursor
      L21_2 = "cursorToUse"
      L22_2 = {}
      L20_2[L21_2] = L22_2
      L20_2 = g_aimingAidCursor
      L21_2 = "cursorToUse"
      L20_2 = L20_2[L21_2]
      L21_2 = levelStartPosition
      L21_2 = L21_2.x
      L22_2 = last_touch_x
      L23_2 = bird_touch_begin_x
      L22_2 = L22_2 - L23_2
      L21_2 = L21_2 + L22_2
      L20_2.x = L21_2
      L20_2 = g_aimingAidCursor
      L21_2 = "cursorToUse"
      L20_2 = L20_2[L21_2]
      L21_2 = levelStartPosition
      L21_2 = L21_2.y
      L22_2 = last_touch_y
      L23_2 = bird_touch_begin_y
      L22_2 = L22_2 - L23_2
      L21_2 = L21_2 + L22_2
      L20_2.y = L21_2
    end
  end
  L20_2 = g_usingGestureControls
  if not L20_2 then
    L20_2 = isKeyHold
    L21_2 = "LBUTTON"
    L20_2 = L20_2(L21_2)
    if L20_2 then
      goto lbl_3973
    end
  end
  L20_2 = g_usingGestureControls
  if L20_2 then
    L20_2 = touchcount
    L21_2 = 1
    ::lbl_3973::
    if L20_2 == L21_2 then
      L20_2 = levelCompleted
      if not L20_2 and L18_2 then
        L20_2 = cursorPhysics
        L21_2 = g_useNewBirdLaunch
        if L21_2 then
          L21_2 = g_aimingAidCursor
          L22_2 = "cursorToUse"
          L20_2 = L21_2[L22_2]
        end
        L21_2 = dragStarted
        L22_2 = true
        if L21_2 == L22_2 then
          L21_2 = dragCursorIndex
          L22_2 = 1
          L21_2 = L21_2 + L22_2
          dragCursorIndex = L21_2
          L21_2 = dragCursorIndex
          L22_2 = 5
          if L21_2 > L22_2 then
            L21_2 = 1
            dragCursorIndex = L21_2
          end
          L21_2 = dragCursorTable
          L22_2 = dragCursorIndex
          L23_2 = {}
          L24_2 = "dx"
          L25_2 = cursor
          L25_2 = L25_2.x
          L26_2 = oldCursor
          L26_2 = L26_2.x
          L25_2 = L25_2 - L26_2
          L23_2[L24_2] = L25_2
          L24_2 = "dy"
          L25_2 = cursor
          L25_2 = L25_2.y
          L26_2 = oldCursor
          L26_2 = L26_2.y
          L25_2 = L25_2 - L26_2
          L23_2[L24_2] = L25_2
          L24_2 = "dt"
          L23_2[L24_2] = A1_2
          L21_2[L22_2] = L23_2
          L21_2 = selectedBird
          L22_2 = nil
          if L21_2 ~= L22_2 then
            L21_2 = draggingStartPosPhysics
            L22_2 = levelStartPosition
            L22_2 = L22_2.x
            L21_2.x = L22_2
            L21_2 = draggingStartPosPhysics
            L22_2 = levelStartPosition
            L22_2 = L22_2.y
            L21_2.y = L22_2
            L21_2 = birdReady
            L22_2 = true
            if L21_2 == L22_2 then
              L21_2 = nil
              L22_2 = nil
              L23_2 = g_usingGestureControls
              if not L23_2 then
                L23_2 = distance
                L24_2 = draggingStartPosPhysics
                L24_2 = L24_2.x
                L25_2 = draggingStartPosPhysics
                L25_2 = L25_2.y
                L26_2 = L20_2.x
                L27_2 = L20_2.y
                L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
                L21_2 = L23_2
                L23_2 = {}
                L24_2 = draggingStartPosPhysics
                L24_2 = L24_2.x
                L25_2 = L20_2.x
                L24_2 = L24_2 - L25_2
                L23_2.x = L24_2
                L24_2 = draggingStartPosPhysics
                L24_2 = L24_2.y
                L25_2 = L20_2.y
                L24_2 = L24_2 - L25_2
                L23_2.y = L24_2
                L22_2 = L23_2
              else
                L23_2 = _G
                L24_2 = "next"
                L23_2 = L23_2[L24_2]
                L24_2 = touches
                L23_2, L24_2 = L23_2(L24_2)
                L25_2 = screenToPhysicsTransform
                L26_2 = L24_2.x
                L27_2 = L24_2.y
                L25_2, L26_2 = L25_2(L26_2, L27_2)
                L27_2 = L25_2
                last_touch_y = L26_2
                last_touch_x = L27_2
                L27_2 = distance
                L28_2 = bird_touch_begin_x
                L29_2 = bird_touch_begin_y
                L30_2 = L25_2
                L31_2 = L26_2
                L27_2 = L27_2(L28_2, L29_2, L30_2, L31_2)
                L21_2 = L27_2
                L27_2 = {}
                L28_2 = bird_touch_begin_x
                L28_2 = L28_2 - L25_2
                L27_2.x = L28_2
                L28_2 = bird_touch_begin_y
                L28_2 = L28_2 - L26_2
                L27_2.y = L28_2
                L22_2 = L27_2
              end
              L23_2 = _G
              L23_2 = L23_2.math
              L23_2 = L23_2.atan2
              L24_2 = L22_2.y
              L25_2 = L22_2.x
              L23_2 = L23_2(L24_2, L25_2)
              rubberBandAngle = L23_2
              L23_2 = rubberBandAngle
              L24_2 = shootRange
              L25_2 = slingshotScale
              L26_2 = 3.3
              L25_2 = L26_2 * L25_2
              L24_2 = L24_2 + L25_2
              shootMaxLength = L24_2
              L24_2 = shootMaxLength
              if L21_2 < L24_2 then
                L24_2 = rubberBandPos
                L25_2 = rubberBandPos
                L26_2 = L20_2.x
                L27_2 = L20_2.y
                L25_2.y = L27_2
                L24_2.x = L26_2
                rubberBandLength = L21_2
                L24_2 = rubberBandLength
                L25_2 = oldRubberBandLength
                L24_2 = L24_2 - L25_2
                L25_2 = 0.02
                if L24_2 > L25_2 then
                  L24_2 = res
                  L25_2 = "isAudioPlaying"
                  L24_2 = L24_2[L25_2]
                  L25_2 = "slingshot_stretched"
                  L24_2 = L24_2(L25_2)
                  L25_2 = false
                  if L24_2 == L25_2 then
                    L24_2 = rubberBandLength
                    L25_2 = 0.25
                    if L24_2 > L25_2 then
                      L24_2 = res
                      L24_2 = L24_2.playAudio
                      L25_2 = "slingshot_stretched"
                      L24_2(L25_2)
                    end
                  end
                end
                L24_2 = rubberBandLength
                oldRubberBandLength = L24_2
                L24_2 = birdSelected
                L25_2 = false
                if L24_2 == L25_2 then
                  L24_2 = true
                  birdSelected = L24_2
                end
              else
                L24_2 = _G
                L25_2 = "assert"
                L24_2 = L24_2[L25_2]
                L25_2 = 0
                L25_2 = L21_2 ~= L25_2
                L26_2 = "Buahahaa, div by zero"
                L24_2(L25_2, L26_2)
                L24_2 = rubberBandPos
                L25_2 = draggingStartPosPhysics
                L25_2 = L25_2.x
                L26_2 = L22_2.x
                L27_2 = shootMaxLength
                L26_2 = L26_2 * L27_2
                L26_2 = L26_2 / L21_2
                L25_2 = L25_2 - L26_2
                L24_2.x = L25_2
                L24_2 = rubberBandPos
                L25_2 = draggingStartPosPhysics
                L25_2 = L25_2.y
                L26_2 = L22_2.y
                L27_2 = shootMaxLength
                L26_2 = L26_2 * L27_2
                L26_2 = L26_2 / L21_2
                L25_2 = L25_2 - L26_2
                L24_2.y = L25_2
                L24_2 = shootMaxLength
                rubberBandLength = L24_2
                L24_2 = 0
                rubberBandSpeed = L24_2
                L24_2 = birdSelected
                L25_2 = false
                if L24_2 == L25_2 then
                  L24_2 = res
                  L24_2 = L24_2.playAudio
                  L25_2 = "slingshot_stretched"
                  L24_2(L25_2)
                  L24_2 = true
                  birdSelected = L24_2
                end
              end
              L24_2 = 1
              L25_2 = rubberBandLength
              L26_2 = shootMaxLength
              L26_2 = L24_2 * L26_2
              if L25_2 > L26_2 then
                L25_2 = rubberBandPos
                L26_2 = draggingStartPosPhysics
                L26_2 = L26_2.y
                L27_2 = shootMaxLength
                L27_2 = L27_2 * L24_2
                L28_2 = L22_2.y
                L27_2 = L27_2 * L28_2
                L27_2 = L27_2 / L21_2
                L26_2 = L26_2 - L27_2
                L25_2.y = L26_2
                L25_2 = distance
                L26_2 = draggingStartPosPhysics
                L26_2 = L26_2.x
                L27_2 = draggingStartPosPhysics
                L27_2 = L27_2.y
                L28_2 = rubberBandPos
                L28_2 = L28_2.x
                L29_2 = rubberBandPos
                L29_2 = L29_2.y
                L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
                rubberBandLength = L25_2
              end
              L25_2 = handleBirdIsBeingMoved
              L26_2 = A2_2
              L27_2 = A1_2
              L25_2(L26_2, L27_2)
            end
          else
            L21_2 = ignoreCameraSweep
            if not L21_2 then
              L21_2 = assert
              L22_2 = objects
              L23_2 = "castleCameraData"
              L22_2 = L22_2[L23_2]
              L23_2 = nil
              L22_2 = L22_2 ~= L23_2
              L21_2(L22_2)
              L21_2 = assert
              L22_2 = objects
              L23_2 = "birdCameraData"
              L22_2 = L22_2[L23_2]
              L23_2 = nil
              L22_2 = L22_2 ~= L23_2
              L21_2(L22_2)
              L21_2 = gameCamera
              L23_2 = "panCamera"
              L22_2 = L21_2
              L21_2 = L21_2[L23_2]
              L23_2 = dragCursorTable
              L24_2 = dragCursorIndex
              L23_2 = L23_2[L24_2]
              L24_2 = "dx"
              L23_2 = L23_2[L24_2]
              L24_2 = worldScale
              L23_2 = L23_2 / L24_2
              L24_2 = dragCursorTable
              L25_2 = dragCursorIndex
              L24_2 = L24_2[L25_2]
              L25_2 = "dy"
              L24_2 = L24_2[L25_2]
              L25_2 = worldScale
              L24_2 = L24_2 / L25_2
              L25_2 = false
              L21_2(L22_2, L23_2, L24_2, L25_2)
              L21_2 = isInGameMode
              L21_2 = L21_2()
              if L21_2 then
                L21_2 = gameCamera
                L23_2 = "setCameraFunction"
                L22_2 = L21_2
                L21_2 = L21_2[L23_2]
                L23_2 = "ingameCamera"
                L21_2(L22_2, L23_2)
              else
                L21_2 = gameCamera
                L23_2 = "setCameraFunction"
                L22_2 = L21_2
                L21_2 = L21_2[L23_2]
                L23_2 = "menuCamera"
                L21_2(L22_2, L23_2)
              end
              L21_2 = gameCamera
              L23_2 = "getNumOfCameraTargetObjects"
              L22_2 = L21_2
              L21_2 = L21_2[L23_2]
              L21_2 = L21_2(L22_2)
              L22_2 = 0
              if L21_2 > L22_2 then
                L21_2 = flyingBird
                L22_2 = nil
                if L21_2 ~= L22_2 then
                  L21_2 = gameCamera
                  L23_2 = "isCameraTargetObject"
                  L22_2 = L21_2
                  L21_2 = L21_2[L23_2]
                  L23_2 = flyingBird
                  L21_2 = L21_2(L22_2, L23_2)
                  if L21_2 then
                    goto lbl_4296
                  end
                end
                L21_2 = gameCamera
                L23_2 = "removeAllCameraTargetObjects"
                L22_2 = L21_2
                L21_2 = L21_2[L23_2]
                L21_2(L22_2)
              end
            end
          end
        end
      end
    end
  end
  ::lbl_4296::
  L20_2 = g_usingGestureControls
  if not L20_2 then
    L20_2 = isKeyReleased
    L21_2 = "LBUTTON"
    L20_2 = L20_2(L21_2)
    if L20_2 then
      goto lbl_4316
    end
    L20_2 = isKeyHold
    L21_2 = "LBUTTON"
    L20_2 = L20_2(L21_2)
    if not L20_2 then
      goto lbl_4316
    end
  end
  L20_2 = g_usingGestureControls
  if L20_2 then
    L20_2 = touchcount
    L21_2 = 0
    ::lbl_4316::
    if L20_2 == L21_2 and L18_2 then
      L20_2 = g_laserBirdCursorException
      if L20_2 then
        L20_2 = false
        g_laserBirdCursorException = L20_2
      end
      L20_2 = dragStarted
      if L20_2 then
        L20_2 = false
        dragStarted = L20_2
        L20_2 = false
        leftSweep = L20_2
        L20_2 = false
        rightSweep = L20_2
        L20_2 = nil
        L21_2 = g_usingGestureControls
        if not L21_2 then
          L21_2 = distance
          L22_2 = draggingStartPosPhysics
          L22_2 = L22_2.x
          L23_2 = draggingStartPosPhysics
          L23_2 = L23_2.y
          L24_2 = cursorPhysics
          L24_2 = L24_2.x
          L25_2 = cursorPhysics
          L25_2 = L25_2.y
          L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
          L20_2 = L21_2
        else
          L21_2 = distance
          L22_2 = bird_touch_begin_x
          L23_2 = bird_touch_begin_y
          L24_2 = last_touch_x
          L25_2 = last_touch_y
          L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
          L20_2 = L21_2
        end
        L21_2 = shootMaxLength
        L22_2 = nil
        if L21_2 ~= L22_2 then
          L21_2 = shootMaxLength
          L22_2 = 0
          if not (L21_2 <= L22_2) then
            L21_2 = rubberBandLength
            L22_2 = 0
            if not (L21_2 <= L22_2) then
              L21_2 = rubberBandLength
              L22_2 = nil
              if L21_2 ~= L22_2 then
                L21_2 = 0
                if not (L20_2 <= L21_2) then
                  goto lbl_4376
                end
              end
            end
          end
        end
        L21_2 = nil
        selectedBird = L21_2
        ::lbl_4376::
        L21_2 = g_birdDragOnTouchAttributes
        L22_2 = "shootMinLength"
        L21_2 = L21_2[L22_2]
        if L20_2 <= L21_2 then
          L21_2 = cancelBirdDrag
          L21_2()
        end
        L21_2 = selectedBird
        L22_2 = nil
        if L21_2 ~= L22_2 then
          L21_2 = levelCompleted
          if not L21_2 then
            L21_2 = true
            g_firstBirdShot = L21_2
            L21_2 = nil
            L22_2 = nil
            L23_2 = g_usingGestureControls
            if not L23_2 then
              L23_2 = distance
              L24_2 = draggingStartPosPhysics
              L24_2 = L24_2.x
              L25_2 = draggingStartPosPhysics
              L25_2 = L25_2.y
              L26_2 = cursorPhysics
              L26_2 = L26_2.x
              L27_2 = cursorPhysics
              L27_2 = L27_2.y
              L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
              L21_2 = L23_2
              L23_2 = {}
              L24_2 = draggingStartPosPhysics
              L24_2 = L24_2.x
              L25_2 = cursorPhysics
              L25_2 = L25_2.x
              L24_2 = L24_2 - L25_2
              L23_2.x = L24_2
              L24_2 = draggingStartPosPhysics
              L24_2 = L24_2.y
              L25_2 = cursorPhysics
              L25_2 = L25_2.y
              L24_2 = L24_2 - L25_2
              L23_2.y = L24_2
              L22_2 = L23_2
            else
              L23_2 = distance
              L24_2 = bird_touch_begin_x
              L25_2 = bird_touch_begin_y
              L26_2 = last_touch_x
              L27_2 = last_touch_y
              L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
              L21_2 = L23_2
              L23_2 = {}
              L24_2 = bird_touch_begin_x
              L25_2 = last_touch_x
              L24_2 = L24_2 - L25_2
              L23_2.x = L24_2
              L24_2 = bird_touch_begin_y
              L25_2 = last_touch_y
              L24_2 = L24_2 - L25_2
              L23_2.y = L24_2
              L22_2 = L23_2
            end
            L23_2 = rubberBandLength
            L24_2 = shootMaxLength
            L23_2 = L23_2 / L24_2
            L24_2 = 0
            if L23_2 < L24_2 then
              L23_2 = 0
            end
            L24_2 = 1
            if L23_2 > L24_2 then
              L23_2 = 1
            end
            L24_2 = applyForceToSelectedBird
            L25_2 = selectedBird
            L24_2(L25_2)
            L24_2 = -A1_2
            flightTime = L24_2
            L24_2 = setCameraTargetObject
            L25_2 = selectedBird
            L24_2(L25_2)
            L24_2 = storeCameraPosition
            L24_2()
            L24_2 = selectedBird
            flyingBird = L24_2
            L24_2 = selectedBird
            L24_2 = L24_2.definition
            birdTypeCollectingScore = L24_2
            L24_2 = gameCamera
            L26_2 = "setCameraFunction"
            L25_2 = L24_2
            L24_2 = L24_2[L26_2]
            L26_2 = "ingameCamera"
            L24_2(L25_2, L26_2)
            L24_2 = gameCamera
            L26_2 = "resetControlFlags"
            L25_2 = L24_2
            L24_2 = L24_2[L26_2]
            L24_2(L25_2)
            L24_2 = selectedBird
            L25_2 = "shot"
            L26_2 = true
            L24_2[L25_2] = L26_2
            L24_2 = true
            birdSpecialtyAvailable = L24_2
            L24_2 = false
            birdSpecialtyUsed = L24_2
            L24_2 = true
            allowResetToBirdCamera = L24_2
            L24_2 = true
            allowTrajectoryClearing = L24_2
            L24_2 = true
            hasMovingObjectsZeroTolerance = L24_2
            L24_2 = false
            birdSelected = L24_2
            L24_2 = false
            birdReady = L24_2
            L24_2 = true
            birdFired = L24_2
            L24_2 = birdsShot
            L25_2 = 1
            L24_2 = L24_2 + L25_2
            birdsShot = L24_2
            L24_2 = g_defaultCameraResetTime
            cameraResetTimer = L24_2
            L24_2 = 1
            nextBirdTimer = L24_2
            L24_2 = nil
            currentBirdName = L24_2
            L24_2 = {}
            otherBirds = L24_2
            L24_2 = {}
            L25_2 = {}
            L26_2 = {}
            L27_2 = {}
            L24_2[1] = L25_2
            L24_2[2] = L26_2
            L24_2[3] = L27_2
            birdTrajectory = L24_2
            L24_2 = getObjectDefinition
            L25_2 = flyingBird
            L25_2 = L25_2.name
            L24_2 = L24_2(L25_2)
            L25_2 = "sprites"
            L24_2 = L24_2[L25_2]
            L25_2 = nil
            if L24_2 ~= L25_2 then
              L24_2 = flyingBird
              L25_2 = getObjectDefinition
              L26_2 = flyingBird
              L26_2 = L26_2.name
              L25_2 = L25_2(L26_2)
              L26_2 = "sprites"
              L25_2 = L25_2[L26_2]
              L26_2 = "flying"
              L25_2 = L25_2[L26_2]
              L24_2.sprite = L25_2
              L24_2 = setSprite
              L25_2 = flyingBird
              L25_2 = L25_2.name
              L26_2 = flyingBird
              L26_2 = L26_2.sprite
              L24_2(L25_2, L26_2)
            end
            L24_2 = getObjectDefinition
            L25_2 = flyingBird
            L25_2 = L25_2.name
            L24_2 = L24_2(L25_2)
            L25_2 = actions
            L26_2 = "handleStateChange"
            L25_2 = L25_2[L26_2]
            L26_2 = flyingBird
            L26_2 = L26_2.name
            L27_2 = "states"
            L27_2 = L24_2[L27_2]
            if L27_2 then
              L27_2 = "states"
              L27_2 = L24_2[L27_2]
              L28_2 = "flying"
              L27_2 = L27_2[L28_2]
            end
            L25_2(L26_2, L27_2)
            L25_2 = getObjectDefinition
            L26_2 = selectedBird
            L26_2 = L26_2.name
            L25_2 = L25_2(L26_2)
            L25_2 = L25_2.sounds
            L26_2 = nil
            if L25_2 ~= L26_2 then
              L25_2 = getObjectDefinition
              L26_2 = selectedBird
              L26_2 = L26_2.name
              L25_2 = L25_2(L26_2)
              L25_2 = L25_2.sounds
              L26_2 = "launch"
              L25_2 = L25_2[L26_2]
              L26_2 = nil
              if L25_2 ~= L26_2 then
                L25_2 = res
                L25_2 = L25_2.playAudio
                L26_2 = "bird_shot"
                L25_2(L26_2)
                L25_2 = res
                L25_2 = L25_2.playAudio
                L26_2 = getObjectDefinition
                L27_2 = selectedBird
                L27_2 = L27_2.name
                L26_2 = L26_2(L27_2)
                L26_2 = L26_2.sounds
                L27_2 = "launch"
                L26_2 = L26_2[L27_2]
                L25_2(L26_2)
              end
            end
            L25_2 = nil
            selectedBird = L25_2
            L25_2 = objects
            L25_2 = L25_2.world
            L26_2 = flyingBird
            L26_2 = L26_2.name
            L25_2 = L25_2[L26_2]
            L26_2 = "didDamage"
            L27_2 = false
            L25_2[L26_2] = L27_2
            L25_2 = _G
            L26_2 = "assert"
            L25_2 = L25_2[L26_2]
            L26_2 = flyingBird
            L27_2 = nil
            L26_2 = L26_2 ~= L27_2
            L25_2(L26_2)
            L25_2 = blockTable
            L25_2 = L25_2.blocks
            L26_2 = flyingBird
            L26_2 = L26_2.definition
            L25_2 = L25_2[L26_2]
            L26_2 = _G
            L27_2 = "assert"
            L26_2 = L26_2[L27_2]
            L27_2 = nil
            L27_2 = L25_2 ~= L27_2
            L28_2 = "bird definition undefined for bird "
            L29_2 = flyingBird
            L29_2 = L29_2.definition
            L28_2 = L28_2 .. L29_2
            L26_2(L27_2, L28_2)
            L26_2 = _G
            L27_2 = "assert"
            L26_2 = L26_2[L27_2]
            L27_2 = "normalTrailSprite"
            L27_2 = L25_2[L27_2]
            L28_2 = nil
            L27_2 = L27_2 ~= L28_2
            L28_2 = "normalTrailSprite undefined for bird "
            L29_2 = flyingBird
            L29_2 = L29_2.definition
            L28_2 = L28_2 .. L29_2
            L26_2(L27_2, L28_2)
            L26_2 = _G
            L27_2 = "assert"
            L26_2 = L26_2[L27_2]
            L27_2 = "specialTrailSprite"
            L27_2 = L25_2[L27_2]
            L28_2 = nil
            L27_2 = L27_2 ~= L28_2
            L28_2 = "specialTrailSprite undefined for bird "
            L29_2 = flyingBird
            L29_2 = L29_2.definition
            L28_2 = L28_2 .. L29_2
            L26_2(L27_2, L28_2)
            L26_2 = _G
            L27_2 = "assert"
            L26_2 = L26_2[L27_2]
            L27_2 = "aimingAidSprite"
            L27_2 = L25_2[L27_2]
            L28_2 = nil
            L27_2 = L27_2 ~= L28_2
            L28_2 = "aimingAidSprite undefined for bird "
            L29_2 = flyingBird
            L29_2 = L29_2.definition
            L28_2 = L28_2 .. L29_2
            L26_2(L27_2, L28_2)
            L26_2 = setNormalTrailSprite
            L27_2 = "normalTrailSprite"
            L27_2 = L25_2[L27_2]
            L26_2(L27_2)
            L26_2 = setSpecialTrailSprite
            L27_2 = "specialTrailSprite"
            L27_2 = L25_2[L27_2]
            L26_2(L27_2)
            L26_2 = g_usingGestureControls
            if L26_2 then
              L26_2 = birdSpecialtyTargetable
              L27_2 = flyingBird
              L27_2 = L27_2.name
              L26_2 = L26_2(L27_2)
              if L26_2 then
                L26_2 = true
                g_laserGestureMode = L26_2
                L26_2 = laser_cursor
                L27_2 = laser_cursor
                L28_2 = screenWidth
                L29_2 = 0.5
                L28_2 = L28_2 * L29_2
                L29_2 = screenHeight
                L30_2 = 0.5
                L29_2 = L29_2 * L30_2
                L27_2.y = L29_2
                L26_2.x = L28_2
              end
            end
        end
        else
          L21_2 = 1
          L22_2 = 0
          L23_2 = 0
          L24_2 = 0
          L25_2 = 0
          L26_2 = 0
          while true do
            L27_2 = dragCursorTable
            L27_2 = #L27_2
            if not (L21_2 <= L27_2) then
              break
            end
            L27_2 = dragCursorTable
            L27_2 = L27_2[L21_2]
            L28_2 = "dt"
            L27_2 = L27_2[L28_2]
            L24_2 = L24_2 + L27_2
            L27_2 = dragCursorTable
            L27_2 = L27_2[L21_2]
            L28_2 = "dx"
            L27_2 = L27_2[L28_2]
            L22_2 = L22_2 + L27_2
            L27_2 = dragCursorTable
            L27_2 = L27_2[L21_2]
            L28_2 = "dy"
            L27_2 = L27_2[L28_2]
            L23_2 = L23_2 + L27_2
            L27_2 = 1
            L21_2 = L21_2 + L27_2
          end
          L27_2 = 0
          if L24_2 > L27_2 then
            L25_2 = L22_2 / L24_2
            L26_2 = L23_2 / L24_2
          end
          L27_2 = true
          if L6_2 == L27_2 then
            L27_2 = g_mouseDragAttributes
            L28_2 = "mouseDragTime"
            L27_2 = L27_2[L28_2]
            L28_2 = g_mouseDragAttributes
            L29_2 = "minDragTime"
            L28_2 = L28_2[L29_2]
            if L27_2 > L28_2 then
              L27_2 = g_mouseDragAttributes
              L28_2 = "cummulativeDragX"
              L27_2 = L27_2[L28_2]
              L28_2 = g_mouseDragAttributes
              L29_2 = "mouseDragTime"
              L28_2 = L28_2[L29_2]
              L25_2 = L27_2 / L28_2
            else
              L25_2 = 0
            end
          end
          L27_2 = {}
          dragCursorTable = L27_2
          L27_2 = true
          if L6_2 == L27_2 then
            L27_2 = 0
            dragCursorIndex = L27_2
          end
          L27_2 = distance
          L28_2 = draggingStartPosScreen
          L28_2 = L28_2.x
          L29_2 = draggingStartPosScreen
          L29_2 = L29_2.y
          L30_2 = cursor
          L30_2 = L30_2.x
          L31_2 = cursor
          L31_2 = L31_2.y
          L27_2 = L27_2(L28_2, L29_2, L30_2, L31_2)
          L28_2 = screenWidth
          L29_2 = 0.1
          L28_2 = L28_2 * L29_2
          if not (L27_2 > L28_2) then
            L27_2 = _G
            L27_2 = L27_2.math
            L28_2 = "abs"
            L27_2 = L27_2[L28_2]
            L28_2 = L25_2
            L27_2 = L27_2(L28_2)
            L28_2 = 200
            if not (L27_2 > L28_2) then
              L27_2 = _G
              L27_2 = L27_2.math
              L28_2 = "abs"
              L27_2 = L27_2[L28_2]
              L28_2 = L26_2
              L27_2 = L27_2(L28_2)
              L28_2 = 200
              if not (L27_2 > L28_2) then
                goto lbl_4885
              end
            end
          end
          L27_2 = _G
          L27_2 = L27_2.math
          L28_2 = "abs"
          L27_2 = L27_2[L28_2]
          L28_2 = L25_2
          L27_2 = L27_2(L28_2)
          L28_2 = 0
          if L27_2 > L28_2 then
            L27_2 = ignoreCameraSweep
            if not L27_2 then
              L27_2 = objects
              L28_2 = "castleCameraData"
              L27_2 = L27_2[L28_2]
              L28_2 = deviceModel
              L27_2 = L27_2[L28_2]
              L28_2 = objects
              L29_2 = "birdCameraData"
              L28_2 = L28_2[L29_2]
              L29_2 = deviceModel
              L28_2 = L28_2[L29_2]
              L29_2 = cursor
              L29_2 = L29_2.x
              L30_2 = draggingStartPosScreen
              L30_2 = L30_2.x
              L29_2 = L29_2 - L30_2
              L30_2 = cursor
              L30_2 = L30_2.y
              L31_2 = draggingStartPosScreen
              L31_2 = L31_2.y
              L30_2 = L30_2 - L31_2
              L31_2 = "px"
              L31_2 = L27_2[L31_2]
              L32_2 = "px"
              L32_2 = L28_2[L32_2]
              L31_2 = L31_2 - L32_2
              L32_2 = "py"
              L32_2 = L27_2[L32_2]
              L33_2 = "py"
              L33_2 = L28_2[L33_2]
              L32_2 = L32_2 - L33_2
              L33_2 = vNormalize
              L34_2 = L31_2
              L35_2 = L32_2
              L33_2, L34_2 = L33_2(L34_2, L35_2)
              L35_2 = dotProduct
              L36_2 = L33_2
              L37_2 = L34_2
              L38_2 = L29_2
              L39_2 = L30_2
              L35_2 = L35_2(L36_2, L37_2, L38_2, L39_2)
              L36_2 = 0
              L36_2 = L35_2 < L36_2
              leftSweep = L36_2
              L36_2 = leftSweep
              L36_2 = not L36_2
              rightSweep = L36_2
              L36_2 = isInGameMode
              L36_2 = L36_2()
              if L36_2 then
                L36_2 = g_minSweepSpeed
                if L36_2 then
                  goto lbl_4862
                end
              end
              L36_2 = g_minSweepSpeedMenu
              ::lbl_4862::
              L37_2 = _G
              L37_2 = L37_2.math
              L38_2 = "min"
              L37_2 = L37_2[L38_2]
              L38_2 = _G
              L38_2 = L38_2.math
              L39_2 = "max"
              L38_2 = L38_2[L39_2]
              L39_2 = _G
              L39_2 = L39_2.math
              L39_2 = L39_2.sqrt
              L40_2 = L25_2 * L25_2
              L41_2 = L26_2 * L26_2
              L40_2 = L40_2 + L41_2
              L39_2 = L39_2(L40_2)
              L40_2 = L36_2
              L38_2 = L38_2(L39_2, L40_2)
              L39_2 = g_maxSweepSpeed
              L37_2 = L37_2(L38_2, L39_2)
              L38_2 = worldScale
              L37_2 = L37_2 / L38_2
              sweepSpeed = L37_2
              goto lbl_4887
              ::lbl_4885::
              L27_2 = 0
              sweepSpeed = L27_2
            end
          end
        end
        ::lbl_4887::
        L21_2 = _G
        L21_2 = L21_2.math
        L22_2 = "abs"
        L21_2 = L21_2[L22_2]
        L22_2 = sweepSpeed
        L21_2 = L21_2(L22_2)
        L22_2 = leftSweep
        L23_2 = true
        if L22_2 == L23_2 then
          L22_2 = 0
          if L21_2 > L22_2 then
            L22_2 = gameCamera
            L24_2 = "removeAllCameraTargetObjects"
            L23_2 = L22_2
            L22_2 = L22_2[L24_2]
            L22_2(L23_2)
            L22_2 = gameCamera
            L24_2 = "getSliderPosition"
            L23_2 = L22_2
            L22_2 = L22_2[L24_2]
            L24_2 = screen
            L24_2 = L24_2.x
            L25_2 = screen
            L25_2 = L25_2.y
            L22_2 = L22_2(L23_2, L24_2, L25_2)
            L23_2 = gameCamera
            L25_2 = "moveBetweenCameras"
            L24_2 = L23_2
            L23_2 = L23_2[L25_2]
            L25_2 = L22_2
            L26_2 = L21_2
            L23_2(L24_2, L25_2, L26_2)
            L23_2 = 0
            doubleClickTimer = L23_2
          end
        end
        L22_2 = rightSweep
        L23_2 = true
        if L22_2 == L23_2 then
          L22_2 = 0
          if L21_2 > L22_2 then
            L22_2 = moveToBirdCamera
            L23_2 = L21_2
            L22_2(L23_2)
            L22_2 = 0
            doubleClickTimer = L22_2
          end
        end
        L22_2 = tapStarted
        if L22_2 then
          L22_2 = vLength
          L23_2 = cursor
          L23_2 = L23_2.x
          L24_2 = tapPosition
          L24_2 = L24_2.x
          L23_2 = L23_2 - L24_2
          L24_2 = cursor
          L24_2 = L24_2.y
          L25_2 = tapPosition
          L25_2 = L25_2.y
          L24_2 = L24_2 - L25_2
          L22_2 = L22_2(L23_2, L24_2)
          L23_2 = tapRadius
          if L22_2 < L23_2 then
            L22_2 = tapCount
            L23_2 = 1
            L22_2 = L22_2 + L23_2
            tapCount = L22_2
            L22_2 = 0
            tapTimer = L22_2
          end
        end
      end
      L20_2 = gameCamera
      L22_2 = "panningStopped"
      L21_2 = L20_2
      L20_2 = L20_2[L22_2]
      L20_2(L21_2)
  end
  else
    L20_2 = g_usingGestureControls
    if L20_2 then
      L20_2 = touchcount
      L21_2 = 1
      if L20_2 > L21_2 then
        L20_2 = dragStarted
        if L20_2 then
          L20_2 = cancelBirdDrag
          L20_2()
        end
      end
    end
  end
  L20_2 = releaseBuild
  L21_2 = true
  if L20_2 == L21_2 then
    L20_2 = cheatsEnabled
    L21_2 = true
    if L20_2 ~= L21_2 then
      goto lbl_5027
    end
  end
  L20_2 = isKeyPressed
  L21_2 = "LBUTTON"
  L20_2 = L20_2(L21_2)
  if L20_2 then
    L20_2 = quadClickTimer
    L21_2 = 0
    if L20_2 > L21_2 then
      L20_2 = cursor
      L20_2 = L20_2.x
      L21_2 = screenWidth
      L22_2 = 120
      L21_2 = L21_2 - L22_2
      if L20_2 > L21_2 then
        L20_2 = cursor
        L20_2 = L20_2.y
        L21_2 = screenHeight
        L22_2 = 80
        L21_2 = L21_2 - L22_2
        if L20_2 > L21_2 then
          L20_2 = quadClickCounter
          L21_2 = 1
          L20_2 = L20_2 + L21_2
          quadClickCounter = L20_2
          L20_2 = 0.5
          quadClickTimer = L20_2
          L20_2 = quadClickCounter
          L21_2 = 4
          if L20_2 >= L21_2 then
            L20_2 = true
            quadClick = L20_2
          end
      end
    end
    else
      L20_2 = false
      quadClick = L20_2
      L20_2 = false
      g_threeStarsCheat = L20_2
      L20_2 = 0.5
      quadClickTimer = L20_2
      L20_2 = 1
      quadClickCounter = L20_2
      L20_2 = 1
      quadClickFalconCounter = L20_2
    end
  end
  ::lbl_5027::
  L20_2 = allowResetToBirdCamera
  L21_2 = true
  if L20_2 == L21_2 then
    L20_2 = levelCompleted
    L21_2 = false
    if L20_2 == L21_2 then
      L20_2 = birdSpecialtyAvailable
      L21_2 = false
      if L20_2 == L21_2 then
        L20_2 = flyingBird
        if L20_2 then
          L20_2 = flyingBird
          L20_2 = L20_2.hasCollided
          if L20_2 then
            goto lbl_5049
          end
        end
        L20_2 = flyingBird
        ::lbl_5049::
        if not L20_2 then
          L20_2 = hasMovingObjects
          L21_2 = true
          if L20_2 == L21_2 then
            L20_2 = _G
            L20_2 = L20_2.pairs
            L21_2 = birds
            L20_2, L21_2, L22_2 = L20_2(L21_2)
            for L23_2, L24_2 in L20_2, L21_2, L22_2 do
              L25_2 = "controllable"
              L25_2 = L24_2[L25_2]
              if L25_2 then
                L25_2 = "shot"
                L25_2 = L24_2[L25_2]
                if L25_2 then
                  L25_2 = g_defaultCameraResetTime
                  cameraResetTimer = L25_2
                end
              end
            end
            L20_2 = _G
            L20_2 = L20_2.pairs
            L21_2 = otherBirds
            L20_2, L21_2, L22_2 = L20_2(L21_2)
            for L23_2, L24_2 in L20_2, L21_2, L22_2 do
              L25_2 = "controllable"
              L25_2 = L24_2[L25_2]
              if L25_2 then
                L25_2 = "shot"
                L25_2 = L24_2[L25_2]
                if L25_2 then
                  L25_2 = g_defaultCameraResetTime
                  cameraResetTimer = L25_2
                end
              end
            end
          end
          L20_2 = cameraResetTimer
          L20_2 = L20_2 - A1_2
          cameraResetTimer = L20_2
          L20_2 = cameraResetTimer
          L21_2 = 0
          if L20_2 <= L21_2 then
            L20_2 = vLength
            L21_2 = objects
            L22_2 = "castleCameraData"
            L21_2 = L21_2[L22_2]
            L22_2 = deviceModel
            L21_2 = L21_2[L22_2]
            L22_2 = "px"
            L21_2 = L21_2[L22_2]
            L22_2 = objects
            L23_2 = "birdCameraData"
            L22_2 = L22_2[L23_2]
            L23_2 = deviceModel
            L22_2 = L22_2[L23_2]
            L23_2 = "px"
            L22_2 = L22_2[L23_2]
            L21_2 = L21_2 - L22_2
            L22_2 = objects
            L23_2 = "castleCameraData"
            L22_2 = L22_2[L23_2]
            L23_2 = deviceModel
            L22_2 = L22_2[L23_2]
            L23_2 = "py"
            L22_2 = L22_2[L23_2]
            L23_2 = objects
            L24_2 = "birdCameraData"
            L23_2 = L23_2[L24_2]
            L24_2 = deviceModel
            L23_2 = L23_2[L24_2]
            L24_2 = "py"
            L23_2 = L23_2[L24_2]
            L22_2 = L22_2 - L23_2
            L20_2 = L20_2(L21_2, L22_2)
            L21_2 = moveToBirdCamera
            L22_2 = L20_2
            L21_2(L22_2)
            L21_2 = eventManager
            L23_2 = "notify"
            L22_2 = L21_2
            L21_2 = L21_2[L23_2]
            L23_2 = {}
            L24_2 = "id"
            L25_2 = events
            L26_2 = "EID_INLEVEL_CAMERA_MOVED"
            L25_2 = L25_2[L26_2]
            L23_2[L24_2] = L25_2
            L21_2(L22_2, L23_2)
            L21_2 = nil
            flyingBird = L21_2
          end
        end
      end
    end
  end
  L20_2 = getLevelMetadata
  L21_2 = levelName
  L20_2 = L20_2(L21_2)
  L20_2 = L20_2.type
  L21_2 = nil
  if L20_2 == L21_2 then
    L20_2 = animateBirdToSlingShot
    L21_2 = A1_2
    L20_2(L21_2)
  end
  L20_2 = false
  L21_2 = flyingBird
  L22_2 = nil
  if L21_2 ~= L22_2 then
    L21_2 = flightTime
    L21_2 = L21_2 + A1_2
    flightTime = L21_2
    L21_2 = flyingBird
    L22_2 = "recordTrajectory"
    L21_2 = L21_2[L22_2]
    L22_2 = false
    if L21_2 ~= L22_2 then
      L20_2 = true
      L21_2 = physicsToWorldTransform
      L22_2 = flyingBird
      L22_2 = L22_2.x
      L23_2 = flyingBird
      L23_2 = L23_2.y
      L21_2, L22_2 = L21_2(L22_2, L23_2)
      L23_2 = birdTrajectory
      L24_2 = 1
      L23_2 = L23_2[L24_2]
      L24_2 = #L23_2
      L25_2 = 1
      if not (L24_2 < L25_2) then
        L24_2 = vLength
        L25_2 = #L23_2
        L25_2 = L23_2[L25_2]
        L25_2 = L25_2.x
        L25_2 = L21_2 - L25_2
        L26_2 = #L23_2
        L26_2 = L23_2[L26_2]
        L26_2 = L26_2.y
        L26_2 = L22_2 - L26_2
        L24_2 = L24_2(L25_2, L26_2)
        L25_2 = gameWorldScale
        L26_2 = 80
        L25_2 = L26_2 * L25_2
        if not (L24_2 > L25_2) then
          goto lbl_5214
        end
        L24_2 = flyingBird
        L25_2 = "disableRecordTrajectory"
        L24_2 = L24_2[L25_2]
        if L24_2 then
          goto lbl_5214
        end
      end
      L24_2 = _G
      L25_2 = "table"
      L24_2 = L24_2[L25_2]
      L25_2 = "insert"
      L24_2 = L24_2[L25_2]
      L25_2 = L23_2
      L26_2 = {}
      L26_2.x = L21_2
      L26_2.y = L22_2
      L24_2(L25_2, L26_2)
      L24_2 = addToTrajectory
      L25_2 = 1
      L26_2 = L21_2
      L27_2 = L22_2
      L24_2(L25_2, L26_2, L27_2)
      ::lbl_5214::
      L24_2 = getObjectDefinition
      L25_2 = flyingBird
      L25_2 = L25_2.name
      L24_2 = L24_2(L25_2)
      L25_2 = "rotateWhileFlying"
      L24_2 = L24_2[L25_2]
      if L24_2 then
        L24_2 = flyingBird
        L25_2 = "rotateWhileFlyingDisabled"
        L24_2 = L24_2[L25_2]
        if not L24_2 then
          L24_2 = rotateFlyingBird
          L25_2 = flyingBird
          L25_2 = L25_2.name
          L24_2(L25_2)
        end
      end
    else
      L21_2 = flyingBird
      L21_2 = L21_2.BHTrajectory
      L22_2 = true
      if L21_2 == L22_2 then
        L21_2 = flyingBird
        L22_2 = "BHTrajectoryTimer"
        L21_2 = L21_2[L22_2]
        L22_2 = 0
        if L21_2 <= L22_2 then
          L21_2 = BHTrajectory
          L22_2 = BHTrajectory
          L22_2 = #L22_2
          L23_2 = 1
          L22_2 = L22_2 + L23_2
          L23_2 = {}
          L24_2 = flyingBird
          L24_2 = L24_2.x
          L23_2.x = L24_2
          L24_2 = flyingBird
          L24_2 = L24_2.y
          L23_2.y = L24_2
          L24_2 = 0.7
          L23_2.timer = L24_2
          L21_2[L22_2] = L23_2
          L21_2 = flyingBird
          L22_2 = "BHTrajectoryTimer"
          L23_2 = 0.12
          L21_2[L22_2] = L23_2
        else
          L21_2 = flyingBird
          L22_2 = "BHTrajectoryTimer"
          L23_2 = flyingBird
          L24_2 = "BHTrajectoryTimer"
          L23_2 = L23_2[L24_2]
          L23_2 = L23_2 - A1_2
          L21_2[L22_2] = L23_2
        end
      end
    end
  end
  L21_2 = otherBirds
  L22_2 = nil
  if L21_2 ~= L22_2 then
    L21_2 = 1
    L22_2 = 2
    L23_2 = 1
    for L24_2 = L21_2, L22_2, L23_2 do
      L25_2 = objects
      L25_2 = L25_2.world
      L26_2 = otherBirds
      L26_2 = L26_2[L24_2]
      L25_2 = L25_2[L26_2]
      L26_2 = nil
      if L25_2 ~= L26_2 then
        L26_2 = "recordTrajectory"
        L26_2 = L25_2[L26_2]
        L27_2 = false
        if L26_2 ~= L27_2 then
          L26_2 = flyingBird
          if L26_2 then
            L26_2 = flyingBird
            L27_2 = "recordTrajectory"
            L26_2 = L26_2[L27_2]
            L27_2 = false
            if L26_2 ~= L27_2 then
              L20_2 = true
              L26_2 = physicsToWorldTransform
              L27_2 = L25_2.x
              L28_2 = L25_2.y
              L26_2, L27_2 = L26_2(L27_2, L28_2)
              L28_2 = birdTrajectory
              L29_2 = 1
              L29_2 = L24_2 + L29_2
              L28_2 = L28_2[L29_2]
              L29_2 = #L28_2
              L30_2 = 1
              if not (L29_2 < L30_2) then
                L29_2 = vLength
                L30_2 = #L28_2
                L30_2 = L28_2[L30_2]
                L30_2 = L30_2.x
                L30_2 = L26_2 - L30_2
                L31_2 = #L28_2
                L31_2 = L28_2[L31_2]
                L31_2 = L31_2.y
                L31_2 = L27_2 - L31_2
                L29_2 = L29_2(L30_2, L31_2)
                L30_2 = gameWorldScale
                L31_2 = 80
                L30_2 = L31_2 * L30_2
                if not (L29_2 > L30_2) then
                  goto lbl_5349
                end
                L29_2 = flyingBird
                L30_2 = "disableRecordTrajectory"
                L29_2 = L29_2[L30_2]
                if L29_2 then
                  goto lbl_5349
                end
              end
              L29_2 = _G
              L30_2 = "table"
              L29_2 = L29_2[L30_2]
              L30_2 = "insert"
              L29_2 = L29_2[L30_2]
              L30_2 = L28_2
              L31_2 = {}
              L31_2.x = L26_2
              L31_2.y = L27_2
              L29_2(L30_2, L31_2)
              L29_2 = addToTrajectory
              L30_2 = 1
              L30_2 = L24_2 + L30_2
              L31_2 = L26_2
              L32_2 = L27_2
              L29_2(L30_2, L31_2, L32_2)
              ::lbl_5349::
              L29_2 = getObjectDefinition
              L30_2 = L25_2.name
              L29_2 = L29_2(L30_2)
              L30_2 = "rotateWhileFlying"
              L29_2 = L29_2[L30_2]
              if L29_2 then
                L29_2 = rotateFlyingBird
                L30_2 = L25_2.name
                L29_2(L30_2)
              end
            end
          end
        end
        L26_2 = "collision"
        L26_2 = L25_2[L26_2]
        L27_2 = true
        if L26_2 ~= L27_2 then
          L26_2 = "timerDragEnabled"
          L26_2 = L25_2[L26_2]
          L27_2 = true
          if L26_2 ~= L27_2 then
            L26_2 = "enableDragTimer"
            L27_2 = "enableDragTimer"
            L27_2 = L25_2[L27_2]
            if L27_2 then
              L27_2 = "enableDragTimer"
              L27_2 = L25_2[L27_2]
              L27_2 = L27_2 - A1_2
              if L27_2 then
                goto lbl_5380
              end
            end
            L27_2 = birdDragTimer
            ::lbl_5380::
            L25_2[L26_2] = L27_2
            L26_2 = "enableDragTimer"
            L26_2 = L25_2[L26_2]
            L27_2 = 0
            if L26_2 <= L27_2 then
              L26_2 = setLinearDamping
              L27_2 = L25_2.name
              L28_2 = defaultPhysicsDrag
              L26_2(L27_2, L28_2)
              L26_2 = _G
              L26_2 = L26_2.pairs
              L27_2 = otherBirds
              L26_2, L27_2, L28_2 = L26_2(L27_2)
              for L29_2, L30_2 in L26_2, L27_2, L28_2 do
                L31_2 = setLinearDamping
                L32_2 = L30_2
                L33_2 = defaultPhysicsDrag
                L31_2(L32_2, L33_2)
              end
              L26_2 = "timerDragEnabled"
              L27_2 = true
              L25_2[L26_2] = L27_2
            end
          end
        end
      end
    end
  end
  L21_2 = false
  if L20_2 == L21_2 then
    L21_2 = allowTrajectoryClearing
    L22_2 = true
    if L21_2 == L22_2 then
      L21_2 = startNewTrajectory
      L21_2()
      L21_2 = false
      allowTrajectoryClearing = L21_2
    end
  end
  L21_2 = birdFired
  if L21_2 then
    L21_2 = _G
    L21_2 = L21_2.math
    L22_2 = "min"
    L21_2 = L21_2[L22_2]
    L22_2 = A1_2
    L23_2 = 0.05
    L21_2 = L21_2(L22_2, L23_2)
    L22_2 = nil
    while true do
      L23_2 = 0
      if not (L21_2 > L23_2) then
        break
      end
      L23_2 = 0.05
      if L21_2 < L23_2 then
        L22_2 = L21_2
      else
        L22_2 = 0.05
      end
      L21_2 = L21_2 - L22_2
      L23_2 = distance
      L24_2 = levelStartPosition
      L24_2 = L24_2.x
      L25_2 = levelStartPosition
      L25_2 = L25_2.y
      L26_2 = rubberBandPos
      L26_2 = L26_2.x
      L27_2 = rubberBandPos
      L27_2 = L27_2.y
      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
      L24_2 = {}
      L25_2 = levelStartPosition
      L25_2 = L25_2.x
      L26_2 = rubberBandPos
      L26_2 = L26_2.x
      L25_2 = L25_2 - L26_2
      L24_2.x = L25_2
      L25_2 = levelStartPosition
      L25_2 = L25_2.y
      L26_2 = rubberBandPos
      L26_2 = L26_2.y
      L25_2 = L25_2 - L26_2
      L24_2.y = L25_2
      L25_2 = _G
      L25_2 = L25_2.math
      L25_2 = L25_2.atan2
      L26_2 = L24_2.y
      L27_2 = L24_2.x
      L25_2 = L25_2(L26_2, L27_2)
      rubberBandAngle = L25_2
      rubberBandLength = L23_2
      L25_2 = rubberBandSpeed
      L26_2 = dampedSpring
      L27_2 = springConstant
      L28_2 = springDampening
      L29_2 = L23_2
      L30_2 = rubberBandSpeed
      L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
      L27_2 = 0.05
      L26_2 = L26_2 * L27_2
      L27_2 = physicsScale
      L26_2 = L26_2 * L27_2
      L25_2 = L25_2 + L26_2
      rubberBandSpeed = L25_2
      L25_2 = 0
      if L23_2 > L25_2 then
        L25_2 = rubberBandPos
        L26_2 = rubberBandPos
        L26_2 = L26_2.x
        L27_2 = L24_2.x
        L27_2 = L27_2 / L23_2
        L28_2 = rubberBandSpeed
        L27_2 = L27_2 * L28_2
        L27_2 = L27_2 * L22_2
        L26_2 = L26_2 + L27_2
        L25_2.x = L26_2
        L25_2 = rubberBandPos
        L26_2 = rubberBandPos
        L26_2 = L26_2.y
        L27_2 = L24_2.y
        L27_2 = L27_2 / L23_2
        L28_2 = rubberBandSpeed
        L27_2 = L27_2 * L28_2
        L27_2 = L27_2 * L22_2
        L26_2 = L26_2 + L27_2
        L25_2.y = L26_2
        L25_2 = distance
        L26_2 = levelStartPosition
        L26_2 = L26_2.x
        L27_2 = levelStartPosition
        L27_2 = L27_2.y
        L28_2 = rubberBandPos
        L28_2 = L28_2.x
        L29_2 = rubberBandPos
        L29_2 = L29_2.y
        L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
        rubberBandLength = L25_2
      end
    end
  end
  L21_2 = _G
  L21_2 = L21_2.pairs
  L22_2 = birds
  L21_2, L22_2, L23_2 = L21_2(L22_2)
  for L24_2, L25_2 in L21_2, L22_2, L23_2 do
    L26_2 = L25_2
    L27_2 = "dragStartedTimer"
    L27_2 = L25_2[L27_2]
    if L27_2 then
      L27_2 = "dragStartedTimer"
      L28_2 = "dragStartedTimer"
      L28_2 = L25_2[L28_2]
      L28_2 = L28_2 + A1_2
      L25_2[L27_2] = L28_2
    end
    L27_2 = L26_2.hasCollided
    if L27_2 then
      L27_2 = "fadeEffectTimer"
      L27_2 = L26_2[L27_2]
      L28_2 = nil
      if L27_2 ~= L28_2 then
        L27_2 = "fadeEffectTimer"
        L27_2 = L26_2[L27_2]
        L28_2 = 0
        if L27_2 >= L28_2 then
          L27_2 = "fadeEffectTimer"
          L28_2 = "fadeEffectTimer"
          L28_2 = L26_2[L28_2]
          L28_2 = L28_2 - A1_2
          L26_2[L27_2] = L28_2
        end
      end
    end
    L27_2 = "specialtyTimer"
    L27_2 = L26_2[L27_2]
    L28_2 = nil
    if L27_2 ~= L28_2 then
      L27_2 = "specialtyTimer"
      L27_2 = L26_2[L27_2]
      L28_2 = 0
      if L27_2 >= L28_2 then
        L27_2 = flyingBird
        L28_2 = nil
        if L27_2 ~= L28_2 then
          L27_2 = L26_2.name
          L28_2 = flyingBird
          L28_2 = L28_2.name
          if L27_2 ~= L28_2 then
            goto lbl_5651
          end
        end
        L27_2 = "specialtyTimer"
        L28_2 = "specialtyTimer"
        L28_2 = L26_2[L28_2]
        L29_2 = getDeltaTimeMultiplier
        L29_2 = L29_2()
        L29_2 = A1_2 / L29_2
        L28_2 = L28_2 - L29_2
        L26_2[L27_2] = L28_2
        L27_2 = "specialtyTimer"
        L27_2 = L26_2[L27_2]
        L28_2 = 0
        if L27_2 < L28_2 then
          L27_2 = getObjectDefinition
          L28_2 = L24_2
          L27_2 = L27_2(L28_2)
          if L27_2 then
            L28_2 = "specialty"
            L28_2 = L27_2[L28_2]
            L29_2 = nil
            if L28_2 ~= L29_2 then
              L28_2 = handleBirdPowerUseCounting
              L29_2 = L26_2
              L28_2(L29_2)
            end
          end
          if L27_2 then
            L28_2 = "onSpecialtyTimer"
            L28_2 = L27_2[L28_2]
            if L28_2 then
              L28_2 = birdSpecialtyAvailable
              if L28_2 then
                L28_2 = _G
                L29_2 = "ipairs"
                L28_2 = L28_2[L29_2]
                L29_2 = "onSpecialtyTimer"
                L29_2 = L27_2[L29_2]
                L28_2, L29_2, L30_2 = L28_2(L29_2)
                for L31_2, L32_2 in L28_2, L29_2, L30_2 do
                  L33_2 = addEventCall
                  L34_2 = L32_2
                  L35_2 = {}
                  L36_2 = L26_2.name
                  L35_2.name = L36_2
                  L33_2(L34_2, L35_2)
                end
              end
            end
          end
          L28_2 = false
          birdSpecialtyAvailable = L28_2
          L28_2 = getObjectDefinition
          L29_2 = L26_2.name
          L28_2 = L28_2(L29_2)
          if L28_2 then
            L29_2 = "specialty"
            L29_2 = L28_2[L29_2]
            L30_2 = "LAZER_SHOT"
            if L29_2 == L30_2 then
              L29_2 = "emitterBody"
              L29_2 = L26_2[L29_2]
              if L29_2 then
                L29_2 = "emitterBody"
                L29_2 = L26_2[L29_2]
                if L29_2 then
                  L29_2 = "emitterBody"
                  L29_2 = L26_2[L29_2]
                  L30_2 = "emitter"
                  L29_2 = L29_2[L30_2]
                  if L29_2 then
                    L29_2 = "emitterBody"
                    L29_2 = L26_2[L29_2]
                    L30_2 = "emitter"
                    L29_2 = L29_2[L30_2]
                    L30_2 = "deleteEmitterAfterEmitting"
                    L31_2 = true
                    L29_2[L30_2] = L31_2
                  end
                end
              end
            end
          end
        end
      end
    end
    ::lbl_5651::
    L27_2 = objects
    L27_2 = L27_2.world
    L28_2 = L26_2.name
    L27_2 = L27_2[L28_2]
    L28_2 = nil
    if L27_2 ~= L28_2 then
      L27_2 = getObjectDefinition
      L28_2 = L24_2
      L27_2 = L27_2(L28_2)
      L28_2 = "bombTimer"
      L28_2 = L25_2[L28_2]
      L29_2 = nil
      if L28_2 ~= L29_2 then
        L28_2 = "bombTimer"
        L29_2 = "bombTimer"
        L29_2 = L25_2[L29_2]
        L29_2 = L29_2 - A1_2
        L25_2[L28_2] = L29_2
        L28_2 = getObjectDefinition
        L29_2 = L24_2
        L28_2 = L28_2(L29_2)
        L27_2 = L28_2
        L28_2 = "specialty"
        L28_2 = L27_2[L28_2]
        L29_2 = "BOMB"
        if L28_2 == L29_2 then
          L28_2 = "bombTimer"
          L28_2 = L25_2[L28_2]
          L29_2 = 0
          if L28_2 < L29_2 then
            L28_2 = addBirdSpecialParticles
            L29_2 = L25_2
            L28_2(L29_2)
            L28_2 = makeExplosion
            L29_2 = L25_2
            L30_2 = L27_2
            L31_2 = blockTable
            L31_2 = L31_2.blocks
            L32_2 = L25_2.definition
            L31_2 = L31_2[L32_2]
            L31_2 = L31_2.sounds
            L32_2 = "special"
            L31_2 = L31_2[L32_2]
            L28_2(L29_2, L30_2, L31_2)
            L28_2 = removeBird
            L29_2 = L25_2
            L28_2(L29_2)
          else
            L28_2 = "sprites"
            L28_2 = L27_2[L28_2]
            L28_2 = L28_2.timer
            L29_2 = nil
            if L28_2 ~= L29_2 then
              L28_2 = "bombTimer"
              L28_2 = L25_2[L28_2]
              L29_2 = 0.07
              if L28_2 < L29_2 then
                L28_2 = "damageSprite"
                L29_2 = "sprites"
                L29_2 = L27_2[L29_2]
                L29_2 = L29_2.timer
                L30_2 = 3
                L29_2 = L29_2[L30_2]
                L25_2[L28_2] = L29_2
                L28_2 = setSprite
                L29_2 = L25_2.name
                L30_2 = "damageSprite"
                L30_2 = L25_2[L30_2]
                L28_2(L29_2, L30_2)
              else
                L28_2 = "bombTimer"
                L28_2 = L25_2[L28_2]
                L29_2 = 0.12
                if L28_2 < L29_2 then
                  L28_2 = "damageSprite"
                  L29_2 = "sprites"
                  L29_2 = L27_2[L29_2]
                  L29_2 = L29_2.timer
                  L30_2 = 2
                  L29_2 = L29_2[L30_2]
                  L25_2[L28_2] = L29_2
                  L28_2 = setSprite
                  L29_2 = L25_2.name
                  L30_2 = "damageSprite"
                  L30_2 = L25_2[L30_2]
                  L28_2(L29_2, L30_2)
                else
                  L28_2 = "bombTimer"
                  L28_2 = L25_2[L28_2]
                  L29_2 = 0.2
                  if L28_2 < L29_2 then
                    L28_2 = "damageSprite"
                    L29_2 = "sprites"
                    L29_2 = L27_2[L29_2]
                    L29_2 = L29_2.timer
                    L30_2 = 1
                    L29_2 = L29_2[L30_2]
                    L25_2[L28_2] = L29_2
                    L28_2 = setSprite
                    L29_2 = L25_2.name
                    L30_2 = "damageSprite"
                    L30_2 = L25_2[L30_2]
                    L28_2(L29_2, L30_2)
                  end
                end
              end
            end
          end
        else
          L28_2 = "bombTimer"
          L28_2 = L25_2[L28_2]
          L29_2 = 0
          if L28_2 < L29_2 then
            L28_2 = addBirdSpecialParticles
            L29_2 = L25_2
            L28_2(L29_2)
            L28_2 = fireAction
            L29_2 = "useR2D2Specialty"
            L30_2 = {}
            L30_2.name = L24_2
            L31_2 = "dt"
            L30_2[L31_2] = A1_2
            L28_2(L29_2, L30_2)
            L28_2 = "bombTimer"
            L29_2 = nil
            L25_2[L28_2] = L29_2
          end
        end
      else
        L28_2 = "controllable"
        L28_2 = L25_2[L28_2]
        if L28_2 then
          L28_2 = "shot"
          L28_2 = L25_2[L28_2]
          L29_2 = true
          if L28_2 == L29_2 then
            L28_2 = "collision"
            L28_2 = L26_2[L28_2]
            L29_2 = true
            if L28_2 ~= L29_2 then
              L28_2 = "timerDragEnabled"
              L28_2 = L26_2[L28_2]
              L29_2 = true
              if L28_2 ~= L29_2 then
                L28_2 = "enableDragTimer"
                L29_2 = "enableDragTimer"
                L29_2 = L26_2[L29_2]
                if L29_2 then
                  L29_2 = "enableDragTimer"
                  L29_2 = L26_2[L29_2]
                  L29_2 = L29_2 - A1_2
                  if L29_2 then
                    goto lbl_5812
                  end
                end
                L29_2 = birdDragTimer
                ::lbl_5812::
                L26_2[L28_2] = L29_2
                L28_2 = "enableDragTimer"
                L28_2 = L26_2[L28_2]
                L29_2 = 0
                if L28_2 <= L29_2 then
                  L28_2 = setLinearDamping
                  L29_2 = L26_2.name
                  L30_2 = defaultPhysicsDrag
                  L28_2(L29_2, L30_2)
                  L28_2 = _G
                  L28_2 = L28_2.pairs
                  L29_2 = otherBirds
                  L28_2, L29_2, L30_2 = L28_2(L29_2)
                  for L31_2, L32_2 in L28_2, L29_2, L30_2 do
                    L33_2 = setLinearDamping
                    L34_2 = L32_2
                    L35_2 = defaultPhysicsDrag
                    L33_2(L34_2, L35_2)
                  end
                  L28_2 = "timerDragEnabled"
                  L29_2 = true
                  L26_2[L28_2] = L29_2
                end
              end
            end
            L28_2 = blockTable
            L28_2 = L28_2.blocks
            L29_2 = L25_2.definition
            L28_2 = L28_2[L29_2]
            L29_2 = "isReadyForRemoveTimer"
            L29_2 = L25_2[L29_2]
            L30_2 = nil
            if L29_2 ~= L30_2 then
              L29_2 = vLength
              L30_2 = "xVel"
              L30_2 = L25_2[L30_2]
              L31_2 = "yVel"
              L31_2 = L25_2[L31_2]
              L29_2 = L29_2(L30_2, L31_2)
              L30_2 = 0.35
              if L29_2 < L30_2 then
                if L28_2 then
                  L29_2 = "dontRemove"
                  L29_2 = L28_2[L29_2]
                  if L29_2 then
                    goto lbl_5866
                  end
                end
                L29_2 = "isReadyForRemoveTimer"
                L30_2 = "isReadyForRemoveTimer"
                L30_2 = L25_2[L30_2]
                L30_2 = L30_2 - A1_2
                L25_2[L29_2] = L30_2
            end
            else
              ::lbl_5866::
              L29_2 = "isReadyForRemoveTimer"
              L30_2 = "additionalRemoveTimer"
              L30_2 = L25_2[L30_2]
              if not L30_2 then
                L30_2 = 0
              end
              L31_2 = 2
              L30_2 = L31_2 + L30_2
              L25_2[L29_2] = L30_2
            end
            L29_2 = "isReadyForRemoveTimer"
            L29_2 = L25_2[L29_2]
            L30_2 = 0
            if L29_2 < L30_2 then
              L29_2 = gameCamera
              L31_2 = "removeCameraTargetObject"
              L30_2 = L29_2
              L29_2 = L29_2[L31_2]
              L31_2 = L25_2
              L29_2(L30_2, L31_2)
              L29_2 = removeBird
              L30_2 = L25_2
              L29_2(L30_2)
              L25_2 = nil
            end
          end
        end
      end
    end
  end
  L21_2 = _G
  L21_2 = L21_2.pairs
  L22_2 = objects
  L22_2 = L22_2.world
  L21_2, L22_2, L23_2 = L21_2(L22_2)
  for L24_2, L25_2 in L21_2, L22_2, L23_2 do
    L26_2 = "isSensor"
    L26_2 = L25_2[L26_2]
    if not L26_2 then
      L26_2 = "density"
      L26_2 = L25_2[L26_2]
      L27_2 = 0
      if L26_2 ~= L27_2 then
        L26_2 = "inIndestructibleField"
        L26_2 = L25_2[L26_2]
        if L26_2 then
          L26_2 = "indestructibleFieldEmitter"
          L26_2 = L25_2[L26_2]
          if L26_2 then
            L26_2 = checkStillInWorld
            L27_2 = "indestructibleFieldEmitter"
            L27_2 = L25_2[L27_2]
            L26_2 = L26_2(L27_2)
            if L26_2 then
              L26_2 = "defence"
              L27_2 = 100000
              L25_2[L26_2] = L27_2
          end
          else
            L26_2 = "indestructibleFieldEmitter"
            L27_2 = nil
            L25_2[L26_2] = L27_2
            L26_2 = "inIndestructibleField"
            L27_2 = nil
            L25_2[L26_2] = L27_2
            L26_2 = blockTable
            L26_2 = L26_2.blocks
            L27_2 = L25_2.definition
            L26_2 = L26_2[L27_2]
            L27_2 = assert
            L28_2 = nil
            L28_2 = L26_2 ~= L28_2
            L29_2 = "Can't find definition for "
            L30_2 = L25_2.name
            L29_2 = L29_2 .. L30_2
            L27_2(L28_2, L29_2)
            L27_2 = "defence"
            L28_2 = "defence"
            L28_2 = L26_2[L28_2]
            L25_2[L27_2] = L28_2
          end
        end
        L26_2 = "inSlowDownField"
        L26_2 = L25_2[L26_2]
        if L26_2 then
          L26_2 = "slowDownFieldEmitter"
          L26_2 = L25_2[L26_2]
          if L26_2 then
            L26_2 = checkStillInWorld
            L27_2 = "slowDownFieldEmitter"
            L27_2 = L25_2[L27_2]
            L26_2 = L26_2(L27_2)
            if L26_2 then
              L26_2 = objects
              L26_2 = L26_2.world
              L27_2 = "slowDownFieldEmitter"
              L27_2 = L25_2[L27_2]
              L26_2 = L26_2[L27_2]
              L27_2 = blockTable
              L27_2 = L27_2.blocks
              L28_2 = L26_2.definition
              L27_2 = L27_2[L28_2]
              L28_2 = setLinearDamping
              L29_2 = L25_2.name
              L30_2 = "specialtySlowDownAmount"
              L30_2 = L27_2[L30_2]
              L28_2(L29_2, L30_2)
          end
          else
            L26_2 = "slowDownFieldEmitter"
            L27_2 = nil
            L25_2[L26_2] = L27_2
            L26_2 = "inSlowDownField"
            L27_2 = nil
            L25_2[L26_2] = L27_2
            L26_2 = setLinearDamping
            L27_2 = L25_2.name
            L28_2 = defaultPhysicsDrag
            L26_2(L27_2, L28_2)
          end
        end
      end
    end
    L26_2 = "controllable"
    L26_2 = L25_2[L26_2]
    L27_2 = true
    if L26_2 ~= L27_2 then
      L26_2 = "gravityFilterCategory"
      L26_2 = L25_2[L26_2]
      L27_2 = "IGNOREGRAVITY"
      if L26_2 == L27_2 then
        L26_2 = setObjectParameter
        L27_2 = L25_2.name
        L28_2 = 16
        L29_2 = 1
        L26_2(L27_2, L28_2, L29_2)
      end
      L26_2 = "usingForceDrag"
      L26_2 = L25_2[L26_2]
      if not L26_2 then
        L26_2 = "gravityFilterCategory"
        L26_2 = L25_2[L26_2]
        if not L26_2 then
          goto lbl_6129
        end
        L26_2 = "gravityFilterCategory"
        L26_2 = L25_2[L26_2]
        L27_2 = "FORCE_OBJECT"
        if L26_2 ~= L27_2 then
          L26_2 = "gravityFilterCategory"
          L26_2 = L25_2[L26_2]
          L27_2 = "YODA_FORCE_OBJECT"
          if L26_2 ~= L27_2 then
            L26_2 = "gravityFilterCategory"
            L26_2 = L25_2[L26_2]
            L27_2 = "HOVERING_OBJECT"
            if L26_2 ~= L27_2 then
              goto lbl_6129
            end
          end
        end
      end
      L26_2 = "usingForceDrag"
      L26_2 = L25_2[L26_2]
      if L26_2 then
        L26_2 = "gravityFilterCategory"
        L26_2 = L25_2[L26_2]
        if L26_2 then
          L26_2 = "gravityFilterCategory"
          L26_2 = L25_2[L26_2]
          L27_2 = "FORCE_OBJECT"
          if L26_2 ~= L27_2 then
            L26_2 = "gravityFilterCategory"
            L26_2 = L25_2[L26_2]
            L27_2 = "YODA_FORCE_OBJECT"
            if L26_2 ~= L27_2 then
              L26_2 = "gravityFilterCategory"
              L26_2 = L25_2[L26_2]
              L27_2 = "HOVERING_OBJECT"
              if L26_2 ~= L27_2 then
                L26_2 = setLinearDamping
                L27_2 = L25_2.name
                L28_2 = defaultPhysicsDrag
                L26_2(L27_2, L28_2)
                L26_2 = setAngularDamping
                L27_2 = L25_2.name
                L28_2 = defaultAngularDrag
                L26_2(L27_2, L28_2)
                L26_2 = "usingMinorDrag"
                L27_2 = false
                L25_2[L26_2] = L27_2
                L26_2 = "usingForceDrag"
                L27_2 = false
                L25_2[L26_2] = L27_2
                L26_2 = setObjectParameter
                L27_2 = L25_2.name
                L28_2 = 16
                L29_2 = 0
                L26_2(L27_2, L28_2, L29_2)
                L26_2 = "isHeldByForceTimer"
                L27_2 = forceGlowFadeTimer
                L25_2[L26_2] = L27_2
              end
            end
          end
        end
      else
        L26_2 = defaultForceDrag
        L27_2 = defaultForceDrag
        L28_2 = "gravityFilterCategory"
        L28_2 = L25_2[L28_2]
        if L28_2 then
          L28_2 = "gravityFilterCategory"
          L28_2 = L25_2[L28_2]
          L29_2 = "YODA_FORCE_OBJECT"
          if L28_2 == L29_2 then
            L26_2 = defaultYodaForceDrag
            L27_2 = defaultYodaForceDrag
        end
        else
          L28_2 = "gravityFilterCategory"
          L28_2 = L25_2[L28_2]
          if L28_2 then
            L28_2 = "gravityFilterCategory"
            L28_2 = L25_2[L28_2]
            L29_2 = "HOVERING_OBJECT"
            if L28_2 == L29_2 then
              L28_2 = "hoveringForceDrag"
              L28_2 = L25_2[L28_2]
              if not L28_2 then
                L28_2 = blockTable
                L28_2 = L28_2.blocks
                L29_2 = L25_2.definition
                L28_2 = L28_2[L29_2]
                L29_2 = "hoveringForceDrag"
                L28_2 = L28_2[L29_2]
                if not L28_2 then
                  L28_2 = defaultHoveringForceDrag
                end
              end
              L26_2 = L28_2
              L27_2 = L28_2
            end
          end
        end
        L28_2 = setLinearDamping
        L29_2 = L25_2.name
        L30_2 = L26_2
        L28_2(L29_2, L30_2)
        L28_2 = setAngularDamping
        L29_2 = L25_2.name
        L30_2 = L27_2
        L28_2(L29_2, L30_2)
        L28_2 = "usingForceDrag"
        L29_2 = true
        L25_2[L28_2] = L29_2
        L28_2 = "usingMinorDrag"
        L29_2 = false
        L25_2[L28_2] = L29_2
        L28_2 = setObjectParameter
        L29_2 = L25_2.name
        L30_2 = 16
        L31_2 = 1
        L28_2(L29_2, L30_2, L31_2)
        goto lbl_6174
        ::lbl_6129::
        L26_2 = "noDamping"
        L26_2 = L25_2[L26_2]
        if not L26_2 then
          L26_2 = isPhysicsEnabled
          L26_2 = L26_2()
          if L26_2 then
            L26_2 = "velocity"
            L26_2 = L25_2[L26_2]
            if L26_2 then
              L26_2 = "velocity"
              L26_2 = L25_2[L26_2]
              L27_2 = dragVelocityThreshold
              if L26_2 <= L27_2 then
                L26_2 = "usingMinorDrag"
                L26_2 = L25_2[L26_2]
                if not L26_2 then
                  L26_2 = setLinearDamping
                  L27_2 = L25_2.name
                  L28_2 = minorPhysicsDrag
                  L26_2(L27_2, L28_2)
                  L26_2 = "usingMinorDrag"
                  L27_2 = true
                  L25_2[L26_2] = L27_2
                end
            end
          end
          else
            L26_2 = "usingMinorDrag"
            L26_2 = L25_2[L26_2]
            if not L26_2 then
              L26_2 = "usingMinorDrag"
              L26_2 = L25_2[L26_2]
              L27_2 = nil
              if L26_2 ~= L27_2 then
                goto lbl_6174
              end
            end
            L26_2 = setLinearDamping
            L27_2 = L25_2.name
            L28_2 = defaultPhysicsDrag
            L26_2(L27_2, L28_2)
            L26_2 = "usingMinorDrag"
            L27_2 = false
            L25_2[L26_2] = L27_2
          end
        end
      end
    end
    ::lbl_6174::
    L26_2 = nil
    if L25_2 ~= L26_2 then
      L26_2 = "frozen"
      L26_2 = L25_2[L26_2]
      if L26_2 then
        L26_2 = "ignoreFrozen"
        L26_2 = L25_2[L26_2]
        if not L26_2 then
          L26_2 = fireAllObjectTriggerEvents
          L27_2 = L25_2.name
          L26_2(L27_2)
          L26_2 = "controllable"
          L26_2 = L25_2[L26_2]
          if L26_2 then
            L26_2 = removeBird
            L27_2 = L25_2
            L26_2(L27_2)
          else
            L26_2 = objects
            L26_2 = L26_2.worldGravity
            if L26_2 then
              L26_2 = "isSensor"
              L26_2 = L25_2[L26_2]
              if not L26_2 then
                L26_2 = "ignoreGameplayActions"
                L26_2 = L25_2[L26_2]
                if not L26_2 then
                  L26_2 = blockDestroyedScoreIncrement
                  L27_2 = blockTable
                  L27_2 = L27_2.blocks
                  L28_2 = L25_2.definition
                  L27_2 = L27_2[L28_2]
                  L28_2 = "destroyedScoreInc"
                  L27_2 = L27_2[L28_2]
                  if L27_2 then
                    L27_2 = blockTable
                    L27_2 = L27_2.blocks
                    L28_2 = L25_2.definition
                    L27_2 = L27_2[L28_2]
                    L28_2 = "destroyedScoreInc"
                    L26_2 = L27_2[L28_2]
                  end
                  L27_2 = blockTable
                  L27_2 = L27_2.blocks
                  L28_2 = L25_2.definition
                  L27_2 = L27_2[L28_2]
                  L28_2 = "scoreMultiplier"
                  L27_2 = L27_2[L28_2]
                  if not L27_2 then
                    L27_2 = 1
                  end
                  L26_2 = L26_2 * L27_2
                  L27_2 = scoreTable
                  L27_2 = L27_2.blocks
                  L28_2 = "score"
                  L29_2 = scoreTable
                  L29_2 = L29_2.blocks
                  L30_2 = "score"
                  L29_2 = L29_2[L30_2]
                  L29_2 = L29_2 + L26_2
                  L27_2[L28_2] = L29_2
                  L27_2 = addScoreToBird
                  L28_2 = L26_2
                  L27_2(L28_2)
                end
              end
            end
            L26_2 = removeObject
            L27_2 = L24_2
            L26_2(L27_2)
            L26_2 = objects
            L26_2 = L26_2.world
            L27_2 = nil
            L26_2[L24_2] = L27_2
            L26_2 = levelGoals
            L27_2 = nil
            L26_2[L24_2] = L27_2
            L26_2 = animatedObjects
            L27_2 = nil
            L26_2[L24_2] = L27_2
          end
          L25_2 = nil
        end
      end
    end
  end
  L21_2 = g_lineGravityVisualization
  if L21_2 then
    L21_2 = _G
    L21_2 = L21_2.pairs
    L22_2 = objects
    L23_2 = "sensorList"
    L22_2 = L22_2[L23_2]
    L23_2 = "gravitation"
    L22_2 = L22_2[L23_2]
    L21_2, L22_2, L23_2 = L21_2(L22_2)
    for L24_2, L25_2 in L21_2, L22_2, L23_2 do
      L26_2 = "sensorType"
      L26_2 = L25_2[L26_2]
      L27_2 = "gravitation"
      if L26_2 == L27_2 then
        L26_2 = "active"
        L26_2 = L25_2[L26_2]
        if L26_2 then
          L26_2 = "isWater"
          L26_2 = L25_2[L26_2]
          if not L26_2 then
            L26_2 = blockTable
            L26_2 = L26_2.blocks
            L27_2 = L25_2.definition
            L26_2 = L26_2[L27_2]
            L26_2 = L26_2.type
            L27_2 = "circle"
            if L26_2 == L27_2 then
              L26_2 = "addVisualTimer"
              L27_2 = "addVisualTimer"
              L27_2 = L25_2[L27_2]
              if L27_2 then
                L27_2 = "addVisualTimer"
                L27_2 = L25_2[L27_2]
                L27_2 = L27_2 - A1_2
                if L27_2 then
                  goto lbl_6305
                end
              end
              L27_2 = 0
              ::lbl_6305::
              L25_2[L26_2] = L27_2
              L26_2 = "gravityVisuals"
              L27_2 = "gravityVisuals"
              L27_2 = L25_2[L27_2]
              if not L27_2 then
                L27_2 = {}
              end
              L25_2[L26_2] = L27_2
              L26_2 = "addVisualTimer"
              L26_2 = L25_2[L26_2]
              L27_2 = 0
              if L26_2 <= L27_2 then
                L26_2 = "addVisualTimer"
                L27_2 = 4.5
                L25_2[L26_2] = L27_2
                L26_2 = _G
                L27_2 = "table"
                L26_2 = L26_2[L27_2]
                L27_2 = "insert"
                L26_2 = L26_2[L27_2]
                L27_2 = "gravityVisuals"
                L27_2 = L25_2[L27_2]
                L28_2 = {}
                L29_2 = blockTable
                L30_2 = "themes"
                L29_2 = L29_2[L30_2]
                L30_2 = currentTheme
                L29_2 = L29_2[L30_2]
                L30_2 = "gravitySliceSpriteFaded"
                L29_2 = L29_2[L30_2]
                L28_2.sprite = L29_2
                L29_2 = 0
                L28_2.x = L29_2
                L29_2 = 0
                L28_2.y = L29_2
                L29_2 = 1
                L28_2.scale = L29_2
                L29_2 = 9
                L28_2.timer = L29_2
                L26_2(L27_2, L28_2)
              end
              L26_2 = _G
              L26_2 = L26_2.pairs
              L27_2 = "gravityVisuals"
              L27_2 = L25_2[L27_2]
              L26_2, L27_2, L28_2 = L26_2(L27_2)
              for L29_2, L30_2 in L26_2, L27_2, L28_2 do
                L31_2 = L30_2.timer
                L32_2 = 9
                L31_2 = L31_2 / L32_2
                L32_2 = 0.97
                L31_2 = L31_2 * L32_2
                L30_2.scale = L31_2
                L31_2 = L30_2.timer
                L31_2 = L31_2 - A1_2
                L30_2.timer = L31_2
                L31_2 = L30_2.timer
                L32_2 = 0
                if L31_2 <= L32_2 then
                  L31_2 = _G
                  L32_2 = "table"
                  L31_2 = L31_2[L32_2]
                  L32_2 = "remove"
                  L31_2 = L31_2[L32_2]
                  L32_2 = "gravityVisuals"
                  L32_2 = L25_2[L32_2]
                  L33_2 = L29_2
                  L31_2(L32_2, L33_2)
                end
              end
            end
          end
        end
      end
    end
  end
  L21_2 = true
  if L6_2 == L21_2 then
    L21_2 = isInGameMode
    L21_2 = L21_2()
    if L21_2 then
      L21_2 = updateMultitouchSweep
      L22_2 = A1_2
      L23_2 = A2_2
      L21_2(L22_2, L23_2)
    end
  end
  L21_2 = updateCamera
  L22_2 = A1_2
  L21_2(L22_2)
  L21_2 = isPCVersion
  L21_2 = L21_2()
  if L21_2 then
    L21_2 = g_drawLevelCameraIndexes
    if L21_2 then
      L21_2 = "leftButton"
      L21_2 = A0_2[L21_2]
      L22_2 = "rightButton"
      L22_2 = A0_2[L22_2]
      L23_2 = gameCamera
      L25_2 = "getCurrentCameraIndex"
      L24_2 = L23_2
      L23_2 = L23_2[L25_2]
      L23_2 = L23_2(L24_2)
      L24_2 = 1
      L23_2 = L23_2 + L24_2
      if L21_2 then
        L25_2 = L21_2
        L24_2 = L21_2.setEnabled
        L26_2 = 1
        L26_2 = L23_2 ~= L26_2
        L24_2(L25_2, L26_2)
      end
      if L22_2 then
        L25_2 = L22_2
        L24_2 = L22_2.setEnabled
        L26_2 = gameCamera
        L28_2 = "getNumberOfCameras"
        L27_2 = L26_2
        L26_2 = L26_2[L28_2]
        L26_2 = L26_2(L27_2)
        L26_2 = L23_2 ~= L26_2
        L24_2(L25_2, L26_2)
      end
    end
  end
  L21_2 = _G
  L21_2 = L21_2.pairs
  L22_2 = objects
  L23_2 = "joints"
  L22_2 = L22_2[L23_2]
  L21_2, L22_2, L23_2 = L21_2(L22_2)
  for L24_2, L25_2 in L21_2, L22_2, L23_2 do
    L26_2 = "stopAtEdges"
    L26_2 = L25_2[L26_2]
    if L26_2 then
      L26_2 = handleJointLimits
      L27_2 = L25_2.name
      L28_2 = true
      L26_2(L27_2, L28_2)
    else
      L26_2 = "backAndForth"
      L26_2 = L25_2[L26_2]
      if L26_2 then
        L26_2 = handleJointLimits
        L27_2 = L25_2.name
        L28_2 = false
        L26_2(L27_2, L28_2)
      end
    end
  end
  L21_2 = ui
  L21_2 = L21_2.Frame
  L21_2 = L21_2.update
  L22_2 = A0_2
  L23_2 = A1_2
  L24_2 = A2_2
  L21_2(L22_2, L23_2, L24_2)
  L21_2 = updateCharacterAnimations
  L22_2 = A1_2
  L21_2(L22_2)
  L21_2 = updateThemeSpriteAnimations
  L22_2 = A1_2
  L21_2(L22_2)
  L21_2 = updateCameraShake
  L22_2 = A1_2
  L21_2(L22_2)
  L21_2 = oldCursor
  L22_2 = cursor
  L22_2 = L22_2.x
  L21_2.x = L22_2
  L21_2 = oldCursor
  L22_2 = cursor
  L22_2 = L22_2.y
  L21_2.y = L22_2
  L21_2 = g_wheelSpeed
  L22_2 = _G
  L22_2 = L22_2.math
  L23_2 = "pow"
  L22_2 = L22_2[L23_2]
  L23_2 = _G
  L23_2 = L23_2.math
  L24_2 = "min"
  L23_2 = L23_2[L24_2]
  L24_2 = 1
  L25_2 = _G
  L25_2 = L25_2.math
  L26_2 = "max"
  L25_2 = L25_2[L26_2]
  L26_2 = 0.05
  L27_2 = A1_2
  L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2 = L25_2(L26_2, L27_2)
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
  L24_2 = 1
  L23_2 = L24_2 - L23_2
  L24_2 = 1.25
  L22_2 = L22_2(L23_2, L24_2)
  L21_2 = L21_2 * L22_2
  g_wheelSpeed = L21_2
  L21_2 = flyingBird
  L22_2 = nil
  if L21_2 ~= L22_2 then
    L21_2 = flyingBird
    L22_2 = "resetAngle"
    L21_2 = L21_2[L22_2]
    L22_2 = nil
    if L21_2 ~= L22_2 then
      L21_2 = setRotation
      L22_2 = flyingBird
      L22_2 = L22_2.name
      L23_2 = flyingBird
      L24_2 = "resetAngle"
      L23_2 = L23_2[L24_2]
      L21_2(L22_2, L23_2)
      L21_2 = flyingBird
      L22_2 = "resetAngle"
      L23_2 = nil
      L21_2[L22_2] = L23_2
    end
  end
  L21_2 = _G
  L21_2 = L21_2.pairs
  L22_2 = birds
  L21_2, L22_2, L23_2 = L21_2(L22_2)
  for L24_2, L25_2 in L21_2, L22_2, L23_2 do
    L26_2 = "controllable"
    L26_2 = L25_2[L26_2]
    if L26_2 then
      L26_2 = "shot"
      L26_2 = L25_2[L26_2]
      if not L26_2 then
        L26_2 = blockTable
        L26_2 = L26_2.blocks
        L27_2 = L25_2.definition
        L26_2 = L26_2[L27_2]
        L27_2 = levelCompleted
        if L27_2 then
          L27_2 = "sprites"
          L27_2 = L26_2[L27_2]
          L28_2 = "cheer"
          L27_2 = L27_2[L28_2]
          if L27_2 then
            L27_2 = setSprite
            L28_2 = L25_2.name
            L29_2 = "sprites"
            L29_2 = L26_2[L29_2]
            L30_2 = "cheer"
            L29_2 = L29_2[L30_2]
            L27_2(L28_2, L29_2)
        end
        else
          L27_2 = "states"
          L27_2 = L26_2[L27_2]
          if L27_2 then
            L27_2 = "states"
            L27_2 = L26_2[L27_2]
            L28_2 = "default"
            L27_2 = L27_2[L28_2]
            if L27_2 then
              L27_2 = "states"
              L27_2 = L26_2[L27_2]
              L28_2 = "default"
              L27_2 = L27_2[L28_2]
              L28_2 = "animation"
              L27_2 = L27_2[L28_2]
              if L27_2 then
                goto lbl_6634
              end
            end
          end
          L27_2 = "blinkingTimer"
          L28_2 = "blinkingTimer"
          L28_2 = L25_2[L28_2]
          if not L28_2 then
            L28_2 = 0
          end
          L28_2 = L28_2 - A1_2
          L25_2[L27_2] = L28_2
          L27_2 = "blinkingTimer"
          L27_2 = L25_2[L27_2]
          L28_2 = 0
          if L27_2 < L28_2 then
            L27_2 = "blinking"
            L28_2 = "blinking"
            L28_2 = L25_2[L28_2]
            L28_2 = not L28_2
            L25_2[L27_2] = L28_2
            L27_2 = "blinking"
            L27_2 = L25_2[L27_2]
            if L27_2 then
              L27_2 = setSprite
              L28_2 = L25_2.name
              L29_2 = "sprites"
              L29_2 = L26_2[L29_2]
              L30_2 = "blink"
              L29_2 = L29_2[L30_2]
              L27_2(L28_2, L29_2)
              L27_2 = "blinkingTimer"
              L28_2 = _G
              L28_2 = L28_2.math
              L28_2 = L28_2.random
              L28_2 = L28_2()
              L29_2 = 0.2
              L28_2 = L29_2 * L28_2
              L29_2 = 0.1
              L28_2 = L29_2 + L28_2
              L25_2[L27_2] = L28_2
            else
              L27_2 = setSprite
              L28_2 = L25_2.name
              L29_2 = "sprites"
              L29_2 = L26_2[L29_2]
              L30_2 = "default"
              L29_2 = L29_2[L30_2]
              L27_2(L28_2, L29_2)
              L27_2 = "blinkingTimer"
              L28_2 = _G
              L28_2 = L28_2.math
              L28_2 = L28_2.random
              L28_2 = L28_2()
              L29_2 = 5
              L28_2 = L28_2 * L29_2
              L29_2 = 1
              L28_2 = L29_2 + L28_2
              L25_2[L27_2] = L28_2
            end
          end
        end
      end
    end
    ::lbl_6634::
  end
  L21_2 = _G
  L22_2 = "ipairs"
  L21_2 = L21_2[L22_2]
  L22_2 = g_waterLayers
  L21_2, L22_2, L23_2 = L21_2(L22_2)
  for L24_2, L25_2 in L21_2, L22_2, L23_2 do
    L26_2 = _G
    L26_2 = L26_2.math
    L26_2 = L26_2.sin
    L27_2 = L25_2.speed
    L27_2 = A2_2 * L27_2
    L28_2 = "offset"
    L28_2 = L25_2[L28_2]
    L27_2 = L27_2 + L28_2
    L26_2 = L26_2(L27_2)
    L27_2 = "movement"
    L27_2 = L25_2[L27_2]
    L26_2 = L26_2 * L27_2
    L27_2 = "velX"
    L27_2 = L25_2[L27_2]
    L27_2 = A2_2 * L27_2
    L26_2 = L26_2 + L27_2
    L27_2 = _G
    L27_2 = L27_2.math
    L27_2 = L27_2.sin
    L28_2 = L25_2.speed
    L28_2 = A2_2 * L28_2
    L29_2 = "offset"
    L29_2 = L25_2[L29_2]
    L28_2 = L28_2 + L29_2
    L27_2 = L27_2(L28_2)
    L28_2 = "scaling"
    L28_2 = L25_2[L28_2]
    L27_2 = L27_2 * L28_2
    L28_2 = native_setThemeLayerOffset
    L29_2 = "index"
    L29_2 = L25_2[L29_2]
    L30_2 = "isFg"
    L30_2 = L25_2[L30_2]
    L31_2 = "xPos"
    L31_2 = L25_2[L31_2]
    L31_2 = L31_2 + L26_2
    L32_2 = "yPos"
    L32_2 = L25_2[L32_2]
    L28_2(L29_2, L30_2, L31_2, L32_2)
    L28_2 = native_setThemeLayerScale
    L29_2 = "index"
    L29_2 = L25_2[L29_2]
    L30_2 = "isFg"
    L30_2 = L25_2[L30_2]
    L31_2 = L25_2.scaleX
    L32_2 = L25_2.scaleY
    L32_2 = L32_2 + L27_2
    L28_2(L29_2, L30_2, L31_2, L32_2)
  end
  L21_2 = selectedBird
  if L21_2 then
    L21_2 = levelCompleted
    if not L21_2 then
      L21_2 = g_aimingAidAttributes
      L22_2 = "enabled"
      L21_2 = L21_2[L22_2]
      L22_2 = true
      if L21_2 == L22_2 then
        L21_2 = simulateTrajectory
        L21_2()
      end
    end
  end
  L21_2 = g_levelEndCameraActive
  if L21_2 then
    L21_2 = gameCamera
    L22_2 = "cameraAnimationSlider"
    L21_2 = L21_2[L22_2]
    L22_2 = 0.001
    if L21_2 > L22_2 then
      L21_2 = vLength
      L22_2 = objects
      L23_2 = "castleCameraData"
      L22_2 = L22_2[L23_2]
      L23_2 = deviceModel
      L22_2 = L22_2[L23_2]
      L23_2 = "px"
      L22_2 = L22_2[L23_2]
      L23_2 = objects
      L24_2 = "birdCameraData"
      L23_2 = L23_2[L24_2]
      L24_2 = deviceModel
      L23_2 = L23_2[L24_2]
      L24_2 = "px"
      L23_2 = L23_2[L24_2]
      L22_2 = L22_2 - L23_2
      L23_2 = objects
      L24_2 = "castleCameraData"
      L23_2 = L23_2[L24_2]
      L24_2 = deviceModel
      L23_2 = L23_2[L24_2]
      L24_2 = "py"
      L23_2 = L23_2[L24_2]
      L24_2 = objects
      L25_2 = "birdCameraData"
      L24_2 = L24_2[L25_2]
      L25_2 = deviceModel
      L24_2 = L24_2[L25_2]
      L25_2 = "py"
      L24_2 = L24_2[L25_2]
      L23_2 = L23_2 - L24_2
      L21_2 = L21_2(L22_2, L23_2)
      L22_2 = moveToBirdCamera
      L23_2 = L21_2
      L22_2(L23_2)
    else
      L21_2 = false
      g_levelEndCameraActive = L21_2
    end
  end
  L21_2 = g_additionalBirdGravity
  if not L21_2 then
    L21_2 = objects
    L22_2 = "windForce"
    L21_2 = L21_2[L22_2]
    L22_2 = 0
    if L21_2 == L22_2 then
      goto lbl_6868
    end
  end
  L21_2 = flyingBird
  L22_2 = nil
  if L21_2 ~= L22_2 then
    L21_2 = flyingBird
    L21_2 = L21_2.hasCollided
    if not L21_2 then
      L21_2 = flyingBird
      L22_2 = "ignoringGravity"
      L21_2 = L21_2[L22_2]
      if not L21_2 then
        L21_2 = objects
        L22_2 = "windForce"
        L21_2 = L21_2[L22_2]
        L22_2 = objects
        L23_2 = "gravityForceMultiplier"
        L22_2 = L22_2[L23_2]
        L21_2 = L21_2 * L22_2
        L22_2 = g_additionalBirdGravity
        if not L22_2 then
          L22_2 = 0
        end
        L23_2 = applyForce
        L24_2 = flyingBird
        L24_2 = L24_2.name
        L25_2 = flyingBird
        L26_2 = "mass"
        L25_2 = L25_2[L26_2]
        L25_2 = L21_2 * L25_2
        L26_2 = flyingBird
        L27_2 = "mass"
        L26_2 = L26_2[L27_2]
        L26_2 = L22_2 * L26_2
        L27_2 = flyingBird
        L27_2 = L27_2.x
        L28_2 = flyingBird
        L28_2 = L28_2.y
        L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
        L23_2 = flyingBird
        L24_2 = "spawnRelativeObjects"
        L23_2 = L23_2[L24_2]
        if L23_2 then
          L23_2 = _G
          L24_2 = "ipairs"
          L23_2 = L23_2[L24_2]
          L24_2 = flyingBird
          L25_2 = "spawnRelativeObjects"
          L24_2 = L24_2[L25_2]
          L23_2, L24_2, L25_2 = L23_2(L24_2)
          for L26_2, L27_2 in L23_2, L24_2, L25_2 do
            L28_2 = checkStillInWorld
            L29_2 = L27_2
            L28_2 = L28_2(L29_2)
            if L28_2 then
              L28_2 = objects
              L28_2 = L28_2.world
              L28_2 = L28_2[L27_2]
              L29_2 = applyForce
              L30_2 = L28_2.name
              L31_2 = "mass"
              L31_2 = L28_2[L31_2]
              L31_2 = L21_2 * L31_2
              L32_2 = "mass"
              L32_2 = L28_2[L32_2]
              L32_2 = L22_2 * L32_2
              L33_2 = L28_2.x
              L34_2 = L28_2.y
              L29_2(L30_2, L31_2, L32_2, L33_2, L34_2)
              L29_2 = "spawnRelativeObjects"
              L29_2 = L28_2[L29_2]
              if L29_2 then
                L29_2 = _G
                L30_2 = "ipairs"
                L29_2 = L29_2[L30_2]
                L30_2 = "spawnRelativeObjects"
                L30_2 = L28_2[L30_2]
                L29_2, L30_2, L31_2 = L29_2(L30_2)
                for L32_2, L33_2 in L29_2, L30_2, L31_2 do
                  L34_2 = checkStillInWorld
                  L35_2 = L33_2
                  L34_2 = L34_2(L35_2)
                  if L34_2 then
                    L34_2 = objects
                    L34_2 = L34_2.world
                    L34_2 = L34_2[L33_2]
                    L35_2 = applyForce
                    L36_2 = L34_2.name
                    L37_2 = "mass"
                    L37_2 = L34_2[L37_2]
                    L37_2 = L21_2 * L37_2
                    L38_2 = "mass"
                    L38_2 = L34_2[L38_2]
                    L38_2 = L22_2 * L38_2
                    L39_2 = L34_2.x
                    L40_2 = L34_2.y
                    L35_2(L36_2, L37_2, L38_2, L39_2, L40_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_6868::
  L21_2 = showEditor
  if not L21_2 then
    L21_2 = SettingsWrapper
    L23_2 = "getHintsEnabled"
    L22_2 = L21_2
    L21_2 = L21_2[L23_2]
    L21_2 = L21_2(L22_2)
    if L21_2 then
      L21_2 = ui
      L22_2 = "isTimeToShowHintPopup"
      L21_2 = L21_2[L22_2]
      L21_2 = L21_2()
      if L21_2 then
        L21_2 = eventManager
        L23_2 = "notify"
        L22_2 = L21_2
        L21_2 = L21_2[L23_2]
        L23_2 = {}
        L24_2 = "id"
        L25_2 = events
        L26_2 = "EID_SHOW_HINT_POPUP"
        L25_2 = L25_2[L26_2]
        L23_2[L24_2] = L25_2
        L21_2(L22_2, L23_2)
      end
    end
  end
  L21_2 = screen
  if L21_2 then
    L21_2 = oldScreen
    if L21_2 then
      L21_2 = {}
      L22_2 = oldScreen
      L22_2 = L22_2.x
      L23_2 = screen
      L23_2 = L23_2.x
      L22_2 = L22_2 - L23_2
      L23_2 = worldScale
      L22_2 = L22_2 * L23_2
      L21_2.x = L22_2
      L22_2 = oldScreen
      L22_2 = L22_2.y
      L23_2 = screen
      L23_2 = L23_2.y
      L22_2 = L22_2 - L23_2
      L23_2 = worldScale
      L22_2 = L22_2 * L23_2
      L21_2.y = L22_2
      L22_2 = "fgMult"
      L23_2 = 1.1
      L21_2[L22_2] = L23_2
      L22_2 = "bgMult"
      L23_2 = 0.8
      L21_2[L22_2] = L23_2
      screenDelta = L21_2
    end
  end
end

L0_1.update = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = fadeTimer
  if L3_2 then
    L3_2 = fadeIsFadeIn
    if L3_2 then
      L3_2 = fadeTimer
      L3_2 = L3_2 + A1_2
      fadeTimer = L3_2
      L3_2 = fadeTimer
      L4_2 = fadeTotalTimer
      if L3_2 > L4_2 then
        L3_2 = nil
        fadeTimer = L3_2
        L3_2 = nil
        fadeTotalTimer = L3_2
      end
    else
      L3_2 = fadeTimer
      L3_2 = L3_2 - A1_2
      fadeTimer = L3_2
      L3_2 = fadeTimer
      if L3_2 < 0 then
        L3_2 = nil
        fadeTimer = L3_2
        L3_2 = nil
        fadeTotalTimer = L3_2
      end
    end
  end
end

L0_1.updateFade = L1_1
L0_1 = 1
TRANSITION_TYPE_SWIPE_FROM_LEFT = L0_1
L0_1 = 2
TRANSITION_TYPE_SWIPE_FROM_RIGHT = L0_1
L0_1 = 3
TRANSITION_TYPE_SWIPE_FROM_TOP = L0_1
L0_1 = 4
TRANSITION_TYPE_SWIPE_FROM_BOTTOM = L0_1
L0_1 = {}
L1_1 = 1
L2_1 = 1
L3_1 = 1
L4_1 = 1
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
transitionTimes = L0_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = transitionStarted
  if L3_2 then
    L3_2 = transitionTimer
    L3_2 = L3_2 + A1_2
    transitionTimer = L3_2
    L3_2 = transitionTimer
    L4_2 = transitionTimes
    L5_2 = transitionType
    L4_2 = L4_2[L5_2]
    if L3_2 >= L4_2 then
      L3_2 = nil
      transitionTimer = L3_2
      L3_2 = nil
      transitionBGColor = L3_2
      L3_2 = nil
      transitionStarted = L3_2
      L3_2 = _G
      L3_2 = L3_2.res
      L3_2 = L3_2.releaseSpriteSheet
      L4_2 = "CAPTURED_SCREENSHOT"
      L3_2(L4_2)
    end
  end
end

L0_1.updateTransition = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = transitionTimer
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = 0
    L3_2 = screenWidth
    L4_2 = screenHeight
    L5_2 = transitionType
    L6_2 = TRANSITION_TYPE_SWIPE_FROM_LEFT
    if L5_2 == L6_2 then
      L5_2 = transitionTimer
      L6_2 = transitionTimes
      L7_2 = transitionType
      L6_2 = L6_2[L7_2]
      L5_2 = L5_2 / L6_2
      L6_2 = screenWidth
      L5_2 = L5_2 * L6_2
      L1_2 = L5_2
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.ceil
      L7_2 = screenWidth
      L7_2 = L7_2 - L5_2
      L6_2 = L6_2(L7_2)
      L3_2 = L6_2
    else
      L5_2 = transitionType
      L6_2 = TRANSITION_TYPE_SWIPE_FROM_RIGHT
      if L5_2 == L6_2 then
        L5_2 = transitionTimer
        L6_2 = transitionTimes
        L7_2 = transitionType
        L6_2 = L6_2[L7_2]
        L5_2 = L5_2 / L6_2
        L6_2 = screenWidth
        L5_2 = L5_2 * L6_2
        L6_2 = screenWidth
        L3_2 = L6_2 - L5_2
      else
        L5_2 = transitionType
        L6_2 = TRANSITION_TYPE_SWIPE_FROM_TOP
        if L5_2 == L6_2 then
          L5_2 = transitionTimer
          L6_2 = transitionTimes
          L7_2 = transitionType
          L6_2 = L6_2[L7_2]
          L5_2 = L5_2 / L6_2
          L6_2 = screenHeight
          L5_2 = L5_2 * L6_2
          L2_2 = L5_2
          L6_2 = _G
          L6_2 = L6_2.math
          L6_2 = L6_2.ceil
          L7_2 = screenHeight
          L7_2 = L7_2 - L5_2
          L6_2 = L6_2(L7_2)
          L4_2 = L6_2
        else
          L5_2 = transitionType
          L6_2 = TRANSITION_TYPE_SWIPE_FROM_BOTTOM
          if L5_2 == L6_2 then
            L5_2 = transitionTimer
            L6_2 = transitionTimes
            L7_2 = transitionType
            L6_2 = L6_2[L7_2]
            L5_2 = L5_2 / L6_2
            L6_2 = screenHeight
            L5_2 = L5_2 * L6_2
            L6_2 = screenHeight
            L4_2 = L6_2 - L5_2
          end
        end
      end
    end
    L5_2 = setRenderState
    L6_2 = 0
    L7_2 = 0
    L8_2 = 1
    L9_2 = 1
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L13_2 = 1
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = _G
    L5_2 = L5_2.res
    L5_2 = L5_2.setClipRect
    L6_2 = L1_2
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = transitionBGColor
    if L5_2 ~= nil then
      L5_2 = deviceModel
      if L5_2 ~= "wp7" then
        L5_2 = drawRect
        L6_2 = 0
        L7_2 = 0
        L8_2 = 0
        L9_2 = 1
        L10_2 = L1_2
        L11_2 = L2_2
        L12_2 = L1_2 + L3_2
        L13_2 = L2_2 + L4_2
        L14_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
    L5_2 = _G
    L5_2 = L5_2.res
    L5_2 = L5_2.drawSprite
    L6_2 = "CAPTURED_SCREENSHOT"
    L7_2 = 0
    L8_2 = 0
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = _G
    L5_2 = L5_2.res
    L5_2 = L5_2.setClipRect
    L6_2 = 0
    L7_2 = 0
    L8_2 = screenWidth
    L9_2 = screenHeight
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end

L0_1.drawTransition = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = isTransitionSupported
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = 0
  transitionTimer = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.random
  L2_2 = transitionTimes
  L2_2 = #L2_2
  L1_2 = L1_2(L2_2)
  transitionType = L1_2
  L1_2 = shouldDrawCursor
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = clearScreen
    L1_2()
    L1_2 = g_currentCursorName
    g_queuedCursorName = L1_2
    L1_2 = ""
    g_currentCursorName = L1_2
    L1_2 = ui
    L1_2 = L1_2.LevelButton
    L1_2.batchesDrawn = false
    L1_2 = ui
    L1_2 = L1_2.BonusLevelButton
    L1_2.batchesDrawn = false
    L2_2 = A0_2
    L1_2 = A0_2.draw
    L3_2 = 0
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = {}
  transitionBGColor = L1_2
  L1_2 = transitionBGColor
  L2_2 = transitionBGColor
  L3_2 = transitionBGColor
  L4_2 = getBGColor
  L4_2, L5_2, L6_2 = L4_2()
  L3_2.b = L6_2
  L2_2.g = L5_2
  L1_2.r = L4_2
  L1_2 = print
  L2_2 = "moving from: CAPTURE"
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.captureSprite
  L2_2 = "CAPTURED_SCREENSHOT"
  L1_2(L2_2)
end

L0_1.initializeTransition = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2
  L1_2 = transitionTimer
  if L1_2 then
    L1_2 = true
    transitionStarted = L1_2
  end
end

L0_1.startTransition = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ui
  L2_2 = L2_2.PurchaseRedirectDialog
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.missingCoins = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.queueEvent
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_PUSH_FRAME
  L5_2.id = L6_2
  L5_2.target = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.showPurchaseRedirectDialog = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  L4_2.startNumber = A1_2
  L4_2.episodeType = A2_2
  L5_2 = gameCamera
  L6_2 = L5_2
  L5_2 = L5_2.getCurrentCameraIndex
  L5_2 = L5_2(L6_2)
  L4_2.cameraIndex = L5_2
  L5_2 = actions
  L5_2 = L5_2.myLevelFolders
  L6_2 = actions
  L6_2 = L6_2.episodeTypeTable
  L6_2 = L6_2[A2_2]
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2[A1_2]
  L6_2 = actions
  L6_2 = L6_2.myLevelFolders
  L7_2 = actions
  L7_2 = L7_2.episodeTypeTable
  L7_2 = L7_2[A2_2]
  L6_2 = L6_2[L7_2]
  L7_2 = A1_2 + 1
  L6_2 = L6_2[L7_2]
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.queueEvent
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_PUSH_FRAME
  L9_2.id = L10_2
  L10_2 = ui
  L10_2 = L10_2.EpicSelection
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L12_2.name = "EpicSelection"
  L12_2.enteredSide = nil
  L12_2.showCoinFrame = true
  L12_2.price = A3_2
  L12_2.lightSideEpisodeName = L5_2
  L12_2.darkSideEpisodeName = L6_2
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = SettingsWrapper
    L1_3 = L0_3
    L0_3 = L0_3.setIsDarkSide
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = eventManager
    L1_3 = L0_3
    L0_3 = L0_3.notify
    L2_3 = {}
    L3_3 = events
    L3_3 = L3_3.EID_GOTO_EPISODE_CLICKED
    L2_3.id = L3_3
    L3_3 = L5_2
    L2_3.episode = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = SettingsWrapper
    L1_3 = L0_3
    L0_3 = L0_3.startEpisode
    L2_3 = L5_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = getEpisodeNumberWithType
    L2_3 = 1
    L3_3 = L5_2
    L1_3 = L1_3(L2_3, L3_3)
    L0_3.startNumber = L1_3
    L0_3 = gotoLevelSelectionMenu
    L1_3 = L4_2
    L0_3(L1_3)
  end
  
  L12_2.selectLightSide = L13_2
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = SettingsWrapper
    L1_3 = L0_3
    L0_3 = L0_3.setIsDarkSide
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = eventManager
    L1_3 = L0_3
    L0_3 = L0_3.notify
    L2_3 = {}
    L3_3 = events
    L3_3 = L3_3.EID_GOTO_EPISODE_CLICKED
    L2_3.id = L3_3
    L3_3 = L6_2
    L2_3.episode = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = SettingsWrapper
    L1_3 = L0_3
    L0_3 = L0_3.startEpisode
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = getEpisodeNumberWithType
    L2_3 = 1
    L3_3 = L6_2
    L1_3 = L1_3(L2_3, L3_3)
    L0_3.startNumber = L1_3
    L0_3 = gotoLevelSelectionMenu
    L1_3 = L4_2
    L0_3(L1_3)
  end
  
  L12_2.selectDarkSide = L13_2
  L13_2 = inMenuSpace
  L12_2.inMenuSpace = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.target = L10_2
  L7_2(L8_2, L9_2)
end

L0_1.showEpicSelectionWithPurchaseOption = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = getLevelMetadata
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L7_2 = A0_2
  L6_2 = A0_2.activateLevel
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = A2_2.startNumber
  L6_2 = L6_2 - 1
  if L4_2 then
    L7_2 = L4_2.isAlternativePathLevel
    if L7_2 then
      goto lbl_72
    end
  end
  while 0 < L6_2 do
    L7_2 = actions
    L7_2 = L7_2.myLevels
    L8_2 = currentFolder
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2[L6_2]
    L9_2 = A0_2
    L8_2 = A0_2.getLevelButtonWithName
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = getLevelMetadata
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L10_2 = isLevelUnlocked
    L11_2 = currentFolder
    L12_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      if L9_2 then
        L10_2 = L9_2.unlockedAsDefault
        if L10_2 then
          goto lbl_43
        end
      end
      L10_2 = highscores
      L10_2 = L10_2[L7_2]
      if L10_2 then
        goto lbl_70
      end
    end
    ::lbl_43::
    L10_2 = isLevelComic
    L11_2 = currentFolder
    L12_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2)
    if not L10_2 then
      L10_2 = isLevelUnlocked
      L11_2 = currentFolder
      L12_2 = L6_2
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L5_2 = L5_2 + 1
      end
    end
    L10_2 = SettingsWrapper
    L11_2 = L10_2
    L10_2 = L10_2.setLevelBoughtOpen
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    if L9_2 then
      L10_2 = L9_2.unlockedAsDefault
      if L10_2 then
        goto lbl_68
      end
    end
    L11_2 = A0_2
    L10_2 = A0_2.activateLevel
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    ::lbl_68::
    L6_2 = L6_2 - 1
    goto lbl_71
    ::lbl_70::
    L6_2 = 0
    ::lbl_71::
  end
  ::lbl_72::
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.notify
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_INVENTORY_USED
  L9_2.id = L10_2
  L9_2.typeOfItem = "coin"
  L9_2.amount = A3_2
  L10_2 = "Bought open level "
  L11_2 = A1_2
  L10_2 = L10_2 .. L11_2
  L9_2.typeOfUse = L10_2
  L9_2.iapType = "coin"
  L7_2(L8_2, L9_2)
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.notify
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_LEVEL_BOUGHT
  L9_2.id = L10_2
  L9_2.name = A1_2
  L9_2.price = A3_2
  L9_2.numberOfLevels = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = addCoins
  L8_2 = -A3_2
  L7_2(L8_2)
  L7_2 = saveSettings
  L7_2()
end

L0_1.onLevelPurchase = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = print
  L3_2 = "Activating level "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getLevelButtonWithName
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = _G
    L3_2 = L3_2.assert
    L4_2 = false
    L5_2 = "No level found in GameScene:activateLevel()"
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.activateLevelButton
  L5_2 = L2_2.name
  L3_2(L4_2, L5_2)
end

L0_1.activateLevel = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.children
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.buttonLevelName
    if L7_2 then
      L7_2 = L6_2.buttonLevelName
      if L7_2 == A1_2 then
        return L6_2
      end
    end
  end
end

L0_1.getLevelButtonWithName = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.startOpeningAnimation
  L3_2(L4_2)
  L2_2.disabled = false
end

L0_1.activateLevelButton = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = print
  L5_2 = " <GameScene:showHalfEpisodePurchaseOption > : meta = "
  L6_2 = _G
  L6_2 = L6_2.tostring
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
  L4_2 = A1_2.physicsObject
  if not L4_2 then
    L4_2 = A1_2.parentPhysicsObject
  end
  if not L4_2 then
    L4_2 = A1_2.metaData
  end
  L5_2 = -1
  L6_2 = {}
  L7_2 = L4_2.startNumber
  L6_2.startNumber = L7_2
  L7_2 = L4_2.episodeType
  L6_2.episodeType = L7_2
  L6_2.cameraIndex = nil
  if A2_2 == "DARK" then
    L7_2 = L6_2.startNumber
    L7_2 = L7_2 + 1
    L6_2.startNumber = L7_2
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.setIsDarkSide
    L9_2 = true
    L7_2(L8_2, L9_2)
  else
    L7_2 = SettingsWrapper
    L8_2 = L7_2
    L7_2 = L7_2.setIsDarkSide
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  L7_2 = L6_2.startNumber
  if L7_2 then
    L7_2 = actions
    L7_2 = L7_2.myLevelFolders
    L8_2 = actions
    L8_2 = L8_2.episodeTypeTable
    L9_2 = L6_2.episodeType
    L8_2 = L8_2[L9_2]
    L7_2 = L7_2[L8_2]
    L8_2 = L6_2.startNumber
    L5_2 = L7_2[L8_2]
  end
  L7_2 = addCoins
  L8_2 = -A3_2
  L7_2(L8_2)
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.notify
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_INVENTORY_USED
  L9_2.id = L10_2
  L9_2.typeOfItem = "coin"
  L9_2.amount = A3_2
  L10_2 = "Bought open episode "
  L11_2 = L5_2
  L10_2 = L10_2 .. L11_2
  L9_2.typeOfUse = L10_2
  L9_2.iapType = "coin"
  L7_2(L8_2, L9_2)
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.notify
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_EPISODE_BOUGHT
  L9_2.id = L10_2
  L9_2.name = L5_2
  L9_2.price = A3_2
  L7_2(L8_2, L9_2)
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.notify
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_GOTO_EPISODE_CLICKED
  L9_2.id = L10_2
  L9_2.episode = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.startEpisode
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = gotoLevelSelectionMenu
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = eventManager
  L8_2 = L7_2
  L7_2 = L7_2.queueEvent
  L9_2 = {}
  L10_2 = events
  L10_2 = L10_2.EID_CHECK_ALL_QUESTS
  L9_2.id = L10_2
  L9_2.questName = "Dark Side Opened"
  L7_2(L8_2, L9_2)
  if A2_2 == "DARK" then
    L8_2 = L5_2
    L7_2 = L5_2.gsub
    L9_2 = "_dark"
    L10_2 = ""
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      goto lbl_110
    end
  end
  L8_2 = L5_2
  L7_2 = L5_2.gsub
  L9_2 = "_light"
  L10_2 = ""
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  ::lbl_110::
  L8_2 = isEpisodeSideDisabled
  L9_2 = L7_2
  L10_2 = "_light"
  L9_2 = L9_2 .. L10_2
  L10_2 = true
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = isEpisodeSideDisabled
    L9_2 = L7_2
    L10_2 = "_dark"
    L9_2 = L9_2 .. L10_2
    L10_2 = false
    L8_2 = L8_2(L9_2, L10_2)
    if not L8_2 then
      L8_2 = SettingsWrapper
      L9_2 = L8_2
      L8_2 = L8_2.setEpisodeEpicSelectionShown
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end

L0_1.onEpisodePurchase = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = {}
  L4_2.topLeft = "TUTBOX_TOP_LEFT_"
  L4_2.topMiddle = "TUTBOX_TOP_MIDDLE_"
  L4_2.topRight = "TUTBOX_TOP_RIGHT_"
  L4_2.left = "TUTBOX_MIDDLE_LEFT_"
  L4_2.center = "TUTBOX_CENTER_"
  L4_2.right = "TUTBOX_MIDDLE_RIGHT_"
  L4_2.bottomLeft = "TUTBOX_BOTTOM_LEFT_"
  L4_2.bottomMiddle = "TUTBOX_BOTTOM_MIDDLE_"
  L4_2.bottomRight = "TUTBOX_BOTTOM_RIGHT_"
  L5_2 = getText
  L6_2 = "TEXT_SIDE_LOCKED_TITLE"
  L5_2 = L5_2(L6_2)
  L6_2 = [[


]]
  L7_2 = A1_2.missingStars
  if 1 < L7_2 then
    L7_2 = getText
    L8_2 = "TEXT_STAR_PLURAL"
    L9_2 = {}
    L10_2 = "$AMOUNT"
    L11_2 = A1_2.missingStars
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_34
    end
  end
  L7_2 = getText
  L8_2 = "TEXT_STAR_SINGULAR"
  L9_2 = {}
  L10_2 = "$AMOUNT"
  L11_2 = A1_2.missingStars
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L7_2 = L7_2(L8_2, L9_2)
  ::lbl_34::
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = getText
  L7_2 = "TEXT_UNLOCK_EPISODE_WITH_COINS"
  L6_2 = L6_2(L7_2)
  L7_2 = " #"
  L8_2 = A3_2
  L7_2 = L7_2 .. L8_2
  L8_2 = ui
  L8_2 = L8_2.ConfirmPrompt
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.title = L5_2
  L10_2.name = "episodeNotOpenDialog"
  L10_2.content = L6_2
  L11_2 = getFontBasic
  L11_2 = L11_2()
  L10_2.contentFont = L11_2
  L10_2.secondaryContent = L7_2
  L11_2 = getFontIngameMoney
  L11_2 = L11_2()
  L10_2.secondaryFont = L11_2
  L10_2.boxComponents = L4_2
  L10_2.closeOnCancelKeyHandler = ""
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = SettingsWrapper
    L1_3 = L0_3
    L0_3 = L0_3.getAmount
    L2_3 = "coins"
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = A3_2
    L0_3 = L0_3 >= L1_3
    if L0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.onEpisodePurchase
      L3_3 = A1_2
      L4_3 = A2_2
      L5_3 = A3_2
      L1_3(L2_3, L3_3, L4_3, L5_3)
    else
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.showPurchaseRedirectDialog
      L3_3 = A3_2
      L4_3 = SettingsWrapper
      L5_3 = L4_3
      L4_3 = L4_3.getAmount
      L6_3 = "coins"
      L4_3 = L4_3(L5_3, L6_3)
      L3_3 = L3_3 - L4_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = eventManager
    L2_3 = L1_3
    L1_3 = L1_3.queueEvent
    L3_3 = {}
    L4_3 = events
    L4_3 = L4_3.EID_POP_FRAME
    L3_3.id = L4_3
    L3_3.target = "episodeNotOpenDialog"
    L1_3(L2_3, L3_3)
  end
  
  L10_2.returnValue = L11_2
  L10_2.inMenuSpace = true
  L10_2.hideCloseButton = false
  L8_2 = L8_2(L9_2, L10_2)
  episodeNotOpenDialog = L8_2
  L8_2 = eventManager
  L9_2 = L8_2
  L8_2 = L8_2.notify
  L10_2 = {}
  L11_2 = events
  L11_2 = L11_2.EID_PUSH_FRAME
  L10_2.id = L11_2
  L11_2 = episodeNotOpenDialog
  L10_2.target = L11_2
  L8_2(L9_2, L10_2)
end

L0_1.showHalfEpisodePurchase = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = {}
  L3_2.topLeft = "TUTBOX_TOP_LEFT_"
  L3_2.topMiddle = "TUTBOX_TOP_MIDDLE_"
  L3_2.topRight = "TUTBOX_TOP_RIGHT_"
  L3_2.left = "TUTBOX_MIDDLE_LEFT_"
  L3_2.center = "TUTBOX_CENTER_"
  L3_2.right = "TUTBOX_MIDDLE_RIGHT_"
  L3_2.bottomLeft = "TUTBOX_BOTTOM_LEFT_"
  L3_2.bottomMiddle = "TUTBOX_BOTTOM_MIDDLE_"
  L3_2.bottomRight = "TUTBOX_BOTTOM_RIGHT_"
  L4_2 = getText
  L5_2 = "TEXT_LEVEL_LOCKED_BY_TIMER_TITLE"
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  if A1_2 then
    if A2_2 then
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.ceil
      L7_2 = A1_2 / 86400
      L6_2 = L6_2(L7_2)
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.ceil
      L8_2 = A1_2 / 3600
      L7_2 = L7_2(L8_2)
      if 1 < L6_2 then
        L8_2 = getText
        L9_2 = "TEXT_LEVEL_LOCKED_BY_TIMER_SEVERAL_DAYS"
        L10_2 = {}
        L11_2 = "$DAYS"
        L12_2 = L6_2
        L10_2[1] = L11_2
        L10_2[2] = L12_2
        L8_2 = L8_2(L9_2, L10_2)
        L5_2 = L8_2
      elseif 1 < L7_2 then
        L8_2 = getText
        L9_2 = "TEXT_LEVEL_LOCKED_BY_TIMER_SEVERAL_HOURS"
        L10_2 = {}
        L11_2 = "$HOURS"
        L12_2 = L7_2
        L10_2[1] = L11_2
        L10_2[2] = L12_2
        L8_2 = L8_2(L9_2, L10_2)
        L5_2 = L8_2
      else
        L8_2 = getText
        L9_2 = "TEXT_LEVEL_LOCKED_BY_TIMER_HOUR"
        L8_2 = L8_2(L9_2)
        L5_2 = L8_2
      end
    else
      L6_2 = getText
      L7_2 = "TEXT_LEVEL_LOCKED_BY_TIMER_UNKNOWN"
      L6_2 = L6_2(L7_2)
      L5_2 = L6_2
    end
  else
    L6_2 = getText
    L7_2 = "TEXT_LEVEL_LOCKED_BY_TIMER_NO_INTERNET_CONNECTION"
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = ui
  L6_2 = L6_2.ConfirmPrompt
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.title = L4_2
  L8_2.name = "levelLockedDialog"
  L8_2.content = L5_2
  L8_2.boxComponents = L3_2
  L9_2 = getFontBasic
  L9_2 = L9_2()
  L8_2.contentFont = L9_2
  L8_2.closeOnCancelKeyHandler = ""
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = eventManager
    L1_3 = L0_3
    L0_3 = L0_3.queueEvent
    L2_3 = {}
    L3_3 = events
    L3_3 = L3_3.EID_POP_FRAME
    L2_3.id = L3_3
    L2_3.target = "levelLockedDialog"
    L0_3(L1_3, L2_3)
  end
  
  L8_2.returnValue = L9_2
  L8_2.inMenuSpace = true
  L8_2.hideCloseButton = true
  L6_2 = L6_2(L7_2, L8_2)
  levelLockedDialog = L6_2
  L6_2 = eventManager
  L7_2 = L6_2
  L6_2 = L6_2.notify
  L8_2 = {}
  L9_2 = events
  L9_2 = L9_2.EID_PUSH_FRAME
  L8_2.id = L9_2
  L9_2 = levelLockedDialog
  L8_2.target = L9_2
  L6_2(L7_2, L8_2)
end

L0_1.showLevelTimerNotification = L1_1
L0_1 = GameScene

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = {}
  L5_2.topLeft = "TUTBOX_TOP_LEFT_"
  L5_2.topMiddle = "TUTBOX_TOP_MIDDLE_"
  L5_2.topRight = "TUTBOX_TOP_RIGHT_"
  L5_2.left = "TUTBOX_MIDDLE_LEFT_"
  L5_2.center = "TUTBOX_CENTER_"
  L5_2.right = "TUTBOX_MIDDLE_RIGHT_"
  L5_2.bottomLeft = "TUTBOX_BOTTOM_LEFT_"
  L5_2.bottomMiddle = "TUTBOX_BOTTOM_MIDDLE_"
  L5_2.bottomRight = "TUTBOX_BOTTOM_RIGHT_"
  L6_2 = getText
  L7_2 = "TEXT_LEVEL_LOCKED_TITLE"
  L6_2 = L6_2(L7_2)
  L7_2 = getText
  L8_2 = "TEXT_UNLOCK_LEVEL_WITH_CREDITS"
  L7_2 = L7_2(L8_2)
  if 1 < A4_2 then
    L8_2 = getText
    L9_2 = "TEXT_UNLOCK_MULTIPLE_LEVELS_WITH_CREDITS"
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
  end
  L8_2 = " #"
  L9_2 = A3_2
  L8_2 = L8_2 .. L9_2
  L9_2 = ui
  L9_2 = L9_2.ConfirmPrompt
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.title = L6_2
  L11_2.name = "levelPurchaseDialog"
  L11_2.content = L7_2
  L11_2.boxComponents = L5_2
  L12_2 = getFontBasic
  L12_2 = L12_2()
  L11_2.contentFont = L12_2
  L11_2.secondaryContent = L8_2
  L12_2 = getFontIngameMoney
  L12_2 = L12_2()
  L11_2.secondaryFont = L12_2
  L11_2.closeOnCancelKeyHandler = ""
  
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = SettingsWrapper
    L1_3 = L0_3
    L0_3 = L0_3.getAmount
    L2_3 = "coins"
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = A3_2
    L0_3 = L0_3 >= L1_3
    if L0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.onLevelPurchase
      L3_3 = A1_2
      L4_3 = A2_2
      L5_3 = A3_2
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = eventManager
      L2_3 = L1_3
      L1_3 = L1_3.queueEvent
      L3_3 = {}
      L4_3 = events
      L4_3 = L4_3.EID_POP_FRAME
      L3_3.id = L4_3
      L3_3.target = "levelPurchaseDialog"
      L1_3(L2_3, L3_3)
    else
      L1_3 = eventManager
      L2_3 = L1_3
      L1_3 = L1_3.queueEvent
      L3_3 = {}
      L4_3 = events
      L4_3 = L4_3.EID_POP_FRAME
      L3_3.id = L4_3
      L3_3.target = "levelPurchaseDialog"
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.showPurchaseRedirectDialog
      L3_3 = A3_2
      L4_3 = SettingsWrapper
      L5_3 = L4_3
      L4_3 = L4_3.getAmount
      L6_3 = "coins"
      L4_3 = L4_3(L5_3, L6_3)
      L3_3 = L3_3 - L4_3
      L1_3(L2_3, L3_3)
    end
  end
  
  L11_2.returnValue = L12_2
  L11_2.inMenuSpace = true
  L11_2.hideCloseButton = false
  L9_2 = L9_2(L10_2, L11_2)
  levelPurchaseDialog = L9_2
  L9_2 = eventManager
  L10_2 = L9_2
  L9_2 = L9_2.notify
  L11_2 = {}
  L12_2 = events
  L12_2 = L12_2.EID_PUSH_FRAME
  L11_2.id = L12_2
  L12_2 = levelPurchaseDialog
  L11_2.target = L12_2
  L9_2(L10_2, L11_2)
end

L0_1.showLevelPurchase = L1_1
L0_1 = GameScene

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = transitionTimer
  if L1_2 then
    L1_2 = transitionTimes
    L2_2 = transitionType
    L1_2 = L1_2[L2_2]
    transitionTimer = L1_2
  end
end

L0_1.endTransition = L1_1
