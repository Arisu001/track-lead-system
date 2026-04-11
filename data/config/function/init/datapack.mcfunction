kill @e[tag=tls, type=#config:__class]

scoreboard players reset * tms.const
scoreboard players reset * tms.temp
scoreboard players reset * tms.value
scoreboard players reset * tms.var
scoreboard players reset * tls.pos_x
scoreboard players reset * tls.pos_y
scoreboard players reset * tls.pos_z

advancement revoke @a only config:tools/settings/open open
advancement revoke @a only config:tools/settings/close close
advancement revoke @a only config:tools/settings/start has_placed
advancement revoke @a only config:tools/settings/checkpoint has_placed
advancement revoke @a only config:tools/config/start has_start
advancement revoke @a only config:tools/config/checkpoint has_checkpoint
advancement revoke @a only config:tools/config/how_to_use has_help
advancement revoke @a only config:tools/config/top_3 has_top_3
advancement revoke @a only config:tools/config/top_5 has_top_5
advancement revoke @a only config:tools/config/top_10 has_top_10

team add tls_bad
team add tls_good
team modify tls_bad color red
team modify tls_good color green

tag @a remove tls_stg__config
tag @a remove tls_stg__chec
tag @a remove tls_stg__start
tag @a remove tls_stg__opened
tag @a[tag=tls_handler] add tls_stg__closed

clear @a #config:config[custom_data={settings: 1b, config: 1b}]
clear @a #config:config[custom_data={start: 1b, config: 1b}]
clear @a #config:config[custom_data={checkpoint: 1b, config: 1b}]

data modify storage config:settings checkpoints.id set value ""
data remove storage config:inventory settings
