local L0_1, L1_1, L2_1
L0_1 = this
if L0_1 == nil then
  L0_1 = _ENV
end
if L0_1 == nil then
  L1_1 = _G
  L1_1 = L1_1.getfenv
  L2_1 = 1
  L1_1 = L1_1(L2_1)
  L0_1 = L1_1
end

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A2_2 ~= nil then
    if A2_2 == "Friends" then
      L4_2 = gamelua
      L4_2 = L4_2.getLeaderboardScoresForFriends
      L5_2 = A1_2
      L6_2 = 1
      L7_2 = A3_2 + 1
      L4_2(L5_2, L6_2, L7_2)
    elseif A2_2 == "Player" then
      L4_2 = gamelua
      L4_2 = L4_2.getLeaderboardScoresAroundPlayer
      L5_2 = A1_2
      L6_2 = A3_2 / 2
      L6_2 = L6_2 - 1
      L7_2 = A3_2 / 2
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = gamelua
      L4_2 = L4_2.getLeaderboardScoresForRange
      L5_2 = A1_2
      L6_2 = 1
      L7_2 = A3_2 + 1
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end

L0_1.loadLeaderboardData = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = A0_2.leaderboards
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.stale = true
  end
end

L0_1.setLeaderboardsStale = L1_1

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.leaderboards
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.scores
  L4_2 = #L4_2
  if L4_2 ~= 0 then
    L4_2 = A0_2.leaderboards
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2.stale
    if not L4_2 then
      goto lbl_18
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.loadLeaderboardData
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  goto lbl_28
  ::lbl_18::
  L4_2 = gamelua
  L4_2 = L4_2.eventManager
  L5_2 = L4_2
  L4_2 = L4_2.notify
  L6_2 = {}
  L7_2 = gamelua
  L7_2 = L7_2.events
  L7_2 = L7_2.EID_STEAM_LEADERBOARD_DATA_READY
  L6_2.id = L7_2
  L6_2.board = A1_2
  L4_2(L5_2, L6_2)
  ::lbl_28::
end

L0_1.refreshLeaderboard = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = gamelua
  L1_2 = L1_2.util
  L1_2 = L1_2.Timer
  L1_2 = L1_2.new
  L2_2 = 0
  L1_2 = L1_2(L2_2)
  A0_2.timer = L1_2
  L1_2 = {}
  A0_2.leaderboards = L1_2
  L1_2 = _G
  L1_2 = L1_2.pairs
  L2_2 = gamelua
  L2_2 = L2_2.leaderboards
  L2_2 = L2_2.leaderboardOrder
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = {}
    t = L6_2
    L6_2 = {}
    s = L6_2
    L6_2 = t
    L7_2 = L5_2.name
    L6_2.displayName = L7_2
    L6_2 = t
    L7_2 = L5_2.img
    L6_2.img = L7_2
    L6_2 = t
    L7_2 = s
    L6_2.scores = L7_2
    L6_2 = t
    L6_2.stale = 0
    L6_2 = A0_2.leaderboards
    L7_2 = L5_2.name
    L8_2 = t
    L6_2[L7_2] = L8_2
  end
end

L0_1.init = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.msg
  L3_2 = nil
  L4_2 = A1_2.action
  if L4_2 then
    L4_2 = A1_2.action
    L3_2 = A0_2[L4_2]
    if L3_2 == nil then
      L4_2 = gamelua
      L4_2 = L4_2.print
      L5_2 = "ERROR: action \""
      L6_2 = A1_2.action
      L7_2 = "\" not found!\n"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2(L5_2)
      
      function L3_2()
        local L0_3, L1_3
      end
    end
  else
    function L3_2()
      local L0_3, L1_3
    end
  end
  L4_2 = gamelua
  L4_2 = L4_2.ui
  L4_2 = L4_2.steamLeaderBoards
  L4_2 = L4_2.ErrorDialog
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.name = "errorDlg"
  L6_2.msg = L2_2
  L7_2 = A1_2.actionIcon
  L6_2.actionIcon = L7_2
  L6_2.action = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2.x = 0
  L4_2.y = 0
  L5_2 = gamelua
  L5_2 = L5_2.screenWidth
  L4_2.width = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.screenHeight
  L4_2.height = L5_2
  L5_2 = gamelua
  L5_2 = L5_2.eventManager
  L6_2 = L5_2
  L5_2 = L5_2.notify
  L7_2 = {}
  L8_2 = gamelua
  L8_2 = L8_2.events
  L8_2 = L8_2.EID_PUSH_FRAME
  L7_2.id = L8_2
  L7_2.target = L4_2
  L5_2(L6_2, L7_2)
end

L0_1.showErrorDialog = L1_1

function L1_1(A0_2, A1_2, A2_2)
end

L0_1.postHighscore = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.dialogsEnabled
  if L1_2 then
    L1_2 = gamelua
    L1_2 = L1_2.print
    L2_2 = "Steam:gotoLeaderboards\n"
    L1_2(L2_2)
    L1_2 = gamelua
    L1_2 = L1_2.ui
    L1_2 = L1_2.steamLeaderBoards
    L1_2 = L1_2.LeaderboardWindow
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.service = A0_2
    L4_2 = A0_2.leaderboards
    L3_2.boards = L4_2
    L3_2.speed = 4
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.setAnchors
    L4_2 = {}
    L4_2.x = 0.5
    L4_2.y = 0.5
    L2_2(L3_2, L4_2)
    L2_2 = gamelua
    L2_2 = L2_2.eventManager
    L3_2 = L2_2
    L2_2 = L2_2.notify
    L4_2 = {}
    L5_2 = gamelua
    L5_2 = L5_2.events
    L5_2 = L5_2.EID_PUSH_FRAME
    L4_2.id = L5_2
    L4_2.target = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = gamelua
    L1_2 = L1_2.print
    L2_2 = "Not showing leaderboards, dialogs are disabled.\n"
    L1_2(L2_2)
  end
end

L0_1.gotoLeaderboards = L1_1

function L1_1(A0_2, A1_2)
  A0_2.dialogsEnabled = A1_2
end

L0_1.setDialogsEnabled = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.id
  if L2_2 == "STEAM_FAILURE_MESSAGE" then
    L3_2 = A0_2
    L2_2 = A0_2.showErrorDialog
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.id
    if L2_2 == "STEAM_LEADERBOARD_DATA_READY" then
      L2_2 = A0_2.leaderboards
      L3_2 = A1_2.board
      L2_2 = L2_2[L3_2]
      L3_2 = A1_2.failed
      L3_2 = not L3_2
      L2_2.stale = L3_2
      L2_2 = gamelua
      L2_2 = L2_2.eventManager
      L3_2 = L2_2
      L2_2 = L2_2.notify
      L4_2 = {}
      L5_2 = gamelua
      L5_2 = L5_2.events
      L5_2 = L5_2.EID_STEAM_LEADERBOARD_DATA_READY
      L4_2.id = L5_2
      L5_2 = A1_2.board
      L4_2.board = L5_2
      L5_2 = A1_2.failed
      L4_2.failed = L5_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A1_2.id
      if L2_2 == "STEAM_PENDING_ACTION_COMPLETE" then
        L2_2 = gamelua
        L2_2 = L2_2.eventManager
        L3_2 = L2_2
        L2_2 = L2_2.notify
        L4_2 = {}
        L5_2 = gamelua
        L5_2 = L5_2.events
        L5_2 = L5_2.EID_STEAM_ACTION_COMPLETE
        L4_2.id = L5_2
        L5_2 = A1_2.action
        L4_2.action = L5_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end

L0_1.eventTriggered = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.timer
  L3_2 = L2_2
  L2_2 = L2_2.update
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L0_1.update = L1_1
