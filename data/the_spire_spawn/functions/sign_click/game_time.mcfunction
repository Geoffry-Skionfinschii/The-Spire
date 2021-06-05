

execute unless predicate the_spire:is_sneaking run scoreboard players operation $game_time G_Settings += #30min G_Constants
execute if predicate the_spire:is_sneaking run scoreboard players operation $game_time G_Settings -= #30min G_Constants

execute if score $game_time G_Settings matches ..0 run scoreboard players operation $game_time G_Settings = #30min G_Constants