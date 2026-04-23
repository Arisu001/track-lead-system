$data modify entity @s Pos[0] set from storage tst:player pos.x$(id)[$(idx)] 
$data modify entity @s Pos[1] set from storage tst:player pos.y$(id)[$(idx)] 
$data modify entity @s Pos[2] set from storage tst:player pos.z$(id)[$(idx)] 
$data modify entity @s Rotation[0] set from storage tst:player rot.lr$(id)[$(idx)] 
$data modify entity @s Rotation[1] set from storage tst:player rot.ud$(id)[$(idx)]
$data modify entity @s pose set from storage tst:player sneak.$(id)[$(idx)]

$data modify entity @s pose set from storage tst:player sneak.$(id)[$(idx)]
$execute store result score @a[tag=tls_play_record__$(id)] tms.temp run data get storage tst:player sneak.$(id)[$(idx)]
$execute if score @p[tag=tls_play_record__$(id)] tms.temp matches 1 run data modify entity @s pose set value "crouching"

$execute store result score @a[tag=tls_play_record__$(id)] tms.temp run data get storage tst:player swim.$(id)[$(idx)]
$execute if score @p[tag=tls_play_record__$(id)] tms.temp matches 1 run data modify entity @s pose set value "swimming"
