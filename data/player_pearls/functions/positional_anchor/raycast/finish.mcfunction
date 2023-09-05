############################################################
# Fills a positional anchor
############################################################

execute as @e[type=item_display,distance=..0.0001,tag=tcc.positional_anchor,tag=tcc.positional_anchor.filled,limit=1] run data modify entity @s item.tag.tcc.owner set from storage player_pearls:storage root.uuid
