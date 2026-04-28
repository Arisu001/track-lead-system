playsound block.stone_button.click_on master @s ~ ~ ~ 1000 0 0

# Value = "mode"
execute if score @s tls_Mode matches 1 run function config:events/categories/node {rmv: "boat", rmv2: "runner", add: "kart"}
execute if score @s tls_Mode matches 2 run function config:events/categories/node {rmv: "kart", rmv2: "runner", add: "boat"}
execute if score @s tls_Mode matches 3 run function config:events/categories/node {rmv: "kart", rmv2: "boat", add: "runner"}

clear @s paper[custom_data={mode: {kart: 1b}, config: 1b}]
clear @s paper[custom_data={mode: {boat: 1b}, config: 1b}]
clear @s paper[custom_data={mode: {runner: 1b}, config: 1b}]

tag @s remove tls_stg__start
tag @s remove tls_stg__checkpoint
tag @s remove tls_stg__finish
tag @s add tls_stg__config

scoreboard players reset $tls_path tms.var
scoreboard players reset $tls_edit tms.var
scoreboard players operation $tls_mode tms.var = @s tls_Mode
