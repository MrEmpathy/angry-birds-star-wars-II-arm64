local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
RovioIDProfilePage = L0_1
L0_1 = RovioIDProfilePage
L0_1.isShown = false
L0_1 = RovioIDProfilePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = "RovioIDProfilePage"
  end
  A0_2.name = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isDarkSide
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = "SITH"
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = "LIGHT"
  ::lbl_21::
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
  L1_2.name = "bgBox"
  L1_2.hanchor = "HCENTER"
  L1_2.vanchor = "VCENTER"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "bgImage"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "ID_PROFILE_STARFIELD_BG"
  L4_2(L5_2, L6_2)
  L3_2.vanchor = "VCENTER"
  L3_2.hanchor = "HCENTER"
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Text
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "title"
  L7_2 = gamelua
  L7_2 = L7_2.getText
  L8_2 = "TEXT_ID_PROFILE_TITLE"
  L7_2 = L7_2(L8_2)
  L6_2.text = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.getFontBasic
  L6_2.font = L7_2
  L6_2.hanchor = "LEFT"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L3_2
  L5_2 = L3_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Text
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "signedIn"
  L8_2 = gamelua
  L8_2 = L8_2.getText
  L9_2 = "TEXT_ID_PROFILE_SIGNED_IN"
  L8_2 = L8_2(L9_2)
  L7_2.text = L8_2
  L8_2 = gamelua
  L8_2 = L8_2.getFontBasic
  L7_2.font = L8_2
  L7_2.hanchor = "LEFT"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L3_2
  L6_2 = L3_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Text
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "accountName"
  L9_2 = ""
  L10_2 = gamelua
  L10_2 = L10_2.RovioAccount
  L10_2 = L10_2.profile
  L10_2 = L10_2.email
  L9_2 = L9_2 .. L10_2
  L8_2.text = L9_2
  L9_2 = ""
  L10_2 = gamelua
  L10_2 = L10_2.RovioAccount
  L10_2 = L10_2.profile
  L10_2 = L10_2.email
  L9_2 = L9_2 .. L10_2
  L8_2.completeText = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.getFontBasic
  L8_2.font = L9_2
  L8_2.hanchor = "LEFT"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L3_2
  L7_2 = L3_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = gamelua
  L7_2 = L7_2.ui
  L7_2 = L7_2.Text
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "accountDetails"
  L10_2 = gamelua
  L10_2 = L10_2.getText
  L11_2 = "TEXT_ID_PROFILE_ACCOUNT_DETAILS"
  L10_2 = L10_2(L11_2)
  L9_2.text = L10_2
  L10_2 = gamelua
  L10_2 = L10_2.getFontBasic
  L9_2.font = L10_2
  L9_2.hanchor = "HCENTER"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L3_2
  L8_2 = L3_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = ui
  L8_2 = L8_2.InvisibleButton
  L9_2 = L8_2
  L8_2 = L8_2.new
  L8_2 = L8_2(L9_2)
  L8_2.name = "accountDetails_invisible"
  L8_2.activateOnRelease = true
  L8_2.returnValue = "ACCOUNT_DETAILS"
  L10_2 = L7_2
  L9_2 = L7_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = gamelua
  L9_2 = L9_2.calculateTotalSideScore
  L10_2 = false
  L9_2 = L9_2(L10_2)
  L10_2 = gamelua
  L10_2 = L10_2.calculateTotalSideScore
  L11_2 = true
  L10_2 = L10_2(L11_2)
  L11_2 = L9_2 + L10_2
  L12_2 = nil
  if L11_2 <= 0 then
    L12_2 = 0.5
  elseif L10_2 <= 0 then
    L12_2 = 1
  else
    L12_2 = L9_2 / L11_2
  end
  L13_2 = gamelua
  L13_2 = L13_2.ui
  L13_2 = L13_2.Image
  L14_2 = L13_2
  L13_2 = L13_2.new
  L15_2 = {}
  L15_2.name = "profileIcon"
  L13_2 = L13_2(L14_2, L15_2)
  if L12_2 <= 0.5 then
    L15_2 = L13_2
    L14_2 = L13_2.setImage
    L16_2 = "ID_PROFILE_GAME_ICON_DARK"
    L14_2(L15_2, L16_2)
  else
    L15_2 = L13_2
    L14_2 = L13_2.setImage
    L16_2 = "ID_PROFILE_GAME_ICON_LIGHT"
    L14_2(L15_2, L16_2)
  end
  L13_2.vanchor = "VCENTER"
  L13_2.hanchor = "HCENTER"
  L15_2 = L3_2
  L14_2 = L3_2.addChild
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  L14_2 = gamelua
  L14_2 = L14_2.ui
  L14_2 = L14_2.Text
  L15_2 = L14_2
  L14_2 = L14_2.new
  L16_2 = {}
  L16_2.name = "lightSideScore"
  L17_2 = ""
  L18_2 = L9_2
  L17_2 = L17_2 .. L18_2
  L16_2.text = L17_2
  L16_2.font = "FONT_ID_SCORE_LIGHT"
  L16_2.hanchor = "RIGHT"
  L14_2 = L14_2(L15_2, L16_2)
  L16_2 = L3_2
  L15_2 = L3_2.addChild
  L17_2 = L14_2
  L15_2(L16_2, L17_2)
  L15_2 = gamelua
  L15_2 = L15_2.ui
  L15_2 = L15_2.Text
  L16_2 = L15_2
  L15_2 = L15_2.new
  L17_2 = {}
  L17_2.name = "darkSideScore"
  L18_2 = ""
  L19_2 = gamelua
  L19_2 = L19_2.calculateTotalSideScore
  L20_2 = true
  L19_2 = L19_2(L20_2)
  L18_2 = L18_2 .. L19_2
  L17_2.text = L18_2
  L17_2.font = "FONT_ID_SCORE_DARK"
  L17_2.hanchor = "LEFT"
  L15_2 = L15_2(L16_2, L17_2)
  L17_2 = L3_2
  L16_2 = L3_2.addChild
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
  L16_2 = gamelua
  L16_2 = L16_2.ui
  L16_2 = L16_2.LightSaberMeter
  L17_2 = L16_2
  L16_2 = L16_2.new
  L18_2 = {}
  L18_2.name = "lightSaber"
  L16_2 = L16_2(L17_2, L18_2)
  L18_2 = L3_2
  L17_2 = L3_2.addChild
  L19_2 = L16_2
  L17_2(L18_2, L19_2)
  L17_2 = gamelua
  L17_2 = L17_2.ui
  L17_2 = L17_2.Image
  L18_2 = L17_2
  L17_2 = L17_2.new
  L19_2 = {}
  L19_2.name = "lightSideCharacterCountImage"
  L17_2 = L17_2(L18_2, L19_2)
  L19_2 = L17_2
  L18_2 = L17_2.setImage
  L20_2 = "ID_CHARACTER_COUNTER_LIGHT"
  L18_2(L19_2, L20_2)
  L17_2.vanchor = "VCENTER"
  L17_2.hanchor = "HCENTER"
  L19_2 = L3_2
  L18_2 = L3_2.addChild
  L20_2 = L17_2
  L18_2(L19_2, L20_2)
  L18_2 = gamelua
  L18_2 = L18_2.ui
  L18_2 = L18_2.Text
  L19_2 = L18_2
  L18_2 = L18_2.new
  L20_2 = {}
  L20_2.name = "lightSideCharacterCountText"
  L21_2 = ""
  L22_2 = gamelua
  L22_2 = L22_2.getCharacterAmountForSide
  L23_2 = false
  L22_2 = L22_2(L23_2)
  L21_2 = L21_2 .. L22_2
  L20_2.text = L21_2
  L21_2 = gamelua
  L21_2 = L21_2.getFontBasic
  L20_2.font = L21_2
  L20_2.hanchor = "HCENTER"
  L18_2 = L18_2(L19_2, L20_2)
  L20_2 = L17_2
  L19_2 = L17_2.addChild
  L21_2 = L18_2
  L19_2(L20_2, L21_2)
  L19_2 = gamelua
  L19_2 = L19_2.ui
  L19_2 = L19_2.Image
  L20_2 = L19_2
  L19_2 = L19_2.new
  L21_2 = {}
  L21_2.name = "darkSideCharacterCountImage"
  L19_2 = L19_2(L20_2, L21_2)
  L21_2 = L19_2
  L20_2 = L19_2.setImage
  L22_2 = "ID_CHARACTER_COUNTER_DARK"
  L20_2(L21_2, L22_2)
  L19_2.vanchor = "VCENTER"
  L19_2.hanchor = "HCENTER"
  L21_2 = L3_2
  L20_2 = L3_2.addChild
  L22_2 = L19_2
  L20_2(L21_2, L22_2)
  L20_2 = gamelua
  L20_2 = L20_2.ui
  L20_2 = L20_2.Text
  L21_2 = L20_2
  L20_2 = L20_2.new
  L22_2 = {}
  L22_2.name = "darkSideCharacterCountText"
  L23_2 = ""
  L24_2 = gamelua
  L24_2 = L24_2.getCharacterAmountForSide
  L25_2 = true
  L24_2 = L24_2(L25_2)
  L23_2 = L23_2 .. L24_2
  L22_2.text = L23_2
  L23_2 = gamelua
  L23_2 = L23_2.getFontBasic
  L22_2.font = L23_2
  L22_2.hanchor = "HCENTER"
  L20_2 = L20_2(L21_2, L22_2)
  L22_2 = L19_2
  L21_2 = L19_2.addChild
  L23_2 = L20_2
  L21_2(L22_2, L23_2)
  L21_2 = gamelua
  L21_2 = L21_2.ui
  L21_2 = L21_2.Image
  L22_2 = L21_2
  L21_2 = L21_2.new
  L23_2 = {}
  L23_2.name = "starIcon"
  L21_2 = L21_2(L22_2, L23_2)
  L23_2 = L21_2
  L22_2 = L21_2.setImage
  L24_2 = "ID_STAR_COUNTER_ICON"
  L22_2(L23_2, L24_2)
  L21_2.vanchor = "VCENTER"
  L21_2.hanchor = "HCENTER"
  L21_2.visible = true
  L23_2 = L3_2
  L22_2 = L3_2.addChild
  L24_2 = L21_2
  L22_2(L23_2, L24_2)
  L22_2 = 0
  L23_2 = 0
  L24_2 = _G
  L24_2 = L24_2.ipairs
  L25_2 = gamelua
  L25_2 = L25_2.actions
  L25_2 = L25_2.episodeTypeTable
  L24_2, L25_2, L26_2 = L24_2(L25_2)
  for L27_2, L28_2 in L24_2, L25_2, L26_2 do
    L29_2 = _G
    L29_2 = L29_2.ipairs
    L30_2 = gamelua
    L30_2 = L30_2.actions
    L30_2 = L30_2.myLevelFolders
    L30_2 = L30_2[L28_2]
    L29_2, L30_2, L31_2 = L29_2(L30_2)
    for L32_2, L33_2 in L29_2, L30_2, L31_2 do
      L34_2 = gamelua
      L34_2 = L34_2.calculateEpisodeScoreAndStars
      L35_2 = L27_2
      L36_2 = L32_2
      L37_2 = highscoreTable
      L34_2, L35_2, L36_2, L37_2, L38_2 = L34_2(L35_2, L36_2, L37_2)
      L22_2 = L22_2 + L35_2
      L23_2 = L23_2 + L36_2
    end
  end
  L24_2 = gamelua
  L24_2 = L24_2.ui
  L24_2 = L24_2.ProgressBar
  L25_2 = L24_2
  L24_2 = L24_2.new
  L26_2 = {}
  L26_2.name = "starProgressBar"
  L24_2 = L24_2(L25_2, L26_2)
  L26_2 = L24_2
  L25_2 = L24_2.setImages
  L27_2 = "ID_COUNTER_METER_EMPTY"
  L28_2 = "ID_COUNTER_METER_FULL"
  L25_2(L26_2, L27_2, L28_2)
  L26_2 = L24_2
  L25_2 = L24_2.setValue
  L27_2 = L22_2
  L25_2(L26_2, L27_2)
  L26_2 = L24_2
  L25_2 = L24_2.setMax
  L27_2 = L23_2
  L25_2(L26_2, L27_2)
  L26_2 = L3_2
  L25_2 = L3_2.addChild
  L27_2 = L24_2
  L25_2(L26_2, L27_2)
  L25_2 = gamelua
  L25_2 = L25_2.ui
  L25_2 = L25_2.Text
  L26_2 = L25_2
  L25_2 = L25_2.new
  L27_2 = {}
  L27_2.name = "starProgressText"
  L28_2 = L22_2
  L29_2 = "/"
  L30_2 = L23_2
  L28_2 = L28_2 .. L29_2 .. L30_2
  L27_2.text = L28_2
  L28_2 = gamelua
  L28_2 = L28_2.getFontBasic
  L27_2.font = L28_2
  L27_2.hanchor = "HCENTER"
  L25_2 = L25_2(L26_2, L27_2)
  L27_2 = L24_2
  L26_2 = L24_2.addChild
  L28_2 = L25_2
  L26_2(L27_2, L28_2)
  L26_2 = gamelua
  L26_2 = L26_2.ui
  L26_2 = L26_2.Image
  L27_2 = L26_2
  L26_2 = L26_2.new
  L28_2 = {}
  L28_2.name = "achievementIcon"
  L26_2 = L26_2(L27_2, L28_2)
  L28_2 = L26_2
  L27_2 = L26_2.setImage
  L29_2 = "ID_ACHIEVEMET_COUNTER_ICON"
  L27_2(L28_2, L29_2)
  L26_2.vanchor = "VCENTER"
  L26_2.hanchor = "HCENTER"
  L26_2.visible = true
  L28_2 = L3_2
  L27_2 = L3_2.addChild
  L29_2 = L26_2
  L27_2(L28_2, L29_2)
  L27_2 = gamelua
  L27_2 = L27_2.getNumberOfCompletedQuests
  L27_2 = L27_2()
  L28_2 = gamelua
  L28_2 = L28_2.getNumberOfTotalQuests
  L28_2 = L28_2()
  L29_2 = gamelua
  L29_2 = L29_2.ui
  L29_2 = L29_2.ProgressBar
  L30_2 = L29_2
  L29_2 = L29_2.new
  L31_2 = {}
  L31_2.name = "achievementBar"
  L29_2 = L29_2(L30_2, L31_2)
  L31_2 = L29_2
  L30_2 = L29_2.setImages
  L32_2 = "ID_COUNTER_METER_EMPTY"
  L33_2 = "ID_COUNTER_METER_FULL"
  L30_2(L31_2, L32_2, L33_2)
  L31_2 = L29_2
  L30_2 = L29_2.setValue
  L32_2 = L27_2
  L30_2(L31_2, L32_2)
  L31_2 = L29_2
  L30_2 = L29_2.setMax
  L32_2 = L28_2
  L30_2(L31_2, L32_2)
  L31_2 = L3_2
  L30_2 = L3_2.addChild
  L32_2 = L29_2
  L30_2(L31_2, L32_2)
  L30_2 = gamelua
  L30_2 = L30_2.ui
  L30_2 = L30_2.Text
  L31_2 = L30_2
  L30_2 = L30_2.new
  L32_2 = {}
  L32_2.name = "achievementProgressText"
  L33_2 = L27_2
  L34_2 = "/"
  L35_2 = L28_2
  L33_2 = L33_2 .. L34_2 .. L35_2
  L32_2.text = L33_2
  L33_2 = gamelua
  L33_2 = L33_2.getFontBasic
  L32_2.font = L33_2
  L32_2.hanchor = "HCENTER"
  L30_2 = L30_2(L31_2, L32_2)
  L32_2 = L29_2
  L31_2 = L29_2.addChild
  L33_2 = L30_2
  L31_2(L32_2, L33_2)
  L31_2 = gamelua
  L31_2 = L31_2.ui
  L31_2 = L31_2.ScallableButton
  L32_2 = L31_2
  L31_2 = L31_2.new
  L33_2 = {}
  L33_2.name = "close"
  L31_2 = L31_2(L32_2, L33_2)
  L33_2 = L31_2
  L32_2 = L31_2.setImage
  L34_2 = A0_2.buttonImage
  if not L34_2 then
    L34_2 = gamelua
    L34_2 = L34_2.getButtonImageName
    L35_2 = "buttonX"
    L36_2 = gamelua
    L36_2 = L36_2.SettingsWrapper
    L37_2 = L36_2
    L36_2 = L36_2.isDarkSide
    L36_2, L37_2, L38_2 = L36_2(L37_2)
    L34_2 = L34_2(L35_2, L36_2, L37_2, L38_2)
  end
  L32_2(L33_2, L34_2)
  L32_2 = A0_2.returnValue
  L31_2.returnValue = L32_2
  L31_2.activateOnRelease = true
  L31_2.clickSound = "ButtonProceed"
  L31_2.visible = true
  L33_2 = L3_2
  L32_2 = L3_2.addChild
  L34_2 = L31_2
  L32_2(L33_2, L34_2)
  L32_2 = gamelua
  L32_2 = L32_2.ui
  L32_2 = L32_2.ScallableButton
  L33_2 = L32_2
  L32_2 = L32_2.new
  L34_2 = {}
  L34_2.name = "logout"
  L32_2 = L32_2(L33_2, L34_2)
  L34_2 = L32_2
  L33_2 = L32_2.setImage
  L35_2 = gamelua
  L35_2 = L35_2.getButtonImageName
  L36_2 = "logoutID"
  L37_2 = gamelua
  L37_2 = L37_2.SettingsWrapper
  L38_2 = L37_2
  L37_2 = L37_2.isDarkSide
  L37_2, L38_2 = L37_2(L38_2)
  L35_2, L36_2, L37_2, L38_2 = L35_2(L36_2, L37_2, L38_2)
  L33_2(L34_2, L35_2, L36_2, L37_2, L38_2)
  L32_2.returnValue = "LOGOUT"
  L32_2.activateOnRelease = true
  L32_2.visible = true
  L32_2.clickSound = "ButtonProceed"
  L34_2 = L3_2
  L33_2 = L3_2.addChild
  L35_2 = L32_2
  L33_2(L34_2, L35_2)
  L33_2 = gamelua
  L33_2 = L33_2.ui
  L33_2 = L33_2.Text
  L34_2 = L33_2
  L33_2 = L33_2.new
  L35_2 = {}
  L35_2.name = "logoutText"
  L36_2 = gamelua
  L36_2 = L36_2.getText
  L37_2 = "TEXT_ID_PROFILE_SIGN_OUT"
  L36_2 = L36_2(L37_2)
  L35_2.text = L36_2
  L36_2 = gamelua
  L36_2 = L36_2.getFontBasic
  L35_2.font = L36_2
  L35_2.hanchor = "HCENTER"
  L33_2 = L33_2(L34_2, L35_2)
  L35_2 = L32_2
  L34_2 = L32_2.addChild
  L36_2 = L33_2
  L34_2(L35_2, L36_2)
end

L0_1.init = L1_1
L0_1 = RovioIDProfilePage

function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
  L1_2 = RovioIDProfilePage
  L1_2.isShown = true
end

L0_1.onEntry = L1_1
L0_1 = RovioIDProfilePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.getFontScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "bgBox"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "bgImage"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "title"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "signedIn"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "accountName"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "accountDetails"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "accountDetails_invisible"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "profileIcon"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "lightSideScore"
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "darkSideScore"
  L12_2 = L12_2(L13_2, L14_2)
  L14_2 = A0_2
  L13_2 = A0_2.getChild
  L15_2 = "lightSaber"
  L13_2 = L13_2(L14_2, L15_2)
  L15_2 = A0_2
  L14_2 = A0_2.getChild
  L16_2 = "lightSideCharacterCountImage"
  L14_2 = L14_2(L15_2, L16_2)
  L16_2 = A0_2
  L15_2 = A0_2.getChild
  L17_2 = "lightSideCharacterCountText"
  L15_2 = L15_2(L16_2, L17_2)
  L17_2 = A0_2
  L16_2 = A0_2.getChild
  L18_2 = "darkSideCharacterCountImage"
  L16_2 = L16_2(L17_2, L18_2)
  L18_2 = A0_2
  L17_2 = A0_2.getChild
  L19_2 = "darkSideCharacterCountText"
  L17_2 = L17_2(L18_2, L19_2)
  L19_2 = A0_2
  L18_2 = A0_2.getChild
  L20_2 = "starIcon"
  L18_2 = L18_2(L19_2, L20_2)
  L20_2 = A0_2
  L19_2 = A0_2.getChild
  L21_2 = "starProgressBar"
  L19_2 = L19_2(L20_2, L21_2)
  L21_2 = A0_2
  L20_2 = A0_2.getChild
  L22_2 = "starProgressText"
  L20_2 = L20_2(L21_2, L22_2)
  L22_2 = A0_2
  L21_2 = A0_2.getChild
  L23_2 = "achievementIcon"
  L21_2 = L21_2(L22_2, L23_2)
  L23_2 = A0_2
  L22_2 = A0_2.getChild
  L24_2 = "achievementBar"
  L22_2 = L22_2(L23_2, L24_2)
  L24_2 = A0_2
  L23_2 = A0_2.getChild
  L25_2 = "achievementProgressText"
  L23_2 = L23_2(L24_2, L25_2)
  L25_2 = A0_2
  L24_2 = A0_2.getChild
  L26_2 = "close"
  L24_2 = L24_2(L25_2, L26_2)
  L26_2 = A0_2
  L25_2 = A0_2.getChild
  L27_2 = "logout"
  L25_2 = L25_2(L26_2, L27_2)
  L27_2 = A0_2
  L26_2 = A0_2.getChild
  L28_2 = "logoutText"
  L26_2 = L26_2(L27_2, L28_2)
  L28_2 = L4_2
  L27_2 = L4_2.setScale
  L29_2 = L1_2
  L27_2(L28_2, L29_2)
  L27_2 = L4_2.w
  L27_2 = L27_2 * L1_2
  L4_2.width = L27_2
  L27_2 = L4_2.h
  L27_2 = L27_2 * L1_2
  L4_2.height = L27_2
  L27_2 = gamelua
  L27_2 = L27_2.screenWidth
  L27_2 = L27_2 * 0.5
  L3_2.x = L27_2
  L27_2 = gamelua
  L27_2 = L27_2.screenHeight
  L27_2 = L27_2 * 0.5
  L3_2.y = L27_2
  L27_2 = L4_2.h
  L27_2 = L27_2 * L1_2
  L27_2 = L27_2 * 1.3
  L29_2 = L3_2
  L28_2 = L3_2.getTopBlockH
  L28_2 = L28_2(L29_2)
  L27_2 = L27_2 - L28_2
  L29_2 = L3_2
  L28_2 = L3_2.getBottomBlockH
  L28_2 = L28_2(L29_2)
  L27_2 = L27_2 - L28_2
  L3_2.height = L27_2
  L27_2 = L4_2.w
  L27_2 = L27_2 * L1_2
  L27_2 = L27_2 * 1.16
  L29_2 = L3_2
  L28_2 = L3_2.getRightBlockW
  L28_2 = L28_2(L29_2)
  L27_2 = L27_2 - L28_2
  L29_2 = L3_2
  L28_2 = L3_2.getLeftBlockW
  L28_2 = L28_2(L29_2)
  L27_2 = L27_2 - L28_2
  L3_2.width = L27_2
  L27_2 = L3_2.height
  L27_2 = L27_2 * 0.08
  L4_2.y = L27_2
  L28_2 = L5_2
  L27_2 = L5_2.setScale
  L29_2 = 3
  L27_2(L28_2, L29_2)
  L27_2 = L4_2.width
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.5
  L5_2.x = L27_2
  L27_2 = L4_2.height
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.6
  L5_2.y = L27_2
  L28_2 = L6_2
  L27_2 = L6_2.setScale
  L29_2 = 1.75
  L27_2(L28_2, L29_2)
  L27_2 = L4_2.width
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.25
  L6_2.x = L27_2
  L27_2 = L4_2.height
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.4
  L6_2.y = L27_2
  L27_2 = _G
  L27_2 = L27_2.res
  L27_2 = L27_2.getStringWidth
  L28_2 = L7_2.completeText
  L27_2 = L27_2(L28_2)
  L28_2 = gamelua
  L28_2 = L28_2.getFontScale
  L28_2 = L28_2()
  L27_2 = L27_2 * L28_2
  L28_2 = L4_2.width
  L28_2 = L28_2 * 0.72
  if L27_2 > L28_2 then
    L27_2 = gamelua
    L27_2 = L27_2.shortenEmail
    L28_2 = L7_2.completeText
    L29_2 = L4_2.width
    L29_2 = L29_2 * 0.72
    L27_2 = L27_2(L28_2, L29_2)
    L7_2.text = L27_2
  end
  L28_2 = L7_2
  L27_2 = L7_2.setScale
  L29_2 = 2
  L27_2(L28_2, L29_2)
  L27_2 = L4_2.width
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.25
  L7_2.x = L27_2
  L27_2 = L4_2.height
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.33
  L7_2.y = L27_2
  L28_2 = L8_2
  L27_2 = L8_2.setScale
  L29_2 = 1.6
  L27_2(L28_2, L29_2)
  L27_2 = L4_2.width
  L27_2 = L27_2 * 0
  L8_2.x = L27_2
  L27_2 = L4_2.height
  L27_2 = L27_2 * 0.4
  L8_2.y = L27_2
  L28_2 = L8_2
  L27_2 = L8_2.getWidth
  L27_2 = L27_2(L28_2)
  L27_2 = L27_2 * L2_2
  L9_2.width = L27_2
  L28_2 = L8_2
  L27_2 = L8_2.getHeight
  L27_2 = L27_2(L28_2)
  L27_2 = L27_2 * L2_2
  L9_2.height = L27_2
  L9_2.x = 0
  L9_2.y = 0
  L27_2 = L4_2.width
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.37
  L10_2.x = L27_2
  L27_2 = L4_2.height
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.33
  L10_2.y = L27_2
  L28_2 = L11_2
  L27_2 = L11_2.setScale
  L29_2 = 1.5
  L27_2(L28_2, L29_2)
  L27_2 = L4_2.width
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.1
  L11_2.x = L27_2
  L27_2 = L4_2.height
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.19
  L11_2.y = L27_2
  L28_2 = L12_2
  L27_2 = L12_2.setScale
  L29_2 = 1.5
  L27_2(L28_2, L29_2)
  L27_2 = L4_2.width
  L27_2 = L27_2 * 0.1
  L12_2.x = L27_2
  L27_2 = L4_2.height
  L27_2 = -L27_2
  L27_2 = L27_2 * 0.19
  L12_2.y = L27_2
  L27_2 = L4_2.width
  L27_2 = L27_2 * 0.6
  L28_2 = gamelua
  L28_2 = L28_2.calculateTotalSideScore
  L29_2 = false
  L28_2 = L28_2(L29_2)
  L29_2 = gamelua
  L29_2 = L29_2.calculateTotalSideScore
  L30_2 = true
  L29_2 = L29_2(L30_2)
  L30_2 = L28_2 + L29_2
  L31_2 = nil
  if L30_2 <= 0 then
    L31_2 = 0.5
  elseif L29_2 <= 0 then
    L31_2 = 1
  else
    L31_2 = L28_2 / L30_2
  end
  L13_2.ratio = L31_2
  L32_2 = L4_2.height
  L32_2 = -L32_2
  L32_2 = L32_2 * 0.1
  L13_2.y = L32_2
  L32_2 = L4_2.width
  L32_2 = -L32_2
  L32_2 = L32_2 * 0.1
  L14_2.x = L32_2
  L32_2 = L4_2.height
  L32_2 = L32_2 * 0.05
  L14_2.y = L32_2
  L33_2 = L15_2
  L32_2 = L15_2.setScale
  L34_2 = 1.5
  L32_2(L33_2, L34_2)
  L32_2 = L14_2.w
  L32_2 = -L32_2
  L32_2 = L32_2 * 0.45
  L32_2 = L32_2 * L1_2
  L15_2.x = L32_2
  L32_2 = L4_2.width
  L32_2 = L32_2 * 0.1
  L16_2.x = L32_2
  L32_2 = L4_2.height
  L32_2 = L32_2 * 0.05
  L16_2.y = L32_2
  L33_2 = L17_2
  L32_2 = L17_2.setScale
  L34_2 = 1.5
  L32_2(L33_2, L34_2)
  L32_2 = L16_2.w
  L32_2 = L32_2 * 0.45
  L32_2 = L32_2 * L1_2
  L17_2.x = L32_2
  L32_2 = L4_2.width
  L32_2 = -L32_2
  L32_2 = L32_2 * 0.2
  L18_2.x = L32_2
  L32_2 = L4_2.height
  L32_2 = L32_2 * 0.2
  L18_2.y = L32_2
  L32_2 = L18_2.y
  L19_2.y = L32_2
  L33_2 = L20_2
  L32_2 = L20_2.setScale
  L34_2 = 1.5
  L32_2(L33_2, L34_2)
  L32_2 = L4_2.width
  L32_2 = -L32_2
  L32_2 = L32_2 * 0.2
  L21_2.x = L32_2
  L32_2 = L4_2.height
  L32_2 = L32_2 * 0.3
  L21_2.y = L32_2
  L32_2 = L21_2.y
  L22_2.y = L32_2
  L33_2 = L23_2
  L32_2 = L23_2.setScale
  L34_2 = 1.5
  L32_2(L33_2, L34_2)
  L33_2 = L24_2
  L32_2 = L24_2.setScale
  L34_2 = L1_2
  L32_2(L33_2, L34_2)
  L32_2 = L4_2.width
  L32_2 = L32_2 * 0.41
  L24_2.x = L32_2
  L32_2 = L4_2.height
  L32_2 = -L32_2
  L32_2 = L32_2 * 0.61
  L24_2.y = L32_2
  L33_2 = L25_2
  L32_2 = L25_2.setScale
  L34_2 = L1_2
  L32_2(L33_2, L34_2)
  L32_2 = L4_2.width
  L32_2 = L32_2 * 0.32
  L25_2.x = L32_2
  L32_2 = L4_2.height
  L32_2 = L32_2 * 0.35
  L25_2.y = L32_2
  L32_2 = 1
  L33_2 = 230
  L35_2 = L26_2
  L34_2 = L26_2.getWidth
  L34_2 = L34_2(L35_2)
  if L33_2 < L34_2 then
    L35_2 = L26_2
    L34_2 = L26_2.getWidth
    L34_2 = L34_2(L35_2)
    L32_2 = L33_2 / L34_2
  end
  L35_2 = L26_2
  L34_2 = L26_2.setScale
  L36_2 = L32_2
  L34_2(L35_2, L36_2)
end

L0_1.layout = L1_1
L0_1 = RovioIDProfilePage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "LOGOUT" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_POP_FRAME
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = gamelua
    L7_2 = L7_2.ui
    L7_2 = L7_2.RovioIDSignOutPage
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.getText
    L11_2 = "TEXT_ID_SIGN_OUT_TITLE"
    L10_2 = L10_2(L11_2)
    L9_2.title = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.getText
    L11_2 = "TEXT_ID_SIGN_OUT_CONTENT"
    L10_2 = L10_2(L11_2)
    L9_2.content = L10_2
    
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = gamelua
      L0_3 = L0_3.RovioAccount
      L0_3 = L0_3.logout
      L0_3()
      L0_3 = gamelua
      L0_3 = L0_3.eventManager
      L1_3 = L0_3
      L0_3 = L0_3.notify
      L2_3 = {}
      L3_3 = gamelua
      L3_3 = L3_3.events
      L3_3 = L3_3.EID_POP_FRAME
      L2_3.id = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L9_2.returnValue = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = gamelua
    L11_2 = L11_2.events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.layout
    L8_2(L9_2)
  elseif L4_2 == "ACCOUNT_DETAILS" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = gamelua
    L10_2 = L10_2.events
    L10_2 = L10_2.EID_OPEN_URL
    L9_2.id = L10_2
    L10_2 = {}
    L11_2 = gamelua
    L11_2 = L11_2.ID_ACCOUNT_DETAILS_URL
    L10_2.url = L11_2
    L10_2.urlVariable = "ID_ACCOUNT_DETAILS_URL"
    L9_2.meta = L10_2
    L7_2(L8_2, L9_2)
  else
    L7_2 = A0_2.returnValue
    if L4_2 == L7_2 then
      L7_2 = _G
      L7_2 = L7_2.type
      L8_2 = A0_2.returnValue
      L7_2 = L7_2(L8_2)
      if L7_2 == "function" then
        L7_2 = A0_2.returnValue
        L7_2()
      else
        L7_2 = gamelua
        L7_2 = L7_2.eventManager
        L8_2 = L7_2
        L7_2 = L7_2.notify
        L9_2 = {}
        L10_2 = A0_2.returnValue
        L9_2.id = L10_2
        L10_2 = A0_2.meta
        L9_2.meta = L10_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  if A1_2 == "HOVER" then
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L9_2 = A0_2
    L8_2 = A0_2.getChild
    L10_2 = "bg"
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L8_2.children
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      if L11_2 == L6_2 then
        L12_2 = L4_2
        L13_2 = L5_2
        L14_2 = L6_2
        return L12_2, L13_2, L14_2
      end
    end
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = RovioIDProfilePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "ESCAPE" or A2_2 == "KEY_BACK" then
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_POP_FRAME
      L8_2.id = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonBack"
      L6_2(L7_2)
    elseif A2_2 == "S" then
      L6_2 = L3_2
      L7_2 = L4_2
      L8_2 = L5_2
      return L6_2, L7_2, L8_2
    end
  elseif L3_2 then
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = L5_2
    return L6_2, L7_2, L8_2
  end
  L6_2 = "BLOCK"
  L7_2 = nil
  L8_2 = A0_2
  return L6_2, L7_2, L8_2
end

L0_1.onKeyEvent = L1_1
L0_1 = RovioIDProfilePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
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
L0_1 = RovioIDProfilePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = RovioIDProfilePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RovioIDProfilePage
  L1_2.isShown = false
  L1_2 = gamelua
  L1_2 = L1_2.releaseAssets
  L2_2 = {}
  L3_2 = "ID"
  L2_2[1] = L3_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2.g_blockIDPopup = false
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
LightSaberMeter = L0_1
L0_1 = LightSaberMeter

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.visible
  if L1_2 == nil then
    A0_2.visible = true
  end
  A0_2.angle = 0
  A0_2.alpha = nil
  A0_2.floorCoordinates = true
  A0_2.scaleX = 1
  A0_2.scaleY = 1
  A0_2.rotatePivotX = 0
  A0_2.rotatePivotY = 0
end

L0_1.init = L1_1
L0_1 = LightSaberMeter

function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = LightSaberMeter

function L1_1(A0_2)
  local L1_2
end

L0_1.onExit = L1_1
L0_1 = LightSaberMeter

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2
  L6_2 = A1_2 or nil
  if not A1_2 then
    L6_2 = 0
  end
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = 0
  end
  L8_2 = A3_2 or L8_2
  if not A3_2 then
    L8_2 = 1
  end
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = 1
  end
  L10_2 = A5_2 or L10_2
  if not A5_2 then
    L10_2 = 0
  end
  L11_2 = A0_2.scaleX
  L11_2 = L8_2 * L11_2
  L12_2 = A0_2.scaleY
  L12_2 = L9_2 * L12_2
  L13_2 = _G
  L13_2 = L13_2.res
  L13_2 = L13_2.getSpriteBounds
  L14_2 = "ID_LIGHTSABER_METER_LIGHT"
  L13_2, L14_2 = L13_2(L14_2)
  L15_2 = _G
  L15_2 = L15_2.res
  L15_2 = L15_2.getSpriteBounds
  L16_2 = "ID_PROFILE_LIGHTSABER_HANDLE"
  L15_2, L16_2 = L15_2(L16_2)
  L17_2 = _G
  L17_2 = L17_2.res
  L17_2 = L17_2.getSpriteBounds
  L18_2 = "ID_LIGHTSABER_METER_DARK"
  L17_2, L18_2 = L17_2(L18_2)
  L19_2 = A0_2.y
  L19_2 = L7_2 + L19_2
  L20_2 = A0_2.angle
  L20_2 = L10_2 + L20_2
  L21_2 = A0_2.visible
  if L21_2 == true then
    L21_2 = 0
    L22_2 = _G
    L22_2 = L22_2.math
    L22_2 = L22_2.floor
    L23_2 = A0_2.x
    L23_2 = L6_2 + L23_2
    L24_2 = L15_2 * 0.5
    L24_2 = L24_2 * L11_2
    L23_2 = L23_2 - L24_2
    L22_2 = L22_2(L23_2)
    L22_2 = L22_2 + 1
    L23_2 = _G
    L23_2 = L23_2.math
    L23_2 = L23_2.floor
    L24_2 = A0_2.x
    L24_2 = L6_2 + L24_2
    L25_2 = L15_2 * 0.5
    L25_2 = L25_2 * L11_2
    L24_2 = L24_2 + L25_2
    L23_2 = L23_2(L24_2)
    L23_2 = L23_2 - 1
    L24_2 = gamelua
    L24_2 = L24_2.screenWidth
    L25_2 = 1
    L26_2 = 1
    L27_2 = A0_2.ratio
    if L27_2 < 0.5 then
      L27_2 = A0_2.ratio
      L25_2 = 0.5 + L27_2
    else
      L27_2 = A0_2.ratio
      L27_2 = 1 - L27_2
      L26_2 = 0.5 + L27_2
    end
    L27_2 = _G
    L27_2 = L27_2.math
    L27_2 = L27_2.floor
    L28_2 = A0_2.x
    L28_2 = L6_2 + L28_2
    L29_2 = -L13_2
    L29_2 = L29_2 * L11_2
    L30_2 = L15_2 * 0.5
    L30_2 = L30_2 * L11_2
    L29_2 = L29_2 - L30_2
    L29_2 = L29_2 * L25_2
    L28_2 = L28_2 + L29_2
    L27_2 = L27_2(L28_2)
    L27_2 = L27_2 + 1
    L28_2 = A0_2.alpha
    if L28_2 == nil then
      L28_2 = gamelua
      L28_2 = L28_2.setRenderState
      L29_2 = L27_2 / L11_2
      L30_2 = L19_2 / L12_2
      L31_2 = L11_2
      L32_2 = L12_2
      L33_2 = L20_2
      L34_2 = 0
      L35_2 = 0
      L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    else
      L28_2 = gamelua
      L28_2 = L28_2.setRenderState
      L29_2 = L27_2 / L11_2
      L30_2 = L19_2 / L12_2
      L31_2 = L11_2
      L32_2 = L12_2
      L33_2 = L20_2
      L34_2 = 0
      L35_2 = 0
      L36_2 = A0_2.alpha
      L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
    end
    L28_2 = _G
    L28_2 = L28_2.res
    L28_2 = L28_2.getClipRect
    L28_2, L29_2, L30_2, L31_2 = L28_2()
    L32_2 = _G
    L32_2 = L32_2.res
    L32_2 = L32_2.setClipRect
    L33_2 = L21_2
    L34_2 = 0
    L35_2 = L22_2
    L36_2 = gamelua
    L36_2 = L36_2.screenHeight
    L32_2(L33_2, L34_2, L35_2, L36_2)
    L32_2 = _G
    L32_2 = L32_2.res
    L32_2 = L32_2.drawSprite
    L33_2 = "ID_LIGHTSABER_METER_LIGHT"
    L34_2 = 0
    L35_2 = 0
    L32_2(L33_2, L34_2, L35_2)
    L32_2 = _G
    L32_2 = L32_2.math
    L32_2 = L32_2.floor
    L33_2 = A0_2.x
    L33_2 = L6_2 + L33_2
    L32_2 = L32_2(L33_2)
    L27_2 = L32_2
    L32_2 = A0_2.alpha
    if L32_2 == nil then
      L32_2 = gamelua
      L32_2 = L32_2.setRenderState
      L33_2 = L27_2 / L11_2
      L34_2 = L19_2 / L12_2
      L35_2 = L11_2
      L36_2 = L12_2
      L37_2 = L20_2
      L38_2 = 0
      L39_2 = 0
      L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    else
      L32_2 = gamelua
      L32_2 = L32_2.setRenderState
      L33_2 = L27_2 / L11_2
      L34_2 = L19_2 / L12_2
      L35_2 = L11_2
      L36_2 = L12_2
      L37_2 = L20_2
      L38_2 = 0
      L39_2 = 0
      L40_2 = A0_2.alpha
      L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
    end
    L32_2 = _G
    L32_2 = L32_2.res
    L32_2 = L32_2.setClipRect
    L33_2 = L22_2
    L34_2 = 0
    L35_2 = L23_2 - L22_2
    L36_2 = gamelua
    L36_2 = L36_2.screenHeight
    L32_2(L33_2, L34_2, L35_2, L36_2)
    L32_2 = _G
    L32_2 = L32_2.res
    L32_2 = L32_2.drawSprite
    L33_2 = "ID_PROFILE_LIGHTSABER_HANDLE"
    L34_2 = 0
    L35_2 = 0
    L32_2(L33_2, L34_2, L35_2)
    L32_2 = _G
    L32_2 = L32_2.math
    L32_2 = L32_2.floor
    L33_2 = A0_2.x
    L33_2 = L6_2 + L33_2
    L34_2 = L17_2 * L11_2
    L35_2 = L15_2 * 0.5
    L35_2 = L35_2 * L11_2
    L34_2 = L34_2 + L35_2
    L34_2 = L34_2 * L26_2
    L33_2 = L33_2 + L34_2
    L32_2 = L32_2(L33_2)
    L27_2 = L32_2 - 2
    L32_2 = A0_2.alpha
    if L32_2 == nil then
      L32_2 = gamelua
      L32_2 = L32_2.setRenderState
      L33_2 = L27_2 / L11_2
      L34_2 = L19_2 / L12_2
      L35_2 = L11_2
      L36_2 = L12_2
      L37_2 = L20_2
      L38_2 = 0
      L39_2 = 0
      L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    else
      L32_2 = gamelua
      L32_2 = L32_2.setRenderState
      L33_2 = L27_2 / L11_2
      L34_2 = L19_2 / L12_2
      L35_2 = L11_2
      L36_2 = L12_2
      L37_2 = L20_2
      L38_2 = 0
      L39_2 = 0
      L40_2 = A0_2.alpha
      L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
    end
    L32_2 = _G
    L32_2 = L32_2.res
    L32_2 = L32_2.setClipRect
    L33_2 = L23_2
    L34_2 = 0
    L35_2 = L24_2 - L23_2
    L36_2 = gamelua
    L36_2 = L36_2.screenHeight
    L32_2(L33_2, L34_2, L35_2, L36_2)
    L32_2 = _G
    L32_2 = L32_2.res
    L32_2 = L32_2.drawSprite
    L33_2 = "ID_LIGHTSABER_METER_DARK"
    L34_2 = 0
    L35_2 = 0
    L32_2(L33_2, L34_2, L35_2)
    L32_2 = _G
    L32_2 = L32_2.res
    L32_2 = L32_2.setClipRect
    L33_2 = L28_2
    L34_2 = L29_2
    L35_2 = L30_2
    L36_2 = L31_2
    L32_2(L33_2, L34_2, L35_2, L36_2)
  end
  L21_2 = A0_2.alpha
  if L21_2 ~= nil then
    L21_2 = gamelua
    L21_2 = L21_2.setRenderState
    L22_2 = 0
    L23_2 = 0
    L24_2 = 1
    L25_2 = 1
    L26_2 = 0
    L27_2 = 0
    L28_2 = 0
    L29_2 = 1
    L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  else
    L21_2 = gamelua
    L21_2 = L21_2.setRenderState
    L22_2 = 0
    L23_2 = 0
    L24_2 = 1
    L25_2 = 1
    L26_2 = 0
    L27_2 = 0
    L28_2 = 0
    L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  end
end

L0_1.draw = L1_1
