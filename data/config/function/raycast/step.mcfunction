scoreboard players add $tls_ray tms.temp 1

execute if score $tls_ray tms.temp matches ..100 positioned ^ ^ ^.25 if block ~ ~ ~ air run function config:raycast/step
execute if score $tls_ray tms.temp matches ..100 positioned ^ ^ ^.25 unless block ~ ~ ~ air align xyz run function config:raycast/cursor
execute if entity @s[advancements={config:tools/settings/start=true}] unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches ..100 positioned ^ ^ ^.25 unless block ~ ~ ~ air run function config:raycast/place {type: "start", name: "START", color: "green"}
execute if entity @s[advancements={config:tools/settings/checkpoint=true}] unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches ..100 positioned ^ ^ ^.25 unless block ~ ~ ~ air run function config:raycast/place {type: "chec", name: "CHECKPOINT", color: "gold"}
execute if entity @s[advancements={config:tools/settings/start=true}] unless score $tls_rc__tmp tms.value matches 1.. if score $tls_ray tms.temp matches 101.. run function config:raycast/miss
