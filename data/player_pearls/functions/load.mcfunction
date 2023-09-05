# Called by #minecraft:load

#declare storage player_pearls:storage
#declare storage rx.playerdb:io

scoreboard objectives add player_pearls dummy
scoreboard objectives add player_pearls.uses used:ender_pearl
