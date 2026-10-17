local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
Carousel = L0_1
L0_1 = Carousel

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.position
  if not L1_2 then
    L1_2 = 1
  end
  A0_2.position = L1_2
  L1_2 = A0_2.position
  A0_2.lastIndex = L1_2
  L1_2 = A0_2.position
  L1_2 = L1_2 + 0.5
  A0_2.position = L1_2
  A0_2.vx = 0
  A0_2.scale = 1
  L1_2 = {}
  A0_2.items = L1_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.init = L1_1
L0_1 = Carousel

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 + 0.5
  A0_2.position = L2_2
  A0_2.lastIndex = A1_2
end

L0_1.setPosition = L1_1
L0_1 = Carousel

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2 = L2_2.table
  L2_2 = L2_2.insert
  L3_2 = A0_2.items
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.addItem = L1_1
L0_1 = Carousel

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.getItem
  L3_2 = A0_2.lastIndex
  return L1_2(L2_2, L3_2)
end

L0_1.getCurrentItem = L1_1
L0_1 = Carousel

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.items
  L2_2 = #L2_2
  if A1_2 > L2_2 then
    L2_2 = A0_2.items
    L2_2 = #L2_2
    A1_2 = A1_2 % L2_2
  elseif A1_2 < 1 then
    L2_2 = A0_2.items
    L2_2 = #L2_2
    A1_2 = L2_2 + A1_2
  end
  L2_2 = A0_2.items
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getItem = L1_1
L0_1 = Carousel

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.layout = L1_1
L0_1 = Carousel

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L7_2 = gamelua
  L7_2 = L7_2.screenHeight
  L7_2 = L7_2 * 0.5
  if A3_2 < L7_2 then
    if A1_2 == "LPRESS" then
      A0_2.lastDragPosX = A2_2
    elseif A1_2 == "LHOLD" then
      L7_2 = A0_2.lastDragPosX
      if not L7_2 then
        L7_2 = A2_2
      end
      L7_2 = L7_2 - A2_2
      L8_2 = A0_2.scale
      L7_2 = L7_2 / L8_2
      A0_2.vx = L7_2
      A0_2.lastDragPosX = A2_2
      A0_2.initialSpinTimer = -1
    elseif A1_2 == "LRELEASE" then
      A0_2.lastDragPosX = nil
    end
  end
  if not L4_2 and A1_2 == "WHEEL" then
    L7_2 = gamelua
    L7_2 = L7_2.cursor
    L7_2 = L7_2.wheel
    if L7_2 < 0 then
      A0_2.scrollWheel = false
    else
      A0_2.scrollWheel = true
    end
  end
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = Carousel

function L1_1(A0_2, A1_2)
  A0_2.scale = A1_2
end

L0_1.setScale = L1_1
L0_1 = Carousel

function L1_1(A0_2)
  local L1_2
  A0_2.initialSpinTimer = 0.1
end

L0_1.initialSpin = L1_1
L0_1 = Carousel

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.active
  if L3_2 then
    L3_2 = A0_2.items
    L3_2 = #L3_2
    if 0 < L3_2 then
      L3_2 = A0_2.initialSpinTimer
      if 0 <= L3_2 then
        L3_2 = A0_2.initialSpinTimer
        L3_2 = L3_2 - A1_2
        A0_2.initialSpinTimer = L3_2
        L3_2 = -450 * A1_2
        A0_2.vx = L3_2
      end
      L3_2 = A0_2.scrollWheel
      if L3_2 ~= nil then
        L3_2 = _G
        L3_2 = L3_2.math
        L3_2 = L3_2.max
        L4_2 = 3
        L6_2 = A0_2
        L5_2 = A0_2.getSideButtonAmount
        L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        L3_2 = 11000 / L3_2
        L4_2 = A0_2.scrollWheel
        if L4_2 then
          L4_2 = -L3_2
          L4_2 = L4_2 * A1_2
          A0_2.vx = L4_2
        else
          L4_2 = L3_2 * A1_2
          A0_2.vx = L4_2
        end
        A0_2.scrollWheel = nil
      end
      L3_2 = A0_2.position
      L4_2 = A0_2.vx
      L4_2 = L4_2 * 0.001
      L5_2 = _G
      L5_2 = L5_2.math
      L5_2 = L5_2.max
      L6_2 = 3
      L8_2 = A0_2
      L7_2 = A0_2.getSideButtonAmount
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 + L4_2
      A0_2.position = L3_2
      L3_2 = A0_2.position
      if L3_2 < 0 then
        L3_2 = _G
        L3_2 = L3_2.math
        L3_2 = L3_2.max
        L4_2 = 0
        L5_2 = A0_2.items
        L5_2 = #L5_2
        L6_2 = A0_2.position
        L5_2 = L5_2 + L6_2
        L3_2 = L3_2(L4_2, L5_2)
        A0_2.position = L3_2
      end
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.fmod
      L4_2 = A0_2.position
      L5_2 = A0_2.items
      L5_2 = #L5_2
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.position = L3_2
      L3_2 = A0_2.vx
      L4_2 = _G
      L4_2 = L4_2.math
      L4_2 = L4_2.max
      L5_2 = 0.25
      L6_2 = A1_2 * 5
      L6_2 = 1 - L6_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L3_2 * L4_2
      A0_2.vx = L3_2
      L3_2 = _G
      L3_2 = L3_2.math
      L3_2 = L3_2.floor
      L4_2 = A0_2.position
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2.lastIndex
      if L3_2 ~= L4_2 then
        A0_2.lastIndex = L3_2
        L5_2 = A0_2
        L4_2 = A0_2.getItem
        L6_2 = L3_2
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = gamelua
        L5_2 = L5_2.eventManager
        L6_2 = L5_2
        L5_2 = L5_2.notify
        L7_2 = {}
        L8_2 = gamelua
        L8_2 = L8_2.events
        L8_2 = L8_2.EID_SHOP_REFRESH_OFFERS
        L7_2.id = L8_2
        L8_2 = L4_2.description
        L7_2.descriptionText = L8_2
        L8_2 = L4_2.buyButtons
        L7_2.buyButtons = L8_2
        L8_2 = L4_2.reduction
        L7_2.reduction = L8_2
        L5_2(L6_2, L7_2)
      end
      L4_2 = L3_2 + 0.5
      L5_2 = A0_2.position
      L4_2 = L4_2 - L5_2
      L5_2 = L4_2 * L4_2
      L5_2 = L5_2 * A1_2
      L5_2 = L5_2 * 500
      if L4_2 < 0 then
        L5_2 = -L5_2
      end
      L6_2 = A0_2.vx
      L6_2 = L6_2 + L5_2
      A0_2.vx = L6_2
      L6_2 = A0_2.lastDragPosX
      if not L6_2 then
        L6_2 = _G
        L6_2 = L6_2.math
        L6_2 = L6_2.abs
        L7_2 = A0_2.vx
        L6_2 = L6_2(L7_2)
        if L6_2 < 50 then
          L6_2 = L3_2 + 0.5
          L7_2 = _G
          L7_2 = L7_2.math
          L7_2 = L7_2.max
          L8_2 = 0
          L9_2 = A1_2 * 10
          L9_2 = 1 - L9_2
          L7_2 = L7_2(L8_2, L9_2)
          L7_2 = L7_2 * L4_2
          L6_2 = L6_2 - L7_2
          A0_2.position = L6_2
        end
      end
    end
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
L0_1 = Carousel

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.items
  L1_2 = #L1_2
  if 7 <= L1_2 then
    L1_2 = 4
    return L1_2
  else
    L1_2 = A0_2.items
    L1_2 = #L1_2
    if 3 <= L1_2 then
      L1_2 = 2
      return L1_2
    else
      L1_2 = 1
      return L1_2
    end
  end
end

L0_1.getSideButtonAmount = L1_1
L0_1 = Carousel

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L3_2 = A0_2.active
  if L3_2 then
    L3_2 = A0_2.items
    L3_2 = #L3_2
    if 0 < L3_2 then
      L3_2 = {}
      L5_2 = A0_2
      L4_2 = A0_2.getSideButtonAmount
      L4_2 = L4_2(L5_2)
      L5_2 = -L4_2
      L6_2 = L4_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = _G
        L9_2 = L9_2.math
        L9_2 = L9_2.floor
        L10_2 = A0_2.position
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2 + L8_2
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.fmod
        L11_2 = A0_2.position
        L12_2 = 1
        L10_2 = L10_2(L11_2, L12_2)
        L12_2 = A0_2
        L11_2 = A0_2.getItem
        L13_2 = L9_2
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = L8_2 + 0.5
        L12_2 = L12_2 - L10_2
        L12_2 = L12_2 * 350
        L13_2 = _G
        L13_2 = L13_2.math
        L13_2 = L13_2.abs
        L14_2 = L8_2 + 0.5
        L14_2 = L14_2 - L10_2
        L13_2 = L13_2(L14_2)
        L13_2 = -L13_2
        L13_2 = L13_2 * 60
        L14_2 = A0_2.position
        L14_2 = L14_2 - 0.5
        L14_2 = L14_2 - L9_2
        L15_2 = L4_2 + 1
        L14_2 = L14_2 / L15_2
        L15_2 = _G
        L15_2 = L15_2.math
        L15_2 = L15_2.abs
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L15_2 = 1 - L15_2
        L16_2 = _G
        L16_2 = L16_2.math
        L16_2 = L16_2.pow
        L17_2 = L15_2
        L18_2 = 2
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = A0_2.scale
        L16_2 = L16_2 * L17_2
        if L4_2 == 4 then
          L17_2 = _G
          L17_2 = L17_2.math
          L17_2 = L17_2.pow
          L18_2 = L15_2
          L19_2 = 3
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = A0_2.scale
          L16_2 = L17_2 * L18_2
          L18_2 = L8_2 + 0.5
          L18_2 = L18_2 - L10_2
          L18_2 = L18_2 * 160
          L19_2 = _G
          L19_2 = L19_2.math
          L19_2 = L19_2.pow
          L20_2 = L17_2
          L21_2 = 0.75
          L19_2 = L19_2(L20_2, L21_2)
          L12_2 = L18_2 / L19_2
          L18_2 = _G
          L18_2 = L18_2.math
          L18_2 = L18_2.abs
          L19_2 = L8_2 + 0.5
          L19_2 = L19_2 - L10_2
          L18_2 = L18_2(L19_2)
          L18_2 = -L18_2
          L18_2 = L18_2 * 15
          L13_2 = L18_2 / L17_2
        end
        L16_2 = L16_2 * 1.2
        if L11_2 ~= nil then
          L17_2 = _G
          L17_2 = L17_2.table
          L17_2 = L17_2.insert
          L18_2 = L3_2
          L19_2 = {}
          L20_2 = L11_2.sprite
          L19_2.sprite = L20_2
          L19_2.posX = L12_2
          L19_2.posY = L13_2
          L19_2.scale = L16_2
          L19_2.alpha = L15_2
          L19_2.pos = L8_2
          L19_2.decimal = L10_2
          L20_2 = L11_2.characterName
          L19_2.characterName = L20_2
          L20_2 = L11_2.isBundle
          L19_2.isBundle = L20_2
          L17_2(L18_2, L19_2)
        end
      end
      L5_2 = _G
      L5_2 = L5_2.table
      L5_2 = L5_2.sort
      L6_2 = L3_2
      
      function L7_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.posY
        L3_3 = A1_3.posY
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      
      L5_2(L6_2, L7_2)
      L5_2 = _G
      L5_2 = L5_2.ipairs
      L6_2 = L3_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = _G
        L10_2 = L10_2.math
        L10_2 = L10_2.floor
        L11_2 = L9_2.pos
        L10_2 = L10_2(L11_2)
        if L10_2 == 0 then
          L10_2 = gamelua
          L10_2 = L10_2.setRenderState
          L11_2 = 0
          L12_2 = 0
          L13_2 = L9_2.scale
          L14_2 = L9_2.scale
          L15_2 = 0
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L10_2 = _G
          L10_2 = L10_2.math
          L10_2 = L10_2.abs
          L11_2 = L9_2.decimal
          L11_2 = L11_2 - 0.5
          L10_2 = L10_2(L11_2)
          L10_2 = 1 - L10_2
          L11_2 = gamelua
          L11_2 = L11_2.native_setAlpha
          L12_2 = L10_2
          L11_2(L12_2)
          L11_2 = _G
          L11_2 = L11_2.res
          L11_2 = L11_2.drawSprite
          L12_2 = A0_2.shineSprite
          L13_2 = A0_2.x
          L14_2 = L9_2.scale
          L13_2 = L13_2 / L14_2
          L14_2 = L9_2.posX
          L13_2 = L13_2 + L14_2
          L14_2 = A0_2.y
          L15_2 = L9_2.scale
          L14_2 = L14_2 / L15_2
          L15_2 = L9_2.posY
          L14_2 = L14_2 + L15_2
          L11_2(L12_2, L13_2, L14_2)
          L11_2 = gamelua
          L11_2 = L11_2.native_setAlpha
          L12_2 = 1
          L11_2(L12_2)
        end
        L10_2 = gamelua
        L10_2 = L10_2.setRenderState
        L11_2 = 0
        L12_2 = 0
        L13_2 = L9_2.scale
        L14_2 = L9_2.scale
        L15_2 = 0
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = gamelua
        L10_2 = L10_2.native_setAlpha
        L11_2 = L9_2.alpha
        L12_2 = L9_2.alpha
        L11_2 = L11_2 * L12_2
        L10_2(L11_2)
        L10_2 = _G
        L10_2 = L10_2.res
        L10_2 = L10_2.drawSprite
        L11_2 = L9_2.sprite
        L12_2 = A0_2.x
        L13_2 = L9_2.scale
        L12_2 = L12_2 / L13_2
        L13_2 = L9_2.posX
        L12_2 = L12_2 + L13_2
        L13_2 = A0_2.y
        L14_2 = L9_2.scale
        L13_2 = L13_2 / L14_2
        L14_2 = L9_2.posY
        L13_2 = L13_2 + L14_2
        L10_2(L11_2, L12_2, L13_2)
        L10_2 = L9_2.isBundle
        if not L10_2 then
          L10_2 = L9_2.characterName
          if L10_2 then
            L10_2 = {}
            L10_2.x = 140
            L10_2.y = 140
            L11_2 = {}
            L11_2.x = 140
            L11_2.y = 140
            L12_2 = gamelua
            L12_2 = L12_2.SettingsWrapper
            L13_2 = L12_2
            L12_2 = L12_2.getAmount
            L14_2 = L9_2.characterName
            L12_2 = L12_2(L13_2, L14_2)
            if 999 < L12_2 then
              L13_2 = "999+"
              if L13_2 then
                goto lbl_222
              end
            end
            L13_2 = _G
            L13_2 = L13_2.tostring
            L14_2 = L12_2
            L13_2 = L13_2(L14_2)
            ::lbl_222::
            L14_2 = 0.45
            L15_2 = 0.45
            L16_2 = _G
            L16_2 = L16_2.string
            L16_2 = L16_2.len
            L17_2 = L13_2
            L16_2 = L16_2(L17_2)
            if 3 <= L16_2 then
              L15_2 = 0.36
              L16_2 = {}
              L16_2.x = 175
              L16_2.y = 175
              L11_2 = L16_2
            end
            L16_2 = gamelua
            L16_2 = L16_2.getButtonImageName
            L17_2 = "characterMenuCounterBox"
            L18_2 = gamelua
            L18_2 = L18_2.isCharacterDarkSide
            L19_2 = L9_2.characterName
            L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L18_2(L19_2)
            L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            L17_2 = _G
            L17_2 = L17_2.res
            L17_2 = L17_2.drawSprite
            L18_2 = L16_2
            L19_2 = A0_2.x
            L20_2 = L9_2.scale
            L19_2 = L19_2 / L20_2
            L20_2 = L9_2.posX
            L19_2 = L19_2 + L20_2
            L20_2 = L10_2.x
            L20_2 = L20_2 * L14_2
            L19_2 = L19_2 + L20_2
            L20_2 = A0_2.y
            L21_2 = L9_2.scale
            L20_2 = L20_2 / L21_2
            L21_2 = L9_2.posY
            L20_2 = L20_2 + L21_2
            L21_2 = L10_2.y
            L21_2 = L21_2 * L14_2
            L20_2 = L20_2 + L21_2
            L21_2 = "HCENTER"
            L22_2 = "VCENTER"
            L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
            L17_2 = gamelua
            L17_2 = L17_2.getSessionTelepodAmount
            L18_2 = L9_2.characterName
            L17_2 = L17_2(L18_2)
            if 0 <= L17_2 then
              L18_2 = {}
              L18_2.x = -47
              L18_2.y = 142
              L19_2 = 1
              L20_2 = _G
              L20_2 = L20_2.math
              L20_2 = L20_2.min
              L21_2 = 10
              L22_2 = L17_2
              L20_2 = L20_2(L21_2, L22_2)
              L21_2 = 1
              for L22_2 = L19_2, L20_2, L21_2 do
                L23_2 = _G
                L23_2 = L23_2.res
                L23_2 = L23_2.drawSprite
                L24_2 = gamelua
                L24_2 = L24_2.getButtonImageName
                L25_2 = "iconTelepod"
                L26_2 = gamelua
                L26_2 = L26_2.Characters
                L26_2 = L26_2.list
                L27_2 = L9_2.characterName
                L26_2 = L26_2[L27_2]
                L26_2 = L26_2.isSith
                L24_2 = L24_2(L25_2, L26_2)
                L25_2 = A0_2.x
                L26_2 = L9_2.scale
                L25_2 = L25_2 / L26_2
                L26_2 = L9_2.posX
                L25_2 = L25_2 + L26_2
                L26_2 = L18_2.x
                L26_2 = L26_2 * L14_2
                L25_2 = L25_2 + L26_2
                L26_2 = L22_2 - 1
                L26_2 = L26_2 * 5
                L25_2 = L25_2 - L26_2
                L26_2 = A0_2.y
                L27_2 = L9_2.scale
                L26_2 = L26_2 / L27_2
                L27_2 = L9_2.posY
                L26_2 = L26_2 + L27_2
                L27_2 = L18_2.y
                L27_2 = L27_2 * L14_2
                L26_2 = L26_2 + L27_2
                L27_2 = L22_2 - 1
                L27_2 = L27_2 * 5
                L26_2 = L26_2 - L27_2
                L27_2 = "HCENTER"
                L28_2 = "VCENTER"
                L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
              end
            end
            L18_2 = gamelua
            L18_2 = L18_2.SettingsWrapper
            L19_2 = L18_2
            L18_2 = L18_2.getAmount
            L20_2 = L9_2.characterName
            L21_2 = "_unlimited"
            L20_2 = L20_2 .. L21_2
            L18_2 = L18_2(L19_2, L20_2)
            if 0 < L18_2 then
              L19_2 = {}
              L19_2.x = 43
              L19_2.y = 142
              L20_2 = 1
              L21_2 = L18_2
              L22_2 = 1
              for L23_2 = L20_2, L21_2, L22_2 do
                L24_2 = _G
                L24_2 = L24_2.res
                L24_2 = L24_2.drawSprite
                L25_2 = gamelua
                L25_2 = L25_2.getButtonImageName
                L26_2 = "iconUnlimited"
                L27_2 = gamelua
                L27_2 = L27_2.Characters
                L27_2 = L27_2.list
                L28_2 = L9_2.characterName
                L27_2 = L27_2[L28_2]
                L27_2 = L27_2.isSith
                L25_2 = L25_2(L26_2, L27_2)
                L26_2 = A0_2.x
                L27_2 = L9_2.scale
                L26_2 = L26_2 / L27_2
                L27_2 = L9_2.posX
                L26_2 = L26_2 + L27_2
                L27_2 = L19_2.x
                L27_2 = L27_2 * L14_2
                L26_2 = L26_2 + L27_2
                L27_2 = L23_2 - 1
                L27_2 = L27_2 * 5
                L26_2 = L26_2 - L27_2
                L27_2 = A0_2.y
                L28_2 = L9_2.scale
                L27_2 = L27_2 / L28_2
                L28_2 = L9_2.posY
                L27_2 = L27_2 + L28_2
                L28_2 = L19_2.y
                L28_2 = L28_2 * L14_2
                L27_2 = L27_2 + L28_2
                L28_2 = L23_2 - 1
                L28_2 = L28_2 * 5
                L27_2 = L27_2 - L28_2
                L28_2 = "HCENTER"
                L29_2 = "VCENTER"
                L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
              end
            end
            L19_2 = gamelua
            L19_2 = L19_2.setRenderState
            L20_2 = 0
            L21_2 = 0
            L22_2 = L9_2.scale
            L22_2 = L22_2 * L15_2
            L23_2 = L9_2.scale
            L23_2 = L23_2 * L15_2
            L24_2 = 0
            L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
            L19_2 = _G
            L19_2 = L19_2.res
            L19_2 = L19_2.useFont
            L20_2 = gamelua
            L20_2 = L20_2.getFontBasic
            L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L20_2()
            L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            L19_2 = _G
            L19_2 = L19_2.res
            L19_2 = L19_2.drawString
            L20_2 = "TEXTS_BASIC"
            L21_2 = L13_2
            L22_2 = A0_2.x
            L23_2 = L9_2.scale
            L23_2 = L23_2 * L15_2
            L22_2 = L22_2 / L23_2
            L23_2 = L9_2.posX
            L24_2 = 1 / L15_2
            L23_2 = L23_2 * L24_2
            L22_2 = L22_2 + L23_2
            L23_2 = L11_2.x
            L22_2 = L22_2 + L23_2
            L23_2 = A0_2.y
            L24_2 = L9_2.scale
            L24_2 = L24_2 * L15_2
            L23_2 = L23_2 / L24_2
            L24_2 = L9_2.posY
            L25_2 = 1 / L15_2
            L24_2 = L24_2 * L25_2
            L23_2 = L23_2 + L24_2
            L24_2 = L11_2.y
            L23_2 = L23_2 + L24_2
            L24_2 = "HCENTER"
            L25_2 = "VCENTER"
            L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
        end
        L10_2 = gamelua
        L10_2 = L10_2.native_setAlpha
        L11_2 = 1
        L10_2(L11_2)
      end
    end
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
