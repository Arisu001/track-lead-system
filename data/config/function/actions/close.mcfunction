execute as @e[tag=tls_stg__close] at @s run data merge entity @s {width: 0.5f, height: 0.5f}
execute as @e[tag=tls_stg] at @s run data modify entity @s teleport_duration set value 1

# Config
tp @e[tag=tls_stg__txt_config] ^2 ^1 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_start] ^2 ^.65 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_chec] ^2 ^.3 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_finish] ^2 ^-.05 ^ facing entity @s eyes
tp @e[tag=tls_stg__int_start] @e[tag=tls_stg__txt_start, limit=1]
tp @e[tag=tls_stg__int_chec] ^2 ^.25 ^ facing entity @e[tag=tls_stg__txt_chec, limit=1]
tp @e[tag=tls_stg__int_finish] @e[tag=tls_stg__txt_finish, limit=1]

# Help
tp @e[tag=tls_stg__txt_help] ^ ^1 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_use] ^ ^.65 ^ facing entity @s eyes
tp @e[tag=tls_stg__int_use] ^ ^.65 ^.5 facing entity @e[tag=tls_stg__txt_use, limit=1]

# Ranking
tp @e[tag=tls_stg__txt_rkg] ^-2 ^1 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_top3] ^-2 ^.65 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_top5] ^-2 ^.3 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_top10] ^-2 ^-.05 ^ facing entity @s eyes
tp @e[tag=tls_stg__int_top3] @e[tag=tls_stg__txt_top3, limit=1]
tp @e[tag=tls_stg__int_top5] @e[tag=tls_stg__txt_top5, limit=1]
tp @e[tag=tls_stg__int_top10] @e[tag=tls_stg__txt_top10, limit=1]

# Close
tp @e[tag=tls_stg__close_mid] ^ ^-.25 ^.5 facing entity @s eyes
tp @e[tag=tls_stg__close_left] ^.5 ^-.25 ^.5 facing entity @s eyes
tp @e[tag=tls_stg__close_right] ^-.5 ^-.25 ^.5 facing entity @s eyes
tp @e[tag=tls_stg__close_up] ^ ^.25 ^.5 facing entity @s eyes
tp @e[tag=tls_stg__close_down] ^ ^-.75 ^.5 facing entity @s eyes

# Page
tp @e[tag=tls_stg__txt_page] ^ ^-1.15 ^.65 facing entity @s eyes
tp @e[tag=tls_stg__txt_prev_page] ^2 ^-1.15 ^ facing entity @s eyes
tp @e[tag=tls_stg__txt_next_page] ^-2 ^-1.15 ^ facing entity @s eyes
tp @e[tag=tls_stg__int_prev_page] @e[tag=tls_stg__txt_prev_page, limit=1]
tp @e[tag=tls_stg__int_next_page] @e[tag=tls_stg__txt_next_page, limit=1]


stopsound @s * entity.player.attack.nodamage
stopsound @s * entity.player.attack.weak
