execute store result score @s tls.pos_x run data get entity @s Pos[0] 1000
execute store result score @s tls.pos_z run data get entity @s Pos[2] 1000

scoreboard players operation @s tls.dx = @s tls.pos_x
scoreboard players operation @s tls.dx -= @s tls.pos_ox

scoreboard players operation @s tls.dz = @s tls.pos_z
scoreboard players operation @s tls.dz -= @s tls.pos_oz

scoreboard players operation @s tls.progress += @s tls.dx
scoreboard players operation @s tls.progress += @s tls.dz

scoreboard players operation @s tls.pos_ox = @s tls.pos_x
scoreboard players operation @s tls.pos_oz = @s tls.pos_z
