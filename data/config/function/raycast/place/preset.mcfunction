# Cursor
tp @e[tag=cursor_trg] ~ -64 ~ ~ ~
kill @e[tag=cursor_trg]
summon shulker ~ ~ ~ {Tags: ["cursor_trg", "tls"], Team: "tls_good", Silent: 1b, Invulnerable: 1b, NoAI: 1b, active_effects: [{id: "invisibility", amplfier: 128, duration: -1, show_particles: 0b}, {id: "glowing", amplfier: 128, duration: -1, show_particles: 0b}]}

function config:player/position

# Place
# Path
execute if entity @s[advancements={config:tools/path/start=true}] run function config:raycast/place {y: 3, entity: "text_display", type: "start", cat: "path", name: "START", color: "green", distance: 1.0f}
execute if entity @s[advancements={config:tools/path/checkpoint=true}] run function config:raycast/place {y: 3, entity: "text_display", type: "checkpoint", cat: "path", name: "CHECKPOINT", color: "gold", distance: 1.0f}
execute if entity @s[advancements={config:tools/path/finish=true}] run function config:raycast/place {y: 3, entity: "text_display", type: "finish", cat: "path", name: "FINISH", color: "red", distance: 1.0f}

# Mode
execute if entity @s[advancements={config:tools/mode/kart=true}] run function config:raycast/place {y: 1.5, entity: "minecart", type: "kart", cat: "mode", name: "", color: "", distance: 0.0f}
execute if entity @s[advancements={config:tools/mode/boat=true}] run function config:raycast/place {y: 1.5, entity: "oak_boat", type: "boat", cat: "mode", name: "", color: "", distance: 0.0f}
execute if entity @s[advancements={config:tools/mode/runner=true}] run function config:raycast/place {y: 1.5, entity: "", type: "runner", cat: "mode", name: "", color: "", distance: 0.0f}
