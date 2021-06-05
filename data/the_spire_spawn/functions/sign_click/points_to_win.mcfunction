

execute unless predicate the_spire:is_sneaking run scoreboard players add $points_to_win G_Settings 1
execute if predicate the_spire:is_sneaking run scoreboard players remove $points_to_win G_Settings 1

execute if score $points_to_win G_Settings matches ..-1 run scoreboard players set $points_to_win G_Settings 0