

# Food eaten :)
execute if score @s mc_EatenFood matches 1.. run scoreboard players add @s G_PlayerFood 200
execute if score @s mc_EatenFood matches 1.. run scoreboard players set @s mc_EatenFood 0



scoreboard players remove @s mc_EatenFood 1
execute if score @s G_PlayerFood matches 10001.. run scoreboard players set @s G_PlayerFood 10000
execute if score @s G_PlayerFood matches ..-1 run scoreboard players set @s G_PlayerFood 0


# Make sure effectively maximum food, but always 1 less than full
execute unless score @s mc_PlayerFood matches -2147483648..2147483647 run effect give @s hunger 1 255 true
execute if score @s mc_PlayerFood matches 20.. run effect give @s hunger 1 255 true
execute if score @s mc_PlayerFood matches ..18 run effect give @s saturation 1 0 true