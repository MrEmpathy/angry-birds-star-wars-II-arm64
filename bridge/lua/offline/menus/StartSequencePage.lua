-- absw2 offline patch for StartSequencePage (splash screens and first-run asset download).
-- Rovio's asset service (cloud.rovio.com) is gone, so the first-run download of the sound and image
-- archives can never finish. The APK built by make_release.sh carries those files at the paths the
-- engine reads when downloads are off (data/audio, data/images/android), so the downloads are turned
-- off. The flags are read by StartSequencePage:onEntry, initializeSoundSystem, soundManager and
-- Assets.downloadRequiredAssets, all after onEntry starts; they are set again there in case
-- options.lua runs after this file.
local G = _G
local gl = gamelua

local function bundledAssets()
  gl.downloadSoundAssets = false
  gl.downloadVisualAssets = false
end

bundledAssets()
gl.loadLuaFileToObject(gl.scriptPath .. "/menus/StartSequencePage.orig.lua", gl.this.ui, "")

local page = gl.this.ui.StartSequencePage
local originalOnEntry = page.onEntry
page.onEntry = function(self, ...)
  bundledAssets()
  G.print("[absw2] StartSequencePage: bundled sounds and images, asset downloads off")
  return originalOnEntry(self, ...)
end
