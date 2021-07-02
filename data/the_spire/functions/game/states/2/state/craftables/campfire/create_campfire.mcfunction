
kill @s
setblock ~ ~ ~ campfire

summon marker ~ ~ ~ {Tags:["MISC_CAMPFIRE"]}
scoreboard players set @e[type=marker,tag=MISC_CAMPFIRE,distance=..0.1] G_CampfireExpiry 1000
