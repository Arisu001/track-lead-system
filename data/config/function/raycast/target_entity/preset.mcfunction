# Start  |  Checkpoint  |  Finish
execute at @e[tag=tls_start__race, distance=..1.5] run function config:raycast/target_entity      {remove_1: "checkpoint", remove_2: "finish", remove_3: "kart", remove_4: "boat", remove_5: "runner", add:      "start"}
execute at @e[tag=tls_checkpoint__race, distance=..1.5] run function config:raycast/target_entity {remove_1: "start",      remove_2: "finish", remove_3: "kart", remove_4: "boat", remove_5: "runner", add: "checkpoint"}
execute at @e[tag=tls_finish__race, distance=..1.5] run function config:raycast/target_entity     {remove_1: "checkpoint", remove_2: "start",  remove_3: "kart", remove_4: "boat", remove_5: "runner", add:     "finish"}

# Kart  |  Boat  |  Runner
execute at @e[tag=tls_kart__race, distance=..1.5] run function config:raycast/target_entity       {remove_1: "start", remove_2: "checkpoint", remove_3: "finish", remove_4: "boat", remove_5: "runner", add:   "kart"}
execute at @e[tag=tls_boat__race, distance=..1.5] run function config:raycast/target_entity       {remove_1: "start", remove_2: "checkpoint", remove_3: "finish", remove_4: "kart", remove_5: "runner", add:   "boat"}
execute at @e[tag=tls_runner__race, distance=..1.5] run function config:raycast/target_entity     {remove_1: "start", remove_2: "checkpoint", remove_3: "finish", remove_4: "boat", remove_5: "kart",   add: "runner"}
