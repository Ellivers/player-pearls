# Called by the player_pearls:player_hurt_entity advancement
# Grabs the player's UUID

advancement revoke @s only player_pearls:player_hurt_entity

data modify storage player_pearls:storage root.temp.uuid set from entity @a[advancements={player_pearls:entity_hurt_player=true},limit=1] UUID
loot replace entity @s[gamemode=!creative] weapon.mainhand loot player_pearls:technical/player_pearl
loot give @s[gamemode=creative] loot player_pearls:technical/player_pearl

playsound minecraft:block.enchantment_table.use player @a[distance=..16] ~ ~1 ~ 1 1.5
particle minecraft:reverse_portal ~ ~1 ~ .2 1 .2 1 30

advancement revoke @a[advancements={player_pearls:entity_hurt_player=true}] only player_pearls:entity_hurt_player
