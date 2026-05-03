kill @e[tag=tls, type=#config:__class]

scoreboard players reset * tms.const
scoreboard players reset * tms.temp
scoreboard players reset * tms.value
scoreboard players reset * tms.var
scoreboard players reset * tls.rank
scoreboard players reset * tls.id
scoreboard players reset * tls.toggle__start
scoreboard players reset * tls.toggle__checkpoint
scoreboard players reset * tls.toggle__finish
scoreboard players reset * tls.path
scoreboard players reset * tls.mode
scoreboard players reset * tls.terrain
scoreboard players reset * tls.rules
scoreboard players reset * tls.record
scoreboard players reset * tls.play_record
scoreboard players reset * tls.item__pseudo
scoreboard players reset * tls.nb__item__pseudo
scoreboard players reset * tls.curr__time
scoreboard players reset * tls.curr__ms
scoreboard players reset * tls.curr__sec
scoreboard players reset * tls.curr__min
scoreboard players reset * tls.best__time
scoreboard players reset * tls.best__ms
scoreboard players reset * tls.best__sec
scoreboard players reset * tls.best__min
scoreboard players reset * tls.pos_x
scoreboard players reset * tls.pos_z
scoreboard players reset * tls.pos_ox
scoreboard players reset * tls.pos_oz
scoreboard players reset * tls.dx
scoreboard players reset * tls.dz
scoreboard players reset * tls.progress
scoreboard players reset * tls.sort
scoreboard players reset * tls_Properties
scoreboard players reset * tls_Path
scoreboard players reset * tls_Mode
scoreboard players reset * tls_Toggle

scoreboard players set %tls_milliseconde tms.const 20
scoreboard players set %tls_seconde tms.const 60
scoreboard players set %tls_minute tms.const 1200
scoreboard players set %tls_hour tms.const 72000

advancement revoke @a only config:tools/open open
advancement revoke @a only config:tools/uninstall datapack
advancement revoke @a only config:tools/undo undo 
advancement revoke @a only config:tools/path path
advancement revoke @a only config:tools/select/nbt_weaver component
advancement revoke @a only config:tools/modify/nbt_weaver edit
advancement revoke @a only config:tools/entity/remove remove
advancement revoke @a only config:tools/entity/toggle toggle
advancement revoke @a only config:tools/path/start has_placed
advancement revoke @a only config:tools/path/checkpoint has_placed
advancement revoke @a only config:tools/path/finish has_placed
advancement revoke @a only config:tools/mode/kart has_placed
advancement revoke @a only config:tools/mode/boat has_placed
advancement revoke @a only config:tools/mode/runner has_placed
advancement revoke @a only config:tools/edit/terrain/pos_1 has_pos_1
advancement revoke @a only config:tools/edit/terrain/pos_2 has_pos_2

team add tls_bad
team add tls_good
team add tls_ghost
team modify tls_bad color red
team modify tls_good color green
team modify tls_ghost color gray

tag @a remove tls_stg__disable
tag @a remove tls_stg__activate
tag @a remove tls_stg__ghost_properties
tag @a remove tls_stg__config
tag @a remove tls_stg__confirm
tag @a remove tls__edit_terrain__no_clone
tag @a remove tls__edit_terrain__has_fill
tag @a remove tls_target__start
tag @a remove tls_target__checkpoint
tag @a remove tls_target__finish
tag @a remove tls_target__kart
tag @a remove tls_target__boat
tag @a remove tls_target__runner
tag @a remove tls_target__path
tag @a remove tls_target__
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
tag @a remove tls_has__lakitu
tag @a[tag=tls_handler] add tls_stg__closed

team leave @a

clear @a #config:config[custom_data={tools: {settings: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {nbt_weaver: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {undo: 1b}, config: 1b}]
clear @a #config:config[custom_data={tools: {uninstall: 1b}, config: 1b}]
clear @a #config:config[custom_data={entity: {toggle: 1b}, config: 1b}]
clear @a #config:config[custom_data={entity: {remove: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {start: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {checkpoint: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {finish: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {kart: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {boat: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {runner: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {setblock: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {fill: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {clone: 1b}, config: 1b}]
clear @a #config:config[custom_data={terrain: {fillbiome: 1b}, config: 1b}]
clear @a #config:config[custom_data={pseudo: 1b, config: 1b}]

data remove storage config:settings start
data remove storage config:settings finish
data remove storage config:settings checkpoint
data remove storage config:settings kart
data remove storage config:settings boat
data remove storage config:settings setblock
data remove storage config:settings fill
data remove storage config:settings clone
data remove storage config:settings fillbiome
data remove storage config:settings edit
data remove storage config:settings ghost
data remove storage config:settings toggle
data remove storage config:settings entity
data remove storage config:settings tools
data remove storage config:inventory mode
data remove storage config:inventory path
data remove storage config:inventory entity
data remove storage config:inventory terrain
data remove storage config:inventory tools
data remove storage config:player rot
data remove storage tls:racer id
data remove storage tls:racer sort
