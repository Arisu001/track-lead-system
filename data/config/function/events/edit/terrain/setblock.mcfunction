$data modify storage config:settings edit.terrain.setblock.block set value $(block)
$data modify storage config:settings edit.terrain.setblock.replace_mode set value $(replace_mode)

scoreboard players set $tls_edit_terrain__tmp tms.var 1
