# Синергия: Древний Зодчий (Pale Architect) - Нагрудник + Raiser + Resin
attribute @s minecraft:block_interaction_range modifier add trims:synergy_chest 0.75 add_value
attribute @s minecraft:mining_efficiency modifier add trims:synergy_chest 2.5 add_value
tag @s add trims.synergy_architect
execute unless entity @s[tag=trims.prev_synergy_architect] run function trims:notify/synergy_architect
