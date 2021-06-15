

function the_spire:game/states/2/state/inventory/tick
function the_spire:game/states/2/state/radio/detect_radio

# Calculate food before thermal tick
execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/food/player_tick

function the_spire:game/states/2/state/thermal/tick

execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/max_health_controller/player_tick
execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/actionbar/player_draw
execute as @e[type=wolf] at @s run function the_spire:game/states/2/state/wolf_anger/wolf_tick