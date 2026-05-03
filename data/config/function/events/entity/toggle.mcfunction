# Copy name
execute at @e[tag=tls_cursor_trg] run data modify storage config:settings entity.type set from entity @e[tag=tls, type=#config:__class, distance=..1.5, limit=1] CustomName.text

execute at @e[tag=tls_cursor_trg] if entity @e[tag=tls, type=#config:__class, distance=..1.5] run function config:events/entity/toggle/preset with storage config:settings entity
