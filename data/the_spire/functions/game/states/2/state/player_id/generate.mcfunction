scoreboard players reset * G_PlayerId

scoreboard players set $CurrentId G_PlayerId 0

execute as @a[tag=!GHOST] run function the_spire:game/states/2/state/player_id/give_id