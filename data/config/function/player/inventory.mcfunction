# Settings
execute store result storage config:inventory tools.settings byte 1 run data get entity @s Inventory[0].components.minecraft:custom_data.tools.settings 1
execute store result score $tls_nb__item_tools__stg tms.var run clear @s compass[custom_data={tools: {settings: 1b}, config: 1b}] 0
execute unless data storage config:inventory {tools: {settings: 1b}} run item replace entity @s hotbar.4 with compass[custom_data={tools: {settings: 1b}, config: 1b},] 1
execute if score $tls_nb__item_tools__stg tms.var matches 2.. run clear @s compass[custom_data={tools: {settings: 1b}, config: 1b}]
item modify entity @s hotbar.4 config:tools/settings

# Uninstall
execute store result storage config:inventory tools.uninstall byte 1 run data get entity @s Inventory[8].components.minecraft:custom_data.tools.uninstall 1
execute store result score $tls_nb__item_tools__uninstall tms.var run clear @s paper[custom_data={tools: {uninstall: 1b}, config: 1b}] 0
execute unless data storage config:inventory {tools: {uninstall: 1b}} run item replace entity @s[tag=!tls_stg__config] hotbar.8 with paper[custom_data={tools: {uninstall: 1b}, config: 1b}, item_model="barrier"] 1
execute if score $tls_nb__item_tools__uninstall tms.var matches 2.. run clear @s paper[custom_data={tools: {uninstall: 1b}, config: 1b}]
item modify entity @s[tag=!tls_stg__config] hotbar.8 config:tools/uninstall


# kill all item with custom_data = "tls"
kill @e[nbt={Item: {components: {"minecraft:custom_data": {config: 1b}}}}]
