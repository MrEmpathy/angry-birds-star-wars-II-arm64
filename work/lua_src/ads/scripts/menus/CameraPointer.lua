local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CameraPointer = L0_1
L0_1 = CameraPointer

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.CameraRing
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.third = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.third
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.CameraRing
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.scale = 0.75
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.second = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.second
  L1_2(L2_2, L3_2)
  L1_2 = ui
  L1_2 = L1_2.CameraRing
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.scale = 0.55
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.first = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.first
  L1_2(L2_2, L3_2)
  A0_2.orientation = "LEFT"
  L1_2 = A0_2.first
  L1_2 = L1_2.w
  A0_2.w = L1_2
  L1_2 = A0_2.first
  L1_2 = L1_2.h
  A0_2.h = L1_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.name = "cameraCenter"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.cameraCenter = L1_2
  L1_2 = A0_2.cameraCenter
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ICON_QR_ARC_CENTER"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.cameraCenter
  L1_2(L2_2, L3_2)
  A0_2.currentTime = nil
  A0_2.currentRingIndx = 0
  L1_2 = {}
  L2_2 = A0_2.first
  L3_2 = A0_2.second
  L4_2 = A0_2.third
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2.rings = L1_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = CameraPointer

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2.rings
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.rings
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setAlpha
    L7_2 = 0.5
    L5_2(L6_2, L7_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = CameraPointer

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.orientation = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.layout
  L2_2(L3_2)
end

L0_1.setOrientation = L1_1
L0_1 = CameraPointer

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.angle = A1_2
  L2_2 = A0_2.first
  L3_2 = A0_2.angle
  L2_2.angle = L3_2
  L2_2 = A0_2.second
  L3_2 = A0_2.angle
  L2_2.angle = L3_2
  L2_2 = A0_2.third
  L3_2 = A0_2.angle
  L2_2.angle = L3_2
end

L0_1.setAngle = L1_1
L0_1 = CameraPointer

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L2_2 = _G
  L2_2 = L2_2.res
  L2_2 = L2_2.getSpriteBounds
  L3_2 = "ICON_QR_ARROW"
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = A0_2.orientation
  if L4_2 == "LEFT" then
    L5_2 = A0_2
    L4_2 = A0_2.setAngle
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.first
    L4_2.y = 0
    L4_2 = A0_2.second
    L5_2 = A0_2.first
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L4_2 = A0_2.third
    L5_2 = A0_2.first
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L4_2 = A0_2.first
    L5_2 = A0_2.cameraCenter
    L5_2 = L5_2.w
    L5_2 = L5_2 * L1_2
    L5_2 = L5_2 * 1.2
    L6_2 = 30 * L1_2
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
    L4_2 = A0_2.second
    L5_2 = A0_2.first
    L5_2 = L5_2.x
    L6_2 = L2_2 * L1_2
    L6_2 = L6_2 * 0.7
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
    L4_2 = A0_2.third
    L5_2 = A0_2.second
    L5_2 = L5_2.x
    L6_2 = L2_2 * L1_2
    L6_2 = L6_2 * 0.7
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
  else
    L4_2 = A0_2.orientation
    if L4_2 == "RIGHT" then
      L5_2 = A0_2
      L4_2 = A0_2.setAngle
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.pi
      L4_2(L5_2, L6_2)
      L4_2 = A0_2.first
      L4_2.y = 0
      L4_2 = A0_2.second
      L5_2 = A0_2.first
      L5_2 = L5_2.y
      L4_2.y = L5_2
      L4_2 = A0_2.third
      L5_2 = A0_2.first
      L5_2 = L5_2.y
      L4_2.y = L5_2
      L4_2 = A0_2.first
      L5_2 = A0_2.cameraCenter
      L5_2 = L5_2.w
      L5_2 = L5_2 * L1_2
      L5_2 = L5_2 * 1.2
      L6_2 = 30 * L1_2
      L5_2 = L5_2 + L6_2
      L5_2 = -L5_2
      L4_2.x = L5_2
      L4_2 = A0_2.second
      L5_2 = A0_2.first
      L5_2 = L5_2.x
      L6_2 = L2_2 * L1_2
      L6_2 = L6_2 * 0.7
      L5_2 = L5_2 - L6_2
      L4_2.x = L5_2
      L4_2 = A0_2.third
      L5_2 = A0_2.second
      L5_2 = L5_2.x
      L6_2 = L2_2 * L1_2
      L6_2 = L6_2 * 0.7
      L5_2 = L5_2 - L6_2
      L4_2.x = L5_2
    else
      L4_2 = A0_2.orientation
      if L4_2 == "UP" then
        L5_2 = A0_2
        L4_2 = A0_2.setAngle
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.pi
        L6_2 = L6_2 / 2
        L4_2(L5_2, L6_2)
        L4_2 = A0_2.first
        L4_2.x = 0
        L4_2 = A0_2.second
        L5_2 = A0_2.first
        L5_2 = L5_2.x
        L4_2.x = L5_2
        L4_2 = A0_2.third
        L5_2 = A0_2.first
        L5_2 = L5_2.x
        L4_2.x = L5_2
        L4_2 = A0_2.first
        L5_2 = A0_2.cameraCenter
        L5_2 = L5_2.w
        L5_2 = L5_2 * L1_2
        L5_2 = L5_2 * 1.2
        L6_2 = 30 * L1_2
        L5_2 = L5_2 + L6_2
        L4_2.y = L5_2
        L4_2 = A0_2.second
        L5_2 = A0_2.first
        L5_2 = L5_2.y
        L6_2 = L2_2 * L1_2
        L6_2 = L6_2 * 0.7
        L5_2 = L5_2 + L6_2
        L4_2.y = L5_2
        L4_2 = A0_2.third
        L5_2 = A0_2.second
        L5_2 = L5_2.y
        L6_2 = L2_2 * L1_2
        L6_2 = L6_2 * 0.7
        L5_2 = L5_2 + L6_2
        L4_2.y = L5_2
      end
    end
  end
  L4_2 = A0_2.cameraCenter
  L5_2 = A0_2.cameraCenter
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L4_2 = A0_2.cameraCenter
  L5_2 = L4_2
  L4_2 = L4_2.setScale
  L6_2 = 1.2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.first
  L5_2 = L4_2
  L4_2 = L4_2.setScale
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.second
  L5_2 = L4_2
  L4_2 = L4_2.setScale
  L6_2 = L1_2 * 0.9
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.third
  L5_2 = L4_2
  L4_2 = L4_2.setScale
  L6_2 = L1_2 * 0.8
  L4_2(L5_2, L6_2)
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
end

L0_1.layout = L1_1
L0_1 = CameraPointer

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.currentTime
  if not L3_2 then
    A0_2.currentTime = A2_2
  end
  L3_2 = A0_2.currentTime
  L3_2 = A2_2 - L3_2
  if 0.5 <= L3_2 then
    A0_2.currentTime = A2_2
    L3_2 = A0_2.currentRingIndx
    L4_2 = A0_2.rings
    L4_2 = #L4_2
    if L3_2 == L4_2 then
      A0_2.currentRingIndx = 0
      L3_2 = 1
      L4_2 = A0_2.rings
      L4_2 = #L4_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = A0_2.rings
        L7_2 = L7_2[L6_2]
        L8_2 = L7_2
        L7_2 = L7_2.setAlpha
        L9_2 = 0.5
        L7_2(L8_2, L9_2)
      end
      return
    else
      L3_2 = A0_2.currentRingIndx
      L3_2 = L3_2 + 1
      A0_2.currentRingIndx = L3_2
    end
    L3_2 = A0_2.rings
    L4_2 = A0_2.currentRingIndx
    L3_2 = L3_2[L4_2]
    L4_2 = L3_2
    L3_2 = L3_2.setAlpha
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = CameraPointer

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.draw
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.draw = L1_1
L0_1 = CameraPointer

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
CameraRing = L0_1
L0_1 = CameraRing

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.centerImg = L1_2
  L1_2 = A0_2.centerImg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ICON_QR_ARROW"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.centerImg
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.topImg = L1_2
  L1_2 = A0_2.topImg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ICON_QR_ARROW"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.topImg
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bottomImg = L1_2
  L1_2 = A0_2.bottomImg
  L2_2 = L1_2
  L1_2 = L1_2.setImage
  L3_2 = "ICON_QR_ARROW"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.addChild
  L3_2 = A0_2.bottomImg
  L1_2(L2_2, L3_2)
  A0_2.alpha = 1
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = CameraRing

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.x
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.cos
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 * L4_2
  L4_2 = A1_2.y
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.sin
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 * 1
  L4_2 = A0_2.scaleX
  L3_2 = L3_2 / L4_2
  L4_2 = A1_2.x
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.sin
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  L5_2 = A1_2.y
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.cos
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = A1_2.y
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 * 1
  L5_2 = A0_2.scaleY
  L4_2 = L4_2 / L5_2
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end

L0_1.rotate = L1_1
L0_1 = CameraRing

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.scale
  if not L1_2 then
    L1_2 = 1
  end
  L2_2 = {}
  L3_2 = A0_2.x
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L2_2.y = L3_2
  L3_2 = A0_2.topImg
  L4_2 = A0_2.topImg
  L6_2 = A0_2
  L5_2 = A0_2.rotate
  L7_2 = L2_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.pi
  L8_2 = -L8_2
  L8_2 = L8_2 / 5
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.y = L6_2
  L3_2.x = L5_2
  L3_2 = A0_2.bottomImg
  L4_2 = A0_2.bottomImg
  L6_2 = A0_2
  L5_2 = A0_2.rotate
  L7_2 = L2_2
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.pi
  L8_2 = L8_2 / 5
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.y = L6_2
  L3_2.x = L5_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.layout
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.layout = L1_1
L0_1 = CameraRing

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.setRenderState
  L4_2 = A0_2.x
  L4_2 = L4_2 + A1_2
  L5_2 = A0_2.scaleX
  L4_2 = L4_2 / L5_2
  L5_2 = A0_2.y
  L5_2 = L5_2 + A2_2
  L6_2 = A0_2.scaleY
  L5_2 = L5_2 / L6_2
  L6_2 = A0_2.scaleX
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = A0_2.scaleY
  if not L7_2 then
    L7_2 = 1
  end
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.pi
  L8_2 = L8_2 / 5
  L9_2 = A0_2.angle
  L8_2 = L8_2 + L9_2
  L9_2 = A0_2.bottomImg
  L9_2 = L9_2.w
  L9_2 = L9_2 / 2
  L10_2 = A0_2.bottomImg
  L10_2 = L10_2.h
  L10_2 = L10_2 / 2
  L11_2 = A0_2.alpha
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.drawSprite
  L4_2 = ""
  L5_2 = A0_2.bottomImg
  L5_2 = L5_2.image
  L6_2 = A0_2.bottomImg
  L6_2 = L6_2.x
  L7_2 = A0_2.bottomImg
  L7_2 = L7_2.y
  L8_2 = "HPIVOT"
  L9_2 = "VPIVOT"
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = A0_2.bottomImg
  L11_2 = L11_2.w
  L10_2 = L10_2(L11_2)
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.floor
  L12_2 = A0_2.bottomImg
  L12_2 = L12_2.h
  L11_2, L12_2 = L11_2(L12_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = gamelua
  L3_2 = L3_2.setRenderState
  L4_2 = A0_2.x
  L4_2 = L4_2 + A1_2
  L5_2 = A0_2.scaleX
  L4_2 = L4_2 / L5_2
  L5_2 = A0_2.y
  L5_2 = L5_2 + A2_2
  L6_2 = A0_2.scaleY
  L5_2 = L5_2 / L6_2
  L6_2 = A0_2.scaleX
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = A0_2.scaleY
  if not L7_2 then
    L7_2 = 1
  end
  L8_2 = A0_2.angle
  L9_2 = A0_2.centerImg
  L9_2 = L9_2.w
  L9_2 = L9_2 / 2
  L10_2 = A0_2.centerImg
  L10_2 = L10_2.h
  L10_2 = L10_2 / 2
  L11_2 = A0_2.alpha
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.drawSprite
  L4_2 = ""
  L5_2 = A0_2.centerImg
  L5_2 = L5_2.image
  L6_2 = A0_2.centerImg
  L6_2 = L6_2.x
  L7_2 = A0_2.centerImg
  L7_2 = L7_2.y
  L8_2 = "HPIVOT"
  L9_2 = "VPIVOT"
  L10_2 = _G
  L10_2 = L10_2.math
  L10_2 = L10_2.floor
  L11_2 = A0_2.centerImg
  L11_2 = L11_2.w
  L10_2 = L10_2(L11_2)
  L11_2 = _G
  L11_2 = L11_2.math
  L11_2 = L11_2.floor
  L12_2 = A0_2.centerImg
  L12_2 = L12_2.h
  L11_2, L12_2 = L11_2(L12_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = gamelua
  L3_2 = L3_2.setRenderState
  L4_2 = A0_2.x
  L4_2 = L4_2 + A1_2
  L5_2 = A0_2.scaleX
  L4_2 = L4_2 / L5_2
  L5_2 = A0_2.y
  L5_2 = L5_2 + A2_2
  L6_2 = A0_2.scaleY
  L5_2 = L5_2 / L6_2
  L6_2 = A0_2.scaleX
  if not L6_2 then
    L6_2 = 1
  end
  L7_2 = A0_2.scaleY
  if not L7_2 then
    L7_2 = 1
  end
  L8_2 = _G
  L8_2 = L8_2.math
  L8_2 = L8_2.pi
  L8_2 = -L8_2
  L8_2 = L8_2 / 5
  L9_2 = A0_2.angle
  L8_2 = L8_2 + L9_2
  L9_2 = A0_2.topImg
  L9_2 = L9_2.w
  L9_2 = L9_2 / 2
  L10_2 = A0_2.topImg
  L10_2 = L10_2.h
  L10_2 = L10_2 / 2
  L11_2 = A0_2.alpha
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = _G
  L3_2 = L3_2.res
  L3_2 = L3_2.drawSprite
  L4_2 = ""
  L5_2 = A0_2.topImg
  L5_2 = L5_2.image
  L6_2 = A0_2.topImg
  L6_2 = L6_2.x
  L7_2 = A0_2.topImg
  L7_2 = L7_2.y
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = gamelua
  L3_2 = L3_2.setRenderState
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1
  L7_2 = 1
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

L0_1.draw = L1_1
L0_1 = CameraRing

function L1_1(A0_2, A1_2)
  A0_2.alpha = A1_2
end

L0_1.setAlpha = L1_1
L0_1 = CameraRing

function L1_1(A0_2, A1_2)
  A0_2.scaleX = A1_2
  A0_2.scaleY = A1_2
end

L0_1.setScale = L1_1
