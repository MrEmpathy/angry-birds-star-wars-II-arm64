local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ClaimBadge = L0_1
L0_1 = ClaimBadge

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "claimBG"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bg = L1_2
  L1_2 = A0_2.bg
  L2_2 = {}
  L2_2.left = "BOX_COUNTER_MEDAL_LEFT"
  L2_2.center = "BOX_COUNTER_MEDAL_MID"
  L2_2.right = "BOX_COUNTER_MEDAL_RIGHT"
  L1_2.components = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.bg
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "claimIcon"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.setImage
  L4_2 = "ICON_MEDAL_SMALL"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = gamelua
  L2_2 = L2_2.getClaimableRewards
  L2_2 = L2_2()
  L3_2 = ui
  L3_2 = L3_2.Text
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "claimAmount"
  L6_2 = gamelua
  L6_2 = L6_2.getFontCrimsonBasic
  L6_2 = L6_2()
  L5_2.font = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = ""
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2.text = L4_2
  L3_2.vanchor = "VCENTER"
  L3_2.hanchor = "LEFT"
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L2_2 <= 0 then
    A0_2.visible = false
  end
end

L0_1.init = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.scale = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "claimIcon"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "claimAmount"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.setScale
  L6_2 = A1_2 * 0.75
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.setScale
  L6_2 = A1_2 * 0.8
  L4_2(L5_2, L6_2)
end

L0_1.setScale = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.scale
  L1_2 = L1_2 * 0.5
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "claimIcon"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "claimAmount"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.setFont
  L5_2 = gamelua
  L5_2 = L5_2.getFontCrimsonBasic
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = _G
  L4_2 = L4_2.res
  L4_2 = L4_2.getStringWidth
  L5_2 = _G
  L5_2 = L5_2.tostring
  L6_2 = L3_2.text
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = L4_2 * L1_2
  L4_2 = L4_2 * 0.8
  L5_2 = L2_2.w
  L5_2 = L5_2 * 0.75
  L6_2 = A0_2.scale
  L5_2 = L5_2 * L6_2
  L5_2 = L4_2 + L5_2
  L6_2 = L2_2.w
  L6_2 = L6_2 * 0.75
  L7_2 = A0_2.scale
  L6_2 = L6_2 * L7_2
  L6_2 = L4_2 + L6_2
  L7_2 = A0_2.bg
  L8_2 = L7_2
  L7_2 = L7_2.getRightBlockW
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.bg
  L8_2 = L7_2
  L7_2 = L7_2.getLeftBlockW
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 - L7_2
  L8_2 = L3_2
  L7_2 = L3_2.getFontLeading
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * L1_2
  L8_2 = gamelua
  L8_2 = L8_2.getUIScale
  L8_2 = L8_2()
  if L8_2 < 0.8 then
    L8_2 = A0_2.scale
    L8_2 = 20 * L8_2
    L6_2 = L6_2 + L8_2
    L8_2 = A0_2.scale
    L8_2 = 10 * L8_2
    L7_2 = L7_2 + L8_2
  else
    L8_2 = A0_2.scale
    L8_2 = 15 * L8_2
    L6_2 = L6_2 + L8_2
  end
  L8_2 = A0_2.bg
  L9_2 = L8_2
  L8_2 = L8_2.setSize
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = _G
  L8_2 = L8_2.res
  L8_2 = L8_2.getSpriteBounds
  L9_2 = L2_2.image
  L8_2, L9_2 = L8_2(L9_2)
  L10_2 = A0_2.scale
  L10_2 = L8_2 * L10_2
  L11_2 = A0_2.scale
  L9_2 = L9_2 * L11_2
  L8_2 = L10_2
  L10_2 = -L5_2
  L10_2 = L10_2 * 0.5
  L11_2 = L2_2.w
  L11_2 = L11_2 * 0.75
  L11_2 = L11_2 * 0.5
  L12_2 = A0_2.scale
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L2_2.x = L10_2
  L10_2 = L2_2.x
  L11_2 = L2_2.w
  L11_2 = L11_2 * 0.75
  L11_2 = L11_2 * 0.5
  L12_2 = A0_2.scale
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L3_2.x = L10_2
end

L0_1.layout = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_UPDATE_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.onEntry = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_UPDATE_REWARD
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.onExit = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2, A1_2, A2_2)
  A0_2.globalX = A1_2
  A0_2.globalY = A2_2
end

L0_1.setGlobalCoordinates = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = gamelua
  L1_2 = L1_2.getClaimableRewards
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "claimAmount"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ""
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2.text = L3_2
  if L1_2 <= 0 then
    A0_2.visible = false
  else
    L3_2 = A0_2.visible
    if L3_2 == false then
      L3_2 = A0_2.globalX
      if L3_2 ~= nil then
        L3_2 = A0_2.globalY
        if L3_2 ~= nil then
          L3_2 = gamelua
          L3_2 = L3_2.playAudio
          L4_2 = "lightsabre_impact_2"
          L3_2(L4_2)
          L3_2 = gamelua
          L3_2 = L3_2.putMenuParticles
          L4_2 = {}
          L5_2 = A0_2.globalX
          L4_2.x = L5_2
          L5_2 = A0_2.globalY
          L4_2.y = L5_2
          L4_2.particles = "newHighScoreStars"
          L4_2.amount = 20
          L3_2(L4_2)
        end
      end
      A0_2.visible = true
    end
  end
end

L0_1.updateClaimBadgeStatus = L1_1
L0_1 = ClaimBadge

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.id
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_SHOP_CLAIM_REWARD
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.updateClaimBadgeStatus
    L2_2(L3_2)
  else
    L2_2 = A1_2.id
    L3_2 = gamelua
    L3_2 = L3_2.events
    L3_2 = L3_2.EID_SHOP_UPDATE_REWARD
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.updateClaimBadgeStatus
      L2_2(L3_2)
    end
  end
end

L0_1.eventTriggered = L1_1
