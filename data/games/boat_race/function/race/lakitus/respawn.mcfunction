# Config player
tag @s add tls_has__lakitu
gamemode spectator @s

# Modify teleport_duration on fall entity
data modify entity @e[tag=tls_fall__trg, distance=..1, limit=1] teleport_duration set value 10

# Specate fall point
spectate @e[tag=tls_fall__trg, distance=..1, limit=1] @s

# Reset
scoreboard players reset @s tms.temp
