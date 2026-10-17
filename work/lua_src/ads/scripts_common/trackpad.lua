local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = 0
frame = L0_1
L0_1 = 0
last_touch_frame = L0_1
L0_1 = true
using_mouse = L0_1
L0_1 = {}
L0_1.x = 0
L0_1.y = 0
last_cursor = L0_1
L0_1 = {}
last_touches = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = frame
  L1_2 = L1_2 + 1
  frame = L1_2
  L1_2 = 15
  L2_2 = gamelua
  L2_2 = L2_2.touchcount
  if 0 < L2_2 then
    L2_2 = frame
    last_touch_frame = L2_2
    L2_2 = false
    using_mouse = L2_2
  else
    L2_2 = gamelua
    L2_2 = L2_2.touchcount
    if L2_2 == 0 then
      L2_2 = frame
      L3_2 = last_touch_frame
      L3_2 = L3_2 + L1_2
      if L2_2 > L3_2 then
        L2_2 = gamelua
        L2_2 = L2_2.cursor
        L2_2 = L2_2.x
        L3_2 = last_cursor
        L3_2 = L3_2.x
        if L2_2 == L3_2 then
          L2_2 = gamelua
          L2_2 = L2_2.cursor
          L2_2 = L2_2.y
          L3_2 = last_cursor
          L3_2 = L3_2.y
          if L2_2 == L3_2 then
            goto lbl_39
          end
        end
        L2_2 = true
        using_mouse = L2_2
      end
    end
  end
  ::lbl_39::
  L2_2 = last_cursor
  L3_2 = gamelua
  L3_2 = L3_2.cursor
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = last_cursor
  L3_2 = gamelua
  L3_2 = L3_2.cursor
  L3_2 = L3_2.y
  L2_2.y = L3_2
  L2_2 = gamelua
  L2_2 = L2_2.isInFullScreenMode
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = using_mouse
    if not L2_2 then
      L2_2 = gamelua
      L2_2.g_usedGestureControls = true
    end
  end
  L2_2 = false
  L3_2 = gamelua
  L3_2 = L3_2.releaseBuild
  if not L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.keyHold
    L3_2 = L3_2.E
    if L3_2 then
      L2_2 = true
    end
  end
  L3_2 = gamelua
  L3_2 = L3_2.isInGameplay
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = using_mouse
    if not L3_2 then
      L3_2 = gamelua
      L3_2 = L3_2.isInFullScreenMode
      L3_2 = L3_2()
    end
  end
  if not L3_2 and not L2_2 then
    L3_2 = emulateMouse
    L3_2()
    if not L2_2 then
      L3_2 = gamelua
      L3_2 = L3_2.captureMouse
      L4_2 = false
      L3_2(L4_2)
    end
  else
    L3_2 = gamelua
    L3_2.g_usingGestureControls = true
    if not L2_2 then
      L3_2 = gamelua
      L3_2 = L3_2.captureMouse
      L4_2 = true
      L3_2(L4_2)
    end
  end
end

updateTrackpad = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = gamelua
  L0_2 = L0_2.keyHold
  L0_2 = L0_2.LBUTTON
  if L0_2 then
    L0_2 = gamelua
    L0_2.touchcount = 1
    L0_2 = gamelua
    L1_2 = {}
    L2_2 = {}
    L3_2 = gamelua
    L3_2 = L3_2.cursor
    L3_2 = L3_2.x
    L2_2.x = L3_2
    L3_2 = gamelua
    L3_2 = L3_2.cursor
    L3_2 = L3_2.y
    L2_2.y = L3_2
    L1_2[1] = L2_2
    L0_2.touches = L1_2
  else
    L0_2 = gamelua
    L0_2.touchcount = 0
    L0_2 = gamelua
    L1_2 = {}
    L0_2.touches = L1_2
  end
  L0_2 = gamelua
  L0_2.g_usingGestureControls = false
end

emulateMouse = L0_1
