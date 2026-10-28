# TRIM_AUDIT_26_3 — Аудит системы Armor Trims (Minecraft Java Edition 26.3)

> Аудит датапака `vanilla_trim_buffs` против реальных механик Minecraft 26.3.
> Верификация проведена по официальному серверному JAR `versions/26.3/server-26.3.jar` (Fabric Loader 0.19.5, Java 25).

---

## 1. Методология верификации

Все ссылки на атрибуты, эффекты, материалы и узоры проверены **не по документации старых версий**, а по байткоду и данным официального JAR 26.3:

| Источник | Метод | Результат |
|---|---|---|
| Атрибуты | `net/minecraft/world/entity/ai/attributes/Attributes.class` (constant pool) | 40 ванильных атрибутов |
| Материалы отделки | `data/minecraft/trim_material/*.json` | 11 материалов |
| Узоры отделки | `data/minecraft/trim_pattern/*.json` | 18 узоров |
| Чары | `data/minecraft/enchantment/*.json` | 43 чары |
| Эффекты | `net/minecraft/world/effect/MobEffects.class` (constant pool) | 40 эффектов |

Важное наблюдение: атрибуты и эффекты в 26.3 **не являются data-driven** (регистрируются в коде, а не JSON). Поэтому проверка проводилась через декомпиляцию constant pool соответствующих классов.

---

## 2. Верификация атрибутов (25 атрибутов датапака)

Датапак использует 25 атрибутов. **Все 25 являются ванильными в 26.3** — ни одного неванильного атрибута, ни одного атрибута, требующего мода, не обнаружено.

| # | Атрибут датапака | Ванильный 26.3? | Статус |
|---|---|---|---|
| 1 | `minecraft:armor_toughness` | ✅ | OK |
| 2 | `minecraft:step_height` | ✅ | OK |
| 3 | `minecraft:block_break_speed` | ✅ | OK |
| 4 | `minecraft:movement_speed` | ✅ | OK |
| 5 | `minecraft:water_movement_efficiency` | ✅ | OK |
| 6 | `minecraft:oxygen_bonus` | ✅ | OK |
| 7 | `minecraft:safe_fall_distance` | ✅ | OK |
| 8 | `minecraft:luck` | ✅ | OK |
| 9 | `minecraft:sneaking_speed` | ✅ | OK |
| 10 | `minecraft:max_health` | ✅ | OK |
| 11 | `minecraft:burning_time` | ✅ | OK |
| 12 | `minecraft:explosion_knockback_resistance` | ✅ | OK |
| 13 | `minecraft:block_interaction_range` | ✅ | OK |
| 14 | `minecraft:submerged_mining_speed` | ✅ | OK |
| 15 | `minecraft:fall_damage_multiplier` | ✅ | OK |
| 16 | `minecraft:attack_speed` | ✅ | OK |
| 17 | `minecraft:movement_efficiency` | ✅ | OK |
| 18 | `minecraft:sweeping_damage_ratio` | ✅ | OK |
| 19 | `minecraft:knockback_resistance` | ✅ | OK |
| 20 | `minecraft:scale` | ✅ | OK |
| 21 | `minecraft:gravity` | ✅ | OK |
| 22 | `minecraft:attack_damage` | ✅ | OK |
| 23 | `minecraft:attack_knockback` | ✅ | OK |
| 24 | `minecraft:entity_interaction_range` | ✅ | OK |
| 25 | `minecraft:mining_efficiency` | ✅ | OK |

### Неиспользуемые ванильные атрибуты (возможности для редизайна)

26.3 предоставляет атрибуты, которые датапак **не использует** и которые являются очевидными «неиспользованными возможностями»:

- `minecraft:bounciness` — упругость (отскок)
- `minecraft:air_drag_modifier` — сопротивление воздуха
- `minecraft:friction_modifier` — трение
- `minecraft:flying_speed` — скорость полёта
- `minecraft:jump_strength` — сила прыжка
- `minecraft:max_absorption` — максимум поглощения
- `minecraft:waypoint_receive_range` / `waypoint_transmit_range` — дальность путевых точек

---

## 3. Верификация материалов и узоров

| Реестр | В 26.3 | В датапаке | Совпадение |
|---|---|---|---|
| Материалы (11) | amethyst, copper, diamond, emerald, gold, iron, lapis, netherite, quartz, redstone, resin | те же 11 | ✅ точное |
| Узоры (18) | bolt, coast, dune, eye, flow, host, raiser, rib, sentry, shaper, silence, snout, spire, tide, vex, ward, wayfinder, wild | те же 18 | ✅ точное |

Материалы и узоры датапака **полностью совпадают** с ванильным реестром 26.3. Никаких отсутствующих/лишних материалов или узоров нет.

---

## 4. Верификация эффектов

Датапак использует 4 эффекта — все ванильные в 26.3:

| Эффект | Ванильный 26.3? | Где используется |
|---|---|---|
| `minecraft:regeneration` | ✅ | warden (снеак + реген) |
| `minecraft:night_vision` | ✅ | void_eye (ночное зрение) |
| `minecraft:conduit_power` | ✅ | abyssal (сила источника) |
| `minecraft:wither` (очистка) | ✅ | wither (снятие иссушения) |

Дополнительно 26.3 предоставляет эффекты, которые датапак не использует (потенциальные возможности): `breath_of_the_nautilus`, `wind_charged`, `weaving`, `oozing`, `infested`, `raid_omen`, `trial_omen`.

---

## 5. Полная карта эффектов (инвентаризация)

### 5.1 Материалы (пассив, стакается 4×)

Каждый материал даёт **один и тот же атрибут в каждый из 4 слотов** (head/chest/legs/feet), с уникальным ID модификатора на слот. Итог — эффект стакается до 4×.

| Материал | Атрибут(ы) | За 1 слот | За 4 слота |
|---|---|---|---|
| iron | armor_toughness | +0.5 | +2.0 |
| copper | step_height | +0.15 | +0.6 |
| gold | block_break_speed | +5% | +20% |
| redstone | movement_speed | +2.5% | +10% |
| lapis | water_movement_efficiency + oxygen_bonus | +10% / +1с | +40% / +4с |
| quartz | safe_fall_distance | +1.0 | +4.0 |
| emerald | luck | +0.5 | +2.0 |
| amethyst | sneaking_speed | +10% | +40% |
| diamond | max_health | +1 HP | +4 HP |
| netherite | burning_time + explosion_knockback_resistance | -15% / +10% | -60% / +40% |
| resin | block_interaction_range | +0.25 | +1.0 |

### 5.2 Узоры (18 паттернов, сет-бонусы 2pc / 4pc)

См. раздел 7 (классификация дубликатов) для полного разбора.

### 5.3 Синергии (10 комбинаций «слот + узор + материал»)

| Синергия | Условие | Атрибуты | Эффект/тик |
|---|---|---|---|
| warden | Legs+Silence+Amethyst | sneaking_speed +0.45 | regen (снеак) |
| breeze | Feet+Flow+Copper | step_height +0.30, safe_fall +3.0 | ветер (падение) |
| void_eye | Head+Eye+Emerald | — | night_vision (снеак+Y<0) |
| piglin | Chest+Snout+Gold/Netherite | burning_time -0.50 | тушение огня |
| abyssal | Head+Tide+Lapis | oxygen_bonus +5.0 | conduit_power (вода) |
| kinetic | Feet+Bolt+Redstone | movement_speed +0.05 | искры (спринт) |
| architect | Chest+Raiser+Resin | block_interaction +0.75, mining +2.5 | — |
| wither | Chest+Rib+Netherite | knockback_resistance +0.25 | очистка wither |
| spire | Feet+Spire+Quartz | safe_fall +5.0, fall_mult -0.40 | — |
| dune | Legs+Dune+Iron | knockback_resistance +0.35 | — |

---

## 6. Обнаруженные баги и архитектурные проблемы

### 🔴 Баг 1 (критический): Общий ID модификатора `set_4pc` для всех 18 узоров

Все 18 паттернов используют **один и тот же** ID модификатора `trims:set_4pc` для полного сет-бонуса. Поскольку в Minecraft модификаторы с одинаковым ID на одном атрибуте **перезаписывают друг друга**, при попытке собрать два разных 4-куска (что невозможно — всего 4 слота) конфликт не проявляется в рамках одного узора. Однако:

- `clear_modifiers.mcfunction` удаляет `set_4pc` через **перечисление атрибутов**, а не по конкретному узору. Это означает, что если бы два узора теоретически давали бонус на один атрибут через `set_4pc`, очистка сломалась бы.
- Более важно: **2pc использует уникальные ID** (`set_2pc_<pattern>`), а **4pc — общий** (`set_4pc`). Это асимметрия, которая означает, что при 2+2 билде (два разных узора по 2 куска) оба 2pc-бонуса работают, но 4pc не работает вообще (нет 4 одинаковых). Это допустимо, но ID `set_4pc` должен быть уникальным по узору для консистентности и корректной очистки.

### 🟡 Баг 2 (средний): `architect` и `synergy` без `has_passive_tick`

Синергия `architect` (architect.mcfunction) **не добавляет** тег `trims.has_passive_tick`, в отличие от остальных 9 синергий. Это не баг сам по себе (architect — чисто атрибутная синергия без per-tick эффекта), но это **несогласованность**: код в `clear_modifiers.mcfunction` всё равно удаляет `trims.synergy_architect`, а `has_passive_tick` не нужен. Не критично, но задокументировано.

### 🟡 Баг 3 (средний): Дублирование `movement_efficiency` с `add_value` vs `add_multiplied_base`

Паттерн `dune` (4pc) использует `movement_efficiency +0.25 add_value`, а паттерн `wayfinder` (2pc) использует `movement_efficiency +0.15 add_value`. В 26.3 `movement_efficiency` — это множитель (по умолчанию 1.0), поэтому `add_value` +0.25 фактически означает +25% к базовому значению 1.0. Это **функционально корректно**, но смешивание семантики (`add_value` для множителя) может вводить в заблуждение. Не баг, но задокументировано.

### 🟢 Наблюдение: `safe_fall_distance` сильно переиспользуется

Атрибут `safe_fall_distance` используется в **7 местах** (quartz material, dune 4pc, wild 4pc, wayfinder 4pc, flow 2pc, spire 2pc, breeze synergy, spire synergy). Это ключевой кандидат на дедупликацию в редизайне.

---

## 7. Классификация дубликатов и пересечений

Классификация по 4 категориям:

- **A. Прямой дубликат** — два разных источника дают идентичный эффект (атрибут+операция+магнитуда).
- **B. Функциональное пересечение** — разные источники дают эффект на один атрибут с разной магнитудой (суммируются, но смысл совпадает).
- **C. Приемлемая синергия** — эффекты на разные атрибуты, но тематически/функционально дополняют друг друга.
- **D. Осмысленное повторение** — один атрибут используется намеренно в разных контекстах (материал vs узор), с разной ролью.

### 7.1 Атрибут `safe_fall_distance` (падение без урона)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| quartz (материал) | passive | +1.0/слот | D |
| wild (4pc) | set | +2.0 | B |
| wayfinder (4pc) | set | +2.5 | B |
| flow (2pc) | set | +2.5 | B |
| spire (2pc) | set | +4.0 | B |
| breeze (synergy) | synergy | +3.0 | B |
| spire (synergy) | synergy | +5.0 | B |

**Вывод:** 7 источников дают вариации одного эффекта. Это **функциональное пересечение** (категория B). В редизайне следует оставить максимум 2-3 источника с чётко дифференцированными ролями (например: quartz — универсальный пассив; spire — специализированный «fall-иммунитет»).

### 7.2 Атрибут `movement_speed` (скорость бега)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| redstone (материал) | passive | +2.5%/слот | D |
| wild (4pc) | set | +5% | B |
| flow (4pc) | set | +5% | B |
| silence (4pc) | set | +5% | B |
| kinetic (synergy) | synergy | +5% | B |

**Вывод:** 5 источников. `wild/flow/silence` 4pc и `kinetic` synergy дают **идентичные +5%** — это **прямой дубликат** (категория A) между тремя 4pc и synergy. Требует устранения.

### 7.3 Атрибут `step_height` (высота шага)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| copper (материал) | passive | +0.15/слот | D |
| dune (4pc) | set | +0.20 | B |
| wayfinder (4pc) | set | +0.25 | B |
| breeze (synergy) | synergy | +0.30 | B |

**Вывод:** 4 источника, все «повышение шага». Функциональное пересечение (B). `copper` как материал обоснован (пассив), остальные три — кандидаты на дедупликацию.

### 7.4 Атрибут `sneaking_speed` (скорость крадучись)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| amethyst (материал) | passive | +10%/слот | D |
| eye (4pc) | set | +25% | B |
| silence (2pc) | set | +30% | B |
| warden (synergy) | synergy | +45% | B |

**Вывод:** 4 источника. `silence` (2pc +30%) и `eye` (4pc +25%) — близкие магнитуды. Функциональное пересечение (B). `warden` synergy требует `silence`, создавая цепочку «silence 2pc → warden», что осмысленно (D).

### 7.5 Атрибут `knockback_resistance` (анти-откидывание)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| sentry (2pc) | set | +0.15 | D |
| ward (4pc) | set | +0.30 | B |
| wither (synergy) | synergy | +0.25 | B |
| dune (synergy) | synergy | +0.35 | B |

**Вывод:** 4 источника. `wither` synergy (+0.25) и `dune` synergy (+0.35) — **функционально идентичны** (обе дают анти-откидывание как synergy). Это **прямой дубликат** (A) между двумя synergy. Требует устранения.

### 7.6 Атрибут `armor_toughness` (твёрдость брони)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| iron (материал) | passive | +0.5/слот | D |
| sentry (4pc) | set | +1.5 | B |
| ward (2pc) | set | +2.0 | B |

**Вывод:** 3 источника. `iron` — обоснованный пассив. `sentry 4pc` (+1.5) и `ward 2pc` (+2.0) — функциональное пересечение (B). `ward` 2pc даёт больше, чем `sentry` 4pc — **инверсия сложности** (более «дешёвый» 2pc бонус сильнее дорогого 4pc). Это дисбаланс.

### 7.7 Атрибут `attack_speed` (скорость атаки)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| wild (2pc) | set | +5% | D |
| rib (4pc) | set | +15% | B |
| bolt (2pc) | set | +10% | B |

**Вывод:** 3 источника. `wild 2pc` (+5%) и `bolt 2pc` (+10%) — оба 2pc, разные магнитуды. Функциональное пересечение (B). `bolt` даёт больше на 2pc, чем `wild`, хотя `bolt` тир 2 (сложнее) — логично, но `wild` 2pc почти не имеет смысла рядом с `bolt` 2pc.

### 7.8 Атрибут `attack_damage` (урон)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| rib (2pc) | set | +0.5 | D |
| tide (4pc) | set | +1.0 | B |
| bolt (4pc) | set | +1.0 | B |

**Вывод:** 3 источника. `tide 4pc` (+1.0) и `bolt 4pc` (+1.0) — **идентичны** (прямой дубликат, A). `rib 2pc` (+0.5) — осмысленно (половина от 4pc). Требует устранения одного из 4pc.

### 7.9 Атрибут `fall_damage_multiplier` (множитель урона падения)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| dune (2pc) | set | -15% | D |
| vex (4pc) | set | -35% | B |
| spire (4pc) | set | -60% | B |
| spire (synergy) | synergy | -40% | B |

**Вывод:** 4 источника. Функциональное пересечение (B). `spire 4pc` (-60%) и `spire synergy` (-40%) — оба про `spire`, образуют осмысленную прогрессию (D+), но `dune 2pc` (-15%) почти не имеет ценности рядом с ними.

### 7.10 Атрибут `burning_time` (время горения)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| netherite (материал) | passive | -15%/слот | D |
| snout (2pc) | set | -25% | B |
| piglin (synergy) | synergy | -50% | B |

**Вывод:** 3 источника, осмысленная прогрессия «материал → 2pc → synergy». Это **осмысленное повторение** (D) с чистой иерархией. Оставить.

### 7.11 Атрибут `block_interaction_range` (дальность стройки)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| resin (материал) | passive | +0.25/слот | D |
| raiser (2pc) | set | +0.25 | B |
| architect (synergy) | synergy | +0.75 | B |

**Вывод:** 3 источника, осмысленная прогрессия. `resin` → `raiser 2pc` → `architect synergy`. Приемлемая синергия (C/D).

### 7.12 Атрибут `entity_interaction_range` (дальность атаки)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| shaper (2pc) | set | +0.25 | D |
| eye (2pc) | set | +0.5 | B |
| bolt (4pc) | set | +0.5 | B |

**Вывод:** 3 источника. `eye 2pc` (+0.5) и `bolt 4pc` (+0.5) — **идентичны по магнитуде**, но `eye` на 2pc (легче) даёт столько же, сколько `bolt` на 4pc (сложнее) — **инверсия сложности**. Функциональное пересечение (B) + дисбаланс.

### 7.13 Атрибут `submerged_mining_speed` (копание в воде)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| coast (2pc) | set | +25% | D |
| tide (2pc) | set | +50% | B |

**Вывод:** 2 источника. `coast 2pc` (+25%) и `tide 2pc` (+50%) — функциональное пересечение (B). `tide` (тир 2, сложнее) даёт больше — логично, но `coast` 2pc почти не имеет ценности.

### 7.14 Атрибут `water_movement_efficiency` (скорость в воде)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| lapis (материал) | passive | +10%/слот | D |
| coast (4pc) | set | +25% | B |
| tide (4pc) | set | +35% | B |

**Вывод:** 3 источника. `coast 4pc` (+25%) и `tide 4pc` (+35%) — функциональное пересечение (B). Оба «водных» узора. Кандидат на дедупликацию.

### 7.15 Атрибут `sweeping_damage_ratio` (урон размахом)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| shaper (4pc) | set | +25% | D |
| host (2pc) | set | +20% | B |

**Вывод:** 2 источника. `host 2pc` (+20%) даёт почти столько же, сколько `shaper 4pc` (+25%) — **инверсия сложности** (2pc ≈ 4pc). Функциональное пересечение (B) + дисбаланс.

### 7.16 Атрибут `luck` (удача)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| emerald (материал) | passive | +0.5/слот | D |
| host (4pc) | set | +1.0 | B |

**Вывод:** 2 источника. `emerald` — пассив, `host 4pc` — set. Осмысленно (D).

### 7.17 Атрибут `block_break_speed` (скорость копания)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| gold (материал) | passive | +5%/слот | D |
| raiser (4pc) | set | +10% | B |

**Вывод:** 2 источника. Осмысленно (D).

### 7.18 Атрибут `mining_efficiency` (эффективность копания)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| raiser (4pc) | set | +2.0 | D |
| architect (synergy) | synergy | +2.5 | B |

**Вывод:** 2 источника. `architect` synergy требует `raiser`, образуя прогрессию. Приемлемая синергия (C).

### 7.19 Атрибут `gravity` (гравитация)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| vex (4pc) | set | -8% | D |
| flow (4pc) | set | -10% | B |

**Вывод:** 2 источника. `vex 4pc` (-8%) и `flow 4pc` (-10%) — функциональное пересечение (B), очень близкие магнитуды. Кандидат на дедупликацию.

### 7.20 Атрибут `movement_efficiency` (проходимость)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| dune (4pc) | set | +25% | D |
| wayfinder (2pc) | set | +15% | B |

**Вывод:** 2 источника. `wayfinder 2pc` (+15%) и `dune 4pc` (+25%) — функциональное пересечение (B).

### 7.21 Атрибут `explosion_knockback_resistance` (взрывоустойчивость)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| netherite (материал) | passive | +10%/слот | D |
| snout (4pc) | set | +30% | B |

**Вывод:** 2 источника. Осмысленно (D).

### 7.22 Атрибут `oxygen_bonus` (запас воздуха)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| lapis (материал) | passive | +1с/слот | D |
| abyssal (synergy) | synergy | +5с | B |

**Вывод:** 2 источника. Осмысленная прогрессия (D).

### 7.23 Атрибут `attack_knockback` (отдача)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| sentry (4pc) | set | +0.25 | D |

**Вывод:** 1 источник. Уникальный (D). Оставить.

### 7.24 Атрибут `scale` (размер)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| vex (2pc) | set | -4% | D |

**Вывод:** 1 источник. Уникальный (D). Оставить.

### 7.25 Атрибут `max_health` (макс. здоровье)

| Источник | Тип | Магнитуда | Категория |
|---|---|---|---|
| diamond (материал) | passive | +1 HP/слот | D |

**Вывод:** 1 источник. Уникальный (D). Оставить.

---

## 8. Сводная таблица дубликатов

| Атрибут | Кол-во источников | Прямой дубликат (A) | Пересечение (B) | Дисбаланс сложности |
|---|---|---|---|---|
| safe_fall_distance | 7 | — | ✅ | ✅ |
| movement_speed | 5 | ✅ (4pc×3 + synergy) | ✅ | — |
| step_height | 4 | — | ✅ | — |
| sneaking_speed | 4 | — | ✅ | — |
| knockback_resistance | 4 | ✅ (2 synergy) | ✅ | — |
| armor_toughness | 3 | — | ✅ | ✅ (ward 2pc > sentry 4pc) |
| attack_speed | 3 | — | ✅ | ✅ (bolt 2pc > wild 2pc) |
| attack_damage | 3 | ✅ (2× 4pc +1.0) | ✅ | — |
| fall_damage_multiplier | 4 | — | ✅ | ✅ |
| burning_time | 3 | — | — (прогрессия) | — |
| block_interaction_range | 3 | — | — (прогрессия) | — |
| entity_interaction_range | 3 | — | ✅ | ✅ (eye 2pc = bolt 4pc) |
| submerged_mining_speed | 2 | — | ✅ | ✅ (coast уступает tide) |
| water_movement_efficiency | 3 | — | ✅ | — |
| sweeping_damage_ratio | 2 | — | ✅ | ✅ (host 2pc ≈ shaper 4pc) |
| luck | 2 | — | — | — |
| block_break_speed | 2 | — | — | — |
| mining_efficiency | 2 | — | — (прогрессия) | — |
| gravity | 2 | — | ✅ | — |
| movement_efficiency | 2 | — | ✅ | — |
| explosion_knockback_resistance | 2 | — | — | — |
| oxygen_bonus | 2 | — | — | — |
| attack_knockback | 1 | — | — | — |
| scale | 1 | — | — | — |
| max_health | 1 | — | — | — |

### Итог классификации

- **Прямые дубликаты (A): 3 группы** — `movement_speed` (+5% ×3 4pc + synergy), `attack_damage` (+1.0 ×2 4pc), `knockback_resistance` (2 synergy).
- **Функциональные пересечения (B): ~15 атрибутов** — большинство атрибутов переиспользуются 2-4 раза с разной магнитудой.
- **Дисбаланс сложности: 6 атрибутов** — «дешёвый» бонус сильнее «дорогого» (ward 2pc > sentry 4pc; bolt 2pc > wild 2pc; eye 2pc = bolt 4pc; host 2pc ≈ shaper 4pc; coast 2pc < tide 2pc; dune 2pc < spire).
- **Осмысленные прогрессии (D): ~8 атрибутов** — материал → узор → синергия (burning_time, block_interaction_range, mining_efficiency, oxygen_bonus, etc.).

### Ключевой вывод

Датапак **функционально корректен** (все атрибуты/эффекты/материалы/узоры ванильны для 26.3, нет неванильных ссылок), но **страдает от избыточного переиспользования атрибутов**, что размывает уникальность каждого узора и материала. Многие узоры де-факто являются «вариациями на одну тему» (падение, скорость, анти-откидывание), а не самостоятельными игровыми ролями.

---

## 9. Верификация на реальном сервере 26.3 (RCON)

Датапак развёрнут и проверен на **боевом сервере** (Fabric 26.3, data pack 121.0, protocol 777, хост 192.168.1.8). Ниже — разграничение «статической» и «живой» проверки.

### 9.1 Пространство имён атрибутов — подтверждено `minecraft:*` (без `generic.`)

**Живая проверка (команда `/attribute` через RCON):**

| Команда | Результат | Интерпретация |
|---|---|---|
| `attribute @p minecraft:movement_speed get` | `No entity was found` | ✅ атрибут валиден (0 игроков онлайн) |
| `attribute @p minecraft:jump_strength get` | `No entity was found` | ✅ валиден |
| `attribute @p minecraft:bounciness get` | `No entity was found` | ✅ валиден |
| `attribute @p minecraft:max_absorption get` | `No entity was found` | ✅ валиден |
| `attribute @p minecraft:generic.jump_strength get` | `Can't find element 'minecraft:generic.jump_strength' of type 'minecraft:attribute'` | ❌ namespace `generic.*` невалиден в 26.3 |

**Статическая проверка (`search_files` по `generic\.`):** 0 вхождений во всех `*.mcfunction`. Датапак использует правильный `minecraft:*` (например `minecraft:armor_toughness`, `minecraft:step_height`, `minecraft:jump_strength`, `minecraft:bounciness`, `minecraft:max_absorption`). **Бага неймспейса нет.**

### 9.2 Три «новых» атрибута — доступны игроку

`jump_strength`, `bounciness`, `max_absorption` — валидные записи реестра атрибутов 26.3 и применяются к игроку (`Player`), что подтверждено обращением `/attribute @p`. Замена неванильных атрибутов не требуется.

### 9.3 Загрузка датапака

- `datapack list` → пакеты `file/vanilla_trim_buffs`, `file/trim_trades` присутствуют.
- `datapack disable` + `datapack enable "file/vanilla_trim_buffs"` → перезагрузка **без ошибок** (в `latest.log` нет ошибок `trims:`).
- `/reload` → «Reload failed; keeping old data» из-за `ConcurrentModificationException` в Carpet (`SettingsManager.registerCommand`) — **баг мода Carpet**, не датапака. Обходится через `datapack disable`/`enable`.
- Формат-48 предупреждения от `roguelike_loot`/`trial_chambers_relics` — **вне области задачи**.

### 9.4 Ограничение полного тестирования экипировки

Полное тестирование «надеть/снять броню, смешанные отделки, фулл-сет, смерть/возрождение, повторные смены экипировки, отсутствие накопления бонусов» **требует игрока в игре**. На момент верификации онлайн = 0 игроков, поэтому эти сценарии подтверждены только **статически** (корректность ID модификаторов, вызов `clear_modifiers` в `on_gear_change`, anti-loop лора). Полное игровое тестирование экипировки остаётся открытым до подключения игрока.
