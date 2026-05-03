# ————— Path —————
# Start  |  Checkpoint  |  Finish
execute if entity @e[tag=tls_start__race, distance=..1.5] run function config:hud/screen/entity_properties      {type: "Start",      color: "green", category: "select", event: "component"}
execute if entity @e[tag=tls_checkpoint__race, distance=..1.5] run function config:hud/screen/entity_properties {type: "Checkpoint", color: "gold",  category: "select", event: "component"}
execute if entity @e[tag=tls_finish__race, distance=..1.5] run function config:hud/screen/entity_properties     {type: "Finish",     color: "red",   category: "select", event: "component"}

# ————— Mode —————
# Kart  |  Boat  |  Runner
execute if entity @e[tag=tls_kart__race, distance=..1.5] run function config:hud/screen/entity_properties       {type: "Kart",   color: "dark_aqua", category: "select", event: "component"}
execute if entity @e[tag=tls_boat__race, distance=..1.5] run function config:hud/screen/entity_properties       {type: "Boat",   color: "aqua",      category: "select", event: "component"}
execute if entity @e[tag=tls_runner__race, distance=..1.5] run function config:hud/screen/entity_properties     {type: "Runner", color: "green",     category: "select", event: "component"}

# Increase interaction²
attribute @s entity_interaction_range base set 33.0

# Summon cursor
execute unless entity @e[tag=tls__player_cursor__trg] run summon interaction ~ ~ ~ {Tags: ["tls__player_cursor__trg", "tls"], response: 1b, width: 1.001f, height: 1.001f}

# Smooth teleport
data modify entity @e[tag=tls__player_cursor__trg, limit=1] teleport_duration set value 1

# Teleport on cursor
tp @e[tag=tls__player_cursor__trg] @e[tag=tls_cursor_trg, limit=1]
 