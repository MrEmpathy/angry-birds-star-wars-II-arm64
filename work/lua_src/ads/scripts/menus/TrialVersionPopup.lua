local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
TrialVersionPopup = L0_1
L0_1 = TrialVersionPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bg"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L2_2.topLeft = "SHOPBOX_TOP_LEFT"
  L2_2.topMiddle = "SHOPBOX_TOP_MIDDLE"
  L2_2.topRight = "SHOPBOX_TOP_RIGHT"
  L2_2.left = "SHOPBOX_MIDDLE_LEFT"
  L2_2.center = "SHOPBOX_CENTER"
  L2_2.right = "SHOPBOX_MIDDLE_RIGHT"
  L2_2.bottomLeft = "SHOPBOX_BOTTOM_LEFT"
  L2_2.bottomMiddle = "SHOPBOX_BOTTOM_MIDDLE"
  L2_2.bottomRight = "SHOPBOX_BOTTOM_RIGHT"
  L1_2.components = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "upsellImage"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "UPSELL_PROMOSCREEN"
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
  L5_2.name = "buy"
  L5_2.returnValue = "BUY"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "UPSELL_BUTTON"
  L4_2(L5_2, L6_2)
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = eventManager
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = events
  L6_2 = L6_2.EID_FREE_VERSION_UNLOCKED
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "close"
  L6_2.returnValue = "CLOSE"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = getButtonImageName
  L8_2 = "buttonX"
  L9_2 = SettingsWrapper
  L9_2 = L9_2.isDarkSide
  L9_2 = L9_2()
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end

L0_1.init = L1_1
L0_1 = TrialVersionPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "bg"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setSize
  L5_2 = screenWidth
  L5_2 = L5_2 * 0.7
  L6_2 = screenHeight
  L6_2 = L6_2 * 0.75
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.getSize
  L3_2, L4_2 = L3_2(L4_2)
  bgH = L4_2
  bgW = L3_2
  L3_2 = screenWidth
  L3_2 = L3_2 * 0.5
  L2_2.x = L3_2
  L3_2 = screenHeight
  L3_2 = L3_2 * 0.5
  L2_2.y = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.getChild
  L5_2 = "upsellImage"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = L3_2.image
  L4_2, L5_2 = L4_2(L5_2)
  L7_2 = L3_2
  L6_2 = L3_2.setScale
  L8_2 = L1_2
  L6_2(L7_2, L8_2)
  L6_2 = bgH
  L6_2 = -L6_2
  L6_2 = L6_2 * 0.1
  L3_2.y = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "buy"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L6_2.x = 0
  L7_2 = bgH
  L7_2 = L7_2 * 0.45
  L6_2.y = L7_2
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "close"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.setScale
  L10_2 = L1_2
  L8_2(L9_2, L10_2)
  L8_2 = bgW
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L8_2 = bgH
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L8_2 = ui
  L8_2 = L8_2.Frame
  L8_2 = L8_2.layout
  L9_2 = A0_2
  L8_2(L9_2)
end

L0_1.layout = L1_1
L0_1 = TrialVersionPopup

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
L0_1 = TrialVersionPopup

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_FREE_VERSION_UNLOCKED
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.close
    L2_2(L3_2)
  end
end

L0_1.eventTriggered = L1_1
L0_1 = TrialVersionPopup

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
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
  elseif L4_2 == "BUY" then
    L6_2 = gamerService
    L7_2 = L6_2
    L6_2 = L6_2.buyFullVersion
    L6_2(L7_2)
  end
  L6_2 = -1
  return L6_2
end

L0_1.onPointerEvent = L1_1
L0_1 = TrialVersionPopup

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
    L4_2 = playAudio
    L5_2 = "ButtonBack"
    L4_2(L5_2)
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
L0_1 = TrialVersionPopup

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_FREE_VERSION_UNLOCKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
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
