

scoreboard players set #is_marker_safe G_Temporary 0


function the_spire:game/states/1/state/generate_world/essentials/cabin/generate_cabin/spread_marker

tellraw @a "CABIN"

execute unless score #is_marker_safe G_Temporary matches 0 at @s run function the_spire:game/states/1/state/generate_world/essentials/cabin/generate_cabin/place_cabin
execute if score #is_marker_safe G_Temporary matches 0 at @s run function the_spire:game/states/1/state/generate_world/essentials/cabin/generate_cabin/do_marker
