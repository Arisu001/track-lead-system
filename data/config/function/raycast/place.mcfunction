execute if predicate config:this/item_in_hand/path/start run kill @e[tag=tls_start__race]
execute if predicate config:this/item_in_hand/path/finish run kill @e[tag=tls_finish__race]

$execute unless entity @e[tag=tls_$(type)__race, tag=!tls_mode, distance=..5] run summon $(entity) ~.5 ~$(y) ~.5 {Tags: ["tls_$(type)__race", "tls"], $(display): [{text: "$(name)", color: "$(color)", bold: true}], view_range: $(distance), background: 0, shadow: 1b, billboard: "vertical", CustomNameVisible: $(visible)b}

# Rotation
$execute as @e[tag=tls_$(type)__race, tag=!tls_$(type)_done__race] run data modify entity @s Rotation[0] set from entity @a[tag=tls_handler, limit=1] Rotation[0]

# Scale
$execute as @e[tag=tls_$(type)__race] run data modify entity @s transformation.scale[] set value 2.0f

# Update
$execute store result storage config:settings $(type)s.id int 1 run scoreboard players get $tls_nb__$(type) tms.var
$execute store result score $tls_$(type)__id tms.var run data get storage config:settings $(type)s.id
 
# ID + Rename
$execute if predicate config:this/item_in_hand/$(cat)/$(type) unless predicate config:this/item_in_hand/path/start unless predicate config:this/item_in_hand/path/finish run scoreboard players add $tls_$(type)__id tms.var 1
$execute as @e[tag=tls_$(type)__race, tag=!tls_start__race, tag=!tls_finish__race] unless score @s tls.id matches 1.. run scoreboard players operation @s tls.id = $tls_$(type)__id tms.var
$execute as @e[tag=tls_$(type)__race, tag=!tls_start__race, tag=!tls_finish__race] store result storage config:settings $(type)s.id int 1 run scoreboard players get @s tls.id
$execute as @e[tag=tls_$(type)__race, tag=!tls_$(type)_done__race] if score @s tls.id matches 1.. run data merge entity @s {Tags: ["tls_$(type)__race", "tls_$(type)_done__race", "tls"], $(display): [{text: "$(name)", color: "$(color)", bold: true}, " ", {score: {name: "@s", objective: "tls.id"}, color: "yellow"}]}

# Tags
tag @e[tag=tls_kart__race] add tls_mode
tag @e[tag=tls_boat__race] add tls_mode
tag @e[tag=tls_runner__race] add tls_mode

stopsound @s master block.beacon.activate
playsound block.beacon.activate master @s ~ ~ ~ 1000 2 0
$execute at @e[tag=tls_$(type)__race] run particle wax_off ~ ~ ~ .05 100 .05 .01 1000 force @s
