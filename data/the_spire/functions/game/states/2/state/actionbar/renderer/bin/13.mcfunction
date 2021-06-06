execute if score #temp_change_dir G_Temporary matches -1 run title @s actionbar [{"text":"∨ 🔥 ","color":"dark_blue"},{"text":"","color":"green"}]
execute if score #temp_change_dir G_Temporary matches 0 run title @s actionbar [{"text":"– 🔥 ","color":"gold"},{"text":"","color":"green"}]
execute if score #temp_change_dir G_Temporary matches 1 run title @s actionbar [{"text":"∧ 🔥 ","color":"gold"},{"text":"","color":"green"}]
