
execute unless score @s G_PlayerFood matches -2147483648..2147483647 run scoreboard players set @s G_PlayerFood 10000


scoreboard players set #should_consume_food_to_heal G_Temporary 0


# Food eaten :)
execute if score @s mc_EatenFood matches 1.. run scoreboard players add @s G_PlayerFood 4000
execute if score @s mc_EatenFood matches 1.. run scoreboard players add @s G_PlayerMaxHP 500
execute if score @s mc_EatenFood matches 1.. run scoreboard players add @s G_PlayerHP 200




execute if score $FoodTickTimer G_Timers matches 0 run scoreboard players remove @s G_PlayerFood 1


# Should we take a food and heal some health?
execute if score $FoodTickTimer G_Timers matches 0 if score @s G_PlayerHP < @s G_PlayerMaxHP if score @s G_PlayerFood matches 8000.. if score @s G_Temperature matches 4000.. run scoreboard players set #should_consume_food_to_heal G_Temporary 1
# IF we should, execute steps
execute if score #should_consume_food_to_heal G_Temporary matches 1 run scoreboard players remove @s G_PlayerFood 1
execute if score #should_consume_food_to_heal G_Temporary matches 1 run scoreboard players add @s G_PlayerHP 1
execute if score #should_consume_food_to_heal G_Temporary matches 1 run effect give @s regeneration 1 0 true

execute if score @s G_PlayerFood matches 10001.. run scoreboard players set @s G_PlayerFood 10000
execute if score @s G_PlayerFood matches ..-1 run scoreboard players set @s G_PlayerFood 0


# Make sure effectively half food - sprinting will always work but can always eat.
execute unless score @s mc_PlayerFood matches -2147483648..2147483647 run effect give @s hunger 1 255 true
execute if score @s mc_PlayerFood matches 12.. run effect give @s hunger 1 255 true
execute if score @s mc_PlayerFood matches ..10 run effect give @s saturation 1 0 true


# Reduce max health if hungry

execute if score @s G_PlayerFood matches ..500 run effect give @s poison 1 0 true
execute if score @s G_PlayerFood matches ..0 if score $Food_StarvingTick G_Timers matches 0 run scoreboard players remove @s G_PlayerMaxHP 10


# Increase max health if warm - removed and moved to food
#execute if score @s G_Temperature matches 11999.. run effect give @s regeneration 1 0 true
#execute if score @s G_Temperature matches 11999.. if score $TH_WarmthRegenTick G_Timers matches 0 if score @s G_PlayerMaxHP matches ..1600 run scoreboard players add @s G_PlayerMaxHP 10
#execute if score @s G_Temperature matches 11999.. if score $TH_WarmthRegenTick G_Timers matches 0 if score @s G_PlayerMaxHP matches ..1600 run scoreboard players add @s G_PlayerHP 10



scoreboard players set @s mc_EatenFood 0

