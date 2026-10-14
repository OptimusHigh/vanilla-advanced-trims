# Обновление предыдущего состояния для предотвращения спама уведомлений
tag @s remove trims.prev_has_set_4pc
tag @s remove trims.prev_has_set_2pc
tag @s remove trims.prev_synergy_warden
tag @s remove trims.prev_synergy_breeze
tag @s remove trims.prev_synergy_void_eye
tag @s remove trims.prev_synergy_piglin
tag @s remove trims.prev_synergy_abyssal
tag @s remove trims.prev_synergy_kinetic
tag @s remove trims.prev_synergy_architect
tag @s remove trims.prev_synergy_wither
tag @s remove trims.prev_synergy_spire
tag @s remove trims.prev_synergy_dune

execute if entity @s[tag=trims.has_set_4pc] run tag @s add trims.prev_has_set_4pc
execute if entity @s[tag=trims.has_set_2pc] run tag @s add trims.prev_has_set_2pc
execute if entity @s[tag=trims.synergy_warden] run tag @s add trims.prev_synergy_warden
execute if entity @s[tag=trims.synergy_breeze] run tag @s add trims.prev_synergy_breeze
execute if entity @s[tag=trims.synergy_void_eye] run tag @s add trims.prev_synergy_void_eye
execute if entity @s[tag=trims.synergy_piglin] run tag @s add trims.prev_synergy_piglin
execute if entity @s[tag=trims.synergy_abyssal] run tag @s add trims.prev_synergy_abyssal
execute if entity @s[tag=trims.synergy_kinetic] run tag @s add trims.prev_synergy_kinetic
execute if entity @s[tag=trims.synergy_architect] run tag @s add trims.prev_synergy_architect
execute if entity @s[tag=trims.synergy_wither] run tag @s add trims.prev_synergy_wither
execute if entity @s[tag=trims.synergy_spire] run tag @s add trims.prev_synergy_spire
execute if entity @s[tag=trims.synergy_dune] run tag @s add trims.prev_synergy_dune
