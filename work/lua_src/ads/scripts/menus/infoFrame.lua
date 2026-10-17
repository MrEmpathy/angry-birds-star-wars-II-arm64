local L0_1, L1_1
L0_1 = gamelua
L0_1 = L0_1.ui
L0_1 = L0_1.Frame
L1_1 = L0_1
L0_1 = L0_1.new
L0_1 = L0_1(L1_1)
InfoFrame = L0_1
L0_1 = InfoFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = gamelua
  L1_2 = L1_2.ui
  L1_2 = L1_2.BGBox
  L2_2 = L1_2
  L1_2 = L1_2.new
  L1_2 = L1_2(L2_2)
  L1_2.name = "bgbox"
  L2_2 = {}
  L2_2.topLeft = "SCORE_TOP_LEFT"
  L2_2.left = "SCORE_LEFT"
  L2_2.bottomLeft = "SCORE_BOTTOM_LEFT"
  L2_2.bottomMiddle = "SCORE_BOTTOM_MIDDLE"
  L2_2.bottomRight = "SCORE_BOTTOM_RIGHT"
  L2_2.right = "SCORE_RIGHT"
  L2_2.topRight = "SCORE_TOP_RIGHT"
  L2_2.topMiddle = "SCORE_TOP_MIDDLE"
  L2_2.center = "SCORE_CENTER"
  L1_2.components = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.ui
  L2_2 = L2_2.ImageButton
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L2_2.name = "backButton"
  L4_2 = L2_2
  L3_2 = L2_2.setImage
  L5_2 = "LS_BACK_BUTTON"
  L3_2(L4_2, L5_2)
  L2_2.returnValue = "CLOSE"
  L3_2 = gamelua
  L3_2 = L3_2.ui
  L3_2 = L3_2.Text
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.text = ""
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.name = "text"
  L5_2 = L3_2
  L4_2 = L3_2.clip
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.addChild
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L0_1.init = L1_1
L0_1 = InfoFrame

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.onPointerEvent
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = gamelua
  L6_2 = L6_2.print
  L7_2 = _G
  L7_2 = L7_2.tostring
  L8_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L6_2(L7_2, L8_2, L9_2)
  if L4_2 == "CLOSE" then
    L6_2 = gamelua
    L6_2 = L6_2.eventManager
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = {}
    L9_2 = gamelua
    L9_2 = L9_2.events
    L9_2 = L9_2.EID_POP_FRAME
    L8_2.id = L9_2
    L8_2.target = "INFO_FRAME"
    L6_2(L7_2, L8_2)
  end
  L6_2 = -1
  return L6_2
end

L0_1.onPointerEvent = L1_1
L0_1 = InfoFrame

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.getChild
  L3_2 = "backButton"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = L2_2 / 2
  L1_2.x = L2_2
  L2_2 = gamelua
  L2_2 = L2_2.screenWidth
  L2_2 = L2_2 / 2
  L1_2.y = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.getChild
  L4_2 = "bgbox"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.x = 20
  L2_2.y = 20
  L3_2 = gamelua
  L3_2 = L3_2.screenWidth
  L2_2.width = L3_2
  L3_2 = gamelua
  L3_2 = L3_2.screenHeight
  L2_2.height = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.getChild
  L5_2 = "text"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = gamelua
  L4_2 = L4_2.screenWidth
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.screenHeight
  L4_2 = L4_2 * 0.2
  L3_2.y = L4_2
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.Frame
  L4_2 = L4_2.layout
  L5_2 = A0_2
  L4_2(L5_2)
end

L0_1.layout = L1_1
