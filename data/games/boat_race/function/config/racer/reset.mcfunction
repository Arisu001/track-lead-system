function tls:hud/clear
scoreboard players reset @a tls.rank
# tag @a remove tls_racer

scoreboard players reset $tls_timer tms.value
scoreboard players reset @a tls.curr__time
scoreboard players reset @a tls.curr__ms
scoreboard players reset @a tls.curr__sec
scoreboard players reset @a tls.curr__min
scoreboard players reset @a tls.pos_x
scoreboard players reset @a tls.pos_z
scoreboard players reset @a tls.pos_ox
scoreboard players reset @a tls.pos_oz
