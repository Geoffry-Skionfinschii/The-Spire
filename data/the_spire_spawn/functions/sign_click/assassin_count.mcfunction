

execute unless predicate the_spire:is_sneaking run scoreboard players add $assassin_count G_Settings 1
execute if predicate the_spire:is_sneaking run scoreboard players remove $assassin_count G_Settings 1

execute if score $assassin_count G_Settings matches ..-1 run scoreboard players set $assassin_count G_Settings 0