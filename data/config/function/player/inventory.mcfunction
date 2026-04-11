# Settings
execute store result storage config:inventory settings byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.settings 1
execute store result score $tls_nb__item__stg tms.var run clear @s compass[custom_data={settings: 1b, config: 1b}] 0
execute unless data storage config:inventory {settings: 1b} run item replace entity @s hotbar.4 with compass[custom_data={settings: 1b, config: 1b}] 1
execute if score $tls_nb__item__stg tms.var matches 2.. run clear @s compass[custom_data={settings: 1b, config: 1b}]
item modify entity @s hotbar.4 config:settings

# Start + Checkpoint + Finish
execute store result storage config:inventory start byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.start 1
execute store result storage config:inventory checkpoint byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.checkpoint 1
execute store result storage config:inventory finish byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.finish 1
execute store result score $tls_nb__item__start tms.var run clear @s wooden_axe[custom_data={start: 1b, config: 1b}] 0
execute store result score $tls_nb__item__chec tms.var run clear @s wooden_axe[custom_data={checkpoint: 1b, config: 1b}] 0
execute store result score $tls_nb__item__finish tms.var run clear @s wooden_axe[custom_data={finish: 1b, config: 1b}] 0
execute unless data storage config:inventory {start: 1b} run item replace entity @s[tag=tls_stg__start] hotbar.3 with wooden_axe[custom_data={start: 1b, config: 1b}] 1
execute unless data storage config:inventory {checkpoint: 1b} run item replace entity @s[tag=tls_stg__chec] hotbar.3 with wooden_axe[custom_data={checkpoint: 1b, config: 1b}] 1
execute unless data storage config:inventory {finish: 1b} run item replace entity @s[tag=tls_stg__finish] hotbar.3 with wooden_axe[custom_data={finish: 1b, config: 1b}] 1
execute if score $tls_nb__item__start tms.var matches 2.. run clear @s wooden_axe[custom_data={start: 1b, config: 1b}]
execute if score $tls_nb__item__chec tms.var matches 2.. run clear @s wooden_axe[custom_data={checkpoint: 1b, config: 1b}]
execute if score $tls_nb__item__finish tms.var matches 2.. run clear @s wooden_axe[custom_data={finish: 1b, config: 1b}]
item modify entity @s[tag=tls_stg__config] hotbar.3 config:config

# Undo
execute store result storage config:inventory undo byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.undo 1
execute store result score $tls_nb__item__undo tms.var run clear @s compass[custom_data={undo: 1b, config: 1b}] 0
execute unless data storage config:inventory {undo: 1b} run item replace entity @s[tag=tls_stg__done] hotbar.5 with spectral_arrow[custom_data={undo: 1b, config: 1b}] 1
execute if score $tls_nb__item__undo tms.var matches 2.. run clear @s compass[custom_data={undo: 1b, config: 1b}]
item modify entity @s hotbar.5 config:undo


# kill all item with custom_data = "tls"
kill @e[nbt={Item: {components: {"minecraft:custom_data": {config: 1b}}}}]
