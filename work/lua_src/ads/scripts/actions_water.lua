local L0_1, L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.print
  print = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.addEventCall
  addEventCall = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getVelocity
  getVelocity = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.getAngularVelocity
  getAngularVelocity = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.checkStillInWorld
  checkStillInWorld = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.putParticles
  putParticles = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.createObject
  createObject = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.destroyObject
  destroyObject = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.playAudio
  playAudio = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.vNormalize
  vNormalize = L0_2
end

Initialize = L0_1
L0_1 = 0.025
waterBubbleInterval = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
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
      L4_2 = L4_2.blockTable
      L4_2 = L4_2.blocks
      L5_2 = L3_2.definition
      L4_2 = L4_2[L5_2]
      L5_2 = L4_2.actionWhenEnteringWater
      if L5_2 then
        L5_2 = _G
        L5_2 = L5_2.type
        L6_2 = L4_2.actionWhenEnteringWater
        L5_2 = L5_2(L6_2)
        if L5_2 == "table" then
          L5_2 = _G
          L5_2 = L5_2.ipairs
          L6_2 = L4_2.actionWhenEnteringWater
          L5_2, L6_2, L7_2 = L5_2(L6_2)
          for L8_2, L9_2 in L5_2, L6_2, L7_2 do
            L10_2 = addEventCall
            L11_2 = L9_2
            L12_2 = {}
            L13_2 = L3_2.name
            L12_2.name = L13_2
            L10_2(L11_2, L12_2)
          end
        else
          L5_2 = addEventCall
          L6_2 = L4_2.actionWhenEnteringWater
          L7_2 = {}
          L8_2 = L3_2.name
          L7_2.name = L8_2
          L5_2(L6_2, L7_2)
        end
      end
      L5_2 = L3_2.insideWater
      if not L5_2 then
        L5_2 = waterAddSplashParticles
        L6_2 = L3_2
        L7_2 = L1_2
        L5_2(L6_2, L7_2)
        L5_2 = waterAddSplashSound
        L6_2 = L3_2
        L7_2 = L1_2
        L8_2 = true
        L5_2(L6_2, L7_2, L8_2)
      end
      L3_2.insideWater = true
      L5_2 = addEventCall
      L6_2 = "waterAddBubbles"
      L7_2 = A0_2
      L8_2 = waterBubbleInterval
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L3_2.levelGoal
      if L5_2 then
        L5_2 = L2_2.isBubble
        if L5_2 then
          L3_2.insideBubble = false
        end
      end
      L5_2 = L3_2.isBurning
      if L5_2 then
        L5_2 = L3_2.burningParticles
        if L5_2 then
          L5_2 = putParticles
          L6_2 = {}
          L7_2 = L3_2.name
          L6_2.objectName = L7_2
          L6_2.particles = "smokeBuff"
          L6_2.amount = 1
          L5_2(L6_2)
        end
        L3_2.burningParticles = nil
      end
    end
  end
end

L0_1.action = L1_1
waterOnEnter = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
      L5_2 = L3_2.controllable
      if L5_2 then
        L5_2 = L2_2.isBubble
        if not L5_2 then
          L5_2 = L3_2.numEnteredWater
          if not L5_2 then
            L5_2 = 0
          end
          L5_2 = L5_2 + 1
          L3_2.numEnteredWater = L5_2
          L5_2 = L3_2.numEnteredWater
          if L5_2 == 3 then
            L5_2 = gamelua
            L5_2 = L5_2.native_setTimeSinceCollision
            L6_2 = L3_2.name
            L7_2 = 0
            L5_2(L6_2, L7_2)
            L5_2 = gamelua
            L5_2 = L5_2.birdCollision
            L6_2 = L3_2.name
            L7_2 = L1_2.name
            L8_2 = 0
            L9_2 = 0
            L10_2 = L3_2.x
            L11_2 = L3_2.y
            L12_2 = 0
            L13_2 = -1
            L14_2 = true
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          end
        end
      end
      L5_2 = L3_2.insideWater
      if L5_2 then
        L3_2.insideWater = false
        L5_2 = waterAddSplashParticles
        L6_2 = L3_2
        L7_2 = L1_2
        L5_2(L6_2, L7_2)
        L5_2 = waterAddSplashSound
        L6_2 = L3_2
        L7_2 = L1_2
        L8_2 = false
        L5_2(L6_2, L7_2, L8_2)
      end
      L5_2 = L3_2.levelGoal
      if L5_2 then
        L5_2 = L2_2.isBubble
        if L5_2 then
          L3_2.insideBubble = true
        end
      end
    end
  end
end

L0_1.action = L1_1
waterOnExit = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.other
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.objects
    L1_2 = L1_2.world
    L2_2 = A0_2.other
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2.insideWater
    if L2_2 then
      L2_2 = _G
      L2_2 = L2_2.math
      L2_2 = L2_2.min
      L3_2 = 3
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.floor
      L5_2 = getVelocity
      L6_2 = A0_2.other
      L5_2 = L5_2(L6_2)
      L6_2 = getAngularVelocity
      L7_2 = A0_2.other
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2 * 0.2
      L5_2 = L5_2 + L6_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      if 0 < L2_2 then
        L3_2 = putParticles
        L4_2 = {}
        L5_2 = A0_2.other
        L4_2.objectName = L5_2
        L4_2.particles = "waterTrailBubbles"
        L4_2.amount = L2_2
        L3_2(L4_2)
      end
      L3_2 = addEventCall
      L4_2 = "waterAddBubbles"
      L5_2 = A0_2
      L6_2 = waterBubbleInterval
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end

L0_1.action = L1_1
waterAddBubbles = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.min
  L3_2 = getVelocity
  L4_2 = A0_2.name
  L3_2 = L3_2(L4_2)
  L4_2 = 5
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = L2_2 * 2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * 5
  if 10 <= L3_2 then
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.atan2
    L5_2 = A0_2.y
    L6_2 = A1_2.y
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.x
    L7_2 = A1_2.x
    L6_2 = L6_2 - L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2 * 180
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.pi
    L4_2 = L4_2 / L5_2
    L5_2 = vNormalize
    L6_2 = A1_2.x
    L7_2 = A0_2.x
    L6_2 = L6_2 - L7_2
    L7_2 = A1_2.y
    L8_2 = A0_2.y
    L7_2 = L7_2 - L8_2
    L5_2, L6_2 = L5_2(L6_2, L7_2)
    L7_2 = putParticles
    L8_2 = {}
    L9_2 = A0_2.name
    L8_2.objectName = L9_2
    L8_2.particles = "waterSplash"
    L8_2.amount = L3_2
    L9_2 = L2_2 * 20
    L8_2.maxVel = L9_2
    L9_2 = L2_2 * 0.1
    L8_2.lifeTime = L9_2
    L9_2 = L4_2 - 40
    L8_2.minAngleEmitter = L9_2
    L9_2 = L4_2 + 40
    L8_2.maxAngleEmitter = L9_2
    L9_2 = L5_2 * L2_2
    L9_2 = L9_2 * 25
    L8_2.gravityX = L9_2
    L9_2 = L6_2 * L2_2
    L9_2 = L9_2 * 25
    L8_2.gravityY = L9_2
    L7_2(L8_2)
  end
end

waterAddSplashParticles = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ""
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.min
  L5_2 = 1
  L6_2 = getVelocity
  L7_2 = A0_2.name
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * 0.5
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 < 0.2 then
    return
  end
  if A2_2 then
    L3_2 = "misc_water_enter"
  else
    L3_2 = "misc_water_exit"
  end
  L5_2 = playAudio
  L6_2 = L3_2
  L7_2 = L4_2 * L4_2
  L5_2(L6_2, L7_2)
end

waterAddSplashSound = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.floor
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = A2_2 * 0.3
  L5_2 = print
  L6_2 = "Water explosion, particle amount "
  L7_2 = L3_2
  L8_2 = ", lifeTime "
  L9_2 = L4_2
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2(L6_2)
  L5_2 = putParticles
  L6_2 = {}
  L7_2 = A0_2.x
  L6_2.x = L7_2
  L7_2 = A0_2.y
  L6_2.y = L7_2
  L6_2.particles = "waterExplosion"
  L6_2.amount = L3_2
  L6_2.lifeTime = L4_2
  L5_2(L6_2)
end

waterAddExplosion = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.oldName
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2.destroyed
    if not L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.objects
      L1_2 = L1_2.world
      L2_2 = A0_2.oldName
      L1_2 = L1_2[L2_2]
      L1_2.onDestroyed = nil
      L2_2 = destroyObject
      L3_2 = A0_2.oldName
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = gamelua
      L2_2 = L2_2.getLinearVelocity
      L3_2 = L1_2.name
      L2_2, L3_2 = L2_2(L3_2)
      L4_2 = gamelua
      L4_2 = L4_2.getAngle
      L5_2 = L1_2.name
      L4_2 = L4_2(L5_2)
      L5_2 = L1_2.accSpriteAngle
      L6_2 = addEventCall
      L7_2 = "swapObjects"
      L8_2 = {}
      L9_2 = A0_2.newDefinition
      L8_2.newDefinition = L9_2
      L8_2.destroyed = true
      L9_2 = L1_2.x
      L8_2.x = L9_2
      L9_2 = L1_2.y
      L8_2.y = L9_2
      L8_2.angle = L4_2
      L8_2.animAngle = L5_2
      L8_2.xVel = L2_2
      L8_2.yVel = L3_2
      L9_2 = 0
      L6_2(L7_2, L8_2, L9_2)
  end
  else
    L1_2 = A0_2.destroyed
    if L1_2 then
      L1_2 = createObject
      L2_2 = gamelua
      L2_2 = L2_2.blockTable
      L3_2 = A0_2.newDefinition
      L4_2 = nil
      L5_2 = A0_2.x
      L6_2 = A0_2.xVel
      L7_2 = A0_2.dt
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 + L6_2
      L6_2 = A0_2.y
      L7_2 = A0_2.yVel
      L8_2 = A0_2.dt
      L7_2 = L7_2 * L8_2
      L6_2 = L6_2 + L7_2
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      L2_2 = gamelua
      L2_2 = L2_2.setRotation
      L3_2 = L1_2
      L4_2 = A0_2.angle
      L2_2(L3_2, L4_2)
      L2_2 = gamelua
      L2_2 = L2_2.setVelocity
      L3_2 = L1_2
      L4_2 = A0_2.xVel
      L5_2 = A0_2.yVel
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.world
      L2_2 = L2_2[L1_2]
      L3_2 = A0_2.animAngle
      L2_2.accSpriteAngle = L3_2
      L2_2 = gamelua
      L2_2 = L2_2.setSpriteRotation
      L3_2 = L1_2
      L4_2 = A0_2.animAngle
      L2_2(L3_2, L4_2)
    end
  end
end

L0_1.action = L1_1
swapObjects = L0_1
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
    L2_2 = putParticles
    L3_2 = {}
    L4_2 = L1_2.x
    L5_2 = L1_2.width
    L5_2 = L5_2 * 0.5
    L4_2 = L4_2 - L5_2
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.random
    L5_2 = L5_2()
    L6_2 = L1_2.width
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2 + L5_2
    L3_2.x = L4_2
    L4_2 = L1_2.y
    L5_2 = L1_2.height
    L5_2 = L5_2 * 0.5
    L4_2 = L4_2 - L5_2
    L3_2.y = L4_2
    L3_2.particles = "waterSurface"
    L3_2.amount = 1
    L2_2(L3_2)
    L2_2 = addEventCall
    L3_2 = "spawnWaterSurface"
    L4_2 = A0_2
    L5_2 = 0.01
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.action = L1_1
spawnWaterSurface = L0_1
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
    L2_2 = L2_2.getJointedObjects
    L3_2 = gamelua
    L3_2 = L3_2.objects
    L3_2 = L3_2.joints
    L4_2 = L1_2.name
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = {}
    L1_2.jointedLevelGoals = L3_2
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = gamelua
      L8_2 = L8_2.objects
      L8_2 = L8_2.world
      L9_2 = L7_2.name
      L8_2 = L8_2[L9_2]
      L9_2 = L8_2.levelGoal
      if L9_2 then
        L8_2.insideSmallBubble = true
        L9_2 = _G
        L9_2 = L9_2.table
        L9_2 = L9_2.insert
        L10_2 = L1_2.jointedLevelGoals
        L11_2 = L7_2.name
        L9_2(L10_2, L11_2)
      end
    end
  end
end

L0_1.action = L1_1
setInsideBubble = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.obj
  L2_2 = L2_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = _G
    L1_2 = L1_2.ipairs
    L2_2 = A0_2.obj
    L2_2 = L2_2.jointedLevelGoals
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
        L6_2.insideSmallBubble = false
      end
    end
  end
end

L0_1.action = L1_1
removeInsideBubble = L0_1
