kill @e[type=marker,tag=W_WORLDSPAWN]

summon marker 0 0 8 {Tags:["W_WORLDSPAWN"]}

execute as @e[type=marker,tag=W_WORLDSPAWN] run function the_spire:game/states/1/state/generate_world/world/find_spawn/do_marker