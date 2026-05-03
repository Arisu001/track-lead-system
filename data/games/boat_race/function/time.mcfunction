scoreboard players add @s tls.curr__time 1
scoreboard players add @s tls.curr__ms 1

execute if score @s tls.curr__ms matches 20.. run function tls:time/seconds
execute if score @s tls.curr__sec matches 60.. run function tls:time/minutes


function tls:time/display
