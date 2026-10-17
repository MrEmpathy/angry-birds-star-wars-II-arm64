local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = "TATOOINE_LIGHT_PODRACER_TEST"
g_definitionPodracerSebulba = L0_1
L0_1 = "TATOOINE_LIGHT_PODRACER_SEBULBA_2"
g_objSebulbaName = L0_1
L0_1 = 20
g_podracerAngleCorrectionSpeed = L0_1
L0_1 = 7
g_conveyorBaseSpawnTime = L0_1
L0_1 = 30
g_conveyorRandomAddedTime = L0_1
L0_1 = -0.5
g_conveyorSpeed = L0_1
L0_1 = -100
g_conveyorDestroyXLocation = L0_1
L0_1 = 0.9
g_velocityInertia = L0_1
L0_1 = 0
L1_1 = 0
g_oldVelocityY = L1_1
g_oldVelocityX = L0_1
L0_1 = {}
L1_1 = {}
L1_1.conveyorBaseAngle = 0
L1_1.conveyorYRandom = 0
L2_1 = {}
L3_1 = {}
L3_1.definition = "TATOOINE_LIGHT_PODRACER_OVERTAKEN_ENGINE"
L3_1.x = 1.5
L3_1.y = 0.035
L3_1.angle = 0
L2_1[1] = L3_1
L1_1.conveyorExtraStatic = L2_1
L2_1 = {}
L3_1 = {}
L3_1.definition = "BLOCK_ROCK_2X2_1"
L3_1.x = -0.2
L3_1.y = -0.185
L3_1.angle = 0
L4_1 = {}
L4_1.definition = "BLOCK_WOOD_2X2_1"
L4_1.x = 0
L4_1.y = -0.185
L4_1.angle = 0
L5_1 = {}
L5_1.definition = "BLOCK_WOOD_2X2_1"
L5_1.x = 0.2
L5_1.y = -0.185
L5_1.angle = 0
L6_1 = {}
L6_1.definition = "BLOCK_WOOD_2X2_1"
L6_1.x = -0.1
L6_1.y = -0.385
L6_1.angle = 0
L7_1 = {}
L7_1.definition = "BLOCK_ROCK_2X2_1"
L7_1.x = 0.1
L7_1.y = -0.385
L7_1.angle = 0
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L1_1.conveyorRockOffset = L2_1
L0_1[1] = L1_1
g_conveyorObjects = L0_1

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
end

Initialize = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = addEventCall
  L2_2 = "podracerAI"
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1
podracerBossCreated = L0_1
L0_1 = {}
L0_1.timeToChangeTarget = 4
L0_1.targetReachedDistance = 0.1
L0_1.evasionRadius = 2
L0_1.targetWeight = 0.6666667
L0_1.evasionWeight = 6.6666665
movementData = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = print
  L2_2 = "----------- Initializing Podracer boss fight -------\n"
  L1_2(L2_2)
  L1_2 = {}
  g_podracerTravelTargets = L1_2
  L1_2 = {}
  g_livingPodracers = L1_2
  L1_2 = {}
  g_livingPlatforms = L1_2
  L1_2 = {}
  g_availableMynocks = L1_2
  L1_2 = {}
  g_spawners = L1_2
  L1_2 = 0
  g_conveyorTimer = L1_2
  L1_2 = 0
  g_conveyorsSpawned = L1_2
  L1_2 = 0
  g_spawnerCount = L1_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.definition
    if L6_2 == "BOSS_PODRACER_TARGET_OBJECT_1" then
      L6_2 = _G
      L6_2 = L6_2.table
      L6_2 = L6_2.insert
      L7_2 = g_podracerTravelTargets
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L5_2.resistsExplosion = true
      L6_2 = gamelua
      L6_2 = L6_2.setAsSensor
      L7_2 = L5_2.name
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = print
      L7_2 = "----- inserting podracer target ------\n"
      L6_2(L7_2)
    end
    L6_2 = L5_2.definition
    if L6_2 == "BOSS_PODRACER_TARGET_SPAWN" then
      L6_2 = print
      L7_2 = "----- inserting podracer spawn object ------\n"
      L6_2(L7_2)
      L6_2 = g_spawnerCount
      L6_2 = L6_2 + 1
      g_spawnerCount = L6_2
      L6_2 = g_spawners
      L7_2 = g_spawnerCount
      L8_2 = {}
      L9_2 = L5_2.x
      L8_2.x = L9_2
      L9_2 = L5_2.y
      L8_2.y = L9_2
      L6_2[L7_2] = L8_2
      L5_2.resistsExplosion = true
      L6_2 = gamelua
      L6_2 = L6_2.setAsSensor
      L7_2 = L5_2.name
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.definition
    L7_2 = g_definitionPodracerSebulba
    if L6_2 == L7_2 then
      L6_2 = gamelua
      L6_2 = L6_2.setObjectGravityCategory
      L7_2 = L5_2.name
      L8_2 = gamelua
      L8_2 = L8_2.g_gravityFiltersCategories
      L8_2 = L8_2.IGNOREGRAVITY
      L6_2(L7_2, L8_2)
      L6_2 = gamelua
      L6_2 = L6_2.setObjectParameter
      L7_2 = L5_2.name
      L8_2 = 16
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = gamelua
      L6_2 = L6_2.setFixedRotation
      L7_2 = L5_2.name
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = gamelua
      L6_2 = L6_2.setObjectParameter
      L7_2 = L5_2.name
      L8_2 = 37
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = g_podracerTravelTargets
      L5_2.targetList = L6_2
      L6_2 = print
      L7_2 = "----- podracer found -----\n"
      L6_2(L7_2)
      L6_2 = setJointedObjectsToIgnoreGravity
      L7_2 = L5_2.name
      L8_2 = nil
      L9_2 = {}
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = {}
      L7_2 = L5_2.name
      L6_2.name = L7_2
      L7_2 = L5_2.queued
      if not L7_2 then
        L5_2.active = true
        L7_2 = addEventCall
        L8_2 = "podracerAI"
        L9_2 = L6_2
        L10_2 = 0
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
  L1_2 = addEventCall
  L2_2 = "podracerBossfightLogic"
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1
initPodracerBossfight = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = g_conveyorTimer
  L2_2 = A0_2.dt
  L1_2 = L1_2 - L2_2
  g_conveyorTimer = L1_2
  L1_2 = g_conveyorTimer
  if L1_2 <= 0 then
    L1_2 = g_spawners
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = _G
      L1_2 = L1_2.math
      L1_2 = L1_2.random
      L2_2 = 1
      L3_2 = g_spawners
      L3_2 = #L3_2
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = g_conveyorObjects
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.random
      L4_2 = 1
      L5_2 = g_conveyorObjects
      L5_2 = #L5_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L2_2[L3_2]
      L3_2 = "TATOOINE_LIGHT_PODRACER_OVERTAKEN"
      L4_2 = g_spawners
      L4_2 = L4_2[L1_2]
      L4_2 = L4_2.y
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.random
      L5_2 = L5_2()
      L6_2 = L2_2.conveyorYRandom
      L5_2 = L5_2 * L6_2
      L4_2 = L4_2 + L5_2
      L5_2 = g_conveyorsSpawned
      L5_2 = L5_2 + 1
      g_conveyorsSpawned = L5_2
      L5_2 = createObject
      L6_2 = gamelua
      L6_2 = L6_2.blockTable
      L7_2 = L3_2
      L8_2 = L3_2
      L9_2 = "_SPAWNED_"
      L10_2 = g_conveyorsSpawned
      L8_2 = L8_2 .. L9_2 .. L10_2
      L9_2 = g_spawners
      L9_2 = L9_2[L1_2]
      L9_2 = L9_2.x
      L10_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L6_2 = gamelua
      L6_2 = L6_2.objects
      L6_2 = L6_2.world
      L6_2 = L6_2[L5_2]
      L6_2.ignoreFrozen = true
      L7_2 = _G
      L7_2 = L7_2.table
      L7_2 = L7_2.insert
      L8_2 = g_livingPlatforms
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = print
      L8_2 = "---- spawn new podracer, number of podracers: "
      L9_2 = g_livingPlatforms
      L9_2 = #L9_2
      L10_2 = "\n"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L7_2(L8_2)
      L7_2 = gamelua
      L7_2 = L7_2.setObjectGravityCategory
      L8_2 = L5_2
      L9_2 = gamelua
      L9_2 = L9_2.g_gravityFiltersCategories
      L9_2 = L9_2.IGNOREGRAVITY
      L7_2(L8_2, L9_2)
      L7_2 = gamelua
      L7_2 = L7_2.setObjectParameter
      L8_2 = L5_2
      L9_2 = 16
      L10_2 = 1
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = gamelua
      L7_2 = L7_2.setObjectParameter
      L8_2 = L5_2
      L9_2 = 37
      L10_2 = 1
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = setRotation
      L8_2 = L5_2
      L9_2 = L2_2.conveyorBaseAngle
      L7_2(L8_2, L9_2)
      L7_2 = gamelua
      L7_2 = L7_2.setFixedRotation
      L8_2 = L5_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = gamelua
      L7_2 = L7_2.blockTable
      L7_2 = L7_2.blocks
      L7_2 = L7_2[L3_2]
      L7_2 = L7_2.animateRotation
      if L7_2 == true then
        L7_2 = addObjectRotation
        L8_2 = L5_2
        L9_2 = L3_2
        L7_2(L8_2, L9_2)
      end
      L7_2 = {}
      L7_2.name = L5_2
      L8_2 = addEventCall
      L9_2 = "conveyorAI"
      L10_2 = L7_2
      L11_2 = 0
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = L6_2.jointedObjectNames
      if L8_2 == nil then
        L8_2 = {}
        L6_2.jointedObjectNames = L8_2
      end
      L8_2 = _G
      L8_2 = L8_2.ipairs
      L9_2 = L2_2.conveyorExtraStatic
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = createObject
        L14_2 = gamelua
        L14_2 = L14_2.blockTable
        L15_2 = L12_2.definition
        L16_2 = L12_2.definition
        L17_2 = "_EXTRA_SPAWNED_"
        L18_2 = g_conveyorsSpawned
        L19_2 = "_"
        L20_2 = L11_2
        L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
        L17_2 = g_spawners
        L17_2 = L17_2[L1_2]
        L17_2 = L17_2.x
        L18_2 = L12_2.x
        L17_2 = L17_2 + L18_2
        L18_2 = L12_2.y
        L18_2 = L4_2 + L18_2
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        L14_2 = gamelua
        L14_2 = L14_2.objects
        L14_2 = L14_2.world
        L14_2 = L14_2[L13_2]
        L14_2.ignoreFrozen = true
        L15_2 = {}
        L16_2 = L13_2
        L15_2[1] = L16_2
        L6_2.jointedObjectNames = L15_2
        L15_2 = gamelua
        L15_2 = L15_2.setObjectGravityCategory
        L16_2 = L13_2
        L17_2 = gamelua
        L17_2 = L17_2.g_gravityFiltersCategories
        L17_2 = L17_2.IGNOREGRAVITY
        L15_2(L16_2, L17_2)
        L15_2 = gamelua
        L15_2 = L15_2.setObjectParameter
        L16_2 = L13_2
        L17_2 = 16
        L18_2 = 1
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = setRotation
        L16_2 = L13_2
        L17_2 = L12_2.angle
        L15_2(L16_2, L17_2)
        L15_2 = gamelua
        L15_2 = L15_2.setFixedRotation
        L16_2 = L13_2
        L17_2 = true
        L15_2(L16_2, L17_2)
        L15_2 = gamelua
        L15_2 = L15_2.setObjectParameter
        L16_2 = L13_2
        L17_2 = 37
        L18_2 = 1
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = gamelua
        L15_2 = L15_2.blockTable
        L15_2 = L15_2.blocks
        L16_2 = L12_2.definition
        L15_2 = L15_2[L16_2]
        L15_2 = L15_2.animateRotation
        if L15_2 == true then
          L15_2 = addObjectRotation
          L16_2 = L13_2
          L17_2 = L12_2.definition
          L15_2(L16_2, L17_2)
        end
        L15_2 = {}
        L15_2.name = L13_2
        L16_2 = addEventCall
        L17_2 = "conveyorAI"
        L18_2 = L15_2
        L19_2 = 0
        L16_2(L17_2, L18_2, L19_2)
        L16_2 = {}
        L17_2 = L13_2
        L18_2 = "_"
        L19_2 = L5_2
        L17_2 = L17_2 .. L18_2 .. L19_2
        L16_2.name = L17_2
        L16_2.type = 5
        L16_2.destroyTimer = 0
        L16_2.end1 = L5_2
        L16_2.end2 = L13_2
        L16_2.x1 = 0
        L16_2.y1 = 0
        L16_2.x2 = 0
        L16_2.y2 = 0
        L16_2.coordType = 2
        L16_2.collideConnected = true
        L17_2 = gamelua
        L17_2 = L17_2.createJoint
        L18_2 = L16_2
        L17_2(L18_2)
      end
      L8_2 = nil
      L9_2 = L2_2.conveyorTntOffset
      if L9_2 then
        L9_2 = L2_2.conveyorTntOffset
        L9_2 = L9_2.x
        if L9_2 then
          L9_2 = "BLOCK_TNT_3X3_CONVEYOR"
          L10_2 = createObject
          L11_2 = gamelua
          L11_2 = L11_2.blockTable
          L12_2 = L9_2
          L13_2 = L9_2
          L14_2 = "_SPAWNED_"
          L15_2 = g_conveyorsSpawned
          L13_2 = L13_2 .. L14_2 .. L15_2
          L14_2 = g_spawners
          L14_2 = L14_2[L1_2]
          L14_2 = L14_2.x
          L15_2 = L2_2.conveyorTntOffset
          L15_2 = L15_2.x
          L14_2 = L14_2 + L15_2
          L15_2 = L2_2.conveyorTntOffset
          L15_2 = L15_2.y
          L15_2 = L4_2 + L15_2
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L8_2 = L10_2
          L10_2 = gamelua
          L10_2 = L10_2.objects
          L10_2 = L10_2.world
          L10_2 = L10_2[L8_2]
          L10_2.ignoreFrozen = true
          L10_2 = setRotation
          L11_2 = L8_2
          L12_2 = L2_2.conveyorTntOffset
          L12_2 = L12_2.angle
          L10_2(L11_2, L12_2)
          L10_2 = gamelua
          L10_2 = L10_2.blockTable
          L10_2 = L10_2.blocks
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.animateRotation
          if L10_2 == true then
            L10_2 = addObjectRotation
            L11_2 = L8_2
            L12_2 = L9_2
            L10_2(L11_2, L12_2)
          end
          L10_2 = _G
          L10_2 = L10_2.table
          L10_2 = L10_2.insert
          L11_2 = L6_2.jointedObjectNames
          L12_2 = L8_2
          L10_2(L11_2, L12_2)
        end
      end
      L9_2 = 1
      L10_2 = L2_2.conveyorRockOffset
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L2_2.conveyorRockOffset
        L13_2 = L13_2[L12_2]
        L13_2 = L13_2.definition
        L14_2 = createObject
        L15_2 = gamelua
        L15_2 = L15_2.blockTable
        L16_2 = L13_2
        L17_2 = L13_2
        L18_2 = "_SPAWNED_"
        L19_2 = g_conveyorsSpawned
        L20_2 = "_"
        L21_2 = L12_2
        L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
        L18_2 = g_spawners
        L18_2 = L18_2[L1_2]
        L18_2 = L18_2.x
        L19_2 = L2_2.conveyorRockOffset
        L19_2 = L19_2[L12_2]
        L19_2 = L19_2.x
        L18_2 = L18_2 + L19_2
        L19_2 = L2_2.conveyorRockOffset
        L19_2 = L19_2[L12_2]
        L19_2 = L19_2.y
        L19_2 = L4_2 + L19_2
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        L15_2 = gamelua
        L15_2 = L15_2.objects
        L15_2 = L15_2.world
        L15_2 = L15_2[L14_2]
        L15_2.ignoreFrozen = true
        L15_2 = setRotation
        L16_2 = L14_2
        L17_2 = L2_2.conveyorRockOffset
        L17_2 = L17_2[L12_2]
        L17_2 = L17_2.angle
        L15_2(L16_2, L17_2)
        L15_2 = gamelua
        L15_2 = L15_2.blockTable
        L15_2 = L15_2.blocks
        L15_2 = L15_2[L13_2]
        L15_2 = L15_2.animateRotation
        if L15_2 == true then
          L15_2 = addObjectRotation
          L16_2 = L14_2
          L17_2 = L13_2
          L15_2(L16_2, L17_2)
        end
        L15_2 = _G
        L15_2 = L15_2.table
        L15_2 = L15_2.insert
        L16_2 = L6_2.jointedObjectNames
        L17_2 = L14_2
        L15_2(L16_2, L17_2)
      end
      L9_2 = g_conveyorTimer
      L10_2 = g_conveyorBaseSpawnTime
      L11_2 = _G
      L11_2 = L11_2.math
      L11_2 = L11_2.random
      L11_2 = L11_2()
      L12_2 = g_conveyorRandomAddedTime
      L11_2 = L11_2 * L12_2
      L10_2 = L10_2 + L11_2
      L9_2 = L9_2 + L10_2
      g_conveyorTimer = L9_2
    end
  end
  L1_2 = addEventCall
  L2_2 = "podracerBossfightLogic"
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1
podracerBossfightLogic = L0_1
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
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.x
  L3_2 = g_conveyorDestroyXLocation
  if L2_2 < L3_2 then
    L2_2 = L1_2.jointedObjectNames
    if L2_2 then
      L2_2 = _G
      L2_2 = L2_2.ipairs
      L3_2 = L1_2.jointedObjectNames
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = gamelua
        L7_2 = L7_2.objects
        L7_2 = L7_2.world
        L7_2 = L7_2[L6_2]
        if L7_2 ~= nil then
          L7_2 = gamelua
          L7_2 = L7_2.destroyObject
          L8_2 = L6_2
          L9_2 = true
          L7_2(L8_2, L9_2)
        end
      end
    end
    L2_2 = gamelua
    L2_2 = L2_2.destroyObject
    L3_2 = A0_2.name
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = _G
    L2_2 = L2_2.ipairs
    L3_2 = g_livingPlatforms
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.name
      L8_2 = A0_2.name
      if L7_2 == L8_2 then
        L7_2 = _G
        L7_2 = L7_2.table
        L7_2 = L7_2.remove
        L8_2 = g_livingPlatforms
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  else
    L2_2 = setVelocity
    L3_2 = A0_2.name
    L4_2 = g_conveyorSpeed
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = addEventCall
    L3_2 = "conveyorAI"
    L4_2 = A0_2
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end

L0_1.action = L1_1
conveyorAI = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = gamelua
  L1_2 = L1_2.objects
  L1_2 = L1_2.world
  L2_2 = A0_2.name
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.active
  if not L2_2 then
    return
  end
  L2_2 = L1_2.timeToTargetChange
  if not L2_2 then
    L1_2.timeToTargetChange = 0
  end
  L2_2 = L1_2.timeToTargetChange
  L3_2 = A0_2.dt
  L2_2 = L2_2 + L3_2
  L1_2.timeToTargetChange = L2_2
  L2_2 = L1_2.target
  if not L2_2 then
    L2_2 = g_podracerTravelTargets
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.random
    L4_2 = 1
    L5_2 = g_podracerTravelTargets
    L5_2 = #L5_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2[L3_2]
    L1_2.target = L2_2
  end
  L2_2 = L1_2.timeToTargetChange
  L3_2 = movementData
  L3_2 = L3_2.timeToChangeTarget
  if L2_2 > L3_2 then
    L2_2 = print
    L3_2 = "Changing target due to timer expiring for "
    L4_2 = A0_2.name
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = g_podracerTravelTargets
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.random
    L4_2 = 1
    L5_2 = g_podracerTravelTargets
    L5_2 = #L5_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2[L3_2]
    L1_2.target = L2_2
    L1_2.timeToTargetChange = 0
  end
  L2_2 = L1_2.target
  L2_2 = L2_2.x
  L3_2 = L1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = L1_2.target
  L3_2 = L3_2.y
  L4_2 = L1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = vLength
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = movementData
  L5_2 = L5_2.targetReachedDistance
  if L4_2 < L5_2 then
    L4_2 = g_podracerTravelTargets
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.random
    L6_2 = 1
    L7_2 = g_podracerTravelTargets
    L7_2 = #L7_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2[L5_2]
    L1_2.target = L4_2
    L4_2 = L1_2.target
    L4_2 = L4_2.x
    L5_2 = L1_2.x
    L2_2 = L4_2 - L5_2
    L4_2 = L1_2.target
    L4_2 = L4_2.y
    L5_2 = L1_2.y
    L3_2 = L4_2 - L5_2
  end
  L4_2 = vNormalize
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = 0
  L7_2 = 0
  L8_2 = _G
  L8_2 = L8_2.pairs
  L9_2 = g_livingPlatforms
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    if L1_2 ~= L12_2 then
      L13_2 = calculatePodracerObjectEvasion
      L14_2 = L1_2
      L15_2 = L12_2
      L13_2, L14_2 = L13_2(L14_2, L15_2)
      L6_2 = L6_2 + L13_2
      L7_2 = L7_2 + L14_2
    end
  end
  L8_2 = movementData
  L8_2 = L8_2.targetWeight
  L8_2 = L8_2 * L4_2
  L9_2 = movementData
  L9_2 = L9_2.targetWeight
  L9_2 = L9_2 * L5_2
  L10_2 = movementData
  L10_2 = L10_2.evasionWeight
  L10_2 = L10_2 * L7_2
  L9_2 = L9_2 + L10_2
  L10_2 = g_velocityInertia
  L11_2 = g_oldVelocityX
  L10_2 = L10_2 * L11_2
  L11_2 = g_velocityInertia
  L11_2 = 1 - L11_2
  L11_2 = L11_2 * L8_2
  L8_2 = L10_2 + L11_2
  L10_2 = g_velocityInertia
  L11_2 = g_oldVelocityY
  L10_2 = L10_2 * L11_2
  L11_2 = g_velocityInertia
  L11_2 = 1 - L11_2
  L11_2 = L11_2 * L9_2
  L9_2 = L10_2 + L11_2
  L10_2 = setVelocity
  L11_2 = A0_2.name
  L12_2 = L8_2
  L13_2 = L9_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = L8_2
  g_oldVelocityY = L9_2
  g_oldVelocityX = L10_2
  L10_2 = 0
  L11_2 = gamelua
  L11_2 = L11_2.getAngle
  L12_2 = A0_2.name
  L11_2 = L11_2(L12_2)
  L12_2 = L10_2 - L11_2
  L13_2 = gamelua
  L13_2 = L13_2.getAngularVelocity
  L14_2 = A0_2.name
  L13_2 = L13_2(L14_2)
  L14_2 = addEventCall
  L15_2 = "podracerAI"
  L16_2 = A0_2
  L17_2 = 0
  L14_2(L15_2, L16_2, L17_2)
end

L0_1.action = L1_1
podracerAI = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A0_2 ~= A1_2
  L2_2(L3_2)
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = movementData
  L4_2 = L4_2.evasionRadius
  L5_2 = getSquaredDistanceFromOBBToPoint
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.width
  L9_2 = A1_2.height
  L10_2 = 0
  L11_2 = A0_2.x
  L12_2 = A0_2.y
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.sqrt
  L7_2 = L5_2.distance
  L6_2 = L6_2(L7_2)
  if L4_2 > L6_2 then
    L7_2 = L6_2 + 0.01
    L7_2 = 1 / L7_2
    L8_2 = L4_2 + 0.01
    L8_2 = 1 / L8_2
    L7_2 = L7_2 - L8_2
    L8_2 = _G
    L8_2 = L8_2.assert
    L9_2 = 0 <= L7_2
    L8_2(L9_2)
    L8_2 = 0
    L9_2 = 1
    L10_2 = A0_2.y
    L11_2 = A1_2.y
    if L10_2 < L11_2 then
      L9_2 = -1
    end
    L10_2 = L7_2 * L8_2
    L11_2 = L7_2 * L9_2
    return L10_2, L11_2
  else
    L7_2 = 0
    L8_2 = 0
    return L7_2, L8_2
  end
end

calculatePodracerObjectEvasion = L0_1
L0_1 = {}
L1_1 = "pigs_sebulba_podracer_loop_01"
L2_1 = "music_boss_arena"
L3_1 = "pigs_sebulba_podracer_destroyed_01"
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1

function L5_1(A0_2)
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
  L1_2 = gamelua
  L1_2 = L1_2.stopAudio
  L2_2 = L2_1
  L1_2(L2_2)
end

L4_1.action = L5_1
onPausePodRacerBossfight = L4_1
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.isLevelEnded
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.loopingSound
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.stopAudio
      L2_2 = L0_1
      L2_2 = L2_2.loopingSound
      L1_2(L2_2)
    end
    L1_2 = gamelua
    L1_2 = L1_2.stopAudio
    L2_2 = L2_1
    L1_2(L2_2)
  else
    L1_2 = L0_1
    L1_2 = L1_2.loopingSound
    if L1_2 then
      L1_2 = gamelua
      L1_2 = L1_2.playAudio
      L2_2 = L0_1
      L2_2 = L2_2.loopingSound
      L1_2(L2_2)
    end
    L1_2 = gamelua
    L1_2 = L1_2.playAudio
    L2_2 = L2_1
    L1_2(L2_2)
  end
end

L4_1.action = L5_1
onResumePodRacerBossfight = L4_1
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
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
  L3_2 = L0_1
  L4_2 = L2_2.specialtyHitPoints
  L3_2.hp = L4_2
  L3_2 = L0_1
  L4_2 = {}
  L3_2.collidedList = L4_2
  L3_2 = L0_1
  L3_2.bossObj = L1_2
  L3_2 = L0_1
  L4_2 = L1_1
  L3_2.loopingSound = L4_2
  L3_2 = gamelua
  L3_2 = L3_2.playAudio
  L4_2 = L0_1
  L4_2 = L4_2.loopingSound
  L5_2 = 0.5
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = gamelua
  L3_2 = L3_2.playAudio
  L4_2 = L2_1
  L3_2(L4_2)
end

L4_1.action = L5_1
boss2_onCreated = L4_1
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2.loopingSound
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.stopAudio
    L2_2 = L0_1
    L2_2 = L2_2.loopingSound
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2.loopingSound = nil
    L1_2 = gamelua
    L1_2 = L1_2.playAudio
    L2_2 = L3_1
    L1_2(L2_2)
  end
end

L4_1.action = L5_1
boss2_onDestroyed = L4_1
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.noDamageOnBosses
  if L1_2 then
    return
  end
  L1_2 = checkStillInWorld
  L2_2 = L0_1
  L2_2 = L2_2.bossObj
  L2_2 = L2_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.collidedList
    L2_2 = A0_2.other
    L1_2 = L1_2[L2_2]
    if not L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.bossObj
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
      L4_2 = "Boss2 took hit, hp: "
      L5_2 = L0_1
      L5_2 = L5_2.hp
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      L3_2 = L0_1
      L3_2 = L3_2.hp
      if L3_2 == 0 then
        L3_2 = _G
        L3_2 = L3_2.ipairs
        L4_2 = L2_2.specialtyDestroyParticles
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        for L6_2, L7_2 in L3_2, L4_2, L5_2 do
          L8_2 = gamelua
          L8_2 = L8_2.putParticles
          L9_2 = {}
          L10_2 = L1_2.name
          L9_2.objectName = L10_2
          L10_2 = L7_2.particles
          L9_2.particles = L10_2
          L10_2 = L7_2.amount
          L10_2 = L10_2 * 0.5
          L9_2.amount = L10_2
          L8_2(L9_2)
          L8_2 = gamelua
          L8_2 = L8_2.putParticles
          L9_2 = {}
          L10_2 = L1_2.x
          L10_2 = L10_2 - 2
          L9_2.x = L10_2
          L10_2 = L1_2.y
          L9_2.y = L10_2
          L10_2 = L7_2.particles
          L9_2.particles = L10_2
          L10_2 = L7_2.amount
          L10_2 = L10_2 * 0.5
          L9_2.amount = L10_2
          L8_2(L9_2)
        end
        L3_2 = destroyObject
        L4_2 = L0_1
        L4_2 = L4_2.bossObj
        L4_2 = L4_2.name
        L5_2 = true
        L3_2(L4_2, L5_2)
      end
      L3_2 = L2_2.specialtySebulbaDamageFrames
      L4_2 = L0_1
      L4_2 = L4_2.hp
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.setSprite
        L4_2 = g_objSebulbaName
        L5_2 = L2_2.specialtySebulbaDamageFrames
        L6_2 = L0_1
        L6_2 = L6_2.hp
        L5_2 = L5_2[L6_2]
        L3_2(L4_2, L5_2)
      end
      L3_2 = L2_2.specialtyMotorDamageFrames
      L4_2 = L0_1
      L4_2 = L4_2.hp
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L3_2 = gamelua
        L3_2 = L3_2.setSprite
        L4_2 = L1_2.name
        L5_2 = L2_2.specialtyMotorDamageFrames
        L6_2 = L0_1
        L6_2 = L6_2.hp
        L5_2 = L5_2[L6_2]
        L3_2(L4_2, L5_2)
      end
      L3_2 = L2_2.specialtyLoopingParticles
      L4_2 = L0_1
      L4_2 = L4_2.hp
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L3_2 = L2_2.specialtyLoopingParticles
        L4_2 = L0_1
        L4_2 = L4_2.hp
        L3_2 = L3_2[L4_2]
        L4_2 = addEventCall
        L5_2 = "boss2_createLoopingParticles"
        L6_2 = {}
        L7_2 = L0_1
        L7_2 = L7_2.bossObj
        L7_2 = L7_2.name
        L6_2.name = L7_2
        L6_2.def = L3_2
        L4_2(L5_2, L6_2)
        L4_2 = L3_2.sound
        if L4_2 then
          L4_2 = gamelua
          L4_2 = L4_2.stopAudio
          L5_2 = L0_1
          L5_2 = L5_2.loopingSound
          L4_2(L5_2)
          L4_2 = L0_1
          L5_2 = L3_2.sound
          L4_2.loopingSound = L5_2
          L4_2 = gamelua
          L4_2 = L4_2.playAudio
          L5_2 = L3_2.sound
          L6_2 = 0.5
          L7_2 = true
          L4_2(L5_2, L6_2, L7_2)
        end
      end
      L3_2 = A0_2.other
      if L3_2 then
        L3_2 = L0_1
        L3_2 = L3_2.collidedList
        L4_2 = A0_2.other
        L3_2[L4_2] = true
      end
    end
  end
end

L4_1.action = L5_1
boss2_takeDamage = L4_1
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1

function L5_1(A0_2)
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
    L2_2 = createObject
    L3_2 = gamelua
    L3_2 = L3_2.blockTable
    L4_2 = A0_2.def
    L4_2 = L4_2.blockName
    L5_2 = nil
    L6_2 = L1_2.x
    L7_2 = A0_2.def
    L7_2 = L7_2.offset
    L7_2 = L7_2.x
    L6_2 = L6_2 + L7_2
    L7_2 = L1_2.y
    L8_2 = A0_2.def
    L8_2 = L8_2.offset
    L8_2 = L8_2.y
    L7_2 = L7_2 + L8_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    n = L2_2
    L2_2 = gamelua
    L2_2 = L2_2.objects
    L2_2 = L2_2.world
    L3_2 = n
    L2_2 = L2_2[L3_2]
    L2_2.ignoreFrozen = true
    L3_2 = A0_2.def
    L3_2 = L3_2.loopingParticle
    L2_2.loopingParticle = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.addUpdateCall
    L4_2 = "followParent"
    L5_2 = {}
    L6_2 = n
    L5_2.name = L6_2
    L6_2 = A0_2.name
    L5_2.parent = L6_2
    L6_2 = A0_2.def
    L6_2 = L6_2.offset
    L5_2.offset = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = addEventCall
    L4_2 = "spawnSwitchableLoopingParticle"
    L5_2 = {}
    L6_2 = n
    L5_2.name = L6_2
    L6_2 = L1_2.name
    L5_2.parentName = L6_2
    L3_2(L4_2, L5_2)
  end
end

L4_1.action = L5_1
boss2_createLoopingParticles = L4_1
L4_1 = {}
L5_1 = {}
L5_1.timer = 0
L4_1.params = L5_1

function L5_1(A0_2)
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
    L6_2 = "boss2_takeDamage"
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

L4_1.action = L5_1
boss2_onCollisionEnter = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = _G
  L3_2 = L3_2.table
  L3_2 = L3_2.insert
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = gamelua
  L4_2 = L4_2.objects
  L4_2 = L4_2.joints
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = nil
    L9_2 = L7_2.end1
    if L9_2 == A0_2 then
      L9_2 = L7_2.end2
      if L9_2 ~= A1_2 then
        L8_2 = L7_2.end2
    end
    else
      L9_2 = L7_2.end2
      if L9_2 == A0_2 then
        L9_2 = L7_2.end1
        if L9_2 ~= A1_2 then
          L8_2 = L7_2.end1
      end
      else
        L8_2 = nil
      end
    end
    if L8_2 then
      L9_2 = false
      L10_2 = _G
      L10_2 = L10_2.ipairs
      L11_2 = A2_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        if L14_2 == L8_2 then
          L9_2 = true
          break
        end
      end
      if not L9_2 then
        L10_2 = print
        L11_2 = "---- found jointed unvisited object: "
        L12_2 = L8_2
        L13_2 = "\n"
        L11_2 = L11_2 .. L12_2 .. L13_2
        L10_2(L11_2)
        L10_2 = gamelua
        L10_2 = L10_2.setObjectGravityCategory
        L11_2 = L8_2
        L12_2 = gamelua
        L12_2 = L12_2.g_gravityFiltersCategories
        L12_2 = L12_2.IGNOREGRAVITY
        L10_2(L11_2, L12_2)
        L10_2 = gamelua
        L10_2 = L10_2.setObjectParameter
        L11_2 = L8_2
        L12_2 = 16
        L13_2 = 1
        L10_2(L11_2, L12_2, L13_2)
        L10_2 = setJointedObjectsToIgnoreGravity
        L11_2 = L8_2
        L12_2 = A0_2
        L13_2 = A2_2
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end

setJointedObjectsToIgnoreGravity = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.animatedObjects
  L2_2[A0_2] = A0_2
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L2_2.animateRotation = true
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.minRotationFrequency
  L5_2 = gamelua
  L5_2 = L5_2.blockTable
  L5_2 = L5_2.blocks
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.maxRotationFrequency
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.pi
  L3_2 = L3_2 * L4_2
  L3_2 = L3_2 / 180
  L2_2.rotationFrequency = L3_2
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L2_2 = L2_2[A0_2]
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L4_2 = gamelua
  L4_2 = L4_2.blockTable
  L4_2 = L4_2.blocks
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.minRotationAmplitude
  L5_2 = gamelua
  L5_2 = L5_2.blockTable
  L5_2 = L5_2.blocks
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.maxRotationAmplitude
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.pi
  L3_2 = L3_2 * L4_2
  L3_2 = L3_2 / 180
  L2_2.rotationAmplitude = L3_2
end

addObjectRotation = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = getSquaredDistanceFromOBBToPoint
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L14_2 = A6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = {}
  L9_2 = _G
  L9_2 = L9_2.math
  L9_2 = L9_2.sqrt
  L10_2 = L7_2.distance
  L9_2 = L9_2(L10_2)
  L8_2.distance = L9_2
  L9_2 = L7_2.pointX
  L8_2.pointX = L9_2
  L9_2 = L7_2.pointY
  L8_2.pointY = L9_2
  return L8_2
end

getDistanceFromOBBToPoint = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L7_2 = A5_2 - A0_2
  L8_2 = A6_2 - A1_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = {}
  L12_2 = {}
  L13_2 = A2_2 / 2
  L14_2 = A3_2 / 2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L13_2 = A4_2
  L14_2 = _G
  L14_2 = L14_2.math
  L14_2 = L14_2.cos
  L15_2 = L13_2
  L14_2 = L14_2(L15_2)
  L15_2 = _G
  L15_2 = L15_2.math
  L15_2 = L15_2.sin
  L16_2 = L13_2
  L15_2 = L15_2(L16_2)
  L16_2 = _G
  L16_2 = L16_2.math
  L16_2 = L16_2.cos
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.pi
  L17_2 = L17_2 * 0.5
  L17_2 = L13_2 + L17_2
  L16_2 = L16_2(L17_2)
  L17_2 = _G
  L17_2 = L17_2.math
  L17_2 = L17_2.sin
  L18_2 = _G
  L18_2 = L18_2.math
  L18_2 = L18_2.pi
  L18_2 = L18_2 * 0.5
  L18_2 = L13_2 + L18_2
  L17_2 = L17_2(L18_2)
  L18_2 = vNormalize
  L19_2 = L14_2
  L20_2 = L15_2
  L18_2, L19_2 = L18_2(L19_2, L20_2)
  L15_2 = L19_2
  L14_2 = L18_2
  L18_2 = vNormalize
  L19_2 = L16_2
  L20_2 = L17_2
  L18_2, L19_2 = L18_2(L19_2, L20_2)
  L17_2 = L19_2
  L16_2 = L18_2
  L18_2 = {}
  L18_2.x = L14_2
  L18_2.y = L15_2
  L19_2 = {}
  L19_2.x = L16_2
  L19_2.y = L17_2
  L20_2 = {}
  L21_2 = L18_2
  L22_2 = L19_2
  L20_2[1] = L21_2
  L20_2[2] = L22_2
  L21_2 = 0
  L22_2 = 1
  L23_2 = 1
  for L24_2 = L21_2, L22_2, L23_2 do
    L25_2 = L24_2 + 1
    L26_2 = gamelua
    L26_2 = L26_2.dotProduct
    L27_2 = L7_2
    L28_2 = L8_2
    L29_2 = L24_2 + 1
    L29_2 = L20_2[L29_2]
    L29_2 = L29_2.x
    L30_2 = L24_2 + 1
    L30_2 = L20_2[L30_2]
    L30_2 = L30_2.y
    L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
    L11_2[L25_2] = L26_2
    L25_2 = L24_2 + 1
    L25_2 = L11_2[L25_2]
    L26_2 = L24_2 + 1
    L26_2 = L12_2[L26_2]
    L26_2 = -L26_2
    if L25_2 < L26_2 then
      L25_2 = L24_2 + 1
      L25_2 = L11_2[L25_2]
      L26_2 = L24_2 + 1
      L26_2 = L12_2[L26_2]
      L10_2 = L25_2 + L26_2
      L25_2 = L10_2 * L10_2
      L9_2 = L9_2 + L25_2
      L25_2 = L24_2 + 1
      L26_2 = L24_2 + 1
      L26_2 = L12_2[L26_2]
      L26_2 = -L26_2
      L11_2[L25_2] = L26_2
    else
      L25_2 = L24_2 + 1
      L25_2 = L11_2[L25_2]
      L26_2 = L24_2 + 1
      L26_2 = L12_2[L26_2]
      if L25_2 > L26_2 then
        L25_2 = L24_2 + 1
        L25_2 = L11_2[L25_2]
        L26_2 = L24_2 + 1
        L26_2 = L12_2[L26_2]
        L10_2 = L25_2 - L26_2
        L25_2 = L10_2 * L10_2
        L9_2 = L9_2 + L25_2
        L25_2 = L24_2 + 1
        L26_2 = L24_2 + 1
        L26_2 = L12_2[L26_2]
        L11_2[L25_2] = L26_2
      end
    end
  end
  L21_2 = {}
  L21_2.x = A0_2
  L21_2.y = A1_2
  L22_2 = 0
  L23_2 = 1
  L24_2 = 1
  for L25_2 = L22_2, L23_2, L24_2 do
    L26_2 = L21_2.x
    L27_2 = L25_2 + 1
    L27_2 = L11_2[L27_2]
    L28_2 = L25_2 + 1
    L28_2 = L20_2[L28_2]
    L28_2 = L28_2.x
    L27_2 = L27_2 * L28_2
    L26_2 = L26_2 + L27_2
    L21_2.x = L26_2
    L26_2 = L21_2.y
    L27_2 = L25_2 + 1
    L27_2 = L11_2[L27_2]
    L28_2 = L25_2 + 1
    L28_2 = L20_2[L28_2]
    L28_2 = L28_2.y
    L27_2 = L27_2 * L28_2
    L26_2 = L26_2 + L27_2
    L21_2.y = L26_2
  end
  L22_2 = {}
  L22_2.distance = L9_2
  L23_2 = L21_2.x
  L22_2.pointX = L23_2
  L23_2 = L21_2.y
  L22_2.pointY = L23_2
  return L22_2
end

getSquaredDistanceFromOBBToPoint = L4_1
