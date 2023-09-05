# Called by #minecraft:tick

execute as @a[scores={player_pearls.uses=1..}] at @s run function player_pearls:use/load
