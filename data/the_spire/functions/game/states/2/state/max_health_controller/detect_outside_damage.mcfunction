

execute if score @s mc_PlayerPrevHP > @s mc_PlayerHP run scoreboard players operation @s G_PlayerHP = @s mc_PlayerHP
execute if score @s mc_PlayerPrevHP > @s mc_PlayerHP run scoreboard players operation @s G_PlayerHP *= #100 G_Constants