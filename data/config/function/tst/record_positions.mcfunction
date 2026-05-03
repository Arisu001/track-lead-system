$execute as @a[tag=tls_record__$(idx_rec)] at @s store result storage tst:player sneak_tmp.$(idx_rec) int 1 if predicate config:entity/player/flags/sneaking
$execute as @a[tag=tls_record__$(idx_rec)] at @s store result storage tst:player swim_tmp.$(idx_rec) int 1 if predicate config:entity/player/flags/swimming

$execute as @a[tag=tls_record__$(idx_rec)] at @s run data modify storage tst:player pos.x$(idx_rec) append from entity @s Pos[0]
$execute as @a[tag=tls_record__$(idx_rec)] at @s run data modify storage tst:player pos.y$(idx_rec) append from entity @s Pos[1]
$execute as @a[tag=tls_record__$(idx_rec)] at @s run data modify storage tst:player pos.z$(idx_rec) append from entity @s Pos[2]
$execute as @a[tag=tls_record__$(idx_rec)] at @s run data modify storage tst:player rot.lr$(idx_rec) append from entity @s Rotation[0]
$execute as @a[tag=tls_record__$(idx_rec)] at @s run data modify storage tst:player rot.ud$(idx_rec) append from entity @s Rotation[1]
$execute as @a[tag=tls_record__$(idx_rec)] at @s run data modify storage tst:player sneak.$(idx_rec) append from storage tst:player sneak_tmp.$(idx_rec)
$execute as @a[tag=tls_record__$(idx_rec)] at @s run data modify storage tst:player swim.$(idx_rec) append from storage tst:player swim_tmp.$(idx_rec)

$execute as @a[tag=tls_record__$(idx_rec)] at @s store result score @s tls.record run data get storage tst:player pos.x$(idx_rec)

$data modify storage tst:player pseudo.$(idx_rec) set from entity @s[tag=tls_record__$(idx_rec)] Inventory[{Slot: 22b}].components.minecraft:custom_name.insertion
$data modify storage tst:player pseudo.name set from storage tst:player pseudo.$(idx_rec)

$execute if score @s[tag=tls_play_record__$(idx_rec), tag=!tls_record__$(idx_rec)] tls.record matches 1.. run function config:tst/play_record/preset with storage tst:player pseudo
execute if score @s tls.play_record matches 0 run gamemode creative @s

scoreboard players set $tls_record__time tms.value 0
