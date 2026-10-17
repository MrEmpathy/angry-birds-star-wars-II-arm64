local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
MainMenuRoot = L0_1
L0_1 = {}
g_bird_animations = L0_1
L0_1 = {}
g_bird_sprites = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
MainMenuBackgroundBox = L0_1
L0_1 = gamelua
L0_1 = L0_1.events
events = L0_1
L0_1 = 20
purchaseRestoreTimer = L0_1
L0_1 = 4
panTotalTime = L0_1
L0_1 = ui
L0_1 = L0_1.ScallableButton
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
LoginButton = L0_1
L0_1 = LoginButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.ScallableButton
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Text
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "accountText"
  L4_2 = gamelua
  L4_2 = L4_2.getFontBasic
  L4_2 = L4_2()
  L3_2.font = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.y = -50
  L1_2.hanchor = "LEFT"
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpritePivot
  L3_2 = "IN_APP_LOADING"
  L2_2, L3_2 = L2_2(L3_2)
  A0_2.loadingPY = L3_2
  A0_2.loadingPX = L2_2
  A0_2.isWheelVisible = false
  A0_2.dt = 0
  L2_2 = gamelua
  L2_2 = L2_2.rovioAccountEnabled
  if L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.RovioAccount
    L2_2 = L2_2.loginButtonBlocked
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setState
      L4_2 = "NOT_LOGGED"
      L2_2(L3_2, L4_2)
    else
      L2_2 = gamelua
      L2_2 = L2_2.RovioAccount
      L2_2 = L2_2.isAccountLoggedIn
      L2_2 = L2_2()
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setState
        L4_2 = "LOGGED"
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.setState
        L4_2 = "GUEST"
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = gamelua
  L2_2 = L2_2.releaseBuild
  if L2_2 then
    L1_2.visible = false
  end
end

L0_1.init = L1_1
L0_1 = LoginButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.dt
  L3_2 = L3_2 + A1_2
  A0_2.dt = L3_2
end

L0_1.update = L1_1
L0_1 = LoginButton

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ui
  L3_2 = L3_2.ScallableButton
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.isWheelVisible
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.setRenderState
    L4_2 = 0
    L5_2 = 0
    L6_2 = 1
    L7_2 = 1
    L8_2 = A0_2.dt
    if not L8_2 then
      L8_2 = 0
    end
    L8_2 = L8_2 * 10
    L9_2 = A0_2.loadingPX
    L10_2 = A0_2.loadingPY
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = _G
    L3_2 = L3_2.res
    L3_2 = L3_2.drawSprite
    L4_2 = "IN_APP_LOADING"
    L5_2 = A0_2.x
    L6_2 = A0_2.y
    L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.draw = L1_1
L0_1 = LoginButton

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setState
  L3_2 = A0_2.state
  L1_2(L2_2, L3_2)
end

L0_1.refreshButtonGraphics = L1_1
L0_1 = LoginButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "accountText"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setImage
  L6_2 = A0_2
  L5_2 = A0_2.getButtonImage
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2.getButtonText
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.text = L3_2
  if A1_2 == "LOGGED" or A1_2 == "GUEST" then
    L4_2 = A0_2
    L3_2 = A0_2.setEnabled
    L5_2 = true
    L3_2(L4_2, L5_2)
    A0_2.isWheelVisible = false
  else
    A0_2.isWheelVisible = true
    L4_2 = A0_2
    L3_2 = A0_2.setEnabled
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2.state = A1_2
end

L0_1.setState = L1_1
L0_1 = LoginButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "LOGGED" then
    L2_2 = gamelua
    L2_2 = L2_2.RovioAccount
    L2_2 = L2_2.profile
    L3_2 = L2_2.nickname
    if not L3_2 then
      L3_2 = L2_2.email
      if not L3_2 then
        L3_2 = ""
      end
    end
    return L3_2
  elseif A1_2 == "GUEST" then
    L2_2 = "Guest"
    return L2_2
  else
    L2_2 = "Not Logged In"
    return L2_2
  end
end

L0_1.getButtonText = L1_1
L0_1 = LoginButton

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "LOGGED" then
    L2_2 = gamelua
    L2_2 = L2_2.getButtonImageName
    L3_2 = "rovioIDLoggedInButton"
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.isDarkSide
    L4_2, L5_2 = L4_2(L5_2)
    return L2_2(L3_2, L4_2, L5_2)
  elseif A1_2 == "GUEST" then
    L2_2 = gamelua
    L2_2 = L2_2.getButtonImageName
    L3_2 = "rovioIDNotLoggedButton"
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.isDarkSide
    L4_2, L5_2 = L4_2(L5_2)
    return L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = gamelua
    L2_2 = L2_2.getButtonImageName
    L3_2 = "mainMenuOptionsButton"
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.isDarkSide
    L4_2, L5_2 = L4_2(L5_2)
    return L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.getButtonImage = L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.gameCenterSupported
  return L0_2
end

isGameCenterSupported = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.gameCenterEnabled
  return L0_2
end

isGameCenterEnabled = L0_1
L0_1 = MainMenuBackgroundBox

function L1_1(A0_2)
  local L1_2, L2_2
  A0_2.x = 0
  A0_2.y = 0
  A0_2.visible = true
  A0_2.locked = false
  L1_2 = A0_2.components
  if not L1_2 then
    L1_2 = {}
    L1_2.topLeft = "SLIDER_TOP_LEFT"
    L1_2.left = "SLIDER_LEFT"
    L1_2.bottomLeft = "SLIDER_BOTTOM_LEFT"
    L1_2.bottomMiddle = "SLIDER_BOTTOM_MIDDLE"
    L1_2.bottomRight = "SLIDER_BOTTOM_RIGHT"
    L1_2.right = "SLIDER_RIGHT"
    L1_2.topRight = "SLIDER_TOP_RIGHT"
    L1_2.topMiddle = "SLIDER_TOP_MIDDLE"
    L1_2.center = "SLIDER_CENTER"
    L2_2 = nil
    L1_2[1] = L2_2
  end
  A0_2.components = L1_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = MainMenuBackgroundBox

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A0_2.visible
  if L5_2 == false then
    return
  end
  if not A3_2 then
    A3_2 = 1
  end
  if not A4_2 then
    A4_2 = 1
  end
  L5_2 = gamelua
  L5_2 = L5_2.setRenderState
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = gamelua
  L5_2 = L5_2.drawBoxNative
  L6_2 = A0_2.components
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.x
  L8_2 = L8_2 + A1_2
  L9_2 = A0_2.boxXCenter
  L9_2 = L9_2 * A3_2
  L8_2 = L8_2 + L9_2
  L7_2 = L7_2(L8_2)
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.floor
  L9_2 = A0_2.y
  L9_2 = L9_2 + A2_2
  L8_2 = L8_2(L9_2)
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.floor
  L10_2 = A0_2.boxWidth
  L10_2 = L10_2 * A3_2
  L9_2 = L9_2(L10_2)
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = A0_2.boxHeight
  L11_2 = L11_2 * A4_2
  L10_2 = L10_2(L11_2)
  L11_2 = A0_2.hanchor
  L12_2 = A0_2.vanchor
  L13_2 = nil
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

L0_1.drawSelf = L1_1
L0_1 = MainMenuBackgroundBox

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2.drawSelf
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.draw
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end

L0_1.draw = L1_1
L0_1 = MainMenuBackgroundBox
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
MainMenuSlider = L0_1
L0_1 = MainMenuSlider

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = MainMenuBackgroundBox
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.state = "CLOSED"
  A0_2.slide_amount = 0
  L1_2 = {}
  L1_2.topLeft = "SLIDER_TOP_LEFT"
  L1_2.left = "SLIDER_LEFT"
  L1_2.bottomLeft = "SLIDER_BOTTOM_LEFT"
  L1_2.bottomMiddle = "SLIDER_BOTTOM_MIDDLE"
  L1_2.bottomRight = "SLIDER_BOTTOM_RIGHT"
  L1_2.right = "SLIDER_RIGHT"
  L1_2.topRight = "SLIDER_TOP_RIGHT"
  L1_2.topMiddle = "SLIDER_TOP_MIDDLE"
  L1_2.center = "SLIDER_CENTER"
  L2_2 = nil
  L1_2[1] = L2_2
  A0_2.components = L1_2
  A0_2.hanchor = "HCENTER"
  A0_2.vanchor = "BOTTOM"
  A0_2.element_width = 97
  A0_2.element_height = 0
  A0_2.element_gap = 0
  A0_2.bottom_margin = 0
  L1_2 = gamelua
  L1_2 = L1_2.gamerService
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.isPCVersion
    L1_2 = L1_2()
    if not L1_2 then
      goto lbl_42
    end
    L1_2 = gamelua
    L1_2 = L1_2.deviceModel
    if L1_2 == "metro" then
      goto lbl_42
    end
  end
  L1_2 = 3
  ::lbl_42::
  if not L1_2 then
    L1_2 = 4
  end
  A0_2.maxRows = L1_2
  A0_2.width = 0
  A0_2.height = 0
end

L0_1.init = L1_1
L0_1 = MainMenuSlider

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = MainMenuBackgroundBox
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.height = 0
  A0_2.state = "CLOSED"
  L1_2 = gamelua
  L1_2.g_inMainMenu = true
end

L0_1.onEntry = L1_1
L0_1 = MainMenuSlider

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.state
  if L1_2 ~= "OPEN" then
    L1_2 = A0_2.state
    if L1_2 ~= "OPENING" then
      goto lbl_9
    end
  end
  A0_2.state = "CLOSING"
  goto lbl_16
  ::lbl_9::
  L1_2 = A0_2.state
  if L1_2 ~= "CLOSED" then
    L1_2 = A0_2.state
    if L1_2 ~= "CLOSING" then
      goto lbl_16
    end
  end
  A0_2.state = "OPENING"
  ::lbl_16::
end

L0_1.toggle = L1_1
L0_1 = MainMenuSlider

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.min
  L4_2 = A0_2.children
  L4_2 = #L4_2
  L5_2 = A0_2.maxRows
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.element_height
  L3_2 = L3_2 * L4_2
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.min
  L5_2 = A0_2.children
  L5_2 = #L5_2
  L5_2 = L5_2 - 1
  L6_2 = A0_2.maxRows
  L6_2 = L6_2 - 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.element_gap
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.bottom_margin
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.state
  if L4_2 == "OPENING" then
    L4_2 = A0_2.height
    L5_2 = A1_2 * 3
    L4_2 = L4_2 + L5_2
    A0_2.height = L4_2
    L4_2 = A0_2.height
    if 1 <= L4_2 then
      A0_2.height = 1
      A0_2.state = "OPEN"
    end
  else
    L4_2 = A0_2.state
    if L4_2 == "CLOSING" then
      L4_2 = A0_2.height
      L5_2 = A1_2 * 3
      L4_2 = L4_2 - L5_2
      A0_2.height = L4_2
      L4_2 = A0_2.height
      if L4_2 <= 0 then
        A0_2.height = 0
        A0_2.state = "CLOSED"
      end
    end
  end
  L4_2 = A0_2.state
  if L4_2 == "OPEN" then
    A0_2.height = 1
  end
  L4_2 = gamelua
  L4_2 = L4_2.tweenEaseCubicInOut
  L5_2 = A0_2.height
  L6_2 = 0
  L7_2 = 1
  L8_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = gamelua
  L5_2 = L5_2.tweenEaseCubicOut
  L6_2 = A0_2.height
  L7_2 = 0
  L8_2 = 1
  L9_2 = 1
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = 1
  L7_2 = A0_2.children
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2.children
    L10_2 = L10_2[L9_2]
    L11_2 = A0_2.element_width
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.floor
    L13_2 = L9_2 - 1
    L14_2 = A0_2.maxRows
    L13_2 = L13_2 / L14_2
    L12_2 = L12_2(L13_2)
    L11_2 = L11_2 * L12_2
    L12_2 = gamelua
    L12_2 = L12_2.getUIScale
    L12_2 = L12_2()
    L11_2 = L11_2 * L12_2
    L11_2 = L11_2 * L4_2
    L10_2.x = L11_2
    L10_2 = A0_2.children
    L10_2 = L10_2[L9_2]
    L11_2 = -L3_2
    L11_2 = L11_2 * L5_2
    L12_2 = L9_2 - 1
    L13_2 = A0_2.maxRows
    L12_2 = L12_2 % L13_2
    L13_2 = A0_2.element_gap
    L14_2 = A0_2.element_height
    L13_2 = L13_2 + L14_2
    L12_2 = L12_2 * L13_2
    L11_2 = L11_2 + L12_2
    L12_2 = A0_2.element_height
    L12_2 = L12_2 * 0.5
    L11_2 = L11_2 + L12_2
    L10_2.y = L11_2
    L10_2 = A0_2.children
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.y
    if 0 <= L10_2 then
      L10_2 = A0_2.children
      L10_2 = L10_2[L9_2]
      L11_2 = A0_2.y
      L10_2.y = L11_2
    end
  end
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.floor
  L7_2 = A0_2.children
  L7_2 = #L7_2
  L7_2 = L7_2 - 1
  L8_2 = A0_2.maxRows
  L7_2 = L7_2 / L8_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 + 1
  L7_2 = L4_2 or L7_2
  if not (1 < L6_2) or not L4_2 then
    L7_2 = L5_2
  end
  L8_2 = A0_2.element_width
  L8_2 = L7_2 * L8_2
  L9_2 = gamelua
  L9_2 = L9_2.getUIScale
  L9_2 = L9_2()
  L8_2 = L8_2 * L9_2
  L9_2 = L6_2 - 1
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 * 0.5
  A0_2.boxXCenter = L8_2
  L8_2 = A0_2.element_width
  L8_2 = L7_2 * L8_2
  L9_2 = gamelua
  L9_2 = L9_2.getUIScale
  L9_2 = L9_2()
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 * L6_2
  L8_2 = L8_2 * 0.9
  A0_2.boxWidth = L8_2
  L8_2 = L5_2 * L3_2
  A0_2.boxHeight = L8_2
  L8_2 = MainMenuBackgroundBox
  L8_2 = L8_2.update
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L8_2(L9_2, L10_2, L11_2)
end

L0_1.update = L1_1
L0_1 = MainMenuSlider

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L7_2 = A0_2.state
  if L7_2 == "OPEN" then
    L7_2 = MainMenuBackgroundBox
    L7_2 = L7_2.onPointerEvent
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = A3_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L6_2 = L9_2
    L5_2 = L8_2
    L4_2 = L7_2
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = ui
L0_1 = L0_1.Image
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
ToggleIndicator = L0_1
L0_1 = ToggleIndicator

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.state = "CLOSED"
end

L0_1.init = L1_1
L0_1 = ToggleIndicator

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.state = "CLOSED"
end

L0_1.onEntry = L1_1
L0_1 = ToggleIndicator

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.state
  if L1_2 ~= "OPEN" then
    L1_2 = A0_2.state
    if L1_2 ~= "OPENING" then
      goto lbl_9
    end
  end
  A0_2.state = "CLOSING"
  goto lbl_16
  ::lbl_9::
  L1_2 = A0_2.state
  if L1_2 ~= "CLOSED" then
    L1_2 = A0_2.state
    if L1_2 ~= "CLOSING" then
      goto lbl_16
    end
  end
  A0_2.state = "OPENING"
  ::lbl_16::
end

L0_1.toggle = L1_1
L0_1 = ToggleIndicator

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.state
  if L3_2 == "OPENING" then
    L3_2 = A0_2.angle
    L4_2 = A1_2 * 24
    L3_2 = L3_2 + L4_2
    A0_2.angle = L3_2
    L3_2 = A0_2.angle
    if 3.14159 <= L3_2 then
      A0_2.angle = 3.14159
      A0_2.state = "OPEN"
    end
  else
    L3_2 = A0_2.state
    if L3_2 == "CLOSING" then
      L3_2 = A0_2.angle
      L4_2 = A1_2 * 24
      L3_2 = L3_2 - L4_2
      A0_2.angle = L3_2
      L3_2 = A0_2.angle
      if L3_2 < 0 then
        A0_2.angle = 0
        A0_2.state = "CLOSED"
      end
    end
  end
end

L0_1.update = L1_1
L0_1 = MainMenuRoot
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
MainMenu = L0_1
L0_1 = MainMenu
L0_1.firstEntrance = true
L0_1 = MainMenu
L0_1.logoTwinkleTimer = 0
L0_1 = MainMenu
L0_1.logoTwinkleTimerSpeed = 1
L0_1 = MainMenu
L0_1.logoTwinkleFrameChangeTimer = 0
L0_1 = MainMenu
L0_1.LOGO_TWINKLE_RELOOP_TIME = 1.8
L0_1 = MainMenu
L0_1.LOGO_TWINKLE_TIMER_IMAGES = 12
L0_1 = MainMenu
L0_1.LOGO_TWINKLE_FRAME_CHANGE_TIME = 0.16
L0_1 = MainMenu
L0_1.currentTwinkleFrameIndex = 1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2.use_options_slider = true
  L1_2 = MainMenuRoot
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.name = "mainMenu"
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = ui
  L3_2 = L3_2.FlashAnimation
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "bg"
  L5_2.file = "animations/mainmenu/mainmenu.json"
  L5_2.onEntryAction = "mainmenu"
  L5_2.loadGroup = "ANIMATION_MAIN_MENU"
  L5_2.width = 1365
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "carFrame"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.carFrame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.carFrame
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "panningFrame"
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
  L4_2.name = "playButton"
  L4_2.activateOnRelease = true
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "mainMenuPlayButton"
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2.returnValue = "GOTO_EPISODE_SELECTION"
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.channelEnabled
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.isIOSVersion
    L3_2 = L3_2()
    if not L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.isAndroidVersion
      L3_2 = L3_2()
      if not L3_2 then
        goto lbl_85
      end
    end
    L3_2 = ChannelButton
    L4_2 = L3_2
    L3_2 = L3_2.new
    L3_2 = L3_2(L4_2)
    L3_2.name = "channelButton"
    L3_2.returnValue = "GOTO_CHANNEL"
    L3_2.activateOnRelease = true
    L5_2 = L3_2
    L4_2 = L3_2.setVisible
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = L1_2
    L4_2 = L1_2.addChild
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  ::lbl_85::
  A0_2.logoHDSuffix = ""
  L3_2 = gamelua
  L3_2 = L3_2.deviceModel
  if L3_2 == "android" then
    L3_2 = gamelua
    L3_2 = L3_2.isHDVersion
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.selectAssetProfile
      L4_2 = "MENU"
      L3_2 = L3_2(L4_2)
      if L3_2 == "1280x800" then
        A0_2.logoHDSuffix = "HD_"
      end
    end
  end
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L3_2.name = "gameLogo"
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = "AB_STAR_WARS_2"
  L4_2(L5_2, L6_2)
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2.game_logo = L3_2
  L4_2 = MainMenuSlider
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L4_2.name = "optionsSlider"
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.ScallableButton
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "optionsButton"
  L7_2.activateOnRelease = true
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setImage
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "mainMenuOptionsButton"
  L10_2 = gamelua
  L10_2 = L10_2.SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.isDarkSide
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2.returnValue = "TOGGLE_OPTIONS"
  L7_2 = L1_2
  L6_2 = L1_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = ToggleIndicator
  L7_2 = L6_2
  L6_2 = L6_2.new
  L6_2 = L6_2(L7_2)
  L6_2.name = "optionsImage"
  L8_2 = L6_2
  L7_2 = L6_2.setImage
  L9_2 = gamelua
  L9_2 = L9_2.getButtonImageName
  L10_2 = "mainMenuOptionsIcon"
  L11_2 = gamelua
  L11_2 = L11_2.SettingsWrapper
  L12_2 = L11_2
  L11_2 = L11_2.isDarkSide
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L5_2
  L7_2 = L5_2.addChild
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.createOptionsSliderButtons
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = {}
  A0_2.mid_buttons = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.isIOSFree
  L7_2 = L7_2()
  if not L7_2 then
    L7_2 = ui
    L7_2 = L7_2.ScallableButton
    L8_2 = L7_2
    L7_2 = L7_2.new
    L7_2 = L7_2(L8_2)
    L7_2.name = "shopButton"
    L9_2 = L7_2
    L8_2 = L7_2.setImage
    L10_2 = gamelua
    L10_2 = L10_2.getButtonImageName
    L11_2 = "shopButton"
    L12_2 = gamelua
    L12_2 = L12_2.SettingsWrapper
    L13_2 = L12_2
    L12_2 = L12_2.isDarkSide
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2.returnValue = "GOTO_SHOP"
    L7_2.visible = true
    L8_2 = ui
    L8_2 = L8_2.Image
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.name = "shopButtonGlow"
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setImage
    L11_2 = "EAGLE_SHINE_1"
    L9_2(L10_2, L11_2)
    L8_2.parent = L7_2
    L9_2 = gamelua
    L9_2 = L9_2.shopGlowUpdater
    L8_2.update = L9_2
    L10_2 = L8_2
    L9_2 = L8_2.setVisible
    L11_2 = false
    L9_2(L10_2, L11_2)
    L10_2 = L1_2
    L9_2 = L1_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setVisible
    L11_2 = gamelua
    L11_2 = L11_2.shouldShowShopGlow
    L11_2, L12_2, L13_2, L14_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = ui
    L9_2 = L9_2.ClaimBadge
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L11_2.name = "claimBadge"
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = L7_2
    L10_2 = L7_2.addChild
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = gamelua
    L10_2 = L10_2.isNewSpecialsInShop
    L10_2 = L10_2()
    if L10_2 then
      L10_2 = ui
      L10_2 = L10_2.NewSpecialsBadge
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = {}
      L12_2.name = "newShopBadge"
      L10_2 = L10_2(L11_2, L12_2)
      L12_2 = L7_2
      L11_2 = L7_2.addChild
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
    L10_2 = LoginButton
    L11_2 = L10_2
    L10_2 = L10_2.new
    L10_2 = L10_2(L11_2)
    L10_2.name = "rovioLoginButton"
    L10_2.returnValue = "ROVIO_LOGIN"
    L10_2.activateOnRelease = true
    L12_2 = L10_2
    L11_2 = L10_2.setVisible
    L13_2 = false
    L11_2(L12_2, L13_2)
    L10_2.clickSound = "ButtonProceed"
    L12_2 = L1_2
    L11_2 = L1_2.addChild
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L11_2 = ui
    L11_2 = L11_2.Text
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "eaglesAvailable"
    L14_2 = gamelua
    L14_2 = L14_2.getFontHeadline
    L14_2 = L14_2()
    L13_2.font = L14_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L7_2.w
    L12_2 = L12_2 * 0.5
    L11_2.x = L12_2
    L11_2.hanchor = "LEFT"
    L11_2.scaleX = 0.5
    L11_2.scaleY = 0.5
    L11_2.visible = false
    L13_2 = L7_2
    L12_2 = L7_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    L13_2 = L1_2
    L12_2 = L1_2.addChild
    L14_2 = L7_2
    L12_2(L13_2, L14_2)
  end
  L7_2 = gamelua
  L7_2 = L7_2.g_isRegistered
  if not L7_2 then
    L7_2 = gamelua
    L7_2 = L7_2.gamerService
    if L7_2 == nil then
      L7_2 = ui
      L7_2 = L7_2.ScallableButton
      L8_2 = L7_2
      L7_2 = L7_2.new
      L7_2 = L7_2(L8_2)
      L7_2.name = "registerButton"
      L9_2 = L7_2
      L8_2 = L7_2.setImage
      L10_2 = "ACTIVATE_BUTTON"
      L8_2(L9_2, L10_2)
      L7_2.returnValue = "OPEN_REGISTER_WINDOW"
      L7_2.clickSound = "ButtonProceed"
      L9_2 = L1_2
      L8_2 = L1_2.addChild
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
  end
  else
    L7_2 = gamelua
    L7_2 = L7_2.gamerService
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.gamerService
      L7_2 = L7_2.ui
      L7_2 = L7_2.GamerServiceButton
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L10_2 = gamelua
      L10_2 = L10_2.getButtonImageName
      L11_2 = "mainMenuAchievementsButton"
      L12_2 = gamelua
      L12_2 = L12_2.SettingsWrapper
      L13_2 = L12_2
      L12_2 = L12_2.isDarkSide
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L9_2.imgEnabled = L10_2
      L10_2 = gamelua
      L10_2 = L10_2.getButtonImageName
      L11_2 = "mainMenuAchievementsDisabledButton"
      L12_2 = gamelua
      L12_2 = L12_2.SettingsWrapper
      L13_2 = L12_2
      L12_2 = L12_2.isDarkSide
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L9_2.imgDisabled = L10_2
      L9_2.name = "btnAchievements"
      L9_2.returnValue = "GOTO_ACHIEVEMENTS"
      L10_2 = gamelua
      L10_2 = L10_2.gamerService
      L9_2.service = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = gamelua
      L8_2 = L8_2.gamerService
      L8_2 = L8_2.ui
      L8_2 = L8_2.GamerServiceButton
      L9_2 = L8_2
      L8_2 = L8_2.new
      L10_2 = {}
      L11_2 = gamelua
      L11_2 = L11_2.getButtonImageName
      L12_2 = "mainMenuLeaderboardsButton"
      L13_2 = gamelua
      L13_2 = L13_2.SettingsWrapper
      L14_2 = L13_2
      L13_2 = L13_2.isDarkSide
      L13_2, L14_2 = L13_2(L14_2)
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.imgEnabled = L11_2
      L11_2 = gamelua
      L11_2 = L11_2.getButtonImageName
      L12_2 = "mainMenuLeaderboardsDisabledButton"
      L13_2 = gamelua
      L13_2 = L13_2.SettingsWrapper
      L14_2 = L13_2
      L13_2 = L13_2.isDarkSide
      L13_2, L14_2 = L13_2(L14_2)
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.imgDisabled = L11_2
      L10_2.name = "btnLeaderboards"
      L10_2.returnValue = "GOTO_LEADERBOARDS"
      L11_2 = gamelua
      L11_2 = L11_2.gamerService
      L10_2.service = L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = gamelua
      L9_2 = L9_2.gamerService
      L9_2 = L9_2.ui
      L9_2 = L9_2.GamerServiceButton
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L11_2.imgEnabled = "UPSELL_BUTTON"
      L11_2.imgDisabled = "UPSELL_BUTTON"
      L11_2.name = "btnBuy"
      L11_2.activateOnRelease = true
      L11_2.returnValue = "GOTO_BUY"
      L12_2 = gamelua
      L12_2 = L12_2.gamerService
      L11_2.service = L12_2
      L9_2 = L9_2(L10_2, L11_2)
      L11_2 = L4_2
      L10_2 = L4_2.addChild
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
      L11_2 = L4_2
      L10_2 = L4_2.addChild
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
      L11_2 = L1_2
      L10_2 = L1_2.addChild
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L7_2 = gamelua
  L7_2 = L7_2.isPCVersion
  L7_2 = L7_2()
  if L7_2 then
    L7_2 = gamelua
    L7_2 = L7_2.deviceModel
    if L7_2 ~= "metro" then
      L7_2 = ui
      L7_2 = L7_2.ScallableButton
      L8_2 = L7_2
      L7_2 = L7_2.new
      L7_2 = L7_2(L8_2)
      L7_2.name = "exitButton"
      L9_2 = L7_2
      L8_2 = L7_2.setImage
      L10_2 = gamelua
      L10_2 = L10_2.getButtonImageName
      L11_2 = "mainMenuExitButton"
      L12_2 = gamelua
      L12_2 = L12_2.SettingsWrapper
      L13_2 = L12_2
      L12_2 = L12_2.isDarkSide
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2.returnValue = "OPEN_EXIT_WINDOW"
      L7_2.clickSound = "ButtonProceed"
      L9_2 = L1_2
      L8_2 = L1_2.addChild
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L7_2 = ui
  L7_2 = L7_2.CharacterMenuShop
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.name = "characterMenuShop"
  L9_2.isInMenu = true
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.generateCharacterButton
  L8_2(L9_2)
  L9_2 = L1_2
  L8_2 = L1_2.addChild
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = gamelua
  L8_2 = L8_2.showEditor
  if L8_2 then
    L8_2 = gamelua
    L8_2 = L8_2.releaseBuild
    if L8_2 ~= true then
      L8_2 = ui
      L8_2 = L8_2.ScallableButton
      L9_2 = L8_2
      L8_2 = L8_2.new
      L10_2 = {}
      L10_2.name = "editor_button"
      L10_2.returnValue = "GOTO_EDITOR"
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = L8_2
      L9_2 = L8_2.setImage
      L11_2 = gamelua
      L11_2 = L11_2.getButtonImageName
      L12_2 = "mainMenuOptionsButton"
      L13_2 = gamelua
      L13_2 = L13_2.SettingsWrapper
      L14_2 = L13_2
      L13_2 = L13_2.isDarkSide
      L13_2, L14_2 = L13_2(L14_2)
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L10_2 = L1_2
      L9_2 = L1_2.addChild
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.addChild
      L11_2 = ui
      L11_2 = L11_2.DummyText
      L12_2 = L11_2
      L11_2 = L11_2.new
      L13_2 = {}
      L13_2.name = "text"
      L13_2.text = "Editor"
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
  L8_2 = gamelua
  L8_2 = L8_2.deviceModel
  if L8_2 == "windows" then
    L8_2 = ui
    L8_2 = L8_2.ScallableButton
    L9_2 = L8_2
    L8_2 = L8_2.new
    L8_2 = L8_2(L9_2)
    L8_2.name = "updateButton"
    L10_2 = L8_2
    L9_2 = L8_2.setImage
    L11_2 = gamelua
    L11_2 = L11_2.getButtonImageName
    L12_2 = "updateButton"
    L13_2 = gamelua
    L13_2 = L13_2.SettingsWrapper
    L14_2 = L13_2
    L13_2 = L13_2.isDarkSide
    L13_2, L14_2 = L13_2(L14_2)
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2.returnValue = "OPEN_UPDATE_WINDOW"
    L8_2.clickSound = "ButtonProceed"
    L8_2.visible = false
    L9_2 = gamelua
    L9_2 = L9_2.g_updateAvailable
    if L9_2 then
      L8_2.visible = true
    end
    L10_2 = L1_2
    L9_2 = L1_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L8_2 = gamelua
  L8_2 = L8_2.isIOSFree
  L8_2 = L8_2()
  if L8_2 then
    L8_2 = ui
    L8_2 = L8_2.ScallableButton
    L9_2 = L8_2
    L8_2 = L8_2.new
    L8_2 = L8_2(L9_2)
    L8_2.name = "upsellButton"
    L10_2 = L8_2
    L9_2 = L8_2.setImage
    L11_2 = "BUTTON_GET_FULL_VERSION_WIDE"
    L9_2(L10_2, L11_2)
    L8_2.returnValue = "OPEN_UPSELL"
    L8_2.clickSound = "ButtonProceed"
    L10_2 = L1_2
    L9_2 = L1_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L8_2 = gamelua
  L8_2 = L8_2.cheatsEnabled
  if L8_2 then
    L8_2 = ui
    L8_2 = L8_2.ScallableButton
    L9_2 = L8_2
    L8_2 = L8_2.new
    L8_2 = L8_2(L9_2)
    L8_2.name = "cheatsButton"
    L10_2 = L8_2
    L9_2 = L8_2.setImage
    L11_2 = gamelua
    L11_2 = L11_2.getButtonImageName
    L12_2 = "mainMenuOptionsButton"
    L13_2 = gamelua
    L13_2 = L13_2.SettingsWrapper
    L14_2 = L13_2
    L13_2 = L13_2.isDarkSide
    L13_2, L14_2 = L13_2(L14_2)
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2.returnValue = "OPEN_CHEATS_POPUP"
    L10_2 = L1_2
    L9_2 = L1_2.addChild
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = ui
    L9_2 = L9_2.DummyText
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L11_2.name = "text"
    L11_2.text = "QA"
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.setScale
    L12_2 = 1.5
    L10_2(L11_2, L12_2)
    L11_2 = L8_2
    L10_2 = L8_2.addChild
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L8_2 = g_loadTimed
  if not L8_2 then
    L8_2 = true
    g_loadTimed = L8_2
    L8_2 = gamelua
    L8_2 = L8_2.logFlurryTimerEvent
    L9_2 = "Loading time - splash to menu"
    L8_2(L9_2)
    L8_2 = _G
    L8_2 = L8_2.iap
    L8_2 = L8_2.native_initialize
    L8_2()
  end
  L8_2 = ui
  L8_2 = L8_2.ImageButton
  L9_2 = L8_2
  L8_2 = L8_2.new
  L8_2 = L8_2(L9_2)
  L8_2.name = "ingameNative"
  L8_2.returnValue = "OPEN_AD_LINK"
  L8_2.activateOnRelease = true
  L10_2 = L8_2
  L9_2 = L8_2.setImage
  L11_2 = "AD_InGameNative.NativeCrosspromo"
  L9_2(L10_2, L11_2)
  L10_2 = L1_2
  L9_2 = L1_2.addChild
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  A0_2.ingameNative = L8_2
end

L0_1.init = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = isGameCenterSupported
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = releaseBuild
    if L2_2 then
      goto lbl_13
    end
    L2_2 = iOS
    if not L2_2 then
      goto lbl_13
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.initGameCenter
  L2_2(L3_2)
  ::lbl_13::
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "trailerButton"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "mainMenuVideoButton"
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2, L8_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.returnValue = "SHOW_VIDEO"
  L4_2 = A1_2
  L3_2 = A1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

L0_1.createRightOptionSliderButtons = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = ui
  L2_2 = L2_2.ScallableButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "creditsButton"
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "mainMenuCreditsButton"
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2.returnValue = "GOTO_CREDITS"
  L2_2.clickSound = "ButtonProceed"
  L4_2 = A1_2
  L3_2 = A1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.ToggleButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L3_2.name = "soundButton"
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = {}
  L7_2 = gamelua
  L7_2 = L7_2.getButtonImageName
  L8_2 = "mainMenuSoundsOnButton"
  L9_2 = gamelua
  L9_2 = L9_2.SettingsWrapper
  L10_2 = L9_2
  L9_2 = L9_2.isDarkSide
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "mainMenuSoundsOffButton"
  L10_2 = gamelua
  L10_2 = L10_2.SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.isDarkSide
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L4_2(L5_2, L6_2)
  L3_2.returnValue = "TOGGLE_SOUND"
  L5_2 = A1_2
  L4_2 = A1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.isDolbySupported
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = ui
    L4_2 = L4_2.ToggleButton
    L5_2 = L4_2
    L4_2 = L4_2.new
    L4_2 = L4_2(L5_2)
    L4_2.name = "dolbyButton"
    L6_2 = L4_2
    L5_2 = L4_2.setImage
    L7_2 = {}
    L8_2 = gamelua
    L8_2 = L8_2.getButtonImageName
    L9_2 = "mainMenuDolbyOnButton"
    L10_2 = gamelua
    L10_2 = L10_2.SettingsWrapper
    L11_2 = L10_2
    L10_2 = L10_2.isDarkSide
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = gamelua
    L9_2 = L9_2.getButtonImageName
    L10_2 = "mainMenuDolbyOnButton"
    L11_2 = gamelua
    L11_2 = L11_2.SettingsWrapper
    L12_2 = L11_2
    L11_2 = L11_2.isDarkSide
    L11_2, L12_2 = L11_2(L12_2)
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L7_2[4] = L11_2
    L7_2[5] = L12_2
    L5_2(L6_2, L7_2)
    L4_2.returnValue = "TOGGLE_DOLBY"
    L6_2 = A1_2
    L5_2 = A1_2.addChild
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L4_2 = ui
  L4_2 = L4_2.ToggleButton
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L4_2.name = "hintsButton"
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = {}
  L8_2 = gamelua
  L8_2 = L8_2.getButtonImageName
  L9_2 = "mainMenuHintsOnButton"
  L10_2 = gamelua
  L10_2 = L10_2.SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.isDarkSide
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = gamelua
  L9_2 = L9_2.getButtonImageName
  L10_2 = "mainMenuHintsOffButton"
  L11_2 = gamelua
  L11_2 = L11_2.SettingsWrapper
  L12_2 = L11_2
  L11_2 = L11_2.isDarkSide
  L11_2, L12_2 = L11_2(L12_2)
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L5_2(L6_2, L7_2)
  L4_2.returnValue = "TOGGLE_HINTS"
  L6_2 = L4_2
  L5_2 = L4_2.setState
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.getHintsEnabled
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = 1
    if L7_2 then
      goto lbl_121
    end
  end
  L7_2 = 2
  ::lbl_121::
  L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L5_2 = A1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = MainMenu
  L6_2 = L5_2
  L5_2 = L5_2.showJengaCodes
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = ui
    L5_2 = L5_2.ScallableButton
    L6_2 = L5_2
    L5_2 = L5_2.new
    L5_2 = L5_2(L6_2)
    L5_2.name = "showKeyboardButton"
    L7_2 = L5_2
    L6_2 = L5_2.setImage
    L8_2 = gamelua
    L8_2 = L8_2.getButtonImageName
    L9_2 = "mainMenuKeyboardButton"
    L10_2 = gamelua
    L10_2 = L10_2.SettingsWrapper
    L11_2 = L10_2
    L10_2 = L10_2.isDarkSide
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2.returnValue = "SHOW_KEYBOARD"
    L7_2 = A1_2
    L6_2 = A1_2.addChild
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L5_2 = isGameCenterSupported
  L5_2 = L5_2()
  if not L5_2 then
    L5_2 = releaseBuild
    if L5_2 then
      goto lbl_161
    end
    L5_2 = iOS
    if not L5_2 then
      goto lbl_161
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.initGameCenter
  L5_2(L6_2)
  ::lbl_161::
  L5_2 = gamelua
  L5_2 = L5_2.isPCVersion
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = gamelua
    L5_2 = L5_2.deviceModel
    if L5_2 ~= "metro" then
      L5_2 = ui
      L5_2 = L5_2.ScallableButton
      L6_2 = L5_2
      L5_2 = L5_2.new
      L5_2 = L5_2(L6_2)
      L5_2.name = "fullscreenButton"
      L7_2 = L5_2
      L6_2 = L5_2.setImage
      L8_2 = gamelua
      L8_2 = L8_2.getButtonImageName
      L9_2 = "mainMenuToggleFullscreenButton"
      L10_2 = gamelua
      L10_2 = L10_2.SettingsWrapper
      L11_2 = L10_2
      L10_2 = L10_2.isDarkSide
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2.returnValue = "TOGGLE_FULLSCREEN"
      L7_2 = A1_2
      L6_2 = A1_2.addChild
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end

L0_1.createOptionsSliderButtons = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "playButton"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.setEnabled
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "shopButton"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setEnabled
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "shopButtonGlow"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.setVisible
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = gamelua
  L4_2 = L4_2.menuManager
  L5_2 = L4_2
  L4_2 = L4_2.getRoot
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.getChild
    L7_2 = "currencyShopButton"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.setEnabled
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end

L0_1.disableMainMenu = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "playButton"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.setEnabled
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "shopButton"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setEnabled
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L4_2 = L2_2
  L3_2 = L2_2.getChild
  L5_2 = "claimBadge"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.updateClaimBadgeStatus
    L4_2(L5_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "shopButtonGlow"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setVisible
    L7_2 = gamelua
    L7_2 = L7_2.shouldShowShopGlow
    L7_2, L8_2, L9_2 = L7_2()
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = gamelua
  L5_2 = L5_2.menuManager
  L6_2 = L5_2
  L5_2 = L5_2.getRoot
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.getChild
    L8_2 = "currencyShopButton"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L8_2 = L6_2
      L7_2 = L6_2.setEnabled
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
  end
end

L0_1.enableMainMenu = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_UPDATE_AVAILABLE
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "updateButton"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.setVisible
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.id
    L3_2 = events
    L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
    if L2_2 ~= L3_2 then
      L2_2 = A1_2.id
      L3_2 = events
      L3_2 = L3_2.EID_SHOP_OPENED
      if L2_2 ~= L3_2 then
        L2_2 = A1_2.id
        L3_2 = events
        L3_2 = L3_2.EID_SHOP_CLOSED
        if L2_2 ~= L3_2 then
          goto lbl_40
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "shopButtonGlow"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L4_2 = L2_2
      L3_2 = L2_2.setVisible
      L5_2 = gamelua
      L5_2 = L5_2.shouldShowShopGlow
      L5_2, L6_2, L7_2 = L5_2()
      L3_2(L4_2, L5_2, L6_2, L7_2)
      goto lbl_218
      ::lbl_40::
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_AUDIO_TOGGLED
      if L2_2 == L3_2 then
        L2_2 = gamelua
        L2_2 = L2_2.setAudioButtonState
        L4_2 = A0_2
        L3_2 = A0_2.getChild
        L5_2 = "optionsSlider"
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = L3_2
        L3_2 = L3_2.getChild
        L5_2 = "soundButton"
        L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      else
        L2_2 = A1_2.id
        L3_2 = gamelua
        L3_2 = L3_2.events
        L3_2 = L3_2.EID_TOY_URL_CALLBACK_RECEIVED
        if L2_2 == L3_2 then
          L2_2 = gamelua
          L2_2 = L2_2.menuManager
          L3_2 = L2_2
          L2_2 = L2_2.getRoot
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L4_2 = L2_2
            L3_2 = L2_2.getChild
            L5_2 = "keyBoardFrame"
            L3_2 = L3_2(L4_2, L5_2)
            if L3_2 then
              L3_2.activated = true
              L3_2.timeOut = nil
            end
          end
          L3_2 = A1_2.status
          if L3_2 == "1" then
            A0_2.drawLayer = nil
            L3_2 = gamelua
            L3_2 = L3_2.eventManager
            L4_2 = L3_2
            L3_2 = L3_2.notify
            L5_2 = {}
            L6_2 = gamelua
            L6_2 = L6_2.events
            L6_2 = L6_2.EID_POP_FRAME
            L5_2.id = L6_2
            L5_2.target = "keyBoardFrame"
            L3_2(L4_2, L5_2)
            L3_2 = gamelua
            L3_2 = L3_2.ui
            L3_2 = L3_2.ConfirmPrompt
            L4_2 = L3_2
            L3_2 = L3_2.new
            L5_2 = {}
            L5_2.name = "toyPrompt"
            L6_2 = A1_2.title
            L5_2.title = L6_2
            L6_2 = A1_2.message
            L5_2.content = L6_2
            L5_2.returnValue = "CLOSE"
            L5_2.inMenuSpace = true
            L5_2.hideCloseButton = true
            L3_2 = L3_2(L4_2, L5_2)
            L4_2 = gamelua
            L4_2 = L4_2.eventManager
            L5_2 = L4_2
            L4_2 = L4_2.notify
            L6_2 = {}
            L7_2 = gamelua
            L7_2 = L7_2.events
            L7_2 = L7_2.EID_PUSH_FRAME
            L6_2.id = L7_2
            L6_2.target = L3_2
            L4_2(L5_2, L6_2)
          else
            L3_2 = gamelua
            L3_2 = L3_2.ui
            L3_2 = L3_2.ConfirmPrompt
            L4_2 = L3_2
            L3_2 = L3_2.new
            L5_2 = {}
            L5_2.name = "toyPrompt"
            L6_2 = A1_2.title
            L5_2.title = L6_2
            L6_2 = A1_2.message
            L5_2.content = L6_2
            L5_2.returnValue = "CLOSE"
            L5_2.inMenuSpace = true
            L5_2.hideCloseButton = true
            L3_2 = L3_2(L4_2, L5_2)
            L4_2 = gamelua
            L4_2 = L4_2.eventManager
            L5_2 = L4_2
            L4_2 = L4_2.notify
            L6_2 = {}
            L7_2 = gamelua
            L7_2 = L7_2.events
            L7_2 = L7_2.EID_PUSH_FRAME
            L6_2.id = L7_2
            L6_2.target = L3_2
            L4_2(L5_2, L6_2)
          end
        else
          L2_2 = A1_2.id
          L3_2 = gamelua
          L3_2 = L3_2.events
          L3_2 = L3_2.EID_RESTORE_PURCHASES_CLICKED
          if L2_2 == L3_2 then
            L2_2 = gamelua
            L2_2 = L2_2.eventManager
            L3_2 = L2_2
            L2_2 = L2_2.queueEvent
            L4_2 = {}
            L5_2 = gamelua
            L5_2 = L5_2.events
            L5_2 = L5_2.EID_PUSH_FRAME
            L4_2.id = L5_2
            L5_2 = gamelua
            L5_2 = L5_2.EaglePurchasePage
            L6_2 = L5_2
            L5_2 = L5_2.new
            L5_2 = L5_2(L6_2)
            L4_2.target = L5_2
            L2_2(L3_2, L4_2)
            L3_2 = A0_2
            L2_2 = A0_2.restorePurchases
            L4_2 = "iosPurchaseRestoreCallback"
            L2_2(L3_2, L4_2)
            L2_2 = purchaseRestoreTimer
            purchaseRestoreTimeout = L2_2
          else
            L2_2 = A1_2.id
            L3_2 = events
            L3_2 = L3_2.EID_NEW_SETTINGS_APPLIED
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2.refreshButtonGraphics
              L2_2(L3_2)
            else
              L2_2 = A1_2.id
              L3_2 = events
              L3_2 = L3_2.EID_ROVIO_ID_LOGIN_ACCEPTED
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2.refreshButtonGraphics
                L2_2(L3_2)
              else
                L2_2 = A1_2.id
                L3_2 = events
                L3_2 = L3_2.EID_ROVIO_ID_LOGOUT
                if L2_2 == L3_2 then
                  L3_2 = A0_2
                  L2_2 = A0_2.getChild
                  L4_2 = "rovioLoginButton"
                  L2_2 = L2_2(L3_2, L4_2)
                  L3_2 = L2_2
                  L2_2 = L2_2.setState
                  L4_2 = "NOT_LOGGED"
                  L2_2(L3_2, L4_2)
                  L3_2 = A0_2
                  L2_2 = A0_2.refreshButtonGraphics
                  L2_2(L3_2)
                  L2_2 = gamelua
                  L2_2 = L2_2.rovioAccountAvailable
                  if L2_2 then
                    L2_2 = gamelua
                    L2_2 = L2_2.RovioAccount
                    L2_2 = L2_2.login
                    L3_2 = false
                    L4_2 = false
                    L2_2(L3_2, L4_2)
                  end
                else
                  L2_2 = A1_2.id
                  L3_2 = gamelua
                  L3_2 = L3_2.events
                  L3_2 = L3_2.EID_ROVIO_ID_SHOWING_LOGIN_VIEW
                  if L2_2 == L3_2 then
                  else
                    L2_2 = A1_2.id
                    L3_2 = gamelua
                    L3_2 = L3_2.events
                    L3_2 = L3_2.EID_ROVIO_ID_VIEW_CLOSED
                    if L2_2 == L3_2 then
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_218::
end

L0_1.eventTriggered = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = gamelua
  L2_2 = L2_2.iapRestoreItems
  L3_2 = A1_2
  L2_2(L3_2)
end

L0_1.restorePurchases = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = applyChinaRestictions
  if not L2_2 then
    L2_2 = ui
    L2_2 = L2_2.ScallableButton
    L3_2 = L2_2
    L2_2 = L2_2.new
    L2_2 = L2_2(L3_2)
    L2_2.name = "youtubeButton"
    L4_2 = L2_2
    L3_2 = L2_2.setImage
    L5_2 = "BUTTON_TRAILER_SMALL"
    L3_2(L4_2, L5_2)
    L2_2.returnValue = "GOTO_TRAILER"
    L4_2 = A1_2
    L3_2 = A1_2.addChild
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = ui
    L2_2 = L2_2.ScallableButton
    L3_2 = L2_2
    L2_2 = L2_2.new
    L2_2 = L2_2(L3_2)
    L2_2.name = "yokuButton"
    L4_2 = L2_2
    L3_2 = L2_2.setImage
    L5_2 = "BUTTON_TRAILER_SMALL"
    L3_2(L4_2, L5_2)
    L2_2.returnValue = "GOTO_TRAILER"
    L4_2 = A1_2
    L3_2 = A1_2.addChild
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = gamelua
  L2_2 = L2_2.isEagleEnabled
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = ui
    L2_2 = L2_2.ScallableButton
    L3_2 = L2_2
    L2_2 = L2_2.new
    L2_2 = L2_2(L3_2)
    L2_2.name = "eagleTrailerButton"
    L4_2 = L2_2
    L3_2 = L2_2.setImage
    L5_2 = "BUTTON_MEVIDEO"
    L3_2(L4_2, L5_2)
    L2_2.returnValue = "GOTO_EAGLE_TRAILER"
    L4_2 = A1_2
    L3_2 = A1_2.addChild
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.createExternalSliderButtons = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.isIOSFree
  L2_2 = L2_2()
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "shopButton"
    L2_2 = L2_2(L3_2, L4_2)
    L2_2.visible = A1_2
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "shopButtonGlow"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = gamelua
      L3_2 = L3_2.shouldShowShopGlow
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = A1_2
      end
      L2_2.visible = L3_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "trailerButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "gameLogo"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = false
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsSlider"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsImage"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rightSlider"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rightSliderButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rightOptionsImage"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "playButton"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.visible = A1_2
  L2_2 = gamelua
  L2_2 = L2_2.isIOSFree
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.getChild
    L4_2 = "upsellButton"
    L2_2 = L2_2(L3_2, L4_2)
    L2_2.visible = A1_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rightSlider"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.getChild
  L4_2 = "gcLeaderboardsButton"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2.visible = A1_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "rightSlider"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.getChild
  L5_2 = "gcAchievementButton"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2.visible = A1_2
  end
end

L0_1.setMainmenuItemsVisible = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_UPDATE_AVAILABLE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_AUDIO_TOGGLED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_TOY_URL_CALLBACK_RECEIVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_RESTORE_PURCHASES_BUTTON_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_RESTORE_PURCHASES_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_LOGIN_ACCEPTED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_LOGOUT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_SHOWING_LOGIN_VIEW
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_VIEW_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NEW_SETTINGS_APPLIED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.gamerService
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_GAMERSERVICE_ACTION_COMPLETE
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.gamerService
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.loadAssets
    L2_2 = {}
    L3_2 = "ACHIEVEMENTS"
    L2_2[1] = L3_2
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.gamerService
    L2_2 = L1_2
    L1_2 = L1_2.login
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.refreshMiddleButtons
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.setAudioButtonState
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsSlider"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.getChild
  L4_2 = "soundButton"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "optionsButton"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.getChild
  L3_2 = "optionsImage"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.angle = 0
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_MAIN_MENU_ENTERED
  L3_2.id = L4_2
  L4_2 = MainMenu
  L4_2 = L4_2.firstEntrance
  L3_2.firstEntrance = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = MainMenuRoot
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.PCCheckForUpdatesOnce
  L1_2()
  L1_2 = gamelua
  L1_2 = L1_2.RovioShelf
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.RovioShelf
    L1_2 = L1_2.setAllowed
    L2_2 = true
    L1_2(L2_2)
  end
  L1_2 = MainMenu
  L1_2 = L1_2.firstEntrance
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.setCanShowGDPRDialogs
    L2_2 = true
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.initAndShowGDPRDialogs
    L1_2()
  end
end

L0_1.onEntry = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rovioLoginButton"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setState
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.setLoginState = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "playButton"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = gamelua
  L4_2 = L4_2.getButtonImageName
  L5_2 = "mainMenuPlayButton"
  L6_2 = gamelua
  L6_2 = L6_2.SettingsWrapper
  L7_2 = L6_2
  L6_2 = L6_2.isDarkSide
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "optionsButton"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = gamelua
  L5_2 = L5_2.getButtonImageName
  L6_2 = "mainMenuOptionsButton"
  L7_2 = gamelua
  L7_2 = L7_2.SettingsWrapper
  L8_2 = L7_2
  L7_2 = L7_2.isDarkSide
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "optionsImage"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = gamelua
  L6_2 = L6_2.getButtonImageName
  L7_2 = "mainMenuOptionsIcon"
  L8_2 = gamelua
  L8_2 = L8_2.SettingsWrapper
  L9_2 = L8_2
  L8_2 = L8_2.isDarkSide
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "shopButton"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = gamelua
  L7_2 = L7_2.getButtonImageName
  L8_2 = "shopButton"
  L9_2 = gamelua
  L9_2 = L9_2.SettingsWrapper
  L10_2 = L9_2
  L9_2 = L9_2.isDarkSide
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = L4_2
  L5_2 = L4_2.getChild
  L7_2 = "claimBadge"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.updateClaimBadgeStatus
    L6_2(L7_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "shopButtonGlow"
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L8_2 = L6_2
    L7_2 = L6_2.setVisible
    L9_2 = gamelua
    L9_2 = L9_2.shouldShowShopGlow
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "creditsButton"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.setImage
  L10_2 = gamelua
  L10_2 = L10_2.getButtonImageName
  L11_2 = "mainMenuCreditsButton"
  L12_2 = gamelua
  L12_2 = L12_2.SettingsWrapper
  L13_2 = L12_2
  L12_2 = L12_2.isDarkSide
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2)
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "soundButton"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L8_2
  L9_2 = L8_2.setImage
  L11_2 = {}
  L12_2 = gamelua
  L12_2 = L12_2.getButtonImageName
  L13_2 = "mainMenuSoundsOnButton"
  L14_2 = gamelua
  L14_2 = L14_2.SettingsWrapper
  L15_2 = L14_2
  L14_2 = L14_2.isDarkSide
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L13_2 = gamelua
  L13_2 = L13_2.getButtonImageName
  L14_2 = "mainMenuSoundsOffButton"
  L15_2 = gamelua
  L15_2 = L15_2.SettingsWrapper
  L16_2 = L15_2
  L15_2 = L15_2.isDarkSide
  L15_2, L16_2, L17_2 = L15_2(L16_2)
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L9_2(L10_2, L11_2)
  L9_2 = gamelua
  L9_2 = L9_2.isDolbySupported
  L9_2 = L9_2()
  if L9_2 then
    L10_2 = A0_2
    L9_2 = A0_2.getChild
    L11_2 = "dolbyButton"
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.setImage
    L12_2 = {}
    L13_2 = gamelua
    L13_2 = L13_2.getButtonImageName
    L14_2 = "mainMenuDolbyOnButton"
    L15_2 = gamelua
    L15_2 = L15_2.SettingsWrapper
    L16_2 = L15_2
    L15_2 = L15_2.isDarkSide
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = gamelua
    L14_2 = L14_2.getButtonImageName
    L15_2 = "mainMenuDolbyOnButton"
    L16_2 = gamelua
    L16_2 = L16_2.SettingsWrapper
    L17_2 = L16_2
    L16_2 = L16_2.isDarkSide
    L16_2, L17_2 = L16_2(L17_2)
    L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2)
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L12_2[5] = L17_2
    L10_2(L11_2, L12_2)
  end
  L10_2 = A0_2
  L9_2 = A0_2.getChild
  L11_2 = "hintsButton"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = L9_2
  L10_2 = L9_2.setImage
  L12_2 = {}
  L13_2 = gamelua
  L13_2 = L13_2.getButtonImageName
  L14_2 = "mainMenuHintsOnButton"
  L15_2 = gamelua
  L15_2 = L15_2.SettingsWrapper
  L16_2 = L15_2
  L15_2 = L15_2.isDarkSide
  L15_2, L16_2, L17_2 = L15_2(L16_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L14_2 = gamelua
  L14_2 = L14_2.getButtonImageName
  L15_2 = "mainMenuHintsOffButton"
  L16_2 = gamelua
  L16_2 = L16_2.SettingsWrapper
  L17_2 = L16_2
  L16_2 = L16_2.isDarkSide
  L16_2, L17_2 = L16_2(L17_2)
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2)
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L10_2(L11_2, L12_2)
  L10_2 = MainMenu
  L11_2 = L10_2
  L10_2 = L10_2.showJengaCodes
  L10_2 = L10_2(L11_2)
  if L10_2 then
    L11_2 = A0_2
    L10_2 = A0_2.getChild
    L12_2 = "showKeyboardButton"
    L10_2 = L10_2(L11_2, L12_2)
    L12_2 = L10_2
    L11_2 = L10_2.setImage
    L13_2 = gamelua
    L13_2 = L13_2.getButtonImageName
    L14_2 = "mainMenuKeyboardButton"
    L15_2 = gamelua
    L15_2 = L15_2.SettingsWrapper
    L16_2 = L15_2
    L15_2 = L15_2.isDarkSide
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L11_2 = A0_2
  L10_2 = A0_2.getChild
  L12_2 = "cheatsButton"
  L10_2 = L10_2(L11_2, L12_2)
  if L10_2 then
    L12_2 = L10_2
    L11_2 = L10_2.setImage
    L13_2 = gamelua
    L13_2 = L13_2.getButtonImageName
    L14_2 = "mainMenuOptionsButton"
    L15_2 = gamelua
    L15_2 = L15_2.SettingsWrapper
    L16_2 = L15_2
    L15_2 = L15_2.isDarkSide
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L12_2 = A0_2
  L11_2 = A0_2.getChild
  L13_2 = "channelButton"
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L13_2 = L11_2
    L12_2 = L11_2.setImage
    L14_2 = gamelua
    L14_2 = L14_2.getButtonImageName
    L15_2 = "toonsBackgroundButton"
    L16_2 = gamelua
    L16_2 = L16_2.SettingsWrapper
    L17_2 = L16_2
    L16_2 = L16_2.isDarkSide
    L16_2, L17_2 = L16_2(L17_2)
    L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "rovioLoginButton"
  L12_2 = L12_2(L13_2, L14_2)
  if L12_2 then
    L14_2 = L12_2
    L13_2 = L12_2.refreshButtonGraphics
    L13_2(L14_2)
  end
end

L0_1.refreshButtonGraphics = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "rovioLoginButton"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setEnabled
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.enableLoginButton = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2.mid_buttons = L1_2
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.mid_buttons
  L3_2 = "channelButton"
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.rovioAccountEnabled
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.rovioAccountAvailable
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.isIDSoftLaunchAvailable
      L1_2 = L1_2()
      if not L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.SettingsWrapper
        L2_2 = L1_2
        L1_2 = L1_2.hasPlayerRegistered
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_40
        end
      end
      L2_2 = A0_2
      L1_2 = A0_2.getChild
      L3_2 = "rovioLoginButton"
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2.visible = true
        L2_2 = _G
        L2_2 = L2_2.table
        L2_2 = L2_2.insert
        L3_2 = A0_2.mid_buttons
        L4_2 = "rovioLoginButton"
        L2_2(L3_2, L4_2)
      end
    end
  end
  ::lbl_40::
  L1_2 = isGameCenterSupported
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = releaseBuild
    if L1_2 then
      goto lbl_52
    end
    L1_2 = iOS
    if not L1_2 then
      goto lbl_52
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.refreshGameCenterButtons
  L1_2(L2_2)
  ::lbl_52::
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
end

L0_1.refreshMiddleButtons = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L1_2 = MainMenuRoot
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "panningFrame"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "playButton"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getString
  L5_2 = "TEXTS_BASIC"
  L6_2 = "TEXT_PLAY_SPRITE"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 * 0.5
  L3_2.x = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.screenHeight
  L5_2 = L5_2 * 0.555
  L3_2.y = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.gamerService
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.getChild
    L7_2 = "btnBuy"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.setScale
      L8_2 = L1_2 * 1.2
      L6_2(L7_2, L8_2)
      L6_2 = gamelua
      L6_2 = L6_2.screenWidth
      L6_2 = L6_2 * 0.5
      L5_2.x = L6_2
      L6_2 = gamelua
      L6_2 = L6_2.screenHeight
      L6_2 = L6_2 * 0.85
      L5_2.y = L6_2
    end
    L7_2 = A0_2
    L6_2 = A0_2.updateGamerServiceButtons
    L6_2(L7_2)
  end
  L5_2 = gamelua
  L5_2 = L5_2.isIOSFree
  L5_2 = L5_2()
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.getChild
    L7_2 = "upsellButton"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = gamelua
    L6_2 = L6_2.screenWidth
    L6_2 = L6_2 * 0.4
    L5_2.x = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.screenHeight
    L6_2 = L6_2 * 0.555
    L5_2.y = L6_2
  end
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpriteBounds
  L6_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2.width = L5_2
  L7_2 = L6_2 * 1.7
  L3_2.height = L7_2
  L8_2 = L3_2
  L7_2 = L3_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.getChild
  L9_2 = "gameLogo"
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 * 0.2
  L7_2.y = L8_2
  L9_2 = L7_2
  L8_2 = L7_2.setScale
  L10_2 = L1_2 * 0.9
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.getChild
  L10_2 = "ingameNative"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = gamelua
  L9_2 = L9_2.screenWidth
  L9_2 = L9_2 * 0.85
  L8_2.x = L9_2
  L9_2 = gamelua
  L9_2 = L9_2.screenHeight
  L9_2 = L9_2 * 0.6
  L8_2.y = L9_2
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getSpriteBounds
  L10_2 = L8_2.image
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = 0
  if 0 < L10_2 then
    L12_2 = gamelua
    L12_2 = L12_2.screenHeight
    L12_2 = L12_2 / L10_2
    L11_2 = L12_2 * 0.5
  end
  L13_2 = L8_2
  L12_2 = L8_2.setScale
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.getSpriteBounds
  L13_2 = "BTN_BG_LIGHT"
  L12_2, L13_2 = L12_2(L13_2)
  L14_2 = L12_2 * L1_2
  L13_2 = L13_2 * L1_2
  L12_2 = L14_2
  L15_2 = A0_2
  L14_2 = A0_2.getChild
  L16_2 = "optionsButton"
  L14_2 = L14_2(L15_2, L16_2)
  L16_2 = A0_2
  L15_2 = A0_2.getChild
  L17_2 = "optionsSlider"
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = L12_2 * 0.5
  L15_2.width = L16_2
  L16_2 = L13_2 * 0.5
  L15_2.bottom_margin = L16_2
  L15_2.element_height = L13_2
  L16_2 = L12_2 * 0.6
  L14_2.x = L16_2
  L16_2 = gamelua
  L16_2 = L16_2.screenHeight
  L17_2 = L13_2 * 0.6
  L16_2 = L16_2 - L17_2
  L14_2.y = L16_2
  L17_2 = L14_2
  L16_2 = L14_2.setScale
  L18_2 = L1_2
  L16_2(L17_2, L18_2)
  L16_2 = L14_2.y
  L15_2.y = L16_2
  L16_2 = L14_2.x
  L15_2.x = L16_2
  L16_2 = _G
  L16_2 = L16_2.pairs
  L17_2 = L15_2.children
  L16_2, L17_2, L18_2 = L16_2(L17_2)
  for L19_2, L20_2 in L16_2, L17_2, L18_2 do
    L22_2 = L20_2
    L21_2 = L20_2.setScale
    L23_2 = L1_2
    L21_2(L22_2, L23_2)
  end
  L16_2 = gamelua
  L16_2 = L16_2.isPCVersion
  L16_2 = L16_2()
  if L16_2 then
    L16_2 = L12_2 * 1.8
    L14_2.x = L16_2
    L16_2 = L14_2.x
    L15_2.x = L16_2
  end
  L17_2 = A0_2
  L16_2 = A0_2.getChild
  L18_2 = "editor_button"
  L16_2 = L16_2(L17_2, L18_2)
  if L16_2 then
    L17_2 = L16_2.px
    L17_2 = L17_2 * L1_2
    L16_2.x = L17_2
    L17_2 = L16_2.py
    L17_2 = L17_2 * L1_2
    L16_2.y = L17_2
    L18_2 = L16_2
    L17_2 = L16_2.setScale
    L19_2 = L1_2
    L17_2(L18_2, L19_2)
  end
  L17_2 = L12_2 * 1.1
  L18_2 = gamelua
  L18_2 = L18_2.screenWidth
  L18_2 = L18_2 * 0.5
  L19_2 = A0_2.mid_buttons
  L19_2 = #L19_2
  L19_2 = L19_2 - 1
  L19_2 = L19_2 * 0.5
  L19_2 = L19_2 * L17_2
  L18_2 = L18_2 - L19_2
  L19_2 = _G
  L19_2 = L19_2.ipairs
  L20_2 = A0_2.mid_buttons
  L19_2, L20_2, L21_2 = L19_2(L20_2)
  for L22_2, L23_2 in L19_2, L20_2, L21_2 do
    L25_2 = A0_2
    L24_2 = A0_2.getChild
    L26_2 = L23_2
    L24_2 = L24_2(L25_2, L26_2)
    L24_2.visible = true
    L25_2 = L22_2 - 1
    L25_2 = L17_2 * L25_2
    L25_2 = L18_2 + L25_2
    L24_2.x = L25_2
    L25_2 = 0
    L26_2 = gamelua
    L26_2 = L26_2.FrameUtils
    L27_2 = L26_2
    L26_2 = L26_2.layoutWithScaledAnchors
    L28_2 = {}
    L29_2 = L24_2.w
    L29_2 = L29_2 * L1_2
    L29_2 = L29_2 * 0.1
    L28_2.padding = L29_2
    L28_2.item = L24_2
    L29_2 = gamelua
    L29_2 = L29_2.screenWidth
    L28_2.w = L29_2
    L29_2 = gamelua
    L29_2 = L29_2.screenHeight
    L28_2.h = L29_2
    L28_2.vanchor = "BOTTOM"
    L28_2.hanchor = "RIGHT"
    L26_2, L27_2 = L26_2(L27_2, L28_2)
    L24_2.y = L27_2
    L25_2 = L26_2
    L27_2 = L24_2
    L26_2 = L24_2.setScale
    L28_2 = L1_2
    L26_2(L27_2, L28_2)
    L27_2 = L24_2
    L26_2 = L24_2.getChild
    L28_2 = "claimBadge"
    L26_2 = L26_2(L27_2, L28_2)
    if L26_2 then
      L27_2 = _G
      L27_2 = L27_2.res
      L27_2 = L27_2.getSpriteBounds
      L28_2 = "BTN_SHOP"
      L27_2, L28_2 = L27_2(L28_2)
      L29_2 = L27_2 * 0.3
      L29_2 = L29_2 * L1_2
      L26_2.x = L29_2
      L29_2 = -L28_2
      L29_2 = L29_2 * 0.4
      L29_2 = L29_2 * L1_2
      L26_2.y = L29_2
      L30_2 = L26_2
      L29_2 = L26_2.setScale
      L31_2 = L1_2
      L29_2(L30_2, L31_2)
      L30_2 = L26_2
      L29_2 = L26_2.layout
      L29_2(L30_2)
    end
  end
  L19_2 = gamelua
  L19_2 = L19_2.channelEnabled
  if L19_2 then
    L19_2 = gamelua
    L19_2 = L19_2.isIOSVersion
    L19_2 = L19_2()
    if not L19_2 then
      L19_2 = gamelua
      L19_2 = L19_2.isAndroidVersion
      L19_2 = L19_2()
      if not L19_2 then
        goto lbl_281
      end
    end
    L20_2 = A0_2
    L19_2 = A0_2.getChild
    L21_2 = "channelButton"
    L19_2 = L19_2(L20_2, L21_2)
    L21_2 = A0_2
    L20_2 = A0_2.getChild
    L22_2 = "rovioLoginButton"
    L20_2 = L20_2(L21_2, L22_2)
    L22_2 = L19_2
    L21_2 = L19_2.setScale
    L23_2 = L1_2 * 0.5
    L21_2(L22_2, L23_2)
    L21_2 = L20_2.y
    L19_2.y = L21_2
  end
  ::lbl_281::
  L20_2 = A0_2
  L19_2 = A0_2.getChild
  L21_2 = "shopButton"
  L19_2 = L19_2(L20_2, L21_2)
  L21_2 = L19_2
  L20_2 = L19_2.setScale
  L22_2 = L1_2
  L20_2(L21_2, L22_2)
  L20_2 = gamelua
  L20_2 = L20_2.screenWidth
  L21_2 = L19_2.w
  L21_2 = L21_2 * 0.6
  L21_2 = L21_2 * L1_2
  L20_2 = L20_2 - L21_2
  L19_2.x = L20_2
  L20_2 = gamelua
  L20_2 = L20_2.screenHeight
  L21_2 = L19_2.h
  L21_2 = L21_2 * 0.6
  L21_2 = L21_2 * L1_2
  L20_2 = L20_2 - L21_2
  L19_2.y = L20_2
  L21_2 = A0_2
  L20_2 = A0_2.getChild
  L22_2 = "shopButtonGlow"
  L20_2 = L20_2(L21_2, L22_2)
  if L20_2 then
    L21_2 = L19_2.x
    L20_2.x = L21_2
    L21_2 = L19_2.y
    L20_2.y = L21_2
    L22_2 = L20_2
    L21_2 = L20_2.setScale
    L23_2 = L1_2 * 0.5
    L21_2(L22_2, L23_2)
  end
  L22_2 = A0_2
  L21_2 = A0_2.getChild
  L23_2 = "registerButton"
  L21_2 = L21_2(L22_2, L23_2)
  if L21_2 then
    L23_2 = L21_2
    L22_2 = L21_2.setScale
    L24_2 = L1_2
    L22_2(L23_2, L24_2)
    L22_2 = gamelua
    L22_2 = L22_2.screenWidth
    L22_2 = L22_2 * 0.5
    L21_2.x = L22_2
    L22_2 = gamelua
    L22_2 = L22_2.screenHeight
    L23_2 = L13_2 * 0.82
    L22_2 = L22_2 - L23_2
    L21_2.y = L22_2
  end
  L23_2 = A0_2
  L22_2 = A0_2.getChild
  L24_2 = "exitButton"
  L22_2 = L22_2(L23_2, L24_2)
  if L22_2 then
    L23_2 = L12_2 * 0.6
    L22_2.x = L23_2
    L23_2 = gamelua
    L23_2 = L23_2.screenHeight
    L24_2 = L13_2 * 0.6
    L23_2 = L23_2 - L24_2
    L22_2.y = L23_2
    L24_2 = L22_2
    L23_2 = L22_2.setScale
    L25_2 = L1_2
    L23_2(L24_2, L25_2)
  end
  L24_2 = A0_2
  L23_2 = A0_2.getChild
  L25_2 = "updateButton"
  L23_2 = L23_2(L24_2, L25_2)
  if L23_2 then
    L25_2 = L23_2
    L24_2 = L23_2.setScale
    L26_2 = L1_2
    L24_2(L25_2, L26_2)
    L24_2 = L12_2 * 0.6
    L23_2.x = L24_2
    L24_2 = gamelua
    L24_2 = L24_2.screenHeight
    L25_2 = L13_2 * 1.7
    L24_2 = L24_2 - L25_2
    L23_2.y = L24_2
  end
  L25_2 = A0_2
  L24_2 = A0_2.getChild
  L26_2 = "eaglesAvailable"
  L24_2 = L24_2(L25_2, L26_2)
  if L24_2 then
    L24_2.visible = false
  end
  L26_2 = A0_2
  L25_2 = A0_2.getChild
  L27_2 = "cheatsButton"
  L25_2 = L25_2(L26_2, L27_2)
  if L25_2 then
    L26_2 = gamelua
    L26_2 = L26_2.screenWidth
    L26_2 = L26_2 * 0.5
    L25_2.x = L26_2
    L26_2 = L25_2.h
    L26_2 = L26_2 * 0.5
    L26_2 = L26_2 * L1_2
    L25_2.y = L26_2
    L27_2 = L25_2
    L26_2 = L25_2.setScale
    L28_2 = L1_2
    L26_2(L27_2, L28_2)
  end
end

L0_1.layout = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2
  L1_2 = gamelua
  L1_2 = L1_2.isIOSVersion
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = false
    return L1_2
  else
    L1_2 = true
    return L1_2
  end
end

L0_1.showJengaCodes = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.RovioShelf
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.RovioShelf
    L4_2 = L4_2.isCapturingInput
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = "BLOCK"
      L5_2 = nil
      L6_2 = nil
      return L4_2, L5_2, L6_2
    end
  end
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "KEY_BACK" or A2_2 == "ESCAPE") then
    L4_2 = gamelua
    L4_2 = L4_2.g_showingChannelOrID
    if not L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = gamelua
      L7_2 = L7_2.events
      L7_2 = L7_2.EID_EXIT_GAME
      L6_2.id = L7_2
      L4_2(L5_2, L6_2)
    end
  end
end

L0_1.onKeyEvent = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = MainMenu
  L3_2 = L3_2.firstEntrance
  if L3_2 then
    L3_2 = MainMenu
    L3_2.firstEntrance = false
  end
  L3_2 = A0_2.carTimer
  if not L3_2 then
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.random
    L3_2 = L3_2()
    L3_2 = L3_2 * 5
  end
  L3_2 = L3_2 - A1_2
  A0_2.carTimer = L3_2
  L3_2 = A0_2.carTimer
  if L3_2 < 0 then
    A0_2.carTimer = nil
    L3_2 = ui
    L3_2 = L3_2.MainMenuCar
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L6_2 = A0_2.carFrame
    L5_2.parent = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2.noCharactersAvailable
    if not L4_2 then
      L4_2 = A0_2.carFrame
      L5_2 = L4_2
      L4_2 = L4_2.addChild
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L5_2 = L3_2
      L4_2 = L3_2.layout
      L4_2(L5_2)
    end
  end
  L3_2 = gamelua
  L3_2 = L3_2.RovioShelf
  if L3_2 then
    L3_2 = ui
    L3_2 = L3_2.RovioIDSignOutPage
    if L3_2 then
      L3_2 = ui
      L3_2 = L3_2.RovioIDSignOutPage
      L3_2 = L3_2.isShown
      if L3_2 then
        goto lbl_93
      end
    end
    L3_2 = ui
    L3_2 = L3_2.RovioIDConflictPage
    if L3_2 then
      L3_2 = ui
      L3_2 = L3_2.RovioIDConflictPage
      L3_2 = L3_2.isShown
      if L3_2 then
        goto lbl_93
      end
    end
    L3_2 = ui
    L3_2 = L3_2.RovioIDMergeWarningPage
    if L3_2 then
      L3_2 = ui
      L3_2 = L3_2.RovioIDMergeWarningPage
      L3_2 = L3_2.isShown
      if L3_2 then
        goto lbl_93
      end
    end
    L3_2 = ui
    L3_2 = L3_2.RovioIDMergePage
    if L3_2 then
      L3_2 = ui
      L3_2 = L3_2.RovioIDMergePage
      L3_2 = L3_2.isShown
      if L3_2 then
        goto lbl_93
      end
    end
    L3_2 = ui
    L3_2 = L3_2.RovioIDProfilePage
    if L3_2 then
      L3_2 = ui
      L3_2 = L3_2.RovioIDProfilePage
      L3_2 = L3_2.isShown
      if L3_2 then
        goto lbl_93
      end
    end
    L3_2 = ui
    L3_2 = L3_2.RovioIDSignedOutPage
    if L3_2 then
      L3_2 = ui
      L3_2 = L3_2.RovioIDSignedOutPage
      L3_2 = L3_2.isShown
    end
    ::lbl_93::
    L4_2 = gamelua
    L4_2 = L4_2.isShopClosed
    L4_2 = L4_2()
    L4_2 = not L4_2
    L5_2 = 0
    L6_2 = gamelua
    L6_2 = L6_2.menuManager
    if L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.menuManager
      L7_2 = L6_2
      L6_2 = L6_2.getRoot
      L6_2 = L6_2(L7_2)
      if L6_2 ~= nil then
        L6_2 = gamelua
        L6_2 = L6_2.menuManager
        L7_2 = L6_2
        L6_2 = L6_2.getRoot
        L6_2 = L6_2(L7_2)
        L7_2 = L6_2.children
        L5_2 = #L7_2
      end
    end
    L6_2 = not L3_2 and not L4_2 and not (2 < L5_2)
    L7_2 = A0_2.rovioShelfIsAllowed
    if L7_2 ~= L6_2 then
      A0_2.rovioShelfIsAllowed = L6_2
      L7_2 = gamelua
      L7_2 = L7_2.RovioShelf
      L7_2 = L7_2.setAllowed
      L8_2 = L6_2
      L7_2(L8_2)
    end
    L7_2 = gamelua
    L7_2 = L7_2.g_rovioShelfOpened
    if L7_2 ~= true then
      L7_2 = gamelua
      L7_2 = L7_2.SettingsWrapper
      L8_2 = L7_2
      L7_2 = L7_2.getNumberOfStartups
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2 % 3
      if L7_2 == 0 then
        L7_2 = gamelua
        L7_2 = L7_2.SettingsWrapper
        L8_2 = L7_2
        L7_2 = L7_2.getShelfOpenCount
        L7_2 = L7_2(L8_2)
        if L7_2 < 2 then
          L7_2 = gamelua
          L7_2 = L7_2.RovioShelf
          L7_2 = L7_2.openShelf
          L7_2 = L7_2()
          L8_2 = gamelua
          L8_2.g_rovioShelfOpened = L7_2
          if L7_2 then
            L8_2 = gamelua
            L8_2 = L8_2.SettingsWrapper
            L9_2 = L8_2
            L8_2 = L8_2.increaseShelfOpenCount
            L8_2(L9_2)
          end
        end
      end
    end
  end
  L3_2 = A0_2.ingameNative
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.isShopClosed
    L3_2 = L3_2()
    L3_2 = not L3_2
    L4_2 = A0_2.ingameNative
    L5_2 = not L3_2
    L4_2.visible = L5_2
  end
  L3_2 = MainMenuRoot
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = purchaseRestoreTimeout
  if L3_2 ~= nil then
    L3_2 = purchaseRestoreTimeout
    L3_2 = L3_2 - A1_2
    purchaseRestoreTimeout = L3_2
    L3_2 = purchaseRestoreTimeout
    if L3_2 <= 0 then
      L3_2 = gamelua
      L3_2 = L3_2.isEaglePurchaseSpinnerPageShowing
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.eventManager
        L4_2 = L3_2
        L3_2 = L3_2.notify
        L5_2 = {}
        L6_2 = gamelua
        L6_2 = L6_2.events
        L6_2 = L6_2.EID_POP_FRAME
        L5_2.id = L6_2
        L5_2.target = "eaglePurchasePage"
        L3_2(L4_2, L5_2)
        L3_2 = nil
        purchaseRestoreTimeout = L3_2
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.updateGameCenter
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.drawLayer
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.ui
    L3_2 = L3_2.Frame
    L3_2 = L3_2.draw
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.draw = L1_1
L0_1 = MainMenu

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = gamelua
  L4_2 = L4_2.RovioShelf
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.RovioShelf
    L4_2 = L4_2.isCapturingInput
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = "BLOCK"
      L5_2 = nil
      L6_2 = nil
      return L4_2, L5_2, L6_2
    end
  end
  L4_2 = MainMenuRoot
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if A1_2 == "LPRESS" then
    L7_2 = MainMenu
    L7_2 = L7_2.firstEntrance
    if L7_2 then
      L7_2 = A0_2.panTimer
      if L7_2 then
        A0_2.panTimer = 0
      end
    end
  end
  if L4_2 == "SHOW_KEYBOARD" then
    L7_2 = ui
    L7_2 = L7_2.Frame
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L9_2.name = "keyBoardFrame"
    L7_2 = L7_2(L8_2, L9_2)
    
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      L1_3 = gamelua
      L1_3 = L1_3.getUIScale
      L1_3 = L1_3()
      L3_3 = A0_3
      L2_3 = A0_3.getChild
      L4_3 = "titleText"
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = gamelua
      L3_3 = L3_3.screenWidth
      L3_3 = L3_3 * 0.5
      L2_3.x = L3_3
      L4_3 = L2_3
      L3_3 = L2_3.getFontLeading
      L3_3 = L3_3(L4_3)
      L3_3 = L3_3 * 1.5
      L3_3 = L3_3 * L1_3
      L2_3.y = L3_3
      L4_3 = L2_3
      L3_3 = L2_3.setScale
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
      L4_3 = A0_3
      L3_3 = A0_3.getChild
      L5_3 = "keyBoard"
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = gamelua
      L4_3 = L4_3.screenWidth
      L4_3 = L4_3 * 0.5
      L5_3 = L3_3.px
      L4_3 = L4_3 - L5_3
      L3_3.x = L4_3
      L4_3 = gamelua
      L4_3 = L4_3.screenHeight
      L4_3 = L4_3 * 0.5
      L5_3 = L3_3.py
      L4_3 = L4_3 - L5_3
      L3_3.y = L4_3
      L5_3 = A0_3
      L4_3 = A0_3.getChild
      L6_3 = "textField"
      L4_3 = L4_3(L5_3, L6_3)
      L6_3 = L4_3
      L5_3 = L4_3.getChild
      L7_3 = "bgBox"
      L5_3 = L5_3(L6_3, L7_3)
      L7_3 = L5_3
      L6_3 = L5_3.getChild
      L8_3 = "marker"
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = L6_3
      L6_3 = L6_3.setScale
      L8_3 = L1_3
      L6_3(L7_3, L8_3)
      L7_3 = L4_3
      L6_3 = L4_3.getChild
      L8_3 = "textFrame"
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = L6_3
      L6_3 = L6_3.setScale
      L8_3 = L1_3
      L6_3(L7_3, L8_3)
      L6_3 = gamelua
      L6_3 = L6_3.screenWidth
      L6_3 = L6_3 * 0.5
      L4_3.x = L6_3
      L7_3 = L2_3
      L6_3 = L2_3.getFontLeading
      L6_3 = L6_3(L7_3)
      L6_3 = L6_3 * L1_3
      L7_3 = L2_3.y
      L6_3 = L6_3 + L7_3
      L4_3.y = L6_3
      L7_3 = A0_3
      L6_3 = A0_3.getChild
      L8_3 = "closeKeyboardButton"
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = _G
      L7_3 = L7_3.res
      L7_3 = L7_3.getSpriteBounds
      L8_3 = "BTN_BACK"
      L7_3, L8_3 = L7_3(L8_3)
      L7_3 = L7_3 * L1_3
      L8_3 = L8_3 * L1_3
      L6_3.clickSound = "ButtonBack"
      L10_3 = L6_3
      L9_3 = L6_3.setScale
      L11_3 = L1_3
      L9_3(L10_3, L11_3)
      L9_3 = L7_3 * 0.6
      L6_3.x = L9_3
      L9_3 = gamelua
      L9_3 = L9_3.screenHeight
      L10_3 = L8_3 * 0.6
      L9_3 = L9_3 - L10_3
      L6_3.y = L9_3
      L9_3 = 12 * L1_3
      L11_3 = A0_3
      L10_3 = A0_3.getChild
      L12_3 = "coinBtn"
      L10_3 = L10_3(L11_3, L12_3)
      L12_3 = L10_3
      L11_3 = L10_3.setScale
      L13_3 = L1_3
      L11_3(L12_3, L13_3)
      L12_3 = L10_3
      L11_3 = L10_3.layout
      L11_3(L12_3)
      L11_3 = gamelua
      L11_3 = L11_3.screenWidth
      L11_3 = L11_3 - L9_3
      L10_3.x = L11_3
      L11_3 = L10_3.h
      L11_3 = L11_3 * 0.75
      L10_3.y = L11_3
      L11_3 = ui
      L11_3 = L11_3.Frame
      L11_3 = L11_3.layout
      L12_3 = A0_3
      L11_3(L12_3)
    end
    
    L7_2.layout = L8_2
    L8_2 = ui
    L8_2 = L8_2.KeyBoard
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.name = "keyBoard"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = ui
    L9_2 = L9_2.TextField
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L11_2.name = "textField"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = ui
    L10_2 = L10_2.ScallableButton
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = {}
    L12_2.name = "closeKeyboardButton"
    L12_2.returnValue = "CLOSE_KEYBOARD"
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = ui
    L11_2 = L11_2.CoinButton
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.name = "coinBtn"
    L13_2.returnValue = "GOTO_COINS"
    L11_2 = L11_2(L12_2, L13_2)
    L13_2 = L7_2
    L12_2 = L7_2.addChild
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    L13_2 = L10_2
    L12_2 = L10_2.setImage
    L14_2 = gamelua
    L14_2 = L14_2.getButtonImageName
    L15_2 = "backButton"
    L16_2 = gamelua
    L16_2 = L16_2.SettingsWrapper
    L17_2 = L16_2
    L16_2 = L16_2.isDarkSide
    L16_2, L17_2 = L16_2(L17_2)
    L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L13_2 = L7_2
    L12_2 = L7_2.addChild
    L14_2 = L10_2
    L12_2(L13_2, L14_2)
    L7_2.activated = true
    L12_2 = _G
    L12_2 = L12_2.res
    L12_2 = L12_2.getSpritePivot
    L13_2 = "IN_APP_LOADING"
    L12_2, L13_2 = L12_2(L13_2)
    L7_2.loadingPY = L13_2
    L7_2.loadingPX = L12_2
    L12_2 = ui
    L12_2 = L12_2.DummyText
    L13_2 = L12_2
    L12_2 = L12_2.new
    L14_2 = {}
    L14_2.name = "titleText"
    L15_2 = getFontBasic
    L14_2.font = L15_2
    L12_2 = L12_2(L13_2, L14_2)
    L14_2 = L12_2
    L13_2 = L12_2.setText
    L15_2 = gamelua
    L15_2 = L15_2.getText
    L16_2 = "TEXT_TOY_CODE_TITLE"
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = L7_2
    L13_2 = L7_2.addChild
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    
    function L13_2(A0_3, A1_3, A2_3, A3_3)
      local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L4_3 = L7_2
      L4_3 = L4_3.activated
      if not L4_3 then
        L4_3 = -1
        return L4_3
      end
      L4_3 = gamelua
      L4_3 = L4_3.ui
      L4_3 = L4_3.Frame
      L4_3 = L4_3.onPointerEvent
      L5_3 = A0_3
      L6_3 = A1_3
      L7_3 = A2_3
      L8_3 = A3_3
      L4_3, L5_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
      if L4_3 == "CLOSE_KEYBOARD" then
        L6_3 = A0_2
        L6_3.drawLayer = nil
        L6_3 = gamelua
        L6_3 = L6_3.eventManager
        L7_3 = L6_3
        L6_3 = L6_3.notify
        L8_3 = {}
        L9_3 = events
        L9_3 = L9_3.EID_POP_FRAME
        L8_3.id = L9_3
        L8_3.target = "keyBoardFrame"
        L6_3(L7_3, L8_3)
      elseif L4_3 == "GOTO_COINS" then
        L6_3 = ui
        L6_3 = L6_3.CoinsPage
        L7_3 = L6_3
        L6_3 = L6_3.new
        L6_3 = L6_3(L7_3)
        L7_3 = gamelua
        L7_3 = L7_3.eventManager
        L8_3 = L7_3
        L7_3 = L7_3.notify
        L9_3 = {}
        L10_3 = gamelua
        L10_3 = L10_3.events
        L10_3 = L10_3.EID_PUSH_FRAME
        L9_3.id = L10_3
        L9_3.target = L6_3
        L7_3(L8_3, L9_3)
      end
      L6_3 = -1
      return L6_3
    end
    
    L7_2.onPointerEvent = L13_2
    
    function L13_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3
      L3_3 = gamelua
      L3_3 = L3_3.deviceModel
      if L3_3 == "osx" then
        L3_3 = -1
        return L3_3
      end
      L3_3 = L7_2
      L3_3 = L3_3.activated
      if not L3_3 then
        L3_3 = -1
        return L3_3
      end
      if A1_3 == "PRESS" and (A2_3 == "ESCAPE" or A2_3 == "KEY_BACK") then
        L3_3 = A0_2
        L3_3.drawLayer = nil
        L3_3 = gamelua
        L3_3 = L3_3.eventManager
        L4_3 = L3_3
        L3_3 = L3_3.notify
        L5_3 = {}
        L6_3 = events
        L6_3 = L6_3.EID_POP_FRAME
        L5_3.id = L6_3
        L5_3.target = "keyBoardFrame"
        L3_3(L4_3, L5_3)
        L3_3 = gamelua
        L3_3 = L3_3.playAudio
        L4_3 = "ButtonBack"
        L3_3(L4_3)
        L3_3 = -1
        return L3_3
      end
      L3_3 = gamelua
      L3_3 = L3_3.ui
      L3_3 = L3_3.Frame
      L3_3 = L3_3.onKeyEvent
      L4_3 = A0_3
      L5_3 = A1_3
      L6_3 = A2_3
      return L3_3(L4_3, L5_3, L6_3)
    end
    
    L7_2.onKeyEvent = L13_2
    L14_2 = L7_2
    L13_2 = L7_2.addChild
    L15_2 = L8_2
    L13_2(L14_2, L15_2)
    L14_2 = L7_2
    L13_2 = L7_2.addChild
    L15_2 = L9_2
    L13_2(L14_2, L15_2)
    A0_2.drawLayer = L7_2
    
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L0_3 = L8_2
      L1_3 = L0_3
      L0_3 = L0_3.getChild
      L2_3 = "@"
      L0_3 = L0_3(L1_3, L2_3)
      L0_3 = L0_3.clickSound
      if L0_3 then
        L1_3 = gamelua
        L1_3 = L1_3.audioGroups
        L1_3 = L1_3[L0_3]
        if L1_3 then
          L1_3 = _G
          L1_3 = L1_3.ipairs
          L2_3 = gamelua
          L2_3 = L2_3.audioGroups
          L2_3 = L2_3[L0_3]
          L1_3, L2_3, L3_3 = L1_3(L2_3)
          for L4_3, L5_3 in L1_3, L2_3, L3_3 do
            L6_3 = _G
            L6_3 = L6_3.res
            L6_3 = L6_3.stopAudio
            L7_3 = L5_3
            L6_3(L7_3)
          end
        else
          L1_3 = _G
          L1_3 = L1_3.res
          L1_3 = L1_3.stopAudio
          L2_3 = L0_3
          L1_3(L2_3)
        end
      end
      L1_3 = L9_2
      L2_3 = L1_3
      L1_3 = L1_3.hasEnoughCharacters
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = gamelua
        L1_3 = L1_3.SettingsWrapper
        L2_3 = L1_3
        L1_3 = L1_3.isToyKeyUsed
        L3_3 = L9_2
        L4_3 = L3_3
        L3_3 = L3_3.getText
        L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3)
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        if L1_3 then
          L1_3 = gamelua
          L1_3 = L1_3.eventManager
          L2_3 = L1_3
          L1_3 = L1_3.notify
          L3_3 = {}
          L4_3 = events
          L4_3 = L4_3.EID_TOY_URL_CALLBACK_RECEIVED
          L3_3.id = L4_3
          L3_3.status = "NOT_FULL"
          L4_3 = gamelua
          L4_3 = L4_3.getText
          L5_3 = "TEXT_TOYCODE_ALREADY_ENTERED"
          L4_3 = L4_3(L5_3)
          L3_3.message = L4_3
          L3_3.flurryMessage = "toycode already used"
          L1_3(L2_3, L3_3)
        else
          L1_3 = gamelua
          L1_3 = L1_3.startCheckToyCodeServerURL
          L2_3 = L9_2
          L3_3 = L2_3
          L2_3 = L2_3.getText
          L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3(L3_3)
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
          L1_3 = L7_2
          L1_3.activated = false
          L1_3 = L7_2
          L1_3.timeOut = 10
        end
        L1_3 = L9_2
        L2_3 = L1_3
        L1_3 = L1_3.clear
        L1_3(L2_3)
      else
        L1_3 = L9_2
        L2_3 = L1_3
        L1_3 = L1_3.clear
        L1_3(L2_3)
        L1_3 = gamelua
        L1_3 = L1_3.eventManager
        L2_3 = L1_3
        L1_3 = L1_3.notify
        L3_3 = {}
        L4_3 = events
        L4_3 = L4_3.EID_TOY_URL_CALLBACK_RECEIVED
        L3_3.id = L4_3
        L3_3.status = "NOT_FULL"
        L4_3 = gamelua
        L4_3 = L4_3.getText
        L5_3 = "TEXT_TOYCODE_TEXT_FIELD_NOT_FULL"
        L4_3 = L4_3(L5_3)
        L3_3.message = L4_3
        L3_3.flurryMessage = "Textfield not full"
        L1_3(L2_3, L3_3)
      end
    end
    
    L8_2.returnFunc = L13_2
    
    function L13_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3
      L3_3 = gamelua
      L3_3 = L3_3.ui
      L3_3 = L3_3.Frame
      L3_3 = L3_3.update
      L4_3 = A0_3
      L5_3 = A1_3
      L6_3 = A2_3
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = A0_3.dt
      if not L3_3 then
        L3_3 = 0
      end
      A0_3.dt = L3_3
      L3_3 = A0_3.dt
      L3_3 = L3_3 + A1_3
      A0_3.dt = L3_3
      L3_3 = A0_3.timeOut
      if L3_3 then
        L3_3 = A0_3.timeOut
        L3_3 = L3_3 - A1_3
        A0_3.timeOut = L3_3
        L3_3 = A0_3.timeOut
        if L3_3 < 0 then
          L3_3 = gamelua
          L3_3 = L3_3.eventManager
          L4_3 = L3_3
          L3_3 = L3_3.notify
          L5_3 = {}
          L6_3 = events
          L6_3 = L6_3.EID_TOY_URL_CALLBACK_RECEIVED
          L5_3.id = L6_3
          L5_3.status = "TIMEDOUT"
          L6_3 = gamelua
          L6_3 = L6_3.getText
          L7_3 = "TEXT_TOYCODE_NO_NETWORK"
          L6_3 = L6_3(L7_3)
          L5_3.message = L6_3
          L5_3.flurryMessage = "Connection timed out"
          L3_3(L4_3, L5_3)
          A0_3.timeOut = nil
        end
      end
    end
    
    L7_2.update = L13_2
    
    function L13_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L3_3 = gamelua
      L3_3 = L3_3.drawRect
      L4_3 = 0
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0.7
      L8_3 = 0
      L9_3 = 0
      L10_3 = gamelua
      L10_3 = L10_3.screenWidth
      L11_3 = gamelua
      L11_3 = L11_3.screenHeight
      L12_3 = false
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L3_3 = gamelua
      L3_3 = L3_3.ui
      L3_3 = L3_3.Frame
      L3_3 = L3_3.draw
      L4_3 = A0_3
      L5_3 = A1_3
      L6_3 = A2_3
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = A0_3.activated
      if not L3_3 then
        L3_3 = gamelua
        L3_3 = L3_3.drawRect
        L4_3 = 0
        L5_3 = 0
        L6_3 = 0
        L7_3 = 0.7
        L8_3 = 0
        L9_3 = 0
        L10_3 = gamelua
        L10_3 = L10_3.screenWidth
        L11_3 = gamelua
        L11_3 = L11_3.screenHeight
        L12_3 = false
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L3_3 = gamelua
        L3_3 = L3_3.setRenderState
        L4_3 = 0
        L5_3 = 0
        L6_3 = 1
        L7_3 = 1
        L8_3 = A0_3.dt
        if not L8_3 then
          L8_3 = 0
        end
        L8_3 = L8_3 * 10
        L9_3 = A0_3.loadingPX
        L10_3 = A0_3.loadingPY
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L3_3 = _G
        L3_3 = L3_3.res
        L3_3 = L3_3.drawSprite
        L4_3 = "IN_APP_LOADING"
        L5_3 = gamelua
        L5_3 = L5_3.screenWidth
        L5_3 = L5_3 * 0.5
        L6_3 = gamelua
        L6_3 = L6_3.screenHeight
        L6_3 = L6_3 * 0.5
        L3_3(L4_3, L5_3, L6_3)
      end
    end
    
    L7_2.draw = L13_2
    L13_2 = gamelua
    L13_2 = L13_2.eventManager
    L14_2 = L13_2
    L13_2 = L13_2.notify
    L15_2 = {}
    L16_2 = events
    L16_2 = L16_2.EID_PUSH_FRAME
    L15_2.id = L16_2
    L15_2.target = L7_2
    L13_2(L14_2, L15_2)
    L14_2 = A0_2
    L13_2 = A0_2.getChild
    L15_2 = "optionsSlider"
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = L13_2
    L13_2 = L13_2.toggle
    L13_2(L14_2)
    L14_2 = A0_2
    L13_2 = A0_2.getChild
    L15_2 = "optionsButton"
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = L13_2
    L13_2 = L13_2.getChild
    L15_2 = "optionsImage"
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = L13_2
    L13_2 = L13_2.toggle
    L13_2(L14_2)
  elseif L4_2 == "GOTO_EPISODE_SELECTION" then
    L7_2 = L4_2
    L8_2 = L5_2
    L9_2 = L6_2
    return L7_2, L8_2, L9_2
  elseif L4_2 == "GOTO_CREDITS" then
    L7_2 = gamelua
    L7_2 = L7_2.gotoCredits
    L7_2()
  elseif L4_2 == "GOTO_SHOP" then
    L7_2 = ui
    L7_2 = L7_2.CharacterMenuShop
    L7_2 = L7_2.isShown
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2.getChild
      L9_2 = "characterMenuShop"
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2
      L7_2 = L7_2.close
      L7_2(L8_2)
    else
      L7_2 = ui
      L7_2 = L7_2.CharacterMenuShop
      L7_2.isShown = true
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = events
      L10_2 = L10_2.EID_CHARACTER_MENU_OPENED
      L9_2.id = L10_2
      L7_2(L8_2, L9_2)
    end
  elseif L4_2 == "ROVIO_LOGIN" then
    L8_2 = A0_2
    L7_2 = A0_2.rovioLoginClicked
    L7_2(L8_2)
  elseif L4_2 == "GOTO_ACHIEVEMENTS" then
    L7_2 = print
    L8_2 = "GOTO_ACHIEVEMENTS self:gotoAchievements()"
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.gotoAchievements
    L7_2(L8_2)
  elseif L4_2 == "GOTO_LEADERBOARDS" then
    L8_2 = A0_2
    L7_2 = A0_2.gotoLeaderboards
    L7_2(L8_2)
  elseif L4_2 == "TOGGLE_OPTIONS" then
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "optionsSlider"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.toggle
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "optionsButton"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.getChild
    L9_2 = "optionsImage"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.toggle
    L7_2(L8_2)
  elseif L4_2 == "TOGGLE_RIGHT_OPTIONS" then
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "rightSlider"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.toggle
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "rightSliderButton"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.getChild
    L9_2 = "rightOptionsImage"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.toggle
    L7_2(L8_2)
  elseif L4_2 == "TOGGLE_EXTERNAL" then
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "externalSlider"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.toggle
    L7_2(L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.getChild
    L9_2 = "externalButton"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.getChild
    L9_2 = "externalImage"
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.toggle
    L7_2(L8_2)
  elseif L4_2 == "TOGGLE_SOUND" then
    L7_2 = gamelua
    L7_2 = L7_2.toggleAudio
    L7_2()
  elseif L4_2 == "TOGGLE_DOLBY" then
    L7_2 = gamelua
    L7_2 = L7_2.toggleDolby
    L7_2()
  elseif L4_2 == "TOGGLE_HINTS" then
    L7_2 = gamelua
    L7_2 = L7_2.toggleHints
    L7_2()
  elseif L4_2 == "TOGGLE_QUALITY" then
    L7_2 = changeGFXQuality
    L7_2()
  elseif L4_2 == "TOGGLE_FULLSCREEN" then
    L7_2 = gamelua
    L7_2 = L7_2.toggleFullScreen
    L7_2()
  elseif L4_2 == "SHOW_VIDEO" then
    L7_2 = gamelua
    L7_2 = L7_2.openURL
    L8_2 = gamelua
    L8_2 = L8_2.MOVIE_URL
    L9_2 = "TEXT_EXIT_CONFIRMATION_TRAILER"
    L10_2 = gamelua
    L10_2 = L10_2.SettingsWrapper
    L11_2 = L10_2
    L10_2 = L10_2.isDarkSide
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = "ICON_VIDEO"
      if L10_2 then
        goto lbl_306
      end
    end
    L10_2 = "ICON_VIDEO_LIGHT"
    ::lbl_306::
    L11_2 = true
    L12_2 = "MOVIE_URL"
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  elseif L4_2 == "GOTO_CHANNEL" then
    L7_2 = _G
    L7_2 = L7_2.res
    L7_2 = L7_2.openURL
    L8_2 = "https://www.youtube.com/user/RovioMobile"
    L7_2(L8_2)
  elseif L4_2 == "GOTO_EAGLE_TRAILER" then
    L7_2 = gotoMightyEagleTrailer
    L7_2()
  elseif L4_2 == "GOTO_FACEBOOK" then
    L7_2 = gotoFacebook
    L7_2()
  elseif L4_2 == "GOTO_TWITTER" then
    L7_2 = gotoTwitter
    L7_2()
  elseif L4_2 == "GOTO_CRYSTAL" then
    L7_2 = startCrystal
    L7_2()
  elseif L4_2 == "OPEN_REGISTER_WINDOW" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_SHOW_REGISTRATION_DIALOG
    L9_2.id = L10_2
    
    function L10_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.getChild
      L2_3 = "registerButton"
      L0_3 = L0_3(L1_3, L2_3)
      L0_3.visible = false
    end
    
    L9_2.success_call = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "OPEN_UPDATE_WINDOW" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_UPDATE_AVAILABLE
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "OPEN_EXIT_WINDOW" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_EXIT_GAME
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "OPEN_CHEATS_POPUP" then
    L7_2 = gamelua
    L7_2 = L7_2.QAPage
    L8_2 = L7_2
    L7_2 = L7_2.new
    L7_2 = L7_2(L8_2)
    L8_2 = gamelua
    L8_2 = L8_2.eventManager
    L9_2 = L8_2
    L8_2 = L8_2.notify
    L10_2 = {}
    L11_2 = events
    L11_2 = L11_2.EID_PUSH_FRAME
    L10_2.id = L11_2
    L10_2.target = L7_2
    L8_2(L9_2, L10_2)
  elseif L4_2 == "OPEN_UPSELL" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_OPEN_BUY_FREE_IOS_VERSION_POPUP
    L9_2.id = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "GOTO_EDITOR" then
    L7_2 = gamelua
    L7_2 = L7_2.eventManager
    L8_2 = L7_2
    L7_2 = L7_2.notify
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_CHANGE_SCENE
    L9_2.id = L10_2
    L10_2 = gamelua
    L10_2 = L10_2.ui
    L10_2 = L10_2.EditorLevelSelection
    L11_2 = L10_2
    L10_2 = L10_2.new
    L10_2 = L10_2(L11_2)
    L9_2.target = L10_2
    L7_2(L8_2, L9_2)
  elseif L4_2 == "OPEN_AD_LINK" then
    L7_2 = _G
    L7_2 = L7_2.RovioAds
    L7_2 = L7_2.click
    L8_2 = "InGameNative.NativeCrosspromo"
    L7_2(L8_2)
  end
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.RovioAccount
  L2_2 = L1_2.isAccountLoggedIn
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = L1_2.login
    L3_2 = true
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_2.showStatsScreen
    L2_2()
  end
end

L0_1.rovioLoginClicked = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MainMenu
  L1_2.firstEntrance = false
  L1_2 = gamelua
  L1_2.g_inMainMenu = false
  L1_2 = gamelua
  L1_2 = L1_2.gamerService
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.releaseAssets
    L2_2 = {}
    L3_2 = "ACHIEVEMENTS"
    L2_2[1] = L3_2
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_UPDATE_AVAILABLE
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_AUDIO_TOGGLED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_TOY_URL_CALLBACK_RECEIVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_RESTORE_PURCHASES_BUTTON_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_RESTORE_PURCHASES_CLICKED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_LOGIN_ACCEPTED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_LOGOUT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_SHOWING_LOGIN_VIEW
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_ROVIO_ID_VIEW_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_NEW_SETTINGS_APPLIED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.gamerService
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.eventManager
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_GAMERSERVICE_ACTION_COMPLETE
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.RovioShelf
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.RovioShelf
    L1_2 = L1_2.setAllowed
    L2_2 = false
    L1_2(L2_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = MainMenu

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "btnAchievements"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "btnLeaderboards"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "btnBuy"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "btnServiceApp"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = gamelua
  L5_2 = L5_2.gamerService
  L6_2 = L5_2
  L5_2 = L5_2.isTrial
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = gamelua
    L5_2 = L5_2.deviceModel
    if L5_2 == "wp8" then
      if L4_2 then
        L4_2.visible = false
      end
    elseif L4_2 then
      L6_2 = L4_2
      L5_2 = L4_2.setEnabled
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
    L3_2.visible = true
    L6_2 = L1_2
    L5_2 = L1_2.setEnabled
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L2_2
    L5_2 = L2_2.setEnabled
    L7_2 = false
    L5_2(L6_2, L7_2)
  else
    L5_2 = gamelua
    L5_2 = L5_2.deviceModel
    if L5_2 ~= "wp8" and L4_2 then
      L6_2 = L4_2
      L5_2 = L4_2.setEnabled
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
    L3_2.visible = false
    L6_2 = L1_2
    L5_2 = L1_2.setEnabled
    L7_2 = true
    L5_2(L6_2, L7_2)
    L6_2 = L2_2
    L5_2 = L2_2.setEnabled
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
end

L0_1.updateGamerServiceButtons = L1_1
