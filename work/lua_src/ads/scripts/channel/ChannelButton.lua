local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ChannelButton = L0_1
L0_1 = ChannelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.animationTimer = 0
  L2_2 = A0_2
  L1_2 = A0_2.setImage
  L3_2 = gamelua
  L3_2 = L3_2.getButtonImageName
  L4_2 = "toonsBackgroundButton"
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.isDarkSide
  L5_2, L6_2 = L5_2(L6_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "toonText"
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "BUTTON_TOONS_NORMAL"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

L0_1.init = L1_1
L0_1 = ChannelButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = g_disableGameupdate
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.updateIdleAnimation
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.update = L1_1
L0_1 = ChannelButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "toonText"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.animationTimer
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 + A1_2
  A0_2.animationTimer = L3_2
  L3_2 = A0_2.animationTimer
  if 0.5 < L3_2 then
    L3_2 = A0_2.animationTimer
    if L3_2 < 1.2 then
      L4_2 = L2_2
      L3_2 = L2_2.setImage
      L5_2 = "BUTTON_TOONS_LOOKLEFT"
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A0_2.animationTimer
    if 1.2 < L3_2 then
      L3_2 = A0_2.animationTimer
      if L3_2 < 1.9 then
        L4_2 = L2_2
        L3_2 = L2_2.setImage
        L5_2 = "BUTTON_TOONS_LOOKRIGHT"
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = A0_2.animationTimer
      if 1.9 < L3_2 then
        L3_2 = A0_2.animationTimer
        if L3_2 < 2 then
          L4_2 = L2_2
          L3_2 = L2_2.setImage
          L5_2 = "BUTTON_TOONS_BLINK"
          L3_2(L4_2, L5_2)
      end
      else
        L3_2 = A0_2.animationTimer
        if 2 < L3_2 then
          L3_2 = A0_2.animationTimer
          if L3_2 < 4 then
            L4_2 = L2_2
            L3_2 = L2_2.setImage
            L5_2 = "BUTTON_TOONS_NORMAL"
            L3_2(L4_2, L5_2)
        end
        else
          L3_2 = A0_2.animationTimer
          if 4 < L3_2 then
            A0_2.animationTimer = 0
          end
        end
      end
    end
  end
end

L0_1.updateIdleAnimation = L1_1
L0_1 = ChannelButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "toonText"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.h
  L3_2 = L3_2 * 0.1
  L3_2 = L3_2 * L1_2
  L2_2.y = L3_2
end

L0_1.layout = L1_1
