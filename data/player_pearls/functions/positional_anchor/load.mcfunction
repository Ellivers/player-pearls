# Called by the player_pearls:item_used_on_block advancement

advancement revoke @s only player_pearls:item_used_on_block

function player_pearls:get_active_pearl

execute if score #success player_pearls matches 0 run say =
execute if score #success player_pearls matches 1 run tag @s add player_pearls.filling_anchor
execute if score #success player_pearls matches 1 run schedule function player_pearls:positional_anchor/scheduled 1t
