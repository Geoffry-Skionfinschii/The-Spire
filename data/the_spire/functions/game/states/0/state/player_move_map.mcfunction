

scoreboard players add $world_x_offset INF_StatusReg 5000

tellraw @s [{"text":"The game is now at X = "},{"score":{"name": "$world_x_offset","objective": "INF_StatusReg"}}]