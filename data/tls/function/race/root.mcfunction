execute store result score $tls_nb__player__race tms.var if entity @a[tag=tls_racer]

execute unless score $tls_nb__player__race tms.var matches 2.. run function tls:config/racer/reset
execute if score $tls_timer tms.value matches ..-1 as @a[tag=tls_racer] run function tls:config/racer

execute if score @s tls.rank matches 1.. run function tls:time
execute if score @s tls.curr__time matches 1.. run function tls:race/system
