tellraw @a "Begin 2"

clear @a

title @a actionbar "The game begins..."

scoreboard players reset * G_ValidPlayers

tag @a remove ASSASSIN
tag @a remove SURVIVOR
tag @a remove GHOST

function the_spire:game/states/2/state/select_assassins

function the_spire:game/states/2/state/tell_teams

scoreboard players set @a G_ValidPlayers 1
scoreboard players set @a G_Temperature 1200
scoreboard players set @a G_AmbTemperature 0

#define score_holder $RecalculateAmbientTemperature G_Timers - Timer to track how long since last temperature calculation.
scoreboard players set $RecalculateAmbientTemperature G_Timers 0


execute as @a[tag=ASSASSIN] run item replace entity @s hotbar.7 with brick{display:{Name:'[{"text":"Red Radio","italic":false,"color":"red"}]',Lore:['[{"text":"/teammsg <message>","italic":false,"color":"gold"}]']},Radio:1b,RadioColor:"RED",CustomModelData:2} 1