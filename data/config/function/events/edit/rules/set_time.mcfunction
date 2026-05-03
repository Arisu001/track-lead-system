$data modify storage config:settings edit.rules.time.hour set value $(hour)i
$data modify storage config:settings edit.rules.time.minute set value $(minute)i
$data modify storage config:settings edit.rules.time.seconde set value $(seconde)i
$data modify storage config:settings edit.rules.time.milliseconde set value $(tick)i

scoreboard players set $tls_edit_rules__tmp tms.var 1
