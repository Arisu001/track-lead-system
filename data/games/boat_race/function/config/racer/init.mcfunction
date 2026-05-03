scoreboard players set @s tls.curr__time 0
scoreboard players set @s tls.curr__ms 0
scoreboard players set @s tls.curr__sec 0
scoreboard players set @s tls.curr__min 0
function tls:player/position
function tls:data/get/entity/position
scoreboard players operation @s tls.pos_ox = @s tls.pos_x
scoreboard players operation @s tls.pos_oz = @s tls.pos_z
