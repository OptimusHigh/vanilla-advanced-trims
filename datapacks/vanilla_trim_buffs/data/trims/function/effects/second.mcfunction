# Сброс секундного таймера
scoreboard players set @s trims.timer 0

# 1. Тень Вардена (Регенерация при зажатом Shift)
execute if entity @s[tag=trims.synergy_warden,predicate=trims:is_sneaking] run effect give @s minecraft:regeneration 2 0 true

# 2. Око Бездны (Ночное зрение на глубине ниже Y=0 при зажатом Shift)
execute if entity @s[tag=trims.synergy_void_eye,predicate=trims:is_sneaking] at @s if entity @s[y=..0] run effect give @s minecraft:night_vision 5 0 true

# 3. Глубинный Владыка (Conduit Power под водой)
execute if entity @s[tag=trims.synergy_abyssal] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:conduit_power 3 0 true

# 4. Незерский Варлорд (Мгновенное тушение огня через предикат)
execute if entity @s[tag=trims.synergy_piglin] if predicate trims:is_on_fire run data modify entity @s Fire set value 0s

# 5. Иссушающий Бастион (Очистка эффекта Wither)
execute if entity @s[tag=trims.synergy_wither] run effect clear @s minecraft:wither

# 6. Кинетический Конденсатор (Частицы искр при спринте)
execute if entity @s[tag=trims.synergy_kinetic,predicate=trims:is_sprinting] at @s run particle minecraft:dust{color:[1.0,0.15,0.15],scale:1.0} ~ ~0.2 ~ 0.2 0.1 0.2 0 4

# 7. Штормовой Порыв (Частицы ветра под ногами при падении через предикат)
execute if entity @s[tag=trims.synergy_breeze] if predicate trims:is_falling at @s run particle minecraft:small_gust ~ ~ ~ 0.2 0.1 0.2 0 2
