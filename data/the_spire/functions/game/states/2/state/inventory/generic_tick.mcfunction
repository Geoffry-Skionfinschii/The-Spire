
#define storage the_spire:drop_item_inventory A storage to store an item that needs to be dropped from a player

#dumpCode = () => {
#    lines = "";   
#    for(let i = 0; i <= 26; i++) {
#        lines += `execute unless entity @s[nbt={Inventory:[{Slot:${i+9}b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:${i+9}b}]
#execute unless entity @s[nbt={Inventory:[{Slot:${i+9}b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.${i} with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1\n`
#    }
#
#    return console.log(lines);
#}

data modify storage the_spire:drop_item_inventory ItemNBT set value []

execute unless entity @s[nbt={Inventory:[{Slot:9b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:9b}]
execute unless entity @s[nbt={Inventory:[{Slot:9b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.0 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:10b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:10b}]
execute unless entity @s[nbt={Inventory:[{Slot:10b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.1 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:11b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:11b}]
execute unless entity @s[nbt={Inventory:[{Slot:11b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.2 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:12b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:12b}]
execute unless entity @s[nbt={Inventory:[{Slot:12b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.3 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:13b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:13b}]
execute unless entity @s[nbt={Inventory:[{Slot:13b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.4 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:14b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:14b}]
execute unless entity @s[nbt={Inventory:[{Slot:14b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.5 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:15b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:15b}]
execute unless entity @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.6 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:16b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:16b}]
execute unless entity @s[nbt={Inventory:[{Slot:16b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.7 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:17b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:17b}]
execute unless entity @s[nbt={Inventory:[{Slot:17b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.8 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:18b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:18b}]
execute unless entity @s[nbt={Inventory:[{Slot:18b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.9 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:19b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:19b}]
execute unless entity @s[nbt={Inventory:[{Slot:19b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.10 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:20b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:20b}]
execute unless entity @s[nbt={Inventory:[{Slot:20b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.11 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:21b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:21b}]
execute unless entity @s[nbt={Inventory:[{Slot:21b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.12 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:22b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:22b}]
execute unless entity @s[nbt={Inventory:[{Slot:22b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.13 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:23b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:23b}]
execute unless entity @s[nbt={Inventory:[{Slot:23b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.14 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:24b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:24b}]
execute unless entity @s[nbt={Inventory:[{Slot:24b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.15 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:25b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:25b}]
execute unless entity @s[nbt={Inventory:[{Slot:25b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.16 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:26b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:26b}]
execute unless entity @s[nbt={Inventory:[{Slot:26b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.17 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:27b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:27b}]
execute unless entity @s[nbt={Inventory:[{Slot:27b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.18 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:28b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:28b}]
execute unless entity @s[nbt={Inventory:[{Slot:28b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.19 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:29b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:29b}]
execute unless entity @s[nbt={Inventory:[{Slot:29b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.20 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:30b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:30b}]
execute unless entity @s[nbt={Inventory:[{Slot:30b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.21 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:31b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:31b}]
execute unless entity @s[nbt={Inventory:[{Slot:31b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.22 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:32b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:32b}]
execute unless entity @s[nbt={Inventory:[{Slot:32b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.23 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:33b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:33b}]
execute unless entity @s[nbt={Inventory:[{Slot:33b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.24 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:34b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:34b}]
execute unless entity @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.25 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:35b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:35b}]
execute unless entity @s[nbt={Inventory:[{Slot:35b,Count:1b,id:"minecraft:light_gray_stained_glass_pane",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.26 with minecraft:light_gray_stained_glass_pane{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1


# Hotbar 7
execute unless entity @s[nbt={Inventory:[{Slot:7b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:7b}]
execute unless entity @s[nbt={Inventory:[{Slot:7b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.7 with minecraft:barrier{display:{Name:'[{"text":"Radio","italic":false}]'},Fixed:1b,Blocker:1b} 1
# Hotbar 8
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:8b}]
execute unless entity @s[nbt={Inventory:[{Slot:8b,Count:1b,id:"minecraft:barrier",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.8 with minecraft:barrier{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b} 1



execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.0 with air
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.1 with air
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.2 with air
execute if entity @s[nbt={Inventory:[{Slot:3b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.3 with air
execute if entity @s[nbt={Inventory:[{Slot:4b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.4 with air
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.5 with air
execute if entity @s[nbt={Inventory:[{Slot:6b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.6 with air
#execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.7 with air
#execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.8 with air

# 27 inventory slots, 2 hotbar slot
scoreboard players set #expected_clearables G_Temporary 29

execute if entity @s[tag=ASSASSIN] run function the_spire:game/states/2/state/inventory/assassin_tick
execute if entity @s[tag=SURVIVOR] run function the_spire:game/states/2/state/inventory/survivor_tick

# If there are more blocker items than expected, remove all Fixed and Blocker items
execute store result score #get_clearables G_Temporary run clear @s #the_spire:inventory_blocker{Fixed:1b,Blocker:1b} 0
execute if score #expected_clearables G_Temporary < #get_clearables G_Temporary run clear @s #the_spire:inventory_blocker{Fixed:1b,Blocker:1b}

# Run this, as the other functions will have an opportunity to reject an item
function the_spire:game/states/2/state/inventory/drop_item_list