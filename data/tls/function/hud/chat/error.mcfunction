tellraw @s [{text: "═════════[ ", color: "dark_purple", bold: true}, {text: "Erreur détecté", color: "red"}, {text: " ]═════════"}]
tellraw @s ""
execute if score $tls_error tms.var matches 133 run tellraw @s [{text: "[", color: "white"}, {text: "TMS", color: "dark_aqua"}, "] ", {text: "Type", color: "light_purple"}, {text: ": ", color: "yellow"}, {text: "ent-133", color: "red"}, {text: " > ", color: "yellow"}, {text: "Aucune entitée trouvée", color: "aqua"}]
tellraw @s ""
tellraw @s {text: "═════════════════════════════", color: "dark_purple", bold: true}
