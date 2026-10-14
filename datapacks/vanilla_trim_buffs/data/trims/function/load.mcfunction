# Инициализация скорбордов узоров и синергий
scoreboard objectives add trims.head_pat dummy
scoreboard objectives add trims.chest_pat dummy
scoreboard objectives add trims.legs_pat dummy
scoreboard objectives add trims.feet_pat dummy
scoreboard objectives add trims.active_synergy dummy
scoreboard objectives add trims.count dummy
scoreboard objectives add trims.timer dummy

# Общедоступный триггер для осмотра своего билда (/trigger trims)
scoreboard objectives add trims trigger
scoreboard players enable @a trims

# Принудительная активация вотчера экипировки для всех игроков на сервере
advancement revoke @a only trims:gear_watcher
execute as @a run function trims:on_gear_change

tellraw @a[tag=admin] [{"text":"[VanillaTrimBuffs] ","color":"gold","bold":true},{"text":"Ядро датапака инициализировано (1.21.4+)","color":"green"}]
