local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
WarpTransition = L0_1
L0_1 = 6
warpDuration = L0_1
L0_1 = WarpTransition

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = ui
  L4_2 = L4_2.Image
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = A1_2
  L6_2.timer = A3_2
  L6_2.visible = false
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setImage
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L4_2.x = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.addChild
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end

L0_1.addFrame = L1_1
L0_1 = WarpTransition

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  A0_2.stars = L1_2
  A0_2.starSpawnTimer = 0
  L1_2 = warpDuration
  A0_2.timer = L1_2
  A0_2.flashAlpha = 1
  A0_2.isFadeIn = true
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "bg"
  L3_2.timer = 0
  L3_2.visible = true
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bg = L1_2
  L1_2 = A0_2.bg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "BTN_BG_LIGHT"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.bg
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L1_2 = A0_2.bg
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
  A0_2.probeAngle = 0
  L1_2 = warpDuration
  L1_2 = L1_2 / 20
  A0_2.probeScaleDivider = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.screenWidth
  L1_2 = L1_2 * 0.2
  A0_2.probeDistanceFromCenter = L1_2
  L1_2 = ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "probe"
  L3_2.timer = 0
  L3_2.visible = true
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.probe = L1_2
  L1_2 = A0_2.probe
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "GOLDEN_EGG_FLYING"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.probe
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = L2_2 * 0.5
  L1_2.x = L2_2
  L1_2 = A0_2.probe
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L2_2 = L2_2 * 0.5
  L1_2.y = L2_2
  L1_2 = A0_2.probe
  L1_2.scaleX = 3
  L1_2 = A0_2.probe
  L1_2.scaleY = 3
  L1_2 = 1
  L2_2 = 800
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.createLine
    L5_2(L6_2)
  end
end

L0_1.init = L1_1
L0_1 = WarpTransition

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.playAudio
  L2_2 = "space_bonus_warp"
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = WarpTransition

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.res
  L1_2 = L1_2.getSpriteBounds
  L2_2 = A0_2.bg
  L2_2 = L2_2.image
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L3_2 = L3_2 / L1_2
  L4_2 = gamelua
  L4_2 = L4_2.screenHeight
  L4_2 = L4_2 / L2_2
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.max
  L6_2 = 1
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.print
  L7_2 = "scale: "
  L8_2 = L5_2
  L7_2 = L7_2 .. L8_2
  L6_2(L7_2)
  L6_2 = A0_2.bg
  L6_2.scaleX = L5_2
  L6_2 = A0_2.bg
  L6_2.scaleY = L5_2
  L6_2 = A0_2.bg
  L7_2 = gamelua
  L7_2 = L7_2.screenWidth
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L6_2 = A0_2.bg
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.5
  L6_2.y = L7_2
  L6_2 = A0_2.probe
  L7_2 = gamelua
  L7_2 = L7_2.screenWidth
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L6_2 = A0_2.probe
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.5
  L6_2.y = L7_2
end

L0_1.layout = L1_1
L0_1 = WarpTransition

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end

L0_1.onPointerEvent = L1_1
L0_1 = WarpTransition

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.timer
  L3_2 = L3_2 - A1_2
  A0_2.timer = L3_2
  L3_2 = A0_2.timer
  if L3_2 < 2 then
    L3_2 = A0_2.flashAlpha
    if L3_2 == nil then
      A0_2.flashAlpha = 0
    end
  end
  L3_2 = warpDuration
  L4_2 = A0_2.timer
  L3_2 = L3_2 - L4_2
  L4_2 = warpDuration
  L3_2 = L3_2 / L4_2
  elapsed = L3_2
  L3_2 = A0_2.timer
  if L3_2 <= 1 then
    L3_2 = A0_2.reverseT
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.setNextLevel
      L3_2()
    else
      L3_2 = gamelua
      L3_2 = L3_2.fireAction
      L4_2 = "loadBonusLevel"
      L5_2 = {}
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = {}
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.stars
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.timer
    if 3.5 < L9_2 then
      L9_2 = elapsed
      L9_2 = L9_2 * 400
      L8_2.speed = L9_2
      L9_2 = L8_2.length
      L10_2 = L8_2.speed
      L10_2 = L10_2 * A1_2
      L9_2 = L9_2 + L10_2
      L8_2.length = L9_2
      L9_2 = L8_2.thickness
      L10_2 = L8_2.speed
      L10_2 = L10_2 * A1_2
      L10_2 = L10_2 * 0.1
      L9_2 = L9_2 + L10_2
      L8_2.thickness = L9_2
    else
      L9_2 = elapsed
      L10_2 = elapsed
      L9_2 = L9_2 * L10_2
      L10_2 = elapsed
      L9_2 = L9_2 * L10_2
      L9_2 = L9_2 * 10000
      L8_2.speed = L9_2
      L9_2 = L8_2.length
      L10_2 = L8_2.speed
      L10_2 = L10_2 * A1_2
      L9_2 = L9_2 + L10_2
      L8_2.length = L9_2
      L9_2 = L8_2.thickness
      L10_2 = L8_2.speed
      L10_2 = L10_2 * A1_2
      L10_2 = L10_2 * 0.1
      L9_2 = L9_2 + L10_2
      L8_2.thickness = L9_2
      L9_2 = L8_2.x
      L10_2 = L8_2.cos
      L11_2 = L8_2.speed
      L10_2 = L10_2 * L11_2
      L10_2 = L10_2 * A1_2
      L9_2 = L9_2 + L10_2
      L8_2.x = L9_2
      L9_2 = L8_2.y
      L10_2 = L8_2.sin
      L11_2 = L8_2.speed
      L10_2 = L10_2 * L11_2
      L10_2 = L10_2 * A1_2
      L9_2 = L9_2 + L10_2
      L8_2.y = L9_2
    end
    L9_2 = L8_2.x
    if not (L9_2 < 0) then
      L9_2 = L8_2.x
      L10_2 = gamelua
      L10_2 = L10_2.screenWidth
      if not (L9_2 > L10_2) then
        L9_2 = L8_2.y
        if not (L9_2 < 0) then
          L9_2 = L8_2.y
          L10_2 = gamelua
          L10_2 = L10_2.screenHeight
          if not (L9_2 > L10_2) then
            goto lbl_117
          end
        end
      end
    end
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    ::lbl_117::
  end
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = _G
    L9_2 = L9_2.table
    L9_2 = L9_2.remove
    L10_2 = A0_2.stars
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = A0_2.probe
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.sqrt
  L6_2 = warpDuration
  L7_2 = A0_2.timer
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.probeScaleDivider
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2(L6_2)
  L5_2 = 3 - L5_2
  L4_2.scaleX = L5_2
  L4_2 = A0_2.probe
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.sqrt
  L6_2 = warpDuration
  L7_2 = A0_2.timer
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.probeScaleDivider
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2(L6_2)
  L5_2 = 3 - L5_2
  L4_2.scaleY = L5_2
  L4_2 = A0_2.probe
  L4_2 = L4_2.scaleX
  if L4_2 < 0 then
    L4_2 = A0_2.probe
    L4_2.scaleX = 0
  end
  L4_2 = A0_2.probe
  L4_2 = L4_2.scaleY
  if L4_2 < 0 then
    L4_2 = A0_2.probe
    L4_2.scaleY = 0
  end
  L4_2 = A0_2.flashAlpha
  if L4_2 then
    L4_2 = A0_2.isFadeIn
    if L4_2 then
      L4_2 = A0_2.flashAlpha
      L4_2 = L4_2 - A1_2
      A0_2.flashAlpha = L4_2
      L4_2 = A0_2.flashAlpha
      if L4_2 < 0 then
        A0_2.flashAlpha = nil
        A0_2.isFadeIn = false
      end
    else
      L4_2 = A0_2.flashAlpha
      L4_2 = L4_2 + A1_2
      A0_2.flashAlpha = L4_2
      L4_2 = A0_2.flashAlpha
      if 0.5 < L4_2 then
        A0_2.flashAlpha = 0.5
      end
    end
  end
end

L0_1.update = L1_1
L0_1 = WarpTransition

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  newLine = L1_2
  L1_2 = newLine
  L1_2.speed = 0
  L1_2 = newLine
  L2_2 = {}
  L3_2 = 255
  L4_2 = 255
  L5_2 = 255
  L6_2 = 255
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L1_2.color = L2_2
  L1_2 = newLine
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L3_2 = L3_2()
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L1_2 = newLine
  L2_2 = gamelua
  L2_2 = L2_2.screenHeight
  L3_2 = _G
  L3_2 = L3_2.math
  L3_2 = L3_2.random
  L3_2 = L3_2()
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L1_2 = newLine
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.atan2
  L3_2 = newLine
  L3_2 = L3_2.y
  L4_2 = gamelua
  L4_2 = L4_2.screenHeight
  L4_2 = L4_2 * 0.5
  L3_2 = L3_2 - L4_2
  L4_2 = newLine
  L4_2 = L4_2.x
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L5_2 = L5_2 * 0.5
  L4_2 = L4_2 - L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.angle = L2_2
  L1_2 = newLine
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.cos
  L3_2 = newLine
  L3_2 = L3_2.angle
  L2_2 = L2_2(L3_2)
  L1_2.cos = L2_2
  L1_2 = newLine
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.sin
  L3_2 = newLine
  L3_2 = L3_2.angle
  L2_2 = L2_2(L3_2)
  L1_2.sin = L2_2
  L1_2 = newLine
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = 1024 / L2_2
  L2_2 = 4 / L2_2
  L1_2.length = L2_2
  L1_2 = newLine
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = 1024 / L2_2
  L2_2 = 4 / L2_2
  L1_2.thickness = L2_2
  L1_2 = _G
  L1_2 = L1_2.table
  L1_2 = L1_2.insert
  L2_2 = A0_2.stars
  L3_2 = newLine
  L1_2(L2_2, L3_2)
end

L0_1.createLine = L1_1
L0_1 = WarpTransition

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = A0_2.bg
  L4_2 = L3_2
  L3_2 = L3_2.draw
  L3_2(L4_2)
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A0_2.stars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = gamelua
    L8_2 = L8_2.drawTexturedLine2D
    L9_2 = "LIGHTWARP_1"
    L10_2 = L7_2.x
    L11_2 = L7_2.y
    L12_2 = L7_2.x
    L13_2 = L7_2.cos
    L14_2 = L7_2.length
    L13_2 = L13_2 * L14_2
    L12_2 = L12_2 + L13_2
    L13_2 = L7_2.y
    L14_2 = L7_2.sin
    L15_2 = L7_2.length
    L14_2 = L14_2 * L15_2
    L13_2 = L13_2 + L14_2
    L14_2 = L7_2.thickness
    L15_2 = L7_2.color
    L15_2 = L15_2[1]
    L16_2 = L7_2.color
    L16_2 = L16_2[2]
    L17_2 = L7_2.color
    L17_2 = L17_2[3]
    L18_2 = L7_2.color
    L18_2 = L18_2[4]
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L3_2 = A0_2.probe
  L4_2 = L3_2
  L3_2 = L3_2.draw
  L3_2(L4_2)
  L3_2 = A0_2.flashAlpha
  if L3_2 ~= nil then
    L3_2 = A0_2.isFadeIn
    if L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.drawRect
      L4_2 = 1
      L5_2 = 1
      L6_2 = 1
      L7_2 = A0_2.flashAlpha
      L8_2 = 0
      L9_2 = 0
      L10_2 = gamelua
      L10_2 = L10_2.screenWidth
      L11_2 = gamelua
      L11_2 = L11_2.screenHeight
      L12_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L3_2 = gamelua
      L3_2 = L3_2.drawRect
      L4_2 = 1
      L5_2 = 1
      L6_2 = 1
      L7_2 = A0_2.flashAlpha
      L7_2 = L7_2 * 2
      L8_2 = 0
      L9_2 = 0
      L10_2 = gamelua
      L10_2 = L10_2.screenWidth
      L11_2 = gamelua
      L11_2 = L11_2.screenHeight
      L12_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end

L0_1.draw = L1_1
L0_1 = WarpTransition

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = gamelua
  L1_2.fadeIsFadeIn = true
  L1_2 = gamelua
  L1_2.fadeTotalTimer = 1
  L1_2 = gamelua
  L1_2.fadeTimer = 0
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
