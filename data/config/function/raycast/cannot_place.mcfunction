# Cursor
tp @e[tag=cursor_trg] ~ -64 ~ ~ ~
kill @e[tag=cursor_trg]
summon shulker ~ ~ ~ {Tags: ["cursor_trg", "tls"], Team: "tls_bad", Silent: 1b, Invulnerable: 1b, NoAI: 1b, active_effects: [{id: "invisibility", amplfier: 128, duration: -1, show_particles: 0b}, {id: "glowing", amplfier: 128, duration: -1, show_particles: 0b}]}
