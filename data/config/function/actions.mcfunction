# Menu
execute anchored eyes positioned ^ ^ ^2 if predicate config:this/item_in_hand/settings run function config:actions/close
execute unless predicate config:this/item_in_hand/settings run function config:actions/interact

# Raycast
scoreboard players set $tls_ray tms.temp 0
execute anchored eyes run function config:raycast/step
execute unless predicate config:this/item_in_hand/start unless predicate config:this/item_in_hand/checkpoint unless predicate config:this/item_in_hand/finish run function config:raycast/reset

# Wait right-click
execute if entity @s[advancements={config:tools/settings/start=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/settings/checkpoint=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/settings/finish=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if score $tls_wtg__rc tms.var matches 1 run scoreboard players add $tls_rc__tmp tms.value 1
execute if score $tls_rc__tmp tms.value matches 5.. run function config:events/reset

# Get finish
execute store result score $tls_nb__start tms.var if entity @e[tag=tls_start__race]
execute store result score $tls_nb__chec tms.var if entity @e[tag=tls_chec__race]
execute store result score $tls_nb__finish tms.var if entity @e[tag=tls_finish__race]
execute if score $tls_nb__start tms.var matches 1 if score $tls_nb__finish tms.var matches 1 run function config:actions/done
