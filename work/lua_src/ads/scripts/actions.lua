local L0_1, L1_1, L2_1

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
  L0_2 = gamelua
  L0_2 = L0_2.setObjectParameter
  setObjectParameter = L0_2
end

Initialize = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2.showCameraDebugData = false
  L1_2 = gamelua
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  L1_2.visualizeScreen = L2_2
end

L0_1.action = L1_1
onLevelLoad = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = playAudio
  L2_2 = A0_2.audioName
  L1_2(L2_2)
end

L0_1.action = L1_1
playAudioAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = playAudio
    L4_2 = L2_2.collisionSound
    L3_2(L4_2)
  end
end

L0_1.action = L1_1
playCollisionAudioAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.g_levelTimer
    if 0.1 < L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.isAudioPlaying
      L4_2 = L2_2.playSoundAction
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = playAudio
        L4_2 = L2_2.playSoundAction
        L3_2(L4_2)
      end
    end
  end
end

L0_1.action = L1_1
playAudioIfNotPLayingAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = setPosition
    L2_2 = A0_2.name
    L3_2 = A0_2.x
    L4_2 = A0_2.y
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1
setPositionTo = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.parentName
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.parentName
      L1_2 = L1_2[L2_2]
      L2_2 = setPosition
      L3_2 = A0_2.name
      L4_2 = L1_2.x
      L5_2 = L1_2.y
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
setPositionToParent = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = destroyObject
    L2_2 = A0_2.name
    L3_2 = A0_2.ignoreGameplayActions
    L4_2 = A0_2.ignoreOnDestroyed
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1
destroy = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = addEventCall
    L4_2 = "destroy"
    L5_2 = A0_2
    L6_2 = L2_2.destroyDelay
    L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.action = L1_1
destroyWithDelay = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = removeBird
    L3_2 = L1_2
    L2_2(L3_2)
  end
end

L0_1.action = L1_1
destroyBird = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.other
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.other
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.controllable
    if L2_2 then
      L2_2 = addEventCall
      L3_2 = "destroyBird"
      L4_2 = {}
      L5_2 = A0_2.other
      L4_2.name = L5_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = addEventCall
      L3_2 = "destroy"
      L4_2 = {}
      L5_2 = A0_2.other
      L4_2.name = L5_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
destroyEverything = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.other
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.other
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.levelGoal
    if L2_2 then
      L2_2 = addEventCall
      L3_2 = "destroy"
      L4_2 = {}
      L5_2 = A0_2.other
      L4_2.name = L5_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
destroyLevelgoals = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.other
      L3_2 = L3_2[L4_2]
      L4_2 = L2_2.destroyDefinitions
      if L4_2 then
        L4_2 = L2_2.destroyDefinitions
        L5_2 = L3_2.definition
        L4_2 = L4_2[L5_2]
        if L4_2 then
          L4_2 = addEventCall
          L5_2 = "destroy"
          L6_2 = {}
          L7_2 = A0_2.other
          L6_2.name = L7_2
          L4_2(L5_2, L6_2)
        end
      end
      L4_2 = L2_2.dontDestroyDefinitions
      if L4_2 then
        L4_2 = L2_2.dontDestroyDefinitions
        L5_2 = L3_2.definition
        L4_2 = L4_2[L5_2]
        if not L4_2 then
          L4_2 = addEventCall
          L5_2 = "destroy"
          L6_2 = {}
          L7_2 = A0_2.other
          L6_2.name = L7_2
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end

L0_1.action = L1_1
destroyBlocksWithDefinition = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.sleeping
    if L2_2 then
      L2_2 = destroyObject
      L3_2 = A0_2.name
      L2_2(L3_2)
    else
      L2_2 = addEventCall
      L3_2 = "destroyWhenGoingToSleep"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
destroyWhenGoingToSleep = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = setRotation
    L2_2 = A0_2.name
    L3_2 = A0_2.angle
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
setRotationAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.minScale
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.random
    L4_2 = L4_2()
    L5_2 = L2_2.maxScale
    L6_2 = L2_2.minScale
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2 + L4_2
    L4_2 = gamelua
    L4_2 = L4_2.setScale
    L5_2 = L1_2.name
    L6_2 = L3_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end

L0_1.action = L1_1
setScaleBetweenAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.ipairs
    L2_2 = A0_2.particles
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = putParticles
      L7_2 = {}
      L8_2 = A0_2.name
      L7_2.objectName = L8_2
      L7_2.particles = L5_2
      L7_2.useAmountInDefinition = true
      L6_2(L7_2)
    end
  end
end

L0_1.action = L1_1
putParticlesAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = putParticles
  L2_2 = {}
  L3_2 = A0_2.x
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L2_2.y = L3_2
  L3_2 = A0_2.angle
  if not L3_2 then
    L3_2 = 0
  end
  L2_2.angle = L3_2
  L3_2 = A0_2.particles
  L2_2.particles = L3_2
  L2_2.useAmountInDefinition = true
  L1_2(L2_2)
end

L0_1.action = L1_1
putParticlesToPos = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.other
      L3_2 = L3_2[L4_2]
      L4_2 = L2_2.triggerParticlesMinVelocity
      if L4_2 then
        L4_2 = getVelocity
        L5_2 = A0_2.other
        L4_2 = L4_2(L5_2)
        L5_2 = L2_2.triggerParticlesMinVelocity
        if L4_2 < L5_2 then
          return
        end
      end
      L4_2 = _G
      L4_2 = L4_2.ipairs
      L5_2 = L2_2.triggerParticles
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = putParticles
        L10_2 = {}
        L11_2 = L3_2.x
        L10_2.x = L11_2
        L11_2 = L3_2.y
        L10_2.y = L11_2
        L10_2.particles = L8_2
        L10_2.useAmountInDefinition = true
        L9_2(L10_2)
      end
    end
  end
end

L0_1.action = L1_1
putTriggerParticles = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.positionedParticles
    if not L3_2 then
      L3_2 = L2_2.positionedParticles
    end
    L4_2 = gamelua
    L4_2 = L4_2.vec2Rotate
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L7_2 = gamelua
    L7_2 = L7_2.getAngle
    L8_2 = L1_2.name
    L7_2, L8_2 = L7_2(L8_2)
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L6_2 = putParticles
    L7_2 = {}
    L8_2 = L1_2.x
    L8_2 = L8_2 + L4_2
    L7_2.x = L8_2
    L8_2 = L1_2.y
    L8_2 = L8_2 + L5_2
    L7_2.y = L8_2
    L8_2 = L3_2.particles
    L7_2.particles = L8_2
    L7_2.useAmountInDefinition = true
    L6_2(L7_2)
  end
end

L0_1.action = L1_1
spawnPositionedParticles = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.levelName
    if L1_2 ~= "LevelSelection" then
      L1_2 = gamelua
      L1_2 = L1_2.setCameraTarget
      L2_2 = A0_2.name
      L1_2(L2_2)
    end
  end
end

L0_1.action = L1_1
setCameraTargetAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.specialtyBulletTime
    if not L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.specialtyBulletTime
    end
    L3_2 = gamelua
    L3_2 = L3_2.activateBulletTime
    L4_2 = L2_2.smoothIn
    L5_2 = L2_2.duration
    L6_2 = L2_2.smoothOut
    L7_2 = L2_2.timeMultiplier
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end

L0_1.action = L1_1
activateBulletTimeAction = L0_1
L0_1 = 0
numRespawned = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = createObject
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L3_2 = A0_2.obj
  L3_2 = L3_2.definition
  L4_2 = A0_2.obj
  L4_2 = L4_2.definition
  L5_2 = "respawned"
  L6_2 = numRespawned
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = A0_2.obj
  L5_2 = L5_2.startingX
  L6_2 = A0_2.obj
  L6_2 = L6_2.startingY
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = numRespawned
  L1_2 = L1_2 + 1
  numRespawned = L1_2
end

L0_1.action = L1_1
respawnInOriginalPosition = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = setVelocity
    L2_2 = A0_2.name
    L3_2 = A0_2.velX
    if not L3_2 then
      L3_2 = 0
    end
    L4_2 = A0_2.velY
    if not L4_2 then
      L4_2 = 0
    end
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1
setVelocityAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.flyingBird
    if L1_2 then
      L1_2 = checkStillInWorld
      L2_2 = gamelua
      L2_2 = L2_2.flyingBird
      L2_2 = L2_2.name
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.objects
        L1_2 = L1_2.world
        L2_2 = A0_2.name
        L1_2 = L1_2[L2_2]
        L2_2 = 0
        L3_2 = A0_2.impulseAngleDistance
        if L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.objects
          L3_2 = L3_2.worldGravity
          if L3_2 then
            L3_2 = _G
            L3_2 = L3_2.math
            L3_2 = L3_2.max
            L4_2 = -1
            L5_2 = _G
            L5_2 = L5_2.math
            L5_2 = L5_2.min
            L6_2 = 1
            L7_2 = gamelua
            L7_2 = L7_2.flyingBird
            L7_2 = L7_2.x
            L8_2 = L1_2.x
            L7_2 = L7_2 - L8_2
            L8_2 = A0_2.impulseAngleDistance
            L7_2 = L7_2 / L8_2
            L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
            L2_2 = L3_2
          end
        end
        L3_2 = vNormalize
        L4_2 = gamelua
        L4_2 = L4_2.flyingBird
        L4_2 = L4_2.x
        L5_2 = L1_2.x
        L4_2 = L4_2 - L5_2
        L5_2 = gamelua
        L5_2 = L5_2.flyingBird
        L5_2 = L5_2.y
        L6_2 = L1_2.y
        L5_2 = L5_2 - L6_2
        L3_2, L4_2 = L3_2(L4_2, L5_2)
        L5_2 = gamelua
        L5_2 = L5_2.vec2Rotate
        L6_2 = L3_2
        L7_2 = L4_2
        L8_2 = -L2_2
        L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
        L4_2 = L6_2
        L3_2 = L5_2
        L5_2 = setVelocity
        L6_2 = A0_2.name
        L7_2 = A0_2.velocity
        L7_2 = L3_2 * L7_2
        L8_2 = A0_2.velocity
        L8_2 = L4_2 * L8_2
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
end

L0_1.action = L1_1
setVelocityTowardsFlyingbird = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = createObject
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L3_2 = A0_2.definition
  L4_2 = A0_2.name
  L5_2 = A0_2.posX
  L6_2 = A0_2.posY
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L2_2 = L2_2[L1_2]
  L3_2 = A0_2.velX
  if L3_2 then
    L3_2 = A0_2.velY
    if L3_2 then
      L3_2 = setVelocity
      L4_2 = L1_2
      L5_2 = A0_2.velX
      L6_2 = A0_2.velY
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = A0_2.angularVelocity
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.setAngularVelocity
    L4_2 = L1_2
    L5_2 = A0_2.angularVelocity
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.impulseX
  if L3_2 then
    L3_2 = A0_2.impulseY
    if L3_2 then
      L3_2 = applyImpulse
      L4_2 = L1_2
      L5_2 = A0_2.impulseX
      L6_2 = A0_2.impulseY
      L7_2 = L2_2.x
      L8_2 = L2_2.y
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
  L3_2 = A0_2.angle
  if L3_2 then
    L3_2 = setRotation
    L4_2 = L1_2
    L5_2 = A0_2.angle
    L3_2(L4_2, L5_2)
  end
  L3_2 = L2_2.levelGoal
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.levelGoals
    L3_2[L1_2] = L2_2
    L3_2 = gamelua
    L3_2 = L3_2.setObjectParameter
    L4_2 = L1_2
    L5_2 = 1
    L6_2 = 1
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2.postAction
  if L3_2 then
    L3_2 = A0_2.postAction
    L3_2 = L3_2.params
    L3_2.name = L1_2
    L3_2 = gamelua
    L3_2 = L3_2.fireAction
    L4_2 = A0_2.postAction
    L4_2 = L4_2.name
    L5_2 = A0_2.postAction
    L5_2 = L5_2.params
    L3_2(L4_2, L5_2)
  end
end

L0_1.action = L1_1
createObjectAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = assert
  L2_2 = A0_2.obj
  L2_2 = L2_2 ~= nil
  L3_2 = "p.obj not defined in createObjectOnDestroyed"
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.fireAction
  L2_2 = "createObjectAction"
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L5_2 = A0_2.obj
  L5_2 = L5_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.createObjectOnDestroyed
  L3_2.definition = L4_2
  L4_2 = A0_2.obj
  L4_2 = L4_2.x
  L3_2.posX = L4_2
  L4_2 = A0_2.obj
  L4_2 = L4_2.y
  L3_2.posY = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.getAngle
  L5_2 = A0_2.obj
  L5_2 = L5_2.name
  L4_2 = L4_2(L5_2)
  L3_2.angle = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.action = L1_1
createObjectOnDestroyed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.x
    A0_2.posX = L2_2
    L2_2 = L1_2.y
    A0_2.posY = L2_2
    A0_2.name = nil
    L2_2 = gamelua
    L2_2 = L2_2.fireAction
    L3_2 = "createObjectAction"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.action = L1_1
createRelativeObjectAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.applyImpulse
    L3_2 = A0_2.name
    L4_2 = A0_2.forceX
    L5_2 = A0_2.forceY
    L6_2 = L1_2.x
    L7_2 = A0_2.offsetX
    L6_2 = L6_2 + L7_2
    L7_2 = L1_2.y
    L8_2 = A0_2.offsetY
    L7_2 = L7_2 + L8_2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end

L0_1.action = L1_1
applyImpulseAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.getLinearVelocity
    L3_2 = A0_2.name
    L2_2, L3_2 = L2_2(L3_2)
    L4_2 = vNormalize
    L5_2 = L2_2
    L6_2 = L3_2
    L4_2, L5_2 = L4_2(L5_2, L6_2)
    L6_2 = gamelua
    L6_2 = L6_2.applyImpulse
    L7_2 = A0_2.name
    L8_2 = A0_2.boostImpulse
    L8_2 = L8_2 * L4_2
    L9_2 = A0_2.boostImpulse
    L9_2 = L9_2 * L5_2
    L10_2 = L1_2.x
    L11_2 = L1_2.y
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

L0_1.action = L1_1
applyBoostImpulseAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.setAngularVelocity
    L4_2 = A0_2.name
    L5_2 = A0_2.velocity
    if not L5_2 then
      L5_2 = L2_2.specialtyAngularVelocity
      if not L5_2 then
        L5_2 = 0
      end
    end
    L3_2(L4_2, L5_2)
  end
end

L0_1.action = L1_1
setAngularVelocityAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.setPhysicsEnabled
  L2_2 = false
  L1_2(L2_2)
end

L0_1.action = L1_1
physicsOff = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.setPhysicsEnabled
  L2_2 = true
  L1_2(L2_2)
end

L0_1.action = L1_1
physicsOn = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2
end

L0_1.action = L1_1
noAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0.5
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.name
  if L1_2 ~= nil then
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
      L2_2 = createObject
      L3_2 = gamelua
      L3_2 = L3_2.blockTable
      L4_2 = A0_2.obj
      L4_2 = L4_2.definition
      L5_2 = A0_2.obj
      L5_2 = L5_2.definition
      L6_2 = "respawned"
      L7_2 = numRespawned
      L5_2 = L5_2 .. L6_2 .. L7_2
      L6_2 = A0_2.obj
      L6_2 = L6_2.startingX
      L7_2 = A0_2.obj
      L7_2 = L7_2.startingY
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L2_2 = numRespawned
      L2_2 = L2_2 + 1
      numRespawned = L2_2
      L2_2 = addEventCall
      L3_2 = "spawnTimer"
      L4_2 = {}
      L5_2 = A0_2.obj
      L4_2.obj = L5_2
      L5_2 = 0.25
      L2_2(L3_2, L4_2, L5_2)
  end
  else
    L1_2 = A0_2.obj
    if L1_2 ~= nil then
      L1_2 = createObject
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L3_2 = A0_2.obj
      L3_2 = L3_2.definition
      L4_2 = A0_2.obj
      L4_2 = L4_2.definition
      L5_2 = "respawned"
      L6_2 = numRespawned
      L4_2 = L4_2 .. L5_2 .. L6_2
      L5_2 = A0_2.obj
      L5_2 = L5_2.startingX
      L6_2 = A0_2.obj
      L6_2 = L6_2.startingY
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      L1_2 = numRespawned
      L1_2 = L1_2 + 1
      numRespawned = L1_2
      L1_2 = addEventCall
      L2_2 = "spawnTimer"
      L3_2 = {}
      L4_2 = A0_2.obj
      L3_2.obj = L4_2
      L4_2 = 0.25
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
spawnTimer = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0.1
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.other
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.other
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.canTeleport
    if L1_2 ~= nil then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.canTeleport
      if L1_2 == false then
        goto lbl_79
      end
    end
    L1_2 = _G
    L1_2 = L1_2.pairs
    L2_2 = portalList
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2.name
      if L5_2 ~= L6_2 then
        L6_2 = gamelua
        L6_2 = L6_2.objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        if L6_2 ~= nil then
          L6_2 = setPosition
          L7_2 = A0_2.other
          L8_2 = gamelua
          L8_2 = L8_2.objects
          L8_2 = L8_2.world
          L8_2 = L8_2[L5_2]
          L8_2 = L8_2.x
          L9_2 = gamelua
          L9_2 = L9_2.objects
          L9_2 = L9_2.world
          L9_2 = L9_2[L5_2]
          L9_2 = L9_2.y
          L6_2(L7_2, L8_2, L9_2)
          L6_2 = setPosition
          L7_2 = A0_2.other
          L8_2 = gamelua
          L8_2 = L8_2.objects
          L8_2 = L8_2.world
          L8_2 = L8_2[L5_2]
          L8_2 = L8_2.x
          L9_2 = gamelua
          L9_2 = L9_2.objects
          L9_2 = L9_2.world
          L9_2 = L9_2[L5_2]
          L9_2 = L9_2.y
          L6_2(L7_2, L8_2, L9_2)
          L6_2 = gamelua
          L6_2 = L6_2.objects
          L6_2 = L6_2.world
          L7_2 = A0_2.other
          L6_2 = L6_2[L7_2]
          L6_2.canTeleport = false
          L6_2 = addEventCall
          L7_2 = "enableTeleport"
          L8_2 = {}
          L9_2 = A0_2.other
          L8_2.name = L9_2
          L9_2 = 0.25
          L6_2(L7_2, L8_2, L9_2)
        end
      end
    end
  end
  ::lbl_79::
end

L0_1.action = L1_1
teleportObject = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.loopingParticles
    if L2_2 == nil then
      return
    end
    L3_2 = gamelua
    L3_2 = L3_2.particleTable
    L3_2 = L3_2.particles
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = A0_2.name
      L4_2.objectName = L5_2
      L4_2.particles = L2_2
      L5_2 = gamelua
      L5_2 = L5_2.particleTable
      L5_2 = L5_2.particles
      L5_2 = L5_2[L2_2]
      L5_2 = L5_2.amount
      L4_2.amount = L5_2
      L3_2(L4_2)
    else
      L3_2 = _G
      L3_2 = L3_2.pairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = gamelua
        L8_2 = L8_2.particleTable
        L8_2 = L8_2.particles
        L8_2 = L8_2[L7_2]
        if L8_2 then
          L8_2 = putParticles
          L9_2 = {}
          L10_2 = A0_2.name
          L9_2.objectName = L10_2
          L9_2.particles = L7_2
          L10_2 = gamelua
          L10_2 = L10_2.particleTable
          L10_2 = L10_2.particles
          L10_2 = L10_2[L7_2]
          L10_2 = L10_2.amount
          L9_2.amount = L10_2
          L8_2(L9_2)
        end
      end
    end
    L3_2 = gamelua
    L3_2 = L3_2.blockTable
    L3_2 = L3_2.blocks
    L4_2 = L1_2.definition
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.loopingParticlesInterval
    if not L3_2 then
      L3_2 = 0.1
    end
    L4_2 = L1_2.stopSpawningLoopingParticles
    if not L4_2 then
      L4_2 = addEventCall
      L5_2 = "spawnLoopingParticles"
      L6_2 = A0_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end

L0_1.action = L1_1
spawnLoopingParticles = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.stopSpawningLoopingParticles = true
  end
end

L0_1.action = L1_1
stopSpawningLoopingParticles = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = setVelocity
    L4_2 = A0_2.name
    L5_2 = L2_2.setMovementSpeed
    L5_2 = L5_2.x
    if not L5_2 then
      L5_2 = 0
    end
    L6_2 = L2_2.setMovementSpeed
    L6_2 = L6_2.y
    if not L6_2 then
      L6_2 = 0
    end
    L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.action = L1_1
setMovementSpeed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.keepLevelAlive
    L2_2 = A0_2.cameraResetTime
    L1_2(L2_2)
  end
end

L0_1.action = L1_1
keepLevelAliveAction = L0_1
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
    L1_2 = A0_2.parentName
    if L1_2 then
      L1_2 = checkStillInWorld
      L2_2 = A0_2.parentName
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = destroyObject
        L2_2 = A0_2.name
        L1_2(L2_2)
        return
      end
    end
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.loopingParticle
    if L2_2 then
      L2_2 = _G
      L2_2 = L2_2.type
      L3_2 = L1_2.loopingParticle
      L3_2 = L3_2.particleName
      L2_2 = L2_2(L3_2)
      if L2_2 == "table" then
        L2_2 = _G
        L2_2 = L2_2.ipairs
        L3_2 = L1_2.loopingParticle
        L3_2 = L3_2.particleName
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = putParticles
          L8_2 = {}
          L9_2 = A0_2.name
          L8_2.objectName = L9_2
          L8_2.particles = L6_2
          L7_2(L8_2)
        end
      else
        L2_2 = putParticles
        L3_2 = {}
        L4_2 = A0_2.name
        L3_2.objectName = L4_2
        L4_2 = L1_2.loopingParticle
        L4_2 = L4_2.particleName
        L3_2.particles = L4_2
        L2_2(L3_2)
      end
      L2_2 = addEventCall
      L3_2 = "spawnSwitchableLoopingParticle"
      L4_2 = A0_2
      L5_2 = L1_2.loopingParticle
      L5_2 = L5_2.interval
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = addEventCall
      L3_2 = "spawnSwitchableLoopingParticle"
      L4_2 = A0_2
      L5_2 = 0.2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
spawnSwitchableLoopingParticle = L0_1
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
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.vec2Rotate
    L3_2 = A0_2.infoTable
    L3_2 = L3_2.offset
    L3_2 = L3_2.x
    L4_2 = A0_2.infoTable
    L4_2 = L4_2.offset
    L4_2 = L4_2.y
    L5_2 = gamelua
    L5_2 = L5_2.getAngle
    L6_2 = A0_2.name
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = createObject
    L5_2 = gamelua
    L5_2 = L5_2.blockTable
    L6_2 = A0_2.infoTable
    L6_2 = L6_2.blockName
    L7_2 = nil
    L8_2 = L1_2.x
    L8_2 = L8_2 + L2_2
    L9_2 = L1_2.y
    L9_2 = L9_2 + L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = gamelua
    L5_2 = L5_2.objects
    L5_2 = L5_2.world
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2.infoTable
    L6_2 = L6_2.loopingParticle
    L5_2.loopingParticle = L6_2
    L6_2 = addUpdateCall
    L7_2 = "stickToParent"
    L8_2 = {}
    L8_2.name = L4_2
    L9_2 = A0_2.name
    L8_2.parent = L9_2
    L9_2 = A0_2.infoTable
    L9_2 = L9_2.offset
    L9_2 = L9_2.x
    L8_2.offsetX = L9_2
    L9_2 = A0_2.infoTable
    L9_2 = L9_2.offset
    L9_2 = L9_2.y
    L8_2.offsetY = L9_2
    L8_2.angle = 0
    L6_2(L7_2, L8_2)
    L6_2 = addEventCall
    L7_2 = "spawnSwitchableLoopingParticle"
    L8_2 = {}
    L8_2.name = L4_2
    L9_2 = A0_2.name
    L8_2.parentName = L9_2
    L6_2(L7_2, L8_2)
  end
end

L0_1.action = L1_1
createPositionedLoopingParticle = L0_1
L0_1 = {}
portalList = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = portalList
  L2_2 = portalList
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = A0_2.name
  L1_2[L2_2] = L3_2
end

L0_1.action = L1_1
portalCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0.2
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
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
    L1_2.canTeleport = true
  end
end

L0_1.action = L1_1
enableTeleport = L0_1
L0_1 = false
addedSlipperFunction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.controllable
      if L1_2 then
        L1_2 = addedSlipperFunction
        if not L1_2 then
          L1_2 = true
          addedSlipperFunction = L1_2
          L1_2 = addEventCall
          L2_2 = "slipperPlanetF"
          L3_2 = {}
          L4_2 = A0_2.name
          L3_2.name = L4_2
          L4_2 = A0_2.other
          L3_2.other = L4_2
          L4_2 = 0
          L1_2(L2_2, L3_2, L4_2)
        end
      end
    end
  end
end

L0_1.action = L1_1
icePlanetCollision = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.controllable
      if L1_2 then
        L1_2 = false
        addedSlipperFunction = L1_2
      end
    end
  end
end

L0_1.action = L1_1
icePlanetStopCollision = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = addedSlipperFunction
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.name
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = checkStillInWorld
      L2_2 = A0_2.other
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.objects
        L1_2 = L1_2.world
        L2_2 = A0_2.name
        L1_2 = L1_2[L2_2]
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.world
        L3_2 = A0_2.other
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2.controllable
        if L3_2 then
          L3_2 = L2_2.isSlidingDisabled
          if not L3_2 then
            L3_2 = vLength
            L4_2 = L2_2.xVel
            L5_2 = L2_2.yVel
            L3_2 = L3_2(L4_2, L5_2)
            L4_2 = L2_2.sliding
            if not L4_2 then
              L4_2 = L3_2 * 2.5
              L2_2.startingSpeed = L4_2
            end
            L4_2 = L2_2.sliding
            if L4_2 and L3_2 < 15 then
              L2_2.isSlidingDisabled = true
            else
              L4_2 = L2_2.sliding
              if not L4_2 or 25 < L3_2 then
                L2_2.sliding = true
                L4_2 = L1_2.x
                L5_2 = L2_2.x
                L4_2 = L4_2 - L5_2
                L5_2 = L1_2.y
                L6_2 = L2_2.y
                L5_2 = L5_2 - L6_2
                L6_2 = vNormalize
                L7_2 = L4_2
                L8_2 = L5_2
                L6_2, L7_2 = L6_2(L7_2, L8_2)
                L5_2 = L7_2
                L4_2 = L6_2
                L6_2 = vNormalize
                L7_2 = L2_2.xVel
                L8_2 = L2_2.yVel
                L6_2, L7_2 = L6_2(L7_2, L8_2)
                L8_2 = vNormalize
                L9_2 = -L4_2
                L10_2 = L6_2 * 500
                L9_2 = L9_2 + L10_2
                L10_2 = -L5_2
                L11_2 = L7_2 * 500
                L10_2 = L10_2 + L11_2
                L8_2, L9_2 = L8_2(L9_2, L10_2)
                L5_2 = L9_2
                L4_2 = L8_2
                L8_2 = setVelocity
                L9_2 = A0_2.other
                L10_2 = L2_2.startingSpeed
                L10_2 = L6_2 * L10_2
                L11_2 = L2_2.startingSpeed
                L11_2 = L7_2 * L11_2
                L8_2(L9_2, L10_2, L11_2)
                L8_2 = addEventCall
                L9_2 = "slipperPlanetF"
                L10_2 = {}
                L11_2 = A0_2.name
                L10_2.name = L11_2
                L11_2 = A0_2.other
                L10_2.other = L11_2
                L11_2 = 0
                L8_2(L9_2, L10_2, L11_2)
                L8_2 = gamelua
                L8_2 = L8_2._G
                L8_2 = L8_2.math
                L8_2 = L8_2.atan2
                L9_2 = L2_2.yVel
                L10_2 = L2_2.xVel
                L8_2 = L8_2(L9_2, L10_2)
              end
            end
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
slipperPlanetF = L0_1
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
    L2_2 = A0_2.increment
    if L2_2 == nil then
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.scaleTweenTime
      if L2_2 == nil then
        A0_2.time = 0.25
        A0_2.increment = 7.2
        A0_2.scale = 0
      else
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.scaleTweenTime
        A0_2.time = L2_2
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.scaleTweenIncrement
        A0_2.increment = L2_2
        A0_2.scale = 0
      end
    end
    L2_2 = A0_2.time
    if 0 < L2_2 then
      L2_2 = A0_2.scale
      L3_2 = A0_2.dt
      L4_2 = A0_2.increment
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.scale = L2_2
      L2_2 = gamelua
      L2_2 = L2_2.setScale
      L3_2 = A0_2.name
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L4_2 = L4_2.blocks
      L5_2 = L1_2.definition
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.scale
      L5_2 = A0_2.scale
      L4_2 = L4_2 + L5_2
      L5_2 = gamelua
      L5_2 = L5_2.blockTable
      L5_2 = L5_2.blocks
      L6_2 = L1_2.definition
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.scale
      L6_2 = A0_2.scale
      L5_2 = L5_2 + L6_2
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 - L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "tweenScale"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
tweenScale = L0_1
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
    L2_2 = A0_2.increment
    if L2_2 == nil then
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.rotationTweenTime
      if L2_2 == nil then
        A0_2.time = 0.25
        A0_2.increment = 7.2
        L2_2 = L1_2.angle
        A0_2.angle = L2_2
      else
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.rotationTweenTime
        A0_2.time = L2_2
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.rotationTweenIncrement
        A0_2.increment = L2_2
        L2_2 = L1_2.angle
        A0_2.angle = L2_2
      end
    end
    L2_2 = A0_2.time
    if 0 < L2_2 then
      L2_2 = A0_2.angle
      L3_2 = A0_2.dt
      L4_2 = A0_2.increment
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.angle = L2_2
      L2_2 = gamelua
      L2_2 = L2_2.setRotation
      L3_2 = A0_2.name
      L4_2 = A0_2.angle
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 - L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "tweenRotation"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
tweenRotation = L0_1
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
    L2_2 = A0_2.xIncrement
    if L2_2 == nil then
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.positionTweenTime
      if L2_2 == nil then
        A0_2.time = 0.25
        A0_2.xIncrement = 7.2
        A0_2.yIncrement = 7.2
        L2_2 = L1_2.x
        A0_2.x = L2_2
        L2_2 = L1_2.y
        A0_2.y = L2_2
      else
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.positionTweenTime
        A0_2.time = L2_2
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.tweenXIncrement
        A0_2.xIncrement = L2_2
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.tweenYIncrement
        A0_2.yIncrement = L2_2
        L2_2 = L1_2.x
        A0_2.x = L2_2
        L2_2 = L1_2.y
        A0_2.y = L2_2
        L2_2 = L1_2.x
        A0_2.startingX = L2_2
        L2_2 = L1_2.y
        A0_2.startingY = L2_2
      end
    end
    L2_2 = A0_2.time
    if 0 < L2_2 then
      L2_2 = A0_2.x
      L3_2 = A0_2.dt
      L4_2 = A0_2.xIncrement
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.x = L2_2
      L2_2 = A0_2.y
      L3_2 = A0_2.dt
      L4_2 = A0_2.yIncrement
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 + L3_2
      A0_2.y = L2_2
      L2_2 = gamelua
      L2_2 = L2_2.setPosition
      L3_2 = A0_2.name
      L4_2 = A0_2.x
      L5_2 = A0_2.y
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 - L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "tweenPosition"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
tweenPosition = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = A0_2.eventList
    if L2_2 ~= nil then
      L2_2 = gamelua
      L2_2 = L2_2._G
      L2_2 = L2_2.pairs
      L3_2 = A0_2.eventList
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2.params
        L8_2 = A0_2.name
        L7_2.name = L8_2
        L7_2 = addEventCall
        L8_2 = L6_2.name
        L9_2 = L6_2.params
        L10_2 = L6_2.timer
        L7_2(L8_2, L9_2, L10_2)
      end
    else
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.eventList
      if L3_2 ~= nil then
        L3_2 = gamelua
        L3_2 = L3_2._G
        L3_2 = L3_2.pairs
        L4_2 = L2_2.eventList
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        for L6_2, L7_2 in L3_2, L4_2, L5_2 do
          L8_2 = L7_2.params
          L9_2 = A0_2.name
          L8_2.name = L9_2
          L8_2 = addEventCall
          L9_2 = L7_2.name
          L10_2 = L7_2.params
          L11_2 = L7_2.timer
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  else
    L2_2 = gamelua
    L2_2 = L2_2.objects
    L2_2 = L2_2.spriteObjects
    L3_2 = A0_2.name
    L1_2 = L2_2[L3_2]
    if L1_2 ~= nil then
      L2_2 = A0_2.eventList
      if L2_2 ~= nil then
        L2_2 = gamelua
        L2_2 = L2_2._G
        L2_2 = L2_2.pairs
        L3_2 = A0_2.eventList
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = L6_2.params
          L8_2 = A0_2.name
          L7_2.name = L8_2
          L7_2 = addEventCall
          L8_2 = L6_2.name
          L9_2 = L6_2.params
          L10_2 = L6_2.timer
          L7_2(L8_2, L9_2, L10_2)
        end
      else
        L2_2 = gamelua
        L2_2 = L2_2.blockTable
        L2_2 = L2_2.blocks
        L3_2 = L1_2.definition
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2.eventList
        if L3_2 ~= nil then
          L3_2 = gamelua
          L3_2 = L3_2._G
          L3_2 = L3_2.pairs
          L4_2 = L2_2.eventList
          L3_2, L4_2, L5_2 = L3_2(L4_2)
          for L6_2, L7_2 in L3_2, L4_2, L5_2 do
            L8_2 = L7_2.params
            L9_2 = A0_2.name
            L8_2.name = L9_2
            L8_2 = addEventCall
            L9_2 = L7_2.name
            L10_2 = L7_2.params
            L11_2 = L7_2.timer
            L8_2(L9_2, L10_2, L11_2)
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
fireMultipleEvents = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.time
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptionsAudioBtn
    L2_2 = A0_2.time
    if L2_2 < 0.3 then
      L2_2 = L1_2.y
      L3_2 = A0_2.dt
      L4_2 = gamelua
      L4_2 = L4_2.screenHeight
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * 0.6
      L2_2 = L2_2 - L3_2
      L1_2.y = L2_2
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "optionsMenuOpened"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2.time
      if L2_2 < 0.6 then
        L2_2 = L1_2.y
        L3_2 = A0_2.dt
        L4_2 = gamelua
        L4_2 = L4_2.screenHeight
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 * 0.6
        L2_2 = L2_2 - L3_2
        L1_2.y = L2_2
        L2_2 = A0_2.time
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        A0_2.time = L2_2
        L2_2 = addEventCall
        L3_2 = "optionsMenuOpened"
        L4_2 = A0_2
        L5_2 = 0
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.buttonObjects
        L1_2 = L2_2.mainMenuOptionsInfoBtn
        L2_2 = L1_2.y
        L3_2 = A0_2.dt
        L4_2 = gamelua
        L4_2 = L4_2.screenHeight
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 * 0.6
        L2_2 = L2_2 - L3_2
        L1_2.y = L2_2
      end
    end
  else
    A0_2.time = 0
    L1_2 = gamelua
    L2_2 = gamelua
    L2_2 = L2_2.audioEnabled
    L2_2 = not L2_2
    L1_2.audioEnabled = L2_2
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L2_2 = {}
    L3_2 = gamelua
    L3_2 = L3_2.screenWidth
    L3_2 = L3_2 * 0.1
    L2_2.x = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.screenHeight
    L3_2 = L3_2 * 0.9
    L2_2.y = L3_2
    L2_2.scaleX = 1
    L2_2.scaleY = 1
    L2_2.angle = 0
    L2_2.name = "mainMenuOptionsAudioBtn"
    L2_2.guiObject = true
    L2_2.sprite = "BTN_PAUSE"
    L1_2.mainMenuOptionsAudioBtn = L2_2
    L1_2 = addEventCall
    L2_2 = "optionsMenuOpened"
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L2_2 = {}
    L3_2 = gamelua
    L3_2 = L3_2.screenWidth
    L3_2 = L3_2 * 0.1
    L2_2.x = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.screenHeight
    L3_2 = L3_2 * 0.9
    L2_2.y = L3_2
    L2_2.scaleX = 1
    L2_2.scaleY = 1
    L2_2.angle = 0
    L2_2.name = "mainMenuOptionsInfoBtn"
    L2_2.guiObject = true
    L2_2.sprite = "BTN_PAUSE"
    L1_2.mainMenuOptionsInfoBtn = L2_2
    L1_2 = addEventCall
    L2_2 = "optionsMenuOpened"
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptionsBtn
    if L1_2 ~= nil then
      L1_2.onClicked = "optionsMenuClosed"
    end
  end
end

L0_1.action = L1_1
optionsMenuOpened = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.time
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptionsAudioBtn
    L2_2 = A0_2.time
    if L2_2 < 0.15 then
      L2_2 = L1_2.y
      L3_2 = A0_2.dt
      L4_2 = gamelua
      L4_2 = L4_2.screenHeight
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * 1.2
      L2_2 = L2_2 + L3_2
      L1_2.y = L2_2
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      A0_2.time = L2_2
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.buttonObjects
      L1_2 = L2_2.mainMenuOptionsInfoBtn
      L2_2 = L1_2.y
      L3_2 = A0_2.dt
      L4_2 = gamelua
      L4_2 = L4_2.screenHeight
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * 1.1
      L2_2 = L2_2 + L3_2
      L1_2.y = L2_2
      L2_2 = addEventCall
      L3_2 = "optionsMenuClosed"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2.time
      if L2_2 < 0.3 then
        L2_2 = L1_2.y
        L3_2 = A0_2.dt
        L4_2 = gamelua
        L4_2 = L4_2.screenHeight
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 * 1.2
        L2_2 = L2_2 + L3_2
        L1_2.y = L2_2
        L2_2 = A0_2.time
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        A0_2.time = L2_2
        L2_2 = addEventCall
        L3_2 = "optionsMenuClosed"
        L4_2 = A0_2
        L5_2 = 0
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.buttonObjects
        L2_2.mainMenuOptionsAudioBtn = nil
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.buttonObjects
        L2_2.mainMenuOptionsInfoBtn = nil
      end
    end
  else
    A0_2.time = 0
    L1_2 = gamelua
    L2_2 = gamelua
    L2_2 = L2_2.audioEnabled
    L2_2 = not L2_2
    L1_2.audioEnabled = L2_2
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptionsBtn
    if L1_2 ~= nil then
      L1_2.onClicked = "optionsMenuOpened"
    end
    L2_2 = addEventCall
    L3_2 = "optionsMenuClosed"
    L4_2 = A0_2
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.action = L1_1
optionsMenuClosed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.time
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptions2Btn1
    L2_2 = A0_2.time
    if L2_2 < 0.3 then
      L2_2 = L1_2.y
      L3_2 = A0_2.dt
      L4_2 = gamelua
      L4_2 = L4_2.screenHeight
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * 0.6
      L2_2 = L2_2 - L3_2
      L1_2.y = L2_2
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      A0_2.time = L2_2
      L2_2 = addEventCall
      L3_2 = "optionsMenu2Opened"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2.time
      if L2_2 < 0.6 then
        L2_2 = L1_2.y
        L3_2 = A0_2.dt
        L4_2 = gamelua
        L4_2 = L4_2.screenHeight
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 * 0.6
        L2_2 = L2_2 - L3_2
        L1_2.y = L2_2
        L2_2 = A0_2.time
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        A0_2.time = L2_2
        L2_2 = addEventCall
        L3_2 = "optionsMenu2Opened"
        L4_2 = A0_2
        L5_2 = 0
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.buttonObjects
        L1_2 = L2_2.mainMenuOptions2Btn2
        L2_2 = L1_2.y
        L3_2 = A0_2.dt
        L4_2 = gamelua
        L4_2 = L4_2.screenHeight
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 * 0.6
        L2_2 = L2_2 - L3_2
        L1_2.y = L2_2
      end
    end
  else
    A0_2.time = 0
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L2_2 = {}
    L3_2 = gamelua
    L3_2 = L3_2.screenWidth
    L3_2 = L3_2 * 0.9
    L2_2.x = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.screenHeight
    L3_2 = L3_2 * 0.9
    L2_2.y = L3_2
    L2_2.scaleX = 1
    L2_2.scaleY = 1
    L2_2.angle = 0
    L2_2.name = "mainMenuOptions2Btn1"
    L2_2.guiObject = true
    L2_2.sprite = "BTN_PAUSE"
    L1_2.mainMenuOptions2Btn1 = L2_2
    L1_2 = addEventCall
    L2_2 = "optionsMenu2Opened"
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L2_2 = {}
    L3_2 = gamelua
    L3_2 = L3_2.screenWidth
    L3_2 = L3_2 * 0.9
    L2_2.x = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.screenHeight
    L3_2 = L3_2 * 0.9
    L2_2.y = L3_2
    L2_2.scaleX = 1
    L2_2.scaleY = 1
    L2_2.angle = 0
    L2_2.name = "mainMenuOptions2Btn2"
    L2_2.guiObject = true
    L2_2.sprite = "BTN_PAUSE"
    L1_2.mainMenuOptions2Btn2 = L2_2
    L1_2 = addEventCall
    L2_2 = "optionsMenu2Opened"
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptionsBtn2
    if L1_2 ~= nil then
      L1_2.onClicked = "optionsMenu2Closed"
    end
  end
end

L0_1.action = L1_1
optionsMenu2Opened = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.time
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptions2Btn1
    L2_2 = A0_2.time
    if L2_2 < 0.15 then
      L2_2 = L1_2.y
      L3_2 = A0_2.dt
      L4_2 = gamelua
      L4_2 = L4_2.screenHeight
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * 1.2
      L2_2 = L2_2 + L3_2
      L1_2.y = L2_2
      L2_2 = A0_2.time
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      A0_2.time = L2_2
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.buttonObjects
      L1_2 = L2_2.mainMenuOptions2Btn2
      L2_2 = L1_2.y
      L3_2 = A0_2.dt
      L4_2 = gamelua
      L4_2 = L4_2.screenHeight
      L3_2 = L3_2 * L4_2
      L3_2 = L3_2 * 1.1
      L2_2 = L2_2 + L3_2
      L1_2.y = L2_2
      L2_2 = addEventCall
      L3_2 = "optionsMenu2Closed"
      L4_2 = A0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2.time
      if L2_2 < 0.3 then
        L2_2 = L1_2.y
        L3_2 = A0_2.dt
        L4_2 = gamelua
        L4_2 = L4_2.screenHeight
        L3_2 = L3_2 * L4_2
        L3_2 = L3_2 * 1.2
        L2_2 = L2_2 + L3_2
        L1_2.y = L2_2
        L2_2 = A0_2.time
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        A0_2.time = L2_2
        L2_2 = addEventCall
        L3_2 = "optionsMenu2Closed"
        L4_2 = A0_2
        L5_2 = 0
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.buttonObjects
        L2_2.mainMenuOptions2Btn1 = nil
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.buttonObjects
        L2_2.mainMenuOptions2Btn2 = nil
      end
    end
  else
    A0_2.time = 0
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.buttonObjects
    L1_2 = L1_2.mainMenuOptionsBtn2
    if L1_2 ~= nil then
      L1_2.onClicked = "optionsMenu2Opened"
    end
    L2_2 = addEventCall
    L3_2 = "optionsMenu2Closed"
    L4_2 = A0_2
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.action = L1_1
optionsMenu2Closed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0.5
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L3_2 = A0_2.other
  L2_2 = L2_2[L3_2]
  L3_2 = gamelua
  L3_2 = L3_2.getLevelMetadata
  L4_2 = gamelua
  L4_2 = L4_2.levelName
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.objectsDestroyableByTap
  if L3_2 ~= true and L1_2 ~= nil and L2_2 ~= nil then
    L3_2 = L2_2.sensorType
    if L3_2 == "gravitation" then
      L3_2 = L1_2.spriteUnfreeze
      if L3_2 ~= nil then
        L3_2 = L1_2.spriteUnfreeze
        L1_2.sprite = L3_2
        L3_2 = L1_2.materialUnfreeze
        L1_2.material = L3_2
        L1_2.disableAnimations = false
        L3_2 = gamelua
        L3_2 = L3_2.setSprite
        L4_2 = L1_2.name
        L5_2 = L1_2.sprite
        L3_2(L4_2, L5_2)
        L1_2.timeOutsideAtmosphere = 0
        L1_2.enteredState = false
        L3_2 = gamelua
        L3_2 = L3_2.setCurrentState
        L4_2 = L1_2
        L5_2 = "idleState"
        L3_2(L4_2, L5_2)
        L3_2 = addEventCall
        L4_2 = "removeIciclesFromPig"
        L5_2 = {}
        L6_2 = A0_2.name
        L5_2.name = L6_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L0_1.action = L1_1
pigEnteredGravityArea = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0.5
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.freezingObjects
  L1_2 = L1_2.objects
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.freezingObjects
    L1_2 = L1_2.objects
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.timer = 0
    L1_2 = gamelua
    L1_2 = L1_2.freezeObjects
    L2_2 = gamelua
    L2_2 = L2_2.freezingObjects
    L2_2 = L2_2.objects
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
removeIciclesFromPig = L0_1
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
  L2_2 = gamelua
  L2_2 = L2_2.setSleeping
  L3_2 = A0_2.other
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2._G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = L1_2.swordTouchingObjects
  L4_2 = {}
  L5_2 = A0_2.other
  L6_2 = A0_2.resultDamage
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.particlesCollision
  collisionParticles = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.worldToPhysicsTransform
  L3_2 = gamelua
  L3_2 = L3_2._G
  L3_2 = L3_2.res
  L3_2 = L3_2.getSpriteBounds
  L4_2 = L1_2.sprite
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L1_2.x
  L5_2 = gamelua
  L5_2 = L5_2._G
  L5_2 = L5_2.math
  L5_2 = L5_2.cos
  L6_2 = L1_2.angle
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * L2_2
  L5_2 = L5_2 * 0.5
  L6_2 = gamelua
  L6_2 = L6_2.gameWorldScale
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = L1_2.y
  L6_2 = gamelua
  L6_2 = L6_2._G
  L6_2 = L6_2.math
  L6_2 = L6_2.sin
  L7_2 = L1_2.angle
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L2_2
  L6_2 = L6_2 * 0.5
  L7_2 = gamelua
  L7_2 = L7_2.gameWorldScale
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = gamelua
  L6_2 = L6_2.putParticles
  L7_2 = {}
  L7_2.x = L4_2
  L7_2.y = L5_2
  L8_2 = collisionParticles
  L7_2.particles = L8_2
  L6_2(L7_2)
end

L0_1.action = L1_1
swordCollision = L0_1
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
  L2_2 = L2_2.pairs
  L3_2 = L1_2.swordTouchingObjects
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2[1]
    L8_2 = A0_2.other
    if L7_2 == L8_2 then
      L7_2 = gamelua
      L7_2 = L7_2._G
      L7_2 = L7_2.table
      L7_2 = L7_2.remove
      L8_2 = L1_2.swordTouchingObjects
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end

L0_1.action = L1_1
swordEndCollision = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2
  return
end

L0_1.action = L1_1
lazerCollision = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2
end

L0_1.action = L1_1
lazerCollisionExit = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2.name
  L2_2 = nil
  L3_2 = getObjectDefinition
  L4_2 = A0_2.name
  L3_2 = L3_2(L4_2)
  L4_2 = g_emitterIndex
  if not L4_2 then
    L4_2 = 0
  end
  g_emitterIndex = L4_2
  L4_2 = g_emitterIndex
  L4_2 = L4_2 + 1
  g_emitterIndex = L4_2
  L4_2 = A0_2.objectCreated
  if L4_2 ~= true then
    L4_2 = A0_2.name
    if L4_2 == "F8" then
      L4_2 = createObject
      L5_2 = gamelua
      L5_2 = L5_2.blockTable
      L6_2 = "BLOCK_SENSOR_LAZER_EMITTER"
      L7_2 = "BLOCK_LAZER_EMITTER"
      L8_2 = g_emitterIndex
      L7_2 = L7_2 .. L8_2
      L8_2 = A0_2.spawnX
      L8_2 = L8_2 * 1
      L9_2 = A0_2.spawnY
      L9_2 = L9_2 * 1
      L10_2 = 5
      L11_2 = 5
      L12_2 = 5
      L13_2 = 1
      L14_2 = 1
      L15_2 = nil
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L1_2 = L4_2
    else
      L4_2 = createObject
      L5_2 = gamelua
      L5_2 = L5_2.blockTable
      L6_2 = "BLOCK_SENSOR_LAZER_EMITTER"
      L7_2 = "BLOCK_LAZER_EMITTER"
      L8_2 = g_emitterIndex
      L7_2 = L7_2 .. L8_2
      L8_2 = L2_2.x
      L9_2 = L2_2.y
      L10_2 = 5
      L11_2 = 5
      L12_2 = 5
      L13_2 = 1
      L14_2 = 1
      L15_2 = nil
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L1_2 = L4_2
      L4_2 = gamelua
      L4_2 = L4_2.objects
      L4_2 = L4_2.world
      L5_2 = A0_2.name
      L2_2 = L4_2[L5_2]
    end
    L4_2 = setCollisionEnabled
    L5_2 = L1_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = L3_2.isVisible
  if L4_2 == false then
    L4_2 = gamelua
    L4_2 = L4_2.showEditor
    if not L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.setVisible
      L5_2 = L1_2
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = setObjectParameter
  L5_2 = L1_2
  L6_2 = 21
  L7_2 = 8
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.parent
  if L4_2 ~= nil then
    L4_2 = gamelua
    L4_2 = L4_2.objects
    L4_2 = L4_2.world
    L5_2 = A0_2.parent
    L2_2 = L4_2[L5_2]
  end
  L4_2 = gamelua
  L4_2 = L4_2.objects
  L4_2 = L4_2.world
  L4_2 = L4_2[L1_2]
  if L2_2 then
    L4_2.parent = L2_2
    L5_2 = L4_2.x
    L6_2 = L4_2.parent
    L6_2 = L6_2.x
    L5_2 = L5_2 - L6_2
    L4_2.xDelta = L5_2
    L5_2 = L4_2.y
    L6_2 = L4_2.parent
    L6_2 = L6_2.y
    L5_2 = L5_2 - L6_2
    L4_2.yDelta = L5_2
  end
  L5_2 = {}
  L5_2.timer = 0
  L5_2.emitInterval = 0
  L6_2 = gamelua
  L6_2 = L6_2.deepCopy
  L7_2 = gamelua
  L7_2 = L7_2.blockTable
  L7_2 = L7_2.blocks
  L8_2 = L4_2.definition
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.shotData
  L6_2 = L6_2(L7_2)
  L5_2.shotData = L6_2
  L4_2.emitter = L5_2
  L6_2 = gamelua
  L6_2 = L6_2.addUpdateCall
  L7_2 = "updateEmitter"
  L8_2 = {}
  L8_2.name = L1_2
  L9_2 = nil
  L10_2 = L1_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end

L0_1.action = L1_1
initEmitter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.emitter
  L3_2 = L2_2.timer
  L4_2 = A0_2.dt
  L3_2 = L3_2 - L4_2
  L2_2.timer = L3_2
  L3_2 = L2_2.emittedParticles
  if not L3_2 then
    L3_2 = 0
  end
  L2_2.emittedParticles = L3_2
  L3_2 = L2_2.birdEmitter
  if L3_2 then
    L3_2 = A0_2.dt
    L4_2 = gamelua
    L4_2 = L4_2.getDeltaTimeMultiplier
    L4_2 = L4_2()
    L3_2 = L3_2 * L4_2
    A0_2.dt = L3_2
  end
  L3_2 = L2_2.shotData
  L4_2 = L2_2.shotData
  L4_2 = L4_2[1]
  L4_2 = L4_2[1]
  if L4_2 then
    L4_2 = L1_2.shotPattern
    if L4_2 then
      L4_2 = L2_2.shotData
      L5_2 = L1_2.shotPattern
      L3_2 = L4_2[L5_2]
    else
      L4_2 = L2_2.shotData
      L3_2 = L4_2[1]
    end
  else
    L3_2 = L2_2.shotData
  end
  L4_2 = L1_2.parent
  if L4_2 then
    L4_2 = L2_2.birdEmitter
    if not L4_2 then
      L4_2 = L1_2.x
      L5_2 = L1_2.parent
      L5_2 = L5_2.x
      L4_2 = L4_2 - L5_2
      L1_2.xDelta = L4_2
      L4_2 = L1_2.y
      L5_2 = L1_2.parent
      L5_2 = L5_2.y
      L4_2 = L4_2 - L5_2
      L1_2.yDelta = L4_2
    end
    L4_2 = L1_2.parent
    L4_2 = L4_2.x
    L5_2 = L1_2.xDelta
    L4_2 = L4_2 + L5_2
    L1_2.x = L4_2
    L4_2 = L1_2.parent
    L4_2 = L4_2.y
    L5_2 = L1_2.yDelta
    L4_2 = L4_2 + L5_2
    L1_2.y = L4_2
  end
  L4_2 = L2_2.timer
  if L4_2 <= 0 then
    L4_2 = L2_2.emitInterval
    L5_2 = L2_2.timer
    L4_2 = L4_2 + L5_2
    L2_2.timer = L4_2
    L4_2 = _G
    L4_2 = L4_2.ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.currentTime
      L10_2 = A0_2.dt
      L9_2 = L9_2 - L10_2
      L8_2.currentTime = L9_2
      L9_2 = L8_2.getAngleFromParent
      if L9_2 then
        L9_2 = L1_2.parent
        if L9_2 then
          L9_2 = checkStillInWorld
          L10_2 = L1_2.parent
          L10_2 = L10_2.name
          L9_2 = L9_2(L10_2)
          if not L9_2 then
            break
          end
        end
      end
      L9_2 = L8_2.currentTime
      if L9_2 <= 0 then
        L9_2 = L2_2.emittedParticles
        L9_2 = L9_2 + 1
        L2_2.emittedParticles = L9_2
        L9_2 = gamelua
        L9_2 = L9_2.blockTable
        L9_2 = L9_2.blocks
        L10_2 = L8_2.block
        L9_2 = L9_2[L10_2]
        L10_2 = gamelua
        L10_2 = L10_2.blockTable
        L10_2 = L10_2.blocks
        L11_2 = L1_2.definition
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.laserSound
        if not L10_2 then
          L10_2 = L9_2.createSound
        end
        L11_2 = playAudio
        L12_2 = L10_2
        L11_2(L12_2)
        L11_2 = createObject
        L12_2 = gamelua
        L12_2 = L12_2.blockTable
        L13_2 = L8_2.block
        L14_2 = "EMITTED_"
        L15_2 = L1_2.name
        L16_2 = ""
        L17_2 = L8_2.block
        L15_2 = L15_2 .. L16_2 .. L17_2
        L16_2 = "_"
        L17_2 = L2_2.emittedParticles
        L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
        L15_2 = L1_2.x
        L16_2 = L1_2.y
        L17_2 = L9_2.radius
        L18_2 = L9_2.width
        L19_2 = L9_2.height
        L20_2 = L9_2.scaleX
        if not L20_2 then
          L20_2 = 1.5
        end
        L21_2 = L9_2.scaleY
        if not L21_2 then
          L21_2 = 1.5
        end
        L22_2 = L9_2.vertices
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L12_2 = L2_2.birdEmitter
        if L12_2 then
          L12_2 = setObjectParameter
          L13_2 = L11_2
          L14_2 = 21
          L15_2 = 7
          L12_2(L13_2, L14_2, L15_2)
        else
          L12_2 = setObjectParameter
          L13_2 = L11_2
          L14_2 = 21
          L15_2 = 5
          L12_2(L13_2, L14_2, L15_2)
        end
        L12_2 = setObjectParameter
        L13_2 = L11_2
        L14_2 = 16
        L15_2 = 1
        L12_2(L13_2, L14_2, L15_2)
        L12_2 = gamelua
        L12_2 = L12_2.objects
        L12_2 = L12_2.world
        L12_2 = L12_2[L11_2]
        L12_2.isProjectile = true
        L13_2 = L1_2.name
        L12_2.emitterName = L13_2
        L13_2 = _G
        L13_2 = L13_2.math
        L13_2 = L13_2.abs
        L14_2 = L8_2.currentTime
        L13_2 = L13_2(L14_2)
        L12_2.startDt = L13_2
        L13_2 = L8_2.timeInterval
        L14_2 = L8_2.currentTime
        L13_2 = L13_2 + L14_2
        L8_2.currentTime = L13_2
        L13_2 = L8_2.shotTargetCoordinates
        if L13_2 == nil then
          L13_2 = _G
          L13_2 = L13_2.math
          L13_2 = L13_2.random
          L14_2 = L8_2.angle
          L14_2 = L14_2[1]
          L15_2 = L8_2.angle
          L15_2 = L15_2[2]
          L13_2 = L13_2(L14_2, L15_2)
          L14_2 = L1_2.angle
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.rad
          L16_2 = L13_2
          L15_2 = L15_2(L16_2)
          L13_2 = L15_2 + L14_2
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.cos
          L16_2 = L13_2
          L15_2 = L15_2(L16_2)
          L12_2.movementAngleX = L15_2
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.sin
          L16_2 = L13_2
          L15_2 = L15_2(L16_2)
          L12_2.movementAngleY = L15_2
          L15_2 = setRotation
          L16_2 = L12_2.name
          L17_2 = L13_2
          L15_2(L16_2, L17_2)
        else
          L13_2 = L8_2.shotTargetCoordinates
          L13_2 = L13_2[1]
          L14_2 = L1_2.x
          L13_2 = L13_2 - L14_2
          L14_2 = L8_2.shotTargetCoordinates
          L14_2 = L14_2[2]
          L15_2 = L1_2.y
          L14_2 = L14_2 - L15_2
          L15_2 = L8_2.getAngleFromParent
          if L15_2 then
            L15_2 = L1_2.parent
            if L15_2 then
              L15_2 = gamelua
              L15_2 = L15_2.getAngle
              L16_2 = L1_2.parent
              L16_2 = L16_2.name
              L15_2 = L15_2(L16_2)
              L16_2 = L8_2.shotAngle
              if not L16_2 then
                L16_2 = 0
              end
              L15_2 = L15_2 + L16_2
              L16_2 = _G
              L16_2 = L16_2.math
              L16_2 = L16_2.cos
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              L17_2 = _G
              L17_2 = L17_2.math
              L17_2 = L17_2.sin
              L18_2 = L15_2
              L17_2 = L17_2(L18_2)
              L14_2 = L17_2
              L13_2 = L16_2
            end
          end
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.atan2
          L16_2 = L14_2
          L17_2 = L13_2
          L15_2 = L15_2(L16_2, L17_2)
          L16_2 = _G
          L16_2 = L16_2.math
          L16_2 = L16_2.cos
          L17_2 = L15_2
          L16_2 = L16_2(L17_2)
          L12_2.movementAngleX = L16_2
          L16_2 = _G
          L16_2 = L16_2.math
          L16_2 = L16_2.sin
          L17_2 = L15_2
          L16_2 = L16_2(L17_2)
          L12_2.movementAngleY = L16_2
          L16_2 = setRotation
          L17_2 = L12_2.name
          L18_2 = L15_2
          L16_2(L17_2, L18_2)
        end
        L13_2 = _G
        L13_2 = L13_2.res
        L13_2 = L13_2.getSpriteBounds
        L14_2 = L12_2.sprite
        L13_2, L14_2 = L13_2(L14_2)
        L15_2 = gamelua
        L15_2 = L15_2.worldToPhysicsTransform
        L16_2 = L13_2
        L17_2 = L14_2
        L15_2 = L15_2(L16_2, L17_2)
        L16_2 = 0
        L17_2 = 0
        L18_2 = L8_2.offset
        if L18_2 then
          L18_2 = L8_2.shotTargetCoordinates
          if L18_2 then
            L18_2 = L8_2.shotTargetCoordinates
            L18_2 = L18_2[1]
            L19_2 = L1_2.x
            L18_2 = L18_2 - L19_2
            L19_2 = L8_2.shotTargetCoordinates
            L19_2 = L19_2[2]
            L20_2 = L1_2.y
            L19_2 = L19_2 - L20_2
            L20_2 = vNormalize
            L21_2 = L18_2
            L22_2 = L19_2
            L20_2, L21_2 = L20_2(L21_2, L22_2)
            L22_2 = -L21_2
            L23_2 = L8_2.offset
            L22_2 = L22_2 * L23_2
            L23_2 = L8_2.offset
            L17_2 = L20_2 * L23_2
            L16_2 = L22_2
          end
        end
        L18_2 = L1_2.x
        L18_2 = L18_2 + L16_2
        L12_2.x = L18_2
        L18_2 = L1_2.y
        L18_2 = L18_2 + L17_2
        L12_2.y = L18_2
        L18_2 = _G
        L18_2 = L18_2.math
        L18_2 = L18_2.atan2
        L19_2 = L12_2.movementAngleY
        L20_2 = L12_2.movementAngleX
        L18_2 = L18_2(L19_2, L20_2)
        L19_2 = L9_2.createSpawnOffsetX
        if L19_2 then
          L19_2 = L12_2.x
          L20_2 = L12_2.movementAngleX
          L21_2 = L9_2.createSpawnOffsetX
          L20_2 = L20_2 * L21_2
          L19_2 = L19_2 + L20_2
          L12_2.x = L19_2
          L19_2 = L12_2.y
          L20_2 = L12_2.movementAngleY
          L21_2 = L9_2.createSpawnOffsetX
          L20_2 = L20_2 * L21_2
          L19_2 = L19_2 + L20_2
          L12_2.y = L19_2
        end
        L19_2 = L9_2.createSpawnOffsetY
        if L19_2 then
          L19_2 = L12_2.x
          L20_2 = L12_2.movementAngleY
          L21_2 = L9_2.createSpawnOffsetY
          L20_2 = L20_2 * L21_2
          L19_2 = L19_2 - L20_2
          L12_2.x = L19_2
          L19_2 = L12_2.y
          L20_2 = L12_2.movementAngleX
          L21_2 = L9_2.createSpawnOffsetY
          L20_2 = L20_2 * L21_2
          L19_2 = L19_2 + L20_2
          L12_2.y = L19_2
        end
        L19_2 = gamelua
        L19_2 = L19_2.time
        L12_2.timeCreatedMilliseconds = L19_2
        L19_2 = gamelua
        L19_2 = L19_2.setPosition
        L20_2 = L12_2.name
        L21_2 = L12_2.x
        L22_2 = L12_2.y
        L19_2(L20_2, L21_2, L22_2)
        L19_2 = L8_2.shotTargetCoordinates
        if L19_2 then
          L19_2 = gamelua
          L19_2 = L19_2.blockTable
          L19_2 = L19_2.blocks
          L20_2 = L12_2.definition
          L19_2 = L19_2[L20_2]
          L19_2 = L19_2.turboLaser
          if not L19_2 then
            L19_2 = L12_2.x
            L20_2 = L8_2.shotTargetCoordinates
            L20_2 = L20_2[1]
            L19_2 = L19_2 - L20_2
            L20_2 = L12_2.y
            L21_2 = L8_2.shotTargetCoordinates
            L21_2 = L21_2[2]
            L20_2 = L20_2 - L21_2
            L21_2 = _G
            L21_2 = L21_2.math
            L21_2 = L21_2.sqrt
            L22_2 = L19_2 * L19_2
            L23_2 = L20_2 * L20_2
            L22_2 = L22_2 + L23_2
            L21_2 = L21_2(L22_2)
            L22_2 = nil
            L12_2.yellowBirdShot = true
          end
        end
        L19_2 = L8_2.startImpulse
        if L19_2 then
          L19_2 = gamelua
          L19_2 = L19_2.applyImpulse
          L20_2 = L12_2.name
          L21_2 = L12_2.movementAngleX
          L22_2 = L8_2.startImpulse
          L21_2 = L21_2 * L22_2
          L22_2 = L12_2.movementAngleY
          L23_2 = L8_2.startImpulse
          L22_2 = L22_2 * L23_2
          L23_2 = L12_2.x
          L24_2 = L12_2.y
          L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
        end
        L19_2 = L8_2.speed
        if L19_2 then
          L19_2 = _G
          L19_2 = L19_2.math
          L19_2 = L19_2.random
          L20_2 = L8_2.speed
          L20_2 = L20_2[1]
          L21_2 = L8_2.speed
          L21_2 = L21_2[2]
          L19_2 = L19_2(L20_2, L21_2)
          L12_2.speed = L19_2
          L19_2 = gamelua
          L19_2 = L19_2.addUpdateCall
          L20_2 = "moveEmittedParticle"
          L21_2 = {}
          L21_2.name = L11_2
          L22_2 = nil
          L23_2 = L11_2
          L19_2(L20_2, L21_2, L22_2, L23_2)
        end
        L19_2 = #L3_2
        if L7_2 == L19_2 then
          L19_2 = L2_2.deleteEmitterAfterEmitting
          if L19_2 then
            L19_2 = gamelua
            L19_2 = L19_2.destroyEmitter
            L20_2 = L1_2
            L19_2(L20_2)
          end
        end
        L19_2 = L9_2.createParticles
        if L19_2 then
          L19_2 = _G
          L19_2 = L19_2.ipairs
          L20_2 = L9_2.createParticles
          L19_2, L20_2, L21_2 = L19_2(L20_2)
          for L22_2, L23_2 in L19_2, L20_2, L21_2 do
            L24_2 = L12_2.x
            L25_2 = L12_2.movementAngleX
            L26_2 = L9_2.createParticlesOffset
            if not L26_2 then
              L26_2 = 0
            end
            L25_2 = L25_2 * L26_2
            L24_2 = L24_2 + L25_2
            L25_2 = L12_2.y
            L26_2 = L12_2.movementAngleY
            L27_2 = L9_2.createParticlesOffset
            if not L27_2 then
              L27_2 = 0
            end
            L26_2 = L26_2 * L27_2
            L25_2 = L25_2 + L26_2
            L26_2 = putParticles
            L27_2 = {}
            L27_2.x = L24_2
            L27_2.y = L25_2
            L27_2.angle = L18_2
            L27_2.particles = L23_2
            L27_2.useAmountInDefinition = true
            L26_2(L27_2)
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
updateEmitter = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = A0_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = gamelua
  L3_2 = L3_2.blockTable
  L3_2 = L3_2.materials
  L4_2 = L2_2.material
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2.laserCollisions
  if L4_2 then
    L4_2 = _G
    L4_2 = L4_2.ipairs
    L5_2 = A0_2.laserCollisions
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = gamelua
      L9_2 = L9_2.objects
      L9_2 = L9_2.world
      L10_2 = L8_2.name
      L9_2 = L9_2[L10_2]
      L10_2 = 0
      if L9_2 then
        L11_2 = L9_2.controllable
        if not L11_2 then
          L11_2 = A0_2.controllable
        end
        L12_2 = gamelua
        L12_2 = L12_2.blockTable
        L12_2 = L12_2.blocks
        L13_2 = L9_2.definition
        L12_2 = L12_2[L13_2]
        L13_2 = gamelua
        L13_2 = L13_2.blockTable
        L13_2 = L13_2.materials
        L14_2 = L9_2.material
        if not L14_2 then
          L14_2 = L12_2.material
        end
        L13_2 = L13_2[L14_2]
        L14_2 = L12_2.strength
        if not L14_2 then
          L14_2 = L13_2.strength
        end
        L15_2 = gamelua
        L15_2 = L15_2.blockTable
        L15_2 = L15_2.damageFactors
        L16_2 = A0_2.damageFactors
        L15_2 = L15_2[L16_2]
        L15_2 = L15_2.damageMultiplier
        L16_2 = L12_2.material
        L15_2 = L15_2[L16_2]
        if not L15_2 then
          L15_2 = 1
        end
        L16_2 = L9_2.strength
        if L16_2 <= 0 then
        else
          L16_2 = A0_2.strength
          if L16_2 <= 0 then
            return L1_2
          end
          L16_2 = L12_2.ignoreLaserCollision
          if L16_2 then
          else
            L16_2 = L2_2.laserCollisionGroupName
            if L16_2 then
              L16_2 = L12_2.collisionGroupName
              if L16_2 then
                L16_2 = L2_2.laserCollisionGroupName
                L17_2 = L12_2.collisionGroupName
                if L16_2 == L17_2 then
              end
            end
            else
              L16_2 = gamelua
              L16_2 = L16_2.blockTable
              L16_2 = L16_2.blocks
              L17_2 = A0_2.definition
              L16_2 = L16_2[L17_2]
              L16_2 = L16_2.turboLaser
              if L16_2 then
                L16_2 = L9_2.material
                if L16_2 ~= "staticGround" then
                  L16_2 = L9_2.material
                  if L16_2 ~= "staticGroundIce" then
                    L16_2 = L9_2.material
                    if L16_2 ~= "planet" then
                      L16_2 = L9_2.material
                      if L16_2 ~= "materialEggsteroid" then
                        L16_2 = L9_2.material
                        if L16_2 ~= "dropStone" then
                          goto lbl_106
                        end
                      end
                    end
                  end
                end
                return L1_2
              end
              ::lbl_106::
              L16_2 = false
              L17_2 = L13_2.bouncesLaser
              if L17_2 ~= nil then
                L16_2 = L13_2.bouncesLaser
              end
              L17_2 = L12_2.bouncesLaser
              if L17_2 ~= nil then
                L16_2 = L12_2.bouncesLaser
              end
              L17_2 = L16_2 or L17_2
              if L16_2 then
                L17_2 = L2_2.turboLaser
                L17_2 = L17_2 ~= true
              end
              L18_2 = L9_2.strength
              if L17_2 then
                L19_2 = A0_2.bounceAngle
                if not L19_2 then
                  L19_2 = playAudio
                  L20_2 = "ingame_lazerbouncing"
                  L19_2(L20_2)
                  A0_2.hasCollided = true
                  if not L1_2 then
                    L1_2 = L8_2
                  end
                  L19_2 = _G
                  L19_2 = L19_2.math
                  L19_2 = L19_2.min
                  L20_2 = L2_2.damageDoneOnBounce
                  L21_2 = A0_2.strength
                  L19_2 = L19_2(L20_2, L21_2)
                  L20_2 = A0_2.strength
                  L20_2 = L20_2 - L19_2
                  A0_2.strength = L20_2
                  L20_2 = _G
                  L20_2 = L20_2.math
                  L20_2 = L20_2.max
                  L21_2 = L19_2 * L15_2
                  L22_2 = L12_2.defence
                  if not L22_2 then
                    L22_2 = L13_2.defence
                  end
                  L21_2 = L21_2 - L22_2
                  L22_2 = 0
                  L20_2 = L20_2(L21_2, L22_2)
                  L19_2 = L20_2
                  L20_2 = L9_2.strength
                  L20_2 = L20_2 - L19_2
                  L9_2.strength = L20_2
                  L10_2 = L10_2 + L19_2
                  L20_2 = gamelua
                  L20_2 = L20_2.dotProduct
                  L21_2 = L9_2.rayCastNormalX
                  L22_2 = L9_2.rayCastNormalY
                  L23_2 = A0_2.movementAngleX
                  L24_2 = A0_2.movementAngleY
                  L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
                  L20_2 = 2 * L20_2
                  L21_2 = A0_2.movementAngleX
                  L22_2 = L9_2.rayCastNormalX
                  L22_2 = L22_2 * L20_2
                  L21_2 = L21_2 - L22_2
                  L22_2 = A0_2.movementAngleY
                  L23_2 = L9_2.rayCastNormalY
                  L23_2 = L23_2 * L20_2
                  L22_2 = L22_2 - L23_2
                  L23_2 = _G
                  L23_2 = L23_2.math
                  L23_2 = L23_2.atan2
                  L24_2 = L22_2
                  L25_2 = L21_2
                  L23_2 = L23_2(L24_2, L25_2)
                  L24_2 = _G
                  L24_2 = L24_2.math
                  L24_2 = L24_2.cos
                  L25_2 = L23_2
                  L24_2 = L24_2(L25_2)
                  A0_2.movementAngleX = L24_2
                  L24_2 = _G
                  L24_2 = L24_2.math
                  L24_2 = L24_2.sin
                  L25_2 = L23_2
                  L24_2 = L24_2(L25_2)
                  A0_2.movementAngleY = L24_2
                  A0_2.bounceAngle = L23_2
                  L24_2 = L3_2.bouncingSound
                  if L24_2 then
                    L25_2 = playAudio
                    L26_2 = L24_2
                    L25_2(L26_2)
                  end
                  L25_2 = A0_2.strength
                  L25_2 = L25_2 * L15_2
                  L26_2 = L12_2.onLaserCollision
                  if L26_2 then
                    L26_2 = gamelua
                    L26_2 = L26_2.fireAction
                    L27_2 = L12_2.onLaserCollision
                    L28_2 = {}
                    L29_2 = L9_2.name
                    L28_2.name = L29_2
                    L28_2.obj = L9_2
                    L28_2.other = A0_2
                    L28_2.force = L25_2
                    L28_2.resultDamage = L19_2
                    L29_2 = gamelua
                    L29_2 = L29_2.dotProduct
                    L30_2 = L9_2.rayCastNormalX
                    L31_2 = L9_2.rayCastNormalY
                    L32_2 = A0_2.movementAngleX
                    L33_2 = A0_2.movementAngleY
                    L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2)
                    L28_2.dot = L29_2
                    L26_2(L27_2, L28_2)
                  end
                  L26_2 = gamelua
                  L26_2 = L26_2.removeBreakableJointsFromObject
                  L27_2 = L9_2.name
                  L28_2 = 10000
                  L26_2(L27_2, L28_2)
              end
              else
                L19_2 = A0_2.bounceAngle
                if L19_2 then
                  L19_2 = A0_2.ignoreCollisions
                  if L19_2 == nil then
                    L19_2 = {}
                    A0_2.ignoreCollisions = L19_2
                  end
                  L19_2 = L9_2.name
                  A0_2[L19_2] = true
                elseif not L11_2 then
                  L19_2 = L9_2.collisionEnabled
                  if L19_2 ~= 0 then
                    L19_2 = L9_2.strength
                    L19_2 = L19_2 / L15_2
                    L20_2 = L12_2.defence
                    if not L20_2 then
                      L20_2 = L13_2.defence
                    end
                    L20_2 = L20_2 / L15_2
                    L21_2 = A0_2.strength
                    L21_2 = L21_2 * L15_2
                    L22_2 = A0_2.strength
                    L23_2 = _G
                    L23_2 = L23_2.math
                    L23_2 = L23_2.min
                    L24_2 = L19_2 + L20_2
                    L25_2 = L22_2
                    L23_2 = L23_2(L24_2, L25_2)
                    L24_2 = L23_2 - L20_2
                    L25_2 = A0_2.strength
                    L25_2 = L25_2 - L20_2
                    A0_2.strength = L25_2
                    L25_2 = L24_2 * L15_2
                    L26_2 = L9_2.strength
                    L26_2 = L26_2 - L25_2
                    L9_2.strength = L26_2
                    L26_2 = A0_2.strength
                    L26_2 = L26_2 - L24_2
                    A0_2.strength = L26_2
                    L10_2 = L10_2 + L25_2
                    L26_2 = L12_2.onLaserCollision
                    if L26_2 then
                      L26_2 = gamelua
                      L26_2 = L26_2.fireAction
                      L27_2 = L12_2.onLaserCollision
                      L28_2 = {}
                      L29_2 = L9_2.name
                      L28_2.name = L29_2
                      L28_2.obj = L9_2
                      L28_2.other = A0_2
                      L28_2.force = L21_2
                      L28_2.resultDamage = L25_2
                      L29_2 = gamelua
                      L29_2 = L29_2.dotProduct
                      L30_2 = L9_2.rayCastNormalX
                      L31_2 = L9_2.rayCastNormalY
                      L32_2 = A0_2.movementAngleX
                      L33_2 = A0_2.movementAngleY
                      L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2)
                      L28_2.dot = L29_2
                      L26_2(L27_2, L28_2)
                    end
                    L26_2 = gamelua
                    L26_2 = L26_2.removeBreakableJointsFromObject
                    L27_2 = L9_2.name
                    L28_2 = 10000
                    L26_2(L27_2, L28_2)
                    L26_2 = L3_2.collisionSound
                    if L26_2 then
                      L27_2 = playAudio
                      L28_2 = L26_2
                      L27_2(L28_2)
                    end
                    if not L1_2 then
                      L1_2 = L8_2
                    end
                  end
                end
              end
              if not L11_2 then
                L19_2 = gamelua
                L19_2 = L19_2.updateDamageSprite
                L20_2 = L9_2
                L19_2(L20_2)
                L19_2 = L12_2.scoreMultiplier
                if not L19_2 then
                  L19_2 = 1
                end
                L10_2 = L10_2 * L19_2
                if 0 < L10_2 then
                  L19_2 = _G
                  L19_2 = L19_2.math
                  L19_2 = L19_2.floor
                  L20_2 = L10_2
                  L19_2 = L19_2(L20_2)
                  L10_2 = L19_2 * 5
                  L19_2 = gamelua
                  L19_2 = L19_2.addScore
                  L20_2 = L10_2
                  L21_2 = A0_2.x
                  L22_2 = A0_2.y
                  L19_2(L20_2, L21_2, L22_2)
                  L19_2 = gamelua
                  L19_2 = L19_2.addScoreToBird
                  L20_2 = L10_2
                  L19_2(L20_2)
                end
                L19_2 = L9_2.strength
                if L19_2 <= 0 then
                  L19_2 = gamelua
                  L19_2 = L19_2.setSleeping
                  L20_2 = L9_2.name
                  L21_2 = false
                  L19_2(L20_2, L21_2)
                  L19_2 = destroyObject
                  L20_2 = L9_2.name
                  L19_2(L20_2)
                end
              end
            end
          end
        end
      end
    end
  end
  return L1_2
end

collideLaser = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  if A1_2 ~= 0 and A0_2 ~= nil then
    if A0_2 == nil then
      goto lbl_11
    end
    L2_2 = A0_2.dead
    if not L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = 1
  L3_2 = A0_2.yellowBirdShot
  if L3_2 then
    L3_2 = 0.5
    L4_2 = gamelua
    L4_2 = L4_2.getDeltaTimeMultiplier
    L4_2 = L4_2()
    if L4_2 < 1 then
      L4_2 = gamelua
      L4_2 = L4_2.getDeltaTimeMultiplier
      L4_2 = L4_2()
      L4_2 = L4_2 * L3_2
      L4_2 = L4_2 + 1
      L2_2 = L4_2 - L3_2
    end
  end
  L3_2 = A0_2
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L5_2 = L3_2.definition
  L4_2 = L4_2[L5_2]
  L5_2 = gamelua
  L5_2 = L5_2.blockTable
  L5_2 = L5_2.materials
  L6_2 = L4_2.material
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2.x
  A0_2.oldX = L6_2
  L6_2 = A0_2.y
  A0_2.oldY = L6_2
  L6_2 = A1_2
  if L2_2 ~= 0 then
    L6_2 = A1_2 / L2_2
  end
  L7_2 = A0_2.movementAngleX
  L7_2 = L6_2 * L7_2
  L8_2 = A0_2.speed
  L7_2 = L7_2 * L8_2
  L8_2 = A0_2.movementAngleY
  L8_2 = L6_2 * L8_2
  L9_2 = A0_2.speed
  L8_2 = L8_2 * L9_2
  L9_2 = A0_2.x
  L9_2 = L9_2 + L7_2
  L10_2 = A0_2.y
  L10_2 = L10_2 + L8_2
  L11_2 = _G
  L11_2 = L11_2.res
  L11_2 = L11_2.getSpriteBounds
  L12_2 = A0_2.sprite
  L11_2, L12_2 = L11_2(L12_2)
  L13_2 = gamelua
  L13_2 = L13_2.gameWorldScale
  L13_2 = L11_2 * L13_2
  L14_2 = gamelua
  L14_2 = L14_2.gameWorldScale
  L12_2 = L12_2 * L14_2
  L11_2 = L13_2
  L13_2 = gamelua
  L13_2 = L13_2.worldToPhysicsTransform
  L14_2 = L11_2
  L15_2 = L12_2
  L13_2, L14_2 = L13_2(L14_2, L15_2)
  L15_2 = gamelua
  L15_2 = L15_2.getRayCastedObjects
  L16_2 = {}
  L17_2 = -L13_2
  L17_2 = L17_2 * 0.4
  L18_2 = A0_2.movementAngleX
  L17_2 = L17_2 * L18_2
  L18_2 = A0_2.x
  L17_2 = L17_2 + L18_2
  L16_2.x1 = L17_2
  L17_2 = -L13_2
  L17_2 = L17_2 * 0.4
  L18_2 = A0_2.movementAngleY
  L17_2 = L17_2 * L18_2
  L18_2 = A0_2.y
  L17_2 = L17_2 + L18_2
  L16_2.y1 = L17_2
  L16_2.x2 = L9_2
  L16_2.y2 = L10_2
  L17_2 = A0_2.name
  L16_2.source = L17_2
  L15_2 = L15_2(L16_2)
  L16_2 = nil
  L17_2 = L15_2[1]
  if L17_2 then
    L17_2 = A0_2.ignoreCollisions
    if not L17_2 then
      L17_2 = {}
    end
    A0_2.ignoreCollisions = L17_2
    L17_2 = {}
    A0_2.laserCollisions = L17_2
    L17_2 = 1
    L18_2 = #L15_2
    L19_2 = 6
    for L20_2 = L17_2, L18_2, L19_2 do
      L21_2 = gamelua
      L21_2 = L21_2.objects
      L21_2 = L21_2.world
      L22_2 = L15_2[L20_2]
      L21_2 = L21_2[L22_2]
      L22_2 = L20_2 + 5
      L22_2 = L15_2[L22_2]
      L21_2.rayCastFraction = L22_2
      L22_2 = L20_2 + 3
      L22_2 = L15_2[L22_2]
      L21_2.rayCastNormalX = L22_2
      L22_2 = L20_2 + 4
      L22_2 = L15_2[L22_2]
      L21_2.rayCastNormalY = L22_2
      L22_2 = L20_2 + 1
      L22_2 = L15_2[L22_2]
      L21_2.rayCastContactX = L22_2
      L22_2 = L20_2 + 2
      L22_2 = L15_2[L22_2]
      L21_2.rayCastContactY = L22_2
      L22_2 = _G
      L22_2 = L22_2.table
      L22_2 = L22_2.insert
      L23_2 = A0_2.laserCollisions
      L24_2 = L21_2
      L22_2(L23_2, L24_2)
    end
    L17_2 = A0_2.laserCollisions
    L17_2 = #L17_2
    if 1 < L17_2 then
      L17_2 = _G
      L17_2 = L17_2.table
      L17_2 = L17_2.sort
      L18_2 = A0_2.laserCollisions
      
      function L19_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.rayCastFraction
        L3_3 = A1_3.rayCastFraction
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      
      L17_2(L18_2, L19_2)
    end
    L17_2 = collideLaser
    L18_2 = A0_2
    L17_2 = L17_2(L18_2)
    L16_2 = L17_2
    if L16_2 then
      L17_2 = gamelua
      L17_2 = L17_2.objects
      L17_2 = L17_2.world
      L18_2 = L16_2.name
      L17_2 = L17_2[L18_2]
      L18_2 = L17_2.controllable
      if L18_2 ~= true then
        L18_2 = L17_2.strength
        if 0 < L18_2 then
          L18_2 = L16_2.rayCastContactX
          L19_2 = L16_2.rayCastContactY
          L20_2 = A0_2.movementAngleX
          L20_2 = L20_2 * L13_2
          L20_2 = L20_2 * 0.5
          L9_2 = L18_2 + L20_2
          L20_2 = A0_2.movementAngleY
          L20_2 = L20_2 * L13_2
          L20_2 = L20_2 * 0.5
          L10_2 = L19_2 + L20_2
        end
      end
    end
  end
  A0_2.x = L9_2
  A0_2.y = L10_2
  L17_2 = setPosition
  L18_2 = A0_2.name
  L19_2 = A0_2.x
  L20_2 = A0_2.y
  L17_2(L18_2, L19_2, L20_2)
  L17_2 = A0_2.bounceAngle
  if L17_2 then
    L17_2 = A0_2.bounceAngle
    A0_2.angle = L17_2
    L17_2 = setRotation
    L18_2 = A0_2.name
    L19_2 = A0_2.angle
    L17_2(L18_2, L19_2)
    A0_2.bounceAngle = nil
  end
  if L16_2 then
    L17_2 = L4_2.particlesCollision
    if L17_2 then
      L18_2 = gamelua
      L18_2 = L18_2.putParticles
      L19_2 = {}
      L20_2 = L3_2.x
      L19_2.x = L20_2
      L20_2 = L3_2.y
      L19_2.y = L20_2
      L19_2.particles = L17_2
      L18_2(L19_2)
    end
  end
  A0_2.laserCollisions = nil
  L17_2 = A0_2.strength
  if L17_2 <= 0 then
    A0_2.dead = true
    L17_2 = gamelua
    L17_2 = L17_2.setVisible
    L18_2 = A0_2.name
    L19_2 = false
    L17_2(L18_2, L19_2)
    L17_2 = destroyObject
    L18_2 = A0_2.name
    L19_2 = true
    L17_2(L18_2, L19_2)
  end
  if L16_2 then
    L17_2 = L16_2.rayCastFraction
    if 0 < L17_2 then
      L17_2 = L16_2.rayCastFraction
      L17_2 = 1 - L17_2
      A1_2 = A1_2 * L17_2
      L17_2 = stepLaser
      L18_2 = A0_2
      L19_2 = A1_2
      L17_2(L18_2, L19_2)
    end
  end
end

stepLaser = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = gamelua
    L2_2 = L2_2.setActive
    L3_2 = L1_2.name
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = gamelua
    L2_2 = L2_2.setSleeping
    L3_2 = L1_2.name
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = L1_2.timeCreatedMilliseconds
    if L2_2 then
      L2_2 = A0_2.dt
      L3_2 = gamelua
      L3_2 = L3_2.time
      L4_2 = L1_2.timeCreatedMilliseconds
      L3_2 = L3_2 - L4_2
      L2_2 = L2_2 + L3_2
      A0_2.dt = L2_2
      L1_2.timeCreatedMilliseconds = nil
    end
    L2_2 = L1_2.startDt
    if L2_2 then
      L2_2 = A0_2.dt
      L3_2 = L1_2.startDt
      L2_2 = L2_2 + L3_2
      A0_2.dt = L2_2
      L1_2.startDt = nil
    end
    L2_2 = stepLaser
    L3_2 = L1_2
    L4_2 = A0_2.dt
    L2_2(L3_2, L4_2)
  end
end

L0_1.action = L1_1
moveEmittedParticle = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.obj
  L1_2.gravityFilterCategory = "NORMAL_OBJECT"
  L1_2 = A0_2.obj
  L1_2 = L1_2.gravityFilterCategory
  if L1_2 ~= nil then
    L1_2 = gamelua
    L1_2 = L1_2.g_gravityFiltersCategories
    L2_2 = A0_2.obj
    L2_2 = L2_2.gravityFilterCategory
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      L1_2 = gamelua
      L1_2 = L1_2.setObjectGravityCategory
      L2_2 = A0_2.obj
      L2_2 = L2_2.name
      L3_2 = gamelua
      L3_2 = L3_2.g_gravityFiltersCategories
      L4_2 = A0_2.obj
      L4_2 = L4_2.gravityFilterCategory
      L3_2 = L3_2[L4_2]
      L1_2(L2_2, L3_2)
      L1_2 = gamelua
      L1_2 = L1_2.setSleeping
      L2_2 = A0_2.obj
      L2_2 = L2_2.name
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end

L0_1.action = L1_1
removeGravityFilterCategory = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.applyImpulse
  L2_2 = A0_2.obj
  L2_2 = L2_2.name
  L3_2 = 0
  L4_2 = -100
  L5_2 = A0_2.obj
  L5_2 = L5_2.x
  L6_2 = A0_2.obj
  L6_2 = L6_2.y
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

L0_1.action = L1_1
applyImpulseUp = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L1_2 = A0_2.obj
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = L1_2.angle
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L5_2 = {}
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.cos
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.sin
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L5_2.y = L6_2
  L6_2 = vNormalize
  L7_2 = L5_2.x
  L8_2 = L5_2.y
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L5_2.y = L7_2
  L5_2.x = L6_2
  L6_2 = L2_2.spawnedObjects
  L6_2 = L6_2[1]
  L7_2 = 1
  L8_2 = 1
  L9_2 = L4_2.blocks
  L9_2 = L9_2[L6_2]
  L9_2 = L9_2.type
  if L9_2 == "box" then
    L9_2 = L4_2.blocks
    L9_2 = L9_2[L6_2]
    L7_2 = L9_2.width
    L9_2 = L4_2.blocks
    L9_2 = L9_2[L6_2]
    L8_2 = L9_2.height
  end
  L9_2 = L4_2.blocks
  L9_2 = L9_2[L6_2]
  L9_2 = L9_2.type
  if L9_2 == "circle" then
    L9_2 = L4_2.blocks
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.radius
    L7_2 = L9_2 * 2
    L9_2 = L4_2.blocks
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.radius
    L8_2 = L9_2 * 2
  end
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.floor
  L10_2 = L2_2.width
  L10_2 = L10_2 / L7_2
  L10_2 = L10_2 + 0.5
  L9_2 = L9_2(L10_2)
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = L2_2.height
  L11_2 = L11_2 / L8_2
  L11_2 = L11_2 + 0.5
  L10_2 = L10_2(L11_2)
  if L9_2 < 1 then
    L9_2 = 1
  end
  if L10_2 < 1 then
    L10_2 = 1
  end
  L11_2 = 1
  L12_2 = L10_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = L14_2 * L8_2
    L16_2 = L8_2 / 2
    L15_2 = L15_2 - L16_2
    L16_2 = L8_2 / 2
    L16_2 = L10_2 * L16_2
    L15_2 = L15_2 - L16_2
    L16_2 = 1
    L17_2 = L9_2
    L18_2 = 1
    for L19_2 = L16_2, L17_2, L18_2 do
      L20_2 = L19_2 * L7_2
      L21_2 = L7_2 / 2
      L20_2 = L20_2 - L21_2
      L21_2 = L7_2 / 2
      L21_2 = L9_2 * L21_2
      L20_2 = L20_2 - L21_2
      L21_2 = _G
      L21_2 = L21_2.math
      L21_2 = L21_2.cos
      L22_2 = L3_2 - 3.14
      L21_2 = L21_2(L22_2)
      L21_2 = L20_2 * L21_2
      L22_2 = _G
      L22_2 = L22_2.math
      L22_2 = L22_2.sin
      L23_2 = L3_2 - 3.14
      L22_2 = L22_2(L23_2)
      L22_2 = L15_2 * L22_2
      L21_2 = L21_2 - L22_2
      L22_2 = _G
      L22_2 = L22_2.math
      L22_2 = L22_2.cos
      L23_2 = L3_2 - 3.14
      L22_2 = L22_2(L23_2)
      L22_2 = L15_2 * L22_2
      L23_2 = _G
      L23_2 = L23_2.math
      L23_2 = L23_2.sin
      L24_2 = L3_2 - 3.14
      L23_2 = L23_2(L24_2)
      L23_2 = L20_2 * L23_2
      L22_2 = L22_2 + L23_2
      L23_2 = createObject
      L24_2 = L4_2
      L25_2 = L6_2
      L26_2 = L4_2.blocks
      L26_2 = L26_2[L6_2]
      L26_2 = L26_2.name
      L27_2 = L1_2.x
      L27_2 = L27_2 + L21_2
      L28_2 = L1_2.y
      L28_2 = L28_2 + L22_2
      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
      L24_2 = setRotation
      L25_2 = gamelua
      L25_2 = L25_2.objects
      L25_2 = L25_2.world
      L25_2 = L25_2[L23_2]
      L25_2 = L25_2.name
      L26_2 = L1_2.angle
      L24_2(L25_2, L26_2)
      L24_2 = gamelua
      L24_2 = L24_2.getLinearVelocity
      L25_2 = L1_2.name
      L24_2, L25_2 = L24_2(L25_2)
      L26_2 = setVelocity
      L27_2 = gamelua
      L27_2 = L27_2.objects
      L27_2 = L27_2.world
      L27_2 = L27_2[L23_2]
      L27_2 = L27_2.name
      L28_2 = L24_2
      L29_2 = L25_2
      L26_2(L27_2, L28_2, L29_2)
    end
  end
end

L0_1.action = L1_1
splitToObjects = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.putParticles
  L2_2 = {}
  L3_2 = A0_2.sx
  L2_2.x = L3_2
  L3_2 = A0_2.sy
  L2_2.y = L3_2
  L2_2.particles = "woodenBuff"
  L2_2.amount = 3
  L1_2(L2_2)
end

L0_1.action = L1_1
addParticlesToJoint = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.getAngle
    L3_2 = L1_2.name
    L2_2 = L2_2(L3_2)
    L1_2.accelerationDirection = L2_2
    L2_2 = gamelua
    L2_2 = L2_2.addUpdateCall
    L3_2 = "accelerateToObjectDirection"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.action = L1_1
startAccelerating = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = vNormalize
    L3_2 = A0_2.xPos
    L4_2 = L1_2.x
    L3_2 = L3_2 - L4_2
    L4_2 = A0_2.yPos
    L5_2 = L1_2.y
    L4_2 = L4_2 - L5_2
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L4_2 = getVelocity
    L5_2 = L1_2.name
    L4_2 = L4_2(L5_2)
    L5_2 = setVelocity
    L6_2 = A0_2.name
    L7_2 = L2_2 * L4_2
    L8_2 = L3_2 * L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.atan2
    L6_2 = L3_2
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L1_2.accelerationDirection = L5_2
    L5_2 = gamelua
    L5_2 = L5_2.addUpdateCall
    L6_2 = "accelerateToObjectDirection"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  end
end

L0_1.action = L1_1
startAcceleratingToReticle = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.accelerationDirection = nil
  end
end

L0_1.action = L1_1
stopAccelerating = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.angle
    if L2_2 then
      L2_2 = A0_2.angle
      L1_2.accelerationDirection = L2_2
    else
      L2_2 = A0_2.leiaName
      if L2_2 then
        L2_2 = checkStillInWorld
        L3_2 = A0_2.leiaName
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = gamelua
          L2_2 = L2_2.objects
          L2_2 = L2_2.world
          L3_2 = A0_2.leiaName
          L2_2 = L2_2[L3_2]
          L3_2 = gamelua
          L3_2 = L3_2.blockTable
          L3_2 = L3_2.blocks
          L4_2 = L2_2.definition
          L3_2 = L3_2[L4_2]
          L4_2 = _G
          L4_2 = L4_2.math
          L4_2 = L4_2.atan2
          L5_2 = L1_2.y
          L6_2 = L2_2.y
          L5_2 = L5_2 - L6_2
          L6_2 = L1_2.x
          L7_2 = L2_2.x
          L6_2 = L6_2 - L7_2
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = L3_2.specialtyActivationPointParticlesAngle
          L6_2 = _G
          L6_2 = L6_2.math
          L6_2 = L6_2.pi
          L5_2 = L5_2 * L6_2
          L5_2 = L5_2 / 180
          L4_2 = L4_2 + L5_2
          L1_2.accelerationDirection = L4_2
        end
      end
    end
  end
end

L0_1.action = L1_1
changeAccelerationDirection = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.ignoringGravity = true
    L2_2 = gamelua
    L2_2 = L2_2.setObjectGravityCategory
    L3_2 = A0_2.name
    L4_2 = gamelua
    L4_2 = L4_2.g_gravityFiltersCategories
    L4_2 = L4_2.IGNOREGRAVITY
    L2_2(L3_2, L4_2)
    L2_2 = setObjectParameter
    L3_2 = A0_2.name
    L4_2 = 16
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.action = L1_1
ignoreGravity = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.ignoringGravity = nil
    L2_2 = gamelua
    L2_2 = L2_2.setObjectGravityCategory
    L3_2 = A0_2.name
    L4_2 = gamelua
    L4_2 = L4_2.g_gravityFiltersCategories
    L4_2 = L4_2.NORMAL_OBJECT
    L2_2(L3_2, L4_2)
    L2_2 = setObjectParameter
    L3_2 = A0_2.name
    L4_2 = 16
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.action = L1_1
enableGravity = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L1_2.accelerationDirection
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.cos
      L4_2 = L1_2.accelerationDirection
      L3_2 = L3_2(L4_2)
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.sin
      L5_2 = L1_2.accelerationDirection
      L4_2 = L4_2(L5_2)
      L5_2 = L2_2.specialtyAccelerationNoRotation
      if not L5_2 then
        L5_2 = setRotation
        L6_2 = L1_2.name
        L7_2 = L1_2.accelerationDirection
        L5_2(L6_2, L7_2)
      end
      L5_2 = applyForce
      L6_2 = L1_2.name
      L7_2 = L2_2.specialtyAccelerationForce
      L7_2 = L3_2 * L7_2
      L8_2 = L2_2.specialtyAccelerationForce
      L8_2 = L4_2 * L8_2
      L9_2 = L1_2.x
      L10_2 = L1_2.y
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end

L0_1.action = L1_1
accelerateToObjectDirection = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2.obj
    if not L1_2 then
      goto lbl_36
    end
  end
  L1_2 = A0_2.parentName
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.parentName
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.obj
  if L2_2 then
    L1_2 = A0_2.obj
  end
  L2_2 = makeExplosion
  L3_2 = L1_2
  L4_2 = A0_2.explosionDefinition
  if not L4_2 then
    L4_2 = getObjectDefinition
    L5_2 = L1_2.name
    L4_2 = L4_2(L5_2)
  end
  L2_2(L3_2, L4_2)
  ::lbl_36::
end

L0_1.action = L1_1
actionMakeExplosion = L0_1
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
  L2_2 = makeExplosion
  L3_2 = L1_2
  L4_2 = getObjectDefinition
  L5_2 = L1_2.name
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = addEventCall
  L3_2 = "destroyBird"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end

L0_1.action = L1_1
destroyBirdWithExplosion = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = makeExplosion
    L3_2 = L1_2
    L4_2 = getObjectDefinition
    L5_2 = L1_2.name
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = destroyObject
    L3_2 = A0_2.name
    L2_2(L3_2)
  end
end

L0_1.action = L1_1
destroyObjectWithExplosion = L0_1
L0_1 = {}

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = setSprite
    L2_2 = A0_2.name
    L3_2 = A0_2.sprite
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
changeSpriteAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.isPreventBirdCollision
    L4_2 = A0_2.other
    L3_2 = L3_2(L4_2)
    if L3_2 then
      return
    end
    L3_2 = gamelua
    L3_2 = L3_2.assert
    L4_2 = L2_2.onCollisionSprite
    L4_2 = L4_2 ~= nil
    L3_2(L4_2)
    L3_2 = setSprite
    L4_2 = A0_2.name
    L5_2 = L2_2.onCollisionSprite
    L3_2(L4_2, L5_2)
  end
end

L0_1.action = L1_1
changeToOnCollisionSprite = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.isPreventBirdCollision
    L3_2 = A0_2.other
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
    L1_2.hasCollided = true
  end
end

L0_1.action = L1_1
setHasCollided = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.other
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.other
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.useSmallLavaHitSound
    if L3_2 then
      L3_2 = playAudio
      L4_2 = "lava_hit_small"
      L3_2(L4_2)
    else
      L3_2 = playAudio
      L4_2 = "lava_hit"
      L3_2(L4_2)
    end
    L3_2 = L1_2.controllable
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.birdCollision
      L4_2 = L1_2.name
      L5_2 = L1_2.name
      L6_2 = 0
      L7_2 = 0
      L8_2 = L1_2.x
      L9_2 = L1_2.y
      L10_2 = 0
      L11_2 = 0
      L12_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L1_2.specialtyTimer = 0
      L1_2.hasCollided = true
    else
      L3_2 = gamelua
      L3_2 = L3_2.blockCollision
      L4_2 = L1_2.name
      L5_2 = A0_2.name
      L6_2 = 0
      L7_2 = false
      L8_2 = 0
      L9_2 = 0
      L10_2 = L1_2.x
      L11_2 = L1_2.y
      L12_2 = 0
      L13_2 = 0
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
end

L0_1.action = L1_1
lavaCollisionAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.parent
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.parent
      L1_2 = L1_2[L2_2]
      L2_2 = 0
      L3_2 = 0
      L4_2 = A0_2.offset
      if L4_2 then
        L4_2 = A0_2.offset
        L4_2 = L4_2.x
        if not L4_2 then
          L4_2 = 0
        end
        L5_2 = A0_2.offset
        L5_2 = L5_2.y
        L3_2 = L5_2 or L3_2
        if not L5_2 then
          L3_2 = 0
        end
        L2_2 = L4_2
      end
      L4_2 = A0_2.applyParentRotation
      if L4_2 then
        L4_2 = gamelua
        L4_2 = L4_2.vec2Rotate
        L5_2 = L2_2
        L6_2 = L3_2
        L7_2 = gamelua
        L7_2 = L7_2.getAngle
        L8_2 = A0_2.parent
        L7_2, L8_2 = L7_2(L8_2)
        L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        L3_2 = L5_2
        L2_2 = L4_2
      end
      L4_2 = A0_2.applyParentAngle
      if L4_2 then
        L4_2 = setRotation
        L5_2 = A0_2.name
        L6_2 = gamelua
        L6_2 = L6_2.getAngle
        L7_2 = A0_2.parent
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      L4_2 = setPosition
      L5_2 = A0_2.name
      L6_2 = L1_2.x
      L6_2 = L6_2 + L2_2
      L7_2 = L1_2.y
      L7_2 = L7_2 + L3_2
      L4_2(L5_2, L6_2, L7_2)
  end
  else
    L1_2 = checkStillInWorld
    L2_2 = A0_2.name
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = destroyObject
      L2_2 = A0_2.name
      L1_2(L2_2)
    end
  end
end

L0_1.action = L1_1
followParent = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.other
      L3_2 = L3_2[L4_2]
      L4_2 = getVelocity
      L5_2 = A0_2.other
      L4_2 = L4_2(L5_2)
      L5_2 = L2_2.specialtyMaxVelocity
      if L4_2 > L5_2 then
        L4_2 = gamelua
        L4_2 = L4_2.getLinearVelocity
        L5_2 = A0_2.other
        L4_2, L5_2 = L4_2(L5_2)
        L6_2 = vNormalize
        L7_2 = L4_2
        L8_2 = L5_2
        L6_2, L7_2 = L6_2(L7_2, L8_2)
        L8_2 = setVelocity
        L9_2 = A0_2.other
        L10_2 = L2_2.specialtyMaxVelocity
        L10_2 = L10_2 * L4_2
        L11_2 = L2_2.specialtyMaxVelocity
        L11_2 = L11_2 * L5_2
        L8_2(L9_2, L10_2, L11_2)
      end
      L4_2 = L3_2.sandCollisionAmount
      if not L4_2 then
        L4_2 = 0
      end
      L4_2 = L4_2 + 1
      L3_2.sandCollisionAmount = L4_2
      L4_2 = gamelua
      L4_2 = L4_2.setLinearDamping
      L5_2 = L3_2.name
      L6_2 = L2_2.specialtyDragAmount
      L4_2(L5_2, L6_2)
      L4_2 = addEventCall
      L5_2 = "addCollisionParticles"
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end

L0_1.action = L1_1
sandOnCollisionEnter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L2_2 = L1_2.sandCollisionAmount
      if not L2_2 then
        L2_2 = 1
      end
      L2_2 = L2_2 - 1
      L1_2.sandCollisionAmount = L2_2
      L2_2 = L1_2.sandCollisionAmount
      if L2_2 == 0 then
        L2_2 = gamelua
        L2_2 = L2_2.setLinearDamping
        L3_2 = L1_2.name
        L4_2 = gamelua
        L4_2 = L4_2.defaultPhysicsDrag
        L2_2(L3_2, L4_2)
      end
    end
  end
end

L0_1.action = L1_1
sandOnCollisionExit = L0_1
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
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.other
      L3_2 = L3_2[L4_2]
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L4_2 = L4_2.blocks
      L5_2 = L3_2.definition
      L4_2 = L4_2[L5_2]
      L5_2 = getVelocity
      L6_2 = A0_2.other
      L5_2 = L5_2(L6_2)
      L6_2 = L4_2.isSword
      if not L6_2 then
        L6_2 = L2_2.specialtyCollisionMinimumSpeed
        if L5_2 > L6_2 then
          L6_2 = _G
          L6_2 = L6_2.math
          L6_2 = L6_2.atan2
          L7_2 = A0_2.collisionNormalY
          L8_2 = A0_2.collisionNormalX
          L6_2 = L6_2(L7_2, L8_2)
          L6_2 = L6_2 * 180
          L7_2 = _G
          L7_2 = L7_2.math
          L7_2 = L7_2.pi
          L6_2 = L6_2 / L7_2
          L7_2 = putParticles
          L8_2 = {}
          L9_2 = A0_2.collisionPointX
          L8_2.x = L9_2
          L9_2 = A0_2.collisionPointY
          L8_2.y = L9_2
          L9_2 = L2_2.specialtyCollisionParticles
          L8_2.particles = L9_2
          L9_2 = L2_2.specialtyCollisionParticlesAmount
          L8_2.amount = L9_2
          L9_2 = L2_2.specialtyCollisionParticlesSpread
          L9_2 = L9_2 * 0.5
          L9_2 = L6_2 - L9_2
          L8_2.minAngleEmitter = L9_2
          L9_2 = L2_2.specialtyCollisionParticlesSpread
          L9_2 = L9_2 * 0.5
          L9_2 = L6_2 + L9_2
          L8_2.maxAngleEmitter = L9_2
          L7_2(L8_2)
        end
      end
    end
  end
end

L0_1.action = L1_1
addCollisionParticles = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.isPreventBirdCollision
      L4_2 = A0_2.other
      L3_2 = L3_2(L4_2)
      if L3_2 then
        return
      end
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = A0_2.name
      L4_2.objectName = L5_2
      L5_2 = L2_2.particlesCollisionBuff
      if not L5_2 then
        L5_2 = L2_2.particlesCollision
      end
      L4_2.particles = L5_2
      L4_2.amount = 10
      L3_2(L4_2)
    end
  end
end

L0_1.action = L1_1
addCollisionBuff = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.min
    L4_2 = 1
    L5_2 = getVelocity
    L6_2 = L1_2.name
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if 0.1 < L3_2 then
      L4_2 = playAudio
      L5_2 = L2_2.sounds
      L5_2 = L5_2.collision
      L6_2 = L3_2 * L3_2
      L4_2(L5_2, L6_2)
    end
  end
end

L0_1.action = L1_1
playCollisionSound = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.startedFromEditor
  if not L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.setCollectibleFound
    L3_2 = gamelua
    L3_2 = L3_2.currentFolder
    L4_2 = gamelua
    L4_2 = L4_2.levelName
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.physicsToScreenTransform
  L2_2 = A0_2.obj
  L2_2 = L2_2.x
  L3_2 = A0_2.obj
  L3_2 = L3_2.y
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = gamelua
  L3_2 = L3_2.blockTable
  L3_2 = L3_2.blocks
  L4_2 = A0_2.obj
  L4_2 = L4_2.definition
  L3_2 = L3_2[L4_2]
  L4_2 = showCollectibleFoundPopup
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2.spriteWhenCollected
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.action = L1_1
collectibleDestroyed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.createObject
  L3_2 = gamelua
  L3_2 = L3_2.blockTable
  L4_2 = "BLOCK_MAP_SHINE"
  L5_2 = A0_2.name
  L6_2 = "BLOCK_MAP_SHINE"
  L5_2 = L5_2 .. L6_2
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2.shineObj = L2_2
end

L0_1.action = L1_1
mapCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.obj
  L2_2 = L2_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.startedFromEditor
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.setMapFound
    L4_2 = gamelua
    L4_2 = L4_2.currentFolder
    L2_2(L3_2, L4_2)
  end
  L2_2 = gamelua
  L2_2 = L2_2.physicsToScreenTransform
  L3_2 = A0_2.obj
  L3_2 = L3_2.x
  L4_2 = A0_2.obj
  L4_2 = L4_2.y
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = showCollectibleFoundPopup
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = A0_2.obj
  L7_2 = L7_2.sprite
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = gamelua
  L4_2 = L4_2.removeObject
  L5_2 = L1_2.shineObj
  L4_2(L5_2)
end

L0_1.action = L1_1
mapDestroyed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.createObject
  L3_2 = gamelua
  L3_2 = L3_2.blockTable
  L4_2 = "BLOCK_MAP_SHINE"
  L5_2 = A0_2.name
  L6_2 = "BLOCK_MAP_SHINE"
  L5_2 = L5_2 .. L6_2
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2.shineObj = L2_2
end

L0_1.action = L1_1
map2Created = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.obj
  L2_2 = L2_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.startedFromEditor
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.SettingsWrapper
    L3_2 = L2_2
    L2_2 = L2_2.setMap2Found
    L4_2 = gamelua
    L4_2 = L4_2.currentFolder
    L2_2(L3_2, L4_2)
  end
  L2_2 = gamelua
  L2_2 = L2_2.physicsToScreenTransform
  L3_2 = A0_2.obj
  L3_2 = L3_2.x
  L4_2 = A0_2.obj
  L4_2 = L4_2.y
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = showCollectibleFoundPopup
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = A0_2.obj
  L7_2 = L7_2.sprite
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = gamelua
  L4_2 = L4_2.removeObject
  L5_2 = L1_2.shineObj
  L4_2(L5_2)
end

L0_1.action = L1_1
map2Destroyed = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0.5
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.notify
  L3_2 = {}
  L4_2 = gamelua
  L4_2 = L4_2.events
  L4_2 = L4_2.EID_CAPTURE_SCREEN
  L3_2.id = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.gotoNextLevel
  L1_2()
end

L0_1.action = L1_1
levelSkipAction = L0_1
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
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = gamelua
  L3_2 = L3_2.isObjectAffectedByForce
  L4_2 = L1_2
  L5_2 = gamelua
  L5_2 = L5_2.blockTable
  L5_2 = L5_2.materials
  L6_2 = L2_2.material
  L5_2 = L5_2[L6_2]
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2.forceEffectDuration
    if not L4_2 then
      L4_2 = 1
    end
    L1_2.isAffectedByForceTimer = L4_2
    L4_2 = A0_2.forceEffectColor
    L1_2.forceEffectColor = L4_2
  end
end

L0_1.action = L1_1
addForceGlowAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.joints
  L3_2 = A0_2.jointName
  L2_2 = L2_2[L3_2]
  if L1_2 then
    L3_2 = L1_2.hasCollided
    if not L3_2 then
      if L2_2 then
        L3_2 = L2_2.breakable
      end
      if L3_2 or not L2_2 then
        L3_2 = gamelua
        L3_2 = L3_2.blockTable
        L3_2 = L3_2.blocks
        L4_2 = L1_2.definition
        L3_2 = L3_2[L4_2]
        L1_2.hasCollided = true
        L1_2.loopingParticle = nil
        L4_2 = addEventCall
        L5_2 = "removeBreakableJointsAction"
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
        L4_2 = addEventCall
        L5_2 = "spawnLoopingParticles"
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
        L4_2 = addEventCall
        L5_2 = "destroyObjectWithExplosion"
        L6_2 = A0_2
        L7_2 = L3_2.propellerLifetime
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = gamelua
        L4_2 = L4_2.addUpdateCall
        L5_2 = "propellerUpdateFlying"
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end

L0_1.action = L1_1
startPropeller = L0_1
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
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = A0_2.other
  L3_2 = L3_2[L4_2]
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L5_2 = L3_2.definition
  L4_2 = L4_2[L5_2]
  L5_2 = false
  L6_2 = L2_2.propellerSpecialCollisions
  L7_2 = L4_2.material
  L6_2 = L6_2[L7_2]
  if L6_2 then
    L6_2 = L1_2.propellerSpecialCollisions
    if not L6_2 then
      L6_2 = {}
      L1_2.propellerSpecialCollisions = L6_2
    end
    L6_2 = L1_2.propellerSpecialCollisions
    L7_2 = L4_2.material
    L8_2 = L1_2.propellerSpecialCollisions
    L9_2 = L4_2.material
    L8_2 = L8_2[L9_2]
    if not L8_2 then
      L8_2 = 0
    end
    L8_2 = L8_2 + 1
    L6_2[L7_2] = L8_2
    L6_2 = L1_2.propellerSpecialCollisions
    L7_2 = L4_2.material
    L6_2 = L6_2[L7_2]
    L7_2 = L2_2.propellerSpecialCollisions
    L8_2 = L4_2.material
    L7_2 = L7_2[L8_2]
    if L6_2 >= L7_2 then
      L5_2 = true
    end
    L6_2 = putParticles
    L7_2 = {}
    L8_2 = L1_2.name
    L7_2.objectName = L8_2
    L8_2 = L2_2.propellerSpecialCollisionsParticle
    L8_2 = L8_2.particles
    L7_2.particles = L8_2
    L8_2 = L2_2.propellerSpecialCollisionsParticle
    L8_2 = L8_2.amount
    L7_2.amount = L8_2
    L6_2(L7_2)
  else
    L5_2 = true
  end
  if not L5_2 then
    L6_2 = L2_2.propellerParticlesDamaged
    if L6_2 then
      L6_2 = L2_2.propellerParticlesDamaged
      L1_2.loopingParticle = L6_2
    end
  end
  if L5_2 then
    L6_2 = A0_2.force
    L7_2 = L2_2.propellerCollisionActivationForce
    if L6_2 > L7_2 then
      L6_2 = addEventCall
      L7_2 = "startPropeller"
      L8_2 = A0_2
      L6_2(L7_2, L8_2)
    end
  end
end

L0_1.action = L1_1
startPropellerOnCollision = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.propellerForce
    L4_2 = gamelua
    L4_2 = L4_2.getAngle
    L5_2 = L1_2.name
    L4_2 = L4_2(L5_2)
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.pi
    L5_2 = L5_2 * 0.5
    L4_2 = L4_2 - L5_2
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.cos
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.sin
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = applyForce
    L8_2 = L1_2.name
    L9_2 = L5_2 * L3_2
    L10_2 = L6_2 * L3_2
    L11_2 = L1_2.x
    L12_2 = L1_2.y
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end

L0_1.action = L1_1
propellerUpdateFlying = L0_1
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
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.propellerParticles
  L1_2.loopingParticle = L3_2
  L3_2 = addEventCall
  L4_2 = "spawnSwitchableLoopingParticle"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end

L0_1.action = L1_1
startPropellerParticles = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.removeBreakableJointsFromObject
    L2_2 = A0_2.name
    L3_2 = 10000
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
removeBreakableJointsAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = gamelua
    L4_2 = L4_2.objects
    L4_2 = L4_2.joints
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.end1
      L9_2 = A0_2.name
      if L8_2 ~= L9_2 then
        L8_2 = L7_2.end2
        L9_2 = A0_2.name
        if L8_2 ~= L9_2 then
          goto lbl_44
        end
      end
      L8_2 = A0_2.removeJointsType
      if not L8_2 then
        L8_2 = L2_2.removeJointsType
      end
      if L8_2 ~= nil then
        L9_2 = L7_2.type
        if L8_2 ~= L9_2 then
          goto lbl_44
        end
      end
      L9_2 = gamelua
      L9_2 = L9_2.destroyJoint
      L10_2 = L7_2.name
      L9_2(L10_2)
      ::lbl_44::
    end
  end
end

L0_1.action = L1_1
removeJointsAction = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.native_setAffectedByForceMultipliers
    L2_2 = A0_2.name
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
setAffectedByForceMultipliers = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.native_setControlled
    L2_2 = A0_2.name
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
setToControlled = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = createObject
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L5_2 = L2_2.specialtySensorName
    L6_2 = nil
    L7_2 = L1_2.x
    L8_2 = L1_2.y
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    n = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.objects
    L3_2 = L3_2.world
    L4_2 = n
    L3_2 = L3_2[L4_2]
    L4_2 = L1_2.name
    L3_2.mineParent = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.addUpdateCall
    L5_2 = "followParent"
    L6_2 = {}
    L7_2 = L3_2.name
    L6_2.name = L7_2
    L7_2 = L1_2.name
    L6_2.parent = L7_2
    L4_2(L5_2, L6_2)
  end
end

L0_1.action = L1_1
mineOnCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.objects
    L3_2 = L3_2.world
    L4_2 = A0_2.other
    L3_2 = L3_2[L4_2]
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L4_2 = L4_2.blocks
    L5_2 = L3_2.definition
    L4_2 = L4_2[L5_2]
    L5_2 = checkStillInWorld
    L6_2 = L1_2.mineParent
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = gamelua
      L5_2 = L5_2.objects
      L5_2 = L5_2.world
      L6_2 = L1_2.mineParent
      L5_2 = L5_2[L6_2]
      L6_2 = gamelua
      L6_2 = L6_2.blockTable
      L6_2 = L6_2.blocks
      L7_2 = L5_2.definition
      L6_2 = L6_2[L7_2]
      L7_2 = L1_2.activatedMine
      if not L7_2 then
        L7_2 = L3_2.controllable
        if not L7_2 then
          L7_2 = L6_2.specialtyActivatedByLevelGoals
          if L7_2 then
            L7_2 = L3_2.levelGoal
            if L7_2 then
              goto lbl_58
            end
          end
          L7_2 = L6_2.specialtyActivatingMaterials
          L8_2 = L4_2.material
          L7_2 = L7_2[L8_2]
          if not L7_2 then
            goto lbl_74
          end
        end
        ::lbl_58::
        L1_2.activatedMine = true
        L7_2 = setSprite
        L8_2 = L5_2.name
        L9_2 = L6_2.specialtySpriteActivated
        L7_2(L8_2, L9_2)
        L7_2 = addEventCall
        L8_2 = "spawnMineProjectile"
        L9_2 = {}
        L10_2 = L5_2.name
        L9_2.name = L10_2
        L10_2 = L6_2.specialtyMineTimer
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = destroyObject
        L8_2 = L1_2.name
        L9_2 = true
        L7_2(L8_2, L9_2)
      end
    end
  end
  ::lbl_74::
end

L0_1.action = L1_1
mineOnTriggerEnter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.getAngle
    L4_2 = L1_2.name
    L3_2 = L3_2(L4_2)
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.pi
    L4_2 = L4_2 * 0.5
    L3_2 = L3_2 - L4_2
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.cos
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.sin
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = createObject
    L7_2 = gamelua
    L7_2 = L7_2.blockTable
    L8_2 = L2_2.specialtyProjectileName
    L9_2 = nil
    L10_2 = L1_2.x
    L11_2 = L2_2.specialtySpawnDistance
    L11_2 = L4_2 * L11_2
    L10_2 = L10_2 + L11_2
    L11_2 = L1_2.y
    L12_2 = L2_2.specialtySpawnDistance
    L12_2 = L5_2 * L12_2
    L11_2 = L11_2 + L12_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    n = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.objects
    L6_2 = L6_2.world
    L7_2 = n
    L6_2 = L6_2[L7_2]
    L7_2 = setRotation
    L8_2 = L6_2.name
    L9_2 = gamelua
    L9_2 = L9_2.getAngle
    L10_2 = L1_2.name
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = applyImpulse
    L8_2 = L1_2.name
    L9_2 = L2_2.specialtySpawnMineImpulse
    L9_2 = L4_2 * L9_2
    L10_2 = L2_2.specialtySpawnMineImpulse
    L10_2 = L5_2 * L10_2
    L11_2 = L1_2.x
    L12_2 = L1_2.y
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = applyImpulse
    L8_2 = L6_2.name
    L9_2 = L2_2.specialtySpawnProjectileImpulse
    L9_2 = L4_2 * L9_2
    L10_2 = L2_2.specialtySpawnProjectileImpulse
    L10_2 = L5_2 * L10_2
    L11_2 = L6_2.x
    L12_2 = L6_2.y
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = setSprite
    L8_2 = L1_2.name
    L9_2 = L2_2.specialtySpriteOpened
    L7_2(L8_2, L9_2)
  end
end

L0_1.action = L1_1
spawnMineProjectile = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = addEventCall
    L4_2 = "destroyObjectWithExplosion"
    L5_2 = A0_2
    L6_2 = L2_2.specialtyLifeTime
    L3_2(L4_2, L5_2, L6_2)
  end
end

L0_1.action = L1_1
mineProjectileOnCreated = L0_1
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
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = createObject
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L5_2 = L2_2.specialtySensorName
  L6_2 = nil
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  n = L3_2
  L3_2 = addUpdateCall
  L4_2 = "followParent"
  L5_2 = {}
  L6_2 = n
  L5_2.name = L6_2
  L6_2 = A0_2.name
  L5_2.parent = L6_2
  L6_2 = L2_2.specialtySensorOffset
  L5_2.offset = L6_2
  L5_2.applyParentRotation = true
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = n
  L3_2 = L3_2[L4_2]
  L4_2 = L1_2.name
  L3_2.parentMagnetName = L4_2
end

L0_1.action = L1_1
magnetOnCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = addUpdateCall
  L2_2 = "magnetSensorUpdate"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L0_1.action = L1_1
magnetSensorOnCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = checkStillInWorld
    L4_2 = L1_2.parentMagnetName
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = L1_2.parentMagnetName
      L3_2 = L3_2[L4_2]
      L4_2 = L1_2.collideTable
      if not L4_2 then
        goto lbl_112
      end
      L4_2 = _G
      L4_2 = L4_2.ipairs
      L5_2 = L1_2.collideTable
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = gamelua
        L9_2 = L9_2.blockTable
        L9_2 = L9_2.blocks
        L10_2 = L8_2.definition
        L9_2 = L9_2[L10_2]
        L10_2 = L2_2.specialtyAffectedMaterials
        L11_2 = L9_2.material
        L10_2 = L10_2[L11_2]
        if not L10_2 then
          L10_2 = L8_2.activateMagnets
          if not L10_2 then
            goto lbl_105
          end
        end
        L10_2 = L8_2.name
        L11_2 = L3_2.name
        if L10_2 ~= L11_2 then
          L10_2 = _G
          L10_2 = L10_2.math
          L10_2 = L10_2.min
          L11_2 = L2_2.specialtyMagnetForceMax
          L12_2 = L8_2.mass
          L13_2 = L2_2.specialtyMiddleMass
          L12_2 = L12_2 / L13_2
          L13_2 = L2_2.specialtyMagnetForce
          L12_2 = L12_2 * L13_2
          L10_2 = L10_2(L11_2, L12_2)
          L11_2 = vNormalize
          L12_2 = L3_2.x
          L13_2 = L8_2.x
          L12_2 = L12_2 - L13_2
          L13_2 = L3_2.y
          L14_2 = L8_2.y
          L13_2 = L13_2 - L14_2
          L11_2, L12_2 = L11_2(L12_2, L13_2)
          L13_2 = L8_2.controllable
          if L13_2 then
            L13_2 = L2_2.specialtyBirdMultiplier
            L10_2 = L10_2 * L13_2
          end
          L13_2 = applyForce
          L14_2 = L8_2.name
          L15_2 = L11_2 * L10_2
          L16_2 = L12_2 * L10_2
          L17_2 = L8_2.x
          L18_2 = L8_2.y
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          L13_2 = applyForce
          L14_2 = L3_2.name
          L15_2 = -L11_2
          L15_2 = L15_2 * L10_2
          L16_2 = -L12_2
          L16_2 = L16_2 * L10_2
          L17_2 = L3_2.x
          L18_2 = L3_2.y
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          L13_2 = gamelua
          L13_2 = L13_2.isObjectAffectedByForce
          L14_2 = L8_2
          L15_2 = gamelua
          L15_2 = L15_2.blockTable
          L15_2 = L15_2.materials
          L16_2 = L9_2.material
          L15_2 = L15_2[L16_2]
          L13_2 = L13_2(L14_2, L15_2)
          if L13_2 then
            L13_2 = L2_2.forceEffectDuration
            L8_2.isAffectedByForceTimer = L13_2
            L13_2 = L2_2.forceEffectColor
            L8_2.forceEffectColor = L13_2
          end
        end
        ::lbl_105::
      end
    else
      L3_2 = destroyObject
      L4_2 = L1_2.name
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
  ::lbl_112::
end

L0_1.action = L1_1
magnetSensorUpdate = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.createJoint
  L2_2 = {}
  L3_2 = A0_2.name
  L4_2 = "_groundJoint"
  L3_2 = L3_2 .. L4_2
  L2_2.name = L3_2
  L2_2.type = 2
  L2_2.end1 = "ground"
  L3_2 = A0_2.name
  L2_2.end2 = L3_2
  L2_2.coordType = 2
  L2_2.x1 = 0
  L2_2.y1 = 0
  L2_2.x2 = 0
  L2_2.y2 = 0
  L2_2.collideConnected = true
  L1_2(L2_2)
end

L0_1.action = L1_1
jointToGround = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.max
    L4_2 = 0
    L5_2 = L2_2.specialtyScaleSpriteDownTime
    L6_2 = A0_2.timer
    L5_2 = L5_2 - L6_2
    L6_2 = L2_2.specialtyScaleSpriteDownTime
    L5_2 = L5_2 / L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = gamelua
    L4_2 = L4_2.setScale
    L5_2 = A0_2.name
    L6_2 = L2_2.scale
    L6_2 = L6_2 * L3_2
    L7_2 = L2_2.scale
    L7_2 = L7_2 * L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = addEventCall
    L5_2 = "scaleSpriteDown"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L0_1.action = L1_1
scaleSpriteDown = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.min
    L4_2 = 1
    L5_2 = A0_2.timer
    L6_2 = L2_2.specialtyScaleSpriteUpTime
    L5_2 = L5_2 / L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.pow
    L5_2 = L3_2
    L6_2 = L2_2.specialtyScaleSpriteUpPow
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.setScale
    L5_2 = A0_2.name
    L6_2 = L2_2.specialtyScaleSpriteUpScale
    L6_2 = L6_2 * L3_2
    L7_2 = L2_2.specialtyScaleSpriteUpScale
    L7_2 = L7_2 * L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = addEventCall
    L5_2 = "scaleSpriteUp"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L0_1.action = L1_1
scaleSpriteUp = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = L2_2.scaleSpriteUpAndDownTime
    L4_2 = 1
    L5_2 = A0_2.timer
    L6_2 = L3_2 * 0.25
    if L5_2 < L6_2 then
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.min
      L6_2 = 1
      L7_2 = A0_2.timer
      L8_2 = L3_2 * 0.25
      L7_2 = L7_2 / L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
    else
      L5_2 = A0_2.timer
      L6_2 = L3_2 * 0.75
      if L5_2 > L6_2 then
        L5_2 = _G
        L5_2 = L5_2.math
        L5_2 = L5_2.max
        L6_2 = 0
        L7_2 = L3_2 * 0.75
        L8_2 = A0_2.timer
        L7_2 = L7_2 - L8_2
        L8_2 = L3_2 * 0.25
        L7_2 = L7_2 / L8_2
        L7_2 = 1 + L7_2
        L5_2 = L5_2(L6_2, L7_2)
        L4_2 = L5_2
      end
    end
    L5_2 = gamelua
    L5_2 = L5_2.setScale
    L6_2 = A0_2.name
    L7_2 = L2_2.scaleSpriteUpAndDownScale
    L7_2 = L7_2 * L4_2
    L8_2 = L2_2.scaleSpriteUpAndDownScale
    L8_2 = L8_2 * L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = addEventCall
    L6_2 = "scaleSpriteUpAndDown"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  end
end

L0_1.action = L1_1
scaleSpriteUpAndDown = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.getAngle
    L4_2 = L1_2.name
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.dt
    L5_2 = L2_2.rotateObjectSpeed
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2 + L4_2
    L4_2 = L1_2.rotateObjectStopped
    if not L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.setRotation
      L5_2 = A0_2.name
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L4_2 = addEventCall
      L5_2 = "rotateObject"
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end

L0_1.action = L1_1
rotateObject = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.rotateObjectStopped = true
  end
end

L0_1.action = L1_1
stopRotateObject = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.atan2
  L5_2 = A3_2 - A1_2
  L6_2 = A2_2 - A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.cos
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.sin
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = L5_2 * 0.06
  L7_2 = A0_2 + L7_2
  L8_2 = L6_2 * 0.06
  A1_2 = A1_2 + L8_2
  A0_2 = L7_2
  L7_2 = gamelua
  L7_2 = L7_2.distance
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.max
  L9_2 = 1
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = L7_2 * 1
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L10_2(L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L9_2 = L7_2 / L8_2
  L10_2 = 0
  L11_2 = 1
  L12_2 = L8_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = "DARTH_SIDIOUS_LIGHTNING_FRAME_"
    L16_2 = L14_2 - 1
    L16_2 = L16_2 % 3
    L16_2 = L16_2 + 1
    L15_2 = L15_2 .. L16_2
    sprite = L15_2
    L15_2 = _G
    L15_2 = L15_2.res
    L15_2 = L15_2.getSpritePivot
    L16_2 = sprite
    L15_2, L16_2 = L15_2(L16_2)
    L17_2 = gamelua
    L17_2 = L17_2.physicsToScreenTransform
    L18_2 = L5_2 * L9_2
    L19_2 = L14_2 - 1
    L18_2 = L18_2 * L19_2
    L18_2 = A0_2 + L18_2
    L19_2 = L6_2 * L9_2
    L20_2 = L14_2 - 1
    L19_2 = L19_2 * L20_2
    L19_2 = A1_2 + L19_2
    L17_2, L18_2 = L17_2(L18_2, L19_2)
    L19_2 = gamelua
    L19_2 = L19_2.physicsToScreenTransform
    L20_2 = L5_2 * L9_2
    L21_2 = L8_2 - L14_2
    L20_2 = L20_2 * L21_2
    L20_2 = A2_2 - L20_2
    L21_2 = L6_2 * L9_2
    L22_2 = L8_2 - L14_2
    L21_2 = L21_2 * L22_2
    L21_2 = A3_2 - L21_2
    L19_2, L20_2 = L19_2(L20_2, L21_2)
    L21_2 = _G
    L21_2 = L21_2.res
    L21_2 = L21_2.getSpriteBounds
    L22_2 = sprite
    L21_2, L22_2 = L21_2(L22_2)
    L23_2 = gamelua
    L23_2 = L23_2.distance
    L24_2 = L17_2
    L25_2 = L18_2
    L26_2 = L19_2
    L27_2 = L20_2
    L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
    L23_2 = L23_2 / L21_2
    L23_2 = L23_2 * 1.4
    L24_2 = gamelua
    L24_2 = L24_2.setRenderState
    L25_2 = L17_2 / L23_2
    L26_2 = L18_2 / L23_2
    L27_2 = L23_2
    L28_2 = L23_2
    L29_2 = L4_2
    L30_2 = 0
    L31_2 = 0
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L24_2 = _G
    L24_2 = L24_2.res
    L24_2 = L24_2.drawSprite
    L25_2 = sprite
    L26_2 = L15_2
    L27_2 = L16_2
    L24_2(L25_2, L26_2, L27_2)
  end
end

drawLightning = L0_1
L0_1 = 0

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L6_2 = g_gamePaused
  if not L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.isPausePageVisible
    L6_2 = L6_2()
    if not L6_2 then
      L6_2 = L0_1
      L7_2 = gamelua
      L7_2 = L7_2.g_dt
      L6_2 = L6_2 + L7_2
      L0_1 = L6_2
    end
  end
  L6_2 = A4_2.specialtySpriteStart
  L7_2 = A4_2.specialtySpriteMiddle
  L8_2 = A4_2.specialtySpriteEnd
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.atan2
  L10_2 = A3_2 - A1_2
  L11_2 = A2_2 - A0_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.cos
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.sin
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L12_2 = _G
  L12_2 = L12_2.res
  L12_2 = L12_2.getSpritePivot
  L13_2 = L7_2
  L12_2, L13_2 = L12_2(L13_2)
  L14_2 = gamelua
  L14_2 = L14_2.worldScale
  L14_2 = L14_2 * 0.1
  L15_2 = 0.06
  L16_2 = gamelua
  L16_2 = L16_2.distance
  L17_2 = A0_2
  L18_2 = A1_2
  L19_2 = A2_2
  L20_2 = A3_2
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
  if L16_2 < 0.15 then
    return
  end
  L16_2 = L16_2 + 0.1
  L17_2 = 0
  L18_2 = 3 * L15_2
  L18_2 = L16_2 - L18_2
  while L17_2 < L18_2 do
    L19_2 = L7_2
    if L17_2 == 0 and L6_2 then
      L19_2 = L6_2
    end
    L17_2 = L17_2 + L15_2
    L20_2 = 0
    L21_2 = A5_2 or L21_2
    if not A5_2 then
      L21_2 = A4_2.specialtyTongueWobble
    end
    if L21_2 then
      L22_2 = _G
      L22_2 = L22_2.math
      L22_2 = L22_2.sin
      L23_2 = L21_2.len
      L23_2 = L17_2 * L23_2
      L24_2 = L0_1
      L25_2 = L21_2.rate
      L24_2 = L24_2 * L25_2
      L23_2 = L23_2 + L24_2
      L22_2 = L22_2(L23_2)
      L23_2 = L21_2.width
      L22_2 = L22_2 * L23_2
      L23_2 = _G
      L23_2 = L23_2.math
      L23_2 = L23_2.sin
      L24_2 = _G
      L24_2 = L24_2.math
      L24_2 = L24_2.min
      L25_2 = 1
      L26_2 = L17_2 / L18_2
      L24_2 = L24_2(L25_2, L26_2)
      L25_2 = _G
      L25_2 = L25_2.math
      L25_2 = L25_2.pi
      L24_2 = L24_2 * L25_2
      L23_2 = L23_2(L24_2)
      L20_2 = L22_2 * L23_2
    end
    L22_2 = gamelua
    L22_2 = L22_2.physicsToScreenTransform
    L23_2 = L10_2 * L17_2
    L23_2 = A0_2 + L23_2
    L24_2 = L11_2 * L20_2
    L23_2 = L23_2 - L24_2
    L24_2 = L11_2 * L17_2
    L24_2 = A1_2 + L24_2
    L25_2 = L10_2 * L20_2
    L24_2 = L24_2 + L25_2
    L22_2, L23_2 = L22_2(L23_2, L24_2)
    L24_2 = gamelua
    L24_2 = L24_2.setRenderState
    L25_2 = L22_2 / L14_2
    L26_2 = L23_2 / L14_2
    L27_2 = L14_2
    L28_2 = L14_2
    L29_2 = _G
    L29_2 = L29_2.math
    L29_2 = L29_2.pi
    L29_2 = L29_2 * 0.5
    L29_2 = L9_2 + L29_2
    L30_2 = 0
    L31_2 = 0
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L24_2 = _G
    L24_2 = L24_2.res
    L24_2 = L24_2.drawSprite
    L25_2 = L19_2
    L26_2 = L12_2
    L27_2 = L13_2
    L24_2(L25_2, L26_2, L27_2)
  end
  if L8_2 then
    L19_2 = A4_2.specialtySpriteEndOffset
    if not L19_2 then
      L19_2 = 0
    end
    L20_2 = gamelua
    L20_2 = L20_2.physicsToScreenTransform
    L21_2 = L10_2 * L16_2
    L21_2 = A0_2 + L21_2
    L22_2 = L11_2 * L19_2
    L21_2 = L21_2 - L22_2
    L22_2 = L11_2 * L16_2
    L22_2 = A1_2 + L22_2
    L23_2 = L10_2 * L19_2
    L22_2 = L22_2 + L23_2
    L20_2, L21_2 = L20_2(L21_2, L22_2)
    L22_2 = _G
    L22_2 = L22_2.res
    L22_2 = L22_2.getSpritePivot
    L23_2 = L8_2
    L22_2, L23_2 = L22_2(L23_2)
    L24_2 = gamelua
    L24_2 = L24_2.worldScale
    L24_2 = L24_2 * 0.1
    L25_2 = _G
    L25_2 = L25_2.math
    L25_2 = L25_2.min
    L26_2 = 1
    L27_2 = L16_2 * 3
    L25_2 = L25_2(L26_2, L27_2)
    L24_2 = L24_2 * L25_2
    L25_2 = gamelua
    L25_2 = L25_2.setRenderState
    L26_2 = L20_2 / L24_2
    L27_2 = L21_2 / L24_2
    L28_2 = L24_2
    L29_2 = L24_2
    L30_2 = _G
    L30_2 = L30_2.math
    L30_2 = L30_2.pi
    L30_2 = L30_2 * 0.5
    L30_2 = L9_2 + L30_2
    L31_2 = 0
    L32_2 = 0
    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L25_2 = _G
    L25_2 = L25_2.res
    L25_2 = L25_2.drawSprite
    L26_2 = L8_2
    L27_2 = L22_2
    L28_2 = L23_2
    L25_2(L26_2, L27_2, L28_2)
  end
end

drawTongue = L1_1

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = A4_2.specialtyJointSprite
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.atan2
  L7_2 = A3_2 - A1_2
  L8_2 = A2_2 - A0_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = _G
  L7_2 = L7_2.res
  L7_2 = L7_2.getSpriteBounds
  L8_2 = L5_2
  L7_2, L8_2 = L7_2(L8_2)
  L9_2 = _G
  L9_2 = L9_2.res
  L9_2 = L9_2.getSpritePivot
  L10_2 = L5_2
  L9_2, L10_2 = L9_2(L10_2)
  L11_2 = gamelua
  L11_2 = L11_2.distance
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = A3_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = L11_2 / L7_2
  L12_2 = A4_2.specialtyRopeScale
  L11_2 = L11_2 * L12_2
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.cos
  L13_2 = L6_2
  L12_2 = L12_2(L13_2)
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.sin
  L14_2 = L6_2
  L13_2 = L13_2(L14_2)
  L14_2 = gamelua
  L14_2 = L14_2.setRenderState
  L15_2 = A0_2 / L11_2
  L16_2 = A1_2 / L11_2
  L17_2 = L11_2
  L18_2 = L11_2
  L19_2 = L6_2
  L20_2 = 0
  L21_2 = 0
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L14_2 = _G
  L14_2 = L14_2.res
  L14_2 = L14_2.drawSprite
  L15_2 = L5_2
  L16_2 = L9_2
  L17_2 = L10_2
  L14_2(L15_2, L16_2, L17_2)
end

drawAfterburnerJoint = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = gamelua
  L2_2 = L2_2.worldScale
  L3_2 = A0_2.radius
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 * 0.11
  L3_2 = gamelua
  L3_2 = L3_2.physicsToScreenTransform
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = gamelua
  L5_2 = L5_2.setRenderState
  L6_2 = L3_2 / L2_2
  L7_2 = L4_2 / L2_2
  L8_2 = L2_2
  L9_2 = L2_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = _G
  L5_2 = L5_2.res
  L5_2 = L5_2.drawSprite
  L6_2 = A1_2
  L7_2 = 0
  L8_2 = 0
  L5_2(L6_2, L7_2, L8_2)
end

drawWaterBubble = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = playAudio
  L4_2 = "eggsteroid_destroyed"
  L3_2(L4_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "collectiblePopup"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "collectibleGlow"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.glow = L4_2
  L4_2 = L3_2.glow
  L5_2 = L4_2
  L4_2 = L4_2.setImage
  L6_2 = "EAGLE_SHINE_1"
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.addChild
  L6_2 = L3_2.glow
  L4_2(L5_2, L6_2)
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "collectibleItem"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.pack = L4_2
  L4_2 = L3_2.pack
  L5_2 = L4_2
  L4_2 = L4_2.setImage
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.addChild
  L6_2 = L3_2.pack
  L4_2(L5_2, L6_2)
  L3_2.screenStartX = A0_2
  L3_2.screenStartY = A1_2
  L4_2 = L3_2.pack
  L4_2.x = A0_2
  L4_2 = L3_2.pack
  L4_2.y = A1_2
  L4_2 = L3_2.glow
  L4_2.x = A0_2
  L4_2 = L3_2.glow
  L4_2.y = A1_2
  L4_2 = L3_2.glow
  L4_2.scaleX = 0
  L4_2 = L3_2.pack
  L4_2.scaleX = 0
  L4_2 = L3_2.glow
  L4_2.scaleY = 0
  L4_2 = L3_2.pack
  L4_2.scaleY = 0
  L4_2 = gamelua
  L4_2 = L4_2.setPhysicsEnabled
  L5_2 = false
  L4_2(L5_2)
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3
    L3_3 = A0_3.elapsed
    if not L3_3 then
      A0_3.elapsed = 0
    end
    L3_3 = A0_3.elapsed
    L3_3 = L3_3 + A1_3
    A0_3.elapsed = L3_3
  end
  
  L3_2.update = L4_2
  
  function L4_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3
    L4_3 = -1
    return L4_3
  end
  
  L3_2.onPointerEvent = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3
    L3_3 = -1
    return L3_3
  end
  
  L3_2.onKeyEvent = L4_2
  L4_2 = 3
  
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L3_3 = 0.75
    L4_3 = gamelua
    L4_3 = L4_3.drawRect
    L5_3 = 0
    L6_3 = 0
    L7_3 = 0
    L8_3 = _G
    L8_3 = L8_3.math
    L8_3 = L8_3.min
    L9_3 = L3_2
    L9_3 = L9_3.elapsed
    L10_3 = L3_3
    L8_3 = L8_3(L9_3, L10_3)
    L9_3 = 0
    L10_3 = 0
    L11_3 = gamelua
    L11_3 = L11_3.screenWidth
    L12_3 = gamelua
    L12_3 = L12_3.screenHeight
    L13_3 = false
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L4_3 = gamelua
    L4_3 = L4_3.ui
    L4_3 = L4_3.Frame
    L4_3 = L4_3.draw
    L5_3 = L3_2
    L6_3 = A1_3
    L7_3 = A2_3
    L4_3(L5_3, L6_3, L7_3)
  end
  
  L3_2.draw = L5_2
  L5_2 = 0.5
  L6_2 = gamelua
  L6_2 = L6_2.processManager
  L7_2 = L6_2
  L6_2 = L6_2.insertAction
  L8_2 = {}
  L8_2.name = "collectiblePopup"
  L8_2.finished = false
  L8_2.item = nil
  L8_2.start = 0
  L8_2.duration = L5_2
  L9_2 = {}
  L8_2.meta = L9_2
  
  function L9_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L5_3 = gamelua
    L5_3 = L5_3.screenWidth
    L5_3 = L5_3 * 0.5
    L6_3 = L3_2
    L6_3 = L6_3.screenStartX
    L5_3 = L5_3 - L6_3
    L6_3 = gamelua
    L6_3 = L6_3.screenHeight
    L6_3 = L6_3 * 0.5
    L7_3 = L3_2
    L7_3 = L7_3.screenStartY
    L6_3 = L6_3 - L7_3
    L7_3 = A1_3 / A2_3
    L8_3 = 3.14159
    L9_3 = _G
    L9_3 = L9_3.math
    L9_3 = L9_3.sin
    L10_3 = L8_3 * L7_3
    L10_3 = L10_3 * 0.5
    L9_3 = L9_3(L10_3)
    L7_3 = L9_3
    L9_3 = A0_2
    L10_3 = L5_3 * L7_3
    L9_3 = L9_3 + L10_3
    L10_3 = A1_2
    L11_3 = L6_3 * L7_3
    L10_3 = L10_3 + L11_3
    L11_3 = L3_2
    L11_3 = L11_3.glow
    L11_3.x = L9_3
    L11_3 = L3_2
    L11_3 = L11_3.glow
    L11_3.y = L10_3
    L11_3 = L3_2
    L11_3 = L11_3.glow
    L12_3 = L5_2
    L12_3 = A1_3 / L12_3
    L11_3.scaleX = L12_3
    L11_3 = L3_2
    L11_3 = L11_3.glow
    L12_3 = L5_2
    L12_3 = A1_3 / L12_3
    L11_3.scaleY = L12_3
    L11_3 = L3_2
    L11_3 = L11_3.pack
    L11_3.x = L9_3
    L11_3 = L3_2
    L11_3 = L11_3.pack
    L11_3.y = L10_3
    L11_3 = L3_2
    L11_3 = L11_3.pack
    L12_3 = L5_2
    L12_3 = A1_3 / L12_3
    L11_3.scaleX = L12_3
    L11_3 = L3_2
    L11_3 = L11_3.pack
    L12_3 = L5_2
    L12_3 = A1_3 / L12_3
    L11_3.scaleY = L12_3
    L11_3 = L3_2
    L11_3 = L11_3.glow
    L12_3 = L3_2
    L12_3 = L12_3.glow
    L12_3 = L12_3.angle
    L13_3 = L4_2
    L13_3 = A3_3 * L13_3
    L12_3 = L12_3 + L13_3
    L11_3.angle = L12_3
  end
  
  L8_2.action = L9_2
  
  function L9_2()
    local L0_3, L1_3
  end
  
  L8_2.onFinish = L9_2
  L6_2(L7_2, L8_2)
  L6_2 = 0.6
  L7_2 = gamelua
  L7_2 = L7_2.processManager
  L8_2 = L7_2
  L7_2 = L7_2.insertAction
  L9_2 = {}
  L9_2.name = "collectiblePopupStay"
  L9_2.finished = false
  L9_2.item = nil
  L9_2.start = L5_2
  L9_2.duration = L6_2
  L10_2 = {}
  L9_2.meta = L10_2
  
  function L10_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3
    L5_3 = L3_2
    L5_3 = L5_3.glow
    L6_3 = L3_2
    L6_3 = L6_3.glow
    L6_3 = L6_3.angle
    L7_3 = L4_2
    L7_3 = A3_3 * L7_3
    L6_3 = L6_3 + L7_3
    L5_3.angle = L6_3
  end
  
  L9_2.action = L10_2
  
  function L10_2()
    local L0_3, L1_3
  end
  
  L9_2.onFinish = L10_2
  L7_2(L8_2, L9_2)
  L7_2 = 0.5
  L8_2 = gamelua
  L8_2 = L8_2.processManager
  L9_2 = L8_2
  L8_2 = L8_2.insertAction
  L10_2 = {}
  L10_2.name = "collectiblePopupDisappear"
  L10_2.finished = false
  L10_2.item = nil
  L11_2 = L5_2 + L6_2
  L10_2.start = L11_2
  L10_2.duration = L7_2
  L11_2 = {}
  L10_2.meta = L11_2
  
  function L11_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L5_3 = 3.14159
    L6_3 = A1_3 / A2_3
    L7_3 = _G
    L7_3 = L7_3.math
    L7_3 = L7_3.sin
    L8_3 = L5_3 * L6_3
    L8_3 = L8_3 * 0.5
    L8_3 = L5_3 - L8_3
    L7_3 = L7_3(L8_3)
    L6_3 = L7_3
    L7_3 = 1 - L6_3
    L8_3 = L3_2
    L8_3 = L8_3.glow
    L8_3.scaleX = L7_3
    L8_3 = L3_2
    L8_3 = L8_3.glow
    L8_3.scaleY = L7_3
    L8_3 = L3_2
    L8_3 = L8_3.pack
    L8_3.scaleX = L7_3
    L8_3 = L3_2
    L8_3 = L8_3.pack
    L8_3.scaleY = L7_3
    L8_3 = L3_2
    L8_3 = L8_3.glow
    L9_3 = L3_2
    L9_3 = L9_3.glow
    L9_3 = L9_3.angle
    L10_3 = L4_2
    L10_3 = A3_3 * L10_3
    L9_3 = L9_3 + L10_3
    L8_3.angle = L9_3
  end
  
  L10_2.action = L11_2
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = gamelua
    L0_3 = L0_3.checkSetPhysicsState
    L1_3 = true
    L0_3(L1_3)
    L0_3 = gamelua
    L0_3 = L0_3.eventManager
    L1_3 = L0_3
    L0_3 = L0_3.notify
    L2_3 = {}
    L3_3 = gamelua
    L3_3 = L3_3.events
    L3_3 = L3_3.EID_POP_FRAME
    L2_3.id = L3_3
    L2_3.target = "collectiblePopup"
    L0_3(L1_3, L2_3)
    L0_3 = gamelua
    L0_3 = L0_3.checkAllCollectibleItems
    L0_3()
  end
  
  L10_2.onFinish = L11_2
  L8_2(L9_2, L10_2)
  L8_2 = gamelua
  L8_2 = L8_2.eventManager
  L9_2 = L8_2
  L8_2 = L8_2.notify
  L10_2 = {}
  L11_2 = gamelua
  L11_2 = L11_2.events
  L11_2 = L11_2.EID_PUSH_FRAME
  L10_2.id = L11_2
  L10_2.target = L3_2
  L8_2(L9_2, L10_2)
  L8_2 = gamelua
  L8_2 = L8_2.processManager
  L9_2 = L8_2
  L8_2 = L8_2.start
  L8_2(L9_2)
end

showCollectibleFoundPopup = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = print
  L3_2 = "Switched to "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.moveToBirdCamera
  L3_2 = 250
  L2_2(L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = gamelua
  L3_2 = L3_2.Characters
  L3_2 = L3_2.list
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.def
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.sounds
  L2_2 = L2_2.characterSwitch
  if not L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = gamelua
    L3_2 = L3_2.Characters
    L3_2 = L3_2.list
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.def
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.sounds
    L2_2 = L2_2.idle
    if not L2_2 then
      goto lbl_63
    end
  end
  L2_2 = playAudio
  L3_2 = gamelua
  L3_2 = L3_2.blockTable
  L3_2 = L3_2.blocks
  L4_2 = gamelua
  L4_2 = L4_2.Characters
  L4_2 = L4_2.list
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.def
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.sounds
  L3_2 = L3_2.characterSwitch
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.blockTable
    L3_2 = L3_2.blocks
    L4_2 = gamelua
    L4_2 = L4_2.Characters
    L4_2 = L4_2.list
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.def
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.sounds
    L3_2 = L3_2.idle
  end
  L2_2(L3_2)
  goto lbl_66
  ::lbl_63::
  L2_2 = playAudio
  L3_2 = "ingame_lazerbouncing_1"
  L2_2(L3_2)
  ::lbl_66::
  L2_2 = gamelua
  L2_2 = L2_2.physicsToWorldTransform
  L3_2 = gamelua
  L3_2 = L3_2.levelStartPosition
  L3_2 = L3_2.x
  L4_2 = gamelua
  L4_2 = L4_2.levelStartPosition
  L4_2 = L4_2.y
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = gamelua
  L4_2 = L4_2.isSandboxBird
  L5_2 = gamelua
  L5_2 = L5_2.g_switchedCharacter
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = playAudio
    L5_2 = "deathstar_platform_explosion"
    L4_2(L5_2)
    L4_2 = gamelua
    L4_2 = L4_2.SettingsWrapper
    L5_2 = L4_2
    L4_2 = L4_2.isDarkSide
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.putParticles
      L5_2 = {}
      L5_2.worldX = L2_2
      L5_2.worldY = L3_2
      L5_2.particles = "characterSwitchEffectDestinyDark1"
      L5_2.useAmountInDefinition = true
      L4_2(L5_2)
      L4_2 = gamelua
      L4_2 = L4_2.putParticles
      L5_2 = {}
      L5_2.worldX = L2_2
      L5_2.worldY = L3_2
      L5_2.particles = "characterSwitchEffectDestinyDark2"
      L5_2.useAmountInDefinition = true
      L4_2(L5_2)
      L4_2 = gamelua
      L4_2 = L4_2.putParticles
      L5_2 = {}
      L5_2.worldX = L2_2
      L5_2.worldY = L3_2
      L5_2.particles = "characterSwitchEffectDestinyDark3"
      L5_2.useAmountInDefinition = true
      L4_2(L5_2)
    else
      L4_2 = gamelua
      L4_2 = L4_2.putParticles
      L5_2 = {}
      L5_2.worldX = L2_2
      L5_2.worldY = L3_2
      L5_2.particles = "characterSwitchEffectDestinyLight1"
      L5_2.useAmountInDefinition = true
      L4_2(L5_2)
      L4_2 = gamelua
      L4_2 = L4_2.putParticles
      L5_2 = {}
      L5_2.worldX = L2_2
      L5_2.worldY = L3_2
      L5_2.particles = "characterSwitchEffectDestinyLight2"
      L5_2.useAmountInDefinition = true
      L4_2(L5_2)
      L4_2 = gamelua
      L4_2 = L4_2.putParticles
      L5_2 = {}
      L5_2.worldX = L2_2
      L5_2.worldY = L3_2
      L5_2.particles = "characterSwitchEffectDestinyLight3"
      L5_2.useAmountInDefinition = true
      L4_2(L5_2)
    end
  else
    L4_2 = gamelua
    L4_2 = L4_2.putParticles
    L5_2 = {}
    L5_2.worldX = L2_2
    L5_2.worldY = L3_2
    L5_2.particles = "characterSwitchEffect1"
    L5_2.amount = 30
    L4_2(L5_2)
    L4_2 = gamelua
    L4_2 = L4_2.putParticles
    L5_2 = {}
    L5_2.worldX = L2_2
    L5_2.worldY = L3_2
    L5_2.particles = "characterSwitchEffect2"
    L5_2.amount = 10
    L4_2(L5_2)
  end
  if A1_2 then
    L4_2 = gamelua
    L4_2 = L4_2.isSandboxBird
    L5_2 = gamelua
    L5_2 = L5_2.g_switchedCharacter
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.physicsToScreenTransform
      L5_2 = gamelua
      L5_2 = L5_2.levelStartPosition
      L5_2 = L5_2.x
      L6_2 = gamelua
      L6_2 = L6_2.levelStartPosition
      L6_2 = L6_2.y
      L4_2, L5_2 = L4_2(L5_2, L6_2)
      L6_2 = A1_2.x
      L7_2 = A1_2.y
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.atan2
      L9_2 = L5_2 - L7_2
      L10_2 = L4_2 - L6_2
      L8_2 = L8_2(L9_2, L10_2)
      L8_2 = L8_2 * 180
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.pi
      L8_2 = L8_2 / L9_2
      L9_2 = gamelua
      L9_2 = L9_2.putMenuParticles
      L10_2 = {}
      L10_2.x = L6_2
      L10_2.y = L7_2
      L11_2 = "characterSwitchSprite_"
      L12_2 = A0_2
      L11_2 = L11_2 .. L12_2
      L10_2.particles = L11_2
      L10_2.amount = 1
      L10_2.minAngleEmitter = L8_2
      L10_2.maxAngleEmitter = L8_2
      L9_2(L10_2)
    end
  end
end

characterSwitchedEffect = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L1_2 = L1_2[A0_2]
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = L1_2.isFrozen
  if L3_2 then
    return
  else
    L1_2.isFrozen = true
  end
  L3_2 = L1_2.isBurning
  if L3_2 then
    L3_2 = L1_2.burningParticles
    if L3_2 then
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = L1_2.name
      L4_2.objectName = L5_2
      L4_2.particles = "smokeBuff"
      L4_2.amount = 1
      L3_2(L4_2)
    end
    L1_2.burningParticles = nil
    return
  end
  L3_2 = L1_2.levelGoal
  if L3_2 then
    L3_2 = L2_2.spriteFreeze
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.freezePig
      L4_2 = L1_2.name
      L5_2 = true
      L3_2(L4_2, L5_2)
      return
    end
  end
  L3_2 = L1_2.levelGoal
  if L3_2 then
    L3_2 = L2_2.materialWhenFrozen
    if L3_2 then
      L3_2 = L2_2.levelGoalAliveWhenFrozen
      if not L3_2 then
        L3_2 = addEventCall
        L4_2 = "destroy"
        L5_2 = {}
        L6_2 = L1_2.name
        L5_2.name = L6_2
        L6_2 = 1.5
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
  L3_2 = L2_2.destroyWhenFrozen
  if L3_2 then
    L3_2 = addEventCall
    L4_2 = "destroy"
    L5_2 = {}
    L6_2 = L1_2.name
    L5_2.name = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = L2_2.definitionFrozen
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.blockTable
    L3_2 = L3_2.blocks
    L4_2 = L2_2.definitionFrozen
    L3_2 = L3_2[L4_2]
    L4_2 = assert
    L5_2 = L3_2 ~= nil
    L6_2 = "No frozen object for "
    L7_2 = L2_2.definitionFrozen
    L6_2 = L6_2 .. L7_2
    L4_2(L5_2, L6_2)
    L4_2 = L1_2.strength
    L5_2 = L2_2.strength
    L4_2 = L4_2 / L5_2
    L5_2 = L3_2.strength
    L5_2 = L4_2 * L5_2
    L1_2.strength = L5_2
    L5_2 = L2_2.definitionFrozen
    L1_2.definition = L5_2
    L5_2 = L3_2.sprite
    L1_2.sprite = L5_2
    L5_2 = L3_2.material
    L1_2.material = L5_2
    L5_2 = L3_2.scale
    if not L5_2 then
      L5_2 = 1
    end
    L1_2.scale = L5_2
    L5_2 = L3_2.defence
    if not L5_2 then
      L5_2 = gamelua
      L5_2 = L5_2.blockTable
      L5_2 = L5_2.materials
      L6_2 = L3_2.material
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.defence
    end
    L1_2.defence = L5_2
    L5_2 = gamelua
    L5_2 = L5_2.setSprite
    L6_2 = L1_2.name
    L7_2 = L1_2.sprite
    L5_2(L6_2, L7_2)
    L5_2 = gamelua
    L5_2 = L5_2.setScale
    L6_2 = L1_2.name
    L7_2 = L1_2.scale
    L8_2 = L1_2.scale
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = gamelua
    L5_2 = L5_2.native_setWaterDensity
    L6_2 = L1_2.name
    L7_2 = gamelua
    L7_2 = L7_2.getWaterDensity
    L8_2 = L3_2
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = gamelua
    L5_2 = L5_2.setMaterial
    L6_2 = L1_2.name
    L7_2 = "light"
    L5_2(L6_2, L7_2)
  end
  L3_2 = L2_2.materialWhenFrozen
  if L3_2 then
    L3_2 = L2_2.materialWhenFrozen
    L1_2.material = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.blockTable
    L3_2 = L3_2.materials
    L4_2 = L1_2.material
    L3_2 = L3_2[L4_2]
    L4_2 = L3_2.densityInWater
    if L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.native_setWaterDensity
      L5_2 = L1_2.name
      L6_2 = gamelua
      L6_2 = L6_2.blockTable
      L6_2 = L6_2.materials
      L7_2 = L1_2.material
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.densityInWater
      L4_2(L5_2, L6_2)
    end
    L4_2 = L3_2.defence
    if L4_2 then
      L4_2 = L3_2.defence
      L1_2.defence = L4_2
    end
    L4_2 = L3_2.friction
    if L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.setFriction
      L5_2 = L1_2.name
      L6_2 = L3_2.friction
      L4_2(L5_2, L6_2)
    end
    L4_2 = L3_2.restitution
    if L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.setRestitution
      L5_2 = L1_2.name
      L6_2 = L3_2.restitution
      L4_2(L5_2, L6_2)
    end
    L4_2 = gamelua
    L4_2 = L4_2.setMaterial
    L5_2 = L1_2.name
    L6_2 = "light"
    L4_2(L5_2, L6_2)
  end
  L3_2 = L2_2.definitionFrozen
  if not L3_2 then
    L3_2 = L2_2.materialWhenFrozen
    if not L3_2 then
      goto lbl_207
    end
  end
  L3_2 = putParticles
  L4_2 = {}
  L5_2 = L1_2.name
  L4_2.objectName = L5_2
  L4_2.particles = "iceExplosion"
  L4_2.amount = 1
  L3_2(L4_2)
  L3_2 = addEventCall
  L4_2 = "addIcicles"
  L5_2 = {}
  L6_2 = L1_2.name
  L5_2.name = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = playAudio
  L4_2 = "block_freeze"
  L3_2(L4_2)
  ::lbl_207::
end

freezeObject = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.width
    if not L3_2 then
      L3_2 = L2_2.radius
      if not L3_2 then
        L3_2 = L2_2.scale
        L3_2 = L3_2 * 2
      end
    end
    L4_2 = L2_2.height
    if not L4_2 then
      L4_2 = L2_2.radius
      if not L4_2 then
        L4_2 = L2_2.scale
        L4_2 = L4_2 * 2
      end
    end
    L5_2 = {}
    L6_2 = 0
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.pi
    L7_2 = L7_2 * 0.5
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.pi
    L9_2 = _G
    L9_2 = L9_2.math
    L9_2 = L9_2.pi
    L9_2 = L9_2 * 1.5
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.ceil
    L7_2 = L3_2 * 8
    L7_2 = L7_2 * L4_2
    L7_2 = L7_2 * 8
    L8_2 = A0_2.blockAmountMultiplier
    if not L8_2 then
      L8_2 = 1
    end
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2(L7_2)
    L7_2 = 1
    L8_2 = L6_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = createObject
      L12_2 = gamelua
      L12_2 = L12_2.blockTable
      L13_2 = A0_2.blockDefinition
      if not L13_2 then
        L13_2 = "ICICLE"
      end
      L14_2 = nil
      L15_2 = L1_2.x
      L16_2 = L1_2.y
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L12_2 = addUpdateCall
      L13_2 = "stickToParent"
      L14_2 = {}
      L14_2.name = L11_2
      L15_2 = L1_2.name
      L14_2.parent = L15_2
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.random
      L15_2 = L15_2()
      L15_2 = L15_2 - 0.5
      L15_2 = L15_2 * L3_2
      L16_2 = L2_2.icicleAreaMultiplayer
      if not L16_2 then
        L16_2 = 1
      end
      L15_2 = L15_2 * L16_2
      L14_2.offsetX = L15_2
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.random
      L15_2 = L15_2()
      L15_2 = L15_2 - 0.5
      L15_2 = L15_2 * L4_2
      L16_2 = L2_2.icicleAreaMultiplayer
      if not L16_2 then
        L16_2 = 1
      end
      L15_2 = L15_2 * L16_2
      L14_2.offsetY = L15_2
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.random
      L16_2 = #L5_2
      L15_2 = L15_2(L16_2)
      L15_2 = L5_2[L15_2]
      L14_2.angle = L15_2
      L12_2(L13_2, L14_2)
    end
  end
end

L1_1.action = L2_1
addIcicles = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.stickyBlocks
    if not L3_2 then
      L3_2 = L2_2.stickyBlocks
    end
    if L3_2 == nil then
      return
    end
    L4_2 = _G
    L4_2 = L4_2.ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = createObject
      L10_2 = gamelua
      L10_2 = L10_2.blockTable
      L11_2 = L8_2.name
      L12_2 = nil
      L13_2 = L1_2.x
      L14_2 = L1_2.y
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L10_2 = gamelua
      L10_2 = L10_2.objects
      L10_2 = L10_2.world
      L10_2 = L10_2[L9_2]
      L11_2 = L1_2.name
      L10_2.stickyParent = L11_2
      L10_2 = L1_2.stickyChildren
      if not L10_2 then
        L10_2 = {}
      end
      L1_2.stickyChildren = L10_2
      L10_2 = L1_2.stickyChildren
      L10_2[L9_2] = true
      L10_2 = addUpdateCall
      L11_2 = "stickToParent"
      L12_2 = {}
      L12_2.name = L9_2
      L13_2 = L1_2.name
      L12_2.parent = L13_2
      L13_2 = L8_2.offsetX
      L12_2.offsetX = L13_2
      L13_2 = L8_2.offsetY
      L12_2.offsetY = L13_2
      L13_2 = L8_2.angle
      L12_2.angle = L13_2
      L13_2 = L8_2.setAngleAtStart
      L12_2.setAngleAtStart = L13_2
      L10_2(L11_2, L12_2)
    end
  end
end

L1_1.action = L2_1
createStickyBlocks = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L1_2.stickyChildren
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.pairs
      L4_2 = L1_2.stickyChildren
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = gamelua
        L8_2 = L8_2.objects
        L8_2 = L8_2.world
        L8_2 = L8_2[L6_2]
        L9_2 = gamelua
        L9_2 = L9_2.blockTable
        L9_2 = L9_2.blocks
        L10_2 = L8_2.definition
        L9_2 = L9_2[L10_2]
        L10_2 = L9_2.stickyParticlesDestroyed
        if L10_2 then
          L10_2 = _G
          L10_2 = L10_2.ipairs
          L11_2 = L9_2.stickyParticlesDestroyed
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          for L13_2, L14_2 in L10_2, L11_2, L12_2 do
            L15_2 = putParticles
            L16_2 = {}
            L16_2.objectName = L6_2
            L16_2.particles = L14_2
            L16_2.useAmountInDefinition = true
            L15_2(L16_2)
          end
        end
        L10_2 = gamelua
        L10_2 = L10_2.fireAction
        L11_2 = "destroy"
        L12_2 = {}
        L12_2.name = L6_2
        L10_2(L11_2, L12_2)
      end
    end
    L1_2.stickyChildren = nil
  end
end

L1_1.action = L2_1
removeStickyBlocks = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.parent
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.parent
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.getAngle
      L3_2 = A0_2.parent
      L2_2 = L2_2(L3_2)
      L3_2 = gamelua
      L3_2 = L3_2.vec2Rotate
      L4_2 = A0_2.offsetX
      L5_2 = A0_2.offsetY
      L6_2 = L2_2
      L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
      L5_2 = A0_2.angle
      if L5_2 then
        L5_2 = setRotation
        L6_2 = A0_2.name
        L7_2 = A0_2.angle
        L7_2 = L2_2 + L7_2
        L5_2(L6_2, L7_2)
      end
      L5_2 = A0_2.setAngleAtStart
      if L5_2 then
        L5_2 = A0_2.stickyStartAngleSet
        if not L5_2 then
          A0_2.stickyStartAngleSet = true
          L5_2 = setRotation
          L6_2 = A0_2.name
          L7_2 = L2_2
          L5_2(L6_2, L7_2)
        end
      end
      L5_2 = setPosition
      L6_2 = A0_2.name
      L7_2 = L1_2.x
      L7_2 = L7_2 + L3_2
      L8_2 = L1_2.y
      L8_2 = L8_2 + L4_2
      L5_2(L6_2, L7_2, L8_2)
  end
  else
    L1_2 = checkStillInWorld
    L2_2 = A0_2.name
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = destroyObject
      L2_2 = A0_2.name
      L1_2(L2_2)
    end
  end
end

L1_1.action = L2_1
stickToParent = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = setSprite
    L4_2 = A0_2.name
    L5_2 = L2_2.specialtyRandomSprites
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.random
    L7_2 = L2_2.specialtyRandomSprites
    L7_2 = #L7_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2[L6_2]
    L3_2(L4_2, L5_2)
  end
end

L1_1.action = L2_1
changeToRandomSprite = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = assert
    L4_2 = L2_2.damageStates
    L4_2 = L4_2 ~= nil
    L5_2 = "damageStates is nil for "
    L6_2 = A0_2.name
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.floor
    L4_2 = L1_2.strength
    L5_2 = L2_2.strength
    L4_2 = L4_2 / L5_2
    L4_2 = L4_2 * 100
    L3_2 = L3_2(L4_2)
    L4_2 = L1_2.lastDamageStateChange
    if not L4_2 then
      L4_2 = 101
    end
    L1_2.lastDamageStateChange = L4_2
    L4_2 = _G
    L4_2 = L4_2.ipairs
    L5_2 = L2_2.damageStates
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.strengthPercent
      L10_2 = L1_2.lastDamageStateChange
      if L9_2 < L10_2 then
        L9_2 = L8_2.strengthPercent
        if L3_2 <= L9_2 then
          L9_2 = L8_2.strengthPercent
          L1_2.lastDamageStateChange = L9_2
          L9_2 = gamelua
          L9_2 = L9_2.actions
          L9_2 = L9_2.handleStateChange
          L10_2 = L1_2.name
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
        end
      end
    end
  end
end

L1_1.action = L2_1
updateDamageState = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = checkStillInWorld
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 and A1_2 then
    L2_2 = gamelua
    L2_2 = L2_2.objects
    L2_2 = L2_2.world
    L2_2 = L2_2[A0_2]
    L3_2 = A1_2.sprite
    if L3_2 then
      L3_2 = setSprite
      L4_2 = L2_2.name
      L5_2 = A1_2.sprite
      L3_2(L4_2, L5_2)
    end
    L3_2 = A1_2.animation
    if L3_2 then
      L2_2.disableAnimations = false
      L3_2 = setAnimation
      L4_2 = L2_2.name
      L5_2 = A1_2.animation
      L3_2(L4_2, L5_2)
    else
      L2_2.disableAnimations = true
    end
    L3_2 = A1_2.actions
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.handleActionTable
      L4_2 = A1_2.actions
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = A1_2.particles
    if L3_2 then
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = L2_2.name
      L4_2.objectName = L5_2
      L5_2 = A1_2.particles
      L4_2.particles = L5_2
      L4_2.useAmountInDefinition = true
      L3_2(L4_2)
    end
    L3_2 = A1_2.positionedParticles
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.vec2Rotate
      L4_2 = A1_2.positionedParticles
      L4_2 = L4_2.x
      L5_2 = A1_2.positionedParticles
      L5_2 = L5_2.y
      L6_2 = gamelua
      L6_2 = L6_2.getAngle
      L7_2 = L2_2.name
      L6_2, L7_2 = L6_2(L7_2)
      L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L5_2 = putParticles
      L6_2 = {}
      L7_2 = L2_2.x
      L7_2 = L7_2 + L3_2
      L6_2.x = L7_2
      L7_2 = L2_2.y
      L7_2 = L7_2 + L4_2
      L6_2.y = L7_2
      L7_2 = A1_2.positionedParticles
      L7_2 = L7_2.particles
      L6_2.particles = L7_2
      L6_2.useAmountInDefinition = true
      L5_2(L6_2)
    end
    L3_2 = A1_2.loopingParticle
    if L3_2 then
      L3_2 = A1_2.loopingParticle
      L2_2.loopingParticle = L3_2
      L3_2 = L2_2.hasStartedLoopingParticles
      if not L3_2 then
        L2_2.hasStartedLoopingParticles = true
        L3_2 = addEventCall
        L4_2 = "spawnSwitchableLoopingParticle"
        L5_2 = {}
        L6_2 = L2_2.name
        L5_2.name = L6_2
        L3_2(L4_2, L5_2)
      end
    else
      L2_2.loopingParticle = nil
    end
    L3_2 = A1_2.positionedLoopingParticle
    if L3_2 then
      L3_2 = addEventCall
      L4_2 = "createPositionedLoopingParticle"
      L5_2 = {}
      L6_2 = L2_2.name
      L5_2.name = L6_2
      L6_2 = A1_2.positionedLoopingParticle
      L5_2.infoTable = L6_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = A1_2.gravityCategory
    if L3_2 then
      L3_2 = assert
      L4_2 = gamelua
      L4_2 = L4_2.g_gravityFiltersCategories
      L5_2 = A1_2.gravityCategory
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2 ~= nil
      L5_2 = "Unknown gravity category: "
      L6_2 = A1_2.gravityCategory
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
      L3_2 = A1_2.gravityCategory
      L2_2.gravityFilterCategory = L3_2
      L3_2 = gamelua
      L3_2 = L3_2.setObjectGravityCategory
      L4_2 = L2_2.name
      L5_2 = gamelua
      L5_2 = L5_2.g_gravityFiltersCategories
      L6_2 = L2_2.gravityFilterCategory
      L5_2 = L5_2[L6_2]
      L3_2(L4_2, L5_2)
    end
  end
end

handleStateChange = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = nil
    L4_2 = _G
    L4_2 = L4_2.pairs
    L5_2 = gamelua
    L5_2 = L5_2.objects
    L5_2 = L5_2.joints
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.type
      if L9_2 == 3 then
        L9_2 = L8_2.end1
        L10_2 = L1_2.name
        if L9_2 ~= L10_2 then
          L9_2 = L8_2.end2
          L10_2 = L1_2.name
          if L9_2 ~= L10_2 then
            goto lbl_37
          end
        end
        L3_2 = L7_2
        break
      end
      ::lbl_37::
    end
    if L3_2 then
      L4_2 = gamelua
      L4_2 = L4_2.objects
      L4_2 = L4_2.joints
      L4_2 = L4_2[L3_2]
      L4_2.stopAtEdges = true
      L5_2 = addUpdateCall
      L6_2 = "cannonUpdate"
      L7_2 = {}
      L8_2 = L1_2.name
      L7_2.name = L8_2
      L7_2.jointName = L3_2
      L8_2 = L4_2.motorSpeed
      L7_2.motorSpeed = L8_2
      L8_2 = gamelua
      L8_2 = L8_2.getAngle
      L9_2 = L1_2.name
      L8_2 = L8_2(L9_2)
      L7_2.startAngle = L8_2
      L5_2(L6_2, L7_2)
    else
      L4_2 = print
      L5_2 = "Cannon "
      L6_2 = L1_2.name
      L7_2 = " not jointed."
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2(L5_2)
    end
  end
end

L1_1.action = L2_1
cannonOnCreated = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.joints
    L2_2 = A0_2.jointName
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.getAngle
      L4_2 = L1_2.name
      L3_2 = L3_2(L4_2)
      L4_2 = L2_2.horFlip
      if L4_2 then
        L4_2 = 1
        if L4_2 then
          goto lbl_34
        end
      end
      L4_2 = -1
      ::lbl_34::
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.cos
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      L5_2 = L4_2 * L5_2
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.sin
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      L6_2 = L4_2 * L6_2
      L7_2 = gamelua
      L7_2 = L7_2.flyingBird
      if L7_2 then
        L7_2 = gamelua
        L7_2 = L7_2.flyingBird
        L8_2 = A0_2.lastFlyingBird
        if L7_2 ~= L8_2 then
          L7_2 = A0_2.dt
          L7_2 = -L7_2
          A0_2.timer = L7_2
          A0_2.shot = false
          A0_2.aimingAudioPlayed = false
          L7_2 = gamelua
          L7_2 = L7_2.flyingBird
          A0_2.lastFlyingBird = L7_2
        end
      end
      L7_2 = A0_2.timer
      if not L7_2 then
        L7_2 = L2_2.cannonTimes
        L7_2 = L7_2.stop
      end
      L8_2 = A0_2.dt
      L7_2 = L7_2 + L8_2
      A0_2.timer = L7_2
      L7_2 = A0_2.timer
      L8_2 = L2_2.cannonTimes
      L8_2 = L8_2.startAiming
      if L7_2 < L8_2 then
        L7_2 = gamelua
        L7_2 = L7_2.setJointParameters
        L8_2 = {}
        L9_2 = A0_2.jointName
        L8_2.name = L9_2
        L8_2.motorSpeed = 0
        L7_2(L8_2)
      else
        L7_2 = gamelua
        L7_2 = L7_2.flyingBird
        if L7_2 then
          L7_2 = A0_2.timer
          L8_2 = L2_2.cannonTimes
          L8_2 = L8_2.stopAiming
          if L7_2 < L8_2 then
            L7_2 = gamelua
            L7_2 = L7_2.distance
            L8_2 = gamelua
            L8_2 = L8_2.flyingBird
            L8_2 = L8_2.x
            L9_2 = gamelua
            L9_2 = L9_2.flyingBird
            L9_2 = L9_2.y
            L10_2 = L1_2.x
            L11_2 = L1_2.y
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
            L8_2 = gamelua
            L8_2 = L8_2.flyingBird
            L8_2 = L8_2.x
            L9_2 = L1_2.x
            L8_2 = L8_2 - L9_2
            L8_2 = L8_2 / L7_2
            L9_2 = gamelua
            L9_2 = L9_2.flyingBird
            L9_2 = L9_2.y
            L10_2 = L1_2.y
            L9_2 = L9_2 - L10_2
            L9_2 = L9_2 / L7_2
            L10_2 = gamelua
            L10_2 = L10_2.dotProduct
            L11_2 = -L6_2
            L12_2 = L5_2
            L13_2 = L8_2
            L14_2 = L9_2
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
            L11_2 = gamelua
            L11_2 = L11_2.setJointParameters
            L12_2 = {}
            L13_2 = A0_2.jointName
            L12_2.name = L13_2
            L13_2 = A0_2.motorSpeed
            L13_2 = L10_2 * L13_2
            L12_2.motorSpeed = L13_2
            L11_2(L12_2)
            L11_2 = A0_2.aimingAudioPlayed
            if not L11_2 then
              A0_2.aimingAudioPlayed = true
              L11_2 = playAudio
              L12_2 = L2_2.cannonStartAimingSound
              L11_2(L12_2)
            end
        end
        else
          L7_2 = A0_2.timer
          L8_2 = L2_2.cannonTimes
          L8_2 = L8_2.backToStart
          if L7_2 < L8_2 then
            L7_2 = L2_2.cannonBackToStartInIdle
            if L7_2 then
              L7_2 = _G
              L7_2 = L7_2.math
              L7_2 = L7_2.pi
              L7_2 = L7_2 * 0.1
              L8_2 = A0_2.startAngle
              if L3_2 > L8_2 then
                L8_2 = -1
                if L8_2 then
                  goto lbl_159
                end
              end
              L8_2 = 1
              ::lbl_159::
              L9_2 = _G
              L9_2 = L9_2.math
              L9_2 = L9_2.abs
              L10_2 = A0_2.startAngle
              L10_2 = L3_2 - L10_2
              L9_2 = L9_2(L10_2)
              if L7_2 > L9_2 then
                L9_2 = _G
                L9_2 = L9_2.math
                L9_2 = L9_2.abs
                L10_2 = A0_2.startAngle
                L10_2 = L3_2 - L10_2
                L9_2 = L9_2(L10_2)
                L9_2 = L8_2 * L9_2
                L8_2 = L9_2 / L7_2
              end
              L9_2 = gamelua
              L9_2 = L9_2.setJointParameters
              L10_2 = {}
              L11_2 = A0_2.jointName
              L10_2.name = L11_2
              L11_2 = A0_2.motorSpeed
              L11_2 = L8_2 * L11_2
              L12_2 = L2_2.cannonBackToStartSpeedMultiplier
              L11_2 = L11_2 * L12_2
              L10_2.motorSpeed = L11_2
              L9_2(L10_2)
            else
              L7_2 = gamelua
              L7_2 = L7_2.setJointParameters
              L8_2 = {}
              L9_2 = A0_2.jointName
              L8_2.name = L9_2
              L8_2.motorSpeed = 0
              L7_2(L8_2)
            end
          else
            L7_2 = A0_2.timer
            L8_2 = L2_2.cannonTimes
            L8_2 = L8_2.stop
            if L7_2 < L8_2 then
              L7_2 = gamelua
              L7_2 = L7_2.flyingBird
              if L7_2 then
                L7_2 = gamelua
                L7_2 = L7_2.flyingBird
                L8_2 = A0_2.lastFlyingBird
                if L7_2 == L8_2 then
                  L7_2 = gamelua
                  L7_2 = L7_2.flyingBird
                  L7_2 = L7_2.hasCollided
                  if not L7_2 then
                    A0_2.timer = 0
                    A0_2.shot = false
                    A0_2.aimingAudioPlayed = false
                end
              end
              else
                L7_2 = _G
                L7_2 = L7_2.math
                L7_2 = L7_2.pi
                L7_2 = L7_2 * 0.1
                L8_2 = A0_2.startAngle
                if L3_2 > L8_2 then
                  L8_2 = -1
                  if L8_2 then
                    goto lbl_229
                  end
                end
                L8_2 = 1
                ::lbl_229::
                L9_2 = _G
                L9_2 = L9_2.math
                L9_2 = L9_2.abs
                L10_2 = A0_2.startAngle
                L10_2 = L3_2 - L10_2
                L9_2 = L9_2(L10_2)
                if L7_2 > L9_2 then
                  L9_2 = _G
                  L9_2 = L9_2.math
                  L9_2 = L9_2.abs
                  L10_2 = A0_2.startAngle
                  L10_2 = L3_2 - L10_2
                  L9_2 = L9_2(L10_2)
                  L9_2 = L8_2 * L9_2
                  L8_2 = L9_2 / L7_2
                end
                L9_2 = gamelua
                L9_2 = L9_2.setJointParameters
                L10_2 = {}
                L11_2 = A0_2.jointName
                L10_2.name = L11_2
                L11_2 = A0_2.motorSpeed
                L11_2 = L8_2 * L11_2
                L12_2 = L2_2.cannonBackToStartSpeedMultiplier
                L11_2 = L11_2 * L12_2
                L10_2.motorSpeed = L11_2
                L9_2(L10_2)
              end
            else
              L7_2 = gamelua
              L7_2 = L7_2.objects
              L7_2 = L7_2.joints
              L8_2 = A0_2.jointName
              L7_2 = L7_2[L8_2]
              L8_2 = L7_2.motorSpeed
              if L8_2 ~= 0 then
                L8_2 = gamelua
                L8_2 = L8_2.setJointParameters
                L9_2 = {}
                L10_2 = A0_2.jointName
                L9_2.name = L10_2
                L9_2.motorSpeed = 0
                L8_2(L9_2)
              end
            end
          end
        end
      end
      L7_2 = gamelua
      L7_2 = L7_2.flyingBird
      if L7_2 then
        L7_2 = A0_2.shot
        if not L7_2 then
          L7_2 = A0_2.timer
          L8_2 = L2_2.cannonTimes
          L8_2 = L8_2.shoot
          if L7_2 >= L8_2 then
            A0_2.shot = true
            L7_2 = applyImpulse
            L8_2 = L1_2.name
            L9_2 = -L5_2
            L10_2 = L2_2.cannonRecoil
            L9_2 = L9_2 * L10_2
            L10_2 = -L6_2
            L11_2 = L2_2.cannonRecoil
            L10_2 = L10_2 * L11_2
            L11_2 = L1_2.x
            L12_2 = L1_2.y
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
            L7_2 = gamelua
            L7_2 = L7_2.addCameraShake
            L8_2 = gamelua
            L8_2 = L8_2.cameraShakeModeSine
            L9_2 = L2_2.cannonShake
            L9_2 = L9_2.velocity
            L10_2 = L2_2.cannonShake
            L10_2 = L10_2.distortion
            L11_2 = L2_2.cannonShake
            L11_2 = L11_2.timer
            L7_2(L8_2, L9_2, L10_2, L11_2)
            L7_2 = playAudio
            L8_2 = L2_2.cannonSpawn
            L8_2 = L8_2.sound
            L7_2(L8_2)
            L7_2 = L1_2.x
            L8_2 = L2_2.cannonSpawn
            L8_2 = L8_2.offset
            L8_2 = L5_2 * L8_2
            L7_2 = L7_2 + L8_2
            L8_2 = L1_2.y
            L9_2 = L2_2.cannonSpawn
            L9_2 = L9_2.offset
            L9_2 = L6_2 * L9_2
            L8_2 = L8_2 + L9_2
            L9_2 = L2_2.cannonSpawn
            L9_2 = L9_2.isLaser
            if L9_2 then
              L9_2 = g_emitterIndex
              if not L9_2 then
                L9_2 = 0
              end
              g_emitterIndex = L9_2
              L9_2 = g_emitterIndex
              L9_2 = L9_2 + 1
              g_emitterIndex = L9_2
              L9_2 = createObject
              L10_2 = gamelua
              L10_2 = L10_2.blockTable
              L11_2 = "BLOCK_SENSOR_LAZER_EMITTER"
              L12_2 = "BLOCK_CANNON_LAZER_EMITTER"
              L13_2 = g_emitterIndex
              L12_2 = L12_2 .. L13_2
              L13_2 = L1_2.x
              L14_2 = L1_2.y
              L15_2 = 5
              L16_2 = 5
              L17_2 = 5
              L18_2 = 1
              L19_2 = 1
              L20_2 = nil
              L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
              L10_2 = gamelua
              L10_2 = L10_2.setCollisionEnabled
              L11_2 = L9_2
              L12_2 = false
              L10_2(L11_2, L12_2)
              L10_2 = gamelua
              L10_2 = L10_2.objects
              L10_2 = L10_2.world
              L10_2 = L10_2[L9_2]
              L10_2.parent = L1_2
              L1_2.emitterBody = L10_2
              L10_2.xDelta = 0
              L10_2.yDelta = 0
              L11_2 = {}
              L11_2.timer = 0
              L11_2.emitInterval = 0
              L10_2.emitter = L11_2
              L12_2 = gamelua
              L12_2 = L12_2.setVisible
              L13_2 = L10_2.name
              L14_2 = false
              L12_2(L13_2, L14_2)
              L12_2 = gamelua
              L12_2 = L12_2.gameWorldScale
              L12_2 = 100 * L12_2
              L11_2.shotSpeed = L12_2
              L11_2.emitInterval = 0
              L11_2.birdEmitter = false
              L13_2 = {}
              L14_2 = {}
              L15_2 = L2_2.cannonSpawn
              L15_2 = L15_2.block
              L14_2.block = L15_2
              L15_2 = _G
              L15_2 = L15_2.math
              L15_2 = L15_2.huge
              L14_2.timeInterval = L15_2
              L14_2.currentTime = 0
              L15_2 = {}
              L16_2 = L3_2 * 180
              L17_2 = _G
              L17_2 = L17_2.math
              L17_2 = L17_2.pi
              L16_2 = L16_2 / L17_2
              L16_2 = L16_2 - 180
              L17_2 = L3_2 * 180
              L18_2 = _G
              L18_2 = L18_2.math
              L18_2 = L18_2.pi
              L17_2 = L17_2 / L18_2
              L17_2 = L17_2 - 180
              L15_2[1] = L16_2
              L15_2[2] = L17_2
              L14_2.angle = L15_2
              L15_2 = {}
              L16_2 = L12_2
              L17_2 = L12_2
              L15_2[1] = L16_2
              L15_2[2] = L17_2
              L14_2.speed = L15_2
              L14_2.getAngleFromParent = false
              L14_2.shotAngle = 0
              L14_2.offset = 0
              L13_2[1] = L14_2
              L11_2.shotData = L13_2
              L13_2 = addUpdateCall
              L14_2 = "updateEmitter"
              L15_2 = {}
              L15_2.name = L9_2
              L16_2 = nil
              L17_2 = L9_2
              L13_2(L14_2, L15_2, L16_2, L17_2)
            else
              L9_2 = L2_2.cannonSpawn
              L9_2 = L9_2.isBeam
              if L9_2 then
                L9_2 = gamelua
                L9_2 = L9_2.raycastBeamFromObject
                L10_2 = L1_2
                L11_2 = {}
                L11_2.x = L5_2
                L11_2.y = L6_2
                L12_2 = L2_2.specialtyTeleTrailObjectLength
                L13_2 = 0
                L9_2(L10_2, L11_2, L12_2, L13_2)
              else
                L9_2 = createObject
                L10_2 = gamelua
                L10_2 = L10_2.blockTable
                L11_2 = L2_2.cannonSpawn
                L11_2 = L11_2.block
                L12_2 = nil
                L13_2 = L7_2
                L14_2 = L8_2
                L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
                L10_2 = gamelua
                L10_2 = L10_2.objects
                L10_2 = L10_2.world
                L10_2 = L10_2[L9_2]
                L11_2 = setRotation
                L12_2 = L9_2
                L13_2 = _G
                L13_2 = L13_2.math
                L13_2 = L13_2.atan2
                L14_2 = L6_2
                L15_2 = L5_2
                L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2, L15_2)
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
                L11_2 = applyImpulse
                L12_2 = L9_2
                L13_2 = L2_2.cannonSpawn
                L13_2 = L13_2.impulse
                L13_2 = L5_2 * L13_2
                L14_2 = L2_2.cannonSpawn
                L14_2 = L14_2.impulse
                L14_2 = L6_2 * L14_2
                L15_2 = L10_2.x
                L16_2 = L10_2.y
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
              end
            end
            L9_2 = putParticles
            L10_2 = {}
            L10_2.x = L7_2
            L10_2.y = L8_2
            L11_2 = L2_2.cannonSpawn
            L11_2 = L11_2.particles
            L10_2.particles = L11_2
            L10_2.useAmountInDefinition = true
            L9_2(L10_2)
          end
        end
      end
    end
  end
end

L1_1.action = L2_1
cannonUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.levelEndValuesSet
    if not L2_2 then
      A0_2.levelEndValuesSet = true
      L2_2 = gamelua
      L2_2.g_scoreAddedTime = 12
      L2_2 = gamelua
      L2_2.timeWithoutLevelGoals = -6
    end
    L2_2 = L1_2.sleeping
    if not L2_2 then
      L2_2 = getVelocity
      L3_2 = L1_2.name
      L2_2 = L2_2(L3_2)
      if not (L2_2 < 0.5) then
        goto lbl_30
      end
    end
    L2_2 = gamelua
    L2_2.allowResetToBirdCamera = true
    goto lbl_34
    ::lbl_30::
    L2_2 = addEventCall
    L3_2 = "keepAsCameraTarget"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  ::lbl_34::
end

L1_1.action = L2_1
keepAsCameraTarget = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.obj
  L2_2 = L2_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.blockTable
    L1_2 = L1_2.blocks
    L2_2 = A0_2.obj
    L2_2 = L2_2.definition
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.addCameraShake
    L3_2 = gamelua
    L3_2 = L3_2.cameraShakeModeSine
    L4_2 = L1_2.specialtyShake
    L4_2 = L4_2.velocity
    L5_2 = L1_2.specialtyShake
    L5_2 = L5_2.distortion
    L6_2 = L1_2.specialtyShake
    L6_2 = L6_2.timer
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

L1_1.action = L2_1
addSpecialtyShake = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.angleStabilizationActive = true
    L2_2 = gamelua
    L2_2 = L2_2.vec2FromAngle
    L3_2 = gamelua
    L3_2 = L3_2.getAngle
    L4_2 = A0_2.name
    L3_2, L4_2 = L3_2(L4_2)
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    A0_2.initialAngleY = L3_2
    A0_2.initialAngleX = L2_2
    L2_2 = addUpdateCall
    L3_2 = "angleStabilizationUpdate"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

L1_1.action = L2_1
startAngleStabilization = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.angleStabilizationActive = false
  end
end

L1_1.action = L2_1
stopAngleStabilization = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L1_2.angleStabilizationActive
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.vec2FromAngle
      L4_2 = gamelua
      L4_2 = L4_2.getAngle
      L5_2 = A0_2.name
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2(L5_2)
      L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L5_2 = gamelua
      L5_2 = L5_2.vec2AngleBetween
      L6_2 = A0_2.initialAngleX
      L7_2 = A0_2.initialAngleY
      L8_2 = L3_2
      L9_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L6_2 = L2_2.angleStabilization
      L6_2 = L6_2.deadzone
      L6_2 = -L6_2
      if not (L5_2 < L6_2) then
        L6_2 = L2_2.angleStabilization
        L6_2 = L6_2.deadzone
        if not (L5_2 > L6_2) then
          goto lbl_65
        end
      end
      L6_2 = L2_2.angleStabilization
      L6_2 = L6_2.force
      L6_2 = L5_2 * L6_2
      L7_2 = A0_2.dt
      if 0.033333335 < L7_2 then
        L7_2 = L6_2 * 0.033333335
        L8_2 = A0_2.dt
        L6_2 = L7_2 / L8_2
      end
      L7_2 = -L4_2
      L7_2 = L7_2 * L6_2
      L8_2 = L3_2 * L6_2
      L9_2 = L1_2.x
      L9_2 = L9_2 - L3_2
      L10_2 = L1_2.y
      L10_2 = L10_2 - L4_2
      L11_2 = applyForce
      L12_2 = A0_2.name
      L13_2 = L7_2
      L14_2 = L8_2
      L15_2 = L9_2
      L16_2 = L10_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
  ::lbl_65::
end

L1_1.action = L2_1
angleStabilizationUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.getAngle
    L2_2 = A0_2.name
    L1_2 = L1_2(L2_2)
    A0_2.initialAngle = L1_2
    L1_2 = addUpdateCall
    L2_2 = "keepSpriteRotationUpdate"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.action = L2_1
keepSpriteRotation = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.setSpriteRotation
    L2_2 = A0_2.name
    L3_2 = A0_2.initialAngle
    L4_2 = gamelua
    L4_2 = L4_2.getAngle
    L5_2 = A0_2.name
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 - L4_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.action = L2_1
keepSpriteRotationUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.sin
    L4_2 = A0_2.timer
    L5_2 = L2_2.spriteRotationAction
    L5_2 = L5_2.interval
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2.spriteRotationAction
    L4_2 = L4_2.amplitude
    L3_2 = L3_2 * L4_2
    L4_2 = gamelua
    L4_2 = L4_2.setSpriteRotation
    L5_2 = A0_2.name
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = addEventCall
    L5_2 = "spriteRotationAction"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L1_1.action = L2_1
spriteRotationAction = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = setObjectParameter
    L2_2 = A0_2.name
    L3_2 = 21
    L4_2 = 6
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = setObjectParameter
    L2_2 = A0_2.name
    L3_2 = 16
    L4_2 = 1
    L1_2(L2_2, L3_2, L4_2)
  end
end

L1_1.action = L2_1
activateSword = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = createObject
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L5_2 = L2_2.followTargets
    L5_2 = L5_2.avoidSensor
    L6_2 = nil
    L7_2 = L1_2.x
    L8_2 = L1_2.y
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = addUpdateCall
    L5_2 = "followParent"
    L6_2 = {}
    L6_2.name = L3_2
    L7_2 = A0_2.name
    L6_2.parent = L7_2
    L4_2(L5_2, L6_2)
    A0_2.sensorName = L3_2
    L4_2 = {}
    A0_2.targets = L4_2
    L4_2 = _G
    L4_2 = L4_2.pairs
    L5_2 = gamelua
    L5_2 = L5_2.objects
    L5_2 = L5_2.world
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.definition
      if L9_2 then
        L9_2 = L8_2.definition
        L10_2 = L2_2.followTargets
        L10_2 = L10_2.targetDefinition
        if L9_2 == L10_2 then
          L9_2 = _G
          L9_2 = L9_2.table
          L9_2 = L9_2.insert
          L10_2 = A0_2.targets
          L11_2 = L7_2
          L9_2(L10_2, L11_2)
        end
      end
    end
    L4_2 = A0_2.targets
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.random
    L6_2 = A0_2.targets
    L6_2 = #L6_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2[L5_2]
    A0_2.targetName = L4_2
    A0_2.timer = 0
    L4_2 = addUpdateCall
    L5_2 = "followTargetsUpdate"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L1_1.action = L2_1
followTargets = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.objects
    L3_2 = L3_2.world
    L4_2 = A0_2.targetName
    L3_2 = L3_2[L4_2]
    L4_2 = gamelua
    L4_2 = L4_2.objects
    L4_2 = L4_2.world
    L5_2 = A0_2.sensorName
    L4_2 = L4_2[L5_2]
    L5_2 = gamelua
    L5_2 = L5_2.distance
    L6_2 = L1_2.x
    L7_2 = L1_2.y
    L8_2 = L3_2.x
    L9_2 = L3_2.y
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = A0_2.timer
    L7_2 = A0_2.dt
    L6_2 = L6_2 + L7_2
    A0_2.timer = L6_2
    L6_2 = 0
    L7_2 = 0
    L8_2 = L4_2.collideTable
    if L8_2 then
      L8_2 = _G
      L8_2 = L8_2.ipairs
      L9_2 = L4_2.collideTable
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = L12_2.name
        L14_2 = A0_2.name
        if L13_2 ~= L14_2 then
          L13_2 = L2_2.followTargets
          L13_2 = L13_2.ignoreDefs
          if L13_2 then
            L13_2 = L2_2.followTargets
            L13_2 = L13_2.ignoreDefs
            L14_2 = L12_2.definition
            L13_2 = L13_2[L14_2]
            if L13_2 then
              goto lbl_94
            end
          end
          L13_2 = gamelua
          L13_2 = L13_2.objects
          L13_2 = L13_2.world
          L14_2 = L12_2.name
          L13_2 = L13_2[L14_2]
          L14_2 = gamelua
          L14_2 = L14_2.distance
          L15_2 = L1_2.x
          L16_2 = L1_2.y
          L17_2 = L13_2.x
          L18_2 = L13_2.y
          L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
          if L14_2 == 0 then
            L14_2 = 1.0E-4
          end
          L15_2 = L13_2.x
          L16_2 = L1_2.x
          L15_2 = L15_2 - L16_2
          L15_2 = L15_2 / L14_2
          L16_2 = L13_2.y
          L17_2 = L1_2.y
          L16_2 = L16_2 - L17_2
          L16_2 = L16_2 / L14_2
          L17_2 = gamelua
          L17_2 = L17_2.blockTable
          L17_2 = L17_2.blocks
          L18_2 = L4_2.definition
          L17_2 = L17_2[L18_2]
          L17_2 = L17_2.radius
          if L14_2 < L17_2 then
            L6_2 = L6_2 + L15_2
            L7_2 = L7_2 + L16_2
          end
        end
        ::lbl_94::
      end
    end
    if L6_2 ~= 0 or L7_2 ~= 0 then
      L8_2 = vNormalize
      L9_2 = L6_2
      L10_2 = L7_2
      L8_2, L9_2 = L8_2(L9_2, L10_2)
      L7_2 = L9_2
      L6_2 = L8_2
      L8_2 = applyForce
      L9_2 = A0_2.name
      L10_2 = -L6_2
      L11_2 = L2_2.followTargets
      L11_2 = L11_2.avoidForce
      L10_2 = L10_2 * L11_2
      L11_2 = -L7_2
      L12_2 = L2_2.followTargets
      L12_2 = L12_2.avoidForce
      L11_2 = L11_2 * L12_2
      L12_2 = L1_2.x
      L13_2 = L1_2.y
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    else
      if L5_2 == 0 then
        L5_2 = 1.0E-4
      end
      L8_2 = L3_2.x
      L9_2 = L1_2.x
      L8_2 = L8_2 - L9_2
      L8_2 = L8_2 / L5_2
      L9_2 = L3_2.y
      L10_2 = L1_2.y
      L9_2 = L9_2 - L10_2
      L9_2 = L9_2 / L5_2
      L10_2 = applyForce
      L11_2 = A0_2.name
      L12_2 = L2_2.followTargets
      L12_2 = L12_2.targetForce
      L12_2 = L8_2 * L12_2
      L13_2 = L2_2.followTargets
      L13_2 = L13_2.targetForce
      L13_2 = L9_2 * L13_2
      L14_2 = L1_2.x
      L15_2 = L1_2.y
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    L8_2 = L2_2.followTargets
    L8_2 = L8_2.targetSwitchDistance
    if not (L5_2 < L8_2) then
      L8_2 = A0_2.timer
      L9_2 = L2_2.followTargets
      L9_2 = L9_2.changeTargetTime
      if not (L8_2 > L9_2) then
        goto lbl_161
      end
    end
    L8_2 = A0_2.targets
    L9_2 = _G
    L9_2 = L9_2.math
    L9_2 = L9_2.random
    L10_2 = A0_2.targets
    L10_2 = #L10_2
    L9_2 = L9_2(L10_2)
    L8_2 = L8_2[L9_2]
    A0_2.targetName = L8_2
    A0_2.timer = 0
  end
  ::lbl_161::
end

L1_1.action = L2_1
followTargetsUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = addUpdateCall
    L2_2 = "objectCounterUpdate"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.action = L2_1
objectCounterOnCreated = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = 0
    L4_2 = L2_2.specialtyCounter
    L4_2 = L4_2.objects
    if L4_2 then
      L4_2 = _G
      L4_2 = L4_2.ipairs
      L5_2 = L2_2.specialtyCounter
      L5_2 = L5_2.objects
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = checkStillInWorld
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L3_2 = L3_2 + 1
        end
      end
    end
    L4_2 = L2_2.specialtyCounter
    L4_2 = L4_2.activationLimit
    if not L4_2 then
      L4_2 = 0
    end
    if L3_2 <= L4_2 then
      L4_2 = A0_2.activated
      if not L4_2 then
        A0_2.activated = true
        L4_2 = gamelua
        L4_2 = L4_2.handleActionTable
        L5_2 = L2_2.specialtyCounter
        L5_2 = L5_2.actions
        L6_2 = L1_2.name
        L4_2(L5_2, L6_2)
        L4_2 = destroyObject
        L5_2 = A0_2.name
        L4_2(L5_2)
      end
    end
  end
end

L1_1.action = L2_1
objectCounterUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = gamelua
  L1_2 = L1_2.g_levelParticleBlocks
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.ipairs
    L2_2 = gamelua
    L2_2 = L2_2.g_levelParticleBlocks
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = checkStillInWorld
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = gamelua
        L6_2 = L6_2.objects
        L6_2 = L6_2.world
        L6_2 = L6_2[L5_2]
        L7_2 = gamelua
        L7_2 = L7_2.blockTable
        L7_2 = L7_2.blocks
        L8_2 = L6_2.definition
        L7_2 = L7_2[L8_2]
        L8_2 = putParticles
        L9_2 = {}
        L9_2.objectName = L5_2
        L10_2 = L7_2.levelParticles
        L9_2.particles = L10_2
        L9_2.useAmountInDefinition = true
        L8_2(L9_2)
      end
    end
  end
end

L1_1.action = L2_1
emitLevelParticles = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.themeSystem
  L1_2 = L1_2.spawnFGLayerParticles
  L2_2 = A0_2.spawnerId
  L1_2(L2_2)
end

L1_1.action = L2_1
spawnFGLayerParticles = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = _G
  L1_2 = L1_2.themeSystem
  L1_2 = L1_2.spawnBGLayerParticles
  L2_2 = A0_2.spawnerId
  L1_2(L2_2)
end

L1_1.action = L2_1
spawnBGLayerParticles = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = addUpdateCall
    L2_2 = "rotateWhileFlyingActionUpdate"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.action = L2_1
rotateWhileFlyingAction = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.isPreventBirdCollision
    L3_2 = A0_2.other
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
    L1_2.rotateWhileFlyingDisabled = true
  end
end

L1_1.action = L2_1
disableRotateWhileFlyingAction = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.rotateWhileFlyingDisabled
    if not L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.getLinearVelocity
      L3_2 = A0_2.name
      L2_2, L3_2 = L2_2(L3_2)
      L4_2 = setRotation
      L5_2 = A0_2.name
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.atan2
      L7_2 = L3_2
      L8_2 = L2_2
      L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
end

L1_1.action = L2_1
rotateWhileFlyingActionUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = addUpdateCall
    L2_2 = "destroyWhenGoingToSleepActionUpdate"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.action = L2_1
destroyWhenGoingToSleepAction = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.sleeping
    if L2_2 then
      L2_2 = destroyObject
      L3_2 = A0_2.name
      L2_2(L3_2)
    end
  end
end

L1_1.action = L2_1
destroyWhenGoingToSleepActionUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.name
  if L1_2 then
    L1_2 = A0_2.other
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.other
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.isSword
      if not L3_2 then
        L3_2 = L2_2.isSensor
        if not L3_2 then
          L3_2 = L2_2.isEmittedParticle
          if not L3_2 then
            goto lbl_27
          end
        end
      end
      do return end
      ::lbl_27::
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.name
      L3_2 = L3_2[L4_2]
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L4_2 = L4_2.blocks
      L5_2 = L3_2.definition
      L4_2 = L4_2[L5_2]
      L5_2 = L3_2.stickToSurfaceAmount
      if not L5_2 then
        L5_2 = 0
      end
      L5_2 = L5_2 + 1
      L3_2.stickToSurfaceAmount = L5_2
      L5_2 = gamelua
      L5_2 = L5_2.getVelocity
      L6_2 = A0_2.name
      L5_2 = L5_2(L6_2)
      L6_2 = gamelua
      L6_2 = L6_2.getAngle
      L7_2 = A0_2.name
      L6_2 = L6_2(L7_2)
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.cos
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.sin
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = vNormalize
      L10_2 = A0_2.collisionPointX
      L11_2 = L3_2.x
      L10_2 = L10_2 - L11_2
      L11_2 = A0_2.collisionPointY
      L12_2 = L3_2.y
      L11_2 = L11_2 - L12_2
      L9_2, L10_2 = L9_2(L10_2, L11_2)
      L11_2 = gamelua
      L11_2 = L11_2.vec2AngleBetween
      L12_2 = L7_2
      L13_2 = L8_2
      L14_2 = L9_2
      L15_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = L11_2 * 180
      L12_2 = _G
      L12_2 = L12_2.math
      L12_2 = L12_2.pi
      L11_2 = L11_2 / L12_2
      L12_2 = L4_2.stickToSurfaceMax
      if L12_2 ~= nil then
        L12_2 = L3_2.stickToSurfaceAmount
        L13_2 = L4_2.stickToSurfaceMax
        if not (L12_2 <= L13_2) then
          goto lbl_127
        end
      end
      L12_2 = L4_2.stickToSurfaceAngle
      if L12_2 ~= nil then
        L12_2 = _G
        L12_2 = L12_2.math
        L12_2 = L12_2.abs
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = L4_2.stickToSurfaceAngle
        if not (L12_2 < L13_2) then
          goto lbl_127
        end
      end
      L12_2 = L4_2.stickToSurfaceVelocity
      if L12_2 ~= nil then
        L12_2 = L4_2.stickToSurfaceVelocity
        if not (L5_2 > L12_2) then
          goto lbl_127
        end
      end
      L12_2 = L4_2.bulletTime
      if L12_2 then
        L12_2 = gamelua
        L12_2 = L12_2.activateBulletTime
        L13_2 = L4_2.bulletTime
        L13_2 = L13_2.smoothIn
        L14_2 = L4_2.bulletTime
        L14_2 = L14_2.duration
        L15_2 = L4_2.bulletTime
        L15_2 = L15_2.smoothOut
        L16_2 = L4_2.bulletTime
        L16_2 = L16_2.timeMultiplier
        L12_2(L13_2, L14_2, L15_2, L16_2)
      end
      L12_2 = addEventCall
      L13_2 = "createWeldJoint"
      L14_2 = {}
      L15_2 = A0_2.name
      L14_2.objA = L15_2
      L15_2 = A0_2.other
      L14_2.objB = L15_2
      L12_2(L13_2, L14_2)
    end
  end
  ::lbl_127::
end

L1_1.action = L2_1
stickToSurface = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.world
      L3_2 = A0_2.other
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.createJoint
      L4_2 = {}
      L5_2 = L1_2.name
      L6_2 = "_weldJointedTo_"
      L7_2 = L2_2.name
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2.name = L5_2
      L4_2.type = 2
      L5_2 = L1_2.name
      L4_2.end1 = L5_2
      L5_2 = L2_2.name
      L4_2.end2 = L5_2
      L4_2.coordType = 2
      L4_2.x1 = 0
      L4_2.y1 = 0
      L5_2 = L1_2.x
      L6_2 = L2_2.x
      L5_2 = L5_2 - L6_2
      L4_2.x2 = L5_2
      L5_2 = L1_2.y
      L6_2 = L2_2.y
      L5_2 = L5_2 - L6_2
      L4_2.y2 = L5_2
      L4_2.collideConnected = false
      L4_2.isDrawn = false
      L3_2(L4_2)
    end
  end
end

L1_1.action = L2_1
createWeldJointToName = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.objA
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.objB
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.objA
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.world
      L3_2 = A0_2.objB
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.createJoint
      L4_2 = {}
      L5_2 = L1_2.name
      L6_2 = "_weldJointedTo_"
      L7_2 = L2_2.name
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2.name = L5_2
      L4_2.type = 2
      L5_2 = L1_2.name
      L4_2.end1 = L5_2
      L5_2 = L2_2.name
      L4_2.end2 = L5_2
      L4_2.coordType = 2
      L4_2.x1 = 0
      L4_2.y1 = 0
      L4_2.x2 = 0
      L4_2.y2 = 0
      L4_2.collideConnected = false
      L4_2.isDrawn = false
      L3_2(L4_2)
    end
  end
end

L1_1.action = L2_1
createWeldJoint = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.setLinearDamping
    L4_2 = A0_2.name
    L5_2 = A0_2.customDamping
    if not L5_2 then
      L5_2 = L2_2.customDamping
      if not L5_2 then
        L5_2 = 0
      end
    end
    L3_2(L4_2, L5_2)
    L1_2.noDamping = true
  end
end

L1_1.action = L2_1
setCustomDamping = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.hoveringForceDrag
    if not L2_2 then
      L2_2 = def
      L2_2 = L2_2.hoveringForceDrag
      if not L2_2 then
        L2_2 = 0
      end
    end
    L1_2.hoveringForceDrag = L2_2
  end
end

L1_1.action = L2_1
setHoveringForceDrag = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.setCollectableBlock
    L3_2 = gamelua
    L3_2 = L3_2.levelName
    L4_2 = A0_2.name
    L1_2(L2_2, L3_2, L4_2)
  end
end

L1_1.action = L2_1
setCollectableBlockAction = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.SettingsWrapper
    L2_2 = L1_2
    L1_2 = L1_2.getCollectableBlock
    L3_2 = gamelua
    L3_2 = L3_2.levelName
    L4_2 = A0_2.name
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.addCoins
      L2_2 = 1
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = gamelua
      L1_2 = L1_2.eventManager
      L2_2 = L1_2
      L1_2 = L1_2.notify
      L3_2 = {}
      L4_2 = gamelua
      L4_2 = L4_2.events
      L4_2 = L4_2.EID_COIN_COLLECTED
      L3_2.id = L4_2
      L4_2 = gamelua
      L4_2 = L4_2.levelName
      L3_2.levelName = L4_2
      L4_2 = A0_2.name
      L3_2.blockName = L4_2
      L1_2(L2_2, L3_2)
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.physicsToScreenTransform
      L3_2 = L1_2.x
      L4_2 = L1_2.y
      L2_2, L3_2 = L2_2(L3_2, L4_2)
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L5_2 = 0
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.atan2
      L7_2 = L5_2 - L3_2
      L8_2 = L4_2 - L2_2
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = L6_2 * 180
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.pi
      L6_2 = L6_2 / L7_2
      L7_2 = gamelua
      L7_2 = L7_2.putMenuParticles
      L8_2 = {}
      L8_2.x = L2_2
      L8_2.y = L3_2
      L8_2.particles = "coinCollected"
      L8_2.amount = 1
      L9_2 = gamelua
      L9_2 = L9_2.particleTable
      L9_2 = L9_2.particles
      L9_2 = L9_2.coinCollected
      L9_2 = L9_2.minScaleBegin
      L10_2 = gamelua
      L10_2 = L10_2.worldScale
      L9_2 = L9_2 * L10_2
      L8_2.minScaleBegin = L9_2
      L9_2 = gamelua
      L9_2 = L9_2.particleTable
      L9_2 = L9_2.particles
      L9_2 = L9_2.coinCollected
      L9_2 = L9_2.maxScaleBegin
      L10_2 = gamelua
      L10_2 = L10_2.worldScale
      L9_2 = L9_2 * L10_2
      L8_2.minScaleBegin = L9_2
      L8_2.minAngleEmitter = L6_2
      L8_2.maxAngleEmitter = L6_2
      L7_2(L8_2)
    end
  end
end

L1_1.action = L2_1
addCoinAction = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.windSpeedMultiplier
    if L3_2 then
      L3_2 = L2_2.windSpeedMultiplier
      L3_2 = L3_2.min
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.random
      L4_2 = L4_2()
      L5_2 = L2_2.windSpeedMultiplier
      L5_2 = L5_2.max
      L6_2 = L2_2.windSpeedMultiplier
      L6_2 = L6_2.min
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 + L4_2
      A0_2.windSpeedMultiplier = L3_2
    end
    L3_2 = addUpdateCall
    L4_2 = "moveWithTheWindUpdate"
    L5_2 = A0_2
    L6_2 = nil
    L7_2 = "moveWithTheWindUpdate_"
    L8_2 = A0_2.name
    L7_2 = L7_2 .. L8_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end

L1_1.action = L2_1
moveWithTheWind = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = setPosition
    L3_2 = A0_2.name
    L4_2 = L1_2.x
    L5_2 = gamelua
    L5_2 = L5_2.objects
    L5_2 = L5_2.windForce
    L6_2 = A0_2.dt
    L5_2 = L5_2 * L6_2
    L6_2 = A0_2.windSpeedMultiplier
    if not L6_2 then
      L6_2 = 1
    end
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2 + L5_2
    L5_2 = L1_2.y
    L2_2(L3_2, L4_2, L5_2)
  else
    L1_2 = gamelua
    L1_2 = L1_2.removeUpdateCall
    L2_2 = "moveWithTheWindUpdate_"
    L3_2 = A0_2.name
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end

L1_1.action = L2_1
moveWithTheWindUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = {}
    A0_2.spawnList = L3_2
    L3_2 = L2_2.boxSpawner
    L3_2 = L3_2.spawnInterval
    L3_2 = L3_2.min
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.random
    L4_2 = L4_2()
    L5_2 = L2_2.boxSpawner
    L5_2 = L5_2.spawnInterval
    L5_2 = L5_2.max
    L6_2 = L2_2.boxSpawner
    L6_2 = L6_2.spawnInterval
    L6_2 = L6_2.min
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2 + L4_2
    A0_2.nextSpawnInterval = L3_2
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = L2_2.boxSpawner
    L4_2 = L4_2.startPattern
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.x
      if not L8_2 then
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.random
        L8_2 = L8_2()
      end
      L8_2 = L8_2 - 0.5
      L9_2 = L1_2.width
      L8_2 = L8_2 * L9_2
      L9_2 = L7_2.y
      if not L9_2 then
        L9_2 = _G
        L9_2 = L9_2.math
        L9_2 = L9_2.random
        L9_2 = L9_2()
      end
      L9_2 = L9_2 - 0.5
      L10_2 = L1_2.height
      L9_2 = L9_2 * L10_2
      L10_2 = createObject
      L11_2 = gamelua
      L11_2 = L11_2.blockTable
      L12_2 = L2_2.boxSpawner
      L12_2 = L12_2.block
      L13_2 = nil
      L14_2 = L1_2.x
      L14_2 = L14_2 + L8_2
      L15_2 = L1_2.y
      L15_2 = L15_2 + L9_2
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      L11_2 = A0_2.spawnList
      L11_2[L10_2] = true
    end
    L3_2 = addUpdateCall
    L4_2 = "updateBoxSpawner"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L1_1.action = L2_1
startBoxSpawner = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = A0_2.timer
    L4_2 = A0_2.nextSpawnInterval
    if L3_2 > L4_2 then
      A0_2.timer = 0
      L3_2 = L2_2.boxSpawner
      L3_2 = L3_2.spawnInterval
      L3_2 = L3_2.min
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.random
      L4_2 = L4_2()
      L5_2 = L2_2.boxSpawner
      L5_2 = L5_2.spawnInterval
      L5_2 = L5_2.max
      L6_2 = L2_2.boxSpawner
      L6_2 = L6_2.spawnInterval
      L6_2 = L6_2.min
      L5_2 = L5_2 - L6_2
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 + L4_2
      A0_2.nextSpawnInterval = L3_2
      L3_2 = nil
      L4_2 = nil
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.random
      L5_2 = L5_2()
      L5_2 = L5_2 - 0.5
      L6_2 = L1_2.width
      L3_2 = L5_2 * L6_2
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.random
      L5_2 = L5_2()
      L5_2 = L5_2 - 0.5
      L6_2 = L1_2.height
      L4_2 = L5_2 * L6_2
      L5_2 = L2_2.boxSpawner
      L5_2 = L5_2.spawnEdge
      if L5_2 then
        L5_2 = L2_2.boxSpawner
        L5_2 = L5_2.spawnEdge
        if L5_2 == "top" then
          L5_2 = L1_2.height
          L4_2 = -0.5 * L5_2
        else
          L5_2 = L2_2.boxSpawner
          L5_2 = L5_2.spawnEdge
          if L5_2 == "bottom" then
            L5_2 = L1_2.height
            L4_2 = 0.5 * L5_2
          else
            L5_2 = L2_2.boxSpawner
            L5_2 = L5_2.spawnEdge
            if L5_2 == "left" then
              L5_2 = L1_2.width
              L3_2 = -0.5 * L5_2
            else
              L5_2 = L2_2.boxSpawner
              L5_2 = L5_2.spawnEdge
              if L5_2 == "right" then
                L5_2 = L1_2.width
                L3_2 = 0.5 * L5_2
              end
            end
          end
        end
      end
      L5_2 = createObject
      L6_2 = gamelua
      L6_2 = L6_2.blockTable
      L7_2 = L2_2.boxSpawner
      L7_2 = L7_2.block
      L8_2 = nil
      L9_2 = L1_2.x
      L9_2 = L9_2 + L3_2
      L10_2 = L1_2.y
      L10_2 = L10_2 + L4_2
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L6_2 = A0_2.spawnList
      L6_2[L5_2] = true
    end
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = A0_2.spawnList
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = checkStillInWorld
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = gamelua
        L8_2 = L8_2.objects
        L8_2 = L8_2.world
        L8_2 = L8_2[L6_2]
        L9_2 = L2_2.boxSpawner
        L9_2 = L9_2.killEdges
        L9_2 = L9_2.top
        if L9_2 then
          L9_2 = L8_2.y
          L10_2 = L1_2.y
          L11_2 = L1_2.height
          L11_2 = L11_2 * 0.5
          L10_2 = L10_2 - L11_2
          if L9_2 < L10_2 then
            goto lbl_167
          end
        end
        L9_2 = L2_2.boxSpawner
        L9_2 = L9_2.killEdges
        L9_2 = L9_2.bottom
        if L9_2 then
          L9_2 = L8_2.y
          L10_2 = L1_2.y
          L11_2 = L1_2.height
          L11_2 = L11_2 * 0.5
          L10_2 = L10_2 + L11_2
          if L9_2 > L10_2 then
            goto lbl_167
          end
        end
        L9_2 = L2_2.boxSpawner
        L9_2 = L9_2.killEdges
        L9_2 = L9_2.left
        if L9_2 then
          L9_2 = L8_2.x
          L10_2 = L1_2.x
          L11_2 = L1_2.width
          L11_2 = L11_2 * 0.5
          L10_2 = L10_2 - L11_2
          if L9_2 < L10_2 then
            goto lbl_167
          end
        end
        L9_2 = L2_2.boxSpawner
        L9_2 = L9_2.killEdges
        L9_2 = L9_2.right
        if L9_2 then
          L9_2 = L8_2.x
          L10_2 = L1_2.x
          L11_2 = L1_2.width
          L11_2 = L11_2 * 0.5
          L10_2 = L10_2 + L11_2
          ::lbl_167::
          if L9_2 > L10_2 then
            L9_2 = addEventCall
            L10_2 = "destroy"
            L11_2 = {}
            L11_2.name = L6_2
            L11_2.ignoreGameplayActions = true
            L11_2.ignoreOnDestroyed = true
            L9_2(L10_2, L11_2)
          end
        end
      else
        L8_2 = A0_2.spawnList
        L8_2[L6_2] = nil
      end
    end
  end
end

L1_1.action = L2_1
updateBoxSpawner = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.other
      L3_2 = L3_2[L4_2]
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L4_2 = L4_2.blocks
      L5_2 = L3_2.definition
      L4_2 = L4_2[L5_2]
      L5_2 = L2_2.launchLightning
      L5_2 = L5_2.ignoreMaterials
      L6_2 = L4_2.material
      L5_2 = L5_2[L6_2]
      if not L5_2 then
        L5_2 = gamelua
        L5_2 = L5_2.g_levelTimer
        L6_2 = L1_2.lastLightningLaunchTime
        if not L6_2 then
          L6_2 = L2_2.launchLightning
          L6_2 = L6_2.minimumInterval
          L6_2 = -L6_2
        end
        L7_2 = L2_2.launchLightning
        L7_2 = L7_2.minimumInterval
        L6_2 = L6_2 + L7_2
        if L5_2 > L6_2 then
          L5_2 = gamelua
          L5_2 = L5_2.g_levelTimer
          L1_2.lastLightningLaunchTime = L5_2
          L5_2 = addEventCall
          L6_2 = "launchLightning"
          L7_2 = A0_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end

L1_1.action = L2_1
launchLightningOnCollision = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.other
      L3_2 = L3_2[L4_2]
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L4_2 = L4_2.blocks
      L5_2 = L3_2.definition
      L4_2 = L4_2[L5_2]
      L5_2 = L1_2.lightningLaunchedOnce
      if not L5_2 then
        L5_2 = L2_2.launchLightning
        L5_2 = L5_2.ignoreMaterials
        L6_2 = L4_2.material
        L5_2 = L5_2[L6_2]
        if not L5_2 then
          L1_2.lightningLaunchedOnce = true
          L5_2 = addEventCall
          L6_2 = "launchLightning"
          L7_2 = A0_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end

L1_1.action = L2_1
launchLightningOnCollisionOnce = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.other
      L3_2 = L3_2[L4_2]
      L4_2 = gamelua
      L4_2 = L4_2.vNormalize
      L5_2 = L3_2.x
      L6_2 = L1_2.x
      L5_2 = L5_2 - L6_2
      L6_2 = L3_2.y
      L7_2 = L1_2.y
      L6_2 = L6_2 - L7_2
      L4_2, L5_2 = L4_2(L5_2, L6_2)
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.atan2
      L7_2 = L4_2
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = -L6_2
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.pi
      L7_2 = L7_2 * 0.5
      L6_2 = L6_2 + L7_2
      L7_2 = createObject
      L8_2 = gamelua
      L8_2 = L8_2.blockTable
      L9_2 = L2_2.launchLightning
      L9_2 = L9_2.object
      L10_2 = nil
      L11_2 = L3_2.x
      L12_2 = L3_2.y
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L8_2 = gamelua
      L8_2 = L8_2.objects
      L8_2 = L8_2.world
      L8_2 = L8_2[L7_2]
      L8_2.sparkCount = 0
      L9_2 = setObjectParameter
      L10_2 = L7_2
      L11_2 = 21
      L12_2 = 6
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = setObjectParameter
      L10_2 = L7_2
      L11_2 = 16
      L12_2 = 1
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = setRotation
      L10_2 = L7_2
      L11_2 = L6_2
      L9_2(L10_2, L11_2)
      L9_2 = setCameraTarget
      L10_2 = L7_2
      L9_2(L10_2)
      L9_2 = {}
      L9_2.x = L4_2
      L9_2.y = L5_2
      L8_2.lightningDirection = L9_2
      L9_2 = L1_2.name
      L8_2.parentName = L9_2
      L9_2 = gamelua
      L9_2 = L9_2.blockTable
      L9_2 = L9_2.blocks
      L10_2 = L8_2.definition
      L9_2 = L9_2[L10_2]
      L10_2 = addEventCall
      L11_2 = "createForceLightningSpark"
      L12_2 = {}
      L13_2 = L1_2.name
      L12_2.parentName = L13_2
      L13_2 = L9_2.specialtySpark
      L12_2.defName = L13_2
      L13_2 = L3_2.x
      L12_2.x = L13_2
      L13_2 = L3_2.y
      L12_2.y = L13_2
      L13_2 = L8_2.sparkCount
      L12_2.sparkNumber = L13_2
      L10_2(L11_2, L12_2)
      L10_2 = setVelocity
      L11_2 = L8_2.name
      L12_2 = L2_2.launchLightning
      L12_2 = L12_2.initialVelocity
      L12_2 = L4_2 * L12_2
      L13_2 = L2_2.launchLightning
      L13_2 = L13_2.initialVelocity
      L13_2 = L5_2 * L13_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
end

L1_1.action = L2_1
launchLightning = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.handleActionTableOncePreventBirdCollision
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.isPreventBirdCollision
      L4_2 = A0_2.other
      L3_2 = L3_2(L4_2)
      if L3_2 then
        return
      end
    end
    L3_2 = L1_2.handleActionTableOnceDone
    if not L3_2 then
      L1_2.handleActionTableOnceDone = true
      L3_2 = gamelua
      L3_2 = L3_2.handleActionTable
      L4_2 = L2_2.actionTableOnce
      L5_2 = L1_2.name
      L3_2(L4_2, L5_2)
    end
  end
end

L1_1.action = L2_1
handleActionTableOnce = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = addUpdateCall
    L2_2 = "updateWindTunnel"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

L1_1.action = L2_1
windTunnelOnCreated = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.getAngle
    L4_2 = L1_2.name
    L3_2 = L3_2(L4_2)
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.cos
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.sin
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = L1_2.collideTable
    if L6_2 then
      L6_2 = _G
      L6_2 = L6_2.ipairs
      L7_2 = L1_2.collideTable
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = gamelua
        L11_2 = L11_2.blockTable
        L11_2 = L11_2.blocks
        L12_2 = L10_2.definition
        L11_2 = L11_2[L12_2]
        L12_2 = L2_2.windTunnel
        L12_2 = L12_2.force
        L12_2 = L4_2 * L12_2
        L13_2 = L2_2.windTunnel
        L13_2 = L13_2.force
        L13_2 = L5_2 * L13_2
        L14_2 = L11_2.controllable
        if L14_2 then
          L14_2 = L2_2.windTunnel
          L14_2 = L14_2.useGravityMultiplierForBirds
          if L14_2 then
            L14_2 = gamelua
            L14_2 = L14_2.objects
            L14_2 = L14_2.gravityForceMultiplier
            L14_2 = L12_2 * L14_2
            L15_2 = gamelua
            L15_2 = L15_2.objects
            L15_2 = L15_2.gravityForceMultiplier
            L13_2 = L13_2 * L15_2
            L12_2 = L14_2
          end
        end
        L14_2 = applyForce
        L15_2 = L10_2.name
        L16_2 = L12_2
        L17_2 = L13_2
        L18_2 = L10_2.x
        L19_2 = L10_2.y
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
end

L1_1.action = L2_1
updateWindTunnel = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2.birdCounter = 0
    L1_2 = addUpdateCall
    L2_2 = "updateBirdCounterSpawner"
    L3_2 = A0_2
    L4_2 = nil
    L5_2 = A0_2.name
    L6_2 = "_updateBirdCounterSpawner"
    L5_2 = L5_2 .. L6_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end

L1_1.action = L2_1
birdCounterSpawner = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.flyingBird
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.flyingBird
      L3_2 = L3_2.startNumber
      L4_2 = A0_2.birdCounter
      if L3_2 > L4_2 then
        L3_2 = gamelua
        L3_2 = L3_2.flyingBird
        L3_2 = L3_2.startNumber
        A0_2.birdCounter = L3_2
        L3_2 = L2_2.birdCounterSpawner
        L4_2 = A0_2.birdCounter
        L3_2 = L3_2[L4_2]
        if L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.handleActionTable
          L4_2 = L2_2.birdCounterSpawner
          L5_2 = A0_2.birdCounter
          L4_2 = L4_2[L5_2]
          L5_2 = L1_2.name
          L3_2(L4_2, L5_2)
        end
      end
    end
  else
    L1_2 = gamelua
    L1_2 = L1_2.removeUpdateCall
    L2_2 = A0_2.name
    L3_2 = "_updateBirdCounterSpawner"
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end

L1_1.action = L2_1
updateBirdCounterSpawner = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = addEventCall
    L4_2 = "updateTurret"
    L5_2 = A0_2
    L6_2 = L2_2.turret
    L6_2 = L6_2.firstRefreshTime
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = gamelua
    L3_2 = L3_2.keepLevelAlive
    L4_2 = L2_2.specialtyKeepLevelAliveTime
    L3_2(L4_2)
  end
end

L1_1.action = L2_1
createTurret = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = putParticles
    L4_2 = {}
    L5_2 = L1_2.name
    L4_2.objectName = L5_2
    L5_2 = L2_2.turret
    L5_2 = L5_2.refreshParticles
    L4_2.particles = L5_2
    L4_2.useAmountInDefinition = true
    L3_2(L4_2)
    L3_2 = {}
    L4_2 = 1
    L5_2 = _G
    L5_2 = L5_2.pairs
    L6_2 = gamelua
    L6_2 = L6_2.levelGoals
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L2_2.turret
      L10_2 = L10_2.ignoreTargetDefinitions
      L11_2 = L9_2.definition
      L10_2 = L10_2[L11_2]
      if not L10_2 then
        L3_2[L4_2] = L9_2
        L10_2 = L3_2[L4_2]
        L11_2 = gamelua
        L11_2 = L11_2.distance
        L12_2 = L1_2.x
        L13_2 = L1_2.y
        L14_2 = L9_2.x
        L15_2 = L9_2.y
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
        L10_2.distanceToTurret = L11_2
        L4_2 = L4_2 + 1
      end
    end
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.sort
    L6_2 = L3_2
    
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.distanceToTurret
      L3_3 = A1_3.distanceToTurret
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    
    L5_2(L6_2, L7_2)
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L2_2.turret
      L10_2 = L10_2.radius
      if L10_2 then
        L10_2 = L9_2.distanceToTurret
        L11_2 = L2_2.turret
        L11_2 = L11_2.radius
        if not (L10_2 < L11_2) then
          goto lbl_214
        end
      end
      L10_2 = gamelua
      L10_2 = L10_2.raycastToFirstObject
      L11_2 = L1_2
      L12_2 = L9_2.x
      L13_2 = L9_2.y
      L14_2 = L2_2.turret
      L14_2 = L14_2.ignoreMaterials
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      if L10_2 == L9_2 then
        L11_2 = addEventCall
        L12_2 = "useLazerShotSpecialty"
        L13_2 = {}
        L14_2 = L1_2.name
        L13_2.name = L14_2
        L14_2 = L9_2.x
        L13_2.xPos = L14_2
        L14_2 = L9_2.y
        L13_2.yPos = L14_2
        L11_2(L12_2, L13_2)
        L11_2 = addEventCall
        L12_2 = "addParticleLine"
        L13_2 = {}
        L14_2 = L1_2.x
        L13_2.x1 = L14_2
        L14_2 = L1_2.y
        L13_2.y1 = L14_2
        L14_2 = L9_2.x
        L13_2.x2 = L14_2
        L14_2 = L9_2.y
        L13_2.y2 = L14_2
        L14_2 = L2_2.turret
        L14_2 = L14_2.aimTrailParticlesGap
        L13_2.gap = L14_2
        L14_2 = L2_2.turret
        L14_2 = L14_2.aimTrailParticles
        L13_2.particleName = L14_2
        L14_2 = L2_2.turret
        L14_2 = L14_2.aimTrailEndParticles
        L13_2.endParticleName = L14_2
        L14_2 = L2_2.turret
        L14_2 = L14_2.aimTrailParticlesTime
        L13_2.totalTime = L14_2
        L14_2 = L2_2.turret
        L14_2 = L14_2.aimTrailParticlesOffset
        L13_2.offset = L14_2
        L11_2(L12_2, L13_2)
        L11_2 = gamelua
        L11_2 = L11_2.keepLevelAlive
        L12_2 = L2_2.specialtyKeepLevelAliveTime
        L11_2(L12_2)
        L11_2 = {}
        L12_2 = L9_2.x
        L11_2.x = L12_2
        L12_2 = L9_2.y
        L11_2.y = L12_2
        L1_2.lastShotPos = L11_2
        break
      end
      L11_2 = L9_2.radius
      if L11_2 then
        L11_2 = gamelua
        L11_2 = L11_2.getAngle
        L12_2 = L9_2.name
        L11_2 = L11_2(L12_2)
        L12_2 = _G
        L12_2 = L12_2.math
        L12_2 = L12_2.pi
        L12_2 = L12_2 * 0.5
        L11_2 = L11_2 - L12_2
        L12_2 = _G
        L12_2 = L12_2.math
        L12_2 = L12_2.cos
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = _G
        L13_2 = L13_2.math
        L13_2 = L13_2.sin
        L14_2 = L11_2
        L13_2 = L13_2(L14_2)
        L14_2 = L9_2.x
        L15_2 = L9_2.radius
        L15_2 = L12_2 * L15_2
        L15_2 = L15_2 * 0.99
        L14_2 = L14_2 + L15_2
        L15_2 = L9_2.y
        L16_2 = L9_2.radius
        L16_2 = L13_2 * L16_2
        L16_2 = L16_2 * 0.99
        L15_2 = L15_2 + L16_2
        L16_2 = gamelua
        L16_2 = L16_2.raycastToFirstObject
        L17_2 = L1_2
        L18_2 = L14_2
        L19_2 = L15_2
        L20_2 = L2_2.turret
        L20_2 = L20_2.ignoreMaterials
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
        if L16_2 == L9_2 then
          L17_2 = addEventCall
          L18_2 = "useLazerShotSpecialty"
          L19_2 = {}
          L20_2 = L1_2.name
          L19_2.name = L20_2
          L19_2.xPos = L14_2
          L19_2.yPos = L15_2
          L17_2(L18_2, L19_2)
          L17_2 = addEventCall
          L18_2 = "addParticleLine"
          L19_2 = {}
          L20_2 = L1_2.x
          L19_2.x1 = L20_2
          L20_2 = L1_2.y
          L19_2.y1 = L20_2
          L19_2.x2 = L14_2
          L19_2.y2 = L15_2
          L20_2 = L2_2.turret
          L20_2 = L20_2.aimTrailParticlesGap
          L19_2.gap = L20_2
          L20_2 = L2_2.turret
          L20_2 = L20_2.aimTrailParticles
          L19_2.particleName = L20_2
          L20_2 = L2_2.turret
          L20_2 = L20_2.aimTrailEndParticles
          L19_2.endParticleName = L20_2
          L20_2 = L2_2.turret
          L20_2 = L20_2.aimTrailParticlesTime
          L19_2.totalTime = L20_2
          L20_2 = L2_2.turret
          L20_2 = L20_2.aimTrailParticlesOffset
          L19_2.offset = L20_2
          L17_2(L18_2, L19_2)
          L17_2 = gamelua
          L17_2 = L17_2.keepLevelAlive
          L18_2 = L2_2.specialtyKeepLevelAliveTime
          L17_2(L18_2)
          L17_2 = {}
          L17_2.x = L14_2
          L17_2.y = L15_2
          L1_2.lastShotPos = L17_2
          break
        end
      end
      ::lbl_214::
    end
    L5_2 = addEventCall
    L6_2 = "updateTurret"
    L7_2 = A0_2
    L8_2 = L2_2.turret
    L8_2 = L8_2.refreshInterval
    L5_2(L6_2, L7_2, L8_2)
  end
end

L1_1.action = L2_1
updateTurret = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L1_2.stickyParent
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = L1_2.stickyParent
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L4_2 = L3_2.lastShotPos
        if L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.getAngle
          L5_2 = L1_2.name
          L4_2 = L4_2(L5_2)
          L5_2 = gamelua
          L5_2 = L5_2.vec2FromAngle
          L6_2 = L4_2
          L5_2, L6_2 = L5_2(L6_2)
          L7_2 = vNormalize
          L8_2 = L1_2.x
          L9_2 = L3_2.lastShotPos
          L9_2 = L9_2.x
          L8_2 = L8_2 - L9_2
          L9_2 = L1_2.y
          L10_2 = L3_2.lastShotPos
          L10_2 = L10_2.y
          L9_2 = L9_2 - L10_2
          L7_2, L8_2 = L7_2(L8_2, L9_2)
          L9_2 = gamelua
          L9_2 = L9_2.vec2AngleBetween
          L10_2 = L5_2
          L11_2 = L6_2
          L12_2 = L7_2
          L13_2 = L8_2
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
          L10_2 = A0_2.dt
          L11_2 = L2_2.rotateTurretGunSpeed
          L10_2 = L10_2 * L11_2
          L10_2 = L9_2 * L10_2
          L10_2 = L4_2 + L10_2
          L11_2 = setRotation
          L12_2 = L1_2.name
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
        end
      end
    end
    L3_2 = addEventCall
    L4_2 = "rotateTurretGun"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L1_1.action = L2_1
rotateTurretGun = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = gamelua
  L1_2 = L1_2.distance
  L2_2 = A0_2.x1
  L3_2 = A0_2.y1
  L4_2 = A0_2.x2
  L5_2 = A0_2.y2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 == 0 then
    return
  end
  L2_2 = A0_2.x2
  L3_2 = A0_2.x1
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 / L1_2
  L3_2 = A0_2.y2
  L4_2 = A0_2.y1
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 / L1_2
  L4_2 = A0_2.offset
  if not L4_2 then
    L4_2 = 0
  end
  L4_2 = L4_2 / L1_2
  while L4_2 < 1 do
    L5_2 = addEventCall
    L6_2 = "putParticlesToPos"
    L7_2 = {}
    L8_2 = A0_2.x1
    L9_2 = L4_2 * L2_2
    L9_2 = L9_2 * L1_2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L8_2 = A0_2.y1
    L9_2 = L4_2 * L3_2
    L9_2 = L9_2 * L1_2
    L8_2 = L8_2 + L9_2
    L7_2.y = L8_2
    L8_2 = A0_2.particleName
    L7_2.particles = L8_2
    L8_2 = A0_2.totalTime
    L8_2 = L4_2 * L8_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2.gap
    L5_2 = L5_2 / L1_2
    L4_2 = L4_2 + L5_2
  end
  L5_2 = A0_2.endParticleName
  if L5_2 then
    L5_2 = addEventCall
    L6_2 = "putParticlesToPos"
    L7_2 = {}
    L8_2 = A0_2.x1
    L9_2 = L2_2 * L1_2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L8_2 = A0_2.y1
    L9_2 = L3_2 * L1_2
    L8_2 = L8_2 + L9_2
    L7_2.y = L8_2
    L8_2 = A0_2.endParticleName
    L7_2.particles = L8_2
    L8_2 = A0_2.totalTime
    L5_2(L6_2, L7_2, L8_2)
  end
end

L1_1.action = L2_1
addParticleLine = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.target
    if not L3_2 then
      L3_2 = {}
      L4_2 = gamelua
      L4_2 = L4_2.g_autoReticle
      L4_2 = L4_2.x
      L3_2.x = L4_2
      L4_2 = gamelua
      L4_2 = L4_2.g_autoReticle
      L4_2 = L4_2.y
      L3_2.y = L4_2
    end
    A0_2.target = L3_2
    L3_2 = vNormalize
    L4_2 = A0_2.target
    L4_2 = L4_2.x
    L5_2 = L1_2.x
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.target
    L5_2 = L5_2.y
    L6_2 = L1_2.y
    L5_2 = L5_2 - L6_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L5_2 = applyForce
    L6_2 = A0_2.name
    L7_2 = L2_2.homingForce
    L7_2 = L3_2 * L7_2
    L8_2 = L2_2.homingForce
    L8_2 = L4_2 * L8_2
    L9_2 = L1_2.x
    L10_2 = L1_2.y
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = addEventCall
    L6_2 = "homingTowardsReticle"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  end
end

L1_1.action = L2_1
homingTowardsReticle = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L1_2.collideTable
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.ipairs
      L4_2 = L1_2.collideTable
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = vNormalize
        L9_2 = L1_2.x
        L10_2 = L7_2.x
        L9_2 = L9_2 - L10_2
        L10_2 = L1_2.y
        L11_2 = L7_2.y
        L10_2 = L10_2 - L11_2
        L8_2, L9_2 = L8_2(L9_2, L10_2)
        L10_2 = -L9_2
        L11_2 = L8_2
        L12_2 = L2_2.vortexClockwise
        if L12_2 then
          L12_2 = L9_2
          L11_2 = -L8_2
          L10_2 = L12_2
        end
        L12_2 = applyForce
        L13_2 = L7_2.name
        L14_2 = L2_2.vortexForce
        L14_2 = L10_2 * L14_2
        L15_2 = L2_2.vortexPullForce
        L15_2 = L8_2 * L15_2
        L14_2 = L14_2 + L15_2
        L15_2 = L2_2.vortexForce
        L15_2 = L11_2 * L15_2
        L16_2 = L2_2.vortexPullForce
        L16_2 = L9_2 * L16_2
        L15_2 = L15_2 + L16_2
        L16_2 = L7_2.x
        L17_2 = L7_2.y
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      end
    end
    L3_2 = addEventCall
    L4_2 = "createVortex"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L1_1.action = L2_1
createVortex = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.gravityFilterCategory = "NORMAL_OBJECT"
    L2_2 = addEventCall
    L3_2 = "resetObjectGravityFilter"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

L1_1.action = L2_1
resetObjectGravityFilter = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.abs
    L4_2 = getAngularVelocity
    L5_2 = A0_2.name
    L4_2, L5_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L2_2.switchSpriteAngularVel
    L4_2 = L4_2.minVel
    if L3_2 > L4_2 then
      L3_2 = setSprite
      L4_2 = A0_2.name
      L5_2 = L2_2.switchSpriteAngularVel
      L5_2 = L5_2.sprite
      L3_2(L4_2, L5_2)
    else
      L3_2 = setSprite
      L4_2 = A0_2.name
      L5_2 = L2_2.sprite
      L3_2(L4_2, L5_2)
    end
    L3_2 = addEventCall
    L4_2 = "switchSpriteAngularVel"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L1_1.action = L2_1
switchSpriteAngularVel = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.spawner
    L3_2 = L3_2.startInterval
    L3_2 = L3_2[1]
    L4_2 = L2_2.spawner
    L4_2 = L4_2.startInterval
    L4_2 = L4_2[2]
    L5_2 = L2_2.spawner
    L5_2 = L5_2.startInterval
    L5_2 = L5_2[1]
    L4_2 = L4_2 - L5_2
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.random
    L5_2 = L5_2()
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2 + L4_2
    A0_2.interval = L3_2
    L3_2 = addUpdateCall
    L4_2 = "spawnerUpdate"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L1_1.action = L2_1
startSpawner = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = A0_2.interval
    if not L3_2 then
      L3_2 = L2_2.spawner
      L3_2 = L3_2.interval
      L3_2 = L3_2[1]
      L4_2 = L2_2.spawner
      L4_2 = L4_2.interval
      L4_2 = L4_2[2]
      L5_2 = L2_2.spawner
      L5_2 = L5_2.interval
      L5_2 = L5_2[1]
      L4_2 = L4_2 - L5_2
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.random
      L5_2 = L5_2()
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 + L4_2
    end
    A0_2.interval = L3_2
    L3_2 = A0_2.timer
    L4_2 = A0_2.interval
    if L3_2 > L4_2 then
      A0_2.timer = nil
      A0_2.interval = nil
      L3_2 = L1_2.x
      L4_2 = L1_2.y
      L5_2 = L2_2.type
      if L5_2 == "box" then
        L5_2 = L1_2.x
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.random
        L6_2 = L6_2()
        L6_2 = L6_2 - 0.5
        L7_2 = L1_2.width
        L6_2 = L6_2 * L7_2
        L3_2 = L5_2 + L6_2
        L5_2 = L1_2.y
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.random
        L6_2 = L6_2()
        L6_2 = L6_2 - 0.5
        L7_2 = L1_2.height
        L6_2 = L6_2 * L7_2
        L4_2 = L5_2 + L6_2
      end
      L5_2 = addEventCall
      L6_2 = "createObjectAction"
      L7_2 = {}
      L8_2 = L2_2.spawner
      L8_2 = L8_2.definition
      L7_2.definition = L8_2
      L7_2.posX = L3_2
      L7_2.posY = L4_2
      L8_2 = gamelua
      L8_2 = L8_2.getAngle
      L9_2 = L1_2.name
      L8_2 = L8_2(L9_2)
      L7_2.angle = L8_2
      L8_2 = L2_2.spawner
      L8_2 = L8_2.velX
      L8_2 = L8_2[1]
      L9_2 = L2_2.spawner
      L9_2 = L9_2.velX
      L9_2 = L9_2[2]
      L10_2 = L2_2.spawner
      L10_2 = L10_2.velX
      L10_2 = L10_2[1]
      L9_2 = L9_2 - L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.random
      L10_2 = L10_2()
      L9_2 = L9_2 * L10_2
      L8_2 = L8_2 + L9_2
      L7_2.velX = L8_2
      L8_2 = L2_2.spawner
      L8_2 = L8_2.velY
      L8_2 = L8_2[1]
      L9_2 = L2_2.spawner
      L9_2 = L9_2.velY
      L9_2 = L9_2[2]
      L10_2 = L2_2.spawner
      L10_2 = L10_2.velY
      L10_2 = L10_2[1]
      L9_2 = L9_2 - L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.random
      L10_2 = L10_2()
      L9_2 = L9_2 * L10_2
      L8_2 = L8_2 + L9_2
      L7_2.velY = L8_2
      L8_2 = L2_2.spawner
      L8_2 = L8_2.velA
      L8_2 = L8_2[1]
      L9_2 = L2_2.spawner
      L9_2 = L9_2.velA
      L9_2 = L9_2[2]
      L10_2 = L2_2.spawner
      L10_2 = L10_2.velA
      L10_2 = L10_2[1]
      L9_2 = L9_2 - L10_2
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.random
      L10_2 = L10_2()
      L9_2 = L9_2 * L10_2
      L8_2 = L8_2 + L9_2
      L7_2.angularVelocity = L8_2
      L5_2(L6_2, L7_2)
      L5_2 = L2_2.spawner
      L5_2 = L5_2.particles
      if L5_2 then
        L5_2 = _G
        L5_2 = L5_2.ipairs
        L6_2 = L2_2.spawner
        L6_2 = L6_2.particles
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        for L8_2, L9_2 in L5_2, L6_2, L7_2 do
          L10_2 = putParticles
          L11_2 = {}
          L11_2.x = L3_2
          L11_2.y = L4_2
          L11_2.particles = L9_2
          L11_2.useAmountInDefinition = true
          L10_2(L11_2)
        end
      end
    end
  end
end

L1_1.action = L2_1
spawnerUpdate = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = addEventCall
      L2_2 = "lavaDestroy"
      L3_2 = A0_2
      L4_2 = 3.1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end

L1_1.action = L2_1
lavaDestroyWithDelay = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.world
      L3_2 = A0_2.other
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.inSlowDownField
      if L3_2 then
        L3_2 = addEventCall
        L4_2 = "fireDestroy"
        L5_2 = {}
        L6_2 = A0_2.other
        L5_2.name = L6_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L1_1.action = L2_1
lavaDestroy = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L1_2.trailAlpha = 0
  end
end

L1_1.action = L2_1
createTrailVisualization = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = -1
    L4_2 = 0
    L5_2 = L2_2.trailFadeTime
    L6_2 = L2_2.trailFadeTime
    if L6_2 < 0 then
      L3_2 = 1
      L4_2 = -1
      L6_2 = L2_2.trailFadeTime
      L5_2 = -L6_2
    end
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.min
    L7_2 = 1
    L8_2 = A0_2.timer
    L8_2 = L8_2 / L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2 * L3_2
    L6_2 = L4_2 + L6_2
    L1_2.trailAlpha = L6_2
    L6_2 = addEventCall
    L7_2 = "fadeTrailVisualization"
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
  end
end

L1_1.action = L2_1
fadeTrailVisualization = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L1_2 = gamelua
  L1_2 = L1_2.blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.definition
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.physicsToScreenTransform
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = gamelua
  L4_2 = L4_2.getAngle
  L5_2 = A0_2.name
  L4_2 = L4_2(L5_2)
  L5_2 = gamelua
  L5_2 = L5_2.worldScale
  L6_2 = L1_2.scale
  L5_2 = L5_2 * L6_2
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.cos
  L7_2 = L1_2.trail
  L7_2 = L7_2.angle
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.pi
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 / 180
  L7_2 = L4_2 + L7_2
  L6_2 = L6_2(L7_2)
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.sin
  L8_2 = L1_2.trail
  L8_2 = L8_2.angle
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.pi
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 / 180
  L8_2 = L4_2 + L8_2
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2.trailDistance
  if not L8_2 then
    L8_2 = L1_2.trail
    L8_2 = L8_2.distance
  end
  L9_2 = gamelua
  L9_2 = L9_2.worldScale
  L9_2 = L8_2 * L9_2
  L10_2 = gamelua
  L10_2 = L10_2.physicsScale
  L9_2 = L9_2 / L10_2
  L10_2 = _G
  L10_2 = L10_2.res
  L10_2 = L10_2.getSpritePivot
  L11_2 = L1_2.sprite
  L10_2, L11_2 = L10_2(L11_2)
  L12_2 = 0
  L13_2 = 1
  L14_2 = L1_2.trail
  L14_2 = L14_2.gap
  L14_2 = L14_2 / L8_2
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L6_2 * L15_2
    L16_2 = L16_2 * L9_2
    L16_2 = L2_2 + L16_2
    L17_2 = L7_2 * L15_2
    L17_2 = L17_2 * L9_2
    L17_2 = L3_2 + L17_2
    L18_2 = _G
    L18_2 = L18_2.math
    L18_2 = L18_2.max
    L19_2 = 0
    L20_2 = _G
    L20_2 = L20_2.math
    L20_2 = L20_2.pow
    L21_2 = 1 - L15_2
    L22_2 = L1_2.trail
    L22_2 = L22_2.pow
    if not L22_2 then
      L22_2 = 1
    end
    L20_2 = L20_2(L21_2, L22_2)
    L21_2 = A0_2.trailAlpha
    L20_2 = L20_2 + L21_2
    L18_2 = L18_2(L19_2, L20_2)
    L19_2 = gamelua
    L19_2 = L19_2.setRenderState
    L20_2 = L16_2 / L5_2
    L21_2 = L17_2 / L5_2
    L22_2 = L5_2
    L23_2 = L5_2
    L24_2 = L4_2
    L25_2 = L10_2
    L26_2 = L11_2
    L27_2 = L18_2
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L19_2 = _G
    L19_2 = L19_2.res
    L19_2 = L19_2.drawSprite
    L20_2 = L1_2.sprite
    L21_2 = 0
    L22_2 = 0
    L19_2(L20_2, L21_2, L22_2)
  end
end

drawTrailVisualization = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L1_2.defence = 100000
    L3_2 = addEventCall
    L4_2 = "setDefaultDefence"
    L5_2 = A0_2
    L6_2 = L2_2.keepIndestructibleTime
    L3_2(L4_2, L5_2, L6_2)
  end
end

L1_1.action = L2_1
keepIndestructible = L1_1
L1_1 = {}
L2_1 = {}
L2_1.timer = 0
L1_1.params = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2.defence
    L1_2.defence = L3_2
  end
end

L1_1.action = L2_1
setDefaultDefence = L1_1
