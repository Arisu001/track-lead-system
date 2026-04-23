# Cursor
tp @e[tag=cursor_trg] ~ -64 ~ ~ ~
kill @e[tag=cursor_trg]
summon shulker ~ ~ ~ {Tags: ["cursor_trg", "tls"], Team: "tls_good", Silent: 1b, Invulnerable: 1b, NoAI: 1b, active_effects: [{id: "invisibility", amplfier: 128, duration: -1, show_particles: 0b}, {id: "glowing", amplfier: 128, duration: -1, show_particles: 0b}]}

# Place
execute if entity @s[advancements={config:tools/path/start=true}] run function config:raycast/place {type: "start", name: "START", color: "green"}
execute if entity @s[advancements={config:tools/path/checkpoint=true}] run function config:raycast/place {type: "chec", name: "CHECKPOINT", color: "gold"}
execute if entity @s[advancements={config:tools/path/finish=true}] run function config:raycast/place {type: "finish", name: "FINISH", color: "red"}
