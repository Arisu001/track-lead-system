# Cursor
tp @e[tag=tls_cursor_trg] ~ 319 ~ ~ ~
kill @e[tag=tls_cursor_trg]
summon shulker ~ ~ ~ {Tags: ["tls_cursor_trg", "tls"], Team: "tls_bad", Silent: 1b, Invulnerable: 1b, NoAI: 1b, active_effects: [{id: "invisibility", amplfier: 128, duration: -1, show_particles: 0b}, {id: "glowing", amplfier: 128, duration: -1, show_particles: 0b}]}

# Reset player
tag @s remove tls_target__start
tag @s remove tls_target__checkpoint
tag @s remove tls_target__finish
tag @s remove tls_target__path
tag @s add tls_target__
