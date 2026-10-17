local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
LevelSelectionPage = L0_1
L0_1 = LevelSelectionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.getEpisodeMetadata
  L3_2 = gamelua
  L3_2 = L3_2.currentFolder
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.iapChapter
  if L3_2 then
    L3_2 = "LIGHT"
    if L1_2 then
      L3_2 = "SITH"
    end
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.getIAPChapterRewardDisplayState
    L4_2 = L4_2(L5_2)
    A0_2.stateAction = "OPEN"
    if L4_2 ~= "CLOSED" then
      L5_2 = gamelua
      L5_2 = L5_2.g_showLevelOpenAnimation
      if not L5_2 then
        goto lbl_30
      end
    end
    A0_2.stateAction = "NONE"
    A0_2.state = "CLOSED"
    ::lbl_30::
    L5_2 = ui
    L5_2 = L5_2.Image
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.name = "rankDisplayTop"
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.rankDisplayTop = L5_2
    L5_2 = A0_2.rankDisplayTop
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = "DESTINY_BG_1_"
    L8_2 = L3_2
    L7_2 = L7_2 .. L8_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.addChild
    L7_2 = A0_2.rankDisplayTop
    L5_2(L6_2, L7_2)
    L5_2 = ui
    L5_2 = L5_2.Image
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.name = "rankDisplayBottom"
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.rankDisplayBottom = L5_2
    L5_2 = A0_2.rankDisplayBottom
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = "DESTINY_BG_2_"
    L8_2 = L3_2
    L7_2 = L7_2 .. L8_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.addChild
    L7_2 = A0_2.rankDisplayBottom
    L5_2(L6_2, L7_2)
    L5_2 = ui
    L5_2 = L5_2.Image
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.name = "rankDisplayTab"
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.rankDisplayTab = L5_2
    L5_2 = A0_2.rankDisplayTab
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = "DESTINY_BG_2_"
    L8_2 = L3_2
    L9_2 = "_TAB"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.rankDisplayBottom
    L6_2 = L5_2
    L5_2 = L5_2.addChild
    L7_2 = A0_2.rankDisplayTab
    L5_2(L6_2, L7_2)
    L5_2 = ui
    L5_2 = L5_2.ScallableButton
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.name = "arrow"
    L7_2.activateOnRelease = true
    L7_2.returnValue = "TOGGLE"
    L7_2.hitAreaScale = 4
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.arrow = L5_2
    L5_2 = A0_2.arrow
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = "DESTINY_BG_2_"
    L8_2 = L3_2
    L9_2 = "_ARROW"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.rankDisplayTab
    L6_2 = L5_2
    L5_2 = L5_2.addChild
    L7_2 = A0_2.arrow
    L5_2(L6_2, L7_2)
    L5_2 = gamelua
    L5_2 = L5_2.getCurrentRank
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L6_2 = ui
    L6_2 = L6_2.Image
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "rankMedal"
    L6_2 = L6_2(L7_2, L8_2)
    A0_2.rankMedal = L6_2
    L6_2 = A0_2.rankMedal
    L7_2 = L6_2
    L6_2 = L6_2.setImage
    L8_2 = L5_2.thumb
    L6_2(L7_2, L8_2)
    L6_2 = A0_2.rankDisplayTop
    L7_2 = L6_2
    L6_2 = L6_2.addChild
    L8_2 = A0_2.rankMedal
    L6_2(L7_2, L8_2)
    L6_2 = ui
    L6_2 = L6_2.DummyText
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "rankTitle"
    L9_2 = gamelua
    L9_2 = L9_2.getText
    L10_2 = "TEXT_CURRENT_RANK"
    L9_2 = L9_2(L10_2)
    L8_2.text = L9_2
    L9_2 = gamelua
    L9_2 = L9_2.getFontHeadline
    L9_2 = L9_2()
    L8_2.font = L9_2
    L8_2.hanchor = "LEFT"
    L6_2 = L6_2(L7_2, L8_2)
    A0_2.rankTitle = L6_2
    L6_2 = A0_2.rankDisplayTop
    L7_2 = L6_2
    L6_2 = L6_2.addChild
    L8_2 = A0_2.rankTitle
    L6_2(L7_2, L8_2)
    L6_2 = ""
    L7_2 = L5_2.rankLevel
    if L7_2 then
      L7_2 = L5_2.rankLevel
      L8_2 = ": "
      L6_2 = L7_2 .. L8_2
    end
    L7_2 = ui
    L7_2 = L7_2.DummyText
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "rankText"
    L10_2 = L6_2
    L11_2 = L5_2.title
    L10_2 = L10_2 .. L11_2
    L9_2.text = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.getFontBasic
    L10_2 = L10_2()
    L9_2.font = L10_2
    L9_2.hanchor = "LEFT"
    L7_2 = L7_2(L8_2, L9_2)
    A0_2.rankText = L7_2
    L7_2 = A0_2.rankDisplayTop
    L8_2 = L7_2
    L7_2 = L7_2.addChild
    L9_2 = A0_2.rankText
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.refreshPage
    L7_2(L8_2)
  end
  A0_2.animateTime = 0
  A0_2.displayShowDelay = 0.25
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.init
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.init = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.getEpisodeMetadata
  L3_2 = gamelua
  L3_2 = L3_2.currentFolder
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.iapChapter
  if L3_2 then
    L3_2 = "LIGHT"
    if L1_2 then
      L3_2 = "SITH"
    end
    L4_2 = gamelua
    L4_2 = L4_2.getCurrentRank
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = ""
    L6_2 = L4_2.rankLevel
    if L6_2 then
      L6_2 = L4_2.rankLevel
      L7_2 = ": "
      L5_2 = L6_2 .. L7_2
    end
    L6_2 = A0_2.rankMedal
    L7_2 = L6_2
    L6_2 = L6_2.setImage
    L8_2 = L4_2.thumb
    L6_2(L7_2, L8_2)
    L6_2 = A0_2.rankText
    L7_2 = L6_2
    L6_2 = L6_2.setText
    L8_2 = L5_2
    L9_2 = L4_2.title
    L8_2 = L8_2 .. L9_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2.rankDisplayBottom
    if L6_2 then
      L6_2 = A0_2.rankDisplayBottom
      L7_2 = L6_2
      L6_2 = L6_2.removeChild
      L8_2 = A0_2.nextRankProgress
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.rankDisplayBottom
      L7_2 = L6_2
      L6_2 = L6_2.removeChild
      L8_2 = A0_2.claimButton
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.rankDisplayBottom
      L7_2 = L6_2
      L6_2 = L6_2.removeChild
      L8_2 = A0_2.buttonGlow
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.rankDisplayBottom
      L7_2 = L6_2
      L6_2 = L6_2.removeChild
      L8_2 = A0_2.maxRankText
      L6_2(L7_2, L8_2)
    end
    L6_2 = A0_2.nextRankProgress
    if L6_2 then
      L6_2 = A0_2.nextRankProgress
      L7_2 = L6_2
      L6_2 = L6_2.removeChild
      L8_2 = A0_2.progressStar
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.nextRankProgress
      L7_2 = L6_2
      L6_2 = L6_2.removeChild
      L8_2 = A0_2.progressText
      L6_2(L7_2, L8_2)
    end
    A0_2.nextRankProgress = nil
    A0_2.progressStar = nil
    A0_2.progressText = nil
    A0_2.buttonGlow = nil
    A0_2.claimButton = nil
    A0_2.maxRankText = nil
    L6_2 = gamelua
    L6_2 = L6_2.getNextUnfinishedRank
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L6_2.currentProgress
      L8_2 = L6_2.goalProgress
      L9_2 = ui
      L9_2 = L9_2.ProgressBar
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.name = "nextRankProgress"
      L9_2 = L9_2(L10_2, L11_2)
      A0_2.nextRankProgress = L9_2
      L9_2 = A0_2.nextRankProgress
      L10_2 = L9_2
      L9_2 = L9_2.setImages
      L11_2 = "DESTINY_STAR_METER_BG_"
      L12_2 = L3_2
      L11_2 = L11_2 .. L12_2
      L12_2 = "DESTINY_STAR_METER_FILL_"
      L13_2 = L3_2
      L12_2 = L12_2 .. L13_2
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = A0_2.rankDisplayBottom
      L10_2 = L9_2
      L9_2 = L9_2.addChild
      L11_2 = A0_2.nextRankProgress
      L9_2(L10_2, L11_2)
      L9_2 = A0_2.nextRankProgress
      L10_2 = L9_2
      L9_2 = L9_2.setValue
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L9_2 = A0_2.nextRankProgress
      L10_2 = L9_2
      L9_2 = L9_2.setMax
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L9_2 = ui
      L9_2 = L9_2.Image
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.name = "progressStar"
      L9_2 = L9_2(L10_2, L11_2)
      A0_2.progressStar = L9_2
      L9_2 = A0_2.progressStar
      L10_2 = L9_2
      L9_2 = L9_2.setImage
      L11_2 = "LS_STAR_SMALL"
      L9_2(L10_2, L11_2)
      L9_2 = A0_2.nextRankProgress
      L10_2 = L9_2
      L9_2 = L9_2.addChild
      L11_2 = A0_2.progressStar
      L9_2(L10_2, L11_2)
      L9_2 = ui
      L9_2 = L9_2.DummyText
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.name = "progressText"
      L12_2 = gamelua
      L12_2 = L12_2.getFontBasic
      L12_2 = L12_2()
      L11_2.font = L12_2
      L11_2.hanchor = "LEFT"
      L9_2 = L9_2(L10_2, L11_2)
      A0_2.progressText = L9_2
      L9_2 = A0_2.progressText
      L10_2 = L9_2
      L9_2 = L9_2.setText
      L11_2 = _G
      L11_2 = L11_2.tostring
      L12_2 = L7_2
      L11_2 = L11_2(L12_2)
      L12_2 = " / "
      L13_2 = _G
      L13_2 = L13_2.tostring
      L14_2 = L8_2
      L13_2 = L13_2(L14_2)
      L11_2 = L11_2 .. L12_2 .. L13_2
      L9_2(L10_2, L11_2)
      L9_2 = A0_2.nextRankProgress
      L10_2 = L9_2
      L9_2 = L9_2.addChild
      L11_2 = A0_2.progressText
      L9_2(L10_2, L11_2)
      L9_2 = L6_2.currentGoal
      if L7_2 >= L9_2 then
        L9_2 = ui
        L9_2 = L9_2.Image
        L10_2 = L9_2
        L9_2 = L9_2.new
        L11_2 = {}
        L11_2.name = "shopButtonGlow"
        L9_2 = L9_2(L10_2, L11_2)
        A0_2.buttonGlow = L9_2
        L9_2 = A0_2.buttonGlow
        L10_2 = L9_2
        L9_2 = L9_2.setImage
        L11_2 = "GOLD_SHINE_1"
        L9_2(L10_2, L11_2)
        L9_2 = A0_2.rankDisplayBottom
        L10_2 = L9_2
        L9_2 = L9_2.addChild
        L11_2 = A0_2.buttonGlow
        L9_2(L10_2, L11_2)
        L9_2 = ui
        L9_2 = L9_2.ScallableButton
        L10_2 = L9_2
        L9_2 = L9_2.new
        L11_2 = {}
        L11_2.name = "claimButton"
        L11_2.activateOnRelease = true
        L11_2.returnValue = "CLAIM"
        L9_2 = L9_2(L10_2, L11_2)
        A0_2.claimButton = L9_2
        L9_2 = A0_2.claimButton
        L10_2 = L9_2
        L9_2 = L9_2.setImage
        L11_2 = "BTN_GIFTBOX"
        L9_2(L10_2, L11_2)
        L9_2 = A0_2.rankDisplayBottom
        L10_2 = L9_2
        L9_2 = L9_2.addChild
        L11_2 = A0_2.claimButton
        L9_2(L10_2, L11_2)
        L9_2 = gamelua
        L9_2 = L9_2.g_showLevelOpenAnimation
        if not L9_2 then
          A0_2.stateAction = "OPEN"
          A0_2.state = "OPEN"
        end
      end
    else
      L7_2 = ui
      L7_2 = L7_2.DummyText
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L9_2.name = "maxRankText"
      L10_2 = gamelua
      L10_2 = L10_2.getText
      L11_2 = "TEXT_MAX_RANK_REACHED"
      L10_2 = L10_2(L11_2)
      L9_2.text = L10_2
      L10_2 = gamelua
      L10_2 = L10_2.getFontBasic
      L10_2 = L10_2()
      L9_2.font = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      A0_2.maxRankText = L7_2
      L7_2 = A0_2.rankDisplayBottom
      L8_2 = L7_2
      L7_2 = L7_2.addChild
      L9_2 = A0_2.maxRankText
      L7_2(L8_2, L9_2)
    end
  end
end

L0_1.refreshPage = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L3_2 = A0_2.rankDisplayTop
  if L3_2 then
    L3_2 = A0_2.rankDisplayTop
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L4_2 = L4_2 * 0.5
    L3_2.x = L4_2
    L3_2 = A0_2.state
    if L3_2 == "OPEN" then
      L3_2 = A0_2.stateAction
      if L3_2 == "NONE" then
        L3_2 = A0_2.rankDisplayTop
        L4_2 = A1_2 or L4_2
        if not A1_2 then
          L4_2 = A0_2.rankDisplayTop
          L4_2 = L4_2.h
          L4_2 = L4_2 * 0.5
          L4_2 = L4_2 - 1
          L4_2 = L4_2 * L2_2
        end
        L3_2.y = L4_2
    end
    else
      L3_2 = A0_2.rankDisplayTop
      L4_2 = A1_2 or L4_2
      if not A1_2 then
        L4_2 = A0_2.rankDisplayTop
        L4_2 = L4_2.h
        L4_2 = L4_2 * 0.5
        L4_2 = L4_2 - 1
        L4_2 = -L4_2
        L4_2 = L4_2 * L2_2
      end
      L3_2.y = L4_2
    end
    L3_2 = A0_2.rankDisplayTop
    L4_2 = L3_2
    L3_2 = L3_2.setScale
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.rankMedal
    L4_2 = A0_2.rankDisplayTop
    L4_2 = L4_2.w
    L4_2 = -L4_2
    L4_2 = L4_2 * 0.3
    L4_2 = L4_2 * L2_2
    L3_2.x = L4_2
    L3_2 = A0_2.rankMedal
    L4_2 = L3_2
    L3_2 = L3_2.setScale
    L5_2 = 0.9
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.rankTitle
    L4_2 = A0_2.rankMedal
    L4_2 = L4_2.x
    L5_2 = A0_2.rankMedal
    L5_2 = L5_2.w
    L5_2 = L5_2 * 0.8
    L5_2 = L5_2 * L2_2
    L4_2 = L4_2 + L5_2
    L3_2.x = L4_2
    L3_2 = A0_2.rankTitle
    L4_2 = A0_2.rankTitle
    L5_2 = L4_2
    L4_2 = L4_2.getFontLeading
    L4_2 = L4_2(L5_2)
    L4_2 = -L4_2
    L4_2 = L4_2 * 0.3
    L4_2 = L4_2 * L2_2
    L3_2.y = L4_2
    L3_2 = A0_2.rankText
    L4_2 = A0_2.rankTitle
    L4_2 = L4_2.x
    L3_2.x = L4_2
    L3_2 = A0_2.rankText
    L4_2 = A0_2.rankTitle
    L4_2 = L4_2.y
    L5_2 = A0_2.rankTitle
    L6_2 = L5_2
    L5_2 = L5_2.getFontLeading
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 * 0.6
    L5_2 = L5_2 * L2_2
    L4_2 = L4_2 + L5_2
    L3_2.y = L4_2
    L3_2 = A0_2.rankText
    L4_2 = L3_2
    L3_2 = L3_2.setScale
    L5_2 = 0.8
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.rankDisplayBottom
    L4_2 = A0_2.rankDisplayTop
    L4_2 = L4_2.x
    L3_2.x = L4_2
    L3_2 = A0_2.rankDisplayBottom
    L4_2 = A0_2.rankDisplayTop
    L4_2 = L4_2.y
    L5_2 = A0_2.rankDisplayTop
    L5_2 = L5_2.h
    L6_2 = A0_2.rankDisplayBottom
    L6_2 = L6_2.h
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 * 0.5
    L5_2 = L5_2 * L2_2
    L4_2 = L4_2 + L5_2
    L5_2 = 1 * L2_2
    L4_2 = L4_2 - L5_2
    L3_2.y = L4_2
    L3_2 = A0_2.rankDisplayBottom
    L4_2 = L3_2
    L3_2 = L3_2.setScale
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.rankDisplayTab
    L4_2 = 2 * L2_2
    L3_2.x = L4_2
    L3_2 = A0_2.rankDisplayTab
    L4_2 = A0_2.rankDisplayBottom
    L4_2 = L4_2.h
    L5_2 = A0_2.rankDisplayTab
    L5_2 = L5_2.h
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 * 0.5
    L4_2 = L4_2 - 1
    L4_2 = L4_2 * L2_2
    L3_2.y = L4_2
    if not A1_2 then
      L3_2 = A0_2.state
      if L3_2 ~= "OPEN" then
        goto lbl_136
      end
      L3_2 = A0_2.stateAction
      if L3_2 ~= "NONE" then
        goto lbl_136
      end
    end
    L3_2 = A0_2.arrow
    L4_2 = A0_2.arrow
    L4_2 = L4_2.angle
    L3_2.angle = L4_2
    goto lbl_143
    ::lbl_136::
    L3_2 = A0_2.arrow
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.rad
    L5_2 = 180
    L4_2 = L4_2(L5_2)
    L3_2.angle = L4_2
    ::lbl_143::
    L3_2 = A0_2.arrow
    L4_2 = -6 * L2_2
    L3_2.y = L4_2
    L3_2 = A0_2.arrow
    L4_2 = L3_2
    L3_2 = L3_2.setScale
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.nextRankProgress
    if L3_2 then
      L3_2 = A0_2.nextRankProgress
      L4_2 = -8 * L2_2
      L3_2.x = L4_2
      L3_2 = A0_2.progressStar
      L3_2.y = 0
      L3_2 = A0_2.progressStar
      L4_2 = A0_2.progressStar
      L4_2 = L4_2.w
      L4_2 = -L4_2
      L4_2 = L4_2 * 0.53
      L4_2 = L4_2 * L2_2
      L3_2.x = L4_2
      L3_2 = A0_2.progressStar
      L4_2 = L3_2
      L3_2 = L3_2.setScale
      L5_2 = 0.7
      L3_2(L4_2, L5_2)
      L3_2 = A0_2.progressText
      L4_2 = A0_2.progressStar
      L4_2 = L4_2.y
      L3_2.y = L4_2
      L3_2 = A0_2.progressText
      L4_2 = L3_2
      L3_2 = L3_2.setScale
      L5_2 = 0.7
      L3_2(L4_2, L5_2)
      L3_2 = A0_2.claimButton
      if L3_2 then
        L3_2 = A0_2.buttonGlow
        L4_2 = A0_2.nextRankProgress
        L4_2 = L4_2.x
        L5_2 = A0_2.nextRankProgress
        L6_2 = L5_2
        L5_2 = L5_2.getWidth
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2 * 0.5
        L5_2 = L5_2 * L2_2
        L4_2 = L4_2 + L5_2
        L3_2.x = L4_2
        L3_2 = A0_2.buttonGlow
        L4_2 = L3_2
        L3_2 = L3_2.setScale
        L5_2 = 0.4
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.claimButton
        L4_2 = A0_2.buttonGlow
        L4_2 = L4_2.x
        L3_2.x = L4_2
      end
    else
      L3_2 = A0_2.maxRankText
      if L3_2 then
        L3_2 = A0_2.maxRankText
        L4_2 = L3_2
        L3_2 = L3_2.setScale
        L5_2 = 0.9
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.layout = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if A1_2 == "LRELEASE" then
    if L4_2 == "CLAIM" then
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = events
      L10_2 = L10_2.EID_OPEN_SHOP
      L9_2.id = L10_2
      L9_2.screen = "RankPage"
      L7_2(L8_2, L9_2)
      L7_2 = "BLOCK"
      return L7_2
    elseif L4_2 == "TOGGLE" then
      L7_2 = A0_2.state
      if L7_2 == "OPEN" then
        A0_2.startAction = true
        A0_2.stateAction = "CLOSE"
        A0_2.animateTime = 0
        L7_2 = gamelua
        L7_2 = L7_2.SettingsWrapper
        L8_2 = L7_2
        L7_2 = L7_2.setIAPChapterRewardDisplayState
        L9_2 = "CLOSED"
        L7_2(L8_2, L9_2)
      else
        A0_2.startAction = true
        A0_2.stateAction = "OPEN"
        A0_2.animateTime = 0
        L7_2 = gamelua
        L7_2 = L7_2.SettingsWrapper
        L8_2 = L7_2
        L7_2 = L7_2.setIAPChapterRewardDisplayState
        L9_2 = "OPENED"
        L7_2(L8_2, L9_2)
      end
      L7_2 = "BLOCK"
      return L7_2
    end
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.4
  if not A0_2 then
    L2_2 = 0
    return L2_2
  end
  if A0_2 < L1_2 then
    L2_2 = A0_2 * 1
    L2_2 = L2_2 / L1_2
    return L2_2
  elseif A0_2 > L1_2 then
    L2_2 = 1
    return L2_2
  else
    L2_2 = 0
    return L2_2
  end
end

L0_1.boxTransition = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.animateTime
  L4_2 = L4_2 + A1_2
  A0_2.animateTime = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.tweenEaseCubicOut
  L5_2 = LevelSelectionPage
  L5_2 = L5_2.boxTransition
  L6_2 = A0_2.animateTime
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L7_2 = 1
  L8_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2.rankDisplayTop
  if L5_2 then
    L5_2 = A0_2.arrow
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.rad
    L7_2 = 180
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2 * L4_2
    L5_2.angle = L6_2
    L5_2 = A0_2.rankDisplayTop
    L6_2 = A0_2.rankDisplayTop
    L6_2 = L6_2.h
    L6_2 = L6_2 * 0.5
    L6_2 = L6_2 - 1
    L7_2 = A0_2.rankDisplayTop
    L7_2 = L7_2.h
    L7_2 = L4_2 * L7_2
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 * L3_2
    L5_2.y = L6_2
    L6_2 = A0_2
    L5_2 = A0_2.layout
    L7_2 = A0_2.rankDisplayTop
    L7_2 = L7_2.y
    L5_2(L6_2, L7_2)
    if L4_2 == 1 then
      A0_2.stateAction = "NONE"
      A0_2.state = "CLOSED"
    end
  end
end

L0_1.updateClosing = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.animateTime
  L4_2 = L4_2 + A1_2
  A0_2.animateTime = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.tweenEaseCubicOut
  L5_2 = LevelSelectionPage
  L5_2 = L5_2.boxTransition
  L6_2 = A0_2.animateTime
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L7_2 = 1
  L8_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2.rankDisplayTop
  if L5_2 then
    L5_2 = A0_2.arrow
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.rad
    L7_2 = 180
    L6_2 = L6_2(L7_2)
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.rad
    L8_2 = 180
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2 * L4_2
    L6_2 = L6_2 - L7_2
    L5_2.angle = L6_2
    L5_2 = A0_2.rankDisplayTop
    L6_2 = A0_2.rankDisplayTop
    L6_2 = L6_2.h
    L6_2 = L6_2 * 0.5
    L6_2 = -L6_2
    L7_2 = A0_2.rankDisplayTop
    L7_2 = L7_2.h
    L7_2 = L7_2 - 1
    L7_2 = L4_2 * L7_2
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 * L3_2
    L5_2.y = L6_2
    L6_2 = A0_2
    L5_2 = A0_2.layout
    L7_2 = A0_2.rankDisplayTop
    L7_2 = L7_2.y
    L5_2(L6_2, L7_2)
    if L4_2 == 1 then
      A0_2.stateAction = "NONE"
      A0_2.state = "OPEN"
    end
  end
end

L0_1.updateOpening = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.claimButton
  if L4_2 then
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.sin
    L5_2 = A2_2 * 5
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 * 0.05
    L4_2 = 1 + L4_2
    L4_2 = L4_2 * L3_2
    L5_2 = A0_2.claimButton
    L6_2 = L5_2
    L5_2 = L5_2.setScale
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.buttonGlow
    L6_2 = A0_2.buttonGlow
    L6_2 = L6_2.angle
    L6_2 = L6_2 + A1_2
    L5_2.angle = L6_2
  end
  L4_2 = A0_2.displayShowDelay
  if L4_2 then
    L4_2 = A0_2.displayShowDelay
    if 0 < L4_2 then
      L4_2 = A0_2.displayShowDelay
      L4_2 = L4_2 - A1_2
      A0_2.displayShowDelay = L4_2
    end
  end
  L4_2 = A0_2.displayShowDelay
  if L4_2 then
    L4_2 = A0_2.displayShowDelay
    if L4_2 <= 0 then
      A0_2.startAction = true
      A0_2.displayShowDelay = nil
    end
  end
  L4_2 = A0_2.startAction
  if L4_2 then
    L4_2 = A0_2.stateAction
    if L4_2 == "OPEN" then
      L5_2 = A0_2
      L4_2 = A0_2.updateOpening
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = A0_2.stateAction
      if L4_2 == "CLOSE" then
        L5_2 = A0_2
        L4_2 = A0_2.updateClosing
        L6_2 = A1_2
        L7_2 = A2_2
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.update = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = print
  L3_2 = "LevelSelectionPage:eventTriggered(event)"
  L2_2(L3_2)
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.refreshPage
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.layout
    L2_2(L3_2)
  end
end

L0_1.eventTriggered = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "LevelSelectionPage:onEntry()"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = LevelSelectionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "LevelSelectionPage:onExit()"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
