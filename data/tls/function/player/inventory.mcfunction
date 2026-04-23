# Pseudo
execute store result score @s tls.item__pseudo run data get entity @s Inventory[].components.minecraft:custom_data.pseudo 1
execute store result score @s tls.nb__item__pseudo run clear @s player_head[custom_data={pseudo: 1b, tls: 1b}] 0
$execute unless score @s tls.item__pseudo matches 1.. run item replace entity @s[tag=tls_record__$(idx_rec)] inventory.13 with player_head[custom_data={pseudo: 1b, tls: 1b}, item_model="air"] 1
execute if score @s tls.nb__item__pseudo matches 2.. run clear @s player_head[custom_data={pseudo: 1b, tls: 1b}]
$item modify entity @s[tag=tls_record__$(idx_rec)] inventory.13 tls:player_name
