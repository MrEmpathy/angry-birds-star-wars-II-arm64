TelepodPage = ui.Frame:inherit()
TelepodPage.isShown = false
TelepodPage.audioDisabled = false
function TelepodPage:init()
  if self.cloudData then
    print("Using camera cloud data.")
    self.data = self.cloudData.data
  elseif self.cachedData then
    print("Using camera cached data.")
    self.data = self.cachedData.data
  elseif self.packageData then
    print("Using camera package data.")
    self.data = self.packageData.data
  end
  local animationFilename = "animations/Telepod/telepodinfo.json"
  if gamelua.SettingsWrapper:isDarkSide() then
    animationFilename = "animations/Telepod/telepodinfo_dark.json"
  end
  self.tutorialAnimation = {
    name = "telepodTutorial",
    fileName = animationFilename,
    action = "telepod",
    x = 0,
    y = 20,
    height = 420,
    visible = true,
  }
  self.popUntilExit = false
  self.currentValidationURL = nil
  self.scanHandled = false
  self.pauseScanner = false
  self.cameraCoordinatesInitial = {
    x = 0,
    y = 0,
  }
  local device = _G.tostring(gamelua.deviceInfoModel):match("([%w%- ]*)")
  local deviceCameraCoordinates = nil
  if gamelua.hasFrontTelepodCamera() then
    deviceCameraCoordinates = self.data and self.data.cameraLocations[device]
  end
  if deviceCameraCoordinates then
    self.cameraCoordinatesInitial.x = deviceCameraCoordinates.x
    self.cameraCoordinatesInitial.y = deviceCameraCoordinates.y
  end
  if gamelua.SettingsWrapper:isDarkSide() then
    self.suffix = "SITH"
  else
    self.suffix = "LIGHT"
  end
  self.bgBox = gamelua.ui.BGBox:new({
    name = "bgBox",
  })
  self.bgBox.components = {
    topLeft = "TUTBOX_TOP_LEFT_" .. self.suffix,
    topMiddle = "TUTBOX_TOP_MIDDLE_" .. self.suffix,
    topRight = "TUTBOX_TOP_RIGHT_" .. self.suffix,
    left = "TUTBOX_MIDDLE_LEFT_" .. self.suffix,
    center = "TUTBOX_CENTER_" .. self.suffix,
    right = "TUTBOX_MIDDLE_RIGHT_" .. self.suffix,
    bottomLeft = "TUTBOX_BOTTOM_LEFT_" .. self.suffix,
    bottomMiddle = "TUTBOX_BOTTOM_MIDDLE_" .. self.suffix,
    bottomRight = "TUTBOX_BOTTOM_RIGHT_" .. self.suffix,
  }
  self:addChild(self.bgBox)
  self.text = gamelua.ui.DummyText:new({
    name = "initText",
    text = gamelua.getText("TEXT_TELEPOD_PLACEMENT_TEXT"),
  })
  self:addChild(self.text)
  self.helpBtn = ui.ScallableButton:new({
    name = "helpBtn",
    returnValue = "HELP",
  })
  self.helpBtn:setImage(gamelua.getButtonImageName("pauseMenuTutorialsButton", gamelua.SettingsWrapper:isDarkSide()))
  self:addChild(self.helpBtn)
  self.alreadyScannedText = gamelua.ui.DummyText:new({
    name = "alreadyScannedText",
    text = gamelua.getText("TEXT_TELEPOD_CHARACTER_SCANNED"),
  })
  self:addChild(self.alreadyScannedText)
  self.alreadyScannedText.visible = false
  self.backBtn = ui.ScallableButton:new({
    name = "backBtn",
    returnValue = "CLOSE",
  })
  if gamelua.SettingsWrapper:isDarkSide() then
    self.backBtn:setImage("BTN_X")
  else
    self.backBtn:setImage("BTN_X_LIGHT")
  end
  self.backBtn.clickSound = "ButtonBack"
  self:addChild(self.backBtn)
  self.cameraPointer = gamelua.ui.CameraPointer:new({
    x = self.cameraCoordinatesInitial.x,
    y = self.cameraCoordinatesInitial.y,
  })
  if not deviceCameraCoordinates then
    self.cameraPointer.visible = false
  end
  self:addChild(self.cameraPointer)
  self.birdReceived = gamelua.ui.Image:new({
    name = "birdReceived",
  })
  self:addChild(self.birdReceived)
  self.birdReceived.visible = false
  self.objectsToHide = {
    self.bgBox,
    self.text,
    self.helpBtn,
    self.backBtn,
    self.cameraPointer,
    self.tutorialAnimation
  }
  self.wheelActivated = false
  self.timeOut = nil
  self.loadingPX, self.loadingPY = _G.res.getSpritePivot("IN_APP_LOADING")
  self.qrValidatorBusy = false
  self.backgroundAlpha = 0.6
  gamelua.native_startQrScanner()
  gamelua.native_setQrRecognizedCallback(function(qrCode)
    self:onQrRecognized(qrCode)
  end)
  ui.Frame.init(self)
end
function TelepodPage:onQrRecognized(qrCode)
  if not self.qrValidatorBusy and not self.pauseScanner then
    self.qrValidatorBusy = true
    self:validationOn()
    self.scanHandled = false
    --gamelua.cancelRequestToURL(self.currentValidationURL)
    --self.currentValidationURL = gamelua.startValidateTelepodToyCodeServerURL(qrCode)
	if _G.string.len(qrCode) < 5 then
      gamelua.eventManager:notify({
        id = gamelua.events.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED,
        status = "0",
        errorCode = "invalid-key",
      })
      return 
    end
    local codePart = _G.string.sub(qrCode, 2, 5)
    local toycode = "hasbro-toy-codes-" .. codePart
	local birdType, birdInfo = gamelua.getCharacterBasedOnGroup(toycode)
	gamelua.eventManager:notify({
	  id = gamelua.events.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED,
	  status = "1",
	  birdType = birdType,
	  img = birdInfo.portrait,
	  button_img = birdInfo.button,
	  qrCode = qrCode,
	})
	gamelua.eventManager:notify({
	  id = gamelua.events.EID_CHARACTER_MENU_REFRESH,
	})
  end
end
function TelepodPage:validationOn()
  gamelua.native_stopQrScanner()
  self.wheelActivated = true
  self.timeOut = 10
end
function TelepodPage:validationOff()
  local pos = gamelua.screenHeight * 0.7 * 4 / 3
  gamelua.native_startQrScanner()
  self.wheelActivated = false
  self.timeOut = nil
end
function TelepodPage:onEntry()
  if gamelua.deviceModel == "wp8" then
    self:disableAudio()
  end
  gamelua.eventManager:addEventListener(gamelua.events.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED, self)
  gamelua.eventManager:notify({
    id = events.EID_TELEPOD_OPENED,
  })
  self.scanHandled = false
  gamelua.cutsceneLoad(self.tutorialAnimation.name, self.tutorialAnimation.fileName)
  gamelua.cutsceneStart(self.tutorialAnimation.name, self.tutorialAnimation.action, "repeat")
  TelepodPage.isShown = true
  gamelua.stopAudioByFilter(gamelua.audioFilters.menuFilters)
  ui.Frame.onEntry(self)
end
function TelepodPage:startBirdAnimation()
  if gamelua.deviceModel == "wp8" then
    self:enableAudio()
  end
  self.birdReceived.visible = true
  self.birdReceived:setImage(self.birdImage)
  self.receivedUpdateTime = 0
  self.lightningAnimation = gamelua.ui.FlashAnimation:new({
    name = "flash",
    file = "animations/Telepod/TELEPOD_EFFECT.json",
    onEntryAction = "TELEPOD_EFFECT",
    mode = "once",
    width = 1365,
    height = 768,
  })
  self:addChild(self.lightningAnimation)
  self:layout()
  self.lightningAnimation:onEntry()
end
function TelepodPage:giveBird(birdName, birdImage, qrCode)
  self.wheelActivated = false
  self.timeOut = nil
  self.backgroundAlphaDark = 0.85
  self.backgroundTimeStep = (self.backgroundAlphaDark - self.backgroundAlpha) / 0.5
  self.birdName = birdName
  self.qrCode = qrCode
  self.birdImage = birdImage
  self.wasScannedAndUsed = gamelua.isTelepodScannedAndUsed(self.birdName, qrCode)
  for _, obj in _G.ipairs(self.objectsToHide) do
    obj.visible = false
  end
end
function TelepodPage:layout()
  local UIScale = gamelua.getUIScale()
  local r3_9 = gamelua.screenHeight * 1 / 2 * 4 / 3
  if self.cameraPointer then
    self.cameraPointer:setScale(UIScale)
  end
  self.bgBox.x = gamelua.screenWidth / 2
  self.bgBox.y = gamelua.screenHeight / 2
  self.bgBox:setSize(650 * UIScale, 400 * UIScale)
  self.bgBox:setScale(UIScale)
  local r4_9, r5_9 = self.bgBox:getSize()
  local r6_9 = 30
  self.text.x = gamelua.screenWidth / 2
  self.text.y = gamelua.screenHeight / 2 - r5_9 / 2 + self.text:getFontLeading() * UIScale * 0.5
  self.text:setScale(UIScale)
  self.backBtn.x = self.bgBox.x + r4_9 * 0.5
  self.backBtn.y = self.bgBox.y - r5_9 * 0.5
  self.backBtn:setScale(UIScale)
  self.helpBtn.x = self.bgBox.x + r4_9 * 0.5
  self.helpBtn.y = self.bgBox.y + r5_9 * 0.5
  self.helpBtn:setScale(UIScale)
  self.birdReceived.x = gamelua.screenWidth * 0.5
  self.birdReceived.y = gamelua.screenHeight * 0.5
  self.birdReceived:setScale(UIScale * 0.1)
  ui.Frame.layout(self)
end
function TelepodPage.onPointerEvent(r0_10, r1_10, r2_10, r3_10)
  -- line: [267, 278] id: 10
  local r4_10, r5_10, r6_10 = ui.Frame.onPointerEvent(r0_10, r1_10, r2_10, r3_10)
  if r4_10 == "CLOSE" then
    r0_10:close(true)
  elseif r4_10 == "HELP" then
    gamelua.openURL(gamelua.TELEPODSINFO_URL, gamelua.getText("TEXT_TELEPOD_HELP_PAGE_TEXT"), "", true, "TELEPODSINFO_URL", function()
      -- line: [273, 273] id: 11
      r0_10.pauseScanner = false
    end)
    r0_10.pauseScanner = true
  end
  return -1
end
function TelepodPage.onKeyEvent(r0_12, r1_12, r2_12)
  local r3_12, r4_12 = Frame.onKeyEvent(r0_12, r1_12, r2_12)
  if not r3_12 and r1_12 == "PRESS" then
    if r2_12 == "KEY_BACK" or r2_12 == "ESCAPE" then
      r0_12:close(true)
    elseif r2_12 == "Q" then
      r0_12.delayedValidation = 0.1
    end
  end
  return -1
end
function TelepodPage:eventTriggered(event)
  if event.id == gamelua.events.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED and not self.scanHandled and not self.pauseScanner then
    local r2_13 = nil
    local function r3_13()
      self:validationOff()
    end
    local r4_13 = nil
    local r5_13 = nil
    local r6_13 = gamelua.SettingsWrapper:isOppositeSideCharacterEnabledForSide(gamelua.SettingsWrapper:isDarkSide()) or gamelua.SettingsWrapper:isOppositeSideCharacterEnabledInLevel(gamelua.levelName)
    if event.status == "1" then
      if (gamelua.SettingsWrapper:isDarkSide() and not gamelua.isCharacterDark(event.birdType) or not gamelua.SettingsWrapper:isDarkSide() and gamelua.isCharacterDark(event.birdType)) and not r6_13 then
        function r3_13()
          -- line: [306, 309] id: 15
          self:giveBird(event.birdType, event.img, event.qrCode)
          gamelua.eventManager:notify({
            id = gamelua.events.EID_TOYCODE_SUCCESS,
            character = event.birdType,
            qrCode = event.qrCode,
          })
        end
        r5_13 = ui.PurchaseOppositeSidePrompt:new({
          name = "openOppositeSidePrompt",
          darkSide = not gamelua.objects.isDarkSideLevel,
          returnFunc = r3_13,
          closeCallback = function()
            -- line: [310, 312] id: 16
            self:validationOff()
          end,
        })
        gamelua.eventManager:notify({
          id = gamelua.events.EID_TOYCODE_FAILED,
          reason = "Using light side character on dark side",
          qrCode = event.qrCode,
        })
      elseif not gamelua.SettingsWrapper:isDarkSide() and gamelua.isCharacterDark(event.birdType) and not r6_13 then
        r5_13 = ui.TelepodPrompt:new({
          name = "telPrompt",
          isCharacterDark = true,
          charImage = event.img,
          returnFunc = r3_13,
        })
        gamelua.eventManager:notify({
          id = gamelua.events.EID_TOYCODE_FAILED,
          reason = "Using dark side character on light side",
          qrCode = event.qrCode,
        })
      else
        self:giveBird(event.birdType, event.img, event.qrCode)
        gamelua.eventManager:notify({
          id = gamelua.events.EID_TOYCODE_SUCCESS,
          character = event.birdType,
          qrCode = event.qrCode,
        })
      end
    elseif event.status == "0" then
      local r7_13 = ""
      r2_13 = gamelua.getText("TEXT_QRCODE_INVALID_CODE")
      if event.errorCode == "invalid-key" then
        r7_13 = "Invalid QR code scanned"
      elseif event.errorCode == "update-game" then
        r2_13 = gamelua.getText("TEXT_TOYCODE_FOR_NEW_GAME_VERSION")
        r7_13 = "QR Code was used too many times"
      elseif event.errorCode == "max-uses-exceeded" then
        r2_13 = gamelua.getText("TEXT_TOYCODE_USED_ON_MANY_DEVICES")
        r7_13 = "QR Code was used too many times"
      elseif event.errorCode == "type-mismatch" then
        r7_13 = "QR code does not belong to this game"
      elseif event.errorCode == "server-side-error" then
        r2_13 = gamelua.getText("TEXT_TOYCODE_UKNOWN_ERROR")
        r7_13 = "Server side error occured when validating QR code"
      elseif event.errorCode == "param-missing" then
        r2_13 = gamelua.getText("TEXT_TOYCODE_UKNOWN_ERROR")
        r7_13 = "Invalid request when validating QR code (param-missing)"
      end
      gamelua.eventManager:notify({
        id = gamelua.events.EID_TOYCODE_FAILED,
        reason = r7_13,
      })
    elseif event.status == "TIMEOUT" then
      r5_13 = ui.TelepodPrompt:new({
        name = "telPrompt",
        networkError = true,
        returnFunc = r3_13,
      })
      gamelua.eventManager:notify({
        id = gamelua.events.EID_TOYCODE_FAILED,
        reason = "Validation Service unavailable!",
      })
    end
    if r5_13 then
      gamelua.eventManager:notify({
        id = gamelua.events.EID_PUSH_FRAME,
        target = r5_13,
      })
    elseif r2_13 then
      local r9_13 = {
        id = gamelua.events.EID_PUSH_FRAME,
        target = ui.ConfirmPrompt:new({
          content = r2_13,
          returnValue = r3_13,
          hideCloseButton = true,
          meta = {},
          inMenuSpace = inMenuSpace,
          contentImage = r4_13,
        }),
      }
      gamelua.eventManager:notify(r9_13)
    end
    self.scanHandled = true
    gamelua.cancelRequestToURL(self.currentValidationURL)
    self.timeOut = nil
    self.qrValidatorBusy = false
  end
end
function TelepodPage.close(r0_17, r1_17)
  -- line: [364, 384] id: 17
  if gamelua.menuManager:getRoot():getChild("confirmPrompt") then
    gamelua.eventManager:notify({
      id = gamelua.events.EID_POP_FRAME,
    })
  end
  r0_17.userInitiatedClose = r1_17
  gamelua.eventManager:notify({
    id = gamelua.events.EID_POP_FRAME,
  })
  r0_17.popUntilExit = true
  gamelua.native_setQrRecognizedCallback(nil)
  gamelua.native_stopQrScanner()
  if r0_17.timeOut then
    r0_17.timeOut = nil
    r0_17.qrValidatorBusy = false
  end
end
function TelepodPage.update(r0_18, r1_18, r2_18)
  -- line: [386, 485] id: 18
  local r3_18 = gamelua.getUIScale()
  if r0_18.popUntilExit then
    gamelua.eventManager:notify({
      id = gamelua.events.EID_POP_FRAME,
    })
  end
  if r0_18.delayedValidation then
    r0_18.delayedValidation = r0_18.delayedValidation - r1_18
  end
  if r0_18.delayedValidation and r0_18.delayedValidation < 0 then
    r0_18:onQrRecognized("11033622637261188")
    r0_18.delayedValidation = nil
  end
  if gamelua.deviceModel == "ios" and gamelua.native_getDeviceOrientation() == 270 and r0_18.cameraPointer then
    r0_18.cameraPointer.x = gamelua.screenWidth - r0_18.cameraCoordinatesInitial.x
    r0_18.cameraPointer.y = gamelua.screenHeight - r0_18.cameraCoordinatesInitial.y
    r0_18.cameraPointer:setOrientation("RIGHT")
  elseif r0_18.cameraPointer then
    r0_18.cameraPointer.x = r0_18.cameraCoordinatesInitial.x
    r0_18.cameraPointer.y = r0_18.cameraCoordinatesInitial.y
    if r0_18.cameraPointer.y == 0 then
      r0_18.cameraPointer:setOrientation("UP")
    else
      r0_18.cameraPointer:setOrientation("LEFT")
    end
  end
  if r0_18.backgroundTimeStep and r0_18.backgroundAlpha < r0_18.backgroundAlphaDark then
    r0_18.backgroundAlpha = r0_18.backgroundAlpha + r0_18.backgroundTimeStep * r1_18
  elseif r0_18.backgroundTimeStep and r0_18.backgroundAlphaDark <= r0_18.backgroundAlpha then
    r0_18:startBirdAnimation()
    r0_18.backgroundTimeStep = nil
  end
  if r0_18.receivedUpdateTime and r0_18.birdReceived.visible and r0_18.birdReceived.scaleX < r3_18 * 1.399999976158142 then
    r0_18.receivedUpdateTime = r0_18.receivedUpdateTime * 1.149999976158142 + r1_18
    r0_18.birdReceived:setScale(r3_18 * r0_18.receivedUpdateTime)
    if r3_18 * 1.399999976158142 <= r0_18.birdReceived.scaleX then
      gamelua.playAudio("weapons_lightsaber_boomerang_01")
      r0_18.birdReceived:setScale(r3_18 * 1.399999976158142)
      local r4_18 = r0_18.birdReceived.x
      local r5_18 = r0_18.birdReceived.y
      local r6_18 = r0_18.birdReceived.w
      local r7_18 = r0_18.birdReceived.h
      gamelua.putMenuParticles({
        x = r4_18,
        y = r5_18,
        particles = "telepodEffect1",
        amount = 40,
      })
      gamelua.putMenuParticles({
        x = r4_18,
        y = r5_18,
        particles = "telepodEffect2",
        amount = 2,
      })
      r0_18.startAnimation = r2_18 + 2
      r0_18.receivedUpdateTime = nil
      gamelua.moveToBirdCamera(_G.math.abs(gamelua.objects.castleCameraData[gamelua.deviceModel].px - gamelua.objects.birdCameraData[gamelua.deviceModel].px))
    end
  end
  if r0_18.startAnimation and r2_18 <= r0_18.startAnimation then
    r0_18.birdReceived:setScale(r3_18 * 1.399999976158142 + (_G.math.sin(r2_18 / 0.20000000298023224) - 0.699999988079071) * 0.15000000596046448 * r3_18)
    if r0_18.startAnimation - r2_18 <= 0.5 and not r0_18.wasScannedAndUsed then
      r0_18.backgroundAlpha = r0_18.startAnimation - r2_18
    end
  elseif r0_18.startAnimation and r0_18.startAnimation < r2_18 then
    local r4_18 = gamelua.getGameHud()
    if not r0_18.wasScannedAndUsed then
      gamelua.playAudio("birds_luke_specialactivate_2")
      r0_18.backgroundAlpha = 0
      r4_18:startTelepodCharacterAnimation(r0_18.qrCode, r0_18.birdName or "", r0_18.birdReceived.image, r0_18.birdReceived.x, r0_18.birdReceived.y, r0_18.birdReceived.scaleX)
      r0_18:close(false)
    else
      r0_18.backBtn.visible = true
      r0_18.alreadyScannedText.visible = true
      r0_18.alreadyScannedText.x = r0_18.birdReceived.x
      r0_18.alreadyScannedText.y = r0_18.birdReceived.y + r0_18.birdReceived.h * r3_18
      r0_18.alreadyScannedText:setScale(r3_18)
      r0_18.backBtn.x = gamelua.screenWidth - r0_18.backBtn.w * r3_18 * 0.5 - 10 * r3_18
      r0_18.backBtn.y = r0_18.backBtn.h * r3_18 * 0.5 + 10 * r3_18
    end
    r0_18.startAnimation = nil
  end
  r0_18.dt = r0_18.dt or 0
  r0_18.dt = r0_18.dt + r1_18
  if r0_18.timeOut then
    r0_18.timeOut = r0_18.timeOut - r1_18
    if r0_18.timeOut < 0 then
      gamelua.eventManager:notify({
        id = events.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED,
        status = "TIMEOUT",
      })
      r0_18.timeOut = nil
    end
  end
  ui.Frame.update(r0_18, r1_18, r2_18)
end
function TelepodPage.draw(r0_19, r1_19, r2_19)
  -- line: [487, 538] id: 19
  gamelua.drawRect(0, 0, 0, r0_19.backgroundAlpha, 0, 0, gamelua.screenWidth, gamelua.screenHeight, false)
  local r3_19 = gamelua.getUIScale() * r0_19.tutorialAnimation.height / 500
  if r0_19.birdReceived.visible then
    r0_19.birdReceived:draw(r1_19, r2_19)
  end
  if r0_19.alreadyScannedText.visible then
    r0_19.alreadyScannedText:draw(r1_19, r2_19, 1, 1)
  end
  if r0_19.lightningAnimation then
    r0_19.lightningAnimation:draw(r1_19, r2_19)
  end
  if r0_19.bgBox.visible then
    r0_19.bgBox:draw(r1_19, r2_19)
  end
  if r0_19.text.visible then
    r0_19.text:draw(r1_19, r2_19, 1, 1)
  end
  if r0_19.tutorialAnimation.visible then
    gamelua.cutsceneSetTranslation(r0_19.tutorialAnimation.name, r0_19.bgBox.x - 400 * r3_19 + r0_19.tutorialAnimation.x * r3_19, r0_19.bgBox.y - 250 * r3_19 + r0_19.tutorialAnimation.y * r3_19)
    gamelua.cutsceneSetScale(r0_19.tutorialAnimation.name, r3_19, r3_19)
    gamelua.drawCutscene(r0_19.tutorialAnimation.name)
  end
  if r0_19.cameraPointer.visible then
    r0_19.cameraPointer:draw(r1_19, r2_19)
  end
  if r0_19.helpBtn.visible then
    r0_19.helpBtn:draw(r1_19, r2_19)
  end
  if r0_19.backBtn.visible then
    r0_19.backBtn:draw(r1_19, r2_19)
  end
  if r0_19.wheelActivated then
    gamelua.setRenderState(0, 0, 1, 1, (r0_19.dt or 0) * 10, r0_19.loadingPX, r0_19.loadingPY)
    _G.res.drawSprite("IN_APP_LOADING", gamelua.screenWidth * 0.5, gamelua.screenHeight * 0.5)
  end
end
function TelepodPage.onExit(r0_20)
  -- line: [540, 557] id: 20
  if gamelua.deviceModel == "wp8" then
    r0_20:enableAudio()
  end
  gamelua.eventManager:removeEventListener(gamelua.events.EID_TELEPOD_TOY_URL_CALLBACK_RECEIVED, r0_20)
  gamelua.eventManager:notify({
    id = events.EID_TELEPOD_CLOSED,
    userInitiated = r0_20.userInitiatedClose,
  })
  gamelua.cutsceneClose("telepodTutorial")
  r0_20.popUntilExit = false
  TelepodPage.isShown = false
  ui.Frame.onExit(r0_20)
end
function TelepodPage.enableAudio(r0_21)
  -- line: [562, 568] id: 21
  if TelepodPage.audioDisabled then
    _G.assert(not gamelua.SettingsWrapper:isAudioEnabled(), "Inconsistent audio enabled state")
    gamelua.toggleAudio()
    TelepodPage.audioDisabled = false
  end
end
function TelepodPage.disableAudio(r0_22)
  -- line: [570, 575] id: 22
  if gamelua.SettingsWrapper:isAudioEnabled() then
    gamelua.toggleAudio()
    TelepodPage.audioDisabled = true
  end
end
