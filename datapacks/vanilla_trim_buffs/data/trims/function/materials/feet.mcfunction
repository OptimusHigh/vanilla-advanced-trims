# ==========================================
# Материалы отделки: БОТИНКИ (armor.feet)
# Модификатор: trims:feet_mat
# ==========================================

# 1. Iron (+0.5 твёрдости брони)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:iron"}] run attribute @s minecraft:armor_toughness modifier add trims:feet_mat 0.5 add_value

# 2. Copper (+0.15 высоты шага)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:copper"}] run attribute @s minecraft:step_height modifier add trims:feet_mat 0.15 add_value

# 3. Gold (+5% скорости копания)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:gold"}] run attribute @s minecraft:block_break_speed modifier add trims:feet_mat 0.05 add_multiplied_base

# 4. Redstone (+2.5% скорости бега)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:redstone"}] run attribute @s minecraft:movement_speed modifier add trims:feet_mat 0.025 add_multiplied_base

# 5. Lapis (+10% скорости в воде, +1 сек дыхания)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:lapis"}] run attribute @s minecraft:water_movement_efficiency modifier add trims:feet_mat 0.10 add_multiplied_base
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:lapis"}] run attribute @s minecraft:oxygen_bonus modifier add trims:feet_mat 1.0 add_value

# 6. Quartz (+1.0 блок безопасного падения)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:quartz"}] run attribute @s minecraft:safe_fall_distance modifier add trims:feet_mat 1.0 add_value

# 7. Emerald (+0.5 Удачи)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:emerald"}] run attribute @s minecraft:luck modifier add trims:feet_mat 0.5 add_value

# 8. Amethyst (+10% скорости на корточках)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:amethyst"}] run attribute @s minecraft:sneaking_speed modifier add trims:feet_mat 0.10 add_multiplied_base

# 9. Diamond (+1.0 HP / 0.5 сердца)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:diamond"}] run attribute @s minecraft:max_health modifier add trims:feet_mat 1.0 add_value

# 10. Netherite (-15% времени горения, +10% резиста взрывам)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:netherite"}] run attribute @s minecraft:burning_time modifier add trims:feet_mat -0.15 add_multiplied_base
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:netherite"}] run attribute @s minecraft:explosion_knockback_resistance modifier add trims:feet_mat 0.10 add_value

# 11. Resin (+0.25 блока дальности взаимодействия)
execute if items entity @s armor.feet *[minecraft:trim~{material:"minecraft:resin"}] run attribute @s minecraft:block_interaction_range modifier add trims:feet_mat 0.25 add_value
