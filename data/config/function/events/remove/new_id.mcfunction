# New id
$execute as @e[tag=tls_$(type)_done__race] if score @s tls.id > $tls_deleted tms.var run scoreboard players remove @s tls.id 1

$execute as @e[tag=tls_$(type)_done__race] if score @s tls.id >= $tls_deleted tms.var run data merge entity @s {text: [{text: "$(name)", color: "$(color)", bold: true}, " ", {score: {name: "@s", objective: "tls.id"}, color: "yellow"}]}
