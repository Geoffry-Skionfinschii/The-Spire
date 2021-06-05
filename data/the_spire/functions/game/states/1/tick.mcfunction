
scoreboard players remove $GameBeginTimer G_Timers 1

function the_spire:game/states/1/state/display_start_in

execute if score $GameBeginTimer G_Timers matches ..0 run scoreboard players set $game_state G_StatusReg 2