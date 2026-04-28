kill @e[tag=tls, type=#config:__class]

scoreboard players reset * tms.const
scoreboard players reset * tms.temp
scoreboard players reset * tms.value
scoreboard players reset * tms.var
scoreboard players reset * tls.item__pseudo
scoreboard players reset * tls.nb__item__pseudo
scoreboard players reset * tls.record
scoreboard players reset * tls.play_record
scoreboard players reset * tls.pos_x
scoreboard players reset * tls.pos_y
scoreboard players reset * tls.pos_z
scoreboard players reset * tls.dx
scoreboard players reset * tls.dz
scoreboard players reset * tls.progress
scoreboard players reset * tls.sort
scoreboard players reset * tls_Path
scoreboard players reset * tls_Mode
scoreboard players reset * tls_Toggle

advancement revoke @a only config:tools/open open
advancement revoke @a only config:tools/uninstall uninstall
advancement revoke @a only config:tools/undo undo 
advancement revoke @a only config:tools/remove remove
advancement revoke @a only config:tools/path/start has_placed
advancement revoke @a only config:tools/path/checkpoint has_placed
advancement revoke @a only config:tools/path/finish has_placed
advancement revoke @a only config:tools/mode/kart has_placed
advancement revoke @a only config:tools/mode/boat has_placed
advancement revoke @a only config:tools/mode/runner has_placed

team add tls_bad
team add tls_good
team add tls_ghost
team modify tls_bad color red
team modify tls_good color green
team modify tls_ghost color gray

tag @a remove tls_stg__path
tag @a remove tls_stg__mode
tag @a remove tls_stg__checkpoint
tag @a remove tls_stg__finish
tag @a remove tls_stg__start
tag @a remove tls_stg__kart
tag @a remove tls_stg__boat
tag @a remove tls_stg__runner
tag @a remove tls_stg__disable
tag @a remove tls_stg__activate
tag @a remove tls_stg__ghost_properties
tag @a remove tls_stg__config
tag @a remove tls_stg__done
tag @a remove tls_record__1
tag @a remove tls_record__2
tag @a remove tls_record__3
tag @a remove tls_record__4
tag @a remove tls_record__5
tag @a remove tls_record__6
tag @a remove tls_record__7
tag @a remove tls_record__8
tag @a remove tls_record__9
tag @a remove tls_record__10
tag @a remove tls_record__11
tag @a remove tls_record__12
tag @a remove tls_play_record__1
tag @a remove tls_play_record__2
tag @a remove tls_play_record__3
tag @a remove tls_play_record__4
tag @a remove tls_play_record__5
tag @a remove tls_play_record__6
tag @a remove tls_play_record__7
tag @a remove tls_play_record__8
tag @a remove tls_play_record__9
tag @a remove tls_play_record__10
tag @a remove tls_play_record__11
tag @a remove tls_play_record__12
tag @a remove tls_racer
tag @a remove tls_has__ghost
tag @a[tag=tls_handler] add tls_stg__closed

clear @a #config:config[custom_data={settings: 1b, config: 1b}]
clear @a #config:config[custom_data={path: {start: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {checkpoint: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {finish: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {kart: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {boat: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {runner: 1b}, config: 1b}]
clear @a #config:config[custom_data={undo: 1b, config: 1b}]
clear @a #config:config[custom_data={remove: 1b, config: 1b}]
clear @a #config:config[custom_data={pseudo: 1b, config: 1b}]

data remove storage config:settings starts
data remove storage config:settings finishs
data remove storage config:settings checkpoints
data remove storage config:settings karts
data remove storage config:settings boats
data remove storage config:settings runner
data remove storage config:settings edit
data remove storage config:settings ghost
data remove storage config:settings toggle
data remove storage config:inventory settings
data remove storage config:player rot
data remove storage tls:racer id
data remove storage tls:racer sort
