local L0_1, L1_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.print
  print = L0_2
  L0_2 = gamelua
  L0_2 = L0_2.assert
  assert = L0_2
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
    L1_2 = addUpdateCall
    L2_2 = "actionTimerUpdate"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

L0_1.action = L1_1
actionTimerOnCreated = L0_1
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
    L3_2 = A0_2.timer
    if not L3_2 then
      L3_2 = A0_2.dt
      L3_2 = -L3_2
    end
    L4_2 = A0_2.dt
    L3_2 = L3_2 + L4_2
    A0_2.timer = L3_2
    L3_2 = A0_2.lastAction
    if not L3_2 then
      L3_2 = 0
    end
    A0_2.lastAction = L3_2
    L3_2 = _G
    L3_2 = L3_2.ipairs
    L4_2 = L2_2.specialtyTiming
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = A0_2.timer
      L9_2 = L7_2.start
      if L8_2 > L9_2 then
        L8_2 = A0_2.lastAction
        if L6_2 > L8_2 then
          A0_2.lastAction = L6_2
          L8_2 = L7_2.action
          if L8_2 == "actionTable" then
            L8_2 = gamelua
            L8_2 = L8_2.handleActionTable
            L9_2 = L7_2.actionTable
            L10_2 = L1_2.name
            L8_2(L9_2, L10_2)
          else
            L8_2 = L7_2.action
            if L8_2 == "particles" then
              L8_2 = _G
              L8_2 = L8_2.type
              L9_2 = L7_2.pos
              L8_2 = L8_2(L9_2)
              if L8_2 == "table" then
                L8_2 = putParticles
                L9_2 = {}
                L10_2 = L7_2.pos
                L10_2 = L10_2.x
                L9_2.x = L10_2
                L10_2 = L7_2.pos
                L10_2 = L10_2.y
                L9_2.y = L10_2
                L10_2 = L7_2.particles
                L9_2.particles = L10_2
                L9_2.useAmountInDefinition = true
                L8_2(L9_2)
              else
                L8_2 = assert
                L9_2 = checkStillInWorld
                L10_2 = L7_2.pos
                L9_2 = L9_2(L10_2)
                L10_2 = "Object "
                L11_2 = L7_2.pos
                L12_2 = " not in world."
                L10_2 = L10_2 .. L11_2 .. L12_2
                L8_2(L9_2, L10_2)
                L8_2 = putParticles
                L9_2 = {}
                L10_2 = L7_2.pos
                L9_2.objectName = L10_2
                L10_2 = L7_2.particles
                L9_2.particles = L10_2
                L9_2.useAmountInDefinition = true
                L8_2(L9_2)
              end
            else
              L8_2 = L7_2.action
              if L8_2 == "camera" then
                L8_2 = A0_2.lastCameraAction
                if not L8_2 then
                  L8_2 = 0
                end
                L8_2 = L8_2 + 1
                A0_2.lastCameraAction = L8_2
                L8_2 = _G
                L8_2 = L8_2.type
                L9_2 = L7_2.pos
                L8_2 = L8_2(L9_2)
                if L8_2 == "table" then
                  L8_2 = gamelua
                  L8_2 = L8_2.createAndMoveToCamera
                  L9_2 = L7_2.pos
                  L9_2 = L9_2.x
                  L10_2 = L7_2.pos
                  L10_2 = L10_2.y
                  L11_2 = L7_2.zoom
                  L12_2 = L7_2.velocity
                  L13_2 = A0_2.lastCameraAction
                  L13_2 = 90 + L13_2
                  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                else
                  L8_2 = assert
                  L9_2 = checkStillInWorld
                  L10_2 = L7_2.pos
                  L9_2 = L9_2(L10_2)
                  L10_2 = "Object "
                  L11_2 = L7_2.pos
                  L12_2 = " not in world."
                  L10_2 = L10_2 .. L11_2 .. L12_2
                  L8_2(L9_2, L10_2)
                  L8_2 = gamelua
                  L8_2 = L8_2.objects
                  L8_2 = L8_2.world
                  L9_2 = L7_2.pos
                  L8_2 = L8_2[L9_2]
                  L9_2 = gamelua
                  L9_2 = L9_2.createAndMoveToCamera
                  L10_2 = L8_2.x
                  L11_2 = L8_2.y
                  L12_2 = L7_2.zoom
                  L13_2 = L7_2.velocity
                  L14_2 = A0_2.lastCameraAction
                  L14_2 = 90 + L14_2
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
                end
              else
                L8_2 = L7_2.action
                if L8_2 == "shake" then
                  L8_2 = gamelua
                  L8_2 = L8_2.addCameraShake
                  L9_2 = gamelua
                  L9_2 = L9_2.cameraShakeModeSine
                  L10_2 = L7_2.velocity
                  L11_2 = L7_2.distortion
                  L12_2 = L7_2.timer
                  L8_2(L9_2, L10_2, L11_2, L12_2)
                else
                  L8_2 = L7_2.action
                  if L8_2 == "playAudio" then
                    L8_2 = _G
                    L8_2 = L8_2.type
                    L9_2 = L7_2.audio
                    L8_2 = L8_2(L9_2)
                    if L8_2 == "table" then
                      L8_2 = _G
                      L8_2 = L8_2.ipairs
                      L9_2 = L7_2.audio
                      L8_2, L9_2, L10_2 = L8_2(L9_2)
                      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
                        L13_2 = gamelua
                        L13_2 = L13_2.playAudio
                        L14_2 = L12_2
                        L13_2(L14_2)
                      end
                    else
                      L8_2 = gamelua
                      L8_2 = L8_2.playAudio
                      L9_2 = L7_2.audio
                      L8_2(L9_2)
                    end
                  else
                    L8_2 = L7_2.action
                    if L8_2 == "destroyAllLevelGoals" then
                      L8_2 = _G
                      L8_2 = L8_2.pairs
                      L9_2 = gamelua
                      L9_2 = L9_2.levelGoals
                      L8_2, L9_2, L10_2 = L8_2(L9_2)
                      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
                        L13_2 = addEventCall
                        L14_2 = "destroy"
                        L15_2 = {}
                        L15_2.name = L11_2
                        L13_2(L14_2, L15_2)
                      end
                    else
                      L8_2 = L7_2.action
                      if L8_2 == "setGlobal" then
                        L8_2 = gamelua
                        L9_2 = L7_2.name
                        L10_2 = L7_2.value
                        L8_2[L9_2] = L10_2
                      else
                        L8_2 = L7_2.action
                        if L8_2 == "queueEvent" then
                          L8_2 = gamelua
                          L8_2 = L8_2.eventManager
                          L9_2 = L8_2
                          L8_2 = L8_2.queueEvent
                          L10_2 = {}
                          L11_2 = gamelua
                          L11_2 = L11_2.events
                          L12_2 = L7_2.event
                          L11_2 = L11_2[L12_2]
                          L10_2.id = L11_2
                          L8_2(L9_2, L10_2)
                        else
                          L8_2 = L7_2.action
                          if L8_2 == "loop" then
                            A0_2.lastAction = 0
                            L8_2 = A0_2.timer
                            L9_2 = L7_2.start
                            L8_2 = L8_2 - L9_2
                            A0_2.timer = L8_2
                          else
                            L8_2 = assert
                            L9_2 = false
                            L10_2 = "Action "
                            L11_2 = _G
                            L11_2 = L11_2.tostring
                            L12_2 = L7_2.action
                            L11_2 = L11_2(L12_2)
                            L12_2 = " not valid."
                            L10_2 = L10_2 .. L11_2 .. L12_2
                            L8_2(L9_2, L10_2)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

L0_1.action = L1_1
actionTimerUpdate = L0_1
