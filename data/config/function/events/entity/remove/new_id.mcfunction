# New id
$execute as @e[tag=tls_$(type)_done__race] if score @s tls.id > $tls_deleted tms.var run scoreboard players remove @s tls.id 1
$execute as @e[tag=tls_$(type)_done__race] if score @s tls.id >= $tls_deleted tms.var run data merge entity @s {text: [{text: "$(name)", color: "$(color)", bold: true}, " ", {score: {name: "@s", objective: "tls.id"}, color: "yellow"}]}

$execute at @e[tag=tls_$(type)__race, distance=..1.5] run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~ ~ ~ .15 100 .15 .1 1000 force @s

stopsound @s master block.beacon.deactivate
playsound block.beacon.deactivate master @s ~ ~ ~ 1000 2 0
