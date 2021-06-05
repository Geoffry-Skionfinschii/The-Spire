

execute unless predicate the_spire:is_sneaking run scoreboard players operation $game_time INF_Settings += #30min INF_Constants
execute if predicate the_spire:is_sneaking run scoreboard players operation $game_time INF_Settings -= #30min INF_Constants

execute if score $game_time INF_Settings matches ..0 run scoreboard players operation $game_time INF_Settings = #30min INF_Constants