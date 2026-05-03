function config:hud/chat/terrain/set_pos with storage config:settings edit.terrain.setblock
execute if score @s tls.terrain matches 2 run function config:hud/chat/terrain/set_pos with storage config:settings edit.terrain.fill
execute if score @s tls.terrain matches 3 run function config:hud/chat/terrain/set_pos with storage config:settings edit.terrain.clone
execute if score @s tls.terrain matches 4 run function config:hud/chat/terrain/set_pos with storage config:settings edit.terrain.fillbiome
