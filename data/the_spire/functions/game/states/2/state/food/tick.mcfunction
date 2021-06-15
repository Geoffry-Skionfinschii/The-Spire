execute unless score $FoodTickTimer G_Timers matches -2147483648..2147483647 run scoreboard players set $FoodTickTimer G_Timers 0
execute if score $FoodTickTimer G_Timers matches 5.. run scoreboard players set $FoodTickTimer G_Timers 0


execute as @a[tag=!GHOST] at @s run function the_spire:game/states/2/state/food/player_tick


scoreboard players add $FoodTickTimer G_Timers 1