

function the_spire_worldgen:generate_spawn/place

setworldspawn ~ ~29 ~
tp @a ~ ~29 ~
gamemode adventure @a
gamerule spawnRadius 0

summon marker ~ ~29 ~ {Tags:["SPAWN_BUILDING_G"]}


function the_spire_spawn:spawn_built