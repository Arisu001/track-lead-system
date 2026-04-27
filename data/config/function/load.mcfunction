scoreboard objectives add tms.const dummy
scoreboard objectives add tms.temp dummy
scoreboard objectives add tms.value dummy
scoreboard objectives add tms.var dummy
scoreboard objectives add tls.rank dummy
scoreboard objectives add tls.id dummy
scoreboard objectives add tls.record dummy
scoreboard objectives add tls.play_record dummy
scoreboard objectives add tls.item__pseudo dummy
scoreboard objectives add tls.nb__item__pseudo dummy
scoreboard objectives add tls.curr__time dummy
scoreboard objectives add tls.curr__ms dummy
scoreboard objectives add tls.curr__sec dummy
scoreboard objectives add tls.curr__min dummy
scoreboard objectives add tls.best__time dummy
scoreboard objectives add tls.best__ms dummy
scoreboard objectives add tls.best__sec dummy
scoreboard objectives add tls.best__min dummy
scoreboard objectives add tls.pos_x dummy
scoreboard objectives add tls.pos_z dummy
scoreboard objectives add tls.pos_ox dummy
scoreboard objectives add tls.pos_oz dummy
scoreboard objectives add tls.dx dummy
scoreboard objectives add tls.dz dummy
scoreboard objectives add tls.progress dummy
scoreboard objectives add tls.sort dummy
scoreboard objectives add tls_Properties trigger
scoreboard objectives add tls_Path trigger
scoreboard objectives add tls_Mode trigger
scoreboard objectives add tls_Toggle trigger



execute as @a run schedule function config:init/datapack 5t
