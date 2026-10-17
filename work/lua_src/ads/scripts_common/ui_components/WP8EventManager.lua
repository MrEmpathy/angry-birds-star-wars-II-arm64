local L0_1, L1_1
L0_1 = {}
WP8EventManager = L0_1
L0_1 = WP8EventManager

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
L0_1 = WP8EventManager

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOW_REGISTRATION_DIALOG
  if L2_2 == L3_2 then
    L2_2 = gamelua
    L2_2 = L2_2.assert
    L3_2 = gamelua
    L3_2 = L3_2.gamerService
    if not L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.marketplace
    end
    L4_2 = "GamerService isn't activated."
    L2_2(L3_2, L4_2)
    L2_2 = gamelua
    L2_2 = L2_2.gamerService
    if not L2_2 then
      L2_2 = gamelua
      L2_2 = L2_2.marketplace
      if not L2_2 then
        goto lbl_39
      end
    end
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
  end
  ::lbl_39::
end

L0_1.eventTriggered = L1_1
