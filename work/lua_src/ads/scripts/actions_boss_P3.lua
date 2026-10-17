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
  L0_2 = gamelua
  L0_2 = L0_2.putParticles
  putParticles = L0_2
end

Initialize = L0_1
L0_1 = nil
L1_1 = nil
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2.name
    L1_1 = L1_2
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
    L1_2.makeExplosionWhenDestroying = true
    L3_2 = createObject
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L5_2 = L2_2.specialtySword
    L5_2 = L5_2.block
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
    L7_2 = L2_2.specialtySword
    L7_2 = L7_2.offset
    L6_2.offset = L7_2
    L4_2(L5_2, L6_2)
    L4_2 = gamelua
    L4_2 = L4_2.setRotation
    L5_2 = L3_2
    L6_2 = L2_2.specialtySword
    L6_2 = L6_2.startAngle
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.pi
    L6_2 = L6_2 * L7_2
    L6_2 = L6_2 / 180
    L4_2(L5_2, L6_2)
    L1_2.swordName = L3_2
    L1_2.toBeDestroyedObjName = L3_2
    L4_2 = createObject
    L5_2 = gamelua
    L5_2 = L5_2.blockTable
    L6_2 = L2_2.specialtySwordSensor
    L6_2 = L6_2.block
    L7_2 = nil
    L8_2 = L1_2.x
    L9_2 = L1_2.y
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = L4_2
    L4_2 = addUpdateCall
    L5_2 = "followParent"
    L6_2 = {}
    L6_2.name = L3_2
    L7_2 = A0_2.name
    L6_2.parent = L7_2
    L7_2 = L2_2.specialtySwordSensor
    L7_2 = L7_2.offset
    L6_2.offset = L7_2
    L4_2(L5_2, L6_2)
    L4_2 = gamelua
    L4_2 = L4_2.objects
    L4_2 = L4_2.world
    L4_2 = L4_2[L3_2]
    L5_2 = A0_2.name
    L4_2.parentName = L5_2
    L4_2 = addUpdateCall
    L5_2 = "bossQuigonUpdate"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L2_1.action = L3_1
bossQuigonOnCreated = L2_1
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
    L1_2 = A0_2.name
    L0_1 = L1_2
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
    obiwan = L1_2
    L3_2 = L2_2.specialtyHitPoints
    L1_2.hitPoints = L3_2
    L3_2 = createObject
    L4_2 = gamelua
    L4_2 = L4_2.blockTable
    L5_2 = L2_2.specialtyForceSensor
    L5_2 = L5_2.block
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
    L6_2 = L2_2.specialtyForceSensor
    L6_2 = L6_2.offset
    L5_2.offset = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = n
    L1_2.forceSensorName = L3_2
    L3_2 = n
    L1_2.toBeDestroyedObjName = L3_2
    L1_2.pushActive = true
    L3_2 = addUpdateCall
    L4_2 = "bossObiwanUpdate"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L2_1.action = L3_1
bossObiwanOnCreated = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
    L1_2.disableAnimations = false
    L3_2 = checkStillInWorld
    L4_2 = L1_2.swordName
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.abs
      L4_2 = gamelua
      L4_2 = L4_2.getAngularVelocity
      L5_2 = L1_2.swordName
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L4_2 = L2_2.specialtySwordSwingThreshold
      if L3_2 < L4_2 then
        L3_2 = A0_2.currentAnimation
        if L3_2 ~= 1 then
          A0_2.currentAnimation = 1
          L3_2 = gamelua
          L3_2 = L3_2.setAnimation
          L4_2 = L1_2.name
          L5_2 = 1
          L3_2(L4_2, L5_2)
          L3_2 = gamelua
          L3_2 = L3_2.setAngularVelocity
          L4_2 = L1_2.swordName
          L5_2 = 0
          L3_2(L4_2, L5_2)
        end
        L3_2 = gamelua
        L3_2 = L3_2.getAngle
        L4_2 = L1_2.swordName
        L3_2 = L3_2(L4_2)
        L4_2 = L2_2.specialtySword
        L4_2 = L4_2.startAngle
        L5_2 = _G
        L5_2 = L5_2.math
        L5_2 = L5_2.pi
        L4_2 = L4_2 * L5_2
        L4_2 = L4_2 / 180
        L5_2 = gamelua
        L5_2 = L5_2.vec2AngleBetween
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.cos
        L7_2 = L3_2
        L6_2 = L6_2(L7_2)
        L7_2 = _G
        L7_2 = L7_2.math
        L7_2 = L7_2.sin
        L8_2 = L3_2
        L7_2 = L7_2(L8_2)
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.cos
        L9_2 = L4_2
        L8_2 = L8_2(L9_2)
        L9_2 = _G
        L9_2 = L9_2.math
        L9_2 = L9_2.sin
        L10_2 = L4_2
        L9_2, L10_2 = L9_2(L10_2)
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.min
        L7_2 = 1
        L8_2 = L2_2.specialtySword
        L8_2 = L8_2.returningSpeed
        L9_2 = A0_2.dt
        L8_2 = L8_2 * L9_2
        L6_2 = L6_2(L7_2, L8_2)
        L6_2 = L5_2 * L6_2
        L6_2 = L3_2 + L6_2
        L7_2 = addEventCall
        L8_2 = "setRotationAction"
        L9_2 = {}
        L10_2 = L1_2.swordName
        L9_2.name = L10_2
        L9_2.angle = L6_2
        L7_2(L8_2, L9_2)
    end
    else
      L3_2 = A0_2.currentAnimation
      if L3_2 ~= 2 then
        A0_2.currentAnimation = 2
        L3_2 = gamelua
        L3_2 = L3_2.setAnimation
        L4_2 = L1_2.name
        L5_2 = 2
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L2_1.action = L3_1
bossQuigonUpdate = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
    L3_2 = L1_2.pushActive
    if not L3_2 then
      L3_2 = checkStillInWorld
      L4_2 = L1_2.forceSensorName
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.setActive
        L4_2 = L1_2.forceSensorName
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.timer
        if not L3_2 then
          L3_2 = A0_2.dt
          L3_2 = -L3_2
        end
        L4_2 = A0_2.dt
        L3_2 = L3_2 + L4_2
        A0_2.timer = L3_2
        L3_2 = A0_2.timer
        L4_2 = L2_2.specialtyPushDelayTime
        if L3_2 > L4_2 then
          A0_2.timer = nil
          L1_2.pushActive = true
          L3_2 = gamelua
          L3_2 = L3_2.setActive
          L4_2 = L1_2.forceSensorName
          L5_2 = true
          L3_2(L4_2, L5_2)
        end
      end
    end
    L3_2 = L1_2.pushActive
    if L3_2 then
      L3_2 = L1_2.hitPoints
      if 0 < L3_2 then
        L3_2 = A0_2.currentAnimation
        if L3_2 ~= 1 then
          A0_2.currentAnimation = 1
          L3_2 = gamelua
          L3_2 = L3_2.setAnimation
          L4_2 = L1_2.name
          L5_2 = 1
          L3_2(L4_2, L5_2)
        end
    end
    else
      L3_2 = A0_2.currentAnimation
      if L3_2 ~= 2 then
        A0_2.currentAnimation = 2
        L3_2 = gamelua
        L3_2 = L3_2.setAnimation
        L4_2 = L1_2.name
        L5_2 = 2
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L2_1.action = L3_1
bossObiwanUpdate = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
      if L4_2 then
        L4_2 = L3_2.accelerationDirection
        if L4_2 then
          return
        end
      end
      L4_2 = L3_2.controllable
      if L4_2 then
        L4_2 = L3_2.x
        L5_2 = L1_2.x
        L4_2 = L4_2 - L5_2
        L5_2 = L3_2.y
        L6_2 = L1_2.y
        L5_2 = L5_2 - L6_2
        L6_2 = gamelua
        L6_2 = L6_2.applyImpulse
        L7_2 = A0_2.other
        L8_2 = L2_2.specialtyPush
        L8_2 = L8_2.impulse
        L8_2 = L4_2 * L8_2
        L9_2 = L2_2.specialtyPush
        L9_2 = L9_2.impulse
        L9_2 = L5_2 * L9_2
        L10_2 = L3_2.x
        L11_2 = L3_2.y
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
    end
  end
end

L2_1.action = L3_1
bossQuigonPush = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = checkStillInWorld
    L2_2 = A0_2.other
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = checkStillInWorld
      L2_2 = L0_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = gamelua
        L1_2 = L1_2.objects
        L1_2 = L1_2.world
        L2_2 = L0_1
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
        L5_2 = gamelua
        L5_2 = L5_2.objects
        L5_2 = L5_2.world
        L6_2 = A0_2.other
        L5_2 = L5_2[L6_2]
        L6_2 = gamelua
        L6_2 = L6_2.blockTable
        L6_2 = L6_2.blocks
        L7_2 = L5_2.definition
        L6_2 = L6_2[L7_2]
        L7_2 = L1_2.pushActive
        if L7_2 then
          L7_2 = A0_2.other
          L8_2 = L0_1
          if L7_2 ~= L8_2 then
            L7_2 = L4_2.specialtyIgnoreMaterials
            L8_2 = L5_2.material
            L7_2 = L7_2[L8_2]
            if not L7_2 then
              L1_2.pushActive = false
              L7_2 = L5_2.x
              L8_2 = L3_2.x
              L7_2 = L7_2 - L8_2
              L8_2 = L5_2.y
              L9_2 = L3_2.y
              L8_2 = L8_2 - L9_2
              L9_2 = _G
              L9_2 = L9_2.math
              L9_2 = L9_2.atan2
              L10_2 = L8_2
              L11_2 = L7_2
              L9_2 = L9_2(L10_2, L11_2)
              L10_2 = gamelua
              L10_2 = L10_2.applyImpulse
              L11_2 = A0_2.other
              L12_2 = L4_2.specialtyPush
              L12_2 = L12_2.impulse
              L12_2 = L7_2 * L12_2
              L13_2 = L4_2.specialtyPush
              L13_2 = L13_2.impulse
              L13_2 = L8_2 * L13_2
              L14_2 = L5_2.x
              L15_2 = _G
              L15_2 = L15_2.math
              L15_2 = L15_2.random
              L15_2 = L15_2()
              L16_2 = L4_2.specialtyPush
              L16_2 = L16_2.spinAmount
              L15_2 = L15_2 * L16_2
              L14_2 = L14_2 + L15_2
              L15_2 = L5_2.y
              L16_2 = _G
              L16_2 = L16_2.math
              L16_2 = L16_2.random
              L16_2 = L16_2()
              L17_2 = L4_2.specialtyPush
              L17_2 = L17_2.spinAmount
              L16_2 = L16_2 * L17_2
              L15_2 = L15_2 + L16_2
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = L5_2.accelerationDirection
              if L10_2 then
                L5_2.accelerationDirection = L9_2
              end
              L10_2 = gamelua
              L10_2 = L10_2.isObjectAffectedByForce
              L11_2 = L5_2
              L12_2 = gamelua
              L12_2 = L12_2.blockTable
              L12_2 = L12_2.materials
              L13_2 = L6_2.material
              L12_2 = L12_2[L13_2]
              L10_2 = L10_2(L11_2, L12_2)
              if L10_2 then
                L10_2 = L4_2.forceEffectDuration
                L5_2.isAffectedByForceTimer = L10_2
                L10_2 = L4_2.forceEffectColor
                L5_2.forceEffectColor = L10_2
              end
              L10_2 = putParticles
              L11_2 = {}
              L12_2 = L3_2.x
              L11_2.x = L12_2
              L12_2 = L3_2.y
              L11_2.y = L12_2
              L11_2.angle = L9_2
              L12_2 = L2_2.specialtyPushParticles
              L11_2.particles = L12_2
              L10_2(L11_2)
              L10_2 = addEventCall
              L11_2 = "bossP3Hit"
              L12_2 = {}
              L13_2 = L1_2.name
              L12_2.name = L13_2
              L10_2(L11_2, L12_2)
              L10_2 = L4_2.specialtyDestroyMaterials
              L11_2 = L5_2.material
              L10_2 = L10_2[L11_2]
              if L10_2 then
                L10_2 = addEventCall
                L11_2 = "ragdollAfterburnerOnCollisionEnter"
                L12_2 = {}
                L13_2 = L5_2.name
                L12_2.name = L13_2
                L10_2(L11_2, L12_2)
              end
            end
          end
        end
      end
    end
  end
end

L2_1.action = L3_1
bossObiwanPush = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
    L1_2.pushActive = false
    L3_2 = putParticles
    L4_2 = {}
    L5_2 = L1_2.x
    L4_2.x = L5_2
    L5_2 = L1_2.y
    L4_2.y = L5_2
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.pi
    L5_2 = L5_2 * 1.15
    L4_2.angle = L5_2
    L5_2 = L2_2.specialtyPushParticles
    L4_2.particles = L5_2
    L3_2(L4_2)
    L3_2 = addEventCall
    L4_2 = "bossP3Hit"
    L5_2 = {}
    L6_2 = A0_2.name
    L5_2.name = L6_2
    L3_2(L4_2, L5_2)
  end
end

L2_1.action = L3_1
bossObiwanActivate = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
      L2_2 = L2_2.objects
      L2_2 = L2_2.world
      L3_2 = A0_2.other
      L2_2 = L2_2[L3_2]
      L3_2 = checkStillInWorld
      L4_2 = L1_2.parentName
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.objects
        L3_2 = L3_2.world
        L4_2 = L1_2.parentName
        L3_2 = L3_2[L4_2]
        L4_2 = gamelua
        L4_2 = L4_2.blockTable
        L4_2 = L4_2.blocks
        L5_2 = L3_2.definition
        L4_2 = L4_2[L5_2]
        L5_2 = checkStillInWorld
        L6_2 = L3_2.swordName
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = A0_2.other
          L6_2 = L3_2.swordName
          if L5_2 ~= L6_2 then
            L5_2 = A0_2.other
            L6_2 = L3_2.name
            if L5_2 ~= L6_2 then
              L5_2 = L4_2.specialtyIgnoreMaterials
              L6_2 = L2_2.material
              L5_2 = L5_2[L6_2]
              if not L5_2 then
                L5_2 = _G
                L5_2 = L5_2.math
                L5_2 = L5_2.abs
                L6_2 = gamelua
                L6_2 = L6_2.getAngularVelocity
                L7_2 = L3_2.swordName
                L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
                L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                L6_2 = L4_2.specialtySwordSwingThreshold
                if L5_2 < L6_2 then
                  L5_2 = gamelua
                  L5_2 = L5_2.getAngle
                  L6_2 = L3_2.swordName
                  L5_2 = L5_2(L6_2)
                  L6_2 = _G
                  L6_2 = L6_2.math
                  L6_2 = L6_2.cos
                  L7_2 = L5_2
                  L6_2 = L6_2(L7_2)
                  L7_2 = _G
                  L7_2 = L7_2.math
                  L7_2 = L7_2.sin
                  L8_2 = L5_2
                  L7_2 = L7_2(L8_2)
                  L8_2 = gamelua
                  L8_2 = L8_2.vec2AngleBetween
                  L9_2 = L6_2
                  L10_2 = L7_2
                  L11_2 = L2_2.x
                  L12_2 = L3_2.x
                  L11_2 = L11_2 - L12_2
                  L12_2 = L2_2.y
                  L13_2 = L3_2.y
                  L12_2 = L12_2 - L13_2
                  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
                  if L8_2 < 0 then
                    L9_2 = -1
                    if L9_2 then
                      goto lbl_96
                    end
                  end
                  L9_2 = 1
                  ::lbl_96::
                  L10_2 = gamelua
                  L10_2 = L10_2.setAngularVelocity
                  L11_2 = L3_2.swordName
                  L12_2 = L4_2.specialtySword
                  L12_2 = L12_2.velocity
                  L12_2 = L12_2 * L9_2
                  L10_2(L11_2, L12_2)
                  L10_2 = addEventCall
                  L11_2 = "bossP3Hit"
                  L12_2 = {}
                  L13_2 = L1_2.parentName
                  L12_2.name = L13_2
                  L13_2 = 0.15
                  L10_2(L11_2, L12_2, L13_2)
                end
              end
            end
          end
        end
      end
    end
  end
end

L2_1.action = L3_1
bossQuigonSwordSensorEntered = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
    L3_2 = L3_2.setAngularVelocity
    L4_2 = L1_2.swordName
    L5_2 = L2_2.specialtySword
    L5_2 = L5_2.velocity
    L5_2 = -L5_2
    L3_2(L4_2, L5_2)
    L3_2 = addEventCall
    L4_2 = "bossP3Hit"
    L5_2 = {}
    L6_2 = A0_2.name
    L5_2.name = L6_2
    L6_2 = 0.15
    L3_2(L4_2, L5_2, L6_2)
  end
end

L2_1.action = L3_1
bossQuigonActivate = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
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
    L3_2 = L1_2.hitPoints
    if not L3_2 then
      L3_2 = L2_2.specialtyHitPoints
    end
    L3_2 = L3_2 - 1
    L1_2.hitPoints = L3_2
    L3_2 = L1_2.hitPoints
    if 0 <= L3_2 then
      L3_2 = L1_2.hitPoints
      if L3_2 == 0 then
        L1_2.defence = 0
        L3_2 = L1_2.makeExplosionWhenDestroying
        if L3_2 then
          L3_2 = addEventCall
          L4_2 = "actionMakeExplosion"
          L5_2 = {}
          L6_2 = L1_2.toBeDestroyedObjName
          L5_2.name = L6_2
          L3_2(L4_2, L5_2)
        end
        L3_2 = addEventCall
        L4_2 = "destroy"
        L5_2 = {}
        L6_2 = L1_2.toBeDestroyedObjName
        L5_2.name = L6_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end

L2_1.action = L3_1
bossP3Hit = L2_1
