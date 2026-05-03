$execute if score $tls_timer tms.value matches $(timer) run title @a[tag=tls_racer] title {text: "$(string)", color: $(color), bold: true}

$execute if score $tls_timer tms.value matches $(timer) run playsound block.note_block.bit master @s ~ ~ ~ $(volume) $(pitch) 0
