# Синергия: Глубинный Владыка (Abyssal Sovereign) - Шлем + Tide + Lapis
attribute @s minecraft:oxygen_bonus modifier add trims:synergy_head 5.0 add_value
tag @s add trims.has_passive_tick
tag @s add trims.synergy_abyssal
execute unless entity @s[tag=trims.prev_synergy_abyssal] run function trims:notify/synergy_abyssal
