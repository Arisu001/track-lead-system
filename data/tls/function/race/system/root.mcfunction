scoreboard players operation $tls_a tls.sort = $tls_pass tms.temp
scoreboard players operation $tls_b tls.sort = $tls_pass tms.temp
scoreboard players add $tls_b tls.sort 1

execute store result storage tls:racer sort.tls_a int 1 run scoreboard players get $tls_a tls.sort
execute store result storage tls:racer sort.tls_b int 1 run scoreboard players get $tls_b tls.sort

function tls:race/system/pass with storage tls:racer sort

scoreboard players remove $tls_pass tms.temp 1
execute if score $tls_pass tms.temp matches 1.. run function tls:race/system/root
