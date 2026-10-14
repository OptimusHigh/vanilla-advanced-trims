# Проверка необходимости обновления лора на armor.chest
# Защита от цикла: если нет трима, чистим ТОЛЬКО если есть активная метка trim_lore_active:1b
execute unless items entity @s armor.chest *[minecraft:trim] if items entity @s armor.chest *[minecraft:custom_data~{trim_lore_active:1b}] run item modify entity @s armor.chest trims:clear
execute unless items entity @s armor.chest *[minecraft:trim] run return 1

# Проверка изменения узора
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:coast"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"coast"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:dune"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"dune"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:wild"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"wild"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:wayfinder"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"wayfinder"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:raiser"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"raiser"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:shaper"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"shaper"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:host"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"host"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:sentry"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"sentry"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:vex"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"vex"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:tide"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"tide"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:snout"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"snout"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:rib"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"rib"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:flow"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"flow"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:bolt"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"bolt"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:eye"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"eye"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:spire"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"spire"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:ward"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"ward"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:silence"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_pat:"silence"}] run return run function trims:lore/chest/update

# Проверка изменения материала
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:iron"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"iron"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:copper"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"copper"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:gold"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"gold"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:redstone"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"redstone"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:lapis"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"lapis"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:quartz"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"quartz"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:emerald"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"emerald"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:amethyst"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"amethyst"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:diamond"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"diamond"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:netherite"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"netherite"}] run return run function trims:lore/chest/update
execute if items entity @s armor.chest *[minecraft:trim~{material:"minecraft:resin"}] unless items entity @s armor.chest *[minecraft:custom_data~{trim_lore_mat:"resin"}] run return run function trims:lore/chest/update
