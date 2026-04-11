function config:debug/root


execute unless score $tls_root__handler tms.var matches 1 run function config:config/new_handler
execute if entity @s[tag=tls_handler] run function config:handler/root
