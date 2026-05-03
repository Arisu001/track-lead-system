# Lakitu
execute if block ~ ~-.1 ~ black_concrete_powder unless entity @e[tag=tls_fall__trg, distance=..1] run summon item_display ~ ~1 ~ {Tags: ["tls_fall__trg", "tls"], item: {}, teleport_duration: 0}
execute if block ~ ~-.1 ~ black_concrete_powder unless entity @e[tag=tls_lakitu__trg, distance=..2.015] run summon item_display ~ ~2 ~ {Tags: ["tls_lakitu__trg", "tls"], item: {}, teleport_duration: 10}

# Modify rotation[0] on fall entity
data modify entity @e[tag=tls_fall__trg, distance=..1, limit=1] Rotation[0] set from entity @s Rotation[0]

# Fall point
execute if entity @e[tag=tls_lakitu__trg, distance=..2.015] run scoreboard players add @s tms.temp 1 
execute if score @s[tag=!tls_has__lakitu] tms.temp matches 1.. run function tls:race/lakitus/respawn

# Animation
execute at @e[tag=tls_fall__trg, distance=..1] unless entity @e[tag=tls_lakitu__trg, distance=..0.1] run scoreboard players add @s tms.temp 1
execute if score @s tms.temp matches 10.. at @e[tag=tls_fall__trg, distance=..1] run function tls:race/lakitus/animation

# Teleport to the nearest checkpoint
execute unless entity @e[tag=tls_fall__trg, distance=..1] at @e[tag=tls_lakitu__trg, distance=..0.1] run tp @e[tag=tls_lakitu__trg, distance=..0.1] @e[tag=tls_path, tag=!tls_finish__race, sort=nearest, limit=1]
execute unless entity @e[tag=tls_fall__trg, distance=..1] as @e[tag=tls_mode, type=#config:vehicle, distance=..1] run tp @s @e[tag=tls_lakitu__trg, limit=1]

# Reset
execute at @e[tag=tls_lakitu__trg, distance=..0.1] if entity @e[tag=tls_path, distance=..1] run scoreboard players add @s tms.temp 1
execute if score @s tms.temp matches 10.. run function tls:race/lakitus/reset


# ————— Wrong place —————
# Only player in vehicle
execute unless predicate tls:entity/player/vehicle/mode run ride @s[gamemode=!spectator] mount @e[tag=tls_mode, type=#config:vehicle, limit=1]
