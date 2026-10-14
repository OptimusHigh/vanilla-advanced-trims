# Сброс и повторная активация триггера
scoreboard players set @s trims 0
scoreboard players enable @s trims

# Вывод профиля экипировки в чат
tellraw @s [{"text":"\n═════════ ","color":"gold"},{"text":"✦ VanillaTrimBuffs: Билд ✦","color":"yellow","bold":true},{"text":" ═════════","color":"gold"}]
function trims:ui/slots
function trims:ui/sets
function trims:ui/synergies
tellraw @s [{"text":"═══════════════════════════════════════\n","color":"gold"}]
