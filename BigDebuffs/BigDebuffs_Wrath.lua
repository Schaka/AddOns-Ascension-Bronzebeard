local addonName, addon = ...

local BUFF_DEFENSIVE = "buffs_defensive"
local BUFF_OFFENSIVE = "buffs_offensive"
local BUFF_OTHER = "buffs_other"
local INTERRUPT = "interrupts"
local CROWD_CONTROL = "cc"
local ROOT = "roots"
local IMMUNITY = "immunities"
local IMMUNITY_SPELL = "immunities_spells"

addon.Units = {
    "player",
    "pet",
    "target",
    "focus",
    "party1",
    "party2",
    "party3",
    "party4",
    "arena1",
    "arena2",
    "arena3",
    "arena4",
    "arena5",
}

-- Show one of these when a big debuff is displayed
addon.WarningDebuffs = {
    1130108, -- Unstable Affliction
    1130404, -- Unstable Affliction
    1130405, -- Unstable Affliction
    1147841, -- Unstable Affliction
    1147843, -- Unstable Affliction
    1134914, -- Vampiric Touch
    1134916, -- Vampiric Touch
    1134917, -- Vampiric Touch
    1148159, -- Vampiric Touch
    1148160, -- Vampiric Touch
}

-- Make sure we always see these debuffs, but don't make them bigger
addon.PriorityDebuffs = {
    1100770, -- Faerie Fire
    1116857, -- Faerie Fire (Feral)
    1112294, -- Mortal Strike
    1121551, -- Mortal Strike
    1121552, -- Mortal Strike
    1121553, -- Mortal Strike
    1125248, -- Mortal Strike
    1130330, -- Mortal Strike
    1147485, -- Mortal Strike
    1147486, -- Mortal Strike
    1156112, -- Furious Attacks
    1113218, -- Wound Poison
    1113222, -- Wound Poison II
    1113223, -- Wound Poison III
    1113224, -- Wound Poison IV
    1127189, -- Wound Poison V
    1157974, -- Wound Poison VI
    1157975, -- Wound Poison VII
    1119434, -- Aimed Shot
    1120900, -- Aimed Shot
    1120901, -- Aimed Shot
    1120902, -- Aimed Shot
    1120903, -- Aimed Shot
    1120904, -- Aimed Shot
    1127065, -- Aimed Shot
    1149049, -- Aimed Shot
    1149050, -- Aimed Shot
    119035, -- Hex of Weakness
    1119281, -- Hex of Weakness
    1119282, -- Hex of Weakness
    1119283, -- Hex of Weakness
    1119284, -- Hex of Weakness
    1119285, -- Hex of Weakness
    1123230, -- Blood Fury Debuff
    1123605, -- Nightfall, Spell Vulnerability
}

addon.Spells = {

    -- Racials

    [1120600] = { type = BUFF_OFFENSIVE }, -- Perception
    [1107744] = { type = BUFF_OFFENSIVE }, -- Will of the Forsaken
    [1120549] = { type = CROWD_CONTROL }, -- War Stomp
    [1120594] = { type = BUFF_OFFENSIVE }, -- Stoneform
    [1120572] = { type = BUFF_OFFENSIVE }, -- Blood Fury
    [1128730] = { type = CROWD_CONTROL, }, -- Arcane Torrent (Mana)
    [1125046] = { type = CROWD_CONTROL, }, -- Arcane Torrent (Energy)
    [1150613] = { type = CROWD_CONTROL, }, -- Arcane Torrent (Runic Power)

    -- Other

    [1113099] = { type = ROOT }, -- Net-o-Matic
    [1113119] = { type = ROOT }, -- Net-o-Matic
    [1113120] = { type = ROOT }, -- Net-o-Matic
    [1113138] = { type = ROOT }, -- Net-o-Matic
    [1113139] = { type = ROOT }, -- Net-o-Matic
    [1116566] = { type = ROOT }, -- Net-o-Matic
    [1123723] = { type = BUFF_OFFENSIVE }, -- Mind Quickening Gem
    [1130456] = { type = BUFF_DEFENSIVE }, -- Nigh-Invulnerability
    [1130457] = { type = CROWD_CONTROL }, -- Complete Vulnerability
    [1133961] = { type = IMMUNITY_SPELL }, -- Spell Reflection (Sethekk Initiate)
    [1123451] = { type = BUFF_OFFENSIVE }, -- Battleground Speed buff
    [1123493] = { type = BUFF_DEFENSIVE }, -- Battleground Heal buff
    [1123505] = { type = BUFF_OFFENSIVE }, -- Battleground Damage buff
    [1106615] = { type = BUFF_OFFENSIVE }, -- Free Action Potion
    [1124364] = { type = BUFF_OFFENSIVE }, -- Living Action Potion
    [1103169] = { type = IMMUNITY }, -- Limited Invulnerability Potion
    [1116621] = { type = IMMUNITY }, -- Invulnerable Mail
    [1101090] = { type = CROWD_CONTROL }, -- Magic Dust
    [1113327] = { type = CROWD_CONTROL }, -- Reckless Charge
    [835] = { type = CROWD_CONTROL }, -- Tidal Charm
    [1111359] = { type = BUFF_OFFENSIVE }, -- Restorative Potion
    [1105024] = { type = BUFF_OFFENSIVE }, -- Skull of Impending Doom
    [1102379] = { type = BUFF_OFFENSIVE }, -- Swiftness Potion
    [1105134] = { type = CROWD_CONTROL }, -- Flash Bomb
    [1123097] = { type = BUFF_OFFENSIVE }, -- Fire Reflector
    [1123131] = { type = BUFF_OFFENSIVE }, -- Frost Reflector
    [1123132] = { type = BUFF_OFFENSIVE }, -- Shadow Reflector
    [1119769] = { type = CROWD_CONTROL }, -- Thorium Grenade
    [1104068] = { type = CROWD_CONTROL }, -- Iron Grenade
    [1123506] = { type = BUFF_DEFENSIVE }, -- Arena Grand Master trinket
    [1129506] = { type = BUFF_DEFENSIVE }, -- Burrower's Shell trinket
    [1112733] = { type = BUFF_OFFENSIVE }, -- Blacksmith trinket, Fear immunity
    [1115753] = { type = CROWD_CONTROL }, -- Linken's Boomerang Stun
    [1114530] = { type = BUFF_OFFENSIVE }, -- Nifty Stopwatch
    [1113237] = { type = CROWD_CONTROL }, -- Goblin Mortar trinket
    [1114253] = { type = BUFF_OFFENSIVE }, -- Black Husk Shield
    [1109175] = { type = BUFF_OFFENSIVE }, -- Swift Boots
    [1113141] = { type = BUFF_OFFENSIVE }, -- Gnomish Rocket Boots
    [1108892] = { type = BUFF_OFFENSIVE }, -- Goblin Rocket Boots
    [1109774] = { type = BUFF_OFFENSIVE }, -- Spider Belt & Ornate Mithril Boots
    [1118798] = { type = CROWD_CONTROL }, -- Freezing Band
    [1122734] = { type = BUFF_OTHER }, -- Drink
        [1146755] = { parent = 1122734 }, -- Drink
        [1127089] = { parent = 1122734 }, -- Drink
        [1143183] = { parent = 1122734 }, -- Drink
        [1157073] = { parent = 1122734 }, -- Drink
    [1123605] = { type = BUFF_OTHER }, -- Nightfall, Spell Vulnerability
    [1113494] = { type = BUFF_OFFENSIVE }, -- Manual Crowd Pummeler Haste buff

    -- Interrupts

    [1115752] = { type = INTERRUPT, duration = 10 }, -- Linken's Boomerang Disarm
    [1119244] = { type = INTERRUPT, duration = 5 }, -- Spell Lock - Rank 1 (Ascension)
        [1119647] = { parent = 1119244, duration = 6 }, -- Spell Lock - Rank 2 (Ascension)
    [1113491] = { type = INTERRUPT, duration = 5 }, -- Iron Knuckles
    [1116979] = { type = INTERRUPT, duration = 4 }, -- Feral Charge (Druid)
    [1102139] = { type = INTERRUPT, duration = 8 }, -- Counterspell (Mage)
    [1101766] = { type = INTERRUPT, duration = 5 }, -- Kick (Rogue)
        [1101767] = { parent = 1101766 },
        [1101768] = { parent = 1101766 },
        [1101769] = { parent = 1101766 },
        [1138768] = { parent = 1101766 },
    [1126679] = { type = INTERRUPT, duration = 3 }, -- Deadly Throw
    [1106552] = { type = INTERRUPT, duration = 4 }, -- Pummel
        [1106554] = { parent = 1106552 },
    [72] = { type = INTERRUPT, duration = 6 }, -- Shield Bash
        [1101671] = { parent = 72 },
        [1101672] = { parent = 72 },
        [1129704] = { parent = 72 },
    [1122570] = { type = INTERRUPT, duration = 3 }, -- Maim
    [1129443] = { type = INTERRUPT, duration = 10 }, -- Clutch of Foresight

    -- Priest

    -- WoTLK
    [1120711] = { type = BUFF_DEFENSIVE, },  -- Spirit of Redemption
    [1147585] = { type = IMMUNITY, },  -- Dispersion
    [1147788] = { type = BUFF_DEFENSIVE, },  -- Guardian Spirit
    [1164044] = { type = CROWD_CONTROL, }, -- Psychic Horror (Horrify)
    [1164058] = { type = CROWD_CONTROL, }, -- Psychic Horror (Disarm)
    [1164843] = { type = BUFF_DEFENSIVE, },  -- Divine Hymn
    [1164901] = { type = BUFF_DEFENSIVE, }, -- Hymn of Hope

    [17] = { type = BUFF_DEFENSIVE }, -- Power Word: Shield
        [592] = { parent = 17 }, -- Power Word: Shield
        [600] = { parent = 17 },
        [1103747] = { parent = 17 },
        [1106065] = { parent = 17 },
        [1106066] = { parent = 17 },
        [1110898] = { parent = 17 },
        [1110899] = { parent = 17 },
        [1110900] = { parent = 17 },
        [1110901] = { parent = 17 },
        [1110901] = { parent = 17 },
    [605] = { type = CROWD_CONTROL }, -- Mind Control
        [1110911] = { parent = 1100605 },
        [1110912] = { parent = 1100605 },
    [1108122] = { type = CROWD_CONTROL }, -- Psychic Scream
        [1108124] = { parent = 1108122 },
        [1110888] = { parent = 1108122 },
        [1110890] = { parent = 1108122 },
    [1110060] = { type = BUFF_OFFENSIVE }, -- Power Infusion
    [1115487] = { type = CROWD_CONTROL }, -- Silence
        [1115362] = { parent = 1114892 },
        [1115363] = { parent = 1114892 },
    [1106346] = { type = BUFF_DEFENSIVE }, -- Fear Ward
    [1109484] = { type = CROWD_CONTROL }, -- Shackle Undead
        [1109485] = { parent = 1109484 },
        [1110955] = { parent = 1109484 },
    [1127827] = { type = IMMUNITY }, -- Spirit of Redemption
    [1133206] = { type = BUFF_DEFENSIVE }, -- Pain Suppression
    [1114751] = { type = BUFF_DEFENSIVE }, -- Inner Focus

    [113792] = { type = CROWD_CONTROL }, -- Psychic Terror (Psyfiend)
    -- [113275] = { type = ROOT }, -- Entangling Roots (Symbiosis)
    [114404] = { type = ROOT }, -- Void Tendril's Grasp
    [114239] = { type = IMMUNITY_SPELL }, -- Phantasm
    [1188625] = { type = CROWD_CONTROL }, -- Holy Word: Chastise
    [760053] = { type = BUFF_OTHER }, -- Angelic Feather

    -- Warlock

    -- WoTLK
    [1147241] = { type = BUFF_OFFENSIVE, }, -- Metamorphosis
    [1147860] = { type = CROWD_CONTROL, },  -- Death Coil
    [1147986] = { type = BUFF_OTHER, }, -- Sacrifice
    [1147995] = { type = CROWD_CONTROL, }, -- Intercept (Felguard)
    [1160995] = { type = CROWD_CONTROL, }, -- Demon Charge (Metamorphosis)

    [1124259] = { type = CROWD_CONTROL, strict = true }, -- Spell Lock Silence
    [1106358] = { type = CROWD_CONTROL }, -- Seduction
    [1105782] = { type = CROWD_CONTROL }, -- Fear
        [1106213] = { parent = 1105782 },
        [1106215] = { parent = 1105782 },
    [1105484] = { type = CROWD_CONTROL }, -- Howl of Terror
        [1117928] = { parent = 1105484 },
    [710] = { type = CROWD_CONTROL }, -- Banish
        [1118647] = { parent = 1100710 },
    [1106789] = { type = CROWD_CONTROL }, -- Death Coil
        [1117925] = { parent = 1106789 },
        [1117926] = { parent = 1106789 },
        [1127223] = { parent = 1106789 },
    [1106229] = { type = BUFF_DEFENSIVE }, -- Shadow Ward
        [1111739] = { parent = 1106229 },
        [1111740] = { parent = 1106229 },
        [1128610] = { parent = 1106229 },
    [1107812] = { type = BUFF_DEFENSIVE }, -- Sacrifice
        [1119438] = { parent = 1107812 },
        [1119440] = { parent = 1107812 },
        [1119441] = { parent = 1107812 },
        [1119442] = { parent = 1107812 },
        [1119443] = { parent = 1107812 },
    [1118223] = { type = ROOT }, -- Curse of Exhaustion
        [1118310] = { parent = 1118223 },
        [1118313] = { parent = 1118223 },
    [1101714] = { type = ROOT }, -- Curse of Tongues
        [1111719] = { parent =  1714 },
    [1122703] = { type = CROWD_CONTROL }, -- Inferno Effect
    [1130283] = { type = CROWD_CONTROL }, -- Shadowfury
        [1130413] = { parent = 1130283 },
        [1130414] = { parent = 1130283 },
        [1147847] = { parent = 1130283 },
    [1143523] = { type = CROWD_CONTROL }, -- Unstable Affliction
        [1131117] = { parent = 1143523 },
    [1130299] = { type = BUFF_DEFENSIVE }, -- Nether Protection
        [1130301] = { parent = 1130299 },
        [1130302] = { parent = 1130399 },
    [1118708] = { type = BUFF_DEFENSIVE }, -- Fel Domination
    [1132752] = { type = CROWD_CONTROL }, -- Summoning Disorientation
    [1104511] = { type = IMMUNITY }, -- Phase Shift
    [1119482] = { type = CROWD_CONTROL }, -- Doom Guard Stun
    [1130153] = { type = CROWD_CONTROL }, -- Felguard Stun
        [1130195] = { parent = 1130153 },
        [1130197] = { parent = 1130153 },

    [137143] = { type = BUFF_DEFENSIVE }, -- Blood Horror
    [111397] = { type = BUFF_DEFENSIVE }, -- Blood Horror
    [130616] = { type = CROWD_CONTROL }, -- Fear (Glyph of Fear)
    [132412] = { type = CROWD_CONTROL }, -- Seduction (Grimoire of Sacrifice)
    [104045] = { type = CROWD_CONTROL }, -- Sleep (Metamorphosis)
    [132409] = { type = CROWD_CONTROL }, -- Spell Lock (Grimoire of Sacrifice)
    [110913] = { type = BUFF_DEFENSIVE }, -- Dark Bargain
    [104773] = { type = BUFF_DEFENSIVE }, -- Unending Resolve
    [954512] = { type = BUFF_DEFENSIVE }, -- Unending Resolve (Ascension)
    [115268] = { type = CROWD_CONTROL }, -- Mesmerize (Shivarra)
    [115782] = { type = CROWD_CONTROL }, -- Optical Blast (Observer)
    [115781] = { type = INTERRUPT, duration = 6 }, -- Optical Blast (Interrupt)
    [119911] = { type = INTERRUPT, duration = 6 }, -- Optical Blast (Interrupt)
    [118093] = { type = CROWD_CONTROL }, -- Disarm (Voidwalker/Voidlord)
    [118699] = { type = CROWD_CONTROL }, -- Fear (new?)
    [1180240] = { type = CROWD_CONTROL }, -- Havoc    

    -- Shaman

    -- WoTLK
    [1102825] = { type = BUFF_OFFENSIVE },  -- Bloodlust
    [1116191] = { type = BUFF_OFFENSIVE }, -- Mana Tide Totem
    [1132182] = { type = BUFF_OFFENSIVE },  -- Heroism
    [1151514] = { type = CROWD_CONTROL, },  -- Hex
    [1155277] = { type = BUFF_OTHER, }, -- Stoneclaw Totem (Absorb)
    [1157994] = { type = INTERRUPT, duration = 2, },  -- Wind Shear
    [1158861] = { type = CROWD_CONTROL, }, -- Bash (Spirit Wolf)
    [1158875] = { type = BUFF_OTHER, }, -- Spirit Walk (Spirit Wolf)
    [1163685] = { type = ROOT, }, -- Freeze (Enhancement)
    [1164695] = { type = ROOT, }, -- Earthgrab (Elemental)

    [1108178] = { type = IMMUNITY_SPELL }, -- Grounding Totem Effect
    [1116188] = { type = BUFF_DEFENSIVE }, -- Nature's Swiftness
    [1112548] = { type = ROOT }, -- Frost Shock
    [1139796] = { type = CROWD_CONTROL }, -- Stoneclaw Totem
    [1116166] = { type = BUFF_OFFENSIVE }, -- Elemental Mastery
    [1130823] = { type = BUFF_DEFENSIVE }, -- Shamanistic Rage

    [954529] = { type = CROWD_CONTROL },  -- Static Charge (Capacitor Totem)
    [113287] = { type = CROWD_CONTROL },  -- Solar Beam (Symbiosis)
    [116947] = { type = ROOT },  -- Earthbind (Earthgrab Totem)
    [118345] = { type = CROWD_CONTROL },  -- Pulverize (Primal Earth Elemental)
    [110806] = { type = BUFF_OTHER },  -- Spiritwalker's Grace
    [114049] = { type = BUFF_OFFENSIVE }, -- Ascendance
        [114052] = { parent = 114049 }, -- Ascendance
        [114051] = { parent = 114049 }, -- Ascendance
        [114050] = { parent = 114049 }, -- Ascendance

    [954588] = { type = CROWD_CONTROL, },  -- Capacitator Totem   


    -- Paladin

    -- WoTLK
    [1125771] = { type = BUFF_OTHER, }, -- Forbearance
    [1131821] = { type = BUFF_DEFENSIVE, },  -- Aura Mastery
    [1131852] = { type = BUFF_DEFENSIVE, },  -- Ardent Defender
    [1148817] = { type = CROWD_CONTROL, }, -- Holy Wrath
    [1154428] = { type = BUFF_OTHER, }, -- Divine Plea
    [1158597] = { type = BUFF_OTHER, }, -- Sacred Shield Proc
    [1159578] = { type = BUFF_OTHER, }, -- The Art of War
    [1163529] = { type = CROWD_CONTROL, }, -- Silenced - Shield of the Templar
    [1164205] = { type = BUFF_DEFENSIVE, }, -- Divine Sacrifice

    [1101022] = { type = IMMUNITY },-- Blessing of Protection
        [1105599] = { parent = 1101022 },
        [1110278] = { parent = 1101022 },
    [642] = { type = IMMUNITY }, -- Divine Shield
        [498] = { parent = 1100642 },
        [1101020] = { parent = 1100642 },
        [1105573] = { parent = 1100642 },
    [853] = { type = CROWD_CONTROL }, -- Hammer of Justice
        [1105588] = { parent = 1100853 },
        [1105589] = { parent = 1100853 },
        [1110308] = { parent = 1100853 },
    [1101044] = { type = BUFF_DEFENSIVE }, -- Blessing of Freedom
    [1120066] = { type = CROWD_CONTROL }, -- Repentance
    [1120170] = { type = CROWD_CONTROL }, -- Seal of Justice stun
    [1106940] = { type = BUFF_DEFENSIVE }, -- Blessing of Sacrifice
        [1120729] = { parent = 1106940 },
    [1119753] = { type = IMMUNITY }, -- Divine Intervention
    [1110326] = { type = CROWD_CONTROL }, -- Turn Evil
        [1102878] = { parent = 1110326 },
        [1105627] = { parent = 1110326 },
    [1120216] = { type = BUFF_DEFENSIVE }, -- Divine Favor
    [1131884] = { type = BUFF_OFFENSIVE }, -- Avenging Wrath
    [1131842] = { type = BUFF_DEFENSIVE }, -- Divine Illumination

    [105421] = { type = CROWD_CONTROL }, -- Blinding Light
    [115752] = { type = CROWD_CONTROL }, -- Blinding Light (Glyph of Blinding Light)
    [105593] = { type = CROWD_CONTROL }, -- Fist of Justice
    [119072] = { type = CROWD_CONTROL }, -- Holy Wrath
    [145067] = { type = CROWD_CONTROL }, -- Turn Evil (Evil is a Point of View)
    [110300] = { type = ROOT }, -- Burden of Guilt
    [954500] = { type = CROWD_CONTROL }, -- Blinding Light
    [1186371] = { type = BUFF_DEFENSIVE }, -- Guardian of Ancient Kings

    -- Hunter

    -- WoTLK
    [1101742] = { type = BUFF_DEFENSIVE, }, -- Cower (Pet)
    [1104167] = { type = ROOT, }, -- Web (Pet)
    [1126064] = { type = BUFF_DEFENSIVE, }, -- Shell Shield (Pet)
    [1126090] = { type = INTERRUPT, duration = 2, }, -- Pummel (Pet)
    [1148999] = { type = ROOT, }, -- Counterattack
    [1149012] = { type = CROWD_CONTROL, },  -- Wyvern Sting
    [1153271] = { type = BUFF_DEFENSIVE, },  -- Master's Call
    [1153359] = { type = CROWD_CONTROL, }, -- Chimera Shot - Scorpid (Disarm)
    [1153476] = { type = BUFF_DEFENSIVE, }, -- Intervene (Pet)
    [1153480] = { type = BUFF_DEFENSIVE, },  -- Roar of Sacrifice (Hunter Pet Skill)
    [1153543] = { type = CROWD_CONTROL, }, -- Snatch (Pet Disarm)
    [1153548] = { type = ROOT, }, -- Pin (Pet)
    [1153562] = { type = CROWD_CONTROL, }, -- Ravage (Pet)
    [1155509] = { type = ROOT, }, -- Venom Web Spray (Pet)
    [1160210] = { type = CROWD_CONTROL, }, -- Freezing Arrow Effect

    [1127046] = { type = BUFF_DEFENSIVE }, -- Mend Pet
    [1113159] = { type = BUFF_OFFENSIVE }, -- Aspect of the Pack
        [1105118] = { parent = 1113159 }, -- Aspect of the Cheetah
    [1101513] = { type = CROWD_CONTROL }, -- Scare Beast
        [1114326] = { parent = 1101513 },
        [1114327] = { parent = 1101513 },
    [1103045] = { type = BUFF_OFFENSIVE }, -- Rapid Fire
    [1119263] = { type = IMMUNITY }, -- Deterrence
    [1119574] = { type = BUFF_OFFENSIVE }, -- Bestial Wrath
    [1103355] = { type = CROWD_CONTROL }, -- Freezing Trap
        [1114308] = { parent = 1103355 },
        [1114309] = { parent = 1103355 },
    [1119306] = { type = ROOT }, -- Counterattack Root
        [1120909] = { parent = 1119306 },
        [1120910] = { parent = 1119306 },
        [1127067] = { parent = 1119306 },
    [1119386] = { type = CROWD_CONTROL }, --Wyvern Sting
        [1124132] = { parent = 1119386 },
        [1124133] = { parent = 1119386 },
        [1127068] = { parent = 1119386 },
    [1119185] = { type = ROOT }, -- Entrapment
        [1164803] = { parent = 1119185 },
        [1164804] = { parent = 1119185 },
    [1147168] = { type = ROOT }, -- Improved Wing Clip
    [1119503] = { type = CROWD_CONTROL }, -- Scatter Shot
    [1125999] = { type = ROOT }, -- Boar Charge
    [1103034] = { type = ROOT }, -- Viper Sting
        [1114279] = { parent = 1103034 },
        [1114280] = { parent = 1103034 },
        [1127018] = { parent = 1103034 },
    [1134490] = { type = CROWD_CONTROL }, -- Silencing Shot
    [1134471] = { type = IMMUNITY_SPELL }, -- The Beast Within
    [1105384] = { type = BUFF_DEFENSIVE }, -- Feign Death
    [1124394] = { type = CROWD_CONTROL }, -- Intimidation
    [1119577] = { type = BUFF_OFFENSIVE, parent = 1124394 }, -- Intimidation (Buff)
    [1119434] = { type = BUFF_OTHER }, -- Aimed Shot
        [1120900] = { parent = 1119434 },
        [1120901] = { parent = 1119434 },
        [1120902] = { parent = 1119434 },
        [1120903] = { parent = 1119434 },
        [1120904] = { parent = 1119434 },
        [1127065] = { parent = 1119434 },
        [1149049] = { parent = 1119434 },
        [1149050] = { parent = 1119434 },

    [117526] = { type = CROWD_CONTROL }, -- Binding Shot
    [128405] = { type = ROOT }, -- Narrow Escape
    [126246] = { type = CROWD_CONTROL }, -- Lullaby (Crane)
    [126355] = { type = CROWD_CONTROL }, -- Paralyzing Quill (Porcupine)
    [126423] = { type = CROWD_CONTROL }, -- Petrifying Gaze (Basilisk)
    [1103674] = { type = BUFF_OFFENSIVE }, -- Black Arrow    

    -- Druid

    -- WoTLK
    [768] = { type = BUFF_OTHER, }, -- Cat Form
    [783] = { type = BUFF_OTHER, }, -- Travel Form
    [1109634] = { type = BUFF_OTHER, }, -- Dire Bear Form
    [1122842] = { type = BUFF_DEFENSIVE, },  -- Frenzied Regeneration
    [1124858] = { type = BUFF_OTHER, }, -- Moonkin Form
    [1133357] = { type = BUFF_OTHER, },  -- Dash
    --[1133891] = { type = BUFF_OTHER, }, -- Tree of Life
    [1149802] = { type = CROWD_CONTROL, },  -- Maim
    [1149803] = { type = CROWD_CONTROL, },  -- Pounce
    [1150334] = { type = BUFF_OFFENSIVE, },  -- Berserk
    [1153201] = { type = BUFF_OFFENSIVE, }, -- Starfall
    [1153308] = { type = ROOT, },  -- Entangling Roots
    [1153312] = { type = BUFF_OTHER, }, -- Nature's Grasp
    [1153313] = { type = ROOT, }, -- Entangling Roots (From Nature's Grasp)
    [1161336] = { type = BUFF_DEFENSIVE, },  -- Survival Instincts
    [1169369] = { type = BUFF_OFFENSIVE, }, -- Predator's Swiftness

    [1122812] = { type = BUFF_DEFENSIVE }, -- Barkskin
    [339] = { type = ROOT }, -- Entangling Roots
        [1101062] = { parent = 1100339 },
        [1105195] = { parent = 1100339 },
        [1105196] = { parent = 1100339 },
        [1109852] = { parent = 1100339 },
        [1109853] = { parent = 1100339 },
        [1126989] = { parent = 1100339 },
        [1119970] = { parent = 1100339 }, -- Nature's Grasp Rank 6
        [1119971] = { parent = 1100339 }, -- Nature's Grasp Rank 5
        [1119972] = { parent = 1100339 }, -- Nature's Grasp Rank 4
        [1119973] = { parent = 1100339 }, -- Nature's Grasp Rank 3
        [1119974] = { parent = 1100339 }, -- Nature's Grasp Rank 2
        [1119975] = { parent = 1100339 }, -- Nature's Grasp Rank 1
        [1127010] = { parent = 1100339 },
    [1102637] = { type = CROWD_CONTROL }, -- Hibernate
        [1118657] = { parent = 1102637 },
        [1118658] = { parent = 1102637 },
    [1129166] = { type = BUFF_OFFENSIVE }, -- Innervate
    [1109005] = { type = CROWD_CONTROL }, -- Pounce Stun
        [1109823] = { parent = 1109005 },
        [1109827] = { parent = 1109005 },
        [1127006] = { parent = 1109005 },
    [1116922] = { type = CROWD_CONTROL }, -- Starfire Stun
    [1105211] = { type = CROWD_CONTROL}, -- Bash
        [1106798] = { parent = 1105211 },
        [1108983] = { parent = 1105211 },
    -- [1116979] = { type = ROOT }, -- Feral Charge TODO: invalid spellId, root effect must be different than the interrupt
    [1101850] = { type = BUFF_OFFENSIVE }, -- Dash
        [1109821] = { parent = 1101850 },
    [1116689] = { type = BUFF_OFFENSIVE }, -- Nature's Grasp Buff
        [1116810] = { parent = 1116689 },
        [1116811] = { parent = 1116689 },
        [1116812] = { parent = 1116689 },
        [1116813] = { parent = 1116689 },
        [1117329] = { parent = 1116689 },
    [770] = { type = BUFF_OTHER }, -- Faerie Fire
        [1116857] = { parent = 1100770 }, -- Faerie Fire (Feral)
    [1133786] = { type = CROWD_CONTROL }, -- Cyclone
    [1119675] = { type = ROOT }, -- Feral Charge Effect
        [1145334] = { parent = 1119675 },
    [1117116] = { type = BUFF_DEFENSIVE }, -- Nature's Swiftness

    [113801] = { type = CROWD_CONTROL }, -- Bash (Force of Nature - Feral Treants)
    [102795] = { type = CROWD_CONTROL }, -- Bear Hug
    [99] = { type = CROWD_CONTROL }, -- Disorienting Roar
    [102546] = { type = CROWD_CONTROL }, -- Pounce (Incarnation)
    [114238] = { type = CROWD_CONTROL }, -- Fae Silence (Glyph of Fae Silence)
    [113770] = { type = ROOT }, -- Entangling Roots (Force of Nature - Balance Treants)
    [102359] = { type = ROOT }, -- Mass Entanglement
    [954507] = { type = ROOT }, -- Mass Entanglement (Ascension)
    [127797] = { type = CROWD_CONTROL }, -- Ursol's Vortex
    [102342] = { type = BUFF_DEFENSIVE }, -- Ironbark
    [102351] = { type = BUFF_DEFENSIVE }, -- Cenarion Ward

    -- Mage

    -- WoTLK
    [1141425] = { type = BUFF_OTHER, }, -- Hypothermia
    [1100066] = { type = BUFF_OFFENSIVE, },  -- Invisibility
    [1142950] = { type = CROWD_CONTROL, },  -- Dragon's Breath
    [1143039] = { type = BUFF_OTHER, },  -- Ice Barrier
    [1144544] = { type = BUFF_OFFENSIVE, }, -- Fingers of Frost
    [1144572] = { type = CROWD_CONTROL, }, -- Deep Freeze
    [1154748] = { type = BUFF_OFFENSIVE, }, -- Burning Determination (Interrupt/Silence Immunity)
    [1155021] = { type = CROWD_CONTROL, }, -- Improved Counterspell
    [1164346] = { type = CROWD_CONTROL, }, -- Fiery Payback (Fire Mage Disarm)

    [118] = { type = CROWD_CONTROL }, -- Polymorph
        [1112824] = { parent = 1100118 },
        [1112825] = { parent = 1100118 },
        [1112826] = { parent = 1100118 },
        [1128270] = { parent = 1100118 },
        [1128271] = { parent = 1100118 },
        [1128272] = { parent = 1100118 },
        [1171319] = { parent = 1100118 },
        [1161305] = { parent = 1100118 },
        [1161721] = { parent = 1100118 },
        [1112826] = { parent = 1100118 },

    [1111426] = { type = BUFF_DEFENSIVE }, -- Ice Barrier
        [1113031] = { parent = 1111426 },
        [1113032] = { parent = 1111426 },
        [1113033] = { parent = 1111426 },
    [543] = { type = BUFF_DEFENSIVE }, -- Fire Ward
        [1108457] = { parent = 1100543 },
        [1108458] = { parent = 1100543 },
        [1110223] = { parent = 1100543 },
        [1110225] = { parent = 1100543 },
        [1143010] = { parent = 1100543 },
    [1106143] = { type = BUFF_DEFENSIVE }, -- Frost Ward
        [1108461] = { parent = 1106143 },
        [1108462] = { parent = 1106143 },
        [1110177] = { parent = 1106143 },
        [1128609] = { parent = 1106143 },
        [1143012] = { parent = 1106143 },
    [1112494] = { type = ROOT }, -- Frostbite
    [122] = { type = ROOT }, -- Frost Nova
        [865] = { parent = 1100122 },
        [1106131] = { parent = 1100122 },
        [1110230] = { parent = 1100122 },
        [1127088] = { parent = 1100122 },
        [1142917] = { parent = 1100122 },
        [1155080] = { parent = 1100122 }, -- Shattered Barrier
    [1112042] = { type = BUFF_OFFENSIVE }, -- Arcane Power
    [1145438] = { type = IMMUNITY }, -- Ice Block
    [1112051] = { type = BUFF_OFFENSIVE }, -- Evocation
    [1101463] = { type = BUFF_DEFENSIVE }, -- Mana Shield
        [1108494] = { parent = 1101463 },
        [1108495] = { parent = 1101463 },
        [1110191] = { parent = 1101463 },
        [1110192] = { parent = 1101463 },
        [1110193] = { parent = 1101463 },
    [1131661] = { type = CROWD_CONTROL }, -- Dragon's Breath
        [1133041] = { parent = 1131661 },
        [1133042] = { parent = 1131661 },
        [1133043] = { parent = 1131661 },
        [1133043] = { parent = 1131661 },
    [1112043] = { type = BUFF_OFFENSIVE }, -- Presence of Mind
    [1133395] = { type = ROOT }, -- Freeze
    [1112472] = { type = BUFF_OFFENSIVE }, -- Icy Veins

    [1398221] = { type = CROWD_CONTROL, }, -- Ring of Frost (Ascension)
    [115760] = { type = IMMUNITY_SPELL }, -- Glyph of Ice Block
    [1164343] = { type = BUFF_OFFENSIVE, strict = true }, -- Impact (Buff)
    [1112355] = { type = CROWD_CONTROL, strict = true }, -- Impact (stun)
    [102051] = { type = CROWD_CONTROL }, -- Frostjaw (Root Silence)
    [111340] = { type = ROOT }, -- Ice Ward
    [121288] = { type = ROOT }, -- Chilled (Frost Armor)
    [113092] = { type = ROOT }, -- Frost Bomb
    [1436397] = { type = BUFF_DEFENSIVE }, -- Alter Time
    [115610] = { type = BUFF_DEFENSIVE }, -- Temporal Shield

    -- Rogue

    -- WoTLK
    [1151690] = { type = BUFF_OFFENSIVE, },  -- Killing Spree
    [1151713] = { type = BUFF_OFFENSIVE, }, -- Shadow Dance
    [1151722] = {type = CROWD_CONTROL, }, -- Dismantle
    [1151724] = { type = CROWD_CONTROL, },  -- Sap

    [1118425] = { type = CROWD_CONTROL }, -- Improved Kick
    [1113750] = { type = BUFF_OFFENSIVE}, -- Adrenaline Rush
    [1113877] = { type = BUFF_OFFENSIVE}, -- Blade Flurry
    [1180000] = { type = BUFF_OFFENSIVE}, -- Shadow Blades
    [1101833] = { type = CROWD_CONTROL }, -- Cheap Shot
    [408] = { type = CROWD_CONTROL }, -- Kidney Shot
        [1108643] = { parent = 1100408 },
    [1102070] = { type = CROWD_CONTROL }, -- Sap
        [1106770] = { parent = 1102070 },
        [1111297] = { parent = 1102070 },
    [1102094] = { type = CROWD_CONTROL }, -- Blind
    [1102983] = { type = BUFF_OFFENSIVE }, -- Sprint
        [1108696] = { parent = 1102983 },
        [1111305] = { parent = 1102983 },
    [1105277] = { type = BUFF_DEFENSIVE }, -- Evasion
        [1126669] = { parent = 1105277 },
    [1101776] = { type = CROWD_CONTROL }, -- Gouge
        [1101777] = { parent = 1101776 },
        [1108629] = { parent = 1101776 },
        [1111285] = { parent = 1101776 },
        [1111286] = { parent = 1101776 },
        [1138764] = { parent = 1101776 },
    [1114278] = { type = BUFF_DEFENSIVE }, -- Ghostly Strike
    [1103409] = { type = ROOT }, -- Crippling Poison
        [1111201] = { parent = 1103409 },
    [1101330] = { type = CROWD_CONTROL }, -- Garrote Silence
    [1131224] = { type = IMMUNITY_SPELL }, -- Cloak of Shadows
    [1145182] = { type = BUFF_DEFENSIVE }, -- Cheating Death
    [1114177] = { type = BUFF_OFFENSIVE }, -- Cold Blood
    [1114251] = { type = BUFF_OTHER }, -- Riposte (Rogue)
    [1113218] = { type = BUFF_OTHER }, -- Wound Poison
        [1113222] = { parent = 1113218 }, -- Wound Poison II
        [1113223] = { parent = 1113218 }, -- Wound Poison III
        [1113224] = { parent = 1113218 }, -- Wound Poison IV
        [1127189] = { parent = 1113218 }, -- Wound Poison V
        [1157974] = { parent = 1113218 }, -- Wound Poison VI
        [1157975] = { parent = 1113218 }, -- Wound Poison VII

    [114018] = { type = BUFF_OTHER }, -- Shroud of Concealment
    [954501] = { type = BUFF_OTHER }, -- Smoke Bomb    

    -- Warrior

    -- WoTLK
    [71] = { type = BUFF_OTHER }, -- Defensive Stance
    [1102457] = { type = BUFF_OTHER }, -- Battle Stance
    [1102458] = { type = BUFF_OTHER }, -- Berserker Stance
    [1102565] = { type = BUFF_DEFENSIVE }, -- Shield Block
    [1103411] = { type = BUFF_DEFENSIVE },  -- Intervene
    [1112975] = { type = BUFF_DEFENSIVE },  -- Last Stand
    [1146924] = { type = IMMUNITY, },  -- Bladestorm
    [1146968] = { type = CROWD_CONTROL, },  -- Shockwave
    [1155694] = { type = BUFF_DEFENSIVE },  -- Enraged Regeneration
    [1160503] = { type = BUFF_OFFENSIVE, }, -- Taste for Blood
    [1164849] = { type = BUFF_OFFENSIVE, }, -- Unrelenting Assault (1/2)
    [1165925] = { type = BUFF_OFFENSIVE, }, -- Unrelenting Assault (2/2)
	[1158373] = { type = ROOT }, -- Glyph of Hamstring

    [1118498] = { type = CROWD_CONTROL }, -- Improved Shield Bash
    [1120230] = { type = IMMUNITY }, -- Retaliation
    [1101719] = { type = BUFF_OFFENSIVE }, -- Recklessness
    [871] = { type = BUFF_DEFENSIVE }, -- Shield Wall
    [1112292] = { type = BUFF_OFFENSIVE }, -- Death Wish
    [1123694] = { type = ROOT }, -- Improved Hamstring
    [1118499] = { type = BUFF_OFFENSIVE }, -- Berserker Rage
    [1120253] = { type = CROWD_CONTROL }, -- Intercept Stun
        [1120614] = { parent = 1120253 },
        [1120615] = { parent = 1120253 },
        [1125273] = { parent = 1120253 },
        [1125274] = { parent = 1120253 },
    [1112798] = { type = CROWD_CONTROL }, -- Revenge Stun
    [1112809] = { type = CROWD_CONTROL }, -- Concussion Blow
    [1107922] = { type = CROWD_CONTROL }, -- Charge Stun
    [1105530] = { type = CROWD_CONTROL }, -- Mace Spec Stun (Warrior & Rogue)
    [1105246] = { type = CROWD_CONTROL }, -- Intimidating Shout
        [1120511] = { parent = 1105246 },
    [676] = { type = BUFF_OTHER }, -- Disarm
    [1123920] = { type = IMMUNITY_SPELL }, -- Spell Reflection
    [1112976] = { type = BUFF_DEFENSIVE }, -- Last Stand
    [1156112] = { type = BUFF_OTHER }, -- Furious Attacks
    [1112294] = { type = BUFF_OTHER }, -- Mortal Strike
        [1121551] = { parent = 1112294 },
        [1121552] = { parent = 1112294 },
        [1121553] = { parent = 1112294 },
        [1125248] = { parent = 1112294 },
        [1130330] = { parent = 1112294 },
        [1147485] = { parent = 1112294 },
        [1147486] = { parent = 1112294 },

    [118895] = { type = CROWD_CONTROL }, -- Dragon Roar
    -- [132168] = { type = CROWD_CONTROL }, -- Shockwave
    [107570] = { type = CROWD_CONTROL }, -- Storm Bolt
    [1572740] = { type = CROWD_CONTROL }, -- Storm Bolt
    [107566] = { type = ROOT }, -- Staggering Shout
    -- [147531] = { type = ROOT }, -- Warbringer
    [137637] = { type = ROOT }, -- Warbringer
    [147531] = { type = ROOT }, -- Bloodbath
    [129923] = { type = ROOT }, -- Sluggish (Glyph of Hindering Strikes)
    [114028] = { type = IMMUNITY_SPELL }, -- Mass Spell Reflection
    [118038] = { type = BUFF_DEFENSIVE }, -- Die by the Sword
    [114203] = { type = BUFF_OFFENSIVE }, -- Demoralizing Banner
    [922565] = { type = BUFF_DEFENSIVE }, -- Bulwark
    [1186361] = { type = BUFF_OFFENSIVE }, -- Colossus Smash

}