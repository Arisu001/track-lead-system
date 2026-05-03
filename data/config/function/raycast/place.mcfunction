# Only one start + finish & pos 1..3
execute if predicate config:entity/player/item_in_hand/path/start run kill @e[tag=tls_start__race]
execute if predicate config:entity/player/item_in_hand/path/finish run kill @e[tag=tls_finish__race]
execute if predicate config:entity/player/item_in_hand/terrain run kill @e[tag=tls_fill]

# New entity
$execute unless score @s tls.terrain matches 1.. unless entity @e[tag=tls_$(type)__race, tag=!tls_mode, distance=..5] run summon $(entity) ~.5 ~$(y) ~.5 {Tags: ["tls_$(type)__race", "tls_$(type)", "tls_config", "tls_$(category)", "tls"], $(display): [{text: "$(name)", color: "$(color)", bold: true}], CustomName: ["$(tag)", "$(component_1)", "$(component_2)", "$(component_3)", "$(component_4)", "$(component_5)", "$(component_6)"], view_range: $(distance), background: 0, shadow: 1b, billboard: "vertical", interpolation_duration: 5}
$execute if score @s tls.terrain matches 1.. run summon $(entity) ~.5 ~$(y) ~.5 {Tags: ["tls_$(type)", "tls_$(category)", "tls"], $(display): {text: "$(name)", color: "$(color)"}, view_range: $(distance)}

# Modifiy: Rotation  |  Scale
$execute as @e[tag=tls_$(type)__race, tag=!tls_$(type)_done__race] run data modify entity @s Rotation[0] set from entity @a[tag=tls_handler, limit=1] Rotation[0]
$execute as @e[tag=tls_$(type)__race] run data modify entity @s transformation.scale[] set value 2.0f

# Update IDs
$execute store result storage config:settings $(type).id int 1 run scoreboard players get $tls_count__$(type) tms.var
$execute store result score $tls_$(type)__id tms.var run data get storage config:settings $(type).id

# Save the location and name of the terrain category by entity
$execute as @e[tag=tls_$(type), tag=!tls_path] run data modify storage config:settings edit.terrain.$(type).name set from entity @s text.text
$execute as @e[tag=tls_$(type), tag=!tls_path] run data modify storage config:settings edit.terrain.$(type).color set from entity @s text.color
$execute as @e[tag=tls_$(type), tag=!tls_path] store result storage config:settings edit.terrain.$(type).x1 double 1 run data get entity @s Pos[0]
$execute as @e[tag=tls_$(type), tag=!tls_path] store result storage config:settings edit.terrain.$(type).y1 double 1 run data get entity @s Pos[1]
$execute as @e[tag=tls_$(type), tag=!tls_path] store result storage config:settings edit.terrain.$(type).z1 double 1 run data get entity @s Pos[2]
$execute as @e[tag=tls_$(type), tag=!tls_setblock, tag=!tls_path] store result storage config:settings edit.terrain.$(type).x2 double 1 run data get entity @s Pos[0]
$execute as @e[tag=tls_$(type), tag=!tls_setblock, tag=!tls_path] store result storage config:settings edit.terrain.$(type).y2 double 1 run data get entity @s Pos[1]
$execute as @e[tag=tls_$(type), tag=!tls_setblock, tag=!tls_path] store result storage config:settings edit.terrain.$(type).z2 double 1 run data get entity @s Pos[2]

# Notif
$execute at @e[tag=tls_$(type)__race, tag=!tls_$(type)_done__race] run particle wax_off ~ ~ ~ .15 100 .15 .1 1000 force @s
stopsound @s master block.beacon.activate
execute unless entity @e[tag=tls_terrain] run playsound block.beacon.activate master @s ~ ~ ~ 1000 2 0

# ————— ID + Rename —————
# Add new id
$execute if predicate config:entity/player/item_in_hand/$(category)/$(type) run scoreboard players add $tls_$(type)__id tms.var 1

# Limit = 1 applies only to the start + finish & terrain
execute if score $tls_start__id tms.var matches 2.. run scoreboard players remove $tls_start__id tms.var 1
execute if score $tls_finish__id tms.var matches 2.. run scoreboard players remove $tls_finish__id tms.var 1
execute if score $tls_fill__id tms.var matches 2.. run scoreboard players remove $tls_fill__id tms.var 1

# Store IDs with their own names
$execute as @e[tag=tls_$(type)] unless score @s tls.id matches 1.. run scoreboard players operation @s tls.id = $tls_$(type)__id tms.var
$execute as @e[tag=tls_$(type)] store result storage config:settings $(type).id int 1 run scoreboard players get @s tls.id

# Rename using their own IDs
$execute as @e[tag=tls_$(type), tag=!tls_$(type)_done__race, tag=!tls_start__race, tag=!tls_finish__race, tag=!tls_terrain] if score @s tls.id matches 1.. run data merge entity @s {Tags: ["tls_$(type)__race", "tls_$(type)_done__race", "tls_$(category)", "tls_config", "tls"], $(display): [{text: "$(name)", color: "$(color)", bold: true}, " ", {score: {name: "@s", objective: "tls.id"}, color: "yellow"}]}

# Init toggle
$scoreboard players set @e[tag=tls_$(tag)__race, tag=!tls_mode] tms.var 1
$scoreboard players operation @s tls.toggle__$(tag) = @e[tag=tls_$(tag)__race, tag=!tls_mode] tms.var

# Send information
execute if entity @e[tag=tls_setblock] run function config:hud/chat/terrain  {string:  "Setblock", color:        "white"}
execute if entity @e[tag=tls_fill] run function config:hud/chat/terrain      {string:      "Fill", color:        "green"}
execute if entity @e[tag=tls_clone] run function config:hud/chat/terrain     {string:     "Clone", color: "light_purple"}
execute if entity @e[tag=tls_fillbiome] run function config:hud/chat/terrain {string: "Fillbiome", color:   "dark_green"}

# Kill terrain after place
kill @e[tag=tls_setblock]
