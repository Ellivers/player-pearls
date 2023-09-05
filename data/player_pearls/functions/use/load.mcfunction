# Called by the player_pearls:tick

scoreboard players reset @s player_pearls.uses

function player_pearls:get_active_pearl

execute if score #success player_pearls matches 1 run schedule function player_pearls:use/scheduled 1t
