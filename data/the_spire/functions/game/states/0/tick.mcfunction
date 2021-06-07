effect give @a saturation 5 2 true
effect give @a regeneration 5 255 true

scoreboard players remove $GameBeginTimer G_Timers 1

function the_spire:game/states/0/state/display_start_in

execute if entity @a[scores={SPWN_CancelStart=1..}] run function the_spire:cancel_start_game

execute if score $GameBeginTimer G_Timers matches ..0 run scoreboard players set $game_state G_StatusReg 1