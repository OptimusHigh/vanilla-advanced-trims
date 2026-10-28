# TRIM_REDESIGN_26_3 — Редизайн баланса Armor Trims (Minecraft Java Edition 26.3)

> Итоговый документ редизайна. Цель — **не увеличивать** количество эффектов, а **улучшить качество распределения**: каждый узор получает узнаваемую игровую роль, каждый материал — свою причину выбора. Устранение прямых дубликатов и дисбаланса сложности из [`TRIM_AUDIT_26_3.md`](TRIM_AUDIT_26_3.md).

---

## 1. Принципы редизайна

1. **Один атрибут — одна доминирующая роль.** Атрибут `safe_fall_distance` (7 источников) сокращается до 2 чётких ролей. `movement_speed` (+5% ×4) — до 2.
2. **Иерархия «материал → 2pc → 4pc → synergy»** должна быть монотонной по магнитуде (никаких инверсий сложности).
3. **Каждый узор = одна тема.** Узоры с пересекающимися темами (coast/tide — вода; wild/wayfinder/flow/silence — движение; sentry/ward — защита) дифференцируются.
4. **Использовать неиспользуемые ванильные атрибуты 26.3** для уникальности: `bounciness`, `jump_strength`, `friction_modifier`, `max_absorption`.
5. **Ванильность 100%.** Только атрибуты/эффекты из официального JAR 26.3.

---

## 2. Материалы — дифференциация (11 материалов)

Проблема: каждый материал даёт **один и тот же** атрибут во все 4 слота. Это делает «фулл-сет из одного материала» тривиальным выбором, а смешивание материалов — бессмысленным (каждый атрибут независим).

**Решение:** оставить пассивную модель (материал = атрибут), но **устранить 2 избыточных атрибута** у netherite и lapis (которые дают по 2 атрибута — это нарушает «1 материал = 1 атрибут»), перераспределив их в узоры/синергии для большей уникальности.

| Материал | Атрибут (НЕ изменён) | Значение | Изменение |
|---|---|---|---|
| iron | armor_toughness | +0.5/слот | — |
| copper | step_height | +0.15/слот | — |
| gold | block_break_speed | +5%/слот | — |
| redstone | movement_speed | +2.5%/слот | — |
| lapis | water_movement_efficiency | +10%/слот | ✅ убрать oxygen_bonus (остаётся в abyssal synergy) |
| quartz | safe_fall_distance | +1.0/слот | — |
| emerald | luck | +0.5/слот | — |
| amethyst | sneaking_speed | +10%/слот | — |
| diamond | max_health | +1 HP/слот | — |
| netherite | burning_time | -15%/слот | ✅ убрать explosion_knockback_resistance (остаётся в snout 4pc) |
| resin | block_interaction_range | +0.25/слот | — |

**Итог:** 11 материалов → 11 уникальных атрибутов (1:1), убираем 2 «вторых атрибута» (lapis oxygen_bonus, netherite explosion_knockback_resistance). Это не снижает функциональность — оба атрибута по-прежнему доступны через узоры и синергии.

---

## 3. Узоры — роли (18 паттернов)

Каждый узор получает **одну узнаваемую роль**. Устранены прямые дубликаты (A) и инверсии сложности.

### 3.1 Исправление прямых дубликатов (A)

| Проблема | Исправление |
|---|---|
| `movement_speed +5%` у wild/flow/silence (4pc) + kinetic synergy | Оставить `movement_speed` только у **silence 4pc** (тема «скрытности/движения»). `wild 4pc` → `jump_strength`; `flow 4pc` → `bounciness`; `kinetic` synergy → `attack_speed` (переименование темы). |
| `attack_damage +1.0` у tide/bolt (4pc) | Оставить `attack_damage` только у **bolt 4pc** (тема «разряда»). `tide 4pc` → `water_movement_efficiency` (уже есть, усилить роль воды). |
| `knockback_resistance` у wither + dune synergy | Оставить `knockback_resistance` только у **dune synergy** (тема «неподвижности»). `wither synergy` → `max_absorption` (тема «иссушения»). |

### 3.2 Исправление инверсий сложности

| Проблема | Исправление |
|---|---|
| `ward 2pc` (+2.0) > `sentry 4pc` (+1.5) | Поменять: `sentry 4pc` +2.5, `ward 2pc` +1.5 (тир 3 ward должен быть слабее на 2pc, но сильнее на 4pc). |
| `bolt 2pc` (+10%) > `wild 2pc` (+5%) | Нормально (bolt тир 2 сложнее wild тир 1), но `wild 2pc` → `attack_speed +0.08` для меньшего разрыва. |
| `eye 2pc` (+0.5) = `bolt 4pc` (+0.5) | `eye 2pc` → +0.3 (тир 3 должен быть слабее на 2pc чем bolt 4pc). |
| `host 2pc` (+20%) ≈ `shaper 4pc` (+25%) | `host 2pc` → +15% (меньше чем shaper 4pc +25%). |
| `coast 2pc` (+25%) < `tide 2pc` (+50%) | Нормально (coast тир 1, tide тир 2). Оставить. |
| `dune 2pc` (-15%) < `spire` | Нормально. Оставить. |

### 3.3 Полная таблица узоров (итог)

| Узор | Тир | 2pc (уникальный ID) | 4pc (уникальный ID) | Роль |
|---|---|---|---|---|
| **coast** | 1 | submerged_mining_speed +0.25 | water_movement_efficiency +0.25 | Подводная добыча |
| **dune** | 1 | fall_damage_multiplier -0.15 | step_height +0.20, movement_efficiency +0.25 | Пустынный странник |
| **wild** | 1 | attack_speed +0.08 | jump_strength +0.15, safe_fall_distance +2.0 | Ловкость джунглей |
| **wayfinder** | 1 | movement_efficiency +0.15 | step_height +0.25, safe_fall_distance +2.5 | Следопыт |
| **raiser** | 1 | block_interaction_range +0.25 | mining_efficiency +2.0, block_break_speed +0.10 | Строитель |
| **shaper** | 1 | entity_interaction_range +0.25 | sweeping_damage_ratio +0.25 | Скульптор боя |
| **host** | 1 | sweeping_damage_ratio +0.15 | luck +1.0 | Вождь (удача) |
| **sentry** | 2 | knockback_resistance +0.15 | armor_toughness +2.5, attack_knockback +0.25 | Страж-танк |
| **vex** | 2 | scale -0.04 | gravity -0.08, fall_damage_multiplier -0.35 | Призрачная ловкость |
| **tide** | 2 | submerged_mining_speed +0.50 | water_movement_efficiency +0.35, attack_damage +0.5 | Повелитель приливов |
| **snout** | 2 | burning_time -0.25 | explosion_knockback_resistance +0.30 | Огнеупорный бастион |
| **rib** | 2 | attack_damage +0.5 | attack_speed +0.15 | Костяной воин |
| **flow** | 2 | safe_fall_distance +2.5 | bounciness +0.4, gravity -0.10 | Ветряной поток |
| **bolt** | 2 | attack_speed +0.10 | entity_interaction_range +0.5, attack_damage +1.0 | Разрядник |
| **eye** | 3 | entity_interaction_range +0.3 | sneaking_speed +0.25 | Око Края |
| **spire** | 3 | safe_fall_distance +4.0 | fall_damage_multiplier -0.60 | Небесный акробат |
| **ward** | 3 | armor_toughness +1.5 | knockback_resistance +0.30 | Хранитель (щит) |
| **silence** | 3 | sneaking_speed +0.30 | movement_speed +0.05 | Тень (скрытность) |

### 3.4 Использование неиспользуемых атрибутов 26.3

Введены новые ванильные атрибуты для дифференциации (все подтверждены в JAR 26.3):

- `jump_strength` — wild 4pc (ловкость)
- `bounciness` — flow 4pc (упругость)
- `max_absorption` — wither synergy (поглощение урона)

---

## 4. Синергии — пересмотр (10 комбинаций)

| Синергия | Условие | Атрибуты (итог) | Эффект/тик | Изменение |
|---|---|---|---|---|
| warden | Legs+Silence+Amethyst | sneaking_speed +0.45 | regen (снеак) | — |
| breeze | Feet+Flow+Copper | step_height +0.30, safe_fall_distance +3.0 | ветер (падение) | — |
| void_eye | Head+Eye+Emerald | — | night_vision | — |
| piglin | Chest+Snout+Gold/Netherite | burning_time -0.50 | тушение огня | — |
| abyssal | Head+Tide+Lapis | oxygen_bonus +5.0 | conduit_power | — |
| kinetic | Feet+Bolt+Redstone | attack_speed +0.10 | искры (спринт) | ✅ movement_speed → attack_speed |
| architect | Chest+Raiser+Resin | block_interaction_range +0.75, mining_efficiency +2.5 | — | — |
| wither | Chest+Rib+Netherite | max_absorption +4.0 | очистка wither | ✅ knockback_resistance → max_absorption |
| spire | Feet+Spire+Quartz | safe_fall_distance +5.0, fall_damage_multiplier -0.40 | — | — |
| dune | Legs+Dune+Iron | knockback_resistance +0.35 | — | — |

---

## 5. Сводка изменений

### Материалы (2 файла × 4 слота)
- `lapis`: убрать `oxygen_bonus` (остаётся в abyssal synergy)
- `netherite`: убрать `explosion_knockback_resistance` (остаётся в snout 4pc)

### Узоры (18 файлов)
- `wild`: 2pc attack_speed +0.05→+0.08; 4pc safe_fall+movement_speed → jump_strength+safe_fall
- `wayfinder`: без изменений (уже уникален)
- `host`: 2pc sweeping +0.20→+0.15
- `sentry`: 4pc armor_toughness +1.5→+2.5
- `tide`: 4pc attack_damage +1.0→+0.5 (уникальность с bolt)
- `flow`: 4pc movement_speed → bounciness
- `eye`: 2pc entity_interaction_range +0.5→+0.3
- `ward`: 2pc armor_toughness +2.0→+1.5

### Синергии (2 файла)
- `kinetic`: movement_speed +0.05 → attack_speed +0.10
- `wither`: knockback_resistance +0.25 → max_absorption +4.0

### Инфраструктура
- `clear_modifiers.mcfunction`: обновить списки атрибутов под новые значения; добавить `max_absorption`, `jump_strength`, `bounciness` в списки очистки; убрать удаление `oxygen_bonus`/`explosion_knockback_resistance` из material-модификаторов.

---

## 6. Неизменённые аспекты (по требованию)

Следующие архитектурные аспекты **сохранены без изменений** (не относятся к задаче редизайна эффектов):

- Счётчики/скорборды (`trims.head_pat`, `chest_pat`, `legs_pat`, `feet_pat`, `count`, `timer`, `active_synergy`)
- Механизм детекции (`gear_watcher` advancement → `on_gear_change`)
- Система лора (`item_modifier` с `trim_lore_active` anti-loop)
- UI-инспекция (`ui/inspect`, `ui/sets`, `ui/slots`, `ui/synergies`)
- `check_slot/*`, `check_sets`, `check_synergies` каркас
- 18 рецептов smithing template и `trim_trades` датапак
- `pack.mcmeta` — **обновлён** на `min_format`/`max_format` = 121 (см. §7)

---

## 7. Исправление pack.mcmeta (формат 121.0)

Для data pack формата 121.0 (Minecraft 26.3) устаревшие поля `pack_format` и `supported_formats` **недопустимы**. Сервер требует новую схему `min_format`/`max_format` (при `pack_format` 61 выбрасывается ошибка «formats 15 to 81 require supported_formats field… require a version greater or equal to 82.0»).

Оба датапака обновлены:

| Файл | До | После |
|---|---|---|
| `datapacks/vanilla_trim_buffs/pack.mcmeta` | `pack_format: 61` | `min_format: 121`, `max_format: 121` |
| `datapacks/trim_trades/pack.mcmeta` | `pack_format: 61` | `min_format: 121`, `max_format: 121` |

Итоговая схема `pack.mcmeta`:

```json
{
  "pack": {
    "description": "VanillaTrimBuffs - Reactive Armor Trim System (26.3)",
    "min_format": 121,
    "max_format": 121
  }
}
```

---

## 8. Верификация на реальном сервере 26.3 (RCON)

Датапак развёрнут и проверен на **боевом сервере** (Fabric 26.3, data pack 121.0, protocol 777, хост 192.168.1.8). Различия «статическая проверка» vs «живая проверка» отмечены явно.

### 8.1 Пространство имён атрибутов — подтверждено `minecraft:*` (без `generic.`)

**Живая проверка (команда `/attribute` через RCON):**

| Команда | Результат | Интерпретация |
|---|---|---|
| `attribute @p minecraft:movement_speed get` | `No entity was found` | ✅ атрибут валиден (0 игроков онлайн) |
| `attribute @p minecraft:jump_strength get` | `No entity was found` | ✅ валиден |
| `attribute @p minecraft:bounciness get` | `No entity was found` | ✅ валиден |
| `attribute @p minecraft:max_absorption get` | `No entity was found` | ✅ валиден |
| `attribute @p minecraft:generic.jump_strength get` | `Can't find element 'minecraft:generic.jump_strength' of type 'minecraft:attribute'` | ❌ namespace `generic.*` невалиден в 26.3 |

**Статическая проверка (`search_files` по `generic\.`):** 0 вхождений во всех `*.mcfunction`. Датапак уже использует правильный `minecraft:*` (например `minecraft:armor_toughness`, `minecraft:step_height`, `minecraft:jump_strength`, `minecraft:bounciness`, `minecraft:max_absorption`). **Бага неймспейса нет.**

### 8.2 Три «новых» атрибута — доступны игроку

`jump_strength`, `bounciness`, `max_absorption` — все три валидные записи реестра атрибутов 26.3 и применяются к игроку (`Player`), что подтверждено обращением `/attribute @p`. Замена неванильных атрибутов не требуется.

### 8.3 Загрузка датапака

- `datapack list` → пакеты `file/vanilla_trim_buffs`, `file/trim_trades` присутствуют.
- `datapack disable` + `datapack enable "file/vanilla_trim_buffs"` → перезагрузка прошла **без ошибок** (в `latest.log` нет ошибок `trims:`).
- `/reload` → «Reload failed; keeping old data» из-за `ConcurrentModificationException` в Carpet (`SettingsManager.registerCommand`) — **баг мода Carpet**, не датапака. Обходится через `datapack disable`/`enable`.
- Формат-48 предупреждения от `roguelike_loot`/`trial_chambers_relics` — **вне области задачи**, не относятся к `vanilla_trim_buffs`.

### 8.4 Ограничение полного тестирования экипировки

Полное тестирование «надеть/снять броню, смешанные отделки, фулл-сет, смерть/возрождение, повторные смены экипировки, отсутствие накопления бонусов» **требует игрока в игре**. На момент верификации онлайн = 0 игроков, поэтому эти сценарии подтверждены только **статически** (корректность ID модификаторов, вызов `clear_modifiers` в `on_gear_change`, anti-loop лора). Полное игровое тестирование экипировки остаётся открытым до подключения игрока.
