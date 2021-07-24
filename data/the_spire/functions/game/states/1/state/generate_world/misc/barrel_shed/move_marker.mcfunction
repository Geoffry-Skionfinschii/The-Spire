
#execute if score #num_placement_attempts G_Temporary matches 0 run say Scanning barrel_shed location..
execute if score #num_placement_attempts G_Temporary matches 0 run scoreboard players add $NumBarrelShedPlanned G_DebugInfo 1

scoreboard players add $NumBarrelShedPlaceAttempts G_DebugInfo 1

scoreboard players add #num_placement_attempts G_Temporary 1

scoreboard players set #is_marker_unsafe G_Temporary 0

spreadplayers ~ ~ 0.0 400.0 false @s
execute at @s if entity @e[type=marker,tag=!BLD_PLACING,tag=W_BUILDING,distance=..60] run scoreboard players add #is_marker_unsafe G_Temporary 1

execute if score #is_marker_unsafe G_Temporary matches 0 at @s run function the_spire:game/states/1/state/generate_world/misc/barrel_shed/place_shed
#execute unless score #is_marker_unsafe G_Temporary matches 0 if score #num_placement_attempts G_Temporary matches ..2 run say Invalid barrel_shed location - rescan
execute unless score #is_marker_unsafe G_Temporary matches 0 if score #num_placement_attempts G_Temporary matches ..2 run function the_spire:game/states/1/state/generate_world/misc/barrel_shed/move_marker

#execute unless score #is_marker_unsafe G_Temporary matches 0 if score #num_placement_attempts G_Temporary matches 3.. run say Could not place barrel_shed
execute unless score #is_marker_unsafe G_Temporary matches 0 if score #num_placement_attempts G_Temporary matches 3.. run kill @s
