local L0_1, L1_1

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
  L0_2 = L0_2.addPuffToTrajectory
  addPuffToTrajectory = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.vNormalize
  vNormalize = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.physicsToWorldTransform
  physicsToWorldTransform = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.makeExplosion
  makeExplosion = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.setCameraTarget
  setCameraTarget = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.vLength
  vLength = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.setObjectParameter
  setObjectParameter = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.putParticles
  putParticles = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.print
  print = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.assert
  assert = L0_2
end

Initialize = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
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
  if L1_2 ~= nil and L2_2 ~= nil then
    L3_2 = L2_2.sensorType
    if L3_2 == "gravitation" then
      L3_2 = L2_2.isWater
      if not L3_2 then
        L3_2 = L1_2.numGravitationAreas
        if L3_2 == nil then
          L1_2.enteredGravitationArea = false
        else
          L3_2 = L1_2.numGravitationAreas
          L3_2 = L3_2 - 1
          L1_2.numGravitationAreas = L3_2
          L3_2 = L1_2.numGravitationAreas
          if L3_2 == 0 then
            L1_2.numGravitationAreas = nil
            L1_2.enteredGravitationArea = false
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
birdExitGravitationArea = L0_1
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
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L3_2 = A0_2.other
  L2_2 = L2_2[L3_2]
  if L1_2 ~= nil and L2_2 ~= nil then
    L3_2 = L2_2.sensorType
    if L3_2 == "gravitation" then
      L3_2 = L2_2.isWater
      if not L3_2 then
        L3_2 = L1_2.enteredGravitationArea
        if not L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.flyingBird
          if L3_2 ~= nil then
            L3_2 = L1_2.name
            L4_2 = gamelua
            L4_2 = L4_2.flyingBird
            L4_2 = L4_2.name
            if L3_2 == L4_2 then
              L3_2 = gamelua
              L3_2 = L3_2.flyingBird
              L3_2 = L3_2.startCheckingGravityTriggers
              if L3_2 then
                L3_2 = gamelua
                L3_2 = L3_2.blockTable
                L3_2 = L3_2.blocks
                L4_2 = L1_2.definition
                L3_2 = L3_2[L4_2]
                L3_2 = L3_2.enterGravitationParticles
                L4_2 = putParticles
                L5_2 = {}
                L6_2 = A0_2.name
                L5_2.objectName = L6_2
                L5_2.particles = L3_2
                L5_2.amount = 10
                L4_2(L5_2)
                L4_2 = playAudio
                L5_2 = "enter_atmosphere"
                L4_2(L5_2)
                L1_2.startedOutsideAtmosphere = true
              end
            end
          end
          L1_2.numGravitationAreas = 1
          L1_2.enteredGravitationArea = true
        else
          L3_2 = L1_2.numGravitationAreas
          if L3_2 == nil then
            L1_2.numGravitationAreas = 2
          else
            L3_2 = L1_2.numGravitationAreas
            L3_2 = L3_2 + 1
            L1_2.numGravitationAreas = L3_2
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
birdEnteredGraviationArea = L0_1
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
  if L1_2 ~= nil then
    L2_2 = L1_2.shot
    if L2_2 then
      L2_2 = L1_2.hasCollided
      if L2_2 then
        L2_2 = L1_2.alwaysTrailParticles
        L2_2 = not L2_2
        if L2_2 then
          goto lbl_82
        end
      end
      L2_2 = ""
      L3_2 = L1_2.startCheckingGravityTriggers
      if L3_2 == nil then
        L1_2.startCheckingGravityTriggers = true
      end
      L3_2 = L1_2.ignoreTrailParticles
      if L3_2 then
        return
      end
      L3_2 = L1_2.enteredGravitationArea
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.blockTable
        L3_2 = L3_2.blocks
        L4_2 = L1_2.definition
        L3_2 = L3_2[L4_2]
        L2_2 = L3_2.atmosphereTailParticles
      else
        L3_2 = gamelua
        L3_2 = L3_2.blockTable
        L3_2 = L3_2.blocks
        L4_2 = L1_2.definition
        L3_2 = L3_2[L4_2]
        L2_2 = L3_2.normalTailParticles
      end
      if L2_2 ~= nil then
        L3_2 = gamelua
        L3_2 = L3_2.particleTable
        L3_2 = L3_2.particles
        L3_2 = L3_2[L2_2]
        L3_2 = L3_2.amount
        if L3_2 == nil then
          L3_2 = 1
        end
        L4_2 = 0.016666668
        L5_2 = A0_2.leftOverTime
        if L5_2 then
          L5_2 = A0_2.leftOverTime
          L6_2 = A0_2.dt
          L5_2 = L5_2 + L6_2
          if L5_2 then
            goto lbl_63
          end
        end
        L5_2 = A0_2.dt
        ::lbl_63::
        A0_2.leftOverTime = L5_2
        while true do
          L5_2 = A0_2.leftOverTime
          if not (L4_2 <= L5_2) then
            break
          end
          L5_2 = A0_2.leftOverTime
          L5_2 = L5_2 - L4_2
          A0_2.leftOverTime = L5_2
          L5_2 = putParticles
          L6_2 = {}
          L7_2 = A0_2.name
          L6_2.objectName = L7_2
          L6_2.particles = L2_2
          L6_2.amount = L3_2
          L5_2(L6_2)
        end
      end
      L3_2 = addEventCall
      L4_2 = "birdTailParticlesUpdate"
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
    end
  end
  ::lbl_82::
end

L0_1.action = L1_1
birdTailParticlesUpdate = L0_1
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
  L3_2 = A0_2.overrideDef
  if L3_2 then
    L2_2 = A0_2.overrideDef
  end
  L1_2.yodaSpinDirection = 1
  L1_2.rotateWhileFlyingDisabled = true
  L3_2 = L1_2.name
  L4_2 = "_yodaSword"
  L3_2 = L3_2 .. L4_2
  L1_2.yodaSwordName = L3_2
  L1_2.ignoreCollisionSprite = true
  L3_2 = A0_2.overrideDef
  L1_2.overrideDef = L3_2
  L3_2 = L2_2.specialtySpinSprite
  if L3_2 then
    L3_2 = setSprite
    L4_2 = L1_2.name
    L5_2 = L2_2.specialtySpinSprite
    L3_2(L4_2, L5_2)
  end
  L3_2 = addEventCall
  L4_2 = "useSwordSpecialty"
  L5_2 = {}
  L6_2 = A0_2.name
  L5_2.name = L6_2
  L6_2 = L2_2.specialtySword
  L5_2.swordName = L6_2
  L6_2 = L1_2.yodaSwordName
  L5_2.objectName = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = addUpdateCall
  L4_2 = "updateYoda"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.specialtyShadowCharacterMaterials
  if L3_2 then
    L3_2 = addEventCall
    L4_2 = "activateShadowAbility"
    L5_2 = {}
    L6_2 = A0_2.name
    L5_2.name = L6_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.action = L1_1
useYodaSpecialty = L0_1
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
    L2_2 = L1_2.hasStoppedSpinning
    if not L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.overrideDef
      if L3_2 then
        L2_2 = A0_2.overrideDef
      end
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = L1_2.yodaSwordName
      L3_2 = L3_2[L4_2]
      L4_2 = 1
      if L3_2 then
        L1_2.delayedRemovalTimer = nil
        L5_2 = gamelua
        L5_2 = L5_2.native_setTimeSinceCollision
        L6_2 = L1_2.name
        L7_2 = -1
        L5_2(L6_2, L7_2)
        L1_2.isReadyForRemoveTimer = 2
        L5_2 = gamelua
        L5_2.g_scoreAddedTime = 6
      else
        L5_2 = L2_2.specialtyExplodeAfterSpin
        if L5_2 then
          L5_2 = addEventCall
          L6_2 = "droidekaStop"
          L7_2 = A0_2
          L5_2(L6_2, L7_2)
        end
        L1_2.ignoreCollisionSprite = false
        L5_2 = setSprite
        L6_2 = L1_2.name
        L7_2 = L2_2.sprites
        L7_2 = L7_2.flying
        L5_2(L6_2, L7_2)
        L5_2 = A0_2.timer
        if not L5_2 then
          L5_2 = 0
        end
        L6_2 = A0_2.dt
        L5_2 = L5_2 + L6_2
        A0_2.timer = L5_2
        L5_2 = _G
        L5_2 = L5_2.math
        L5_2 = L5_2.max
        L6_2 = 0
        L7_2 = A0_2.timer
        L8_2 = L2_2.specialtySlowDownRotationTime
        L7_2 = L7_2 / L8_2
        L7_2 = 1 - L7_2
        L5_2 = L5_2(L6_2, L7_2)
        L4_2 = L5_2
        L4_2 = L4_2 * L4_2
        if L4_2 == 0 then
          L1_2.hasStoppedSpinning = true
        end
        L5_2 = L2_2.specialtyShadowCharacterMaterials
        if L5_2 then
          L5_2 = A0_2.shadowAbilityRemoved
          if not L5_2 then
            A0_2.shadowAbilityRemoved = true
            L5_2 = addEventCall
            L6_2 = "removeShadowAbility"
            L7_2 = {}
            L8_2 = A0_2.name
            L7_2.name = L8_2
            L5_2(L6_2, L7_2)
          end
        end
      end
      L5_2 = gamelua
      L5_2 = L5_2.getAngle
      L6_2 = L1_2.name
      L5_2 = L5_2(L6_2)
      L6_2 = L2_2.specialtySpriteMaxRotationSpeed
      L7_2 = L1_2.yodaSpinDirection
      L6_2 = L6_2 * L7_2
      L6_2 = L6_2 * L4_2
      L7_2 = A0_2.dt
      L6_2 = L6_2 * L7_2
      L6_2 = L5_2 + L6_2
      L7_2 = setRotation
      L8_2 = L1_2.name
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end

L0_1.action = L1_1
updateYoda = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
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
  L3_2 = L1_2.overrideDef
  if L3_2 then
    L2_2 = L1_2.overrideDef
  end
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = L1_2.yodaSwordName
  L3_2 = L3_2[L4_2]
  L4_2 = gamelua
  L4_2 = L4_2.objects
  L4_2 = L4_2.world
  L5_2 = A0_2.other
  L4_2 = L4_2[L5_2]
  if L3_2 then
    L5_2 = L2_2.ignoreCollisionFromDefs
    if L5_2 then
      L5_2 = L2_2.ignoreCollisionFromDefs
      L6_2 = L4_2.definition
      L5_2 = L5_2[L6_2]
      if L5_2 then
        return
      end
    end
    L5_2 = gamelua
    L5_2 = L5_2.getLinearVelocity
    L6_2 = L1_2.name
    L5_2, L6_2 = L5_2(L6_2)
    L7_2 = A0_2.collisionNormalX
    L8_2 = A0_2.collisionNormalY
    L9_2 = gamelua
    L9_2 = L9_2.vec2Rotate
    L10_2 = L5_2
    L11_2 = L6_2
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.pi
    L12_2 = L12_2 * 0.5
    L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
    L11_2 = gamelua
    L11_2 = L11_2.dotProduct
    L12_2 = L9_2
    L13_2 = L10_2
    L14_2 = -L7_2
    L15_2 = -L8_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    if L11_2 < 0 then
      L1_2.yodaSpinDirection = -1
      L3_2.swordSpinDirection = -1
    else
      L1_2.yodaSpinDirection = 1
      L3_2.swordSpinDirection = 1
    end
    L12_2 = L2_2.specialtyBounceSpeed
    L13_2 = gamelua
    L13_2 = L13_2.vNormalize
    L14_2 = -L5_2
    L15_2 = -L6_2
    L13_2, L14_2 = L13_2(L14_2, L15_2)
    L15_2 = gamelua
    L15_2 = L15_2.dotProduct
    L16_2 = L13_2
    L17_2 = L14_2
    L18_2 = L7_2
    L19_2 = L8_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
    L16_2 = 2 * L15_2
    L16_2 = L16_2 * L7_2
    L16_2 = L16_2 - L13_2
    L17_2 = 2 * L15_2
    L17_2 = L17_2 * L8_2
    L17_2 = L17_2 - L14_2
    L18_2 = setVelocity
    L19_2 = L1_2.name
    L20_2 = L16_2 * L12_2
    L21_2 = L17_2 * L12_2
    L18_2(L19_2, L20_2, L21_2)
    L18_2 = _G
    L18_2 = L18_2.math
    L18_2 = L18_2.atan2
    L19_2 = L8_2
    L20_2 = L7_2
    L18_2 = L18_2(L19_2, L20_2)
    L18_2 = L18_2 * 180
    L19_2 = _G
    L19_2 = L19_2.math
    L19_2 = L19_2.pi
    L18_2 = L18_2 / L19_2
    L19_2 = applyImpulse
    L20_2 = L4_2.name
    L21_2 = -L7_2
    L22_2 = L2_2.specialtyKickImpulseToWall
    L21_2 = L21_2 * L22_2
    L22_2 = -L8_2
    L23_2 = L2_2.specialtyKickImpulseToWall
    L22_2 = L22_2 * L23_2
    L23_2 = A0_2.collisionPointX
    L24_2 = A0_2.collisionPointY
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
    L19_2 = putParticles
    L20_2 = {}
    L21_2 = A0_2.collisionPointX
    L20_2.x = L21_2
    L21_2 = A0_2.collisionPointY
    L20_2.y = L21_2
    L21_2 = L2_2.specialtyBounceParticles
    L20_2.particles = L21_2
    L21_2 = L2_2.specialtyBounceParticlesAmount
    L20_2.amount = L21_2
    L21_2 = L2_2.specialtyBounceParticlesSpread
    L21_2 = L21_2 * 0.5
    L21_2 = L18_2 - L21_2
    L20_2.minAngleEmitter = L21_2
    L21_2 = L2_2.specialtyBounceParticlesSpread
    L21_2 = L21_2 * 0.5
    L21_2 = L18_2 + L21_2
    L20_2.maxAngleEmitter = L21_2
    L19_2(L20_2)
  else
    L1_2.yodaSpinDirection = 0
  end
end

L0_1.action = L1_1
yodaOnCollisionEnter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
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
  L5_2 = L1_2.accelerationDirection
  if L5_2 then
    L5_2 = L1_2.sabineSpawnCount
    if not L5_2 then
      L1_2.sabineSpawnCount = 0
      L1_2.ignoreCollisionSprite = true
      L5_2 = setSprite
      L6_2 = L1_2.name
      L7_2 = L2_2.sprites
      L7_2 = L7_2.flying
      L5_2(L6_2, L7_2)
      L5_2 = addEventCall
      L6_2 = "enableGravity"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
      L5_2 = addEventCall
      L6_2 = "stopAccelerating"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
      L5_2 = addEventCall
      L6_2 = "rotateWhileFlyingAction"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
      L5_2 = addEventCall
      L6_2 = "sabineKeepLevelAlive"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
      L5_2 = gamelua
      L5_2 = L5_2.fireAction
      L6_2 = "removeStickyBlocks"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = L1_2.sabineSpawnCount
  if not L5_2 then
    L5_2 = addEventCall
    L6_2 = "playCollisionSound"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
    L5_2 = addEventCall
    L6_2 = "addCollisionBuff"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = L2_2.specialtyStopSpawningMaterials
  L6_2 = L4_2.material
  L5_2 = L5_2[L6_2]
  if not L5_2 then
    L5_2 = L2_2.specialtyStopSpawningDefinitions
    L6_2 = L3_2.definition
    L5_2 = L5_2[L6_2]
    if not L5_2 then
      goto lbl_89
    end
  end
  L1_2.sabineSpawnCount = nil
  L1_2.ignoreCollisionSprite = nil
  L5_2 = addEventCall
  L6_2 = "stopSpawningLoopingParticles"
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = addEventCall
  L6_2 = "disableRotateWhileFlyingAction"
  L7_2 = A0_2
  L8_2 = 0.1
  L5_2(L6_2, L7_2, L8_2)
  do return end
  ::lbl_89::
  L5_2 = gamelua
  L5_2 = L5_2.getLinearVelocity
  L6_2 = L1_2.name
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = A0_2.collisionNormalX
  L8_2 = A0_2.collisionNormalY
  L9_2 = L2_2.specialtyBounceSpeed
  L10_2 = gamelua
  L10_2 = L10_2.vNormalize
  L11_2 = -L5_2
  L12_2 = -L6_2
  L10_2, L11_2 = L10_2(L11_2, L12_2)
  L12_2 = gamelua
  L12_2 = L12_2.dotProduct
  L13_2 = L10_2
  L14_2 = L11_2
  L15_2 = L7_2
  L16_2 = L8_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = 2 * L12_2
  L13_2 = L13_2 * L7_2
  L13_2 = L13_2 - L10_2
  L14_2 = 2 * L12_2
  L14_2 = L14_2 * L8_2
  L14_2 = L14_2 - L11_2
  L15_2 = setVelocity
  L16_2 = L1_2.name
  L17_2 = L13_2 * L9_2
  L18_2 = L14_2 * L9_2
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.atan2
  L16_2 = L8_2
  L17_2 = L7_2
  L15_2 = L15_2(L16_2, L17_2)
  L15_2 = L15_2 * 180
  L16_2 = _G
  L16_2 = L16_2.math
  L16_2 = L16_2.pi
  L15_2 = L15_2 / L16_2
  L16_2 = applyImpulse
  L17_2 = L3_2.name
  L18_2 = -L7_2
  L19_2 = L2_2.specialtyKickImpulseToWall
  L18_2 = L18_2 * L19_2
  L19_2 = -L8_2
  L20_2 = L2_2.specialtyKickImpulseToWall
  L19_2 = L19_2 * L20_2
  L20_2 = A0_2.collisionPointX
  L21_2 = A0_2.collisionPointY
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
  L16_2 = putParticles
  L17_2 = {}
  L18_2 = A0_2.collisionPointX
  L17_2.x = L18_2
  L18_2 = A0_2.collisionPointY
  L17_2.y = L18_2
  L18_2 = L2_2.specialtyBounceParticles
  L17_2.particles = L18_2
  L18_2 = L2_2.specialtyBounceParticlesAmount
  L17_2.amount = L18_2
  L18_2 = L2_2.specialtyBounceParticlesSpread
  L18_2 = L18_2 * 0.5
  L18_2 = L15_2 - L18_2
  L17_2.minAngleEmitter = L18_2
  L18_2 = L2_2.specialtyBounceParticlesSpread
  L18_2 = L18_2 * 0.5
  L18_2 = L15_2 + L18_2
  L17_2.maxAngleEmitter = L18_2
  L16_2(L17_2)
  L16_2 = false
  L17_2 = L2_2.specialtySpawnObject
  if L17_2 then
    L17_2 = L1_2.lastSpecialtySpawn
    if L17_2 then
      L17_2 = gamelua
      L17_2 = L17_2.g_levelTimer
      L18_2 = L1_2.lastSpecialtySpawn
      L19_2 = L2_2.specialtySpawnObjectMinInterval
      L18_2 = L18_2 + L19_2
      if not (L17_2 >= L18_2) then
        goto lbl_239
      end
    end
    L16_2 = true
    L17_2 = L1_2.sabineSpawnCount
    L17_2 = L17_2 + 1
    L1_2.sabineSpawnCount = L17_2
    L17_2 = L2_2.specialtySpawnObject
    L18_2 = L1_2.sabineSpawnCount
    L17_2 = L17_2[L18_2]
    L18_2 = gamelua
    L18_2 = L18_2.g_levelTimer
    L1_2.lastSpecialtySpawn = L18_2
    L18_2 = gamelua
    L18_2 = L18_2.blockTable
    L18_2 = L18_2.blocks
    L18_2 = L18_2[L17_2]
    L18_2 = L18_2.radius
    L19_2 = addEventCall
    L20_2 = "createObjectAction"
    L21_2 = {}
    L21_2.definition = L17_2
    L22_2 = A0_2.collisionPointX
    L23_2 = L2_2.specialtySpawnObjectOffset
    L23_2 = L7_2 * L23_2
    L22_2 = L22_2 + L23_2
    L21_2.posX = L22_2
    L22_2 = A0_2.collisionPointY
    L23_2 = L2_2.specialtySpawnObjectOffset
    L23_2 = L8_2 * L23_2
    L22_2 = L22_2 + L23_2
    L21_2.posY = L22_2
    L22_2 = _G
    L22_2 = L22_2.math
    L22_2 = L22_2.atan2
    L23_2 = L8_2
    L24_2 = L7_2
    L22_2 = L22_2(L23_2, L24_2)
    L21_2.angle = L22_2
    L22_2 = A0_2.collisionNormalX
    L22_2 = -L22_2
    L23_2 = L2_2.specialtySpawnObjectVelocity
    L22_2 = L22_2 * L23_2
    L21_2.velX = L22_2
    L22_2 = A0_2.collisionNormalY
    L22_2 = -L22_2
    L23_2 = L2_2.specialtySpawnObjectVelocity
    L22_2 = L22_2 * L23_2
    L21_2.velY = L22_2
    L22_2 = {}
    L22_2.name = "createWeldJointToName"
    L23_2 = {}
    L24_2 = A0_2.other
    L23_2.other = L24_2
    L22_2.params = L23_2
    L21_2.postAction = L22_2
    L19_2(L20_2, L21_2)
    L19_2 = L2_2.specialtySpawnBlockBulletTime
    if L19_2 then
      L19_2 = addEventCall
      L20_2 = "activateBulletTimeAction"
      L21_2 = {}
      L22_2 = L1_2.name
      L21_2.name = L22_2
      L22_2 = L2_2.specialtySpawnBlockBulletTime
      L21_2.specialtyBulletTime = L22_2
      L19_2(L20_2, L21_2)
    end
  end
  ::lbl_239::
  L17_2 = playAudio
  if L16_2 then
    L18_2 = L2_2.sounds
    L18_2 = L18_2.spawnBlock
    if L18_2 then
      goto lbl_248
    end
  end
  L18_2 = L2_2.sounds
  L18_2 = L18_2.bounceWithoutSpawn
  ::lbl_248::
  L17_2(L18_2)
  L17_2 = L1_2.sabineSpawnCount
  L18_2 = L2_2.specialtySpawnObjectMaxCount
  if L17_2 >= L18_2 then
    L1_2.sabineSpawnCount = nil
    L1_2.ignoreCollisionSprite = nil
    L17_2 = addEventCall
    L18_2 = "stopSpawningLoopingParticles"
    L19_2 = A0_2
    L17_2(L18_2, L19_2)
    L17_2 = addEventCall
    L18_2 = "disableRotateWhileFlyingAction"
    L19_2 = A0_2
    L20_2 = 0.1
    L17_2(L18_2, L19_2, L20_2)
  end
end

L0_1.action = L1_1
sabineOnCollisionEnter = L0_1
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
    L2_2 = L2_2.keepLevelAlive
    L3_2 = 4
    L2_2(L3_2)
    L2_2 = gamelua
    L2_2 = L2_2.fireAction
    L3_2 = "removeStickyBlocks"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = L1_2.sabineSpawnCount
    if L2_2 then
      L2_2 = addEventCall
      L3_2 = "sabineKeepLevelAlive"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
sabineKeepLevelAlive = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
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
    L3_2 = A0_2.swordName
    if not L3_2 then
      L3_2 = L2_2.specialtyObject
    end
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L4_2 = L4_2.blocks
    L4_2 = L4_2[L3_2]
    L5_2 = assert
    L6_2 = L4_2 ~= nil
    L7_2 = "No definition for sword "
    L8_2 = _G
    L8_2 = L8_2.tostring
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L5_2(L6_2, L7_2)
    L5_2 = print
    L6_2 = "CREATING SWORD "
    L7_2 = L3_2
    L8_2 = " for bird "
    L9_2 = A0_2.name
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L5_2(L6_2)
    L5_2 = L4_2.swordMinScale
    L6_2 = gamelua
    L6_2 = L6_2.gameWorldScale
    L5_2 = L5_2 * L6_2
    L6_2 = gamelua
    L6_2 = L6_2.worldToPhysicsTransform
    L7_2 = gamelua
    L7_2 = L7_2._G
    L7_2 = L7_2.res
    L7_2 = L7_2.getSpriteBounds
    L8_2 = L4_2.sprite
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2(L8_2)
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L6_2 = L6_2 * L5_2
    L8_2 = L1_2.x
    L9_2 = L1_2.y
    L10_2 = L4_2.swordCenterOffset
    if L10_2 then
      L10_2 = gamelua
      L10_2 = L10_2.offsetOfObject
      L11_2 = L1_2
      L12_2 = L4_2.swordCenterOffset
      L12_2 = L12_2.x
      L13_2 = L4_2.swordCenterOffset
      L13_2 = L13_2.y
      L10_2, L11_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2 = L11_2
      L8_2 = L10_2
    end
    L10_2 = createObject
    L11_2 = gamelua
    L11_2 = L11_2.blockTable
    L12_2 = L3_2
    L13_2 = A0_2.objectName
    if not L13_2 then
      L13_2 = nil
    end
    L14_2 = L8_2
    L15_2 = L9_2
    L16_2 = L4_2.radius
    L17_2 = L4_2.width
    L18_2 = L4_2.height
    L19_2 = L5_2
    L20_2 = L5_2
    L21_2 = L4_2.vertices
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L11_2 = gamelua
    L11_2 = L11_2.objects
    L11_2 = L11_2.world
    L11_2 = L11_2[L10_2]
    L12_2 = setObjectParameter
    L13_2 = L10_2
    L14_2 = 21
    L15_2 = 6
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = L1_2.angle
    L13_2 = L4_2.swordStartingAngle
    L14_2 = _G
    L14_2 = L14_2.math
    L14_2 = L14_2.pi
    L13_2 = L13_2 * L14_2
    L13_2 = L13_2 / 180
    L12_2 = L12_2 - L13_2
    L11_2.angle = L12_2
    L11_2.scaleX = L5_2
    L11_2.scaleY = L5_2
    L12_2 = setRotation
    L13_2 = L11_2.name
    L14_2 = L11_2.angle
    L12_2(L13_2, L14_2)
    L12_2 = L4_2.swordDuration
    L11_2.life = L12_2
    L11_2.parent = L1_2
    L12_2 = {}
    L11_2.swordTouchingObjects = L12_2
    L12_2 = addUpdateCall
    L13_2 = "updateSword"
    L14_2 = {}
    L14_2.name = L10_2
    L15_2 = nil
    L16_2 = "swordUpdater_"
    L17_2 = L10_2
    L16_2 = L16_2 .. L17_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L12_2 = A0_2.soundName
    if L12_2 then
      L12_2 = playAudio
      L13_2 = A0_2.soundName
      L12_2(L13_2)
    end
  end
end

L0_1.action = L1_1
useSwordSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = L1_2.swordTouchingObjects
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = gamelua
      L8_2 = L8_2.objects
      L8_2 = L8_2.world
      L9_2 = L7_2[1]
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2[2]
    end
    L3_2 = L1_2.life
    if L3_2 then
      L3_2 = L1_2.life
      L4_2 = A0_2.dt
      L5_2 = gamelua
      L5_2 = L5_2.getDeltaTimeMultiplier
      L5_2 = L5_2()
      L4_2 = L4_2 / L5_2
      L3_2 = L3_2 - L4_2
      L1_2.life = L3_2
      L3_2 = L2_2.swordAngleSpeed
      L4_2 = L1_2.swordSpinDirection
      if not L4_2 then
        L4_2 = 1
      end
      L3_2 = L3_2 * L4_2
      L4_2 = L1_2.angle
      L5_2 = A0_2.dt
      L6_2 = gamelua
      L6_2 = L6_2.getDeltaTimeMultiplier
      L6_2 = L6_2()
      L5_2 = L5_2 / L6_2
      L5_2 = L3_2 * L5_2
      L4_2 = L4_2 + L5_2
      L1_2.angle = L4_2
      L4_2 = L2_2.swordMaxScale
      L5_2 = gamelua
      L5_2 = L5_2.gameWorldScale
      L4_2 = L4_2 * L5_2
      L5_2 = gamelua
      L5_2 = L5_2._G
      L5_2 = L5_2.math
      L5_2 = L5_2.abs
      L6_2 = L2_2.swordDuration
      L6_2 = L6_2 / 2
      L7_2 = L1_2.life
      L6_2 = L6_2 - L7_2
      L5_2 = L5_2(L6_2)
      L6_2 = L2_2.swordDuration
      L6_2 = L6_2 / 2
      L5_2 = L5_2 / L6_2
      L6_2 = L2_2.swordMaxScale
      L7_2 = gamelua
      L7_2 = L7_2.gameWorldScale
      L6_2 = L6_2 * L7_2
      L7_2 = L2_2.swordMinScale
      L8_2 = gamelua
      L8_2 = L8_2.gameWorldScale
      L7_2 = L7_2 * L8_2
      L6_2 = L6_2 - L7_2
      L5_2 = L5_2 * L6_2
      L4_2 = L4_2 - L5_2
      L1_2.scaleX = L4_2
      L4_2 = L2_2.swordForceScaleDownTime
      if L4_2 then
        L4_2 = L1_2.life
        L5_2 = L2_2.swordForceScaleDownTime
        if L4_2 < L5_2 then
          L4_2 = L1_2.scaleX
          L5_2 = _G
          L5_2 = L5_2.math
          L5_2 = L5_2.max
          L6_2 = 0
          L7_2 = L1_2.life
          L5_2 = L5_2(L6_2, L7_2)
          L4_2 = L4_2 * L5_2
          L5_2 = L2_2.swordForceScaleDownTime
          L4_2 = L4_2 / L5_2
          L1_2.scaleX = L4_2
        end
      end
      L4_2 = L1_2.scaleX
      L1_2.scaleY = L4_2
      L4_2 = gamelua
      L4_2 = L4_2.setScale
      L5_2 = L1_2.name
      L6_2 = L1_2.scaleX
      L7_2 = L1_2.scaleY
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = setRotation
      L5_2 = L1_2.name
      L6_2 = L1_2.angle
      L4_2(L5_2, L6_2)
      L4_2 = L1_2.parent
      if L4_2 then
        L4_2 = checkStillInWorld
        L5_2 = L1_2.parent
        L5_2 = L5_2.name
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = L1_2.parent
          L4_2 = L4_2.x
          L5_2 = L1_2.parent
          L5_2 = L5_2.y
          L6_2 = L2_2.swordCenterOffset
          if L6_2 then
            L6_2 = gamelua
            L6_2 = L6_2.offsetOfObject
            L7_2 = L1_2.parent
            L8_2 = L2_2.swordCenterOffset
            L8_2 = L8_2.x
            L9_2 = L2_2.swordCenterOffset
            L9_2 = L9_2.y
            L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
            L5_2 = L7_2
            L4_2 = L6_2
          end
          L6_2 = physicsToWorldTransform
          L7_2 = L4_2
          L8_2 = L5_2
          L6_2, L7_2 = L6_2(L7_2, L8_2)
          L8_2 = L2_2.particlesTrail
          L9_2 = L2_2.particlesTrailTimer
          if L8_2 and L9_2 then
            L10_2 = L1_2.trailTimer
            if not L10_2 then
              L1_2.trailTimer = 0
            end
            L10_2 = L1_2.trailTimer
            L11_2 = A0_2.dt
            L12_2 = gamelua
            L12_2 = L12_2.getDeltaTimeMultiplier
            L12_2 = L12_2()
            L11_2 = L11_2 / L12_2
            L10_2 = L10_2 + L11_2
            L1_2.trailTimer = L10_2
            L10_2 = L1_2.trailTimer
            if L9_2 <= L10_2 then
              L10_2 = L1_2.trailTimer
              L10_2 = L10_2 - L9_2
              L1_2.trailTimer = L10_2
              L10_2 = gamelua
              L10_2 = L10_2.putParticles
              L11_2 = {}
              L11_2.particles = L8_2
              L11_2.amount = 1
              L11_2.worldX = L6_2
              L11_2.worldY = L7_2
              L12_2 = gamelua
              L12_2 = L12_2.getAngle
              L13_2 = L1_2.name
              L12_2 = L12_2(L13_2)
              L11_2.angle = L12_2
              L12_2 = L1_2.scaleX
              L11_2.minScaleBegin = L12_2
              L12_2 = L1_2.scaleX
              L11_2.maxScaleBegin = L12_2
              L12_2 = L1_2.scaleX
              L11_2.minScaleEnd = L12_2
              L12_2 = L1_2.scaleX
              L11_2.maxScaleEnd = L12_2
              L10_2(L11_2)
            end
          end
          L10_2 = gamelua
          L10_2 = L10_2.worldToPhysicsTransform
          L11_2 = gamelua
          L11_2 = L11_2._G
          L11_2 = L11_2.res
          L11_2 = L11_2.getSpriteBounds
          L12_2 = L1_2.sprite
          L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
          L10_2, L11_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L12_2 = L1_2.scaleX
          L10_2 = L10_2 * L12_2
          L1_2.x = L4_2
          L1_2.y = L5_2
          L12_2 = setPosition
          L13_2 = A0_2.name
          L14_2 = L1_2.x
          L15_2 = L1_2.y
          L12_2(L13_2, L14_2, L15_2)
        else
          L1_2.life = -1
        end
      end
      L4_2 = L1_2.life
      if L4_2 < 0 then
        L4_2 = gamelua
        L4_2 = L4_2.print
        L5_2 = "REMOVING SWORD "
        L6_2 = L1_2.name
        L5_2 = L5_2 .. L6_2
        L4_2(L5_2)
        L4_2 = destroyObject
        L5_2 = A0_2.name
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = gamelua
        L4_2 = L4_2.removeUpdateCall
        L5_2 = "swordUpdater_"
        L6_2 = L1_2.name
        L5_2 = L5_2 .. L6_2
        L4_2(L5_2)
      end
    end
  end
end

L0_1.action = L1_1
updateSword = L0_1
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
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L2_2.specialtyObjects
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = addEventCall
    L9_2 = "useSwordSpecialty"
    L10_2 = {}
    L11_2 = A0_2.name
    L10_2.name = L11_2
    L11_2 = L7_2.name
    L10_2.swordName = L11_2
    L11_2 = L7_2.sound
    L10_2.soundName = L11_2
    L11_2 = L7_2.delay
    L8_2(L9_2, L10_2, L11_2)
  end
end

L0_1.action = L1_1
useMultiSwordSpecialty = L0_1
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
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = L2_2.specialtyObjects
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = addEventCall
    L9_2 = "useSwordSpecialty"
    L10_2 = {}
    L11_2 = A0_2.name
    L10_2.name = L11_2
    L11_2 = L7_2.name
    L10_2.swordName = L11_2
    L11_2 = L7_2.sound
    L10_2.soundName = L11_2
    L11_2 = L7_2.delay
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = gamelua
  L3_2 = L3_2.vNormalize
  L4_2 = A0_2.xPos
  L5_2 = L1_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.yPos
  L6_2 = L1_2.y
  L5_2 = L5_2 - L6_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = setVelocity
  L6_2 = L1_2.name
  L7_2 = L2_2.specialtyDashSpeed
  L7_2 = L3_2 * L7_2
  L8_2 = L2_2.specialtyDashSpeed
  L8_2 = L4_2 * L8_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = setObjectParameter
  L6_2 = L1_2.name
  L7_2 = 16
  L8_2 = 1
  L5_2(L6_2, L7_2, L8_2)
end

L0_1.action = L1_1
useMultiSwordDashSpecialty = L0_1
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
end

L0_1.action = L1_1
useBombSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = gamelua
    L4_2 = L4_2.objects
    L4_2 = L4_2.world
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.reticleName
      if L8_2 then
        L8_2 = L7_2.reticleName
        L9_2 = A0_2.name
        if L8_2 == L9_2 then
          L8_2 = gamelua
          L8_2 = L8_2.setSleeping
          L9_2 = L7_2.name
          L10_2 = false
          L8_2(L9_2, L10_2)
          L8_2 = gamelua
          L8_2 = L8_2.objects
          L8_2 = L8_2.worldGravity
          if not L8_2 then
            L8_2 = L7_2.insideGravity
            if not L8_2 then
              goto lbl_47
            end
          end
          L8_2 = gamelua
          L8_2 = L8_2.setRevertGravityWithMultiplier
          L9_2 = L7_2.name
          L10_2 = true
          L11_2 = L2_2.specialtySpaceGravityMultiplier
          L12_2 = L2_2.specialtyMaximumVelocity
          L8_2(L9_2, L10_2, L11_2, L12_2)
          ::lbl_47::
          L8_2 = L2_2.specialtyClassicGravityMultiplier
          L7_2.specialtyClassicGravityMultiplier = L8_2
          L8_2 = L2_2.specialtyMaximumVelocity
          L7_2.specialtyMaximumVelocity = L8_2
          L8_2 = L2_2.specialtyDuration
          L7_2.bubbleAntiGravityTimer = L8_2
          L8_2 = _G
          L8_2 = L8_2.math
          L8_2 = L8_2.atan2
          L9_2 = L7_2.y
          L10_2 = L1_2.y
          L9_2 = L9_2 - L10_2
          L10_2 = L7_2.x
          L11_2 = L1_2.x
          L10_2 = L10_2 - L11_2
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = L2_2.specialtyStartImpulse
          L10_2 = _G
          L10_2 = L10_2.math
          L10_2 = L10_2.cos
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          L9_2 = L9_2 * L10_2
          L10_2 = L2_2.specialtyStartImpulse
          L11_2 = _G
          L11_2 = L11_2.math
          L11_2 = L11_2.sin
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          L10_2 = L10_2 * L11_2
          L11_2 = gamelua
          L11_2 = L11_2.removeBreakableJointsFromObject
          L12_2 = L7_2.name
          L13_2 = _G
          L13_2 = L13_2.math
          L13_2 = L13_2.abs
          L14_2 = L2_2.specialtyStartImpulse
          L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
          L11_2 = applyImpulse
          L12_2 = L7_2.name
          L13_2 = L7_2.mass
          L13_2 = L9_2 * L13_2
          L14_2 = L7_2.mass
          L14_2 = L10_2 * L14_2
          L15_2 = L7_2.x
          L16_2 = L7_2.y
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
          L11_2 = getObjectDefinition
          L12_2 = L7_2.name
          L11_2 = L11_2(L12_2)
          L12_2 = L11_2.onLeiaForcePull
          if L12_2 then
            L12_2 = gamelua
            L12_2 = L12_2.fireAction
            L13_2 = L11_2.onLeiaForcePull
            L14_2 = {}
            L15_2 = L7_2.name
            L14_2.name = L15_2
            L15_2 = A0_2.name
            L14_2.leiaName = L15_2
            L12_2(L13_2, L14_2)
          end
          L12_2 = gamelua
          L12_2 = L12_2.SettingsWrapper
          L13_2 = L12_2
          L12_2 = L12_2.blockLiftedByLeia
          L12_2(L13_2)
          L12_2 = gamelua
          L12_2 = L12_2.SettingsWrapper
          L12_2 = L12_2.getNumBlocksLiftedByLeia
          L12_2 = L12_2()
          L13_2 = gamelua
          L13_2 = L13_2.getAchievementLimit
          L14_2 = "Fatal Attraction"
          L13_2 = L13_2(L14_2)
          if L12_2 >= L13_2 then
            L12_2 = gamelua
            L12_2 = L12_2.registerAchievement
            L13_2 = "Fatal Attraction"
            L12_2(L13_2)
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
activatePinkBirdAntigravity = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.putParticles
  L2_2 = {}
  L3_2 = A0_2.position
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L3_2 = A0_2.position
  L3_2 = L3_2.y
  L2_2.y = L3_2
  L3_2 = A0_2.position
  L3_2 = L3_2.particles
  L2_2.particles = L3_2
  L1_2(L2_2)
end

L0_1.action = L1_1
showPinkBirdParticles = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
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
  L4_2 = "activatePinkBirdAntigravity"
  L5_2 = A0_2
  L6_2 = L2_2.specialtyBeamPhase1Time
  L7_2 = L2_2.specialtyBeamPhase2Time
  L6_2 = L6_2 + L7_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = playAudio
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L5_2 = L1_2.definition
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.sounds
  L4_2 = L4_2.special_loop
  L3_2(L4_2)
  L3_2 = A0_2.xPos
  L4_2 = A0_2.yPos
  L5_2 = L1_2.x
  L5_2 = L3_2 - L5_2
  L6_2 = L1_2.y
  L6_2 = L4_2 - L6_2
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.atan2
  L8_2 = L6_2
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = gamelua
  L8_2 = L8_2.levelRightEdgePhysics
  L9_2 = gamelua
  L9_2 = L9_2.levelLeftEdgePhysics
  L8_2 = L8_2 - L9_2
  L9_2 = gamelua
  L9_2 = L9_2.levelBottomEdgePhysics
  L10_2 = gamelua
  L10_2 = L10_2.levelTopEdgePhysics
  L9_2 = L9_2 - L10_2
  L10_2 = gamelua
  L10_2 = L10_2.distance
  L11_2 = 0
  L12_2 = 0
  L13_2 = L8_2
  L14_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = L1_2.x
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.cos
  L13_2 = L7_2
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2 * L10_2
  L3_2 = L11_2 + L12_2
  L11_2 = L1_2.y
  L12_2 = _G
  L12_2 = L12_2.math
  L12_2 = L12_2.sin
  L13_2 = L7_2
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2 * L10_2
  L4_2 = L11_2 + L12_2
  L11_2 = gamelua
  L11_2 = L11_2.getRayCastedObjects
  L12_2 = {}
  L13_2 = L1_2.x
  L12_2.x1 = L13_2
  L13_2 = L1_2.y
  L12_2.y1 = L13_2
  L12_2.x2 = L3_2
  L12_2.y2 = L4_2
  L13_2 = A0_2.name
  L12_2.source = L13_2
  L12_2.includeSensors = true
  L11_2 = L11_2(L12_2)
  L12_2 = L11_2[1]
  if L12_2 then
    L12_2 = {}
    L13_2 = {}
    L14_2 = 1
    L15_2 = #L11_2
    L16_2 = 6
    for L17_2 = L14_2, L15_2, L16_2 do
      L18_2 = gamelua
      L18_2 = L18_2.objects
      L18_2 = L18_2.world
      L19_2 = L11_2[L17_2]
      L18_2 = L18_2[L19_2]
      L19_2 = L18_2.name
      if L19_2 ~= "killingBox" then
        L19_2 = gamelua
        L19_2 = L19_2.blockTable
        L19_2 = L19_2.blocks
        L20_2 = L18_2.definition
        L19_2 = L19_2[L20_2]
        L20_2 = gamelua
        L20_2 = L20_2.blockTable
        L20_2 = L20_2.materials
        L21_2 = L19_2.material
        L20_2 = L20_2[L21_2]
        L21_2 = L17_2 + 5
        L21_2 = L11_2[L21_2]
        L18_2.rayCastFraction = L21_2
        L21_2 = L17_2 + 1
        L21_2 = L11_2[L21_2]
        L18_2.rayCastContactX = L21_2
        L21_2 = L17_2 + 2
        L21_2 = L11_2[L21_2]
        L18_2.rayCastContactY = L21_2
        L21_2 = L18_2.name
        L22_2 = A0_2.name
        if L21_2 ~= L22_2 then
          L21_2 = L19_2.collision
          if L21_2 ~= false then
            L21_2 = L20_2.collision
            if L21_2 ~= false then
              L21_2 = L18_2.isSensor
              if not L21_2 then
                L21_2 = L19_2.ignoreRayCasts
                if not L21_2 then
                  L21_2 = _G
                  L21_2 = L21_2.table
                  L21_2 = L21_2.insert
                  L22_2 = L12_2
                  L23_2 = L18_2
                  L21_2(L22_2, L23_2)
              end
            end
          end
        end
        else
          L21_2 = L18_2.isSensor
          if L21_2 then
            L21_2 = L19_2.collectableCoin
            if L21_2 then
              L21_2 = _G
              L21_2 = L21_2.table
              L21_2 = L21_2.insert
              L22_2 = L13_2
              L23_2 = L18_2
              L21_2(L22_2, L23_2)
            end
          end
        end
      end
    end
    L14_2 = L13_2[1]
    if L14_2 then
      L14_2 = _G
      L14_2 = L14_2.table
      L14_2 = L14_2.sort
      L15_2 = L13_2
      
      function L16_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.rayCastFraction
        L3_3 = A1_3.rayCastFraction
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      
      L14_2(L15_2, L16_2)
    end
    L14_2 = 1
    L15_2 = L12_2[1]
    if L15_2 then
      L15_2 = _G
      L15_2 = L15_2.table
      L15_2 = L15_2.sort
      L16_2 = L12_2
      
      function L17_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.rayCastFraction
        L3_3 = A1_3.rayCastFraction
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      
      L15_2(L16_2, L17_2)
      L15_2 = L12_2[1]
      L15_2 = L15_2.rayCastContactX
      L16_2 = L12_2[1]
      L4_2 = L16_2.rayCastContactY
      L3_2 = L15_2
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L15_2.bubblePrimaryTarget = true
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L16_2 = L2_2.specialtyBeamPhase1Time
      L15_2.bubbleBeamTimer = L16_2
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L15_2.bubbleBeamPhase = 1
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L15_2.bubbleBeamAnimationTimer = 0
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L15_2.bubbleBeamAnimationFrame = 1
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L16_2 = A0_2.name
      L15_2.reticleName = L16_2
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L15_2.bubbleActivationX = L3_2
      L15_2 = gamelua
      L15_2 = L15_2.objects
      L15_2 = L15_2.world
      L16_2 = L12_2[1]
      L16_2 = L16_2.name
      L15_2 = L15_2[L16_2]
      L15_2.bubbleActivationY = L4_2
      L15_2 = L12_2[1]
      L14_2 = L15_2.rayCastFraction
    else
      L1_2.bubbleBeamPhase = 1
      L15_2 = L2_2.specialtyBeamPhase1Time
      L1_2.bubbleBeamTimer = L15_2
      L1_2.bubblePrimaryTarget = true
      L1_2.bubbleActivationX = L3_2
      L1_2.bubbleActivationY = L4_2
      L1_2.bubbleBeamAnimationTimer = 0
      L1_2.bubbleBeamAnimationFrame = 1
    end
    L15_2 = _G
    L15_2 = L15_2.pairs
    L16_2 = L13_2
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    for L18_2, L19_2 in L15_2, L16_2, L17_2 do
      L20_2 = L19_2.rayCastFraction
      if L14_2 >= L20_2 then
        L20_2 = gamelua
        L20_2 = L20_2.enterCollision
        L21_2 = ""
        L22_2 = L19_2.name
        L20_2(L21_2, L22_2)
      end
    end
  else
    L1_2.bubbleBeamPhase = 1
    L12_2 = L2_2.specialtyBeamPhase1Time
    L1_2.bubbleBeamTimer = L12_2
    L1_2.bubblePrimaryTarget = true
    L1_2.bubbleActivationX = L3_2
    L1_2.bubbleActivationY = L4_2
    L1_2.bubbleBeamAnimationTimer = 0
    L1_2.bubbleBeamAnimationFrame = 1
  end
  L12_2 = L2_2.specialtyBeamPhase1Time
  L13_2 = L2_2.specialtyBeamPhase2Time
  L12_2 = L12_2 + L13_2
  L13_2 = L2_2.specialtyDuration
  L12_2 = L12_2 + L13_2
  L1_2.bubbleSoundTimer = L12_2
  L12_2 = L3_2
  L1_2.specialtyActivationY = L4_2
  L1_2.specialtyActivationX = L12_2
  L12_2 = addEventCall
  L13_2 = "showPinkBirdParticles"
  L14_2 = {}
  L15_2 = {}
  L15_2.x = L3_2
  L15_2.y = L4_2
  L16_2 = L2_2.specialtyParticle
  L15_2.particles = L16_2
  L14_2.position = L15_2
  L15_2 = L2_2.specialtyBeamPhase1Time
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = L2_2.specialtyRadius
  L13_2 = gamelua
  L13_2 = L13_2.getLevelMetadata
  L14_2 = gamelua
  L14_2 = L14_2.levelName
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2.useBiggerLeiaSpecialtyRadius
  if L13_2 then
    L12_2 = L2_2.specialtyRadiusForBossLevel
  end
  L13_2 = gamelua
  L13_2 = L13_2.getIntersectingObjects
  L14_2 = {}
  L14_2.x = L3_2
  L14_2.y = L4_2
  L15_2 = -L12_2
  L14_2.left = L15_2
  L14_2.right = L12_2
  L15_2 = -L12_2
  L14_2.down = L15_2
  L14_2.up = L12_2
  L13_2 = L13_2(L14_2)
  L14_2 = _G
  L14_2 = L14_2.pairs
  L15_2 = L13_2
  L14_2, L15_2, L16_2 = L14_2(L15_2)
  for L17_2, L18_2 in L14_2, L15_2, L16_2 do
    L19_2 = gamelua
    L19_2 = L19_2.objects
    L19_2 = L19_2.world
    L19_2 = L19_2[L18_2]
    L20_2 = getObjectDefinition
    L21_2 = L19_2.name
    L20_2 = L20_2(L21_2)
    if L20_2 then
      L21_2 = L19_2.name
      if L21_2 ~= "killingBox" then
        L21_2 = L20_2.controllable
        if not L21_2 then
          L21_2 = L19_2.isSensor
          if not L21_2 then
            L21_2 = L19_2.mass
            if 0 < L21_2 then
              L21_2 = L20_2.material
              if L21_2 ~= "staticGround" then
                L21_2 = A0_2.name
                if L18_2 ~= L21_2 then
                  goto lbl_351
                end
              end
            end
          end
        end
      end
      L21_2 = L20_2.destroyWithLeiaForce
      ::lbl_351::
      if L21_2 then
        L21_2 = 0
        L22_2 = 0
        L23_2 = L19_2.width
        if L23_2 ~= nil then
          L23_2 = L19_2.height
          if L23_2 ~= nil then
            L23_2 = L19_2.width
            L22_2 = L19_2.height
            L21_2 = L23_2
        end
        else
          L23_2 = L19_2.radius
          if L23_2 ~= nil then
            L23_2 = L19_2.radius
            L22_2 = L19_2.radius
            L21_2 = L23_2
          else
            L23_2 = res
            L23_2 = L23_2.getSpriteBounds
            L24_2 = blockTable
            L24_2 = L24_2.blocks
            L25_2 = L19_2.definition
            L24_2 = L24_2[L25_2]
            L24_2 = L24_2.sprite
            L23_2, L24_2 = L23_2(L24_2)
            L22_2 = L24_2
            L21_2 = L23_2
            L23_2 = worldToPhysicsTransform
            L24_2 = L21_2
            L25_2 = L22_2
            L23_2, L24_2 = L23_2(L24_2, L25_2)
            L22_2 = L24_2
            L21_2 = L23_2
          end
        end
        L23_2 = gamelua
        L23_2 = L23_2.getSquaredDistanceFromOBBToPoint
        L24_2 = L19_2.x
        L25_2 = L19_2.y
        L26_2 = L21_2
        L27_2 = L22_2
        L28_2 = L19_2.angle
        L29_2 = L3_2
        L30_2 = L4_2
        L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        L24_2 = _G
        L24_2 = L24_2.math
        L24_2 = L24_2.sqrt
        L25_2 = L23_2.distance
        L24_2 = L24_2(L25_2)
        if L12_2 > L24_2 then
          L19_2.inBubble = true
          L25_2 = L2_2.specialtyBeamPhase1Time
          L19_2.bubbleBeamTimer = L25_2
          L19_2.bubbleBeamPhase = 1
          L19_2.bubbleBeamAnimationTimer = 0
          L19_2.bubbleBeamAnimationFrame = 1
          L25_2 = A0_2.name
          L19_2.reticleName = L25_2
          L19_2.bubbleActivationX = L3_2
          L19_2.bubbleActivationY = L4_2
          L25_2 = L20_2.destroyWithLeiaForce
          if L25_2 then
            L19_2.destroyWhenBeamHits = true
            L25_2 = L19_2.bubblePrimaryTarget
            if L25_2 then
              L1_2.bubbleBeamPhase = 1
              L25_2 = L2_2.specialtyBeamPhase1Time
              L1_2.bubbleBeamTimer = L25_2
              L1_2.bubblePrimaryTarget = true
              L1_2.bubbleActivationX = L3_2
              L1_2.bubbleActivationY = L4_2
              L1_2.bubbleBeamAnimationTimer = 0
              L1_2.bubbleBeamAnimationFrame = 1
            end
          end
        end
      end
    end
  end
  L14_2 = addEventCall
  L15_2 = "putParticlesToPos"
  L16_2 = {}
  L16_2.x = L3_2
  L16_2.y = L4_2
  L17_2 = L2_2.specialtyActivationPointParticlesAngle
  L18_2 = _G
  L18_2 = L18_2.math
  L18_2 = L18_2.pi
  L17_2 = L17_2 * L18_2
  L17_2 = L17_2 / 180
  L17_2 = L7_2 + L17_2
  L16_2.angle = L17_2
  L17_2 = L2_2.specialtyActivationPointParticles
  L16_2.particles = L17_2
  L17_2 = L2_2.specialtyActivationPointParticlesDelay
  L14_2(L15_2, L16_2, L17_2)
end

L0_1.action = L1_1
usePinkBirdSpecialty = L0_1
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
  L3_2 = gamelua
  L3_2 = L3_2.getLinearVelocity
  L4_2 = L1_2.name
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = {}
  L5_2.definition = L2_2
  L6_2 = L1_2.x
  L5_2.x = L6_2
  L6_2 = L1_2.y
  L5_2.y = L6_2
  L6_2 = L1_2.angle
  L5_2.angle = L6_2
  L6_2 = L2_2.addMovingSpeedFromParentMultiplier
  L6_2 = L3_2 * L6_2
  L5_2.xVel = L6_2
  L6_2 = L2_2.addMovingSpeedFromParentMultiplier
  L6_2 = L4_2 * L6_2
  L5_2.yVel = L6_2
  L6_2 = gamelua
  L6_2 = L6_2.handleBirdPowerUseCounting
  L7_2 = L1_2
  L6_2(L7_2)
  L6_2 = removeBird
  L7_2 = L1_2
  L6_2(L7_2)
  L6_2 = gamelua
  L6_2 = L6_2.spawnObjects
  L7_2 = L2_2.spawnedObjects
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end

L0_1.action = L1_1
use3CPOSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
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
  L4_2 = makeExplosion
  L5_2 = L1_2
  L6_2 = getObjectDefinition
  L7_2 = L1_2.name
  L6_2 = L6_2(L7_2)
  L7_2 = bombSound
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = gamelua
  L5_2 = L5_2.levelGoals
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = gamelua
    L9_2 = L9_2.distance
    L10_2 = L1_2.x
    L11_2 = L1_2.y
    L12_2 = L8_2.x
    L13_2 = L8_2.y
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L10_2 = L2_2.specialtyRange
    if L9_2 < L10_2 then
      L10_2 = gamelua
      L10_2 = L10_2.createR2D2Zap
      L11_2 = L1_2
      L12_2 = L8_2
      L13_2 = L2_2.specialtyObject
      L14_2 = L9_2
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L8_2.zappedByR2d2 = true
      L10_2 = L8_2.insideWater
      if L10_2 then
        L10_2 = _G
        L10_2 = L10_2.table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
        L10_2 = putParticles
        L11_2 = {}
        L12_2 = L8_2.x
        L11_2.x = L12_2
        L12_2 = L8_2.y
        L11_2.y = L12_2
        L12_2 = L2_2.specialtyWaterParticles
        L12_2 = L12_2.name
        L11_2.particles = L12_2
        L12_2 = L2_2.specialtyWaterParticles
        L12_2 = L12_2.amount
        L11_2.amount = L12_2
        L10_2(L11_2)
      end
      L10_2 = gamelua
      L10_2 = L10_2.blockTable
      L10_2 = L10_2.blocks
      L11_2 = L8_2.definition
      L10_2 = L10_2[L11_2]
      L11_2 = L10_2.onZappedByR2D2
      if L11_2 then
        L11_2 = gamelua
        L11_2 = L11_2.fireAction
        L12_2 = L10_2.onZappedByR2D2
        L13_2 = {}
        L14_2 = L8_2.name
        L13_2.name = L14_2
        L14_2 = L1_2.name
        L13_2.other = L14_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = _G
    L9_2 = L9_2.pairs
    L10_2 = gamelua
    L10_2 = L10_2.levelGoals
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      if L8_2 ~= L13_2 then
        L14_2 = L13_2.zappedByR2d2
        if not L14_2 then
          L14_2 = L13_2.insideWater
          if L14_2 then
            L14_2 = gamelua
            L14_2 = L14_2.distance
            L15_2 = L8_2.x
            L16_2 = L8_2.y
            L17_2 = L13_2.x
            L18_2 = L13_2.y
            L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
            L15_2 = L2_2.specialtyRangeForUnderWaterSplit
            if L14_2 < L15_2 then
              L15_2 = gamelua
              L15_2 = L15_2.createR2D2Zap
              L16_2 = L8_2
              L17_2 = L13_2
              L18_2 = L2_2.specialtyObject
              L19_2 = L14_2
              L15_2(L16_2, L17_2, L18_2, L19_2)
              L15_2 = putParticles
              L16_2 = {}
              L17_2 = L13_2.x
              L16_2.x = L17_2
              L17_2 = L13_2.y
              L16_2.y = L17_2
              L17_2 = L2_2.specialtyWaterParticles
              L17_2 = L17_2.name
              L16_2.particles = L17_2
              L17_2 = L2_2.specialtyWaterParticles
              L17_2 = L17_2.amount
              L16_2.amount = L17_2
              L15_2(L16_2)
            end
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
useR2D2Specialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addEventCall
  L2_2 = "destroyR2D2Zap"
  L3_2 = A0_2
  L4_2 = 0.2
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1
R2D2ZapCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.destroyObject
  L2_2 = A0_2.name
  L1_2(L2_2)
end

L0_1.action = L1_1
destroyR2D2Zap = L0_1
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
    L1_2 = L1_2.isPreventBirdCollision
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
    L1_2 = addEventCall
    L2_2 = "destroyObjectWithExplosion"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
bodyguardCollision = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
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
  L3_2 = A0_2.xPos
  L4_2 = L1_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.yPos
  L5_2 = L1_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = gamelua
  L5_2 = L5_2.vNormalize
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  L7_2 = L1_2.x
  L8_2 = L2_2.specialtyTongueMaxLength
  L8_2 = L5_2 * L8_2
  L7_2 = L7_2 + L8_2
  L8_2 = L1_2.y
  L9_2 = L2_2.specialtyTongueMaxLength
  L9_2 = L6_2 * L9_2
  L8_2 = L8_2 + L9_2
  L9_2 = gamelua
  L9_2 = L9_2.raycastToFirstObject
  L10_2 = L1_2
  L11_2 = L7_2
  L12_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  if L9_2 then
    L10_2 = gamelua
    L10_2 = L10_2.blockTable
    L10_2 = L10_2.blocks
    L11_2 = L9_2.definition
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.ignoreJarJarAttach
    if not L10_2 then
      L10_2 = L1_2.name
      L11_2 = "_tongueJoint"
      L10_2 = L10_2 .. L11_2
      L1_2.jointName = L10_2
      L10_2 = L9_2.rayCastContactX
      L11_2 = L9_2.x
      L10_2 = L10_2 - L11_2
      L11_2 = L9_2.rayCastContactY
      L12_2 = L9_2.y
      L11_2 = L11_2 - L12_2
      L12_2 = gamelua
      L12_2 = L12_2.vec2Rotate
      L13_2 = L10_2
      L14_2 = L11_2
      L15_2 = gamelua
      L15_2 = L15_2.getAngle
      L16_2 = L9_2.name
      L15_2 = L15_2(L16_2)
      L15_2 = -L15_2
      L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2)
      L14_2 = gamelua
      L14_2 = L14_2.createJoint
      L15_2 = {}
      L16_2 = L1_2.jointName
      L15_2.name = L16_2
      L15_2.type = 6
      L16_2 = L1_2.name
      L15_2.end1 = L16_2
      L16_2 = L9_2.name
      L15_2.end2 = L16_2
      L15_2.coordType = 2
      L15_2.x1 = 0
      L15_2.y1 = 0
      L15_2.x2 = L12_2
      L15_2.y2 = L13_2
      L15_2.collideConnected = true
      L14_2(L15_2)
      L14_2 = gamelua
      L14_2 = L14_2.objects
      L14_2 = L14_2.joints
      L15_2 = L1_2.jointName
      L14_2 = L14_2[L15_2]
      L14_2.isTongueJoint = true
      L14_2 = gamelua
      L14_2 = L14_2.objects
      L14_2 = L14_2.joints
      L15_2 = L1_2.jointName
      L14_2 = L14_2[L15_2]
      L14_2.tongueTime = 0
      L14_2 = gamelua
      L14_2 = L14_2.vNormalize
      L15_2 = L9_2.x
      L16_2 = L1_2.x
      L15_2 = L15_2 - L16_2
      L16_2 = L9_2.y
      L17_2 = L1_2.y
      L16_2 = L16_2 - L17_2
      L14_2, L15_2 = L14_2(L15_2, L16_2)
      L16_2 = L15_2
      L17_2 = -L14_2
      L18_2 = -L15_2
      L19_2 = L14_2
      L20_2 = gamelua
      L20_2 = L20_2.getLinearVelocity
      L21_2 = L1_2.name
      L20_2, L21_2 = L20_2(L21_2)
      L22_2 = gamelua
      L22_2 = L22_2.vNormalize
      L23_2 = L20_2
      L24_2 = L21_2
      L22_2, L23_2 = L22_2(L23_2, L24_2)
      L21_2 = L23_2
      L20_2 = L22_2
      L22_2 = L16_2 * L20_2
      L23_2 = L17_2 * L21_2
      L22_2 = L22_2 + L23_2
      L23_2 = L18_2 * L20_2
      L24_2 = L19_2 * L21_2
      L23_2 = L23_2 + L24_2
      if L22_2 < L23_2 then
        A0_2.rotateClockwise = true
        L1_2.spinDirection = -1
        L24_2 = L2_2.specialtyRotationImpulse
        L25_2 = _G
        L25_2 = L25_2.math
        L25_2 = L25_2.min
        L26_2 = 1
        L27_2 = L2_2.specialtyRotationAngleFactor
        L27_2 = L23_2 * L27_2
        L25_2 = L25_2(L26_2, L27_2)
        L24_2 = L24_2 * L25_2
        L25_2 = applyImpulse
        L26_2 = L1_2.name
        L27_2 = L18_2 * L24_2
        L28_2 = L19_2 * L24_2
        L29_2 = L1_2.x
        L30_2 = L1_2.y
        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
      else
        A0_2.rotateClockwise = false
        L1_2.spinDirection = 1
        L24_2 = L2_2.specialtyRotationImpulse
        L25_2 = _G
        L25_2 = L25_2.math
        L25_2 = L25_2.min
        L26_2 = 1
        L27_2 = L2_2.specialtyRotationAngleFactor
        L27_2 = L22_2 * L27_2
        L25_2 = L25_2(L26_2, L27_2)
        L24_2 = L24_2 * L25_2
        L25_2 = applyImpulse
        L26_2 = L1_2.name
        L27_2 = L16_2 * L24_2
        L28_2 = L17_2 * L24_2
        L29_2 = L1_2.x
        L30_2 = L1_2.y
        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
      end
      L24_2 = print
      L25_2 = "Tongue to "
      L26_2 = L9_2.name
      L25_2 = L25_2 .. L26_2
      L24_2(L25_2)
      A0_2.collisionObj = L9_2
      L1_2.rotateWhileFlyingDisabled = true
      L24_2 = gamelua
      L24_2 = L24_2.setAngularDamping
      L25_2 = L9_2.name
      L26_2 = L2_2.specialtyAngularDragForTarget
      L24_2(L25_2, L26_2)
      L1_2.disableDragging = true
      L24_2 = setCameraTarget
      L25_2 = L9_2.name
      L24_2(L25_2)
      L24_2 = gamelua
      L24_2 = L24_2.blockTable
      L24_2 = L24_2.blocks
      L25_2 = L9_2.definition
      L24_2 = L24_2[L25_2]
      L25_2 = L24_2.onJarJarTongueAttach
      if L25_2 then
        L25_2 = addEventCall
        L26_2 = L24_2.onJarJarTongueAttach
        L27_2 = {}
        L28_2 = L9_2.name
        L27_2.name = L28_2
        L28_2 = A0_2.name
        L27_2.JarJarName = L28_2
        L25_2(L26_2, L27_2)
      end
      L25_2 = L2_2.specialtyTongueStickSound
      if L25_2 then
        L25_2 = addEventCall
        L26_2 = "playAudioAction"
        L27_2 = {}
        L28_2 = L2_2.specialtyTongueStickSound
        L27_2.audioName = L28_2
        L28_2 = 0.001
        L25_2(L26_2, L27_2, L28_2)
      end
  end
  else
    L10_2 = print
    L11_2 = "No collision for tongue"
    L10_2(L11_2)
    L10_2 = gamelua
    L10_2 = L10_2.addTongueOutAnimation
    L11_2 = L1_2
    L12_2 = L7_2
    L13_2 = L8_2
    L10_2(L11_2, L12_2, L13_2)
    L1_2.rotateWhileFlyingDisabled = true
    L10_2 = setRotation
    L11_2 = L1_2.name
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.atan2
    L13_2 = L6_2
    L14_2 = L5_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L12_2(L13_2, L14_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L10_2 = gamelua
    L10_2 = L10_2.setAngularVelocity
    L11_2 = L1_2.name
    L12_2 = 1.5
    L10_2(L11_2, L12_2)
  end
  L10_2 = addUpdateCall
  L11_2 = "birdJarJarMovement"
  L12_2 = A0_2
  L10_2(L11_2, L12_2)
  L1_2.tongueActivated = true
end

L0_1.action = L1_1
useJarJarSpecialty = L0_1
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
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = A0_2.other
  L3_2 = L3_2[L4_2]
  L4_2 = L1_2.jointName
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.objects
    L4_2 = L4_2.joints
    L5_2 = L1_2.jointName
    L4_2 = L4_2[L5_2]
    if L4_2 then
      L4_2 = addEventCall
      L5_2 = "birdJarJarDestroyTongue"
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
      L4_2 = L3_2.name
      L5_2 = gamelua
      L5_2 = L5_2.objects
      L5_2 = L5_2.joints
      L6_2 = L1_2.jointName
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.end2
      if L4_2 == L5_2 then
        L4_2 = print
        L5_2 = "Jar Jar eating"
        L4_2(L5_2)
      end
    end
  end
end

L0_1.action = L1_1
birdJarJarOnCollisionEnter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.name
  L2_2 = "_tongueJoint"
  L1_2 = L1_2 .. L2_2
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.joints
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = gamelua
    L3_2 = L3_2.objects
    L3_2 = L3_2.world
    L4_2 = L2_2.end1
    L3_2 = L3_2[L4_2]
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L4_2 = L4_2.blocks
    L5_2 = L3_2.definition
    L4_2 = L4_2[L5_2]
    L5_2 = gamelua
    L5_2 = L5_2.objects
    L5_2 = L5_2.world
    L6_2 = L2_2.end2
    L5_2 = L5_2[L6_2]
    L6_2 = gamelua
    L6_2 = L6_2.vec2Rotate
    L7_2 = L2_2.x2
    L8_2 = L2_2.y2
    L9_2 = gamelua
    L9_2 = L9_2.getAngle
    L10_2 = L5_2.name
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = L5_2.x
    L8_2 = L8_2 + L6_2
    L9_2 = L5_2.y
    L9_2 = L9_2 + L7_2
    L10_2 = gamelua
    L10_2 = L10_2.addTongueRedactionAnimation
    L11_2 = L3_2
    L12_2 = L8_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
    L3_2.disableRecordTrajectory = false
    L10_2 = gamelua
    L10_2 = L10_2.setAngularDamping
    L11_2 = L5_2.name
    L12_2 = gamelua
    L12_2 = L12_2.defaultAngularDrag
    L10_2(L11_2, L12_2)
    L10_2 = gamelua
    L10_2 = L10_2.setAngularVelocity
    L11_2 = L3_2.name
    L12_2 = L4_2.specialtyRotationSpeedAfterDetach
    L13_2 = L3_2.spinDirection
    L12_2 = L12_2 * L13_2
    L10_2(L11_2, L12_2)
    L10_2 = print
    L11_2 = "Destroying tongue: "
    L12_2 = L1_2
    L11_2 = L11_2 .. L12_2
    L10_2(L11_2)
    L10_2 = gamelua
    L10_2 = L10_2.destroyJoint
    L11_2 = L1_2
    L10_2(L11_2)
    L10_2 = gamelua
    L10_2 = L10_2.SettingsWrapper
    L11_2 = L10_2
    L10_2 = L10_2.resetBirdPowerNotUsed
    L12_2 = L3_2.definition
    L10_2(L11_2, L12_2)
  end
end

L0_1.action = L1_1
birdJarJarDestroyTongue = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2.collisionObj
  if L1_2 and L2_2 then
    L3_2 = checkStillInWorld
    L4_2 = L1_2.name
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = checkStillInWorld
      L4_2 = L2_2.name
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.objects
        L3_2 = L3_2.joints
        L4_2 = L1_2.name
        L5_2 = "_tongueJoint"
        L4_2 = L4_2 .. L5_2
        L3_2 = L3_2[L4_2]
        if L3_2 then
          L3_2 = A0_2.timer
          if not L3_2 then
            L3_2 = A0_2.dt
            L3_2 = -L3_2
          end
          L4_2 = A0_2.dt
          L3_2 = L3_2 + L4_2
          A0_2.timer = L3_2
          L3_2 = gamelua
          L3_2 = L3_2.blockTable
          L3_2 = L3_2.blocks
          L4_2 = L1_2.definition
          L3_2 = L3_2[L4_2]
          L4_2 = gamelua
          L4_2 = L4_2.objects
          L4_2 = L4_2.joints
          L5_2 = L1_2.name
          L6_2 = "_tongueJoint"
          L5_2 = L5_2 .. L6_2
          L4_2 = L4_2[L5_2]
          L5_2 = gamelua
          L5_2 = L5_2.vec2Rotate
          L6_2 = L4_2.x2
          L7_2 = L4_2.y2
          L8_2 = gamelua
          L8_2 = L8_2.getAngle
          L9_2 = L2_2.name
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
          L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L7_2 = L2_2.x
          L7_2 = L7_2 + L5_2
          L8_2 = L2_2.y
          L8_2 = L8_2 + L6_2
          L9_2 = gamelua
          L9_2 = L9_2.vNormalize
          L10_2 = L1_2.x
          L10_2 = L7_2 - L10_2
          L11_2 = L1_2.y
          L11_2 = L8_2 - L11_2
          L9_2, L10_2 = L9_2(L10_2, L11_2)
          L11_2 = L10_2
          L12_2 = -L9_2
          L13_2 = A0_2.rotateClockwise
          if L13_2 then
            L13_2 = -L10_2
            L12_2 = L9_2
            L11_2 = L13_2
          end
          L13_2 = L3_2.specialtyRotationForce
          L14_2 = applyForce
          L15_2 = L1_2.name
          L16_2 = L11_2 * L13_2
          L17_2 = L12_2 * L13_2
          L18_2 = L1_2.x
          L19_2 = L1_2.y
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
          L14_2 = applyForce
          L15_2 = L1_2.name
          L16_2 = L3_2.specialtySuctionForceJarJar
          L16_2 = L9_2 * L16_2
          L17_2 = L3_2.specialtySuctionForceJarJar
          L17_2 = L10_2 * L17_2
          L18_2 = L1_2.x
          L19_2 = L1_2.y
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
          L14_2 = applyForce
          L15_2 = L2_2.name
          L16_2 = -L9_2
          L17_2 = L3_2.specialtySuctionForceBlock
          L16_2 = L16_2 * L17_2
          L17_2 = -L10_2
          L18_2 = L3_2.specialtySuctionForceBlock
          L17_2 = L17_2 * L18_2
          L18_2 = L7_2
          L19_2 = L8_2
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
          L14_2 = setRotation
          L15_2 = L1_2.name
          L16_2 = _G
          L16_2 = L16_2.math
          L16_2 = L16_2.atan2
          L17_2 = L10_2
          L18_2 = L9_2
          L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2)
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
          L14_2 = gamelua
          L14_2 = L14_2.setAngularVelocity
          L15_2 = L1_2.name
          L16_2 = 0
          L14_2(L15_2, L16_2)
          L14_2 = A0_2.timer
          L15_2 = L3_2.specialtyStopTrajectoryTime
          if L14_2 > L15_2 then
            L1_2.disableRecordTrajectory = true
          end
          L1_2.numEnteredWater = 0
          L14_2 = gamelua
          L14_2 = L14_2.objects
          L14_2 = L14_2.joints
          L15_2 = L1_2.jointName
          L14_2 = L14_2[L15_2]
          L15_2 = gamelua
          L15_2 = L15_2.objects
          L15_2 = L15_2.joints
          L16_2 = L1_2.jointName
          L15_2 = L15_2[L16_2]
          L15_2 = L15_2.tongueTime
          L16_2 = A0_2.dt
          L15_2 = L15_2 + L16_2
          L14_2.tongueTime = L15_2
          L14_2 = setCameraTarget
          L15_2 = L1_2.name
          L14_2(L15_2)
          L14_2 = gamelua
          L14_2.g_scoreAddedTime = 6
          L14_2 = gamelua
          L14_2.timeWithoutLevelGoals = 0
          L14_2 = L3_2.specialtySpitParticles
          if L14_2 then
            L14_2 = _G
            L14_2 = L14_2.math
            L14_2 = L14_2.random
            L14_2 = L14_2()
            L15_2 = A0_2.dt
            L15_2 = L15_2 * 5
            L15_2 = 1 - L15_2
            if L14_2 > L15_2 then
              L14_2 = gamelua
              L14_2 = L14_2.putParticles
              L15_2 = {}
              L15_2.x = L7_2
              L15_2.y = L8_2
              L16_2 = L3_2.specialtySpitParticles
              L15_2.particles = L16_2
              L15_2.amount = 1
              L14_2(L15_2)
            end
          end
        end
      end
    end
  end
  if L1_2 and L2_2 then
    L3_2 = checkStillInWorld
    L4_2 = L1_2.name
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = checkStillInWorld
      L4_2 = L2_2.name
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L1_2.tutorialSpecialtyHandled = true
      end
    end
  end
  if L1_2 then
    L3_2 = checkStillInWorld
    L4_2 = L1_2.name
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L1_2.tongueRedactAnimation
      if not L3_2 then
        L3_2 = L1_2.tongueOutAnimation
        if not L3_2 then
          goto lbl_200
        end
      end
      L3_2 = L1_2.tongueAnimationTime
      L4_2 = A0_2.dt
      L3_2 = L3_2 + L4_2
      L1_2.tongueAnimationTime = L3_2
    end
  end
  ::lbl_200::
end

L0_1.action = L1_1
birdJarJarMovement = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
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
    L3_2 = L3_2.vNormalize
    L4_2 = A0_2.xPos
    L5_2 = L1_2.x
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.yPos
    L6_2 = L1_2.y
    L5_2 = L5_2 - L6_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2.specialtyDelayedRockets
    if L5_2 then
      L5_2 = A0_2.rocketIndex
      if not L5_2 then
        L5_2 = _G
        L5_2 = L5_2.ipairs
        L6_2 = L2_2.specialtySpawnObjects
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        for L8_2, L9_2 in L5_2, L6_2, L7_2 do
          L10_2 = addEventCall
          L11_2 = "useJangoFettSpecialty"
          L12_2 = {}
          L13_2 = A0_2.name
          L12_2.name = L13_2
          L12_2.rocketIndex = L8_2
          L13_2 = A0_2.xPos
          L12_2.xPos = L13_2
          L13_2 = A0_2.yPos
          L12_2.yPos = L13_2
          L13_2 = L9_2.delay
          L10_2(L11_2, L12_2, L13_2)
        end
        return
      end
    end
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = L2_2.specialtySpawnObjects
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L2_2.specialtyDelayedRockets
      if L10_2 then
        L10_2 = A0_2.rocketIndex
        if L8_2 ~= L10_2 then
          goto lbl_199
        end
      end
      L10_2 = L1_2.x
      L11_2 = L9_2.distance
      L11_2 = L3_2 * L11_2
      L10_2 = L10_2 + L11_2
      L11_2 = L9_2.offset
      L11_2 = L4_2 * L11_2
      L10_2 = L10_2 - L11_2
      L11_2 = L1_2.y
      L12_2 = L9_2.distance
      L12_2 = L4_2 * L12_2
      L11_2 = L11_2 + L12_2
      L12_2 = L9_2.offset
      L12_2 = L3_2 * L12_2
      L11_2 = L11_2 + L12_2
      L12_2 = createObject
      L13_2 = gamelua
      L13_2 = L13_2.blockTable
      L14_2 = L9_2.block
      L15_2 = nil
      L16_2 = L10_2
      L17_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      n = L12_2
      L12_2 = gamelua
      L12_2 = L12_2.objects
      L12_2 = L12_2.world
      L13_2 = n
      L12_2 = L12_2[L13_2]
      L13_2 = _G
      L13_2 = L13_2.math
      L13_2 = L13_2.atan2
      L14_2 = L4_2
      L15_2 = L3_2
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = L9_2.angle
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.pi
      L14_2 = L14_2 * L15_2
      L14_2 = L14_2 / 180
      L13_2 = L13_2 + L14_2
      L14_2 = setRotation
      L15_2 = L12_2.name
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
      L14_2 = L3_2
      L15_2 = L4_2
      L16_2 = L9_2.impulseAngle
      if L16_2 then
        L16_2 = 1
        L17_2 = L2_2.specialtyImpulseAngleDistance
        if L17_2 then
          L17_2 = gamelua
          L17_2 = L17_2.objects
          L17_2 = L17_2.worldGravity
          if L17_2 then
            L17_2 = _G
            L17_2 = L17_2.math
            L17_2 = L17_2.max
            L18_2 = -1
            L19_2 = _G
            L19_2 = L19_2.math
            L19_2 = L19_2.min
            L20_2 = 1
            L21_2 = A0_2.xPos
            L21_2 = L10_2 - L21_2
            L22_2 = L2_2.specialtyImpulseAngleDistance
            L21_2 = L21_2 / L22_2
            L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2, L21_2)
            L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
            L16_2 = L17_2
          else
            L16_2 = 0
          end
        end
        L17_2 = gamelua
        L17_2 = L17_2.vec2Rotate
        L18_2 = L3_2
        L19_2 = L4_2
        L20_2 = L9_2.impulseAngle
        L20_2 = L16_2 * L20_2
        L21_2 = _G
        L21_2 = L21_2.math
        L21_2 = L21_2.pi
        L20_2 = L20_2 * L21_2
        L20_2 = L20_2 / 180
        L17_2, L18_2 = L17_2(L18_2, L19_2, L20_2)
        L15_2 = L18_2
        L14_2 = L17_2
      end
      L16_2 = applyImpulse
      L17_2 = L12_2.name
      L18_2 = L9_2.impulse
      L18_2 = L14_2 * L18_2
      L19_2 = L9_2.impulse
      L19_2 = L15_2 * L19_2
      L20_2 = L12_2.x
      L21_2 = L12_2.y
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      L16_2 = putParticles
      L17_2 = {}
      L18_2 = L12_2.x
      L17_2.x = L18_2
      L18_2 = L12_2.y
      L17_2.y = L18_2
      L18_2 = L9_2.particle
      L17_2.particles = L18_2
      L16_2(L17_2)
      L16_2 = setCameraTarget
      L17_2 = L12_2.name
      L16_2(L17_2)
      L16_2 = L2_2.specialtyRotateTowardsRockets
      if L16_2 then
        L16_2 = gamelua
        L16_2 = L16_2.setAngularVelocity
        L17_2 = L1_2.name
        L18_2 = 0
        L16_2(L17_2, L18_2)
        if L8_2 == 1 then
          L16_2 = setRotation
          L17_2 = L1_2.name
          L18_2 = L13_2
          L16_2(L17_2, L18_2)
        else
          L16_2 = L2_2.specialtySpawnObjects
          L16_2 = #L16_2
          if L8_2 == L16_2 then
            L1_2.rocketsShot = true
          end
        end
      end
      L16_2 = L9_2.audio
      if L16_2 then
        L16_2 = playAudio
        L17_2 = L9_2.audio
        L16_2(L17_2)
      end
      ::lbl_199::
    end
    L5_2 = gamelua
    L5_2 = L5_2.getLinearVelocity
    L6_2 = L1_2.name
    L5_2, L6_2 = L5_2(L6_2)
    L7_2 = vNormalize
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    L9_2 = vNormalize
    L10_2 = L7_2 - L3_2
    L11_2 = L8_2 - L4_2
    L9_2, L10_2 = L9_2(L10_2, L11_2)
    L11_2 = setVelocity
    L12_2 = L1_2.name
    L13_2 = L2_2.specialtyRecoilVelocity
    L13_2 = L9_2 * L13_2
    L14_2 = L2_2.specialtyRecoilOriginalVelocityMultiplier
    L14_2 = L5_2 * L14_2
    L13_2 = L13_2 + L14_2
    L14_2 = L2_2.specialtyRecoilVelocity
    L14_2 = L10_2 * L14_2
    L15_2 = L2_2.specialtyRecoilOriginalVelocityMultiplier
    L15_2 = L6_2 * L15_2
    L14_2 = L14_2 + L15_2
    L11_2(L12_2, L13_2, L14_2)
    L1_2.stopSpawningLoopingParticles = true
    L1_2.hasShotRocket = true
  end
end

L0_1.action = L1_1
useJangoFettSpecialty = L0_1
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
    L2_2 = L1_2.rocketsShot
    if L2_2 then
      L2_2 = L1_2.stickyChildren
      if L2_2 then
        L2_2 = addEventCall
        L3_2 = "removeStickyBlocks"
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end

L0_1.action = L1_1
vizagoOnCollisionEnter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = addEventCall
  L2_2 = "birdTailParticlesUpdate"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = addUpdateCall
  L2_2 = "birdJangoFettMovement"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L0_1.action = L1_1
birdJangoFettOnLaunched = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = checkStillInWorld
    L3_2 = L1_2.name
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = L1_2.hasCollided
      if not L2_2 then
        L2_2 = L1_2.hasShotRocket
        if not L2_2 then
          L2_2 = gamelua
          L2_2 = L2_2.blockTable
          L2_2 = L2_2.blocks
          L3_2 = L1_2.definition
          L2_2 = L2_2[L3_2]
          L3_2 = gamelua
          L3_2 = L3_2.getLinearVelocity
          L4_2 = L1_2.name
          L3_2, L4_2 = L3_2(L4_2)
          L5_2 = gamelua
          L5_2 = L5_2.vNormalize
          L6_2 = L3_2
          L7_2 = L4_2
          L5_2, L6_2 = L5_2(L6_2, L7_2)
          L7_2 = L6_2
          L8_2 = -L5_2
          L9_2 = A0_2.totalTime
          if not L9_2 then
            L9_2 = 0
          end
          L10_2 = A0_2.dt
          L9_2 = L9_2 + L10_2
          A0_2.totalTime = L9_2
          L9_2 = _G
          L9_2 = L9_2.math
          L9_2 = L9_2.sin
          L10_2 = A0_2.totalTime
          L11_2 = L2_2.wobblingFrequency
          L10_2 = L10_2 * L11_2
          L11_2 = _G
          L11_2 = L11_2.math
          L11_2 = L11_2.pi
          L10_2 = L10_2 * L11_2
          L10_2 = L10_2 * 2
          L9_2 = L9_2(L10_2)
          L10_2 = _G
          L10_2 = L10_2.math
          L10_2 = L10_2.min
          L11_2 = A0_2.totalTime
          L12_2 = L2_2.wobblingSmoothInTime
          L11_2 = L11_2 / L12_2
          L12_2 = 1
          L10_2 = L10_2(L11_2, L12_2)
          L9_2 = L9_2 * L10_2
          L10_2 = L2_2.wobblingMaxForce
          L9_2 = L9_2 * L10_2
          L10_2 = applyForce
          L11_2 = L1_2.name
          L12_2 = L7_2 * L9_2
          L13_2 = L8_2 * L9_2
          L14_2 = L1_2.x
          L15_2 = L1_2.y
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        end
      end
    end
  end
end

L0_1.action = L1_1
birdJangoFettMovement = L0_1
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
    L1_2 = L1_2.isPreventBirdCollision
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.explosionOnceDone
    if not L2_2 then
      L1_2.explosionOnceDone = true
      L2_2 = makeExplosion
      L3_2 = L1_2
      L4_2 = getObjectDefinition
      L5_2 = L1_2.name
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
actionMakeExplosionOnce = L0_1
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
    L4_2 = A0_2.name
    L3_2 = L3_2(L4_2)
    L4_2 = gamelua
    L4_2 = L4_2.vec2Rotate
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.cos
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.sin
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = L2_2.specialtySpinningStartAngle
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.pi
    L7_2 = L7_2 * L8_2
    L7_2 = L7_2 / 180
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = createObject
    L7_2 = gamelua
    L7_2 = L7_2.blockTable
    L8_2 = L2_2.specialtyObject
    L9_2 = nil
    L10_2 = L1_2.x
    L11_2 = L1_2.y
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = gamelua
    L7_2 = L7_2.objects
    L7_2 = L7_2.world
    L7_2 = L7_2[L6_2]
    L8_2 = setObjectParameter
    L9_2 = L6_2
    L10_2 = 21
    L11_2 = 6
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = setObjectParameter
    L9_2 = L6_2
    L10_2 = 16
    L11_2 = 1
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = setCameraTarget
    L9_2 = L6_2
    L8_2(L9_2)
    L8_2 = gamelua
    L8_2 = L8_2.setScale
    L9_2 = L7_2.name
    L10_2 = 0
    L11_2 = 0
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = setRotation
    L9_2 = L7_2.name
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.atan2
    L11_2 = L4_2
    L12_2 = -L5_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = addUpdateCall
    L9_2 = "updateSpinningBoomerangMovement"
    L10_2 = {}
    L11_2 = A0_2.name
    L10_2.name = L11_2
    L10_2.swordName = L6_2
    L10_2.dirX = L4_2
    L10_2.dirY = L5_2
    L8_2(L9_2, L10_2)
  end
end

L0_1.action = L1_1
useSpinningBoomerangSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.swordName
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.swordName
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = L1_2.definition
      L2_2 = L2_2[L3_2]
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
      L5_2 = A0_2.timer
      if not L5_2 then
        L5_2 = A0_2.dt
        L5_2 = -L5_2
      end
      L6_2 = A0_2.dt
      L5_2 = L5_2 + L6_2
      A0_2.timer = L5_2
      L5_2 = A0_2.timer
      L6_2 = L4_2.specialtySpinningTime
      if L5_2 <= L6_2 then
        L5_2 = A0_2.timer
        L6_2 = L4_2.specialtySpinningTime
        L5_2 = L5_2 / L6_2
        L6_2 = gamelua
        L6_2 = L6_2.vec2Rotate
        L7_2 = A0_2.dirX
        L8_2 = A0_2.dirY
        L9_2 = A0_2.timer
        L10_2 = L4_2.specialtySpinningSpeed
        L9_2 = L9_2 * L10_2
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.pi
        L9_2 = L9_2 * L10_2
        L9_2 = L9_2 / 180
        L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
        L8_2 = L4_2.specialtySpinningDistance
        L8_2 = L8_2 * 4
        L9_2 = 1 - L5_2
        L8_2 = L8_2 * L9_2
        L8_2 = L8_2 * L5_2
        L9_2 = L3_2.x
        L10_2 = L6_2 * L8_2
        L9_2 = L9_2 + L10_2
        L10_2 = L3_2.y
        L11_2 = L7_2 * L8_2
        L10_2 = L10_2 + L11_2
        L11_2 = L2_2.scale
        L12_2 = A0_2.timer
        L13_2 = L2_2.scale
        if L12_2 < L13_2 then
          L11_2 = A0_2.timer
        else
          L12_2 = A0_2.timer
          L13_2 = L4_2.specialtySpinningTime
          L14_2 = L2_2.scale
          L13_2 = L13_2 - L14_2
          if L12_2 > L13_2 then
            L12_2 = L4_2.specialtySpinningTime
            L13_2 = A0_2.timer
            L11_2 = L12_2 - L13_2
          end
        end
        L12_2 = setPosition
        L13_2 = L1_2.name
        L14_2 = L9_2
        L15_2 = L10_2
        L12_2(L13_2, L14_2, L15_2)
        L12_2 = gamelua
        L12_2 = L12_2.setScale
        L13_2 = L1_2.name
        L14_2 = L11_2
        L15_2 = L11_2
        L12_2(L13_2, L14_2, L15_2)
        L12_2 = setRotation
        L13_2 = L1_2.name
        L14_2 = _G
        L14_2 = L14_2.math
        L14_2 = L14_2.atan2
        L15_2 = L6_2
        L16_2 = -L7_2
        L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
        L12_2(L13_2, L14_2, L15_2, L16_2)
      else
        L5_2 = destroyObject
        L6_2 = A0_2.swordName
        L5_2(L6_2)
        L5_2 = gamelua
        L6_2 = gamelua
        L6_2 = L6_2.bulletTimeSmoothOut
        L5_2.bulletTimeTimer = L6_2
      end
  end
  else
    L1_2 = checkStillInWorld
    L2_2 = A0_2.swordName
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = destroyObject
      L2_2 = A0_2.swordName
      L1_2(L2_2)
      L1_2 = gamelua
      L2_2 = gamelua
      L2_2 = L2_2.bulletTimeSmoothOut
      L1_2.bulletTimeTimer = L2_2
    end
  end
end

L0_1.action = L1_1
updateSpinningBoomerangMovement = L0_1
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
    L3_2 = gamelua
    L3_2 = L3_2.vNormalize
    L4_2 = A0_2.xPos
    L5_2 = L1_2.x
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.yPos
    L6_2 = L1_2.y
    L5_2 = L5_2 - L6_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L5_2 = createObject
    L6_2 = gamelua
    L6_2 = L6_2.blockTable
    L7_2 = L2_2.specialtyObject
    L8_2 = nil
    L9_2 = L1_2.x
    L10_2 = L2_2.specialtySpawnDistance
    L10_2 = L3_2 * L10_2
    L9_2 = L9_2 + L10_2
    L10_2 = L1_2.y
    L11_2 = L2_2.specialtySpawnDistance
    L11_2 = L4_2 * L11_2
    L10_2 = L10_2 + L11_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L6_2 = gamelua
    L6_2 = L6_2.objects
    L6_2 = L6_2.world
    L6_2 = L6_2[L5_2]
    L7_2 = setObjectParameter
    L8_2 = L5_2
    L9_2 = 21
    L10_2 = 6
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = setObjectParameter
    L8_2 = L5_2
    L9_2 = 16
    L10_2 = 1
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = L2_2.sounds
    L7_2 = L7_2.special
    L6_2.audioSpecialName = L7_2
    L7_2 = setCameraTarget
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = gamelua
    L7_2 = L7_2.setScale
    L8_2 = L6_2.name
    L9_2 = 0
    L10_2 = 0
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = setRotation
    L8_2 = L6_2.name
    L9_2 = _G
    L9_2 = L9_2.math
    L9_2 = L9_2.atan2
    L10_2 = L4_2
    L11_2 = L3_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L7_2 = addUpdateCall
    L8_2 = "updateBoomerangMovement"
    L9_2 = {}
    L9_2.swordObj = L6_2
    L9_2.birdObj = L1_2
    L10_2 = {}
    L11_2 = L6_2.x
    L10_2.x = L11_2
    L11_2 = L6_2.y
    L10_2.y = L11_2
    L9_2.startPos = L10_2
    L9_2.targetDirX = L3_2
    L9_2.targetDirY = L4_2
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.max
    L11_2 = L2_2.specialtyCatchDistance
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.min
    L13_2 = L2_2.specialtyMaxDistance
    L14_2 = gamelua
    L14_2 = L14_2.distance
    L15_2 = L6_2.x
    L16_2 = L6_2.y
    L17_2 = A0_2.xPos
    L18_2 = A0_2.yPos
    L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2.targetDistance = L10_2
    L10_2 = L2_2.specialtyBoomerangStartVelocity
    L9_2.specialtyBoomerangStartVelocity = L10_2
    L10_2 = L2_2.specialtyBoomerangReturnAcceleration
    L9_2.specialtyBoomerangReturnAcceleration = L10_2
    L10_2 = L2_2.specialtyBoomerangSideForceMultiplier
    L9_2.specialtyBoomerangSideForceMultiplier = L10_2
    L10_2 = L2_2.specialtyBoomerangSideForceTime
    L9_2.specialtyBoomerangSideForceTime = L10_2
    L10_2 = L2_2.specialtySmoothingStartTime
    L9_2.specialtySmoothingStartTime = L10_2
    L10_2 = L2_2.specialtySmoothingEndTime
    L9_2.specialtySmoothingEndTime = L10_2
    L10_2 = L2_2.specialtyBoomerangSpin
    L9_2.specialtyBoomerangSpin = L10_2
    L7_2(L8_2, L9_2)
  end
end

L0_1.action = L1_1
useSaberBoomerangSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = A0_2.swordObj
  L2_2 = A0_2.birdObj
  L3_2 = A0_2.startPos
  L4_2 = A0_2.targetDirX
  L5_2 = A0_2.targetDirY
  L6_2 = A0_2.targetDistance
  L7_2 = checkStillInWorld
  L8_2 = L1_2.name
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = A0_2.timer
    if not L7_2 then
      L7_2 = A0_2.dt
      L7_2 = -L7_2
    end
    L8_2 = A0_2.dt
    L7_2 = L7_2 + L8_2
    A0_2.timer = L7_2
    L7_2 = gamelua
    L7_2 = L7_2.blockTable
    L7_2 = L7_2.blocks
    L8_2 = L1_2.definition
    L7_2 = L7_2[L8_2]
    L8_2 = L7_2.scale
    L9_2 = A0_2.reachedCursor
    if not L9_2 then
      L9_2 = L3_2.x
      L10_2 = A0_2.timer
      L10_2 = L4_2 * L10_2
      L11_2 = A0_2.specialtyBoomerangStartVelocity
      L10_2 = L10_2 * L11_2
      L9_2 = L9_2 + L10_2
      L10_2 = L3_2.y
      L11_2 = A0_2.timer
      L11_2 = L5_2 * L11_2
      L12_2 = A0_2.specialtyBoomerangStartVelocity
      L11_2 = L11_2 * L12_2
      L10_2 = L10_2 + L11_2
      L11_2 = setPosition
      L12_2 = L1_2.name
      L13_2 = L9_2
      L14_2 = L10_2
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = A0_2.timer
      L12_2 = A0_2.specialtyBoomerangStartVelocity
      L11_2 = L11_2 * L12_2
      if L6_2 <= L11_2 then
        A0_2.reachedCursor = true
        L11_2 = {}
        L12_2 = A0_2.specialtyBoomerangStartVelocity
        L12_2 = L4_2 * L12_2
        L11_2.x = L12_2
        L12_2 = A0_2.specialtyBoomerangStartVelocity
        L12_2 = L5_2 * L12_2
        L11_2.y = L12_2
        A0_2.currentVel = L11_2
        L11_2 = gamelua
        L11_2 = L11_2.hideAutoReticle
        L11_2()
        A0_2.timer = 0
        L11_2 = A0_2.specialtyBoomerangSpin
        if not L11_2 then
          A0_2.spinDone = true
        end
      end
      L11_2 = L7_2.scale
      L12_2 = A0_2.timer
      L11_2 = L11_2 * L12_2
      L12_2 = L7_2.specialtyScaleUpSpeed
      L8_2 = L11_2 * L12_2
    else
      L9_2 = A0_2.spinDone
      if not L9_2 then
        L9_2 = L3_2.x
        L10_2 = L4_2 * L6_2
        L9_2 = L9_2 + L10_2
        L10_2 = L3_2.y
        L11_2 = L5_2 * L6_2
        L10_2 = L10_2 + L11_2
        L11_2 = A0_2.timer
        L12_2 = A0_2.specialtyBoomerangSpin
        L12_2 = L12_2.time
        if L11_2 < L12_2 then
          L11_2 = A0_2.timer
          L12_2 = A0_2.specialtyBoomerangSpin
          L12_2 = L12_2.time
          L11_2 = L11_2 / L12_2
          L12_2 = gamelua
          L12_2 = L12_2.vec2Rotate
          L13_2 = L4_2
          L14_2 = L5_2
          L15_2 = A0_2.specialtyBoomerangSpin
          L15_2 = L15_2.rotateAngle
          L15_2 = L11_2 * L15_2
          L16_2 = _G
          L16_2 = L16_2.math
          L16_2 = L16_2.pi
          L15_2 = L15_2 * L16_2
          L15_2 = L15_2 / 180
          L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2)
          L14_2 = L1_2.x
          L15_2 = A0_2.specialtyBoomerangSpin
          L15_2 = L15_2.velocity
          L15_2 = L12_2 * L15_2
          L16_2 = A0_2.dt
          L15_2 = L15_2 * L16_2
          L14_2 = L14_2 + L15_2
          L15_2 = L1_2.y
          L16_2 = A0_2.specialtyBoomerangSpin
          L16_2 = L16_2.velocity
          L16_2 = L13_2 * L16_2
          L17_2 = A0_2.dt
          L16_2 = L16_2 * L17_2
          L15_2 = L15_2 + L16_2
          L16_2 = setPosition
          L17_2 = L1_2.name
          L18_2 = L14_2
          L19_2 = L15_2
          L16_2(L17_2, L18_2, L19_2)
          L16_2 = setRotation
          L17_2 = L1_2.name
          L18_2 = _G
          L18_2 = L18_2.math
          L18_2 = L18_2.atan2
          L19_2 = L13_2
          L20_2 = L12_2
          L18_2, L19_2, L20_2, L21_2, L22_2 = L18_2(L19_2, L20_2)
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        else
          L11_2 = nil
          L12_2 = nil
          L13_2 = checkStillInWorld
          L14_2 = L2_2.name
          L13_2 = L13_2(L14_2)
          if L13_2 then
            L13_2 = vNormalize
            L14_2 = L2_2.x
            L15_2 = L1_2.x
            L14_2 = L14_2 - L15_2
            L15_2 = L2_2.y
            L16_2 = L1_2.y
            L15_2 = L15_2 - L16_2
            L13_2, L14_2 = L13_2(L14_2, L15_2)
            L12_2 = L14_2
            L11_2 = L13_2
          else
            L13_2 = gamelua
            L13_2 = L13_2.vec2Rotate
            L14_2 = L4_2
            L15_2 = L5_2
            L16_2 = A0_2.specialtyBoomerangSpin
            L16_2 = L16_2.rotateAngle
            L17_2 = _G
            L17_2 = L17_2.math
            L17_2 = L17_2.pi
            L16_2 = L16_2 * L17_2
            L16_2 = L16_2 / 180
            L13_2, L14_2 = L13_2(L14_2, L15_2, L16_2)
            L12_2 = L14_2
            L11_2 = L13_2
          end
          L13_2 = {}
          L14_2 = A0_2.specialtyBoomerangSpin
          L14_2 = L14_2.velocity
          L14_2 = L11_2 * L14_2
          L13_2.x = L14_2
          L14_2 = A0_2.specialtyBoomerangSpin
          L14_2 = L14_2.velocity
          L14_2 = L12_2 * L14_2
          L13_2.y = L14_2
          A0_2.currentVel = L13_2
          A0_2.spinDone = true
          A0_2.timer = 0
        end
      else
        L9_2 = checkStillInWorld
        L10_2 = L2_2.name
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = gamelua
          L9_2 = L9_2.blockTable
          L9_2 = L9_2.blocks
          L10_2 = L2_2.definition
          L9_2 = L9_2[L10_2]
          L10_2 = gamelua
          L10_2 = L10_2.distance
          L11_2 = L1_2.x
          L12_2 = L1_2.y
          L13_2 = L2_2.x
          L14_2 = L2_2.y
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          L11_2 = vNormalize
          L12_2 = L2_2.x
          L13_2 = L1_2.x
          L12_2 = L12_2 - L13_2
          L13_2 = L2_2.y
          L14_2 = L1_2.y
          L13_2 = L13_2 - L14_2
          L11_2, L12_2 = L11_2(L12_2, L13_2)
          L13_2 = A0_2.timer
          L14_2 = A0_2.specialtyBoomerangSideForceTime
          if L13_2 < L14_2 then
            L13_2 = A0_2.specialtyBoomerangSideForceTime
            L14_2 = A0_2.timer
            L13_2 = L13_2 - L14_2
            L14_2 = A0_2.specialtyBoomerangSideForceTime
            L13_2 = L13_2 / L14_2
            L14_2 = A0_2.specialtyBoomerangSideForceMultiplier
            L14_2 = L5_2 * L14_2
            L14_2 = L14_2 * L13_2
            L11_2 = L11_2 - L14_2
            L14_2 = A0_2.specialtyBoomerangSideForceMultiplier
            L14_2 = L4_2 * L14_2
            L14_2 = L14_2 * L13_2
            L12_2 = L12_2 + L14_2
          end
          L13_2 = A0_2.specialtyBoomerangReturnAcceleration
          L14_2 = A0_2.dt
          L13_2 = L13_2 * L14_2
          L14_2 = L11_2 * L13_2
          L15_2 = L12_2 * L13_2
          L16_2 = {}
          L17_2 = A0_2.currentVel
          L17_2 = L17_2.x
          L17_2 = L17_2 + L14_2
          L16_2.x = L17_2
          L17_2 = A0_2.currentVel
          L17_2 = L17_2.y
          L17_2 = L17_2 + L15_2
          L16_2.y = L17_2
          A0_2.currentVel = L16_2
          L16_2 = A0_2.timer
          L17_2 = A0_2.specialtySmoothingStartTime
          if L16_2 > L17_2 then
            L16_2 = gamelua
            L16_2 = L16_2.dotProduct
            L17_2 = A0_2.currentVel
            L17_2 = L17_2.x
            L18_2 = A0_2.currentVel
            L18_2 = L18_2.y
            L19_2 = L11_2
            L20_2 = L12_2
            L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
            if 0 < L16_2 then
              L17_2 = _G
              L17_2 = L17_2.math
              L17_2 = L17_2.min
              L18_2 = 1
              L19_2 = A0_2.timer
              L20_2 = A0_2.specialtySmoothingStartTime
              L19_2 = L19_2 - L20_2
              L20_2 = A0_2.specialtySmoothingEndTime
              L21_2 = A0_2.specialtySmoothingStartTime
              L20_2 = L20_2 - L21_2
              L19_2 = L19_2 / L20_2
              L17_2 = L17_2(L18_2, L19_2)
              L18_2 = gamelua
              L18_2 = L18_2.distance
              L19_2 = 0
              L20_2 = 0
              L21_2 = A0_2.currentVel
              L21_2 = L21_2.x
              L22_2 = A0_2.currentVel
              L22_2 = L22_2.y
              L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
              L19_2 = A0_2.currentVel
              L19_2 = L19_2.x
              L20_2 = L11_2 * L18_2
              L21_2 = A0_2.currentVel
              L21_2 = L21_2.x
              L20_2 = L20_2 - L21_2
              L20_2 = L20_2 * L17_2
              L19_2 = L19_2 + L20_2
              L20_2 = A0_2.currentVel
              L20_2 = L20_2.y
              L21_2 = L12_2 * L18_2
              L22_2 = A0_2.currentVel
              L22_2 = L22_2.y
              L21_2 = L21_2 - L22_2
              L21_2 = L21_2 * L17_2
              L20_2 = L20_2 + L21_2
              L21_2 = {}
              L21_2.x = L19_2
              L21_2.y = L20_2
              A0_2.currentVel = L21_2
            end
          end
          L16_2 = L9_2.specialtyCatchDistance
          if L10_2 < L16_2 then
            L16_2 = destroyObject
            L17_2 = L1_2.name
            L16_2(L17_2)
            L16_2 = gamelua
            L17_2 = gamelua
            L17_2 = L17_2.bulletTimeSmoothOut
            L16_2.bulletTimeTimer = L17_2
            A0_2.bulletTimeStopped = true
          end
          L16_2 = L7_2.scale
          L17_2 = _G
          L17_2 = L17_2.math
          L17_2 = L17_2.max
          L18_2 = 0
          L19_2 = L9_2.specialtyCatchDistance
          L19_2 = L19_2 * 0.5
          L19_2 = L10_2 - L19_2
          L17_2 = L17_2(L18_2, L19_2)
          L16_2 = L16_2 * L17_2
          L17_2 = L7_2.specialtyScaleDownDistance
          L8_2 = L16_2 / L17_2
        else
          L9_2 = A0_2.bulletTimeStopped
          if not L9_2 then
            A0_2.bulletTimeStopped = true
            L9_2 = gamelua
            L10_2 = gamelua
            L10_2 = L10_2.bulletTimeSmoothOut
            L9_2.bulletTimeTimer = L10_2
          end
        end
        L9_2 = L1_2.x
        L10_2 = A0_2.currentVel
        L10_2 = L10_2.x
        L11_2 = A0_2.dt
        L10_2 = L10_2 * L11_2
        L9_2 = L9_2 + L10_2
        L10_2 = L1_2.y
        L11_2 = A0_2.currentVel
        L11_2 = L11_2.y
        L12_2 = A0_2.dt
        L11_2 = L11_2 * L12_2
        L10_2 = L10_2 + L11_2
        L11_2 = setPosition
        L12_2 = L1_2.name
        L13_2 = L9_2
        L14_2 = L10_2
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = setRotation
        L12_2 = L1_2.name
        L13_2 = _G
        L13_2 = L13_2.math
        L13_2 = L13_2.atan2
        L14_2 = A0_2.currentVel
        L14_2 = L14_2.y
        L15_2 = A0_2.currentVel
        L15_2 = L15_2.x
        L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2, L15_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
    end
    L9_2 = _G
    L9_2 = L9_2.math
    L9_2 = L9_2.min
    L10_2 = L8_2
    L11_2 = L7_2.scale
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
    L9_2 = gamelua
    L9_2 = L9_2.setScale
    L10_2 = L1_2.name
    L11_2 = L8_2
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
end

L0_1.action = L1_1
updateBoomerangMovement = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addUpdateCall
  L2_2 = "updateBoomerang"
  L3_2 = {}
  L4_2 = A0_2.name
  L3_2.name = L4_2
  L1_2(L2_2, L3_2)
end

L0_1.action = L1_1
lightsaberBoomerangOnCreated = L0_1
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
    L3_2 = A0_2.time
    if not L3_2 then
      L3_2 = 0
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.time = L3_2
    L3_2 = A0_2.time
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.pi
    L3_2 = L3_2 * L4_2
    L4_2 = L2_2.specialtyRotationSpeed
    L3_2 = L3_2 * L4_2
    L4_2 = gamelua
    L4_2 = L4_2.setSpriteRotation
    L5_2 = A0_2.name
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.trailTimer
    if not L4_2 then
      L4_2 = 0
    end
    L5_2 = A0_2.dt
    L4_2 = L4_2 + L5_2
    A0_2.trailTimer = L4_2
    L4_2 = A0_2.trailTimer
    L5_2 = L2_2.particlesTrailTimer
    if L4_2 >= L5_2 then
      L4_2 = A0_2.trailTimer
      L5_2 = L2_2.particlesTrailTimer
      L4_2 = L4_2 - L5_2
      A0_2.trailTimer = L4_2
      L4_2 = gamelua
      L4_2 = L4_2.putParticles
      L5_2 = {}
      L6_2 = L2_2.particlesTrail
      L5_2.particles = L6_2
      L5_2.amount = 1
      L6_2 = L1_2.x
      L5_2.x = L6_2
      L6_2 = L1_2.y
      L5_2.y = L6_2
      L6_2 = L3_2 * 180
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.pi
      L6_2 = L6_2 / L7_2
      L5_2.angle = L6_2
      L6_2 = L1_2.scaleX
      L5_2.minScaleBegin = L6_2
      L6_2 = L1_2.scaleX
      L5_2.maxScaleBegin = L6_2
      L6_2 = L1_2.scaleX
      L5_2.minScaleEnd = L6_2
      L6_2 = L1_2.scaleX
      L5_2.maxScaleEnd = L6_2
      L4_2(L5_2)
    end
  end
end

L0_1.action = L1_1
updateBoomerang = L0_1
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
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = A0_2.other
  L3_2 = L3_2[L4_2]
  L4_2 = gamelua
  L4_2 = L4_2.putParticles
  L5_2 = {}
  L6_2 = L1_2.x
  L5_2.x = L6_2
  L6_2 = L1_2.y
  L5_2.y = L6_2
  L6_2 = L2_2.particlesCollision
  L5_2.particles = L6_2
  L4_2(L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.objects
  L4_2 = L4_2.world
  L5_2 = A0_2.other
  L4_2 = L4_2[L5_2]
  L5_2 = gamelua
  L5_2 = L5_2.blockTable
  L5_2 = L5_2.blocks
  L6_2 = L4_2.definition
  L5_2 = L5_2[L6_2]
  L6_2 = L2_2.destroyMaterials
  L7_2 = L5_2.material
  L6_2 = L6_2[L7_2]
  if L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.putParticles
    L7_2 = {}
    L8_2 = L1_2.x
    L7_2.x = L8_2
    L8_2 = L1_2.y
    L7_2.y = L8_2
    L8_2 = L2_2.particlesDestroyed
    L7_2.particles = L8_2
    L6_2(L7_2)
    L6_2 = gamelua
    L7_2 = gamelua
    L7_2 = L7_2.bulletTimeSmoothOut
    L6_2.bulletTimeTimer = L7_2
    L6_2 = destroyObject
    L7_2 = A0_2.name
    L6_2(L7_2)
    L6_2 = gamelua
    L6_2 = L6_2.isAudioPlaying
    L7_2 = L1_2.audioSpecialName
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.stopAudio
      L7_2 = L1_2.audioSpecialName
      L6_2(L7_2)
    end
  end
end

L0_1.action = L1_1
lightsaberBoomerangOnCollisionEnter = L0_1
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
    L3_2 = A0_2.xPos
    L1_2.targetX = L3_2
    L3_2 = A0_2.yPos
    L1_2.targetY = L3_2
    L1_2.afterburnerActivated = true
    L3_2 = addEventCall
    L4_2 = "spawnLoopingParticles"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = addEventCall
    L4_2 = "ragdollAfterburnerOnCollisionEnter"
    L5_2 = A0_2
    L6_2 = L2_2.specialtyAfterburnerMaxFlyingTime
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = addEventCall
    L4_2 = "ignoreGravity"
    L5_2 = {}
    L6_2 = L1_2.name
    L5_2.name = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = L2_2.specialtyShots
    if L3_2 then
      L3_2 = addEventCall
      L4_2 = "useLazerShotSpecialty"
      L5_2 = {}
      L6_2 = A0_2.name
      L5_2.name = L6_2
      L6_2 = A0_2.xPos
      L5_2.xPos = L6_2
      L6_2 = A0_2.yPos
      L5_2.yPos = L6_2
      L5_2.getAngleFromParent = true
      L3_2(L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
useRagdollAfterburnerSpecialty = L0_1
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
  L5_2 = L2_2.specialtyRagdollObject
  L6_2 = nil
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = gamelua
  L4_2 = L4_2.objects
  L4_2 = L4_2.world
  L4_2 = L4_2[L3_2]
  L5_2 = L1_2.name
  L6_2 = "_afterburnerJoint"
  L5_2 = L5_2 .. L6_2
  L1_2.jointName = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.createJoint
  L6_2 = {}
  L7_2 = L1_2.jointName
  L6_2.name = L7_2
  L6_2.type = 6
  L7_2 = L1_2.name
  L6_2.end1 = L7_2
  L7_2 = L4_2.name
  L6_2.end2 = L7_2
  L6_2.coordType = 2
  L6_2.x1 = 0
  L6_2.y1 = 0
  L6_2.x2 = 0
  L6_2.y2 = 0
  L7_2 = L2_2.specialtyCollideConnected
  L6_2.collideConnected = L7_2
  L7_2 = L2_2.specialtyStringMaxLength
  L6_2.maxLength = L7_2
  L5_2(L6_2)
  L5_2 = gamelua
  L5_2 = L5_2.objects
  L5_2 = L5_2.joints
  L6_2 = L1_2.jointName
  L5_2 = L5_2[L6_2]
  L5_2.isAfterburnerJoint = true
  L5_2 = setCameraTarget
  L6_2 = L4_2.name
  L5_2(L6_2)
  L5_2 = setSprite
  L6_2 = L1_2.name
  L7_2 = L2_2.specialtyAfterburnerSprite
  L5_2(L6_2, L7_2)
  L1_2.ignoreCollisionSprite = true
  L5_2 = L2_2.sprites
  L5_2 = L5_2.collision
  A0_2.ragCollisionSprite = L5_2
  L5_2 = L1_2.name
  A0_2.podObjName = L5_2
  L5_2 = L4_2.name
  A0_2.ragObjName = L5_2
  L5_2 = addEventCall
  L6_2 = "birdTailParticlesUpdate"
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = addUpdateCall
  L6_2 = "updateRagdollAfterBurner"
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
end

L0_1.action = L1_1
ragdollAfterburnerOnLaunched = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.podObjName
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.podObjName
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.getLinearVelocity
    L4_2 = L1_2.name
    L3_2, L4_2 = L3_2(L4_2)
    L5_2 = vNormalize
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2, L6_2 = L5_2(L6_2, L7_2)
    L7_2 = L1_2.afterburnerActivated
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.distance
      L8_2 = L1_2.x
      L9_2 = L1_2.y
      L10_2 = L1_2.targetX
      L11_2 = L1_2.targetY
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = A0_2.reachedTarget
      if not L8_2 then
        L8_2 = L2_2.specialtyAfterburnerTargetRadius
        if L7_2 < L8_2 then
          L8_2 = print
          L9_2 = "Target reached."
          L8_2(L9_2)
          L8_2 = gamelua
          L8_2 = L8_2.hideAutoReticle
          L8_2()
          A0_2.reachedTarget = true
          L8_2 = L5_2
          A0_2.targetDirY = L6_2
          A0_2.targetDirX = L8_2
        end
      end
      L8_2 = vNormalize
      L9_2 = L1_2.targetX
      L10_2 = L1_2.x
      L9_2 = L9_2 - L10_2
      L10_2 = L1_2.targetY
      L11_2 = L1_2.y
      L10_2 = L10_2 - L11_2
      L8_2, L9_2 = L8_2(L9_2, L10_2)
      L10_2 = A0_2.reachedTarget
      if L10_2 then
        L10_2 = A0_2.targetDirX
        L9_2 = A0_2.targetDirY
        L8_2 = L10_2
      end
      L10_2 = L2_2.specialtyAfterburnerAcceleration
      L10_2 = L8_2 * L10_2
      L11_2 = A0_2.dt
      L10_2 = L10_2 * L11_2
      L10_2 = L3_2 + L10_2
      L11_2 = L2_2.specialtyAfterburnerAcceleration
      L11_2 = L9_2 * L11_2
      L12_2 = A0_2.dt
      L11_2 = L11_2 * L12_2
      L11_2 = L4_2 + L11_2
      L12_2 = gamelua
      L12_2 = L12_2.distance
      L13_2 = 0
      L14_2 = 0
      L15_2 = L10_2
      L16_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L13_2 = L2_2.specialtyAfterburnerMaxVelocity
      if L12_2 > L13_2 then
        L13_2 = L10_2 / L12_2
        L14_2 = L2_2.specialtyAfterburnerMaxVelocity
        L10_2 = L13_2 * L14_2
        L13_2 = L11_2 / L12_2
        L14_2 = L2_2.specialtyAfterburnerMaxVelocity
        L11_2 = L13_2 * L14_2
      end
      L13_2 = setVelocity
      L14_2 = L1_2.name
      L15_2 = L10_2
      L16_2 = L11_2
      L13_2(L14_2, L15_2, L16_2)
      L13_2 = setRotation
      L14_2 = L1_2.name
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.atan2
      L16_2 = L11_2
      L17_2 = L10_2
      L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2)
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    end
    L7_2 = checkStillInWorld
    L8_2 = A0_2.ragObjName
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = gamelua
      L7_2 = L7_2.objects
      L7_2 = L7_2.world
      L8_2 = A0_2.ragObjName
      L7_2 = L7_2[L8_2]
      L8_2 = vNormalize
      L9_2 = L1_2.x
      L10_2 = L7_2.x
      L9_2 = L9_2 - L10_2
      L10_2 = L1_2.y
      L11_2 = L7_2.y
      L10_2 = L10_2 - L11_2
      L8_2, L9_2 = L8_2(L9_2, L10_2)
      L10_2 = setRotation
      L11_2 = L7_2.name
      L12_2 = _G
      L12_2 = L12_2.math
      L12_2 = L12_2.atan2
      L13_2 = L9_2
      L14_2 = L8_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2, L14_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L10_2 = L1_2.afterburnerActivated
      if not L10_2 then
        L10_2 = L1_2.x
        L11_2 = L2_2.specialtyStringStartLength
        L11_2 = L5_2 * L11_2
        L10_2 = L10_2 - L11_2
        L11_2 = L1_2.y
        L12_2 = L2_2.specialtyStringStartLength
        L12_2 = L6_2 * L12_2
        L11_2 = L11_2 - L12_2
        L12_2 = L7_2.x
        L12_2 = L10_2 - L12_2
        L13_2 = L7_2.y
        L13_2 = L11_2 - L13_2
        L14_2 = L2_2.specialtyStringStartTightness
        L14_2 = L12_2 * L14_2
        L15_2 = L2_2.specialtyStringStartTightness
        L15_2 = L13_2 * L15_2
        L16_2 = setVelocity
        L17_2 = L7_2.name
        L18_2 = L3_2 + L14_2
        L19_2 = L4_2 + L15_2
        L16_2(L17_2, L18_2, L19_2)
      else
        L10_2 = applyForce
        L11_2 = L7_2.name
        L12_2 = -L5_2
        L13_2 = L2_2.specialtyRagdollMoveBackForce
        L12_2 = L12_2 * L13_2
        L13_2 = -L6_2
        L14_2 = L2_2.specialtyRagdollMoveBackForce
        L13_2 = L13_2 * L14_2
        L14_2 = L7_2.x
        L15_2 = L7_2.y
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
    L7_2 = L1_2.isReadyForRemoveTimer
    if L7_2 < 0.5 then
      L7_2 = addEventCall
      L8_2 = "ragdollAfterburnerOnCollisionEnter"
      L9_2 = {}
      L10_2 = A0_2.podObjName
      L9_2.name = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = checkStillInWorld
  L2_2 = A0_2.ragObjName
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.podObjName
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = setSprite
      L2_2 = A0_2.ragObjName
      L3_2 = A0_2.ragCollisionSprite
      L1_2(L2_2, L3_2)
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.ragObjName
      L1_2 = L1_2[L2_2]
      L2_2 = L1_2.sleeping
      if L2_2 then
        L2_2 = destroyObject
        L3_2 = L1_2.name
        L2_2(L3_2)
      end
    end
  end
  L1_2 = checkStillInWorld
  L2_2 = A0_2.podObjName
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.ragObjName
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = addEventCall
      L2_2 = "ragdollAfterburnerOnCollisionEnter"
      L3_2 = {}
      L4_2 = A0_2.podObjName
      L3_2.name = L4_2
      L1_2(L2_2, L3_2)
    end
  end
end

L0_1.action = L1_1
updateRagdollAfterBurner = L0_1
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
    L3_2 = makeExplosion
    L4_2 = L1_2
    L5_2 = getObjectDefinition
    L6_2 = L1_2.name
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = gamelua
    L3_2 = L3_2.activateBulletTime
    L4_2 = L2_2.specialtyBulletTime
    L4_2 = L4_2.smoothIn
    L5_2 = L2_2.specialtyBulletTime
    L5_2 = L5_2.duration
    L6_2 = L2_2.specialtyBulletTime
    L6_2 = L6_2.smoothOut
    L7_2 = L2_2.specialtyBulletTime
    L7_2 = L7_2.timeMultiplier
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = gamelua
    L3_2 = L3_2.hideAutoReticle
    L3_2()
    L3_2 = addEventCall
    L4_2 = "destroyBird"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.action = L1_1
ragdollAfterburnerOnCollisionEnter = L0_1
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
  L1_2.droidekaSpinDirection = 1
  L1_2.rotateWhileFlyingDisabled = true
  L1_2.ignoreCollisionSprite = true
  L3_2 = setSprite
  L4_2 = L1_2.name
  L5_2 = L2_2.specialtySpinSprite
  L3_2(L4_2, L5_2)
  L3_2 = addUpdateCall
  L4_2 = "updateDroideka"
  L5_2 = A0_2
  L6_2 = nil
  L7_2 = L1_2.name
  L8_2 = "_spinUpdater"
  L7_2 = L7_2 .. L8_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = addEventCall
  L4_2 = "droidekaStop"
  L5_2 = A0_2
  L6_2 = L2_2.specialtySpinTime
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.action = L1_1
useDroidekaSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
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
  L3_2 = L1_2.collisionAmount
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 + 1
  L1_2.collisionAmount = L3_2
  L3_2 = L1_2.droidekaSpinDirection
  if L3_2 then
    L3_2 = L2_2.specialtySpinVelocity
    L4_2 = gamelua
    L4_2 = L4_2.getLinearVelocity
    L5_2 = L1_2.name
    L4_2, L5_2 = L4_2(L5_2)
    L6_2 = gamelua
    L6_2 = L6_2.vNormalize
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2, L7_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2.collisionNormalY
    L9_2 = A0_2.collisionNormalX
    L9_2 = -L9_2
    L10_2 = gamelua
    L10_2 = L10_2.dotProduct
    L11_2 = L6_2
    L12_2 = L7_2
    L13_2 = L8_2
    L14_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    if L10_2 < 0 then
      L11_2 = setVelocity
      L12_2 = L1_2.name
      L13_2 = -L8_2
      L13_2 = L13_2 * L3_2
      L14_2 = -L9_2
      L14_2 = L14_2 * L3_2
      L11_2(L12_2, L13_2, L14_2)
      L1_2.droidekaSpinDirection = 1
    else
      L11_2 = setVelocity
      L12_2 = L1_2.name
      L13_2 = L8_2 * L3_2
      L14_2 = L9_2 * L3_2
      L11_2(L12_2, L13_2, L14_2)
      L1_2.droidekaSpinDirection = -1
    end
    L11_2 = applyImpulse
    L12_2 = A0_2.other
    L13_2 = A0_2.collisionNormalX
    L13_2 = -L13_2
    L14_2 = L2_2.specialtyKickImpulseToWall
    L13_2 = L13_2 * L14_2
    L14_2 = A0_2.collisionNormalY
    L14_2 = -L14_2
    L15_2 = L2_2.specialtyKickImpulseToWall
    L14_2 = L14_2 * L15_2
    L15_2 = A0_2.collisionPointX
    L16_2 = A0_2.collisionPointY
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = _G
    L11_2 = L11_2.math
    L11_2 = L11_2.atan2
    L12_2 = L9_2
    L13_2 = L8_2
    L11_2 = L11_2(L12_2, L13_2)
    L11_2 = L11_2 * 180
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.pi
    L11_2 = L11_2 / L12_2
    if 0 <= L10_2 then
      L11_2 = L11_2 + 180
    end
    L12_2 = putParticles
    L13_2 = {}
    L14_2 = A0_2.collisionPointX
    L13_2.x = L14_2
    L14_2 = A0_2.collisionPointY
    L13_2.y = L14_2
    L14_2 = L2_2.specialtyBounceParticles
    L13_2.particles = L14_2
    L14_2 = L2_2.specialtyBounceParticlesAmount
    L13_2.amount = L14_2
    L14_2 = L2_2.specialtyBounceParticlesSpread
    L14_2 = L14_2 * 0.5
    L14_2 = L11_2 - L14_2
    L13_2.minAngleEmitter = L14_2
    L14_2 = L2_2.specialtyBounceParticlesSpread
    L14_2 = L14_2 * 0.5
    L14_2 = L11_2 + L14_2
    L13_2.maxAngleEmitter = L14_2
    L12_2(L13_2)
  end
end

L0_1.action = L1_1
droidekaOnCollisionEnter = L0_1
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
  L2_2 = L1_2.collisionAmount
  if not L2_2 then
    L2_2 = 1
  end
  L2_2 = L2_2 - 1
  L1_2.collisionAmount = L2_2
end

L0_1.action = L1_1
droidekaOnCollisionExit = L0_1
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
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.time
    if not L3_2 then
      L3_2 = 0
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.time = L3_2
    L3_2 = setRotation
    L4_2 = L1_2.name
    L5_2 = A0_2.time
    L6_2 = L2_2.specialtySpriteRotationSpeed
    L5_2 = L5_2 * L6_2
    L6_2 = L1_2.droidekaSpinDirection
    L5_2 = L5_2 * L6_2
    L3_2(L4_2, L5_2)
    L3_2 = gamelua
    L3_2 = L3_2.setAngularVelocity
    L4_2 = L1_2.name
    L5_2 = 0
    L3_2(L4_2, L5_2)
    L1_2.delayedRemovalTimer = nil
    L3_2 = gamelua
    L3_2 = L3_2.native_setTimeSinceCollision
    L4_2 = L1_2.name
    L5_2 = -1
    L3_2(L4_2, L5_2)
    L3_2 = L1_2.collisionAmount
    if L3_2 then
      L3_2 = L1_2.collisionAmount
      if 0 < L3_2 then
        L3_2 = L2_2.specialtySpinVelocity
        L4_2 = gamelua
        L4_2 = L4_2.getLinearVelocity
        L5_2 = L1_2.name
        L4_2, L5_2 = L4_2(L5_2)
        L6_2 = gamelua
        L6_2 = L6_2.vNormalize
        L7_2 = L4_2
        L8_2 = L5_2
        L6_2, L7_2 = L6_2(L7_2, L8_2)
        L8_2 = setVelocity
        L9_2 = L1_2.name
        L10_2 = L6_2 * L3_2
        L11_2 = L7_2 * L3_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end

L0_1.action = L1_1
updateDroideka = L0_1
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
    L3_2 = gamelua
    L3_2 = L3_2.getLinearVelocity
    L4_2 = L1_2.name
    L3_2, L4_2 = L3_2(L4_2)
    L5_2 = {}
    L5_2.definition = L2_2
    L6_2 = L1_2.x
    L5_2.x = L6_2
    L6_2 = L1_2.y
    L5_2.y = L6_2
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.atan2
    L7_2 = L4_2
    L8_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.pi
    L7_2 = L7_2 * 0.5
    L6_2 = L6_2 + L7_2
    L5_2.angle = L6_2
    L6_2 = L2_2.addMovingSpeedFromParentMultiplier
    L6_2 = L3_2 * L6_2
    L5_2.xVel = L6_2
    L6_2 = L2_2.addMovingSpeedFromParentMultiplier
    L6_2 = L4_2 * L6_2
    L5_2.yVel = L6_2
    L6_2 = removeBird
    L7_2 = L1_2
    L6_2(L7_2)
    L6_2 = gamelua
    L6_2 = L6_2.spawnObjects
    L7_2 = L2_2.spawnedObjects
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end

L0_1.action = L1_1
droidekaStop = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
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
    L3_2 = gamelua
    L3_2 = L3_2.vNormalize
    L4_2 = A0_2.xPos
    L5_2 = L1_2.x
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.yPos
    L6_2 = L1_2.y
    L5_2 = L5_2 - L6_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.atan2
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = -L5_2
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.pi
    L6_2 = L6_2 * 0.5
    L5_2 = L5_2 + L6_2
    L6_2 = setRotation
    L7_2 = L1_2.name
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L1_2.rotateWhileFlyingDisabled = true
    L6_2 = gamelua
    L6_2 = L6_2.levelRightEdgePhysics
    L7_2 = gamelua
    L7_2 = L7_2.levelLeftEdgePhysics
    L6_2 = L6_2 - L7_2
    L7_2 = gamelua
    L7_2 = L7_2.levelBottomEdgePhysics
    L8_2 = gamelua
    L8_2 = L8_2.levelTopEdgePhysics
    L7_2 = L7_2 - L8_2
    L8_2 = gamelua
    L8_2 = L8_2.distance
    L9_2 = 0
    L10_2 = 0
    L11_2 = L6_2
    L12_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = L1_2.x
    L10_2 = L3_2 * L8_2
    L9_2 = L9_2 + L10_2
    L10_2 = L1_2.y
    L11_2 = L4_2 * L8_2
    L10_2 = L10_2 + L11_2
    L11_2 = gamelua
    L11_2 = L11_2.raycastToFirstObject
    L12_2 = L1_2
    L13_2 = L9_2
    L14_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = A0_2.xPos
    L13_2 = A0_2.yPos
    if L11_2 then
      L14_2 = L11_2.rayCastContactX
      L13_2 = L11_2.rayCastContactY
      L12_2 = L14_2
    end
    L14_2 = createObject
    L15_2 = gamelua
    L15_2 = L15_2.blockTable
    L16_2 = L2_2.specialtySpawnObject
    L17_2 = nil
    L18_2 = L12_2
    L19_2 = L13_2
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    L15_2 = gamelua
    L15_2 = L15_2.objects
    L15_2 = L15_2.world
    L15_2 = L15_2[L14_2]
    L15_2.sparkCount = 0
    L16_2 = setObjectParameter
    L17_2 = L14_2
    L18_2 = 21
    L19_2 = 6
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = setObjectParameter
    L17_2 = L14_2
    L18_2 = 16
    L19_2 = 1
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = setRotation
    L17_2 = L14_2
    L18_2 = L5_2
    L16_2(L17_2, L18_2)
    L16_2 = setCameraTarget
    L17_2 = L14_2
    L16_2(L17_2)
    L16_2 = {}
    L16_2.x = L3_2
    L16_2.y = L4_2
    L15_2.lightningDirection = L16_2
    if not L11_2 then
      L16_2 = gamelua
      L16_2 = L16_2.blockTable
      L16_2 = L16_2.blocks
      L17_2 = L15_2.definition
      L16_2 = L16_2[L17_2]
      L17_2 = addEventCall
      L18_2 = "createForceLightningSpark"
      L19_2 = {}
      L20_2 = L1_2.name
      L19_2.parentName = L20_2
      L20_2 = L16_2.specialtySpark
      L19_2.defName = L20_2
      L20_2 = A0_2.xPos
      L19_2.x = L20_2
      L20_2 = A0_2.yPos
      L19_2.y = L20_2
      L20_2 = L15_2.sparkCount
      L19_2.sparkNumber = L20_2
      L17_2(L18_2, L19_2)
    end
    L16_2 = L2_2.destroyShadowSensorOnActivate
    if L16_2 then
      L16_2 = addEventCall
      L17_2 = "destroyShadowSensor"
      L18_2 = {}
      L19_2 = A0_2.name
      L18_2.name = L19_2
      L16_2(L17_2, L18_2)
    end
  end
end

L0_1.action = L1_1
useForceLightningSpecialty = L0_1
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
  L3_2 = addEventCall
  L4_2 = "destroy"
  L5_2 = {}
  L6_2 = A0_2.name
  L5_2.name = L6_2
  L6_2 = L2_2.specialtyLifetime
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = createObject
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L5_2 = L2_2.specialtyJumpArea
  L6_2 = nil
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = setObjectParameter
  L5_2 = L3_2
  L6_2 = 16
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  L1_2.jumpAreaName = L3_2
  L4_2 = addEventCall
  L5_2 = "destroy"
  L6_2 = {}
  L6_2.name = L3_2
  L7_2 = L2_2.specialtyLifetime
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = addUpdateCall
  L5_2 = "followParent"
  L6_2 = {}
  L6_2.name = L3_2
  L7_2 = A0_2.name
  L6_2.parent = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_2.parentName
  if not L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.flyingBird
    L4_2 = L4_2.name
  end
  L1_2.parentName = L4_2
end

L0_1.action = L1_1
forceLightningOnCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L5_2 = L2_2.specialtyVelocity
  L6_2 = L4_2.material
  L5_2 = L5_2[L6_2]
  if not L5_2 then
    L5_2 = L2_2.specialtyVelocity
    L5_2 = L5_2.default
  end
  L6_2 = L3_2.insideWater
  if L6_2 then
    L6_2 = L2_2.specialtyVelocity
    L5_2 = L6_2.everythingInsideWater
    L6_2 = putParticles
    L7_2 = {}
    L8_2 = L1_2.x
    L7_2.x = L8_2
    L8_2 = L1_2.y
    L7_2.y = L8_2
    L8_2 = L2_2.specialtyWaterParticles
    L8_2 = L8_2.name
    L7_2.particles = L8_2
    L8_2 = L2_2.specialtyWaterParticles
    L8_2 = L8_2.amount
    L7_2.amount = L8_2
    L6_2(L7_2)
  end
  L6_2 = setVelocity
  L7_2 = L1_2.name
  L8_2 = L1_2.lightningDirection
  L8_2 = L8_2.x
  L8_2 = L8_2 * L5_2
  L9_2 = L1_2.lightningDirection
  L9_2 = L9_2.y
  L9_2 = L9_2 * L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.density
  if L8_2 == 0 then
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.random
    L8_2 = L8_2()
    L9_2 = L2_2.radius
    L8_2 = L8_2 * L9_2
    L9_2 = _G
    L9_2 = L9_2.math
    L9_2 = L9_2.random
    L9_2 = L9_2()
    L9_2 = L9_2 * 2
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.pi
    L9_2 = L9_2 * L10_2
    L10_2 = L1_2.x
    L11_2 = _G
    L11_2 = L11_2.math
    L11_2 = L11_2.cos
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2 * L8_2
    L6_2 = L10_2 + L11_2
    L10_2 = L1_2.y
    L11_2 = _G
    L11_2 = L11_2.math
    L11_2 = L11_2.sin
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2 * L8_2
    L7_2 = L10_2 + L11_2
  end
  L8_2 = L1_2.sparkCount
  L8_2 = L8_2 + 1
  L1_2.sparkCount = L8_2
  L8_2 = addEventCall
  L9_2 = "createForceLightningSpark"
  L10_2 = {}
  L11_2 = L1_2.parentName
  if not L11_2 then
    L11_2 = gamelua
    L11_2 = L11_2.flyingBird
    L11_2 = L11_2.name
  end
  L10_2.parentName = L11_2
  L11_2 = L2_2.specialtySpark
  L10_2.defName = L11_2
  L10_2.x = L6_2
  L10_2.y = L7_2
  L11_2 = L1_2.sparkCount
  L10_2.sparkNumber = L11_2
  L8_2(L9_2, L10_2)
end

L0_1.action = L1_1
forceLightningOnCollisionEnter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L3_2 = L2_2.isSensor
  if not L3_2 then
    L3_2 = L2_2.controllable
    if not L3_2 then
      L3_2 = L1_2.lightningCollisionAmount
      if not L3_2 then
        L3_2 = 0
      end
      L3_2 = L3_2 + 1
      L1_2.lightningCollisionAmount = L3_2
    end
  end
end

L0_1.action = L1_1
forceLightningOnTriggerEnter = L0_1
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
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L1_2.definition
  L2_2 = L2_2[L3_2]
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L4_2 = A0_2.other
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.isSensor
  if not L4_2 then
    L4_2 = L3_2.controllable
    if not L4_2 then
      L4_2 = L1_2.lightningCollisionAmount
      L4_2 = L4_2 - 1
      L1_2.lightningCollisionAmount = L4_2
    end
  end
  L4_2 = L1_2.lightningCollisionAmount
  if L4_2 == 0 then
    L4_2 = L1_2.jumpPending
    if not L4_2 then
      L1_2.jumpPending = true
      L4_2 = addEventCall
      L5_2 = "forceLightningJump"
      L6_2 = {}
      L7_2 = A0_2.name
      L6_2.name = L7_2
      L7_2 = L2_2.specialtyJumpDelay
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end

L0_1.action = L1_1
forceLightningOnTriggerExit = L0_1
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
    L3_2 = L3_2.objects
    L3_2 = L3_2.world
    L4_2 = L1_2.jumpAreaName
    L3_2 = L3_2[L4_2]
    L1_2.jumpPending = false
    if L3_2 then
      L4_2 = L3_2.collideTable
      if L4_2 then
        L4_2 = L3_2.collideTable
        L4_2 = #L4_2
        if 0 < L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.getLinearVelocity
          L5_2 = L1_2.name
          L4_2, L5_2 = L4_2(L5_2)
          L6_2 = vNormalize
          L7_2 = L4_2
          L8_2 = L5_2
          L6_2, L7_2 = L6_2(L7_2, L8_2)
          L8_2 = _G
          L8_2 = L8_2.table
          L8_2 = L8_2.sort
          L9_2 = L3_2.collideTable
          
          function L10_2(A0_3, A1_3)
            local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
            L2_3 = A0_3.x
            L3_3 = L1_2
            L3_3 = L3_3.x
            L2_3 = L2_3 - L3_3
            L3_3 = A0_3.y
            L4_3 = L1_2
            L4_3 = L4_3.y
            L3_3 = L3_3 - L4_3
            L4_3 = A1_3.x
            L5_3 = L1_2
            L5_3 = L5_3.x
            L4_3 = L4_3 - L5_3
            L5_3 = A1_3.y
            L6_3 = L1_2
            L6_3 = L6_3.y
            L5_3 = L5_3 - L6_3
            L6_3 = _G
            L6_3 = L6_3.math
            L6_3 = L6_3.abs
            L7_3 = gamelua
            L7_3 = L7_3.vec2AngleBetween
            L8_3 = L6_2
            L9_3 = L7_2
            L10_3 = L2_3
            L11_3 = L3_3
            L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
            L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L7_3 = _G
            L7_3 = L7_3.math
            L7_3 = L7_3.pi
            L6_3 = L6_3 / L7_3
            L7_3 = L2_2
            L7_3 = L7_3.specialtyJumpForwardMultiplier
            L6_3 = L6_3 * L7_3
            L7_3 = _G
            L7_3 = L7_3.math
            L7_3 = L7_3.abs
            L8_3 = gamelua
            L8_3 = L8_3.vec2AngleBetween
            L9_3 = L6_2
            L10_3 = L7_2
            L11_3 = L4_3
            L12_3 = L5_3
            L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
            L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L8_3 = _G
            L8_3 = L8_3.math
            L8_3 = L8_3.pi
            L7_3 = L7_3 / L8_3
            L8_3 = L2_2
            L8_3 = L8_3.specialtyJumpForwardMultiplier
            L7_3 = L7_3 * L8_3
            L8_3 = L2_2
            L8_3 = L8_3.specialtyMaterialPriority
            L9_3 = A0_3.material
            L8_3 = L8_3[L9_3]
            if not L8_3 then
              L8_3 = 0
            end
            L9_3 = L2_2
            L9_3 = L9_3.specialtyMaterialPriority
            L10_3 = A1_3.material
            L9_3 = L9_3[L10_3]
            if not L9_3 then
              L9_3 = 0
            end
            L10_3 = gamelua
            L10_3 = L10_3.distance
            L11_3 = A0_3.x
            L12_3 = A0_3.y
            L13_3 = L1_2
            L13_3 = L13_3.x
            L14_3 = L1_2
            L14_3 = L14_3.y
            L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
            L11_3 = gamelua
            L11_3 = L11_3.distance
            L12_3 = A1_3.x
            L13_3 = A1_3.y
            L14_3 = L1_2
            L14_3 = L14_3.x
            L15_3 = L1_2
            L15_3 = L15_3.y
            L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
            L12_3 = L10_3 + L6_3
            L12_3 = L12_3 - L8_3
            L13_3 = L11_3 + L7_3
            L13_3 = L13_3 - L9_3
            L12_3 = L12_3 < L13_3
            return L12_3
          end
          
          L8_2(L9_2, L10_2)
          L8_2 = L3_2.collideTable
          L8_2 = L8_2[1]
          L9_2 = L8_2.name
          L10_2 = L1_2.parentName
          if L9_2 ~= L10_2 then
            L9_2 = addEventCall
            L10_2 = "setPositionTo"
            L11_2 = {}
            L12_2 = L1_2.name
            L11_2.name = L12_2
            L12_2 = L8_2.x
            L11_2.x = L12_2
            L12_2 = L8_2.y
            L11_2.y = L12_2
            L9_2(L10_2, L11_2)
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
forceLightningJump = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.defName
  L1_2 = L1_2[L2_2]
  L2_2 = createObject
  L3_2 = gamelua
  L3_2 = L3_2.blockTable
  L4_2 = A0_2.defName
  L5_2 = nil
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = gamelua
  L3_2 = L3_2.objects
  L3_2 = L3_2.world
  L3_2 = L3_2[L2_2]
  L4_2 = A0_2.parentName
  L3_2.parentName = L4_2
  L4_2 = setObjectParameter
  L5_2 = L2_2
  L6_2 = 16
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.sparkNumber
  L3_2.forceLightningSparkNumber = L4_2
  L4_2 = addEventCall
  L5_2 = "destroy"
  L6_2 = {}
  L6_2.name = L2_2
  L7_2 = L1_2.specialtyMaxLifetime
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.random
  L8_2 = L8_2()
  L7_2 = L7_2 * L8_2
  L4_2(L5_2, L6_2, L7_2)
end

L0_1.action = L1_1
createForceLightningSpark = L0_1
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
  L5_2 = L1_2.collideTable
  if not L5_2 then
    L5_2 = {}
    L1_2.collideTable = L5_2
  end
  L5_2 = L3_2.isSensor
  if not L5_2 then
    L5_2 = L1_2.ignoreBirds
    if L5_2 then
      L5_2 = L3_2.controllable
      if L5_2 then
        goto lbl_56
      end
    end
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.insert
    L6_2 = L1_2.collideTable
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = L2_2.isIndestructibleFieldEmitter
    if L5_2 then
      L3_2.inIndestructibleField = true
      L5_2 = L1_2.name
      L3_2.indestructibleFieldEmitter = L5_2
    end
    L5_2 = L2_2.isSlowDownFieldEmitter
    if L5_2 then
      L5_2 = L4_2.ignoreSlowDownField
      if not L5_2 then
        L3_2.inSlowDownField = true
        L5_2 = L1_2.name
        L3_2.slowDownFieldEmitter = L5_2
      end
    end
  end
  ::lbl_56::
end

L0_1.action = L1_1
addToCollideTable = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L5_2 = L3_2.isSensor
  if not L5_2 then
    L5_2 = L1_2.ignoreBirds
    if L5_2 then
      L5_2 = L3_2.controllable
      if L5_2 then
        goto lbl_54
      end
    end
    L5_2 = L2_2.isIndestructibleFieldEmitter
    if L5_2 then
      L3_2.indestructibleFieldEmitter = nil
    end
    L5_2 = L2_2.isSlowDownFieldEmitter
    if L5_2 then
      L3_2.slowDownFieldEmitter = nil
    end
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = L1_2.collideTable
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      if L9_2 == L3_2 then
        L10_2 = _G
        L10_2 = L10_2.table
        L10_2 = L10_2.remove
        L11_2 = L1_2.collideTable
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
        return
      end
    end
  end
  ::lbl_54::
end

L0_1.action = L1_1
removeFromCollideTable = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
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
  L4_2 = 4
  L5_2 = gamelua
  L5_2 = L5_2.getVelocity
  L6_2 = L1_2.name
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L3_2 = L3_2 / 4
  L4_2 = gamelua
  L4_2 = L4_2.getLinearVelocity
  L5_2 = L1_2.name
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = vNormalize
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L8_2 = _G
  L8_2 = L8_2.ipairs
  L9_2 = L2_2.specialtyObjects
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L12_2.offset
    if not L13_2 then
      L13_2 = 0
    end
    L13_2 = L13_2 * L6_2
    L13_2 = L13_2 * L3_2
    L14_2 = L12_2.offset
    if not L14_2 then
      L14_2 = 0
    end
    L14_2 = L14_2 * L7_2
    L14_2 = L14_2 * L3_2
    L15_2 = createObject
    L16_2 = gamelua
    L16_2 = L16_2.blockTable
    L17_2 = L12_2.objName
    L18_2 = L1_2.name
    L19_2 = "_"
    L20_2 = L12_2.objName
    L18_2 = L18_2 .. L19_2 .. L20_2
    L19_2 = L1_2.x
    L19_2 = L19_2 + L13_2
    L20_2 = L1_2.y
    L20_2 = L20_2 + L14_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    L16_2 = L12_2.follow
    if L16_2 then
      L16_2 = addUpdateCall
      L17_2 = "followParent"
      L18_2 = {}
      L18_2.name = L15_2
      L19_2 = A0_2.name
      L18_2.parent = L19_2
      L19_2 = {}
      L19_2.x = L13_2
      L19_2.y = L14_2
      L18_2.offset = L19_2
      L16_2(L17_2, L18_2)
    end
    L16_2 = L12_2.centerOfExplosive
    if L16_2 then
      L16_2 = createObject
      L17_2 = gamelua
      L17_2 = L17_2.blockTable
      L18_2 = L2_2.specialtyExplosiveObject
      L19_2 = nil
      L20_2 = L1_2.x
      L20_2 = L20_2 + L13_2
      L21_2 = L1_2.y
      L21_2 = L21_2 + L14_2
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      L17_2 = gamelua
      L17_2 = L17_2.objects
      L17_2 = L17_2.world
      L17_2 = L17_2[L16_2]
      L18_2 = L1_2.name
      L17_2.parentName = L18_2
    end
    L16_2 = gamelua
    L16_2 = L16_2.objects
    L16_2 = L16_2.world
    L16_2 = L16_2[L15_2]
    L17_2 = L1_2.name
    L16_2.parentName = L17_2
  end
  L8_2 = addEventCall
  L9_2 = "vaderDestroyGravitys"
  L10_2 = A0_2
  L11_2 = L2_2.specialtyObjectsTime
  L8_2(L9_2, L10_2, L11_2)
end

L0_1.action = L1_1
useVaderForceSpecialty = L0_1
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
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = L2_2.specialtyObjects
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L1_2.name
      L9_2 = "_"
      L10_2 = L7_2.objName
      L8_2 = L8_2 .. L9_2 .. L10_2
      L9_2 = checkStillInWorld
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = destroyObject
        L10_2 = L8_2
        L9_2(L10_2)
      end
    end
    L3_2 = L2_2.specialtyVaderShake
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.addCameraShake
      L4_2 = gamelua
      L4_2 = L4_2.cameraShakeModeSine
      L5_2 = L2_2.specialtyVaderShake
      L5_2 = L5_2.velocity
      L6_2 = L2_2.specialtyVaderShake
      L6_2 = L6_2.distortion
      L7_2 = L2_2.specialtyVaderShake
      L7_2 = L7_2.timer
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = L2_2.specialtyExplosiveParticles
    if L3_2 then
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = A0_2.name
      L4_2.objectName = L5_2
      L5_2 = L2_2.specialtyExplosiveParticles
      L5_2 = L5_2.name
      L4_2.particles = L5_2
      L5_2 = L2_2.specialtyExplosiveParticles
      L5_2 = L5_2.amount
      L4_2.amount = L5_2
      L3_2(L4_2)
    end
    L3_2 = L2_2.specialtyExplosiveParticlesFromBird
    if L3_2 then
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = A0_2.name
      L4_2.objectName = L5_2
      L5_2 = L2_2.specialtyExplosiveParticlesFromBird
      L4_2.particles = L5_2
      L4_2.useAmountInDefinition = true
      L3_2(L4_2)
    end
    L3_2 = L2_2.specialtyMultiSwordObjects
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.ipairs
      L4_2 = L2_2.specialtyMultiSwordObjects
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = addEventCall
        L9_2 = "useSwordSpecialty"
        L10_2 = {}
        L11_2 = A0_2.name
        L10_2.name = L11_2
        L11_2 = L7_2.name
        L10_2.swordName = L11_2
        L11_2 = L7_2.sound
        L10_2.soundName = L11_2
        L11_2 = L7_2.delay
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end

L0_1.action = L1_1
vaderDestroyGravitys = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = addUpdateCall
  L2_2 = "vaderGravitationUpdate"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

L0_1.action = L1_1
vaderGravitationOnCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
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
        L8_2 = gamelua
        L8_2 = L8_2.blockTable
        L8_2 = L8_2.blocks
        L9_2 = L7_2.definition
        L8_2 = L8_2[L9_2]
        L9_2 = gamelua
        L9_2 = L9_2.isObjectAffectedByForce
        L10_2 = L7_2
        L11_2 = gamelua
        L11_2 = L11_2.blockTable
        L11_2 = L11_2.materials
        L12_2 = L8_2.material
        L11_2 = L11_2[L12_2]
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L10_2 = L2_2.forceEffectDuration
          L7_2.isAffectedByForceTimer = L10_2
          L10_2 = L2_2.forceEffectColor
          L7_2.forceEffectColor = L10_2
          L10_2 = gamelua
          L10_2 = L10_2.flyingBird
          if L10_2 then
            L10_2 = vNormalize
            L11_2 = gamelua
            L11_2 = L11_2.flyingBird
            L11_2 = L11_2.x
            L12_2 = L7_2.x
            L11_2 = L11_2 - L12_2
            L12_2 = gamelua
            L12_2 = L12_2.flyingBird
            L12_2 = L12_2.y
            L13_2 = L7_2.y
            L12_2 = L12_2 - L13_2
            L10_2, L11_2 = L10_2(L11_2, L12_2)
            L12_2 = applyForce
            L13_2 = L7_2.name
            L14_2 = L2_2.specialtyVaderGravitationForce
            L14_2 = L10_2 * L14_2
            L15_2 = L2_2.specialtyVaderGravitationForce
            L15_2 = L11_2 * L15_2
            L16_2 = L7_2.x
            L17_2 = L7_2.y
            L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          end
        end
      end
    end
    L3_2 = checkStillInWorld
    L4_2 = L1_2.parentName
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = destroyObject
      L4_2 = L1_2.name
      L3_2(L4_2)
    end
  end
end

L0_1.action = L1_1
vaderGravitationUpdate = L0_1
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
  L3_2 = L1_2.parentName
  A0_2.parentName = L3_2
  L3_2 = addEventCall
  L4_2 = "actionMakeExplosion"
  L5_2 = A0_2
  L6_2 = L2_2.specialtyLifeTime
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = addEventCall
  L4_2 = "destroy"
  L5_2 = A0_2
  L6_2 = L2_2.specialtyLifeTime
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.action = L1_1
vaderExplosiveOnCreated = L0_1
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
    L1_2 = L1_2.isPreventBirdCollision
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = gamelua
    L2_2 = L2_2.flyingBird
    if L2_2 ~= nil then
      L2_2 = gamelua
      L2_2 = L2_2.flyingBird
      L2_2 = L2_2.name
      L3_2 = A0_2.name
      if L2_2 == L3_2 then
        L2_2 = gamelua
        L2_2.birdSpecialtyAvailable = false
      end
    end
    if L1_2 then
      L2_2 = L1_2.regBigCollided
      if not L2_2 then
        L2_2 = gamelua
        L2_2 = L2_2.addCameraShake
        L3_2 = gamelua
        L3_2 = L3_2.cameraShakeModeSine
        L4_2 = 100
        L5_2 = 2
        L6_2 = 1
        L2_2(L3_2, L4_2, L5_2, L6_2)
        L2_2 = gamelua
        L2_2 = L2_2.makeExplosion
        L3_2 = L1_2
        L4_2 = gamelua
        L4_2 = L4_2.getObjectDefinition
        L5_2 = L1_2.name
        L4_2 = L4_2(L5_2)
        L5_2 = gamelua
        L5_2 = L5_2.blockTable
        L5_2 = L5_2.blocks
        L6_2 = L1_2.definition
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.sounds
        L5_2 = L5_2.special
        L2_2(L3_2, L4_2, L5_2)
        L1_2.regBigCollided = true
      end
    end
  end
end

L0_1.action = L1_1
redBigBirdCollided = L0_1
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
      L1_2 = L1_2.isSensor
      if L1_2 then
        goto lbl_68
      end
    end
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.ignoreBomb
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      flyingBird = L1_2
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L1_2.notCollided = nil
      L1_2 = setObjectParameter
      L2_2 = A0_2.name
      L3_2 = 11
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
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
        L1_2.notCollided = nil
        L1_2 = setObjectParameter
        L2_2 = A0_2.other
        L3_2 = 11
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
      end
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L1_2.ignoreBomb = true
    end
  end
  ::lbl_68::
end

L0_1.action = L1_1
r2d2Collided = L0_1
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
      L1_2 = L1_2.isSensor
      if L1_2 then
        goto lbl_77
      end
    end
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.ignoreBomb
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      flyingBird = L1_2
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L1_2.notCollided = nil
      L1_2 = setObjectParameter
      L2_2 = A0_2.name
      L3_2 = 11
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
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
        L1_2.notCollided = nil
        L1_2 = setObjectParameter
        L2_2 = A0_2.other
        L3_2 = 11
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
      end
      L1_2 = setSprite
      L2_2 = A0_2.name
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = A0_2.name
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.sprite
      L1_2(L2_2, L3_2)
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L1_2.ignoreBomb = true
    end
  end
  ::lbl_77::
end

L0_1.action = L1_1
blackBirdCollided = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L3_2 = physicsToWorldTransform
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L1_2.collision
  if not L5_2 then
    L5_2 = addPuffToTrajectory
    L6_2 = 1
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = vNormalize
  L6_2 = L1_2.yVel
  L7_2 = L1_2.xVel
  L7_2 = -L7_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  L7_2 = L1_2.xVel
  if L7_2 == 0 then
    L7_2 = L1_2.yVel
    if L7_2 == 0 then
      L5_2 = 0
      L6_2 = 1
    end
  end
  L7_2 = gamelua
  L7_2 = L7_2.gameWorldScale
  L7_2 = L5_2 * L7_2
  L8_2 = gamelua
  L8_2 = L8_2.gameWorldScale
  L6_2 = L6_2 * L8_2
  L5_2 = L7_2
  L7_2 = 0.17
  L8_2 = 0.2
  L9_2 = 45
  L10_2 = vLength
  L11_2 = L1_2.xVel
  L12_2 = L1_2.yVel
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L10_2 / L9_2
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.min
  L12_2 = L10_2
  L13_2 = 1
  L11_2 = L11_2(L12_2, L13_2)
  L10_2 = L11_2
  L11_2 = L8_2 - L7_2
  L11_2 = L11_2 * L10_2
  L11_2 = L7_2 + L11_2
  L12_2 = gamelua
  L12_2 = L12_2.transformCoordinates
  L13_2 = L11_2
  L14_2 = L1_2.xVel
  L15_2 = L1_2.yVel
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = gamelua
  L13_2 = L13_2.transformCoordinates
  L14_2 = -L11_2
  L15_2 = L1_2.xVel
  L16_2 = L1_2.yVel
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = L1_2.name
  L15_2 = "a"
  L14_2 = L14_2 .. L15_2
  L15_2 = gamelua
  L15_2 = L15_2.GameScene
  L16_2 = L15_2
  L15_2 = L15_2.makeClusterBird
  L17_2 = L14_2
  L18_2 = -L5_2
  L19_2 = -L6_2
  L20_2 = L12_2.x
  L21_2 = L1_2.xVel
  L20_2 = L20_2 - L21_2
  L21_2 = L12_2.y
  L22_2 = L1_2.yVel
  L21_2 = L21_2 - L22_2
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L15_2 = L1_2.name
  L16_2 = "b"
  L14_2 = L15_2 .. L16_2
  L15_2 = gamelua
  L15_2 = L15_2.GameScene
  L16_2 = L15_2
  L15_2 = L15_2.makeClusterBird
  L17_2 = L14_2
  L18_2 = 0
  L19_2 = 0
  L20_2 = 0
  L21_2 = 0
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L15_2 = L1_2.name
  L16_2 = "c"
  L14_2 = L15_2 .. L16_2
  L15_2 = gamelua
  L15_2 = L15_2.GameScene
  L16_2 = L15_2
  L15_2 = L15_2.makeClusterBird
  L17_2 = L14_2
  L18_2 = L5_2
  L19_2 = L6_2
  L20_2 = L13_2.x
  L21_2 = L1_2.xVel
  L20_2 = L20_2 - L21_2
  L21_2 = L13_2.y
  L22_2 = L1_2.yVel
  L21_2 = L21_2 - L22_2
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L15_2 = gamelua
  L16_2 = {}
  L17_2 = L1_2.name
  L18_2 = "a"
  L17_2 = L17_2 .. L18_2
  L18_2 = L1_2.name
  L19_2 = "b"
  L18_2 = L18_2 .. L19_2
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L15_2.otherBirds = L16_2
  L1_2.doNotCount = true
  L15_2 = L1_2.damageDone
  L15_2 = L15_2 + 10
  L1_2.damageDone = L15_2
  L15_2 = setCameraTarget
  L16_2 = L1_2.name
  L17_2 = "a"
  L16_2 = L16_2 .. L17_2
  L15_2(L16_2)
  L15_2 = setCameraTarget
  L16_2 = L1_2.name
  L17_2 = "b"
  L16_2 = L16_2 .. L17_2
  L15_2(L16_2)
  L15_2 = setCameraTarget
  L16_2 = L1_2.name
  L17_2 = "c"
  L16_2 = L16_2 .. L17_2
  L15_2(L16_2)
  L15_2 = gamelua
  L15_2 = L15_2.objects
  L15_2 = L15_2.world
  L15_2 = L15_2[L14_2]
  L16_2 = L1_2.recordTrajectory
  L15_2.recordTrajectory = L16_2
  L15_2 = removeBird
  L16_2 = L1_2
  L15_2(L16_2)
  L15_2 = gamelua
  L16_2 = gamelua
  L16_2 = L16_2.objects
  L16_2 = L16_2.world
  L16_2 = L16_2[L14_2]
  L15_2.flyingBird = L16_2
  L15_2 = gamelua
  L15_2 = L15_2.flyingBird
  L15_2.hasCollided = true
  L15_2 = gamelua
  L15_2 = L15_2.flyingBird
  L15_2.alwaysTrailParticles = true
end

L0_1.action = L1_1
useClusterSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
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
    L3_2 = g_emitterIndex
    if not L3_2 then
      L3_2 = 0
    end
    g_emitterIndex = L3_2
    L3_2 = g_emitterIndex
    L3_2 = L3_2 + 1
    g_emitterIndex = L3_2
    L3_2 = createObject
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L5_2 = "BLOCK_SENSOR_LAZER_EMITTER"
    L6_2 = "BLOCK_REDBIRD_LAZER_EMITTER"
    L7_2 = g_emitterIndex
    L6_2 = L6_2 .. L7_2
    L7_2 = L1_2.x
    L8_2 = L1_2.y
    L9_2 = 5
    L10_2 = 5
    L11_2 = 5
    L12_2 = 1
    L13_2 = 1
    L14_2 = nil
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L4_2 = gamelua
    L4_2 = L4_2.setCollisionEnabled
    L5_2 = L3_2
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = gamelua
    L4_2 = L4_2.objects
    L4_2 = L4_2.world
    L4_2 = L4_2[L3_2]
    L4_2.parent = L1_2
    L1_2.emitterBody = L4_2
    L4_2.xDelta = 0
    L4_2.yDelta = 0
    L5_2 = {}
    L5_2.timer = 0
    L5_2.emitInterval = 0
    L4_2.emitter = L5_2
    L6_2 = gamelua
    L6_2 = L6_2.setVisible
    L7_2 = L4_2.name
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = gamelua
    L6_2 = L6_2.gameWorldScale
    L6_2 = 100 * L6_2
    L5_2.shotSpeed = L6_2
    L5_2.emitInterval = 0
    L5_2.birdEmitter = true
    L7_2 = {}
    L5_2.shotData = L7_2
    L7_2 = 1
    L8_2 = L2_2.specialtyShots
    L8_2 = #L8_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = gamelua
      L11_2 = L11_2.vec2Rotate
      L12_2 = A0_2.xPos
      L13_2 = L1_2.x
      L12_2 = L12_2 - L13_2
      L13_2 = A0_2.yPos
      L14_2 = L1_2.y
      L13_2 = L13_2 - L14_2
      L14_2 = L2_2.specialtyShots
      L14_2 = L14_2[L10_2]
      L14_2 = L14_2.angle
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.pi
      L14_2 = L14_2 * L15_2
      L14_2 = L14_2 / 180
      L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2)
      L13_2 = L5_2.shotData
      L14_2 = {}
      L15_2 = L2_2.specialtyObject
      L14_2.block = L15_2
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.huge
      L14_2.timeInterval = L15_2
      L15_2 = L2_2.specialtyShots
      L15_2 = L15_2[L10_2]
      L15_2 = L15_2.delay
      L14_2.currentTime = L15_2
      L15_2 = {}
      L16_2 = 180
      L17_2 = 360
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L14_2.angle = L15_2
      L15_2 = {}
      L16_2 = L6_2
      L17_2 = L6_2
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L14_2.speed = L15_2
      L15_2 = {}
      L16_2 = L1_2.x
      L16_2 = L16_2 + L11_2
      L17_2 = L1_2.y
      L17_2 = L17_2 + L12_2
      L15_2[1] = L16_2
      L15_2[2] = L17_2
      L14_2.shotTargetCoordinates = L15_2
      L15_2 = A0_2.getAngleFromParent
      L14_2.getAngleFromParent = L15_2
      L15_2 = L2_2.specialtyShots
      L15_2 = L15_2[L10_2]
      L15_2 = L15_2.angle
      L16_2 = _G
      L16_2 = L16_2.math
      L16_2 = L16_2.pi
      L15_2 = L15_2 * L16_2
      L15_2 = L15_2 / 180
      L14_2.shotAngle = L15_2
      L15_2 = L2_2.specialtyShots
      L15_2 = L15_2[L10_2]
      L15_2 = L15_2.offset
      L14_2.offset = L15_2
      L13_2[L10_2] = L14_2
    end
    L7_2 = addUpdateCall
    L8_2 = "updateEmitter"
    L9_2 = {}
    L9_2.name = L3_2
    L10_2 = nil
    L11_2 = L3_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = L2_2.destroyShadowSensorOnActivate
    if L7_2 then
      L7_2 = addEventCall
      L8_2 = "destroyShadowSensor"
      L9_2 = {}
      L10_2 = A0_2.name
      L9_2.name = L10_2
      L7_2(L8_2, L9_2)
    end
    L7_2 = L2_2.specialtyActivateMagnets
    if L7_2 then
      L1_2.activateMagnets = true
    end
  end
end

L0_1.action = L1_1
useLazerShotSpecialty = L0_1
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
    L5_2 = L2_2.specialtyShadowSensor
    L6_2 = nil
    L7_2 = L1_2.x
    L8_2 = L1_2.y
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = gamelua
    L4_2 = L4_2.startAnimations
    L5_2 = L3_2
    L4_2(L5_2)
    L1_2.shadowSensorName = L3_2
    L4_2 = addUpdateCall
    L5_2 = "followParent"
    L6_2 = {}
    L6_2.name = L3_2
    L7_2 = A0_2.name
    L6_2.parent = L7_2
    L6_2.applyParentAngle = true
    L4_2(L5_2, L6_2)
    L4_2 = assert
    L5_2 = L2_2.specialtyHologramCollideMaterials
    L5_2 = L5_2 ~= nil
    L4_2(L5_2)
    L4_2 = L2_2.specialtyHologramCollideMaterials
    L1_2.collisionMaterials = L4_2
    L4_2 = gamelua
    L4_2 = L4_2.native_setBlockCollisionEnabled
    L5_2 = L1_2.name
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end

L0_1.action = L1_1
createShadowSensor = L0_1
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
      L4_2 = L3_2.controllable
      if not L4_2 then
        L4_2 = _G
        L4_2 = L4_2.ipairs
        L5_2 = L2_2.specialtyShadowParticles
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        for L7_2, L8_2 in L4_2, L5_2, L6_2 do
          L9_2 = putParticles
          L10_2 = {}
          L11_2 = A0_2.name
          L10_2.objectName = L11_2
          L10_2.particles = L8_2
          L11_2 = gamelua
          L11_2 = L11_2.particleTable
          L11_2 = L11_2.particles
          L11_2 = L11_2[L8_2]
          L11_2 = L11_2.amount
          L10_2.amount = L11_2
          L9_2(L10_2)
        end
        L4_2 = L2_2.specialtyShadowSound
        if L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.isAudioPlaying
          L5_2 = L2_2.specialtyShadowSound
          L4_2 = L4_2(L5_2)
          if not L4_2 then
            L4_2 = playAudio
            L5_2 = L2_2.specialtyShadowSound
            L4_2(L5_2)
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
shadowSensorOnTriggerEnter = L0_1
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
    L3_2 = checkStillInWorld
    L4_2 = L1_2.shadowSensorName
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = destroyObject
      L4_2 = L1_2.shadowSensorName
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2 = L3_2.native_setBlockCollisionEnabled
      L4_2 = L1_2.name
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = makeExplosion
      L4_2 = L1_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = A0_2.name
      L4_2.objectName = L5_2
      L5_2 = L2_2.specialtySensorParticlesDestroyed
      L5_2 = L5_2.particles
      L4_2.particles = L5_2
      L5_2 = L2_2.specialtySensorParticlesDestroyed
      L5_2 = L5_2.amount
      L4_2.amount = L5_2
      L3_2(L4_2)
    end
  end
end

L0_1.action = L1_1
destroyShadowSensor = L0_1
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
    L3_2 = L2_2.specialtyShadowCharacterMaterials
    L1_2.collisionMaterials = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.native_setBlockCollisionEnabled
    L4_2 = A0_2.name
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end

L0_1.action = L1_1
activateShadowAbility = L0_1
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
    L1_2 = L1_2.native_setBlockCollisionEnabled
    L2_2 = A0_2.name
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
removeShadowAbility = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.name
  if L1_2 ~= "killingBox" then
    L1_2 = A0_2.other
    if L1_2 ~= "killingBox" then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
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
  L3_2 = L3_2.blockTable
  L3_2 = L3_2.blocks
  L4_2 = L2_2.definition
  L3_2 = L3_2[L4_2]
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.materials
  L5_2 = L2_2.material
  L4_2 = L4_2[L5_2]
  L5_2 = L2_2.controllable
  if L5_2 then
    L5_2 = gamelua
    L5_2 = L5_2.getRayCastedObjects
    L6_2 = {}
    L7_2 = L1_2.x
    L6_2.x1 = L7_2
    L7_2 = L1_2.y
    L6_2.y1 = L7_2
    L7_2 = L2_2.x
    L6_2.x2 = L7_2
    L7_2 = L2_2.y
    L6_2.y2 = L7_2
    L7_2 = L1_2.name
    L6_2.source = L7_2
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2[1]
    if L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.objects
      L6_2 = L6_2.world
      L7_2 = L5_2[1]
      L6_2 = L6_2[L7_2]
      L7_2 = L5_2[2]
      L8_2 = L5_2[3]
      L9_2 = gamelua
      L9_2 = L9_2.blockTable
      L9_2 = L9_2.blocks
      L10_2 = L1_2.definition
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.impulseGivenOnBirdCollision
      L10_2 = physicsScale
      L9_2 = L9_2 * L10_2
      if not L9_2 then
        L9_2 = 250
      end
      L10_2 = gamelua
      L10_2 = L10_2.applyImpulse
      L11_2 = L6_2.name
      L12_2 = L1_2.movementAngleX
      L12_2 = L12_2 * L9_2
      L13_2 = L1_2.movementAngleY
      L13_2 = L13_2 * L9_2
      L14_2 = L7_2
      L15_2 = L8_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  else
    L5_2 = L4_2.bouncesLaserTargeted
    if L5_2 then
      L5_2 = nil
      L6_2 = 100000000
      L7_2 = L2_2.laserBounceTargets
      if L7_2 == nil then
        L7_2 = {}
        L2_2.laserBounceTargets = L7_2
      end
      L7_2 = _G
      L7_2 = L7_2.pairs
      L8_2 = gamelua
      L8_2 = L8_2.levelGoals
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        L12_2 = L1_2.x
        L13_2 = L11_2.x
        L12_2 = L12_2 - L13_2
        L13_2 = L1_2.x
        L14_2 = L11_2.x
        L13_2 = L13_2 - L14_2
        L12_2 = L12_2 * L13_2
        L13_2 = L1_2.y
        L14_2 = L11_2.y
        L13_2 = L13_2 - L14_2
        L14_2 = L1_2.y
        L15_2 = L11_2.y
        L14_2 = L14_2 - L15_2
        L13_2 = L13_2 * L14_2
        L12_2 = L12_2 + L13_2
        if L6_2 > L12_2 then
          L13_2 = L2_2.laserBounceTargets
          L14_2 = L11_2.name
          L13_2 = L13_2[L14_2]
          if L13_2 ~= nil then
            L13_2 = L2_2.laserBounceTargets
            L14_2 = L11_2.name
            L13_2 = L13_2[L14_2]
            if not (L13_2 < 1) then
              goto lbl_122
            end
          end
          L6_2 = L12_2
          L5_2 = L11_2
        end
        ::lbl_122::
      end
      L7_2 = nil
      if L5_2 then
        L8_2 = L2_2.laserBounceTargets
        L9_2 = L5_2.name
        L8_2 = L8_2[L9_2]
        if L8_2 == nil then
          L8_2 = gamelua
          L8_2 = L8_2.print
          L9_2 = "First laser bounce to target "
          L10_2 = L5_2.name
          L9_2 = L9_2 .. L10_2
          L8_2(L9_2)
          L8_2 = L2_2.laserBounceTargets
          L9_2 = L5_2.name
          L8_2[L9_2] = 1
        else
          L8_2 = gamelua
          L8_2 = L8_2.print
          L9_2 = "Second laser bounce to target "
          L10_2 = L5_2.name
          L9_2 = L9_2 .. L10_2
          L8_2(L9_2)
          L8_2 = L2_2.laserBounceTargets
          L9_2 = L5_2.name
          L10_2 = L2_2.laserBounceTargets
          L11_2 = L5_2.name
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2 + 1
          L8_2[L9_2] = L10_2
        end
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.atan2
        L9_2 = L5_2.y
        L10_2 = L1_2.y
        L9_2 = L9_2 - L10_2
        L10_2 = L5_2.x
        L11_2 = L1_2.x
        L10_2 = L10_2 - L11_2
        L8_2 = L8_2(L9_2, L10_2)
        L7_2 = L8_2
      else
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.atan2
        L9_2 = L1_2.y
        L10_2 = L2_2.y
        L9_2 = L9_2 - L10_2
        L10_2 = L1_2.x
        L11_2 = L2_2.x
        L10_2 = L10_2 - L11_2
        L8_2 = L8_2(L9_2, L10_2)
        L7_2 = L8_2
      end
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.cos
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L1_2.movementAngleX = L8_2
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.sin
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L1_2.movementAngleY = L8_2
      L1_2.bounceAngle = L7_2
      L8_2 = gamelua
      L8_2 = L8_2.blockTable
      L8_2 = L8_2.blocks
      L9_2 = L1_2.definition
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.particlesCollision
      if L8_2 then
        L9_2 = gamelua
        L9_2 = L9_2.putParticles
        L10_2 = {}
        L11_2 = L1_2.x
        L10_2.x = L11_2
        L11_2 = L1_2.y
        L10_2.y = L11_2
        L10_2.particles = L8_2
        L9_2(L10_2)
      end
      L9_2 = gamelua
      L9_2 = L9_2.blockTable
      L9_2 = L9_2.blocks
      L10_2 = L1_2.definition
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.deflectionSound
      if L9_2 then
        L10_2 = gamelua
        L10_2 = L10_2.playAudio
        L11_2 = L9_2
        L10_2(L11_2)
      end
      L10_2 = L2_2.isSword
      if L10_2 then
        L10_2 = L2_2.name
        L11_2 = L2_2.timeCreated
        L11_2 = L11_2.year
        L12_2 = L2_2.timeCreated
        L12_2 = L12_2.month
        L13_2 = L2_2.timeCreated
        L13_2 = L13_2.day
        L14_2 = L2_2.timeCreated
        L14_2 = L14_2.hour
        L15_2 = L2_2.timeCreated
        L15_2 = L15_2.minutes
        L16_2 = L2_2.timeCreated
        L16_2 = L16_2.seconds
        L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
        L11_2 = gamelua
        L11_2 = L11_2.SettingsWrapper
        L12_2 = L11_2
        L11_2 = L11_2.laserDeflectedBySword
        L13_2 = L10_2
        L14_2 = L1_2.name
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = gamelua
        L11_2 = L11_2.SettingsWrapper
        L12_2 = L11_2
        L11_2 = L11_2.getTimesLaserDeflectedBySword
        L13_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = gamelua
        L12_2 = L12_2.getAchievementLimit
        L13_2 = "Prominent Jedi"
        L12_2 = L12_2(L13_2)
        if L11_2 >= L12_2 then
          L11_2 = gamelua
          L11_2 = L11_2.registerAchievement
          L12_2 = "Prominent Jedi"
          L11_2(L12_2)
        end
      end
      L10_2 = gamelua
      L10_2 = L10_2.blockTable
      L10_2 = L10_2.blocks
      L11_2 = L1_2.definition
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.collidedScoreInc
      if L10_2 then
        L11_2 = L3_2.noCollisionScore
        if not L11_2 then
          L11_2 = gamelua
          L11_2 = L11_2.blockTable
          L11_2 = L11_2.blocks
          L12_2 = L1_2.definition
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.spriteScore
          if L11_2 ~= nil then
            L11_2 = _G
            L11_2 = L11_2.table
            L11_2 = L11_2.insert
            L12_2 = gamelua
            L12_2 = L12_2.floatingScores
            L13_2 = {}
            L14_2 = L1_2.x
            L13_2.x = L14_2
            L14_2 = L1_2.y
            L13_2.y = L14_2
            L14_2 = gamelua
            L14_2 = L14_2.blockTable
            L14_2 = L14_2.blocks
            L15_2 = L1_2.definition
            L14_2 = L14_2[L15_2]
            L14_2 = L14_2.spriteScore
            L13_2.sprite = L14_2
            L13_2.score = L10_2
            L13_2.time = 0
            L13_2.lifetime = 0.9
            L13_2.maxScale = 1
            L13_2.xs = 0
            L11_2(L12_2, L13_2)
          elseif 0 < L10_2 then
            L11_2 = _G
            L11_2 = L11_2.table
            L11_2 = L11_2.insert
            L12_2 = gamelua
            L12_2 = L12_2.floatingScores
            L13_2 = {}
            L14_2 = L1_2.x
            L13_2.x = L14_2
            L14_2 = L1_2.y
            L13_2.y = L14_2
            L14_2 = ""
            L15_2 = L10_2
            L14_2 = L14_2 .. L15_2
            L13_2.text = L14_2
            L13_2.score = L10_2
            L13_2.time = 0
            L13_2.lifetime = 0.6
            L14_2 = L10_2 / 3000
            L14_2 = 0.25 + L14_2
            L13_2.maxScale = L14_2
            L13_2.xs = 0
            L11_2(L12_2, L13_2)
          end
          L11_2 = gamelua
          L11_2 = L11_2.scoreTable
          L11_2 = L11_2.blocks
          L12_2 = gamelua
          L12_2 = L12_2.scoreTable
          L12_2 = L12_2.blocks
          L12_2 = L12_2.score
          L12_2 = L12_2 + L10_2
          L11_2.score = L12_2
          L11_2 = gamelua
          L11_2 = L11_2.addScoreToBird
          L12_2 = L10_2
          L11_2(L12_2)
          L11_2 = gamelua
          L11_2 = L11_2.print
          L12_2 = "SCORE(Laser deflection score): "
          L13_2 = L10_2
          L12_2 = L12_2 .. L13_2
          L11_2(L12_2)
        end
      end
    end
  end
end

L0_1.action = L1_1
sensorToBirdCollision = L0_1
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
      L1_2 = L1_2.actions
      L1_2 = L1_2.freezeObject
      L2_2 = A0_2.other
      L1_2(L2_2)
    end
  end
end

L0_1.action = L1_1
onCollisionEnterFreeze = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
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
    L3_2 = L3_2.ipairs
    L4_2 = L2_2.jointChain
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = gamelua
      L8_2 = L8_2.getAngle
      L9_2 = L1_2.name
      L8_2 = L8_2(L9_2)
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.cos
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.sin
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L11_2 = gamelua
      L11_2 = L11_2.vec2Rotate
      L12_2 = L9_2
      L13_2 = L10_2
      L14_2 = L7_2.spawnAngle
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.pi
      L14_2 = L14_2 * L15_2
      L14_2 = L14_2 / 180
      L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2)
      L13_2 = L1_2.x
      L14_2 = L7_2.spawnDistance
      L14_2 = L11_2 * L14_2
      L13_2 = L13_2 + L14_2
      L14_2 = L1_2.y
      L15_2 = L7_2.spawnDistance
      L15_2 = L12_2 * L15_2
      L14_2 = L14_2 + L15_2
      L15_2 = createObject
      L16_2 = gamelua
      L16_2 = L16_2.blockTable
      L17_2 = L7_2.object
      L18_2 = nil
      L19_2 = L13_2
      L20_2 = L14_2
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
      L16_2 = gamelua
      L16_2 = L16_2.objects
      L16_2 = L16_2.world
      L16_2 = L16_2[L15_2]
      L17_2 = L1_2.name
      L18_2 = A0_2.name
      if L17_2 == L18_2 then
        L17_2 = gamelua
        L17_2 = L17_2.vec2Rotate
        L18_2 = L9_2
        L19_2 = L10_2
        L20_2 = L2_2.jointChainStartBlock
        L20_2 = L20_2.impulseAngle
        L21_2 = _G
        L21_2 = L21_2.math
        L21_2 = L21_2.pi
        L20_2 = L20_2 * L21_2
        L20_2 = L20_2 / 180
        L17_2, L18_2 = L17_2(L18_2, L19_2, L20_2)
        L19_2 = applyImpulse
        L20_2 = L15_2
        L21_2 = L2_2.jointChainStartBlock
        L21_2 = L21_2.impulse
        L21_2 = L17_2 * L21_2
        L22_2 = L2_2.jointChainStartBlock
        L22_2 = L22_2.impulse
        L22_2 = L18_2 * L22_2
        L23_2 = L1_2.x
        L24_2 = L1_2.y
        L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
      end
      L17_2 = gamelua
      L17_2 = L17_2.vec2Rotate
      L18_2 = L9_2
      L19_2 = L10_2
      L20_2 = L7_2.impulseAngle
      L21_2 = _G
      L21_2 = L21_2.math
      L21_2 = L21_2.pi
      L20_2 = L20_2 * L21_2
      L20_2 = L20_2 / 180
      L17_2, L18_2 = L17_2(L18_2, L19_2, L20_2)
      L19_2 = applyImpulse
      L20_2 = L15_2
      L21_2 = L7_2.impulse
      L21_2 = L17_2 * L21_2
      L22_2 = L7_2.impulse
      L22_2 = L18_2 * L22_2
      L23_2 = L16_2.x
      L24_2 = L16_2.y
      L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
      L19_2 = setRotation
      L20_2 = L15_2
      L21_2 = L7_2.angle
      L22_2 = _G
      L22_2 = L22_2.math
      L22_2 = L22_2.pi
      L21_2 = L21_2 * L22_2
      L21_2 = L21_2 / 180
      L21_2 = L8_2 + L21_2
      L19_2(L20_2, L21_2)
      L19_2 = gamelua
      L19_2 = L19_2.createJoint
      L20_2 = {}
      L21_2 = L1_2.name
      L22_2 = "_ropeJointTo_"
      L23_2 = L16_2.name
      L21_2 = L21_2 .. L22_2 .. L23_2
      L20_2.name = L21_2
      L21_2 = L7_2.jointType
      L20_2.type = L21_2
      L21_2 = L1_2.name
      L20_2.end1 = L21_2
      L21_2 = L16_2.name
      L20_2.end2 = L21_2
      L20_2.coordType = 2
      L21_2 = L7_2.anchors
      L21_2 = L21_2.x1
      L20_2.x1 = L21_2
      L21_2 = L7_2.anchors
      L21_2 = L21_2.y1
      L20_2.y1 = L21_2
      L21_2 = L7_2.anchors
      L21_2 = L21_2.x2
      L20_2.x2 = L21_2
      L21_2 = L7_2.anchors
      L21_2 = L21_2.y2
      L20_2.y2 = L21_2
      L20_2.collideConnected = false
      L21_2 = L7_2.limits
      L21_2 = L21_2 ~= nil
      L20_2.limit = L21_2
      L21_2 = L7_2.limits
      L21_2 = L7_2.limits
      L21_2 = L21_2.lower
      L22_2 = _G
      L22_2 = L22_2.math
      L22_2 = L22_2.pi
      L21_2 = L21_2 * L22_2
      L21_2 = L21_2 ~= nil and L21_2
      L20_2.lowerLimit = L21_2
      L21_2 = L7_2.limits
      L21_2 = L7_2.limits
      L21_2 = L21_2.upper
      L22_2 = _G
      L22_2 = L22_2.math
      L22_2 = L22_2.pi
      L21_2 = L21_2 * L22_2
      L21_2 = L21_2 ~= nil and L21_2
      L20_2.upperLimit = L21_2
      L19_2(L20_2)
      L1_2 = L16_2
    end
  end
end

L0_1.action = L1_1
createJointChain = L0_1
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
        L2_2 = gamelua
        L2_2 = L2_2.flyingBird
        L2_2 = L2_2.name
        L1_2.pullBackObj = L2_2
        L2_2 = addUpdateCall
        L3_2 = "pullBackUpdate"
        L4_2 = {}
        L5_2 = A0_2.name
        L4_2.objA = L5_2
        L5_2 = L1_2.pullBackObj
        L4_2.objB = L5_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end

L0_1.action = L1_1
startPullBack = L0_1
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
    L3_2 = checkStillInWorld
    L4_2 = L1_2.pullBackObj
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.objects
      L3_2 = L3_2.world
      L4_2 = L1_2.pullBackObj
      L3_2 = L3_2[L4_2]
      L4_2 = L1_2.pullBackActivated
      if not L4_2 then
        L1_2.pullBackActivated = true
        L4_2 = addEventCall
        L5_2 = "pullBackImpulse"
        L6_2 = {}
        L7_2 = A0_2.name
        L6_2.objA = L7_2
        L7_2 = L3_2.name
        L6_2.objB = L7_2
        L7_2 = L2_2.specialtyPullImpulse
        L6_2.force = L7_2
        L7_2 = L2_2.specialtyPullImpulseDelay
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
end

L0_1.action = L1_1
activatePullBack = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
      L3_2 = L3_2.vNormalize
      L4_2 = L2_2.x
      L5_2 = L1_2.x
      L4_2 = L4_2 - L5_2
      L5_2 = L2_2.y
      L6_2 = L1_2.y
      L5_2 = L5_2 - L6_2
      L3_2, L4_2 = L3_2(L4_2, L5_2)
      L5_2 = applyImpulse
      L6_2 = L1_2.name
      L7_2 = A0_2.force
      L7_2 = L3_2 * L7_2
      L8_2 = A0_2.force
      L8_2 = L4_2 * L8_2
      L9_2 = L1_2.x
      L10_2 = L1_2.y
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = applyImpulse
      L6_2 = L2_2.name
      L7_2 = -L3_2
      L8_2 = A0_2.force
      L7_2 = L7_2 * L8_2
      L8_2 = -L4_2
      L9_2 = A0_2.force
      L8_2 = L8_2 * L9_2
      L9_2 = L2_2.x
      L10_2 = L2_2.y
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = gamelua
      L5_2 = L5_2.blockTable
      L5_2 = L5_2.blocks
      L6_2 = L1_2.definition
      L5_2 = L5_2[L6_2]
      L6_2 = L5_2.specialtyAttachSound
      if L6_2 then
        L6_2 = playAudio
        L7_2 = L5_2.specialtyAttachSound
        L6_2(L7_2)
      end
    end
  end
end

L0_1.action = L1_1
pullBackImpulse = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
      L3_2 = L3_2.blockTable
      L3_2 = L3_2.blocks
      L4_2 = L1_2.definition
      L3_2 = L3_2[L4_2]
      L4_2 = L1_2.pullBackActivated
      if not L4_2 then
        L4_2 = gamelua
        L4_2 = L4_2.distance
        L5_2 = L1_2.x
        L6_2 = L1_2.y
        L7_2 = L2_2.x
        L8_2 = L2_2.y
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        L5_2 = L3_2.specialtyPullBackMaxDistance
        if L4_2 >= L5_2 then
          L1_2.pullBackActivated = true
        end
      else
        L4_2 = L1_2.stopPullBack
        if not L4_2 then
          L4_2 = L1_2.stickToSurfaceAmount
          if L4_2 then
            L4_2 = L1_2.stickToSurfaceAmount
            L4_2 = 0 < L4_2
          end
          L5_2 = gamelua
          L5_2 = L5_2.vNormalize
          L6_2 = L2_2.x
          L7_2 = L1_2.x
          L6_2 = L6_2 - L7_2
          L7_2 = L2_2.y
          L8_2 = L1_2.y
          L7_2 = L7_2 - L8_2
          L5_2, L6_2 = L5_2(L6_2, L7_2)
          L7_2 = applyForce
          L8_2 = L1_2.name
          L9_2 = L3_2.specialtyPullForce
          L9_2 = L5_2 * L9_2
          L10_2 = L3_2.specialtyPullForce
          L10_2 = L6_2 * L10_2
          L11_2 = L1_2.x
          L12_2 = L1_2.y
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
          if L4_2 then
            L7_2 = applyForce
            L8_2 = L2_2.name
            L9_2 = -L5_2
            L10_2 = L3_2.specialtyPullForce
            L9_2 = L9_2 * L10_2
            L10_2 = -L6_2
            L11_2 = L3_2.specialtyPullForce
            L10_2 = L10_2 * L11_2
            L11_2 = L2_2.x
            L12_2 = L2_2.y
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
          end
          L7_2 = gamelua
          L7_2 = L7_2.getVelocity
          L8_2 = L1_2.name
          L7_2 = L7_2(L8_2)
          L8_2 = setVelocity
          L9_2 = L1_2.name
          L10_2 = L5_2 * L7_2
          L11_2 = L6_2 * L7_2
          L8_2(L9_2, L10_2, L11_2)
          if not L4_2 then
            L8_2 = gamelua
            L8_2 = L8_2.getLinearVelocity
            L9_2 = L1_2.name
            L8_2, L9_2 = L8_2(L9_2)
            L10_2 = setRotation
            L11_2 = L1_2.name
            L12_2 = _G
            L12_2 = L12_2.math
            L12_2 = L12_2.atan2
            L13_2 = L9_2
            L14_2 = L8_2
            L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
            L10_2(L11_2, L12_2, L13_2, L14_2)
          end
          if L4_2 then
            L8_2 = gamelua
            L8_2 = L8_2.distance
            L9_2 = L1_2.x
            L10_2 = L1_2.y
            L11_2 = L2_2.x
            L12_2 = L2_2.y
            L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
            L9_2 = L3_2.specialtyPullBackStopDistance
            if L8_2 <= L9_2 then
              L1_2.stopPullBack = true
              L8_2 = L3_2.specialtyTongueWobbleStopped
              L1_2.tongueWobble = L8_2
              L8_2 = gamelua
              L8_2 = L8_2.createJoint
              L9_2 = {}
              L10_2 = L1_2.name
              L11_2 = "_pullBackJoint_"
              L12_2 = L2_2.name
              L10_2 = L10_2 .. L11_2 .. L12_2
              L9_2.name = L10_2
              L9_2.type = 6
              L10_2 = L1_2.name
              L9_2.end1 = L10_2
              L10_2 = L2_2.name
              L9_2.end2 = L10_2
              L9_2.coordType = 2
              L9_2.x1 = 0
              L9_2.y1 = 0
              L9_2.x2 = 0
              L9_2.y2 = 0
              L9_2.collideConnected = true
              L8_2(L9_2)
              L8_2 = addEventCall
              L9_2 = "enableGravity"
              L10_2 = {}
              L11_2 = L1_2.name
              L10_2.name = L11_2
              L8_2(L9_2, L10_2)
            end
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
pullBackUpdate = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
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
    L3_2 = L3_2.getLinearVelocity
    L4_2 = L1_2.name
    L3_2, L4_2 = L3_2(L4_2)
    L5_2 = gamelua
    L5_2 = L5_2.getAngle
    L6_2 = L1_2.name
    L5_2 = L5_2(L6_2)
    L6_2 = L1_2.spawnRelativeObjects
    if not L6_2 then
      L6_2 = {}
    end
    L1_2.spawnRelativeObjects = L6_2
    L6_2 = nil
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L8_2 = A0_2.spawnRelativeTable
    if not L8_2 then
      L8_2 = L2_2.spawnRelativeTable
    end
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = createObject
      L13_2 = gamelua
      L13_2 = L13_2.blockTable
      L14_2 = L11_2.definition
      L15_2 = nil
      L16_2 = L1_2.x
      L17_2 = L1_2.y
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L13_2 = L11_2.angle
      L14_2 = _G
      L14_2 = L14_2.math
      L14_2 = L14_2.pi
      L13_2 = L13_2 * L14_2
      L13_2 = L13_2 / 180
      L14_2 = gamelua
      L14_2 = L14_2.vec2Rotate
      L15_2 = L3_2
      L16_2 = L4_2
      L17_2 = L13_2
      L14_2, L15_2 = L14_2(L15_2, L16_2, L17_2)
      L16_2 = setVelocity
      L17_2 = L12_2
      L18_2 = L14_2
      L19_2 = L15_2
      L16_2(L17_2, L18_2, L19_2)
      L16_2 = setRotation
      L17_2 = L12_2
      L18_2 = L5_2 + L13_2
      L16_2(L17_2, L18_2)
      L16_2 = L11_2.rotation
      if L16_2 then
        L16_2 = L2_2.noRandomRotationInSplit
        if not L16_2 then
          L16_2 = gamelua
          L16_2 = L16_2.setAngularVelocity
          L17_2 = L12_2
          L18_2 = _G
          L18_2 = L18_2.math
          L18_2 = L18_2.random
          L18_2 = L18_2()
          L19_2 = L11_2.rotation
          L18_2 = L18_2 * L19_2
          L19_2 = L11_2.rotation
          L19_2 = L19_2 * 0.5
          L18_2 = L18_2 - L19_2
          L16_2(L17_2, L18_2)
          L16_2 = gamelua
          L16_2 = L16_2.objects
          L16_2 = L16_2.world
          L16_2 = L16_2[L12_2]
          L16_2.rotateWhileFlyingDisabled = true
          L6_2 = L11_2.rotation
        end
      end
      L16_2 = _G
      L16_2 = L16_2.table
      L16_2 = L16_2.insert
      L17_2 = L1_2.spawnRelativeObjects
      L18_2 = L12_2
      L16_2(L17_2, L18_2)
      L16_2 = L11_2.cameraTarget
      if L16_2 then
        L16_2 = setCameraTarget
        L17_2 = L12_2
        L16_2(L17_2)
      end
      L16_2 = A0_2.spawnExtraAction
      if L16_2 then
        L16_2 = A0_2.spawnExtraAction
        L16_2 = L16_2.params
        L16_2.name = L12_2
        L16_2 = gamelua
        L16_2 = L16_2.fireAction
        L17_2 = A0_2.spawnExtraAction
        L17_2 = L17_2.action
        L18_2 = A0_2.spawnExtraAction
        L18_2 = L18_2.params
        L16_2(L17_2, L18_2)
      end
    end
    if L6_2 then
      L7_2 = gamelua
      L7_2 = L7_2.setAngularVelocity
      L8_2 = A0_2.name
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.random
      L9_2 = L9_2()
      L9_2 = L9_2 * L6_2
      L10_2 = L6_2 * 0.5
      L9_2 = L9_2 - L10_2
      L7_2(L8_2, L9_2)
    end
  end
end

L0_1.action = L1_1
spawnRelative = L0_1
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
    L3_2 = nil
    L4_2 = L2_2.specialtyBoostImpulse
    if L4_2 then
      L4_2 = {}
      L4_2.action = "applyBoostImpulseAction"
      L5_2 = {}
      L6_2 = L2_2.specialtyBoostImpulse
      L5_2.boostImpulse = L6_2
      L4_2.params = L5_2
      L3_2 = L4_2
    end
    L4_2 = addEventCall
    L5_2 = "spawnRelative"
    L6_2 = {}
    L7_2 = A0_2.name
    L6_2.name = L7_2
    L7_2 = L2_2.spawnRelativeTableActivation
    L6_2.spawnRelativeTable = L7_2
    L6_2.spawnExtraAction = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = L2_2.specialtySpawnFGLayerParticles
    if L4_2 then
      L4_2 = _G
      L4_2 = L4_2.themeSystem
      L4_2 = L4_2.spawnFGLayerParticles
      L5_2 = L2_2.specialtySpawnFGLayerParticles
      L4_2(L5_2)
    end
    L4_2 = L1_2.spawnRelativeObjects
    if L4_2 then
      L4_2 = _G
      L4_2 = L4_2.ipairs
      L5_2 = L1_2.spawnRelativeObjects
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = checkStillInWorld
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = gamelua
          L9_2 = L9_2.objects
          L9_2 = L9_2.world
          L9_2 = L9_2[L8_2]
          L9_2 = L9_2.hasCollided
          if not L9_2 then
            L9_2 = L2_2.specialtyBoostImpulse
            if L9_2 then
              L9_2 = addEventCall
              L10_2 = "applyBoostImpulseAction"
              L11_2 = {}
              L11_2.name = L8_2
              L12_2 = L2_2.specialtyBoostImpulse
              L11_2.boostImpulse = L12_2
              L9_2(L10_2, L11_2)
            end
            L9_2 = addEventCall
            L10_2 = "spawnRelative"
            L11_2 = {}
            L11_2.name = L8_2
            L12_2 = L2_2.spawnRelativeTableActivation
            L11_2.spawnRelativeTable = L12_2
            L11_2.spawnExtraAction = L3_2
            L9_2(L10_2, L11_2)
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
useMultiSplitSpecialty = L0_1
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
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = L2_2.specialtyShotBlocks
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = addEventCall
      L9_2 = "createObjectAction"
      L10_2 = {}
      L11_2 = L7_2.definition
      L10_2.definition = L11_2
      L11_2 = A0_2.xPos
      L10_2.posX = L11_2
      L11_2 = A0_2.yPos
      L10_2.posY = L11_2
      L11_2 = L7_2.delay
      L8_2(L9_2, L10_2, L11_2)
    end
    L3_2 = physicsToWorldTransform
    L4_2 = A0_2.xPos
    L5_2 = A0_2.yPos
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L5_2 = {}
    L6_2 = gamelua
    L6_2 = L6_2.screen
    L6_2 = L6_2.x
    L5_2.x = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.screen
    L6_2 = L6_2.y
    L5_2.y = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.worldScale
    L5_2.scale = L6_2
    A0_2.startCamera = L5_2
    L5_2 = {}
    L5_2.x = L3_2
    L5_2.y = L4_2
    L6_2 = L2_2.specialtyZoomAmount
    L7_2 = gamelua
    L7_2 = L7_2.screenHeight
    L7_2 = L7_2 / 768
    L6_2 = L6_2 * L7_2
    L5_2.scale = L6_2
    A0_2.targetCamera = L5_2
    L5_2 = L2_2.specialtyZoomTotalTime
    A0_2.specialtyZoomTotalTime = L5_2
    L5_2 = L2_2.specialtyZoomInTime
    A0_2.specialtyZoomInTime = L5_2
    L5_2 = L2_2.specialtyZoomOutTime
    A0_2.specialtyZoomOutTime = L5_2
    L5_2 = addUpdateCall
    L6_2 = "sniperCameraUpdate"
    L7_2 = A0_2
    L8_2 = nil
    L9_2 = A0_2.name
    L10_2 = "_sniperCameraUpdate"
    L9_2 = L9_2 .. L10_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end

L0_1.action = L1_1
useSniperSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.timer
  if not L1_2 then
    L1_2 = A0_2.dt
    L1_2 = -L1_2
  end
  L2_2 = A0_2.dt
  L1_2 = L1_2 + L2_2
  A0_2.timer = L1_2
  L1_2 = A0_2.timer
  L2_2 = A0_2.specialtyZoomTotalTime
  if L1_2 < L2_2 then
    L1_2 = 1
    L2_2 = A0_2.timer
    L3_2 = A0_2.specialtyZoomInTime
    if L2_2 < L3_2 then
      L2_2 = gamelua
      L2_2 = L2_2.tweenEaseCubicInOut
      L3_2 = A0_2.timer
      L4_2 = A0_2.specialtyZoomInTime
      L4_2 = 1 / L4_2
      L3_2 = L3_2 * L4_2
      L4_2 = 0
      L5_2 = 1
      L6_2 = 1
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2.timer
      L3_2 = A0_2.specialtyZoomTotalTime
      L4_2 = A0_2.specialtyZoomOutTime
      L3_2 = L3_2 - L4_2
      if L2_2 >= L3_2 then
        L2_2 = gamelua
        L2_2 = L2_2.tweenEaseCubicInOut
        L3_2 = A0_2.specialtyZoomTotalTime
        L4_2 = A0_2.timer
        L3_2 = L3_2 - L4_2
        L4_2 = A0_2.specialtyZoomOutTime
        L4_2 = 1 / L4_2
        L3_2 = L3_2 * L4_2
        L4_2 = 0
        L5_2 = 1
        L6_2 = 1
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        L1_2 = L2_2
      end
    end
    L2_2 = gamelua
    L2_2 = L2_2.gameCamera
    L2_2.currentCameraFunction = nil
    L2_2 = gamelua
    L2_2.g_scopeDelta = L1_2
    L2_2 = gamelua
    L2_2.g_refuseDrags = true
    L2_2 = gamelua
    L2_2 = L2_2.screen
    L3_2 = A0_2.startCamera
    L3_2 = L3_2.x
    L4_2 = A0_2.targetCamera
    L4_2 = L4_2.x
    L5_2 = A0_2.startCamera
    L5_2 = L5_2.x
    L4_2 = L4_2 - L5_2
    L4_2 = L1_2 * L4_2
    L3_2 = L3_2 + L4_2
    L2_2.x = L3_2
    L2_2 = gamelua
    L2_2 = L2_2.screen
    L3_2 = A0_2.startCamera
    L3_2 = L3_2.y
    L4_2 = A0_2.targetCamera
    L4_2 = L4_2.y
    L5_2 = A0_2.startCamera
    L5_2 = L5_2.y
    L4_2 = L4_2 - L5_2
    L4_2 = L1_2 * L4_2
    L3_2 = L3_2 + L4_2
    L2_2.y = L3_2
    L2_2 = gamelua
    L3_2 = A0_2.startCamera
    L3_2 = L3_2.scale
    L4_2 = A0_2.targetCamera
    L4_2 = L4_2.scale
    L5_2 = A0_2.startCamera
    L5_2 = L5_2.scale
    L4_2 = L4_2 - L5_2
    L4_2 = L1_2 * L4_2
    L3_2 = L3_2 + L4_2
    L2_2.worldScale = L3_2
    L2_2 = gamelua
    L3_2 = 1 - L1_2
    L2_2.returninMusicVolume = L3_2
  else
    L1_2 = gamelua
    L1_2.g_scopeDelta = nil
    L1_2 = gamelua
    L1_2.g_refuseDrags = nil
    L1_2 = gamelua
    L1_2 = L1_2.removeUpdateCall
    L2_2 = A0_2.name
    L3_2 = "_sniperCameraUpdate"
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end

L0_1.action = L1_1
sniperCameraUpdate = L0_1
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
    L3_2 = gamelua
    L3_2 = L3_2.getVelocity
    L4_2 = A0_2.name
    L3_2 = L3_2(L4_2)
    if 1 < L3_2 then
      L4_2 = gamelua
      L4_2 = L4_2.addCameraShake
      L5_2 = gamelua
      L5_2 = L5_2.cameraShakeModeSine
      L6_2 = L2_2.jabbaSpecialtyShake
      L6_2 = L6_2.velocity
      L7_2 = L2_2.jabbaSpecialtyShake
      L7_2 = L7_2.distortion
      L8_2 = L2_2.jabbaSpecialtyShake
      L8_2 = L8_2.timer
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    L4_2 = L1_2.jabbaRestitutionSet
    if not L4_2 then
      L1_2.jabbaRestitutionSet = true
      L4_2 = addUpdateCall
      L5_2 = "jabbaSetRestitution"
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end

L0_1.action = L1_1
jabbaOnCollision = L0_1
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
    L1_2 = A0_2.timer
    if not L1_2 then
      L1_2 = A0_2.dt
      L1_2 = -L1_2
    end
    L2_2 = A0_2.dt
    L1_2 = L1_2 + L2_2
    A0_2.timer = L1_2
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
    L4_2 = A0_2.timer
    L5_2 = L2_2.specialtyRestitutionTimer
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.timer = L3_2
    L3_2 = L2_2.restitution
    L4_2 = L2_2.specialtyRestitutionAfterCollision
    L5_2 = L2_2.restitution
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.timer
    L4_2 = L4_2 * L5_2
    L5_2 = L2_2.specialtyRestitutionTimer
    L4_2 = L4_2 / L5_2
    L3_2 = L3_2 + L4_2
    L4_2 = gamelua
    L4_2 = L4_2.setRestitution
    L5_2 = L1_2.name
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end

L0_1.action = L1_1
jabbaSetRestitution = L0_1
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
    L3_2 = L3_2.fireAction
    L4_2 = "useYodaSpecialty"
    L5_2 = {}
    L6_2 = A0_2.name
    L5_2.name = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = {}
    L3_2.action = "useYodaSpecialty"
    L4_2 = {}
    L4_2.overrideDef = L2_2
    L3_2.params = L4_2
    A0_2.spawnExtraAction = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.fireAction
    L4_2 = "spawnRelative"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L0_1.action = L1_1
useSplitSpinSpecialty = L0_1
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
    L1_2.reticleFollowsCursor = true
    L1_2.fuelGauge = 1
    L1_2.fuelGaugeActivated = true
    A0_2.firstPress = true
    A0_2.cumulativeShotTime = 0
    L2_2 = addUpdateCall
    L3_2 = "flamethrowerUpdate"
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = A0_2.name
    L7_2 = "_flamethrowerUpdate"
    L6_2 = L6_2 .. L7_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

L0_1.action = L1_1
useFlamethrowerSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
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
      L3_2 = L2_2.specialtySpawnTime
    end
    A0_2.timer = L3_2
    L3_2 = A0_2.timeSinceSpawn
    if not L3_2 then
      L3_2 = L2_2.specialtySpawnInterval
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timeSinceSpawn = L3_2
    L3_2 = L1_2.fuelGauge
    if L3_2 <= 0 then
      L3_2 = gamelua
      L3_2.g_refuseDrags = nil
      L3_2 = gamelua
      L3_2 = L3_2.removeUpdateCall
      L4_2 = A0_2.name
      L5_2 = "_flamethrowerUpdate"
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2 = L3_2.hideAutoReticle
      L3_2()
      return
    end
    L3_2 = gamelua
    L3_2.g_refuseDrags = true
    L3_2 = A0_2.timer
    L4_2 = L2_2.specialtySpawnTime
    L3_2 = L3_2 / L4_2
    L1_2.fuelGauge = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.setAngularVelocity
    L4_2 = L1_2.name
    L5_2 = 0
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.timer
    if 0 < L3_2 then
      L3_2 = A0_2.timeSinceSpawn
      L4_2 = L2_2.specialtySpawnInterval
      if L3_2 >= L4_2 then
        L3_2 = gamelua
        L3_2 = L3_2.isKeyHold
        L4_2 = "LBUTTON"
        L3_2 = L3_2(L4_2)
        if L3_2 then
          goto lbl_70
        end
      end
      L3_2 = A0_2.firstPress
      if not L3_2 then
        goto lbl_342
      end
      ::lbl_70::
      L3_2 = A0_2.cumulativeShotTime
      L4_2 = A0_2.dt
      L3_2 = L3_2 + L4_2
      A0_2.cumulativeShotTime = L3_2
      L3_2 = A0_2.timer
      L4_2 = A0_2.dt
      L3_2 = L3_2 - L4_2
      A0_2.timer = L3_2
      L3_2 = gamelua
      L3_2 = L3_2.g_autoReticle
      L3_2.timer = 0
      L3_2 = A0_2.firstPress
      if not L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.isKeyPressed
        L4_2 = "LBUTTON"
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = A0_2.lastAudio
          if not L3_2 then
            goto lbl_108
          end
          L3_2 = A0_2.lastAudio
          L4_2 = L2_2.sounds
          L4_2 = L4_2.shotInterval
          L3_2 = L3_2 + L4_2
          L4_2 = gamelua
          L4_2 = L4_2.g_levelTimer
          if not (L3_2 < L4_2) then
            goto lbl_108
          end
        end
      end
      L3_2 = gamelua
      L3_2 = L3_2.g_levelTimer
      A0_2.lastAudio = L3_2
      L3_2 = playAudio
      L4_2 = L2_2.sounds
      L4_2 = L4_2.shot
      L3_2(L4_2)
      ::lbl_108::
      while true do
        L3_2 = A0_2.cumulativeShotTime
        if not (0 <= L3_2) then
          goto lbl_342
        end
        A0_2.timeSinceSpawn = 0
        L3_2 = A0_2.cumulativeShotTime
        L4_2 = L2_2.specialtySpawnInterval
        L3_2 = L3_2 - L4_2
        A0_2.cumulativeShotTime = L3_2
        A0_2.firstPress = nil
        L3_2 = gamelua
        L3_2 = L3_2.g_autoReticle
        if L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.g_autoReticle
          L3_2 = L3_2.x
          if L3_2 then
            goto lbl_127
          end
        end
        L3_2 = A0_2.xPos
        ::lbl_127::
        L4_2 = gamelua
        L4_2 = L4_2.g_autoReticle
        if L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.g_autoReticle
          L4_2 = L4_2.y
          if L4_2 then
            goto lbl_137
          end
        end
        L4_2 = A0_2.yPos
        ::lbl_137::
        L5_2 = gamelua
        L5_2 = L5_2.vNormalize
        L6_2 = L1_2.x
        L6_2 = L3_2 - L6_2
        L7_2 = L1_2.y
        L7_2 = L4_2 - L7_2
        L5_2, L6_2 = L5_2(L6_2, L7_2)
        L7_2 = L2_2.specialtySpawnObjects
        if L7_2 then
          L7_2 = _G
          L7_2 = L7_2.ipairs
          L8_2 = L2_2.specialtySpawnObjects
          L7_2, L8_2, L9_2 = L7_2(L8_2)
          for L10_2, L11_2 in L7_2, L8_2, L9_2 do
            L12_2 = gamelua
            L12_2 = L12_2.vNormalize
            L13_2 = L1_2.x
            L13_2 = L3_2 - L13_2
            L14_2 = L11_2.offset
            L14_2 = L6_2 * L14_2
            L13_2 = L13_2 + L14_2
            L14_2 = L1_2.y
            L14_2 = L4_2 - L14_2
            L15_2 = L11_2.offset
            L15_2 = L5_2 * L15_2
            L14_2 = L14_2 - L15_2
            L12_2, L13_2 = L12_2(L13_2, L14_2)
            L14_2 = _G
            L14_2 = L14_2.math
            L14_2 = L14_2.random
            L14_2 = L14_2()
            L14_2 = L14_2 - 0.5
            L15_2 = L2_2.specialtySpawnRandomization
            L14_2 = L14_2 * L15_2
            L14_2 = L12_2 + L14_2
            L15_2 = _G
            L15_2 = L15_2.math
            L15_2 = L15_2.random
            L15_2 = L15_2()
            L15_2 = L15_2 - 0.5
            L16_2 = L2_2.specialtySpawnRandomization
            L15_2 = L15_2 * L16_2
            L13_2 = L13_2 + L15_2
            L12_2 = L14_2
            L14_2 = L1_2.x
            L15_2 = L11_2.distance
            L15_2 = L12_2 * L15_2
            L14_2 = L14_2 + L15_2
            L15_2 = L11_2.offset
            L15_2 = L13_2 * L15_2
            L14_2 = L14_2 - L15_2
            L15_2 = L1_2.y
            L16_2 = L11_2.distance
            L16_2 = L13_2 * L16_2
            L15_2 = L15_2 + L16_2
            L16_2 = L11_2.offset
            L16_2 = L12_2 * L16_2
            L15_2 = L15_2 + L16_2
            L16_2 = createObject
            L17_2 = gamelua
            L17_2 = L17_2.blockTable
            L18_2 = L11_2.block
            L19_2 = nil
            L20_2 = L14_2
            L21_2 = L15_2
            L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
            n = L16_2
            L16_2 = gamelua
            L16_2 = L16_2.objects
            L16_2 = L16_2.world
            L17_2 = n
            L16_2 = L16_2[L17_2]
            L17_2 = _G
            L17_2 = L17_2.math
            L17_2 = L17_2.atan2
            L18_2 = L13_2
            L19_2 = L12_2
            L17_2 = L17_2(L18_2, L19_2)
            L18_2 = L11_2.angle
            L19_2 = _G
            L19_2 = L19_2.math
            L19_2 = L19_2.pi
            L18_2 = L18_2 * L19_2
            L18_2 = L18_2 / 180
            L17_2 = L17_2 + L18_2
            L18_2 = setRotation
            L19_2 = L16_2.name
            L20_2 = L17_2
            L18_2(L19_2, L20_2)
            L18_2 = setRotation
            L19_2 = L1_2.name
            L20_2 = L17_2
            L18_2(L19_2, L20_2)
            L18_2 = applyImpulse
            L19_2 = L16_2.name
            L20_2 = L11_2.impulse
            L20_2 = L12_2 * L20_2
            L21_2 = L11_2.impulse
            L21_2 = L13_2 * L21_2
            L22_2 = L16_2.x
            L23_2 = L16_2.y
            L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
            L18_2 = _G
            L18_2 = L18_2.ipairs
            L19_2 = L11_2.particles
            L18_2, L19_2, L20_2 = L18_2(L19_2)
            for L21_2, L22_2 in L18_2, L19_2, L20_2 do
              L23_2 = putParticles
              L24_2 = {}
              L25_2 = L16_2.name
              L24_2.objectName = L25_2
              L24_2.particles = L22_2
              L24_2.useAmountInDefinition = true
              L23_2(L24_2)
            end
          end
        end
        L7_2 = L2_2.specialtyObject
        if L7_2 then
          L7_2 = gamelua
          L7_2 = L7_2.blockTable
          L7_2 = L7_2.blocks
          L8_2 = L2_2.specialtyObject
          L7_2 = L7_2[L8_2]
          L8_2 = L7_2.createSpawnOffsetY
          if not L8_2 then
            L8_2 = 0
          end
          L9_2 = gamelua
          L9_2 = L9_2.vNormalize
          L10_2 = L1_2.x
          L10_2 = L3_2 - L10_2
          L11_2 = L6_2 * L8_2
          L10_2 = L10_2 + L11_2
          L11_2 = L1_2.y
          L11_2 = L4_2 - L11_2
          L12_2 = L5_2 * L8_2
          L11_2 = L11_2 - L12_2
          L9_2, L10_2 = L9_2(L10_2, L11_2)
          L11_2 = _G
          L11_2 = L11_2.math
          L11_2 = L11_2.random
          L11_2 = L11_2()
          L11_2 = L11_2 - 0.5
          L12_2 = L2_2.specialtySpawnRandomization
          L11_2 = L11_2 * L12_2
          L11_2 = L9_2 + L11_2
          L12_2 = _G
          L12_2 = L12_2.math
          L12_2 = L12_2.random
          L12_2 = L12_2()
          L12_2 = L12_2 - 0.5
          L13_2 = L2_2.specialtySpawnRandomization
          L12_2 = L12_2 * L13_2
          L10_2 = L10_2 + L12_2
          L9_2 = L11_2
          L11_2 = L1_2.x
          L11_2 = L11_2 + L9_2
          L12_2 = L1_2.y
          L12_2 = L12_2 + L10_2
          L13_2 = setRotation
          L14_2 = L1_2.name
          L15_2 = _G
          L15_2 = L15_2.math
          L15_2 = L15_2.atan2
          L16_2 = L10_2
          L17_2 = L9_2
          L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L15_2(L16_2, L17_2)
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L13_2 = addEventCall
          L14_2 = "useLazerShotSpecialty"
          L15_2 = {}
          L16_2 = L1_2.name
          L15_2.name = L16_2
          L15_2.xPos = L11_2
          L15_2.yPos = L12_2
          L13_2(L14_2, L15_2)
        end
      end
    else
      L3_2 = gamelua
      L3_2.g_refuseDrags = nil
      L3_2 = gamelua
      L3_2 = L3_2.removeUpdateCall
      L4_2 = A0_2.name
      L5_2 = "_flamethrowerUpdate"
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2 = L3_2.hideAutoReticle
      L3_2()
    end
  else
    L1_2 = gamelua
    L1_2.g_refuseDrags = nil
    L1_2 = gamelua
    L1_2 = L1_2.removeUpdateCall
    L2_2 = A0_2.name
    L3_2 = "_flamethrowerUpdate"
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.hideAutoReticle
    L1_2()
  end
  ::lbl_342::
end

L0_1.action = L1_1
flamethrowerUpdate = L0_1
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
    L2_2 = L2_2.isPreventBirdCollision
    L3_2 = A0_2.other
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
    L2_2 = L1_2.fuelGaugeActivated
    if L2_2 then
      L2_2 = L1_2.stickyChildren
      if L2_2 then
        L2_2 = addEventCall
        L3_2 = "removeStickyBlocks"
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end

L0_1.action = L1_1
imperialOfficerOnCollisionEnter = L0_1
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
    L2_2 = L2_2.blockTable
    L2_2 = L2_2.blocks
    L3_2 = L1_2.definition
    L2_2 = L2_2[L3_2]
    L3_2 = gamelua
    L3_2 = L3_2.getAngle
    L4_2 = A0_2.name
    L3_2 = L3_2(L4_2)
    L4_2 = setPosition
    L5_2 = A0_2.name
    L6_2 = L1_2.x
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.cos
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L8_2 = L2_2.specialtyMoveForwardSpeed
    L7_2 = L7_2 * L8_2
    L8_2 = A0_2.dt
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L7_2 = L1_2.y
    L8_2 = _G
    L8_2 = L8_2.math
    L8_2 = L8_2.sin
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L9_2 = L2_2.specialtyMoveForwardSpeed
    L8_2 = L8_2 * L9_2
    L9_2 = A0_2.dt
    L8_2 = L8_2 * L9_2
    L7_2 = L7_2 + L8_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = addEventCall
    L5_2 = "actionMoveForward"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L0_1.action = L1_1
actionMoveForward = L0_1
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
      L3_2 = L3_2.fireAction
      L4_2 = "burnObject"
      L5_2 = {}
      L6_2 = A0_2.other
      L5_2.name = L6_2
      L6_2 = L2_2.burnParameters
      L5_2.burnParameters = L6_2
      L3_2(L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
onCollisionEnterBurn = L0_1
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
    L3_2 = L2_2.damageWhenBurning
    if L3_2 then
      L3_2 = L1_2.burnDamageTime
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.g_levelTimer
        L4_2 = L1_2.burnDamageTime
        L4_2 = L4_2 + 0.5
        if not (L3_2 >= L4_2) then
          goto lbl_51
        end
      end
      L3_2 = gamelua
      L3_2 = L3_2.g_levelTimer
      L1_2.burnDamageTime = L3_2
      L3_2 = addEventCall
      L4_2 = "createObjectAction"
      L5_2 = {}
      L6_2 = L2_2.damageWhenBurning
      L5_2.definition = L6_2
      L6_2 = L1_2.x
      L5_2.posX = L6_2
      L6_2 = L1_2.y
      L5_2.posY = L6_2
      L3_2(L4_2, L5_2)
      L3_2 = putParticles
      L4_2 = {}
      L5_2 = L1_2.name
      L4_2.objectName = L5_2
      L4_2.particles = "smokeBuff"
      L4_2.amount = 1
      L3_2(L4_2)
      L3_2 = playAudio
      L4_2 = "iceAsteroid_collision"
      L3_2(L4_2)
    end
    ::lbl_51::
    L3_2 = L2_2.destroyWhenBurning
    if not L3_2 then
      L3_2 = L2_2.materialWhenBurning
      if not L3_2 then
        return
      end
    end
    L3_2 = L1_2.isBurning
    if L3_2 then
      return
    else
      L1_2.isBurning = true
    end
    L3_2 = L2_2.destroyWhenBurning
    if L3_2 then
      L3_2 = addEventCall
      L4_2 = "fireDestroy"
      L5_2 = {}
      L6_2 = A0_2.name
      L5_2.name = L6_2
      L3_2(L4_2, L5_2)
      return
    end
    L3_2 = L1_2.isFrozen
    if L3_2 then
      return
    end
    L3_2 = L2_2.materialWhenBurning
    if L3_2 then
      L3_2 = L2_2.materialWhenBurning
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
      L4_2 = putParticles
      L5_2 = {}
      L6_2 = L1_2.name
      L5_2.objectName = L6_2
      L6_2 = A0_2.burnParameters
      if L6_2 then
        L6_2 = A0_2.burnParameters
        L6_2 = L6_2.initialParticles
        if L6_2 then
          goto lbl_139
        end
      end
      L6_2 = "smokeBuff"
      ::lbl_139::
      L5_2.particles = L6_2
      L5_2.useAmountInDefinition = true
      L4_2(L5_2)
      L4_2 = addEventCall
      L5_2 = "addIcicles"
      L6_2 = {}
      L7_2 = L1_2.name
      L6_2.name = L7_2
      L6_2.blockDefinition = "BLOCK_BURN_MARK"
      L6_2.blockAmountMultiplier = 2
      L4_2(L5_2, L6_2)
      L4_2 = playAudio
      L5_2 = "iceAsteroid_collision"
      L4_2(L5_2)
      L1_2.burningParticles = "chopperFire"
      L4_2 = addEventCall
      L5_2 = "addBurningSparks"
      L6_2 = {}
      L7_2 = L1_2.name
      L6_2.name = L7_2
      L7_2 = A0_2.burnParameters
      L6_2.burnParameters = L7_2
      L7_2 = A0_2.burnParameters
      if L7_2 then
        L7_2 = A0_2.burnParameters
        L7_2 = L7_2.spreadInitialDelay
      end
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = addEventCall
      L5_2 = "fireDestroy"
      L6_2 = {}
      L7_2 = A0_2.name
      L6_2.name = L7_2
      L7_2 = L2_2.burnTime
      if not L7_2 then
        L7_2 = 3
      end
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end

L0_1.action = L1_1
burnObject = L0_1
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
    L2_2 = L2_2.fireAction
    L3_2 = "createObjectAction"
    L4_2 = {}
    L4_2.definition = "BLOCK_FIRE_DESTROY"
    L5_2 = L1_2.x
    L4_2.posX = L5_2
    L5_2 = L1_2.y
    L4_2.posY = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = addEventCall
    L3_2 = "destroy"
    L4_2 = {}
    L5_2 = L1_2.name
    L4_2.name = L5_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.action = L1_1
fireDestroy = L0_1
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
    L2_2 = L1_2.burningParticles
    if L2_2 then
      L2_2 = _G
      L2_2 = L2_2.math
      L2_2 = L2_2.random
      L2_2 = L2_2()
      L3_2 = A0_2.burnParameters
      if L3_2 then
        L3_2 = A0_2.burnParameters
        L3_2 = L3_2.spreadChance
        if L3_2 then
          goto lbl_26
        end
      end
      L3_2 = 0.1
      ::lbl_26::
      if L2_2 < L3_2 then
        L2_2 = A0_2.burnParameters
        if L2_2 then
          L2_2 = A0_2.burnParameters
          L2_2 = L2_2.spreadBlock
          if L2_2 then
            goto lbl_36
          end
        end
        L2_2 = "BLOCK_FIRE_SPARK"
        ::lbl_36::
        L3_2 = createObject
        L4_2 = gamelua
        L4_2 = L4_2.blockTable
        L5_2 = L2_2
        L6_2 = nil
        L7_2 = L1_2.x
        L8_2 = L1_2.y
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L4_2 = _G
        L4_2 = L4_2.math
        L4_2 = L4_2.random
        L4_2 = L4_2()
        L4_2 = L4_2 * 2
        L5_2 = _G
        L5_2 = L5_2.math
        L5_2 = L5_2.pi
        L4_2 = L4_2 * L5_2
        L5_2 = A0_2.burnParameters
        if L5_2 then
          L5_2 = A0_2.burnParameters
          L5_2 = L5_2.spreadUpOnly
          if L5_2 then
            L5_2 = _G
            L5_2 = L5_2.math
            L5_2 = L5_2.pi
            L4_2 = -0.5 * L5_2
          end
        end
        L5_2 = setRotation
        L6_2 = L3_2
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
      end
      L2_2 = putParticles
      L3_2 = {}
      L4_2 = A0_2.name
      L3_2.objectName = L4_2
      L4_2 = L1_2.burningParticles
      L3_2.particles = L4_2
      L3_2.useAmountInDefinition = true
      L2_2(L3_2)
      L2_2 = addEventCall
      L3_2 = "addBurningSparks"
      L4_2 = {}
      L5_2 = L1_2.name
      L4_2.name = L5_2
      L5_2 = A0_2.burnParameters
      L4_2.burnParameters = L5_2
      L5_2 = A0_2.burnParameters
      if L5_2 then
        L5_2 = A0_2.burnParameters
        L5_2 = L5_2.spreadDelay
        if L5_2 then
          goto lbl_91
        end
      end
      L5_2 = 0.5
      ::lbl_91::
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
addBurningSparks = L0_1
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
    L2_2 = L2_2.setLinearDamping
    L3_2 = A0_2.name
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L1_2.noDamping = true
  else
    L1_2 = gamelua
    L1_2 = L1_2.removeUpdateCall
    L2_2 = A0_2.updateCallName
    L1_2(L2_2)
  end
end

L0_1.action = L1_1
setClusterDamping = L0_1
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
    L1_2.fuelGaugeActivated = true
    L2_2 = addUpdateCall
    L3_2 = "landerUpdate"
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = A0_2.name
    L7_2 = "_landerUpdate"
    L6_2 = L6_2 .. L7_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

L0_1.action = L1_1
useLanderSpecialty = L0_1
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
    L1_2.fuelGauge = 1
  end
end

L0_1.action = L1_1
setFuelToMax = L0_1
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
    L1_2 = L1_2.isPreventBirdCollision
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.fuelGaugeActivated
    if L2_2 then
      L1_2.fuelGauge = 0
    end
  end
end

L0_1.action = L1_1
setFuelToZero = L0_1
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
    L1_2 = L1_2.isPreventBirdCollision
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.name
    L1_2 = L1_2[L2_2]
    L1_2.fuelGauge = 0
  end
end

L0_1.action = L1_1
setFuelToZeroAlways = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
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
    L3_2 = A0_2.flyTime
    if not L3_2 then
      L3_2 = L2_2.specialtyFlyTime
    end
    A0_2.flyTime = L3_2
    L3_2 = A0_2.timeSinceSpawn
    if not L3_2 then
      L3_2 = L2_2.specialtySpawnInterval
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timeSinceSpawn = L3_2
    L3_2 = gamelua
    L3_2.g_refuseDrags = true
    L3_2 = A0_2.flyTime
    L4_2 = L2_2.specialtyFlyTime
    L3_2 = L3_2 / L4_2
    L1_2.fuelGauge = L3_2
    L3_2 = setSprite
    L4_2 = L1_2.name
    L5_2 = L2_2.sprites
    L5_2 = L5_2.flying
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.flyTime
    if 0 < L3_2 then
      L3_2 = L1_2.hasCollided
      if not L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.isKeyHold
        L4_2 = "LBUTTON"
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = A0_2.flyTime
          L4_2 = A0_2.dt
          L3_2 = L3_2 - L4_2
          A0_2.flyTime = L3_2
          L3_2 = gamelua
          L3_2 = L3_2.getAngle
          L4_2 = L1_2.name
          L3_2 = L3_2(L4_2)
          L4_2 = gamelua
          L4_2 = L4_2.getLinearVelocity
          L5_2 = L1_2.name
          L4_2, L5_2 = L4_2(L5_2)
          L6_2 = gamelua
          L6_2 = L6_2.vNormalize
          L7_2 = L4_2
          L8_2 = L5_2
          L6_2, L7_2 = L6_2(L7_2, L8_2)
          L5_2 = L7_2
          L4_2 = L6_2
          L6_2 = gamelua
          L6_2 = L6_2.vec2Rotate
          L7_2 = L4_2
          L8_2 = L5_2
          L9_2 = L2_2.specialtyFlyForceAngle
          L10_2 = _G
          L10_2 = L10_2.math
          L10_2 = L10_2.pi
          L9_2 = L9_2 * L10_2
          L9_2 = L9_2 / 180
          L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
          L8_2 = applyForce
          L9_2 = L1_2.name
          L10_2 = L2_2.specialtyFlyForce
          L10_2 = L6_2 * L10_2
          L11_2 = L2_2.specialtyFlyForce
          L11_2 = L7_2 * L11_2
          L12_2 = L1_2.x
          L13_2 = L1_2.y
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
          L8_2 = setSprite
          L9_2 = L1_2.name
          L10_2 = L2_2.sprites
          L10_2 = L10_2.action
          L8_2(L9_2, L10_2)
          L8_2 = gamelua
          L8_2 = L8_2.isKeyPressed
          L9_2 = "LBUTTON"
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = playAudio
            L9_2 = L2_2.sounds
            L9_2 = L9_2.special
            L8_2(L9_2)
          end
          L8_2 = A0_2.timeSinceSpawn
          L9_2 = L2_2.specialtySpawnInterval
          if L8_2 >= L9_2 then
            A0_2.timeSinceSpawn = 0
            L8_2 = -L6_2
            L9_2 = -L7_2
            L10_2 = _G
            L10_2 = L10_2.math
            L10_2 = L10_2.random
            L10_2 = L10_2()
            L10_2 = L10_2 - 0.5
            L11_2 = L2_2.specialtySpawnRandomization
            L10_2 = L10_2 * L11_2
            L10_2 = L8_2 + L10_2
            L11_2 = _G
            L11_2 = L11_2.math
            L11_2 = L11_2.random
            L11_2 = L11_2()
            L11_2 = L11_2 - 0.5
            L12_2 = L2_2.specialtySpawnRandomization
            L11_2 = L11_2 * L12_2
            L9_2 = L9_2 + L11_2
            L8_2 = L10_2
            L10_2 = _G
            L10_2 = L10_2.ipairs
            L11_2 = L2_2.specialtySpawnObjects
            L10_2, L11_2, L12_2 = L10_2(L11_2)
            for L13_2, L14_2 in L10_2, L11_2, L12_2 do
              L15_2 = L1_2.x
              L16_2 = L14_2.distance
              L16_2 = L8_2 * L16_2
              L15_2 = L15_2 + L16_2
              L16_2 = L14_2.offset
              L16_2 = L9_2 * L16_2
              L15_2 = L15_2 - L16_2
              L16_2 = L1_2.y
              L17_2 = L14_2.distance
              L17_2 = L9_2 * L17_2
              L16_2 = L16_2 + L17_2
              L17_2 = L14_2.offset
              L17_2 = L8_2 * L17_2
              L16_2 = L16_2 + L17_2
              L17_2 = createObject
              L18_2 = gamelua
              L18_2 = L18_2.blockTable
              L19_2 = L14_2.block
              L20_2 = nil
              L21_2 = L15_2
              L22_2 = L16_2
              L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
              n = L17_2
              L17_2 = gamelua
              L17_2 = L17_2.objects
              L17_2 = L17_2.world
              L18_2 = n
              L17_2 = L17_2[L18_2]
              L18_2 = setRotation
              L19_2 = L17_2.name
              L20_2 = _G
              L20_2 = L20_2.math
              L20_2 = L20_2.atan2
              L21_2 = L9_2
              L22_2 = L8_2
              L20_2 = L20_2(L21_2, L22_2)
              L21_2 = L14_2.angle
              L22_2 = _G
              L22_2 = L22_2.math
              L22_2 = L22_2.pi
              L21_2 = L21_2 * L22_2
              L21_2 = L21_2 / 180
              L20_2 = L20_2 + L21_2
              L18_2(L19_2, L20_2)
              L18_2 = applyImpulse
              L19_2 = L17_2.name
              L20_2 = L14_2.impulse
              L20_2 = L8_2 * L20_2
              L21_2 = L14_2.impulse
              L21_2 = L9_2 * L21_2
              L22_2 = L17_2.x
              L23_2 = L17_2.y
              L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
              L18_2 = _G
              L18_2 = L18_2.ipairs
              L19_2 = L14_2.particles
              L18_2, L19_2, L20_2 = L18_2(L19_2)
              for L21_2, L22_2 in L18_2, L19_2, L20_2 do
                L23_2 = putParticles
                L24_2 = {}
                L25_2 = n
                L24_2.objectName = L25_2
                L24_2.particles = L22_2
                L24_2.useAmountInDefinition = true
                L23_2(L24_2)
              end
            end
          end
        end
    end
    else
      L1_2.fuelGauge = 0
      L3_2 = gamelua
      L3_2.g_refuseDrags = nil
      L3_2 = gamelua
      L3_2 = L3_2.removeUpdateCall
      L4_2 = A0_2.name
      L5_2 = "_landerUpdate"
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
    end
  else
    L1_2 = gamelua
    L1_2.g_refuseDrags = nil
    L1_2 = gamelua
    L1_2 = L1_2.removeUpdateCall
    L2_2 = A0_2.name
    L3_2 = "_landerUpdate"
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end

L0_1.action = L1_1
landerUpdate = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = gamelua
  L0_2 = L0_2.flyingBird
  if L0_2 ~= nil then
    L0_2 = gamelua
    L0_2 = L0_2.flyingBird
    L0_2 = L0_2.fuelGauge
    if L0_2 then
      L0_2 = _G
      L0_2 = L0_2.math
      L0_2 = L0_2.max
      L1_2 = 0
      L2_2 = gamelua
      L2_2 = L2_2.flyingBird
      L2_2 = L2_2.fuelGauge
      if not L2_2 then
        L2_2 = 1
      end
      L0_2 = L0_2(L1_2, L2_2)
      L1_2 = nil
      if 0 < L0_2 then
        L2_2 = gamelua
        L2_2 = L2_2.tweenEaseCubicOut
        L3_2 = _G
        L3_2 = L3_2.math
        L3_2 = L3_2.min
        L4_2 = 1
        L5_2 = gamelua
        L5_2 = L5_2.flightTime
        L5_2 = L5_2 * 3
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = 0
        L5_2 = 1
        L6_2 = 1
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        L1_2 = L2_2
        L2_2 = gamelua
        L2_2 = L2_2.flyingBird
        L3_2 = gamelua
        L3_2 = L3_2.flightTime
        L2_2.lastPositiveGaugeTimer = L3_2
        L2_2 = gamelua
        L2_2 = L2_2.flyingBird
        L2_2.lastTween = L1_2
        L2_2 = gamelua
        L2_2 = L2_2.flyingBird
        L2_2.lastFuel = L0_2
      else
        L2_2 = gamelua
        L2_2 = L2_2.tweenEaseCubicOut
        L3_2 = _G
        L3_2 = L3_2.math
        L3_2 = L3_2.max
        L4_2 = 0
        L5_2 = gamelua
        L5_2 = L5_2.flyingBird
        L5_2 = L5_2.lastPositiveGaugeTimer
        L6_2 = gamelua
        L6_2 = L6_2.flightTime
        L5_2 = L5_2 - L6_2
        L5_2 = L5_2 * 3
        L5_2 = 1 + L5_2
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = 0
        L5_2 = 1
        L6_2 = 1
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        L3_2 = gamelua
        L3_2 = L3_2.flyingBird
        L3_2 = L3_2.lastTween
        L1_2 = L2_2 * L3_2
        L2_2 = gamelua
        L2_2 = L2_2.flyingBird
        L0_2 = L2_2.lastFuel
      end
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L2_2 = L2_2.blocks
      L3_2 = gamelua
      L3_2 = L3_2.flyingBird
      L3_2 = L3_2.definition
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.fuelGaugeSprites
      L2_2 = L2_2.bg
      L3_2 = gamelua
      L3_2 = L3_2.blockTable
      L3_2 = L3_2.blocks
      L4_2 = gamelua
      L4_2 = L4_2.flyingBird
      L4_2 = L4_2.definition
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.fuelGaugeSprites
      L3_2 = L3_2.fg
      L4_2 = gamelua
      L4_2 = L4_2.screenWidth
      L4_2 = L4_2 * 0.5
      L5_2 = gamelua
      L5_2 = L5_2.screenHeight
      L6_2 = gamelua
      L6_2 = L6_2.getUIScale
      L6_2 = L6_2()
      L6_2 = L6_2 * 100
      L5_2 = L5_2 + L6_2
      L6_2 = gamelua
      L6_2 = L6_2.getUIScale
      L6_2 = L6_2()
      L6_2 = L6_2 * L1_2
      L6_2 = L6_2 * 200
      L5_2 = L5_2 - L6_2
      L6_2 = gamelua
      L6_2 = L6_2.getUIScale
      L6_2 = L6_2()
      L6_2 = L6_2 * L1_2
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.pi
      L7_2 = L7_2 * L0_2
      L8_2 = _G
      L8_2 = L8_2.math
      L8_2 = L8_2.pi
      L8_2 = L8_2 * 0.5
      L7_2 = L7_2 - L8_2
      L8_2 = _G
      L8_2 = L8_2.res
      L8_2 = L8_2.getSpritePivot
      L9_2 = L3_2
      L8_2, L9_2 = L8_2(L9_2)
      L10_2 = gamelua
      L10_2 = L10_2.setRenderState
      L11_2 = L4_2 / L6_2
      L12_2 = L5_2 / L6_2
      L13_2 = L6_2
      L14_2 = L6_2
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L18_2 = 0.75 * L1_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L10_2 = _G
      L10_2 = L10_2.res
      L10_2 = L10_2.drawSprite
      L11_2 = L2_2
      L12_2 = 0
      L13_2 = 0
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = gamelua
      L10_2 = L10_2.setRenderState
      L11_2 = L4_2 / L6_2
      L12_2 = L5_2 / L6_2
      L13_2 = L6_2
      L14_2 = L6_2
      L15_2 = L7_2
      L16_2 = L8_2
      L17_2 = L9_2
      L18_2 = 0.75 * L1_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L10_2 = _G
      L10_2 = L10_2.res
      L10_2 = L10_2.drawSprite
      L11_2 = L3_2
      L12_2 = 0
      L13_2 = 0
      L10_2(L11_2, L12_2, L13_2)
    end
  end
end

drawLanderFuelGauge = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
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
    L3_2 = L1_2.spawnBlockActivated
    if not L3_2 then
      L3_2 = L1_2.accelerationDirection
      if L3_2 then
        goto lbl_27
      end
    end
    L3_2 = addEventCall
    L4_2 = "addCollisionBuff"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    do return end
    ::lbl_27::
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
    L5_2 = L2_2.specialtyStopSpawningMaterials
    L6_2 = L4_2.material
    L5_2 = L5_2[L6_2]
    if not L5_2 then
      L5_2 = L2_2.specialtyStopSpawningDefinitions
      L6_2 = L3_2.definition
      L5_2 = L5_2[L6_2]
      if not L5_2 then
        goto lbl_59
      end
    end
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = L2_2.specialtyStopSpawningActions
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = addEventCall
      L11_2 = L9_2
      L12_2 = A0_2
      L10_2(L11_2, L12_2)
    end
    do return end
    ::lbl_59::
    L1_2.spawnBlockActivated = true
    L5_2 = _G
    L5_2 = L5_2.ipairs
    L6_2 = L2_2.specialtySpawnObjects
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = addEventCall
      L11_2 = "createObjectAction"
      L12_2 = {}
      L13_2 = L9_2.block
      L12_2.definition = L13_2
      L13_2 = A0_2.collisionPointX
      L14_2 = A0_2.collisionNormalX
      L15_2 = L2_2.specialtySpawnBlockOffset
      L14_2 = L14_2 * L15_2
      L13_2 = L13_2 + L14_2
      L12_2.posX = L13_2
      L13_2 = A0_2.collisionPointY
      L14_2 = A0_2.collisionNormalY
      L15_2 = L2_2.specialtySpawnBlockOffset
      L14_2 = L14_2 * L15_2
      L13_2 = L13_2 + L14_2
      L12_2.posY = L13_2
      L13_2 = _G
      L13_2 = L13_2.math
      L13_2 = L13_2.atan2
      L14_2 = A0_2.collisionNormalY
      L15_2 = A0_2.collisionNormalX
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = L2_2.specialtySpawnBlockAngle
      L15_2 = _G
      L15_2 = L15_2.math
      L15_2 = L15_2.pi
      L14_2 = L14_2 * L15_2
      L14_2 = L14_2 / 180
      L13_2 = L13_2 + L14_2
      L12_2.angle = L13_2
      L13_2 = A0_2.collisionNormalX
      L13_2 = -L13_2
      L14_2 = L2_2.specialtySpawnBlockVelocity
      L13_2 = L13_2 * L14_2
      L12_2.velX = L13_2
      L13_2 = A0_2.collisionNormalY
      L13_2 = -L13_2
      L14_2 = L2_2.specialtySpawnBlockVelocity
      L13_2 = L13_2 * L14_2
      L12_2.velY = L13_2
      L13_2 = {}
      L13_2.name = "createWeldJointToName"
      L14_2 = {}
      L15_2 = A0_2.other
      L14_2.other = L15_2
      L13_2.params = L14_2
      L12_2.postAction = L13_2
      L10_2(L11_2, L12_2)
    end
    L5_2 = L2_2.specialtySpawnBlockBulletTime
    if L5_2 then
      L5_2 = addEventCall
      L6_2 = "activateBulletTimeAction"
      L7_2 = {}
      L8_2 = L1_2.name
      L7_2.name = L8_2
      L8_2 = L2_2.specialtySpawnBlockBulletTime
      L7_2.specialtyBulletTime = L8_2
      L5_2(L6_2, L7_2)
    end
    L5_2 = playAudio
    L6_2 = L2_2.sounds
    L6_2 = L6_2.spawnBlock
    L5_2(L6_2)
    L5_2 = addEventCall
    L6_2 = "destroyBird"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  end
end

L0_1.action = L1_1
useSpawnBlockSpecialty = L0_1
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
    L2_2 = L1_2.stickyParent
    if L2_2 then
      L2_2 = checkStillInWorld
      L3_2 = L1_2.stickyParent
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = gamelua
        L2_2 = L2_2.objects
        L2_2 = L2_2.world
        L3_2 = L1_2.stickyParent
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2.accelerationDirection
        if L3_2 then
          L3_2 = setRotation
          L4_2 = L1_2.name
          L5_2 = L2_2.accelerationDirection
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end

L0_1.action = L1_1
setParentDashAngle = L0_1
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
    L3_2 = L1_2.zebActivated
    if not L3_2 then
      L1_2.zebActivated = true
      L3_2 = createObject
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L5_2 = L2_2.specialtyBlock
      L6_2 = nil
      L7_2 = L1_2.x
      L8_2 = L1_2.y
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = addEventCall
      L4_2 = "destroyBird"
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      L3_2 = gamelua
      L3_2 = L3_2.stopAudio
      L4_2 = L2_2.sounds
      L4_2 = L4_2.collisionGetAngry
      L3_2(L4_2)
      L3_2 = gamelua
      L3_2 = L3_2.addCameraShake
      L4_2 = gamelua
      L4_2 = L4_2.cameraShakeModeSine
      L5_2 = L2_2.specialtyZebActivateShake
      L5_2 = L5_2.velocity
      L6_2 = L2_2.specialtyZebActivateShake
      L6_2 = L6_2.distortion
      L7_2 = L2_2.specialtyZebActivateShake
      L7_2 = L7_2.timer
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end

L0_1.action = L1_1
activateZeb = L0_1
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
    L3_2 = L1_2.zebDelayActivated
    if not L3_2 then
      L3_2 = L1_2.zebActivated
      if not L3_2 then
        L1_2.zebDelayActivated = true
        L3_2 = playAudio
        L4_2 = L2_2.sounds
        L4_2 = L4_2.collisionGetAngry
        L3_2(L4_2)
        L1_2.additionalRemoveTimer = 3
        L3_2 = addEventCall
        L4_2 = "activateZeb"
        L5_2 = A0_2
        L6_2 = L2_2.specialtyOnCollisionActivationDelay
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = addEventCall
        L4_2 = "disableCollisionSound"
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
        L1_2.ignoreCollisionSprite = true
        L3_2 = _G
        L3_2 = L3_2.ipairs
        L4_2 = L2_2.specialtyZebWarmUpSprites
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        for L6_2, L7_2 in L3_2, L4_2, L5_2 do
          L8_2 = addEventCall
          L9_2 = "zebChangeSpriteAction"
          L10_2 = {}
          L11_2 = A0_2.name
          L10_2.name = L11_2
          L11_2 = L7_2.sprite
          L10_2.sprite = L11_2
          L11_2 = L7_2.delay
          L8_2(L9_2, L10_2, L11_2)
        end
        L3_2 = gamelua
        L3_2 = L3_2.addCameraShake
        L4_2 = gamelua
        L4_2 = L4_2.cameraShakeModeSine
        L5_2 = L2_2.specialtyZebWarmupShake
        L5_2 = L5_2.velocity
        L6_2 = L2_2.specialtyZebWarmupShake
        L6_2 = L6_2.distortion
        L7_2 = L2_2.specialtyZebWarmupShake
        L7_2 = L7_2.timer
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
end

L0_1.action = L1_1
activateZebWithDelay = L0_1
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
    L1_2.collisionSoundDisabled = true
  end
end

L0_1.action = L1_1
disableCollisionSound = L0_1
L0_1 = {}

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
    L2_2 = L1_2.zebActivated
    if not L2_2 then
      L2_2 = setSprite
      L3_2 = A0_2.name
      L4_2 = A0_2.sprite
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
zebChangeSpriteAction = L0_1
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
    L4_2 = L2_2.specialtyDelay
    if L3_2 >= L4_2 then
      L3_2 = vNormalize
      L4_2 = A0_2.xPos
      L5_2 = L1_2.x
      L4_2 = L4_2 - L5_2
      L5_2 = A0_2.yPos
      L6_2 = L1_2.y
      L5_2 = L5_2 - L6_2
      L3_2, L4_2 = L3_2(L4_2, L5_2)
      L5_2 = gamelua
      L5_2 = L5_2.raycastBeamFromObject
      L6_2 = L1_2
      L7_2 = {}
      L7_2.x = L3_2
      L7_2.y = L4_2
      L8_2 = L2_2.specialtyTeleTrailObjectLength
      L9_2 = 0
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = L2_2.specialtyATDPShake
      if L5_2 then
        L5_2 = gamelua
        L5_2 = L5_2.addCameraShake
        L6_2 = gamelua
        L6_2 = L6_2.cameraShakeModeSine
        L7_2 = L2_2.specialtyATDPShake
        L7_2 = L7_2.velocity
        L8_2 = L2_2.specialtyATDPShake
        L8_2 = L8_2.distortion
        L9_2 = L2_2.specialtyATDPShake
        L9_2 = L9_2.timer
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    else
      L3_2 = addEventCall
      L4_2 = "useLaserBeamSpecialty"
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
    end
  end
end

L0_1.action = L1_1
useLaserBeamSpecialty = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
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
    L3_2 = vNormalize
    L4_2 = A0_2.xPos
    L5_2 = L1_2.x
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.yPos
    L6_2 = L1_2.y
    L5_2 = L5_2 - L6_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L5_2 = {}
    L6_2 = L1_2.x
    L5_2.x = L6_2
    L6_2 = L1_2.y
    L5_2.y = L6_2
    L6_2 = {}
    L7_2 = L1_2.x
    L8_2 = L2_2.specialtyTeleDistance
    L8_2 = L3_2 * L8_2
    L7_2 = L7_2 + L8_2
    L6_2.x = L7_2
    L7_2 = L1_2.y
    L8_2 = L2_2.specialtyTeleDistance
    L8_2 = L4_2 * L8_2
    L7_2 = L7_2 + L8_2
    L6_2.y = L7_2
    L7_2 = gamelua
    L7_2 = L7_2.raycastFromObject
    L8_2 = L1_2
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = _G
    L8_2 = L8_2.ipairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L2_2.specialtyTeleDamageObject
      if L13_2 then
        L13_2 = createObject
        L14_2 = gamelua
        L14_2 = L14_2.blockTable
        L15_2 = L2_2.specialtyTeleDamageObject
        L16_2 = nil
        L17_2 = L12_2.x
        L18_2 = L12_2.y
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      end
      L13_2 = L2_2.specialtyTeleCollideMaterials
      if L13_2 then
        L13_2 = L2_2.specialtyTeleCollideMaterials
        L14_2 = L12_2.material
        L13_2 = L13_2[L14_2]
        if not L13_2 then
          goto lbl_91
        end
      end
      L13_2 = L2_2.specialtyTeleCollideIgnoreMaterials
      if L13_2 then
        L13_2 = L2_2.specialtyTeleCollideIgnoreMaterials
        L14_2 = L12_2.material
        L13_2 = L13_2[L14_2]
        if L13_2 then
          goto lbl_91
        end
      end
      L13_2 = print
      L14_2 = "Teleported to "
      L15_2 = L12_2.name
      L16_2 = " ("
      L17_2 = L12_2.material
      L18_2 = ")"
      L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
      L13_2(L14_2)
      L13_2 = L12_2.rayCastContactX
      L6_2.x = L13_2
      L13_2 = L12_2.rayCastContactY
      L6_2.y = L13_2
      do break end
      ::lbl_91::
    end
    L8_2 = L6_2.x
    L9_2 = L2_2.specialtyTeleportOffset
    L9_2 = L9_2 * L3_2
    L8_2 = L8_2 - L9_2
    L6_2.x = L8_2
    L8_2 = L6_2.y
    L9_2 = L2_2.specialtyTeleportOffset
    L9_2 = L9_2 * L4_2
    L8_2 = L8_2 - L9_2
    L6_2.y = L8_2
    L8_2 = gamelua
    L8_2 = L8_2.worldToPhysicsTransform
    L9_2 = gamelua
    L9_2 = L9_2.leftLimitWorld
    L10_2 = gamelua
    L10_2 = L10_2.rightLimitWorld
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    L10_2 = gamelua
    L10_2 = L10_2.worldToPhysicsTransform
    L11_2 = gamelua
    L11_2 = L11_2.topLimitWorld
    L12_2 = gamelua
    L12_2 = L12_2.bottomLimitWorld
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    L12_2 = L6_2.y
    if L10_2 > L12_2 then
      L12_2 = addEventCall
      L13_2 = "destroyBird"
      L14_2 = A0_2
      L12_2(L13_2, L14_2)
    end
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.max
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.min
    L14_2 = L6_2.x
    L15_2 = L9_2
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = L8_2
    L12_2 = L12_2(L13_2, L14_2)
    L6_2.x = L12_2
    L12_2 = _G
    L12_2 = L12_2.math
    L12_2 = L12_2.max
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.min
    L14_2 = L6_2.y
    L15_2 = L11_2
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2)
    L6_2.y = L12_2
    L12_2 = setPosition
    L13_2 = L1_2.name
    L14_2 = L6_2.x
    L15_2 = L6_2.y
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = setVelocity
    L13_2 = L1_2.name
    L14_2 = L2_2.specialtyAfterTeleVelocity
    L14_2 = L3_2 * L14_2
    L15_2 = L2_2.specialtyAfterTeleVelocity
    L15_2 = L4_2 * L15_2
    L12_2(L13_2, L14_2, L15_2)
    L1_2.recordTrajectory = true
    L1_2.disableRecordTrajectory = true
    L12_2 = gamelua
    L12_2 = L12_2.distance
    L13_2 = L5_2.x
    L14_2 = L5_2.y
    L15_2 = L6_2.x
    L16_2 = L6_2.y
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L13_2 = 0
    L14_2 = L2_2.specialtyTeleTrailObject
    if L14_2 then
      while L12_2 > L13_2 do
        L14_2 = L5_2.x
        L15_2 = L3_2 * L13_2
        L14_2 = L14_2 + L15_2
        L15_2 = L5_2.y
        L16_2 = L4_2 * L13_2
        L15_2 = L15_2 + L16_2
        L16_2 = createObject
        L17_2 = gamelua
        L17_2 = L17_2.blockTable
        L18_2 = L2_2.specialtyTeleTrailObject
        L19_2 = nil
        L20_2 = L14_2
        L21_2 = L15_2
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
        L16_2 = L2_2.specialtyTeleTrailObjectStep
        L13_2 = L13_2 + L16_2
      end
    end
    L14_2 = createObject
    L15_2 = gamelua
    L15_2 = L15_2.blockTable
    L16_2 = L2_2.specialtyTeleTrailVisualizationObject
    L17_2 = nil
    L18_2 = L5_2.x
    L19_2 = L3_2 * L12_2
    L18_2 = L18_2 + L19_2
    L19_2 = L5_2.y
    L20_2 = L4_2 * L12_2
    L19_2 = L19_2 + L20_2
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    L15_2 = setRotation
    L16_2 = L14_2
    L17_2 = _G
    L17_2 = L17_2.math
    L17_2 = L17_2.atan2
    L18_2 = L4_2
    L19_2 = L3_2
    L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L15_2 = gamelua
    L15_2 = L15_2.objects
    L15_2 = L15_2.world
    L15_2 = L15_2[L14_2]
    L15_2.trailDistance = L12_2
    L15_2 = putParticles
    L16_2 = {}
    L17_2 = L5_2.x
    L16_2.x = L17_2
    L17_2 = L5_2.y
    L16_2.y = L17_2
    L17_2 = L2_2.specialtyTeleParticlesStart
    L16_2.particles = L17_2
    L16_2.useAmountInDefinition = true
    L15_2(L16_2)
    L15_2 = putParticles
    L16_2 = {}
    L17_2 = L6_2.x
    L16_2.x = L17_2
    L17_2 = L6_2.y
    L16_2.y = L17_2
    L17_2 = L2_2.specialtyTeleParticlesEnd
    L16_2.particles = L17_2
    L16_2.useAmountInDefinition = true
    L15_2(L16_2)
    L15_2 = L2_2.specialtyPostAction
    if L15_2 then
      L15_2 = addEventCall
      L16_2 = L2_2.specialtyPostAction
      L17_2 = A0_2
      L15_2(L16_2, L17_2)
    end
  end
end

L0_1.action = L1_1
useTeleSliceSpecialty = L0_1
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
    L3_2 = L3_2.objects
    L3_2 = L3_2.world
    L4_2 = A0_2.other
    L3_2 = L3_2[L4_2]
    L4_2 = gamelua
    L4_2 = L4_2.getAngle
    L5_2 = A0_2.name
    L4_2 = L4_2(L5_2)
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
    L7_2 = gamelua
    L7_2 = L7_2.applyImpulse
    L8_2 = L3_2.name
    L9_2 = L2_2.gamorreanPushImpulse
    L9_2 = L5_2 * L9_2
    L10_2 = L2_2.gamorreanPushImpulse
    L10_2 = L6_2 * L10_2
    L11_2 = L3_2.x
    L12_2 = L3_2.y
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end

L0_1.action = L1_1
gamorreanPush = L0_1
