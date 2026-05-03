# Config player
gamemode spectator @s

# teleport fall point to Lakitu
tp @e[tag=tls_fall__trg, distance=..1, limit=1] @e[tag=tls_lakitu__trg, distance=..2.015, limit=1]

# Modify property and tp vehicle to Lakitu
data modify entity @e[tag=tls_mode, type=#config:vehicle, distance=..2.015, limit=1] NoGravity set value 1b
tp @e[tag=tls_mode, type=#config:vehicle] @e[tag=tls_lakitu__trg, distance=..2.015, limit=1] 

# Spectate Lakitu
spectate @e[tag=tls_lakitu__trg, distance=..0.1, limit=1] @s

# Kill fall point
execute if entity @e[tag=tls_lakitu__trg, distance=..0.1] run kill @e[tag=tls_fall__trg]

# Reset
scoreboard players reset @s tms.temp
