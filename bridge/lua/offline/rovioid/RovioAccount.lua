-- absw2 offline patch for RovioAccount (Rovio ID login).
-- The Rovio ID service is gone, so every login, including the automatic guest login at start-up,
-- fails (ERROR_ACCOUNT_INVALID). The original onLoginFailure then calls forcedLogout, which shows
-- the "Signed out" page and logs out; the engine retries the login, it fails again, and the page
-- comes back. While the service is offline that logout protects nothing, so onLoginFailure runs with
-- forcedLogout disabled: the player stays a guest (or keeps the offline state of a registered
-- account) and the menus stay usable.
--
-- game.lua loads this file with loadLuaFile(path, "", false, false). In that environment the game's
-- functions are plain globals (there is no `gamelua` table), and two tables share the name:
--   RovioAccount     the script's own table (forcedLogout, login, update, ...)
--   _G.RovioAccount  the engine's binding table, which receives the callbacks (onLoginFailure, ...)
local G = _G
loadLuaFile(scriptPath .. "/rovioid/RovioAccount.orig.lua", "", false, false)

local scriptTable = RovioAccount
local callbacks = G.RovioAccount
local originalFailure = callbacks.onLoginFailure
local failures = 0

local function noLogout() end

callbacks.onLoginFailure = function(errorCode, ...)
  failures = failures + 1
  if failures <= 3 then
    G.print("[absw2] RovioAccount: login failed (" .. G.tostring(errorCode) .. "), forced logout skipped")
  end
  local scriptLogout, callbackLogout = scriptTable.forcedLogout, callbacks.forcedLogout
  scriptTable.forcedLogout, callbacks.forcedLogout = noLogout, noLogout
  local ok, err = G.pcall(originalFailure, errorCode, ...)
  scriptTable.forcedLogout, callbacks.forcedLogout = scriptLogout, callbackLogout
  if not ok then
    G.error(err, 0)
  end
end
