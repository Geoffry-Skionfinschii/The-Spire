
execute unless score @s G_PlayerFood matches -2147483648..2147483647 run scoreboard players set @s G_PlayerFood 10000



# Food eaten :)
execute if score @s mc_EatenFood matches 1.. run scoreboard players add @s G_PlayerFood 4000
execute if score @s mc_EatenFood matches 1.. run scoreboard players add @s G_PlayerHP 400




execute if score $FoodTickTimer G_Timers matches 0 run scoreboard players remove @s G_PlayerFood 1
execute if score @s G_PlayerFood matches 10001.. run scoreboard players set @s G_PlayerFood 10000
execute if score @s G_PlayerFood matches ..-1 run scoreboard players set @s G_PlayerFood 0


# Make sure effectively half food - sprinting will always work but can always eat.
execute unless score @s mc_PlayerFood matches -2147483648..2147483647 run effect give @s hunger 1 255 true
execute if score @s mc_PlayerFood matches 12.. run effect give @s hunger 1 255 true
execute if score @s mc_PlayerFood matches ..10 run effect give @s saturation 1 0 true



scoreboard players set @s mc_EatenFood 0

