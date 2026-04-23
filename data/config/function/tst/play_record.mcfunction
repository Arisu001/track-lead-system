$scoreboard players add @s[tag=tls_play_record__$(idx_play)] tls.play_record 1

$execute store result storage tst:player idx.$(idx_play) int 1 run scoreboard players get @s tls.play_record
$data modify storage tst:player player.idx set from storage tst:player idx.$(idx_play)

$execute store result storage tst:player id.$(idx_play) int 1 run scoreboard players get @s tls.id
$data modify storage tst:player player.id set from storage tst:player id.$(idx_play)

execute as @e[tag=tls_rec__trg] at @s run function config:tst/play_record/_getter_ with storage tst:player player

$execute if score @s tls.play_record >= @s tls.record run tag @s remove tls_play_record__$(idx_play)
execute if score @s tls.play_record >= @s tls.record run scoreboard players set @s tls.play_record 0
