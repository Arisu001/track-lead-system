clear @s compass[custom_data={settings: 1b, config: 1b}]

playsound block.stone_button.click_on master @s ~ ~ ~ 1000 2 0

dialog show @s config:config
    
advancement revoke @s only config:tools/open open
