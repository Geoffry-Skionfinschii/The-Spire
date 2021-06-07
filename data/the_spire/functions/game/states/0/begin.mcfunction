
scoreboard players operation $GameBeginTimer G_Timers = #30sec G_Constants

scoreboard players reset @a SPWN_CancelStart
scoreboard players enable @a[tag=SPAWN_MODERATOR] SPWN_CancelStart

tellraw @a[tag=SPAWN_MODERATOR] [{"text":"Game is starting, click to cancel...","color":"gold","clickEvent": {"action": "run_command","value": "/trigger SPWN_CancelStart set 1"}}]