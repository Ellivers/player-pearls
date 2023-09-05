# Yes, this is indeed blatantly ripped from TCC

execute if block ^ ^ ^0.01 minecraft:dropper{Lock:"§positional_anchor_filled\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~0.5 ~1 ~0.5 run function player_pearls:positional_anchor/raycast/finish
execute if entity @s[distance=..5] unless block ^ ^ ^0.01 minecraft:dropper{Lock:"§positional_anchor_filled\\uF001"} positioned ^ ^ ^0.01 run function player_pearls:positional_anchor/raycast/raycast
