local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = GetFullVersionPage
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
TimedGetFullVersionPage = L0_1
L0_1 = TimedGetFullVersionPage
L0_1.TIMER_DELAY = 1
L0_1 = TimedGetFullVersionPage
L0_1.DISPLAY_TIME = 5
L0_1 = TimedGetFullVersionPage
L0_1.SCREENSHOT_DISPLAY_TIME = 2
L0_1 = TimedGetFullVersionPage
L0_1.NAME = "timedGetFullVersionPage"
L0_1 = TimedGetFullVersionPage
L0_1.TIMER_TEXT = "timerText"
L0_1 = TimedGetFullVersionPage
L1_1 = {}
L2_1 = "UPSELL_SCREENSHOT_1"
L3_1 = "UPSELL_SCREENSHOT_2"
L4_1 = "UPSELL_SCREENSHOT_3"
L5_1 = "UPSELL_SCREENSHOT_4"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L0_1.SCREENSHOTS = L1_1
L0_1 = TimedGetFullVersionPage
L0_1.IMG_SCREENSHOT = "imgScreenShot"
L0_1 = TimedGetFullVersionPage
L0_1.BTN_BUY = "BUTTON_GET_FULL_VERSION_WIDE"
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2)
  local L1_2
  L1_2 = TimedGetFullVersionPage
  L1_2 = L1_2.NAME
  return L1_2
end

L0_1.getName = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = TimedGetFullVersionPage
  L1_2 = L1_2.NAME
  A0_2.name = L1_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.suffix = "UPSELL"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetFullVersionPage
  L2_2 = L2_2.UPSELL_BG
  L1_2.name = L2_2
  L1_2.hanchor = "LEFT"
  L1_2.vanchor = "TOP"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = TimedGetFullVersionPage
  L5_2 = L5_2.IMG_SCREENSHOT
  L4_2.name = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = TimedGetFullVersionPage
  L5_2 = L5_2.SCREENSHOTS
  L5_2 = L5_2[1]
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.addCloseButton
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = GetFullVersionPage
  L6_2 = L6_2.SHINE
  L5_2.name = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "EAGLE_SHINE_1"
  L4_2(L5_2, L6_2)
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3
    L3_3 = A0_3.angle
    L3_3 = L3_3 + A1_3
    A0_3.angle = L3_3
  end
  
  L3_2.update = L4_2
  L4_2 = ui
  L4_2 = L4_2.ScallableButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = GetFullVersionPage
  L7_2 = L7_2.BTN_BUY
  L6_2.name = L7_2
  L6_2.returnValue = "GOTO_STORE"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = TimedGetFullVersionPage
  L7_2 = L7_2.BTN_BUY
  L5_2(L6_2, L7_2)
  L4_2.clickSound = "ButtonProceed"
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = "BOX_TOP_RIGHT_UPSELL"
  L5_2 = L5_2(L6_2)
  A0_2.BORDER_OFFSET = L5_2
  L5_2 = ui
  L5_2 = L5_2.Text
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = TimedGetFullVersionPage
  L8_2 = L8_2.TIMER_TEXT
  L7_2.name = L8_2
  L8_2 = getFontBasic
  L7_2.font = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_2.hanchor = "LEFT"
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = GetFullVersionPage
  L8_2 = L8_2.UPSELL_BG
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.addChild
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
end

L0_1.init = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetFullVersionPage
  L2_2 = L2_2.addCloseButton
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = GetFullVersionPage
  L4_2 = L4_2.BTN_CLOSE
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "BTN_BG_SW"
  L3_2(L4_2, L5_2)
end

L0_1.addCloseButton = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = TimedGetFullVersionPage
  L3_2 = L3_2.IMG_SCREENSHOT
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.w
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L2_2 = L1_2.h
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = GetFullVersionPage
  L4_2 = L4_2.UPSELL_BG
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setSize
  L5_2 = L1_2.w
  L6_2 = screenHeight
  L6_2 = L6_2 * 0.6
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = screenWidth
  L3_2 = L3_2 * 0.5
  L4_2 = L2_2.width
  L4_2 = L4_2 * 0.5
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L3_2 = screenHeight
  L3_2 = L3_2 * 0.5
  L4_2 = L2_2.height
  L4_2 = L4_2 * 0.5
  L3_2 = L3_2 - L4_2
  L2_2.y = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = GetFullVersionPage
  L5_2 = L5_2.BTN_CLOSE
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_2.width
  L5_2 = A0_2.BORDER_OFFSET
  L4_2 = L4_2 + L5_2
  L3_2.x = L4_2
  L4_2 = A0_2.BORDER_OFFSET
  L4_2 = -L4_2
  L3_2.y = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = GetFullVersionPage
  L6_2 = L6_2.BTN_BUY
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_2.width
  L5_2 = L5_2 * 0.5
  L4_2.x = L5_2
  L5_2 = L2_2.height
  L6_2 = L2_2.height
  L6_2 = L6_2 / 15
  L5_2 = L5_2 - L6_2
  L4_2.y = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = GetFullVersionPage
  L7_2 = L7_2.SHINE
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L4_2.x
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L5_2.y = L6_2
  L6_2 = ui
  L6_2 = L6_2.Frame
  L6_2 = L6_2.layout
  L7_2 = A0_2
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = GetFullVersionPage
  L8_2 = L8_2.BTN_CLOSE
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = TimedGetFullVersionPage
  L9_2 = L9_2.TIMER_TEXT
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L6_2.x
  L9_2 = L7_2.widestLine
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L8_2 = L6_2.y
  L7_2.y = L8_2
end

L0_1.layout = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetFullVersionPage
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = GetFullVersionPage
  L3_2 = L3_2.BTN_CLOSE
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.enabled = false
  L2_2 = TimedGetFullVersionPage
  L2_2 = L2_2.DISPLAY_TIME
  A0_2.displayTimer = L2_2
  L2_2 = TimedGetFullVersionPage
  L2_2 = L2_2.SCREENSHOT_DISPLAY_TIME
  A0_2.screenShotTimer = L2_2
  A0_2.currentScreenShotIndex = 1
  L3_2 = A0_2
  L2_2 = A0_2.updateTimerText
  L2_2(L3_2)
end

L0_1.onEntry = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.screenShotTimer
  if L1_2 < 0 then
    L1_2 = A0_2.currentScreenShotIndex
    L1_2 = L1_2 + 1
    A0_2.currentScreenShotIndex = L1_2
    L1_2 = A0_2.currentScreenShotIndex
    L2_2 = TimedGetFullVersionPage
    L2_2 = L2_2.SCREENSHOTS
    L2_2 = #L2_2
    if L1_2 > L2_2 then
      L1_2 = A0_2.currentScreenShotIndex
      L2_2 = TimedGetFullVersionPage
      L2_2 = L2_2.SCREENSHOTS
      L2_2 = #L2_2
      L1_2 = L1_2 % L2_2
      A0_2.currentScreenShotIndex = L1_2
    end
    L2_2 = A0_2
    L1_2 = A0_2.getChild
    L3_2 = TimedGetFullVersionPage
    L3_2 = L3_2.IMG_SCREENSHOT
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.setImage
    L4_2 = TimedGetFullVersionPage
    L4_2 = L4_2.SCREENSHOTS
    L5_2 = A0_2.currentScreenShotIndex
    L4_2 = L4_2[L5_2]
    L2_2(L3_2, L4_2)
    L2_2 = TimedGetFullVersionPage
    L2_2 = L2_2.SCREENSHOT_DISPLAY_TIME
    A0_2.screenShotTimer = L2_2
  end
end

L0_1.updateScreenShots = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetFullVersionPage
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.displayTimer
  L3_2 = L3_2 - A1_2
  A0_2.displayTimer = L3_2
  L3_2 = A0_2.screenShotTimer
  L3_2 = L3_2 - A1_2
  A0_2.screenShotTimer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.updateTimerText
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.updateScreenShots
  L3_2(L4_2)
  L3_2 = A0_2.displayTimer
  if L3_2 < 0 then
    L4_2 = A0_2
    L3_2 = A0_2.getChild
    L5_2 = "close"
    L3_2 = L3_2(L4_2, L5_2)
    L3_2.enabled = true
    L5_2 = A0_2
    L4_2 = A0_2.getChild
    L6_2 = TimedGetFullVersionPage
    L6_2 = L6_2.TIMER_TEXT
    L4_2 = L4_2(L5_2, L6_2)
    L4_2.visible = false
    L6_2 = L3_2
    L5_2 = L3_2.setImage
    L7_2 = "BTN_X"
    L5_2(L6_2, L7_2)
  end
end

L0_1.update = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  if A1_2 == "PRESS" then
  end
  L3_2 = -1
  return L3_2
end

L0_1.onKeyEvent = L1_1
L0_1 = TimedGetFullVersionPage

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
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_CLOSE_UPSELL_POPUP
    L8_2.id = L9_2
    L6_2(L7_2, L8_2)
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_POP_FRAME
    L8_2.id = L9_2
    L6_2(L7_2, L8_2)
  elseif L4_2 == "GOTO_STORE" then
    L7_2 = A0_2
    L6_2 = A0_2.openStore
    L6_2(L7_2)
  end
  L6_2 = -1
  return L6_2
end

L0_1.onPointerEvent = L1_1
L0_1 = TimedGetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = TimedGetFullVersionPage
  L3_2 = L3_2.TIMER_TEXT
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2.displayTimer
  if 0 < L2_2 then
    L2_2 = _G
    L2_2 = L2_2.string
    L2_2 = L2_2.format
    L3_2 = "%.0f"
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.ceil
    L5_2 = A0_2.displayTimer
    L4_2, L5_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2.text = L2_2
  else
    L1_2.text = "0"
  end
  L3_2 = L1_2
  L2_2 = L1_2.clip
  L2_2(L3_2)
end

L0_1.updateTimerText = L1_1
