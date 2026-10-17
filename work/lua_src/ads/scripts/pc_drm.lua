local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.releaseBuild
if L0_1 then
  L0_1 = "http://cloud.rovio.com/drm/consumeKey/?"
  registration_url = L0_1
  L0_1 = "ABSW22013FL"
  key_type = L0_1
else
  L0_1 = "http://smoke.rovio.com/drm/consumeKey/?"
  registration_url = L0_1
  L0_1 = "shop-full-abj-pc-test"
  key_type = L0_1
end

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  current_key = A0_2
  L1_2 = gamelua
  L1_2 = L1_2.registerKey
  L2_2 = A0_2
  L3_2 = key_type
  L4_2 = registration_url
  L1_2(L2_2, L3_2, L4_2)
end

registerKey = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = gamelua
  L0_2 = L0_2.SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.setHardwareID
  L2_2 = gamelua
  L2_2 = L2_2.getDeviceID
  L2_2 = L2_2()
  L0_2(L1_2, L2_2)
  L0_2 = gamelua
  L0_2 = L0_2.SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.addRegisteredKey
  L2_2 = key_type
  L0_2(L1_2, L2_2)
  L0_2 = gamelua
  L0_2.g_isRegistered = true
end

saveRegistration = L0_1

function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = gamelua
  L0_2 = L0_2.SettingsWrapper
  L1_2 = L0_2
  L0_2 = L0_2.isKeyRegistered
  L2_2 = key_type
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = gamelua
  L0_2 = L0_2.verifyDeviceID
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.getHardwareID
  L1_2, L2_2 = L1_2(L2_2)
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end

checkRegistration = L0_1
