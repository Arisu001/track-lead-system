execute as @e[tag=tls_stg__close] at @s run data merge entity @s {width: 0.0f, height: 0.0f}

# Config
execute if predicate config:this/looking/start run data modify entity @e[tag=tls_stg__txt_start, limit=1] text.color set value "green"
execute if predicate config:this/looking/checkpoint run data modify entity @e[tag=tls_stg__txt_chec, limit=1] text.color set value "green"
execute if predicate config:this/looking/finish run data modify entity @e[tag=tls_stg__txt_finish, limit=1] text.color set value "green"

execute unless predicate config:this/looking/start run data modify entity @e[tag=tls_stg__txt_start, limit=1] text.color set value "dark_gray"
execute unless predicate config:this/looking/checkpoint run data modify entity @e[tag=tls_stg__txt_chec, limit=1] text.color set value "dark_gray"
execute unless predicate config:this/looking/finish run data modify entity @e[tag=tls_stg__txt_finish, limit=1] text.color set value "dark_gray"


# Help
execute if predicate config:this/looking/how_to_use run data modify entity @e[tag=tls_stg__txt_use, limit=1] text.color set value "green"
execute unless predicate config:this/looking/how_to_use run data modify entity @e[tag=tls_stg__txt_use, limit=1] text.color set value "dark_gray"

# Ranking
execute if predicate config:this/looking/top_3 run data modify entity @e[tag=tls_stg__txt_top3, limit=1] text.color set value "green"
execute if predicate config:this/looking/top_5 run data modify entity @e[tag=tls_stg__txt_top5, tag=!tls_rank__sel, limit=1] text.color set value "green"
execute if predicate config:this/looking/top_10 run data modify entity @e[tag=tls_stg__txt_top10, limit=1] text.color set value "green"

execute unless predicate config:this/looking/top_3 run data modify entity @e[tag=tls_stg__txt_top3, limit=1] text.color set value "dark_gray"
execute unless predicate config:this/looking/top_5 run data modify entity @e[tag=tls_stg__txt_top5, tag=!tls_rank__sel, limit=1] text.color set value "dark_gray"
execute unless predicate config:this/looking/top_10 run data modify entity @e[tag=tls_stg__txt_top10, limit=1] text.color set value "dark_gray"


# Pev + Next Page
execute if predicate config:this/looking/previous_page run data modify entity @e[tag=tls_stg__txt_prev_page, tag=!tls_stg__page_sel, limit=1] text.color set value "green"
execute if predicate config:this/looking/next_page run data modify entity @e[tag=tls_stg__txt_next_page, limit=1] text.color set value "green"

execute unless predicate config:this/looking/previous_page run data modify entity @e[tag=tls_stg__txt_prev_page, limit=1] text.color set value "dark_gray"
execute unless predicate config:this/looking/next_page run data modify entity @e[tag=tls_stg__txt_next_page, limit=1] text.color set value "dark_gray"
