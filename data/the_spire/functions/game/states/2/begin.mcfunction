tellraw @a "Begin 2"

title @a actionbar "The game begins..."

scoreboard players reset * G_ValidPlayers

tag @a remove ASSASSIN
tag @a remove SURVIVOR
tag @a remove GHOST

function the_spire:game/states/2/state/select_assassins

function the_spire:game/states/2/state/tell_teams

scoreboard players set @a G_ValidPlayers 1