execute if predicate config:this/item_in_hand/path/start run kill @e[tag=tls_start__race]
execute if predicate config:this/item_in_hand/path/finish run kill @e[tag=tls_finish__race]

$summon $(entity) ~.5 ~$(y) ~.5 {Tags: ["tls_$(type)__race", "tls"], text: [{text: "$(name)", color: "$(color)", bold: true}], view_range: $(distance), background: 0, shadow: 1b, billboard: "vertical"}

# Rotation
$execute if score $tls_rot_lr tms.var matches -135..-46 as @e[tag=tls_$(type)__race] at @s run data modify entity @s Rotation[0] set value -90.0f
$execute if score $tls_rot_lr tms.var matches 135..179 as @e[tag=tls_$(type)__race] at @s run data modify entity @s Rotation[0] set value 180.0f
$execute if score $tls_rot_lr tms.var matches -180..-134 as @e[tag=tls_$(type)__race] at @s run data modify entity @s Rotation[0] set value 180.0f
$execute if score $tls_rot_lr tms.var matches -45..44 as @e[tag=tls_$(type)__race] at @s run data modify entity @s Rotation[0] set value 0.0f
$execute if score $tls_rot_lr tms.var matches 45..134 as @e[tag=tls_$(type)__race] at @s run data modify entity @s Rotation[0] set value 90.0f

# Scale
$execute as @e[tag=tls_$(type)__race] at @s run data modify entity @s transformation.scale[] set value 2.0f
 
# ID + Rename
$execute if predicate config:this/item_in_hand/$(cat)/$(type) unless predicate config:this/item_in_hand/path/start unless predicate config:this/item_in_hand/path/finish run scoreboard players add $tls_$(type)_id tms.var 1
$execute as @e[tag=tls_$(type)__race] unless score @s tls.id matches 1.. run scoreboard players operation @s tls.id += $tls_$(type)_id tms.var
$execute as @e[tag=tls_$(type)__race] store result storage config:settings $(type)s.id int 1 run scoreboard players get @s tls.id
$execute as @e[tag=tls_$(type)__race, tag=!tls_$(type)_done__race] if score @s tls.id matches 1.. run data merge entity @s {Tags: ["tls_$(type)__race", "tls_$(type)_done__race", "tls"], text: [{text: "$(name)", color: "$(color)", bold: true}, " ", {storage: "config:settings", nbt: "$(type)s.id", color: "yellow"}]}

playsound block.beacon.activate master @s ~ ~ ~ 1000 2 0
$execute at @e[tag=tls_$(type)__race] run particle wax_off ~ ~ ~ .05 100 .05 .01 1000 force @s
