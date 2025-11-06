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
    30108, -- Unstable Affliction
    30404, -- Unstable Affliction
    30405, -- Unstable Affliction
    47841, -- Unstable Affliction
    47843, -- Unstable Affliction
    34914, -- Vampiric Touch
    34916, -- Vampiric Touch
    34917, -- Vampiric Touch
    48159, -- Vampiric Touch
    48160, -- Vampiric Touch
}

-- Make sure we always see these debuffs, but don't make them bigger
addon.PriorityDebuffs = {
    770, -- Faerie Fire
    16857, -- Faerie Fire (Feral)
    12294, -- Mortal Strike
    21551, -- Mortal Strike
    21552, -- Mortal Strike
    21553, -- Mortal Strike
    25248, -- Mortal Strike
    30330, -- Mortal Strike
    47485, -- Mortal Strike
    47486, -- Mortal Strike
    56112, -- Furious Attacks
    13218, -- Wound Poison
    13222, -- Wound Poison II
    13223, -- Wound Poison III
    13224, -- Wound Poison IV
    27189, -- Wound Poison V
    57974, -- Wound Poison VI
    57975, -- Wound Poison VII
    19434, -- Aimed Shot
    20900, -- Aimed Shot
    20901, -- Aimed Shot
    20902, -- Aimed Shot
    20903, -- Aimed Shot
    20904, -- Aimed Shot
    27065, -- Aimed Shot
    49049, -- Aimed Shot
    49050, -- Aimed Shot
    9035, -- Hex of Weakness
    19281, -- Hex of Weakness
    19282, -- Hex of Weakness
    19283, -- Hex of Weakness
    19284, -- Hex of Weakness
    19285, -- Hex of Weakness
    23230, -- Blood Fury Debuff
    23605, -- Nightfall, Spell Vulnerability
}

addon.Spells = {

    -- Racials

    [20600] = { type = BUFF_OFFENSIVE }, -- Perception
    [7744] = { type = BUFF_OFFENSIVE }, -- Will of the Forsaken
    [20549] = { type = CROWD_CONTROL }, -- War Stomp
    [20594] = { type = BUFF_OFFENSIVE }, -- Stoneform
    [20572] = { type = BUFF_OFFENSIVE }, -- Blood Fury
    [28730] = { type = CROWD_CONTROL, }, -- Arcane Torrent (Mana)
    [25046] = { type = CROWD_CONTROL, }, -- Arcane Torrent (Energy)
    [50613] = { type = CROWD_CONTROL, }, -- Arcane Torrent (Runic Power)

    -- Other

    [13099] = { type = ROOT }, -- Net-o-Matic
    [13119] = { type = ROOT }, -- Net-o-Matic
    [13120] = { type = ROOT }, -- Net-o-Matic
    [13138] = { type = ROOT }, -- Net-o-Matic
    [13139] = { type = ROOT }, -- Net-o-Matic
    [16566] = { type = ROOT }, -- Net-o-Matic
    [23723] = { type = BUFF_OFFENSIVE }, -- Mind Quickening Gem
    [30456] = { type = BUFF_DEFENSIVE }, -- Nigh-Invulnerability
    [30457] = { type = CROWD_CONTROL }, -- Complete Vulnerability
    [33961] = { type = IMMUNITY_SPELL }, -- Spell Reflection (Sethekk Initiate)
    [23451] = { type = BUFF_OFFENSIVE }, -- Battleground Speed buff
    [23493] = { type = BUFF_DEFENSIVE }, -- Battleground Heal buff
    [23505] = { type = BUFF_OFFENSIVE }, -- Battleground Damage buff
    [6615] = { type = BUFF_OFFENSIVE }, -- Free Action Potion
    [24364] = { type = BUFF_OFFENSIVE }, -- Living Action Potion
    [3169] = { type = IMMUNITY }, -- Limited Invulnerability Potion
    [16621] = { type = IMMUNITY }, -- Invulnerable Mail
    [1090] = { type = CROWD_CONTROL }, -- Magic Dust
    [13327] = { type = CROWD_CONTROL }, -- Reckless Charge
    [835] = { type = CROWD_CONTROL }, -- Tidal Charm
    [11359] = { type = BUFF_OFFENSIVE }, -- Restorative Potion
    [5024] = { type = BUFF_OFFENSIVE }, -- Skull of Impending Doom
    [2379] = { type = BUFF_OFFENSIVE }, -- Swiftness Potion
    [5134] = { type = CROWD_CONTROL }, -- Flash Bomb
    [23097] = { type = BUFF_OFFENSIVE }, -- Fire Reflector
    [23131] = { type = BUFF_OFFENSIVE }, -- Frost Reflector
    [23132] = { type = BUFF_OFFENSIVE }, -- Shadow Reflector
    [19769] = { type = CROWD_CONTROL }, -- Thorium Grenade
    [4068] = { type = CROWD_CONTROL }, -- Iron Grenade
    [23506] = { type = BUFF_DEFENSIVE }, -- Arena Grand Master trinket
    [29506] = { type = BUFF_DEFENSIVE }, -- Burrower's Shell trinket
    [12733] = { type = BUFF_OFFENSIVE }, -- Blacksmith trinket, Fear immunity
    [15753] = { type = CROWD_CONTROL }, -- Linken's Boomerang Stun
    [14530] = { type = BUFF_OFFENSIVE }, -- Nifty Stopwatch
    [13237] = { type = CROWD_CONTROL }, -- Goblin Mortar trinket
    [14253] = { type = BUFF_OFFENSIVE }, -- Black Husk Shield
    [9175] = { type = BUFF_OFFENSIVE }, -- Swift Boots
    [13141] = { type = BUFF_OFFENSIVE }, -- Gnomish Rocket Boots
    [8892] = { type = BUFF_OFFENSIVE }, -- Goblin Rocket Boots
    [9774] = { type = BUFF_OFFENSIVE }, -- Spider Belt & Ornate Mithril Boots
    [18798] = { type = CROWD_CONTROL }, -- Freezing Band
    [22734] = { type = BUFF_OTHER }, -- Drink
        [46755] = { parent = 22734 }, -- Drink
        [27089] = { parent = 22734 }, -- Drink
        [43183] = { parent = 22734 }, -- Drink
        [57073] = { parent = 22734 }, -- Drink
    [23605] = { type = BUFF_OTHER }, -- Nightfall, Spell Vulnerability
    [13494] = { type = BUFF_OFFENSIVE }, -- Manual Crowd Pummeler Haste buff

    -- Interrupts

    [15752] = { type = INTERRUPT, duration = 10 }, -- Linken's Boomerang Disarm
    [1119244] = { type = INTERRUPT, duration = 5 }, -- Spell Lock - Rank 1 (Ascension)
        [1119647] = { parent = 1119244, duration = 6 }, -- Spell Lock - Rank 2 (Ascension)
    [13491] = { type = INTERRUPT, duration = 5 }, -- Iron Knuckles
    [16979] = { type = INTERRUPT, duration = 4 }, -- Feral Charge (Druid)
    [1102139] = { type = INTERRUPT, duration = 8 }, -- Counterspell (Mage)
    [1766] = { type = INTERRUPT, duration = 5 }, -- Kick (Rogue)
        [1767] = { parent = 1766 },
        [1768] = { parent = 1766 },
        [1769] = { parent = 1766 },
        [38768] = { parent = 1766 },
    [26679] = { type = INTERRUPT, duration = 3 }, -- Deadly Throw
    [6552] = { type = INTERRUPT, duration = 4 }, -- Pummel
        [6554] = { parent = 6552 },
    [72] = { type = INTERRUPT, duration = 6 }, -- Shield Bash
        [1671] = { parent = 72 },
        [1672] = { parent = 72 },
        [29704] = { parent = 72 },
    [22570] = { type = INTERRUPT, duration = 3 }, -- Maim
    [29443] = { type = INTERRUPT, duration = 10 }, -- Clutch of Foresight

    -- Priest

    -- WoTLK
    [20711] = { type = BUFF_DEFENSIVE, },  -- Spirit of Redemption
    [47585] = { type = IMMUNITY, },  -- Dispersion
    [47788] = { type = BUFF_DEFENSIVE, },  -- Guardian Spirit
    [64044] = { type = CROWD_CONTROL, }, -- Psychic Horror (Horrify)
    [64058] = { type = CROWD_CONTROL, }, -- Psychic Horror (Disarm)
    [64843] = { type = BUFF_DEFENSIVE, },  -- Divine Hymn
    [64901] = { type = BUFF_DEFENSIVE, }, -- Hymn of Hope

    [17] = { type = BUFF_DEFENSIVE }, -- Power Word: Shield
        [592] = { parent = 17 }, -- Power Word: Shield
        [600] = { parent = 17 },
        [3747] = { parent = 17 },
        [6065] = { parent = 17 },
        [6066] = { parent = 17 },
        [10898] = { parent = 17 },
        [10899] = { parent = 17 },
        [10900] = { parent = 17 },
        [10901] = { parent = 17 },
        [1110901] = { parent = 17 },
    [605] = { type = CROWD_CONTROL }, -- Mind Control
        [10911] = { parent = 605 },
        [10912] = { parent = 605 },
    [8122] = { type = CROWD_CONTROL }, -- Psychic Scream
        [8124] = { parent = 8122 },
        [10888] = { parent = 8122 },
        [10890] = { parent = 8122 },
    [10060] = { type = BUFF_OFFENSIVE }, -- Power Infusion
    [15487] = { type = CROWD_CONTROL }, -- Silence
        [15362] = { parent = 14892 },
        [15363] = { parent = 14892 },
    [6346] = { type = BUFF_DEFENSIVE }, -- Fear Ward
    [9484] = { type = CROWD_CONTROL }, -- Shackle Undead
        [9485] = { parent = 9484 },
        [10955] = { parent = 9484 },
    [27827] = { type = IMMUNITY }, -- Spirit of Redemption
    [33206] = { type = BUFF_DEFENSIVE }, -- Pain Suppression
    [14751] = { type = BUFF_DEFENSIVE }, -- Inner Focus

    [113792] = { type = CROWD_CONTROL }, -- Psychic Terror (Psyfiend)
    -- [113275] = { type = ROOT }, -- Entangling Roots (Symbiosis)
    [114404] = { type = ROOT }, -- Void Tendril's Grasp
    [114239] = { type = IMMUNITY_SPELL }, -- Phantasm
    [88625] = { type = CROWD_CONTROL }, -- Holy Word: Chastise
    [760053] = { type = BUFF_OTHER }, -- Angelic Feather

    -- Warlock

    -- WoTLK
    [47241] = { type = BUFF_OFFENSIVE, }, -- Metamorphosis
    [47860] = { type = CROWD_CONTROL, },  -- Death Coil
    [47986] = { type = BUFF_OTHER, }, -- Sacrifice
    [47995] = { type = CROWD_CONTROL, }, -- Intercept (Felguard)
    [60995] = { type = CROWD_CONTROL, }, -- Demon Charge (Metamorphosis)

    [24259] = { type = CROWD_CONTROL }, -- Spell Lock Silence
    [6358] = { type = CROWD_CONTROL }, -- Seduction
    [5782] = { type = CROWD_CONTROL }, -- Fear
        [6213] = { parent = 5782 },
        [6215] = { parent = 5782 },
    [5484] = { type = CROWD_CONTROL }, -- Howl of Terror
        [17928] = { parent = 5484 },
    [710] = { type = CROWD_CONTROL }, -- Banish
        [18647] = { parent = 710 },
    [6789] = { type = CROWD_CONTROL }, -- Death Coil
        [17925] = { parent = 6789 },
        [17926] = { parent = 6789 },
        [27223] = { parent = 6789 },
    [6229] = { type = BUFF_DEFENSIVE }, -- Shadow Ward
        [11739] = { parent = 6229 },
        [11740] = { parent = 6229 },
        [28610] = { parent = 6229 },
    [7812] = { type = BUFF_DEFENSIVE }, -- Sacrifice
        [19438] = { parent = 7812 },
        [19440] = { parent = 7812 },
        [19441] = { parent = 7812 },
        [19442] = { parent = 7812 },
        [19443] = { parent = 7812 },
    [18223] = { type = ROOT }, -- Curse of Exhaustion
        [18310] = { parent = 18223 },
        [18313] = { parent = 18223 },
    [1714] = { type = ROOT }, -- Curse of Tongues
        [11719] = { parent =  1714 },
    [22703] = { type = CROWD_CONTROL }, -- Inferno Effect
    [30283] = { type = CROWD_CONTROL }, -- Shadowfury
        [30413] = { parent = 30283 },
        [30414] = { parent = 30283 },
        [47847] = { parent = 30283 },
    [43523] = { type = CROWD_CONTROL }, -- Unstable Affliction
        [31117] = { parent = 43523 },
    [30299] = { type = BUFF_DEFENSIVE }, -- Nether Protection
        [30301] = { parent = 30299 },
        [30302] = { parent = 30399 },
    [18708] = { type = BUFF_DEFENSIVE }, -- Fel Domination
    [32752] = { type = CROWD_CONTROL }, -- Summoning Disorientation
    [4511] = { type = IMMUNITY }, -- Phase Shift
    [19482] = { type = CROWD_CONTROL }, -- Doom Guard Stun
    [30153] = { type = CROWD_CONTROL }, -- Felguard Stun
        [30195] = { parent = 30153 },
        [30197] = { parent = 30153 },

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
    [80240] = { type = CROWD_CONTROL }, -- Havoc    

    -- Shaman

    -- WoTLK
    [1102825] = { type = BUFF_OFFENSIVE },  -- Bloodlust
    [16191] = { type = BUFF_OFFENSIVE }, -- Mana Tide Totem
    [32182] = { type = BUFF_OFFENSIVE },  -- Heroism
    [51514] = { type = CROWD_CONTROL, },  -- Hex
    [55277] = { type = BUFF_OTHER, }, -- Stoneclaw Totem (Absorb)
    [57994] = { type = INTERRUPT, duration = 2, },  -- Wind Shear
    [58861] = { type = CROWD_CONTROL, }, -- Bash (Spirit Wolf)
    [58875] = { type = BUFF_OTHER, }, -- Spirit Walk (Spirit Wolf)
    [63685] = { type = ROOT, }, -- Freeze (Enhancement)
    [64695] = { type = ROOT, }, -- Earthgrab (Elemental)

    [8178] = { type = IMMUNITY_SPELL }, -- Grounding Totem Effect
    [16188] = { type = BUFF_DEFENSIVE }, -- Nature's Swiftness
    [12548] = { type = ROOT }, -- Frost Shock
    [39796] = { type = CROWD_CONTROL }, -- Stoneclaw Totem
    [16166] = { type = BUFF_OFFENSIVE }, -- Elemental Mastery
    [30823] = { type = BUFF_DEFENSIVE }, -- Shamanistic Rage

    [118905] = { type = CROWD_CONTROL },  -- Static Charge (Capacitor Totem)
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
    [25771] = { type = BUFF_OTHER, }, -- Forbearance
    [31821] = { type = BUFF_DEFENSIVE, },  -- Aura Mastery
    [31852] = { type = BUFF_DEFENSIVE, },  -- Ardent Defender
    [48817] = { type = CROWD_CONTROL, }, -- Holy Wrath
    [54428] = { type = BUFF_OTHER, }, -- Divine Plea
    [58597] = { type = BUFF_OTHER, }, -- Sacred Shield Proc
    [59578] = { type = BUFF_OTHER, }, -- The Art of War
    [63529] = { type = CROWD_CONTROL, }, -- Silenced - Shield of the Templar
    [64205] = { type = BUFF_DEFENSIVE, }, -- Divine Sacrifice

    [1022] = { type = IMMUNITY },-- Blessing of Protection
        [5599] = { parent = 1022 },
        [10278] = { parent = 1022 },
    [642] = { type = IMMUNITY }, -- Divine Shield
        [498] = { parent = 642 },
        [1020] = { parent = 642 },
        [5573] = { parent = 642 },
    [853] = { type = CROWD_CONTROL }, -- Hammer of Justice
        [5588] = { parent = 853 },
        [5589] = { parent = 853 },
        [10308] = { parent = 853 },
    [1044] = { type = BUFF_DEFENSIVE }, -- Blessing of Freedom
    [20066] = { type = CROWD_CONTROL }, -- Repentance
    [20170] = { type = CROWD_CONTROL }, -- Seal of Justice stun
    [6940] = { type = BUFF_DEFENSIVE }, -- Blessing of Sacrifice
        [20729] = { parent = 6940 },
    [19753] = { type = IMMUNITY }, -- Divine Intervention
    [10326] = { type = CROWD_CONTROL }, -- Turn Evil
        [2878] = { parent = 10326 },
        [5627] = { parent = 10326 },
    [20216] = { type = BUFF_DEFENSIVE }, -- Divine Favor
    [31884] = { type = BUFF_OFFENSIVE }, -- Avenging Wrath
    [31842] = { type = BUFF_DEFENSIVE }, -- Divine Illumination

    [105421] = { type = CROWD_CONTROL }, -- Blinding Light
    [115752] = { type = CROWD_CONTROL }, -- Blinding Light (Glyph of Blinding Light)
    [105593] = { type = CROWD_CONTROL }, -- Fist of Justice
    [119072] = { type = CROWD_CONTROL }, -- Holy Wrath
    [145067] = { type = CROWD_CONTROL }, -- Turn Evil (Evil is a Point of View)
    [110300] = { type = ROOT }, -- Burden of Guilt
    [954500] = { type = CROWD_CONTROL }, -- Blinding Light
    [86371] = { type = BUFF_DEFENSIVE }, -- Guardian of Ancient Kings

    -- Hunter

    -- WoTLK
    [1742] = { type = BUFF_DEFENSIVE, }, -- Cower (Pet)
    [4167] = { type = ROOT, }, -- Web (Pet)
    [26064] = { type = BUFF_DEFENSIVE, }, -- Shell Shield (Pet)
    [26090] = { type = INTERRUPT, duration = 2, }, -- Pummel (Pet)
    [48999] = { type = ROOT, }, -- Counterattack
    [49012] = { type = CROWD_CONTROL, },  -- Wyvern Sting
    [53271] = { type = BUFF_DEFENSIVE, },  -- Master's Call
    [53359] = { type = CROWD_CONTROL, }, -- Chimera Shot - Scorpid (Disarm)
    [53476] = { type = BUFF_DEFENSIVE, }, -- Intervene (Pet)
    [53480] = { type = BUFF_DEFENSIVE, },  -- Roar of Sacrifice (Hunter Pet Skill)
    [53543] = { type = CROWD_CONTROL, }, -- Snatch (Pet Disarm)
    [53548] = { type = ROOT, }, -- Pin (Pet)
    [53562] = { type = CROWD_CONTROL, }, -- Ravage (Pet)
    [55509] = { type = ROOT, }, -- Venom Web Spray (Pet)
    [60210] = { type = CROWD_CONTROL, }, -- Freezing Arrow Effect

    [27046] = { type = BUFF_DEFENSIVE }, -- Mend Pet
    [13159] = { type = BUFF_OFFENSIVE }, -- Aspect of the Pack
        [5118] = { parent = 13159 }, -- Aspect of the Cheetah
    [1513] = { type = CROWD_CONTROL }, -- Scare Beast
        [14326] = { parent = 1513 },
        [14327] = { parent = 1513 },
    [3045] = { type = BUFF_OFFENSIVE }, -- Rapid Fire
    [19263] = { type = IMMUNITY }, -- Deterrence
    [19574] = { type = BUFF_OFFENSIVE }, -- Bestial Wrath
    [3355] = { type = CROWD_CONTROL }, -- Freezing Trap
        [14308] = { parent = 3355 },
        [14309] = { parent = 3355 },
    [19306] = { type = ROOT }, -- Counterattack Root
        [20909] = { parent = 19306 },
        [20910] = { parent = 19306 },
        [27067] = { parent = 19306 },
    [19386] = { type = CROWD_CONTROL }, --Wyvern Sting
        [24132] = { parent = 19386 },
        [24133] = { parent = 19386 },
        [27068] = { parent = 19386 },
    [19185] = { type = ROOT }, -- Entrapment
        [64803] = { parent = 19185 },
        [64804] = { parent = 19185 },
    [47168] = { type = ROOT }, -- Improved Wing Clip
    [19503] = { type = CROWD_CONTROL }, -- Scatter Shot
    [25999] = { type = ROOT }, -- Boar Charge
    [3034] = { type = ROOT }, -- Viper Sting
        [14279] = { parent = 3034 },
        [14280] = { parent = 3034 },
        [27018] = { parent = 3034 },
    [34490] = { type = CROWD_CONTROL }, -- Silencing Shot
    [34471] = { type = IMMUNITY_SPELL }, -- The Beast Within
    [5384] = { type = BUFF_DEFENSIVE }, -- Feign Death
    [24394] = { type = CROWD_CONTROL }, -- Intimidation
    [19577] = { type = BUFF_OFFENSIVE, parent = 24394 }, -- Intimidation (Buff)
    [19434] = { type = BUFF_OTHER }, -- Aimed Shot
        [20900] = { parent = 19434 },
        [20901] = { parent = 19434 },
        [20902] = { parent = 19434 },
        [20903] = { parent = 19434 },
        [20904] = { parent = 19434 },
        [27065] = { parent = 19434 },
        [49049] = { parent = 19434 },
        [49050] = { parent = 19434 },

    [117526] = { type = CROWD_CONTROL }, -- Binding Shot
    [128405] = { type = ROOT }, -- Narrow Escape
    [126246] = { type = CROWD_CONTROL }, -- Lullaby (Crane)
    [126355] = { type = CROWD_CONTROL }, -- Paralyzing Quill (Porcupine)
    [126423] = { type = CROWD_CONTROL }, -- Petrifying Gaze (Basilisk)
    [3674] = { type = BUFF_OFFENSIVE }, -- Black Arrow    

    -- Druid

    -- WoTLK
    [768] = { type = BUFF_OTHER, }, -- Cat Form
    [783] = { type = BUFF_OTHER, }, -- Travel Form
    [9634] = { type = BUFF_OTHER, }, -- Dire Bear Form
    [22842] = { type = BUFF_DEFENSIVE, },  -- Frenzied Regeneration
    [24858] = { type = BUFF_OTHER, }, -- Moonkin Form
    [33357] = { type = BUFF_OTHER, },  -- Dash
    --[33891] = { type = BUFF_OTHER, }, -- Tree of Life
    [49802] = { type = CROWD_CONTROL, },  -- Maim
    [49803] = { type = CROWD_CONTROL, },  -- Pounce
    [50334] = { type = BUFF_OFFENSIVE, },  -- Berserk
    [53201] = { type = BUFF_OFFENSIVE, }, -- Starfall
    [53308] = { type = ROOT, },  -- Entangling Roots
    [53312] = { type = BUFF_OTHER, }, -- Nature's Grasp
    [53313] = { type = ROOT, }, -- Entangling Roots (From Nature's Grasp)
    [61336] = { type = BUFF_DEFENSIVE, },  -- Survival Instincts
    [69369] = { type = BUFF_OFFENSIVE, }, -- Predator's Swiftness

    [22812] = { type = BUFF_DEFENSIVE }, -- Barkskin
    [339] = { type = ROOT }, -- Entangling Roots
        [1062] = { parent = 339 },
        [5195] = { parent = 339 },
        [5196] = { parent = 339 },
        [9852] = { parent = 339 },
        [9853] = { parent = 339 },
        [26989] = { parent = 339 },
        [19970] = { parent = 339 }, -- Nature's Grasp Rank 6
        [19971] = { parent = 339 }, -- Nature's Grasp Rank 5
        [19972] = { parent = 339 }, -- Nature's Grasp Rank 4
        [19973] = { parent = 339 }, -- Nature's Grasp Rank 3
        [19974] = { parent = 339 }, -- Nature's Grasp Rank 2
        [19975] = { parent = 339 }, -- Nature's Grasp Rank 1
        [27010] = { parent = 339 },
    [2637] = { type = CROWD_CONTROL }, -- Hibernate
        [18657] = { parent = 2637 },
        [18658] = { parent = 2637 },
    [1129166] = { type = BUFF_OFFENSIVE }, -- Innervate
    [9005] = { type = CROWD_CONTROL }, -- Pounce Stun
        [9823] = { parent = 9005 },
        [9827] = { parent = 9005 },
        [27006] = { parent = 9005 },
    [16922] = { type = CROWD_CONTROL }, -- Starfire Stun
    [5211] = { type = CROWD_CONTROL}, -- Bash
        [6798] = { parent = 5211 },
        [8983] = { parent = 5211 },
    -- [16979] = { type = ROOT }, -- Feral Charge TODO: invalid spellId, root effect must be different than the interrupt
    [1850] = { type = BUFF_OFFENSIVE }, -- Dash
        [9821] = { parent = 1850 },
    [16689] = { type = BUFF_OFFENSIVE }, -- Nature's Grasp Buff
        [16810] = { parent = 16689 },
        [16811] = { parent = 16689 },
        [16812] = { parent = 16689 },
        [16813] = { parent = 16689 },
        [17329] = { parent = 16689 },
    [770] = { type = BUFF_OTHER }, -- Faerie Fire
        [16857] = { parent = 770 }, -- Faerie Fire (Feral)
    [33786] = { type = CROWD_CONTROL }, -- Cyclone
    [19675] = { type = ROOT }, -- Feral Charge Effect
        [45334] = { parent = 19675 },
    [17116] = { type = BUFF_DEFENSIVE }, -- Nature's Swiftness

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
    [41425] = { type = BUFF_OTHER, }, -- Hypothermia
    [1100066] = { type = BUFF_OFFENSIVE, },  -- Invisibility
    [42950] = { type = CROWD_CONTROL, },  -- Dragon's Breath
    [43039] = { type = BUFF_OTHER, },  -- Ice Barrier
    [44544] = { type = BUFF_OFFENSIVE, }, -- Fingers of Frost
    [44572] = { type = CROWD_CONTROL, }, -- Deep Freeze
    [54748] = { type = BUFF_OFFENSIVE, }, -- Burning Determination (Interrupt/Silence Immunity)
    [1155021] = { type = CROWD_CONTROL, }, -- Improved Counterspell
    [64346] = { type = CROWD_CONTROL, }, -- Fiery Payback (Fire Mage Disarm)

    [118] = { type = CROWD_CONTROL }, -- Polymorph
        [12824] = { parent = 118 },
        [12825] = { parent = 118 },
        [12826] = { parent = 118 },
        [28270] = { parent = 118 },
        [28271] = { parent = 118 },
        [28272] = { parent = 118 },
        [71319] = { parent = 118 },
        [61305] = { parent = 118 },
        [61721] = { parent = 118 },
        [1112826] = { parent = 118 },

    [11426] = { type = BUFF_DEFENSIVE }, -- Ice Barrier
        [13031] = { parent = 11426 },
        [13032] = { parent = 11426 },
        [13033] = { parent = 11426 },
    [543] = { type = BUFF_DEFENSIVE }, -- Fire Ward
        [8457] = { parent = 543 },
        [8458] = { parent = 543 },
        [10223] = { parent = 543 },
        [10225] = { parent = 543 },
        [43010] = { parent = 543 },
    [6143] = { type = BUFF_DEFENSIVE }, -- Frost Ward
        [8461] = { parent = 6143 },
        [8462] = { parent = 6143 },
        [10177] = { parent = 6143 },
        [28609] = { parent = 6143 },
        [43012] = { parent = 6143 },
    [12494] = { type = ROOT }, -- Frostbite
    [122] = { type = ROOT }, -- Frost Nova
        [865] = { parent = 122 },
        [6131] = { parent = 122 },
        [10230] = { parent = 122 },
        [27088] = { parent = 122 },
        [42917] = { parent = 122 },
        [55080] = { parent = 122 }, -- Shattered Barrier
    [12042] = { type = BUFF_OFFENSIVE }, -- Arcane Power
    [45438] = { type = IMMUNITY }, -- Ice Block
    [1112051] = { type = BUFF_OFFENSIVE }, -- Evocation
    [1463] = { type = BUFF_DEFENSIVE }, -- Mana Shield
        [8494] = { parent = 1463 },
        [8495] = { parent = 1463 },
        [10191] = { parent = 1463 },
        [10192] = { parent = 1463 },
        [10193] = { parent = 1463 },
    [31661] = { type = CROWD_CONTROL }, -- Dragon's Breath
        [33041] = { parent = 31661 },
        [33042] = { parent = 31661 },
        [33043] = { parent = 31661 },
        [1133043] = { parent = 31661 },
    [1112043] = { type = BUFF_OFFENSIVE }, -- Presence of Mind
    [33395] = { type = ROOT }, -- Freeze
    [12472] = { type = BUFF_OFFENSIVE }, -- Icy Veins

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
    [51690] = { type = BUFF_OFFENSIVE, },  -- Killing Spree
    [51713] = { type = BUFF_OFFENSIVE, }, -- Shadow Dance
    [51722] = {type = CROWD_CONTROL, }, -- Dismantle
    [51724] = { type = CROWD_CONTROL, },  -- Sap

    [18425] = { type = CROWD_CONTROL }, -- Improved Kick
    [13750] = { type = BUFF_OFFENSIVE}, -- Adrenaline Rush
    [13877] = { type = BUFF_OFFENSIVE}, -- Blade Flurry
    [1180000] = { type = BUFF_OFFENSIVE}, -- Shadow Blades
    [1833] = { type = CROWD_CONTROL }, -- Cheap Shot
    [408] = { type = CROWD_CONTROL }, -- Kidney Shot
        [8643] = { parent = 408 },
    [2070] = { type = CROWD_CONTROL }, -- Sap
        [6770] = { parent = 2070 },
        [11297] = { parent = 2070 },
    [2094] = { type = CROWD_CONTROL }, -- Blind
    [2983] = { type = BUFF_OFFENSIVE }, -- Sprint
        [8696] = { parent = 2983 },
        [11305] = { parent = 2983 },
    [5277] = { type = BUFF_DEFENSIVE }, -- Evasion
        [26669] = { parent = 5277 },
    [1776] = { type = CROWD_CONTROL }, -- Gouge
        [1777] = { parent = 1776 },
        [8629] = { parent = 1776 },
        [11285] = { parent = 1776 },
        [11286] = { parent = 1776 },
        [38764] = { parent = 1776 },
    [14278] = { type = BUFF_DEFENSIVE }, -- Ghostly Strike
    [3409] = { type = ROOT }, -- Crippling Poison
        [11201] = { parent = 3409 },
    [1330] = { type = CROWD_CONTROL }, -- Garrote Silence
    [31224] = { type = IMMUNITY_SPELL }, -- Cloak of Shadows
    [45182] = { type = BUFF_DEFENSIVE }, -- Cheating Death
    [14177] = { type = BUFF_OFFENSIVE }, -- Cold Blood
    [14251] = { type = BUFF_OTHER }, -- Riposte (Rogue)
    [13218] = { type = BUFF_OTHER }, -- Wound Poison
        [13222] = { parent = 13218 }, -- Wound Poison II
        [13223] = { parent = 13218 }, -- Wound Poison III
        [13224] = { parent = 13218 }, -- Wound Poison IV
        [27189] = { parent = 13218 }, -- Wound Poison V
        [57974] = { parent = 13218 }, -- Wound Poison VI
        [57975] = { parent = 13218 }, -- Wound Poison VII

    [114018] = { type = BUFF_OTHER }, -- Shroud of Concealment
    [954501] = { type = BUFF_OTHER }, -- Smoke Bomb    

    -- Warrior

    -- WoTLK
    [71] = { type = BUFF_OTHER }, -- Defensive Stance
    [2457] = { type = BUFF_OTHER }, -- Battle Stance
    [2458] = { type = BUFF_OTHER }, -- Berserker Stance
    [2565] = { type = BUFF_DEFENSIVE }, -- Shield Block
    [3411] = { type = BUFF_DEFENSIVE },  -- Intervene
    [12975] = { type = BUFF_DEFENSIVE },  -- Last Stand
    [46924] = { type = IMMUNITY, },  -- Bladestorm
    [46968] = { type = CROWD_CONTROL, },  -- Shockwave
    [55694] = { type = BUFF_DEFENSIVE },  -- Enraged Regeneration
    [60503] = { type = BUFF_OFFENSIVE, }, -- Taste for Blood
    [64849] = { type = BUFF_OFFENSIVE, }, -- Unrelenting Assault (1/2)
    [65925] = { type = BUFF_OFFENSIVE, }, -- Unrelenting Assault (2/2)
	[58373] = { type = ROOT }, -- Glyph of Hamstring

    [18498] = { type = CROWD_CONTROL }, -- Improved Shield Bash
    [20230] = { type = IMMUNITY }, -- Retaliation
    [1719] = { type = BUFF_OFFENSIVE }, -- Recklessness
    [871] = { type = BUFF_DEFENSIVE }, -- Shield Wall
    [12292] = { type = BUFF_OFFENSIVE }, -- Death Wish
    [23694] = { type = ROOT }, -- Improved Hamstring
    [18499] = { type = BUFF_OFFENSIVE }, -- Berserker Rage
    [20253] = { type = CROWD_CONTROL }, -- Intercept Stun
        [20614] = { parent = 20253 },
        [20615] = { parent = 20253 },
        [25273] = { parent = 20253 },
        [25274] = { parent = 20253 },
    [12798] = { type = CROWD_CONTROL }, -- Revenge Stun
    [12809] = { type = CROWD_CONTROL }, -- Concussion Blow
    [7922] = { type = CROWD_CONTROL }, -- Charge Stun
    [5530] = { type = CROWD_CONTROL }, -- Mace Spec Stun (Warrior & Rogue)
    [5246] = { type = CROWD_CONTROL }, -- Intimidating Shout
        [20511] = { parent = 5246 },
    [676] = { type = BUFF_OTHER }, -- Disarm
    [23920] = { type = IMMUNITY_SPELL }, -- Spell Reflection
    [12976] = { type = BUFF_DEFENSIVE }, -- Last Stand
    [56112] = { type = BUFF_OTHER }, -- Furious Attacks
    [12294] = { type = BUFF_OTHER }, -- Mortal Strike
        [21551] = { parent = 12294 },
        [21552] = { parent = 12294 },
        [21553] = { parent = 12294 },
        [25248] = { parent = 12294 },
        [30330] = { parent = 12294 },
        [47485] = { parent = 12294 },
        [47486] = { parent = 12294 },

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
    [86361] = { type = BUFF_OFFENSIVE }, -- Colossus Smash

}