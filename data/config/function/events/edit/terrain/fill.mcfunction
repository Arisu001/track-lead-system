$data modify storage config:settings edit.terrain.fill.block set value $(fill_block)
$data modify storage config:settings edit.terrain.fill.mode set value $(fill_mode)
$data modify storage config:settings edit.terrain.fill.replace_block set value $(replace_block)
$data modify storage config:settings edit.terrain.fill.replace_mode set value $(replace_mode)

scoreboard players set $tls_edit_terrain__tmp tms.var 2
