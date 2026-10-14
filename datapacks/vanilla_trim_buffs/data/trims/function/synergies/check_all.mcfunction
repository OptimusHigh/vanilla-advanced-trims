# ==========================================
# Проверка 10 уникальных синергий
# ==========================================

# 1. Warden's Stride (Legs + Silence + Amethyst)
execute if items entity @s armor.legs *[minecraft:trim~{pattern:"minecraft:silence",material:"minecraft:amethyst"}] run function trims:synergies/warden

# 2. Breeze Gale (Feet + Flow + Copper)
execute if items entity @s armor.feet *[minecraft:trim~{pattern:"minecraft:flow",material:"minecraft:copper"}] run function trims:synergies/breeze

# 3. Void Seeker (Head + Eye + Emerald)
execute if items entity @s armor.head *[minecraft:trim~{pattern:"minecraft:eye",material:"minecraft:emerald"}] run function trims:synergies/void_eye

# 4. Piglin Warlord (Chest + Snout + Gold / Netherite)
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:snout",material:"minecraft:gold"}] run function trims:synergies/piglin
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:snout",material:"minecraft:netherite"}] run function trims:synergies/piglin

# 5. Abyssal Sovereign (Head + Tide + Lapis)
execute if items entity @s armor.head *[minecraft:trim~{pattern:"minecraft:tide",material:"minecraft:lapis"}] run function trims:synergies/abyssal

# 6. Kinetic Overcharger (Feet + Bolt + Redstone)
execute if items entity @s armor.feet *[minecraft:trim~{pattern:"minecraft:bolt",material:"minecraft:redstone"}] run function trims:synergies/kinetic

# 7. Pale Architect (Chest + Raiser + Resin)
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:raiser",material:"minecraft:resin"}] run function trims:synergies/architect

# 8. Withered Aegis (Chest + Rib + Netherite)
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:rib",material:"minecraft:netherite"}] run function trims:synergies/wither

# 9. End Spire Acrobat (Feet + Spire + Quartz)
execute if items entity @s armor.feet *[minecraft:trim~{pattern:"minecraft:spire",material:"minecraft:quartz"}] run function trims:synergies/spire

# 10. Dune Colossus (Legs + Dune + Iron)
execute if items entity @s armor.legs *[minecraft:trim~{pattern:"minecraft:dune",material:"minecraft:iron"}] run function trims:synergies/dune
