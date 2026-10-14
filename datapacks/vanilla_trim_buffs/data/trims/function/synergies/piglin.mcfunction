# Синергия: Незерский Варлорд (Piglin Warlord) - Нагрудник + Snout + Gold/Netherite
attribute @s minecraft:burning_time modifier add trims:synergy_chest -0.50 add_multiplied_base
tag @s add trims.has_passive_tick
tag @s add trims.synergy_piglin
execute unless entity @s[tag=trims.prev_synergy_piglin] run function trims:notify/synergy_piglin
