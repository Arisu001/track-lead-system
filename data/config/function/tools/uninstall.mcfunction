function config:hud/chat/datapack_uninstalled


kill @e[tag=tls, type=#config:__class]

scoreboard objectives remove tms.const
scoreboard objectives remove tms.temp
scoreboard objectives remove tms.value
scoreboard objectives remove tms.var
scoreboard objectives remove tls.rank
scoreboard objectives remove tls.id
scoreboard objectives remove tls.toggle__start
scoreboard objectives remove tls.toggle__checkpoint
scoreboard objectives remove tls.toggle__finish
scoreboard objectives remove tls.path
scoreboard objectives remove tls.mode
scoreboard objectives remove tls.terrain
scoreboard objectives remove tls.rules
scoreboard objectives remove tls.record
scoreboard objectives remove tls.play_record
scoreboard objectives remove tls.item__pseudo
scoreboard objectives remove tls.nb__item__pseudo
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
scoreboard objectives remove tls.dx
scoreboard objectives remove tls.dz
scoreboard objectives remove tls.progress
scoreboard objectives remove tls.sort
scoreboard objectives remove tls_Properties
scoreboard objectives remove tls_Path
scoreboard objectives remove tls_Mode
scoreboard objectives remove tls_Toggle

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

team remove tls_bad
team remove tls_good
team remove tls_ghost

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
tag @a remove tls_stg__closed
tag @a remove tls_handler
tag @a remove tls_handler__fix

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


datapack disable "file/track-lead-system"
datapack disable "file/master-track-lead-system"
datapack disable "file/main-track-lead-system"
