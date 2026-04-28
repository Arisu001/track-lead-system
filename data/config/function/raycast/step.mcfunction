# Init
scoreboard players add $tls_ray tms.temp 1

# Max
execute if score $tls_ray tms.temp matches ..1000 positioned ^ ^ ^.25 if block ~ ~ ~ air run function config:raycast/step

# Place and remove
execute unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches ..150 positioned ^ ^ ^.25 unless block ~ ~ ~ air align xyz run function config:raycast/place/preset
execute if predicate config:this/item_in_hand/remove as @e[tag=cursor_trg] unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches ..150 positioned ^ ^ ^.25 run function config:raycast/remove

# Too far or missing entity
execute as @s[advancements={config:tools/path/start=true}] unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches 151.. run function config:raycast/miss
execute if score $tls_ray tms.temp matches 151.. positioned ^ ^ ^.25 unless block ~ ~ ~ air align xyz run function config:raycast/cannot
execute if predicate config:this/item_in_hand/remove at @e[tag=cursor_trg] if score $tls_ray tms.temp matches ..150 positioned ^ ^-.25 ^.25 unless entity @e[tag=tls, type=#config:__class, distance=..1.5] run function config:raycast/cannot
