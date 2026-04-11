execute as @a at @s run function tls:race/root

execute as @a[limit=1] if score $tls_nb__player__race tms.var matches 2.. unless score @s tls.rank matches 1.. run function tls:config/timer
