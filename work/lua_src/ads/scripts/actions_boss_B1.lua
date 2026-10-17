local L0_1, L1_1, L2_1, L3_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.print
  print = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.createObject
  createObject = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.destroyObject
  destroyObject = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.addEventCall
  addEventCall = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.addUpdateCall
  addUpdateCall = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.checkStillInWorld
  checkStillInWorld = L0_2
end

Initialize = L0_1
L0_1 = {}
L1_1 = "boss_sandvehicle_loop_01"
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2.loopingSound
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.stopAudio
    L2_2 = L0_1
    L2_2 = L2_2.loopingSound
    L1_2(L2_2)
  end
end

L2_1.action = L3_1
onPauseSandVehicleBossfight = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2.hp
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.hp
    if 0 < L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.loopingSound
      if L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.isLevelEnded
        L1_2 = L1_2()
        if not L1_2 then
          L1_2 = gamelua
          L1_2 = L1_2.playAudio
          L2_2 = L0_1
          L2_2 = L2_2.loopingSound
          L1_2(L2_2)
        end
      end
    end
  end
end

L2_1.action = L3_1
onResumeSandVehicleBossfight = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L0_1 = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  A0_2.bossObj = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.blockTable
  L1_2 = L1_2.blocks
  L2_2 = A0_2.bossObj
  L2_2 = L2_2.definition
  L1_2 = L1_2[L2_2]
  A0_2.bossDef = L1_2
  L1_2 = {}
  L2_2 = A0_2.bossObj
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L2_2 = A0_2.bossObj
  L2_2 = L2_2.y
  L1_2.y = L2_2
  A0_2.startPos = L1_2
  L1_2 = {}
  L2_2 = A0_2.bossObj
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L2_2 = A0_2.bossObj
  L2_2 = L2_2.y
  L1_2.y = L2_2
  A0_2.initialPos = L1_2
  L1_2 = A0_2.bossObj
  L1_2 = L1_2.x
  A0_2.targetPosX = L1_2
  A0_2.birdIndex = 1
  A0_2.birdsShot = 0
  A0_2.bossMoveAmount = 0
  A0_2.cameraDelayTimer = 0
  L1_2 = L0_1
  L2_2 = A0_2.bossDef
  L2_2 = L2_2.specialtyHitPoints
  L1_2.hp = L2_2
  L1_2 = L0_1
  L2_2 = {}
  L1_2.collidedList = L2_2
  L1_2 = gamelua
  L2_2 = gamelua
  L2_2 = L2_2.castleCameraTimer
  L3_2 = A0_2.bossDef
  L3_2 = L3_2.specialtyLevelStartDelay
  L2_2 = L2_2 - L3_2
  L1_2.castleCameraTimer = L2_2
  L1_2 = addUpdateCall
  L2_2 = "boss1_update"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bossDef
  L1_2 = L1_2.specialtyLoopingParticles
  L2_2 = L0_1
  L2_2 = L2_2.hp
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = A0_2.bossDef
    L1_2 = L1_2.specialtyLoopingParticles
    L2_2 = L0_1
    L2_2 = L2_2.hp
    L1_2 = L1_2[L2_2]
    L2_2 = addEventCall
    L3_2 = "boss1_createLoopingParticles"
    L4_2 = {}
    L5_2 = A0_2.name
    L4_2.name = L5_2
    L4_2.def = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = L1_1
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_1
  L1_2.loopingSound = L2_2
end

L2_1.action = L3_1
boss1_onCreated = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = L1_1
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "tnt_explodes"
  L1_2(L2_2)
end

L2_1.action = L3_1
boss1_onDestroyed = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
    L2_2 = A0_2.def
    L3_2 = L2_2.blockName
    if L3_2 ~= nil then
      L3_2 = {}
      L4_2 = L2_2
      L3_2[1] = L4_2
      L2_2 = L3_2
    end
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = createObject
      L9_2 = gamelua
      L9_2 = L9_2.blockTable
      L10_2 = L7_2.blockName
      L11_2 = nil
      L12_2 = L1_2.x
      L13_2 = L7_2.offset
      L13_2 = L13_2.x
      L12_2 = L12_2 + L13_2
      L13_2 = L1_2.y
      L14_2 = L7_2.offset
      L14_2 = L14_2.y
      L13_2 = L13_2 + L14_2
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      n = L8_2
      L8_2 = gamelua
      L8_2 = L8_2.objects
      L8_2 = L8_2.world
      L9_2 = n
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.loopingParticle
      L8_2.loopingParticle = L9_2
      L9_2 = addUpdateCall
      L10_2 = "followParent"
      L11_2 = {}
      L12_2 = n
      L11_2.name = L12_2
      L12_2 = A0_2.name
      L11_2.parent = L12_2
      L12_2 = L7_2.offset
      L11_2.offset = L12_2
      L9_2(L10_2, L11_2)
      L9_2 = addEventCall
      L10_2 = "spawnSwitchableLoopingParticle"
      L11_2 = {}
      L12_2 = n
      L11_2.name = L12_2
      L12_2 = L1_2.name
      L11_2.parentName = L12_2
      L9_2(L10_2, L11_2)
    end
  end
end

L2_1.action = L3_1
boss1_createLoopingParticles = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
    L1_2 = _G
    L1_2 = L1_2.math
    L1_2 = L1_2.min
    L2_2 = A0_2.timer
    L3_2 = A0_2.bossDef
    L3_2 = L3_2.specialtyMoveTime
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2.bossDef
    L2_2 = L2_2.specialtyMoveTime
    L1_2 = L1_2 / L2_2
    L2_2 = A0_2.initialPos
    L2_2 = L2_2.x
    L3_2 = A0_2.targetPosX
    L4_2 = A0_2.initialPos
    L4_2 = L4_2.x
    L3_2 = L3_2 - L4_2
    L4_2 = gamelua
    L4_2 = L4_2.tweenEaseCubicInOut
    L5_2 = L1_2
    L6_2 = 0
    L7_2 = 1
    L8_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2 = L3_2 * L4_2
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2.initialPos
    L3_2 = L3_2.y
    L4_2 = gamelua
    L4_2 = L4_2.setPosition
    L5_2 = A0_2.name
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = gamelua
    L4_2 = L4_2.setRotation
    L5_2 = A0_2.name
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.firstMoveDone
    if not L4_2 then
      L4_2 = A0_2.timer
      L5_2 = A0_2.bossDef
      L5_2 = L5_2.specialtyFirstMoveTime
      if L4_2 > L5_2 then
        A0_2.firstMoveDone = true
        L4_2 = boss1_move
        L5_2 = A0_2
        L4_2(L5_2)
      end
    end
    L4_2 = A0_2.levelFailedMoveDone
    if not L4_2 then
      L4_2 = gamelua
      L4_2 = L4_2.levelFailed
      if L4_2 then
        L4_2 = L0_1
        L4_2.hp = 999999
        A0_2.levelFailedMoveDone = true
        L4_2 = gamelua
        L5_2 = A0_2.bossDef
        L5_2 = L5_2.specialtyLevelFailedDelay
        L4_2.levelFailedDelay = L5_2
        L4_2 = boss1_move
        L5_2 = A0_2
        L4_2(L5_2)
      end
    end
    L4_2 = A0_2.birdIndex
    L5_2 = gamelua
    L5_2 = L5_2.currentBirdIndex
    if L4_2 < L5_2 then
      L4_2 = gamelua
      L4_2 = L4_2.flyingBird
      if L4_2 then
        L4_2 = gamelua
        L4_2 = L4_2.flyingBird
        L4_2 = L4_2.isReadyForRemoveTimer
        L5_2 = A0_2.bossDef
        L5_2 = L5_2.specialtyMoveTreshold
        if L4_2 < L5_2 then
          goto lbl_103
        end
      end
      L4_2 = A0_2.birdsShot
      L4_2 = L4_2 + 1
      L5_2 = gamelua
      L5_2 = L5_2.birdsShot
      ::lbl_103::
      if L4_2 < L5_2 then
        L4_2 = A0_2.birdIndex
        L4_2 = L4_2 + 1
        A0_2.birdIndex = L4_2
        L4_2 = A0_2.birdsShot
        L4_2 = L4_2 + 1
        A0_2.birdsShot = L4_2
        L4_2 = boss1_move
        L5_2 = A0_2
        L4_2(L5_2)
      end
    end
    L4_2 = A0_2.cameraDelayTimer
    if 0 < L4_2 then
      L4_2 = A0_2.cameraDelayTimer
      L5_2 = A0_2.dt
      L4_2 = L4_2 - L5_2
      A0_2.cameraDelayTimer = L4_2
      L4_2 = gamelua
      L5_2 = gamelua
      L5_2 = L5_2.g_defaultCameraResetTime
      L4_2.cameraResetTimer = L5_2
    end
  end
end

L2_1.action = L3_1
boss1_update = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.bossMoveAmount
  L1_2 = L1_2 + 1
  A0_2.bossMoveAmount = L1_2
  L1_2 = print
  L2_2 = "Boss 1 moving, ("
  L3_2 = A0_2.bossMoveAmount
  L4_2 = ")"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  A0_2.timer = nil
  L1_2 = A0_2.initialPos
  L2_2 = A0_2.bossObj
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L1_2 = A0_2.startPos
  L1_2 = L1_2.x
  L2_2 = A0_2.bossMoveAmount
  L3_2 = A0_2.bossDef
  L3_2 = L3_2.specialtyMoveDistance
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 - L2_2
  A0_2.targetPosX = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.addCameraShake
  L2_2 = gamelua
  L2_2 = L2_2.cameraShakeModeSine
  L3_2 = A0_2.bossDef
  L3_2 = L3_2.specialtyMoveShake
  L3_2 = L3_2.velocity
  L4_2 = A0_2.bossDef
  L4_2 = L4_2.specialtyMoveShake
  L4_2 = L4_2.distortion
  L5_2 = A0_2.bossDef
  L5_2 = L5_2.specialtyMoveTime
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.bossDef
  L1_2 = L1_2.specialtyCameraMoveDelay
  A0_2.cameraDelayTimer = L1_2
end

boss1_move = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.noDamageOnBosses
  if L1_2 then
    return
  end
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.collidedList
    L2_2 = A0_2.other
    L1_2 = L1_2[L2_2]
    if not L1_2 then
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
      L3_2 = L0_1
      L4_2 = L0_1
      L4_2 = L4_2.hp
      L4_2 = L4_2 - 1
      L3_2.hp = L4_2
      L3_2 = print
      L4_2 = "Boss1 took hit, hp: "
      L5_2 = L0_1
      L5_2 = L5_2.hp
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      L3_2 = L1_2.currentAnimation
      L4_2 = gamelua
      L4_2 = L4_2.setAnimation
      L5_2 = A0_2.name
      L6_2 = L3_2 + 1
      L4_2(L5_2, L6_2)
      L4_2 = L0_1
      L4_2 = L4_2.hp
      if L4_2 == 0 then
        L4_2 = _G
        L4_2 = L4_2.ipairs
        L5_2 = L2_2.specialtyDestroyParticles
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        for L7_2, L8_2 in L4_2, L5_2, L6_2 do
          L9_2 = gamelua
          L9_2 = L9_2.putParticles
          L10_2 = {}
          L11_2 = L1_2.name
          L10_2.objectName = L11_2
          L11_2 = L8_2.particles
          L10_2.particles = L11_2
          L11_2 = L8_2.amount
          L10_2.amount = L11_2
          L9_2(L10_2)
        end
        L4_2 = destroyObject
        L5_2 = A0_2.name
        L4_2(L5_2)
      end
      L4_2 = L2_2.specialtyLoopingParticles
      L5_2 = L0_1
      L5_2 = L5_2.hp
      L4_2 = L4_2[L5_2]
      if L4_2 then
        L4_2 = L2_2.specialtyLoopingParticles
        L5_2 = L0_1
        L5_2 = L5_2.hp
        L4_2 = L4_2[L5_2]
        L5_2 = addEventCall
        L6_2 = "boss1_createLoopingParticles"
        L7_2 = {}
        L8_2 = A0_2.name
        L7_2.name = L8_2
        L7_2.def = L4_2
        L5_2(L6_2, L7_2)
      end
      L4_2 = A0_2.other
      if L4_2 then
        L4_2 = L0_1
        L4_2 = L4_2.collidedList
        L5_2 = A0_2.other
        L4_2[L5_2] = true
      end
    end
  end
end

L2_1.action = L3_1
boss1_takeDamage = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L5_2 = L3_2.definition
  L4_2 = L4_2[L5_2]
  L5_2 = L2_2.specialtyMaterialsThatDamage
  L6_2 = L4_2.material
  L5_2 = L5_2[L6_2]
  if L5_2 then
    L5_2 = addEventCall
    L6_2 = "boss1_takeDamage"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = L2_2.specialtyMaterialsDestroyedOnContact
  L6_2 = L4_2.material
  L5_2 = L5_2[L6_2]
  if L5_2 then
    L5_2 = addEventCall
    L6_2 = "destroyEverything"
    L7_2 = {}
    L8_2 = L3_2.name
    L7_2.other = L8_2
    L5_2(L6_2, L7_2)
  end
end

L2_1.action = L3_1
boss1_onCollisionEnter = L2_1
