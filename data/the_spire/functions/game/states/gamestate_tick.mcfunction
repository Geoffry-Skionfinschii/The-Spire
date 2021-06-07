
# Gamestates
# -1 - Pregame lobby
# 0 - Countdown
# 1 - Generate world. This gamestate exists for 1 tick, as it will immediately end itself during BEGIN state
# 2 - Game - All game modules are active
# 3 - Game Over - Game has ended, prepare for game reset.



scoreboard players operation #prev_state G_Temporary = $previous_game_state G_StatusReg
scoreboard players operation $previous_game_state G_StatusReg = $game_state G_StatusReg

# IN this context, $previous_game_state is the current gamestate (and is immutable), and #prev_state is the previous, $previous_Game_state


execute if score #prev_state G_Temporary matches -1 unless score $previous_game_state G_StatusReg matches -1 run function the_spire:game/states/-1/end
execute if score #prev_state G_Temporary matches 0 unless score $previous_game_state G_StatusReg matches 0 run function the_spire:game/states/0/end
execute if score #prev_state G_Temporary matches 1 unless score $previous_game_state G_StatusReg matches 1 run function the_spire:game/states/1/end
execute if score #prev_state G_Temporary matches 2 unless score $previous_game_state G_StatusReg matches 2 run function the_spire:game/states/2/end
execute if score #prev_state G_Temporary matches 3 unless score $previous_game_state G_StatusReg matches 3 run function the_spire:game/states/3/end


execute if score $previous_game_state G_StatusReg matches -1 unless score #prev_state G_Temporary matches -1 run function the_spire:game/states/-1/begin
execute if score $previous_game_state G_StatusReg matches 0 unless score #prev_state G_Temporary matches 0 run function the_spire:game/states/0/begin
execute if score $previous_game_state G_StatusReg matches 1 unless score #prev_state G_Temporary matches 1 run function the_spire:game/states/1/begin
execute if score $previous_game_state G_StatusReg matches 2 unless score #prev_state G_Temporary matches 2 run function the_spire:game/states/2/begin
execute if score $previous_game_state G_StatusReg matches 3 unless score #prev_state G_Temporary matches 3 run function the_spire:game/states/3/begin



execute if score $previous_game_state G_StatusReg matches -1 run function the_spire:game/states/-1/tick
execute if score $previous_game_state G_StatusReg matches 0 run function the_spire:game/states/0/tick
execute if score $previous_game_state G_StatusReg matches 1 run function the_spire:game/states/1/tick
execute if score $previous_game_state G_StatusReg matches 2 run function the_spire:game/states/2/tick
execute if score $previous_game_state G_StatusReg matches 3 run function the_spire:game/states/3/tick