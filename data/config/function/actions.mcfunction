# Raycast
scoreboard players set $tls_ray tms.temp 0
execute anchored eyes run function config:raycast/step
execute unless predicate config:entity/player/item_in_hand/toggle unless predicate config:entity/player/item_in_hand/nbt_weaver unless predicate config:entity/player/item_in_hand/path_and_terrain unless predicate config:entity/player/item_in_hand/mode/kart unless predicate config:entity/player/item_in_hand/mode/boat unless predicate config:entity/player/item_in_hand/mode/runner unless predicate config:entity/player/item_in_hand/remove run function config:raycast/reset

# Player cursor
execute if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] if entity @e[tag=tls_config, distance=..1.5] run function config:player/cursor
execute if predicate config:entity/player/item_in_hand/terrain at @e[tag=tls_cursor_trg] run function config:player/cursor
execute unless predicate config:entity/player/item_in_hand/nbt_weaver unless predicate config:entity/player/item_in_hand/terrain run function config:player/cursor/reset
execute at @e[tag=tls_cursor_trg] unless entity @e[tag=tls_config, distance=..1.5] unless predicate config:entity/player/item_in_hand/terrain run function config:player/cursor/reset

# Wait left/right-click
execute if entity @s[advancements={config:tools/entity/toggle=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/entity/remove=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/select/nbt_weaver=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/modify/nbt_weaver=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/path=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/mode/kart=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/mode/boat=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/mode/runner=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/edit/terrain/pos_1=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if entity @s[advancements={config:tools/edit/terrain/pos_2=true}] run scoreboard players set $tls_waiting__right_click tms.var 1
execute if score $tls_waiting__right_click tms.var matches 1 run scoreboard players add $tls__right_click__tmp tms.value 1
execute if score $tls__right_click__tmp tms.value matches 3.. run function config:events/reset

# Double right-click
execute if score $tls_double__right_click tms.var matches 1 run scoreboard players add $tls_double__right_click__tmp tms.value 1
execute if score $tls_double__right_click__tmp tms.value matches 3.. run function config:events/uninstall/preset
execute if score $tls_double__right_click__tmp tms.value matches 10.. unless score $tls_double__right_click tms.var matches 2 run function config:events/uninstall/cancel

# ————— Wrong place —————
# ————— Total —————
# Path
execute store result score $tls_count__start tms.var if entity @e[tag=tls_start__race]
execute store result score $tls_count__checkpoint tms.var if entity @e[tag=tls_checkpoint__race]
execute store result score $tls_count__finish tms.var if entity @e[tag=tls_finish__race]
execute if score $tls_count__start tms.var matches 1 if score $tls_count__finish tms.var matches 1 run function config:actions/confirm/preset

# Mode
execute store result score $tls_count__kart tms.var if entity @e[tag=tls_kart__race]
execute store result score $tls_count__boat tms.var if entity @e[tag=tls_boat__race]
execute store result score $tls_count__runner tms.var if entity @e[tag=tls_runner__race]

# Terrain: pos
execute store result score $tls_count__fill tms.var if entity @e[tag=tls_fill]
execute store result score $tls_count__clone tms.var if entity @e[tag=tls_clone]
execute store result score $tls_count__fillbiome tms.var if entity @e[tag=tls_fillbiome]

# ————— Wrong place —————
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

# ————— Wrong place —————
# Copy time & pplayer count
execute store result score $tls_time__hour tms.var run data get storage config:settings edit.rules.time.hour
execute store result score $tls_time__minute tms.var run data get storage config:settings edit.rules.time.minute
execute store result score $tls_time__seconde tms.var run data get storage config:settings edit.rules.time.seconde
execute store result score $tls_time__milliseconde tms.var run data get storage config:settings edit.rules.time.milliseconde
execute store result score $tls_player__count tms.var run data get storage config:config edit.rules.player.count

# ————— Wrong place —————
# ————— DIALOGS —————
# Ghost
execute if data storage config:settings toggle{ghost: "activated"} run dialog show @s[tag=!tls_stg__ghost_properties] config:menu/ghost/properties
execute if data storage config:settings toggle{ghost: "activated"} run tag @s add tls_stg__ghost_properties
execute unless data storage config:settings toggle{ghost: "activated"} run tag @s remove tls_stg__ghost_properties

# Edit rules
execute if score $tls_edit_terrain__tmp tms.var matches 1.. run function config:events/edit {remove_1: "path", remove_2: "mode", remove_3:   "rules", add: "terrain"}
execute if score $tls_edit_rules__tmp tms.var matches 1.. run function config:events/edit   {remove_1: "path", remove_2: "mode", remove_3: "terrain", add:   "rules"}
