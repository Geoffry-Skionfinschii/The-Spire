

execute unless entity @a[tag=SPAWN_PREVIEW_MP] unless predicate the_spire:is_sneaking run function the_spire:game/states/0/state/player_preview_map
execute if predicate the_spire:is_sneaking run function the_spire:game/states/0/state/player_move_map
