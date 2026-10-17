local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
ui = L0_1
L0_1 = gamelua
L0_1 = L0_1.print
print = L0_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
ScrollFrame = L0_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = {}
  L2_2.x = 0
  L2_2.y = 0
  L1_2[1] = L2_2
  A0_2.anchors = L1_2
  A0_2.scroll_axis = "x"
  L1_2 = {}
  L1_2.x1 = 0
  L1_2.y1 = 0
  L1_2.x2 = 0
  L1_2.y2 = 0
  A0_2.aabb = L1_2
  A0_2.clip = nil
  L1_2 = A0_2.blocksInput
  if not L1_2 then
    L1_2 = false
  end
  A0_2.blocksInput = L1_2
  L1_2 = A0_2.blockDistance
  if not L1_2 then
    L1_2 = 80
  end
  A0_2.blockDistance = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.resetState
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_2.x = 0
  L1_2.y = 0
  A0_2.scroll = L1_2
  A0_2.dragging = false
  A0_2.current_anchor = 1
  A0_2.target_anchor = 1
  L1_2 = {}
  L1_2.x = 0
  L1_2.y = 0
  A0_2.drag_start = L1_2
  L1_2 = {}
  L1_2.x = 0
  L1_2.y = 0
  A0_2.drag_last = L1_2
  L1_2 = {}
  L1_2.x = 0
  L1_2.y = 0
  A0_2.drag_last_update = L1_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  A0_2.drag_speed_x = L1_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  A0_2.drag_speed_y = L1_2
  A0_2.drag_index = 1
  A0_2.drag_timer = 0
  A0_2.velocity = 8
  A0_2.unhandledTicks = 0
end

L0_1.resetState = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_GAME_PAUSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.resetState
  L1_2(L2_2)
end

L0_1.onEntry = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.eventManager
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = gamelua
  L3_2 = L3_2.events
  L3_2 = L3_2.EID_GAME_PAUSED
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

L0_1.onExit = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = gamelua
  L2_2 = L2_2.deepCopy
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.anchors = L2_2
  L2_2 = A0_2.anchors
  L2_2 = #L2_2
  A0_2.maxTargetAnchor = L2_2
  L2_2 = A0_2.aabb
  L3_2 = A0_2.anchors
  L3_2 = L3_2[1]
  L3_2 = L3_2.x
  L2_2.x1 = L3_2
  L3_2 = A0_2.anchors
  L3_2 = L3_2[1]
  L3_2 = L3_2.y
  L2_2.y1 = L3_2
  L3_2 = A0_2.anchors
  L3_2 = L3_2[1]
  L3_2 = L3_2.x
  L2_2.x2 = L3_2
  L3_2 = A0_2.anchors
  L3_2 = L3_2[1]
  L3_2 = L3_2.y
  L2_2.y2 = L3_2
  L3_2 = A0_2.anchors
  L3_2 = L3_2[1]
  L3_2 = L3_2.h
  L2_2.h = L3_2
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A0_2.anchors
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.x
    L9_2 = L2_2.x1
    if L8_2 < L9_2 then
      L8_2 = L7_2.x
      L2_2.x1 = L8_2
    end
    L8_2 = L7_2.y
    L9_2 = L2_2.y1
    if L8_2 < L9_2 then
      L8_2 = L7_2.y
      L2_2.y1 = L8_2
    end
    L8_2 = L7_2.x
    L9_2 = L2_2.x2
    if L8_2 > L9_2 then
      L8_2 = L7_2.x
      L2_2.x2 = L8_2
    end
    L8_2 = L7_2.y
    L9_2 = L2_2.y2
    if L8_2 > L9_2 then
      L8_2 = L7_2.y
      L2_2.y2 = L8_2
    end
  end
  L3_2 = A0_2.enableBottomAnchor
  if L3_2 then
    L3_2 = L2_2.y2
    L4_2 = L2_2.y1
    L3_2 = L3_2 - L4_2
    L4_2 = L2_2.h
    L3_2 = L3_2 + L4_2
    A0_2.contentHeight = L3_2
    L3_2 = A0_2.contentHeight
    L4_2 = A0_2.clip
    L4_2 = L4_2.h
    if L3_2 > L4_2 then
      L3_2 = _G
      L3_2 = L3_2.ipairs
      L4_2 = A0_2.anchors
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = L7_2.y
        L9_2 = A0_2.contentHeight
        L10_2 = A0_2.clip
        L10_2 = L10_2.h
        L9_2 = L9_2 - L10_2
        if L8_2 < L9_2 then
          A0_2.maxTargetAnchor = L6_2
        end
      end
      L3_2 = L2_2.y2
      L4_2 = A0_2.clip
      L4_2 = L4_2.h
      L3_2 = L3_2 - L4_2
      L2_2.y2 = L3_2
    end
  end
end

L0_1.setAnchors = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.current_anchor = A1_2
  A0_2.target_anchor = A1_2
  L2_2 = A0_2.scroll
  L3_2 = A0_2.anchors
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.scroll
  L3_2 = A0_2.anchors
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.y
  L2_2.y = L3_2
end

L0_1.setCurrentAnchor = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  A0_2.target_anchor = A1_2
end

L0_1.setTargetAnchor = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.current_anchor
  return L1_2
end

L0_1.getCurrentAnchor = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.scroll
  L1_2 = L1_2.x
  return L1_2
end

L0_1.getCurrentX = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.scroll
  L1_2 = L1_2.y
  return L1_2
end

L0_1.getCurrentY = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.max
  L2_2 = A0_2.unhandledTicks
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.unhandledTicks = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.min
  L2_2 = A0_2.current_anchor
  L3_2 = A0_2.unhandledTicks
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.maxTargetAnchor
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.target_anchor = L1_2
  A0_2.velocity = 8
end

L0_1.next = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.max
  L2_2 = A0_2.unhandledTicks
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.unhandledTicks = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.max
  L2_2 = A0_2.current_anchor
  L3_2 = A0_2.unhandledTicks
  L2_2 = L2_2 - L3_2
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.target_anchor = L1_2
  A0_2.velocity = 8
end

L0_1.previous = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.clip
  if L3_2 ~= nil then
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.setClipRect
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L7_2 = L3_2.w
    L8_2 = L3_2.h
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = Frame
  L4_2 = L4_2.draw
  L5_2 = A0_2
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.floor
  L7_2 = A0_2.scroll
  L7_2 = L7_2.x
  L7_2 = A1_2 - L7_2
  L6_2 = L6_2(L7_2)
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A0_2.scroll
  L8_2 = L8_2.y
  L8_2 = A2_2 - L8_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  if L3_2 then
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.setClipRect
    L5_2 = 0
    L6_2 = 0
    L7_2 = gamelua
    L7_2 = L7_2.screenWidth
    L8_2 = gamelua
    L8_2 = L8_2.screenHeight
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end

L0_1.draw = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.updateSelf
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2.anchors
  L4_2 = A0_2.target_anchor
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2.anchors
  L5_2 = A0_2.current_anchor
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2.scroll
  L6_2 = A0_2.dragging
  if not L6_2 then
    L6_2 = L5_2.x
    L7_2 = L3_2.x
    if L6_2 == L7_2 then
      L6_2 = L5_2.y
      L7_2 = L3_2.y
      if L6_2 == L7_2 then
        goto lbl_87
      end
    end
    L6_2 = A0_2.enableBottomAnchor
    if L6_2 then
      L6_2 = A0_2.maxTargetAnchor
      if 1 < L6_2 then
        L6_2 = A0_2.target_anchor
        L7_2 = A0_2.maxTargetAnchor
        if L6_2 == L7_2 then
          L6_2 = A0_2.aabb
          L6_2 = L6_2.y2
          L7_2 = A0_2.aabb
          L7_2 = L7_2.h
          L6_2 = L6_2 + L7_2
          L3_2.y = L6_2
        end
      end
    end
    L6_2 = L3_2.x
    L7_2 = L5_2.x
    L6_2 = L6_2 - L7_2
    L7_2 = L3_2.y
    L8_2 = L5_2.y
    L7_2 = L7_2 - L8_2
    L8_2 = L6_2 * A1_2
    L9_2 = A0_2.velocity
    L8_2 = L8_2 * L9_2
    L9_2 = L7_2 * A1_2
    L10_2 = A0_2.velocity
    L9_2 = L9_2 * L10_2
    if 0 < L6_2 then
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = L6_2
      L12_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2)
      L8_2 = L10_2
    else
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.max
      L11_2 = L6_2
      L12_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2)
      L8_2 = L10_2
    end
    if 0 < L7_2 then
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.min
      L11_2 = L7_2
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    else
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.max
      L11_2 = L7_2
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    end
    L10_2 = L5_2.x
    L10_2 = L10_2 + L8_2
    L5_2.x = L10_2
    L10_2 = L5_2.y
    L10_2 = L10_2 + L9_2
    L5_2.y = L10_2
  end
  ::lbl_87::
  L6_2 = A0_2.dragging
  if not L6_2 then
    L6_2 = A0_2.target_anchor
    L7_2 = A0_2.current_anchor
    if L6_2 ~= L7_2 then
      L6_2 = gamelua
      L6_2 = L6_2.distance
      L7_2 = L3_2.x
      L8_2 = L3_2.y
      L9_2 = L5_2.x
      L10_2 = L5_2.y
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L7_2 = gamelua
      L7_2 = L7_2.distance
      L8_2 = L4_2.x
      L9_2 = L4_2.y
      L10_2 = L5_2.x
      L11_2 = L5_2.y
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      if L6_2 < L7_2 then
        A0_2.unhandledTicks = 0
        L8_2 = A0_2.target_anchor
        A0_2.current_anchor = L8_2
      end
  end
  else
    A0_2.unhandledTicks = 0
  end
end

L0_1.updateSelf = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L7_2 = A0_2.scrollDisabled
  if L7_2 then
    L7_2 = L4_2
    L8_2 = L5_2
    L9_2 = L6_2
    return L7_2, L8_2, L9_2
  end
  L7_2 = true
  L8_2 = A0_2.clip
  if L8_2 then
    L8_2 = gamelua
    L8_2 = L8_2.cursor
    L8_2 = L8_2.x
    L9_2 = gamelua
    L9_2 = L9_2.cursor
    L9_2 = L9_2.y
    L10_2 = A0_2.clip
    L10_2 = L10_2.x
    if not (L8_2 < L10_2) then
      L10_2 = A0_2.clip
      L10_2 = L10_2.y
      if not (L9_2 < L10_2) then
        L10_2 = A0_2.clip
        L10_2 = L10_2.x
        L11_2 = A0_2.clip
        L11_2 = L11_2.w
        L10_2 = L10_2 + L11_2
        if not (L8_2 >= L10_2) then
          L10_2 = A0_2.clip
          L10_2 = L10_2.y
          L11_2 = A0_2.clip
          L11_2 = L11_2.h
          L10_2 = L10_2 + L11_2
          if not (L9_2 >= L10_2) then
            goto lbl_41
          end
        end
      end
    end
    L7_2 = false
  end
  ::lbl_41::
  L8_2 = A0_2.blocksInput
  if L8_2 then
    L8_2 = A0_2.dragging
    if L8_2 then
      L8_2 = nil
      L9_2 = A0_2.scroll_axis
      if L9_2 == "x" then
        L9_2 = A0_2.drag_start
        L9_2 = L9_2.x
        L10_2 = A0_2.drag_last
        L10_2 = L10_2.x
        L8_2 = L9_2 - L10_2
      else
        L9_2 = A0_2.scroll_axis
        if L9_2 == "y" then
          L9_2 = A0_2.drag_start
          L9_2 = L9_2.y
          L10_2 = A0_2.drag_last
          L10_2 = L10_2.y
          L8_2 = L9_2 - L10_2
        end
      end
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.abs
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = A0_2.blockDistance
      if L9_2 > L10_2 then
        L9_2 = nil
        L10_2 = nil
        L6_2 = nil
        L5_2 = L10_2
        L4_2 = L9_2
      else
        L9_2 = ui
        L9_2 = L9_2.Frame
        L9_2 = L9_2.onPointerEvent
        L10_2 = A0_2
        L11_2 = A1_2
        L12_2 = A0_2.scroll
        L12_2 = L12_2.x
        L12_2 = A2_2 + L12_2
        L13_2 = A0_2.scroll
        L13_2 = L13_2.y
        L13_2 = A3_2 + L13_2
        L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        L6_2 = L11_2
        L5_2 = L10_2
        L4_2 = L9_2
      end
  end
  elseif L7_2 then
    L8_2 = ui
    L8_2 = L8_2.Frame
    L8_2 = L8_2.onPointerEvent
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = A0_2.scroll
    L11_2 = L11_2.x
    L11_2 = A2_2 + L11_2
    L12_2 = A0_2.scroll
    L12_2 = L12_2.y
    L12_2 = A3_2 + L12_2
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L6_2 = L10_2
    L5_2 = L9_2
    L4_2 = L8_2
  end
  if A1_2 == "LPRESS" then
    L8_2 = A0_2.dragging
    if not L8_2 and L7_2 then
      L9_2 = A0_2
      L8_2 = A0_2.beginDrag
      L10_2 = A2_2
      L11_2 = A3_2
      L8_2(L9_2, L10_2, L11_2)
  end
  else
    if A1_2 == "LHOLD" then
      L8_2 = A0_2.dragging
      if L8_2 then
        L9_2 = A0_2
        L8_2 = A0_2.updateDrag
        L10_2 = A2_2
        L11_2 = A3_2
        L8_2(L9_2, L10_2, L11_2)
    end
    else
      if A1_2 == "LRELEASE" then
        L8_2 = A0_2.dragging
        if L8_2 then
          L9_2 = A0_2
          L8_2 = A0_2.release
          L10_2 = A2_2
          L11_2 = A3_2
          L8_2(L9_2, L10_2, L11_2)
      end
      elseif A1_2 == "WHEEL" then
        L8_2 = _G
        L8_2 = L8_2.math
        L8_2 = L8_2.abs
        L9_2 = gamelua
        L9_2 = L9_2.cursor
        L9_2 = L9_2.wheel
        L8_2 = L8_2(L9_2)
        L9_2 = A0_2.unhandledTicks
        L9_2 = L9_2 + L8_2
        A0_2.unhandledTicks = L9_2
        L9_2 = gamelua
        L9_2 = L9_2.cursor
        L9_2 = L9_2.wheel
        if L9_2 < 0 then
          L10_2 = A0_2
          L9_2 = A0_2.next
          L9_2(L10_2)
        else
          L9_2 = gamelua
          L9_2 = L9_2.cursor
          L9_2 = L9_2.wheel
          if 0 < L9_2 then
            L10_2 = A0_2
            L9_2 = A0_2.previous
            L9_2(L10_2)
          end
        end
      end
    end
  end
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  return L8_2, L9_2, L10_2
end

L0_1.onPointerEvent = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.id
  L3_2 = events
  L3_2 = L3_2.EID_GAME_PAUSED
  if L2_2 == L3_2 then
    L2_2 = A0_2.dragging
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.release
      L4_2 = A0_2.drag_start
      L4_2 = L4_2.x
      L5_2 = A0_2.drag_start
      L5_2 = L5_2.y
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

L0_1.eventTriggered = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.blockScroll
  if L3_2 then
    return
  end
  L3_2 = A0_2.drag_start
  L3_2.x = A1_2
  L3_2 = A0_2.drag_start
  L3_2.y = A2_2
  L3_2 = A0_2.drag_last
  L3_2.x = A1_2
  L3_2 = A0_2.drag_last
  L3_2.y = A2_2
  L3_2 = A0_2.drag_last_update
  L3_2.x = A1_2
  L3_2 = A0_2.drag_last_update
  L3_2.y = A2_2
  L3_2 = 1
  L4_2 = 5
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.drag_speed_x
    L7_2[L6_2] = 0
    L7_2 = A0_2.drag_speed_y
    L7_2[L6_2] = 0
  end
  A0_2.dragging = true
end

L0_1.beginDrag = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.scroll
  L1_2 = L1_2.y
  L2_2 = A0_2.clip
  L2_2 = L2_2.h
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2.contentHeight
  L3_2 = A0_2.clip
  L3_2 = L3_2.h
  if L2_2 <= L3_2 then
    L2_2 = A0_2.aabb
    L2_2 = L2_2.y1
    return L2_2
  else
    L2_2 = _G
    L2_2 = L2_2.math
    L2_2 = L2_2.floor
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = _G
    L3_2 = L3_2.math
    L3_2 = L3_2.floor
    L4_2 = A0_2.aabb
    L4_2 = L4_2.y2
    L5_2 = A0_2.clip
    L5_2 = L5_2.h
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2.aabb
    L5_2 = L5_2.h
    L4_2 = L4_2 + L5_2
    L3_2 = L3_2(L4_2)
    if L2_2 > L3_2 then
      L2_2 = A0_2.aabb
      L2_2 = L2_2.y2
      L3_2 = A0_2.aabb
      L3_2 = L3_2.h
      L2_2 = L2_2 + L3_2
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.checkYLast = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.drag_timer
  L4_2 = gamelua
  L4_2 = L4_2.g_dt
  L3_2 = L3_2 + L4_2
  A0_2.drag_timer = L3_2
  L3_2 = A0_2.drag_timer
  if 0.016666668 <= L3_2 then
    L3_2 = A0_2.drag_last
    L3_2 = L3_2.x
    L3_2 = L3_2 - A1_2
    L4_2 = A0_2.drag_last
    L4_2 = L4_2.y
    L4_2 = L4_2 - A2_2
    L5_2 = A0_2.drag_index
    L5_2 = L5_2 + 1
    A0_2.drag_index = L5_2
    L5_2 = A0_2.drag_index
    if 5 < L5_2 then
      A0_2.drag_index = 1
    end
    L5_2 = A0_2.drag_speed_x
    L6_2 = A0_2.drag_index
    L7_2 = A0_2.drag_timer
    L7_2 = L3_2 / L7_2
    L5_2[L6_2] = L7_2
    L5_2 = A0_2.drag_speed_y
    L6_2 = A0_2.drag_index
    L7_2 = A0_2.drag_timer
    L7_2 = L4_2 / L7_2
    L5_2[L6_2] = L7_2
    A0_2.drag_timer = 0
    L5_2 = A0_2.drag_last
    L5_2.x = A1_2
    L5_2 = A0_2.drag_last
    L5_2.y = A2_2
  end
  L3_2 = A0_2.drag_last_update
  L3_2 = L3_2.x
  L3_2 = L3_2 - A1_2
  L4_2 = A0_2.drag_last_update
  L4_2 = L4_2.y
  L4_2 = L4_2 - A2_2
  L5_2 = 1
  L6_2 = 1
  L7_2 = A0_2.scroll
  L7_2 = L7_2.x
  L7_2 = L7_2 + L3_2
  L8_2 = A0_2.aabb
  L8_2 = L8_2.x1
  if L7_2 < L8_2 then
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.abs
    L8_2 = A0_2.aabb
    L8_2 = L8_2.x1
    L9_2 = A0_2.scroll
    L9_2 = L9_2.x
    L9_2 = L9_2 + L3_2
    L8_2 = L8_2 - L9_2
    L7_2 = L7_2(L8_2)
    L8_2 = gamelua
    L8_2 = L8_2.screenWidth
    L8_2 = L8_2 * 0.2
    L7_2 = L7_2 / L8_2
    L5_2 = 1 + L7_2
  end
  L7_2 = A0_2.scroll
  L7_2 = L7_2.x
  L7_2 = L7_2 + L3_2
  L8_2 = A0_2.aabb
  L8_2 = L8_2.x2
  if L7_2 > L8_2 then
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.abs
    L8_2 = A0_2.aabb
    L8_2 = L8_2.x2
    L9_2 = A0_2.scroll
    L9_2 = L9_2.x
    L9_2 = L9_2 + L3_2
    L8_2 = L8_2 - L9_2
    L7_2 = L7_2(L8_2)
    L8_2 = gamelua
    L8_2 = L8_2.screenWidth
    L8_2 = L8_2 * 0.2
    L7_2 = L7_2 / L8_2
    L5_2 = 1 + L7_2
  end
  L7_2 = A0_2.scroll
  L7_2 = L7_2.y
  L7_2 = L7_2 + L4_2
  L8_2 = A0_2.aabb
  L8_2 = L8_2.y1
  if L7_2 < L8_2 then
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.abs
    L8_2 = A0_2.aabb
    L8_2 = L8_2.y1
    L9_2 = A0_2.scroll
    L9_2 = L9_2.y
    L9_2 = L9_2 + L4_2
    L8_2 = L8_2 - L9_2
    L7_2 = L7_2(L8_2)
    L8_2 = gamelua
    L8_2 = L8_2.screenHeight
    L8_2 = L8_2 * 0.2
    L7_2 = L7_2 / L8_2
    L6_2 = 1 + L7_2
  end
  L7_2 = A0_2.scroll
  L7_2 = L7_2.y
  L7_2 = L7_2 + L4_2
  L8_2 = A0_2.aabb
  L8_2 = L8_2.y2
  if L7_2 > L8_2 then
    L7_2 = _G
    L7_2 = L7_2.math
    L7_2 = L7_2.abs
    L8_2 = A0_2.aabb
    L8_2 = L8_2.y2
    L9_2 = A0_2.scroll
    L9_2 = L9_2.y
    L9_2 = L9_2 + L4_2
    L8_2 = L8_2 - L9_2
    L7_2 = L7_2(L8_2)
    L8_2 = gamelua
    L8_2 = L8_2.screenHeight
    L8_2 = L8_2 * 0.2
    L7_2 = L7_2 / L8_2
    L6_2 = 1 + L7_2
  end
  L7_2 = A0_2.scroll_axis
  if L7_2 == "x" then
    L7_2 = A0_2.scroll
    L8_2 = A0_2.scroll
    L8_2 = L8_2.x
    L9_2 = L3_2 / L5_2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
  end
  L7_2 = A0_2.scroll_axis
  if L7_2 == "y" then
    L7_2 = A0_2.scroll
    L8_2 = A0_2.scroll
    L8_2 = L8_2.y
    L9_2 = L4_2 / L6_2
    L8_2 = L8_2 + L9_2
    L7_2.y = L8_2
  end
  L7_2 = A0_2.drag_last_update
  L7_2.x = A1_2
  L7_2 = A0_2.drag_last_update
  L7_2.y = A2_2
end

L0_1.updateDrag = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.dragging = false
  L3_2 = 200
  L4_2 = gamelua
  L4_2 = L4_2.accumulate
  L5_2 = A0_2.drag_speed_x
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * 0.2
  L5_2 = gamelua
  L5_2 = L5_2.accumulate
  L6_2 = A0_2.drag_speed_y
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * 0.2
  L6_2 = A0_2.scroll_axis
  if L6_2 == "x" then
    L6_2 = _G
    L6_2 = L6_2.math
    L6_2 = L6_2.abs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L3_2 > L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.setTargetToNearestAnchor
      L6_2(L7_2)
    else
      L7_2 = A0_2
      L6_2 = A0_2.findFlickTargetX
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  else
    L6_2 = A0_2.scroll_axis
    if L6_2 == "y" then
      L6_2 = _G
      L6_2 = L6_2.math
      L6_2 = L6_2.abs
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L3_2 > L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.setTargetToNearestAnchor
        L6_2(L7_2)
      else
        L7_2 = A0_2
        L6_2 = A0_2.findFlickTargetY
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    else
      L6_2 = A0_2.scroll_axis
      if L6_2 == "xy" then
      end
    end
  end
end

L0_1.release = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.huge
  L2_2 = 1
  L3_2 = _G
  L3_2 = L3_2.ipairs
  L4_2 = A0_2.anchors
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = gamelua
    L8_2 = L8_2.distance
    L9_2 = A0_2.scroll
    L9_2 = L9_2.x
    L10_2 = A0_2.scroll
    L10_2 = L10_2.y
    L11_2 = L7_2.x
    L12_2 = L7_2.y
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    if L1_2 > L8_2 then
      L1_2 = L8_2
      L2_2 = L6_2
    end
  end
  L3_2 = A0_2.maxTargetAnchor
  if L2_2 <= L3_2 then
    A0_2.target_anchor = L2_2
    A0_2.velocity = 8
  end
end

L0_1.setTargetToNearestAnchor = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 < 0 then
    L2_2 = A0_2.scroll
    L2_2 = L2_2.x
    L3_2 = A0_2.aabb
    L3_2 = L3_2.x1
    if L2_2 < L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setTargetToNearestAnchor
      L2_2(L3_2)
      return
    end
  end
  if 0 < A1_2 then
    L2_2 = A0_2.scroll
    L2_2 = L2_2.x
    L3_2 = A0_2.aabb
    L3_2 = L3_2.x2
    if L2_2 > L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setTargetToNearestAnchor
      L2_2(L3_2)
      return
    end
  end
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.huge
  L3_2 = 1
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.anchors
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.x
    L10_2 = A0_2.scroll
    L10_2 = L10_2.x
    L9_2 = L9_2 - L10_2
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.abs
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L2_2 > L10_2 and (0 < A1_2 and 0 < L9_2 or A1_2 < 0 and L9_2 < 0) then
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.abs
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L2_2 = L10_2
      L3_2 = L7_2
    end
  end
  A0_2.target_anchor = L3_2
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.max
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.abs
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * 0.2
  L5_2 = L5_2 * 0.0167
  L6_2 = 8
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.velocity = L4_2
end

L0_1.findFlickTargetX = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 < 0 then
    L2_2 = A0_2.scroll
    L2_2 = L2_2.y
    L3_2 = A0_2.aabb
    L3_2 = L3_2.y1
    if L2_2 < L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setTargetToNearestAnchor
      L2_2(L3_2)
      return
    end
  end
  if 0 < A1_2 then
    L2_2 = A0_2.scroll
    L2_2 = L2_2.y
    L3_2 = A0_2.aabb
    L3_2 = L3_2.y2
    if L2_2 > L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setTargetToNearestAnchor
      L2_2(L3_2)
      return
    end
  end
  L2_2 = _G
  L2_2 = L2_2.math
  L2_2 = L2_2.huge
  L3_2 = 1
  L4_2 = _G
  L4_2 = L4_2.ipairs
  L5_2 = A0_2.anchors
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.y
    L10_2 = A0_2.scroll
    L10_2 = L10_2.y
    L9_2 = L9_2 - L10_2
    L10_2 = _G
    L10_2 = L10_2.math
    L10_2 = L10_2.abs
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L2_2 > L10_2 and (0 < A1_2 and 0 < L9_2 or A1_2 < 0 and L9_2 < 0) then
      L10_2 = _G
      L10_2 = L10_2.math
      L10_2 = L10_2.abs
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L2_2 = L10_2
      L3_2 = L7_2
    end
  end
  A0_2.target_anchor = L3_2
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.max
  L5_2 = _G
  L5_2 = L5_2.math
  L5_2 = L5_2.abs
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * 0.2
  L5_2 = L5_2 * 0.0167
  L6_2 = 8
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.velocity = L4_2
end

L0_1.findFlickTargetY = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  A0_2.velocity = A1_2
end

L0_1.setVelocity = L1_1
L0_1 = ScrollFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = gamelua
  L2_2 = L2_2.deepCopy
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2.clip = L2_2
end

L0_1.setClip = L1_1
