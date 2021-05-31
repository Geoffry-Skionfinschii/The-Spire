
scoreboard players operation #prev_state INF_Temporary = $previous_game_state INF_StatusReg
scoreboard players operation $previous_game_state INF_StatusReg = $game_state INF_StatusReg


execute if score #prev_state INF_Temporary matches 0 unless score $game_state INF_StatusReg matches 0 run function infection_ctm:game/states/0/end
execute if score #prev_state INF_Temporary matches 1 unless score $game_state INF_StatusReg matches 1 run function infection_ctm:game/states/1/end
execute if score #prev_state INF_Temporary matches 2 unless score $game_state INF_StatusReg matches 2 run function infection_ctm:game/states/2/end
execute if score #prev_state INF_Temporary matches 3 unless score $game_state INF_StatusReg matches 3 run function infection_ctm:game/states/3/end

execute if score $game_state INF_StatusReg matches 0 unless score #prev_state INF_Temporary matches 0 run function infection_ctm:game/states/0/begin
execute if score $game_state INF_StatusReg matches 1 unless score #prev_state INF_Temporary matches 1 run function infection_ctm:game/states/1/begin
execute if score $game_state INF_StatusReg matches 2 unless score #prev_state INF_Temporary matches 2 run function infection_ctm:game/states/2/begin
execute if score $game_state INF_StatusReg matches 3 unless score #prev_state INF_Temporary matches 3 run function infection_ctm:game/states/3/begin

execute if score $game_state INF_StatusReg matches 0 run function infection_ctm:game/states/0/tick
execute if score $game_state INF_StatusReg matches 1 run function infection_ctm:game/states/1/tick
execute if score $game_state INF_StatusReg matches 2 run function infection_ctm:game/states/2/tick
execute if score $game_state INF_StatusReg matches 3 run function infection_ctm:game/states/3/tick