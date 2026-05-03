$execute as @e[tag=tls_$(add)__race] run data modify entity @s transformation.scale[] set value $(scale)

$execute at @e[tag=tls_$(add)__race] run particle $(particle) ~ ~ ~ .15 100 .15 .1 1000 force @s

stopsound @s master block.conduit.activate
stopsound @s master block.conduit.deactivate
$playsound block.conduit.$(event) master @s ~ ~ ~ 1000 2 0

$tag @s remove tls_target__$(remove_1)
$tag @s remove tls_target__$(remove_2)
tag @s remove tls_target__
$tag @s add tls_target__$(add)

$execute as @e[tag=tls_$(add)__race] if score @s tms.var matches 2.. run scoreboard players set @s tms.var 0
