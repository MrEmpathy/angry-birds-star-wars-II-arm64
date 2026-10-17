local L0_1, L1_1
L0_1 = ui
L0_1 = L0_1.ImageButton
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
MainMenuCar = L0_1
L0_1 = MainMenuCar

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.setImage
  L3_2 = "CAR_FRONT"
  L1_2(L2_2, L3_2)
  A0_2.x = 0
  A0_2.y = 0
  A0_2.maxXPos = 1.25
  L1_2 = A0_2.maxXPos
  L1_2 = -L1_2
  A0_2.xPos = L1_2
  A0_2.scale = 1
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.random
  L1_2 = L1_2()
  L1_2 = 0.75 + L1_2
  A0_2.speed = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.random
  L1_2 = L1_2()
  L1_2 = L1_2 * 100
  L1_2 = 100 + L1_2
  A0_2.yPos = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.random
  L1_2 = L1_2()
  L1_2 = L1_2 * 10
  L1_2 = 15 + L1_2
  A0_2.shakeAmount = L1_2
  L1_2 = _G
  L1_2 = L1_2.math
  L1_2 = L1_2.random
  L1_2 = L1_2()
  L1_2 = L1_2 * 4
  L1_2 = 2 + L1_2
  A0_2.shakeSpeed = L1_2
  L1_2 = {}
  L2_2 = _G
  L2_2 = L2_2.pairs
  L3_2 = gamelua
  L3_2 = L3_2.Characters
  L3_2 = L3_2.list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = gamelua
    L7_2 = L7_2.isCharacterVisible
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = _G
      L7_2 = L7_2.table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = gamelua
      L9_2 = L9_2.blockTable
      L9_2 = L9_2.blocks
      L10_2 = L6_2.def
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.sprites
      L9_2 = L9_2.mainMenu
      if not L9_2 then
        L9_2 = gamelua
        L9_2 = L9_2.blockTable
        L9_2 = L9_2.blocks
        L10_2 = L6_2.def
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.sprites
        L9_2 = L9_2.default
      end
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = #L1_2
  if L2_2 == 0 then
    A0_2.noCharactersAvailable = true
    L2_2 = nil
    return L2_2
  end
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "charImage"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.charImage = L2_2
  L2_2 = A0_2.charImage
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = _G
  L4_2 = L4_2.math
  L4_2 = L4_2.random
  L5_2 = #L1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L1_2[L4_2]
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.charImage
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.Image
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.name = "carImage"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.carImage = L2_2
  L2_2 = A0_2.carImage
  L3_2 = L2_2
  L2_2 = L2_2.setImage
  L4_2 = "CAR_FRONT"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.addChild
  L4_2 = A0_2.carImage
  L2_2(L3_2, L4_2)
  L2_2 = ui
  L2_2 = L2_2.ImageButton
  L2_2 = L2_2.init
  L3_2 = A0_2
  L2_2(L3_2)
end

L0_1.init = L1_1
L0_1 = MainMenuCar

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  L1_2 = L1_2 / 768
  L1_2 = L1_2 * 0.8
  A0_2.scale = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setScale
  L3_2 = A0_2.scale
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.charImage
  L2_2 = A0_2.scale
  L2_2 = -L2_2
  L2_2 = L2_2 * 35
  L1_2.x = L2_2
  L1_2 = A0_2.charImage
  L2_2 = A0_2.scale
  L2_2 = -L2_2
  L2_2 = L2_2 * 40
  L1_2.y = L2_2
  L1_2 = A0_2.charImage
  L2_2 = L1_2
  L1_2 = L1_2.setScale
  L3_2 = 1.3
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.charImage
  L1_2 = L1_2.image
  if L1_2 ~= "BIRD_SW_BIG_NORMAL" then
    L1_2 = A0_2.charImage
    L1_2 = L1_2.image
    if L1_2 ~= "BIRD_SW_JABBA_FULL" then
      L1_2 = A0_2.charImage
      L1_2 = L1_2.image
      if L1_2 ~= "BIRD_SWR_ZEB_1" then
        goto lbl_40
      end
    end
  end
  L1_2 = A0_2.charImage
  L2_2 = A0_2.scale
  L2_2 = -L2_2
  L2_2 = L2_2 * 55
  L1_2.y = L2_2
  ::lbl_40::
  L1_2 = ui
  L1_2 = L1_2.ImageButton
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.layout = L1_1
L0_1 = MainMenuCar

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ui
  L4_2 = L4_2.ImageButton
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L6_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = MainMenuCar

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.xPos
  L4_2 = A0_2.maxXPos
  if L3_2 < L4_2 then
    L3_2 = A0_2.xPos
    L4_2 = A0_2.speed
    L4_2 = A1_2 * L4_2
    L3_2 = L3_2 + L4_2
    A0_2.xPos = L3_2
    L3_2 = A0_2.xPos
    L4_2 = _G
    L4_2 = L4_2.math
    L4_2 = L4_2.sin
    L5_2 = A0_2.xPos
    L6_2 = A0_2.shakeSpeed
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.shakeAmount
    L4_2 = L4_2 * L5_2
    L5_2 = A0_2.scale
    L4_2 = L4_2 * L5_2
    L5_2 = A0_2.yPos
    L6_2 = A0_2.scale
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2 + L5_2
    L5_2 = gamelua
    L5_2 = L5_2.screenWidth
    L5_2 = L5_2 * 0.5
    L6_2 = gamelua
    L6_2 = L6_2.screenWidth
    L6_2 = L3_2 * L6_2
    L6_2 = L6_2 * 0.5
    L5_2 = L5_2 + L6_2
    A0_2.x = L5_2
    L5_2 = gamelua
    L5_2 = L5_2.screenHeight
    L5_2 = L5_2 - L4_2
    A0_2.y = L5_2
  else
    L4_2 = A0_2
    L3_2 = A0_2.close
    L3_2(L4_2)
  end
  L3_2 = ui
  L3_2 = L3_2.ImageButton
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = MainMenuCar

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.parent
  L2_2 = L1_2
  L1_2 = L1_2.removeChild
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = gamelua
  L1_2 = L1_2.menuManager
  L1_2.targetObject = nil
end

L0_1.close = L1_1
