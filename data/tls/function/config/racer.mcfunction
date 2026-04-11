scoreboard players set @s[tag=!tls_player__race__finished] tls.best__time 973841529
scoreboard players set $tls_end__race tms.var 0
scoreboard players set $tls_start__race tms.var 1
scoreboard players reset $tls_timer tms.value

function tls:config/racer/init
function tls:config/racer/rank
