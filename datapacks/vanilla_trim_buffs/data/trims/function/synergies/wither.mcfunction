# Синергия: Иссушающий Бастион (Withered Aegis) - Нагрудник + Rib + Netherite
attribute @s minecraft:knockback_resistance modifier add trims:synergy_chest 0.25 add_value
tag @s add trims.has_passive_tick
tag @s add trims.synergy_wither
execute unless entity @s[tag=trims.prev_synergy_wither] run function trims:notify/synergy_wither
