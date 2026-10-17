local L0_1, L1_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = gamerService
  if L0_2 then
    L0_2 = eventManager
    L1_2 = L0_2
    L0_2 = L0_2.addEventListener
    L2_2 = events
    L2_2 = L2_2.EID_GAME_RESUMED
    L3_2 = gamerService
    L0_2(L1_2, L2_2, L3_2)
  end
end

initializeLeaderboards = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = gameCenterEnabled
  if L0_2 then
    L0_2 = gameCenter
    L0_2 = L0_2 ~= nil
  end
  return L0_2
end

leaderboardsEnabled = L0_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = 0
  L1_2 = gamerService
  if not L1_2 then
    L1_2 = leaderboards
    if not L1_2 then
      goto lbl_169
    end
    L1_2 = gameCenterEnabled
    if not L1_2 then
      goto lbl_169
    end
    L1_2 = postHighscores
    if not L1_2 then
      goto lbl_169
    end
  end
  L1_2 = 1
  L2_2 = actions
  L2_2 = L2_2.episodeTypeTable
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = 1
    L6_2 = actions
    L6_2 = L6_2.myLevelFolders
    L7_2 = actions
    L7_2 = L7_2.episodeTypeTable
    L7_2 = L7_2[L4_2]
    L6_2 = L6_2[L7_2]
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = print
      L10_2 = ":::::::::::::::::: postTotalHighScores(5) ::::::::::::::::::::: \n"
      L9_2(L10_2)
      L9_2 = calculateEpisodeScoreAndStars
      L10_2 = L4_2
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L0_2 = L0_2 + L9_2
      L10_2 = getLeaderboardNameForEpisode
      L11_2 = actions
      L11_2 = L11_2.myLevelFolders
      L12_2 = actions
      L12_2 = L12_2.episodeTypeTable
      L12_2 = L12_2[L4_2]
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2[L8_2]
      L10_2 = L10_2(L11_2)
      L11_2 = print
      L12_2 = "episodeLeaderboardName = "
      L13_2 = _G
      L13_2 = L13_2.tostring
      L14_2 = L10_2
      L13_2 = L13_2(L14_2)
      L14_2 = "\n"
      L12_2 = L12_2 .. L13_2 .. L14_2
      L11_2(L12_2)
      if L10_2 ~= false then
        L11_2 = gamerService
        if L11_2 then
          L11_2 = gamerService
          L12_2 = L11_2
          L11_2 = L11_2.postHighscore
          L13_2 = L10_2
          L14_2 = L9_2
          L11_2(L12_2, L13_2, L14_2)
        else
          L11_2 = leaderboards
          L11_2 = L11_2[L10_2]
          L12_2 = print
          L13_2 = "LeaderBoardId = "
          L14_2 = _G
          L14_2 = L14_2.tostring
          L15_2 = L11_2
          L14_2 = L14_2(L15_2)
          L15_2 = "\n"
          L13_2 = L13_2 .. L14_2 .. L15_2
          L12_2(L13_2)
          if L11_2 then
            L12_2 = print
            L13_2 = ":::::::::::::::::: postTotalHighScores(6) ::::::::::::::::::::: \n"
            L12_2(L13_2)
            L12_2 = gameCenter
            L12_2 = L12_2.leaderboards
            if L12_2 then
              L12_2 = gameCenter
              L12_2 = L12_2.leaderboards
              L12_2 = L12_2[L11_2]
              if L12_2 then
                L12_2 = gameCenter
                L12_2 = L12_2.leaderboards
                L12_2 = L12_2[L11_2]
                L12_2 = L12_2.posted
                if L12_2 == false then
                  L12_2 = print
                  L13_2 = "Posting highscore for episode "
                  L14_2 = L8_2
                  L15_2 = " (score = "
                  L16_2 = L9_2
                  L17_2 = " leaderboard = "
                  L18_2 = L11_2
                  L19_2 = ")\n"
                  L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
                  L12_2(L13_2)
                  L12_2 = print
                  L13_2 = ":::::::::::::::::: postTotalHighScores(7) ::::::::::::::::::::: \n"
                  L12_2(L13_2)
                  L12_2 = postHighscore
                  L13_2 = L11_2
                  L14_2 = L9_2
                  L12_2(L13_2, L14_2)
                end
              end
            end
          else
            L12_2 = print
            L13_2 = ":::::::::::::::::: leaderBoardID Was FALSE ::::::::::::::::::::: \n"
            L12_2(L13_2)
          end
        end
      end
    end
  end
  L1_2 = print
  L2_2 = ":::::::::::::::::: postTotalHighScores(9) ::::::::::::::::::::: \n"
  L1_2(L2_2)
  if 0 < L0_2 then
    L1_2 = getLeaderboardNameForTotalScore
    L1_2 = L1_2()
    L2_2 = gamerService
    if L2_2 then
      L2_2 = gamerService
      L3_2 = L2_2
      L2_2 = L2_2.postHighscore
      L4_2 = L1_2
      L5_2 = L0_2
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = leaderboards
      L2_2 = L2_2[L1_2]
      L3_2 = print
      L4_2 = [[
:::::::::::::::::: postTotalHighScores(10) :::::::::::::::::::::
 ]]
      L3_2(L4_2)
      L3_2 = gameCenter
      L3_2 = L3_2.leaderboards
      if L3_2 then
        L3_2 = gameCenter
        L3_2 = L3_2.leaderboards
        L3_2 = L3_2[L2_2]
        if L3_2 then
          L3_2 = gameCenter
          L3_2 = L3_2.leaderboards
          L3_2 = L3_2[L2_2]
          L3_2 = L3_2.posted
          if L3_2 == false then
            L3_2 = print
            L4_2 = "Posting totalscore (score = "
            L5_2 = L0_2
            L6_2 = " lboardIdTotal "
            L7_2 = L2_2
            L8_2 = ")\n"
            L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
            L3_2(L4_2)
            L3_2 = postHighscore
            L4_2 = L2_2
            L5_2 = L0_2
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
  ::lbl_169::
end

postTotalHighScores = L0_1
