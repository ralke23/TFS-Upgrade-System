ITEM_UPGRADE_CRYSTAL = 1
ITEM_ENCHANT_CRYSTAL = 2
ITEM_ALTER_CRYSTAL = 3
ITEM_CLEAN_CRYSTAL = 4
ITEM_FORTUNE_CRYSTAL = 5
ITEM_FAITH_CRYSTAL = 6

COMMON = 1
RARE = 2
EPIC = 3
LEGENDARY = 4

US_CONFIG = {
  {
    -- crystals here can be extracted using Crystal Extractor
    [ITEM_UPGRADE_CRYSTAL] = 2294, -- Upgrade Rune item id -- Check
    [ITEM_ENCHANT_CRYSTAL] = 2296, -- Enchantment Rune item id --- Check
    [ITEM_ALTER_CRYSTAL] = 2297, -- Alteration Rune item id --- Check
    [ITEM_CLEAN_CRYSTAL] = 2298, -- Cleansing Rune item id -- 
    [ITEM_FORTUNE_CRYSTAL] = 2299, -- Fortune Rune item id --- 
    [ITEM_FAITH_CRYSTAL] = 2300 -- Faith Crystal item id
  },
  ITEM_MIND_CRYSTAL = 2280, -- Mind Crystal item id  --- Block item
  ITEM_LIMITLESS_CRYSTAL = 2281, -- Limitless Crystal item id --- Block item
  ITEM_MIRRORED_CRYSTAL = 2282, -- Mirrored Crystal item id  --- Block item
  ITEM_VOID_CRYSTAL = 2283, -- Void Crystal item id --- Block item
  ITEM_SCROLL_IDENTIFY = 7735, -- Scrol of Identification item id
  ITEM_UPGRADE_CATALYST = 2284, -- Upgrade Catalyst item id --- Block item
  CRYSTAL_EXTRACTOR = 2557, -- Crystal Extractor item id
  CRYSTAL_FOSSIL = 2267, -- Crystal Fossil item id
  --
  IDENTIFY_UPGRADE_LEVEL = true, -- if true, roll random upgrade level when identifing an item
  UPGRADE_SUCCESS_CHANCE = {[1] = 100, [2] = 100, [3] = 95, [4] = 80, [5] = 65, [6] = 40, [7] = 30, [8] = 15, [9] = 5}, -- % chance for the upgrade at given upgrade level, -1 upgrade level on failure
  UPGRADE_LEVEL_DESTROY = 10, -- at which upgrade level should it break if failed, for example if = 7 then upgrading from +6 to +7-9 can destroy item on failure.
  UPGRADE_DESTROY_CHANCE = {[10] = 1}, -- chance for the item to break at given upgrade level
  --
  MAX_ITEM_LEVEL = 300, -- max that Item Level can be assigned to item
  MAX_UPGRADE_LEVEL = 9, -- max level that item can be upgraded to,
  MAX_IDENTIFY_LEVEL = 3, -- max level that item can be identified
  --
  ATTACK_PER_ITEM_LEVEL = 100, -- every X Item Level +ATTACK_FROM_ITEM_LEVEL attack
  ATTACK_FROM_ITEM_LEVEL = 1, -- +X bonus attack for every ATTACK_PER_ITEM_LEVEL
  DEFENSE_PER_ITEM_LEVEL = 100, -- every X Item Level +DEFENSE_FROM_ITEM_LEVEL defense
  DEFENSE_FROM_ITEM_LEVEL = 1, -- +X bonus defense for every DEFENSE_PER_ITEM_LEVEL
  ARMOR_PER_ITEM_LEVEL = 100, -- every X Item Level +ARMOR_FROM_ITEM_LEVEL armor
  ARMOR_FROM_ITEM_LEVEL = 1, -- +X bonus armor for every ARMOR_PER_ITEM_LEVEL
  HITCHANCE_PER_ITEM_LEVEL = 100, -- every X Item Level +HITCHANCE_FROM_ITEM_LEVEL hit chance
  HITCHANCE_FROM_ITEM_LEVEL = 1, -- +X bonus hit chance for every HITCHANCE_PER_ITEM_LEVEL
  --
  ITEM_LEVEL_PER_ATTACK = 1, -- +1 to Item Level for every X Attack in item
  ITEM_LEVEL_PER_DEFENSE = 1, -- +1 to Item Level for every X Defense in item
  ITEM_LEVEL_PER_ARMOR = 1, -- +1 to Item Level for every X Armor in item
  ITEM_LEVEL_PER_HITCHANCE = 1, -- +1 to Item Level for every X Hit Chance in item
  ITEM_LEVEL_PER_UPGRADE = 3, -- additional item level per upgrade level
  --
  ATTACK_PER_UPGRADE = 1, -- amount of bonus attack per upgrade level
  DEFENSE_PER_UPGRADE = 1, -- amount of bonus defense per upgrade level
  EXTRADEFENSE_PER_UPGRADE = 1, -- amount of bonus extra defense per upgrade level
  ARMOR_PER_UPGRADE = 1, -- amount of bonus armor per upgrade level
  HITCHANCE_PER_UPGRADE = 1, -- amount of bonus hit chance per upgrade level --Pendiente
  --
  CRYSTAL_FOSSIL_DROP_CHANCE = 99999, -- 1:X chance that Crystal Fossil will drop from monster, X means that approximately every X monster will drop Crystal Fossil
  CRYSTAL_FOSSIL_DROP_LEVEL = 50, -- X monster level needed to drop Crystal Fossil
  UNIDENTIFIED_DROP_CHANCE = 1, -- 1:X chance that item in monster corpse will be unidentified, X means that approximately every X item will be unidentified
  CRYSTAL_BREAK_CHANCE = 99999, -- 1:X chance that Crystal will break when extracted from Fossil, X means that approximately every X Crystal will break
  UNIQUE_CHANCE = 99999, -- 1:X chance that unidentified item will become Unique, X means that approximately every X unidentified item will become unique
  REQUIRE_LEVEL = false, -- block equipping items with higher Item Level than Player Level
  RARITY = {
    [COMMON] = {
      name = "",
      maxBonus = 1, -- max amount of bonus attributes
      chance = 1 -- 1:X chance that item will be common (1 = 100%)
    },
	[RARE] = {
      name = "legendary ",
      maxBonus = 2, -- max amount of bonus attributes
      chance = 99999 -- 1:X chance that item will be common (1 = 100%)
    }
  }
}

US_ITEM_TYPES = {
  ALL = 1,
  WEAPON_MELEE = 2,
  WEAPON_DISTANCE = 4,
  WEAPON_WAND = 8,
  SHIELD = 16,
  HELMET = 32,
  ARMOR = 64,
  LEGS = 128,
  BOOTS = 256,
  RING = 512,
  NECKLACE = 1024,
  WEAPON_ANY = 14
}

US_UNIQUES = {
}

US_TYPES = {
  CONDITION = 0,
  OFFENSIVE = 1,
  DEFENSIVE = 2,
  TRIGGER = 3
}

US_TRIGGERS = {
  ATTACK = 0,
  HIT = 1,
  KILL = 2
}

US_ENCHANTMENTS = {
  [1] = {
    name = "Hitpoints",
    combatType = US_TYPES.CONDITION,
    condition = CONDITION_ATTRIBUTES,
    param = CONDITION_PARAM_STAT_MAXHITPOINTS,
    VALUES_PER_LEVEL = 1,
    format = function(value)
      return "Hitpoints +" .. value
    end,
    itemType = US_ITEM_TYPES.LEGS + US_ITEM_TYPES.BOOTS + US_ITEM_TYPES.ARMOR + US_ITEM_TYPES.HELMET 
  },
  [2] = {
    name = "Mana",
    combatType = US_TYPES.CONDITION,
    condition = CONDITION_ATTRIBUTES,
    param = CONDITION_PARAM_STAT_MAXMANAPOINTS,
    VALUES_PER_LEVEL = 1,
    format = function(value)
      return "Mana +" .. value
    end,
    itemType = US_ITEM_TYPES.LEGS + US_ITEM_TYPES.BOOTS + US_ITEM_TYPES.ARMOR + US_ITEM_TYPES.HELMET
  },
  [3] = {
    name = "Magic Level",
    combatType = US_TYPES.CONDITION,
    condition = CONDITION_ATTRIBUTES,
    param = CONDITION_PARAM_STAT_MAGICPOINTS,
    VALUES_PER_LEVEL = 0.1,
    format = function(value)
      return "Magic Level +" .. value
    end,
    itemType = US_ITEM_TYPES.WEAPON_WAND
  },
  [4] = {
    name = "Melee Skills",
    combatType = US_TYPES.CONDITION,
    condition = CONDITION_ATTRIBUTES,
    param = CONDITION_PARAM_SKILL_MELEE,
    VALUES_PER_LEVEL = 0.1,
    format = function(value)
      return "Melee Skills +" .. value
    end,
    itemType = US_ITEM_TYPES.WEAPON_MELEE
  },
  [5] = {
    name = "Distance Fighting",
    combatType = US_TYPES.CONDITION,
    condition = CONDITION_ATTRIBUTES,
    param = CONDITION_PARAM_SKILL_DISTANCE,
    VALUES_PER_LEVEL = 0.1,
    format = function(value)
      return "Distance Fighting +" .. value
    end,
    itemType = US_ITEM_TYPES.WEAPON_DISTANCE
  },
  [6] = {
    name = "Shielding",
    combatType = US_TYPES.CONDITION,
    condition = CONDITION_ATTRIBUTES,
    param = CONDITION_PARAM_SKILL_SHIELD,
    VALUES_PER_LEVEL = 0.1,
    format = function(value)
      return "Shielding +" .. value
    end,
    itemType = US_ITEM_TYPES.SHIELD
  },

  [7] = {
    name = "Flame Strike on Attack",
    combatType = US_TYPES.TRIGGER,
    triggerType = US_TRIGGERS.ATTACK,
    VALUES_PER_LEVEL = 2.5,
    execute = function(attacker, target, damage)
      if math.random(100) < 100 then
        attacker:getPosition():sendDistanceEffect(target:getPosition(), CONST_ANI_FIRE)
        doTargetCombatHealth(attacker:getId(), target, COMBAT_FIREDAMAGE, 1, damage, CONST_ME_FIREATTACK, ORIGIN_CONDITION)
      end
    end,
    format = function(value)
      return "20%% to cast Flame Strike on Attack dealing 1-" .. value .. " damage"
    end,
    itemType = US_ITEM_TYPES.RING + US_ITEM_TYPES.NECKLACE + US_ITEM_TYPES.WEAPON_MELEE + US_ITEM_TYPES.WEAPON_WAND
  },
  [8] = {
    name = "Ice Strike on Attack",
    combatType = US_TYPES.TRIGGER,
    triggerType = US_TRIGGERS.ATTACK,
    VALUES_PER_LEVEL = 2.5,
    execute = function(attacker, target, damage)
      if math.random(100) < 100 then
        attacker:getPosition():sendDistanceEffect(target:getPosition(), CONST_ANI_SMALLICE)
        doTargetCombatHealth(attacker:getId(), target, COMBAT_ICEDAMAGE, 1, damage, CONST_ME_ICEATTACK, ORIGIN_CONDITION)
      end
    end,
    format = function(value)
      return "20%% to cast Ice Strike on Attack dealing 1-" .. value .. " damage"
    end,
    itemType = US_ITEM_TYPES.RING + US_ITEM_TYPES.NECKLACE + US_ITEM_TYPES.WEAPON_WAND
  },
  [9] = {
    name = "Terra Strike on Attack",
    combatType = US_TYPES.TRIGGER,
    triggerType = US_TRIGGERS.ATTACK,
    VALUES_PER_LEVEL = 2.5,
    execute = function(attacker, target, damage)
      if math.random(100) < 100 then
        attacker:getPosition():sendDistanceEffect(target:getPosition(), CONST_ANI_SMALLEARTH)
        doTargetCombatHealth(attacker:getId(), target, COMBAT_EARTHDAMAGE, 1, damage, CONST_ME_CARNIPHILA, ORIGIN_CONDITION)
      end
    end,
    format = function(value)
      return "20%% to cast Terra Strike on Attack dealing 1-" .. value .. " damage"
    end,
    itemType = US_ITEM_TYPES.RING + US_ITEM_TYPES.NECKLACE + US_ITEM_TYPES.WEAPON_WAND
  },
  [10] = {
    name = "Death Strike on Attack",
    combatType = US_TYPES.TRIGGER,
    triggerType = US_TRIGGERS.ATTACK,
    VALUES_PER_LEVEL = 2.5,
    execute = function(attacker, target, damage)
      if math.random(100) < 100 then
        attacker:getPosition():sendDistanceEffect(target:getPosition(), CONST_ANI_DEATH)
        doTargetCombatHealth(attacker:getId(), target, COMBAT_DEATHDAMAGE, 1, damage, CONST_ME_MORTAREA, ORIGIN_CONDITION)
      end
    end,
    format = function(value)
      return "20%% to cast Death Strike on Attack dealing 1-" .. value .. " damage"
    end,
    itemType = US_ITEM_TYPES.RING + US_ITEM_TYPES.NECKLACE + US_ITEM_TYPES.WEAPON_WAND
  },
  [11] = {
    name = "Divine Missile on Attack",
    combatType = US_TYPES.TRIGGER,
    triggerType = US_TRIGGERS.ATTACK,
    VALUES_PER_LEVEL = 2.5,
    execute = function(attacker, target, damage)
      if math.random(100) < 100 then
        attacker:getPosition():sendDistanceEffect(target:getPosition(), CONST_ANI_SMALLHOLY)
        doTargetCombatHealth(attacker:getId(), target, COMBAT_HOLYDAMAGE, 1, damage, CONST_ME_HOLYDAMAGE, ORIGIN_CONDITION)
      end
    end,
    format = function(value)
      return "20%% to cast Divine Missile on Attack dealing 1-" .. value .. " damage"
    end,
    itemType = US_ITEM_TYPES.WEAPON_DISTANCE 
  },
  [12] = {
    name = "Energy Strike on Attack",
    combatType = US_TYPES.TRIGGER,
    triggerType = US_TRIGGERS.ATTACK,
    VALUES_PER_LEVEL = 2.5,
    execute = function(attacker, target, damage)
      if math.random(100) < 100 then
        attacker:getPosition():sendDistanceEffect(target:getPosition(), CONST_ANI_ENERGY)
        doTargetCombatHealth(attacker:getId(), target, COMBAT_ENERGYDAMAGE, 1, damage, CONST_ME_ENERGYAREA, ORIGIN_CONDITION)
      end
    end,
    format = function(value)
      return "20%% to cast Energy Strike on Attack dealing 1-" .. value .. " damage"
    end,
    itemType = US_ITEM_TYPES.RING + US_ITEM_TYPES.NECKLACE + US_ITEM_TYPES.WEAPON_WAND
  },
  [13] = {
    name = "Fishing",
    combatType = US_TYPES.CONDITION,
    condition = CONDITION_ATTRIBUTES,
    param = CONDITION_PARAM_SKILL_FISHING,
    VALUES_PER_LEVEL = 1,
    format = function(value)
      return "Fishing +" .. value
    end,
    itemType = US_ITEM_TYPES.BOOTS + US_ITEM_TYPES.SHIELD
  },
  [14] = {
    name = "Mana Steal",
    combatType = US_TYPES.OFFENSIVE,
    VALUES_PER_LEVEL = 0.02,
    format = function(value)
      return "Mana Leech " .. value .. "%% of dealt damage"
    end,
    itemType = US_ITEM_TYPES.WEAPON_DISTANCE + US_ITEM_TYPES.WEAPON_WAND,
    chance = 20
  },
  [15] = {
    name = "Life Steal",
    combatType = US_TYPES.OFFENSIVE,
    VALUES_PER_LEVEL = 0.02,
    format = function(value)
      return "Life Leech " .. value .. "%% of dealt damage"
    end,
    itemType = US_ITEM_TYPES.WEAPON_DISTANCE + US_ITEM_TYPES.WEAPON_MELEE,
    chance = 20
  }
}

function exoriEffect(center, effect)
  for i = -1, 1 do
    local top = Position(center.x + i, center.y - 1, center.z)
    local middle = Position(center.x + i, center.y, center.z)
    local bottom = Position(center.x + i, center.y + 1, center.z)
    top:sendMagicEffect(effect)
    middle:sendMagicEffect(effect)
    bottom:sendMagicEffect(effect)
  end
end

