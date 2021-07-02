
function the_spire:game/states/2/state/craftables/tick

function the_spire:game/states/2/state/dead_body/tick


function the_spire:game/states/2/state/radio/detect_radio

# Calculate food before thermal tick
function the_spire:game/states/2/state/food/tick

function the_spire:game/states/2/state/thermal/tick

function the_spire:game/states/2/state/vote_evict/tick

execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/max_health_controller/player_tick
execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/actionbar/player_draw
execute as @e[type=wolf] at @s run function the_spire:game/states/2/state/wolf_anger/wolf_tick

execute as @a[scores={mc_Deaths=1..}] at @s run function the_spire:game/states/2/state/dead_body/create_player_body
#execute as @a[scores={mc_Deaths=1..}] at @s run tp @s @e[type=marker,tag=BLD_CABIN,limit=1]
execute as @a[scores={mc_Deaths=1..}] run scoreboard players reset @s mc_Deaths