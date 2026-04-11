tag @s remove tls_stg__config
tag @s remove tls_stg__chec
tag @s remove tls_stg__finish
tag @s remove tls_stg__start

clear @a #config:config[custom_data={start: 1b, config: 1b}]
clear @a #config:config[custom_data={checkpoint: 1b, config: 1b}]
clear @a #config:config[custom_data={finish: 1b, config: 1b}]
