local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
RemoveAdsPage = L0_1
L0_1 = RemoveAdsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ads
  L1_2 = L1_2.BannerAdManager
  L2_2 = L1_2
  L1_2 = L1_2.checkHideAdImmediate
  L1_2(L2_2)
  L1_2 = true
  g_removeAdsPopupShowing = L1_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bg"
  L3_2.suffix = "EAGLE_PURCHASE"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "button"
  L4_2.returnValue = "PURCHASE"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "BTN_PLAY"
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "close"
  L5_2.returnValue = "CLOSE"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "BTN_X"
  L4_2(L5_2, L6_2)
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L0_1.init = L1_1
L0_1 = RemoveAdsPage

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.pauseGame
  if L1_2 then
    L1_2 = pause
    L1_2 = L1_2.pauseGame
    L1_2()
  end
end

L0_1.onEntry = L1_1
L0_1 = RemoveAdsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "bg"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setSize
  L4_2 = screenWidth
  L4_2 = L4_2 * 0.8
  L5_2 = screenHeight
  L5_2 = L5_2 * 0.8
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = screenWidth
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L2_2 = screenHeight
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "button"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "close"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = screenWidth
  L4_2 = -L4_2
  L4_2 = L4_2 * 0.35
  L3_2.x = L4_2
  L4_2 = screenHeight
  L4_2 = L4_2 * 0.4
  L3_2.y = L4_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
end

L0_1.layout = L1_1
L0_1 = RemoveAdsPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.8
  L8_2 = 0
  L9_2 = 0
  L10_2 = screenWidth
  L11_2 = screenHeight
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
L0_1 = RemoveAdsPage

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
L0_1 = RemoveAdsPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE" then
    L7_2 = A0_2
    L6_2 = A0_2.close
    L6_2(L7_2)
  elseif L4_2 == "PURCHASE" then
    L7_2 = A0_2
    L6_2 = A0_2.close
    L6_2(L7_2)
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.queueEvent
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_REMOVE_ADS_CLICKED
    L8_2.id = L9_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = -1
  return L6_2
end

L0_1.onPointerEvent = L1_1
L0_1 = RemoveAdsPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L5_2 = A0_2
    L4_2 = A0_2.close
    L4_2(L5_2)
  end
  L4_2 = "BLOCK"
  L5_2 = nil
  L6_2 = A0_2
  return L4_2, L5_2, L6_2
end

L0_1.onKeyEvent = L1_1
L0_1 = RemoveAdsPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  g_removeAdsPopupShowing = L1_2
  L1_2 = A0_2.pauseGame
  if L1_2 then
    L1_2 = pause
    L1_2 = L1_2.resumeGame
    L1_2()
  end
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_POP_FRAME
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.close = L1_1
