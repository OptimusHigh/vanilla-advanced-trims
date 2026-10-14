# Подсчёт и применение сет-бонусов для всех 18 шаблонов
tag @s remove trims.has_set_4pc
tag @s remove trims.has_set_2pc

function trims:patterns/coast
function trims:patterns/dune
function trims:patterns/wild
function trims:patterns/wayfinder
function trims:patterns/raiser
function trims:patterns/shaper
function trims:patterns/host
function trims:patterns/sentry
function trims:patterns/vex
function trims:patterns/tide
function trims:patterns/snout
function trims:patterns/rib
function trims:patterns/flow
function trims:patterns/bolt
function trims:patterns/eye
function trims:patterns/spire
function trims:patterns/ward
function trims:patterns/silence

# Оповещение об активации новых сетов (если ранее не были надеты)
execute if entity @s[tag=trims.has_set_4pc] unless entity @s[tag=trims.prev_has_set_4pc] run function trims:notify/set_4pc
execute if entity @s[tag=trims.has_set_2pc] unless entity @s[tag=trims.has_set_4pc] unless entity @s[tag=trims.prev_has_set_2pc] run function trims:notify/set_2pc
