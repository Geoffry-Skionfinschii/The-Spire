
scoreboard players remove $GameBeginTimer INF_Timers 1

function the_spire:game/states/1/state/display_start_in

execute if score $GameBeginTimer INF_Timers matches ..0 run scoreboard players set $game_state INF_StatusReg 2