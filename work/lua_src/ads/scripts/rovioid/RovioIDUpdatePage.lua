local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
RovioIDUpdatePage = L0_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = gamelua
  L1_2 = L1_2.SettingsWrapper
  L2_2 = L1_2
  L1_2 = L1_2.isDarkSide
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "SITH"
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = "LIGHT"
  ::lbl_11::
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.BGBox
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = "ACHIEVEMENTBOX_TOP_LEFT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.topLeft = L4_2
  L4_2 = "ACHIEVEMENTBOX_TOP_MIDDLE_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.topMiddle = L4_2
  L4_2 = "ACHIEVEMENTBOX_TOP_RIGHT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.topRight = L4_2
  L4_2 = "ACHIEVEMENTBOX_MIDDLE_LEFT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.left = L4_2
  L4_2 = "ACHIEVEMENTBOX_CENTER_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.center = L4_2
  L4_2 = "ACHIEVEMENTBOX_MIDDLE_RIGHT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.right = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_LEFT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomLeft = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_MIDDLE_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomMiddle = L4_2
  L4_2 = "ACHIEVEMENTBOX_BOTTOM_RIGHT_SHEET_"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2.bottomRight = L4_2
  L2_2.components = L3_2
  L3_2 = A0_2.name
  if not L3_2 then
    L3_2 = "RovioIDUpdatePage"
  end
  A0_2.name = L3_2
  L2_2.name = "bg"
  L2_2.hanchor = "LEFT"
  L2_2.vanchor = "TOP"
  L4_2 = A0_2
  L3_2 = A0_2.addChild
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = gamelua
  L3_2 = L3_2.deviceModel
  L3_2 = L3_2 == "windows"
  A0_2.confirmOnLeft = L3_2
  L3_2 = _G
  L3_2 = L3_2.type
  L4_2 = A0_2.title
  L3_2 = L3_2(L4_2)
  if L3_2 ~= "table" then
    L3_2 = gamelua
    L3_2 = L3_2.ui
    L3_2 = L3_2.Text
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.name = "title"
    L6_2 = A0_2.title
    L5_2.text = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.getFontBasic
    L5_2.font = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L3_2.vanchor = "TOP"
    L3_2.hanchor = "HCENTER"
    L3_2.visible = true
    L5_2 = L2_2
    L4_2 = L2_2.addChild
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2.title
    L3_2.visible = true
    L4_2 = L2_2
    L3_2 = L2_2.addChild
    L5_2 = A0_2.title
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.contentImage
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.ui
    L3_2 = L3_2.Image
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.name = "contentImage"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.setImage
    L6_2 = A0_2.contentImage
    L4_2(L5_2, L6_2)
    L3_2.vanchor = "TOP"
    L3_2.hanchor = "HCENTER"
    L3_2.visible = true
    L5_2 = L2_2
    L4_2 = L2_2.addChild
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = A0_2.content
  if L3_2 then
    L3_2 = gamelua
    L3_2 = L3_2.ui
    L3_2 = L3_2.Text
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.name = "content"
    L6_2 = A0_2.content
    L5_2.text = L6_2
    L6_2 = gamelua
    L6_2 = L6_2.getFontBasic
    L5_2.font = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L3_2.vanchor = "TOP"
    L3_2.hanchor = "HCENTER"
    L3_2.visible = true
    L5_2 = L2_2
    L4_2 = L2_2.addChild
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.ScallableButton
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.name = "confirm"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.setImage
  L6_2 = A0_2.buttonImage
  if not L6_2 then
    L6_2 = gamelua
    L6_2 = L6_2.getButtonImageName
    L7_2 = "buttonCheck"
    L8_2 = gamelua
    L8_2 = L8_2.SettingsWrapper
    L9_2 = L8_2
    L8_2 = L8_2.isDarkSide
    L8_2, L9_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2)
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.returnValue
  L3_2.returnValue = L4_2
  L3_2.activateOnRelease = true
  L3_2.clickSound = "ButtonProceed"
  L3_2.visible = true
  L5_2 = L2_2
  L4_2 = L2_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L0_1.init = L1_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2)
  local L1_2
end

L0_1.onEntry = L1_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.layout
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = gamelua
  L1_2 = L1_2.getUIScale
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "bg"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "title"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getChild
  L6_2 = "confirm"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.getChild
  L7_2 = "content"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.getChild
  L8_2 = "contentImage"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = gamelua
  L11_2 = L11_2.screenWidth
  L11_2 = L11_2 * 0.5
  L12_2 = gamelua
  L12_2 = L12_2.screenWidth
  L12_2 = L12_2 * 0.7
  if L5_2 then
    L13_2 = L5_2.text
    if L13_2 then
      L13_2 = L5_2.text
      if L13_2 ~= "" then
        L14_2 = L5_2
        L13_2 = L5_2.setScale
        L15_2 = L1_2 * 2
        L13_2(L14_2, L15_2)
        L13_2 = L5_2.width
        L14_2 = L5_2.scaleX
        L10_2 = L13_2 * L14_2
      end
    end
  end
  if L6_2 then
    L6_2.scaleX = L1_2
    L6_2.scaleY = L1_2
    L13_2 = _G
    L13_2 = L13_2.math
    L13_2 = L13_2.max
    L14_2 = L10_2
    L15_2 = L6_2.w
    L16_2 = L6_2.scaleX
    L15_2 = L15_2 * L16_2
    L13_2 = L13_2(L14_2, L15_2)
    L10_2 = L13_2
  end
  if L3_2 then
    L13_2 = L3_2.text
    if L13_2 then
      L13_2 = L3_2.text
      if L13_2 ~= "" then
        L14_2 = L3_2
        L13_2 = L3_2.setScale
        L15_2 = L1_2 * 2
        L13_2(L14_2, L15_2)
        L13_2 = L3_2.width
        L14_2 = L3_2.scaleX
        L8_2 = L13_2 * L14_2
    end
    else
      L13_2 = L3_2.image
      if L13_2 then
        L13_2 = L3_2.image
        if L13_2 ~= "" then
          L13_2 = A0_2.titleScale
          if not L13_2 then
            L13_2 = 1
          end
          L13_2 = L1_2 * L13_2
          L3_2.scaleX = L13_2
          L13_2 = A0_2.titleScale
          if not L13_2 then
            L13_2 = 1
          end
          L13_2 = L1_2 * L13_2
          L3_2.scaleY = L13_2
          L13_2 = L3_2.w
          L14_2 = L3_2.scaleX
          L8_2 = L13_2 * L14_2
        end
      end
    end
  end
  L13_2 = _G
  L13_2 = L13_2.math
  L13_2 = L13_2.max
  L14_2 = L10_2
  L15_2 = L8_2
  L13_2 = L13_2(L14_2, L15_2)
  if L12_2 < L13_2 then
    L13_2 = L12_2
  elseif L11_2 > L13_2 then
    L13_2 = L11_2
  end
  if L13_2 == L12_2 then
    L14_2 = L5_2.text
    if L14_2 then
      L14_2 = L13_2 * 2
      L5_2.textBoxSize = L14_2
    end
    L14_2 = L3_2.text
    if L14_2 then
      L14_2 = L13_2 * 2
      L3_2.textBoxSize = L14_2
    end
  end
  if L5_2 then
    L14_2 = L5_2.text
    if L14_2 then
      L14_2 = L5_2.text
      if L14_2 ~= "" then
        L15_2 = L5_2
        L14_2 = L5_2.getFontLeading
        L14_2 = L14_2(L15_2)
        L9_2 = L14_2 * L1_2
        L14_2 = L5_2.lines
        if L14_2 then
          L14_2 = L9_2 / 2
          L15_2 = L5_2.lines
          L15_2 = #L15_2
          L9_2 = L14_2 * L15_2
        end
      end
    end
    if L6_2 then
      L14_2 = L6_2.h
      L15_2 = L6_2.scaleY
      L14_2 = L14_2 * L15_2
      L9_2 = L9_2 + L14_2
    end
  end
  if L3_2 then
    L14_2 = L3_2.text
    if L14_2 then
      L14_2 = L3_2.text
      if L14_2 ~= "" then
        L15_2 = L3_2
        L14_2 = L3_2.getFontLeading
        L14_2 = L14_2(L15_2)
        L7_2 = L14_2 * L1_2
        L14_2 = L3_2.lines
        if L14_2 then
          L14_2 = L7_2 / 2
          L15_2 = L3_2.lines
          L15_2 = #L15_2
          L7_2 = L14_2 * L15_2
        end
    end
    else
      L14_2 = L3_2.image
      if L14_2 then
        L14_2 = L3_2.image
        if L14_2 ~= "" then
          L14_2 = L3_2.h
          L15_2 = L3_2.scaleY
          L7_2 = L14_2 * L15_2
        end
      end
    end
  end
  L14_2 = L7_2 + L9_2
  L15_2 = L4_2.h
  L15_2 = L15_2 * L1_2
  L14_2 = L14_2 + L15_2
  L16_2 = L2_2
  L15_2 = L2_2.setSize
  L17_2 = L13_2
  L18_2 = L14_2
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = L13_2
  A0_2.bgEndHeight = L14_2
  A0_2.bgEndWidth = L15_2
  if L3_2 then
    L15_2 = L13_2 / 2
    L3_2.x = L15_2
    L15_2 = L3_2.text
    if L15_2 then
      L3_2.y = 0
    else
      L15_2 = L3_2.image
      if L15_2 then
        L15_2 = L3_2.py
        if L15_2 then
          L15_2 = L3_2.image
          if L15_2 ~= "" then
            L15_2 = L14_2 - L7_2
            L15_2 = L15_2 / 2
            L3_2.y = L15_2
          end
        end
      end
    end
  end
  if L6_2 then
    L15_2 = L3_2.x
    L6_2.x = L15_2
    if L7_2 ~= 0 then
      L15_2 = L3_2.y
      L16_2 = L6_2.h
      L16_2 = L16_2 * L1_2
      L15_2 = L15_2 + L16_2
      L6_2.y = L15_2
    else
      L16_2 = L2_2
      L15_2 = L2_2.getTopBlockH
      L15_2 = L15_2(L16_2)
      L15_2 = -L15_2
      L16_2 = L6_2.h
      L16_2 = L16_2 * 0.8
      L16_2 = L16_2 * L1_2
      L15_2 = L15_2 + L16_2
      L6_2.y = L15_2
    end
  end
  if L5_2 then
    L15_2 = L13_2 / 2
    L5_2.x = L15_2
    if L6_2 then
      L15_2 = L6_2.y
      L16_2 = L6_2.h
      L16_2 = L16_2 * L1_2
      L15_2 = L15_2 + L16_2
      L5_2.y = L15_2
    elseif L7_2 == 0 then
      L15_2 = L14_2 - L9_2
      L15_2 = L15_2 / 2
      L5_2.y = L15_2
    else
      L15_2 = L3_2.image
      if L15_2 then
        L15_2 = L3_2.py
        if L15_2 then
          L15_2 = L3_2.image
          if L15_2 ~= "" then
            L15_2 = L3_2.y
            L16_2 = L7_2 * 0.75
            L15_2 = L15_2 + L16_2
            L5_2.y = L15_2
        end
      end
      else
        L15_2 = L3_2.y
        L16_2 = L7_2 / 2
        L15_2 = L15_2 + L16_2
        L17_2 = L5_2
        L16_2 = L5_2.getFontLeading
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2 * L1_2
        L15_2 = L15_2 + L16_2
        L5_2.y = L15_2
      end
    end
  end
  L16_2 = L4_2
  L15_2 = L4_2.setScale
  L17_2 = L1_2
  L15_2(L16_2, L17_2)
  L15_2 = gamelua
  L15_2 = L15_2.screenWidth
  L16_2 = L2_2.width
  L15_2 = L15_2 - L16_2
  L15_2 = L15_2 * 0.5
  L2_2.x = L15_2
  L15_2 = gamelua
  L15_2 = L15_2.screenHeight
  L16_2 = L2_2.height
  L15_2 = L15_2 - L16_2
  L15_2 = L15_2 * 0.5
  L2_2.y = L15_2
  L16_2 = L2_2
  L15_2 = L2_2.getBottomBlockH
  L15_2 = L15_2(L16_2)
  L15_2 = L14_2 + L15_2
  L4_2.y = L15_2
  L16_2 = L2_2
  L15_2 = L2_2.getRightBlockW
  L15_2 = L15_2(L16_2)
  L15_2 = L13_2 + L15_2
  L16_2 = L4_2.w
  L16_2 = L16_2 * 1.5
  L16_2 = L16_2 * L1_2
  L15_2 = L15_2 - L16_2
  L4_2.x = L15_2
end

L0_1.layout = L1_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L7_2 = A0_2.returnValue
  if L4_2 == L7_2 then
    L7_2 = _G
    L7_2 = L7_2.type
    L8_2 = A0_2.returnValue
    L7_2 = L7_2(L8_2)
    if L7_2 == "function" then
      L7_2 = A0_2.returnValue
      L7_2()
    else
      L7_2 = gamelua
      L7_2 = L7_2.eventManager
      L8_2 = L7_2
      L7_2 = L7_2.notify
      L9_2 = {}
      L10_2 = A0_2.returnValue
      L9_2.id = L10_2
      L10_2 = A0_2.meta
      L9_2.meta = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  if A1_2 == "HOVER" then
    L7_2 = _G
    L7_2 = L7_2.ipairs
    L9_2 = A0_2
    L8_2 = A0_2.getChild
    L10_2 = "bg"
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L8_2.children
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      if L11_2 == L6_2 then
        L12_2 = L4_2
        L13_2 = L5_2
        L14_2 = L6_2
        return L12_2, L13_2, L14_2
      end
    end
  end
  L7_2 = "BLOCK"
  L8_2 = nil
  L9_2 = A0_2
  return L7_2, L8_2, L9_2
end

L0_1.onPointerEvent = L1_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Frame
  L3_2 = L3_2.onKeyEvent
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 and A1_2 == "PRESS" then
    if A2_2 == "ESCAPE" or A2_2 == "KEY_BACK" then
      L6_2 = gamelua
      L6_2 = L6_2.eventManager
      L7_2 = L6_2
      L6_2 = L6_2.notify
      L8_2 = {}
      L9_2 = gamelua
      L9_2 = L9_2.events
      L9_2 = L9_2.EID_POP_FRAME
      L8_2.id = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = gamelua
      L6_2 = L6_2.playAudio
      L7_2 = "ButtonBack"
      L6_2(L7_2)
    elseif A2_2 == "S" then
      L6_2 = L3_2
      L7_2 = L4_2
      L8_2 = L5_2
      return L6_2, L7_2, L8_2
    end
  elseif L3_2 then
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = L5_2
    return L6_2, L7_2, L8_2
  end
  L6_2 = "BLOCK"
  L7_2 = nil
  L8_2 = A0_2
  return L6_2, L7_2, L8_2
end

L0_1.onKeyEvent = L1_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.update
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.update = L1_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = gamelua
  L3_2 = L3_2.drawRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L8_2 = 0
  L9_2 = 0
  L10_2 = gamelua
  L10_2 = L10_2.screenWidth
  L11_2 = gamelua
  L11_2 = L11_2.screenHeight
  L12_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Frame
  L3_2 = L3_2.draw
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L0_1.draw = L1_1
L0_1 = RovioIDUpdatePage

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = ui
  L1_2 = L1_2.Frame
  L1_2 = L1_2.onExit
  L2_2 = A0_2
  L1_2(L2_2)
end

L0_1.onExit = L1_1
