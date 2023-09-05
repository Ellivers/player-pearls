# Called by player_pearls:use/load and player_pearls:positional_anchor/load

function #rx.playerdb:api/v2/get/self

execute store result score #temp player_pearls run data get entity @s SelectedItemSlot

data remove storage player_pearls:storage root.temp.item
execute if score #temp player_pearls matches 0 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:0b}]
execute if score #temp player_pearls matches 1 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:1b}]
execute if score #temp player_pearls matches 2 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:2b}]
execute if score #temp player_pearls matches 3 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:3b}]
execute if score #temp player_pearls matches 4 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:4b}]
execute if score #temp player_pearls matches 5 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:5b}]
execute if score #temp player_pearls matches 6 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:6b}]
execute if score #temp player_pearls matches 7 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:7b}]
execute if score #temp player_pearls matches 8 run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:8b}]

execute unless data storage player_pearls:storage root.temp.item{id:"minecraft:ender_pearl"} run data modify storage player_pearls:storage root.temp.item set from storage rx.playerdb:io player.data.player_pearls.inventory[{Slot:-106b}]
execute if data storage player_pearls:storage root.temp.item.tag.player_pearls.uuid run data modify storage player_pearls:storage root.uuid set from storage player_pearls:storage root.temp.item.tag.player_pearls.uuid
scoreboard players set #success player_pearls 0
execute if data storage player_pearls:storage root.temp.item.tag.player_pearls.uuid run scoreboard players set #success player_pearls 1
