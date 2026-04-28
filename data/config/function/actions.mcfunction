# Raycast
scoreboard players set $tls_ray tms.temp 0
execute anchored eyes run function config:raycast/step
execute unless predicate config:this/item_in_hand/path unless predicate config:this/item_in_hand/mode/kart unless predicate config:this/item_in_hand/mode/boat unless predicate config:this/item_in_hand/mode/runner unless predicate config:this/item_in_hand/remove run function config:raycast/reset

# Wait right-click
execute if entity @s[advancements={config:tools/remove=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/path/start=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/path/checkpoint=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/path/finish=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/mode/kart=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/mode/boat=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/mode/runner=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if score $tls_wtg__rc tms.var matches 1 run scoreboard players add $tls_rc__tmp tms.value 1
execute if score $tls_rc__tmp tms.value matches 3.. run function config:events/reset

# Double right-click
execute if score $tls_dbl_rc tms.var matches 1 run scoreboard players add $tls_tmp__dbl_rc tms.value 1
execute if score $tls_tmp__dbl_rc tms.value matches 3.. run function config:events/uninstall/preset
execute if score $tls_tmp__dbl_rc tms.value matches 10.. unless score $tls_dbl_rc tms.var matches 2 run function config:events/uninstall/cancel

# Total
execute store result score $tls_nb__start tms.var if entity @e[tag=tls_start__race]
execute store result score $tls_nb__checkpoint tms.var if entity @e[tag=tls_checkpoint__race]
execute store result score $tls_nb__finish tms.var if entity @e[tag=tls_finish__race]
execute store result score $tls_nb__kart tms.var if entity @e[tag=tls_kart__race]
execute store result score $tls_nb__boat tms.var if entity @e[tag=tls_boat__race]
execute store result score $tls_nb__runner tms.var if entity @e[tag=tls_runner__race]
execute if score $tls_nb__start tms.var matches 1 if score $tls_nb__finish tms.var matches 1 run function config:actions/confirm

# Enable player
scoreboard players enable @s tls_Properties
scoreboard players enable @s tls_Path
scoreboard players enable @s tls_Mode
scoreboard players enable @s tls_Toggle
execute if score @s tls_Properties matches 1 run function config:hud/chat/properties
execute if score @s tls_Path matches 1.. run function config:events/path
execute if score @s tls_Mode matches 1.. run function config:events/mode
scoreboard players set @s tls_Properties 0
scoreboard players set @s tls_Path 0
scoreboard players set @s tls_Mode 0

# ————— DIALOGS —————
# Ghost
execute if data storage config:settings toggle{ghost: "activated"} run dialog show @s[tag=!tls_stg__ghost_properties] config:menu/ghost/properties
execute if data storage config:settings toggle{ghost: "activated"} run tag @s add tls_stg__ghost_properties
execute unless data storage config:settings toggle{ghost: "activated"} run tag @s remove tls_stg__ghost_properties

# Edit
execute store result score $tls_edit tms.var run data get storage config:settings edit{}
# execute if score $tls_edit tms.var matches 1.. run function config:events/edit
