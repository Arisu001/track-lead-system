# Categorie = "path"
execute if score $tls_path tms.var matches 1 run function config:player/inventory/menu {cat: "path", type: "start", model: "wooden_axe"}
execute if score $tls_path tms.var matches 2 run function config:player/inventory/menu {cat: "path", type: "checkpoint", model: "wooden_axe"}
execute if score $tls_path tms.var matches 3 run function config:player/inventory/menu {cat: "path", type: "finish", model: "wooden_axe"}

# Categorie = "mode"
execute if score $tls_mode tms.var matches 1 run function config:player/inventory/menu {cat: "mode", type: "kart", model: "minecart"}
execute if score $tls_mode tms.var matches 2 run function config:player/inventory/menu {cat: "mode", type: "boat", model: "oak_boat"}
execute if score $tls_mode tms.var matches 3 run function config:player/inventory/menu {cat: "mode", type: "runner", model: "player_head"}

function config:player/inventory
function config:actions
