# Hotbar 8 - Open T Chest item, fixed, blocker
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{Fixed:1b,TChestKey:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:8b}]
execute unless entity @s[nbt={Inventory:[{Slot:8b,Count:1b,id:"minecraft:stick",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.8 with minecraft:tripwire_hook{display:{Name:'[{"text":"Open T Chest","italic":false}]'},Fixed:1b,TChestKey:1b,Blocker:1b} 1

scoreboard players add #expected_clearables G_Temporary 1