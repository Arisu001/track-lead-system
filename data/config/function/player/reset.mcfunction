tag @s remove tls_stg__config
tag @s remove tls_stg__checkpoint
tag @s remove tls_stg__finish
tag @s remove tls_stg__start
tag @s remove tls_stg__kart
tag @s remove tls_stg__boat
tag @s remove tls_stg__runner

clear @a #config:config[custom_data={path: {start: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {checkpoint: 1b}, config: 1b}]
clear @a #config:config[custom_data={path: {finish: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {kart: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {boat: 1b}, config: 1b}]
clear @a #config:config[custom_data={mode: {runner: 1b}, config: 1b}]
