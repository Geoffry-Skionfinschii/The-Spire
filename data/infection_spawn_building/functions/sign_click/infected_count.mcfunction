

execute unless predicate infection_ctm:is_sneaking run scoreboard players add $infected_count INF_Settings 1
execute if predicate infection_ctm:is_sneaking run scoreboard players remove $infected_count INF_Settings 1

execute if score $infected_count INF_Settings matches ..0 run scoreboard players set $infected_count INF_Settings 1