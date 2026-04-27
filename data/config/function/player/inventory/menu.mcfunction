# Config = "path" & "mode"
# Path = "Start + Checkpoint + Finish"   |   Mode = "Kart + Boat + Runner"
$execute store result storage config:inventory $(cat).$(type) byte 1 run data get entity @s Inventory[].components.minecraft:custom_data.$(cat).$(type) 1
$execute store result score $tls_nb__item__$(cat)_$(type) tms.var run clear @s paper[custom_data={$(cat): {$(type): 1b}, config: 1b}] 0
$execute unless data storage config:inventory {$(cat): {$(type): 1b}} run item replace entity @s[predicate=!config:this/item_in_hand/settings, tag=tls_stg__$(type)] weapon.mainhand with paper[custom_data={$(cat): {$(type): 1b}, config: 1b}, item_model="$(model)"] 1
$execute if score $tls_nb__item__$(cat)_$(type) tms.var matches 2.. run clear @s paper[custom_data={$(cat): {$(type): 1b}, config: 1b}]
$item modify entity @s[predicate=!config:this/item_in_hand/settings, tag=tls_stg__config] weapon.mainhand config:$(cat)
