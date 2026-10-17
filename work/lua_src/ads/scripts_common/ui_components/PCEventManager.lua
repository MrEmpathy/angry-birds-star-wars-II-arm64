local L0_1, L1_1
L0_1 = {}
PCEventManager = L0_1
L0_1 = PCEventManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = _G
  L2_2 = L2_2.setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return A1_2
end

L0_1.new = L1_1
L0_1 = PCEventManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = gamelua
  L2_2 = L2_2.steam
  if L2_2 then
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_SHOW_REGISTRATION_DIALOG
    if L2_2 == L3_2 then
      L2_2 = gamelua
      L2_2 = L2_2.activateGameOverlayToStore
      L2_2()
    end
    return
  end
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOW_REGISTRATION_DIALOG
  if L2_2 == L3_2 then
    L2_2 = gamelua
    L2_2 = L2_2.assert
    L3_2 = gamelua
    L3_2 = L3_2.gamerService
    L3_2 = L3_2 ~= nil
    L4_2 = "Neither GamerService or DRM activated."
    L2_2(L3_2, L4_2)
    L2_2 = gamelua
    L2_2 = L2_2.gamerService
    if L2_2 ~= nil then
      L2_2 = gamelua
      L2_2 = L2_2.TrialVersionPopup
      L3_2 = L2_2
      L2_2 = L2_2.new
      L2_2 = L2_2(L3_2)
      L3_2 = gamelua
      L3_2 = L3_2.eventManager
      L4_2 = L3_2
      L3_2 = L3_2.notify
      L5_2 = {}
      L6_2 = gamelua
      L6_2 = L6_2.events
      L6_2 = L6_2.EID_PUSH_FRAME
      L5_2.id = L6_2
      L5_2.target = L2_2
      L3_2(L4_2, L5_2)
    else
      L2_2 = gamelua
      L2_2 = L2_2.eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = gamelua
      L5_2 = L5_2.events
      L5_2 = L5_2.EID_PUSH_FRAME
      L4_2.id = L5_2
      L5_2 = gamelua
      L5_2 = L5_2.DRM
      L5_2 = L5_2.RegistrationDialog
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = A1_2.from
      L8_2 = A1_2.success_event
      L9_2 = A1_2.success_call
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L4_2.target = L5_2
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_UPDATE_AVAILABLE
    if L2_2 == L3_2 then
      L2_2 = gamelua
      L2_2.g_updateAvailable = true
      L2_2 = gamelua
      L2_2 = L2_2.eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = gamelua
      L5_2 = L5_2.events
      L5_2 = L5_2.EID_PUSH_FRAME
      L4_2.id = L5_2
      L5_2 = gamelua
      L5_2 = L5_2.ui
      L5_2 = L5_2.UpdatePrompt
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = {}
      L7_2.title = [[
New update available!
Download now?]]
      L8_2 = gamelua
      L8_2 = L8_2.events
      L8_2 = L8_2.EID_UPDATE_GAME
      L7_2.returnValue = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2.target = L5_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A1_2.id
      L3_2 = gamelua
      L3_2 = L3_2.events
      L3_2 = L3_2.EID_UPDATE_GAME
      if L2_2 == L3_2 then
        L2_2 = gamelua
        L2_2 = L2_2.callVersionUpdater
        L2_2()
        L2_2 = gamelua
        L2_2 = L2_2.requestExit
        L2_2()
      end
    end
  end
end

L0_1.eventTriggered = L1_1
