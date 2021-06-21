
execute positioned ~ ~-1.3 ~ as @e[type=armor_stand,tag=DEAD_BODY,tag=DEAD_BODY_HEAD,distance=..2] run function the_spire:game/states/2/state/dead_body/player_drag/tag_player_dragging

execute if entity @e[tag=sdfbgGBFUAYa] positioned as @s unless block ~ ~-0.5 ~ #the_spire:body_valid_blocks run tp @e[type=armor_stand,tag=sdfbgGBFUAYa] ~ ~-1.3 ~
execute unless entity @e[tag=sdfbgGBFUAYa] run scoreboard players reset @s G_DraggingBodyId


tag @e[tag=sdfbgGBFUAYa] remove sdfbgGBFUAYa