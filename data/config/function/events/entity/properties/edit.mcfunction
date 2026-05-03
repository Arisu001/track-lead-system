# Mode = "modify"
data modify storage config:settings tools.mode set value "Modify"

scoreboard players add $tls_entity__modify tms.var 1
execute store result storage config:settings tools.modify.nbt_weave.edit.shadow int 1 run scoreboard players get $tls_entity__modify tms.var

execute if score $tls_entity__component tms.var matches 1 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] run data modify entity @e[tag=tls_path, distance=..1.5, limit=1] see_through set from storage config:settings tools.modify.nbt_weave.edit.see_through
