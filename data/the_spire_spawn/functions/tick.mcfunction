# This is not to be ticked by the main minecraft tick.json
# This should only be ticked when players are in spawn and the game is in state zero

scoreboard players enable @a[tag=SPAWN_MODERATOR] SPWN_ClickSign

execute as @a[scores={SPWN_ClickSign=1..}] run function the_spire_spawn:sign_click/find_sign

scoreboard players add $GlassTimer SPWN_SpawnStuff 1

execute if score $GlassTimer SPWN_SpawnStuff matches 200.. at @e[type=marker,limit=1,tag=GEN_SPAWN_MARKER] run function the_spire_spawn:change_glass
execute if score $GlassTimer SPWN_SpawnStuff matches 200.. run scoreboard players set $GlassTimer SPWN_SpawnStuff 0


gamemode adventure @a[tag=!SPAWN_MODERATOR]