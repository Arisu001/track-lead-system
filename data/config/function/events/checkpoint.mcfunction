playsound block.stone_button.click_on master @s ~ ~ ~ 1000 0 0

tag @s remove tls_stg__start
tag @s remove tls_stg__finish
tag @s add tls_stg__chec
tag @s add tls_stg__config

advancement revoke @s only config:tools/config/checkpoint has_checkpoint
