title @s times 0 50 0

$title @s actionbar [ \
    { \
        text: "", \
        color: "white", \
        bold: true \
    }, \
    { \
        text: "Targeted entity", \
        extra: [ \
            { \
                text: ": ", \
                color: "yellow" \
            }, \
            { \
                text: "$(type)", \
                color: "$(color)", \
                bold: false \
            } \
        ], \
        color: "dark_green" \
    }, \
    "   |   ", \
    { \
        text: "Properties", \
        extra: [ \
            { \
                text: ": ", \
                color: "yellow" \
            }, \
            { \
                storage: "config:settings", \
                nbt: "tools.$(category).nbt_weaver.$(event)", \
                color: "gray", \
                bold: false \
            } \
        ], \
        color: "blue" \
    }, \
    "   |   ",  \
    { \
        text: "Mode", \
        extra: [ \
            { \
                text: ": ", \
                color: "yellow" \
            }, \
            { \
                storage: "config:settings", \
                nbt: "tools.mode", \
                color: "white", \
                bold: false \
            } \
        ], \
        color: "light_purple" \
    } \
]
