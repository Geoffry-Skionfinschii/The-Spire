
tag @s add SPAWN_PREVIEW_MP

summon marker 0 0 0 {Tags:["SPAWN_PREVIEW_MK"]}
execute as @e[type=marker,tag=SPAWN_PREVIEW_MK] at @s run function infection_ctm:game/states/0/state/marker_move_with_player

kill @e[type=marker,tag=SPAWN_PREVIEW_MK]