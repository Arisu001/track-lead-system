# Copy id
execute at @e[tag=cursor_trg] run scoreboard players operation $tls_deleted tms.var = @e[tag=tls, type=#config:__class, distance=..0.2] tls.id

# Update
execute at @e[tag=cursor_trg] if entity @e[tag=tls_checkpoint__race, distance=..1.5] run function config:events/remove/new_id {type: "checkpoint", name: "CHECKPOINT", color: "gold"}
execute at @e[tag=cursor_trg] if entity @e[tag=tls_kart__race, distance=..1.5] run function config:events/remove/new_id {type: "kart", name: "", color: ""}
execute at @e[tag=cursor_trg] if entity @e[tag=tls_boat__race, distance=..1.5] run function config:events/remove/new_id {type: "boat", name: "", color: ""}
execute at @e[tag=cursor_trg] if entity @e[tag=tls_runner__race, distance=..1.5] run function config:events/remove/new_id {type: "runner", name: "", color: ""}

# Kill
execute at @e[tag=cursor_trg] run kill @e[tag=tls, type=#config:__class, distance=..0.2]
