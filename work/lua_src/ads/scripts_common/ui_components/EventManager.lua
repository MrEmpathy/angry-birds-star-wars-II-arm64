local L0_1, L1_1
L0_1 = {}
EventManager = L0_1
L0_1 = EventManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  A1_2.name = "EventManager"
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
L0_1 = EventManager

function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.eventListeners = L1_2
  L1_2 = {}
  A0_2.queuedEvents = L1_2
  A0_2.useBufferedQueue = false
  L1_2 = {}
  A0_2.bufferedEvents = L1_2
end

L0_1.init = L1_1
L0_1 = EventManager

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.useBufferedQueue = true
  L1_2 = 1
  L2_2 = A0_2.queuedEvents
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.notify
    L7_2 = A0_2.queuedEvents
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
  A0_2.useBufferedQueue = false
  L1_2 = {}
  A0_2.queuedEvents = L1_2
  L1_2 = 1
  L2_2 = A0_2.bufferedEvents
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = _G
    L5_2 = L5_2.table
    L5_2 = L5_2.insert
    L6_2 = A0_2.queuedEvents
    L7_2 = A0_2.bufferedEvents
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
  L1_2 = {}
  A0_2.bufferedEvents = L1_2
end

L0_1.tick = L1_1
L0_1 = EventManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A2_2 ~= nil
  L5_2 = "listener was nil at EventManager:addEventListener, eventId = "
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A1_2 ~= nil
  L5_2 = "event id was nil at EventManager:addEventListener, listener name =  "
  L6_2 = _G
  L6_2 = L6_2.tostring
  L7_2 = A2_2.name
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A2_2.eventTriggered
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.print
    L4_2 = "---  ERROR, listener must implement eventTriggered(event)!\n"
    L3_2(L4_2)
    L3_2 = _G
    L3_2 = L3_2.assert
    L4_2 = A2_2.eventTriggered
    L5_2 = " listener must implement eventTriggered(event) "
    L3_2(L4_2, L5_2)
  end
  L3_2 = _G
  L3_2 = L3_2.pairs
  L4_2 = A0_2.eventListeners
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L6_2 == A1_2 then
      L8_2 = _G
      L8_2 = L8_2.pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        if L12_2 == A2_2 then
          L13_2 = gamelua
          L13_2 = L13_2.print
          L14_2 = "---  ERROR, attempted to add same listener twice for event\n"
          L13_2(L14_2)
          L13_2 = _G
          L13_2 = L13_2.assert
          L14_2 = L12_2 ~= A2_2
          L15_2 = "---  ERROR, attempted to add same listener twice, eventId = "
          L16_2 = A1_2
          L15_2 = L15_2 .. L16_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L3_2 = A0_2.eventListeners
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    L4_2 = A0_2.eventListeners
    L5_2 = {}
    L4_2[A1_2] = L5_2
  end
  L4_2 = _G
  L4_2 = L4_2.table
  L4_2 = L4_2.insert
  L5_2 = A0_2.eventListeners
  L5_2 = L5_2[A1_2]
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end

L0_1.addEventListener = L1_1
L0_1 = EventManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A1_2 ~= nil
  L5_2 = "event id nil at  EventManager:removeEventListener"
  L3_2(L4_2, L5_2)
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A2_2 ~= nil
  L5_2 = "listener nil at  EventManager:removeEventListener"
  L3_2(L4_2, L5_2)
  L3_2 = 0
  L4_2 = A0_2.eventListeners
  L4_2 = L4_2[A1_2]
  if L4_2 ~= nil then
    L4_2 = _G
    L4_2 = L4_2.pairs
    L5_2 = A0_2.eventListeners
    L5_2 = L5_2[A1_2]
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L3_2 = L3_2 + 1
    end
  end
  if L3_2 == 0 then
    L4_2 = gamelua
    L4_2 = L4_2.print
    L5_2 = "ERROR: attempted to remove a nonexistant listener for event "
    L6_2 = A1_2
    L7_2 = "\n"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = _G
    L4_2 = L4_2.assert
    L5_2 = false
    L6_2 = "ERROR: attempted to remove a nonexistant listener for event "
    L7_2 = A1_2
    L8_2 = "\n"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = _G
  L4_2 = L4_2.pairs
  L5_2 = A0_2.eventListeners
  L5_2 = L5_2[A1_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 == A2_2 then
      L9_2 = A0_2.eventListeners
      L9_2 = L9_2[A1_2]
      L9_2[L7_2] = nil
      return
    end
  end
  L4_2 = _G
  L4_2 = L4_2.assert
  L5_2 = false
  L6_2 = "ERROR: attempted to remove a nonexistant listener "
  L7_2 = _G
  L7_2 = L7_2.tostring
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = " for "
  L9_2 = A1_2
  L10_2 = "\n"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L4_2(L5_2, L6_2)
end

L0_1.removeEventListener = L1_1
L0_1 = EventManager

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A1_2 ~= nil
  L5_2 = "event id nil at  EventManager:hasEventListener"
  L3_2(L4_2, L5_2)
  L3_2 = _G
  L3_2 = L3_2.assert
  L4_2 = A2_2 ~= nil
  L5_2 = "listener nil at  EventManager:hasEventListener"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.eventListeners
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L3_2 = _G
    L3_2 = L3_2.pairs
    L4_2 = A0_2.eventListeners
    L4_2 = L4_2[A1_2]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if L7_2 == A2_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end

L0_1.hasEventListener = L1_1
L0_1 = EventManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.useBufferedQueue
  if L2_2 ~= true then
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.insert
    L3_2 = A0_2.queuedEvents
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = _G
    L2_2 = L2_2.table
    L2_2 = L2_2.insert
    L3_2 = A0_2.bufferedEvents
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end

L0_1.queueEvent = L1_1
L0_1 = EventManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = _G
  L2_2 = L2_2.assert
  L3_2 = A1_2.id
  L3_2 = L3_2 ~= nil
  L4_2 = "Event ID was not defined (it's probably not defined in events.lua, or it is misspelled in call)"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.eventListeners
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L2_2 = A0_2.eventListeners
    L3_2 = A1_2.id
    L2_2 = L2_2[L3_2]
    if L2_2 == nil then
      goto lbl_33
    end
    L2_2 = A0_2.eventListeners
    L3_2 = A1_2.id
    L2_2 = L2_2[L3_2]
    L2_2 = #L2_2
    if L2_2 ~= 0 then
      goto lbl_33
    end
  end
  L2_2 = gamelua
  L2_2 = L2_2.print
  L3_2 = "* WARNING EventManager has no listeners for this type of event: "
  L4_2 = A1_2.id
  L5_2 = " \n"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  ::lbl_33::
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = A0_2.eventListeners
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A1_2.id
    if L5_2 == L7_2 then
      L7_2 = _G
      L7_2 = L7_2.pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        L13_2 = L11_2
        L12_2 = L11_2.eventTriggered
        L14_2 = A1_2
        L12_2(L13_2, L14_2)
      end
    end
  end
end

L0_1.notify = L1_1
