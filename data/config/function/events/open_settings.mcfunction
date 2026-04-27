clear @s compass[custom_data={settings: 1b, config: 1b}]

playsound block.stone_button.click_on master @s ~ ~ ~ 1000 2 0

scoreboard players set @s tls_Properties 0
scoreboard players set @s tls_Path 0
scoreboard players set @s tls_Mode 0

execute unless score $tls_path tms.var matches 1.. unless score $tls_mode tms.var matches 1.. run dialog show @s config:config
execute if score $tls_path tms.var matches 1.. run dialog show @s config:menu/path
execute if score $tls_edit tms.var matches 1.. run dialog show @s config:menu/edit
execute if score $tls_mode tms.var matches 1.. run dialog show @s config:menu/mode
    
advancement revoke @s only config:tools/open open
