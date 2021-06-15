tellraw @a "Begin 2"

clear @a
recipe take @a *

title @a actionbar "The game begins..."

scoreboard players reset * G_ValidPlayers
scoreboard players reset * G_EvictedVote

tag @a remove ASSASSIN
tag @a remove SURVIVOR
tag @a remove GHOST

function the_spire:game/states/2/state/select_assassins

function the_spire:game/states/2/state/tell_teams

function the_spire:game/states/2/state/player_id/generate

scoreboard players set @a G_ValidPlayers 1
scoreboard players set @a G_Temperature 9999999
scoreboard players set @a G_AmbTemperature 0
scoreboard players set @a G_EvictedVote -1

scoreboard players set @a G_PlayerHP 2000
scoreboard players set @a G_PlayerMaxHP 2000
scoreboard players set @a G_PlayerFood 10000
execute as @a run scoreboard players operation @s mc_PlayerPrevHP = @s mc_PlayerHP

#define score_holder $RecalculateAmbientTemperature G_Timers - Timer to track how long since last temperature calculation.
scoreboard players set $RecalculateAmbientTemperature G_Timers 0


execute as @a[tag=ASSASSIN] run item replace entity @s hotbar.7 with brick{display:{Name:'[{"text":"Red Radio","italic":false,"color":"red"}]',Lore:['[{"text":"/teammsg <message>","italic":false,"color":"gold"}]']},Radio:1b,RadioColor:"RED",CustomModelData:2} 1