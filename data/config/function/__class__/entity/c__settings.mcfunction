# PAGE ONE
# Config
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_config", "tls_stg__txt", "tls_stg", "tls"], text: {text: "CONFIG", color: "gray", bold: true, underlined: true}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_start", "tls_stg__txt", "tls_stg", "tls"], text: {text: "Start", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_chec", "tls_stg__txt", "tls_stg", "tls"], text: {text: "Checkpoint", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_finish", "tls_stg__txt", "tls_stg", "tls"], text: {text: "Finish", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}

# Help
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_help", "tls_stg__txt", "tls_stg", "tls"], text: {text: "AIDE", color: "blue", bold: true, underlined: true}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_use", "tls_stg__txt", "tls_stg", "tls"], text: {text: "L'utiliser ?", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}

# Ranking
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_rkg", "tls_stg__txt", "tls_stg", "tls"], text: {text: "CLASSEMENT", color: "gold", bold: true, underlined: true}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1, Rotation: [0.0, 0.0f]}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_top3", "tls_stg__txt", "tls_stg", "tls"], text: {text: "top 3", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_top5", "tls_stg__txt", "tls_rank__sel", "tls_stg", "tls"], text: {text: "top 5", color: "yellow"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_top10", "tls_stg__txt", "tls_stg", "tls"], text: {text: "top 10", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}


# PAGE TWO
# Config
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_reset", "tls_stg__txt", "tls_stg", "tls"], text: [{text: "Reset action", color: "dark_gray"}, {text: ": ", color: "yellow"}], view_range: 0.0f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_reset_extra", "tls_stg__txt", "tls_stg", "tls"], text: {text: "Close", color: "gray"}, view_range: 0.0f, billboard: "fixed", teleport_duration: 1}


# Actual Page
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_page", "tls_stg__page_one", "tls_stg__txt", "tls_stg", "tls"], text: [{text: "Page ", color: "green"}, {text: "n°", color: "white"}, {text: "1", color: "aqua"}], view_range: 0.05f, billboard: "fixed", teleport_duration: 1}

# Change Page
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_prev_page", "tls_stg__page_sel", "tls_stg__txt", "tls_stg", "tls"], text: {text: "Previous page", color: "dark_gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}
summon text_display ~ ~ ~ {Tags: ["tls_stg__txt_next_page", "tls_stg__txt", "tls_stg", "tls"], text: {text: "Next page", color: "gray"}, view_range: 0.05f, billboard: "fixed", teleport_duration: 1}


summon interaction ~ ~ ~ {Tags: ["tls_stg__int_start", "tls_int", "tls_stg", "tls"], width: 0.5f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_chec", "tls_int", "tls_stg", "tls"], width: 1.3f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_finish", "tls_int", "tls_stg", "tls"], width: 0.65f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_use", "tls_int", "tls_stg", "tls"], width: 1.3f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_top3", "tls_int", "tls_stg", "tls"], width: 0.5f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_top5", "tls_int", "tls_stg", "tls"], width: 0.5f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_top10", "tls_int", "tls_stg", "tls"], width: 0.65f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_undo", "tls_int", "tls_stg", "tls"], width: 0.65f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_reset", "tls_int", "tls_stg", "tls"], width: 0.0f, height: 0.0f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_reset_extra", "tls_int", "tls_stg", "tls"], width: 0.0f, height: 0.0f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_prev_page", "tls_int", "tls_stg", "tls"], width: 1.35f, height: 0.25f}
summon interaction ~ ~ ~ {Tags: ["tls_stg__int_next_page", "tls_int", "tls_stg", "tls"], width: 0.85f, height: 0.25f}
