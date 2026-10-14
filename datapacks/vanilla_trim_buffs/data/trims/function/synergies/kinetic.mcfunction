# Синергия: Кинетический Конденсатор (Kinetic Overcharger) - Ботинки + Bolt + Redstone
attribute @s minecraft:movement_speed modifier add trims:synergy_feet 0.05 add_multiplied_base
tag @s add trims.has_passive_tick
tag @s add trims.synergy_kinetic
execute unless entity @s[tag=trims.prev_synergy_kinetic] run function trims:notify/synergy_kinetic
