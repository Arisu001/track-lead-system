# Settings
execute store result storage config:inventory settings byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.settings 1
execute store result score $tls_nb__item__stg tms.var run clear @s compass[custom_data={settings: 1b, config: 1b}] 0
execute unless data storage config:inventory {settings: 1b} run item replace entity @s hotbar.4 with compass[custom_data={settings: 1b, config: 1b}] 1
execute if score $tls_nb__item__stg tms.var matches 2.. run clear @s compass[custom_data={settings: 1b, config: 1b}]
item modify entity @s hotbar.4 config:settings

# Config = "path"
# Start + Checkpoint + Finish
execute store result storage config:inventory path.start byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.path.start 1
execute store result storage config:inventory path.checkpoint byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.path.checkpoint 1
execute store result storage config:inventory path.finish byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.path.finish 1
execute store result score $tls_nb__item__path_start tms.var run clear @s paper[custom_data={path: {start: 1b}, config: 1b}] 0
execute store result score $tls_nb__item__path_chec tms.var run clear @s paper[custom_data={path: {checkpoint: 1b}, config: 1b}] 0
execute store result score $tls_nb__item__path_finish tms.var run clear @s paper[custom_data={path: {finish: 1b}, config: 1b}] 0
execute unless data storage config:inventory {path: {start: 1b}} run item replace entity @s[predicate=!config:this/item_in_hand/settings, tag=tls_stg__start] weapon.mainhand with paper[custom_data={path: {start: 1b}, config: 1b}, item_model="wooden_axe"] 1
execute unless data storage config:inventory {path: {checkpoint: 1b}} run item replace entity @s[predicate=!config:this/item_in_hand/settings, tag=tls_stg__chec] weapon.mainhand with paper[custom_data={path: {checkpoint: 1b}, config: 1b}, item_model="wooden_axe"] 1
execute unless data storage config:inventory {path: {finish: 1b}} run item replace entity @s[predicate=!config:this/item_in_hand/settings, tag=tls_stg__finish] weapon.mainhand with paper[custom_data={path: {finish: 1b}, config: 1b}, item_model="wooden_axe"] 1
execute if score $tls_nb__item__path_start tms.var matches 2.. run clear @s paper[custom_data={path: {start: 1b}, config: 1b}]
execute if score $tls_nb__item__path_chec tms.var matches 2.. run clear @s paper[custom_data={path: {checkpoint: 1}, config: 1b}]
execute if score $tls_nb__item__path_finish tms.var matches 2.. run clear @s paper[custom_data={path: {finish: 1b}, config: 1b}]
item modify entity @s[predicate=!config:this/item_in_hand/settings, tag=tls_stg__config] weapon.mainhand config:path

# Undo
execute store result storage config:inventory undo byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.undo 1
execute store result score $tls_nb__item__undo tms.var run clear @s compass[custom_data={undo: 1b, config: 1b}] 0
execute unless data storage config:inventory {undo: 1b} run item replace entity @s[tag=tls_stg__done] hotbar.5 with spectral_arrow[custom_data={undo: 1b, config: 1b}] 1
execute if score $tls_nb__item__undo tms.var matches 2.. run clear @s compass[custom_data={undo: 1b, config: 1b}]
item modify entity @s[tag=tls_stg__done] hotbar.5 config:undo


# kill all item with custom_data = "tls"
kill @e[nbt={Item: {components: {"minecraft:custom_data": {config: 1b}}}}]
