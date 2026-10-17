local L0_1, L1_1
L0_1 = {}
L0_1.assetServiceAvailable = false
L0_1.requiredAssetsSuccessCb = nil
L0_1.requiredAssetsFailureCb = nil
L0_1.requiredAssetsProgressCb = nil
L0_1.requiredAssetsLoaded = false
L0_1.requiredAssetDownloadStarted = false
L0_1.firstProgressCall = true
Assets = L0_1
L0_1 = {}
g_assetFilenames = L0_1
L0_1 = {}
L0_1.shop = "ShopData"
L0_1.camera = "CameraData"
L0_1.samsung = "SamsungDeviceData"
L0_1.quests = "quests"
L0_1.reward = "RewardData"
L0_1["force-update"] = "UpdateData"
g_optionalAssetsFiles = L0_1
L0_1 = deviceModel
if L0_1 == "wp8" then
  L0_1 = g_optionalAssetsFiles
  L0_1["age-gender-config"] = nil
end
L0_1 = {}
L0_1.sounds_1_8_0 = "16000hz-16bit-mono.7z"
L0_1.images = "images.7z"
g_requiredAssetsFiles = L0_1
L0_1 = Assets

function L1_1(A0_2)
  local L1_2
  L1_2 = g_optionalAssetsFiles
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = g_optionalAssetsFiles
    L1_2 = L1_2[A0_2]
    return L1_2
  else
    L1_2 = g_requiredAssetsFiles
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = g_requiredAssetsFiles
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end

L0_1.getAssetName = L1_1
L0_1 = Assets

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Assets
  L1_2 = L1_2.getAssetName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = g_assetFilenames
    L2_2 = L2_2[L1_2]
    return L2_2
  end
  L2_2 = nil
  return L2_2
end

L0_1.getAssetFilename = L1_1
L0_1 = Assets

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_optionalAssetsFiles
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 == A0_2 then
      return L4_2
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = g_requiredAssetsFiles
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 == A0_2 then
      return L4_2
    end
  end
  L1_2 = nil
  return L1_2
end

L0_1.getAssetKey = L1_1
L0_1 = _G
L0_1 = L0_1.Assets

function L1_1(A0_2)
  local L1_2
  L1_2 = Assets
  L1_2.assetServiceAvailable = A0_2
end

L0_1.onServiceAvailabilityChanged = L1_1
L0_1 = _G
L0_1 = L0_1.Assets

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = Assets
    L6_2 = L6_2.getAssetKey
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = g_assetFilenames
    L8_2 = L5_2.filename
    L7_2[L4_2] = L8_2
    L7_2 = print
    L8_2 = "Loaded "
    L9_2 = _G
    L9_2 = L9_2.tostring
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L10_2 = "!"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
    L7_2 = Assets
    L7_2 = L7_2.isRequiredAsset
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = Assets
      L7_2 = L7_2.requiredAssetsSuccessCb
      if L7_2 then
        L7_2 = Assets
        L7_2 = L7_2.requiredAssetsSuccessCb
        L8_2 = L6_2
        L9_2 = L5_2.hash
        L7_2(L8_2, L9_2)
      end
    end
    L7_2 = eventManager
    L8_2 = L7_2
    L7_2 = L7_2.queueEvent
    L9_2 = {}
    L10_2 = events
    L10_2 = L10_2.EID_ASSET_LOAD_SUCCESS
    L9_2.id = L10_2
    L9_2.target = L6_2
    L7_2(L8_2, L9_2)
  end
end

L0_1.onLoadSuccess = L1_1
L0_1 = _G
L0_1 = L0_1.Assets

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = Assets
    L8_2 = L8_2.getAssetKey
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = Assets
    L9_2 = L9_2.isRequiredAsset
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = Assets
      L9_2 = L9_2.requiredAssetsFailureCb
      if L9_2 then
        L9_2 = Assets
        L9_2 = L9_2.requiredAssetsFailureCb
        L10_2 = L8_2
        L11_2 = A1_2
        L12_2 = A2_2
        L9_2(L10_2, L11_2, L12_2)
      end
    end
    L9_2 = eventManager
    L10_2 = L9_2
    L9_2 = L9_2.queueEvent
    L11_2 = {}
    L12_2 = events
    L12_2 = L12_2.EID_ASSET_LOAD_FAILED
    L11_2.id = L12_2
    L11_2.target = L8_2
    L9_2(L10_2, L11_2)
  end
end

L0_1.onLoadError = L1_1
L0_1 = _G
L0_1 = L0_1.Assets

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = Assets
  L4_2 = L4_2.firstProgressCall
  if L4_2 then
    L4_2 = Assets
    L4_2.firstProgressCall = false
    return
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = Assets
    L9_2 = L9_2.getAssetKey
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L10_2 = _G
    L10_2 = L10_2.pairs
    L11_2 = g_requiredAssetsFiles
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      if L7_2 == L14_2 and 0 < A2_2 then
        L15_2 = Assets
        L15_2 = L15_2.requiredAssetsProgressCb
        if L15_2 then
          L15_2 = Assets
          L15_2 = L15_2.requiredAssetsProgressCb
          L16_2 = L9_2
          L17_2 = 1
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = Assets
    L9_2 = L9_2.getAssetKey
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = _G
    L10_2 = L10_2.pairs
    L11_2 = g_requiredAssetsFiles
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      if L8_2 == L14_2 and 0 < A2_2 then
        L15_2 = Assets
        L15_2 = L15_2.requiredAssetsProgressCb
        if L15_2 then
          L15_2 = Assets
          L15_2 = L15_2.requiredAssetsProgressCb
          L16_2 = L9_2
          L17_2 = A3_2 / A2_2
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
end

L0_1.onLoadProgress = L1_1
L0_1 = Assets

function L1_1(A0_2)
  local L1_2
  L1_2 = g_requiredAssetsFiles
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = true
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = false
  ::lbl_9::
  return L1_2
end

L0_1.isRequiredAsset = L1_1
L0_1 = Assets

function L1_1(A0_2)
  local L1_2
  L1_2 = assets_loaded
  if not L1_2 then
    L1_2 = Assets
    L1_2 = L1_2.assetServiceAvailable
    if L1_2 then
      L1_2 = Assets
      L1_2 = L1_2.beginAssetLoading
      L1_2()
      L1_2 = true
      assets_loaded = L1_2
    end
  end
end

L0_1.update = L1_1
L0_1 = Assets

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Assets
  L3_2.requiredAssetsSuccessCb = A0_2
  L3_2 = Assets
  L3_2.requiredAssetsFailureCb = A1_2
  L3_2 = Assets
  L3_2.requiredAssetsProgressCb = A2_2
  L3_2 = {}
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = g_requiredAssetsFiles
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = downloadSoundAssets
    if not L9_2 or L7_2 ~= "sounds_1_8_0" then
      L9_2 = downloadVisualAssets
      if not L9_2 or L7_2 ~= "images" then
        goto lbl_24
      end
    end
    L3_2[L7_2] = L8_2
    ::lbl_24::
  end
  L4_2 = _G
  L4_2 = L4_2.Assets
  L4_2 = L4_2.native_loadFiles
  L5_2 = L3_2
  L4_2(L5_2)
end

L0_1.downloadRequiredAssets = L1_1
L0_1 = Assets

function L1_1()
  local L0_2, L1_2
  L0_2 = _G
  L0_2 = L0_2.Assets
  L0_2 = L0_2.native_loadFiles
  L1_2 = g_optionalAssetsFiles
  L0_2(L1_2)
end

L0_1.downloadOptionalAssets = L1_1
L0_1 = Assets

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  
  function L0_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = SettingsWrapper
    L3_3 = L2_3
    L2_3 = L2_3.getAssetHash
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = Assets
    L3_3.requiredAssetsLoaded = true
    if A0_3 == "sounds_1_8_0" and A1_3 and A1_3 ~= L2_3 then
      L3_3 = _G
      L3_3 = L3_3.Assets
      L3_3 = L3_3.native_unzipArchive
      L4_3 = Assets
      L4_3 = L4_3.getAssetFilename
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      
      function L5_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 == "UNZIP_OK" then
          L1_4 = SettingsWrapper
          L2_4 = L1_4
          L1_4 = L1_4.setAssetHash
          L3_4 = A0_3
          L4_4 = A1_3
          L1_4(L2_4, L3_4, L4_4)
        end
      end
      
      function L6_3(A0_4)
        local L1_4
      end
      
      L3_3(L4_3, L5_3, L6_3)
    end
  end
  
  L1_2 = Assets
  L1_2 = L1_2.downloadRequiredAssets
  L2_2 = L0_2
  L3_2 = nil
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.loadRequiredAssetsInBackground = L1_1
L0_1 = Assets

function L1_1()
  local L0_2, L1_2
  L0_2 = Assets
  L0_2 = L0_2.assetServiceAvailable
  if L0_2 then
    L0_2 = Assets
    L0_2 = L0_2.downloadOptionalAssets
    L0_2()
    L0_2 = Assets
    L0_2 = L0_2.requiredAssetsLoaded
    if not L0_2 then
      L0_2 = Assets
      L0_2 = L0_2.requiredAssetDownloadStarted
      if L0_2 then
        L0_2 = Assets
        L0_2 = L0_2.loadRequiredAssetsInBackground
        L0_2()
      end
    end
  end
end

L0_1.beginAssetLoading = L1_1
