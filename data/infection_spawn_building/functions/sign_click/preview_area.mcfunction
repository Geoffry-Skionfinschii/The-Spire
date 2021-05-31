

execute unless entity @a[tag=SPAWN_PREVIEW_MP] unless predicate infection_ctm:is_sneaking run function infection_ctm:game/states/0/state/player_preview_map
execute if predicate infection_ctm:is_sneaking run function infection_ctm:game/states/0/state/player_move_map
