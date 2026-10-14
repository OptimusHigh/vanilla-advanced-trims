# Синергия: Атлас Пустыни (Dune Colossus) - Поножи + Dune + Iron
attribute @s minecraft:knockback_resistance modifier add trims:synergy_legs 0.35 add_value
tag @s add trims.has_passive_tick
tag @s add trims.synergy_dune
execute unless entity @s[tag=trims.prev_synergy_dune] run function trims:notify/synergy_dune
