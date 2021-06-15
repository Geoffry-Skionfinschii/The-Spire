
#define storage the_spire:drop_item_inventory A storage to store an item that needs to be dropped from a player

#dumpCode = () => {
#    lines = "";   
#    for(let i = 0; i <= 26; i++) {
#        lines += `execute unless entity @s[nbt={Inventory:[{Slot:${i+9}b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:${i+9}b}]
#execute unless entity @s[nbt={Inventory:[{Slot:${i+9}b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.${i} with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1\n`
#    }
#
#    return console.log(lines);
#}

data modify storage the_spire:drop_item_inventory ItemNBT set value []


# Inventory Row 1
execute unless entity @s[nbt={Inventory:[{Slot:9b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:9b}]
execute unless entity @s[nbt={Inventory:[{Slot:9b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.0 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:10b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:10b}]
execute unless entity @s[nbt={Inventory:[{Slot:10b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.1 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:11b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:11b}]
execute unless entity @s[nbt={Inventory:[{Slot:11b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.2 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:12b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:12b}]
execute unless entity @s[nbt={Inventory:[{Slot:12b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.3 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:13b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:13b}]
execute unless entity @s[nbt={Inventory:[{Slot:13b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.4 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:14b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:14b}]
execute unless entity @s[nbt={Inventory:[{Slot:14b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.5 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
# Inventory Row 2
execute unless entity @s[nbt={Inventory:[{Slot:18b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:18b}]
execute unless entity @s[nbt={Inventory:[{Slot:18b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.9 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:19b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:19b}]
execute unless entity @s[nbt={Inventory:[{Slot:19b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.10 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:20b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:20b}]
execute unless entity @s[nbt={Inventory:[{Slot:20b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.11 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:21b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:21b}]
execute unless entity @s[nbt={Inventory:[{Slot:21b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.12 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:22b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:22b}]
execute unless entity @s[nbt={Inventory:[{Slot:22b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.13 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:23b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:23b}]
execute unless entity @s[nbt={Inventory:[{Slot:23b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.14 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
# Inventory Row 3
execute unless entity @s[nbt={Inventory:[{Slot:27b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:27b}]
execute unless entity @s[nbt={Inventory:[{Slot:27b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.18 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:28b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:28b}]
execute unless entity @s[nbt={Inventory:[{Slot:28b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.19 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:29b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:29b}]
execute unless entity @s[nbt={Inventory:[{Slot:29b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.20 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:30b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:30b}]
execute unless entity @s[nbt={Inventory:[{Slot:30b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.21 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:31b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:31b}]
execute unless entity @s[nbt={Inventory:[{Slot:31b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.22 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1
execute unless entity @s[nbt={Inventory:[{Slot:32b,tag:{Fixed:1b,Blocker:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:32b}]
execute unless entity @s[nbt={Inventory:[{Slot:32b,Count:1b,id:"minecraft:clay_ball",tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s inventory.23 with minecraft:clay_ball{display:{Name:'[{"text":"Locked","italic":false}]'},Fixed:1b,Blocker:1b,CustomModelData:2} 1


# Hotbar 7 - Radio, sometimes a clearable. When barrier it is a blocker, when not barrier it is not a blocker
execute unless entity @s[nbt={Inventory:[{Slot:7b,tag:{Radio:1b}}]}] run data modify storage the_spire:drop_item_inventory ItemNBT append from entity @s Inventory[{Slot:7b}]
execute unless entity @s[nbt={Inventory:[{Slot:7b,Count:1b,tag:{Radio:1b}}]}] run item replace entity @s hotbar.7 with minecraft:brick{display:{Name:'[{"text":"No Radio","italic":false,"color":"gray"}]',Lore:['[{"text":"No Signal","italic":false,"color":"gold"}]']},Fixed:1b,Radio:1b,Blocker:1b,CustomModelData:1} 1


execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.0 with air
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.1 with air
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.2 with air
execute if entity @s[nbt={Inventory:[{Slot:3b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.3 with air
execute if entity @s[nbt={Inventory:[{Slot:4b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.4 with air
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.5 with air
execute if entity @s[nbt={Inventory:[{Slot:6b,tag:{Fixed:1b,Blocker:1b}}]}] run item replace entity @s hotbar.6 with air


# 27-9 = 18 inventory slots - the radio is not a blocker and will not trigger the clear
scoreboard players set #expected_clearables G_Temporary 18
# If no radio, it should be a fixed blocker.
execute if entity @s[nbt={Inventory:[{Slot:7b,Count:1b,tag:{Fixed:1b,Blocker:1b}}]}] run scoreboard players add #expected_clearables G_Temporary 1

execute if entity @s[tag=ASSASSIN] run function the_spire:game/states/2/state/inventory/assassin_tick
execute if entity @s[tag=SURVIVOR] run function the_spire:game/states/2/state/inventory/survivor_tick

# If there are more blocker items than expected, remove all Fixed and Blocker items
execute store result score #get_clearables G_Temporary run clear @s #the_spire:inventory_blocker{Fixed:1b,Blocker:1b} 0
execute if score #expected_clearables G_Temporary < #get_clearables G_Temporary run clear @s #the_spire:inventory_blocker{Fixed:1b,Blocker:1b}

# Run this, as the other functions will have an opportunity to reject an item
function the_spire:game/states/2/state/inventory/drop_item_list