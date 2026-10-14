# Инкремент таймера
scoreboard players add @s trims.timer 1

# Секундный цикл (20 тиков = 1 секунда)
execute if score @s trims.timer matches 20.. run function trims:effects/second
