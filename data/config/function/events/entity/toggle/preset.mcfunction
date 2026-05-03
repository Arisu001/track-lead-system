# Copy var entity
$execute as @e[tag=tls_$(type)__race] run scoreboard players add @s tms.var 1
$scoreboard players operation @s tls.toggle__$(type) = @e[tag=tls_$(type)__race] tms.var

# ————— Toggle hide —————
# Start  |  Checkpoint  |  Finish
execute if entity @e[scores={tms.var=2..}, tag=tls_start__race, distance=..1.5] run function config:events/entity/toggle/visibility        {remove_1: "checkpoint", remove_2: "finish", add:      "start", scale: 0.0, particle: "reverse_portal", event: "deactivate"}
execute if entity @e[scores={tms.var=2..}, tag=tls_checkpoint__race, distance=..1.5] run function config:events/entity/toggle/visibility   {remove_1: "start",      remove_2: "finish", add: "checkpoint", scale: 0.0, particle: "reverse_portal", event: "deactivate"}
execute if entity @e[scores={tms.var=2..}, tag=tls_finish__race, distance=..1.5] run function config:events/entity/toggle/visibility       {remove_1: "checkpoint", remove_2: "start",  add:     "finish", scale: 0.0, particle: "reverse_portal", event: "deactivate"}


# ————— Toggle visible —————
# Start  |  Checkpoint  |  Finish
execute if entity @e[scores={tms.var=1}, tag=tls_start__race, distance=..1.5] run function config:events/entity/toggle/visibility      {remove_1: "checkpoint", remove_2: "finish", add:      "start", scale: 2.0, particle: "glow", event: "activate"}
execute if entity @e[scores={tms.var=1}, tag=tls_checkpoint__race, distance=..1.5] run function config:events/entity/toggle/visibility {remove_1: "start",      remove_2: "finish", add: "checkpoint", scale: 2.0, particle: "glow", event: "activate"}
execute if entity @e[scores={tms.var=1}, tag=tls_finish__race, distance=..1.5] run function config:events/entity/toggle/visibility     {remove_1: "checkpoint", remove_2: "start",  add:     "finish", scale: 2.0, particle: "glow", event: "activate"}
