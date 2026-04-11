# Config
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_config", "tls_stg__txt", "tls"], text: {text: "CONFIG", color: "gray", bold: true, underlined: true}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_start", "tls_stg__txt", "tls"], text: {text: "Start", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_chec", "tls_stg__txt", "tls"], text: {text: "Checkpoint", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}

# Help
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_help", "tls_stg__txt", "tls"], text: {text: "AIDE", color: "blue", bold: true, underlined: true}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_use", "tls_stg__txt", "tls"], text: {text: "L'utiliser ?", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}

# Ranking
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_rkg", "tls_stg__txt", "tls"], text: {text: "CLASSEMENT", color: "gold", bold: true, underlined: true}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1, Rotation: [0.0, 0.0f]}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_top3", "tls_stg__txt", "tls"], text: {text: "top 3", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_top5", "tls_stg__txt", "tls_rank__sel", "tls"], text: {text: "top 5", color: "yellow"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_top10", "tls_stg__txt", "tls"], text: {text: "top 10", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}


summon interaction ~ ~ ~ {Tags: ["tls_stg__txt_start__int", "tls_int", "tls_stg", "tls"], width: 0.5f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__txt_chec__int", "tls_int", "tls_stg", "tls"], width: 1.3f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__txt_use__int", "tls_int", "tls_stg", "tls"], width: 1.3f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__txt_top3__int", "tls_int", "tls_stg", "tls"], width: 0.5f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__txt_top5__int", "tls_int", "tls_stg", "tls"], width: 0.5f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__txt_top10__int", "tls_int", "tls_stg", "tls"], width: 0.65f, height: 0.25f}
