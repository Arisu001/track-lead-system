scoreboard players add $tls_rec__time tms.value 1

execute if score $tls_rec__time tms.value matches 3.. run function config:tst/record_positions {idx_rec: 1}
