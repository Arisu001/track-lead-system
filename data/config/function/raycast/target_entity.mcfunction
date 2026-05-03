team join tls_good @e[tag=tls_cursor_trg]
tp @s ~ ~ ~ ~ ~

$tag @a[tag=tls_handler, limit=1] remove tls_target__$(remove_1)
$tag @a[tag=tls_handler, limit=1] remove tls_target__$(remove_2)
$tag @a[tag=tls_handler, limit=1] remove tls_target__$(remove_3)
$tag @a[tag=tls_handler, limit=1] remove tls_target__$(remove_4)
$tag @a[tag=tls_handler, limit=1] remove tls_target__$(remove_5)
tag @a[tag=tls_handler, limit=1] remove tls_target__
$tag @a[tag=tls_handler, limit=1] add tls_target__$(add)
tag @a[tag=tls_handler, limit=1] add tls_target__path
