# Обработка пользовательского интерфейса /trigger trims (без OP)
execute as @a[scores={trims=1..}] run function trims:ui/inspect

# Серверный тик-обработчик (20 TPS)
# Zero Lag: выполняется ТОЛЬКО для игроков с активным пассивным тегом
execute as @a[tag=trims.has_passive_tick] run function trims:effects/tick
