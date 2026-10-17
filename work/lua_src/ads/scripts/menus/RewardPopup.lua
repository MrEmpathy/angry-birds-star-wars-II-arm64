local L0_1, L1_1
L0_1 = 0.2
SLIDE_ANIMATION_DURATION = L0_1
L0_1 = 0.3
OPEN_ANIMATION_DURATION = L0_1
L0_1 = 0.5
FADE_IN_DURATION = L0_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
RewardPopup = L0_1
L0_1 = RewardPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.suffix = "POPUP_BG"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2.name
  if not L2_2 then
    L2_2 = "RewardPopup"
  end
  A0_2.name = L2_2
  L1_2.name = "bg"
  L1_2.hanchor = "LEFT"
  L1_2.vanchor = "TOP"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.BGBox
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "topBanner"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L3_2.left = "POPUP_BOX_TOP_LEFT"
  L3_2.center = "POPUP_BOX_TOP_MIDDLE"
  L3_2.right = "POPUP_BOX_TOP_RIGHT"
  L2_2.components = L3_2
  L2_2.vanchor = "BOTTOM"
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.BGBox
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "bottomBanner"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L4_2.left = "POPUP_BOX_BOTTOM_LEFT"
  L4_2.center = "POPUP_BOX_BOTTOM_MIDDLE"
  L4_2.right = "POPUP_BOX_BOTTOM_RIGHT"
  L3_2.components = L4_2
  L3_2.vanchor = "TOP"
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "centerpiece"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "POPUP_BOX_TOP_CENTERPIECE"
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  A0_2.confirmOnLeft = false
  L5_2 = nil
  L6_2 = A0_2.rewardStars
  if L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.ui
    L6_2 = L6_2.Text
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.name = "title"
    L9_2 = gamelua
    L9_2 = L9_2.getText
    L10_2 = "TEXT_STAR_REWARD_TITLE"
    L11_2 = {}
    L12_2 = "$CURRENT_STARS"
    L13_2 = A0_2.rewardStars
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.text = L9_2
    L9_2 = gamelua
    L9_2 = L9_2.getFontBasic
    L8_2.font = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  else
    L6_2 = A0_2.falcons
    if L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.ui
      L6_2 = L6_2.Text
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = {}
      L8_2.name = "title"
      L9_2 = gamelua
      L9_2 = L9_2._G
      L9_2 = L9_2.res
      L9_2 = L9_2.getString
      L10_2 = "TEXTS_BASIC"
      L11_2 = "TEXT_FALCON_UNLOCKED"
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.text = L9_2
      L9_2 = gamelua
      L9_2 = L9_2.getFontBasic
      L8_2.font = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
    else
      L6_2 = gamelua
      L6_2 = L6_2.ui
      L6_2 = L6_2.Text
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = {}
      L8_2.name = "title"
      L9_2 = gamelua
      L9_2 = L9_2._G
      L9_2 = L9_2.res
      L9_2 = L9_2.getString
      L10_2 = "TEXTS_BASIC"
      L11_2 = "TEXT_EPISODE_PERFECT"
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.text = L9_2
      L9_2 = gamelua
      L9_2 = L9_2.getFontBasic
      L8_2.font = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
    end
  end
  L5_2.vanchor = "TOP"
  L5_2.hanchor = "HCENTER"
  L5_2.visible = false
  L7_2 = L1_2
  L6_2 = L1_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.name = "contentImage"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2.rewardStars
  if not L7_2 then
    L7_2 = A0_2.falcons
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.setImage
      L9_2 = "FALCON_SCORE_FILLED"
      L7_2(L8_2, L9_2)
  end
  else
    L7_2 = A0_2.rewardStars
    if not L7_2 then
      L7_2 = A0_2.falcons
      if not L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.setImage
        L9_2 = "REWARD_POPUP_JEDI_EPISODE"
        L7_2(L8_2, L9_2)
    end
    else
      L7_2 = A0_2.falcons
      if L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.setImage
        L9_2 = "FALCON_SCORE_FILLED"
        L7_2(L8_2, L9_2)
      else
        L8_2 = L6_2
        L7_2 = L6_2.setImage
        L9_2 = "REWARD_POPUP_BONUS_LEVEL"
        L7_2(L8_2, L9_2)
      end
    end
  end
  L6_2.vanchor = "TOP"
  L6_2.hanchor = "HCENTER"
  L6_2.visible = false
  L8_2 = L1_2
  L7_2 = L1_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.falcons
  if L7_2 then
    L7_2 = gamelua
    L7_2 = L7_2.ui
    L7_2 = L7_2.Text
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "falconMultiplier"
    L10_2 = A0_2.falcons
    L11_2 = "X"
    L10_2 = L10_2 .. L11_2
    L9_2.text = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.getFontHeadline
    L9_2.font = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L7_2.vanchor = "TOP"
    L7_2.hanchor = "HCENTER"
    L7_2.visible = false
    L9_2 = L1_2
    L8_2 = L1_2.addChild
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L7_2 = nil
  L8_2 = nil
  L9_2 = A0_2.falcons
  if not L9_2 then
    L9_2 = A0_2.rewardStars
    if not L9_2 then
    else
      L9_2 = gamelua
      L9_2 = L9_2.ui
      L9_2 = L9_2.Text
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.name = "rewardText"
      L12_2 = gamelua
      L12_2 = L12_2._G
      L12_2 = L12_2.res
      L12_2 = L12_2.getString
      L13_2 = "TEXTS_BASIC"
      L14_2 = "TEXT_STAR_REWARD_LEVEL"
      L12_2 = L12_2(L13_2, L14_2)
      L11_2.text = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.getFontBasic
      L11_2.font = L12_2
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L9_2
      L7_2.vanchor = "TOP"
      L7_2.hanchor = "HCENTER"
      L7_2.visible = false
      L10_2 = L1_2
      L9_2 = L1_2.addChild
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L9_2 = gamelua
      L9_2 = L9_2.ui
      L9_2 = L9_2.Text
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.name = "rewardText2"
      L12_2 = gamelua
      L12_2 = L12_2._G
      L12_2 = L12_2.res
      L12_2 = L12_2.getString
      L13_2 = "TEXTS_BASIC"
      L14_2 = "TEXT_STAR_REWARD_UNLOCKED"
      L12_2 = L12_2(L13_2, L14_2)
      L11_2.text = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.getFontBasic
      L11_2.font = L12_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2 = L9_2
      L8_2.vanchor = "TOP"
      L8_2.hanchor = "HCENTER"
      L8_2.visible = false
      L10_2 = L1_2
      L9_2 = L1_2.addChild
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L9_2 = nil
  L10_2 = A0_2.rewardStars
  if L10_2 then
    L10_2 = A0_2.nextReward
    if L10_2 then
      L10_2 = gamelua
      L10_2 = L10_2.ui
      L10_2 = L10_2.Text
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = {}
      L12_2.name = "footer"
      L13_2 = gamelua
      L13_2 = L13_2.getText
      L14_2 = "TEXT_STAR_REWARD_NEXT"
      L15_2 = {}
      L16_2 = "$NEEDED_STARS"
      L17_2 = A0_2.nextReward
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L13_2 = L13_2(L14_2, L15_2)
      L12_2.text = L13_2
      L13_2 = gamelua
      L13_2 = L13_2.getFontBasic
      L12_2.font = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    else
      L10_2 = gamelua
      L10_2 = L10_2.ui
      L10_2 = L10_2.Text
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = {}
      L12_2.name = "footer"
      L12_2.text = ""
      L13_2 = gamelua
      L13_2 = L13_2.getFontBasic
      L12_2.font = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    end
  else
    L10_2 = A0_2.falcons
    if not L10_2 then
      L10_2 = gamelua
      L10_2 = L10_2.ui
      L10_2 = L10_2.Text
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = {}
      L12_2.name = "footer"
      L13_2 = gamelua
      L13_2 = L13_2._G
      L13_2 = L13_2.res
      L13_2 = L13_2.getString
      L14_2 = "TEXTS_BASIC"
      L15_2 = "TEXT_STAR_REWARD_UNLOCKED"
      L13_2 = L13_2(L14_2, L15_2)
      L12_2.text = L13_2
      L13_2 = gamelua
      L13_2 = L13_2.getFontBasic
      L12_2.font = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    else
      L10_2 = gamelua
      L10_2 = L10_2.ui
      L10_2 = L10_2.Text
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = {}
      L12_2.name = "footer"
      L12_2.text = ""
      L13_2 = gamelua
      L13_2 = L13_2.getFontBasic
      L12_2.font = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    end
  end
  L9_2.vanchor = "TOP"
  L9_2.hanchor = "HCENTER"
  L9_2.visible = false
  L11_2 = L1_2
  L10_2 = L1_2.addChild
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = gamelua
  L10_2 = L10_2.ui
  L10_2 = L10_2.ScallableButton
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L12_2.name = "confirm"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = L10_2
  L11_2 = L10_2.setImage
  L13_2 = A0_2.buttonImage
  if not L13_2 then
    L13_2 = "BTN_CHECK"
  end
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.returnValue
  L10_2.returnValue = L11_2
  L10_2.activateOnRelease = true
  L10_2.visible = false
  L12_2 = L1_2
  L11_2 = L1_2.addChild
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
end

L0_1.init = L1_1
L0_1 = RewardPopup

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.appearCounter = 0
  A0_2.animationState = 0
  A0_2.animationTimer = 0
  L1_2 = gamelua
  L1_2 = L1_2.disableGameUpdate
  L1_2()
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "pc_game_exit_popup"
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = RewardPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "title"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rewardText"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "rewardText2"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "footer"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "confirm"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "content"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "contentImage"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "falconMultiplier"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "bg"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "centerpiece"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "topBanner"
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "bottomBanner"
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = 0
  L14_2 = 0
  L15_2 = gamelua
  L15_2 = L15_2.screenWidth
  L15_2 = L15_2 * 0.8
  L1_2.textBoxSize = L15_2
  L16_2 = L1_2
  L15_2 = L1_2.clip
  L15_2(L16_2)
  L16_2 = L1_2
  L15_2 = L1_2.getHeight
  L15_2 = L15_2(L16_2)
  L13_2 = L15_2
  L16_2 = L1_2
  L15_2 = L1_2.getWidth
  L15_2 = L15_2(L16_2)
  L14_2 = L15_2
  if L8_2 then
    L15_2 = gamelua
    L15_2 = L15_2.screenWidth
    L15_2 = L15_2 * 0.8
    L8_2.textBoxSize = L15_2
    L16_2 = L8_2
    L15_2 = L8_2.clip
    L15_2(L16_2)
  end
  L15_2 = 0
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0
  if L2_2 then
    L19_2 = gamelua
    L19_2 = L19_2.screenWidth
    L19_2 = L19_2 * 0.8
    L2_2.textBoxSize = L19_2
    L20_2 = L2_2
    L19_2 = L2_2.clip
    L19_2(L20_2)
    L20_2 = L2_2
    L19_2 = L2_2.getHeight
    L19_2 = L19_2(L20_2)
    L15_2 = L19_2
    L20_2 = L2_2
    L19_2 = L2_2.getWidth
    L19_2 = L19_2(L20_2)
    L16_2 = L19_2
    L19_2 = gamelua
    L19_2 = L19_2.screenWidth
    L19_2 = L19_2 * 0.8
    L3_2.textBoxSize = L19_2
    L20_2 = L3_2
    L19_2 = L3_2.clip
    L19_2(L20_2)
    L20_2 = L3_2
    L19_2 = L3_2.getHeight
    L19_2 = L19_2(L20_2)
    L17_2 = L19_2
    L20_2 = L3_2
    L19_2 = L3_2.getWidth
    L19_2 = L19_2(L20_2)
    L18_2 = L19_2
  end
  L19_2 = 0
  L20_2 = 0
  L21_2 = gamelua
  L21_2 = L21_2.screenWidth
  L21_2 = L21_2 * 0.8
  L4_2.textBoxSize = L21_2
  L22_2 = L4_2
  L21_2 = L4_2.clip
  L21_2(L22_2)
  L22_2 = L4_2
  L21_2 = L4_2.getHeight
  L21_2 = L21_2(L22_2)
  L19_2 = L21_2
  L22_2 = L4_2
  L21_2 = L4_2.getWidth
  L21_2 = L21_2(L22_2)
  L20_2 = L21_2
  L21_2 = _G
  L21_2 = L21_2.math
  L21_2 = L21_2.max
  L22_2 = L20_2
  L23_2 = L14_2
  L24_2 = L7_2.w
  L21_2 = L21_2(L22_2, L23_2, L24_2)
  L22_2 = L21_2 * 0.5
  L1_2.x = L22_2
  if L2_2 then
    L22_2 = L21_2 * 0.5
    L2_2.x = L22_2
    L22_2 = L21_2 * 0.5
    L3_2.x = L22_2
  end
  L22_2 = L21_2 * 0.5
  L4_2.x = L22_2
  L22_2 = 0
  L23_2 = L1_2.x
  L7_2.x = L23_2
  L23_2 = L1_2.y
  L24_2 = L13_2 * 2
  L23_2 = L23_2 + L24_2
  L24_2 = L7_2.h
  L24_2 = L24_2 * 0.5
  L23_2 = L23_2 + L24_2
  L7_2.y = L23_2
  L23_2 = L13_2 * 2
  L24_2 = L7_2.h
  L24_2 = L24_2 * 1.2
  L23_2 = L23_2 + L24_2
  L24_2 = L15_2 * 1.5
  L23_2 = L23_2 + L24_2
  L24_2 = L17_2 * 1.5
  L23_2 = L23_2 + L24_2
  L24_2 = L19_2 * 1.2
  L23_2 = L23_2 + L24_2
  L24_2 = L5_2.h
  L24_2 = L24_2 * 0.5
  L22_2 = L23_2 + L24_2
  if L8_2 then
    L23_2 = L1_2.x
    L24_2 = L7_2.w
    L24_2 = L24_2 * 0.5
    L23_2 = L23_2 - L24_2
    L25_2 = L8_2
    L24_2 = L8_2.getWidth
    L24_2 = L24_2(L25_2)
    L24_2 = L24_2 * 0.5
    L23_2 = L23_2 - L24_2
    L8_2.x = L23_2
    L23_2 = L7_2.y
    L25_2 = L8_2
    L24_2 = L8_2.getHeight
    L24_2 = L24_2(L25_2)
    L24_2 = L24_2 * 0.5
    L23_2 = L23_2 - L24_2
    L8_2.y = L23_2
    L23_2 = L7_2.x
    L25_2 = L8_2
    L24_2 = L8_2.getWidth
    L24_2 = L24_2(L25_2)
    L24_2 = L24_2 * 0.5
    L23_2 = L23_2 + L24_2
    L7_2.x = L23_2
  end
  if L2_2 then
    L23_2 = L7_2.y
    L24_2 = L7_2.h
    L24_2 = L24_2 * 0.6
    L23_2 = L23_2 + L24_2
    L2_2.y = L23_2
    L23_2 = L2_2.y
    L24_2 = L15_2 * 1.2
    L23_2 = L23_2 + L24_2
    L3_2.y = L23_2
    L23_2 = L3_2.y
    L24_2 = L17_2 * 2
    L23_2 = L23_2 + L24_2
    L4_2.y = L23_2
  else
    L23_2 = L7_2.y
    L24_2 = L7_2.h
    L24_2 = L24_2 * 0.8
    L23_2 = L23_2 + L24_2
    L4_2.y = L23_2
  end
  L24_2 = L9_2
  L23_2 = L9_2.setSize
  L25_2 = L21_2
  L26_2 = L22_2
  L23_2(L24_2, L25_2, L26_2)
  L23_2 = L21_2
  A0_2.bgEndHeight = L22_2
  A0_2.bgEndWidth = L23_2
  L23_2 = gamelua
  L23_2 = L23_2.screenWidth
  L24_2 = L9_2.width
  L23_2 = L23_2 - L24_2
  L23_2 = L23_2 * 0.5
  L9_2.x = L23_2
  L23_2 = gamelua
  L23_2 = L23_2.screenHeight
  L24_2 = L9_2.height
  L23_2 = L23_2 - L24_2
  L23_2 = L23_2 * 0.5
  L9_2.y = L23_2
  L23_2 = L9_2.height
  L5_2.y = L23_2
  L23_2 = L9_2.width
  L24_2 = L5_2.w
  L24_2 = L24_2 * 0.5
  L23_2 = L23_2 + L24_2
  L5_2.x = L23_2
  L23_2 = L9_2.width
  L23_2 = L23_2 / 2
  L11_2.x = L23_2
  L11_2.y = 0
  L23_2 = gamelua
  L23_2 = L23_2._G
  L23_2 = L23_2.res
  L23_2 = L23_2.getSpriteBounds
  L24_2 = L11_2.components
  L24_2 = L24_2.left
  L23_2, L24_2 = L23_2(L24_2)
  L26_2 = L11_2
  L25_2 = L11_2.setSize
  L27_2 = L9_2.width
  L28_2 = L24_2
  L25_2(L26_2, L27_2, L28_2)
  L10_2.x = 0
  L25_2 = L11_2.height
  L25_2 = -L25_2
  L10_2.y = L25_2
  L25_2 = L9_2.width
  L25_2 = L25_2 / 2
  L12_2.x = L25_2
  L25_2 = L9_2.height
  L12_2.y = L25_2
  L25_2 = gamelua
  L25_2 = L25_2._G
  L25_2 = L25_2.res
  L25_2 = L25_2.getSpriteBounds
  L26_2 = L12_2.components
  L26_2 = L26_2.left
  L25_2, L26_2 = L25_2(L26_2)
  L28_2 = L12_2
  L27_2 = L12_2.setSize
  L29_2 = L9_2.width
  L30_2 = L26_2
  L27_2(L28_2, L29_2, L30_2)
  L27_2 = A0_2.confirmOnLeft
  if L27_2 == true then
    L27_2 = L5_2.w
    L27_2 = -L27_2
    L27_2 = L27_2 * 0.5
    L5_2.x = L27_2
  end
  L27_2 = A0_2.animationState
  if L27_2 ~= 2 then
    A0_2.animationState = 0
    A0_2.animationTimer = 0
    L1_2.visible = false
    L1_2.alpha = 0
    L5_2.visible = false
    L5_2.alpha = 0
    if L2_2 then
      L2_2.visible = false
      L2_2.alpha = 0
    end
    if L3_2 then
      L3_2.visible = false
      L3_2.alpha = 0
    end
    L4_2.visible = false
    L4_2.alpha = 0
    if L7_2 then
      L7_2.visible = false
      L7_2.alpha = 0
    end
    if L8_2 then
      L8_2.visible = false
      L8_2.alpha = 0
    end
    L9_2.visible = true
    L27_2 = -L26_2
    L28_2 = 0
    L29_2 = A0_2.bgEndHeight
    if L29_2 then
      L29_2 = gamelua
      L29_2 = L29_2.screenHeight
      L29_2 = L29_2 - L27_2
      L29_2 = L29_2 * 0.5
      L30_2 = gamelua
      L30_2 = L30_2.screenHeight
      L31_2 = L9_2.height
      L30_2 = L30_2 - L31_2
      L30_2 = L30_2 * 0.5
      L28_2 = L29_2 - L30_2
    end
    L29_2 = A0_2.bgEndWidth
    if L29_2 then
      L30_2 = L9_2
      L29_2 = L9_2.setSize
      L31_2 = A0_2.bgEndWidth
      L32_2 = L27_2
      L29_2(L30_2, L31_2, L32_2)
    else
      L30_2 = L9_2
      L29_2 = L9_2.setSize
      L31_2 = 200
      L32_2 = L27_2
      L29_2(L30_2, L31_2, L32_2)
    end
    L29_2 = L9_2.height
    L12_2.y = L29_2
    L29_2 = gamelua
    L29_2 = L29_2.screenWidth
    L30_2 = L9_2.width
    L29_2 = L29_2 - L30_2
    L29_2 = L29_2 * 0.5
    L9_2.x = L29_2
    L29_2 = gamelua
    L29_2 = L29_2.screenHeight
    L30_2 = L9_2.height
    L29_2 = L29_2 - L30_2
    L29_2 = L29_2 * 0.5
    L9_2.y = L29_2
  end
  L27_2 = gamelua
  L27_2 = L27_2.ui
  L27_2 = L27_2.Frame
  L27_2 = L27_2.layout
  L28_2 = A0_2
  L27_2(L28_2)
end

L0_1.layout = L1_1
L0_1 = RewardPopup

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
L0_1 = RewardPopup

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
      L6_2 = A0_2.closeOnCancelKeyHandler
      if L6_2 ~= nil then
        L6_2 = _G
        L6_2 = L6_2.type
        L7_2 = closeOnCancelKeyHandler
        L6_2 = L6_2(L7_2)
        if L6_2 ~= "function" then
          goto lbl_41
        end
        L6_2 = closeOnCancelKeyHandler
        L6_2 = L6_2()
        if not L6_2 then
          goto lbl_41
        end
      end
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonBack"
      L6_2(L7_2)
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
      ::lbl_41::
      L6_2 = A0_2.cancelKeyHandler
      if L6_2 then
        L6_2 = _G
        L6_2 = L6_2.type
        L7_2 = A0_2.cancelKeyHandler
        L6_2 = L6_2(L7_2)
        if L6_2 == "function" then
          L6_2 = A0_2.cancelKeyHandler
          L6_2()
        end
      end
    elseif A2_2 == "RETURN" then
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = A0_2.returnValue
      L8_2.id = L9_2
      L9_2 = A0_2.meta
      L8_2.meta = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.queueEvent
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_POP_FRAME
      L8_2.id = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonProceed"
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
L0_1 = RewardPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.appearCounter
  L5_2 = A1_2 * 2
  L4_2 = L4_2 + L5_2
  L5_2 = 0.7
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.appearCounter = L3_2
  L3_2 = A0_2.animationTimer
  L3_2 = L3_2 + A1_2
  A0_2.animationTimer = L3_2
  L3_2 = A0_2.animationState
  if L3_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2.getChild
    L5_2 = "bg"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2.animationTimer
    L5_2 = SLIDE_ANIMATION_DURATION
    if L4_2 < L5_2 then
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L5_2 = A0_2.animationTimer
      L6_2 = gamelua
      L6_2 = L6_2.screenWidth
      L7_2 = gamelua
      L7_2 = L7_2.screenWidth
      L8_2 = L3_2.width
      L7_2 = L7_2 - L8_2
      L7_2 = L7_2 * 0.5
      L6_2 = L6_2 - L7_2
      L5_2 = L5_2 * L6_2
      L6_2 = SLIDE_ANIMATION_DURATION
      L5_2 = L5_2 / L6_2
      L4_2 = L4_2 - L5_2
      L3_2.x = L4_2
    else
      L4_2 = A0_2.animationTimer
      L5_2 = SLIDE_ANIMATION_DURATION
      L4_2 = L4_2 - L5_2
      A0_2.animationTimer = L4_2
      A0_2.animationState = 1
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L5_2 = L3_2.width
      L4_2 = L4_2 - L5_2
      L4_2 = L4_2 * 0.5
      L3_2.x = L4_2
    end
  else
    L3_2 = A0_2.animationState
    if L3_2 == 1 then
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "bg"
      L3_2 = L3_2(L4_2, L5_2)
      L5_2 = A0_2
      L4_2 = A0_2.getChild
      L6_2 = "bottomBanner"
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = gamelua
      L5_2 = L5_2._G
      L5_2 = L5_2.res
      L5_2 = L5_2.getSpriteBounds
      L6_2 = L4_2.components
      L6_2 = L6_2.left
      L5_2, L6_2 = L5_2(L6_2)
      L7_2 = -L6_2
      L8_2 = A0_2.animationTimer
      L9_2 = OPEN_ANIMATION_DURATION
      if L8_2 < L9_2 then
        L8_2 = 0
        L9_2 = A0_2.bgEndHeight
        if L9_2 then
          L9_2 = A0_2.animationTimer
          L10_2 = A0_2.bgEndHeight
          L10_2 = L10_2 - L7_2
          L9_2 = L9_2 * L10_2
          L10_2 = OPEN_ANIMATION_DURATION
          L9_2 = L9_2 / L10_2
          L8_2 = L7_2 + L9_2
          L10_2 = L3_2
          L9_2 = L3_2.setSize
          L11_2 = A0_2.bgEndWidth
          L12_2 = L8_2
          L9_2(L10_2, L11_2, L12_2)
          L9_2 = L3_2.height
          L4_2.y = L9_2
        end
        L9_2 = gamelua
        L9_2 = L9_2.screenHeight
        L9_2 = L9_2 - L8_2
        L9_2 = L9_2 * 0.5
        L3_2.y = L9_2
      else
        A0_2.animationState = 2
        L8_2 = A0_2.animationTimer
        L9_2 = OPEN_ANIMATION_DURATION
        L8_2 = L8_2 - L9_2
        A0_2.animationTimer = L8_2
        L9_2 = A0_2
        L8_2 = A0_2.getChild
        L10_2 = "title"
        L8_2 = L8_2(L9_2, L10_2)
        L10_2 = A0_2
        L9_2 = A0_2.getChild
        L11_2 = "rewardText"
        L9_2 = L9_2(L10_2, L11_2)
        L11_2 = A0_2
        L10_2 = A0_2.getChild
        L12_2 = "rewardText2"
        L10_2 = L10_2(L11_2, L12_2)
        L12_2 = A0_2
        L11_2 = A0_2.getChild
        L13_2 = "footer"
        L11_2 = L11_2(L12_2, L13_2)
        L13_2 = A0_2
        L12_2 = A0_2.getChild
        L14_2 = "confirm"
        L12_2 = L12_2(L13_2, L14_2)
        L14_2 = A0_2
        L13_2 = A0_2.getChild
        L15_2 = "contentImage"
        L13_2 = L13_2(L14_2, L15_2)
        L15_2 = A0_2
        L14_2 = A0_2.getChild
        L16_2 = "falconMultiplier"
        L14_2 = L14_2(L15_2, L16_2)
        L8_2.visible = true
        L12_2.visible = true
        if L9_2 then
          L9_2.visible = true
        end
        if L10_2 then
          L10_2.visible = true
        end
        L11_2.visible = true
        if L13_2 then
          L13_2.visible = true
        end
        if L14_2 then
          L14_2.visible = true
        end
        L16_2 = A0_2
        L15_2 = A0_2.layout
        L15_2(L16_2)
      end
    else
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "title"
      L3_2 = L3_2(L4_2, L5_2)
      L5_2 = A0_2
      L4_2 = A0_2.getChild
      L6_2 = "rewardText"
      L4_2 = L4_2(L5_2, L6_2)
      L6_2 = A0_2
      L5_2 = A0_2.getChild
      L7_2 = "rewardText2"
      L5_2 = L5_2(L6_2, L7_2)
      L7_2 = A0_2
      L6_2 = A0_2.getChild
      L8_2 = "footer"
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = A0_2
      L7_2 = A0_2.getChild
      L9_2 = "confirm"
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = A0_2
      L8_2 = A0_2.getChild
      L10_2 = "falconMultiplier"
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = A0_2
      L9_2 = A0_2.getChild
      L11_2 = "contentImage"
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L3_2.alpha = L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L7_2.alpha = L10_2
      if L4_2 then
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.min
        L11_2 = A0_2.animationTimer
        L12_2 = FADE_IN_DURATION
        L11_2 = L11_2 / L12_2
        L12_2 = 1
        L10_2 = L10_2(L11_2, L12_2)
        L4_2.alpha = L10_2
      end
      if L5_2 then
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.min
        L11_2 = A0_2.animationTimer
        L12_2 = FADE_IN_DURATION
        L11_2 = L11_2 / L12_2
        L12_2 = 1
        L10_2 = L10_2(L11_2, L12_2)
        L5_2.alpha = L10_2
      end
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = A0_2.animationTimer
      L12_2 = FADE_IN_DURATION
      L11_2 = L11_2 / L12_2
      L12_2 = 1
      L10_2 = L10_2(L11_2, L12_2)
      L6_2.alpha = L10_2
      if L9_2 then
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.min
        L11_2 = A0_2.animationTimer
        L12_2 = FADE_IN_DURATION
        L11_2 = L11_2 / L12_2
        L12_2 = 1
        L10_2 = L10_2(L11_2, L12_2)
        L9_2.alpha = L10_2
      end
      if L8_2 then
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.min
        L11_2 = A0_2.animationTimer
        L12_2 = FADE_IN_DURATION
        L11_2 = L11_2 / L12_2
        L12_2 = 1
        L10_2 = L10_2(L11_2, L12_2)
        L8_2.alpha = L10_2
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
L0_1 = RewardPopup

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.appearCounter
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
L0_1 = RewardPopup

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.enableGameUpdate
  L1_2()
  L1_2 = gamelua
  L1_2.showingRewardPopup = false
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
