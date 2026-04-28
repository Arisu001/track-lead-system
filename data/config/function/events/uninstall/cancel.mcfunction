function config:hud/chat/remove_canceled


advancement revoke @s only config:tools/remove remove

particle dust{color: [0.0, 0.0, 0.0], scale: 1.0} ~ ~ ~ 1 1 1 .1 1000 force @s
playsound entity.villager.no master @s ~ ~ ~ 1000 .33 0

scoreboard players reset $tls_dbl_rc tms.var
scoreboard players reset $tls_tmp__dbl_rc tms.value
