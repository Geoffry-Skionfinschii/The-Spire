

execute unless predicate the_spire:is_sneaking run scoreboard players operation $hold_time G_Settings += #1min G_Constants
execute if predicate the_spire:is_sneaking run scoreboard players operation $hold_time G_Settings -= #1min G_Constants

execute if score $hold_time G_Settings matches ..0 run scoreboard players operation $hold_time G_Settings = #1min G_Constants