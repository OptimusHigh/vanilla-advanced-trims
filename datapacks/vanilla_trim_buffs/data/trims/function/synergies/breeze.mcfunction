# Синергия: Штормовой Порыв (Breeze Gale) - Ботинки + Flow + Copper
attribute @s minecraft:step_height modifier add trims:synergy_feet 0.30 add_value
attribute @s minecraft:safe_fall_distance modifier add trims:synergy_feet 3.0 add_value
tag @s add trims.has_passive_tick
tag @s add trims.synergy_breeze
execute unless entity @s[tag=trims.prev_synergy_breeze] run function trims:notify/synergy_breeze
