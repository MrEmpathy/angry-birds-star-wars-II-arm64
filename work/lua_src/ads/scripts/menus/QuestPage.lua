local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
QuestPage = L0_1
L0_1 = QuestPage
L0_1.TAB_TYPE_CHAPTER = 1
L0_1 = QuestPage
L0_1.TAB_TYPE_CHARACTER = 2
L0_1 = QuestPage
L0_1.TAB_TYPE_OVERALL = 3
L0_1 = QuestPage
L1_1 = {}
L2_1 = QuestPage
L2_1 = L2_1.TAB_TYPE_CHAPTER
L3_1 = QuestPage
L3_1 = L3_1.TAB_TYPE_CHARACTER
L4_1 = QuestPage
L4_1 = L4_1.TAB_TYPE_OVERALL
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.tabTypes = L1_1
L0_1 = QuestPage
L1_1 = {}
L2_1 = "TEXT_ACHIEVEMENT_CHAPTER"
L3_1 = "TEXT_ACHIEVEMENT_CHARACTERS"
L4_1 = "TEXT_ACHIEVEMENT_OVERALL"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.tabTitles = L1_1
L0_1 = QuestPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  A0_2.quests = L1_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isDarkSide
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = "SITH"
    if L2_2 then
      goto lbl_24
    end
  end
  L2_2 = "LIGHT"
  ::lbl_24::
  L3_2 = {}
  L4_2 = "ACHIEVEMENTBOX_TOP_LEFT_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.topLeft = L4_2
  L4_2 = "ACHIEVEMENTBOX_TOP_MIDDLE_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.topMiddle = L4_2
  L4_2 = "ACHIEVEMENTBOX_TOP_RIGHT_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.topRight = L4_2
  L4_2 = "ACHIEVEMENTBOX_MIDDLE_LEFT_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.left = L4_2
  L4_2 = "ACHIEVEMENTBOX_CENTER_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.center = L4_2
  L4_2 = "ACHIEVEMENTBOX_MIDDLE_RIGHT_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.right = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_LEFT_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomLeft = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_MIDDLE_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomMiddle = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_RIGHT_SHEET_"
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomRight = L4_2
  L1_2.components = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChildIndex
  L5_2 = L1_2.name
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 + 1
  A0_2.tabZIndex = L3_2
  L3_2 = 1
  L4_2 = QuestPage
  L4_2 = L4_2.tabTitles
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = ui
    L7_2 = L7_2.TabButton
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L10_2 = "tab_"
    L11_2 = L6_2
    L10_2 = L10_2 .. L11_2
    L9_2.name = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.getText
    L11_2 = QuestPage
    L11_2 = L11_2.tabTitles
    L11_2 = L11_2[L6_2]
    L10_2 = L10_2(L11_2)
    L9_2.tabText = L10_2
    L9_2.returnValue = "TAB_SELECT"
    L9_2.tabIndex = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2
    L8_2 = A0_2.addChild
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = gamelua
  L3_2 = L3_2.createBgBoxForSide
  L4_2 = "itemBox"
  L5_2 = "SHEET"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.DummyText
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = gamelua
  L7_2 = L7_2.getText
  L8_2 = "TEXT_ACHIEVEMENT_REWARD"
  L7_2 = L7_2(L8_2)
  L6_2.text = L7_2
  L6_2.name = "rewardTitle"
  L7_2 = gamelua
  L7_2 = L7_2.getFontBasic
  L7_2 = L7_2()
  L6_2.font = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.DummyText
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = gamelua
  L8_2 = L8_2.getText
  L9_2 = "TEXT_ACHIEVEMENT_PROGRESS"
  L8_2 = L8_2(L9_2)
  L7_2.text = L8_2
  L7_2.name = "progressTitle"
  L8_2 = gamelua
  L8_2 = L8_2.getFontBasic
  L8_2 = L8_2()
  L7_2.font = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.Text
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "title"
  L9_2 = gamelua
  L9_2 = L9_2.getText
  L10_2 = "TEXT_ACHIEVEMENT_TITLE"
  L9_2 = L9_2(L10_2)
  L8_2.text = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.getFontHeadline
  L8_2.font = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L6_2.vanchor = "TOP"
  L6_2.hanchor = "LEFT"
  L8_2 = L6_2
  L7_2 = L6_2.clip
  L7_2(L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = ui
  L7_2 = L7_2.ScallableButton
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "exitButton"
  L9_2.returnValue = "EXIT_QUEST_PAGE"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.setImage
  L10_2 = gamelua
  L10_2 = L10_2.getButtonImageName
  L11_2 = "buttonX"
  L12_2 = gamelua
  L12_2 = L12_2.SettingsWrapper
  L12_2 = L12_2.isDarkSide
  L12_2, L13_2 = L12_2()
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2.clickSound = "ButtonBack"
  L9_2 = L1_2
  L8_2 = L1_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = ui
  L8_2 = L8_2.Image
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.name = "lockImage"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L8_2
  L9_2 = L8_2.setImage
  L11_2 = "SIDE_CHANGE_LOCK"
  L9_2(L10_2, L11_2)
  L10_2 = A0_2
  L9_2 = A0_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = ui
  L9_2 = L9_2.DummyText
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.name = "lockText"
  L12_2 = gamelua
  L12_2 = L12_2.getText
  L13_2 = "TEXT_ACHIEVEMENT_CHAPTER_LOCKED"
  L12_2 = L12_2(L13_2)
  L11_2.text = L12_2
  L12_2 = gamelua
  L12_2 = L12_2.getFontBasic
  L12_2 = L12_2()
  L11_2.font = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.addChild
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = ui
  L10_2 = L10_2.ScrollFrame
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L12_2.name = "scrollFrame"
  L12_2.enableBottomAnchor = true
  L10_2 = L10_2(L11_2, L12_2)
  A0_2.scrollFrame = L10_2
  L11_2 = {}
  L10_2.anchors = L11_2
  L12_2 = L10_2
  L11_2 = L10_2.resetState
  L11_2(L12_2)
  L10_2.scroll_axis = "y"
  L12_2 = A0_2
  L11_2 = A0_2.addChild
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
end

L0_1.init = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "scrollFrame"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "rewardTitle"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "progressTitle"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "lockImage"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "lockText"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = gamelua
  L7_2 = L7_2.calculatePlaytime
  L7_2()
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.setLastViewedQuestTab
  L9_2 = A1_2
  L7_2(L8_2, L9_2)
  A0_2.tab = A1_2
  L7_2 = {}
  A0_2.quests = L7_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = 1
  L10_2 = QuestPage
  L10_2 = L10_2.tabTitles
  L10_2 = #L10_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L14_2 = A0_2
    L13_2 = A0_2.getChild
    L15_2 = "tab_"
    L16_2 = L12_2
    L15_2 = L15_2 .. L16_2
    L13_2 = L13_2(L14_2, L15_2)
    if L12_2 == A1_2 then
      L15_2 = L13_2
      L14_2 = L13_2.setSelected
      L16_2 = true
      L14_2(L15_2, L16_2)
    else
      L15_2 = L13_2
      L14_2 = L13_2.setSelected
      L16_2 = false
      L14_2(L15_2, L16_2)
    end
  end
  L9_2 = QuestPage
  L9_2 = L9_2.tabTypes
  L9_2 = L9_2[A1_2]
  L10_2 = QuestPage
  L10_2 = L10_2.TAB_TYPE_CHAPTER
  if L9_2 == L10_2 then
    L9_2 = A0_2.episodeSelectionEpName
    if L9_2 then
      L9_2 = A0_2.episodeSelectionEpName
      if L9_2 then
        goto lbl_65
      end
    end
    L9_2 = gamelua
    L9_2 = L9_2.currentFolder
    ::lbl_65::
    L10_2 = gamelua
    L10_2 = L10_2.getEpisodeMetadata
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = L10_2.comingSoonChapter
    if L11_2 then
      L12_2 = L6_2
      L11_2 = L6_2.setText
      L13_2 = gamelua
      L13_2 = L13_2.getText
      L14_2 = "TEXT_ACHIEVEMENT_CHAPTER_NOT_AVAILABLE"
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    else
      L12_2 = L6_2
      L11_2 = L6_2.setText
      L13_2 = gamelua
      L13_2 = L13_2.getText
      L14_2 = "TEXT_ACHIEVEMENT_CHAPTER_LOCKED"
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    end
    L11_2 = L10_2.iapChapter
    if not L11_2 then
      L11_2 = L10_2.bonusChapter
      if L11_2 then
        L11_2 = gamelua
        L11_2 = L11_2.SettingsWrapper
        L12_2 = L11_2
        L11_2 = L11_2.isRewardChapterOpen
        L11_2 = L11_2(L12_2)
        if L11_2 then
          goto lbl_111
        end
      end
      L11_2 = L10_2.bonusChapter
      if not L11_2 then
        L11_2 = gamelua
        L11_2 = L11_2.SettingsWrapper
        L12_2 = L11_2
        L11_2 = L11_2.isEpisodeStarted
        L13_2 = L9_2
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 then
          goto lbl_111
        end
      end
      L11_2 = gamelua
      L11_2 = L11_2.releaseBuild
      if L11_2 then
        goto lbl_115
      end
    end
    ::lbl_111::
    L11_2 = gamelua
    L11_2 = L11_2.g_questDataTable
    L11_2 = L11_2.chapterQuests
    L7_2 = L11_2[L9_2]
    ::lbl_115::
    L11_2 = nil
    L13_2 = L9_2
    L12_2 = L9_2.find
    L14_2 = "_dark"
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L13_2 = L9_2
      L12_2 = L9_2.gsub
      L14_2 = "_dark"
      L15_2 = "_light"
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L12_2
    else
      L13_2 = L9_2
      L12_2 = L9_2.gsub
      L14_2 = "_light"
      L15_2 = "_dark"
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L12_2
    end
    L12_2 = L10_2.iapChapter
    if not L12_2 then
      L12_2 = L10_2.bonusChapter
      if L12_2 then
        L12_2 = gamelua
        L12_2 = L12_2.SettingsWrapper
        L13_2 = L12_2
        L12_2 = L12_2.isRewardChapterOpen
        L12_2 = L12_2(L13_2)
        if L12_2 then
          goto lbl_158
        end
      end
      L12_2 = L10_2.bonusChapter
      if not L12_2 then
        L12_2 = gamelua
        L12_2 = L12_2.SettingsWrapper
        L13_2 = L12_2
        L12_2 = L12_2.isEpisodeStarted
        L14_2 = L11_2
        L12_2 = L12_2(L13_2, L14_2)
        if L12_2 then
          goto lbl_158
        end
      end
      L12_2 = gamelua
      L12_2 = L12_2.releaseBuild
    end
    ::lbl_158::
    if not L12_2 then
      L12_2 = gamelua
      L12_2 = L12_2.g_questDataTable
      L12_2 = L12_2.chapterQuests
      L8_2 = L12_2[L11_2]
    end
  else
    L9_2 = QuestPage
    L9_2 = L9_2.tabTypes
    L9_2 = L9_2[A1_2]
    L10_2 = QuestPage
    L10_2 = L10_2.TAB_TYPE_CHARACTER
    if L9_2 == L10_2 then
      L9_2 = gamelua
      L9_2 = L9_2.g_questDataTable
      L7_2 = L9_2.characterQuests
    else
      L9_2 = QuestPage
      L9_2 = L9_2.tabTypes
      L9_2 = L9_2[A1_2]
      L10_2 = QuestPage
      L10_2 = L10_2.TAB_TYPE_OVERALL
      if L9_2 == L10_2 then
        L9_2 = gamelua
        L9_2 = L9_2.g_questDataTable
        L7_2 = L9_2.overallQuests
      end
    end
  end
  L10_2 = A0_2
  L9_2 = A0_2.createQuestLines
  L11_2 = L7_2 or L11_2
  if not L7_2 then
    L11_2 = {}
  end
  L12_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L11_2 = A0_2
  L10_2 = A0_2.createQuestLines
  L12_2 = L8_2 or L12_2
  if not L8_2 then
    L12_2 = {}
  end
  L13_2 = true
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L12_2 = A0_2
  L11_2 = A0_2.processQuestLines
  L13_2 = L9_2
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  A0_2.linesCompleted = L13_2
  A0_2.linesInProgress = L12_2
  A0_2.linesNotClaimed = L11_2
  L12_2 = A0_2
  L11_2 = A0_2.processQuestLines
  L13_2 = L10_2
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  A0_2.linesCompletedOpposite = L13_2
  A0_2.linesInProgressOpposite = L12_2
  A0_2.linesNotClaimedOpposite = L11_2
  L11_2 = _G
  L11_2 = L11_2.table
  L11_2 = L11_2.sort
  L12_2 = A0_2.linesInProgress
  L13_2 = QuestPage
  L13_2 = L13_2.itemSort
  L11_2(L12_2, L13_2)
  L11_2 = _G
  L11_2 = L11_2.table
  L11_2 = L11_2.sort
  L12_2 = A0_2.linesInProgressOpposite
  L13_2 = QuestPage
  L13_2 = L13_2.itemSort
  L11_2(L12_2, L13_2)
  L12_2 = A0_2
  L11_2 = A0_2.mergeQuestLines
  L13_2 = {}
  L14_2 = A0_2.linesNotClaimed
  L15_2 = A0_2.linesNotClaimedOpposite
  L16_2 = A0_2.linesInProgress
  L17_2 = A0_2.linesInProgressOpposite
  L18_2 = A0_2.linesCompleted
  L19_2 = A0_2.linesCompletedOpposite
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L11_2 = L11_2(L12_2, L13_2)
  A0_2.quests = L11_2
  L11_2 = A0_2.quests
  L11_2 = #L11_2
  if L11_2 == 0 then
    if L2_2 then
      L12_2 = A0_2
      L11_2 = A0_2.removeChild
      L13_2 = L2_2
      L11_2(L12_2, L13_2)
    end
    L2_2 = nil
    L3_2.visible = false
    L4_2.visible = false
    L5_2.visible = true
    L6_2.visible = true
  elseif L2_2 == nil then
    L2_2 = A0_2.scrollFrame
    L3_2.visible = true
    L4_2.visible = true
    L5_2.visible = false
    L6_2.visible = false
    L12_2 = A0_2
    L11_2 = A0_2.addChild
    L13_2 = L2_2
    L11_2(L12_2, L13_2)
  else
    L5_2.visible = false
    L6_2.visible = false
  end
  if L2_2 then
    L12_2 = L2_2
    L11_2 = L2_2.removeAllChildren
    L11_2(L12_2)
    L11_2 = _G
    L11_2 = L11_2.ipairs
    L12_2 = A0_2.quests
    L11_2, L12_2, L13_2 = L11_2(L12_2)
    for L14_2, L15_2 in L11_2, L12_2, L13_2 do
      L17_2 = L2_2
      L16_2 = L2_2.addChild
      L18_2 = L15_2
      L16_2(L17_2, L18_2)
    end
  end
  L12_2 = A0_2
  L11_2 = A0_2.layout
  L11_2(L12_2)
end

L0_1.changeTab = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = _G
    L8_2 = L8_2.ipairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = _G
      L13_2 = L13_2.table
      L13_2 = L13_2.insert
      L14_2 = L2_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  return L2_2
end

L0_1.mergeQuestLines = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = gamelua
    L8_2 = L8_2.getCurrentQuestProgress
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = nil
    L10_2 = nil
    L11_2 = nil
    L12_2 = L7_2.title
    L12_2 = L12_2.en_EN
    if L12_2 then
      L12_2 = gamelua
      L12_2 = L12_2.getLocalizedText
      L13_2 = gamelua
      L13_2 = L13_2.getCharacterText
      L14_2 = L7_2.title
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L10_2 = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.getLocalizedText
      L13_2 = L7_2.description
      L12_2 = L12_2(L13_2)
      L11_2 = L12_2
    else
      L12_2 = gamelua
      L12_2 = L12_2.getCharacterText
      L13_2 = L7_2.title
      L12_2 = L12_2(L13_2)
      L10_2 = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.getLocalizedText
      L13_2 = L7_2.description
      L12_2 = L12_2(L13_2)
      L11_2 = L12_2
    end
    L12_2 = L10_2[1]
    if L12_2 then
      L12_2 = gamelua
      L12_2 = L12_2.isQuestSupportedByDevice
      L13_2 = L7_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = gamelua
        L12_2 = L12_2.getQuestLevel
        L13_2 = L7_2.name
        L12_2 = L12_2(L13_2)
        L13_2 = QuestLine
        L14_2 = L13_2
        L13_2 = L13_2.new
        L15_2 = {}
        L16_2 = L7_2.name
        L15_2.name = L16_2
        L16_2 = L7_2.rewardImage
        if L16_2 then
          L16_2 = L7_2.rewardImage
          L16_2 = L16_2[L12_2]
          if L16_2 then
            goto lbl_66
          end
        end
        L16_2 = nil
        ::lbl_66::
        L15_2.rewardImage = L16_2
        L16_2 = L7_2.rewardImageScale
        if not L16_2 then
          L16_2 = 1
        end
        L15_2.rewardImageScale = L16_2
        L16_2 = L7_2.rewardText
        L16_2 = L16_2[L12_2]
        L15_2.rewardText = L16_2
        L16_2 = L10_2[L12_2]
        L15_2.titleText = L16_2
        L16_2 = L11_2[L12_2]
        L15_2.contentText = L16_2
        L15_2.currentValue = L8_2
        L16_2 = L7_2.goal
        L16_2 = L16_2[L12_2]
        L15_2.targetValue = L16_2
        L15_2.quest = L7_2
        L13_2 = L13_2(L14_2, L15_2)
        L9_2 = L13_2
    end
    else
      L12_2 = gamelua
      L12_2 = L12_2.isQuestSupportedByDevice
      L13_2 = L7_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = QuestLine
        L13_2 = L12_2
        L12_2 = L12_2.new
        L14_2 = {}
        L15_2 = L7_2.name
        L14_2.name = L15_2
        L15_2 = L7_2.rewardImage
        L14_2.rewardImage = L15_2
        L15_2 = L7_2.rewardImageScale
        if not L15_2 then
          L15_2 = 1
        end
        L14_2.rewardImageScale = L15_2
        L15_2 = L7_2.rewardText
        L14_2.rewardText = L15_2
        L14_2.titleText = L10_2
        L14_2.contentText = L11_2
        L14_2.currentValue = L8_2
        L15_2 = L7_2.goal
        L14_2.targetValue = L15_2
        L14_2.quest = L7_2
        L12_2 = L12_2(L13_2, L14_2)
        L9_2 = L12_2
      end
    end
    if L9_2 then
      L12_2 = _G
      L12_2 = L12_2.table
      L12_2 = L12_2.insert
      L13_2 = L2_2
      L14_2 = L9_2
      L12_2(L13_2, L14_2)
    end
  end
  return L2_2
end

L0_1.createQuestLines = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L5_2 = _G
  L5_2 = L5_2.ipairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = gamelua
    L10_2 = L10_2.isQuestAutomaticallyRewarded
    L11_2 = L9_2.quest
    L10_2 = L10_2(L11_2)
    L11_2 = gamelua
    L11_2 = L11_2.isQuestCompleted
    L12_2 = L9_2.quest
    L11_2 = L11_2(L12_2)
    L12_2 = gamelua
    L12_2 = L12_2.isQuestClaimed
    L13_2 = L9_2.name
    L12_2 = L12_2(L13_2)
    if not L10_2 and not L12_2 and L11_2 then
      L13_2 = _G
      L13_2 = L13_2.table
      L13_2 = L13_2.insert
      L14_2 = L2_2
      L15_2 = L9_2
      L13_2(L14_2, L15_2)
    elseif L11_2 and L12_2 then
      L13_2 = _G
      L13_2 = L13_2.table
      L13_2 = L13_2.insert
      L14_2 = L4_2
      L15_2 = L9_2
      L13_2(L14_2, L15_2)
    else
      L13_2 = _G
      L13_2 = L13_2.table
      L13_2 = L13_2.insert
      L14_2 = L3_2
      L15_2 = L9_2
      L13_2(L14_2, L15_2)
    end
  end
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end

L0_1.processQuestLines = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getProgressPercentage
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.getProgressPercentage
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 > L3_2
  return L2_2
end

L0_1.itemSort = L1_1
L0_1 = QuestPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_QUEST_PAGE_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.changeTab
  L3_2 = gamelua
  L3_2 = L3_2.SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.getLastViewedQuestTab
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.onEntry = L1_1
L0_1 = QuestPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_QUEST_PAGE_CLOSED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "scrollFrame"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = A0_2.scrollFrame
    L3_2 = L2_2
    L2_2 = L2_2.onExit
    L2_2(L3_2)
  end
  L2_2 = ui
  L2_2 = L2_2.Frame
  L2_2 = L2_2.onExit
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.onExit = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "scrollFrame"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.mergeQuestLines
    L5_2 = {}
    L6_2 = A0_2.linesCompleted
    L7_2 = A0_2.linesNotClaimed
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.linesCompleted = L3_2
    L4_2 = A0_2
    L3_2 = A0_2.mergeQuestLines
    L5_2 = {}
    L6_2 = A0_2.linesCompletedOpposite
    L7_2 = A0_2.linesNotClaimedOpposite
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.linesCompletedOpposite = L3_2
    L3_2 = {}
    A0_2.linesNotClaimed = L3_2
    L3_2 = {}
    A0_2.linesNotClaimedOpposite = L3_2
    L4_2 = A0_2
    L3_2 = A0_2.mergeQuestLines
    L5_2 = {}
    L6_2 = A0_2.linesInProgress
    L7_2 = A0_2.linesInProgressOpposite
    L8_2 = A0_2.linesCompleted
    L9_2 = A0_2.linesCompletedOpposite
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.quests = L3_2
    L4_2 = L2_2
    L3_2 = L2_2.removeAllChildren
    L3_2(L4_2)
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = A0_2.quests
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L2_2
      L8_2 = L2_2.addChild
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L4_2 = A0_2
    L3_2 = A0_2.layout
    L3_2(L4_2)
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = A0_2.quests
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.updateRewardClaimed
      L8_2(L9_2)
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = _G
  L3_2 = L3_2.table
  L3_2 = L3_2.insert
  L4_2 = A0_2.children
  L5_2 = A2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.addChildTo = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2 = L2_2.ipairs
  L3_2 = A0_2.children
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = -1
  return L2_2
end

L0_1.getChildIndex = L1_1
L0_1 = QuestPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L1_2 = gamelua
  L2_2 = L1_2
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "bgBox"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L3_2 = L3_2 / 2
  L2_2.x = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L3_2 = L3_2 / 2
  L2_2.y = L3_2
  L3_2 = nil
  L4_2 = nil
  if L1_2 <= 1 then
    L5_2 = gamelua
    L5_2 = L5_2.screenWidth
    L5_2 = L5_2 * 0.9
    L7_2 = L2_2
    L6_2 = L2_2.getRightBlockW
    L6_2 = L6_2(L7_2)
    L7_2 = 1 - L1_2
    L6_2 = L6_2 * L7_2
    L6_2 = 2 * L6_2
    L3_2 = L5_2 - L6_2
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = L5_2 * 0.9
    L7_2 = L2_2
    L6_2 = L2_2.getTopBlockH
    L6_2 = L6_2(L7_2)
    L7_2 = 1 - L1_2
    L6_2 = L6_2 * L7_2
    L6_2 = 2 * L6_2
    L4_2 = L5_2 - L6_2
  else
    L5_2 = gamelua
    L5_2 = L5_2.screenWidth
    L5_2 = L5_2 * 0.9
    L7_2 = L2_2
    L6_2 = L2_2.getRightBlockW
    L6_2 = L6_2(L7_2)
    L7_2 = L1_2 - 1
    L6_2 = L6_2 * L7_2
    L6_2 = 2 * L6_2
    L3_2 = L5_2 + L6_2
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = L5_2 * 0.9
    L7_2 = L2_2
    L6_2 = L2_2.getTopBlockH
    L6_2 = L6_2(L7_2)
    L7_2 = L1_2 - 1
    L6_2 = L6_2 * L7_2
    L6_2 = 2 * L6_2
    L4_2 = L5_2 + L6_2
  end
  if L3_2 < 0 then
    L3_2 = 0
  end
  if L4_2 < 0 then
    L4_2 = 0
  end
  L6_2 = L2_2
  L5_2 = L2_2.setSize
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "itemBox"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = gamelua
  L6_2 = L6_2.screenWidth
  L6_2 = L6_2 / 2
  L5_2.x = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.screenHeight
  L6_2 = L6_2 * 0.6
  L5_2.y = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.setSize
  L8_2 = L2_2.width
  L8_2 = L8_2 * 0.95
  L9_2 = L2_2.height
  L9_2 = L9_2 * 0.7
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "title"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setScale
  L9_2 = L1_2 * 4
  L7_2(L8_2, L9_2)
  L7_2 = gamelua
  L7_2 = L7_2.screenWidth
  L7_2 = L7_2 * 0.05
  L6_2.x = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.02
  L6_2.y = L7_2
  L7_2 = 6
  L8_2 = 0
  L10_2 = L5_2
  L9_2 = L5_2.getSize
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = 1
  L12_2 = QuestPage
  L12_2 = L12_2.tabTitles
  L12_2 = #L12_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L16_2 = A0_2
    L15_2 = A0_2.getChild
    L17_2 = "tab_"
    L18_2 = L14_2
    L17_2 = L17_2 .. L18_2
    L15_2 = L15_2(L16_2, L17_2)
    L17_2 = L15_2
    L16_2 = L15_2.setScale
    L18_2 = L1_2
    L16_2(L17_2, L18_2)
    L17_2 = L15_2
    L16_2 = L15_2.layout
    L16_2(L17_2)
    L17_2 = L5_2
    L16_2 = L5_2.getSize
    L16_2, L17_2 = L16_2(L17_2)
    L10_2 = L17_2
    L9_2 = L16_2
    L16_2 = L5_2.x
    L17_2 = L9_2 / 2
    L16_2 = L16_2 - L17_2
    L17_2 = L5_2.y
    L18_2 = L5_2.height
    L18_2 = L18_2 / 2
    L17_2 = L17_2 - L18_2
    L19_2 = L5_2
    L18_2 = L5_2.getTopBlockH
    L18_2 = L18_2(L19_2)
    L17_2 = L17_2 - L18_2
    L18_2 = L15_2.h
    L18_2 = L18_2 * 0.35
    L17_2 = L17_2 - L18_2
    L17_2 = L17_2 + L7_2
    L15_2.y = L17_2
    L17_2 = L15_2.w
    L17_2 = L17_2 / 2
    L17_2 = L16_2 + L17_2
    L19_2 = L5_2
    L18_2 = L5_2.getLeftBlockW
    L18_2 = L18_2(L19_2)
    L17_2 = L17_2 + L18_2
    L17_2 = L17_2 + L8_2
    L15_2.x = L17_2
    L17_2 = L15_2.w
    L8_2 = L8_2 + L17_2
    L17_2 = L15_2.selected
    if L17_2 then
      L18_2 = A0_2
      L17_2 = A0_2.removeChild
      L19_2 = L15_2
      L17_2(L18_2, L19_2)
      L18_2 = A0_2
      L17_2 = A0_2.addChild
      L19_2 = L15_2
      L17_2(L18_2, L19_2)
    else
      L18_2 = A0_2
      L17_2 = A0_2.removeChild
      L19_2 = L15_2
      L17_2(L18_2, L19_2)
      L18_2 = A0_2
      L17_2 = A0_2.addChildTo
      L19_2 = L15_2
      L20_2 = A0_2.tabZIndex
      L17_2(L18_2, L19_2, L20_2)
    end
  end
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "exitButton"
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = L11_2
  L12_2 = L11_2.setScale
  L14_2 = L1_2
  L12_2(L13_2, L14_2)
  L13_2 = L2_2
  L12_2 = L2_2.getSize
  L12_2, L13_2 = L12_2(L13_2)
  L14_2 = L12_2 * 0.5
  L15_2 = L11_2.w
  L15_2 = L15_2 * 0.65
  L15_2 = L15_2 * L1_2
  L14_2 = L14_2 - L15_2
  L11_2.x = L14_2
  L14_2 = -L13_2
  L14_2 = L14_2 * 0.5
  L15_2 = L11_2.h
  L15_2 = L15_2 * 0.65
  L15_2 = L15_2 * L1_2
  L14_2 = L14_2 + L15_2
  L11_2.y = L14_2
  L15_2 = L11_2
  L14_2 = L11_2.setScale
  L16_2 = L1_2
  L14_2(L15_2, L16_2)
  L14_2 = {}
  L15_2 = 0
  L17_2 = A0_2
  L16_2 = A0_2.getChild
  L18_2 = "rewardTitle"
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = L5_2.x
  L18_2 = L9_2 * 0.5
  L17_2 = L17_2 + L18_2
  L18_2 = 90 * L1_2
  L17_2 = L17_2 - L18_2
  L16_2.x = L17_2
  L18_2 = A0_2
  L17_2 = A0_2.getChild
  L19_2 = "progressTitle"
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = L5_2.x
  L19_2 = L9_2 * 0.5
  L18_2 = L18_2 + L19_2
  L19_2 = 245 * L1_2
  L18_2 = L18_2 - L19_2
  L17_2.x = L18_2
  L18_2 = _G
  L18_2 = L18_2.pairs
  L19_2 = A0_2.quests
  L18_2, L19_2, L20_2 = L18_2(L19_2)
  for L21_2, L22_2 in L18_2, L19_2, L20_2 do
    L24_2 = L22_2
    L23_2 = L22_2.layout
    L23_2(L24_2)
    L24_2 = L22_2
    L23_2 = L22_2.getProgressX
    L23_2 = L23_2(L24_2)
    L25_2 = L22_2
    L24_2 = L22_2.getRewardX
    L24_2 = L24_2(L25_2)
    if L23_2 ~= 0 then
      L25_2 = L5_2.x
      L25_2 = L25_2 + L23_2
      L17_2.x = L25_2
    end
    if L24_2 ~= 0 then
      L25_2 = L5_2.x
      L25_2 = L25_2 + L24_2
      L16_2.x = L25_2
    end
    L25_2 = _G
    L25_2 = L25_2.table
    L25_2 = L25_2.insert
    L26_2 = L14_2
    L27_2 = {}
    L27_2.x = 0
    L28_2 = L22_2.h
    L28_2 = L28_2 * 0.5
    L28_2 = L15_2 - L28_2
    L27_2.y = L28_2
    L28_2 = L22_2.h
    L27_2.h = L28_2
    L28_2 = L22_2.quest
    L28_2 = L28_2.questParameter
    L27_2.questParameter = L28_2
    L25_2(L26_2, L27_2)
    L22_2.y = L15_2
    L25_2 = L22_2.h
    L25_2 = L25_2 * 0.95
    L15_2 = L15_2 + L25_2
  end
  L19_2 = A0_2
  L18_2 = A0_2.getChild
  L20_2 = "scrollFrame"
  L18_2 = L18_2(L19_2, L20_2)
  if L18_2 then
    L19_2 = gamelua
    L19_2 = L19_2.screenWidth
    L19_2 = L19_2 * 0.5
    L18_2.x = L19_2
    L19_2 = gamelua
    L19_2 = L19_2.screenHeight
    L19_2 = L19_2 * 0.3
    L18_2.y = L19_2
    L19_2 = gamelua
    L19_2 = L19_2.screenWidth
    L19_2 = L19_2 * 0.9
    L18_2.w = L19_2
    L19_2 = gamelua
    L19_2 = L19_2.screenHeight
    L19_2 = L19_2 * 0.62
    L18_2.h = L19_2
    L20_2 = L18_2
    L19_2 = L18_2.setClip
    L21_2 = {}
    L22_2 = L18_2.x
    L23_2 = L18_2.w
    L23_2 = L23_2 * 0.5
    L22_2 = L22_2 - L23_2
    L21_2.x = L22_2
    L22_2 = L18_2.y
    L21_2.y = L22_2
    L22_2 = L18_2.w
    L21_2.w = L22_2
    L22_2 = L18_2.h
    L21_2.h = L22_2
    L19_2(L20_2, L21_2)
    L20_2 = L18_2
    L19_2 = L18_2.setAnchors
    L21_2 = L14_2
    L19_2(L20_2, L21_2)
    L20_2 = L18_2
    L19_2 = L18_2.setCurrentAnchor
    L21_2 = 1
    L19_2(L20_2, L21_2)
    L20_2 = L18_2
    L19_2 = L18_2.setTargetAnchor
    L21_2 = 1
    L19_2(L20_2, L21_2)
    L19_2 = 4 * L1_2
    L20_2 = L5_2.y
    L21_2 = L10_2 * 0.5
    L20_2 = L20_2 - L21_2
    L21_2 = L18_2.y
    L22_2 = L5_2.y
    L23_2 = L10_2 * 0.5
    L22_2 = L22_2 - L23_2
    L21_2 = L21_2 - L22_2
    L21_2 = L21_2 * 0.5
    L20_2 = L20_2 + L21_2
    L20_2 = L20_2 + L19_2
    L16_2.y = L20_2
    L21_2 = L16_2
    L20_2 = L16_2.setScale
    L22_2 = L1_2 * 0.7
    L20_2(L21_2, L22_2)
    L21_2 = A0_2
    L20_2 = A0_2.removeChild
    L22_2 = L16_2
    L20_2(L21_2, L22_2)
    L21_2 = A0_2
    L20_2 = A0_2.addChild
    L22_2 = L16_2
    L20_2(L21_2, L22_2)
    L20_2 = L16_2.y
    L17_2.y = L20_2
    L21_2 = L17_2
    L20_2 = L17_2.setScale
    L22_2 = L1_2 * 0.7
    L20_2(L21_2, L22_2)
    L21_2 = A0_2
    L20_2 = A0_2.removeChild
    L22_2 = L17_2
    L20_2(L21_2, L22_2)
    L21_2 = A0_2
    L20_2 = A0_2.addChild
    L22_2 = L17_2
    L20_2(L21_2, L22_2)
  else
    L19_2 = 30
    L21_2 = A0_2
    L20_2 = A0_2.getChild
    L22_2 = "lockImage"
    L20_2 = L20_2(L21_2, L22_2)
    L21_2 = L5_2.x
    L20_2.x = L21_2
    L21_2 = L5_2.y
    L22_2 = L20_2.h
    L22_2 = L22_2 * 0.5
    L22_2 = L22_2 * L1_2
    L21_2 = L21_2 - L22_2
    L22_2 = L19_2 * L1_2
    L21_2 = L21_2 - L22_2
    L20_2.y = L21_2
    L22_2 = L20_2
    L21_2 = L20_2.setScale
    L23_2 = L1_2
    L21_2(L22_2, L23_2)
    L22_2 = A0_2
    L21_2 = A0_2.getChild
    L23_2 = "lockText"
    L21_2 = L21_2(L22_2, L23_2)
    L22_2 = L20_2.x
    L21_2.x = L22_2
    L22_2 = L20_2.y
    L23_2 = L20_2.h
    L23_2 = L23_2 * 0.5
    L23_2 = L23_2 * L1_2
    L22_2 = L22_2 + L23_2
    L23_2 = L19_2 * L1_2
    L22_2 = L22_2 + L23_2
    L21_2.y = L22_2
    L23_2 = L21_2
    L22_2 = L21_2.setScale
    L24_2 = L1_2
    L22_2(L23_2, L24_2)
  end
  L19_2 = ui
  L19_2 = L19_2.Frame
  L19_2 = L19_2.layout
  L20_2 = A0_2
  L19_2(L20_2)
end

L0_1.layout = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "scrollFrame"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.print
  L4_2 = "Going to show quest for "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.changeTab
  L5_2 = QuestPage
  L5_2 = L5_2.TAB_TYPE_CHARACTER
  L3_2(L4_2, L5_2)
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L2_2.anchors
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.questParameter
    if L8_2 == A1_2 then
      L9_2 = L2_2
      L8_2 = L2_2.setTargetAnchor
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      return
    end
  end
end

L0_1.goToCharacterQuest = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if A1_2 == "LRELEASE" then
    if L4_2 == "EXIT_QUEST_PAGE" then
      L8_2 = A0_2
      L7_2 = A0_2.close
      L7_2(L8_2)
    elseif L4_2 == "TAB_SELECT" then
      L8_2 = A0_2
      L7_2 = A0_2.changeTab
      L9_2 = L6_2.tabIndex
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
      L5_2 = gamelua
      L5_2 = L5_2.playAudio
      L6_2 = "ButtonBack"
      L5_2(L6_2)
      L6_2 = A0_2
      L5_2 = A0_2.close
      L5_2(L6_2)
    elseif A2_2 == "S" then
      L5_2 = L3_2
      L6_2 = L4_2
      L7_2 = item
      return L5_2, L6_2, L7_2
    elseif A2_2 == "RIGHT" then
      L5_2 = A0_2.tab
      L6_2 = QuestPage
      L6_2 = L6_2.TAB_TYPE_OVERALL
      if L5_2 < L6_2 then
        L6_2 = A0_2
        L5_2 = A0_2.changeTab
        L7_2 = A0_2.tab
        L7_2 = L7_2 + 1
        L5_2(L6_2, L7_2)
      end
    elseif A2_2 == "LEFT" then
      L5_2 = A0_2.tab
      L6_2 = QuestPage
      L6_2 = L6_2.TAB_TYPE_CHAPTER
      if L5_2 > L6_2 then
        L6_2 = A0_2
        L5_2 = A0_2.changeTab
        L7_2 = A0_2.tab
        L7_2 = L7_2 - 1
        L5_2(L6_2, L7_2)
      end
    end
  end
  L5_2 = -1
  return L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = QuestPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_POP_FRAME
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.close = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "scrollFrame"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = 1
    L5_2 = QuestPage
    L5_2 = L5_2.tabTitles
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L9_2 = A0_2
      L8_2 = A0_2.getChild
      L10_2 = "tab_"
      L11_2 = L7_2
      L10_2 = L10_2 .. L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L3_2.dragging
      L8_2.blockClicks = L9_2
    end
  end
end

L0_1.update = L1_1
L0_1 = QuestPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 1
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
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

L0_1.draw = L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
QuestLine = L0_1
L0_1 = QuestLine
L1_1 = {}
L0_1.drawBatches = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bgBox"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bg = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2.suffix = "SITH"
  else
    A0_2.suffix = "LIGHT"
  end
  L1_2 = A0_2.suffix
  A0_2.questSide = L1_2
  L1_2 = A0_2.quest
  L1_2 = L1_2.isDark
  if L1_2 == true then
    A0_2.questSide = "SITH"
  else
    L1_2 = A0_2.quest
    L1_2 = L1_2.isDark
    if L1_2 == false then
      A0_2.questSide = "LIGHT"
    end
  end
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "firstDivider"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.firstDivider = L1_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "secondDivider"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.secondDivider = L1_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "completedStamp"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getString
  L5_2 = "TEXT_BASIC"
  L6_2 = "STAMP_COMPLETED"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.bg
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.firstDivider
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.secondDivider
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.quest
  if L2_2 then
    L2_2 = A0_2.quest
    L2_2 = L2_2.reward
    if L2_2 == "level" then
      L2_2 = ui
      L2_2 = L2_2.Image
      L3_2 = L2_2
      L2_2 = L2_2.new
      L4_2 = {}
      L4_2.name = "levelImage"
      L2_2 = L2_2(L3_2, L4_2)
      L4_2 = L2_2
      L3_2 = L2_2.setImage
      L5_2 = A0_2.quest
      L5_2 = L5_2.levelImage
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.addChild
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      A0_2.levelImage = L2_2
    end
  end
  L2_2 = ui
  L2_2 = L2_2.Text
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = A0_2.rewardText
  if not L5_2 then
    L5_2 = ""
  end
  L4_2.text = L5_2
  L4_2.name = "rewardText"
  L5_2 = gamelua
  L5_2 = L5_2.getFontBasic
  L4_2.font = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L3_2.name = "rewardImage"
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = A0_2.rewardImage
  if not L6_2 then
    L6_2 = ""
  end
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.quest
  if L4_2 then
    L4_2 = A0_2.quest
    L4_2 = L4_2.reward
    if L4_2 == "bird" then
      L4_2 = ui
      L4_2 = L4_2.Image
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = {}
      L6_2.name = "amountBg"
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = L4_2
      L5_2 = L4_2.setImage
      L7_2 = gamelua
      L7_2 = L7_2.getButtonImageName
      L8_2 = "characterMenuCounterBox"
      L9_2 = A0_2.questSide
      L9_2 = L9_2 == "SITH"
      L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = A0_2
      L5_2 = A0_2.addChild
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      A0_2.amountBgImage = L4_2
    end
  end
  L4_2 = A0_2.quest
  if L4_2 then
    L4_2 = A0_2.quest
    L4_2 = L4_2.reward
    if L4_2 == "credits" then
      L4_2 = gamelua
      L4_2 = L4_2.getFontIngameMoney
      L4_2 = L4_2()
      L2_2.font = L4_2
      L4_2 = "#"
      L5_2 = L2_2.text
      L4_2 = L4_2 .. L5_2
      L2_2.text = L4_2
      L4_2 = ui
      L4_2 = L4_2.Image
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = {}
      L6_2.name = "rewardBackground"
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = L4_2
      L5_2 = L4_2.setImage
      L7_2 = "ROUNDPLATE_"
      L8_2 = A0_2.questSide
      L7_2 = L7_2 .. L8_2
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.addChild
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      A0_2.rewardBackground = L4_2
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.Text
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = A0_2.titleText
  if not L7_2 then
    L7_2 = ""
  end
  L6_2.text = L7_2
  L6_2.name = "titleText"
  L6_2.hanchor = "LEFT"
  L7_2 = gamelua
  L7_2 = L7_2.getFontCrimsonBasic
  L6_2.font = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.Text
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = A0_2.contentText
  if not L8_2 then
    L8_2 = ""
  end
  L7_2.text = L8_2
  L7_2.name = "contentText"
  L7_2.hanchor = "LEFT"
  L8_2 = gamelua
  L8_2 = L8_2.getFontBasic
  L7_2.font = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.ScallableButton
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "claimButton"
  L8_2.activateOnRelease = true
  L8_2.returnValue = "CLAIM"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = "BOX_GAUGE_BASE_"
  L10_2 = A0_2.suffix
  L9_2 = L9_2 .. L10_2
  L7_2(L8_2, L9_2)
  L7_2 = ui
  L7_2 = L7_2.DummyText
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "claimText"
  L10_2 = gamelua
  L10_2 = L10_2.getText
  L11_2 = "TEXT_CARBONITE_CLAIM"
  L10_2 = L10_2(L11_2)
  L9_2.text = L10_2
  L10_2 = gamelua
  L10_2 = L10_2.getFontBasic
  L10_2 = L10_2()
  L9_2.font = L10_2
  L9_2.vanchor = "BOTTOM"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L6_2
  L8_2 = L6_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.onEntry
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.addChild
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.initProgressBar
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.updateClaiming
  L10_2 = A0_2.name
  L8_2(L9_2, L10_2)
  A0_2.image = L3_2
  A0_2.titleText = L4_2
  A0_2.contentText = L5_2
  A0_2.claimButton = L6_2
  A0_2.rewardText = L2_2
  A0_2.completedStamp = L1_2
end

L0_1.init = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = gamelua
  L2_2 = L2_2.isQuestAutomaticallyRewarded
  L3_2 = A0_2.quest
  L2_2 = L2_2(L3_2)
  L3_2 = gamelua
  L3_2 = L3_2.isQuestClaimed
  L4_2 = A0_2.name
  L3_2 = L3_2(L4_2)
  L4_2 = gamelua
  L4_2 = L4_2.isQuestCompleted
  L5_2 = A0_2.quest
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "claimButton"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "claimText"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "completedStamp"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "progressBase"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "progressBar"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "progressText"
  L10_2 = L10_2(L11_2, L12_2)
  if not L3_2 or L2_2 then
    if not (L4_2 and L2_2 and L3_2) then
      goto lbl_52
    end
    L11_2 = A0_2.achievementPopup
    if L11_2 then
      goto lbl_52
    end
  end
  L12_2 = A0_2
  L11_2 = A0_2.questClaimedBackground
  L11_2(L12_2)
  L5_2.visible = false
  L6_2.visible = false
  L8_2.visible = false
  L9_2.visible = false
  L10_2.visible = false
  goto lbl_76
  ::lbl_52::
  L12_2 = A0_2
  L11_2 = A0_2.isQuestWaitingForToBeClaimed
  L11_2 = L11_2(L12_2)
  if L11_2 then
    L11_2 = A0_2.achievementPopup
    if not L11_2 then
      L12_2 = A0_2
      L11_2 = A0_2.questNotClaimedBackground
      L11_2(L12_2)
      L5_2.visible = true
      L6_2.visible = true
      L8_2.visible = false
      L9_2.visible = false
      L10_2.visible = false
      L7_2.visible = true
  end
  else
    L12_2 = A0_2
    L11_2 = A0_2.questNotClaimedBackground
    L11_2(L12_2)
    L5_2.visible = false
    L6_2.visible = false
    L8_2.visible = true
    L9_2.visible = true
    L10_2.visible = true
    L7_2.visible = false
  end
  ::lbl_76::
end

L0_1.updateClaiming = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L2_2 = L1_2
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2(L2_2)
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "BOX_LEFT_INFOBAR_DARK_LIGHT"
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L3_2 * 1.1
  L4_2 = L4_2 * L1_2
  return L4_2
end

L0_1.getHeight = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "completedStamp"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "progressBase"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "progressBar"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "progressText"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "firstDivider"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "secondDivider"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = "LIGHT"
  suffix = L7_2
  L7_2 = A0_2.suffix
  if L7_2 == "SITH" then
    L7_2 = "DARK"
    suffix = L7_2
  end
  L7_2 = A0_2.bg
  L8_2 = {}
  L9_2 = "BOX_LEFT_INFOBAR_"
  L10_2 = suffix
  L11_2 = "_DARK"
  L9_2 = L9_2 .. L10_2 .. L11_2
  L8_2.left = L9_2
  L9_2 = "BOX_MIDDLE_INFOBAR_"
  L10_2 = suffix
  L11_2 = "_DARK"
  L9_2 = L9_2 .. L10_2 .. L11_2
  L8_2.center = L9_2
  L9_2 = "BOX_RIGHT_INFOBAR_"
  L10_2 = suffix
  L11_2 = "_DARK"
  L9_2 = L9_2 .. L10_2 .. L11_2
  L8_2.right = L9_2
  L7_2.components = L8_2
  L7_2 = A0_2.firstDivider
  L8_2 = L7_2
  L7_2 = L7_2.setImage
  L9_2 = "TEXTBOX_CLIP_DARK_"
  L10_2 = A0_2.suffix
  L9_2 = L9_2 .. L10_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.secondDivider
  L8_2 = L7_2
  L7_2 = L7_2.setImage
  L9_2 = "TEXTBOX_CLIP_DARK_"
  L10_2 = A0_2.suffix
  L9_2 = L9_2 .. L10_2
  L7_2(L8_2, L9_2)
  L1_2.visible = true
  L5_2.visible = false
  L6_2.visible = false
end

L0_1.questClaimedBackground = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "LIGHT"
  suffix = L1_2
  L1_2 = A0_2.suffix
  if L1_2 == "SITH" then
    L1_2 = "DARK"
    suffix = L1_2
  end
  L1_2 = A0_2.bg
  L2_2 = {}
  L3_2 = "BOX_LEFT_INFOBAR_"
  L4_2 = suffix
  L5_2 = "_LIGHT"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2.left = L3_2
  L3_2 = "BOX_MIDDLE_INFOBAR_"
  L4_2 = suffix
  L5_2 = "_LIGHT"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2.center = L3_2
  L3_2 = "BOX_RIGHT_INFOBAR_"
  L4_2 = suffix
  L5_2 = "_LIGHT"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2.right = L3_2
  L1_2.components = L2_2
  L1_2 = A0_2.firstDivider
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "TEXTBOX_CLIP_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.secondDivider
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "TEXTBOX_CLIP_"
  L4_2 = A0_2.suffix
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end

L0_1.questNotClaimedBackground = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "progressBase"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "BOX_GAUGE_BASE_"
  L5_2 = A0_2.suffix
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ProgressBar
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "progressBar"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImages
  L5_2 = "BOX_GAUGE_EMPTY_"
  L6_2 = A0_2.suffix
  L5_2 = L5_2 .. L6_2
  L6_2 = "BOX_GAUGE_FULL_"
  L7_2 = A0_2.questSide
  L6_2 = L6_2 .. L7_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.setValue
  L5_2 = A0_2.currentValue
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setMax
  L5_2 = A0_2.targetValue
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = "100%"
  L4_2 = A0_2.currentValue
  L5_2 = A0_2.targetValue
  if L4_2 < L5_2 then
    L4_2 = _G
    L4_2 = L4_2.tostring
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.floor
    L6_2 = A0_2.currentValue
    L7_2 = A0_2.targetValue
    L6_2 = L6_2 / L7_2
    L6_2 = L6_2 * 100
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = "%"
    L3_2 = L4_2 .. L5_2
  end
  L4_2 = ui
  L4_2 = L4_2.DummyText
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "progressText"
  L6_2.text = L3_2
  L7_2 = gamelua
  L7_2 = L7_2.getFontBasic
  L7_2 = L7_2()
  L6_2.font = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  A0_2.progress = L2_2
  A0_2.progressBase = L1_2
  A0_2.progressText = L4_2
end

L0_1.initProgressBar = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.isQuestCompleted
  L2_2 = A0_2.quest
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.isQuestClaimed
  L3_2 = A0_2.name
  L2_2 = L2_2(L3_2)
  L3_2 = gamelua
  L3_2 = L3_2.isQuestAutomaticallyRewarded
  L4_2 = A0_2.quest
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2 or L4_2
  L4_2 = not L3_2 and L1_2 and L4_2
  return L4_2
end

L0_1.isQuestWaitingForToBeClaimed = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.currentValue
  L2_2 = A0_2.targetValue
  if L1_2 >= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.isQuestWaitingForToBeClaimed
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = 9999
      return L1_2
    else
      L1_2 = -1
      return L1_2
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.isQuestAlreadyGivenOnDevice
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = -1
    return L1_2
  end
  L1_2 = A0_2.currentValue
  L2_2 = A0_2.targetValue
  L1_2 = L1_2 / L2_2
  return L1_2
end

L0_1.getProgressPercentage = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.updateClaiming
  L3_2 = A0_2.name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
end

L0_1.updateRewardClaimed = L1_1
L0_1 = QuestLine

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
  if A1_2 == "LRELEASE" and L4_2 == "CLAIM" then
    L8_2 = A0_2
    L7_2 = A0_2.isQuestWaitingForToBeClaimed
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = events
      L10_2 = L10_2.EID_OPEN_SHOP
      L9_2.id = L10_2
      L9_2.screen = "QuestPage"
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
end

L0_1.onKeyEvent = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2
end

L0_1.close = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "progressBar"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "claimButton"
  L2_2 = L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = L1_2.x
    return L3_2
  elseif L2_2 then
    L3_2 = L2_2.x
    return L3_2
  end
  L3_2 = 0
  return L3_2
end

L0_1.getProgressX = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "rewardImage"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rewardText"
  L2_2 = L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = L1_2.x
    return L3_2
  elseif L2_2 then
    L3_2 = L2_2.x
    return L3_2
  end
  L3_2 = 0
  return L3_2
end

L0_1.getRewardX = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "titleText"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.getWidth
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 * L2_2
    L5_2 = A0_2.x
    L6_2 = L3_2.x
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 - A1_2
    if L4_2 > L5_2 then
      L6_2 = true
      return L6_2
    end
  end
  L4_2 = false
  return L4_2
end

L0_1.isTitleOverLocation = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L1_2 = gamelua
  L2_2 = L1_2
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "levelImage"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "rewardImage"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "rewardText"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "titleText"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "contentText"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "progressBar"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "progressText"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "progressBase"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "claimButton"
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "amountBg"
  L12_2 = L12_2(L13_2, L14_2)
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "rewardBackground"
  L13_2 = L13_2(L14_2, L15_2)
  L15_2 = A0_2
  L14_2 = A0_2.getChild
  L16_2 = "completedStamp"
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = _G
  L15_2 = L15_2.res
  L15_2 = L15_2.getSpriteBounds
  L16_2 = A0_2.bg
  L16_2 = L16_2.components
  L16_2 = L16_2.left
  L15_2, L16_2 = L15_2(L16_2)
  L17_2 = gamelua
  L17_2 = L17_2.screenWidth
  L17_2 = L17_2 * 0.8
  A0_2.w = L17_2
  L18_2 = A0_2
  L17_2 = A0_2.getHeight
  L17_2 = L17_2(L18_2)
  A0_2.h = L17_2
  L17_2 = nil
  L18_2 = nil
  if L1_2 <= 1 then
    L19_2 = A0_2.w
    L20_2 = A0_2.bg
    L21_2 = L20_2
    L20_2 = L20_2.getRightBlockW
    L20_2 = L20_2(L21_2)
    L21_2 = 1 - L1_2
    L20_2 = L20_2 * L21_2
    L20_2 = 2 * L20_2
    L17_2 = L19_2 - L20_2
    L19_2 = L16_2 * L1_2
    L18_2 = L19_2 * 1
  else
    L19_2 = A0_2.w
    L20_2 = A0_2.bg
    L21_2 = L20_2
    L20_2 = L20_2.getRightBlockW
    L20_2 = L20_2(L21_2)
    L21_2 = L1_2 - 1
    L20_2 = L20_2 * L21_2
    L20_2 = 2 * L20_2
    L17_2 = L19_2 + L20_2
    L19_2 = L16_2 * L1_2
    L18_2 = L19_2 * 1
  end
  if L17_2 < 0 then
    L17_2 = 0
  end
  if L18_2 < 0 then
    L18_2 = 0
  end
  L19_2 = A0_2.bg
  L20_2 = L19_2
  L19_2 = L19_2.setSize
  L21_2 = L17_2
  L22_2 = L18_2
  L19_2(L20_2, L21_2, L22_2)
  L19_2 = A0_2.bg
  L19_2.x = 0
  L19_2 = A0_2.bg
  L19_2.y = 0
  L20_2 = L6_2
  L19_2 = L6_2.setScale
  L21_2 = L1_2
  L19_2(L20_2, L21_2)
  L19_2 = A0_2.w
  L19_2 = -L19_2
  L19_2 = L19_2 * 0.5
  L6_2.x = L19_2
  L19_2 = -L18_2
  L19_2 = L19_2 * 0.5
  L21_2 = L6_2
  L20_2 = L6_2.getHeight
  L20_2 = L20_2(L21_2)
  L20_2 = L20_2 * L2_2
  L19_2 = L19_2 + L20_2
  L6_2.y = L19_2
  L19_2 = L6_2.x
  L7_2.x = L19_2
  L19_2 = A0_2.h
  L19_2 = L19_2 / 2
  L21_2 = L7_2
  L20_2 = L7_2.getFontLeading
  L20_2 = L20_2(L21_2)
  L19_2 = L19_2 - L20_2
  L7_2.y = L19_2
  L19_2 = _G
  L19_2 = L19_2.res
  L19_2 = L19_2.getSpriteBounds
  L20_2 = "BONUS_LEVEL_POD_FRONT"
  L19_2, L20_2 = L19_2(L20_2)
  L21_2 = A0_2.rewardImageScale
  if not L21_2 then
    L21_2 = 1
  end
  L21_2 = L1_2 * L21_2
  L22_2 = A0_2.quest
  if L22_2 then
    L22_2 = A0_2.quest
    L22_2 = L22_2.reward
    if L22_2 == "level" then
      L21_2 = L1_2 * 0.7
  end
  else
    L22_2 = A0_2.quest
    if L22_2 then
      L22_2 = A0_2.quest
      L22_2 = L22_2.reward
      if L22_2 == "bird" then
        goto lbl_148
      end
    end
    L22_2 = A0_2.quest
    L22_2 = L22_2.reward
    ::lbl_148::
    if L22_2 == "credits" then
      L21_2 = L1_2 * 0.85
    end
  end
  L22_2 = L19_2 * L1_2
  L22_2 = L22_2 * 0.75
  L23_2 = A0_2.secondDivider
  L23_2 = L23_2.w
  L23_2 = L23_2 * L1_2
  L22_2 = L22_2 + L23_2
  L23_2 = A0_2.secondDivider
  L23_2.y = 0
  L23_2 = A0_2.secondDivider
  L24_2 = A0_2.bg
  L24_2 = L24_2.width
  L24_2 = L24_2 / 2
  L25_2 = A0_2.bg
  L26_2 = L25_2
  L25_2 = L25_2.getRightBlockW
  L25_2 = L25_2(L26_2)
  L24_2 = L24_2 + L25_2
  L24_2 = L24_2 - L22_2
  L23_2.x = L24_2
  L23_2 = A0_2.secondDivider
  L24_2 = L23_2
  L23_2 = L23_2.setScale
  L25_2 = L1_2
  L23_2(L24_2, L25_2)
  L24_2 = L4_2
  L23_2 = L4_2.setScale
  L25_2 = L21_2
  L23_2(L24_2, L25_2)
  L23_2 = A0_2.secondDivider
  L23_2 = L23_2.x
  L24_2 = L22_2 / 2
  L23_2 = L23_2 + L24_2
  L4_2.x = L23_2
  if L3_2 then
    L24_2 = L3_2
    L23_2 = L3_2.setScale
    L25_2 = L21_2
    L23_2(L24_2, L25_2)
    L23_2 = L4_2.x
    L3_2.x = L23_2
  end
  if L12_2 then
    L23_2 = _G
    L23_2 = L23_2.res
    L23_2 = L23_2.getSpriteBounds
    L24_2 = "BTN_BG_LIGHT"
    L23_2, L24_2 = L23_2(L24_2)
    L26_2 = L12_2
    L25_2 = L12_2.setScale
    L27_2 = L21_2
    L25_2(L26_2, L27_2)
    L25_2 = L4_2.x
    L26_2 = 0.45 * L23_2
    L26_2 = L26_2 * L21_2
    L25_2 = L25_2 + L26_2
    L12_2.x = L25_2
    L25_2 = L4_2.y
    L26_2 = 0.38 * L24_2
    L26_2 = L26_2 * L21_2
    L25_2 = L25_2 + L26_2
    L12_2.y = L25_2
    L25_2 = _G
    L25_2 = L25_2.string
    L25_2 = L25_2.len
    L26_2 = L5_2.text
    L25_2 = L25_2(L26_2)
    if 2 < L25_2 then
      L26_2 = L5_2
      L25_2 = L5_2.setScale
      L27_2 = L1_2 * 0.75
      L25_2(L26_2, L27_2)
    else
      L26_2 = L5_2
      L25_2 = L5_2.setScale
      L27_2 = L1_2 * 0.85
      L25_2(L26_2, L27_2)
    end
    L25_2 = L12_2.x
    L5_2.x = L25_2
    L25_2 = L12_2.y
    L5_2.y = L25_2
  else
    L24_2 = L5_2
    L23_2 = L5_2.setScale
    L25_2 = L1_2 * 0.8
    L23_2(L24_2, L25_2)
    L23_2 = A0_2.secondDivider
    L23_2 = L23_2.x
    L24_2 = L22_2 / 2
    L23_2 = L23_2 + L24_2
    L5_2.x = L23_2
    if L13_2 then
      L23_2 = L5_2.x
      L13_2.x = L23_2
      L24_2 = L13_2
      L23_2 = L13_2.setScale
      L25_2 = L1_2 * 0.9
      L23_2(L24_2, L25_2)
    end
  end
  if L8_2 and L10_2 and L9_2 then
    L23_2 = _G
    L23_2 = L23_2.res
    L23_2 = L23_2.getSpriteBounds
    L24_2 = L8_2.backgroundImage
    L23_2 = L23_2(L24_2)
    L23_2 = L23_2 * L1_2
    L24_2 = nil
    L25_2 = _G
    L25_2 = L25_2.res
    L25_2 = L25_2.getSpriteBounds
    L26_2 = "BOX_GAUGE_BASE_LIGHT"
    L25_2, L26_2 = L25_2(L26_2)
    L27_2 = L25_2 * L1_2
    L26_2 = L26_2 * L1_2
    L25_2 = L27_2
    L27_2 = A0_2.secondDivider
    L27_2 = L27_2.w
    L27_2 = L27_2 / 2
    L27_2 = L27_2 * L1_2
    L28_2 = A0_2.firstDivider
    L29_2 = A0_2.secondDivider
    L29_2 = L29_2.x
    L29_2 = L29_2 - L25_2
    L30_2 = A0_2.secondDivider
    L30_2 = L30_2.w
    L30_2 = L30_2 * L1_2
    L29_2 = L29_2 - L30_2
    L29_2 = L29_2 - L27_2
    L28_2.x = L29_2
    L29_2 = L8_2
    L28_2 = L8_2.setScale
    L30_2 = L1_2
    L28_2(L29_2, L30_2)
    L28_2 = A0_2.firstDivider
    L28_2 = L28_2.x
    L29_2 = L25_2 / 2
    L28_2 = L28_2 + L29_2
    L29_2 = A0_2.firstDivider
    L29_2 = L29_2.w
    L29_2 = L29_2 / 2
    L29_2 = L29_2 * L1_2
    L28_2 = L28_2 + L29_2
    L8_2.x = L28_2
    L29_2 = L8_2
    L28_2 = L8_2.getHeight
    L28_2 = L28_2(L29_2)
    L28_2 = L28_2 * L2_2
    L29_2 = L18_2 * 0.14
    L28_2 = L28_2 - L29_2
    L8_2.y = L28_2
    L29_2 = L10_2
    L28_2 = L10_2.setScale
    L30_2 = L1_2
    L28_2(L29_2, L30_2)
    L28_2 = L8_2.x
    L10_2.x = L28_2
    L28_2 = 2 * L1_2
    L29_2 = L8_2.y
    L28_2 = L28_2 + L29_2
    L10_2.y = L28_2
    L29_2 = L9_2
    L28_2 = L9_2.setScale
    L30_2 = L1_2 * 0.8
    L28_2(L29_2, L30_2)
    L28_2 = L10_2.x
    L9_2.x = L28_2
    L28_2 = L18_2 * 0.14
    L9_2.y = L28_2
  end
  if L11_2 then
    L23_2 = _G
    L23_2 = L23_2.res
    L23_2 = L23_2.getSpriteBounds
    L24_2 = "BOX_GAUGE_BASE_LIGHT"
    L23_2, L24_2 = L23_2(L24_2)
    L25_2 = A0_2.secondDivider
    L25_2 = L25_2.w
    L25_2 = L25_2 / 2
    L25_2 = L25_2 * L1_2
    L26_2 = _G
    L26_2 = L26_2.res
    L26_2 = L26_2.getSpriteBounds
    L27_2 = "BOX_GAUGE_EMPTY_LIGHT"
    L26_2 = L26_2(L27_2)
    L26_2 = L26_2 * L1_2
    L27_2 = nil
    L29_2 = L11_2
    L28_2 = L11_2.getChild
    L30_2 = "claimText"
    L28_2 = L28_2(L29_2, L30_2)
    L29_2 = L23_2 * L1_2
    L24_2 = L24_2 * L1_2
    L23_2 = L29_2
    L29_2 = A0_2.firstDivider
    L30_2 = A0_2.secondDivider
    L30_2 = L30_2.x
    L30_2 = L30_2 - L23_2
    L31_2 = A0_2.secondDivider
    L31_2 = L31_2.w
    L31_2 = L31_2 * L1_2
    L30_2 = L30_2 - L31_2
    L30_2 = L30_2 - L25_2
    L29_2.x = L30_2
    L30_2 = L11_2
    L29_2 = L11_2.setScale
    L31_2 = L1_2
    L29_2(L30_2, L31_2)
    L29_2 = L11_2.h
    L29_2 = L29_2 / 2
    L29_2 = L29_2 * L1_2
    L11_2.y = L29_2
    L29_2 = A0_2.firstDivider
    L29_2 = L29_2.x
    L30_2 = L23_2 / 2
    L29_2 = L29_2 + L30_2
    L30_2 = A0_2.firstDivider
    L30_2 = L30_2.w
    L30_2 = L30_2 / 2
    L30_2 = L30_2 * L1_2
    L29_2 = L29_2 + L30_2
    L11_2.x = L29_2
    L29_2 = -10 * L1_2
    L28_2.y = L29_2
  end
  L23_2 = A0_2.firstDivider
  L23_2 = L23_2.x
  L24_2 = L7_2.x
  L23_2 = L23_2 - L24_2
  L23_2 = L23_2 / L1_2
  L7_2.textBoxSize = L23_2
  L24_2 = L7_2
  L23_2 = L7_2.setScale
  L25_2 = 1.6 * L1_2
  L23_2(L24_2, L25_2)
  L24_2 = L7_2
  L23_2 = L7_2.clip
  L23_2(L24_2)
  L24_2 = L7_2
  L23_2 = L7_2.getHeight
  L23_2 = L23_2(L24_2)
  L23_2 = L23_2 * L2_2
  L23_2 = L23_2 * 0.5
  L24_2 = L7_2.lines
  L24_2 = #L24_2
  L23_2 = L23_2 / L24_2
  L7_2.y = L23_2
  L23_2 = A0_2.firstDivider
  L23_2.y = 0
  L23_2 = A0_2.firstDivider
  L24_2 = L23_2
  L23_2 = L23_2.setScale
  L25_2 = L1_2
  L23_2(L24_2, L25_2)
  L23_2 = L11_2.visible
  if not L23_2 and L8_2 then
    L23_2 = L8_2.x
    L14_2.x = L23_2
  else
    L23_2 = A0_2.firstDivider
    L23_2 = L23_2.x
    L24_2 = L14_2.w
    L24_2 = L24_2 * L1_2
    L24_2 = L24_2 * 0.55
    L23_2 = L23_2 - L24_2
    L14_2.x = L23_2
  end
  L24_2 = L14_2
  L23_2 = L14_2.setScale
  L25_2 = L1_2
  L23_2(L24_2, L25_2)
end

L0_1.layout = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = QuestLine
  L3_2 = L3_2.batchesDrawn
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.handleDrawBatches
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = QuestLine
    L3_2.batchesDrawn = true
  end
end

L0_1.draw = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = QuestLine
  L3_2 = L3_2.clearBatches
  if L3_2 then
    L3_2 = QuestLine
    L4_2 = {}
    L3_2.drawBatches = L4_2
    L3_2 = QuestLine
    L3_2.clearBatches = false
  end
  L3_2 = QuestLine
  L3_2 = L3_2.drawBatches
  L4_2 = QuestLine
  L4_2 = L4_2.drawBatches
  L4_2 = L4_2[1]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[1] = L4_2
  L3_2 = QuestLine
  L3_2 = L3_2.drawBatches
  L4_2 = QuestLine
  L4_2 = L4_2.drawBatches
  L4_2 = L4_2[2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[2] = L4_2
  L3_2 = QuestLine
  L3_2 = L3_2.drawBatches
  L4_2 = QuestLine
  L4_2 = L4_2.drawBatches
  L4_2 = L4_2[3]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[3] = L4_2
  L3_2 = QuestLine
  L3_2 = L3_2.drawBatches
  L4_2 = QuestLine
  L4_2 = L4_2.drawBatches
  L4_2 = L4_2[4]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[4] = L4_2
  L3_2 = QuestLine
  L3_2 = L3_2.drawBatches
  L4_2 = QuestLine
  L4_2 = L4_2.drawBatches
  L4_2 = L4_2[5]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[5] = L4_2
  L3_2 = QuestLine
  L3_2.batchesDrawn = false
  L4_2 = A0_2
  L3_2 = A0_2.setupDrawBatches
  L3_2(L4_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.currentValue = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "progressBar"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setImages
    L5_2 = "BOX_GAUGE_EMPTY_"
    L6_2 = A0_2.suffix
    L5_2 = L5_2 .. L6_2
    L6_2 = "BOX_GAUGE_FULL_"
    L7_2 = A0_2.suffix
    L6_2 = L6_2 .. L7_2
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = L2_2
    L3_2 = L2_2.setValue
    L5_2 = A0_2.currentValue
    L3_2(L4_2, L5_2)
    L3_2 = "100%"
    L4_2 = A0_2.currentValue
    L5_2 = A0_2.targetValue
    if L4_2 < L5_2 then
      L4_2 = _G
      L4_2 = L4_2.tostring
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.floor
      L6_2 = A0_2.currentValue
      L7_2 = A0_2.targetValue
      L6_2 = L6_2 / L7_2
      L6_2 = L6_2 * 100
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = "%"
      L3_2 = L4_2 .. L5_2
    else
      L4_2 = A0_2.currentValue
      L5_2 = A0_2.targetValue
      if L4_2 >= L5_2 then
        L5_2 = L2_2
        L4_2 = L2_2.setImages
        L6_2 = "BOX_GAUGE_EMPTY_"
        L7_2 = A0_2.suffix
        L6_2 = L6_2 .. L7_2
        L7_2 = "BOX_GAUGE_SHINING_"
        L8_2 = A0_2.suffix
        L7_2 = L7_2 .. L8_2
        L4_2(L5_2, L6_2, L7_2)
      end
    end
    L5_2 = A0_2
    L4_2 = A0_2.getChild
    L6_2 = "progressText"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L6_2 = L4_2
      L5_2 = L4_2.setText
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
    end
  end
end

L0_1.updateProgress = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "progressBar"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.getSpriteBounds
    L5_2 = L3_2.backgroundImage
    L4_2, L5_2 = L4_2(L5_2)
    L6_2 = gamelua
    L6_2 = L6_2.getUIScale
    L6_2 = L6_2()
    L4_2 = L4_2 * L6_2
    L6_2 = gamelua
    L6_2 = L6_2.getUIScale
    L6_2 = L6_2()
    L5_2 = L5_2 * L6_2
    L6_2 = gamelua
    L6_2 = L6_2.putMenuParticles
    L7_2 = {}
    L8_2 = A0_2.x
    L8_2 = A1_2 + L8_2
    L9_2 = L3_2.x
    L8_2 = L8_2 + L9_2
    L9_2 = L4_2 / 2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L8_2 = A0_2.y
    L8_2 = A2_2 + L8_2
    L9_2 = L3_2.y
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 - L5_2
    L7_2.y = L8_2
    L7_2.particles = "newHighScoreStars"
    L7_2.amount = 20
    L6_2(L7_2)
  end
end

L0_1.emitProgressParticles = L1_1
L0_1 = QuestLine

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3.bg
    L3_3 = L2_3
    L2_3 = L2_3.draw
    L4_3 = A0_2
    L4_3 = L4_3.x
    L4_3 = A0_3 + L4_3
    L5_3 = A0_2
    L5_3 = L5_3.y
    L5_3 = A1_3 + L5_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A0_2
    L2_3 = L2_3.progressBase
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.progressBase
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
    L2_3 = A0_2
    L2_3 = L2_3.progress
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.progress
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
    L2_3 = A0_2
    L2_3 = L2_3.firstDivider
    L3_3 = L2_3
    L2_3 = L2_3.draw
    L4_3 = A0_2
    L4_3 = L4_3.x
    L4_3 = A0_3 + L4_3
    L5_3 = A0_2
    L5_3 = L5_3.y
    L5_3 = A1_3 + L5_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A0_2
    L2_3 = L2_3.secondDivider
    L3_3 = L2_3
    L2_3 = L2_3.draw
    L4_3 = A0_2
    L4_3 = L4_3.x
    L4_3 = A0_3 + L4_3
    L5_3 = A0_2
    L5_3 = L5_3.y
    L5_3 = A1_3 + L5_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A0_2
    L2_3 = L2_3.rewardBackground
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.rewardBackground
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3.image
    L3_3 = L2_3
    L2_3 = L2_3.draw
    L4_3 = A0_2
    L4_3 = L4_3.x
    L4_3 = A0_3 + L4_3
    L5_3 = A0_2
    L5_3 = L5_3.y
    L5_3 = A1_3 + L5_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A0_2
    L2_3 = L2_3.amountBgImage
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.amountBgImage
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3.levelImage
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.levelImage
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_2
    L2_3 = L2_3.titleText
    L3_3 = L2_3
    L2_3 = L2_3.draw
    L4_3 = A0_2
    L4_3 = L4_3.x
    L4_3 = A0_3 + L4_3
    L5_3 = A0_2
    L5_3 = L5_3.y
    L5_3 = A1_3 + L5_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A0_2
    L2_3 = L2_3.contentText
    L3_3 = L2_3
    L2_3 = L2_3.draw
    L4_3 = A0_2
    L4_3 = L4_3.x
    L4_3 = A0_3 + L4_3
    L5_3 = A0_2
    L5_3 = L5_3.y
    L5_3 = A1_3 + L5_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A0_2
    L2_3 = L2_3.rewardText
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.rewardText
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
    L2_3 = A0_2
    L2_3 = L2_3.progressText
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.progressText
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L6_3 = 1
      L7_3 = 1
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    end
  end
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = A0_2
    L2_3 = L2_3.completedStamp
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.completedStamp
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
    end
    L2_3 = A0_2
    L2_3 = L2_3.claimButton
    if L2_3 then
      L2_3 = A0_2
      L2_3 = L2_3.claimButton
      L3_3 = L2_3
      L2_3 = L2_3.draw
      L4_3 = A0_2
      L4_3 = L4_3.x
      L4_3 = A0_3 + L4_3
      L5_3 = A0_2
      L5_3 = L5_3.y
      L5_3 = A1_3 + L5_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = gamelua
      L2_3 = L2_3.setRenderState
      L3_3 = 0
      L4_3 = 0
      L5_3 = 1
      L6_3 = 1
      L7_3 = 0
      L8_3 = 0
      L9_3 = 0
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    end
  end
  
  L6_2 = _G
  L6_2 = L6_2.table
  L6_2 = L6_2.insert
  L7_2 = QuestLine
  L7_2 = L7_2.drawBatches
  L7_2 = L7_2[1]
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  L6_2 = _G
  L6_2 = L6_2.table
  L6_2 = L6_2.insert
  L7_2 = QuestLine
  L7_2 = L7_2.drawBatches
  L7_2 = L7_2[2]
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = _G
  L6_2 = L6_2.table
  L6_2 = L6_2.insert
  L7_2 = QuestLine
  L7_2 = L7_2.drawBatches
  L7_2 = L7_2[3]
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = _G
  L6_2 = L6_2.table
  L6_2 = L6_2.insert
  L7_2 = QuestLine
  L7_2 = L7_2.drawBatches
  L7_2 = L7_2[4]
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = _G
  L6_2 = L6_2.table
  L6_2 = L6_2.insert
  L7_2 = QuestLine
  L7_2 = L7_2.drawBatches
  L7_2 = L7_2[5]
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end

L0_1.setupDrawBatches = L1_1
L0_1 = QuestLine

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = QuestLine
  L4_2 = L4_2.drawBatches
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = _G
    L8_2 = L8_2.pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L12_2
      L14_2 = A1_2
      L15_2 = A2_2
      L13_2(L14_2, L15_2)
    end
  end
  L3_2 = QuestLine
  L3_2.clearBatches = true
end

L0_1.handleDrawBatches = L1_1
