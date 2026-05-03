$data modify storage config:settings edit.terrain.fillbiome.biome set value $(biome)
$data modify storage config:settings edit.terrain.fillbiome.replace set value $(replace)

scoreboard players set $tls_edit_terrain__tmp tms.var 4
