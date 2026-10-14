# Узор: sentry
scoreboard players set @s trims.count 0
execute if items entity @s armor.head *[minecraft:trim~{pattern:"minecraft:sentry"}] run scoreboard players add @s trims.count 1
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:sentry"}] run scoreboard players add @s trims.count 1
execute if items entity @s armor.legs *[minecraft:trim~{pattern:"minecraft:sentry"}] run scoreboard players add @s trims.count 1
execute if items entity @s armor.feet *[minecraft:trim~{pattern:"minecraft:sentry"}] run scoreboard players add @s trims.count 1

# Малый сет-бонус (2+ предмета)
execute if score @s trims.count matches 2.. run attribute @s minecraft:knockback_resistance modifier add trims:set_2pc 0.15 add_value
execute if score @s trims.count matches 2.. run tag @s add trims.has_set_2pc

# Полный сет-бонус (4 предмета)
execute if score @s trims.count matches 4 run attribute @s minecraft:armor_toughness modifier add trims:set_4pc 1.5 add_value
execute if score @s trims.count matches 4 run attribute @s minecraft:attack_knockback modifier add trims:set_4pc 0.25 add_value
execute if score @s trims.count matches 4 run tag @s add trims.has_set_4pc
