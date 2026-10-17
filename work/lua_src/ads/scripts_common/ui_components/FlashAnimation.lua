local L0_1, L1_1, L2_1
L0_1 = ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.inherit
L0_1 = L0_1(L1_1)
FlashAnimation = L0_1
L0_1 = 0
L1_1 = FlashAnimation

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.assert
  L2_2 = A0_2.file
  L2_2 = L2_2 ~= nil
  L3_2 = "Animation file not defined."
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L1_2 = L1_2 + 1
  L0_1 = L1_2
  L1_2 = "flashAnimation"
  L2_2 = L0_1
  L1_2 = L1_2 .. L2_2
  A0_2.tag = L1_2
  L1_2 = A0_2.name
  if not L1_2 then
    L1_2 = A0_2.tag
  end
  A0_2.name = L1_2
  L1_2 = A0_2.mode
  if not L1_2 then
    L1_2 = "repeat"
  end
  A0_2.mode = L1_2
  A0_2.offsetX = 0
  L1_2 = A0_2.loadGroup
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.loadAssets
    L2_2 = {}
    L3_2 = A0_2.loadGroup
    L2_2[1] = L3_2
    L1_2(L2_2)
  end
  L1_2 = gamelua
  L1_2 = L1_2.cutsceneLoad
  L2_2 = A0_2.tag
  L3_2 = A0_2.file
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.mode
  if L1_2 == "onceandloop" then
    L1_2 = A0_2.tag
    L2_2 = "_endloop"
    L1_2 = L1_2 .. L2_2
    A0_2.loopTag = L1_2
    L1_2 = gamelua
    L1_2 = L1_2.cutsceneLoad
    L2_2 = A0_2.loopTag
    L3_2 = A0_2.loopFile
    L1_2(L2_2, L3_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.init
  L2_2 = A0_2
  L1_2(L2_2)
end

L1_1.init = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.drawingLoop
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.drawCutscene
    L4_2 = A0_2.loopTag
    L3_2(L4_2)
  else
    L3_2 = gamelua
    L3_2 = L3_2.drawCutscene
    L4_2 = A0_2.tag
    L3_2(L4_2)
  end
  L3_2 = ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L1_1.draw = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.timer
  L3_2 = L3_2 + A1_2
  A0_2.timer = L3_2
  L3_2 = A0_2.mode
  if L3_2 == "onceandloop" then
    L3_2 = A0_2.timer
    L4_2 = A0_2.switchTimer
    if L3_2 >= L4_2 then
      A0_2.mode = "repeat"
      L3_2 = gamelua
      L3_2 = L3_2.cutsceneStart
      L4_2 = A0_2.loopTag
      L5_2 = A0_2.loopAction
      L6_2 = A0_2.mode
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = gamelua
      L3_2 = L3_2.cutsceneClose
      L4_2 = A0_2.tag
      L3_2(L4_2)
      A0_2.drawingLoop = true
      L4_2 = A0_2
      L3_2 = A0_2.layout
      L3_2(L4_2)
    end
  end
end

L1_1.update = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.onEntryAction
  if L1_2 then
    L1_2 = A0_2.mode
    if L1_2 == "onceandloop" then
      L1_2 = "once"
    end
    L2_2 = gamelua
    L2_2 = L2_2.cutsceneStart
    L3_2 = A0_2.tag
    L4_2 = A0_2.onEntryAction
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onEntry
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.timer = 0
end

L1_1.onEntry = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.getScale
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = 0
  L4_2 = A0_2.width
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.screenWidth
    L5_2 = A0_2.width
    L5_2 = L5_2 * L1_2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 * 0.5
    L5_2 = A0_2.offsetX
    L5_2 = L5_2 * L1_2
    L2_2 = L4_2 + L5_2
  end
  L4_2 = A0_2.height
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.screenHeight
    L5_2 = A0_2.height
    L5_2 = L5_2 * L1_2
    L4_2 = L4_2 - L5_2
    L3_2 = L4_2 * 0.5
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end

L1_1.getPosition = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.screenHeight
  L2_2 = A0_2.height
  if not L2_2 then
    L2_2 = 768
  end
  L1_2 = L1_2 / L2_2
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L2_2 = L2_2 / L3_2
  if 1.7777778 < L2_2 then
    L2_2 = gamelua
    L2_2 = L2_2.screenWidth
    L3_2 = A0_2.scaleWidth
    if not L3_2 then
      L3_2 = A0_2.height
      if not L3_2 then
        L3_2 = 1365
      end
    end
    L1_2 = L2_2 / L3_2
  end
  return L1_2
end

L1_1.getScale = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getScale
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.getPosition
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = A0_2.tag
  L5_2 = A0_2.drawingLoop
  if L5_2 then
    L4_2 = A0_2.loopTag
  end
  L5_2 = gamelua
  L5_2 = L5_2.cutsceneSetTranslation
  L6_2 = L4_2
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = gamelua
  L5_2 = L5_2.cutsceneSetRotation
  L6_2 = L4_2
  L7_2 = 0
  L5_2(L6_2, L7_2)
  L5_2 = gamelua
  L5_2 = L5_2.cutsceneSetScale
  L6_2 = L4_2
  L7_2 = L1_2
  L8_2 = L1_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = ui
  L5_2 = L5_2.Frame
  L5_2 = L5_2.layout
  L6_2 = A0_2
  L5_2(L6_2)
end

L1_1.layout = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.offsetX = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.getPosition
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = A0_2.drawingLoop
  if L4_2 then
    L4_2 = gamelua
    L4_2 = L4_2.cutsceneSetTranslation
    L5_2 = A0_2.loopTag
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = gamelua
    L4_2 = L4_2.cutsceneSetTranslation
    L5_2 = A0_2.tag
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end

L1_1.offset = L2_1
L1_1 = FlashAnimation

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = gamelua
  L1_2 = L1_2.cutsceneClose
  L2_2 = A0_2.tag
  L1_2(L2_2)
  L1_2 = A0_2.loopTag
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.cutsceneClose
    L2_2 = A0_2.loopTag
    L1_2(L2_2)
  end
  L1_2 = A0_2.loadGroup
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.releaseAssets
    L2_2 = {}
    L3_2 = A0_2.loadGroup
    L2_2[1] = L3_2
    L1_2(L2_2)
  end
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L1_1.onExit = L2_1
