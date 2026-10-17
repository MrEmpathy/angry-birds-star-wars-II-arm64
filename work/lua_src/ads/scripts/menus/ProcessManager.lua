local L0_1, L1_1
L0_1 = {}
ProcessManager = L0_1
L0_1 = ProcessManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = A1_2.x
  if not L2_2 then
    L2_2 = 0
  end
  A1_2.x = L2_2
  L2_2 = A1_2.y
  if not L2_2 then
    L2_2 = 0
  end
  A1_2.y = L2_2
  A1_2.name = "ProcessManager"
  L2_2 = _G
  L2_2 = L2_2.setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L3_2 = A1_2
  L2_2 = A1_2.init
  L2_2(L3_2)
  return A1_2
end

L0_1.new = L1_1
L0_1 = ProcessManager

function L1_1(A0_2)
  local L1_2
  A0_2.running = true
  A0_2.elapsed = 0
end

L0_1.start = L1_1
L0_1 = ProcessManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.running = false
  A0_2.elapsed = 0
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2.actions
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = loginfo
    L7_2 = "ProcessManager:reset() finished process : "
    L8_2 = _G
    L8_2 = L8_2.tostring
    L9_2 = L5_2.name
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    L6_2 = L5_2.onFinish
    if L6_2 then
      L6_2 = L5_2.onFinish
      L6_2()
    end
    L6_2 = eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = events
    L9_2 = L9_2.EID_PROCESS_FINISHED
    L8_2.id = L9_2
    L8_2.target = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  A0_2.actions = L1_2
end

L0_1.reset = L1_1
L0_1 = ProcessManager

function L1_1(A0_2)
  local L1_2
  A0_2.elapsed = 0
  L1_2 = {}
  A0_2.actions = L1_2
  A0_2.running = false
end

L0_1.init = L1_1
L0_1 = ProcessManager

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.running
  return L1_2
end

L0_1.running = L1_1
L0_1 = ProcessManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2.actions
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A1_2 and A1_2 ~= nil then
      L6_2.finished = true
      L7_2 = L6_2.onFinish
      if L7_2 then
        L7_2 = L6_2.onFinish
        L7_2()
      end
      L7_2 = loginfo
      L8_2 = "ProcessManager:resetProcess(id) finished process : "
      L9_2 = _G
      L9_2 = L9_2.tostring
      L10_2 = L6_2.name
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
      L7_2 = eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = events
      L10_2 = L10_2.EID_PROCESS_FINISHED
      L9_2.id = L10_2
      L10_2 = L6_2
      L9_2[1] = L10_2
      L7_2(L8_2, L9_2)
    end
  end
end

L0_1.resetProcess = L1_1
L0_1 = ProcessManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.actions
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.insertAction = L1_1
L0_1 = ProcessManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2.running
  if L3_2 ~= true then
    return
  end
  L3_2 = getDeltaTimeMultiplier
  L3_2 = L3_2()
  A1_2 = A1_2 / L3_2
  L3_2 = A0_2.elapsed
  L3_2 = L3_2 + A1_2
  A0_2.elapsed = L3_2
  L3_2 = true
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A0_2.actions
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.elapsed
    L10_2 = L8_2.start
    L9_2 = L9_2 - L10_2
    L10_2 = L8_2.finished
    if L10_2 == false then
      L3_2 = false
    end
    L10_2 = L8_2.duration
    if L9_2 > L10_2 then
      L10_2 = L8_2.finished
      if L10_2 == false then
        L9_2 = L8_2.duration
        L10_2 = L8_2.action
        L11_2 = L8_2.item
        L12_2 = L9_2
        L13_2 = L8_2.duration
        L14_2 = A1_2
        L15_2 = L8_2.meta
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L8_2.finished = true
        L10_2 = L8_2.onFinish
        if L10_2 then
          L10_2 = L8_2.onFinish
          L10_2()
        end
      end
    end
    L10_2 = L8_2.start
    L11_2 = A0_2.elapsed
    if L10_2 <= L11_2 then
      L10_2 = L8_2.finished
      if not L10_2 then
        L10_2 = L8_2.action
        L11_2 = L8_2.item
        L12_2 = L9_2
        L13_2 = L8_2.duration
        L14_2 = A1_2
        L15_2 = L8_2.meta
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
  L4_2 = A0_2.actions
  L4_2 = #L4_2
  if 0 < L4_2 and L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.reset
    L4_2(L5_2)
  end
end

L0_1.update = L1_1
