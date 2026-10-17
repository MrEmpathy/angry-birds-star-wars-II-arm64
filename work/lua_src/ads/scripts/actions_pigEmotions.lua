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
L0_1 = false
birdFailed = L0_1
L0_1 = 0
timerBetweenStates = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2.currentState = "idleState"
    L1_2 = addEventCall
    L2_2 = pig
    L2_2 = L2_2.currentState
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = gamelua
    L1_2 = L1_2.isPhysicsEnabled
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = "BLOCK_SENSOR_PIG_B"
      L2_2 = "BLOCK_SENSOR_PIG_A"
      L3_2 = pig
      L3_2 = L3_2.useEmotionSensor
      if not L3_2 then
        L3_2 = "BLOCK_SENSOR_PIG_B_2"
        L2_2 = "BLOCK_SENSOR_PIG_A_2"
        L1_2 = L3_2
      end
      L3_2 = createObject
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L5_2 = L1_2
      L6_2 = "BLOCK_SENSOR_PIG_B_"
      L7_2 = A0_2.name
      L6_2 = L6_2 .. L7_2
      L7_2 = pig
      L7_2 = L7_2.x
      L8_2 = pig
      L8_2 = L8_2.y
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L4_2 = gamelua
      L4_2 = L4_2.objects
      L4_2 = L4_2.world
      L4_2 = L4_2[L3_2]
      L5_2 = A0_2.name
      L4_2.pig = L5_2
      L4_2 = gamelua
      L4_2 = L4_2.objects
      L4_2 = L4_2.world
      L5_2 = A0_2.name
      L4_2 = L4_2[L5_2]
      L4_2.sensorB = L3_2
      L4_2 = createObject
      L5_2 = gamelua
      L5_2 = L5_2.blockTable
      L6_2 = L2_2
      L7_2 = "BLOCK_SENSOR_PIG_A_"
      L8_2 = A0_2.name
      L7_2 = L7_2 .. L8_2
      L8_2 = pig
      L8_2 = L8_2.x
      L9_2 = pig
      L9_2 = L9_2.y
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L3_2 = L4_2
      L4_2 = gamelua
      L4_2 = L4_2.objects
      L4_2 = L4_2.world
      L4_2 = L4_2[L3_2]
      L5_2 = A0_2.name
      L4_2.pig = L5_2
      L4_2 = gamelua
      L4_2 = L4_2.objects
      L4_2 = L4_2.world
      L5_2 = A0_2.name
      L4_2 = L4_2[L5_2]
      L4_2.sensorA = L3_2
      L4_2 = gamelua
      L4_2 = L4_2.animatedObjects
      L5_2 = A0_2.name
      L6_2 = pig
      L4_2[L5_2] = L6_2
      L4_2 = gamelua
      L4_2 = L4_2.blockTable
      L4_2 = L4_2.blocks
      L5_2 = pig
      L5_2 = L5_2.definition
      L4_2 = L4_2[L5_2]
      L5_2 = L4_2.stateAnimations
      if not L5_2 then
        L5_2 = {}
      end
      L6_2 = L5_2.idleTimer
      if not L6_2 then
        L6_2 = 2
      end
      L7_2 = L5_2.animTimer
      if not L7_2 then
        L7_2 = 2
      end
      L8_2 = pig
      L8_2.currentSubAnimation = 1
      L8_2 = pig
      L8_2.idleTimer = L6_2
      L8_2 = pig
      L8_2.animTimer = 0
      L8_2 = pig
      L8_2.animFrame = 1
    end
    L1_2 = gamelua
    L1_2 = L1_2.blockTable
    L1_2 = L1_2.blocks
    L2_2 = pig
    L2_2 = L2_2.definition
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.isInBubble
    if L1_2 then
      L1_2 = addEventCall
      L2_2 = "recordMyVelocity"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end

L0_1.action = L1_1
pigCreated = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 2
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
    pig = L1_2
    L1_2 = pig
    L2_2 = pig
    L3_2 = pig
    L3_2 = L3_2.xVel
    L4_2 = pig
    L4_2 = L4_2.yVel
    L2_2.startingYVel = L4_2
    L1_2.startingXVel = L3_2
  end
end

L0_1.action = L1_1
recordMyVelocity = L0_1
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
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.world
      L3_2 = A0_2.other
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.controllable
      if L3_2 == true then
        L3_2 = checkStillInWorld
        L4_2 = L1_2.pig
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.objects
          L3_2 = L3_2.world
          L4_2 = L1_2.pig
          L3_2 = L3_2[L4_2]
          L3_2.birdExitB = true
        end
      end
    end
  end
end

L0_1.action = L1_1
pigSensorBExited = L0_1
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
      L2_2 = A0_2.name
      L1_2 = L1_2[L2_2]
      L2_2 = gamelua
      L2_2 = L2_2.objects
      L2_2 = L2_2.world
      L3_2 = A0_2.other
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2.controllable
      if L3_2 == true then
        L3_2 = checkStillInWorld
        L4_2 = L1_2.pig
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.objects
          L3_2 = L3_2.world
          L4_2 = L1_2.pig
          L3_2 = L3_2[L4_2]
          L3_2.birdEnteredB = true
        end
      end
    end
  end
end

L0_1.action = L1_1
pigSensorBEntered = L0_1
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
    end
  end
end

L0_1.action = L1_1
pigSensorAExited = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.timeSpentInLevel
  if 1 < L1_2 then
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
        L4_2 = L1_2.pig
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = gamelua
          L3_2 = L3_2.objects
          L3_2 = L3_2.world
          L4_2 = L1_2.pig
          L3_2 = L3_2[L4_2]
          L3_2.objectEnteredA = true
        end
      end
    end
  end
end

L0_1.action = L1_1
pigSensorAEntered = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2 = L1_2.enteredState
    if not L1_2 then
      L1_2 = damagedState
      L1_2 = L1_2.enteredState
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end

L0_1.action = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.timeInState = 0
    L1_2 = pig
    L2_2 = gamelua
    L2_2 = L2_2._G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L2_2 = L2_2 * 3.5
    L2_2 = 10 + L2_2
    L1_2.maxTimeInState = L2_2
    L1_2 = pig
    L1_2.enteredState = true
  end
end

L0_1.enteredState = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = false
  end
end

L0_1.exitState = L1_1
damagedState = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2 = L1_2.enteredState
    if not L1_2 then
      L1_2 = idleState
      L1_2 = L1_2.enteredState
      L2_2 = A0_2
      L1_2(L2_2)
    end
    L1_2 = pig
    L1_2 = L1_2.emotionsDisabled
    if L1_2 then
      L1_2 = pig
      L1_2 = L1_2.currentState
      if L1_2 == "idleState" then
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
      else
        L1_2 = idleState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
      end
      L1_2 = addEventCall
      L2_2 = pig
      L2_2 = L2_2.currentState
      L3_2 = A0_2
      L4_2 = timerBetweenStates
      L1_2(L2_2, L3_2, L4_2)
      return
    end
    L1_2 = pig
    L1_2 = L1_2.birdEnteredB
    if not L1_2 then
      L1_2 = pig
      L1_2 = L1_2.objectEnteredA
      if not L1_2 then
        L1_2 = getVelocity
        L2_2 = pig
        L2_2 = L2_2.name
        L1_2 = L1_2(L2_2)
        if not (3 < L1_2) then
          goto lbl_77
        end
      end
    end
    L1_2 = pig
    L1_2.currentState = "nervousState"
    L1_2 = idleState
    L1_2 = L1_2.exitState
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = addEventCall
    L2_2 = pig
    L2_2 = L2_2.currentState
    L3_2 = A0_2
    L4_2 = timerBetweenStates
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = pig
    L1_2.birdEnteredB = false
    L1_2 = pig
    L1_2.objectEnteredA = false
    goto lbl_148
    ::lbl_77::
    L1_2 = gamelua
    L1_2 = L1_2.timeSpentInLevel
    L2_2 = gamelua
    L2_2 = L2_2.lastBirdFailedTime
    L1_2 = L1_2 - L2_2
    if L1_2 < 0.1 then
      L1_2 = pig
      L1_2.currentState = "happyState"
      L1_2 = idleState
      L1_2 = L1_2.exitState
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = addEventCall
      L2_2 = pig
      L2_2 = L2_2.currentState
      L3_2 = A0_2
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = pig
      L1_2 = L1_2.timeInState
      L2_2 = pig
      L2_2 = L2_2.maxTimeInState
      if L1_2 > L2_2 then
        L1_2 = gamelua
        L1_2 = L1_2._G
        L1_2 = L1_2.math
        L1_2 = L1_2.random
        L1_2 = L1_2()
        if L1_2 < 0.05 then
          L1_2 = pig
          L1_2.currentState = "sleepyState"
        else
          L1_2 = gamelua
          L1_2 = L1_2._G
          L1_2 = L1_2.math
          L1_2 = L1_2.random
          L1_2 = L1_2()
          if L1_2 < 0.1 then
            L1_2 = pig
            L1_2.currentState = "happyState"
          else
            L1_2 = pig
            L1_2.currentState = "idleState"
          end
        end
        L1_2 = idleState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
        L1_2 = addEventCall
        L2_2 = pig
        L2_2 = L2_2.currentState
        L3_2 = A0_2
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
      else
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
        L1_2 = addEventCall
        L2_2 = pig
        L2_2 = L2_2.currentState
        L3_2 = A0_2
        L4_2 = 0
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
  ::lbl_148::
end

L0_1.action = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.timeInState = 0
    L1_2 = pig
    L1_2.timeIdle = 0
    L1_2 = pig
    L2_2 = gamelua
    L2_2 = L2_2._G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L2_2 = L2_2 * 8
    L2_2 = 3 + L2_2
    L1_2.maxTimeInState = L2_2
    L1_2 = pig
    L1_2.enteredState = true
  end
end

L0_1.enteredState = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.timeIdle = nil
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = false
  end
end

L0_1.exitState = L1_1
idleState = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2 = L1_2.enteredState
    if not L1_2 then
      L1_2 = sleepyState
      L1_2 = L1_2.enteredState
      L2_2 = A0_2
      L1_2(L2_2)
    end
    L1_2 = pig
    L1_2 = L1_2.emotionsDisabled
    if L1_2 then
      L1_2 = pig
      L1_2 = L1_2.currentState
      if L1_2 == "sleepyState" then
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
      else
        L1_2 = sleepyState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
      end
      L1_2 = addEventCall
      L2_2 = pig
      L2_2 = L2_2.currentState
      L3_2 = A0_2
      L4_2 = timerBetweenStates
      L1_2(L2_2, L3_2, L4_2)
      return
    end
    L1_2 = pig
    L1_2 = L1_2.birdEnteredB
    if not L1_2 then
      L1_2 = pig
      L1_2 = L1_2.objectEnteredA
      if not L1_2 then
        goto lbl_65
      end
    end
    L1_2 = pig
    L1_2.currentState = "nervousState"
    L1_2 = sleepyState
    L1_2 = L1_2.exitState
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = pig
    L1_2.birdEnteredB = false
    L1_2 = pig
    L1_2.objectEnteredA = false
    goto lbl_84
    ::lbl_65::
    L1_2 = pig
    L1_2 = L1_2.timeInState
    L2_2 = pig
    L2_2 = L2_2.maxTimeInState
    if L1_2 > L2_2 then
      L1_2 = pig
      L1_2.currentState = "sleepState"
      L1_2 = sleepyState
      L1_2 = L1_2.exitState
      L2_2 = A0_2
      L1_2(L2_2)
    else
      L1_2 = pig
      L2_2 = pig
      L2_2 = L2_2.timeInState
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      L1_2.timeInState = L2_2
    end
    ::lbl_84::
    L1_2 = addEventCall
    L2_2 = pig
    L2_2 = L2_2.currentState
    L3_2 = A0_2
    L4_2 = timerBetweenStates
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.timeInState = 0
    L1_2 = pig
    L1_2.enteredState = true
    L1_2 = pig
    L2_2 = gamelua
    L2_2 = L2_2._G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L2_2 = L2_2 * 3
    L2_2 = 2 + L2_2
    L1_2.maxTimeInState = L2_2
  end
end

L0_1.enteredState = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = false
  end
end

L0_1.exitState = L1_1
sleepyState = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2 = L1_2.enteredState
    if not L1_2 then
      L1_2 = sleepState
      L1_2 = L1_2.enteredState
      L2_2 = A0_2
      L1_2(L2_2)
    end
    L1_2 = pig
    L1_2 = L1_2.emotionsDisabled
    if L1_2 then
      L1_2 = pig
      L1_2 = L1_2.currentState
      if L1_2 == "sleepState" then
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
      else
        L1_2 = sleepState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
      end
      L1_2 = addEventCall
      L2_2 = pig
      L2_2 = L2_2.currentState
      L3_2 = A0_2
      L4_2 = timerBetweenStates
      L1_2(L2_2, L3_2, L4_2)
      return
    end
    L1_2 = pig
    L1_2 = L1_2.objectEnteredA
    if not L1_2 then
      L1_2 = getVelocity
      L2_2 = pig
      L2_2 = L2_2.name
      L1_2 = L1_2(L2_2)
      if not (4 < L1_2) then
        goto lbl_65
      end
    end
    L1_2 = pig
    L1_2.currentState = "nervousState"
    L1_2 = sleepState
    L1_2 = L1_2.exitState
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = pig
    L1_2.objectEnteredA = false
    goto lbl_94
    ::lbl_65::
    L1_2 = pig
    L1_2 = L1_2.timeInState
    L2_2 = pig
    L2_2 = L2_2.maxTimeInState
    if L1_2 > L2_2 then
      L1_2 = gamelua
      L1_2 = L1_2._G
      L1_2 = L1_2.math
      L1_2 = L1_2.random
      L1_2 = L1_2()
      if 0.5 < L1_2 then
        L1_2 = pig
        L1_2.currentState = "happyState"
      else
        L1_2 = pig
        L1_2.currentState = "idleState"
      end
      L1_2 = sleepState
      L1_2 = L1_2.exitState
      L2_2 = A0_2
      L1_2(L2_2)
    else
      L1_2 = pig
      L2_2 = pig
      L2_2 = L2_2.timeInState
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      L1_2.timeInState = L2_2
    end
    ::lbl_94::
    L1_2 = addEventCall
    L2_2 = pig
    L2_2 = L2_2.currentState
    L3_2 = A0_2
    L4_2 = timerBetweenStates
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = true
    L1_2 = pig
    L1_2.timeInState = 0
    L1_2 = pig
    L1_2.timeSleep = 0
    L1_2 = pig
    L2_2 = gamelua
    L2_2 = L2_2._G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L2_2 = L2_2 * 5
    L2_2 = 5 + L2_2
    L1_2.maxTimeInState = L2_2
  end
end

L0_1.enteredState = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = false
    L1_2 = pig
    L1_2.timeSleep = nil
  end
end

L0_1.exitState = L1_1
sleepState = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2 = L1_2.enteredState
    if not L1_2 then
      L1_2 = happyState
      L1_2 = L1_2.enteredState
      L2_2 = A0_2
      L1_2(L2_2)
    end
    L1_2 = pig
    L1_2 = L1_2.emotionsDisabled
    if L1_2 then
      L1_2 = pig
      L1_2 = L1_2.currentState
      if L1_2 == "happyState" then
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
      else
        L1_2 = happyState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
      end
      L1_2 = addEventCall
      L2_2 = pig
      L2_2 = L2_2.currentState
      L3_2 = A0_2
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
      return
    end
    L1_2 = pig
    L1_2 = L1_2.timeInState
    L2_2 = pig
    L2_2 = L2_2.maxTimeInState
    if not (L1_2 > L2_2) then
    end
    L1_2 = pig
    L1_2.currentState = "idleState"
    L1_2 = happyState
    L1_2 = L1_2.exitState
    L2_2 = A0_2
    L1_2(L2_2)
    goto lbl_65
    L1_2 = pig
    L2_2 = pig
    L2_2 = L2_2.timeInState
    L3_2 = A0_2.dt
    L2_2 = L2_2 + L3_2
    L1_2.timeInState = L2_2
    ::lbl_65::
    L1_2 = addEventCall
    L2_2 = pig
    L2_2 = L2_2.currentState
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = true
    L1_2 = pig
    L1_2.timeInState = 0
    L1_2 = pig
    L2_2 = gamelua
    L2_2 = L2_2._G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L2_2 = L2_2 * 2
    L2_2 = 2 + L2_2
    L1_2.maxTimeInState = L2_2
  end
end

L0_1.enteredState = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = false
  end
end

L0_1.exitState = L1_1
happyState = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2 = L1_2.enteredState
    if not L1_2 then
      L1_2 = nervousState
      L1_2 = L1_2.enteredState
      L2_2 = A0_2
      L1_2(L2_2)
    end
  else
    return
  end
  L1_2 = pig
  L1_2 = L1_2.emotionsDisabled
  if L1_2 then
    L1_2 = pig
    L1_2 = L1_2.currentState
    if L1_2 == "nervousState" then
      L1_2 = pig
      L2_2 = pig
      L2_2 = L2_2.timeInState
      L3_2 = A0_2.dt
      L2_2 = L2_2 + L3_2
      L1_2.timeInState = L2_2
    else
      L1_2 = nervousState
      L1_2 = L1_2.exitState
      L2_2 = A0_2
      L1_2(L2_2)
    end
    L1_2 = addEventCall
    L2_2 = pig
    L2_2 = L2_2.currentState
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = pig
  L1_2 = L1_2.birdExitB
  if L1_2 then
    L1_2 = pig
    L1_2.currentState = "relievedState"
    L1_2 = nervousState
    L1_2 = L1_2.exitState
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = pig
    L1_2.birdExitB = false
  else
    L1_2 = gamelua
    L1_2 = L1_2.timeSpentInLevel
    L2_2 = gamelua
    L2_2 = L2_2.lastBirdFailedTime
    L1_2 = L1_2 - L2_2
    if L1_2 < 0.1 then
      L1_2 = pig
      L1_2.currentState = "relievedState"
      L1_2 = nervousState
      L1_2 = L1_2.exitState
      L2_2 = A0_2
      L1_2(L2_2)
    else
      L1_2 = pig
      L1_2 = L1_2.timeInState
      L2_2 = pig
      L2_2 = L2_2.maxTimeInState
      if L1_2 > L2_2 then
        L1_2 = pig
        L1_2.currentState = "idleState"
        L1_2 = nervousState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
      else
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
      end
    end
  end
  L1_2 = addEventCall
  L2_2 = pig
  L2_2 = L2_2.currentState
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.action = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.timeInState = 0
    L1_2 = pig
    L1_2.enteredState = true
    L1_2 = pig
    L1_2.timeNervous = 0
    L1_2 = pig
    L2_2 = gamelua
    L2_2 = L2_2._G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L2_2 = L2_2 * 2
    L2_2 = 2 + L2_2
    L1_2.maxTimeInState = L2_2
  end
end

L0_1.enteredState = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = false
    L1_2 = pig
    L1_2.timeNervous = nil
  end
end

L0_1.exitState = L1_1
nervousState = L0_1
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
    pig = L1_2
    L1_2 = pig
    L1_2 = L1_2.enteredState
    if not L1_2 then
      L1_2 = relievedState
      L1_2 = L1_2.enteredState
      L2_2 = A0_2
      L1_2(L2_2)
    end
    L1_2 = pig
    L1_2 = L1_2.emotionsDisabled
    if L1_2 then
      L1_2 = pig
      L1_2 = L1_2.currentState
      if L1_2 == "relievedState" then
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
      else
        L1_2 = relievedState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
      end
      L1_2 = addEventCall
      L2_2 = pig
      L2_2 = L2_2.currentState
      L3_2 = A0_2
      L4_2 = 0
      L1_2(L2_2, L3_2, L4_2)
      return
    end
    L1_2 = pig
    L1_2 = L1_2.birdEnteredB
    if L1_2 then
      L1_2 = pig
      L1_2.currentState = "nervousState"
      L1_2 = relievedState
      L1_2 = L1_2.exitState
      L2_2 = A0_2
      L1_2(L2_2)
    else
      L1_2 = pig
      L1_2 = L1_2.timeInState
      L2_2 = pig
      L2_2 = L2_2.maxTimeInState
      if L1_2 > L2_2 then
        L1_2 = pig
        L1_2.currentState = "happyState"
        L1_2 = relievedState
        L1_2 = L1_2.exitState
        L2_2 = A0_2
        L1_2(L2_2)
      else
        L1_2 = pig
        L2_2 = pig
        L2_2 = L2_2.timeInState
        L3_2 = A0_2.dt
        L2_2 = L2_2 + L3_2
        L1_2.timeInState = L2_2
      end
    end
    L1_2 = addEventCall
    L2_2 = pig
    L2_2 = L2_2.currentState
    L3_2 = A0_2
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end

L0_1.action = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.enteredState = true
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.timeInState = 0
    L1_2 = pig
    L1_2.timeRelieved = 0
    L1_2 = pig
    L2_2 = gamelua
    L2_2 = L2_2._G
    L2_2 = L2_2.math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L2_2 = L2_2 * 2
    L2_2 = 1 + L2_2
    L1_2.maxTimeInState = L2_2
  end
end

L0_1.enteredState = L1_1

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
    pig = L1_2
    L1_2 = pig
    L1_2.currentSubAnimation = 1
    L1_2 = pig
    L1_2.enteredState = false
    L1_2 = pig
    L1_2.timeRelieved = nil
  end
end

L0_1.exitState = L1_1
relievedState = L0_1
L0_1 = {}
L1_1 = {}
L1_1.timer = 0
L0_1.params = L1_1

function L1_1(A0_2)
  local L1_2
end

L0_1.action = L1_1
frozenState = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = false
  birdFailed = L0_2
end

actionCallsDone = L0_1
