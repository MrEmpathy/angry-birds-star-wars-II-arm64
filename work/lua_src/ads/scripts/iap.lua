local L0_1, L1_1
L0_1 = _G
L1_1 = _G
L1_1 = L1_1.iap
if not L1_1 then
  L1_1 = {}
end
L0_1.iap = L1_1
L0_1 = _G
L0_1 = L0_1.iap

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = _G
  L2_2 = L2_2.tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = "coins"
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.addAmount
  L5_2 = L2_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  if 0 < A0_2 and not A1_2 then
    L3_2 = isAnyShopPromptOpen
    L3_2 = L3_2()
    if not L3_2 then
      L3_2 = SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.setNewCreditsGained
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = "ADD"
  if A0_2 < 0 then
    L3_2 = "REMOVE"
  elseif A0_2 == 0 then
    L3_2 = "NOCHANGE"
  end
  L4_2 = print
  L5_2 = "Add "
  L6_2 = A0_2
  L7_2 = " to "
  L8_2 = L2_2
  L9_2 = ", total is now "
  L10_2 = SettingsWrapper
  L11_2 = L10_2
  L10_2 = L10_2.getAmount
  L12_2 = L2_2
  L10_2 = L10_2(L11_2, L12_2)
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L4_2(L5_2)
  L4_2 = eventManager
  L5_2 = L4_2
  L4_2 = L4_2.notify
  L6_2 = {}
  L7_2 = events
  L7_2 = L7_2.EID_REFRESH_COIN_AMOUNT
  L6_2.id = L7_2
  L6_2.change = L3_2
  L4_2(L5_2, L6_2)
  if not A1_2 then
    L4_2 = savePurchases
    L4_2()
  end
end

addCoins = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = SettingsWrapper
  L4_2 = L3_2
  L3_2 = L3_2.setIsPayingCustomer
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = addCoins
  L4_2 = _G
  L4_2 = L4_2.tonumber
  L5_2 = A0_2.coins
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_COINS_GAINED
  L5_2.id = L6_2
  L6_2 = A0_2.coins
  L5_2.amount = L6_2
  L5_2.typeOfGain = "purchase"
  L5_2.itemName = A1_2
  L6_2 = A0_2.price
  L5_2.paidAmount = L6_2
  L5_2.iapType = A1_2
  L5_2.receiptID = A2_2
  L3_2(L4_2, L5_2)
end

addCoinsToGameState = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2 = L1_2.iap
  L1_2 = L1_2.native_isIapAllowed
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = print
    L2_2 = "IAPs are allowed."
    L1_2(L2_2)
    L1_2 = ui
    L1_2 = L1_2.SpinnerFrame
    L2_2 = L1_2
    L1_2 = L1_2.new
    L1_2 = L1_2(L2_2)
    L2_2 = eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = events
    L5_2 = L5_2.EID_PUSH_FRAME
    L4_2.id = L5_2
    L4_2.target = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.iap
    L2_2 = L2_2.native_buyItem
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L1_2 = print
    L2_2 = "IAPs are NOT allowed."
    L1_2(L2_2)
    L1_2 = ui
    L1_2 = L1_2.ConfirmPrompt
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L4_2 = getText
    L5_2 = "TEXT_COIN_PAGE_RESTRICTION_ERROR"
    L4_2 = L4_2(L5_2)
    L3_2.content = L4_2
    L3_2.hideCloseButton = true
    L3_2.returnValue = "CLOSE"
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = events
    L5_2 = L5_2.EID_PUSH_FRAME
    L4_2.id = L5_2
    L4_2.target = L1_2
    L2_2(L3_2, L4_2)
  end
end

purchaseCoins = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = print
  L2_2 = "lua_onLocalPurchaseSucceeded"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = _G
  L3_2 = L3_2.iap
  L3_2 = L3_2.native_catalog
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L1_2 = L6_2.clientData
    end
  end
  L2_2 = L1_2.coins
  if L2_2 then
    L2_2 = addCoinsToGameState
    L3_2 = L1_2
    L4_2 = A0_2
    L5_2 = "local"
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_PURCHASE_CALLBACK_RECEIVED
  L4_2.id = L5_2
  L2_2(L3_2, L4_2)
end

L0_1.lua_onLocalPurchaseSucceeded = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = print
  L4_2 = "onWalletFetchSuccess: "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = A2_2.coins
  if L3_2 then
    L3_2 = addCoinsToGameState
    L4_2 = A2_2
    L5_2 = A1_2
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = _G
    L3_2 = L3_2.iap
    L3_2 = L3_2.native_consumeVoucher
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = events
    L6_2 = L6_2.EID_SYNC_CLOUD
    L5_2.id = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = eventManager
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = {}
  L6_2 = events
  L6_2 = L6_2.EID_PURCHASE_CALLBACK_RECEIVED
  L5_2.id = L6_2
  L3_2(L4_2, L5_2)
end

L0_1.lua_onWalletFetchSuccess = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "onWalletFetchEmpty"
  L0_2(L1_2)
  L0_2 = eventManager
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = {}
  L3_2 = events
  L3_2 = L3_2.EID_PURCHASE_CALLBACK_RECEIVED
  L2_2.id = L3_2
  L0_2(L1_2, L2_2)
end

L0_1.lua_onWalletFetchEmpty = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = print
  L3_2 = "onWalletFetchFailed: (status: "
  L4_2 = _G
  L4_2 = L4_2.tostring
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = ", message: "
  L6_2 = _G
  L6_2 = L6_2.tostring
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = ")"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L2_2(L3_2)
  L2_2 = eventManager
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = {}
  L5_2 = events
  L5_2 = L5_2.EID_PURCHASE_CALLBACK_RECEIVED
  L4_2.id = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2 == 5
  L3_2 = g_coinPageOpen
  if L3_2 and not L2_2 then
    L3_2 = ui
    L3_2 = L3_2.ConfirmPrompt
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.name = "walletErrorPrompt"
    L6_2 = getText
    L7_2 = "TEXT_COIN_PAGE_GENERIC_ERROR"
    L6_2 = L6_2(L7_2)
    L5_2.content = L6_2
    L5_2.hideCloseButton = true
    
    function L6_2()
      local L0_3, L1_3
    end
    
    L5_2.returnValue = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = eventManager
    L5_2 = L4_2
    L4_2 = L4_2.notify
    L6_2 = {}
    L7_2 = events
    L7_2 = L7_2.EID_PUSH_FRAME
    L6_2.id = L7_2
    L6_2.target = L3_2
    L4_2(L5_2, L6_2)
  end
end

L0_1.lua_onWalletFetchFailed = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end

isIapEnabled = L1_1
