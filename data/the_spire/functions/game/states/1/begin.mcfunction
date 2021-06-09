
forceload remove all
forceload add 0 0

scoreboard players add $world_x_offset G_StatusReg 5000
tellraw @a [{"text":"Please wait, we are generating the world...","color": "blue"}]
tellraw @a [{"text":"(Generating at X = "},{"score":{"name": "$world_x_offset","objective": "G_StatusReg"},"color": "gold"},{"text": ")","color": "reset"}]

# Set worldgen timer
scoreboard players set $WorldGenStep G_Timers 0

