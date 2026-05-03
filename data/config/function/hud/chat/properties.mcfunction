tellraw @s [{text: "═════════[ ", color: "dark_purple", bold: true}, {text: "Your config", color: "gray"}, {text: " ]═════════"}]

tellraw @s ""
tellraw @s ""

tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Path", color: "aqua"}]
tellraw @s [{text: "Total Start", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "start.id", color: "gold"}]
tellraw @s [{text: "Total Checkpoints", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "checkpoint.id", color: "gold"}]
tellraw @s [{text: "Total Finish", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "finish.id", color: "gold"}]

tellraw @s ""

tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Edit", color: "gold"}]
tellraw @s [{text: "", color: "#EF4444"}, {text: "Max time", color: "white"}, {text: ": ", color: "yellow"}, {score: {name: "$tls_time__hour", objective: "tms.var"}}, "h", {score: {name: "$tls_time__minute", objective: "tms.var"}}, "m", {score: {name: "$tls_time__seconde", objective: "tms.var"}}, "s", {score: {name: "$tls_time__milliseconde", objective: "tms.var"}},  "t"]
tellraw @s [{text: "Max player", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.rules.max_player", color: "#3B82F6"}]
tellraw @s [{text: "Ranking", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.rules.ranking", color: "gold"}]
tellraw @s ""

tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Mode", color: "light_purple"}]
execute unless score @s tls.mode matches 1.. run function config:hud/chat/properties/disable_mode
execute if score @s tls.mode matches 1 run function config:hud/chat/properties/activate_mode {disable_1: "boat", disable_2: "runner", active: "kart"}
execute if score @s tls.mode matches 2 run function config:hud/chat/properties/activate_mode {disable_1: "kart", disable_2: "runner", active: "boat"}
execute if score @s tls.mode matches 3 run function config:hud/chat/properties/activate_mode {disable_1: "boat", disable_2: "kart", active: "runner"}

tellraw @s ""

tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Ghost", color: "white"}]
tellraw @s [{text: "Toggle", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "toggle.ghost", color: "red"}]
tellraw @s [{text: "Camera", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "ghost.properties.camera", color: "blue"}]
tellraw @s [{text: "Player", color: "white"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "ghost.properties.player", color: "dark_gray"}]

tellraw @s ""
tellraw @s ""

tellraw @s {text: "═════════════════════════════", color: "dark_purple", bold: true}
