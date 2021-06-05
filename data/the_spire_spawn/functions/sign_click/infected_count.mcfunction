

execute unless predicate the_spire:is_sneaking run scoreboard players add $infected_count G_Settings 1
execute if predicate the_spire:is_sneaking run scoreboard players remove $infected_count G_Settings 1

execute if score $infected_count G_Settings matches ..0 run scoreboard players set $infected_count G_Settings 1