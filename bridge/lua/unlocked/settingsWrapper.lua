-- absw2 "unlocked" variant (make_release.sh UNLOCKED=1), for the owner's own copy.
-- Rovio's store, wallet and cloud services are gone, so what the game sold can no longer be bought:
-- characters for coins, coins for money. At every start, after the save is loaded, this variant
--   * gives every character the shop sells as "permanent" (bundle type "unlimited") the most permanent
--     units the shop sells, 4: each unit is one use of that character in every level,
--   * enables the opposite side's characters in every level of both sides (299 coins per side),
--   * removes ads and marks the player as a paying customer, as any purchase did,
--   * sets the coins to MAX_COINS, and caps every later gain (stars, quests, hidden coins, Jenga codes)
--     so that the total never goes above it.
-- Progression is untouched: levels, episodes, the other side (stars) and timed levels open by playing.
--
-- gamelogic.lua loads this file with loadLuaFile(path, "", false, false): the game's functions and
-- tables (settings, localPlatform, getShopData, Characters, ...) are plain globals here.
-- The engine's Lua numbers are 32-bit floats, exact for integers up to 2^24 = 16777216. 9999999, the
-- largest 7-digit count, stays exact and keeps the coin counter short.
local G = _G
loadLuaFile(scriptPath .. "/settingsWrapper.orig.lua", "", false, false)

local MAX_COINS = 9999999
local PERMANENT_UNITS = 4  -- CharacterPurchasePopup stops selling at 4 (TEXT_SHOP_MAX_PERMANENT)
local COIN_TABLES = { "IAPsGained_", "IAPsUsed_", "IAPsLostToSynch_" }
local SW = SettingsWrapper

-- Coins are IAPsGained + IAPsLostToSynch - IAPsUsed, each summed over the devices in the save.
local originalAddAmount = SW.addAmount
SW.addAmount = function(self, key, amount, ...)
  if key == "coins" then
    amount = G.tonumber(amount) or 0
    if amount > 0 then
      amount = G.math.max(0, G.math.min(amount, MAX_COINS - self:getAmount("coins")))
    end
  end
  return originalAddAmount(self, key, amount, ...)
end

-- Exactly MAX_COINS, without growing the counters by what was spent since the last start.
local function setCoins()
  local root = settings.root
  for _, prefix in G.ipairs(COIN_TABLES) do
    local name = prefix .. localPlatform
    if G.type(root[name]) ~= "table" then
      root[name] = {}
    end
    for _, perDevice in G.pairs(root[name]) do
      if G.type(perDevice) == "table" then
        perDevice.coins = nil
      end
    end
  end
  SW:setLocalValue(root["IAPsGained_" .. localPlatform], "coins", MAX_COINS)
end

-- Characters in any shop offer (special offers, singles, bundles) with an "unlimited" item.
local function unlimitedShopCharacters()
  local names = {}
  local data = getShopData()
  for _, section in G.pairs(data or {}) do
    if G.type(section) == "table" then
      for _, offer in G.pairs(section) do
        if G.type(offer) == "table" and G.type(offer.buyButtons) == "table" then
          for _, button in G.ipairs(offer.buyButtons) do
            for _, item in G.ipairs(button.bundle or {}) do
              if item.type == "unlimited" and Characters.list[item.character] then
                names[item.character] = true
              end
            end
          end
        end
      end
    end
  end
  return names
end

local function unlockCharacters()
  local given, total = 0, 0
  for name in G.pairs(unlimitedShopCharacters()) do
    total = total + 1
    local key = name .. "_unlimited"
    local owned = SW:getAmount(key)
    if owned < PERMANENT_UNITS then
      SW:addAmount(key, PERMANENT_UNITS - owned)
      given = given + 1
    end
  end
  return given, total
end

local function step(what, fn)
  local ok, a, b = G.pcall(fn)
  if not ok then
    G.print("[absw2] unlocked: " .. what .. " failed: " .. G.tostring(a))
  end
  return ok, a, b
end

local function unlockAll()
  step("coins", setCoins)
  local _, given, total = step("characters", unlockCharacters)
  step("opposite side characters", function()
    SW:enableOppositeSideCharacterForSide(true)
    SW:enableOppositeSideCharacterForSide(false)
  end)
  step("ads", function()
    SW:removeAds()
    SW:setIsPayingCustomer(true)
  end)
  step("coin counters", function()
    eventManager:notify({ id = events.EID_UPDATE_ALL_COIN_UI_AMOUNT })
  end)
  G.print("[absw2] unlocked: coins " .. G.tostring(SW:getAmount("coins")) .. ", permanent characters "
    .. G.tostring(given) .. " new of " .. G.tostring(total) .. ", opposite side characters on, ads off")
end

-- Called once per start from the EID_GAME_INITIALIZED listener (game.lua), after the save is loaded
-- and its IAP tables are migrated.
local originalIncreaseNumberOfStartups = SW.increaseNumberOfStartups
SW.increaseNumberOfStartups = function(self, ...)
  local result = originalIncreaseNumberOfStartups(self, ...)
  unlockAll()
  return result
end
