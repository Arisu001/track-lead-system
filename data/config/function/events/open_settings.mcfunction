tag @s add tls_stg__opened
tag @s remove tls_stg__closed

clear @s compass[custom_data={settings: 1b, config: 1b}]

playsound block.stone_button.click_on master @s ~ ~ ~ 1000 2 0

summon interaction ~ ~ ~ {Tags: ["tls_stg__close", "tls_stg__close_mid", "tls_stg", "tls"], response: 1b, width: 0.5f, height: 0.5f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__close", "tls_stg__close_left", "tls_stg", "tls"], response: 1b, width: 0.5f, height: 0.5f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__close", "tls_stg__close_right", "tls_stg", "tls"], response: 1b, width: 0.5f, height: 0.5f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__close", "tls_stg__close_up", "tls_stg", "tls"], response: 1b, width: 0.5f, height: 0.5f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__close", "tls_stg__close_down", "tls_stg", "tls"], response: 1b, width: 0.5f, height: 0.5f}

function config:__class__/entity/c__settings
    
advancement revoke @s only config:tools/settings/open open
