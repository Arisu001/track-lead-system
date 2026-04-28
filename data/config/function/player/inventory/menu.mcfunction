# Config = "path" & "mode"
# Path = "Start + Checkpoint + Finish"   |   Mode = "Kart + Boat + Runner"
$execute store result storage config:inventory $(cat).$(type) byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.$(cat).$(type) 1
$execute store result score $tls_nb__item__$(cat)_$(type) tms.var run clear @s paper[custom_data={$(cat): {$(type): 1b}, config: 1b}] 0
$execute unless data storage config:inventory {$(cat): {$(type): 1b}} run item replace entity @s[tag=tls_stg__$(type)] hotbar.3 with paper[custom_data={$(cat): {$(type): 1b}, config: 1b}, item_model="$(model)"] 1
$execute if score $tls_nb__item__$(cat)_$(type) tms.var matches 2.. run clear @s paper[custom_data={$(cat): {$(type): 1b}, config: 1b}]
$item modify entity @s[tag=tls_stg__config] hotbar.3 config:$(cat)

# Undo
execute store result storage config:inventory undo byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.undo 1
execute store result score $tls_nb__item__undo tms.var run clear @s spectral_arrow[custom_data={undo: 1b, config: 1b}] 0
execute unless data storage config:inventory {undo: 1b} run item replace entity @s[tag=tls_stg__config] hotbar.5 with spectral_arrow[custom_data={undo: 1b, config: 1b}] 1
execute if score $tls_nb__item__undo tms.var matches 2.. run clear @s spectral_arrow[custom_data={undo: 1b, config: 1b}]
item modify entity @s[tag=tls_stg__config] hotbar.5 config:undo

# Remove
execute store result storage config:inventory remove byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.remove 1
execute store result score $tls_nb__item__remove tms.var run clear @s paper[custom_data={remove: 1b, config: 1b}] 0
execute unless data storage config:inventory {remove: 1b} run item replace entity @s[tag=tls_stg__config] hotbar.8 with paper[custom_data={remove: 1b, config: 1b}, item_model="structure_void"] 1
execute if score $tls_nb__item__remove tms.var matches 2.. run clear @s paper[custom_data={remove: 1b, config: 1b}]
item modify entity @s[tag=tls_stg__config] hotbar.8 config:remove
