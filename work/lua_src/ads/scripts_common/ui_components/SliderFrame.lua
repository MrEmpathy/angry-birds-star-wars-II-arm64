local L0_1, L1_1
L0_1 = Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
SliderFrame = L0_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.scrollX = 0
  A0_2.scrollY = 0
  A0_2.scrollDirection = "y"
  A0_2.state = "RELEASED"
  L1_2 = A0_2.friction
  if not L1_2 then
    L1_2 = 0.2
  end
  A0_2.friction = L1_2
  L1_2 = A0_2.jolt
  if not L1_2 then
    L1_2 = 1
  end
  A0_2.jolt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setAnchors
  L3_2 = 0.5
  L4_2 = 0.5
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Image
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "bgImage"
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.children
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2.dragDuration = 0
  L2_2 = Frame
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "content"
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = _G
  L3_2 = L3_2.table
  L3_2 = L3_2.insert
  L4_2 = A0_2.children
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = Frame
  L3_2 = L3_2.init
  L4_2 = A0_2
  L3_2(L4_2)
end

L0_1.init = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  L5_2 = {}
  L5_2.x = A1_2
  L5_2.y = A2_2
  L5_2.width = A3_2
  L5_2.height = A4_2
  A0_2.clip = L5_2
end

L0_1.setClipRect = L1_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.dragStartX = nil
  A0_2.dragStartY = nil
  A0_2.dragDtY = 0
  A0_2.dragDtX = 0
  A0_2.scrollY = 0
  A0_2.scrollX = 0
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "content"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2.x = 0
  L1_2.y = 0
  L2_2 = Frame
  L2_2 = L2_2.onEntry
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.onEntry = L1_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.maxScrollY
  if not L1_2 then
    L1_2 = A0_2.height
    A0_2.maxScrollY = L1_2
  end
  L1_2 = Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.layout = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.x
  L4_2 = A0_2.hanchor
  L5_2 = A0_2.width
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L3_2 = A1_2 > L3_2
  L4_2 = A0_2.x
  L5_2 = A0_2.hanchor
  L6_2 = A0_2.width
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.width
  L4_2 = L4_2 + L5_2
  L4_2 = A1_2 < L4_2
  L5_2 = A0_2.y
  L6_2 = A0_2.vanchor
  L7_2 = A0_2.height
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 - L6_2
  L5_2 = A2_2 > L5_2
  L6_2 = A0_2.y
  L7_2 = A0_2.vanchor
  L8_2 = A0_2.height
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.height
  L6_2 = L6_2 + L7_2
  L6_2 = A2_2 < L6_2
  L7_2 = L3_2 or L7_2
  L7_2 = L4_2 or L7_2
  L7_2 = L5_2 or L7_2
  if L3_2 and L4_2 and L5_2 then
    L7_2 = L6_2
  end
  return L7_2
end

L0_1.hitTest = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 == "HCENTER" or A1_2 == "LEFT" or A1_2 == "RIGHT" then
    L2_2 = {}
    L2_2.LEFT = 0
    L2_2.HCENTER = 0.5
    L2_2.RIGHT = 1
    L2_2 = L2_2[A1_2]
    A0_2.hanchor = L2_2
  elseif A1_2 == "VCENTER" or A1_2 == "TOP" or A1_2 == "BOTTOM" then
    L2_2 = {}
    L2_2.TOP = 0
    L2_2.VCENTER = 0.5
    L2_2.BOTTOM = 1
    L2_2 = L2_2[A1_2]
    A0_2.vanchor = L2_2
  end
end

L0_1.setSingleAnchor = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "number" then
    A0_2.hanchor = A1_2
    L3_2 = A2_2 or L3_2
    if not A2_2 then
      L3_2 = A0_2.vanchor
    end
    A0_2.vanchor = L3_2
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.setSingleAnchor
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setSingleAnchor
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end

L0_1.setAnchors = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = 1
  worldScale = L6_2
  A0_2.dragDtY = 0
  A0_2.dragDtX = 0
  L7_2 = A0_2
  L6_2 = A0_2.hitTest
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    L6_2 = A0_2.state
    if L6_2 ~= "FREE" then
      L6_2 = A0_2.state
      if L6_2 ~= "RELEASED" then
        goto lbl_33
      end
    end
    A0_2.state = "FREE"
    A0_2.velocityY = 0
    A0_2.dragStartX = nil
    A0_2.dragStartY = nil
    A0_2.dragLastX = nil
    A0_2.dragLastY = nil
    L6_2 = L4_2
    L7_2 = L5_2
    return L6_2, L7_2
  end
  ::lbl_33::
  if A1_2 == "LPRESS" then
    A0_2.state = "DRAGGING"
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.x
    A0_2.dragStartX = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.y
    A0_2.dragStartY = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.x
    A0_2.dragLastX = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.y
    A0_2.dragLastY = L6_2
  elseif A1_2 == "LHOLD" then
    A0_2.state = "DRAGGING"
    L6_2 = A0_2.dragStartX
    if L6_2 ~= nil then
      L6_2 = A0_2.dragStartY
      if L6_2 ~= nil then
        goto lbl_70
      end
    end
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.x
    A0_2.dragStartX = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.y
    A0_2.dragStartY = L6_2
    ::lbl_70::
    L6_2 = A0_2.dragLastX
    if not L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.cursor
      L6_2 = L6_2.x
    end
    A0_2.dragLastX = L6_2
    L6_2 = A0_2.dragLastY
    if not L6_2 then
      L6_2 = gamelua
      L6_2 = L6_2.cursor
      L6_2 = L6_2.y
    end
    A0_2.dragLastY = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.x
    L7_2 = A0_2.dragLastX
    L6_2 = L6_2 - L7_2
    A0_2.dragDtX = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.y
    L7_2 = A0_2.dragLastY
    L6_2 = L6_2 - L7_2
    A0_2.dragDtY = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.x
    A0_2.dragLastX = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.cursor
    L6_2 = L6_2.y
    A0_2.dragLastY = L6_2
  elseif A1_2 == "LRELEASE" then
    A0_2.state = "RELEASED"
    L6_2 = A0_2.scrollDirection
    if L6_2 == "x" then
      L6_2 = A0_2.dragStartX
      if L6_2 ~= nil then
    end
    else
      L6_2 = A0_2.scrollDirection
      if L6_2 == "y" then
        L6_2 = A0_2.dragStartY
        if L6_2 ~= nil then
          L6_2 = A0_2.dragLastY
          if L6_2 ~= nil then
            L6_2 = _G
            L6_2 = L6_2.math
            L6_2 = L6_2.abs
            L7_2 = A0_2.dragStartY
            L8_2 = A0_2.dragLastY
            L7_2 = L7_2 - L8_2
            L6_2 = L6_2(L7_2)
            if 3 < L6_2 then
              L7_2 = -1
              return L7_2
            end
          end
        end
      end
    end
  end
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end

L0_1.onPointerEvent = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.scrollY
  L3_2 = -L3_2
  L4_2 = A0_2.maxScrollY
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2.dragDtX
  if not L4_2 then
    L4_2 = 0
  end
  A0_2.dragDtX = L4_2
  L4_2 = A0_2.dragDtY
  if not L4_2 then
    L4_2 = 0
  end
  A0_2.dragDtY = L4_2
  if L3_2 < 0 then
    L4_2 = A0_2.dragDtY
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.abs
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L5_2 = 1 + L5_2
    L5_2 = L5_2 * 5
    L4_2 = L4_2 / L5_2
    A0_2.dragDtY = L4_2
  elseif 1 < L3_2 then
    L4_2 = A0_2.dragDtY
    L5_2 = L3_2 * 5
    L4_2 = L4_2 / L5_2
    A0_2.dragDtY = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "content"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.scrollX
  L4_2.x = L5_2
  L5_2 = A0_2.scrollY
  L4_2.y = L5_2
  L5_2 = A0_2.state
  if L5_2 == "DRAGGING" then
    L5_2 = A0_2.dragDuration
    L5_2 = L5_2 + A1_2
    A0_2.dragDuration = L5_2
  end
  L5_2 = A0_2.state
  if L5_2 == "RELEASED" then
    L5_2 = A0_2.dragStartY
    if L5_2 ~= nil then
      L5_2 = A0_2.dragLastY
      if L5_2 ~= nil and 0 <= L3_2 and L3_2 <= 1 then
        L5_2 = A0_2.jolt
        L6_2 = A0_2.dragLastY
        L7_2 = A0_2.dragStartY
        L6_2 = L6_2 - L7_2
        L6_2 = L6_2 * A1_2
        L6_2 = L6_2 * 5
        L5_2 = L5_2 * L6_2
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.max
        L7_2 = A0_2.dragDuration
        L8_2 = 1
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L5_2 / L6_2
        A0_2.velocityY = L5_2
      end
    end
    A0_2.dragStartX = nil
    A0_2.dragStartY = nil
    A0_2.dragDuration = 0
    A0_2.state = "FREE"
  end
  L5_2 = A0_2.velocityY
  if L5_2 ~= nil then
    if L3_2 < 0 or 1 < L3_2 then
      A0_2.velocityY = 0
    end
    L5_2 = A0_2.scrollY
    L6_2 = A0_2.velocityY
    L5_2 = L5_2 + L6_2
    A0_2.scrollY = L5_2
    L5_2 = A0_2.velocityY
    L6_2 = A0_2.friction
    L6_2 = 1 - L6_2
    L5_2 = L5_2 * L6_2
    A0_2.velocityY = L5_2
    L5_2 = _G
    L5_2 = L5_2.math
    L5_2 = L5_2.abs
    L6_2 = A0_2.velocityY
    L5_2 = L5_2(L6_2)
    if L5_2 < 0.001 then
      A0_2.velocityY = nil
    end
  end
  L5_2 = A0_2.scrollDirection
  if L5_2 == "x" then
    L5_2 = A0_2.scrollX
    L6_2 = A0_2.dragDtX
    L5_2 = L5_2 + L6_2
    A0_2.scrollX = L5_2
  else
    L5_2 = A0_2.scrollDirection
    if L5_2 == "y" then
      L5_2 = A0_2.scrollY
      L6_2 = A0_2.dragDtY
      L5_2 = L5_2 + L6_2
      A0_2.scrollY = L5_2
    end
  end
  L5_2 = A0_2.state
  if L5_2 == "FREE" then
    if 1 < L3_2 then
      L5_2 = A0_2.scrollY
      L6_2 = 100 * A1_2
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.max
      L8_2 = 1
      L9_2 = L3_2 * 3
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 + L6_2
      A0_2.scrollY = L5_2
    elseif L3_2 < 0 then
      L5_2 = A0_2.scrollY
      L6_2 = 100 * A1_2
      L7_2 = _G
      L7_2 = L7_2.math
      L7_2 = L7_2.max
      L8_2 = 1
      L9_2 = _G
      L9_2 = L9_2.math
      L9_2 = L9_2.abs
      L10_2 = L3_2 - 1
      L10_2 = L10_2 * 3
      L9_2, L10_2 = L9_2(L10_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L6_2 * L7_2
      L5_2 = L5_2 - L6_2
      A0_2.scrollY = L5_2
    end
  end
  L5_2 = Frame
  L5_2 = L5_2.update
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end

L0_1.update = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.clip
  if L3_2 then
    L4_2 = _G
    L4_2 = L4_2.res
    L4_2 = L4_2.setClipRect
    L5_2 = A0_2.x
    L5_2 = A1_2 + L5_2
    L6_2 = A0_2.hanchor
    L7_2 = A0_2.width
    L6_2 = L6_2 * L7_2
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.y
    L6_2 = A2_2 + L6_2
    L7_2 = A0_2.vanchor
    L8_2 = A0_2.height
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 - L7_2
    L7_2 = A0_2.width
    L8_2 = A0_2.height
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = Frame
  L4_2 = L4_2.draw
  L5_2 = A0_2
  L6_2 = _G
  L6_2 = L6_2.math
  L6_2 = L6_2.floor
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = _G
  L7_2 = L7_2.math
  L7_2 = L7_2.floor
  L8_2 = A2_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
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
  L4_2 = gamelua
  L4_2 = L4_2.setRenderState
  L5_2 = 0
  L6_2 = 0
  L7_2 = 1
  L8_2 = 1
  L9_2 = 0
  L10_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

L0_1.draw = L1_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.scrollX
  return L1_2
end

L0_1.getCurrentX = L1_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.scrollY
  return L1_2
end

L0_1.getCurrentY = L1_1
L0_1 = SliderFrame

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "content"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.addChild
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.addChild = L1_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.scrollY
  L1_2 = -L1_2
  L2_2 = A0_2.maxScrollY
  L1_2 = L1_2 / L2_2
  return L1_2
end

L0_1.getRelativeScrollY = L1_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.dragStartY
  if L1_2 ~= nil then
    L1_2 = A0_2.dragLastY
    if L1_2 ~= nil then
      L1_2 = A0_2.state
      if L1_2 == "DRAGGING" then
        L1_2 = A0_2.dragStartY
        L2_2 = A0_2.dragLastY
        L1_2 = L1_2 ~= L2_2
        return L1_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

L0_1.wasDragged = L1_1
L0_1 = SliderFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "bgImage"
  return L1_2(L2_2, L3_2)
end

L0_1.getBGImage = L1_1
