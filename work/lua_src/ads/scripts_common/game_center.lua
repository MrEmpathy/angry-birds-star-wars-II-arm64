local L0_1, L1_1
L0_1 = "BTN_LEADERBOARDS"
leaderboardButtonSprite = L0_1
L0_1 = "BTN_LEADERBOARDS_DISABLED"
leaderboardButtonDisabledSprite = L0_1
L0_1 = "BTN_ACHIEVEMENTS"
achievementsButtonSprite = L0_1
L0_1 = "BTN_ACHIEVEMENTS_DISABLED"
achievementsButtonDisabledSprite = L0_1
L0_1 = "LS_BUTTON_BG_1"
buttonBackgroundImage = L0_1
L0_1 = false
gameCenterInitialized = L0_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "gcAchievementButton"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = achievementsButtonSprite
  L5_2 = achievementsButtonDisabledSprite
  L2_2(L3_2, L4_2, L5_2)
  L1_2.returnValue = "GOTO_ACHIEVEMENTS"
  L3_2 = A0_2
  L2_2 = A0_2.addGCItem
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "spinner"
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "IN_APP_LOADING"
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L3_2.name = "gcLeaderboardsButton"
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = leaderboardButtonSprite
  L7_2 = leaderboardButtonDisabledSprite
  L4_2(L5_2, L6_2, L7_2)
  L3_2.returnValue = "GOTO_LEADERBOARDS"
  L5_2 = A0_2
  L4_2 = A0_2.addGCItem
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L4_2.name = "spinner"
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "IN_APP_LOADING"
  L5_2(L6_2, L7_2)
  L6_2 = L3_2
  L5_2 = L3_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = isGameCenterEnabled
  L5_2 = L5_2()
  if L5_2 then
    A0_2.game_center_state = "ENABLED"
  else
    A0_2.game_center_state = "DISABLED"
  end
  A0_2.gc_spinner_angle = 0
  L5_2 = true
  gameCenterInitialized = L5_2
end

L0_1.initGameCenter = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.resetGameCenterButtons
  L1_2(L2_2)
  L1_2 = A0_2.use_right_slider
  if not L1_2 then
    L1_2 = A0_2.use_options_slider
    if not L1_2 then
      L1_2 = _G
      L1_2 = L1_2.table
      L1_2 = L1_2.insert
      L2_2 = A0_2.mid_buttons
      L3_2 = 1
      L4_2 = "gcAchievementButton"
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = _G
      L1_2 = L1_2.table
      L1_2 = L1_2.insert
      L2_2 = A0_2.mid_buttons
      L3_2 = 1
      L4_2 = "gcLeaderboardsButton"
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = isGameCenterEnabled
  L1_2 = L1_2()
  if L1_2 then
    A0_2.game_center_state = "ENABLED"
  else
    A0_2.game_center_state = "DISABLED"
  end
end

L0_1.refreshGameCenterButtons = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.getButtonImageName
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.getButtonImageName
    L2_2 = "mainMenuLeaderboardsButton"
    L3_2 = gamelua
    L3_2 = L3_2.SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.isDarkSide
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    leaderboardButtonSprite = L1_2
    L1_2 = gamelua
    L1_2 = L1_2.getButtonImageName
    L2_2 = "mainMenuLeaderboardsDisabledButton"
    L3_2 = gamelua
    L3_2 = L3_2.SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.isDarkSide
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    leaderboardButtonDisabledSprite = L1_2
    L1_2 = gamelua
    L1_2 = L1_2.getButtonImageName
    L2_2 = "mainMenuAchievementsButton"
    L3_2 = gamelua
    L3_2 = L3_2.SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.isDarkSide
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    achievementsButtonSprite = L1_2
    L1_2 = gamelua
    L1_2 = L1_2.getButtonImageName
    L2_2 = "mainMenuAchievementsDisabledButton"
    L3_2 = gamelua
    L3_2 = L3_2.SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.isDarkSide
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    achievementsButtonDisabledSprite = L1_2
    L1_2 = gamelua
    L1_2 = L1_2.getButtonImageName
    L2_2 = "mainMenuAchievementsBGButton"
    L3_2 = gamelua
    L3_2 = L3_2.SettingsWrapper
    L4_2 = L3_2
    L3_2 = L3_2.isDarkSide
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    buttonBackgroundImage = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.getGCItem
  L3_2 = "gcAchievementButton"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getGCItem
  L4_2 = "gcLeaderboardsButton"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L1_2
  L3_2 = L1_2.getChild
  L5_2 = "spinner"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.getChild
  L6_2 = "spinner"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L1_2
  L5_2 = L1_2.setImage
  L7_2 = achievementsButtonSprite
  L8_2 = achievementsButtonDisabledSprite
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L2_2
  L5_2 = L2_2.setImage
  L7_2 = leaderboardButtonSprite
  L8_2 = leaderboardButtonDisabledSprite
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L1_2
  L5_2 = L1_2.setEnabled
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.setEnabled
  L7_2 = true
  L5_2(L6_2, L7_2)
  L3_2.visible = false
  L4_2.visible = false
  L5_2 = isGameCenterEnabled
  L5_2 = L5_2()
  if L5_2 then
    A0_2.game_center_state = "ENABLED"
  else
    A0_2.game_center_state = "DISABLED"
  end
end

L0_1.resetGameCenterButtons = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.getGCItem
  L4_2 = "gcAchievementButton"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getGCItem
  L5_2 = "gcLeaderboardsButton"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.getChild
  L6_2 = "spinner"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L3_2
  L5_2 = L3_2.getChild
  L7_2 = "spinner"
  L5_2 = L5_2(L6_2, L7_2)
  if A1_2 then
    L6_2 = A0_2.game_center_state
    A0_2.game_center_state = "ENABLED"
    if L6_2 == "INITIALISING_ACHIEVEMENTS" then
      L7_2 = print
      L8_2 = "Going to achievements after init...\n"
      L7_2(L8_2)
      L8_2 = A0_2
      L7_2 = A0_2.gotoAchievements
      L7_2(L8_2)
    elseif L6_2 == "INITIALISING_LEADERBOARDS" then
      L7_2 = print
      L8_2 = "Going to leaderboards after init...\n"
      L7_2(L8_2)
      L8_2 = A0_2
      L7_2 = A0_2.gotoLeaderboards
      L7_2(L8_2)
    end
  else
    A0_2.game_center_state = "DISABLED"
    L7_2 = L2_2
    L6_2 = L2_2.setImage
    L8_2 = achievementsButtonSprite
    L9_2 = achievementsButtonDisabledSprite
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L3_2
    L6_2 = L3_2.setImage
    L8_2 = leaderboardButtonSprite
    L9_2 = leaderboardButtonDisabledSprite
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L2_2
    L6_2 = L2_2.setEnabled
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = L3_2
    L6_2 = L3_2.setEnabled
    L8_2 = true
    L6_2(L7_2, L8_2)
    L4_2.visible = false
    L5_2.visible = false
  end
end

L0_1.setGameCenterEnabled = L1_1
L0_1 = gamelua
L0_1 = L0_1.getEmptyButtonSpriteName
L0_1 = L0_1()
EmptyButtonSpriteName = L0_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getGCItem
  L3_2 = "gcAchievementButton"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getGCItem
  L4_2 = "gcLeaderboardsButton"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L1_2
  L3_2 = L1_2.getChild
  L5_2 = "spinner"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.getChild
  L6_2 = "spinner"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.game_center_state
  if L5_2 == "DISABLED" then
    L5_2 = print
    L6_2 = "Initialising gamecenter...\n"
    L5_2(L6_2)
    L5_2 = gamelua
    L5_2 = L5_2.initGameCenter
    L5_2()
    A0_2.game_center_state = "INITIALISING_ACHIEVEMENTS"
    L5_2 = A0_2.use_right_slider
    if not L5_2 then
      L5_2 = A0_2.use_options_slider
      if not L5_2 then
        L6_2 = L1_2
        L5_2 = L1_2.setImage
        L7_2 = EmptyButtonSpriteName
        L8_2 = achievementsButtonDisabledSprite
        L5_2(L6_2, L7_2, L8_2)
        L6_2 = L2_2
        L5_2 = L2_2.setImage
        L7_2 = EmptyButtonSpriteName
        L8_2 = leaderboardButtonDisabledSprite
        L5_2(L6_2, L7_2, L8_2)
    end
    else
      L6_2 = L1_2
      L5_2 = L1_2.setImage
      L7_2 = buttonBackgroundImage
      L8_2 = achievementsButtonDisabledSprite
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = L2_2
      L5_2 = L2_2.setImage
      L7_2 = buttonBackgroundImage
      L8_2 = leaderboardButtonDisabledSprite
      L5_2(L6_2, L7_2, L8_2)
    end
    L3_2.visible = true
    L4_2.visible = true
  else
    L5_2 = A0_2.game_center_state
    if L5_2 == "ENABLED" then
      L5_2 = print
      L6_2 = "Showing achievements...\n"
      L5_2(L6_2)
      L5_2 = gamelua
      L5_2 = L5_2.showAchievements
      L5_2()
      A0_2.game_center_state = "LOADING_ACHIEVEMENTS"
      L5_2 = A0_2.use_right_slider
      if not L5_2 then
        L5_2 = A0_2.use_options_slider
        if not L5_2 then
          L6_2 = L1_2
          L5_2 = L1_2.setImage
          L7_2 = EmptyButtonSpriteName
          L8_2 = achievementsButtonDisabledSprite
          L5_2(L6_2, L7_2, L8_2)
      end
      else
        L6_2 = L1_2
        L5_2 = L1_2.setImage
        L7_2 = buttonBackgroundImage
        L8_2 = achievementsButtonDisabledSprite
        L5_2(L6_2, L7_2, L8_2)
      end
      L6_2 = L2_2
      L5_2 = L2_2.setImage
      L7_2 = leaderboardButtonSprite
      L8_2 = leaderboardButtonDisabledSprite
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = L2_2
      L5_2 = L2_2.setEnabled
      L7_2 = false
      L5_2(L6_2, L7_2)
      L3_2.visible = true
      L4_2.visible = false
    end
  end
end

L0_1.gotoAchievements = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getGCItem
  L3_2 = "gcAchievementButton"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getGCItem
  L4_2 = "gcLeaderboardsButton"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L1_2
  L3_2 = L1_2.getChild
  L5_2 = "spinner"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.getChild
  L6_2 = "spinner"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.game_center_state
  if L5_2 == "DISABLED" then
    L5_2 = print
    L6_2 = "Initialising gamecenter...\n"
    L5_2(L6_2)
    L5_2 = gamelua
    L5_2 = L5_2.initGameCenter
    L5_2()
    A0_2.game_center_state = "INITIALISING_LEADERBOARDS"
    L5_2 = A0_2.use_right_slider
    if not L5_2 then
      L5_2 = A0_2.use_options_slider
      if not L5_2 then
        L6_2 = L1_2
        L5_2 = L1_2.setImage
        L7_2 = EmptyButtonSpriteName
        L8_2 = achievementsButtonDisabledSprite
        L5_2(L6_2, L7_2, L8_2)
        L6_2 = L2_2
        L5_2 = L2_2.setImage
        L7_2 = EmptyButtonSpriteName
        L8_2 = leaderboardButtonDisabledSprite
        L5_2(L6_2, L7_2, L8_2)
    end
    else
      L6_2 = L1_2
      L5_2 = L1_2.setImage
      L7_2 = buttonBackgroundImage
      L8_2 = achievementsButtonDisabledSprite
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = L2_2
      L5_2 = L2_2.setImage
      L7_2 = buttonBackgroundImage
      L8_2 = leaderboardButtonDisabledSprite
      L5_2(L6_2, L7_2, L8_2)
    end
    L3_2.visible = true
    L4_2.visible = true
  else
    L5_2 = A0_2.game_center_state
    if L5_2 == "ENABLED" then
      L5_2 = print
      L6_2 = "Showing leaderboards...\n"
      L5_2(L6_2)
      L5_2 = gamelua
      L5_2 = L5_2.showLeaderboards
      L5_2()
      A0_2.game_center_state = "LOADING_LEADERBOARDS"
      L6_2 = L1_2
      L5_2 = L1_2.setImage
      L7_2 = achievementsButtonSprite
      L8_2 = achievementsButtonDisabledSprite
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2.use_right_slider
      if not L5_2 then
        L5_2 = A0_2.use_options_slider
        if not L5_2 then
          L6_2 = L2_2
          L5_2 = L2_2.setImage
          L7_2 = EmptyButtonSpriteName
          L8_2 = leaderboardButtonDisabledSprite
          L5_2(L6_2, L7_2, L8_2)
      end
      else
        L6_2 = L2_2
        L5_2 = L2_2.setImage
        L7_2 = buttonBackgroundImage
        L8_2 = leaderboardButtonDisabledSprite
        L5_2(L6_2, L7_2, L8_2)
      end
      L6_2 = L1_2
      L5_2 = L1_2.setEnabled
      L7_2 = false
      L5_2(L6_2, L7_2)
      L3_2.visible = false
      L4_2.visible = true
    end
  end
end

L0_1.gotoLeaderboards = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = isGameCenterSupported
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = gameCenterInitialized
    if L3_2 then
      L3_2 = A0_2.gc_spinner_angle
      L4_2 = A1_2 * 10
      L3_2 = L3_2 + L4_2
      A0_2.gc_spinner_angle = L3_2
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.floor
      L4_2 = A0_2.gc_spinner_angle
      L4_2 = L4_2 / 0.5235983
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2 * 0.5235983
      A0_2.gc_discrete_spinner_angle = L3_2
      L4_2 = A0_2
      L3_2 = A0_2.updateButtonSpinner
      L5_2 = "gcAchievementButton"
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.updateButtonSpinner
      L5_2 = "gcLeaderboardsButton"
      L3_2(L4_2, L5_2)
    end
  end
end

L0_1.updateGameCenter = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.getGCItem
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = gamelua
    L3_2 = L3_2.print
    L4_2 = "Failed to retrieve button "
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.getChild
  L5_2 = "spinner"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = A0_2.gc_discrete_spinner_angle
    L3_2.angle = L4_2
  else
    L4_2 = gamelua
    L4_2 = L4_2.print
    L5_2 = "Failed to get spinner for button "
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
    return
  end
end

L0_1.updateButtonSpinner = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.use_right_slider
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "rightSlider"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.addChild
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.use_options_slider
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.getChild
      L4_2 = "optionsSlider"
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2
      L2_2 = L2_2.addChild
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.addChild
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.addGCItem = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.use_right_slider
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "rightSlider"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.getChild
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.use_options_slider
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.getChild
      L4_2 = "optionsSlider"
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2
      L2_2 = L2_2.getChild
      L4_2 = A1_2
      return L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.getChild
      L4_2 = A1_2
      return L2_2(L3_2, L4_2)
    end
  end
end

L0_1.getGCItem = L1_1
