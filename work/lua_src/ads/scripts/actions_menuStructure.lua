local L0_1, L1_1, L2_1, L3_1, L4_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.setPosition
  setPosition = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.setVelocity
  setVelocity = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.applyImpulse
  applyImpulse = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.applyForce
  applyForce = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.addParticles
  addParticles = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.addEventCall
  addEventCall = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.addUpdateCall
  addUpdateCall = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.playAudio
  playAudio = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.destroyObject
  destroyObject = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getForwardV
  getForwardV = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getUpV
  getUpV = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getStartingForwardV
  getStartingForwardV = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getStartingUpV
  getStartingUpV = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.createObject
  createObject = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getObjectsInWorld
  getObjectsInWorld = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.attachEventListener
  attachEventListener = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.checkStillInWorld
  checkStillInWorld = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.addScore
  addScore = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.setRotation
  setRotation = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.setSprite
  setSprite = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getObjectDefinition
  getObjectDefinition = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.setActive
  setActive = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getAudioName
  getAudioName = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.removeBird
  removeBird = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.setAnimation
  setAnimation = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.physicsScale
  physicsScale = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.vNormalize
  vNormalize = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.physicsToWorldTransform
  physicsToWorldTransform = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.print
  print = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.vLength
  vLength = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getVelocity
  getVelocity = L0_2
end

Initialize = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.spriteObjects
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = gamelua
    L2_2 = L2_2.hasUpdateCall
    L3_2 = "floatingShipMenu1"
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = addUpdateCall
      L3_2 = "floatingShipMenu1"
      L4_2 = A0_2
      L5_2 = 0
      L6_2 = "floatingShipMenu1"
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
    L2_2 = A0_2.time
    if L2_2 ~= nil then
      L2_2 = A0_2.startingY
      L3_2 = gamelua
      L3_2 = L3_2._G
      L3_2 = L3_2.math
      L3_2 = L3_2.sin
      L4_2 = A0_2.time
      L4_2 = L4_2 * 1
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2 * 50
      L2_2 = L2_2 + L3_2
      L1_2.y = L2_2
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      A0_2.time = L2_2
    else
      L2_2 = L1_2.y
      A0_2.startingY = L2_2
      A0_2.time = 0
    end
  end
end

L0_1.action = L1_1
floatingShipMenu1 = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpritePivot
  L3_2 = A0_2.name
  L2_2, L3_2 = L2_2(L3_2)
  if L1_2 ~= nil then
    L4_2 = gamelua
    L4_2 = L4_2.applyForce
    L5_2 = A0_2.name
    L6_2 = 0
    L7_2 = 20
    L8_2 = L1_2.x
    L9_2 = L1_2.y
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = gamelua
    L4_2 = L4_2.isKeyPressed
    L5_2 = "LBUTTON"
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.applyImpulse
      L5_2 = A0_2.name
      L6_2 = 0
      L7_2 = -0.001
      L8_2 = 0
      L9_2 = 0
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    else
    end
  end
end

L0_1.action = L1_1
levelStarGravity = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0.1
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.currentFolder
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.getLevelMetadata
    L2_2 = gamelua
    L2_2 = L2_2.actions
    L2_2 = L2_2.myLevels
    L3_2 = gamelua
    L3_2 = L3_2.currentFolder
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.startNumber
    L2_2 = L2_2[L3_2]
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.comicRequiredBeforeLevel
    L2_2 = false
    if L1_2 then
      L3_2 = gamelua
      L3_2 = L3_2.SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.isComicWatched
      L5_2 = L1_2
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L2_2 = true
      end
    end
    if L2_2 then
      L3_2 = gamelua
      L3_2 = L3_2.setCurrentLevel
      L4_2 = gamelua
      L4_2 = L4_2.getLevelNumberForLevelName
      L5_2 = L1_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = gamelua
      L3_2 = L3_2.setLevelName
      L4_2 = L1_2
      L3_2(L4_2)
    else
      L3_2 = gamelua
      L3_2 = L3_2.setCurrentLevel
      L4_2 = A0_2.startNumber
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2 = L3_2.setLevelName
      L4_2 = gamelua
      L4_2 = L4_2.actions
      L4_2 = L4_2.myLevels
      L5_2 = gamelua
      L5_2 = L5_2.currentFolder
      L4_2 = L4_2[L5_2]
      L5_2 = A0_2.startNumber
      L4_2 = L4_2[L5_2]
      L3_2(L4_2)
    end
    L3_2 = gamelua
    L3_2 = L3_2.getPageNumber
    L4_2 = gamelua
    L4_2 = L4_2.currentFolder
    L5_2 = A0_2.startNumber
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = L3_2 - 1
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.setLastLevelPage
    L6_2 = gamelua
    L6_2 = L6_2.currentFolder
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = gamelua
    L4_2 = L4_2.eventManager
    L5_2 = L4_2
    L4_2 = L4_2.notify
    L6_2 = {}
    L7_2 = gamelua
    L7_2 = L7_2.events
    L7_2 = L7_2.EID_CHANGE_SCENE
    L6_2.id = L7_2
    L6_2.target = "GameScene"
    L4_2(L5_2, L6_2)
  end
end

L0_1.action = L1_1
loadLevelFromMenu = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.setCurrentFolder
    L2_2 = myLevelFolders
    L3_2 = episodeTypeTable
    L4_2 = A0_2.episodeType
    L3_2 = L3_2[L4_2]
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.startNumber
    L2_2 = L2_2[L3_2]
    L1_2(L2_2)
    L1_2 = A0_2.cameraIndex
    if L1_2 then
      L1_2 = A0_2.cameraIndex
      L1_2 = L1_2 - 1
      L2_2 = gamelua
      L2_2 = L2_2.SettingsWrapper
      L3_2 = L2_2
      L2_2 = L2_2.setLastOpenedEpisode
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.setLastOpenedEpisodeIndex
    L3_2 = A0_2.startNumber
    L1_2(L2_2, L3_2)
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.setLastOpenedEpisodeType
    L3_2 = A0_2.episodeType
    L1_2(L2_2, L3_2)
    L1_2 = gamelua
    L1_2 = L1_2.setLevelFolder
    L2_2 = "levels/"
    L3_2 = myLevelFolders
    L4_2 = episodeTypeTable
    L5_2 = A0_2.episodeType
    L4_2 = L4_2[L5_2]
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2.startNumber
    L3_2 = L3_2[L4_2]
    L4_2 = "/"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2.previousLevel = nil
  end
  L1_2 = gamelua
  L1_2 = L1_2.setLevelName
  L2_2 = "LevelSelection"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CHANGE_SCENE
  L3_2.id = L4_2
  L3_2.target = "GameScene"
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.queuedLocale
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.setLocale
    L2_2 = gamelua
    L2_2 = L2_2.queuedLocale
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
loadLevelSelectionMenu = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = gamelua
  L1_2.fadeTotalTimer = 0.5
  L1_2 = gamelua
  L1_2.fadeTimer = 0.5
  L1_2 = gamelua
  L1_2.fadeIsFadeIn = false
end

L0_1.action = L1_1
startLevelFadeOut = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.setPhysicsEnabled
  L2_2 = false
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2.inEggsteroidTransition = true
  L1_2 = gamelua
  L2_2 = {}
  L1_2.oldLevelStartPosition = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.oldLevelStartPosition
  L2_2 = gamelua
  L2_2 = L2_2.levelStartPosition
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.oldLevelStartPosition
  L2_2 = gamelua
  L2_2 = L2_2.levelStartPosition
  L2_2 = L2_2.y
  L1_2.y = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.rubberBandPos
  L2_2 = gamelua
  L2_2 = L2_2.oldLevelStartPosition
  L2_2 = L2_2.x
  L3_2 = gamelua
  L3_2 = L3_2.slingshotScale
  L3_2 = 0.1 * L3_2
  L2_2 = L2_2 - L3_2
  L1_2.x = L2_2
  L1_2 = gamelua
  L1_2 = L1_2.rubberBandPos
  L2_2 = gamelua
  L2_2 = L2_2.oldLevelStartPosition
  L2_2 = L2_2.y
  L3_2 = gamelua
  L3_2 = L3_2.slingshotScale
  L3_2 = 0.1 * L3_2
  L2_2 = L2_2 - L3_2
  L1_2.y = L2_2
  L1_2 = gamelua
  L2_2 = gamelua
  L2_2 = L2_2.slingShotAngle
  L1_2.oldSlingShotAngle = L2_2
  L1_2 = A0_2.index
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.changeBirdNumbers
    L2_2 = A0_2.index
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L2_2 = gamelua
  L2_2 = L2_2.levelFolder
  L3_2 = gamelua
  L3_2 = L3_2.levelName
  L2_2 = L2_2 .. L3_2
  L1_2.previousLevel = L2_2
  L1_2 = gamelua
  L1_2.resumingOldLevel = false
  L1_2 = gamelua
  L2_2 = gamelua
  L2_2 = L2_2.levelName
  L1_2.returnLevel = L2_2
  L1_2 = gamelua
  L2_2 = gamelua
  L2_2 = L2_2.levelFolder
  L1_2.returnFolder = L2_2
  L1_2 = gamelua
  L2_2 = gamelua
  L2_2 = L2_2.currentLevel
  L1_2.returnLevelNumber = L2_2
  L1_2 = gamelua
  L2_2 = gamelua
  L2_2 = L2_2.currentFolder
  L1_2.returnFolderId = L2_2
  L1_2 = A0_2.obj
  L1_2 = L1_2.startNumber
  L2_2 = gamelua
  L2_2 = L2_2.getEpisodeMetadata
  L3_2 = "bonus"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.levelNumberAdjustment
  if L2_2 then
    L1_2 = L1_2 + L2_2
  end
  L3_2 = gamelua
  L3_2 = L3_2.setCurrentLevel
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.setLevelName
  L4_2 = myLevels
  L4_2 = L4_2.bonus
  L4_2 = L4_2[L1_2]
  L3_2(L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.getPageNumber
  L4_2 = "bonus"
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 - 1
  L4_2 = gamelua
  L4_2 = L4_2.SettingsWrapper
  L5_2 = L4_2
  L4_2 = L4_2.setLastLevelPage
  L6_2 = "bonus"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = gamelua
  L4_2 = L4_2.startWarpTransition
  L5_2 = false
  L4_2(L5_2)
end

L0_1.action = L1_1
loadBonusLevelTransition = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.setLevelFolder
  L2_2 = "levels/bonus/"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.setCurrentFolder
  L2_2 = "bonus"
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CHANGE_SCENE
  L3_2.id = L4_2
  L3_2.target = "GameScene"
  L1_2(L2_2, L3_2)
end

L0_1.action = L1_1
loadBonusLevel = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = gamelua
    L2_2 = L2_2.SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.isDroidLevelUnlocked
    L4_2 = gamelua
    L4_2 = L4_2.actions
    L4_2 = L4_2.myLevels
    L4_2 = L4_2.bonus
    L5_2 = L1_2.startNumber
    L4_2 = L4_2[L5_2]
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
    else
      L2_2 = gamelua
      L2_2 = L2_2.fireAction
      L3_2 = "spawnLoopingParticles"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
eggsteroidCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.obj
  if L1_2 ~= nil then
    L1_2 = A0_2.obj
    L1_2 = L1_2.startNumber
    if L1_2 ~= nil then
      L1_2 = A0_2.obj
      L1_2 = L1_2.startNumber
      L2_2 = gamelua
      L2_2 = L2_2.getEpisodeMetadata
      L3_2 = "bonus"
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.levelNumberAdjustment
      if L2_2 then
        L1_2 = L1_2 + L2_2
      end
      L3_2 = gamelua
      L3_2 = L3_2.unlockDroidLevel
      L4_2 = gamelua
      L4_2 = L4_2.actions
      L4_2 = L4_2.myLevels
      L4_2 = L4_2.bonus
      L4_2 = L4_2[L1_2]
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2.timeWithoutLevelGoals = 0
      L3_2 = gamelua
      L3_2.ignorePlayerInput = true
      L3_2 = gamelua
      L3_2 = L3_2.flyingBird
      if L3_2 ~= nil then
        L3_2 = gamelua
        L3_2 = L3_2.flyingBird
        L3_2 = L3_2.startNumber
        A0_2.index = L3_2
      else
        L3_2 = gamelua
        L3_2 = L3_2.currentBirdIndex
        L3_2 = L3_2 - 1
        A0_2.index = L3_2
      end
      L3_2 = addEventCall
      L4_2 = "loadBonusLevelTransition"
      L5_2 = A0_2
      L6_2 = 2.1
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = addEventCall
      L4_2 = "startLevelFadeOut"
      L5_2 = A0_2
      L6_2 = 1.7
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = playAudio
      L4_2 = "black_hole_open"
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2 = L3_2.flyingBird
      if L3_2 ~= nil then
        L3_2 = gamelua
        L3_2 = L3_2.birds
        L4_2 = gamelua
        L4_2 = L4_2.flyingBird
        L4_2 = L4_2.name
        L3_2[L4_2] = nil
        L3_2 = gamelua
        L3_2 = L3_2.flyingBird
        L3_2.controllable = false
        L3_2 = destroyObject
        L4_2 = gamelua
        L4_2 = L4_2.flyingBird
        L4_2 = L4_2.name
        L3_2(L4_2)
      end
      L3_2 = gamelua
      L3_2 = L3_2.SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.storeDroidLevelUnlockedThroughEggsteroid
      L5_2 = myLevels
      L5_2 = L5_2.bonus
      L5_2 = L5_2[L1_2]
      L3_2(L4_2, L5_2)
      L3_2 = gamelua
      L3_2 = L3_2.SettingsWrapper
      L4_2 = L3_2
      L3_2 = L3_2.storeDroidLevelUnlocked
      L5_2 = myLevels
      L5_2 = L5_2.bonus
      L5_2 = L5_2[L1_2]
      L3_2(L4_2, L5_2)
      L3_2 = gamelua
      L3_2 = L3_2.checkForDroidLevelAchievements
      L3_2()
    end
  end
end

L0_1.action = L1_1
eggsteroidDestroyed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.obj
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.blockTable
    L1_2 = L1_2.blocks
    L2_2 = A0_2.obj
    L2_2 = L2_2.definition
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.levelFilterProperty
    L2_2 = _G
    L2_2 = L2_2.assert
    L3_2 = L1_2 ~= nil
    L2_2(L3_2)
    L2_2 = gamelua
    L2_2 = L2_2.SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.isObjectFilterPropertyStored
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= true then
      L2_2 = gamelua
      L2_2 = L2_2.SettingsWrapper
      L3_2 = L2_2
      L2_2 = L2_2.storeObjectFilterProperty
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
storeObjectLevelFilterProperty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.episodeSelection = true
  end
  L1_2 = addUpdateCall
  L2_2 = "scaleEpisodeSelection"
  L3_2 = A0_2
  L4_2 = nil
  L5_2 = name
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L0_1.action = L1_1
onEpisodeSelectionButtonCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.calculateEpisodeSelectionScale
    L3_2 = A0_2.name
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    L1_2.episodeScale = L2_2
    L1_2.episodeRelativeX = L3_2
    L5_2 = gamelua
    L5_2 = L5_2.setScale
    L6_2 = A0_2.name
    L7_2 = L4_2 * L2_2
    L8_2 = L4_2 * L2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end

L0_1.action = L1_1
scaleEpisodeSelection = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
  end
end

L0_1.action = L1_1
onButtonCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2._G
  L1_2 = L1_2.pairs
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.levelStars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
  end
end

L0_1.action = L1_1
onCameraSwipe = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.isKeyPressed
    L2_2 = "LBUTTON"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.res
      L2_2 = L2_2.getSpriteBounds
      L3_2 = L1_2.sprite
      L2_2, L3_2 = L2_2(L3_2)
      L4_2 = gamelua
      L4_2 = L4_2.physicsToScreenTransform
      L5_2 = L1_2.x
      L6_2 = L1_2.y
      L4_2, L5_2 = L4_2(L5_2, L6_2)
      L6_2 = L2_2 * 0.5
      L3_2 = L3_2 * 0.5
      L2_2 = L6_2
      L6_2 = L5_2 + L3_2
      L7_2 = L5_2 - L3_2
      L8_2 = L4_2 - L2_2
      L9_2 = L4_2 + L2_2
    end
    L1_2 = addEventCall
    L2_2 = "onCheckClicked"
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1
onCheckClicked = L0_1
L0_1 = 0
numSpawned = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.definition = "PIG_SMALL"
L3_1.x = 0
L3_1.y = 0
L4_1 = {}
L4_1.definition = "BUBBLE_8"
L4_1.x = 0
L4_1.y = 0
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.list = L2_1
L0_1[1] = L1_1
spawns = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.movingTimer
    if L2_2 ~= nil then
      L2_2 = L1_2.movingTimer
      if L2_2 < 1 then
        L2_2 = setPosition
        L3_2 = A0_2.name
        L4_2 = L1_2.x
        L5_2 = L1_2.y
        L6_2 = A0_2.dt
        L5_2 = L5_2 + L6_2
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = L1_2.movingTimer
        if L2_2 < 2 then
          L2_2 = setPosition
          L3_2 = A0_2.name
          L4_2 = L1_2.x
          L5_2 = L1_2.y
          L6_2 = A0_2.dt
          L5_2 = L5_2 - L6_2
          L2_2(L3_2, L4_2, L5_2)
        else
          L1_2.movingTimer = 0
        end
      end
      L2_2 = L1_2.movingTimer
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      L1_2.movingTimer = L2_2
    else
      L1_2.movingTimer = 0
    end
    L2_2 = addEventCall
    L3_2 = "comicButtonLogic"
    L4_2 = A0_2
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.action = L1_1
comicButtonLogic = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addEventCall
  L2_2 = "listenForMenuPlanetRotation"
  L3_2 = A0_2
  L4_2 = 0.2
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1
addMenuPlanetRotationListener = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L2_2 = A0_2.target
  L1_2.cameraAnimationSliderTarget = L2_2
  L1_2 = gamelua
  L1_2.leftSweep = true
  L1_2 = gamelua
  L1_2.sweepSpeed = -500
  L1_2 = addEventCall
  L2_2 = "checkForIApPurchaseEpisode"
  L3_2 = A0_2
  L4_2 = 1.75
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1
moveCameraTarget = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.getEpisodeMetadataWithParam
  L2_2 = A0_2.episodeIdx
  L3_2 = "iapPurchaseId"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = gamelua
    L2_2 = L2_2.getEpisodeMetadata
    L3_2 = A0_2.episodeIdx
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.iapPurchase
    if L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.SettingsWrapper
      L3_2 = L2_2
      L2_2 = L2_2.isEpisodePurchased
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = gamelua
        L2_2 = L2_2.ui
        L2_2 = L2_2.Shop
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = {}
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
        L4_2 = L2_2
        L3_2 = L2_2.scrollToShortCut
        L5_2 = "EPISODE"
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L0_1.action = L1_1
checkForIApPurchaseEpisode = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.isKeyPressed
  L2_2 = "RBUTTON"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = currentMenuMotorSpeed
    if L1_2 == 0 then
      L1_2 = 300
      currentMenuMotorSpeed = L1_2
    else
      L1_2 = 0
      currentMenuMotorSpeed = L1_2
    end
    L1_2 = gamelua
    L1_2 = L1_2.setRevoluteJointSpeed
    L2_2 = gamelua
    L2_2 = L2_2.objects
    L2_2 = L2_2.rotatingMenuJoint
    L3_2 = currentMenuMotorSpeed
    L1_2(L2_2, L3_2)
  end
  L1_2 = addEventCall
  L2_2 = "listenForMenuPlanetRotation"
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1
listenForMenuPlanetRotation = L0_1
