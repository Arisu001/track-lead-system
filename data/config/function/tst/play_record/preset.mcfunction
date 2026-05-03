execute unless score @s tls.id matches 1.. run scoreboard players add $tls_id tms.var 1
execute unless score @s tls.id matches 1.. run scoreboard players operation @s tls.id = $tls_id tms.var

$execute as @s[scores={tls.id=1..}, tag=!tls_has__ghost] run summon mannequin ~ ~ ~ {Tags: ["tls_record__trg", "tls_rec__$(name)", "tls"], NoGravity: 1b, profile: "$(name)"}
$execute as @e[tag=tls_rec__$(name), distance=..2] run scoreboard players operation @s tls.id = @p tls.id

function config:tst/play_record {idx_play: 1}

clear @s player_head[item_model="air"]

gamemode spectator @s
team join tls_ghost @s
$execute if score @e[tag=tls_rec__$(name), limit=1] tls.id = @s tls.id run tag @s add tls_has__ghost
$execute if score @e[tag=tls_rec__$(name), limit=1] tls.id = @s tls.id run spectate @e[tag=tls_rec__$(name), limit=1] @s
