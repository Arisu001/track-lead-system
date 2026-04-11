tag @s add tls_stg__closed
tag @s remove tls_stg__opened

clear @s compass[custom_data={settings: 1b, config: 1b}]

playsound block.stone_button.click_off master @s ~ ~ ~ 1000 2 0

scoreboard players reset $tls_ID tms.var

data modify storage config:settings checkpoints.id set value ""

kill @e[tag=tls_stg, type=#config:__class]

advancement revoke @s only config:tools/settings/close close
