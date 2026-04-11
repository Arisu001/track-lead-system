function tls:player/position


execute unless score @s tls.pos_oz = @s tls.pos_z if score @s tls.pos_ox < @s tls.pos_x run function tls:race/move/x_positive
execute unless score @s tls.pos_oz = @s tls.pos_z if score @s tls.pos_ox > @s tls.pos_x run function tls:race/move/x_negative

execute unless score @s tls.pos_ox = @s tls.pos_x if score @s tls.pos_oz < @s tls.pos_z run function tls:race/move/z_positive
execute unless score @s tls.pos_ox = @s tls.pos_x if score @s tls.pos_oz > @s tls.pos_z run function tls:race/move/z_negative
