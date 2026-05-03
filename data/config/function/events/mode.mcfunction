playsound block.stone_button.click_on master @s ~ ~ ~ 1000 0 0

tag @s add tls_stg__config

# Reset & copy the variable to stay on the same page
scoreboard players reset @s tls.path
scoreboard players reset @s tls.terrain
scoreboard players reset @s tls.rules
scoreboard players operation @s tls.mode = @s tls_Mode
