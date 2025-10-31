ArenaLive.spellDB = {
			["Trinket"] = { 142292, 120 }, -- SpellID and cooldown of the PvP-Trinket
			["Racials"] = {
				-- First Number is the SpellID, 2nd one is the CD and 3rd is the shared CD with the PvP-Trinket. Use 0 if they don't have a shared CD.
				["Human"] =  { 59752, 120, 0 },
				["Dwarf"] = { 20594, 120, 0 },
				["NightElf"] = { 1158984, 120, 0}, -- Shadowmeld
				["Gnome"] = { 20589, 90, 0 },
				["Draenei"] = { 28880, 180, 0},
				["Orc"] = { -- Since Orcs also have class-specific racials, we need to add all of them
					["WARRIOR"] = { 20572, 120, 0 },
					["HUNTER"] = { 20572, 120, 0 },
					["ROGUE"] = { 20572, 120, 0 },
					["SHAMAN"] = { 33697, 120, 0 },
					["MAGE"] = { 33702, 120, 0 },
					["WARLOCK"] = { 33702, 120, 0 },
				},
				["Scourge"] = { 7744, 120, 0 },
				["Tauren"] = { 20549, 120, 0 },
				["Troll"] = { 26297, 180, 0 },
				["BloodElf"] = {
					["PALADIN"] = { 28730, 120, 0 },
					["HUNTER"] = { 28730, 120, 0},
					["ROGUE"] = { 25046, 120, 0 },
					["PRIEST"] = { 28730, 120, 0 },
					["MAGE"] = { 28730, 120, 0 },
					["WARLOCK"] = { 28730, 120, 0 },
				},
			},
			["CooldownResets"] = {
				[11958] = {				-- Mage: Cold Snap
					[120] = true,			-- Cone of Cold
					[122] = true,			-- Frost Nova
					[45438] = true,			-- Ice Block
				},
				[14185] = {				-- Rogue: Preparation
					[2983] = true,
					[1856] = true,
					[5277] = true,
				},
			},			
			["CCIndicator"] = { -- This table is used to track those spells, that are shown in the cc indcator.
				-- The order is [spellID] = Priority-Type.

				-- Racials
				[20594] = "usefulBuffs",    -- Stoneform
				[20549] = "stun",           -- War Stomp
				[28730] = "silence",        -- Arcane Torrent
				[25046] = "silence",        -- Arcane Torrent
				[50613] = "silence",        -- Arcane Torrent
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
				[110909] = "offCD",	        -- Alter Time
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
				[25274] = "crowdControl", 	-- Intercept Stun
				[5530] = "crowdControl", 	-- Mace Stun Effect
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
			["DRUID"] = { 16979, 15, false }, 		-- Feral Charge - Bear
			["HUNTER"] = { 34490, 20, false }, 		-- Silencing Shot
			["MAGE"] = { 2139, 24, false }, 		-- Counter Spell
			["PALADIN"] = { 10308, 45, false }, 	-- HoJ
			["PRIEST"] = { 10890, 27, false }, 		-- Purify
			["ROGUE"] = { 1766, 10, false }, 		-- Kick
			["WARRIOR"] = { 6554, 10, false },		-- Pummel
			["SHAMAN"] = { 57994, 6, false },		-- Wind Shear
			["WARLOCK"] = { 19647, 24, false },	
		},
		["SharedCooldowns"] = {
			[59752] = { 142292, 120 }, -- PvP trinket
			[59752] = { 65547, 120 }, -- PvP trinket
			[59752] = { 42292, 120 }, -- PvP trinket
			[6552] = { 72, 10 }, -- Pummel -> Shield Bash
			[72] = { 6552, 10 }, -- Shield Bash -> Pummel
		},
		["DiminishingReturns"] =
		{						
			-- Roots:
			[339] = "root", 				-- Entangling Roots
			[19975] = "root", 				-- Entangling Roots: Nature's Grasp
			[53148] = "root",				-- Charge (Tenacity Pet)
			[4167] = "root",  				-- Web 
			[33395] =  "root",  			-- Freeze
			[122] = "root",  				-- Frost Nova
			
			-- Short Roots:
			[64803] = "shortRoot",			-- Entrapment (trap-roots)
			
			-- Stuns:
			[22570] = "stun", 				-- Maim
			[5211] = "stun", 				-- Mighty Bash
			[9005] = "stun", 				-- Pounce	
			
			[19577] = "stun",				-- Intimidation (stun)			
			
			[853] = "stun",					-- Hammer of Justice
			
			[1833] = "stun", 				-- Cheap Shot
			[408] = "stun", 				-- Kidney Shot
			
			[22703] = "stun",				-- Infernal Awakening
			[30283] = "stun", 				-- Shadowfury
			
			[132168] = "stun", 				-- Shockwave
			[107570] = "stun",				-- Storm Bolt
			
			[20549] = "stun", 				-- War Stomp
			
			-- Short Stuns:
			
			[77505] = "shortStun", 			-- Earthquake
			
			[7922] = "shortStun",			-- Charge Stun					
	
			-- Mesmerizes:
			[2637] = "mesmerize",			-- Hibernate
			
			[3355] = "mesmerize", 			-- Freezing Trap
			[19386] = "mesmerize", 			-- Wyvern Sting
			
			[118] = "mesmerize", 			-- Polymorph
			
			[115078] = "mesmerize", 		-- Paralysis
			
			[20066] = "mesmerize", 			-- Repentance
			
			[9484] = "mesmerize", 			-- Shackle Undead
			
			[1776] = "mesmerize", 			-- Gouge
			[6770] = "mesmerize", 			-- Sap
			
			[710] = "mesmerize",			-- Banish
			
			-- Short Mesmerizes:
			[99] = "shortMesmerize", 		-- Disorienting Roar
			
			[19503] = "shortMesmerize",		-- Scatter Shot
			
			[31661] = "shortMesmerize", 	-- Dragon's Breath
			
			[123407] = "shortMesmerize",	-- Glyph of Breath of Fire
			
			[88625] = "shortMesmerize",		-- Holy Word: Chastise
			
			-- Fears:
			[113056] = "fear",				-- Intimidating Roar (cower)
			[113004] = "fear",				-- Intimidating Roar (flee)
			
			[1513] = "fear", 				-- Scare Beast
			
			[105421] = "fear", 				-- Blinding Light
			[10326] = "fear", 				-- Turn Evil
			
			[8122] = "fear", 				-- Psychic Scream
			[113792] = "fear", 				-- Psychic Terror
			
			[2094] = "fear", 				-- Blind
			
			[118699] = "fear", 				-- Fear
			[5484] = "fear", 				-- Howl of Terror
			[115268] = "fear", 				-- Mesmerize
			[6358] = "fear", 				-- Seduction
			
			[5246] = "fear",				-- Intimidating Shout
			[20511] = "fear", 				-- Intimidating Shout
			[95199] = "fear", 				-- Intimidating Shout

			-- Horrors:
			[6789] = "horror", 				-- Mortal Coil
		
			-- Cyclone:
			[33786] = "cyclone", -- Cyclone
			
			-- Charms:
			[605] = "charm", -- Dominate Mind
			
		},
	};
