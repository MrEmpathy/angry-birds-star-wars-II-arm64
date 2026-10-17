local L0_1, L1_1
L0_1 = {}
L1_1 = {}
L0_1.actions = L1_1
L0_1.menuEntered = false
LocalNotifications = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "onLocalNotificationTriggered: "
  L3_2 = _G
  L3_2 = L3_2.tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = getServerTime
  L1_2 = L1_2()
  if A0_2 == "CARBONITE_MELTED" then
    L2_2 = LocalNotifications
    L2_2 = L2_2.removeLocalNotification
    L3_2 = "CARBONITE_MELTED"
    L2_2(L3_2)
  elseif A0_2 == "LONG_TIME_NO_SEE" then
    L2_2 = LocalNotifications
    L2_2 = L2_2.showLongTimeNoSeePrompt
    L3_2 = true
    L2_2(L3_2)
  elseif A0_2 == "MYD_LEVEL_OPENING" then
    L2_2 = LocalNotifications
    L2_2 = L2_2.removeLocalNotification
    L3_2 = "MYD_LEVEL_OPENING"
    L2_2(L3_2)
    L2_2 = LocalNotifications
    L2_2 = L2_2.moveEpisodeSelectionToMYD
    L2_2()
  end
end

onLocalNotificationTriggered = L0_1
L0_1 = LocalNotifications

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
L0_1 = LocalNotifications

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ui
  L2_2 = L2_2.CarboniteAvailableAnimation
  L2_2 = L2_2.getReward
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.setBirdInCarbonite
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = deviceModel
  if L3_2 == "windows" then
    L3_2 = L2_2.amount
    L3_2 = L3_2 * 3
    L2_2.amount = L3_2
  end
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_START_CARBONITE_CLAIM_ANIMATION
  L5_2.id = L6_2
  L5_2.reward = L2_2
  L6_2 = isInGameMode
  L6_2 = L6_2()
  L5_2.animateToRealCharMenu = L6_2
  L5_2.onAnimationEnd = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.setCarboniteMeltingEndTime
  L5_2 = {}
  L3_2(L4_2, L5_2)
  L3_2 = LocalNotifications
  L3_2 = L3_2.removeLocalNotification
  L4_2 = "CARBONITE_MELTED"
  L3_2(L4_2)
end

L0_1.claimReward = L1_1
L0_1 = LocalNotifications

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.CarboniteAvailableAnimation
  L1_2 = L1_2.isVideoShowing
  if not L1_2 then
    L1_2 = ui
    L1_2 = L1_2.CarboniteAvailableAnimation
    L1_2 = L1_2.isBuyShowing
    if not L1_2 then
      L1_2 = ui
      L1_2 = L1_2.CarboniteAvailableAnimation
      L1_2 = L1_2.isHelpShowing
      if not L1_2 then
        L1_2 = ui
        L1_2 = L1_2.CarboniteAvailableAnimation
        L1_2 = L1_2.isNetErrorShowing
        if not L1_2 then
          L1_2 = ui
          L1_2 = L1_2.CarboniteAvailableAnimation
          L1_2 = L1_2.isShown
          if not L1_2 then
            goto lbl_27
          end
        end
      end
    end
  end
  do return end
  ::lbl_27::
  L1_2 = print
  L2_2 = "__NOTIFY__"
  L1_2(L2_2)
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_NOTIFY_CARBONITE_MELT_IN_CHARACTER_MENU
  L3_2.id = L4_2
  L3_2.meltedAt = A0_2
  L3_2.openCharacterMenu = true
  L3_2.openIntoCharacters = true
  L1_2(L2_2, L3_2)
end

L0_1.showCarboniteMeltedPrompt = L1_1
L0_1 = LocalNotifications

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = ui
  L0_2 = L0_2.ConfirmPrompt
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = {}
  
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
  L2_2.hideCloseButton = true
  L2_2.closeOnCancelKeyHandler = true
  L2_2.title = ""
  L3_2 = getText
  L4_2 = "TEXT_COIN_PAGE_GENERIC_ERROR"
  L3_2 = L3_2(L4_2)
  L2_2.content = L3_2
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

L0_1.showConnectionErrorPropt = L1_1
L0_1 = LocalNotifications

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setLastOpenedEpisode
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setLastOpenedEpisodeIndex
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setLastOpenedEpisodeType
  L2_2 = 4
  L0_2(L1_2, L2_2)
end

L0_1.moveEpisodeSelectionToMYD = L1_1
L0_1 = LocalNotifications

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ui
  L2_2 = L2_2.CarboniteAvailableAnimation
  L2_2 = L2_2.isVideoShowing
  if not L2_2 then
    L2_2 = ui
    L2_2 = L2_2.CarboniteAvailableAnimation
    L2_2 = L2_2.isBuyShowing
    if not L2_2 then
      L2_2 = ui
      L2_2 = L2_2.CarboniteAvailableAnimation
      L2_2 = L2_2.isHelpShowing
      if not L2_2 then
        L2_2 = ui
        L2_2 = L2_2.CarboniteAvailableAnimation
        L2_2 = L2_2.isNetErrorShowing
        if not L2_2 then
          L2_2 = ui
          L2_2 = L2_2.CarboniteAvailableAnimation
          L2_2 = L2_2.isShown
          if not L2_2 then
            L2_2 = ui
            L2_2 = L2_2.CarboniteMeltAnimation
            L2_2 = L2_2.isShown
            if not L2_2 then
              L2_2 = g_showingChannelOrID
              if not L2_2 then
                goto lbl_35
              end
            end
          end
        end
      end
    end
  end
  do return end
  ::lbl_35::
  L2_2 = LocalNotifications
  L2_2 = L2_2.menuEntered
  if L2_2 then
    L2_2 = SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.getIdleRewardTime
    L2_2 = L2_2(L3_2)
    L3_2 = getServerTime
    L3_2 = L3_2()
    if L3_2 and L2_2 then
      L4_2 = getTimeDifferenceInSeconds
      L5_2 = L3_2
      L6_2 = L2_2
      L4_2 = L4_2(L5_2, L6_2)
      if 0 <= L4_2 then
        L4_2 = ui
        L4_2 = L4_2.CarboniteAvailableAnimation
        L4_2 = L4_2.getData
        L4_2 = L4_2()
        L5_2 = L4_2.longTimenoseeReward
        if L5_2 then
          L5_2 = SettingsWrapper
          L6_2 = L5_2
          L5_2 = L5_2.setWeeklyRewardAvailable
          L7_2 = true
          L5_2(L6_2, L7_2)
          L5_2 = SettingsWrapper
          L6_2 = L5_2
          L5_2 = L5_2.setIdleRewardTime
          L7_2 = nil
          L5_2(L6_2, L7_2)
          if A1_2 then
            L5_2 = ui
            L5_2 = L5_2.CharacterMenuShop
            L5_2.isShown = true
            L5_2 = eventManager
            L6_2 = L5_2
            L5_2 = L5_2.notify
            L7_2 = {}
            L8_2 = events
            L8_2 = L8_2.EID_CHARACTER_MENU_OPENED
            L7_2.id = L8_2
            L7_2.openIntoCharacters = true
            L5_2(L6_2, L7_2)
          end
        end
    end
    elseif not L3_2 and A0_2 and A1_2 then
      L4_2 = LocalNotifications
      L4_2 = L4_2.showConnectionErrorPropt
      L4_2()
    end
  else
    L2_2 = LocalNotifications
    L2_2 = L2_2.menuEntered
    if not L2_2 then
      L2_2 = LocalNotifications
      L2_2 = L2_2.actions
      L2_2.LONG_TIME_NO_SEE = "LONG_TIME_NO_SEE"
    end
  end
end

L0_1.showLongTimeNoSeePrompt = L1_1
L0_1 = LocalNotifications

function L1_1()
  local L0_2, L1_2
  L0_2 = deviceModel
  if L0_2 ~= "windows" then
    L0_2 = setNotificationCallback
    L1_2 = "onLocalNotificationTriggered"
    L0_2(L1_2)
  end
end

L0_1.initLocalNotifications = L1_1
L0_1 = LocalNotifications

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = deviceModel
  if L1_2 ~= "windows" then
    L1_2 = removeNotification
    L2_2 = A0_2
    L1_2(L2_2)
  end
end

L0_1.removeLocalNotification = L1_1
L0_1 = LocalNotifications

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = deviceModel
  if L3_2 ~= "windows" then
    L3_2 = addNotificationAfter
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = getLocalizedText
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    L7_2 = "drawable/notification_icon"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end

L0_1.addLocalNotification = L1_1
L0_1 = LocalNotifications

function L1_1()
  local L0_2, L1_2
  L0_2 = LocalNotifications
  L0_2 = L0_2.actions
  L0_2 = L0_2.LONG_TIME_NO_SEE
  if L0_2 then
    L0_2 = true
    if L0_2 then
      goto lbl_10
    end
  end
  L0_2 = false
  ::lbl_10::
  return L0_2
end

L0_1.isCarboniteRewardScheduled = L1_1
L0_1 = LocalNotifications

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.firstEntrance
  if L1_2 then
    L1_2 = LocalNotifications
    L1_2.menuEntered = true
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = LocalNotifications
    L2_2 = L2_2.actions
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      if L4_2 == "LONG_TIME_NO_SEE" then
        L6_2 = isInGameMode
        L6_2 = L6_2()
        if not L6_2 then
          L6_2 = LocalNotifications
          L6_2 = L6_2.showLongTimeNoSeePrompt
          L7_2 = true
          L8_2 = true
          L6_2(L7_2, L8_2)
        end
      end
    end
    L1_2 = LocalNotifications
    L2_2 = {}
    L1_2.actions = L2_2
  end
end

L0_1.mainMenuEntered = L1_1
