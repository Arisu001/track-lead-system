# Mode = "properties"
data modify storage config:settings tools.mode set value "Properties"

scoreboard players add $tls_entity__component tms.var 1

execute if score $tls_entity__component tms.var matches 1 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=tls_path, distance=..1.5, limit=1] CustomName.extra[0]
execute if score $tls_entity__component tms.var matches 2 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=tls_path, distance=..1.5, limit=1] CustomName.extra[1]
execute if score $tls_entity__component tms.var matches 3 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=tls_path, distance=..1.5, limit=1] CustomName.extra[2]
execute if score $tls_entity__component tms.var matches 4 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=tls_path, distance=..1.5, limit=1] CustomName.extra[3]
execute if score $tls_entity__component tms.var matches 5 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=tls_path, distance=..1.5, limit=1] CustomName.extra[4]
execute if score $tls_entity__component tms.var matches 6 if predicate config:entity/player/item_in_hand/nbt_weaver at @e[tag=tls_cursor_trg] run data modify storage config:settings tools.select.nbt_weaver.component set from entity @e[tag=tls_path, distance=..1.5, limit=1] CustomName.extra[5]

execute if score $tls_entity__component tms.var matches 6.. run scoreboard players set $tls_entity__component tms.var 0
