# Полная пересборка лора для armor.chest
# 1. Запись узора (replace_all)
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:coast"}] run item modify entity @s armor.chest trims:pattern/coast
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:dune"}] run item modify entity @s armor.chest trims:pattern/dune
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:wild"}] run item modify entity @s armor.chest trims:pattern/wild
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:wayfinder"}] run item modify entity @s armor.chest trims:pattern/wayfinder
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:raiser"}] run item modify entity @s armor.chest trims:pattern/raiser
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:shaper"}] run item modify entity @s armor.chest trims:pattern/shaper
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:host"}] run item modify entity @s armor.chest trims:pattern/host
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:sentry"}] run item modify entity @s armor.chest trims:pattern/sentry
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:vex"}] run item modify entity @s armor.chest trims:pattern/vex
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:tide"}] run item modify entity @s armor.chest trims:pattern/tide
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:snout"}] run item modify entity @s armor.chest trims:pattern/snout
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:rib"}] run item modify entity @s armor.chest trims:pattern/rib
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:flow"}] run item modify entity @s armor.chest trims:pattern/flow
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:bolt"}] run item modify entity @s armor.chest trims:pattern/bolt
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:eye"}] run item modify entity @s armor.chest trims:pattern/eye
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:spire"}] run item modify entity @s armor.chest trims:pattern/spire
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:ward"}] run item modify entity @s armor.chest trims:pattern/ward
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:silence"}] run item modify entity @s armor.chest trims:pattern/silence

# 2. Добавление материала (append)
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:iron"}] run item modify entity @s armor.chest trims:material/iron
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:copper"}] run item modify entity @s armor.chest trims:material/copper
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:gold"}] run item modify entity @s armor.chest trims:material/gold
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:redstone"}] run item modify entity @s armor.chest trims:material/redstone
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:lapis"}] run item modify entity @s armor.chest trims:material/lapis
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:quartz"}] run item modify entity @s armor.chest trims:material/quartz
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:emerald"}] run item modify entity @s armor.chest trims:material/emerald
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:amethyst"}] run item modify entity @s armor.chest trims:material/amethyst
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:diamond"}] run item modify entity @s armor.chest trims:material/diamond
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:netherite"}] run item modify entity @s armor.chest trims:material/netherite
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:resin"}] run item modify entity @s armor.chest trims:material/resin

# 3. Добавление синергии (append, если слот совпал)
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:snout",material:"minecraft:gold"}] run item modify entity @s armor.chest trims:synergy/piglin
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:snout",material:"minecraft:netherite"}] run item modify entity @s armor.chest trims:synergy/piglin
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:raiser",material:"minecraft:resin"}] run item modify entity @s armor.chest trims:synergy/architect
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:rib",material:"minecraft:netherite"}] run item modify entity @s armor.chest trims:synergy/wither
