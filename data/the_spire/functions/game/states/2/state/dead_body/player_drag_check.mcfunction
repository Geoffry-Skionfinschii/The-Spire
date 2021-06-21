
execute unless score @s G_DraggingBodyId matches -2147483648..2147483647 run function the_spire:game/states/2/state/dead_body/player_drag/assign_player
execute if score @s G_DraggingBodyId matches -2147483648..2147483647 run function the_spire:game/states/2/state/dead_body/player_drag/drag_entity_or_clear
