local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.deviceModel
if L0_1 == "roku" then
  L0_1 = gamelua
  L0_1 = L0_1.setAccelerometerSensitivity
  L1_1 = 0.4
  L0_1(L1_1)
end

function L0_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = gamelua
    L1_2 = L1_2.isMouseCaptured
    L1_2 = L1_2()
    A0_2 = not L1_2
  end
  L1_2 = gamelua
  L1_2 = L1_2.captureMouse
  L2_2 = A0_2
  L1_2(L2_2)
end

function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = gamelua
  L1_2 = L1_2.isInGameplay
  L1_2 = L1_2()
  L0_2(L1_2)
end

update = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = gamelua
  L0_2 = L0_2.menuManager
  L1_2 = L0_2
  L0_2 = L0_2.getTopFrame
  L0_2 = L0_2(L1_2)
  L1_2 = gamelua
  L1_2 = L1_2.isInGameplay
  L1_2 = L1_2()
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L1_2 = L0_2.hideCursor
    L1_2 = not L1_2 and L1_2
  end
  return L1_2
end

isCursorVisible = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = isCursorVisible
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = _G
    L0_2 = L0_2.assert
    L1_2 = gamelua
    L1_2 = L1_2.isMouseCaptured
    L1_2 = L1_2()
    L1_2 = not L1_2
    L2_2 = "delta mode activated outside of gameplay"
    L0_2(L1_2, L2_2)
    L0_2 = _G
    L0_2 = L0_2.res
    L0_2 = L0_2.drawSprite
    L1_2 = gamelua
    L1_2 = L1_2.g_currentCursorName
    L2_2 = gamelua
    L2_2 = L2_2.cursor
    L2_2 = L2_2.x
    L3_2 = gamelua
    L3_2 = L3_2.cursor
    L3_2 = L3_2.y
    L0_2(L1_2, L2_2, L3_2)
  else
    L0_2 = gamelua
    L0_2 = L0_2.isInGameplay
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = gamelua
      L0_2 = L0_2.g_laserGestureMode
      if L0_2 then
        L0_2 = _G
        L0_2 = L0_2.res
        L0_2 = L0_2.drawSprite
        L1_2 = "RETICLE_1"
        L2_2 = gamelua
        L2_2 = L2_2.laser_cursor
        L2_2 = L2_2.x
        L3_2 = gamelua
        L3_2 = L3_2.laser_cursor
        L3_2 = L3_2.y
        L0_2(L1_2, L2_2, L3_2)
      end
    end
  end
end

drawCursor = L1_1
