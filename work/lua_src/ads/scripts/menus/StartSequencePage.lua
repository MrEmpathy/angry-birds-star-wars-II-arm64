local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
StartSequencePage = L0_1
L0_1 = gamelua
L0_1 = L0_1.deviceModel
L0_1 = L0_1 == "blackberry"
L1_1 = {}
L2_1 = {}
L2_1.sprite = "SPLASH_STARWARS"
L2_1.duration = 2
L2_1.red = 0
L2_1.green = 0
L2_1.blue = 0
L2_1.assetLoading = true
L2_1.startLoadingAfter = true
L2_1.scale = 1
L2_1.onlyFitHeight = true
L1_1.AngryBirds = L2_1
L2_1 = {}
L2_1.sprite = "LOGO_ROVIO"
L2_1.duration = 4
L2_1.red = 0
L2_1.green = 0
L2_1.blue = 0
L2_1.fadeInTime = 0.3
L2_1.fadeOutTime = 0.3
L2_1.scale = 0.5
L1_1.Rovio = L2_1
L2_1 = {}
L2_1.sprite = "LUCASARTS_LOGO"
L2_1.duration = 4
L2_1.red = 0
L2_1.green = 0
L2_1.blue = 0
L2_1.fadeInTime = 0.3
L2_1.fadeOutTime = 0.3
L2_1.scale = 0.5
L1_1.Lucas = L2_1
L2_1 = StartSequencePage

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  A0_2.sequence = L1_2
  A0_2.currentIndex = 1
  A0_2.time = 0
  A0_2.waitTime = 0.1
  A0_2.birdAnimationSwitch = 1
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = "LOADING_BIRD_1"
  L5_2 = 0.2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = {}
  L5_2 = "LOADING_BIRD_2"
  L6_2 = 0.3
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = {}
  L6_2 = "LOADING_BIRD_1"
  L7_2 = 0.2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2.blink = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = "LOADING_BIRD_1"
  L5_2 = 0.2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = {}
  L5_2 = "LOADING_BIRD_4"
  L6_2 = 0.4
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = {}
  L6_2 = "LOADING_BIRD_1"
  L7_2 = 0.2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2.scream = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = "LOADING_BIRD_1"
  L5_2 = 0.2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = {}
  L5_2 = "LOADING_BIRD_2"
  L6_2 = 0.2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = {}
  L6_2 = "LOADING_BIRD_3"
  L7_2 = 0.5
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L6_2 = {}
  L7_2 = "LOADING_BIRD_2"
  L8_2 = 0.2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = {}
  L8_2 = "LOADING_BIRD_1"
  L9_2 = 0.2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L1_2.scream_closed = L2_2
  A0_2.animations = L1_2
  L1_2 = {}
  L2_2 = "blink"
  L3_2 = "scream"
  L4_2 = "scream_closed"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2.animationNames = L1_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.loadStartSequenceAssets
    L1_2()
    L1_2 = gamelua
    L1_2 = L1_2.initializeSoundSystem
    L1_2()
  else
    L1_2 = _G
    L1_2 = L1_2.table
    L1_2 = L1_2.insert
    L2_2 = A0_2.sequence
    L3_2 = "AngryBirds"
    L1_2(L2_2, L3_2)
  end
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.sequence
  L3_2 = "Rovio"
  L1_2(L2_2, L3_2)
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.sequence
  L3_2 = "Lucas"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = ui
  L3_2 = L3_2.Image
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "startSequenceScreen"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.soundDownloadProgress = 0
  A0_2.graphicsDownloadProgress = 0
  A0_2.soundUnpackingProgress = 0
  A0_2.graphicsUnpackingProgress = 0
  L1_2 = gamelua
  L1_2 = L1_2.changeRetinaResolution
  L2_2 = true
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "progressBackground"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "LOADING_LIGHTSABER_BACKGROUND"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L1_2.visible = false
  L2_2 = ui
  L2_2 = L2_2.ProgressBar
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "progressBar"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.setImages
  L5_2 = "LOADING_LIGHTSABER_BASE"
  L6_2 = "LOADING_LIGHTSABER_FULL"
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.setValue
  L5_2 = 0.24
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setMax
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L4_2 = L1_2
  L3_2 = L1_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setUseBarImageForPivotAndWidth
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = ui
  L3_2 = L3_2.DummyText
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "progressText"
  L5_2.text = "0%"
  L6_2 = gamelua
  L6_2 = L6_2.getFontBasic
  L6_2 = L6_2()
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L1_2
  L4_2 = L1_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L2_2.text = L3_2
  L4_2 = ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "loadingBird"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = "LOADING_BIRD_1"
  L5_2(L6_2, L7_2)
  L6_2 = L1_2
  L5_2 = L1_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.DummyText
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "description"
  L8_2 = gamelua
  L8_2 = L8_2.getText
  L9_2 = "TEXT_DOWNLOADING_ASSETS"
  L8_2 = L8_2(L9_2)
  L7_2.text = L8_2
  L8_2 = gamelua
  L8_2 = L8_2.getFontBasic
  L8_2 = L8_2()
  L7_2.font = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L1_2
  L6_2 = L1_2.addChild
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end

L2_1.init = L3_1
L2_1 = StartSequencePage

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.logFlurryTimerEvent
  L2_2 = "Loading time - boot to splash"
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.switchToSplash
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.downloadSoundAssets
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.downloadVisualAssets
  end
  A0_2.enableAssetLoading = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.downloadSoundAssets
  L1_2 = not L1_2
  A0_2.loadingSoundsDone = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.downloadVisualAssets
  L1_2 = not L1_2
  A0_2.loadingVisualAssetsDone = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PROCEED_TO_MAIN_MENU
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L2_1.onEntry = L3_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2 / A1_2
  L4_2 = 1.7777778
  if A2_2 then
    if L3_2 < L4_2 then
      L5_2 = 1
      return L5_2
    else
      L5_2 = gamelua
      L5_2 = L5_2.screenHeight
      L5_2 = L5_2 / A1_2
      return L5_2
    end
  elseif L3_2 < L4_2 then
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = L5_2 / A1_2
    return L5_2
  else
    L5_2 = gamelua
    L5_2 = L5_2.screenWidth
    L5_2 = L5_2 / A0_2
    return L5_2
  end
end

L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.currentSplash
  L1_2 = L1_2.scale
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = gamelua
  L2_2 = L2_2.getUIScale
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "startSequenceScreen"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_1
  L5_2 = L3_2.w
  L6_2 = L3_2.h
  L7_2 = A0_2.currentSplash
  L7_2 = L7_2.onlyFitHeight
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2 = L4_2 * L1_2
  L5_2 = L4_2
  L3_2.scaleY = L4_2
  L3_2.scaleX = L5_2
end

L3_1.scaleSplashImage = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = L2_2 * 0.5
  A0_2.x = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L2_2 = L2_2 * 0.5
  A0_2.y = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "progressBackground"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setScale
    L5_2 = L1_2 * 0.9
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.res
    L3_2 = L3_2.getSpriteBounds
    L4_2 = L2_2.image
    L3_2, L4_2 = L3_2(L4_2)
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = L5_2 * 0.5
    L6_2 = L4_2 * 0.5
    L6_2 = L6_2 * L1_2
    L5_2 = L5_2 - L6_2
    L2_2.y = L5_2
    L5_2 = gamelua
    L5_2 = L5_2.screenWidth
    L5_2 = L5_2 * 0.5
    L6_2 = L3_2 * 0.5
    L6_2 = L6_2 * L1_2
    L5_2 = L5_2 - L6_2
    L2_2.x = L5_2
    L6_2 = L2_2
    L5_2 = L2_2.getChild
    L7_2 = "progressBar"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = 30 * L1_2
      L5_2.x = L6_2
      L6_2 = 10 * L1_2
      L5_2.y = L6_2
      L6_2 = L5_2.text
      L7_2 = L6_2
      L6_2 = L6_2.setScale
      L8_2 = 0.8
      L6_2(L7_2, L8_2)
    end
    L7_2 = L2_2
    L6_2 = L2_2.getChild
    L8_2 = "description"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = -30 * L1_2
      L6_2.y = L7_2
      L7_2 = 10 * L1_2
      L6_2.x = L7_2
      L8_2 = L6_2
      L7_2 = L6_2.setScale
      L9_2 = 0.65
      L7_2(L8_2, L9_2)
    end
    L8_2 = L2_2
    L7_2 = L2_2.getChild
    L9_2 = "progressText"
    L7_2 = L7_2(L8_2, L9_2)
    if L5_2 and L7_2 then
      L9_2 = L7_2
      L8_2 = L7_2.setScale
      L10_2 = 0.77
      L8_2(L9_2, L10_2)
      L8_2 = L5_2.x
      L10_2 = L5_2
      L9_2 = L5_2.getWidth
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2 * 0.43
      L9_2 = L9_2 * L1_2
      L8_2 = L8_2 + L9_2
      L7_2.x = L8_2
      L7_2.y = 0
    end
    L9_2 = L2_2
    L8_2 = L2_2.getChild
    L10_2 = "loadingBird"
    L8_2 = L8_2(L9_2, L10_2)
    if L5_2 and L8_2 then
      L9_2 = _G
      L9_2 = L9_2.res
      L9_2 = L9_2.getSpriteBounds
      L10_2 = L8_2.image
      L9_2, L10_2 = L9_2(L10_2)
      loadingBirdH = L10_2
      loadingBirdW = L9_2
      L10_2 = L8_2
      L9_2 = L8_2.setScale
      L11_2 = 1.3
      L9_2(L10_2, L11_2)
      L9_2 = L5_2.x
      L11_2 = L5_2
      L10_2 = L5_2.getWidth
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2 * 0.64
      L10_2 = L10_2 * L1_2
      L9_2 = L9_2 - L10_2
      L8_2.x = L9_2
      L9_2 = L5_2.y
      L10_2 = loadingBirdH
      L10_2 = L10_2 * 0.2
      L10_2 = L10_2 * L1_2
      L9_2 = L9_2 - L10_2
      L8_2.y = L9_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.scaleSplashImage
  L3_2(L4_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
end

L3_1.layout = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_PROCEED_TO_MAIN_MENU
  if L2_2 == L3_2 then
    L2_2 = gamelua
    L2_2 = L2_2.startSequenceEnded
    L3_2 = true
    L2_2(L3_2)
  end
end

L3_1.eventTriggered = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" and (A2_2 == "RETURN" or A2_2 == "ESCAPE") then
    L5_2 = A0_2.currentSplash
    L5_2 = L5_2.duration
    A0_2.time = L5_2
  end
  L5_2 = "BLOCK"
  L6_2 = nil
  L7_2 = A0_2
  return L5_2, L6_2, L7_2
end

L3_1.onKeyEvent = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == "LRELEASE" then
    L4_2 = A0_2.loadingSoundsDone
    if L4_2 then
      L4_2 = A0_2.loadingVisualAssetsDone
      if L4_2 then
        L4_2 = A0_2.currentSplash
        L4_2 = L4_2.duration
        A0_2.time = L4_2
      end
    end
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L3_1.onPointerEvent = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 1
  L2_2 = A0_2.currentSplash
  L2_2 = L2_2.fadeInTime
  if L2_2 then
    L2_2 = A0_2.time
    L3_2 = A0_2.currentSplash
    L3_2 = L3_2.fadeInTime
    if L2_2 < L3_2 then
      L2_2 = A0_2.time
      L3_2 = A0_2.currentSplash
      L3_2 = L3_2.fadeInTime
      L1_2 = L2_2 / L3_2
  end
  else
    L2_2 = A0_2.currentSplash
    L2_2 = L2_2.fadeOutTime
    if L2_2 then
      L2_2 = A0_2.currentSplash
      L2_2 = L2_2.duration
      L3_2 = A0_2.time
      L2_2 = L2_2 - L3_2
      L3_2 = A0_2.currentSplash
      L3_2 = L3_2.fadeOutTime
      if L2_2 < L3_2 then
        L2_2 = A0_2.currentSplash
        L2_2 = L2_2.duration
        L3_2 = A0_2.time
        L2_2 = L2_2 - L3_2
        L3_2 = A0_2.currentSplash
        L3_2 = L3_2.fadeOutTime
        L1_2 = L2_2 / L3_2
      end
    end
  end
  return L1_2
end

L3_1.calculateSplashAlpha = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.soundDownloadProgress
  L1_2 = L1_2 * 0.25
  L2_2 = A0_2.soundUnpackingProgress
  L2_2 = L2_2 * 0.25
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2.graphicsDownloadProgress
  L2_2 = L2_2 * 0.25
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2.graphicsUnpackingProgress
  L2_2 = L2_2 * 0.25
  L1_2 = L1_2 + L2_2
  return L1_2
end

L3_1.getAssetLoadProgress = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.errorPromptShown
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.ui
    L2_2 = L2_2.ConfirmPrompt
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = {}
    L5_2 = title
    L4_2.title = L5_2
    L4_2.content = A1_2
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = gamelua
      L0_3 = L0_3.requestExit
      L0_3()
    end
    
    L4_2.returnValue = L5_2
    L4_2.isInSplashScreen = true
    L4_2.hideCloseButton = true
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = gamelua
      L0_3 = L0_3.requestExit
      L0_3()
    end
    
    L4_2.closeCallback = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = gamelua
    L3_2 = L3_2.eventManager
    L4_2 = L3_2
    L3_2 = L3_2.notify
    L5_2 = {}
    L6_2 = gamelua
    L6_2 = L6_2.events
    L6_2 = L6_2.EID_PUSH_FRAME
    L5_2.id = L6_2
    L5_2.target = L2_2
    L3_2(L4_2, L5_2)
    A0_2.errorPromptShown = true
  end
end

L3_1.displayErrorPrompt = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = gamelua
    L2_3 = L2_3.SettingsWrapper
    L3_3 = L2_3
    L2_3 = L2_3.getAssetHash
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    if A0_3 == "sounds_1_8_0" and A1_3 and A1_3 ~= L2_3 then
      L3_3 = _G
      L3_3 = L3_3.Assets
      L3_3 = L3_3.native_unzipArchive
      L4_3 = gamelua
      L4_3 = L4_3.Assets
      L4_3 = L4_3.getAssetFilename
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      
      function L5_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 == "UNZIP_OK" then
          L1_4 = gamelua
          L1_4 = L1_4.SettingsWrapper
          L2_4 = L1_4
          L1_4 = L1_4.setAssetHash
          L3_4 = A0_3
          L4_4 = A1_3
          L1_4(L2_4, L3_4, L4_4)
          L1_4 = A0_2
          L2_4 = L1_4
          L1_4 = L1_4.continueAssetLoading
          L1_4(L2_4)
        else
          L1_4 = A0_2
          L2_4 = L1_4
          L1_4 = L1_4.displayErrorPrompt
          L3_4 = gamelua
          L3_4 = L3_4.getText
          L4_4 = "TEXT_ASSET_UNPACKING_FAILED"
          L3_4, L4_4 = L3_4(L4_4)
          L1_4(L2_4, L3_4, L4_4)
        end
      end
      
      function L6_3(A0_4)
        local L1_4
        L1_4 = A0_2
        L1_4.soundUnpackingProgress = A0_4
      end
      
      L3_3(L4_3, L5_3, L6_3)
    elseif A0_3 == "sounds_1_8_0" and A1_3 and A1_3 == L2_3 then
      L3_3 = A0_2
      L3_3.soundDownloadProgress = 1
      L3_3 = A0_2
      L3_3.soundUnpackingProgress = 1
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.continueAssetLoading
      L3_3(L4_3)
    elseif A0_3 == "images" and A1_3 and A1_3 ~= L2_3 then
      L3_3 = _G
      L3_3 = L3_3.Assets
      L3_3 = L3_3.native_unzipArchive
      L4_3 = gamelua
      L4_3 = L4_3.Assets
      L4_3 = L4_3.getAssetFilename
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      
      function L5_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 == "UNZIP_OK" then
          L1_4 = gamelua
          L1_4 = L1_4.SettingsWrapper
          L2_4 = L1_4
          L1_4 = L1_4.setAssetHash
          L3_4 = A0_3
          L4_4 = A1_3
          L1_4(L2_4, L3_4, L4_4)
          L1_4 = A0_2
          L2_4 = L1_4
          L1_4 = L1_4.continueGraphicsLoading
          L1_4(L2_4)
        else
          L1_4 = A0_2
          L2_4 = L1_4
          L1_4 = L1_4.displayErrorPrompt
          L3_4 = gamelua
          L3_4 = L3_4.getText
          L4_4 = "TEXT_ASSET_UNPACKING_FAILED"
          L3_4, L4_4 = L3_4(L4_4)
          L1_4(L2_4, L3_4, L4_4)
        end
      end
      
      function L6_3(A0_4)
        local L1_4
        L1_4 = A0_2
        L1_4.graphicsUnpackingProgress = A0_4
      end
      
      L3_3(L4_3, L5_3, L6_3)
    elseif A0_3 == "images" and A1_3 and A1_3 == L2_3 then
      L3_3 = A0_2
      L3_3.graphicsDownloadProgress = 1
      L3_3 = A0_2
      L3_3.graphicsUnpackingProgress = 1
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.continueGraphicsLoading
      L3_3(L4_3)
    end
  end
  
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = gamelua
    L3_3 = L3_3.SettingsWrapper
    L4_3 = L3_3
    L3_3 = L3_3.getAssetHash
    L5_3 = A0_3
    L3_3 = L3_3(L4_3, L5_3)
    if A0_3 == "sounds_1_8_0" then
      if L3_3 then
        L4_3 = A0_2
        L5_3 = L4_3
        L4_3 = L4_3.continueAssetLoading
        L4_3(L5_3)
      else
        L4_3 = A0_2
        L5_3 = L4_3
        L4_3 = L4_3.displayErrorPrompt
        L6_3 = gamelua
        L6_3 = L6_3.getText
        L7_3 = "TEXT_ASSET_DOWNLOADING_FAILED"
        L6_3, L7_3 = L6_3(L7_3)
        L4_3(L5_3, L6_3, L7_3)
      end
    elseif A0_3 == "images" then
      if L3_3 then
        L4_3 = A0_2
        L5_3 = L4_3
        L4_3 = L4_3.continueGraphicsLoading
        L4_3(L5_3)
      else
        L4_3 = A0_2
        L5_3 = L4_3
        L4_3 = L4_3.displayErrorPrompt
        L6_3 = gamelua
        L6_3 = L6_3.getText
        L7_3 = "TEXT_ASSET_DOWNLOADING_FAILED"
        L6_3, L7_3 = L6_3(L7_3)
        L4_3(L5_3, L6_3, L7_3)
      end
    end
  end
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A0_3 == "sounds_1_8_0" then
      if 0.1 <= A1_3 and A1_3 < 1 then
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3.showProgressBar
        L4_3 = true
        L2_3(L3_3, L4_3)
      end
      L2_3 = A0_2
      L2_3.soundDownloadProgress = A1_3
    elseif A0_3 == "images" then
      if 0.1 <= A1_3 and A1_3 < 1 then
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3.showProgressBar
        L4_3 = true
        L2_3(L3_3, L4_3)
      end
      L2_3 = A0_2
      L2_3.graphicsDownloadProgress = A1_3
    end
  end
  
  L4_2 = gamelua
  L4_2 = L4_2.Assets
  L4_2.requiredAssetDownloadStarted = true
  L4_2 = gamelua
  L4_2 = L4_2.Assets
  L4_2 = L4_2.downloadRequiredAssets
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end

L3_1.onRovioAccountAvailable = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2.g_soundsAssetPath = "assets_service/16000hz-16bit-mono"
  L1_2 = gamelua
  L1_2 = L1_2.soundManager
  L1_2 = L1_2.createAudioAssets
  L2_2 = "assets_service/16000hz-16bit-mono"
  L1_2(L2_2)
  A0_2.loadingSoundsDone = true
end

L3_1.continueAssetLoading = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2
  A0_2.loadingVisualAssetsDone = true
end

L3_1.continueGraphicsLoading = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.birdAnimationSwitch
  if L3_2 <= 0 then
    L3_2 = A0_2.animationNames
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.random
    L5_2 = 3
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2.animations
    L4_2 = L4_2[L3_2]
    A0_2.currentAnimation = L4_2
    A0_2.animationIndex = nil
    A0_2.frameDuration = 0
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.random
    L5_2 = 0.5
    L6_2 = 2
    L4_2 = L4_2(L5_2, L6_2)
    A0_2.birdAnimationSwitch = L4_2
  else
    L3_2 = A0_2.currentAnimation
    if L3_2 then
      L3_2 = A0_2.animationIndex
      if not L3_2 then
        A0_2.animationIndex = 1
        L3_2 = A0_2.currentAnimation
        L4_2 = A0_2.animationIndex
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2[2]
        A0_2.frameDuration = L3_2
      end
      L4_2 = A0_2
      L3_2 = A0_2.getChild
      L5_2 = "progressBackground"
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L5_2 = L3_2
        L4_2 = L3_2.getChild
        L6_2 = "loadingBird"
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          L6_2 = L4_2
          L5_2 = L4_2.setImage
          L7_2 = A0_2.currentAnimation
          L8_2 = A0_2.animationIndex
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2[1]
          L5_2(L6_2, L7_2)
        end
      end
      L4_2 = A0_2.frameDuration
      L4_2 = L4_2 - A1_2
      A0_2.frameDuration = L4_2
      L4_2 = A0_2.frameDuration
      if L4_2 < 0 then
        L4_2 = A0_2.animationIndex
        L4_2 = L4_2 + 1
        A0_2.animationIndex = L4_2
        L4_2 = A0_2.animationIndex
        L5_2 = A0_2.currentAnimation
        L5_2 = #L5_2
        if L4_2 > L5_2 then
          A0_2.currentAnimation = nil
        else
          L4_2 = A0_2.currentAnimation
          L5_2 = A0_2.animationIndex
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2[2]
          A0_2.frameDuration = L4_2
        end
      end
    else
      L3_2 = A0_2.birdAnimationSwitch
      L3_2 = L3_2 - A1_2
      A0_2.birdAnimationSwitch = L3_2
    end
  end
end

L3_1.updateBirdAnimation = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "progressBackground"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2.visible = A1_2
  end
end

L3_1.showProgressBar = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.done
  if L3_2 then
    L3_2 = ui
    L3_2 = L3_2.Frame
    L3_2 = L3_2.update
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = A0_2.waitTime
  L3_2 = L3_2 - A1_2
  A0_2.waitTime = L3_2
  L3_2 = A0_2.drawnOnce
  if L3_2 then
    L3_2 = A0_2.initialLoadingDone
    if not L3_2 then
      L3_2 = A0_2.waitTime
      if L3_2 <= 0 then
        L3_2 = gamelua
        L3_2 = L3_2.loadStartSequenceAssets
        L3_2()
        L3_2 = gamelua
        L3_2 = L3_2.initializeSoundSystem
        L3_2()
        A0_2.initialLoadingDone = true
        L4_2 = A0_2
        L3_2 = A0_2.layout
        L3_2(L4_2)
        L3_2 = gamelua
        L3_2 = L3_2.SettingsWrapper
        L4_2 = L3_2
        L3_2 = L3_2.getAssetHash
        L5_2 = "sounds_1_8_0"
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = gamelua
        L4_2 = L4_2.SettingsWrapper
        L5_2 = L4_2
        L4_2 = L4_2.getAssetHash
        L6_2 = "images"
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = A0_2.enableAssetLoading
        if L5_2 and (not L3_2 or not L4_2) then
          L6_2 = A0_2
          L5_2 = A0_2.showProgressBar
          L7_2 = true
          L5_2(L6_2, L7_2)
        else
          A0_2.loadingTimeout = 30
        end
      end
    end
  end
  L3_2 = A0_2.loadingTimeout
  if L3_2 then
    L3_2 = A0_2.loadingTimeout
    L3_2 = L3_2 - A1_2
    A0_2.loadingTimeout = L3_2
    L3_2 = A0_2.loadingTimeout
    if L3_2 < 0 then
      L3_2 = gamelua
      L3_2 = L3_2.SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.getAssetHash
      L5_2 = "sounds_1_8_0"
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = gamelua
      L4_2 = L4_2.SettingsWrapper
      L5_2 = L4_2
      L4_2 = L4_2.getAssetHash
      L6_2 = "images"
      L4_2 = L4_2(L5_2, L6_2)
      if L3_2 and L4_2 then
        A0_2.timeOutLoading = true
        L5_2 = gamelua
        L5_2 = L5_2.Assets
        L5_2.requiredAssetsLoaded = false
        L6_2 = A0_2
        L5_2 = A0_2.continueAssetLoading
        L5_2(L6_2)
        L6_2 = A0_2
        L5_2 = A0_2.continueGraphicsLoading
        L5_2(L6_2)
      end
      A0_2.loadingTimeout = nil
    end
  end
  L3_2 = A0_2.enableAssetLoading
  if L3_2 then
    L3_2 = A0_2.initialLoadingDone
    if L3_2 then
      L3_2 = A0_2.timeOutLoading
      if not L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.RovioAccount
        L3_2 = L3_2.loginStatus
        if L3_2 == "SUCCESS" then
          A0_2.loadingTimeout = nil
          L3_2 = gamelua
          L3_2 = L3_2.Assets
          L3_2.requiredAssetsLoaded = true
          L4_2 = A0_2
          L3_2 = A0_2.onRovioAccountAvailable
          L3_2(L4_2)
          A0_2.enableAssetLoading = false
        else
          L3_2 = gamelua
          L3_2 = L3_2.RovioAccount
          L3_2 = L3_2.loginStatus
          if L3_2 == "FAILED" then
            A0_2.loadingTimeout = nil
            A0_2.enableAssetLoading = false
            L3_2 = gamelua
            L3_2 = L3_2.Assets
            L3_2.requiredAssetsLoaded = true
            L3_2 = gamelua
            L3_2 = L3_2.SettingsWrapper
            L4_2 = L3_2
            L3_2 = L3_2.getAssetHash
            L5_2 = "sounds_1_8_0"
            L3_2 = L3_2(L4_2, L5_2)
            L4_2 = gamelua
            L4_2 = L4_2.SettingsWrapper
            L5_2 = L4_2
            L4_2 = L4_2.getAssetHash
            L6_2 = "images"
            L4_2 = L4_2(L5_2, L6_2)
            if L3_2 and L4_2 then
              L6_2 = A0_2
              L5_2 = A0_2.continueAssetLoading
              L5_2(L6_2)
              L6_2 = A0_2
              L5_2 = A0_2.continueGraphicsLoading
              L5_2(L6_2)
            else
              L6_2 = A0_2
              L5_2 = A0_2.displayErrorPrompt
              L7_2 = gamelua
              L7_2 = L7_2.getText
              L8_2 = "TEXT_ASSET_DOWNLOADING_FAILED"
              L7_2, L8_2 = L7_2(L8_2)
              L5_2(L6_2, L7_2, L8_2)
            end
          end
        end
      end
    end
  end
  L3_2 = A0_2.loadingVisualAssetsDone
  if L3_2 then
    L3_2 = A0_2.visualAssetsLoaded
    if not L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.startInitialLoading
      L3_2()
      A0_2.visualAssetsLoaded = true
    end
  end
  L3_2 = A0_2.loadingSoundsDone
  if L3_2 then
    L3_2 = A0_2.loadingVisualAssetsDone
    if L3_2 then
      L3_2 = A0_2.time
      L3_2 = L3_2 + A1_2
      A0_2.time = L3_2
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2.getChild
    L5_2 = "progressBar"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L5_2 = A0_2
      L4_2 = A0_2.getAssetLoadProgress
      L4_2 = L4_2(L5_2)
      L6_2 = L3_2
      L5_2 = L3_2.setValue
      L7_2 = L4_2 * 0.76
      L7_2 = 0.24 + L7_2
      L5_2(L6_2, L7_2)
      L5_2 = _G
      L5_2 = L5_2.tostring
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.ceil
      L7_2 = L4_2 * 100
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = "%"
      L5_2 = L5_2 .. L6_2
      L6_2 = L3_2.text
      L7_2 = L6_2
      L6_2 = L6_2.setText
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.updateBirdAnimation
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.currentSplash
  L3_2 = L3_2.assetLoading
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.showProgressBar
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "startSequenceScreen"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.calculateSplashAlpha
  L4_2 = L4_2(L5_2)
  L3_2.alpha = L4_2
  L4_2 = A0_2.currentSplash
  L4_2 = L4_2.startScale
  if L4_2 then
    L4_2 = A0_2.currentSplash
    L4_2 = L4_2.startScale
    L5_2 = A0_2.currentSplash
    L5_2 = L5_2.duration
    L6_2 = A0_2.time
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.currentSplash
    L6_2 = L6_2.duration
    L5_2 = L5_2 / L6_2
    L4_2 = L4_2 * L5_2
    L3_2.scaleX = L4_2
    L4_2 = A0_2.currentSplash
    L4_2 = L4_2.startScale
    L5_2 = A0_2.currentSplash
    L5_2 = L5_2.duration
    L6_2 = A0_2.time
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.currentSplash
    L6_2 = L6_2.duration
    L5_2 = L5_2 / L6_2
    L4_2 = L4_2 * L5_2
    L3_2.scaleY = L4_2
  end
  L4_2 = A0_2.time
  L5_2 = A0_2.currentSplash
  L5_2 = L5_2.duration
  if L4_2 >= L5_2 then
    L4_2 = A0_2.drawnOnce
    if L4_2 then
      L4_2 = A0_2.currentIndex
      L5_2 = A0_2.sequence
      L5_2 = #L5_2
      if L4_2 < L5_2 then
        L5_2 = A0_2
        L4_2 = A0_2.switchToSplash
        L6_2 = A0_2.currentIndex
        L6_2 = L6_2 + 1
        L4_2(L5_2, L6_2)
      else
        L3_2.visible = false
        L4_2 = gamelua
        L4_2 = L4_2.print
        L5_2 = "Start sequence ended\n"
        L4_2(L5_2)
        L4_2 = gamelua
        L4_2 = L4_2.startSequenceEnded
        L4_2()
        A0_2.done = true
        A0_2.x = 0
        A0_2.y = 0
      end
    end
  end
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.update
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

L3_1.update = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = 1
  L4_2 = gamelua
  L4_2 = L4_2.getFontScale
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.getFontScale
    L4_2 = L4_2()
    L3_2 = L4_2
  end
  L4_2 = gamelua
  L4_2 = L4_2.setRenderState
  L5_2 = 0
  L6_2 = 0
  L7_2 = 1
  L8_2 = 1
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L13_2 = A0_2
  L12_2 = A0_2.getChild
  L14_2 = "startSequenceScreen"
  L12_2 = L12_2(L13_2, L14_2)
  L12_2 = L12_2.alpha
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.draw
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = gamelua
  L4_2 = L4_2.getUIScale
  L4_2 = L4_2()
  L5_2 = A0_2.drawCopyright
  if L5_2 then
    L5_2 = gamelua
    L5_2 = L5_2.setRenderState
    L6_2 = 0
    L7_2 = 0
    L8_2 = L4_2
    L9_2 = L4_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L14_2 = A0_2
    L13_2 = A0_2.getChild
    L15_2 = "startSequenceScreen"
    L13_2 = L13_2(L14_2, L15_2)
    L13_2 = L13_2.alpha
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = _G
    L5_2 = L5_2.res
    L5_2 = L5_2.drawSprite
    L6_2 = "COPYRIGHT_TEXT"
    L7_2 = gamelua
    L7_2 = L7_2.screenWidth
    L7_2 = L7_2 * 0.5
    L7_2 = L7_2 / L4_2
    L8_2 = gamelua
    L8_2 = L8_2.screenHeight
    L8_2 = L8_2 / L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2.drawLucasCopyright
  if L5_2 then
    L5_2 = gamelua
    L5_2 = L5_2.setRenderState
    L6_2 = 0
    L7_2 = 0
    L8_2 = L4_2
    L9_2 = L4_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L14_2 = A0_2
    L13_2 = A0_2.getChild
    L15_2 = "startSequenceScreen"
    L13_2 = L13_2(L14_2, L15_2)
    L13_2 = L13_2.alpha
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = _G
    L5_2 = L5_2.res
    L5_2 = L5_2.drawSprite
    L6_2 = "COPYRIGHT_TEXT_LUCAS"
    L7_2 = gamelua
    L7_2 = L7_2.screenWidth
    L7_2 = L7_2 * 0.5
    L7_2 = L7_2 / L4_2
    L8_2 = gamelua
    L8_2 = L8_2.screenHeight
    L8_2 = L8_2 / L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  A0_2.drawnOnce = true
end

L3_1.draw = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = events
  L3_2 = L3_2.EID_PROCEED_TO_MAIN_MENU
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.releaseImages
  L2_2 = {}
  L3_2 = "SPLASHES"
  L2_2[1] = L3_2
  L1_2(L2_2)
end

L3_1.onExit = L4_1
L3_1 = StartSequencePage

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = 0 < A1_2
  L4_2 = "invalid sequence index"
  L2_2(L3_2, L4_2)
  A0_2.time = 0
  A0_2.currentIndex = A1_2
  L2_2 = A0_2.sequence
  L3_2 = A0_2.currentIndex
  L2_2 = L2_2[L3_2]
  L3_2 = L1_1
  L3_2 = L3_2[L2_2]
  A0_2.currentSplash = L3_2
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A0_2.currentSplash
  L4_2 = L4_2 ~= nil
  L5_2 = "invalid splash identifier"
  L3_2(L4_2, L5_2)
  L3_2 = L2_2 == "Rovio"
  A0_2.drawCopyright = L3_2
  L3_2 = L2_2 == "Lucas"
  A0_2.drawLucasCopyright = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "startSequenceScreen"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = _G
  L6_2 = L6_2.res
  L6_2 = L6_2.getString
  L7_2 = "TEXT_BASIC"
  L8_2 = A0_2.currentSplash
  L8_2 = L8_2.sprite
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = 1
  L3_2.scaleY = 1
  L3_2.scaleX = L4_2
  L3_2.alpha = 1
  L4_2 = A0_2.currentSplash
  L4_2 = L4_2.fadeInTime
  if L4_2 then
    L3_2.alpha = 0
  end
  if L2_2 == "SWLogo" then
    L4_2 = gamelua
    L4_2 = L4_2.res
    L4_2 = L4_2.getSpriteBounds
    L5_2 = A0_2.currentSplash
    L5_2 = L5_2.sprite
    L4_2, L5_2 = L4_2(L5_2)
    L6_2 = -L5_2
    L6_2 = L6_2 / 2
    L3_2.y = L6_2
    L6_2 = 1
    L7_2 = gamelua
    L7_2 = L7_2.playAudio
    L8_2 = "mainThemeAndMenuMusic"
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = gamelua
    L7_2.previousMusicName = "mainThemeAndMenuMusic"
  end
  L4_2 = A0_2.currentSplash
  L4_2 = L4_2.startScale
  if L4_2 then
    L4_2 = A0_2.currentSplash
    L4_2 = L4_2.startScale
    L3_2.scaleX = L4_2
    L4_2 = A0_2.currentSplash
    L4_2 = L4_2.startScale
    L3_2.scaleY = L4_2
  end
  L4_2 = gamelua
  L4_2 = L4_2.setBGColor
  L5_2 = A0_2.currentSplash
  L5_2 = L5_2.red
  L6_2 = A0_2.currentSplash
  L6_2 = L6_2.green
  L7_2 = A0_2.currentSplash
  L7_2 = L7_2.blue
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.scaleSplashImage
  L4_2(L5_2)
end

L3_1.switchToSplash = L4_1
