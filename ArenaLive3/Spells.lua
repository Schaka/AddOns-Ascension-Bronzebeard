ArenaLive.spellDB = {
			["Trinket"] = { 142292, 120 }, -- SpellID and cooldown of the PvP-Trinket
			["Racials"] = {
				-- First Number is the SpellID, 2nd one is the CD and 3rd is the shared CD with the PvP-Trinket. Use 0 if they don't have a shared CD.
				["Human"] =  { 1159752, 120, 0 },
				["Dwarf"] = { 1120594, 120, 0 },
				["NightElf"] = { 1158984, 120, 0}, -- Shadowmeld
				["Gnome"] = { 1120589, 90, 0 },
				["Draenei"] = { 1128880, 180, 0},
				["Orc"] = { 1120572, 120, 0 }, -- Since Orcs also have class-specific racials, we need to add all of them
				["Scourge"] = { 117744, 120, 0 },
				["Tauren"] = { 1120549, 120, 0 },
				["Troll"] = { 1126297, 180, 0 },
				["BloodElf"] = {
					["PALADIN"] = { 1128730, 120, 0 },
					["HUNTER"] = { 1128730, 120, 0},
					["ROGUE"] = { 1125046, 120, 0 },
					["PRIEST"] = { 1128730, 120, 0 },
					["MAGE"] = { 1128730, 120, 0 },
					["WARLOCK"] = { 1128730, 120, 0 },
				},
			},
			["CooldownResets"] = {
				[1111958] = {				-- Mage: Cold Snap
					[1100120] = true,			-- Cone of Cold
					[1100122] = true,			-- Frost Nova
					[1145438] = true,			-- Ice Block
				},
				[1114185] = {				-- Rogue: Preparation
					[1102983] = true,
					[1101856] = true,
					[1105277] = true,
				},
			},			
			["CCIndicator"] = { -- This table is used to track those spells, that are shown in the cc indcator.
				-- The order is [spellID] = Priority-Type.

				-- Racials
				[1120594] = "usefulBuffs",    -- Stoneform
				[1120549] = "stun",           -- War Stomp
				[1128730] = "silence",        -- Arcane Torrent
				[1125046] = "silence",        -- Arcane Torrent
				[1150613] = "silence",        -- Arcane Torrent
				[129597] = "silence",        -- Arcane Torrent

				-- Other
				[13099] = "root", -- Net-o-Matic
				[13119] = "root", -- Net-o-Matic
				[13120] = "root", -- Net-o-Matic
				[13138] = "root", -- Net-o-Matic
				[13139] = "root", -- Net-o-Matic
				[16566] = "root", -- Net-o-Matic
				[23723] = "offCD", -- Mind Quickening Gem
				[30456] = "defCD", -- Nigh-Invulnerability
				[30457] = "crowdControl", -- Complete Vulnerability
				[23451] = "offCD", -- Battleground Speed buff
				[23493] = "defCD", -- Battleground Heal buff
				[23505] = "offCD", -- Battleground Damage buff
				[6615] = "offCD", -- Free Action Potion
				[24364] = "offCD", -- Living Action Potion
				[3169] = "defCD", -- Limited Invulnerability Potion
				[16621] = "defCD", -- Invulnerable Mail
				[1090] = "crowdControl", -- Magic Dust
				[13327] = "crowdControl", -- Reckless Charge
				[835] = "crowdControl", -- Tidal Charm
				[11359] = "offCD", -- Restorative Potion
				[5024] = "offCD", -- Skull of Impending Doom
				[2379] = "offCD", -- Swiftness Potion
				[5134] = "crowdControl", -- Flash Bomb
				[23097] = "offCD", -- Fire Reflector
				[23131] = "offCD", -- Frost Reflector
				[23132] = "offCD", -- Shadow Reflector
				[19769] = "crowdControl", -- Thorium Grenade
				[4068] = "crowdControl", -- Iron Grenade
				[23506] = "defCD", -- Arena Grand Master trinket
				[29506] = "defCD", -- Burrower's Shell trinket
				[12733] = "offCD", -- Blacksmith trinket, Fear immunity
				[15753] = "crowdControl", -- Linken's Boomerang Stun
				[14530] = "offCD", -- Nifty Stopwatch
				[13237] = "crowdControl", -- Goblin Mortar trinket
				[14253] = "offCD", -- Black Husk Shield
				[9175] = "offCD", -- Swift Boots
				[13141] = "offCD", -- Gnomish Rocket Boots
				[8892] = "offCD", -- Goblin Rocket Boots
				[9774] = "offCD", -- Spider Belt & Ornate Mithril Boots
				[18798] = "crowdControl", -- Freezing Band
				[22734] = "usefulBuffs", -- Drink
				[46755] = "usefulBuffs", -- Drink
				[27089] = "usefulBuffs", -- Drink
				[43183] = "usefulBuffs", -- Drink
				[57073] = "usefulBuffs", -- Drink
				[23605] = "usefulBuffs", -- Nightfall, Spell Vulnerability
				[13494] = "offCD", -- Manual Crowd Pummeler Haste buff

				-- Druid
				[33786] = "defCD",		-- Cyclone (Made that one a def CD, because the enemy is immune to everything during cyclone)
				[102795] = "stun",			-- Bear Hug
				[22570] = "stun",			-- Maim
				[8983] = "stun",			-- Bash
				[27006] = "stun",			-- Pounce (stun)
				[18658] = "crowdControl",	-- Hibernate R3
				[339] = "root",				-- Entangling roots
				[9853] = "root",			-- Entangling roots max rank
				[45334] = "root",			-- Feral Charge (root)
				[16689] = "defCD", 		    -- Nature's Grasp
				[29166] = "usefulBuffs", 	-- Innervate
				[110617] = "defCD",			-- Deterrence (Symbiosis)
				[5211] = "stun",			-- Mighty Bash
				[9005] = "stun",			-- Pounce (stun)
				[102546] = "stun",			-- Pounce (stun, maybe the nonferalversion or something)
				[113801] = "stun",			-- Bash (Treant)
				[78675] = "silence",		-- Solar Beam
				[114238] = "silence",		-- Fae Silence (Glyph of Fae Silence)
				[2637] = "crowdControl",	-- Hibernate
				[19975] = "root",			-- Entangling roots (Nature's Grasp)
				[113770] = "root",			-- Treant root
				[16979] = "root",			-- Feral Charge (root)
				[102359] = "root",			-- Mass Entanglement
				[106951] = "offCD",			-- Berserk
				[108291] = "offCD", 		-- Heart of the Wild
				[108292] = "offCD", 		-- Heart of the Wild
				[108293] = "offCD", 		-- Heart of the Wild
				[108294] = "offCD", 		-- Heart of the Wild
				[132158] = "offCD", 		-- Nature's Swiftness
				[22812] = "defCD", 		    -- Barkskin
				[770] = "usefulDebuffs",    -- Faerie Fire
				[16857] = "usefulDebuffs", 	-- Faerie Fire
				[1850] = "usefulBuffs", 	-- Dash
				[122291] = "defCD", 	    -- Unending Resolve

				-- Hunter
				[5384] = "defCD",		-- Feign Death
				[19263] = "defCD",		-- Deterrence
				[19577] = "stun",		-- Intimidation (stun)
				[90337] = "stun",		-- Bad Manner (Monkey Pet)
				[34490] = "silence",		-- Silencing Shot
				[3355] = "crowdControl",	-- Freezing Trap R1
				[14309] = "crowdControl",	-- Freezing Trap R3
				[19503] = "crowdControl",	-- Scatter Shot
				[19386] = "crowdControl",	-- Wyvern Sting
				[1513] = "crowdControl",	-- Scare Beast R1
				[14327] = "crowdControl",	-- Scare Beast R3
				[19185] = "root",		-- Entrapment (trap-roots)
				[34692] = "usefulBuffs",	-- The Beast Within (Hunter)
				[136] = "usefulBuffs",		-- Mend Pet
				[80003] = "usefulDebuffs",	-- Black Arrow
				[3045] = "offCD",	        -- Rapid Fire
				[117526] = "stun",			-- Binding Shot
				[131894] = "usefulBuffs",	-- Murder of Crows
				[128405] = "root",			-- Narrow Escape
				[19574] = "offCD",	        -- Beastial Wrath
				[53480] = "usefulBuffs",	-- Roar of Sacrifice
				[126246] = "stun",			-- Lullaby (Crane Pet)
				[126423] = "stun",			-- Petrifying Gaze (Basilisk Pet)
				[126355] = "stun",			-- Paralyzing Quill (Porcupine Pet)
				[56626] = "stun",			-- Sting (Wasp Pet)
				[50519] = "stun",			-- Sonic Blast (Bat Pet)
				[96201] = "stun",			-- Web Wrap (Spider-Pet Stun)
				[50541] = "disarm",			-- Clench (Scorpid Pet)
				[91644] = "disarm",			-- Snatch (Bird of Prey Pet)
				[53148] = "root",			-- Charge (Tenacity Pet)
				[64803] = "root",			-- Entrapment (trap-roots)
				[136634] = "root",			-- Narrow Escape
				[50245] = "root";			-- Pin (Crab Pet)
				[90327] = "root",			-- Lock Jaw (Dog Pet)
				[4167] = "root",			-- Web (Spider Pet)
				[54706] = "root",			-- Venom Web Spray (Silithid Pet)
				[90361] = "usefulBuffs",	-- Spirit Mend (Spirit Pet)
				[53271] = "defCD",			-- Master's Call
				[62305] = "defCD",			-- Master's Call

				-- Mage
				[45438] = "defCD",		-- Ice Block
				[12472] = "offCD",		-- Icy Veins
				[18469] = "silence",		-- Counterspell silence
				[118] = "crowdControl",		-- Standard Polymorph R1
				[28272] = "crowdControl",	-- Polymorph Pig
				[28271] = "crowdControl",	-- Polymorph Turtle
				[33043] = "crowdControl",	-- Dragon's Breath
				[122] = "root",			-- Frost Nova R1
				[33395] = "root",		-- Freeze (Pet Nova)
				[115760] = "defCD",			-- Glyph of Ice Block
				[115610] = "defCD",			-- Temporal Shield
				[44461] = "usefulDebuffs", 	-- Living Bomb
				[102051] = "stun",			-- Frost Jaw
				[118271] = "stun",			-- Combustion stun
				[44572] = "stun",			-- Deep Freeze
				[55021] = "silence",		-- Counterspell silence
				[61305] = "crowdControl",	-- Polymorph Cat
				[61721] = "crowdControl",	-- Polymorph Rabbit
				[61780] = "crowdControl",	-- Polymorph Turkey
				[82691] = "crowdControl",	-- Ring of Frost
				[31661] = "crowdControl",	-- Dragon's Breath
				[111340] = "root",			-- Ice Ward Root
				[1436397] = "offCD",	    -- Alter Time
				[111264] = "usefulBuffs",	-- Ice Ward (buff)
				[44544] = "usefulBuffs",	-- Fingers of Frost
				[11426] = "usefulBuffs",	-- Ice Barrier
				[12043] = "usefulBuffs",	-- Presence of Mind
				[11071] = "root", 			-- Frostbite

				-- Paladin
				[1020] = "defCD",		-- Divine Shield
				[31884] = "offCD",		-- Avenging Wrath
				[10308] = "stun",		-- Hammer of Justice
				[119072] = "stun",		-- Holy Wrath
				[31935] = "silence",		-- Avenger's Shield
				[10326] = "crowdControl",	-- Turn Evil
				[20066] = "crowdControl",	-- Repentance
				[10278] = "defCD", 		-- Blessing of Protection
				[1044] = "usefulBuffs", 	-- Blessing of Freedom
				[6940] = "usefulBuffs", 	-- Blessing of Sacrifice
				[498] = "defCD",			-- Divine Protection
				[642] = "defCD",			-- Divine Shield
				[54428] = "usefulBuffs",	-- Divine Plea
				[20170] = "usefulDebuffs",	-- Seal of Justice slow
				[105593] = "stun",			-- Fist of Justice
				[853] = "stun",				-- Hammer of Justice
				[145067] = "crowdControl",	-- Turn Evil
				[115750] = "crowdControl",	-- Blinding Light
				[105421] = "crowdControl",	-- Blinding Light
				[115752] = "crowdControl",	-- Blinding Light
				[1022] = "defCD",           -- Hand of Protection
				[31821] = "usefulBuffs",    -- Aura Mastery
				[31850] = "defCD",          -- Ardent Defender
				[31842] = "usefulBuffs",    -- Divine Favor
				[86659] = "usefulBuffs",    -- Guardian of Ancient Kings
				[105809] = "offCD",         -- Holy Avenger

				-- Priest
				[33206] = "defCD",		-- Pain Suppression
				[10060] = "offCD",		-- Power Infusion
				[15487] = "silence",		-- Silence
				[8122] = "crowdControl",	-- Psychic Scream
				[10912] = "crowdControl",	-- Mind Control
				[6346] = "usefulBuffs",		-- Fear Ward
				[17] = "usefulBuffs",	    -- Power Word: Shield
				[64843] = "usefulBuffs",	-- Divine Hymn
				[64901] = "usefulBuffs",	-- Hymn of Hope
				[47788] = "defCD",			-- Guardian Spirit
				[47585] = "defCD",			-- Dispersion
				[64044] = "stun",			-- Psychic Horror
				[87204] = "crowdControl",	-- Sin and Punishment(Vampiric Touch dispel fear)
				[113792] = "crowdControl",	-- Psychic Terror (Psyfiend)
				[605] = "crowdControl",		-- Dominate Mind
				[88625] = "crowdControl",	-- Holy Word: Chastise
				[9484] = "crowdControl",	-- Shackle Undead
				[114404] = "root",			-- Void Tendrils
				[87194] = "root",			-- Glyph of Mindblast
				[34914] = "usefulDebuffs",	-- Vampiric Touch

				-- Rogue	
				[45182] = "defCD",		-- Cheating Death
				[26669] = "defCD",		-- Evasion
				[31224] = "defCD",		-- Cloak of Shadows
				[8643] = "stun", 		-- Kidney Shot
				[1833] = "stun",		-- Cheap Shot
				[1330] = "silence",		-- Garrote - Silence
				[2094] = "crowdControl", 	-- Blind
				[1776] = "crowdControl", 	-- Gouge
				[11297] = "crowdControl", 	-- Sap
				[5277] = "defCD",			-- Evasion
				[121471] = "offCD",			-- Shadow Blades
				[13750] = "offCD",			-- Adrenaline Rush
				[51690] = "offCD",			-- Killing Spree
				[51713] = "offCD",			-- Shadow Dance
				[408] = "stun", 			-- Kidney Shot
				[1966] = "usefulBuffs",		-- Feint
				[74001] = "defCD",			-- Combat Readiness
				[57933] = "usefulBuffs",	-- Tricks
				[76577] = "usefulBuffs",	-- Smokebomb
				[113953] = "stun",			-- Paralysis (Paralitic Poison Stun)
				[6770] = "crowdControl", 	-- Sap
				[51722] = "disarm", 		-- Dismantle
				[115197] = "root", 			-- Partial Paralysis (Paralitic Poison Shiv)
				[84747] = "usefulBuffs",	-- Deep Insight (30% damage)

				-- Shaman
				[16166] = "offCD",		-- Elemental Mastery
				[32182] = "usefulBuffs", 	-- Heroism
				[2825] = "usefulBuffs", 	-- Bloodlust
				[8178] = "defCD",		-- Grounding Totem
				[113288] = "silence", 		-- Solar Beam (Symbiosis
				[16191] = "usefulBuffs", 	-- Mana Tide
				[5394] = "usefulBuffs", 	-- Healing Stream
				[119523] = "usefulBuffs", 	-- Healing Stream
				[79206] = "usefulBuffs",	-- Spiritwalker's Grace
				[30823] = "defCD",			-- Shamanistic Rage
				[108281] = "defCD",			-- Ancestral Guidance
				[108271] = "defCD",			-- Astral Shift
				[114050] = "defCD",			-- Ascendance
				[114051] = "defCD",			-- Ascendance
				[114052] = "defCD",			-- Ascendance
				[114893] = "defCD",			-- Ancestral Swiftness
				[120676] = "offCD",			-- Stormlash Totem Effect
				[118905] = "stun",			-- Static Charge
				[118345] = "stun",			-- Pulverize (Primal Earth Elemental)
				[114896] = "usefulBuffs",	-- Windwalk
				[77505] = "stun",			-- Earthquake Stun
				[51514] = "crowdControl",	-- Hex
				[76780] = "crowdControl",	-- Bind Elemental
				[63685] = "root",			-- Frost Shock (including Frozen Power)
				[64695] = "root",			-- Earthgrab Totem
				[16188] = "defCD",			-- NS
				[58861] = "stun",			-- Bash (Spirit Wolf)

				-- Warlock
				[710] = "defCD",		-- Banish (It is marked as def CD for the same reason as Cyclone)
				[27223] = "stun",		-- Mortal Coil
				[30414] = "stun",		-- Shadowfury
				[19647] = "silence",		-- Spell lock (Pet-silence)
				[17928] = "crowdControl",	-- Howl of Terror
				[5782] = "crowdControl",	-- Fear
				[6358] = "crowdControl",	-- Seduce (Pet-Charm)
				[30405] = "usefulDebuffs",	-- Unstable Affliction
				[113858] = "offCD",			-- Dark Soul: Instability
				[113861] = "offCD",			-- Dark Soul: Knowledge
				[113860] = "offCD",			-- Dark Soul: Misery
				[6789] = "stun",			-- Mortal Coil
				[30283] = "stun",			-- Shadowfury
				[89766] = "stun",			-- Axe Toss	(Pet-stun)
				[22703] = "stun",			-- Infernal Awakening
				[24259] = "silence",		-- Spell lock (Pet-silence)
				[1119647] = "silence",		-- Spell lock (Pet-silence)
				[115782] = "silence",		-- Optical Blast (Pet-silence)
				[31117] = "silence",		-- Unstable Affliction (silence)
				[111397] = "defCD", 	    -- Blood Horror (buff)
				[137143] = "crowdControl",	-- Blood Horror
				[5484] = "crowdControl",	-- Howl of Terror
				[130616] = "crowdControl",	-- Fear (Glyph)
				[118699] = "crowdControl",	-- Fear
				[115268] = "crowdControl",	-- Mesmerize (Pet-Charm)
				[115782] = "silence",	    -- Optical Blast
				[30108] = "usefulDebuffs",	-- Unstable Affliction
				[104773] = "defCD",	        -- Unending Resolve
				[110913] = "defCD",	        -- Dark Bargain

				-- Warrior
				[871] = "defCD",		-- Shield Wall
				[1719] = "offCD",		-- Recklessness
				[7922] = "stun",		-- Charge Stun
				[12798] = "stun",		-- Revenge Stun
				[12809] = "stun", 		-- Concussion Blow
				[5246] = "crowdControl",	-- Intimidating Shout
				[676] = "disarm",		-- Disarm
				[18499] = "usefulBuffs",	-- Berserker Rage
				[23920] = "usefulBuffs",	-- Spell Reflection
				[12292] = "usefulBuffs", 	-- Death Wish
				[3411] = "usefulBuffs", 	-- Intervene
				[25274] = "stun", 	-- Intercept Stun
				[114206] = "usefulBuffs", -- Skull Banner
				[118895] = "crowdControl", -- Dragon Roar
				[20511] = "crowdControl", -- Intimidating Shout (targeted)
				[12975] = "defCD", -- Last Stand
				[114028] = "usefulBuffs", -- Mass Spell Reflection
				[46968] = "crowdControl", -- Shockwave
				[132168] = "crowdControl",	-- Shockwave
				[97462] = "defCD", -- Rallying Cry
				[97463] = "defCD", -- Rallying Cry
				[105771] = "root", -- Charge (Warrior)
				[107566] = "root", -- Staggering Shout
				[107574] = "offCD", -- Avatar
				[118038] = "defCD", -- Die by the Sword
				[107570] = "stun", -- Storm Bolt
				[132169] = "stun", -- Storm Bolt
				[1572740] = "stun", -- Storm Bolt
				[55694]	= "defCD", -- Enraged Regeneration
				[114029] = "defCD", -- Safeguard
				[114030] = "defCD", -- Vigilance
				[34784] = "defCD", -- Intervene
				[147833] = "defCD", -- Intervene
				[46924] = "offCD", -- Bladestorm
				[18498] = "silence", -- Silenced - Gag Order (PvE only)
				[2457] = "usefulBuffs", -- Battle Stance
				[2458] = "usefulBuffs", -- Berserker Stance
				[71] = "usefulBuffs", -- Defensive Stance
			},

			["FilteredSpells"] = { --[[This list blocks spells that cause bugs in the casthistory.]]--
					[75] = "Auto Shot", -- For every autoshot a hunter casts, the cast history will create a button. So we filter it.
					[5374] = "Mutilate", -- The real Mutilate-Spell triggers these two spells. We don't need to show all three of them in the CastHistory, so we block them too.
					[27576] = "Mutilate Off-Hand",
					[836] = "LOGINEFFECT",
			},
			["DefensiveCooldowns"] = {
				["DRUID"] = {
					[22812] = 60,		-- Barkskin
				},
				["HUNTER"] = {
					[19263] = 180		-- Deterrence
				},
				["MAGE"] = {
					[45438] = 300,		-- Ice Block
				},
				["PALADIN"] = {
					[642] = 300,		-- Divine Shield
				},
				["PRIEST"] = {
					[33206] = 120,		-- Pain Suppression (with Setbonus)
				},
				["ROGUE"] = {
					[5277] = 120,		-- Evasion
				},
				["SHAMAN"] = {
					[30823] = 60,		-- Shamanistic Rage
				},
				["WARRIOR"] = {
				},
				["WARLOCK"] = {
				},
			},
			["ShownBuffs"] = { -- I've decided to just show certain Buffs on the Buff-frame. Here is the List.
			},
		["Dispels"] = {
		},
		["Interrupts"] = {
			-- TO DO: SPEC SPECIFIC SPELLS
			["DRUID"] = { 1116979, 15, false }, 		-- Feral Charge - Bear
			["HUNTER"] = { 1134490, 20, false }, 		-- Silencing Shot
			["MAGE"] = { 1102139, 24, false }, 		-- Counter Spell
			["PALADIN"] = { 1110308, 45, false }, 	-- HoJ
			["PRIEST"] = { 1110890, 27, false }, 		-- Purify
			["ROGUE"] = { 111766, 10, false }, 		-- Kick
			["WARRIOR"] = { 116554, 10, false },		-- Pummel
			["SHAMAN"] = { 1157994, 6, false },		-- Wind Shear
			["WARLOCK"] = { 1119647, 24, false },	
		},
		["SharedCooldowns"] = {
			[1159752] = { 142292, 120 }, -- PvP trinket
			[1159752] = { 1165547, 120 }, -- PvP trinket
			[1159752] = { 1142292, 120 }, -- PvP trinket
			[1106552] = { 1100072, 10 }, -- Pummel -> Shield Bash
			[1100072] = { 1106552, 10 }, -- Shield Bash -> Pummel
		},
		["DiminishingReturns"] =
		{
			
			-- strict means the actual spell needs to match by ID, for specific cases

			[1149203] = { type = "incapacitate" }, -- Hungering Cold
			[1102637] = { type = "incapacitate" }, -- Hibernate (Rank 1)
			[1118657] = { type = "incapacitate" }, -- Hibernate (Rank 2)
			[1118658] = { type = "incapacitate" }, -- Hibernate (Rank 3)
			[1160210] = { type = "incapacitate" }, -- Freezing Arrow Effect (Rank 1)
			[1103355] = { type = "incapacitate" }, -- Freezing Trap Effect (Rank 1)
			[1114308] = { type = "incapacitate" }, -- Freezing Trap Effect (Rank 2)
			[1114309] = { type = "incapacitate" }, -- Freezing Trap Effect (Rank 3)
			[1119386] = { type = "incapacitate" }, -- Wyvern Sting (Rank 1)
			[1124132] = { type = "incapacitate" }, -- Wyvern Sting (Rank 2)
			[1124133] = { type = "incapacitate" }, -- Wyvern Sting (Rank 3)
			[1127068] = { type = "incapacitate" }, -- Wyvern Sting (Rank 4)
			[1149011] = { type = "incapacitate" }, -- Wyvern Sting (Rank 5)
			[1149012] = { type = "incapacitate" }, -- Wyvern Sting (Rank 6)
			[1100118] = { type = "incapacitate" }, -- Polymorph (Rank 1)
			[1112824] = { type = "incapacitate" }, -- Polymorph (Rank 2)
			[1112825] = { type = "incapacitate" }, -- Polymorph (Rank 3)
			[1112826] = { type = "incapacitate" }, -- Polymorph (Rank 4)
			[1128271] = { type = "incapacitate" }, -- Polymorph: Turtle
			[1128272] = { type = "incapacitate" }, -- Polymorph: Pig
			[1161721] = { type = "incapacitate" }, -- Polymorph: Rabbit
			[1161780] = { type = "incapacitate" }, -- Polymorph: Turkey
			[1161305] = { type = "incapacitate" }, -- Polymorph: Black Cat
			[1120066] = { type = "incapacitate" }, -- Repentance
			[1101776] = { type = "incapacitate" }, -- Gouge
			[1106770] = { type = "incapacitate" }, -- Sap (Rank 1)
			[1102070] = { type = "incapacitate" }, -- Sap (Rank 2)
			[1111297] = { type = "incapacitate" }, -- Sap (Rank 3)
			[1151724] = { type = "incapacitate" }, -- Sap (Rank 4)
			[1100710] = { type = "incapacitate" }, -- Banish (Rank 1)
			[1118647] = { type = "incapacitate" }, -- Banish (Rank 2)
			[1109484] = { type = "incapacitate" }, -- Shackle Undead (Rank 1)
			[1109485] = { type = "incapacitate" }, -- Shackle Undead (Rank 2)
			[1110955] = { type = "incapacitate" }, -- Shackle Undead (Rank 3)
			[1151514] = { type = "incapacitate" }, -- Hex
			[1113327] = { type = "incapacitate" }, -- Reckless Charge (Rocket Helmet)
			[1104064] = { type = "incapacitate" }, -- Rough Copper Bomb
			[1104065] = { type = "incapacitate" }, -- Large Copper Bomb
			[1104066] = { type = "incapacitate" }, -- Small Bronze Bomb
			[1104067] = { type = "incapacitate" }, -- Big Bronze Bomb
			[1104068] = { type = "incapacitate" }, -- Iron Grenade
			[1112421] = { type = "incapacitate" }, -- Mithril Frag Bomb
			[1104069] = { type = "incapacitate" }, -- Big Iron Bomb
			[1112562] = { type = "incapacitate" }, -- The Big One
			[1112543] = { type = "incapacitate" }, -- Hi-Explosive Bomb
			[1119769] = { type = "incapacitate" }, -- Thorium Grenade
			[1119784] = { type = "incapacitate" }, -- Dark Iron Bomb
			[1130216] = { type = "incapacitate" }, -- Fel Iron Bomb
			[1130461] = { type = "incapacitate" }, -- The Bigger One
			[1130217] = { type = "incapacitate" }, -- Adamantite Grenade
			[1167769] = { type = "incapacitate" }, -- Cobalt Frag Bomb
			[1167890] = { type = "incapacitate" }, -- Cobalt Frag Bomb (Frag Belt)
			[1154466] = { type = "incapacitate" }, -- Saronite Grenade

			[1147481] = { type = "stun" }, -- Gnaw (Ghoul Pet)
			[1105211] = { type = "stun" }, -- Bash (Rank 1)
			[1106798] = { type = "stun" }, -- Bash (Rank 2)
			[1108983] = { type = "stun" }, -- Bash (Rank 3)
			[1122570] = { type = "stun" }, -- Maim (Rank 1)
			[1149802] = { type = "stun" }, -- Maim (Rank 2)
			[1124394] = { type = "stun" }, -- Intimidation
			[1150519] = { type = "stun" }, -- Sonic Blast (Pet Rank 1)
			[1153564] = { type = "stun" }, -- Sonic Blast (Pet Rank 2)
			[1153565] = { type = "stun" }, -- Sonic Blast (Pet Rank 3)
			[1153566] = { type = "stun" }, -- Sonic Blast (Pet Rank 4)
			[1153567] = { type = "stun" }, -- Sonic Blast (Pet Rank 5)
			[1153568] = { type = "stun" }, -- Sonic Blast (Pet Rank 6)
			[1150518] = { type = "stun" }, -- Ravage (Pet Rank 1)
			[1153558] = { type = "stun" }, -- Ravage (Pet Rank 2)
			[1153559] = { type = "stun" }, -- Ravage (Pet Rank 3)
			[1153560] = { type = "stun" }, -- Ravage (Pet Rank 4)
			[1153561] = { type = "stun" }, -- Ravage (Pet Rank 5)
			[1153562] = { type = "stun" }, -- Ravage (Pet Rank 6)
			[1144572] = { type = "stun" }, -- Deep Freeze
			[1100853] = { type = "stun" }, -- Hammer of Justice (Rank 1)
			[1105588] = { type = "stun" }, -- Hammer of Justice (Rank 2)
			[1105589] = { type = "stun" }, -- Hammer of Justice (Rank 3)
			[1110308] = { type = "stun" }, -- Hammer of Justice (Rank 4)
			[1102812] = { type = "stun" }, -- Holy Wrath (Rank 1)
			[1110318] = { type = "stun" }, -- Holy Wrath (Rank 2)
			[1127139] = { type = "stun" }, -- Holy Wrath (Rank 3)
			[1148816] = { type = "stun" }, -- Holy Wrath (Rank 4)
			[1148817] = { type = "stun" }, -- Holy Wrath (Rank 5)
			[1100408] = { type = "stun" }, -- Kidney Shot (Rank 1)
			[1108643] = { type = "stun" }, -- Kidney Shot (Rank 2)
			[1158861] = { type = "stun" }, -- Bash (Spirit Wolves)
			[1130283] = { type = "stun" }, -- Shadowfury (Rank 1)
			[1130413] = { type = "stun" }, -- Shadowfury (Rank 2)
			[1130414] = { type = "stun" }, -- Shadowfury (Rank 3)
			[1147846] = { type = "stun" }, -- Shadowfury (Rank 4)
			[1147847] = { type = "stun" }, -- Shadowfury (Rank 5)
			[1112809] = { type = "stun" }, -- Concussion Blow
			[1160995] = { type = "stun" }, -- Demon Charge
			[1130153] = { type = "stun" }, -- Intercept (Felguard Rank 1)
			[1130195] = { type = "stun" }, -- Intercept (Felguard Rank 2)
			[1130197] = { type = "stun" }, -- Intercept (Felguard Rank 3)
			[1147995] = { type = "stun" }, -- Intercept (Felguard Rank 4)
			[1120253] = { type = "stun" }, -- Intercept Stun (Rank 1)
			[1120614] = { type = "stun" }, -- Intercept Stun (Rank 2)
			[1120615] = { type = "stun" }, -- Intercept Stun (Rank 3)
			[1125273] = { type = "stun" }, -- Intercept Stun (Rank 4)
			[1125274] = { type = "stun" }, -- Intercept Stun (Rank 5)
			[1146968] = { type = "stun" }, -- Shockwave
			[1120549] = { type = "stun" }, -- War Stomp (Racial)


			[1116922]   = { type = "random_stun" },  -- Celestial Focus (Starfire Stun)
			[1128445]   = { type = "random_stun" },  -- Improved Concussive Shot
			[1112355]   = { type = "random_stun" },  -- Impact
			[1120170]   = { type = "random_stun" },  -- Seal of Justice Stun
			[1139796]   = { type = "random_stun" },  -- Stoneclaw Stun
			[1112798]   = { type = "random_stun" },  -- Revenge Stun
			[1105530]    = { type = "random_stun" },  -- Mace Stun Effect (Mace Specialization)
			[1115283]   = { type = "random_stun" },  -- Stunning Blow (Weapon Proc)
			[1100056]      = { type = "random_stun" },  -- Stun (Weapon Proc)
			[1134510]   = { type = "random_stun" },  -- Stormherald/Deep Thunder (Weapon Proc)
			[1572740] = { type = "random_stun" },  -- Stormbolt

			[1101513] = { type = "fear" }, -- Scare Beast (Rank 1)
			[1114326] = { type = "fear" }, -- Scare Beast (Rank 2)
			[1114327] = { type = "fear" }, -- Scare Beast (Rank 3)
			[1110326] = { type = "fear" }, -- Turn Evil
			[1108122] = { type = "fear" }, -- Psychic Scream (Rank 1)
			[1108124] = { type = "fear" }, -- Psychic Scream (Rank 2)
			[1110888] = { type = "fear" }, -- Psychic Scream (Rank 3)
			[1110890] = { type = "fear" }, -- Psychic Scream (Rank 4)
			[1102094] = { type = "fear" }, -- Blind
			[1105782] = { type = "fear" }, -- Fear (Rank 1)
			[1106213] = { type = "fear" }, -- Fear (Rank 2)
			[1106215] = { type = "fear" }, -- Fear (Rank 3)
			[1106358] = { type = "fear" }, -- Seduction (Succubus)
			[1105484] = { type = "fear" }, -- Howl of Terror (Rank 1)
			[1117928] = { type = "fear" }, -- Howl of Terror (Rank 2)
			[1105246] = { type = "fear" }, -- Intimidating Shout
			[1105134] = { type = "fear" }, -- Flash Bomb Fear (Item)

			[1100339] = { type = "root" }, -- Entangling Roots (Rank 1)
			[1101062] = { type = "root" }, -- Entangling Roots (Rank 2)
			[1105195] = { type = "root" }, -- Entangling Roots (Rank 3)
			[1105196] = { type = "root" }, -- Entangling Roots (Rank 4)
			[1109852] = { type = "root" }, -- Entangling Roots (Rank 5)
			[1109853] = { type = "root" }, -- Entangling Roots (Rank 6)
			[1126989] = { type = "root" }, -- Entangling Roots (Rank 7)
			[1153308] = { type = "root" }, -- Entangling Roots (Rank 8)
			[1165857] = { type = "root" }, -- Entangling Roots (Rank 8) (TODO: Not sure which ID is correct)
			[1119975] = { type = "root" }, -- Nature's Grasp (Rank 1)
			[1119974] = { type = "root" }, -- Nature's Grasp (Rank 2)
			[1119973] = { type = "root" }, -- Nature's Grasp (Rank 3)
			[1119972] = { type = "root" }, -- Nature's Grasp (Rank 4)
			[1119971] = { type = "root" }, -- Nature's Grasp (Rank 5)
			[1119970] = { type = "root" }, -- Nature's Grasp (Rank 6)
			[1127010] = { type = "root" }, -- Nature's Grasp (Rank 7)
			[1153313] = { type = "root" }, -- Nature's Grasp (Rank 8)
			[1166070] = { type = "root" }, -- Nature's Grasp (Rank 8) (TODO: Not sure which ID is correct)
			[1150245] = { type = "root" }, -- Pin (Rank 1)
			[1153544] = { type = "root" }, -- Pin (Rank 2)
			[1153545] = { type = "root" }, -- Pin (Rank 3)
			[1153546] = { type = "root" }, -- Pin (Rank 4)
			[1153547] = { type = "root" }, -- Pin (Rank 5)
			[1153548] = { type = "root" }, -- Pin (Rank 6)
			[1133395] = { type = "root" }, -- Freeze (Water Elemental)
			[1100122] = { type = "root" }, -- Frost Nova (Rank 1)
			[1100865] = { type = "root" }, -- Frost Nova (Rank 2)
			[1106131] = { type = "root" }, -- Frost Nova (Rank 3)
			[1110230] = { type = "root" }, -- Frost Nova (Rank 4)
			[1127088] = { type = "root" }, -- Frost Nova (Rank 5)
			[1142917] = { type = "root" }, -- Frost Nova (Rank 6)
			[1164695] = { type = "root" }, -- Earthgrab
			[1139965] = { type = "root" }, -- Frost Grenade (Item)
			[1163685] = { type = "root" }, -- Freeze (Frost Shock)
			[1155536] = { type = "root" }, -- Frostweave Net (Item)

			[1112494] = { type = "random_root" },         -- Frostbite
			[1155080] = { type = "random_root" },         -- Shattered Barrier
			[1158373] = { type = "random_root" },         -- Glyph of Hamstring
			[1123694] = { type = "random_root" },         -- Improved Hamstring
			[1147168] = { type = "random_root" },         -- Improved Wing Clip
			[1119185] = { type = "random_root" },         -- Entrapment

			[1153359] = { type = "disarm" }, -- Chimera Shot (Scorpid)
			[1150541] = { type = "disarm" }, -- Snatch (Rank 1)
			[1153537] = { type = "disarm" }, -- Snatch (Rank 2)
			[1153538] = { type = "disarm" }, -- Snatch (Rank 3)
			[1153540] = { type = "disarm" }, -- Snatch (Rank 4)
			[1153542] = { type = "disarm" }, -- Snatch (Rank 5)
			[1153543] = { type = "disarm" }, -- Snatch (Rank 6)
			[1164346] = { type = "disarm" }, -- Fiery Payback
			[1164058] = { type = "disarm" }, -- Psychic Horror Disarm Effect
			[1151722] = { type = "disarm" }, -- Dismantle
			[1100676] = { type = "disarm" }, -- Disarm

			[1147476] = { type = "silence" }, -- Strangulate
			[1134490] = { type = "silence" }, -- Silencing Shot
			[1135334] = { type = "silence" }, -- Nether Shock 1 -- TODO: verify
			[1144957] = { type = "silence" }, -- Nether Shock 2 -- TODO: verify
			[1118469] = { type = "silence" }, -- Silenced - Improved Counterspell (Rank 1)
			[1155021] = { type = "silence" }, -- Silenced - Improved Counterspell (Rank 2)
			[1163529] = { type = "silence" }, -- Silenced - Shield of the Templar
			[1115487] = { type = "silence" }, -- Silence
			[1101330] = { type = "silence" }, -- Garrote - Silence
			[1118425] = { type = "silence" }, -- Silenced - Improved Kick
			[1124259] = { type = "silence" }, -- Spell Lock
			[1119647] = { type = "silence" }, -- Spell Lock
			[1131117] = { type = "silence", strict = true }, -- Unstable Affliction (Ascension)
			[1131117] = { type = "silence", strict = true }, -- Unstable Affliction 2
			[1118498] = { type = "silence" }, -- Silenced - Gag Order (Shield Slam)
			[1174347] = { type = "silence" }, -- Silenced - Gag Order (Heroic Throw?)
			[1150613] = { type = "silence" }, -- Arcane Torrent (Racial, Runic Power)
			[1128730] = { type = "silence" }, -- Arcane Torrent (Racial, Mana)
			[1125046] = { type = "silence" }, -- Arcane Torrent (Racial, Energy)

			[1164044] = { type = "horror" }, -- Psychic Horror
			[1106789] = { type = "horror" }, -- Death Coil (Rank 1)
			[1117925] = { type = "horror" }, -- Death Coil (Rank 2)
			[1117926] = { type = "horror" }, -- Death Coil (Rank 3)
			[1127223] = { type = "horror" }, -- Death Coil (Rank 4)
			[1147859] = { type = "horror" }, -- Death Coil (Rank 5)
			[1147860] = { type = "horror" }, -- Death Coil (Rank 6)

			[1101833] = { type = "opener_stun" }, -- Cheap Shot
			[1109005] = { type = "opener_stun" }, -- Pounce (Rank 1)
			[1109823] = { type = "opener_stun" }, -- Pounce (Rank 2)
			[1109827] = { type = "opener_stun" }, -- Pounce (Rank 3)
			[1127006] = { type = "opener_stun" }, -- Pounce (Rank 4)
			[1149803] = { type = "opener_stun" }, -- Pounce (Rank 5)

			[1131661] = { type = "scatter" }, -- Dragon's Breath (Rank 1)
			[1133041] = { type = "scatter" }, -- Dragon's Breath (Rank 2)
			[1133042] = { type = "scatter" }, -- Dragon's Breath (Rank 3)
			[1133043] = { type = "scatter" }, -- Dragon's Breath (Rank 4)
			[1142949] = { type = "scatter" }, -- Dragon's Breath (Rank 5)
			[1142950] = { type = "scatter" }, -- Dragon's Breath (Rank 6)
			[1119503] = { type = "scatter" }, -- Scatter Shot

			-- Spells that DR with itself only
			[1133786] = { type = "cyclone" },        -- Cyclone
			[1100605] = { type = "mind_control" },   -- Mind Control
			[1113181] = { type = "mind_control" },   -- Gnomish Mind Control Cap
			[1167799] = { type = "mind_control" },   -- Mind Amplification Dish
			[1107922] = { type = "charge" },         -- Charge Stun
			[1119306] = { type = "counterattack" },  -- Counterattack 1
			[1120909] = { type = "counterattack" },  -- Counterattack 2
			[1120910] = { type = "counterattack" },  -- Counterattack 3
			[1127067] = { type = "counterattack" },  -- Counterattack 4
			[1148998] = { type = "counterattack" },  -- Counterattack 5
			[1148999] = { type = "counterattack" },  -- Counterattack 6

			
		},
	};
