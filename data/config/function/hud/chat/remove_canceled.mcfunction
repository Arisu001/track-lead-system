function config:hud/clear

tellraw @s [{text: "═════════[ ", color: "#19df5", bold: true}, {text: "REMOVE CANCELED", color: "red"}, {text: " ]═════════"}]
tellraw @s ""
tellraw @s [{text: "[", color: "white"}, {text: "TMS", color: "dark_aqua"}, {text: "] "}, {text: "> ", color: "yellow"}, {text: "Remove action ", color: "gray"}, {text: "was canceled", color: "gray"}]
tellraw @s ""
tellraw @s {text: "══════════════════════════════", color: "#19df5", bold: true}
 