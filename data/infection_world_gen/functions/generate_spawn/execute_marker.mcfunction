

function infection_world_gen:generate_spawn/place

setworldspawn ~ ~29 ~
tp @a ~ ~29 ~
gamemode adventure @a
gamerule spawnRadius 0

summon marker ~ ~29 ~ {Tags:["SPAWN_BUILDING_G"]}


function infection_spawn_building:spawn_built