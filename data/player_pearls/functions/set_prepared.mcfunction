# Called by the player_pearls:inventory_changed/prepared_pearls advancement
# Searches for and replaces the renamed pearls

advancement revoke @s only player_pearls:inventory_changed/prepared_pearls

data modify storage player_pearls:storage root.temp.slot set value {Slot:-1b}
data modify storage player_pearls:storage root.temp.slot set from entity @s Inventory[{id:"minecraft:ender_pearl",tag:{display:{Name:'{"text":"player pearl"}'}}}]

execute store result score #temp player_pearls run data get storage player_pearls:storage root.temp.slot.Slot
execute if score #temp player_pearls matches -1 run return 0

execute if score #temp player_pearls matches 0 run item modify entity @s hotbar.0 player_pearls:set_prepared
execute if score #temp player_pearls matches 1 run item modify entity @s hotbar.1 player_pearls:set_prepared
execute if score #temp player_pearls matches 2 run item modify entity @s hotbar.2 player_pearls:set_prepared
execute if score #temp player_pearls matches 3 run item modify entity @s hotbar.3 player_pearls:set_prepared
execute if score #temp player_pearls matches 4 run item modify entity @s hotbar.4 player_pearls:set_prepared
execute if score #temp player_pearls matches 5 run item modify entity @s hotbar.5 player_pearls:set_prepared
execute if score #temp player_pearls matches 6 run item modify entity @s hotbar.6 player_pearls:set_prepared
execute if score #temp player_pearls matches 7 run item modify entity @s hotbar.7 player_pearls:set_prepared
execute if score #temp player_pearls matches 8 run item modify entity @s hotbar.8 player_pearls:set_prepared

execute if score #temp player_pearls matches 9 run item modify entity @s inventory.0 player_pearls:set_prepared
execute if score #temp player_pearls matches 10 run item modify entity @s inventory.1 player_pearls:set_prepared
execute if score #temp player_pearls matches 11 run item modify entity @s inventory.2 player_pearls:set_prepared
execute if score #temp player_pearls matches 12 run item modify entity @s inventory.3 player_pearls:set_prepared
execute if score #temp player_pearls matches 13 run item modify entity @s inventory.4 player_pearls:set_prepared
execute if score #temp player_pearls matches 14 run item modify entity @s inventory.5 player_pearls:set_prepared
execute if score #temp player_pearls matches 15 run item modify entity @s inventory.6 player_pearls:set_prepared
execute if score #temp player_pearls matches 16 run item modify entity @s inventory.7 player_pearls:set_prepared
execute if score #temp player_pearls matches 17 run item modify entity @s inventory.8 player_pearls:set_prepared
execute if score #temp player_pearls matches 18 run item modify entity @s inventory.9 player_pearls:set_prepared
execute if score #temp player_pearls matches 19 run item modify entity @s inventory.10 player_pearls:set_prepared
execute if score #temp player_pearls matches 20 run item modify entity @s inventory.11 player_pearls:set_prepared
execute if score #temp player_pearls matches 21 run item modify entity @s inventory.12 player_pearls:set_prepared
execute if score #temp player_pearls matches 22 run item modify entity @s inventory.13 player_pearls:set_prepared
execute if score #temp player_pearls matches 23 run item modify entity @s inventory.14 player_pearls:set_prepared
execute if score #temp player_pearls matches 24 run item modify entity @s inventory.15 player_pearls:set_prepared
execute if score #temp player_pearls matches 25 run item modify entity @s inventory.16 player_pearls:set_prepared
execute if score #temp player_pearls matches 26 run item modify entity @s inventory.17 player_pearls:set_prepared
execute if score #temp player_pearls matches 27 run item modify entity @s inventory.18 player_pearls:set_prepared
execute if score #temp player_pearls matches 28 run item modify entity @s inventory.19 player_pearls:set_prepared
execute if score #temp player_pearls matches 29 run item modify entity @s inventory.20 player_pearls:set_prepared
execute if score #temp player_pearls matches 30 run item modify entity @s inventory.21 player_pearls:set_prepared
execute if score #temp player_pearls matches 31 run item modify entity @s inventory.22 player_pearls:set_prepared
execute if score #temp player_pearls matches 32 run item modify entity @s inventory.23 player_pearls:set_prepared
execute if score #temp player_pearls matches 33 run item modify entity @s inventory.24 player_pearls:set_prepared
execute if score #temp player_pearls matches 34 run item modify entity @s inventory.25 player_pearls:set_prepared
execute if score #temp player_pearls matches 35 run item modify entity @s inventory.26 player_pearls:set_prepared

playsound minecraft:block.end_portal_frame.fill player @s ~ ~1 ~ 1 2
