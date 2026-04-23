function tls:player/inventory {idx_rec: 1}
function tls:player/inventory {idx_rec: 2}
function tls:player/inventory {idx_rec: 3}
function tls:player/inventory {idx_rec: 4}
function tls:player/inventory {idx_rec: 5}
function tls:player/inventory {idx_rec: 6}
function tls:player/inventory {idx_rec: 7}
function tls:player/inventory {idx_rec: 8}
function tls:player/inventory {idx_rec: 9}
function tls:player/inventory {idx_rec: 10}
function tls:player/inventory {idx_rec: 11}
function tls:player/inventory {idx_rec: 12}

function tls:player/position
function config:tst


# execute if score @s tls.pos_ox < @s tls.pos_x run function tls:race/move/x_positive
# execute if score @s tls.pos_ox > @s tls.pos_x run function tls:race/move/x_negative

execute if score @s tls.pos_oz < @s tls.pos_z run function tls:race/move/z_positive
execute if score @s tls.pos_oz > @s tls.pos_z run function tls:race/move/z_negative
