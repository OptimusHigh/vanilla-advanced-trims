# Мгновенный отзыв ачивки для перехвата следующего изменения инвентаря
advancement revoke @s only trims:gear_watcher

# 1. Модульная очистка модификаторов, скорбордов и тегов
function trims:clear_modifiers

# 2. Проверка каждого из 4 слотов экипировки (Материалы)
function trims:check_slot/head
function trims:check_slot/chest
function trims:check_slot/legs
function trims:check_slot/feet

# 3. Подсчёт сет-бонусов (2 и 4 одинаковых узора)
function trims:check_sets

# 4. Подсчёт уникальных синергий (Слот + Узор + Материал)
function trims:check_synergies

# 5. Сохранение текущего состояния для предотвращения спама уведомлений
function trims:notify/update_prev_state
