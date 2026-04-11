# Handler
execute store result score $tls_nb__player__handler tms.var if entity @a[tag=tls_handler]
execute store result score $tls_nb__player__handler__fix tms.var if entity @a[tag=tls_handler__fix]

execute if score $tls_nb__player__handler tms.var matches 2.. run function config:error/admin_1001
execute if score $tls_nb__player__handler__fix tms.var matches 2.. run function config:error/admin_1001
