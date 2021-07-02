
# Since this is advancement triggered, make sure that the gamestate is allowed
execute if score $game_state G_StatusReg matches 2 if entity @s[tag=!GHOST] at @s run function the_spire:game/states/2/state/inventory/generic_tick

advancement revoke @s only the_spire:inventory_changed_trig