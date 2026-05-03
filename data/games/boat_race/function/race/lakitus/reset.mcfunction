# Kill Lakitu
kill @e[tag=tls_lakitu__trg, distance=..1]

# Modify property on vehicle
data modify entity @e[tag=tls_mode, type=#config:vehicle, distance=..1, limit=1] NoGravity set value 0b

# Reset player
gamemode adventure @s
tag @s remove tls_has__lakitu
scoreboard players reset @s tms.temp
