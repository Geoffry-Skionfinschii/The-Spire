forceload add 0 0

kill @e[type=marker,tag=GEN_SPAWN_MARKER]
summon minecraft:marker 0 64 0 {Tags:["GEN_SPAWN_MARKER"]}
execute as @e[type=marker,tag=GEN_SPAWN_MARKER,limit=1] at @s run spreadplayers 0 0 0 1 false @e[type=marker,tag=GEN_SPAWN_MARKER]
execute as @e[type=marker,tag=GEN_SPAWN_MARKER,limit=1] at @s run tp @s 0 ~ 0

execute as @e[type=marker,tag=GEN_SPAWN_MARKER,limit=1] at @s run function infection_world_gen:generate_spawn/execute_marker