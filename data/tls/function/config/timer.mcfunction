tag @a remove tls_stg__start
clear @a #config:config[custom_data={start: 1b, config: 1b}]
clear @a #config:config[custom_data={checkpoint: 1b, config: 1b}]
clear @a #config:config[custom_data={finish: 1b, config: 1b}]
clear @a #config:config[custom_data={undo: 1b, config: 1b}]

execute unless score $tls_timer tms.value matches -5.. run function tls:config/timer/root
scoreboard players remove $tls_timer tms.value 1

function tls:hud/screen/timer {timer: 100, string: "5", color: "dark_red", volume: 0, pitch: 0}
function tls:hud/screen/timer {timer: 80, string: "4", color: "red", volume: 0, pitch: 0}
function tls:hud/screen/timer {timer: 60, string: "3", color: "gold", volume: 1000, pitch: 0}
function tls:hud/screen/timer {timer: 40, string: "2", color: "yellow", volume: 1000, pitch: 1}
function tls:hud/screen/timer {timer: 20, string: "1", color: "dark_green", volume: 1000, pitch: 1.5}
function tls:hud/screen/timer {timer: -1, string: "GO !", color: "green", volume: 1000, pitch: 2}
