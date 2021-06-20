
kill @e[type=marker,tag=BLD_CABIN]

execute if entity @e[type=marker,tag=W_WORLDSPAWN] run say hi
execute as @e[type=marker,tag=W_WORLDSPAWN] at @s run summon marker ~ ~ ~ {Tags:["W_BUILDING", "BLD_CABIN"]}

execute as @e[type=marker,tag=BLD_CABIN] at @s run function the_spire:game/states/1/state/generate_world/essentials/cabin/generate_cabin/do_marker