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
L1_1 = "boss_naboostarship_loop_01"
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L0_1 = L1_2
  L1_2 = L0_1
  L2_2 = gamelua
  L2_2 = L2_2.objects
  L2_2 = L2_2.world
  L3_2 = A0_2.name
  L2_2 = L2_2[L3_2]
  L1_2.obj = L2_2
  L1_2 = L0_1
  L1_2 = L1_2.obj
  L1_2.defence = 100000
  L1_2 = L0_1
  L2_2 = gamelua
  L2_2 = L2_2.blockTable
  L2_2 = L2_2.blocks
  L3_2 = L0_1
  L3_2 = L3_2.obj
  L3_2 = L3_2.definition
  L2_2 = L2_2[L3_2]
  L1_2.def = L2_2
  L1_2 = addUpdateCall
  L2_2 = "boss3_update"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = L1_1
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_1
  L1_2.loopingSound = L2_2
end

L2_1.action = L3_1
boss3_onCreated = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "tnt_explodes"
  L1_2(L2_2)
end

L2_1.action = L3_1
boss3_onDestroyed = L2_1
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
end

L2_1.action = L3_1
onStoppedBoss3Bossfight = L2_1
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
onPauseBoss3Bossfight = L2_1
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

L2_1.action = L3_1
onResumeBoss3Bossfight = L2_1
L2_1 = {}
L3_1 = {}
L3_1.timer = 0
L2_1.params = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkStillInWorld
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = 0
    L2_2 = _G
    L2_2 = L2_2.pairs
    L3_2 = gamelua
    L3_2 = L3_2.levelGoals
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L1_2 = L1_2 + 1
      if 1 < L1_2 then
        break
      end
    end
    L2_2 = L0_1
    L2_2 = L2_2.boss3ObjectDestroyed
    if not L2_2 and L1_2 == 1 then
      L2_2 = destroyObject
      L3_2 = L0_1
      L3_2 = L3_2.def
      L3_2 = L3_2.specialtyObjectName
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = L0_1
      L2_2.boss3ObjectDestroyed = true
      L2_2 = L0_1
      L2_2 = L2_2.obj
      L3_2 = gamelua
      L3_2 = L3_2.blockTable
      L3_2 = L3_2.materials
      L4_2 = L0_1
      L4_2 = L4_2.def
      L4_2 = L4_2.material
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.defence
      L2_2.defence = L3_2
    end
  end
end

L2_1.action = L3_1
boss3_update = L2_1
