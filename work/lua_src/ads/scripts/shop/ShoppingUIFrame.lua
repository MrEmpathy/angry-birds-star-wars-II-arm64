local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ShoppingUIFrame = L0_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.coinButtonVisible
  if not L1_2 then
    L1_2 = false
  end
  A0_2.coinButtonVisible = L1_2
  L1_2 = A0_2.shopButtonVisible
  if not L1_2 then
    L1_2 = false
  end
  A0_2.shopButtonVisible = L1_2
  L1_2 = A0_2.arrowVisible
  if not L1_2 then
    L1_2 = false
  end
  A0_2.arrowVisible = L1_2
  L1_2 = A0_2.coinButtonVisible
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.CoinButton
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "coinButton"
    L3_2.returnValue = "GOTO_COINS"
    L4_2 = A0_2.coinButtonDisabled
    if not L4_2 then
      L4_2 = false
    end
    L3_2.coinButtonDisabled = L4_2
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.coinButton = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = A0_2.coinButton
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.shopButtonVisible
  if L1_2 then
    L1_2 = ui
    L1_2 = L1_2.ScallableButton
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "shopButton"
    L3_2.returnValue = "GOTO_SHOP"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.shopButton = L1_2
    L1_2 = A0_2.shopButton
    L2_2 = L1_2
    L1_2 = L1_2.setImage
    L3_2 = gamelua
    L3_2 = L3_2.getButtonImageName
    L4_2 = "shopButton"
    L5_2 = gamelua
    L5_2 = L5_2.SettingsWrapper
    L6_2 = L5_2
    L5_2 = L5_2.isDarkSide
    L5_2, L6_2 = L5_2(L6_2)
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = ui
    L1_2 = L1_2.ClaimBadge
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "claimBadge"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.claimBadge = L1_2
    L1_2 = A0_2.shopButton
    L2_2 = L1_2
    L1_2 = L1_2.addChild
    L3_2 = A0_2.claimBadge
    L1_2(L2_2, L3_2)
    L1_2 = gamelua
    L1_2 = L1_2.isNewSpecialsInShop
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = ui
      L1_2 = L1_2.NewSpecialsBadge
      L2_2 = L1_2
      L1_2 = L1_2.new
      L3_2 = {}
      L3_2.name = "newShopBadge"
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2.shopButton
      L3_2 = L2_2
      L2_2 = L2_2.addChild
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    L1_2 = ui
    L1_2 = L1_2.Image
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.name = "shopButtonGlow"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.shopButtonGlow = L1_2
    L1_2 = A0_2.shopButtonGlow
    L2_2 = L1_2
    L1_2 = L1_2.setImage
    L3_2 = "EAGLE_SHINE_1"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.shopButtonGlow
    L2_2 = A0_2.shopButton
    L1_2.parent = L2_2
    L1_2 = A0_2.shopButtonGlow
    L2_2 = gamelua
    L2_2 = L2_2.shopGlowUpdater
    L1_2.update = L2_2
    L1_2 = A0_2.shopButtonGlow
    L2_2 = L1_2
    L1_2 = L1_2.setVisible
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = A0_2.shopButtonGlow
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.shopButtonGlow
    L2_2 = gamelua
    L2_2 = L2_2.shouldShowShopGlow
    L2_2 = L2_2()
    L1_2.visible = L2_2
    L1_2 = A0_2.arrowVisible
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.ui
      L1_2 = L1_2.Image
      L2_2 = L1_2
      L1_2 = L1_2.new
      L3_2 = {}
      L3_2.name = "shopArrow"
      L1_2 = L1_2(L2_2, L3_2)
      A0_2.shopArrow = L1_2
      L1_2 = A0_2.shopArrow
      L2_2 = L1_2
      L1_2 = L1_2.setImage
      L3_2 = "ICON_CAMERA_ARROW"
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.addChild
      L3_2 = A0_2.shopArrow
      L1_2(L2_2, L3_2)
    end
    L2_2 = A0_2
    L1_2 = A0_2.addChild
    L3_2 = A0_2.shopButton
    L1_2(L2_2, L3_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NOTIFICATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_OPENED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_SHOP_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_REFRESH_COIN_AMOUNT
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_NOTIFICATION_CLOSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
        L2_2 = A1_2.id
        L3_2 = events
        L3_2 = L3_2.EID_NOTIFICATION_CLOSED
        if L2_2 ~= L3_2 then
          goto lbl_30
        end
      end
    end
  end
  L2_2 = A0_2.shopButtonGlow
  if L2_2 then
    L2_2 = A0_2.shopButtonGlow
    L3_2 = L2_2
    L2_2 = L2_2.setVisible
    L4_2 = gamelua
    L4_2 = L4_2.shouldShowShopGlow
    L4_2 = L4_2()
    L2_2(L3_2, L4_2)
  end
  ::lbl_30::
end

L0_1.eventTriggered = L1_1
L0_1 = ShoppingUIFrame

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
    L7_2 = A0_2.dontHandlePointerEvents
    if not L7_2 then
      if L4_2 == "GOTO_SHOP" then
        L7_2 = A0_2.shopPressed
        if L7_2 then
          L7_2 = A0_2.shopPressed
          L7_2()
        end
        L7_2 = gamelua
        L7_2 = L7_2.eventManager
        L8_2 = L7_2
        L7_2 = L7_2.notify
        L9_2 = {}
        L10_2 = events
        L10_2 = L10_2.EID_OPEN_SHOP
        L9_2.id = L10_2
        L9_2.screen = "ShopPromoScreen"
        L10_2 = A0_2.onCloseCall
        L9_2.onCloseCall = L10_2
        L7_2(L8_2, L9_2)
        L7_2 = A0_2.shopButtonGlow
        if L7_2 then
          L7_2 = A0_2.shopButtonGlow
          L8_2 = L7_2
          L7_2 = L7_2.setVisible
          L9_2 = false
          L7_2(L8_2, L9_2)
        end
        L7_2 = "BLOCK_EVENT"
        return L7_2
      elseif L4_2 == "GOTO_COINS" then
        L7_2 = A0_2.coinPressed
        if L7_2 then
          L7_2 = A0_2.coinPressed
          L7_2()
        end
        L7_2 = gamelua
        L7_2 = L7_2.eventManager
        L8_2 = L7_2
        L7_2 = L7_2.notify
        L9_2 = {}
        L10_2 = events
        L10_2 = L10_2.EID_OPEN_COIN_SHOP
        L9_2.id = L10_2
        L7_2(L8_2, L9_2)
        L7_2 = "BLOCK_EVENT"
        return L7_2
      end
    end
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.claimBadge
  if L1_2 then
    L1_2 = A0_2.claimBadge
    L1_2 = L1_2.visible
    return L1_2
  end
  L1_2 = false
  return L1_2
end

L0_1.isClaimBadgeVisible = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = 12 * L1_2
  L3_2 = A0_2.coinButton
  if L3_2 then
    L3_2 = A0_2.coinButton
    L4_2 = L3_2
    L3_2 = L3_2.layout
    L3_2(L4_2)
    L3_2 = A0_2.coinButton
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L4_2 = L4_2 - L2_2
    L3_2.x = L4_2
    L3_2 = A0_2.coinButton
    L4_2 = A0_2.coinButton
    L4_2 = L4_2.h
    L4_2 = L4_2 * 0.75
    L3_2.y = L4_2
    L3_2 = A0_2.coinButton
    L4_2 = L3_2
    L3_2 = L3_2.setScale
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.shopButton
  if L3_2 then
    L3_2 = A0_2.shopButton
    L4_2 = L3_2
    L3_2 = L3_2.setScale
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.shopButton
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L5_2 = A0_2.shopButton
    L5_2 = L5_2.w
    L5_2 = L5_2 * L1_2
    L5_2 = L5_2 * 0.75
    L4_2 = L4_2 - L5_2
    L3_2.x = L4_2
    L3_2 = A0_2.shopButton
    L4_2 = gamelua
    L4_2 = L4_2.screenHeight
    L5_2 = A0_2.shopButton
    L5_2 = L5_2.h
    L5_2 = L5_2 * L1_2
    L5_2 = L5_2 * 0.75
    L4_2 = L4_2 - L5_2
    L3_2.y = L4_2
    L3_2 = A0_2.shopButtonGlow
    if L3_2 then
      L3_2 = A0_2.shopButtonGlow
      L4_2 = A0_2.shopButton
      L4_2 = L4_2.x
      L3_2.x = L4_2
      L3_2 = A0_2.shopButtonGlow
      L4_2 = A0_2.shopButton
      L4_2 = L4_2.y
      L3_2.y = L4_2
      L3_2 = A0_2.shopButtonGlow
      L4_2 = L3_2
      L3_2 = L3_2.setScale
      L5_2 = L1_2 * 0.5
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2.claimBadge
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.res
      L3_2 = L3_2.getSpriteBounds
      L4_2 = "BTN_SHOP"
      L3_2, L4_2 = L3_2(L4_2)
      L5_2 = A0_2.claimBadge
      L6_2 = L3_2 * 0.3
      L6_2 = L6_2 * L1_2
      L5_2.x = L6_2
      L5_2 = A0_2.claimBadge
      L6_2 = -L4_2
      L6_2 = L6_2 * 0.4
      L6_2 = L6_2 * L1_2
      L5_2.y = L6_2
      L5_2 = A0_2.claimBadge
      L6_2 = L5_2
      L5_2 = L5_2.setScale
      L7_2 = L1_2
      L5_2(L6_2, L7_2)
      L5_2 = A0_2.claimBadge
      L6_2 = L5_2
      L5_2 = L5_2.layout
      L5_2(L6_2)
      L5_2 = A0_2.claimBadge
      L6_2 = L5_2
      L5_2 = L5_2.setGlobalCoordinates
      L7_2 = A0_2.shopButton
      L7_2 = L7_2.x
      L8_2 = A0_2.claimBadge
      L8_2 = L8_2.x
      L7_2 = L7_2 + L8_2
      L8_2 = A0_2.shopButton
      L8_2 = L8_2.y
      L9_2 = A0_2.claimBadge
      L9_2 = L9_2.y
      L8_2 = L8_2 + L9_2
      L5_2(L6_2, L7_2, L8_2)
    end
    L3_2 = A0_2.shopArrow
    if L3_2 then
      L3_2 = A0_2.shopArrow
      L4_2 = A0_2.shopButton
      L4_2 = L4_2.x
      L3_2.x = L4_2
      L3_2 = A0_2.shopArrow
      L4_2 = A0_2.shopButton
      L4_2 = L4_2.y
      L5_2 = A0_2.shopArrow
      L5_2 = L5_2.h
      L5_2 = L5_2 * 0.5
      L5_2 = L5_2 * L1_2
      L4_2 = L4_2 - L5_2
      L5_2 = A0_2.shopButton
      L5_2 = L5_2.h
      L5_2 = L5_2 * 0.5
      L5_2 = L5_2 * L1_2
      L4_2 = L4_2 - L5_2
      L3_2.y = L4_2
      L3_2 = A0_2.shopArrow
      L4_2 = L3_2
      L3_2 = L3_2.setScale
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.layout = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.shopButtonGlow
  L3_2 = L2_2
  L2_2 = L2_2.setVisible
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.showGlow = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2, A1_2)
  A0_2.visible = A1_2
end

L0_1.setVisible = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 / 2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A1_2 / 2
  L4_2 = 0.5 + L4_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 - L3_2
  L2_2 = 2 * L2_2
  return L2_2
end

L0_1.sawtooth = L1_1
L0_1 = ShoppingUIFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.shopArrow
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.getUIScale
    L3_2 = L3_2()
    L4_2 = ShoppingUIFrame
    L5_2 = L4_2
    L4_2 = L4_2.sawtooth
    L6_2 = A2_2 / 0.4
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 ^ 2
    L4_2 = 1 - L4_2
    L4_2 = L4_2 * 15
    L5_2 = A0_2.shopArrow
    L6_2 = A0_2.shopButton
    L6_2 = L6_2.y
    L7_2 = A0_2.shopArrow
    L7_2 = L7_2.h
    L7_2 = L7_2 * 0.5
    L7_2 = L7_2 * L3_2
    L6_2 = L6_2 - L7_2
    L7_2 = A0_2.shopButton
    L7_2 = L7_2.h
    L7_2 = L7_2 * 0.5
    L7_2 = L7_2 * L3_2
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 - L4_2
    L5_2.y = L6_2
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
