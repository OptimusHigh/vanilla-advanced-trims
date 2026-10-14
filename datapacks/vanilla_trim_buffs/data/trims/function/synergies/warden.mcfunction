# Синергия: Тень Вардена (Warden's Stride) - Поножи + Silence + Amethyst
attribute @s minecraft:sneaking_speed modifier add trims:synergy_legs 0.45 add_multiplied_base
tag @s add trims.has_passive_tick
tag @s add trims.synergy_warden
execute unless entity @s[tag=trims.prev_synergy_warden] run function trims:notify/synergy_warden
