# ==========================================
# Модульная очистка модификаторов и состояния trims:*
# ==========================================

# 1. Сброс модификаторов слотов (head, chest, legs, feet)
attribute @s minecraft:armor_toughness modifier remove trims:head_mat
attribute @s minecraft:step_height modifier remove trims:head_mat
attribute @s minecraft:block_break_speed modifier remove trims:head_mat
attribute @s minecraft:movement_speed modifier remove trims:head_mat
attribute @s minecraft:water_movement_efficiency modifier remove trims:head_mat
attribute @s minecraft:oxygen_bonus modifier remove trims:head_mat
attribute @s minecraft:safe_fall_distance modifier remove trims:head_mat
attribute @s minecraft:luck modifier remove trims:head_mat
attribute @s minecraft:sneaking_speed modifier remove trims:head_mat
attribute @s minecraft:max_health modifier remove trims:head_mat
attribute @s minecraft:burning_time modifier remove trims:head_mat
attribute @s minecraft:explosion_knockback_resistance modifier remove trims:head_mat
attribute @s minecraft:block_interaction_range modifier remove trims:head_mat

attribute @s minecraft:armor_toughness modifier remove trims:chest_mat
attribute @s minecraft:step_height modifier remove trims:chest_mat
attribute @s minecraft:block_break_speed modifier remove trims:chest_mat
attribute @s minecraft:movement_speed modifier remove trims:chest_mat
attribute @s minecraft:water_movement_efficiency modifier remove trims:chest_mat
attribute @s minecraft:oxygen_bonus modifier remove trims:chest_mat
attribute @s minecraft:safe_fall_distance modifier remove trims:chest_mat
attribute @s minecraft:luck modifier remove trims:chest_mat
attribute @s minecraft:sneaking_speed modifier remove trims:chest_mat
attribute @s minecraft:max_health modifier remove trims:chest_mat
attribute @s minecraft:burning_time modifier remove trims:chest_mat
attribute @s minecraft:explosion_knockback_resistance modifier remove trims:chest_mat
attribute @s minecraft:block_interaction_range modifier remove trims:chest_mat

attribute @s minecraft:armor_toughness modifier remove trims:legs_mat
attribute @s minecraft:step_height modifier remove trims:legs_mat
attribute @s minecraft:block_break_speed modifier remove trims:legs_mat
attribute @s minecraft:movement_speed modifier remove trims:legs_mat
attribute @s minecraft:water_movement_efficiency modifier remove trims:legs_mat
attribute @s minecraft:oxygen_bonus modifier remove trims:legs_mat
attribute @s minecraft:safe_fall_distance modifier remove trims:legs_mat
attribute @s minecraft:luck modifier remove trims:legs_mat
attribute @s minecraft:sneaking_speed modifier remove trims:legs_mat
attribute @s minecraft:max_health modifier remove trims:legs_mat
attribute @s minecraft:burning_time modifier remove trims:legs_mat
attribute @s minecraft:explosion_knockback_resistance modifier remove trims:legs_mat
attribute @s minecraft:block_interaction_range modifier remove trims:legs_mat

attribute @s minecraft:armor_toughness modifier remove trims:feet_mat
attribute @s minecraft:step_height modifier remove trims:feet_mat
attribute @s minecraft:block_break_speed modifier remove trims:feet_mat
attribute @s minecraft:movement_speed modifier remove trims:feet_mat
attribute @s minecraft:water_movement_efficiency modifier remove trims:feet_mat
attribute @s minecraft:oxygen_bonus modifier remove trims:feet_mat
attribute @s minecraft:safe_fall_distance modifier remove trims:feet_mat
attribute @s minecraft:luck modifier remove trims:feet_mat
attribute @s minecraft:sneaking_speed modifier remove trims:feet_mat
attribute @s minecraft:max_health modifier remove trims:feet_mat
attribute @s minecraft:burning_time modifier remove trims:feet_mat
attribute @s minecraft:explosion_knockback_resistance modifier remove trims:feet_mat
attribute @s minecraft:block_interaction_range modifier remove trims:feet_mat

# 2. Сброс сет-бонусов (trims:set_2pc)
attribute @s minecraft:submerged_mining_speed modifier remove trims:set_2pc
attribute @s minecraft:fall_damage_multiplier modifier remove trims:set_2pc
attribute @s minecraft:attack_speed modifier remove trims:set_2pc
attribute @s minecraft:movement_efficiency modifier remove trims:set_2pc
attribute @s minecraft:block_interaction_range modifier remove trims:set_2pc
attribute @s minecraft:entity_interaction_range modifier remove trims:set_2pc
attribute @s minecraft:follow_range modifier remove trims:set_2pc
attribute @s minecraft:knockback_resistance modifier remove trims:set_2pc
attribute @s minecraft:scale modifier remove trims:set_2pc
attribute @s minecraft:burning_time modifier remove trims:set_2pc
attribute @s minecraft:attack_damage modifier remove trims:set_2pc
attribute @s minecraft:safe_fall_distance modifier remove trims:set_2pc
attribute @s minecraft:armor_toughness modifier remove trims:set_2pc
attribute @s minecraft:sneaking_speed modifier remove trims:set_2pc

# 3. Сброс сет-бонусов (trims:set_4pc)
attribute @s minecraft:water_movement_efficiency modifier remove trims:set_4pc
attribute @s minecraft:step_height modifier remove trims:set_4pc
attribute @s minecraft:movement_efficiency modifier remove trims:set_4pc
attribute @s minecraft:safe_fall_distance modifier remove trims:set_4pc
attribute @s minecraft:movement_speed modifier remove trims:set_4pc
attribute @s minecraft:mining_efficiency modifier remove trims:set_4pc
attribute @s minecraft:block_break_speed modifier remove trims:set_4pc
attribute @s minecraft:sweeping_damage_ratio modifier remove trims:set_4pc
attribute @s minecraft:luck modifier remove trims:set_4pc
attribute @s minecraft:armor_toughness modifier remove trims:set_4pc
attribute @s minecraft:attack_knockback modifier remove trims:set_4pc
attribute @s minecraft:gravity modifier remove trims:set_4pc
attribute @s minecraft:fall_damage_multiplier modifier remove trims:set_4pc
attribute @s minecraft:attack_damage modifier remove trims:set_4pc
attribute @s minecraft:explosion_knockback_resistance modifier remove trims:set_4pc
attribute @s minecraft:attack_speed modifier remove trims:set_4pc
attribute @s minecraft:entity_interaction_range modifier remove trims:set_4pc
attribute @s minecraft:follow_range modifier remove trims:set_4pc
attribute @s minecraft:knockback_resistance modifier remove trims:set_4pc

# 4. Сброс синергий (trims:synergy_<slot>)
attribute @s minecraft:oxygen_bonus modifier remove trims:synergy_head
attribute @s minecraft:burning_time modifier remove trims:synergy_chest
attribute @s minecraft:block_interaction_range modifier remove trims:synergy_chest
attribute @s minecraft:mining_efficiency modifier remove trims:synergy_chest
attribute @s minecraft:knockback_resistance modifier remove trims:synergy_chest

attribute @s minecraft:sneaking_speed modifier remove trims:synergy_legs
attribute @s minecraft:knockback_resistance modifier remove trims:synergy_legs

attribute @s minecraft:step_height modifier remove trims:synergy_feet
attribute @s minecraft:safe_fall_distance modifier remove trims:synergy_feet
attribute @s minecraft:movement_speed modifier remove trims:synergy_feet
attribute @s minecraft:fall_damage_multiplier modifier remove trims:synergy_feet

# 5. Сброс скорбордов
scoreboard players reset @s trims.head_pat
scoreboard players reset @s trims.chest_pat
scoreboard players reset @s trims.legs_pat
scoreboard players reset @s trims.feet_pat
scoreboard players reset @s trims.active_synergy
scoreboard players reset @s trims.count

# 6. Сброс активных тегов эффектов
tag @s remove trims.has_active_effect
tag @s remove trims.has_passive_tick
tag @s remove trims.synergy_warden
tag @s remove trims.synergy_breeze
tag @s remove trims.synergy_void_eye
tag @s remove trims.synergy_piglin
tag @s remove trims.synergy_abyssal
tag @s remove trims.synergy_kinetic
tag @s remove trims.synergy_architect
tag @s remove trims.synergy_wither
tag @s remove trims.synergy_spire
tag @s remove trims.synergy_dune
