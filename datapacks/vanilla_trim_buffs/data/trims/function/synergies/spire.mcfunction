# Синергия: Небесный Акробат (End Spire Acrobat) - Ботинки + Spire + Quartz
attribute @s minecraft:safe_fall_distance modifier add trims:synergy_feet 5.0 add_value
attribute @s minecraft:fall_damage_multiplier modifier add trims:synergy_feet -0.40 add_multiplied_base
tag @s add trims.has_passive_tick
tag @s add trims.synergy_spire
execute unless entity @s[tag=trims.prev_synergy_spire] run function trims:notify/synergy_spire
