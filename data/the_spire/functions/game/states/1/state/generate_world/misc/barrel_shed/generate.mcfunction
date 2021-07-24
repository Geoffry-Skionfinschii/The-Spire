

execute as @e[type=marker,tag=W_WORLDSPAWN] at @s run summon marker ~ ~ ~ {Tags:["W_BUILDING", "BLD_MISC","BLD_PLACING"]}

scoreboard players set #num_placement_attempts G_Temporary 0
execute as @e[type=marker,tag=W_BUILDING,tag=BLD_MISC,tag=BLD_PLACING,limit=1] at @s run function the_spire:game/states/1/state/generate_world/misc/barrel_shed/move_marker