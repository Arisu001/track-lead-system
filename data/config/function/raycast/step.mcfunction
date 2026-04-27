scoreboard players add $tls_ray tms.temp 1

execute if score $tls_ray tms.temp matches ..1000 positioned ^ ^ ^.25 if block ~ ~ ~ air run function config:raycast/step
execute unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches ..150 positioned ^ ^ ^.25 unless block ~ ~ ~ air align xyz run function config:raycast/place/preset
execute as @s[advancements={config:tools/path/start=true}] unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches 151.. run function config:raycast/miss
execute unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches 151.. positioned ^ ^ ^.25 unless block ~ ~ ~ air align xyz run function config:raycast/cannot_place
