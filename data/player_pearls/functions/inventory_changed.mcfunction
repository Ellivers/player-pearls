# Called by the player_pearls:inventory_changed/all advancement
# Updates the saved inventory data

advancement revoke @s only player_pearls:inventory_changed/all
execute if entity @s[advancements={tcc:technical/item_used_on_block/fill_positional_anchor=true}] run return 0

function #rx.playerdb:api/v2/get/self

data modify storage rx.playerdb:io player.data.player_pearls.inventory set from entity @s Inventory

function #rx.playerdb:api/v2/save/self
