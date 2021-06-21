
execute positioned ~ ~-1.3 ~ if entity @e[type=armor_stand,tag=DEAD_BODY,sort=nearest,distance=..2] run scoreboard players operation @s G_DraggingBodyId = @e[type=armor_stand,tag=DEAD_BODY,sort=nearest,distance=..2,limit=1] G_DraggingBodyId
