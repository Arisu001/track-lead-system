clear @s compass[custom_data={tools: {settings: 1b}, config: 1b}]

playsound block.stone_button.click_on master @s ~ ~ ~ 1000 2 0

scoreboard players set @s tls_Properties 0
scoreboard players set @s tls_Path 0
scoreboard players set @s tls_Mode 0

execute unless score @s tls.path matches 1.. unless score @s tls.mode matches 1.. unless score @s tls.terrain matches 1.. unless score @s tls.rules matches 1.. run dialog show @s config:config
execute if score @s tls.path matches 1.. run dialog show @s config:menu/path
execute if score @s tls.mode matches 1.. run dialog show @s config:menu/mode
execute if score @s tls.terrain matches 1.. run dialog show @s config:menu/edit/terrain
execute if score @s tls.rules matches 1.. run dialog show @s config:menu/edit/rules

advancement revoke @s only config:tools/open open
