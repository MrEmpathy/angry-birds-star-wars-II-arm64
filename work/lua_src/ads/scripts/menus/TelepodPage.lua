local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
TelepodPage = L0_1
L0_1 = TelepodPage
L0_1.isShown = false
L0_1 = TelepodPage
L0_1.audioDisabled = false
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.cloudData
  if L1_2 then
    L1_2 = print
    L2_2 = "Using camera cloud data."
    L1_2(L2_2)
    L1_2 = A0_2.cloudData
    L1_2 = L1_2.data
    A0_2.data = L1_2
  else
    L1_2 = A0_2.cachedData
    if L1_2 then
      L1_2 = print
      L2_2 = "Using camera cached data."
      L1_2(L2_2)
      L1_2 = A0_2.cachedData
      L1_2 = L1_2.data
      A0_2.data = L1_2
    else
      L1_2 = A0_2.packageData
      if L1_2 then
        L1_2 = print
        L2_2 = "Using camera package data."
        L1_2(L2_2)
        L1_2 = A0_2.packageData
        L1_2 = L1_2.data
        A0_2.data = L1_2
      end
    end
  end
  L1_2 = "animations/Telepod/telepodinfo.json"
  L2_2 = gamelua
  L2_2 = L2_2.SettingsWrapper
  L3_2 = L2_2
  L2_2 = L2_2.isDarkSide
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L1_2 = "animations/Telepod/telepodinfo_dark.json"
  end
  L2_2 = {}
  L2_2.name = "telepodTutorial"
  L2_2.fileName = L1_2
  L2_2.action = "telepod"
  L2_2.x = 0
  L2_2.y = 20
  L2_2.height = 420
  L2_2.visible = true
  A0_2.tutorialAnimation = L2_2
  A0_2.popUntilExit = false
  A0_2.currentValidationURL = nil
  A0_2.scanHandled = false
  A0_2.pauseScanner = false
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  A0_2.cameraCoordinatesInitial = L2_2
  L2_2 = _G
  L2_2 = L2_2.tostring
  L3_2 = gamelua
  L3_2 = L3_2.deviceInfoModel
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.match
  L5_2 = "([%w%- ]*)"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = nil
  L5_2 = gamelua
  L5_2 = L5_2.hasFrontTelepodCamera
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = A0_2.data
    L4_2 = L5_2 or L4_2
    if L5_2 then
      L5_2 = A0_2.data
      L5_2 = L5_2.cameraLocations
      L4_2 = L5_2[L3_2]
    end
  end
  if L4_2 then
    L5_2 = A0_2.cameraCoordinatesInitial
    L6_2 = L4_2.x
    L5_2.x = L6_2
    L5_2 = A0_2.cameraCoordinatesInitial
    L6_2 = L4_2.y
    L5_2.y = L6_2
  end
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.isDarkSide
  L5_2 = L5_2(L6_2)
  if L5_2 then
    A0_2.suffix = "SITH"
  else
    A0_2.suffix = "LIGHT"
  end
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.BGBox
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "bgBox"
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.bgBox = L5_2
  L5_2 = A0_2.bgBox
  L6_2 = {}
  L7_2 = "TUTBOX_TOP_LEFT_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.topLeft = L7_2
  L7_2 = "TUTBOX_TOP_MIDDLE_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.topMiddle = L7_2
  L7_2 = "TUTBOX_TOP_RIGHT_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.topRight = L7_2
  L7_2 = "TUTBOX_MIDDLE_LEFT_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.left = L7_2
  L7_2 = "TUTBOX_CENTER_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.center = L7_2
  L7_2 = "TUTBOX_MIDDLE_RIGHT_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.right = L7_2
  L7_2 = "TUTBOX_BOTTOM_LEFT_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.bottomLeft = L7_2
  L7_2 = "TUTBOX_BOTTOM_MIDDLE_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.bottomMiddle = L7_2
  L7_2 = "TUTBOX_BOTTOM_RIGHT_"
  L8_2 = A0_2.suffix
  L7_2 = L7_2 .. L8_2
  L6_2.bottomRight = L7_2
  L5_2.components = L6_2
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = A0_2.bgBox
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.DummyText
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "initText"
  L8_2 = gamelua
  L8_2 = L8_2.getText
  L9_2 = "TEXT_TELEPOD_PLACEMENT_TEXT"
  L8_2 = L8_2(L9_2)
  L7_2.text = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.text = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = A0_2.text
  L5_2(L6_2, L7_2)
  L5_2 = ui
  L5_2 = L5_2.ScallableButton
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "helpBtn"
  L7_2.returnValue = "HELP"
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.helpBtn = L5_2
  L5_2 = A0_2.helpBtn
  L6_2 = L5_2
  L5_2 = L5_2.setImage
  L7_2 = gamelua
  L7_2 = L7_2.getButtonImageName
  L8_2 = "pauseMenuTutorialsButton"
  L9_2 = gamelua
  L9_2 = L9_2.SettingsWrapper
  L10_2 = L9_2
  L9_2 = L9_2.isDarkSide
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = A0_2.helpBtn
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.DummyText
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "alreadyScannedText"
  L8_2 = gamelua
  L8_2 = L8_2.getText
  L9_2 = "TEXT_TELEPOD_CHARACTER_SCANNED"
  L8_2 = L8_2(L9_2)
  L7_2.text = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.alreadyScannedText = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = A0_2.alreadyScannedText
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.alreadyScannedText
  L5_2.visible = false
  L5_2 = ui
  L5_2 = L5_2.ScallableButton
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "backBtn"
  L7_2.returnValue = "CLOSE"
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.backBtn = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.SettingsWrapper
  L6_2 = L5_2
  L5_2 = L5_2.isDarkSide
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = A0_2.backBtn
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = "BTN_X"
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2.backBtn
    L6_2 = L5_2
    L5_2 = L5_2.setImage
    L7_2 = "BTN_X_LIGHT"
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2.backBtn
  L5_2.clickSound = "ButtonBack"
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = A0_2.backBtn
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.CameraPointer
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = A0_2.cameraCoordinatesInitial
  L8_2 = L8_2.x
  L7_2.x = L8_2
  L8_2 = A0_2.cameraCoordinatesInitial
  L8_2 = L8_2.y
  L7_2.y = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.cameraPointer = L5_2
  if not L4_2 then
    L5_2 = A0_2.cameraPointer
    L5_2.visible = false
  end
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = A0_2.cameraPointer
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.ui
  L5_2 = L5_2.Image
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.name = "birdReceived"
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.birdReceived = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = A0_2.birdReceived
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.birdReceived
  L5_2.visible = false
  L5_2 = {}
  L6_2 = A0_2.bgBox
  L7_2 = A0_2.text
  L8_2 = A0_2.helpBtn
  L9_2 = A0_2.backBtn
  L10_2 = A0_2.cameraPointer
  L11_2 = A0_2.tutorialAnimation
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  A0_2.objectsToHide = L5_2
  A0_2.wheelActivated = false
  A0_2.timeOut = nil
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.getSpritePivot
  L6_2 = "IN_APP_LOADING"
  L5_2, L6_2 = L5_2(L6_2)
  A0_2.loadingPY = L6_2
  A0_2.loadingPX = L5_2
  A0_2.qrValidatorBusy = false
  A0_2.backgroundAlpha = 0.6
  L5_2 = gamelua
  L5_2 = L5_2.native_startQrScanner
  L5_2()
  L5_2 = gamelua
  L5_2 = L5_2.native_setQrRecognizedCallback
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.onQrRecognized
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L5_2(L6_2)
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.init
  L6_2 = A0_2
  L5_2(L6_2)
end

L0_1.init = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.qrValidatorBusy
  if not L2_2 then
    L2_2 = A0_2.pauseScanner
    if not L2_2 then
      A0_2.qrValidatorBusy = true
      L3_2 = A0_2
      L2_2 = A0_2.validationOn
      L2_2(L3_2)
      A0_2.scanHandled = false
      L2_2 = gamelua
      L2_2 = L2_2.cancelRequestToURL
      L3_2 = A0_2.currentValidationURL
      L2_2(L3_2)
      L2_2 = gamelua
      L2_2 = L2_2.startValidateTelepodToyCodeServerURL
      L3_2 = A1_2
      L2_2 = L2_2(L3_2)
      A0_2.currentValidationURL = L2_2
    end
  end
end

L0_1.onQrRecognized = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2
  L1_2 = gamelua
  L1_2 = L1_2.native_stopQrScanner
  L1_2()
  A0_2.wheelActivated = true
  A0_2.timeOut = 10
end

L0_1.validationOn = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  L1_2 = L1_2 * 0.7
  L2_2 = L1_2 * 4
  L2_2 = L2_2 / 3
  L3_2 = gamelua
  L3_2 = L3_2.native_startQrScanner
  L3_2()
  A0_2.wheelActivated = false
  A0_2.timeOut = nil
end

L0_1.validationOff = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.deviceModel
  if L1_2 == "wp8" then
    L2_2 = A0_2
    L1_2 = A0_2.disableAudio
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_TELEPOD_OPENED
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  A0_2.scanHandled = false
  L1_2 = gamelua
  L1_2 = L1_2.cutsceneLoad
  L2_2 = A0_2.tutorialAnimation
  L2_2 = L2_2.name
  L3_2 = A0_2.tutorialAnimation
  L3_2 = L3_2.fileName
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.cutsceneStart
  L2_2 = A0_2.tutorialAnimation
  L2_2 = L2_2.name
  L3_2 = A0_2.tutorialAnimation
  L3_2 = L3_2.action
  L4_2 = "repeat"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TelepodPage
  L1_2.isShown = true
  L1_2 = gamelua
  L1_2 = L1_2.stopAudioByFilter
  L2_2 = gamelua
  L2_2 = L2_2.audioFilters
  L2_2 = L2_2.menuFilters
  L1_2(L2_2)
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.deviceModel
  if L1_2 == "wp8" then
    L2_2 = A0_2
    L1_2 = A0_2.enableAudio
    L1_2(L2_2)
  end
  L1_2 = A0_2.birdReceived
  L1_2.visible = true
  L1_2 = A0_2.birdReceived
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = A0_2.birdImage
  L1_2(L2_2, L3_2)
  A0_2.receivedUpdateTime = 0
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.FlashAnimation
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "flash"
  L3_2.file = "animations/Telepod/TELEPOD_EFFECT.json"
  L3_2.onEntryAction = "TELEPOD_EFFECT"
  L3_2.mode = "once"
  L3_2.width = 1365
  L3_2.height = 768
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.lightningAnimation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.lightningAnimation
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.layout
  L1_2(L2_2)
  L1_2 = A0_2.lightningAnimation
  L2_2 = L1_2
  L1_2 = L1_2.onEntry
  L1_2(L2_2)
end

L0_1.startBirdAnimation = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.wheelActivated = false
  A0_2.timeOut = nil
  A0_2.backgroundAlphaDark = 0.85
  L4_2 = A0_2.backgroundAlphaDark
  L5_2 = A0_2.backgroundAlpha
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 / 0.5
  A0_2.backgroundTimeStep = L4_2
  A0_2.birdName = A1_2
  A0_2.qrCode = A3_2
  A0_2.birdImage = A2_2
  L4_2 = gamelua
  L4_2 = L4_2.isTelepodScannedAndUsed
  L5_2 = A0_2.birdName
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.wasScannedAndUsed = L4_2
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.objectsToHide
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L8_2.visible = false
  end
end

L0_1.giveBird = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L2_2 = L2_2 * 1
  L2_2 = L2_2 / 2
  L3_2 = L2_2 * 4
  L3_2 = L3_2 / 3
  L4_2 = A0_2.cameraPointer
  if L4_2 then
    L4_2 = A0_2.cameraPointer
    L5_2 = L4_2
    L4_2 = L4_2.setScale
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2.bgBox
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = A0_2.bgBox
  L5_2 = gamelua
  L5_2 = L5_2.screenHeight
  L5_2 = L5_2 / 2
  L4_2.y = L5_2
  L4_2 = A0_2.bgBox
  L5_2 = L4_2
  L4_2 = L4_2.setSize
  L6_2 = 650 * L1_2
  L7_2 = 400 * L1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.bgBox
  L5_2 = L4_2
  L4_2 = L4_2.setScale
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.bgBox
  L5_2 = L4_2
  L4_2 = L4_2.getSize
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = 30
  L7_2 = A0_2.text
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 / 2
  L7_2.x = L8_2
  L7_2 = A0_2.text
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 / 2
  L9_2 = L5_2 / 2
  L8_2 = L8_2 - L9_2
  L9_2 = A0_2.text
  L10_2 = L9_2
  L9_2 = L9_2.getFontLeading
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 * L1_2
  L9_2 = L9_2 * 0.5
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2 = A0_2.text
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.backBtn
  L8_2 = A0_2.bgBox
  L8_2 = L8_2.x
  L9_2 = L4_2 * 0.5
  L8_2 = L8_2 + L9_2
  L7_2.x = L8_2
  L7_2 = A0_2.backBtn
  L8_2 = A0_2.bgBox
  L8_2 = L8_2.y
  L9_2 = L5_2 * 0.5
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  L7_2 = A0_2.backBtn
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.helpBtn
  L8_2 = A0_2.bgBox
  L8_2 = L8_2.x
  L9_2 = L4_2 * 0.5
  L8_2 = L8_2 + L9_2
  L7_2.x = L8_2
  L7_2 = A0_2.helpBtn
  L8_2 = A0_2.bgBox
  L8_2 = L8_2.y
  L9_2 = L5_2 * 0.5
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2 = A0_2.helpBtn
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.birdReceived
  L8_2 = gamelua
  L8_2 = L8_2.screenWidth
  L8_2 = L8_2 * 0.5
  L7_2.x = L8_2
  L7_2 = A0_2.birdReceived
  L8_2 = gamelua
  L8_2 = L8_2.screenHeight
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L7_2 = A0_2.birdReceived
  L8_2 = L7_2
  L7_2 = L7_2.setScale
  L9_2 = L1_2 * 0.1
  L7_2(L8_2, L9_2)
  L7_2 = ui
  L7_2 = L7_2.Frame
  L7_2 = L7_2.layout
  L8_2 = A0_2
  L7_2(L8_2)
end

L0_1.layout = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 == "CLOSE" then
    L8_2 = A0_2
    L7_2 = A0_2.close
    L9_2 = true
    L7_2(L8_2, L9_2)
  elseif L4_2 == "HELP" then
    L7_2 = gamelua
    L7_2 = L7_2.openURL
    L8_2 = gamelua
    L8_2 = L8_2.TELEPODSINFO_URL
    L9_2 = gamelua
    L9_2 = L9_2.getText
    L10_2 = "TEXT_TELEPOD_HELP_PAGE_TEXT"
    L9_2 = L9_2(L10_2)
    L10_2 = ""
    L11_2 = true
    L12_2 = "TELEPODSINFO_URL"
    
    function L13_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3.pauseScanner = false
    end
    
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    A0_2.pauseScanner = true
  end
  L7_2 = -1
  return L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "KEY_BACK" or A2_2 == "ESCAPE" then
      L6_2 = A0_2
      L5_2 = A0_2.close
      L7_2 = true
      L5_2(L6_2, L7_2)
    elseif A2_2 == "Q" then
      A0_2.delayedValidation = 0.1
    end
  end
  L5_2 = -1
  return L5_2
end

L0_1.onKeyEvent = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED
  if L2_2 == L3_2 then
    L2_2 = A0_2.scanHandled
    if not L2_2 then
      L2_2 = A0_2.pauseScanner
      if not L2_2 then
        L2_2 = nil
        
        function L3_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.validationOff
          L0_3(L1_3)
        end
        
        L4_2 = nil
        L5_2 = nil
        L6_2 = gamelua
        L6_2 = L6_2.SettingsWrapper
        L7_2 = L6_2
        L6_2 = L6_2.isOppositeSideCharacterEnabledForSide
        L8_2 = gamelua
        L8_2 = L8_2.SettingsWrapper
        L9_2 = L8_2
        L8_2 = L8_2.isDarkSide
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        if not L6_2 then
          L6_2 = gamelua
          L6_2 = L6_2.SettingsWrapper
          L7_2 = L6_2
          L6_2 = L6_2.isOppositeSideCharacterEnabledInLevel
          L8_2 = gamelua
          L8_2 = L8_2.levelName
          L6_2 = L6_2(L7_2, L8_2)
        end
        L7_2 = A1_2.status
        if L7_2 == "1" then
          L7_2 = gamelua
          L7_2 = L7_2.SettingsWrapper
          L8_2 = L7_2
          L7_2 = L7_2.isDarkSide
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = gamelua
            L7_2 = L7_2.isCharacterDark
            L8_2 = A1_2.birdType
            L7_2 = L7_2(L8_2)
            if not L7_2 then
              goto lbl_60
            end
          end
          L7_2 = gamelua
          L7_2 = L7_2.SettingsWrapper
          L8_2 = L7_2
          L7_2 = L7_2.isDarkSide
          L7_2 = L7_2(L8_2)
          if not L7_2 then
            L7_2 = gamelua
            L7_2 = L7_2.isCharacterDark
            L8_2 = A1_2.birdType
            L7_2 = L7_2(L8_2)
            ::lbl_60::
            if L7_2 and not L6_2 then
              function L3_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3
                
                L0_3 = A0_2
                L1_3 = L0_3
                L0_3 = L0_3.giveBird
                L2_3 = A1_2
                L2_3 = L2_3.birdType
                L3_3 = A1_2
                L3_3 = L3_3.img
                L4_3 = A1_2
                L4_3 = L4_3.qrCode
                L0_3(L1_3, L2_3, L3_3, L4_3)
                L0_3 = gamelua
                L0_3 = L0_3.eventManager
                L1_3 = L0_3
                L0_3 = L0_3.notify
                L2_3 = {}
                L3_3 = gamelua
                L3_3 = L3_3.events
                L3_3 = L3_3.EID_TOYCODE_SUCCESS
                L2_3.id = L3_3
                L3_3 = A1_2
                L3_3 = L3_3.birdType
                L2_3.character = L3_3
                L3_3 = A1_2
                L3_3 = L3_3.qrCode
                L2_3.qrCode = L3_3
                L0_3(L1_3, L2_3)
              end
              
              function L7_2()
                local L0_3, L1_3
                L0_3 = A0_2
                L1_3 = L0_3
                L0_3 = L0_3.validationOff
                L0_3(L1_3)
              end
              
              L8_2 = ui
              L8_2 = L8_2.PurchaseOppositeSidePrompt
              L9_2 = L8_2
              L8_2 = L8_2.new
              L10_2 = {}
              L10_2.name = "openOppositeSidePrompt"
              L11_2 = gamelua
              L11_2 = L11_2.objects
              L11_2 = L11_2.isDarkSideLevel
              L11_2 = not L11_2
              L10_2.darkSide = L11_2
              L10_2.returnFunc = L3_2
              L10_2.closeCallback = L7_2
              L8_2 = L8_2(L9_2, L10_2)
              L5_2 = L8_2
              L8_2 = gamelua
              L8_2 = L8_2.eventManager
              L9_2 = L8_2
              L8_2 = L8_2.notify
              L10_2 = {}
              L11_2 = gamelua
              L11_2 = L11_2.events
              L11_2 = L11_2.EID_TOYCODE_FAILED
              L10_2.id = L11_2
              L10_2.reason = "Using light side character on dark side"
              L11_2 = A1_2.qrCode
              L10_2.qrCode = L11_2
              L8_2(L9_2, L10_2)
          end
          else
            L7_2 = gamelua
            L7_2 = L7_2.SettingsWrapper
            L8_2 = L7_2
            L7_2 = L7_2.isDarkSide
            L7_2 = L7_2(L8_2)
            if not L7_2 then
              L7_2 = gamelua
              L7_2 = L7_2.isCharacterDark
              L8_2 = A1_2.birdType
              L7_2 = L7_2(L8_2)
              if L7_2 and not L6_2 then
                L7_2 = ui
                L7_2 = L7_2.TelepodPrompt
                L8_2 = L7_2
                L7_2 = L7_2.new
                L9_2 = {}
                L9_2.name = "telPrompt"
                L9_2.isCharacterDark = true
                L10_2 = A1_2.img
                L9_2.charImage = L10_2
                L9_2.returnFunc = L3_2
                L7_2 = L7_2(L8_2, L9_2)
                L5_2 = L7_2
                L7_2 = gamelua
                L7_2 = L7_2.eventManager
                L8_2 = L7_2
                L7_2 = L7_2.notify
                L9_2 = {}
                L10_2 = gamelua
                L10_2 = L10_2.events
                L10_2 = L10_2.EID_TOYCODE_FAILED
                L9_2.id = L10_2
                L9_2.reason = "Using dark side character on light side"
                L10_2 = A1_2.qrCode
                L9_2.qrCode = L10_2
                L7_2(L8_2, L9_2)
            end
            else
              L8_2 = A0_2
              L7_2 = A0_2.giveBird
              L9_2 = A1_2.birdType
              L10_2 = A1_2.img
              L11_2 = A1_2.qrCode
              L7_2(L8_2, L9_2, L10_2, L11_2)
              L7_2 = gamelua
              L7_2 = L7_2.eventManager
              L8_2 = L7_2
              L7_2 = L7_2.notify
              L9_2 = {}
              L10_2 = gamelua
              L10_2 = L10_2.events
              L10_2 = L10_2.EID_TOYCODE_SUCCESS
              L9_2.id = L10_2
              L10_2 = A1_2.birdType
              L9_2.character = L10_2
              L10_2 = A1_2.qrCode
              L9_2.qrCode = L10_2
              L7_2(L8_2, L9_2)
            end
          end
        else
          L7_2 = A1_2.status
          if L7_2 == "0" then
            L7_2 = ""
            L8_2 = gamelua
            L8_2 = L8_2.getText
            L9_2 = "TEXT_QRCODE_INVALID_CODE"
            L8_2 = L8_2(L9_2)
            L2_2 = L8_2
            L8_2 = A1_2.errorCode
            if L8_2 == "invalid-key" then
              L7_2 = "Invalid QR code scanned"
            else
              L8_2 = A1_2.errorCode
              if L8_2 == "update-game" then
                L8_2 = gamelua
                L8_2 = L8_2.getText
                L9_2 = "TEXT_TOYCODE_FOR_NEW_GAME_VERSION"
                L8_2 = L8_2(L9_2)
                L2_2 = L8_2
                L7_2 = "QR Code was used too many times"
              else
                L8_2 = A1_2.errorCode
                if L8_2 == "max-uses-exceeded" then
                  L8_2 = gamelua
                  L8_2 = L8_2.getText
                  L9_2 = "TEXT_TOYCODE_USED_ON_MANY_DEVICES"
                  L8_2 = L8_2(L9_2)
                  L2_2 = L8_2
                  L7_2 = "QR Code was used too many times"
                else
                  L8_2 = A1_2.errorCode
                  if L8_2 == "type-mismatch" then
                    L7_2 = "QR code does not belong to this game"
                  else
                    L8_2 = A1_2.errorCode
                    if L8_2 == "server-side-error" then
                      L8_2 = gamelua
                      L8_2 = L8_2.getText
                      L9_2 = "TEXT_TOYCODE_UKNOWN_ERROR"
                      L8_2 = L8_2(L9_2)
                      L2_2 = L8_2
                      L7_2 = "Server side error occured when validating QR code"
                    else
                      L8_2 = A1_2.errorCode
                      if L8_2 == "param-missing" then
                        L8_2 = gamelua
                        L8_2 = L8_2.getText
                        L9_2 = "TEXT_TOYCODE_UKNOWN_ERROR"
                        L8_2 = L8_2(L9_2)
                        L2_2 = L8_2
                        L7_2 = "Invalid request when validating QR code (param-missing)"
                      end
                    end
                  end
                end
              end
            end
            L8_2 = gamelua
            L8_2 = L8_2.eventManager
            L9_2 = L8_2
            L8_2 = L8_2.notify
            L10_2 = {}
            L11_2 = gamelua
            L11_2 = L11_2.events
            L11_2 = L11_2.EID_TOYCODE_FAILED
            L10_2.id = L11_2
            L10_2.reason = L7_2
            L8_2(L9_2, L10_2)
          else
            L7_2 = A1_2.status
            if L7_2 == "TIMEOUT" then
              L7_2 = ui
              L7_2 = L7_2.TelepodPrompt
              L8_2 = L7_2
              L7_2 = L7_2.new
              L9_2 = {}
              L9_2.name = "telPrompt"
              L9_2.networkError = true
              L9_2.returnFunc = L3_2
              L7_2 = L7_2(L8_2, L9_2)
              L5_2 = L7_2
              L7_2 = gamelua
              L7_2 = L7_2.eventManager
              L8_2 = L7_2
              L7_2 = L7_2.notify
              L9_2 = {}
              L10_2 = gamelua
              L10_2 = L10_2.events
              L10_2 = L10_2.EID_TOYCODE_FAILED
              L9_2.id = L10_2
              L9_2.reason = "Validation Service unavailable!"
              L7_2(L8_2, L9_2)
            end
          end
        end
        if L5_2 then
          L7_2 = gamelua
          L7_2 = L7_2.eventManager
          L8_2 = L7_2
          L7_2 = L7_2.notify
          L9_2 = {}
          L10_2 = gamelua
          L10_2 = L10_2.events
          L10_2 = L10_2.EID_PUSH_FRAME
          L9_2.id = L10_2
          L9_2.target = L5_2
          L7_2(L8_2, L9_2)
        elseif L2_2 then
          L7_2 = gamelua
          L7_2 = L7_2.eventManager
          L8_2 = L7_2
          L7_2 = L7_2.notify
          L9_2 = {}
          L10_2 = gamelua
          L10_2 = L10_2.events
          L10_2 = L10_2.EID_PUSH_FRAME
          L9_2.id = L10_2
          L10_2 = ui
          L10_2 = L10_2.ConfirmPrompt
          L11_2 = L10_2
          L10_2 = L10_2.new
          L12_2 = {}
          L12_2.content = L2_2
          L12_2.returnValue = L3_2
          L12_2.hideCloseButton = true
          L13_2 = {}
          L12_2.meta = L13_2
          L13_2 = inMenuSpace
          L12_2.inMenuSpace = L13_2
          L12_2.contentImage = L4_2
          L10_2 = L10_2(L11_2, L12_2)
          L9_2.target = L10_2
          L7_2(L8_2, L9_2)
        end
        A0_2.scanHandled = true
        L7_2 = gamelua
        L7_2 = L7_2.cancelRequestToURL
        L8_2 = A0_2.currentValidationURL
        L7_2(L8_2)
        A0_2.timeOut = nil
        A0_2.qrValidatorBusy = false
      end
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = gamelua
  L2_2 = L2_2.menuManager
  L3_2 = L2_2
  L2_2 = L2_2.getRoot
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.getChild
  L5_2 = "confirmPrompt"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = gamelua
    L4_2 = L4_2.eventManager
    L5_2 = L4_2
    L4_2 = L4_2.notify
    L6_2 = {}
    L7_2 = gamelua
    L7_2 = L7_2.events
    L7_2 = L7_2.EID_POP_FRAME
    L6_2.id = L7_2
    L4_2(L5_2, L6_2)
  end
  A0_2.userInitiatedClose = A1_2
  L4_2 = gamelua
  L4_2 = L4_2.eventManager
  L5_2 = L4_2
  L4_2 = L4_2.notify
  L6_2 = {}
  L7_2 = gamelua
  L7_2 = L7_2.events
  L7_2 = L7_2.EID_POP_FRAME
  L6_2.id = L7_2
  L4_2(L5_2, L6_2)
  A0_2.popUntilExit = true
  L4_2 = gamelua
  L4_2 = L4_2.native_setQrRecognizedCallback
  L5_2 = nil
  L4_2(L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.native_stopQrScanner
  L4_2()
  L4_2 = A0_2.timeOut
  if L4_2 then
    A0_2.timeOut = nil
    A0_2.qrValidatorBusy = false
  end
end

L0_1.close = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.popUntilExit
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.eventManager
    L5_2 = L4_2
    L4_2 = L4_2.notify
    L6_2 = {}
    L7_2 = gamelua
    L7_2 = L7_2.events
    L7_2 = L7_2.EID_POP_FRAME
    L6_2.id = L7_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2.delayedValidation
  if L4_2 then
    L4_2 = A0_2.delayedValidation
    L4_2 = L4_2 - A1_2
    A0_2.delayedValidation = L4_2
  end
  L4_2 = A0_2.delayedValidation
  if L4_2 then
    L4_2 = A0_2.delayedValidation
    if L4_2 < 0 then
      L5_2 = A0_2
      L4_2 = A0_2.onQrRecognized
      L6_2 = "11033622637261188"
      L4_2(L5_2, L6_2)
      A0_2.delayedValidation = nil
    end
  end
  L4_2 = gamelua
  L4_2 = L4_2.deviceModel
  if L4_2 == "ios" then
    L4_2 = gamelua
    L4_2 = L4_2.native_getDeviceOrientation
    L4_2 = L4_2()
    if L4_2 == 270 then
      L4_2 = A0_2.cameraPointer
      if L4_2 then
        L4_2 = A0_2.cameraPointer
        L5_2 = gamelua
        L5_2 = L5_2.screenWidth
        L6_2 = A0_2.cameraCoordinatesInitial
        L6_2 = L6_2.x
        L5_2 = L5_2 - L6_2
        L4_2.x = L5_2
        L4_2 = A0_2.cameraPointer
        L5_2 = gamelua
        L5_2 = L5_2.screenHeight
        L6_2 = A0_2.cameraCoordinatesInitial
        L6_2 = L6_2.y
        L5_2 = L5_2 - L6_2
        L4_2.y = L5_2
        L4_2 = A0_2.cameraPointer
        L5_2 = L4_2
        L4_2 = L4_2.setOrientation
        L6_2 = "RIGHT"
        L4_2(L5_2, L6_2)
    end
  end
  else
    L4_2 = A0_2.cameraPointer
    if L4_2 then
      L4_2 = A0_2.cameraPointer
      L5_2 = A0_2.cameraCoordinatesInitial
      L5_2 = L5_2.x
      L4_2.x = L5_2
      L4_2 = A0_2.cameraPointer
      L5_2 = A0_2.cameraCoordinatesInitial
      L5_2 = L5_2.y
      L4_2.y = L5_2
      L4_2 = A0_2.cameraPointer
      L4_2 = L4_2.y
      if L4_2 == 0 then
        L4_2 = A0_2.cameraPointer
        L5_2 = L4_2
        L4_2 = L4_2.setOrientation
        L6_2 = "UP"
        L4_2(L5_2, L6_2)
      else
        L4_2 = A0_2.cameraPointer
        L5_2 = L4_2
        L4_2 = L4_2.setOrientation
        L6_2 = "LEFT"
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = A0_2.backgroundTimeStep
  if L4_2 then
    L4_2 = A0_2.backgroundAlpha
    L5_2 = A0_2.backgroundAlphaDark
    if L4_2 < L5_2 then
      L4_2 = A0_2.backgroundAlpha
      L5_2 = A0_2.backgroundTimeStep
      L5_2 = L5_2 * A1_2
      L4_2 = L4_2 + L5_2
      A0_2.backgroundAlpha = L4_2
  end
  else
    L4_2 = A0_2.backgroundTimeStep
    if L4_2 then
      L4_2 = A0_2.backgroundAlpha
      L5_2 = A0_2.backgroundAlphaDark
      if L4_2 >= L5_2 then
        L5_2 = A0_2
        L4_2 = A0_2.startBirdAnimation
        L4_2(L5_2)
        A0_2.backgroundTimeStep = nil
      end
    end
  end
  L4_2 = A0_2.receivedUpdateTime
  if L4_2 then
    L4_2 = A0_2.birdReceived
    L4_2 = L4_2.visible
    if L4_2 then
      L4_2 = A0_2.birdReceived
      L4_2 = L4_2.scaleX
      L5_2 = L3_2 * 1.4
      if L4_2 < L5_2 then
        L4_2 = A0_2.receivedUpdateTime
        L4_2 = L4_2 * 1.15
        L4_2 = L4_2 + A1_2
        A0_2.receivedUpdateTime = L4_2
        L4_2 = A0_2.birdReceived
        L5_2 = L4_2
        L4_2 = L4_2.setScale
        L6_2 = A0_2.receivedUpdateTime
        L6_2 = L3_2 * L6_2
        L4_2(L5_2, L6_2)
        L4_2 = A0_2.birdReceived
        L4_2 = L4_2.scaleX
        L5_2 = L3_2 * 1.4
        if L4_2 >= L5_2 then
          L4_2 = gamelua
          L4_2 = L4_2.playAudio
          L5_2 = "weapons_lightsaber_boomerang_01"
          L4_2(L5_2)
          L4_2 = A0_2.birdReceived
          L5_2 = L4_2
          L4_2 = L4_2.setScale
          L6_2 = L3_2 * 1.4
          L4_2(L5_2, L6_2)
          L4_2 = A0_2.birdReceived
          L4_2 = L4_2.x
          L5_2 = A0_2.birdReceived
          L5_2 = L5_2.y
          L6_2 = A0_2.birdReceived
          L6_2 = L6_2.w
          L7_2 = A0_2.birdReceived
          L7_2 = L7_2.h
          L8_2 = gamelua
          L8_2 = L8_2.putMenuParticles
          L9_2 = {}
          L9_2.x = L4_2
          L9_2.y = L5_2
          L9_2.particles = "telepodEffect1"
          L9_2.amount = 40
          L8_2(L9_2)
          L8_2 = gamelua
          L8_2 = L8_2.putMenuParticles
          L9_2 = {}
          L9_2.x = L4_2
          L9_2.y = L5_2
          L9_2.particles = "telepodEffect2"
          L9_2.amount = 2
          L8_2(L9_2)
          L8_2 = A2_2 + 2
          A0_2.startAnimation = L8_2
          A0_2.receivedUpdateTime = nil
          L8_2 = gamelua
          L8_2 = L8_2.moveToBirdCamera
          L9_2 = _G
          L9_2 = L9_2.math
          L9_2 = L9_2.abs
          L10_2 = gamelua
          L10_2 = L10_2.objects
          L10_2 = L10_2.castleCameraData
          L11_2 = gamelua
          L11_2 = L11_2.deviceModel
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.px
          L11_2 = gamelua
          L11_2 = L11_2.objects
          L11_2 = L11_2.birdCameraData
          L12_2 = gamelua
          L12_2 = L12_2.deviceModel
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.px
          L10_2 = L10_2 - L11_2
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          L8_2(L9_2, L10_2, L11_2, L12_2)
        end
      end
    end
  end
  L4_2 = A0_2.startAnimation
  if L4_2 then
    L4_2 = A0_2.startAnimation
    if A2_2 <= L4_2 then
      L4_2 = A0_2.birdReceived
      L5_2 = L4_2
      L4_2 = L4_2.setScale
      L6_2 = L3_2 * 1.4
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.sin
      L8_2 = A2_2 / 0.2
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2 - 0.7
      L7_2 = L7_2 * 0.15
      L7_2 = L7_2 * L3_2
      L6_2 = L6_2 + L7_2
      L4_2(L5_2, L6_2)
      L4_2 = A0_2.startAnimation
      L4_2 = L4_2 - A2_2
      if L4_2 <= 0.5 then
        L4_2 = A0_2.wasScannedAndUsed
        if not L4_2 then
          L4_2 = A0_2.startAnimation
          L4_2 = L4_2 - A2_2
          A0_2.backgroundAlpha = L4_2
        end
      end
  end
  else
    L4_2 = A0_2.startAnimation
    if L4_2 then
      L4_2 = A0_2.startAnimation
      if A2_2 > L4_2 then
        L4_2 = gamelua
        L4_2 = L4_2.getGameHud
        L4_2 = L4_2()
        L5_2 = A0_2.wasScannedAndUsed
        if not L5_2 then
          L5_2 = gamelua
          L5_2 = L5_2.playAudio
          L6_2 = "birds_luke_specialactivate_2"
          L5_2(L6_2)
          A0_2.backgroundAlpha = 0
          L6_2 = L4_2
          L5_2 = L4_2.startTelepodCharacterAnimation
          L7_2 = A0_2.qrCode
          L8_2 = A0_2.birdName
          if not L8_2 then
            L8_2 = ""
          end
          L9_2 = A0_2.birdReceived
          L9_2 = L9_2.image
          L10_2 = A0_2.birdReceived
          L10_2 = L10_2.x
          L11_2 = A0_2.birdReceived
          L11_2 = L11_2.y
          L12_2 = A0_2.birdReceived
          L12_2 = L12_2.scaleX
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
          L6_2 = A0_2
          L5_2 = A0_2.close
          L7_2 = false
          L5_2(L6_2, L7_2)
        else
          L5_2 = A0_2.backBtn
          L5_2.visible = true
          L5_2 = A0_2.alreadyScannedText
          L5_2.visible = true
          L5_2 = A0_2.alreadyScannedText
          L6_2 = A0_2.birdReceived
          L6_2 = L6_2.x
          L5_2.x = L6_2
          L5_2 = A0_2.alreadyScannedText
          L6_2 = A0_2.birdReceived
          L6_2 = L6_2.y
          L7_2 = A0_2.birdReceived
          L7_2 = L7_2.h
          L7_2 = L7_2 * L3_2
          L6_2 = L6_2 + L7_2
          L5_2.y = L6_2
          L5_2 = A0_2.alreadyScannedText
          L6_2 = L5_2
          L5_2 = L5_2.setScale
          L7_2 = L3_2
          L5_2(L6_2, L7_2)
          L5_2 = A0_2.backBtn
          L6_2 = gamelua
          L6_2 = L6_2.screenWidth
          L7_2 = A0_2.backBtn
          L7_2 = L7_2.w
          L7_2 = L7_2 * L3_2
          L7_2 = L7_2 * 0.5
          L6_2 = L6_2 - L7_2
          L7_2 = 10 * L3_2
          L6_2 = L6_2 - L7_2
          L5_2.x = L6_2
          L5_2 = A0_2.backBtn
          L6_2 = A0_2.backBtn
          L6_2 = L6_2.h
          L6_2 = L6_2 * L3_2
          L6_2 = L6_2 * 0.5
          L7_2 = 10 * L3_2
          L6_2 = L6_2 + L7_2
          L5_2.y = L6_2
        end
        A0_2.startAnimation = nil
      end
    end
  end
  L4_2 = A0_2.dt
  if not L4_2 then
    L4_2 = 0
  end
  A0_2.dt = L4_2
  L4_2 = A0_2.dt
  L4_2 = L4_2 + A1_2
  A0_2.dt = L4_2
  L4_2 = A0_2.timeOut
  if L4_2 then
    L4_2 = A0_2.timeOut
    L4_2 = L4_2 - A1_2
    A0_2.timeOut = L4_2
    L4_2 = A0_2.timeOut
    if L4_2 < 0 then
      L4_2 = gamelua
      L4_2 = L4_2.eventManager
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = {}
      L7_2 = events
      L7_2 = L7_2.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED
      L6_2.id = L7_2
      L6_2.status = "TIMEOUT"
      L4_2(L5_2, L6_2)
      A0_2.timeOut = nil
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

L0_1.update = L1_1
L0_1 = TelepodPage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.backgroundAlpha
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = gamelua
  L3_2 = L3_2.getUIScale
  L3_2 = L3_2()
  L4_2 = A0_2.tutorialAnimation
  L4_2 = L4_2.height
  L3_2 = L3_2 * L4_2
  L3_2 = L3_2 / 500
  L4_2 = A0_2.birdReceived
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.birdReceived
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.alreadyScannedText
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.alreadyScannedText
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = 1
    L9_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = A0_2.lightningAnimation
  if L4_2 then
    L4_2 = A0_2.lightningAnimation
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.bgBox
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.bgBox
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.text
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.text
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = 1
    L9_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = A0_2.tutorialAnimation
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.cutsceneSetTranslation
    L5_2 = A0_2.tutorialAnimation
    L5_2 = L5_2.name
    L6_2 = A0_2.bgBox
    L6_2 = L6_2.x
    L7_2 = 400 * L3_2
    L6_2 = L6_2 - L7_2
    L7_2 = A0_2.tutorialAnimation
    L7_2 = L7_2.x
    L7_2 = L7_2 * L3_2
    L6_2 = L6_2 + L7_2
    L7_2 = A0_2.bgBox
    L7_2 = L7_2.y
    L8_2 = 250 * L3_2
    L7_2 = L7_2 - L8_2
    L8_2 = A0_2.tutorialAnimation
    L8_2 = L8_2.y
    L8_2 = L8_2 * L3_2
    L7_2 = L7_2 + L8_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = gamelua
    L4_2 = L4_2.cutsceneSetScale
    L5_2 = A0_2.tutorialAnimation
    L5_2 = L5_2.name
    L6_2 = L3_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = gamelua
    L4_2 = L4_2.drawCutscene
    L5_2 = A0_2.tutorialAnimation
    L5_2 = L5_2.name
    L4_2(L5_2)
  end
  L4_2 = A0_2.cameraPointer
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.cameraPointer
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.helpBtn
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.helpBtn
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.backBtn
  L4_2 = L4_2.visible
  if L4_2 then
    L4_2 = A0_2.backBtn
    L5_2 = L4_2
    L4_2 = L4_2.draw
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.wheelActivated
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.setRenderState
    L5_2 = 0
    L6_2 = 0
    L7_2 = 1
    L8_2 = 1
    L9_2 = A0_2.dt
    if not L9_2 then
      L9_2 = 0
    end
    L9_2 = L9_2 * 10
    L10_2 = A0_2.loadingPX
    L11_2 = A0_2.loadingPY
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.drawSprite
    L5_2 = "IN_APP_LOADING"
    L6_2 = gamelua
    L6_2 = L6_2.screenWidth
    L6_2 = L6_2 * 0.5
    L7_2 = gamelua
    L7_2 = L7_2.screenHeight
    L7_2 = L7_2 * 0.5
    L4_2(L5_2, L6_2, L7_2)
  end
end

L0_1.draw = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.deviceModel
  if L1_2 == "wp8" then
    L2_2 = A0_2
    L1_2 = A0_2.enableAudio
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = events
  L4_2 = L4_2.EID_TELEPOD_CLOSED
  L3_2.id = L4_2
  L4_2 = A0_2.userInitiatedClose
  L3_2.userInitiated = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.cutsceneClose
  L2_2 = "telepodTutorial"
  L1_2(L2_2)
  A0_2.popUntilExit = false
  L1_2 = TelepodPage
  L1_2.isShown = false
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TelepodPage
  L1_2 = L1_2.audioDisabled
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.assert
    L2_2 = gamelua
    L2_2 = L2_2.SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.isAudioEnabled
    L2_2 = L2_2(L3_2)
    L2_2 = not L2_2
    L3_2 = "Inconsistent audio enabled state"
    L1_2(L2_2, L3_2)
    L1_2 = gamelua
    L1_2 = L1_2.toggleAudio
    L1_2()
    L1_2 = TelepodPage
    L1_2.audioDisabled = false
  end
end

L0_1.enableAudio = L1_1
L0_1 = TelepodPage

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isAudioEnabled
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.toggleAudio
    L1_2()
    L1_2 = TelepodPage
    L1_2.audioDisabled = true
  end
end

L0_1.disableAudio = L1_1
