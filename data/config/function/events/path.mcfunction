playsound block.stone_button.click_on master @s ~ ~ ~ 1000 0 0

# Value = "path"
execute if score @s tls_Path matches 1 run function config:events/categories/node {rmv: "checkpoint", rmv2: "finish", add: "start"}
execute if score @s tls_Path matches 2 run function config:events/categories/node {rmv: "start", rmv2: "finish", add: "checkpoint"}
execute if score @s tls_Path matches 3 run function config:events/categories/node {rmv: "start", rmv2: "checkpoint", add: "finish"}

clear @s paper[custom_data={path: {start: 1b}, config: 1b}]
clear @s paper[custom_data={path: {checkpoint: 1b}, config: 1b}]
clear @s paper[custom_data={path: {finish: 1b}, config: 1b}]

tag @s remove tls_stg__kart
tag @s remove tls_stg__boat
tag @s remove tls_stg__runner
tag @s add tls_stg__config

scoreboard players reset $tls_mode tms.var
scoreboard players reset $tls_edit tms.var
scoreboard players operation $tls_path tms.var = @s tls_Path
