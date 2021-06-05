

execute unless predicate the_spire:is_sneaking run scoreboard players operation $hold_time INF_Settings += #1min INF_Constants
execute if predicate the_spire:is_sneaking run scoreboard players operation $hold_time INF_Settings -= #1min INF_Constants

execute if score $hold_time INF_Settings matches ..0 run scoreboard players operation $hold_time INF_Settings = #1min INF_Constants