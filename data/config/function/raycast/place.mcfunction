execute unless predicate config:this/item_in_hand/checkpoint run kill @e[tag=tls_start__race]

$execute align xyz run summon text_display ~.5 ~3 ~.5 {Tags: ["tls_$(type)__race", "tls"], text: [{text: "$(name)", color: "$(color)", bold: true}], background: 0, shadow: 1b, billboard: "vertical"}

# Rename + Scale
$execute as @e[tag=tls_chec__race] at @s unless score @s tls.id matches 1.. run data merge entity @s {text: [{text: "$(name)", color: "$(color)", bold: true}, " ", {storage: "config:settings", nbt: "checkpoints.id", color: "yellow"}]}
$execute as @e[tag=tls_$(type)__race] at @s run data modify entity @s transformation.scale[] set value 2.0f
 
# ID
scoreboard players add $tls_ID tms.var 1
execute as @e[tag=tls_chec__race] at @s unless score @s tls.id matches 1.. run scoreboard players operation @s tls.id += $tls_ID tms.var
execute as @e[tag=tls_chec__race] at @s store result storage config:settings checkpoints.id int 1 run scoreboard players get @s tls.id

playsound block.beacon.activate master @s ~ ~ ~ 1000 2 0
$execute at @e[tag=tls_$(type)__race] run particle wax_off ~ ~ ~ .05 100 .05 .01 1000 force @s
