
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{Radio:1b,Blocker:1b}}]}] run team leave @s
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{Radio:1b,RadioColor:"RED"}}]},team=!Radio_RED] run team join Radio_RED @s
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{Radio:1b,RadioColor:"BLUE"}}]},team=!Radio_BLUE] run team join Radio_BLUE @s
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{Radio:1b,RadioColor:"GREEN"}}]},team=!Radio_GREEN] run team join Radio_GREEN @s