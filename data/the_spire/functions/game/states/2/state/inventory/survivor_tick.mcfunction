# Implement 3x3 grid of barriers

execute unless entity @s[nbt={Inventory:[{Slot:15b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:15b}]
execute unless entity @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.6 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:16b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:16b}]
execute unless entity @s[nbt={Inventory:[{Slot:16b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.7 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:17b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:17b}]
execute unless entity @s[nbt={Inventory:[{Slot:17b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.8 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1


execute unless entity @s[nbt={Inventory:[{Slot:24b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:24b}]
execute unless entity @s[nbt={Inventory:[{Slot:24b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.15 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:25b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:25b}]
execute unless entity @s[nbt={Inventory:[{Slot:25b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.16 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:26b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:26b}]
execute unless entity @s[nbt={Inventory:[{Slot:26b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.17 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1


execute unless entity @s[nbt={Inventory:[{Slot:33b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:33b}]
execute unless entity @s[nbt={Inventory:[{Slot:33b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.24 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:34b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:34b}]
execute unless entity @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.25 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:35b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:35b}]
execute unless entity @s[nbt={Inventory:[{Slot:35b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.26 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1

# Hotbar 8
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:8b}]
execute unless entity @s[nbt={Inventory:[{Slot:8b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.8 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1


scoreboard players add #expected_clearables G_Temporary 10