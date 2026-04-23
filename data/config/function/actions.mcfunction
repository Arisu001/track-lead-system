# Raycast
scoreboard players set $tls_ray tms.temp 0
execute anchored eyes run function config:raycast/step
execute unless predicate config:this/item_in_hand/start unless predicate config:this/item_in_hand/checkpoint unless predicate config:this/item_in_hand/finish run function config:raycast/reset

# Wait right-click
execute if entity @s[advancements={config:tools/path/start=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/path/checkpoint=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/path/finish=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if score $tls_wtg__rc tms.var matches 1 run scoreboard players add $tls_rc__tmp tms.value 1
execute if score $tls_rc__tmp tms.value matches 5.. run function config:events/reset

# Get finish
execute store result score $tls_nb__start tms.var if entity @e[tag=tls_start__race]
execute store result score $tls_nb__chec tms.var if entity @e[tag=tls_chec__race]
execute store result score $tls_nb__finish tms.var if entity @e[tag=tls_finish__race]
execute if score $tls_nb__start tms.var matches 1 if score $tls_nb__finish tms.var matches 1 run function config:actions/done

# Enable player
scoreboard players enable @s tls_Properties
scoreboard players enable @s tls_Path
scoreboard players enable @s tls_Mode
scoreboard players enable @s tls_Toggle
execute if score @s tls_Properties matches 1 run function config:hud/chat/properties
execute if score @s tls_Path matches 1 run function config:events/path
execute if score @s tls_Path matches 2 run function config:events/path
execute if score @s tls_Path matches 3 run function config:events/path
scoreboard players set @s tls_Properties 0
scoreboard players set @s tls_Path 0

# Dialog = "ghost"
execute if data storage config:settings toggle{ghost: "activated"} run dialog show @s[tag=!tls_stg__ghost_properties] config:menu/ghost/properties
execute if data storage config:settings toggle{ghost: "activated"} run tag @s add tls_stg__ghost_properties
execute unless data storage config:settings toggle{ghost: "activated"} run tag @s remove tls_stg__ghost_properties
