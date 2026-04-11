function config:hud/chat/ic__datapack_uninstalled


kill @e[tag=tls, type=#config:__class]

scoreboard objectives remove tms.const
scoreboard objectives remove tms.temp
scoreboard objectives remove tms.value
scoreboard objectives remove tms.var
scoreboard objectives remove tls.curr__time
scoreboard objectives remove tls.curr__ms
scoreboard objectives remove tls.curr__sec
scoreboard objectives remove tls.curr__min
scoreboard objectives remove tls.best__time
scoreboard objectives remove tls.best__ms
scoreboard objectives remove tls.best__sec
scoreboard objectives remove tls.best__min
scoreboard objectives remove tls.pos_x
scoreboard objectives remove tls.pos_z
scoreboard objectives remove tls.pos_ox
scoreboard objectives remove tls.pos_oz

tag @s remove tls_stg__opened
tag @s remove tls_stg__opened
tag @s remove tls_handler
tag @s removen tls_handler__fix
tag @a remove tls__racer

data remove storage config:inventory settings

datapack disable "file/track-lead-system"
datapack disable "file/master-track-lead-system"
datapack disable "file/main-track-lead-system"
