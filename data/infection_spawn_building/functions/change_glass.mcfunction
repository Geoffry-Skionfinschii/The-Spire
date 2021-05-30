

scoreboard players add $Glass SPWN_SpawnStuff 1
execute if score $Glass SPWN_SpawnStuff matches 2.. run scoreboard players set $Glass SPWN_SpawnStuff 0


execute if score $Glass SPWN_SpawnStuff matches 0 run setblock ~ ~-1 ~ red_stained_glass
execute if score $Glass SPWN_SpawnStuff matches 1 run setblock ~ ~-1 ~ blue_stained_glass
