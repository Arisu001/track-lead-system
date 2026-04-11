# Menu
execute anchored eyes positioned ^ ^ ^2 if predicate config:this/item_in_hand/settings run function config:actions/close
execute unless predicate config:this/item_in_hand/settings run function config:actions/interact

# Raycast
scoreboard players set $tls_ray tms.temp 0
execute anchored eyes run function config:raycast/step
execute unless predicate config:this/item_in_hand/start unless predicate config:this/item_in_hand/checkpoint run function config:raycast/reset

# Wait right-click
execute if entity @s[advancements={config:tools/settings/start=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if entity @s[advancements={config:tools/settings/checkpoint=true}] run scoreboard players set $tls_wtg__rc tms.var 1
execute if score $tls_wtg__rc tms.var matches 1 run scoreboard players add $tls_rc__tmp tms.value 1
execute if score $tls_rc__tmp tms.value matches 5.. run function config:events/reset
