# Узор: vex
scoreboard players set @s trims.count 0
execute if items entity @s armor.head *[minecraft:trim~{pattern:"minecraft:vex"}] run scoreboard players add @s trims.count 1
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:vex"}] run scoreboard players add @s trims.count 1
execute if items entity @s armor.legs *[minecraft:trim~{pattern:"minecraft:vex"}] run scoreboard players add @s trims.count 1
execute if items entity @s armor.feet *[minecraft:trim~{pattern:"minecraft:vex"}] run scoreboard players add @s trims.count 1

# Малый сет-бонус (2+ предмета)
execute if score @s trims.count matches 2.. run attribute @s minecraft:scale modifier add trims:set_2pc -0.04 add_multiplied_base
execute if score @s trims.count matches 2.. run tag @s add trims.has_set_2pc

# Полный сет-бонус (4 предмета)
execute if score @s trims.count matches 4 run attribute @s minecraft:gravity modifier add trims:set_4pc -0.08 add_multiplied_base
execute if score @s trims.count matches 4 run attribute @s minecraft:fall_damage_multiplier modifier add trims:set_4pc -0.35 add_multiplied_base
execute if score @s trims.count matches 4 run tag @s add trims.has_set_4pc
