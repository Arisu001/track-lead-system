# Reset the old retention pages
$scoreboard players reset @s tls.$(remove_1)
$scoreboard players reset @s tls.$(remove_2)
$scoreboard players reset @s tls.$(remove_3)

# Copy the variable to stay on the same page
$scoreboard players operation @s tls.$(add) = $tls_edit_$(add)__tmp tms.var
$scoreboard players reset $tls_edit_$(add)__tmp tms.var

# Add "has_fill" to display the lore
execute unless score @s tls.terrain matches 1 unless score @s tls.terrain matches 3 run tag @s add tls__edit_terrain__has_fill
execute unless score @s tls.terrain matches 2 unless score @s tls.terrain matches 4 run tag @s remove tls__edit_terrain__has_fill

# Add "no_clone" to display lore, but not for the "clone"
execute if score @s tls.terrain matches 3 run tag @s remove tls__edit_terrain__no_clone
execute unless score @s tls.terrain matches 3 run tag @s add tls__edit_terrain__no_clone

tag @s add tls_stg__config
