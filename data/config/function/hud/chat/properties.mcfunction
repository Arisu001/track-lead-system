tellraw @s [{text: "═════════[ ", color: "dark_purple", bold: true}, {text: "Your config", color: "gray"}, {text: " ]═════════"}]
tellraw @s ""
tellraw @s ""
tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Path", color: "aqua"}]
tellraw @s [{text: "Number of Checkpoints", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "checkpoints.id", color: "gold"}]
tellraw @s ""
tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Edit", color: "gold"}]
tellraw @s [{text: "Max time", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.max_time", color: "#EF4444"}]
tellraw @s [{text: "Max player", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.max_player", color: "#3B82F6"}]
tellraw @s [{text: "Ranking", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.ranking", color: "gold"}]
tellraw @s ""
tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Mode", color: "light_purple"}]
tellraw @s [{text: "Kart", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.max_time", color: "#EF4444"}]
tellraw @s [{text: "Boat", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.max_player", color: "#3B82F6"}]
tellraw @s [{text: "Runner", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "edit.ranking", color: "gold"}]
tellraw @s ""
tellraw @s [{text: "CATEGORY", color: "blue"}, {text: " = ", color: "white"}, {text: "Ghost", color: "gray"}]
tellraw @s [{text: "Toggle", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "toggle.ghost", color: "red"}]
tellraw @s [{text: "Camera", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "ghost.properties.camera", color: "blue"}]
tellraw @s [{text: "Player", color: "gray"}, {text: ": ", color: "yellow"}, {storage: "config:settings", nbt: "ghost.properties.player", color: "green"}]
tellraw @s ""
tellraw @s ""
tellraw @s {text: "═════════════════════════════", color: "dark_purple", bold: true}
