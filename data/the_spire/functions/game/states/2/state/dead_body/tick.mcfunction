
execute as @a if predicate the_spire:is_sneaking at @s run function the_spire:game/states/2/state/dead_body/player_drag_check
execute as @a unless predicate the_spire:is_sneaking at @s run scoreboard players reset @s G_DraggingBodyId