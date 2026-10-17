local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
GetFullVersionPage = L0_1
L0_1 = GetFullVersionPage
L0_1.UPSELL_BG = "upsellBG"
L0_1 = GetFullVersionPage
L0_1.BG_DEATHSTAR = "UPSELL_BG_DEATHSTAR"
L0_1 = GetFullVersionPage
L0_1.BG_FALCON_FIGHTERS = "UPSELL_BG_FALCON_FIGHTERS"
L0_1 = GetFullVersionPage
L0_1.UPSELL_ICON = "UPSELL_ICON"
L0_1 = GetFullVersionPage
L0_1.UPSELL_LOGO = "UPSELL_STAR_WARS_LOGO"
L0_1 = GetFullVersionPage
L0_1.UPSELL_SCREENSHOTS = "UPSELL_SCREENSHOTS"
L0_1 = GetFullVersionPage
L0_1.BTN_BUY = "UPSELL_POPUP_BUY_BUTTON"
L0_1 = GetFullVersionPage
L0_1.BTN_CLOSE = "close"
L0_1 = GetFullVersionPage
L0_1.UPSELL_TEXT = "UPSELL_TEXT"
L0_1 = GetFullVersionPage
L0_1.SHINE = "buttonShine"
L0_1 = GetFullVersionPage
L0_1.NAME = "GetFullVersionPage"
L0_1 = GetFullVersionPage
L0_1.MAX_OPACITY_VALUE = 0.8
L0_1 = GetFullVersionPage

function L1_1(A0_2)
  local L1_2
  L1_2 = GetFullVersionPage
  L1_2 = L1_2.NAME
  return L1_2
end

L0_1.getName = L1_1
L0_1 = GetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetFullVersionPage
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
  L5_2 = GetFullVersionPage
  L5_2 = L5_2.BG_DEATHSTAR
  L4_2.name = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = GetFullVersionPage
  L5_2 = L5_2.BG_DEATHSTAR
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = GetFullVersionPage
  L6_2 = L6_2.BG_FALCON_FIGHTERS
  L5_2.name = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = GetFullVersionPage
  L6_2 = L6_2.BG_FALCON_FIGHTERS
  L4_2(L5_2, L6_2)
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = GetFullVersionPage
  L7_2 = L7_2.UPSELL_ICON
  L6_2.name = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = GetFullVersionPage
  L7_2 = L7_2.UPSELL_ICON
  L5_2(L6_2, L7_2)
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = GetFullVersionPage
  L8_2 = L8_2.UPSELL_LOGO
  L7_2.name = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = GetFullVersionPage
  L8_2 = L8_2.UPSELL_LOGO
  L6_2(L7_2, L8_2)
  L7_2 = L1_2
  L6_2 = L1_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = ui
  L6_2 = L6_2.Image
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L9_2 = GetFullVersionPage
  L9_2 = L9_2.UPSELL_SCREENSHOTS
  L8_2.name = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = GetFullVersionPage
  L9_2 = L9_2.UPSELL_SCREENSHOTS
  L7_2(L8_2, L9_2)
  L8_2 = L1_2
  L7_2 = L1_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = ui
  L7_2 = L7_2.Text
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = GetFullVersionPage
  L10_2 = L10_2.UPSELL_TEXT
  L9_2.name = L10_2
  L10_2 = getFontMenu
  L9_2.font = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getString
  L9_2 = "TEXTS_BASIC"
  L10_2 = "TEXT_IOS_FREE_UPSELL_TEXT"
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.text = L8_2
  L9_2 = L1_2
  L8_2 = L1_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.addCloseButton
  L10_2 = L1_2
  L8_2(L9_2, L10_2)
  L8_2 = ui
  L8_2 = L8_2.Image
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L11_2 = GetFullVersionPage
  L11_2 = L11_2.SHINE
  L10_2.name = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L8_2
  L9_2 = L8_2.setImage
  L11_2 = "EAGLE_SHINE_1"
  L9_2(L10_2, L11_2)
  L10_2 = L1_2
  L9_2 = L1_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  
  function L9_2(A0_3, A1_3, A2_3)
    local L3_3
    L3_3 = A0_3.angle
    L3_3 = L3_3 + A1_3
    A0_3.angle = L3_3
  end
  
  L8_2.update = L9_2
  L9_2 = ui
  L9_2 = L9_2.ScallableButton
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L12_2 = GetFullVersionPage
  L12_2 = L12_2.BTN_BUY
  L11_2.name = L12_2
  L11_2.returnValue = "GOTO_STORE"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = L9_2
  L10_2 = L9_2.setImage
  L12_2 = GetFullVersionPage
  L12_2 = L12_2.BTN_BUY
  L10_2(L11_2, L12_2)
  L9_2.clickSound = "ButtonProceed"
  L11_2 = L1_2
  L10_2 = L1_2.addChild
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.getSpriteBounds
  L11_2 = "BOX_TOP_RIGHT_UPSELL"
  L10_2 = L10_2(L11_2)
  A0_2.BORDER_OFFSET = L10_2
end

L0_1.init = L1_1
L0_1 = GetFullVersionPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L5_2 = GetFullVersionPage
  L5_2 = L5_2.BTN_CLOSE
  L4_2.name = L5_2
  L4_2.returnValue = "CLOSE"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "BTN_X"
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.addCloseButton = L1_1
L0_1 = GetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = GetFullVersionPage
  L3_2 = L3_2.UPSELL_BG
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setSize
  L4_2 = screenWidth
  L4_2 = L4_2 * 0.8
  L5_2 = screenHeight
  L5_2 = L5_2 * 0.7
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = screenWidth
  L2_2 = L2_2 * 0.5
  L3_2 = L1_2.width
  L3_2 = L3_2 * 0.5
  L2_2 = L2_2 - L3_2
  L1_2.x = L2_2
  L2_2 = screenHeight
  L2_2 = L2_2 * 0.5
  L3_2 = L1_2.height
  L3_2 = L3_2 * 0.5
  L2_2 = L2_2 - L3_2
  L1_2.y = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = GetFullVersionPage
  L4_2 = L4_2.BG_DEATHSTAR
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.BORDER_OFFSET
  L3_2 = -L3_2
  L2_2.x = L3_2
  L3_2 = A0_2.BORDER_OFFSET
  L3_2 = -L3_2
  L2_2.y = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = GetFullVersionPage
  L5_2 = L5_2.BG_FALCON_FIGHTERS
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getSpriteBounds
  L5_2 = GetFullVersionPage
  L5_2 = L5_2.BG_FALCON_FIGHTERS
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = L1_2.width
  L7_2 = L4_2 / 2
  L6_2 = L6_2 - L7_2
  L3_2.x = L6_2
  L6_2 = L5_2 / 2
  L3_2.y = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = GetFullVersionPage
  L8_2 = L8_2.UPSELL_ICON
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L1_2.width
  L8_2 = L1_2.width
  L8_2 = L8_2 / 6
  L7_2 = L7_2 - L8_2
  L6_2.x = L7_2
  L7_2 = L1_2.height
  L7_2 = L7_2 * 0.55
  L6_2.y = L7_2
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = GetFullVersionPage
  L9_2 = L9_2.UPSELL_LOGO
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L1_2.width
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L8_2 = L7_2.h
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = GetFullVersionPage
  L10_2 = L10_2.UPSELL_SCREENSHOTS
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L1_2.width
  L9_2 = L9_2 * 1
  L9_2 = L9_2 / 4
  L8_2.x = L9_2
  L9_2 = L1_2.height
  L9_2 = L9_2 * 0.55
  L8_2.y = L9_2
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = GetFullVersionPage
  L11_2 = L11_2.UPSELL_TEXT
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L1_2.width
  L10_2 = L10_2 * 1
  L10_2 = L10_2 / 3
  L9_2.x = L10_2
  L10_2 = L1_2.height
  L11_2 = L1_2.height
  L11_2 = L11_2 / 8
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L10_2 = L1_2.width
  L10_2 = L10_2 * 2
  L10_2 = L10_2 / 3
  L9_2.textBoxSize = L10_2
  L11_2 = L9_2
  L10_2 = L9_2.clip
  L10_2(L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = GetFullVersionPage
  L12_2 = L12_2.BTN_CLOSE
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = A0_2.BORDER_OFFSET
  L11_2 = -L11_2
  L10_2.x = L11_2
  L11_2 = A0_2.BORDER_OFFSET
  L11_2 = -L11_2
  L10_2.y = L11_2
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = GetFullVersionPage
  L13_2 = L13_2.BTN_BUY
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L1_2.width
  L13_2 = L1_2.width
  L13_2 = L13_2 / 6
  L12_2 = L12_2 - L13_2
  L11_2.x = L12_2
  L12_2 = L1_2.height
  L13_2 = L1_2.height
  L13_2 = L13_2 / 15
  L12_2 = L12_2 - L13_2
  L11_2.y = L12_2
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = GetFullVersionPage
  L14_2 = L14_2.SHINE
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = L11_2.x
  L12_2.x = L13_2
  L13_2 = L11_2.y
  L12_2.y = L13_2
  L13_2 = ui
  L13_2 = L13_2.Frame
  L13_2 = L13_2.layout
  L14_2 = A0_2
  L13_2(L14_2)
end

L0_1.layout = L1_1
L0_1 = GetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.fadeInValue = 0
end

L0_1.onEntry = L1_1
L0_1 = GetFullVersionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.fadeInValue
  L4_2 = GetFullVersionPage
  L4_2 = L4_2.MAX_OPACITY_VALUE
  if L3_2 < L4_2 then
    L3_2 = A0_2.fadeInValue
    L4_2 = A1_2 * 2
    L3_2 = L3_2 + L4_2
    A0_2.fadeInValue = L3_2
    L3_2 = A0_2.fadeInValue
    L4_2 = GetFullVersionPage
    L4_2 = L4_2.MAX_OPACITY_VALUE
    if L3_2 > L4_2 then
      L3_2 = GetFullVersionPage
      L3_2 = L3_2.MAX_OPACITY_VALUE
      A0_2.fadeInValue = L3_2
    end
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = GetFullVersionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.fadeInValue
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
L0_1 = GetFullVersionPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L3_2 = eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = events
    L6_2 = L6_2.EID_POP_FRAME
    L5_2.id = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = -1
  return L3_2
end

L0_1.onKeyEvent = L1_1
L0_1 = GetFullVersionPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.openURL
  L2_2 = generateRedirectURL
  L3_2 = getVariant
  L3_2 = L3_2()
  L4_2 = appendCustomerString
  L5_2 = "angrybirdsstarwarsfull"
  L4_2, L5_2 = L4_2(L5_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L0_1.openStore = L1_1
L0_1 = GetFullVersionPage

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
    L9_2 = L9_2.EID_CLOSE_BUY_FREE_IOS_VERSION_POPUP
    L8_2.id = L9_2
    L6_2(L7_2, L8_2)
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_CLOSE_UPSELL_POPUP
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
