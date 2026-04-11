playsound block.stone_button.click_on master @s ~ ~ ~ 1000 0 0

item replace entity @s hotbar.0 with wooden_axe[custom_data={start: 1b, config: 1b}] 1

tag @s remove tls_stg__start
tag @s add tls_stg__chec
tag @s add tls_stg__config

advancement revoke @s only config:tools/config/checkpoint has_checkpoint
