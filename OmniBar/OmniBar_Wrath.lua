local addonName, addon = ...

addon.MAX_ARENA_SIZE = 5

addon.Shared = {
    -- PvP Trinket, Will of the Forsaken
    {
        spells = { 1142292, 1107744 },
        amount = 45,
    },

    -- Freezing Arrow, Freezing Trap, Frost Trap
    {
        spells = { 1160192, 1101499, 1114310, 1114311, 1113809 },
        amount = { Survival = 22, default = 28 }
    },

    -- Immolation Trap, Explosive Trap
    {
        spells = { 1113795, 1114302, 1114303, 1114304, 1114305, 1127023, 1149055, 1149056, 1113813, 1114316, 1114317, 1127025, 1149066, 1149067 },
        amount = { Survival = 22, default = 28 }
    },

    -- Aimed Shot, Multi-Shot
    {
        spells = { 1119434, 1120900, 1120901, 1120902, 1120903, 1120904, 1127065, 1149049, 1149050, 1102643, 1114288, 1114289, 1114290, 1125294, 1127021, 1149047, 1149048 },
        amount = 10,
    },

    -- Feral Charge - Bear, Feral Charge - Cat
    {
        spells = { 1116979, 1149376 },
        amount = 15,
    },

    -- Recklessness, Shield Wall, Retaliation
    {
        spells = { 1101719, 1100871, 1120230 },
        amount = 12
    },

    -- Avenging Wrath → Divine Protection, Divine Shield, Lay on Hands
    {
        triggers = { 1131884 },
        spells = { 1100498, 1100642, 1100633, 1102800, 1110310, 1127154, 1148788 },
        amount = 30
    },
}

addon.Resets = {
    --[[ Cold Snap
        - Ice Barrier
        - Frost Ward
        - Frost Nova
        - Ice Block
        - Icy Veins
        - Summon Water Elemental
        - Deep Freeze
        - Cone of Cold
        - Frozen Orb
      ]]
    [1111958] = { 1111426, 1106143, 1100122, 1145438, 1112472, 1131687, 1144572, 1100120, 2110021 },

    --[[ Preparation
        - Evasion
        - Sprint
        - Vanish
        - Cold Blood
        - Shadowstep
        - Blade Flurry (Glyph of Preparation)
        - Kick (Glyph of Preparation)
        - Dismantle (Glyph of Preparation)
      ]]
    [1114185] = { 1105277, 1102983, 1101856, 1114177, 1136554, 1113877, 111766, 1151722 },

    --[[ Readiness
        - Concussive Shot
        - Kill Command
        - Master's Call
        - Scare Beast
        - Arcane Shot
        - Distracting Shot
        - Flare
        - Kill Shot
        - Multi-Shot
        - Rapid Fire
        - Tranquilizing Shot
        - Viper Sting
        - Deterrence
        - Disengage
        - Explosive Trap
        - Feign Death
        - Freezing Arrow
        - Freezing Trap
        - Frost Trap
        - Immolation Trap
        - Misdirection
        - Mongoose Bite
        - Raptor Strike
        - Snake Trap
        - Aimed Shot
        - Chimera Shot
        - Silencing Shot
        - Scatter Shot
      ]]
    [1123989] = { 1105116, 1134026, 53271, 1101513, 1103044, 1120736, 1101543, 1153351, 1102643, 1103045, 1119801, 1103034, 1119263, 1100781, 1113813, 1105384, 1160192, 1101499, 1113809, 1113795, 1134477, 1101495, 1102973, 1134600, 1119434, 1153209, 1134490, 1119503 },

    --[[ Summon Felhunter
        - Spell Lock
      ]]
    [1100691] = { 1119244 },
}

addon.Cooldowns = {

    -- General

    [1142292] = { duration = 120, class = "GENERAL", icon = "Interface\\ICONS\\Inv_jewelry_trinketpvp_02" }, -- PvP Trinket
    [1107744] = { duration = 120, class = "GENERAL" }, -- Will of the Forsaken
    [1125046] = { duration = 120, class = "GENERAL" }, -- Arcane Torrent (Energy)
        [1128730] = { parent = 1125046 }, -- Arcane Torrent (Mana)
        [1150613] = { parent = 1125046 }, -- Arcane Torrent (Runic Power)
    [1120594] = { duration = 120, class = "GENERAL" }, -- Stoneform
    [1120549] = { duration = 120, class = "GENERAL" }, -- War Stomp
    [1126297] = { duration = 180, class = "GENERAL" }, -- Berserking
    [1120572] = { duration = 120, class = "GENERAL" }, -- Blood Fury
      [1133697] = { parent = 1120572 },
      [1133702] = { parent = 1120572 },
    [54998] = { duration = 60, class = "GENERAL" }, -- Hand-Mounted Pyro Rocket

    -- Priest

    --[[ Fade Modifiers

    - Veiled Shadows (Rank 1)
      Decreases the cooldown of your Fade ability by 3 sec, and reduces the cooldown of your Shadowfiend ability by 1 minute.
      https://www.wowhead.com/wotlk/spell=15274

    - Veiled Shadows (Rank 2)
      Decreases the cooldown of your Fade ability by 6 sec, and reduces the cooldown of your Shadowfiend ability by 2 minutes.
      https://www.wowhead.com/wotlk/spell=15311

    - Quick Fade
      Reduces the cooldown of your Fade ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=18388

    - Glyph of Fade
      Reduces the cooldown of your Fade spell by 9 sec.
      https://www.wowhead.com/wotlk/spell=55684

    - Glyph of Fade
      Reduces the cooldown of your Fade spell by 9 sec.
      https://www.wowhead.com/wotlk/spell=56164

    --]]

    [1100586] = { duration = 30, class = "PRIEST", adjust = { Shadow = -15 } }, -- Fade

    [1100724] = { duration = 180, class = "PRIEST" }, -- Lightwell (Rank 1)
        [1127870] = { parent = 1100724 }, -- Lightwell (Rank 2)
        [1127871] = { parent = 1100724 }, -- Lightwell (Rank 3)
        [1128275] = { parent = 1100724 }, -- Lightwell (Rank 4)
        [1148086] = { parent = 1100724 }, -- Lightwell (Rank 5)
        [1148087] = { parent = 1100724 }, -- Lightwell (Rank 6)

    --[[ Fear Ward Modifiers

    - Glyph of Fear Ward
      Reduces cooldown and duration of Fear Ward by 60 sec.
      https://www.wowhead.com/wotlk/spell=55678

    - Glyph of Fear Ward
      Reduces cooldown and duration of Fear Ward by 60 sec.
      https://www.wowhead.com/wotlk/spell=56165

    --]]

    [1106346] = { duration = 180, class = "PRIEST" }, -- Fear Ward

    --[[ Mind Blast Modifiers

    - Improved Mind Blast (Rank 1)
      Reduces the cooldown of your Mind Blast spell by 0.5 sec., and while in Shadowform your Mind Blast also has a 20% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15273

    - Improved Mind Blast (Rank 2)
      Reduces the cooldown of your Mind Blast spell by 1 sec., and while in Shadowform your Mind Blast also has a 40% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15312

    - Improved Mind Blast (Rank 3)
      Reduces the cooldown of your Mind Blast spell by 1.5 sec., and while in Shadowform your Mind Blast also has a 60% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15313

    - Improved Mind Blast (Rank 4)
      Reduces the cooldown of your Mind Blast spell by 2 sec., and while in Shadowform your Mind Blast also has a 80% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15314

    - Improved Mind Blast (Rank 5)
      Reduces the cooldown of your Mind Blast spell by 2.5 sec., and while in Shadowform your Mind Blast also has a 100% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15316

    --]]

    [1108092] = { duration = 8, class = "PRIEST", adjust = -2.5 }, -- Mind Blast (Rank 1)
        [1108102] = { parent = 1108092 }, -- Mind Blast (Rank 2)
        [1108103] = { parent = 1108092 }, -- Mind Blast (Rank 3)
        [1108104] = { parent = 1108092 }, -- Mind Blast (Rank 4)
        [1108105] = { parent = 1108092 }, -- Mind Blast (Rank 5)
        [1108106] = { parent = 1108092 }, -- Mind Blast (Rank 6)
        [1110945] = { parent = 1108092 }, -- Mind Blast (Rank 7)
        [1110946] = { parent = 1108092 }, -- Mind Blast (Rank 8)
        [1110947] = { parent = 1108092 }, -- Mind Blast (Rank 9)
        [1125372] = { parent = 1108092 }, -- Mind Blast (Rank 10)
        [1125375] = { parent = 1108092 }, -- Mind Blast (Rank 11)
        [1148126] = { parent = 1108092 }, -- Mind Blast (Rank 12)
        [1148127] = { parent = 1108092 }, -- Mind Blast (Rank 13)

    --[[ Psychic Scream Modifiers

    - Improved Psychic Scream (Rank 1)
      Reduces the cooldown of your Psychic Scream spell by 2 sec.
      https://www.wowhead.com/wotlk/spell=15392

    - Improved Psychic Scream (Rank 2)
      Reduces the cooldown of your Psychic Scream spell by 4 sec.
      https://www.wowhead.com/wotlk/spell=15448

    - Improved Psychic Scream
      Reduces the cooldown of your Psychic Scream ability by 3 sec.
      https://www.wowhead.com/wotlk/spell=44297

    - Glyph of Psychic Scream
      Increases the duration of your Psychic Scream by 2 sec. and increases its cooldown by 8 sec.
      https://www.wowhead.com/wotlk/spell=55676

    - Glyph of Psychic Scream
      Increases the duration of your Psychic Scream by 2 sec. and increases its cooldown by 8 sec.
      https://www.wowhead.com/wotlk/spell=56177

    --]]

    [1108122] = { duration = 30, class = "PRIEST", adjust = { Shadow = -7, default = -3 } }, -- Psychic Scream (Rank 1)
        [1108124] = { parent = 1108122 }, -- Psychic Scream (Rank 2)
        [1110888] = { parent = 1108122 }, -- Psychic Scream (Rank 3)
        [1110890] = { parent = 1108122 }, -- Psychic Scream (Rank 4)

    --[[ Power Infusion Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    --]]

    [1110060] = { duration = 120, class = "PRIEST", adjust = -24 }, -- Power Infusion

    --[[ Inner Focus Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    --]]

    [1114751] = { duration = 180, class = "PRIEST", adjust = -36 }, -- Inner Focus

    [1114914] = { duration = 10, class = "PRIEST" }, -- Holy Fire (Rank 1)
        [1115262] = { parent = 1114914 }, -- Holy Fire (Rank 2)
        [1115263] = { parent = 1114914 }, -- Holy Fire (Rank 3)
        [1115264] = { parent = 1114914 }, -- Holy Fire (Rank 4)
        [1115265] = { parent = 1114914 }, -- Holy Fire (Rank 5)
        [1115266] = { parent = 1114914 }, -- Holy Fire (Rank 6)
        [1115267] = { parent = 1114914 }, -- Holy Fire (Rank 7)
        [1115261] = { parent = 1114914 }, -- Holy Fire (Rank 8)
        [1125384] = { parent = 1114914 }, -- Holy Fire (Rank 9)
        [1148134] = { parent = 1114914 }, -- Holy Fire (Rank 10)
        [1148135] = { parent = 1114914 }, -- Holy Fire (Rank 11)

    [1115473] = { duration = 1, class = "PRIEST" }, -- Shadowform ()
        [1149868] = { parent = 1115473 }, -- Shadowform ()

    [1115487] = { duration = 45, class = "PRIEST" }, -- Silence

    [1119236] = { duration = 120, class = "PRIEST" }, -- Desperate Prayer (Rank 1)
        [1119238] = { parent = 1119236 }, -- Desperate Prayer (Rank 2)
        [1119240] = { parent = 1119236 }, -- Desperate Prayer (Rank 3)
        [1119241] = { parent = 1119236 }, -- Desperate Prayer (Rank 4)
        [1119242] = { parent = 1119236 }, -- Desperate Prayer (Rank 5)
        [1119243] = { parent = 1119236 }, -- Desperate Prayer (Rank 6)
        [1125437] = { parent = 1119236 }, -- Desperate Prayer (Rank 7)
        [1148172] = { parent = 1119236 }, -- Desperate Prayer (Rank 8)
        [1148173] = { parent = 1119236 }, -- Desperate Prayer (Rank 9)

    [1132379] = { duration = 12, class = "PRIEST" }, -- Shadow Word: Death (Rank 1)
        [1132996] = { parent = 1132379 }, -- Shadow Word: Death (Rank 2)
        [1148157] = { parent = 1132379 }, -- Shadow Word: Death (Rank 3)
        [1148158] = { parent = 1132379 }, -- Shadow Word: Death (Rank 4)

    --[[ Prayer of Mending Modifiers

    - Divine Providence (Rank 1)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 2%, and reduces the cooldown of your Prayer of Mending by 6%.
      https://www.wowhead.com/wotlk/spell=47562

    - Divine Providence (Rank 2)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 4%, and reduces the cooldown of your Prayer of Mending by 12%.
      https://www.wowhead.com/wotlk/spell=47564

    - Divine Providence (Rank 3)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 6%, and reduces the cooldown of your Prayer of Mending by 18%.
      https://www.wowhead.com/wotlk/spell=47565

    - Divine Providence (Rank 4)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 8%, and reduces the cooldown of your Prayer of Mending by 24%.
      https://www.wowhead.com/wotlk/spell=47566

    - Divine Providence (Rank 5)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 10%, and reduces the cooldown of your Prayer of Mending by 30%.
      https://www.wowhead.com/wotlk/spell=47567

    --]]

    [1133076] = { duration = 10, class = "PRIEST", adjust = { Holy = -3 } }, -- Prayer of Mending (Rank 1)
        [1148112] = { parent = 1133076 }, -- Prayer of Mending (Rank 2)
        [1148113] = { parent = 1133076 }, -- Prayer of Mending (Rank 3)

    --[[ Pain Suppression Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    --]]

    [1133206] = { duration = 180, class = "PRIEST", adjust = -36 }, -- Pain Suppression

    --[[ Shadowfiend Modifiers

    - Veiled Shadows (Rank 1)
      Decreases the cooldown of your Fade ability by 3 sec, and reduces the cooldown of your Shadowfiend ability by 1 minute.
      https://www.wowhead.com/wotlk/spell=15274

    - Veiled Shadows (Rank 2)
      Decreases the cooldown of your Fade ability by 6 sec, and reduces the cooldown of your Shadowfiend ability by 2 minutes.
      https://www.wowhead.com/wotlk/spell=15311

    --]]

    [1134433] = { duration = 300, class = "PRIEST", adjust = { Shadow = -120 } }, -- Shadowfiend

    --[[ Circle of Healing Modifiers

    - Divine Providence (Rank 1)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 2%, and reduces the cooldown of your Prayer of Mending by 6%.
      https://www.wowhead.com/wotlk/spell=47562

    - Divine Providence (Rank 2)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 4%, and reduces the cooldown of your Prayer of Mending by 12%.
      https://www.wowhead.com/wotlk/spell=47564

    - Divine Providence (Rank 3)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 6%, and reduces the cooldown of your Prayer of Mending by 18%.
      https://www.wowhead.com/wotlk/spell=47565

    - Divine Providence (Rank 4)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 8%, and reduces the cooldown of your Prayer of Mending by 24%.
      https://www.wowhead.com/wotlk/spell=47566

    - Divine Providence (Rank 5)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 10%, and reduces the cooldown of your Prayer of Mending by 30%.
      https://www.wowhead.com/wotlk/spell=47567

    --]]

    [1134861] = { duration = 6, class = "PRIEST", adjust = { Holy = -1.8 } }, -- Circle of Healing (Rank 1)
        [1134863] = { parent = 1134861 }, -- Circle of Healing (Rank 2)
        [1134864] = { parent = 1134861 }, -- Circle of Healing (Rank 3)
        [1134865] = { parent = 1134861 }, -- Circle of Healing (Rank 4)
        [1134866] = { parent = 1134861 }, -- Circle of Healing (Rank 5)
        [1148088] = { parent = 1134861 }, -- Circle of Healing (Rank 6)
        [1148089] = { parent = 1134861 }, -- Circle of Healing (Rank 7)

    --[[ Penance Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    - Glyph of Penance
      Reduces the cooldown of Penance by 2 sec.
      https://www.wowhead.com/wotlk/spell=63235

    - Glyph of Penance
      Reduces the cooldown of Penance by 2 sec.
      https://www.wowhead.com/wotlk/spell=63874

    --]]

    [1147750] = { duration = 12, class = "PRIEST", adjust = -4, eventThrottle = true }, -- Penance (Rank 1)
        [1152983] = { parent = 1147750 }, -- Penance (Rank 2)
        [1152984] = { parent = 1147750 }, -- Penance (Rank 3)
        [1152985] = { parent = 1147750 }, -- Penance (Rank 4)
        [1147666] = { parent = 1147750 }, -- Penance Hostile (Rank 1)
        [1152998] = { parent = 1147750 }, -- Penance Hostile (Rank 2)
        [1152999] = { parent = 1147750 }, -- Penance Hostile (Rank 3)
        [1153000] = { parent = 1147750 }, -- Penance Hostile (Rank 4)

    --[[ Dispersion Modifiers

    - Glyph of Dispersion
      Reduces the cooldown on Dispersion by 45 sec.
      https://www.wowhead.com/wotlk/spell=63229

    - Glyph of Dispersion
      Reduces the cooldown on Dispersion by 45 sec.
      https://www.wowhead.com/wotlk/spell=63872

    --]]

    [1147585] = { duration = 120, class = "PRIEST", adjust = -45 }, -- Dispersion

    [1147788] = { duration = 180, class = "PRIEST" }, -- Guardian Spirit

    [1164044] = { duration = 120, class = "PRIEST" }, -- Psychic Horror

    [1164843] = { duration = 480, class = "PRIEST" }, -- Divine Hymn

    [1164901] = { duration = 360, class = "PRIEST" }, -- Hymn of Hope

    -- Warlock

    --[[ Curse of Doom Modifiers

    - Amplify Curse
      Reduces the global cooldown of your Curses by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=18288

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [1100603] = { duration = 60, class = "WARLOCK" }, -- Curse of Doom (Rank 1)
        [1130910] = { parent = 1100603 }, -- Curse of Doom (Rank 2)
        [1147867] = { parent = 1100603 }, -- Curse of Doom (Rank 3)

    [1100698] = { duration = 120, class = "WARLOCK" }, -- Ritual of Summoning

    [1101122] = { duration = 600, class = "WARLOCK" }, -- Inferno

    --[[ Howl of Terror Modifiers

    - Glyph of Howl of Terror
      Reduces the cooldown on your Howl of Terror spell by 8 sec.
      https://www.wowhead.com/wotlk/spell=56217

    --]]

    [1105484] = { duration = 40, class = "WARLOCK", adjust = { Affliction = -8 } }, -- Howl of Terror (Rank 1)
        [1117928] = { parent = 1105484 }, -- Howl of Terror (Rank 2)

    [1106229] = { duration = 30, class = "WARLOCK" }, -- Shadow Ward (Rank 1)
        [1111739] = { parent = 1106229 }, -- Shadow Ward (Rank 2)
        [1111740] = { parent = 1106229 }, -- Shadow Ward (Rank 3)
        [1128610] = { parent = 1106229 }, -- Shadow Ward (Rank 4)
        [1147890] = { parent = 1106229 }, -- Shadow Ward (Rank 5)
        [1147891] = { parent = 1106229 }, -- Shadow Ward (Rank 6)

    --[[ Death Coil Modifiers

    - Improved Death Coil
      Decreases the cooldown of Death Coil by 15%.
      https://www.wowhead.com/wotlk/spell=24487

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [1106789] = { duration = 120, class = "WARLOCK" }, -- Death Coil (Rank 1)
        [1117925] = { parent = 1106789 }, -- Death Coil (Rank 2)
        [1117926] = { parent = 1106789 }, -- Death Coil (Rank 3)
        [1127223] = { parent = 1106789 }, -- Death Coil (Rank 4)
        [1147859] = { parent = 1106789 }, -- Death Coil (Rank 5)
        [1147860] = { parent = 1106789 }, -- Death Coil (Rank 6)

    --[[ Shadowburn Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [1117877] = { duration = 15, class = "WARLOCK" }, -- Shadowburn (Rank 1)
        [1118867] = { parent = 1117877 }, -- Shadowburn (Rank 2)
        [1118868] = { parent = 1117877 }, -- Shadowburn (Rank 3)
        [1118869] = { parent = 1117877 }, -- Shadowburn (Rank 4)
        [1118870] = { parent = 1117877 }, -- Shadowburn (Rank 5)
        [1118871] = { parent = 1117877 }, -- Shadowburn (Rank 6)
        [1127263] = { parent = 1117877 }, -- Shadowburn (Rank 7)
        [1130546] = { parent = 1117877 }, -- Shadowburn (Rank 8)
        [1147826] = { parent = 1117877 }, -- Shadowburn (Rank 9)
        [1147827] = { parent = 1117877 }, -- Shadowburn (Rank 10)

    --[[ Conflagrate Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [1117962] = { duration = 10, class = "WARLOCK" }, -- Conflagrate

    [1118540] = { duration = 1800, class = "WARLOCK" }, -- Ritual of Doom

    --[[ Fel Domination Modifiers

    - Nemesis (Rank 1)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 10%.
      https://www.wowhead.com/wotlk/spell=63117

    - Nemesis (Rank 2)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 20%.
      https://www.wowhead.com/wotlk/spell=63121

    - Nemesis (Rank 3)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 30%.
      https://www.wowhead.com/wotlk/spell=63123

    --]]

    [1118708] = { duration = 180, class = "WARLOCK", adjust = { Demonology = -54 } }, -- Fel Domination

    [1129858] = { duration = 180, class = "WARLOCK" }, -- Soulshatter

    [1129893] = { duration = 300, class = "WARLOCK" }, -- Ritual of Souls (Rank 1)
        [1158887] = { parent = 1129893 }, -- Ritual of Souls (Rank 2)

    --[[ Shadowfury Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 10%.
      https://www.wowhead.com/wotlk/spell=54274

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 20%.
      https://www.wowhead.com/wotlk/spell=54276

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 30%.
      https://www.wowhead.com/wotlk/spell=54277

    --]]

    [1130283] = { duration = 20, class = "WARLOCK" }, -- Shadowfury (Rank 1)
        [1130413] = { parent = 1130283 }, -- Shadowfury (Rank 2)
        [1130414] = { parent = 1130283 }, -- Shadowfury (Rank 3)
        [1147846] = { parent = 1130283 }, -- Shadowfury (Rank 4)
        [1147847] = { parent = 1130283 }, -- Shadowfury (Rank 5)

    --[[ Demonic Empowerment Modifiers

    - Nemesis (Rank 1)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 10%.
      https://www.wowhead.com/wotlk/spell=63117

    - Nemesis (Rank 2)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 20%.
      https://www.wowhead.com/wotlk/spell=63121

    - Nemesis (Rank 3)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 30%.
      https://www.wowhead.com/wotlk/spell=63123

    --]]

    [1147193] = { duration = 60, class = "WARLOCK", adjust = -18 }, -- Demonic Empowerment

    --[[ Shadowflame Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    - Backdraft (Rank 1)
      When you cast Conflagrate, the cast time and global cooldown of your next three Destruction spells is reduced by 10%. Lasts 15 sec.
      https://www.wowhead.com/wotlk/spell=47258

    - Backdraft (Rank 2)
      When you cast Conflagrate, the cast time and global cooldown of your next three Destruction spells is reduced by 20%. Lasts 15 sec.
      https://www.wowhead.com/wotlk/spell=47259

    - Backdraft (Rank 3)
      When you cast Conflagrate, the cast time and global cooldown of your next three Destruction spells is reduced by 30%. Lasts 15 sec.
      https://www.wowhead.com/wotlk/spell=47260

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 10%.
      https://www.wowhead.com/wotlk/spell=54274

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 20%.
      https://www.wowhead.com/wotlk/spell=54276

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 30%.
      https://www.wowhead.com/wotlk/spell=54277

    --]]

    [1147897] = { duration = 15, class = "WARLOCK" }, -- Shadowflame (Rank 1)
        [1161290] = { parent = 1147897 }, -- Shadowflame (Rank 2)

    --[[ Demonic Circle: Teleport Modifiers

    - Glyph of Demonic Circle
      Reduces the cooldown on Demonic Circle by 4 sec.
      https://www.wowhead.com/wotlk/spell=63309

    - Glyph of Demonic Circle
      Reduces the cooldown on Demonic Circle by 4 sec.
      https://www.wowhead.com/wotlk/spell=63937

    --]]

    [1148020] = { duration = 30, class = "WARLOCK" }, -- Demonic Circle: Teleport

    --[[ Haunt Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [1148181] = { duration = 8, class = "WARLOCK" }, -- Haunt (Rank 1)
        [1159161] = { parent = 1148181 }, -- Haunt (Rank 2)
        [1159163] = { parent = 1148181 }, -- Haunt (Rank 3)
        [1159164] = { parent = 1148181 }, -- Haunt (Rank 4)

    [1150581] = { duration = 6, class = "WARLOCK" }, -- Shadow Cleave

    [1150589] = { duration = 30, class = "WARLOCK" }, -- Immolation Aura

    --[[ Chaos Bolt Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 10%.
      https://www.wowhead.com/wotlk/spell=54274

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 20%.
      https://www.wowhead.com/wotlk/spell=54276

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 30%.
      https://www.wowhead.com/wotlk/spell=54277

    - Glyph of Chaos Bolt
      Reduces the cooldown on Chaos Bolt by 2 sec.
      https://www.wowhead.com/wotlk/spell=63304

    --]]

    [1150796] = { duration = 12, class = "WARLOCK" }, -- Chaos Bolt (Rank 1)
        [1159170] = { parent = 1150796 }, -- Chaos Bolt (Rank 2)
        [1159171] = { parent = 1150796 }, -- Chaos Bolt (Rank 3)
        [1159172] = { parent = 1150796 }, -- Chaos Bolt (Rank 4)

    [1159671] = { duration = 15, class = "WARLOCK" }, -- Challenging Howl

    -- Warlock Pets

    [1103716] = { duration = 5, class = "WARLOCK" }, -- Torment (Rank 1)
        [1107809] = { parent = 1103716 }, -- Torment (Rank 2)
        [1107810] = { parent = 1103716 }, -- Torment (Rank 3)
        [1107811] = { parent = 1103716 }, -- Torment (Rank 4)
        [1111774] = { parent = 1103716 }, -- Torment (Rank 5)
        [1111775] = { parent = 1103716 }, -- Torment (Rank 6)
        [1127270] = { parent = 1103716 }, -- Torment (Rank 7)
        [1147984] = { parent = 1103716 }, -- Torment (Rank 8)

    [1104511] = { duration = 10, class = "WARLOCK" }, -- Phase Shift

    [1106360] = { duration = 4, class = "WARLOCK" }, -- Soothing Kiss (Rank 1)
        [1107813] = { parent = 1106360 }, -- Soothing Kiss (Rank 2)
        [1111784] = { parent = 1106360 }, -- Soothing Kiss (Rank 3)
        [1111785] = { parent = 1106360 }, -- Soothing Kiss (Rank 4)
        [1127275] = { parent = 1106360 }, -- Soothing Kiss (Rank 5)

    [1107812] = { duration = 60, class = "WARLOCK" }, -- Sacrifice (Rank 1)
        [1119438] = { parent = 1107812 }, -- Sacrifice (Rank 2)
        [1119440] = { parent = 1107812 }, -- Sacrifice (Rank 3)
        [1119441] = { parent = 1107812 }, -- Sacrifice (Rank 4)
        [1119442] = { parent = 1107812 }, -- Sacrifice (Rank 5)
        [1119443] = { parent = 1107812 }, -- Sacrifice (Rank 6)
        [1127273] = { parent = 1107812 }, -- Sacrifice (Rank 7)
        [1147985] = { parent = 1107812 }, -- Sacrifice (Rank 8)
        [1147986] = { parent = 1107812 }, -- Sacrifice (Rank 9)

    --[[ Lash of Pain Modifiers

    - Demonic Power (Rank 1)
      Reduces the cooldown of your Succubus' Lash of Pain spell by 3 sec. and reduces the casting time of your Imp's Firebolt spell by 0.25 sec.
      https://www.wowhead.com/wotlk/spell=18126

    - Demonic Power (Rank 2)
      Reduces the cooldown of your Succubus' Lash of Pain spell by 6 sec. and reduces the casting time of your Imp's Firebolt spell by 0.50 sec.
      https://www.wowhead.com/wotlk/spell=18127

    --]]

    [1107814] = { duration = 12, class = "WARLOCK", adjust = -6 }, -- Lash of Pain (Rank 1)
        [1107815] = { parent = 1107814 }, -- Lash of Pain (Rank 2)
        [1107816] = { parent = 1107814 }, -- Lash of Pain (Rank 3)
        [1111778] = { parent = 1107814 }, -- Lash of Pain (Rank 4)
        [1111779] = { parent = 1107814 }, -- Lash of Pain (Rank 5)
        [1111780] = { parent = 1107814 }, -- Lash of Pain (Rank 6)
        [1127274] = { parent = 1107814 }, -- Lash of Pain (Rank 7)
        [1147991] = { parent = 1107814 }, -- Lash of Pain (Rank 8)
        [1147992] = { parent = 1107814 }, -- Lash of Pain (Rank 9)

    [1117735] = { duration = 120, class = "WARLOCK" }, -- Suffering (Rank 1)
        [1117750] = { parent = 1117735 }, -- Suffering (Rank 2)
        [1117751] = { parent = 1117735 }, -- Suffering (Rank 3)
        [1117752] = { parent = 1117735 }, -- Suffering (Rank 4)
        [1127271] = { parent = 1117735 }, -- Suffering (Rank 5)
        [1133701] = { parent = 1117735 }, -- Suffering (Rank 6)
        [1147989] = { parent = 1117735 }, -- Suffering (Rank 7)
        [1147990] = { parent = 1117735 }, -- Suffering (Rank 8)

    [1119244] = { duration = 24, class = "WARLOCK", default = true }, -- Spell Lock (Rank 1)
        [1119647] = { parent = 1119244 }, -- Spell Lock (Rank 2)

    [1119505] = { duration = 8, class = "WARLOCK" }, -- Devour Magic (Rank 1)
        [1119731] = { parent = 1119505 }, -- Devour Magic (Rank 2)
        [1119734] = { parent = 1119505 }, -- Devour Magic (Rank 3)
        [1119736] = { parent = 1119505 }, -- Devour Magic (Rank 4)
        [1127276] = { parent = 1119505 }, -- Devour Magic (Rank 5)
        [1127277] = { parent = 1119505 }, -- Devour Magic (Rank 6)
        [1148011] = { parent = 1119505 }, -- Devour Magic (Rank 7)

    [1130151] = { duration = 30, class = "WARLOCK" }, -- Intercept (Rank 1)
        [1130194] = { parent = 1130151 }, -- Intercept (Rank 2)
        [1130198] = { parent = 1130151 }, -- Intercept (Rank 3)
        [1147996] = { parent = 1130151 }, -- Intercept (Rank 4)

    [1130213] = { duration = 6, class = "WARLOCK" }, -- Cleave (Rank 1)
        [1130219] = { parent = 1130213 }, -- Cleave (Rank 2)
        [1130223] = { parent = 1130213 }, -- Cleave (Rank 3)
        [1147994] = { parent = 1130213 }, -- Cleave (Rank 4)

    [1133698] = { duration = 5, class = "WARLOCK" }, -- Anguish (Rank 1)
        [1133699] = { parent = 1133698 }, -- Anguish (Rank 2)
        [1133700] = { parent = 1133698 }, -- Anguish (Rank 3)
        [1147993] = { parent = 1133698 }, -- Anguish (Rank 4)

    --[[ Shadow Bite Modifiers

    - Improved Felhunter (Rank 1)
      Your Felhunter regains 4% of its maximum mana each time it hits with its Shadow Bite ability and the cooldown on that ability is reduced by 2 sec. In addition, increases the effect of your Felhunter's Fel Intelligence by 5%.
      https://www.wowhead.com/wotlk/spell=54037

    - Improved Felhunter (Rank 2)
      Your Felhunter regains 8% of its maximum mana each time it hits with its Shadow Bite ability and the cooldown on that ability is reduced by 4 sec. In addition, increases the effect of your Felhunter's Fel Intelligence by 10%.
      https://www.wowhead.com/wotlk/spell=54038

    --]]

    [1154049] = { duration = 6, class = "WARLOCK" }, -- Shadow Bite (Rank 1)
        [1154050] = { parent = 1154049 }, -- Shadow Bite (Rank 2)
        [1154051] = { parent = 1154049 }, -- Shadow Bite (Rank 3)
        [1154052] = { parent = 1154049 }, -- Shadow Bite (Rank 4)
        [1154053] = { parent = 1154049 }, -- Shadow Bite (Rank 5)

    -- Shaman

    --[[ Chain Lightning Modifiers

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Nature's Swiftness
      When activated, your next Nature spell with a base casting time less than 10 sec. becomes an instant cast spell. Nature's Swiftness shares a cooldown with Elemental Mastery.
      https://www.wowhead.com/wotlk/spell=16188

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    --]]

    [1100421] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -2.5 } }, -- Chain Lightning (Rank 1)
        [1100930] = { parent = 1100421 }, -- Chain Lightning (Rank 2)
        [1102860] = { parent = 1100421 }, -- Chain Lightning (Rank 3)
        [1110605] = { parent = 1100421 }, -- Chain Lightning (Rank 4)
        [1125439] = { parent = 1100421 }, -- Chain Lightning (Rank 5)
        [1125442] = { parent = 1100421 }, -- Chain Lightning (Rank 6)
        [1149270] = { parent = 1100421 }, -- Chain Lightning (Rank 7)
        [1149271] = { parent = 1100421 }, -- Chain Lightning (Rank 8)

    --[[ Astral Recall Modifiers

    - Glyph of Astral Recall
      Cooldown of your Astral Recall spell reduced by 7.5 min.
      https://www.wowhead.com/wotlk/spell=58058

    - Glyph of Astral Recall
      Cooldown of your Astral Recall spell reduced by 7.5 min.
      https://www.wowhead.com/wotlk/spell=58260

    --]]

    [1100556] = { duration = 900, class = "SHAMAN" }, -- Astral Recall

    --[[ Fire Nova Modifiers

    - Improved Fire Nova (Rank 1)
      Increases the damage done by your Fire Nova by 10% and reduces the cooldown by 2 sec.
      https://www.wowhead.com/wotlk/spell=16086

    - Improved Fire Nova (Rank 2)
      Increases the damage done by your Fire Nova by 20% and reduces the cooldown by 4 sec.
      https://www.wowhead.com/wotlk/spell=16544

    - Glyph of Fire Nova
      Reduces the cooldown of your Fire Nova spell by 3 seconds.
      https://www.wowhead.com/wotlk/spell=55450

    - Glyph of Fire Nova
      Reduces the cooldown of your Fire Nova spell by 3 seconds.
      https://www.wowhead.com/wotlk/spell=55544

    --]]

    [1101535] = { duration = 10, class = "SHAMAN" }, -- Fire Nova (Rank 1)
        [1108498] = { parent = 1101535 }, -- Fire Nova (Rank 2)
        [1108499] = { parent = 1101535 }, -- Fire Nova (Rank 3)
        [1111314] = { parent = 1101535 }, -- Fire Nova (Rank 4)
        [1111315] = { parent = 1101535 }, -- Fire Nova (Rank 5)
        [1125546] = { parent = 1101535 }, -- Fire Nova (Rank 6)
        [1125547] = { parent = 1101535 }, -- Fire Nova (Rank 7)
        [1161649] = { parent = 1101535 }, -- Fire Nova (Rank 8)
        [1161657] = { parent = 1101535 }, -- Fire Nova (Rank 9)

    [1102062] = { duration = 600, class = "SHAMAN" }, -- Earth Elemental Totem

    --[[ Earthbind Totem Modifiers

    - Earth's Grasp (Rank 1)
      Increases the health of your Stoneclaw Totem by 25% and the radius of your Earthbind Totem by 10%, and reduces the cooldown of both totems by 15%.
      https://www.wowhead.com/wotlk/spell=16043

    - Earth's Grasp (Rank 2)
      Increases the health of your Stoneclaw Totem by 50% and the radius of your Earthbind Totem by 20%, and reduces the cooldown of both totems by 30%.
      https://www.wowhead.com/wotlk/spell=16130

    --]]

    [1102484] = { duration = 15, class = "SHAMAN", adjust = -4.5 }, -- Earthbind Totem

    [1102825] = { duration = 300, class = "SHAMAN" }, -- Bloodlust

    --[[ Fire Elemental Totem Modifiers

    - Glyph of Fire Elemental Totem
      Reduces the cooldown of your Fire Elemental Totem by 5 min.
      https://www.wowhead.com/wotlk/spell=55455

    - Glyph of Fire Elemental Totem
      Reduces the cooldown of your Fire Elemental Totem by 5 min.
      https://www.wowhead.com/wotlk/spell=55542

    --]]

    [1102894] = { duration = 600, class = "SHAMAN", adjust = -300 }, -- Fire Elemental Totem

    --[[ Stoneclaw Totem Modifiers

    - Earth's Grasp (Rank 1)
      Increases the health of your Stoneclaw Totem by 25% and the radius of your Earthbind Totem by 10%, and reduces the cooldown of both totems by 15%.
      https://www.wowhead.com/wotlk/spell=16043

    - Earth's Grasp (Rank 2)
      Increases the health of your Stoneclaw Totem by 50% and the radius of your Earthbind Totem by 20%, and reduces the cooldown of both totems by 30%.
      https://www.wowhead.com/wotlk/spell=16130

    --]]

    [1105730] = { duration = 30, class = "SHAMAN", adjust = -9 }, -- Stoneclaw Totem (Rank 1)
        [1106390] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 2)
        [1106391] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 3)
        [1106392] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 4)
        [1110427] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 5)
        [1110428] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 6)
        [1125525] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 7)
        [1158580] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 8)
        [1158581] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 9)
        [1158582] = { parent = 1105730 }, -- Stoneclaw Totem (Rank 10)

    --[[ Earth Shock Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    --]]

    [1108042] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -1, Enhancement = -1 } }, -- Earth Shock (Rank 1)
        [1108044] = { parent = 1108042 }, -- Earth Shock (Rank 2)
        [1108045] = { parent = 1108042 }, -- Earth Shock (Rank 3)
        [1108046] = { parent = 1108042 }, -- Earth Shock (Rank 4)
        [1110412] = { parent = 1108042 }, -- Earth Shock (Rank 5)
        [1110413] = { parent = 1108042 }, -- Earth Shock (Rank 6)
        [1110414] = { parent = 1108042 }, -- Earth Shock (Rank 7)
        [1125454] = { parent = 1108042 }, -- Earth Shock (Rank 8)
        [1149230] = { parent = 1108042 }, -- Earth Shock (Rank 9)
        [1149231] = { parent = 1108042 }, -- Earth Shock (Rank 10)

    --[[ Flame Shock Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    - Booming Echoes (Rank 1)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 1 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 10%.
      https://www.wowhead.com/wotlk/spell=63370

    - Booming Echoes (Rank 2)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 2 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 20%.
      https://www.wowhead.com/wotlk/spell=63372

    --]]

    [1108050] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -3, Enhancement = -1 } }, -- Flame Shock (Rank 1)
        [1108052] = { parent = 1108050 }, -- Flame Shock (Rank 2)
        [1108053] = { parent = 1108050 }, -- Flame Shock (Rank 3)
        [1110447] = { parent = 1108050 }, -- Flame Shock (Rank 4)
        [1110448] = { parent = 1108050 }, -- Flame Shock (Rank 5)
        [1129228] = { parent = 1108050 }, -- Flame Shock (Rank 6)
        [1125457] = { parent = 1108050 }, -- Flame Shock (Rank 7)
        [1149232] = { parent = 1108050 }, -- Flame Shock (Rank 8)
        [1149233] = { parent = 1108050 }, -- Flame Shock (Rank 9)

    --[[ Frost Shock Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    - Booming Echoes (Rank 1)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 1 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 10%.
      https://www.wowhead.com/wotlk/spell=63370

    - Booming Echoes (Rank 2)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 2 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 20%.
      https://www.wowhead.com/wotlk/spell=63372

    --]]

    [1108056] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -3, Enhancement = -1 } }, -- Frost Shock (Rank 1)
        [1108058] = { parent = 1108056 }, -- Frost Shock (Rank 2)
        [1110472] = { parent = 1108056 }, -- Frost Shock (Rank 3)
        [1110473] = { parent = 1108056 }, -- Frost Shock (Rank 4)
        [1125464] = { parent = 1108056 }, -- Frost Shock (Rank 5)
        [1149235] = { parent = 1108056 }, -- Frost Shock (Rank 6)
        [1149236] = { parent = 1108056 }, -- Frost Shock (Rank 7)

    --[[ Grounding Totem Modifiers

    - Guardian Totems (Rank 1)
      Increases the amount of armor increased by your Stoneskin Totem by 10% and reduces the cooldown of your Grounding Totem by 1 sec.
      https://www.wowhead.com/wotlk/spell=16258

    - Guardian Totems (Rank 2)
      Increases the amount of armor increased by your Stoneskin Totem by 20% and reduces the cooldown of your Grounding Totem by 2 sec.
      https://www.wowhead.com/wotlk/spell=16293

    - Improved Grounding Totem
      Reduces the cooldown of your Grounding Totem ability by 1.5 sec.
      https://www.wowhead.com/wotlk/spell=44299

    --]]

    [1108177] = { duration = 15, class = "SHAMAN", adjust = -2 }, -- Grounding Totem

    --[[ Elemental Mastery Modifiers

    - Glyph of Elemental Mastery
      Reduces the cooldown of your Elemental Mastery ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=55452

    --]]

    [1116166] = { duration = 180, class = "SHAMAN" }, -- Elemental Mastery

    --[[ Nature's Swiftness Modifiers

    - Improved Nature's Swiftness
      Reduces the cooldown on your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=37211

    - Nature's Swiftness Cooldown Reduction
      Reduces the cooldown of your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=38466

    - Nature's Swiftness Cooldown Reduction
      Reduces the cooldown on your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=38499

    - Nature's Swiftness Cooldown Reduction (Shaman)
      Reduces the cooldown of your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=48109

    --]]

    [1116188] = { duration = 180, class = "SHAMAN" }, -- Nature's Swiftness

    [1116190] = { duration = 300, class = "SHAMAN" }, -- Mana Tide Totem

    --[[ Stormstrike Modifiers

    - Shaman Stormstrike Cooldown Reduction (Rank 1)
      Reduces the cooldown of your Stormstrike ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=33018

    --]]

    [1117364] = { duration = 8, class = "SHAMAN", adjust = -2 }, -- Stormstrike

    --[[ Reincarnation Modifiers

    - Improved Reincarnation (Rank 1)
      Reduces the cooldown of your Reincarnation spell by 7 min and increases the amount of health and mana recovered when reincarnating by an additional 10%.
      https://www.wowhead.com/wotlk/spell=16184

    - Improved Reincarnation (Rank 2)
      Reduces the cooldown of your Reincarnation spell by 15 min and increases the amount of health and mana recovered when reincarnating by an additional 20%.
      https://www.wowhead.com/wotlk/spell=16209

    - Reduced Reincarnation Cooldown
      Reduces the cooldown of Reincarnation by 5 minutes.
      https://www.wowhead.com/wotlk/spell=27797

    --]]

    [1120608] = { duration = 1800, class = "SHAMAN" }, -- Reincarnation

    [1130823] = { duration = 60, class = "SHAMAN" }, -- Shamanistic Rage

    [1132182] = { duration = 300, class = "SHAMAN" }, -- Heroism

    --[[ Thunderstorm Modifiers

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Glyph of Thunder
      Reduces the cooldown on Thunderstorm by 10 sec.
      https://www.wowhead.com/wotlk/spell=63270

    - Glyph of Thunder
      Reduces the cooldown on Thunderstorm by 10 sec.
      https://www.wowhead.com/wotlk/spell=63902

    --]]

    [1151490] = { duration = 45, class = "SHAMAN", adjust = -10 }, -- Thunderstorm (Rank 1)
        [1159156] = { parent = 1151490 }, -- Thunderstorm (Rank 2)
        [1159158] = { parent = 1151490 }, -- Thunderstorm (Rank 3)
        [1159159] = { parent = 1151490 }, -- Thunderstorm (Rank 4)

    --[[ Lava Burst Modifiers

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    --]]

    [1151505] = { duration = 8, class = "SHAMAN" }, -- Lava Burst (Rank 1)
        [1160043] = { parent = 1151505 }, -- Lava Burst (Rank 2)

    --[[ Hex Modifiers

    - Nature's Swiftness
      When activated, your next Nature spell with a base casting time less than 10 sec. becomes an instant cast spell. Nature's Swiftness shares a cooldown with Elemental Mastery.
      https://www.wowhead.com/wotlk/spell=16188

    --]]

    [1151514] = { duration = 45, class = "SHAMAN" }, -- Hex

    [1151533] = { duration = 180, class = "SHAMAN" }, -- Feral Spirit

    [1155198] = { duration = 180, class = "SHAMAN" }, -- Tidal Force

    --[[ Wind Shear Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    --]]

    [1157994] = { duration = 6, class = "SHAMAN", default = true, adjust = { Elemental = -1, Enhancement = -1 } }, -- Wind Shear

    [1160103] = { duration = 6, class = "SHAMAN" }, -- Lava Lash

    --[[ Riptide Modifiers

    - Item - Shaman T8 Restoration 2P Bonus
      Reduces the cooldown on Riptide by 1 sec.
      https://www.wowhead.com/wotlk/spell=64921

    --]]

    [1161295] = { duration = 6, class = "SHAMAN" }, -- Riptide (Rank 1)
        [1161299] = { parent = 1161295 }, -- Riptide (Rank 2)
        [1161300] = { parent = 1161295 }, -- Riptide (Rank 3)
        [1161301] = { parent = 1161295 }, -- Riptide (Rank 4)

    -- Paladin

    --[[ Divine Protection Modifiers

    - Sacred Duty (Rank 1)
      Increases your total Stamina by 2%, reduces the cooldown of your Divine Shield and Divine Protection spells by 30 sec.
      https://www.wowhead.com/wotlk/spell=31848

    - Sacred Duty (Rank 2)
      Increases your total Stamina by 4%, reduces the cooldown of your Divine Shield and Divine Protection spells by 60 sec.
      https://www.wowhead.com/wotlk/spell=31849

    - Item - Paladin T9 Tank 4P Bonus
      Decreases the cooldown on your Divine Protection ability and reduces the duration of Forbearance by 30 sec.
      https://www.wowhead.com/wotlk/spell=67187

    --]]

    [1100498] = { duration = 180, class = "PALADIN", adjust = { Protection = -60 } }, -- Divine Protection

    --[[ Lay on Hands Modifiers

    - Improved Lay on Hands (Rank 1)
      Grants the target of your Lay on Hands spell 10% reduced physical damage taken for 15 sec. In addition, the cooldown for your Lay on Hands spell is reduced by 2 min.
      https://www.wowhead.com/wotlk/spell=20234

    - Improved Lay on Hands (Rank 2)
      Grants the target of your Lay on Hands spell 20% reduced physical damage taken for 15 sec. In addition, the cooldown for your Lay on Hands spell is reduced by 4 min.
      https://www.wowhead.com/wotlk/spell=20235

    - Lay Hands
      Reduces cooldown on your Lay on Hands by 4 min.
      https://www.wowhead.com/wotlk/spell=28774

    - Glyph of Lay on Hands
      Reduces the cooldown of your Lay on Hands spell by 5 min.
      https://www.wowhead.com/wotlk/spell=57955

    --]]

    [1100633] = { duration = 1200, class = "PALADIN", adjust = -840 }, -- Lay on Hands (Rank 1)
        [1102800] = { parent = 1100633 }, -- Lay on Hands (Rank 2)
        [1110310] = { parent = 1100633 }, -- Lay on Hands (Rank 3)
        [1127154] = { parent = 1100633 }, -- Lay on Hands (Rank 4)
        [1148788] = { parent = 1100633 }, -- Lay on Hands (Rank 5)

    --[[ Divine Shield Modifiers

    - Sacred Duty (Rank 1)
      Increases your total Stamina by 2%, reduces the cooldown of your Divine Shield and Divine Protection spells by 30 sec.
      https://www.wowhead.com/wotlk/spell=31848

    - Sacred Duty (Rank 2)
      Increases your total Stamina by 4%, reduces the cooldown of your Divine Shield and Divine Protection spells by 60 sec.
      https://www.wowhead.com/wotlk/spell=31849

    --]]

    [1100642] = { duration = 300, class = "PALADIN", adjust = { Protection = -60 } }, -- Divine Shield

    --[[ Hammer of Justice Modifiers

    - Improved Hammer of Justice (Rank 1)
      Decreases the cooldown of your Hammer of Justice spell by 10 sec.
      https://www.wowhead.com/wotlk/spell=20487

    - Improved Hammer of Justice (Rank 2)
      Decreases the cooldown of your Hammer of Justice spell by 20 sec.
      https://www.wowhead.com/wotlk/spell=20488

    - Hammer of Justice Cooldown Reduction
      Reduces the cooldown of your Hammer of Justice by 10 sec.
      https://www.wowhead.com/wotlk/spell=23302

    - Judgements of the Just (Rank 1)
      Reduces the cooldown of your Hammer of Justice by 5 sec, increases the duration of your Seal of Justice effect by 0.5 sec and your Judgement spells also reduce the melee attack speed of the target by 10%.
      https://www.wowhead.com/wotlk/spell=53695

    - Judgements of the Just (Rank 2)
      Reduces the cooldown of your Hammer of Justice by 10 sec, increases the duration of your Seal of Justice effect by 1 sec and your Judgement spells also reduce the melee attack speed of the target by 20%.
      https://www.wowhead.com/wotlk/spell=53696

    --]]

    [1100853] = { duration = 60, class = "PALADIN", adjust = { Protection = -30, default = -20 } }, -- Hammer of Justice (Rank 1)
        [1105588] = { parent = 1100853 }, -- Hammer of Justice (Rank 2)
        [1105589] = { parent = 1100853 }, -- Hammer of Justice (Rank 3)
        [1110308] = { parent = 1100853 }, -- Hammer of Justice (Rank 4)

    --[[ Exorcism Modifiers

    - Purifying Power (Rank 1)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 5% and reduces the cooldown of your Exorcism and Holy Wrath spells by 17%.
      https://www.wowhead.com/wotlk/spell=31825

    - Purifying Power (Rank 2)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 10% and reduces the cooldown of your Exorcism and Holy Wrath spells by 33%.
      https://www.wowhead.com/wotlk/spell=31826

    --]]

    [1100879] = { duration = 15, class = "PALADIN", adjust = -4.95 }, -- Exorcism (Rank 1)
        [1105614] = { parent = 1100879 }, -- Exorcism (Rank 2)
        [1105615] = { parent = 1100879 }, -- Exorcism (Rank 3)
        [1110312] = { parent = 1100879 }, -- Exorcism (Rank 4)
        [1110313] = { parent = 1100879 }, -- Exorcism (Rank 5)
        [1110314] = { parent = 1100879 }, -- Exorcism (Rank 6)
        [1127138] = { parent = 1100879 }, -- Exorcism (Rank 7)
        [1148800] = { parent = 1100879 }, -- Exorcism (Rank 8)
        [1148801] = { parent = 1100879 }, -- Exorcism (Rank 9)

    --[[ Hand of Protection Modifiers

    - Guardian's Favor (Rank 1)
      Reduces the cooldown of your Hand of Protection by 60 sec and increases the duration of your Hand of Freedom by 2 sec.
      https://www.wowhead.com/wotlk/spell=20174

    - Guardian's Favor (Rank 2)
      Reduces the cooldown of your Hand of Protection by 2 min and increases the duration of your Hand of Freedom by 4 sec.
      https://www.wowhead.com/wotlk/spell=20175

    --]]

    [1101022] = { duration = 300, class = "PALADIN", adjust = -120 }, -- Hand of Protection (Rank 1)
        [1105599] = { parent = 1101022 }, -- Hand of Protection (Rank 2)
        [1110278] = { parent = 1101022 }, -- Hand of Protection (Rank 3)

    [1101038] = { duration = 120, class = "PALADIN" }, -- Hand of Salvation

    --[[ Hand of Freedom Modifiers

    - Guardian's Favor (Rank 1)
      Reduces the cooldown of your Hand of Protection by 60 sec and increases the duration of your Hand of Freedom by 2 sec.
      https://www.wowhead.com/wotlk/spell=20174

    - Guardian's Favor (Rank 2)
      Reduces the cooldown of your Hand of Protection by 2 min and increases the duration of your Hand of Freedom by 4 sec.
      https://www.wowhead.com/wotlk/spell=20175

    --]]

    [1101044] = { duration = 25, class = "PALADIN" }, -- Hand of Freedom

    --[[ Holy Wrath Modifiers

    - Purifying Power (Rank 1)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 5% and reduces the cooldown of your Exorcism and Holy Wrath spells by 17%.
      https://www.wowhead.com/wotlk/spell=31825

    - Purifying Power (Rank 2)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 10% and reduces the cooldown of your Exorcism and Holy Wrath spells by 33%.
      https://www.wowhead.com/wotlk/spell=31826

    - Glyph of Holy Wrath
      Reduces the cooldown of your Holy Wrath spell by 15 sec.
      https://www.wowhead.com/wotlk/spell=56420

    - Glyph of Holy Wrath
      Reduces the cooldown of your Holy Wrath spell by 15 sec.
      https://www.wowhead.com/wotlk/spell=59427

    --]]

    [1102812] = { duration = 30, class = "PALADIN" }, -- Holy Wrath (Rank 1)
        [1110318] = { parent = 1102812 }, -- Holy Wrath (Rank 2)
        [1127139] = { parent = 1102812 }, -- Holy Wrath (Rank 3)
        [1148816] = { parent = 1102812 }, -- Holy Wrath (Rank 4)
        [1148817] = { parent = 1102812 }, -- Holy Wrath (Rank 5)

    [1106940] = { duration = 120, class = "PALADIN" }, -- Hand of Sacrifice

    [1119752] = { duration = 600, class = "PALADIN" }, -- Divine Intervention

    [1120066] = { duration = 60, class = "PALADIN" }, -- Repentance

    --[[ Consecration Modifiers

    - Purifying Power (Rank 1)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 5% and reduces the cooldown of your Exorcism and Holy Wrath spells by 17%.
      https://www.wowhead.com/wotlk/spell=31825

    - Purifying Power (Rank 2)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 10% and reduces the cooldown of your Exorcism and Holy Wrath spells by 33%.
      https://www.wowhead.com/wotlk/spell=31826

    - Glyph of Consecration
      Increases the duration and cooldown of Consecration by 2 sec.
      https://www.wowhead.com/wotlk/spell=54928

    - Glyph of Consecration
      Increases the duration and cooldown of Consecration by 2 sec.
      https://www.wowhead.com/wotlk/spell=55114

    --]]

    [1126573] = { duration = 8, class = "PALADIN" }, -- Consecration (Rank 1)
        [1120116] = { parent = 1126573 }, -- Consecration (Rank 2)
        [1120922] = { parent = 1126573 }, -- Consecration (Rank 3)
        [1120923] = { parent = 1126573 }, -- Consecration (Rank 4)
        [1120924] = { parent = 1126573 }, -- Consecration (Rank 5)
        [1127173] = { parent = 1126573 }, -- Consecration (Rank 6)
        [1148818] = { parent = 1126573 }, -- Consecration (Rank 7)
        [1148819] = { parent = 1126573 }, -- Consecration (Rank 8)

    --[[ Divine Favor Modifiers

    - Divine Favor Cooldown
      Reduces the cooldown on your Divine Favor ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=37183

    --]]

    [1120216] = { duration = 120, class = "PALADIN" }, -- Divine Favor

    --[[ Judgement of Light Modifiers

    - Improved Judgements (Rank 1)
      Decreases the cooldown of your Judgement spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=25956

    - Improved Judgements (Rank 2)
      Decreases the cooldown of your Judgement spells by 2 sec.
      https://www.wowhead.com/wotlk/spell=25957

    - Judgment Cooldown Reduction
      Reduces the cooldown of your Judgment of Light, Judgment of Wisdom, and Judgment of Justice by 1 second.
      https://www.wowhead.com/wotlk/spell=60153

    - Judgement Cooldown Reduction
      Reduces the cooldown of your Judgements by 1 sec.
      https://www.wowhead.com/wotlk/spell=61776

    - Glyph of Turn Evil
      Reduces the casting time of your Turn Evil spell by 100%, but increases the cooldown by 8 sec.
      https://www.wowhead.com/wotlk/spell=55117

    --]]

    [1120271] = { duration = 10, class = "PALADIN", adjust = { Retribution = -3, default = -1 } }, -- Judgement of Light

    --[[ Holy Shock Modifiers

    - Glyph of Holy Shock
      Reduces the cooldown of Holy Shock by 1 sec.
      https://www.wowhead.com/wotlk/spell=63224

    - Glyph of Guardian Spirit
      If your Guardian Spirit lasts its entire duration without being triggered, the cooldown is reset to 1 min.
      https://www.wowhead.com/wotlk/spell=63231

    - Glyph of Holy Shock
      Reduces the cooldown of Holy Shock by 1 sec.
      https://www.wowhead.com/wotlk/spell=63870

    --]]

    [1120473] = { duration = 6, class = "PALADIN" }, -- Holy Shock (Rank 1)
        [1120929] = { parent = 1120473 }, -- Holy Shock (Rank 2)
        [1120930] = { parent = 1120473 }, -- Holy Shock (Rank 3)
        [1127174] = { parent = 1120473 }, -- Holy Shock (Rank 4)
        [1133072] = { parent = 1120473 }, -- Holy Shock (Rank 5)
        [1148824] = { parent = 1120473 }, -- Holy Shock (Rank 6)
        [1148825] = { parent = 1120473 }, -- Holy Shock (Rank 7)

    [1120925] = { duration = 8, class = "PALADIN" }, -- Holy Shield (Rank 1)
        [1120927] = { parent = 1120925 }, -- Holy Shield (Rank 2)
        [1120928] = { parent = 1120925 }, -- Holy Shield (Rank 3)
        [1127179] = { parent = 1120925 }, -- Holy Shield (Rank 4)
        [1148951] = { parent = 1120925 }, -- Holy Shield (Rank 5)
        [1148952] = { parent = 1120925 }, -- Holy Shield (Rank 6)

    --[[ Hammer of Wrath Modifiers

    - Sanctified Wrath (Rank 1)
      Increases the critical strike chance of Hammer of Wrath by 25%, reduces the cooldown of Avenging Wrath by 30 secs and while affected by Avenging Wrath 25% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53375

    - Sanctified Wrath (Rank 2)
      Increases the critical strike chance of Hammer of Wrath by 50%, reduces the cooldown of Avenging Wrath by 60 secs and while affected by Avenging Wrath 50% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53376

    --]]

    [1124275] = { duration = 6, class = "PALADIN" }, -- Hammer of Wrath (Rank 1)
        [1124274] = { parent = 1124275 }, -- Hammer of Wrath (Rank 2)
        [1124239] = { parent = 1124275 }, -- Hammer of Wrath (Rank 3)
        [1127180] = { parent = 1124275 }, -- Hammer of Wrath (Rank 4)
        [1148805] = { parent = 1124275 }, -- Hammer of Wrath (Rank 5)
        [1148806] = { parent = 1124275 }, -- Hammer of Wrath (Rank 6)

    --[[ Righteous Defense Modifiers

    - Reduced Righteous Defense Cooldown
      Reduces the cooldown on your Righteous Defense ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=37181

    --]]

    [1131789] = { duration = 8, class = "PALADIN" }, -- Righteous Defense

    [1131821] = { duration = 120, class = "PALADIN" }, -- Aura Mastery

    [1131842] = { duration = 180, class = "PALADIN" }, -- Divine Illumination

    --[[ Avenging Wrath Modifiers

    - Sanctified Wrath (Rank 1)
      Increases the critical strike chance of Hammer of Wrath by 25%, reduces the cooldown of Avenging Wrath by 30 secs and while affected by Avenging Wrath 25% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53375

    - Sanctified Wrath (Rank 2)
      Increases the critical strike chance of Hammer of Wrath by 50%, reduces the cooldown of Avenging Wrath by 60 secs and while affected by Avenging Wrath 50% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53376

    - Glyph of Avenging Wrath
      Reduces the cooldown of your Hammer of Wrath spell by 50% while Avenging Wrath is active.
      https://www.wowhead.com/wotlk/spell=54938

    --]]

    -- todo: Glyph of Avenging Wrath

    [1131884] = { duration = 180, class = "PALADIN", adjust = { Retribution = -60 } }, -- Avenging Wrath

    [1131935] = { duration = 30, class = "PALADIN" }, -- Avenger's Shield (Rank 1)
        [1132699] = { parent = 1131935 }, -- Avenger's Shield (Rank 2)
        [1132700] = { parent = 1131935 }, -- Avenger's Shield (Rank 3)
        [1148826] = { parent = 1131935 }, -- Avenger's Shield (Rank 4)
        [1148827] = { parent = 1131935 }, -- Avenger's Shield (Rank 5)

    [1135395] = { duration = 4, class = "PALADIN" }, -- Crusader Strike

    [1153385] = { duration = 10, class = "PALADIN" }, -- Divine Storm

    --[[ Judgement of Justice Modifiers

    - Improved Judgements (Rank 1)
      Decreases the cooldown of your Judgement spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=25956

    - Improved Judgements (Rank 2)
      Decreases the cooldown of your Judgement spells by 2 sec.
      https://www.wowhead.com/wotlk/spell=25957

    - Judgment Cooldown Reduction
      Reduces the cooldown of your Judgment of Light, Judgment of Wisdom, and Judgment of Justice by 1 second.
      https://www.wowhead.com/wotlk/spell=60153

    - Judgement Cooldown Reduction
      Reduces the cooldown of your Judgements by 1 sec.
      https://www.wowhead.com/wotlk/spell=61776

    --]]

    [1153407] = { duration = 10, class = "PALADIN", adjust = { Retribution = -3, default = -1 } }, -- Judgement of Justice

    --[[ Judgement of Wisdom Modifiers

    - Improved Judgements (Rank 1)
      Decreases the cooldown of your Judgement spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=25956

    - Improved Judgements (Rank 2)
      Decreases the cooldown of your Judgement spells by 2 sec.
      https://www.wowhead.com/wotlk/spell=25957

    - Judgment Cooldown Reduction
      Reduces the cooldown of your Judgment of Light, Judgment of Wisdom, and Judgment of Justice by 1 second.
      https://www.wowhead.com/wotlk/spell=60153

    - Judgement Cooldown Reduction
      Reduces the cooldown of your Judgements by 1 sec.
      https://www.wowhead.com/wotlk/spell=61776

    --]]

    [1153408] = { duration = 10, class = "PALADIN", adjust = { Retribution = -3, default = -1 } }, -- Judgement of Wisdom

    --[[ Hammer of the Righteous Modifiers

    - Item - Paladin T9 Tank 2P Bonus
      Decreases the cooldown on your Hand of Reckoning ability by 2 sec and increases the damage done by your Hammer of the Righteous ability by 5%.
      https://www.wowhead.com/wotlk/spell=67186

    --]]

    [1153595] = { duration = 6, class = "PALADIN" }, -- Hammer of the Righteous

    [1153600] = { duration = 6, class = "PALADIN" }, -- Shield of Righteousness (Rank 1)
        [1161411] = { parent = 1153600 }, -- Shield of Righteousness (Rank 2)

    [1154428] = { duration = 60, class = "PALADIN" }, -- Divine Plea

    --[[ Hand of Reckoning Modifiers

    - Item - Paladin T9 Tank 2P Bonus
      Decreases the cooldown on your Hand of Reckoning ability by 2 sec and increases the damage done by your Hammer of the Righteous ability by 5%.
      https://www.wowhead.com/wotlk/spell=67186

    --]]

    [1162124] = { duration = 8, class = "PALADIN" }, -- Hand of Reckoning

    [1164205] = { duration = 120, class = "PALADIN" }, -- Divine Sacrifice

    -- Hunter

    --[[ Disengage Modifiers

    - Survival Tactics (Rank 1)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 2%, and reduces the cooldown of your Disengage ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=19286

    - Survival Tactics (Rank 2)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 4%, and reduces the cooldown of your Disengage ability by 4 sec.
      https://www.wowhead.com/wotlk/spell=19287

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Glyph of Disengage
      Decreases the cooldown of Disengage by 5 sec.
      https://www.wowhead.com/wotlk/spell=56844

    - Glyph of Disenegage
      Decreases the cooldown of Disengage by 5 sec.
      https://www.wowhead.com/wotlk/spell=56876

    --]]

    [1100781] = { duration = 25, class = "HUNTER", adjust = { ["Beast Mastery"] = 0, default = -4} }, -- Disengage

    [1101495] = { duration = 5, class = "HUNTER" }, -- Mongoose Bite (Rank 1)
        [1114269] = { parent = 1101495 }, -- Mongoose Bite (Rank 2)
        [1114270] = { parent = 1101495 }, -- Mongoose Bite (Rank 3)
        [1114271] = { parent = 1101495 }, -- Mongoose Bite (Rank 4)
        [1136916] = { parent = 1101495 }, -- Mongoose Bite (Rank 5)
        [1153339] = { parent = 1101495 }, -- Mongoose Bite (Rank 6)

    --[[ Freezing Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    --]]

    [1101499] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Freezing Trap (Rank 1)
        [1114310] = { parent = 1101499 }, -- Freezing Trap (Rank 2)
        [1114311] = { parent = 1101499 }, -- Freezing Trap (Rank 3)

    [1101513] = { duration = 30, class = "HUNTER" }, -- Scare Beast (Rank 1)
        [1114326] = { parent = 1101513 }, -- Scare Beast (Rank 2)
        [1114327] = { parent = 1101513 }, -- Scare Beast (Rank 3)

    [1101543] = { duration = 20, class = "HUNTER" }, -- Flare

    --[[ Multi-Shot Modifiers

    - Black Arrow (Rank 1)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 157 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=3674

    - Improved Multi-Shot
      Reduces the cooldown of your Multi-Shot ability by 1 sec.
      https://www.wowhead.com/wotlk/spell=44292

    - Glyph of Multi-Shot
      Decreases the cooldown of Multi-Shot by 1 sec.
      https://www.wowhead.com/wotlk/spell=56836

    - Black Arrow (Rank 2)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 188 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63668

    - Black Arrow (Rank 3)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 241 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63669

    - Black Arrow (Rank 4)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 296 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63670

    - Black Arrow (Rank 5)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 448 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63671

    - Black Arrow (Rank 6)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 553 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63672

    --]]

    [1102643] = { duration = 10, class = "HUNTER" }, -- Multi-Shot (Rank 1)
        [1114288] = { parent = 1102643 }, -- Multi-Shot (Rank 2)
        [1114289] = { parent = 1102643 }, -- Multi-Shot (Rank 3)
        [1114290] = { parent = 1102643 }, -- Multi-Shot (Rank 4)
        [1125294] = { parent = 1102643 }, -- Multi-Shot (Rank 5)
        [1127021] = { parent = 1102643 }, -- Multi-Shot (Rank 6)
        [1149047] = { parent = 1102643 }, -- Multi-Shot (Rank 7)
        [1149048] = { parent = 1102643 }, -- Multi-Shot (Rank 8)

    --[[ Raptor Strike Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    --]]

    [1102973] = { duration = 6, class = "HUNTER" }, -- Raptor Strike (Rank 1)
        [1114260] = { parent = 1102973 }, -- Raptor Strike (Rank 2)
        [1114261] = { parent = 1102973 }, -- Raptor Strike (Rank 3)
        [1114262] = { parent = 1102973 }, -- Raptor Strike (Rank 4)
        [1114263] = { parent = 1102973 }, -- Raptor Strike (Rank 5)
        [1114264] = { parent = 1102973 }, -- Raptor Strike (Rank 6)
        [1114265] = { parent = 1102973 }, -- Raptor Strike (Rank 7)
        [1114266] = { parent = 1102973 }, -- Raptor Strike (Rank 8)
        [1127014] = { parent = 1102973 }, -- Raptor Strike (Rank 9)
        [1148995] = { parent = 1102973 }, -- Raptor Strike (Rank 10)
        [1148996] = { parent = 1102973 }, -- Raptor Strike (Rank 11)

    [1103034] = { duration = 15, class = "HUNTER" }, -- Viper Sting

    --[[ Arcane Shot Modifiers

    - Lock and Load
      You have a chance when you trap a target with Freezing Trap, Freezing Arrow or Frost Trap and a chance when you deal periodic damage with your Immolation Trap, Explosive Trap or Black Arrow to cause your next 2 Arcane Shot or Explosive Shot spells to trigger no cooldown, cost no mana and consume no ammo. This effect has a 22 sec cooldown.
      https://www.wowhead.com/wotlk/spell=56453

    --]]

    [1103044] = { duration = 6, class = "HUNTER" }, -- Arcane Shot (Rank 1), cooldown is 0 while Lock and Load buff is active
        [1114281] = { parent = 1103044 }, -- Arcane Shot (Rank 2)
        [1114282] = { parent = 1103044 }, -- Arcane Shot (Rank 3)
        [1114283] = { parent = 1103044 }, -- Arcane Shot (Rank 4)
        [1114284] = { parent = 1103044 }, -- Arcane Shot (Rank 5)
        [1114285] = { parent = 1103044 }, -- Arcane Shot (Rank 6)
        [1114286] = { parent = 1103044 }, -- Arcane Shot (Rank 7)
        [1114287] = { parent = 1103044 }, -- Arcane Shot (Rank 8)
        [1127019] = { parent = 1103044 }, -- Arcane Shot (Rank 9)
        [1149044] = { parent = 1103044 }, -- Arcane Shot (Rank 10)
        [1149045] = { parent = 1103044 }, -- Arcane Shot (Rank 11)

    --[[ Rapid Fire Modifiers

    - Rapid Killing (Rank 1)
      Reduces the cooldown of your Rapid Fire ability by 1 min. In addition, after killing an opponent that yields experience or honor, your next Aimed Shot, Arcane Shot or Chimera Shot causes 10% additional damage. Lasts 20 sec.
      https://www.wowhead.com/wotlk/spell=34948

    - Rapid Killing (Rank 2)
      Reduces the cooldown of your Rapid Fire ability by 2 min. In addition, after killing an opponent that yields experience or honor, your next Aimed Shot, Arcane Shot or Chimera Shot causes 20% additional damage. Lasts 20 sec.
      https://www.wowhead.com/wotlk/spell=34949

    --]]

    [1103045] = { duration = 300, class = "HUNTER", adjust = -120 }, -- Rapid Fire


    [1105116] = { duration = 12, class = "HUNTER" }, -- Concussive Shot

    --[[ Feign Death Modifiers

    - Survival Tactics (Rank 1)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 2%, and reduces the cooldown of your Disengage ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=19286

    - Survival Tactics (Rank 2)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 4%, and reduces the cooldown of your Disengage ability by 4 sec.
      https://www.wowhead.com/wotlk/spell=19287

    - Glyph of Feign Death
      Reduces the cooldown of your Feign Death spell by 5 sec.
      https://www.wowhead.com/wotlk/spell=57903

    --]]

    [1105384] = { duration = 30, class = "HUNTER", adjust = -5 }, -- Feign Death

    [1106991] = { duration = 10, class = "HUNTER" }, -- Feed Pet

    --[[ Immolation Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [1113795] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Immolation Trap (Rank 1), cooldown incurred when Black Arrow is cast
        [1114302] = { parent = 1113795 }, -- Immolation Trap (Rank 2)
        [1114303] = { parent = 1113795 }, -- Immolation Trap (Rank 3)
        [1114304] = { parent = 1113795 }, -- Immolation Trap (Rank 4)
        [1114305] = { parent = 1113795 }, -- Immolation Trap (Rank 5)
        [1127023] = { parent = 1113795 }, -- Immolation Trap (Rank 6)
        [1149055] = { parent = 1113795 }, -- Immolation Trap (Rank 7)
        [1149056] = { parent = 1113795 }, -- Immolation Trap (Rank 8)

    --[[ Frost Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [1113809] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Frost Trap

    --[[ Explosive Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493


    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [1113813] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Explosive Trap (Rank 1), cooldown incurred when Black Arrow is cast
        [1114316] = { parent = 1113813 }, -- Explosive Trap (Rank 2)
        [1114317] = { parent = 1113813 }, -- Explosive Trap (Rank 3)
        [1127025] = { parent = 1113813 }, -- Explosive Trap (Rank 4)
        [1149066] = { parent = 1113813 }, -- Explosive Trap (Rank 5)
        [1149067] = { parent = 1113813 }, -- Explosive Trap (Rank 6)

    --[[ Deterrence Modifiers

    - Glyph of Deterrence
      Decreases the cooldown of Deterrence by 10 sec.
      https://www.wowhead.com/wotlk/spell=56850

    - Glyph of Deterrence
      Decreases the cooldown of Deterrence by 10 sec.
      https://www.wowhead.com/wotlk/spell=56875

    --]]

    [1119263] = { duration = 90, class = "HUNTER" }, -- Deterrence

    [1119306] = { duration = 5, class = "HUNTER" }, -- Counterattack (Rank 1)
        [1120909] = { parent = 1119306 }, -- Counterattack (Rank 2)
        [1120910] = { parent = 1119306 }, -- Counterattack (Rank 3)
        [1127067] = { parent = 1119306 }, -- Counterattack (Rank 4)
        [1148998] = { parent = 1119306 }, -- Counterattack (Rank 5)
        [1148999] = { parent = 1119306 }, -- Counterattack (Rank 6)

    --[[ Wyvern Sting Modifiers

    - Glyph of Wyvern Sting
      Decreases the cooldown of your Wyvern Sting by 6 sec.
      https://www.wowhead.com/wotlk/spell=56848

    --]]

    [1119386] = { duration = 60, class = "HUNTER" }, -- Wyvern Sting (Rank 1)
        [1124132] = { parent = 1119386 }, -- Wyvern Sting (Rank 2)
        [1124133] = { parent = 1119386 }, -- Wyvern Sting (Rank 3)
        [1127068] = { parent = 1119386 }, -- Wyvern Sting (Rank 4)
        [1149011] = { parent = 1119386 }, -- Wyvern Sting (Rank 5)
        [1149012] = { parent = 1119386 }, -- Wyvern Sting (Rank 6)

    --[[ Aimed Shot Modifiers

    - Glyph of Aimed Shot
      Reduces the cooldown of your Aimed Shot ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=56824

    --]]

    [1119434] = { duration = 10, class = "HUNTER" }, -- Aimed Shot (Rank 1)
        [1120900] = { parent = 1119434 }, -- Aimed Shot (Rank 2)
        [1120901] = { parent = 1119434 }, -- Aimed Shot (Rank 3)
        [1120902] = { parent = 1119434 }, -- Aimed Shot (Rank 4)
        [1120903] = { parent = 1119434 }, -- Aimed Shot (Rank 5)
        [1120904] = { parent = 1119434 }, -- Aimed Shot (Rank 6)
        [1127065] = { parent = 1119434 }, -- Aimed Shot (Rank 7)
        [1149049] = { parent = 1119434 }, -- Aimed Shot (Rank 8)
        [1149050] = { parent = 1119434 }, -- Aimed Shot (Rank 9)

    [1119503] = { duration = 30, class = "HUNTER" }, -- Scatter Shot

    --[[ Bestial Wrath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    - Glyph of Bestial Wrath
      Decreases the cooldown of Bestial Wrath by 20 sec.
      https://www.wowhead.com/wotlk/spell=56830

    --]]

    [1119574] = { duration = 120, class = "HUNTER", adjust = -50 }, -- Bestial Wrath

    --[[ Intimidation Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1119577] = { duration = 60, class = "HUNTER", adjust = -18 }, -- Intimidation

    --[[ Tranquilizing Shot Modifiers

    - Tranquilizing Shot Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Tranquilizing Shot by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61255

    --]]

    [1119801] = { duration = 8, class = "HUNTER", adjust = -2 }, -- Tranquilizing Shot

    [1120736] = { duration = 8, class = "HUNTER" }, -- Distracting Shot

    [1123989] = { duration = 180, class = "HUNTER" }, -- Readiness

    --[[ Kill Command Modifiers

    - Catlike Reflexes (Rank 1)
      Increases your chance to dodge by 1% and your pet's chance to dodge by an additional 3%. In addition, reduces the cooldown of your Kill Command ability by 10 sec.
      https://www.wowhead.com/wotlk/spell=34462

    - Catlike Reflexes (Rank 2)
      Increases your chance to dodge by 2% and your pet's chance to dodge by an additional 6%. In addition, reduces the cooldown of your Kill Command ability by 20 sec.
      https://www.wowhead.com/wotlk/spell=34464

    - Catlike Reflexes (Rank 3)
      Increases your chance to dodge by 3% and your pet's chance to dodge by an additional 9%. In addition, reduces the cooldown of your Kill Command ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=34465

    --]]

    [1134026] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -30 } }, -- Kill Command

    [1134477] = { duration = 30, class = "HUNTER" }, -- Misdirection

    [1134490] = { duration = 20, class = "HUNTER", default = true }, -- Silencing Shot

    --[[ Snake Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [1134600] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Snake Trap

    --[[ Chimera Shot Modifiers

    - Glyph of Chimera Shot
      Reduces the cooldown of Chimera Shot by 1 sec.
      https://www.wowhead.com/wotlk/spell=63065

    --]]

    [1153209] = { duration = 10, class = "HUNTER" }, -- Chimera Shot

    [1153271] = { duration = 60, class = "HUNTER" }, -- Master's Call

    --[[ Explosive Shot Modifiers

    - Lock and Load
      You have a chance when you trap a target with Freezing Trap, Freezing Arrow or Frost Trap and a chance when you deal periodic damage with your Immolation Trap, Explosive Trap or Black Arrow to cause your next 2 Arcane Shot or Explosive Shot spells to trigger no cooldown, cost no mana and consume no ammo. This effect has a 22 sec cooldown.
      https://www.wowhead.com/wotlk/spell=56453

    --]]

    [1153301] = { duration = 6, class = "HUNTER" }, -- Explosive Shot (Rank 1), cooldown is 0 while Lock and Load buff is active
        [1160051] = { parent = 1153301 }, -- Explosive Shot (Rank 2)
        [1160052] = { parent = 1153301 }, -- Explosive Shot (Rank 3)
        [1160053] = { parent = 1153301 }, -- Explosive Shot (Rank 4)

    --[[ Kill Shot Modifiers

    - Glyph of Kill Shot
      Reduces the cooldown of Kill Shot by 6 sec.
      https://www.wowhead.com/wotlk/spell=63067

    --]]

    [1153351] = { duration = 15, class = "HUNTER" }, -- Kill Shot (Rank 1)
        [1161005] = { parent = 1153351 }, -- Kill Shot (Rank 2)
        [1161006] = { parent = 1153351 }, -- Kill Shot (Rank 3)

    --[[ Freezing Arrow Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [1160192] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Freezing Arrow

    [1162757] = { duration = 300, class = "HUNTER" }, -- Call Stabled Pet

    --[[ Black Arrow Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [1163668] = { duration = 30, class = "HUNTER", adjust = -8 }, -- Black Arrow (Rank 2)
        [1163669] = { parent = 1163668 }, -- Black Arrow (Rank 3)
        [1163670] = { parent = 1163668 }, -- Black Arrow (Rank 4)
        [1163671] = { parent = 1163668 }, -- Black Arrow (Rank 5)
        [1163672] = { parent = 1163668 }, -- Black Arrow (Rank 6)

    -- Hunter Pets

    --[[ Cower Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1101742] = { duration = 45, class = "HUNTER", adjust = { ["Beast Mastery"] = -13.5 } }, -- Cower

    --[[ Growl Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1102649] = { duration = 5, class = "HUNTER", adjust = { ["Beast Mastery"] = -1.5 } }, -- Growl (Rank 1)
        [1114916] = { parent = 1102649 }, -- Growl (Rank 2)
        [1114917] = { parent = 1102649 }, -- Growl (Rank 3)
        [1114918] = { parent = 1102649 }, -- Growl (Rank 4)
        [1114919] = { parent = 1102649 }, -- Growl (Rank 5)
        [1114920] = { parent = 1102649 }, -- Growl (Rank 6)
        [1114921] = { parent = 1102649 }, -- Growl (Rank 7)
        [1127047] = { parent = 1102649 }, -- Growl (Rank 8)
        [1161676] = { parent = 1102649 }, -- Growl (Rank 9)

    --[[ Web Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1104167] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Web

    --[[ Dive Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dash ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53483

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dash ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53485

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dive ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53554

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dive ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53555

    --]]

    [1123145] = { duration = 32, class = "HUNTER", adjust = { ["Beast Mastery"] = -20.8, default = -16 } }, -- Dive

    --[[ Demoralizing Screech Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1124423] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Demoralizing Screech (Rank 1)
        [1124577] = { parent = 1124423 }, -- Demoralizing Screech (Rank 2)
        [1124578] = { parent = 1124423 }, -- Demoralizing Screech (Rank 3)
        [1124579] = { parent = 1124423 }, -- Demoralizing Screech (Rank 4)
        [1127051] = { parent = 1124423 }, -- Demoralizing Screech (Rank 5)
        [1155487] = { parent = 1124423 }, -- Demoralizing Screech (Rank 6)

    --[[ Prowl Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1124450] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Prowl (Rank 1)
        [1124452] = { parent = 1124450 }, -- Prowl (Rank 2)
        [1124453] = { parent = 1124450 }, -- Prowl (Rank 3)

    --[[ Scorpid Poison Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1124640] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Scorpid Poison (Rank 1)
        [1124583] = { parent = 1124640 }, -- Scorpid Poison (Rank 2)
        [1124586] = { parent = 1124640 }, -- Scorpid Poison (Rank 3)
        [1124587] = { parent = 1124640 }, -- Scorpid Poison (Rank 4)
        [1127060] = { parent = 1124640 }, -- Scorpid Poison (Rank 5)
        [1155728] = { parent = 1124640 }, -- Scorpid Poison (Rank 6)

    --[[ Furious Howl Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1124604] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Furious Howl (Rank 1)
        [1164491] = { parent = 1124604 }, -- Furious Howl (Rank 2)
        [1164492] = { parent = 1124604 }, -- Furious Howl (Rank 3)
        [1164493] = { parent = 1124604 }, -- Furious Howl (Rank 4)
        [1164494] = { parent = 1124604 }, -- Furious Howl (Rank 5)
        [1164495] = { parent = 1124604 }, -- Furious Howl (Rank 6)

    --[[ Lightning Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1124844] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Lightning Breath (Rank 1)
        [1125008] = { parent = 1124844 }, -- Lightning Breath (Rank 2)
        [1125009] = { parent = 1124844 }, -- Lightning Breath (Rank 3)
        [1125010] = { parent = 1124844 }, -- Lightning Breath (Rank 4)
        [1125011] = { parent = 1124844 }, -- Lightning Breath (Rank 5)
        [1125012] = { parent = 1124844 }, -- Lightning Breath (Rank 6)

    --[[ Shell Shield Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1126064] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18 } }, -- Shell Shield

    --[[ Pummel Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1126090] = { duration = 30, class = "HUNTER", adjust = { ["Beast Mastery"] = -9 } }, -- Pummel

    --[[ Fire Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1134889] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Fire Breath (Rank 1)
        [1135323] = { parent = 1134889 }, -- Fire Breath (Rank 2)
        [1155482] = { parent = 1134889 }, -- Fire Breath (Rank 3)
        [1155483] = { parent = 1134889 }, -- Fire Breath (Rank 4)
        [1155484] = { parent = 1134889 }, -- Fire Breath (Rank 5)
        [1155485] = { parent = 1134889 }, -- Fire Breath (Rank 6)

    --[[ Gore Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1135290] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Gore (Rank 1)
        [1135291] = { parent = 1135290 }, -- Gore (Rank 2)
        [1135292] = { parent = 1135290 }, -- Gore (Rank 3)
        [1135293] = { parent = 1135290 }, -- Gore (Rank 4)
        [1135294] = { parent = 1135290 }, -- Gore (Rank 5)
        [1135295] = { parent = 1135290 }, -- Gore (Rank 6)

    --[[ Warp Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1135346] = { duration = 15, class = "HUNTER", adjust = { ["Beast Mastery"] = -4.5 } }, -- Warp

    --[[ Poison Spit Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1135387] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Poison Spit (Rank 1)
        [1135389] = { parent = 1135387 }, -- Poison Spit (Rank 2)
        [1135392] = { parent = 1135387 }, -- Poison Spit (Rank 3)
        [1155555] = { parent = 1135387 }, -- Poison Spit (Rank 4)
        [1155556] = { parent = 1135387 }, -- Poison Spit (Rank 5)
        [1155557] = { parent = 1135387 }, -- Poison Spit (Rank 6)

    --[[ Pin Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150245] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Pin (Rank 1)
        [1153544] = { parent = 1150245 }, -- Pin (Rank 2)
        [1153545] = { parent = 1150245 }, -- Pin (Rank 3)
        [1153546] = { parent = 1150245 }, -- Pin (Rank 4)
        [1153547] = { parent = 1150245 }, -- Pin (Rank 5)
        [1153548] = { parent = 1150245 }, -- Pin (Rank 6)

    --[[ Swipe Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150256] = { duration = 5, class = "HUNTER", adjust = { ["Beast Mastery"] = -1.5 } }, -- Swipe (Rank 1)
        [1153526] = { parent = 1150256 }, -- Swipe (Rank 2)
        [1153528] = { parent = 1150256 }, -- Swipe (Rank 3)
        [1153529] = { parent = 1150256 }, -- Swipe (Rank 4)
        [1153532] = { parent = 1150256 }, -- Swipe (Rank 5)
        [1153533] = { parent = 1150256 }, -- Swipe (Rank 6)

    --[[ Tendon Rip Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150271] = { duration = 20, class = "HUNTER", adjust = { ["Beast Mastery"] = -6 } }, -- Tendon Rip (Rank 1)
        [1153571] = { parent = 1150271 }, -- Tendon Rip (Rank 2)
        [1153572] = { parent = 1150271 }, -- Tendon Rip (Rank 3)
        [1153573] = { parent = 1150271 }, -- Tendon Rip (Rank 4)
        [1153574] = { parent = 1150271 }, -- Tendon Rip (Rank 5)
        [1153575] = { parent = 1150271 }, -- Tendon Rip (Rank 6)

    --[[ Spore Cloud Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150274] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Spore Cloud (Rank 1)
        [1153593] = { parent = 1150274 }, -- Spore Cloud (Rank 2)
        [1153594] = { parent = 1150274 }, -- Spore Cloud (Rank 3)
        [1153596] = { parent = 1150274 }, -- Spore Cloud (Rank 4)
        [1153597] = { parent = 1150274 }, -- Spore Cloud (Rank 5)
        [1153598] = { parent = 1150274 }, -- Spore Cloud (Rank 6)

    --[[ Dust Cloud Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150285] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Dust Cloud

    --[[ Serenity Dust Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150318] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18 } }, -- Serenity Dust (Rank 1)
        [1152012] = { parent = 1150318 }, -- Serenity Dust (Rank 2)
        [1152013] = { parent = 1150318 }, -- Serenity Dust (Rank 3)
        [1152014] = { parent = 1150318 }, -- Serenity Dust (Rank 4)
        [1152015] = { parent = 1150318 }, -- Serenity Dust (Rank 5)
        [1152016] = { parent = 1150318 }, -- Serenity Dust (Rank 6)

    --[[ Bad Attitude Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150433] = { duration = 120, class = "HUNTER", adjust = { ["Beast Mastery"] = -36 } }, -- Bad Attitude (Rank 1)
        [1152395] = { parent = 1150433 }, -- Bad Attitude (Rank 2)
        [1152396] = { parent = 1150433 }, -- Bad Attitude (Rank 3)
        [1152397] = { parent = 1150433 }, -- Bad Attitude (Rank 4)
        [1152398] = { parent = 1150433 }, -- Bad Attitude (Rank 5)
        [1152399] = { parent = 1150433 }, -- Bad Attitude (Rank 6)

    --[[ Nether Shock Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150479] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Nether Shock (Rank 1)
        [1153584] = { parent = 1150479 }, -- Nether Shock (Rank 2)
        [1153586] = { parent = 1150479 }, -- Nether Shock (Rank 3)
        [1153587] = { parent = 1150479 }, -- Nether Shock (Rank 4)
        [1153588] = { parent = 1150479 }, -- Nether Shock (Rank 5)
        [1153589] = { parent = 1150479 }, -- Nether Shock (Rank 6)

    --[[ Savage Rend Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150498] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Savage Rend (Rank 1)
        [1150871] = { parent = 1150498 }, -- Savage Rend (Rank 1)
        [1153578] = { parent = 1150498 }, -- Savage Rend (Rank 2)
        [1153579] = { parent = 1150498 }, -- Savage Rend (Rank 3)
        [1153580] = { parent = 1150498 }, -- Savage Rend (Rank 4)
        [1153581] = { parent = 1150498 }, -- Savage Rend (Rank 5)
        [1153582] = { parent = 1150498 }, -- Savage Rend (Rank 6)

    --[[ Ravage Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150518] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Ravage (Rank 1)
        [1153558] = { parent = 1150518 }, -- Ravage (Rank 2)
        [1153559] = { parent = 1150518 }, -- Ravage (Rank 3)
        [1153560] = { parent = 1150518 }, -- Ravage (Rank 4)
        [1153561] = { parent = 1150518 }, -- Ravage (Rank 5)
        [1153562] = { parent = 1150518 }, -- Ravage (Rank 6)

    --[[ Sonic Blast Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150519] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Sonic Blast (Rank 1)
        [1153564] = { parent = 1150519 }, -- Sonic Blast (Rank 2)
        [1153565] = { parent = 1150519 }, -- Sonic Blast (Rank 3)
        [1153566] = { parent = 1150519 }, -- Sonic Blast (Rank 4)
        [1153567] = { parent = 1150519 }, -- Sonic Blast (Rank 5)
        [1153568] = { parent = 1150519 }, -- Sonic Blast (Rank 6)

    --[[ Snatch Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1150541] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Snatch (Rank 1)
        [1153537] = { parent = 1150541 }, -- Snatch (Rank 2)
        [1153538] = { parent = 1150541 }, -- Snatch (Rank 3)
        [1153540] = { parent = 1150541 }, -- Snatch (Rank 4)
        [1153542] = { parent = 1150541 }, -- Snatch (Rank 5)
        [1153543] = { parent = 1150541 }, -- Snatch (Rank 6)

    --[[ Swoop Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1152825] = { duration = 25, class = "HUNTER", adjust = { ["Beast Mastery"] = -7.5 } }, -- Swoop

    --[[ Rabid Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153401] = { duration = 45, class = "HUNTER", adjust = { ["Beast Mastery"] = -13.5 } }, -- Rabid

    --[[ Lick Your Wounds Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153426] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Lick Your Wounds

    --[[ Call of the Wild Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153434] = { duration = 300, class = "HUNTER", adjust = { ["Beast Mastery"] = -90 } }, -- Call of the Wild

    --[[ Intervene Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153476] = { duration = 30, class = "HUNTER", adjust = { ["Beast Mastery"] = -9} }, -- Intervene

    --[[ Taunt Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153477] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Taunt

    --[[ Last Stand Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153478] = { duration = 360, class = "HUNTER", adjust = { ["Beast Mastery"] = -108} }, -- Last Stand

    --[[ Roar of Sacrifice Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153480] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Roar of Sacrifice

    --[[ Bullheaded Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153490] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Bullheaded

    --[[ Wolverine Bite Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153508] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Wolverine Bite

    --[[ Roar of Recovery Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1153517] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Roar of Recovery

    --[[ Carrion Feeder Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1154044] = { duration = 30, class = "HUNTER", adjust = { ["Beast Mastery"] = -9} }, -- Carrion Feeder

    --[[ Froststorm Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1154644] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Froststorm Breath (Rank 1)
        [1155488] = { parent = 1154644 }, -- Froststorm Breath (Rank 2)
        [1155489] = { parent = 1154644 }, -- Froststorm Breath (Rank 3)
        [1155490] = { parent = 1154644 }, -- Froststorm Breath (Rank 4)
        [1155491] = { parent = 1154644 }, -- Froststorm Breath (Rank 5)
        [1155492] = { parent = 1154644 }, -- Froststorm Breath (Rank 6)

    --[[ Monstrous Bite Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1154680] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Monstrous Bite (Rank 1)
        [1155495] = { parent = 1154680 }, -- Monstrous Bite (Rank 2)
        [1155496] = { parent = 1154680 }, -- Monstrous Bite (Rank 3)
        [1155497] = { parent = 1154680 }, -- Monstrous Bite (Rank 4)
        [1155498] = { parent = 1154680 }, -- Monstrous Bite (Rank 5)
        [1155499] = { parent = 1154680 }, -- Monstrous Bite (Rank 6)

    --[[ Venom Web Spray Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1154706] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Venom Web Spray (Rank 1)
        [1155505] = { parent = 1154706 }, -- Venom Web Spray (Rank 2)
        [1155506] = { parent = 1154706 }, -- Venom Web Spray (Rank 3)
        [1155507] = { parent = 1154706 }, -- Venom Web Spray (Rank 4)
        [1155508] = { parent = 1154706 }, -- Venom Web Spray (Rank 5)
        [1155509] = { parent = 1154706 }, -- Venom Web Spray (Rank 6)

    [1155709] = { duration = 480, class = "HUNTER", adjust = { ["Beast Mastery"] = -144} }, -- Heart of the Phoenix

    --[[ Acid Spit Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1155749] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Acid Spit (Rank 1)
        [1155750] = { parent = 1155749 }, -- Acid Spit (Rank 2)
        [1155751] = { parent = 1155749 }, -- Acid Spit (Rank 3)
        [1155752] = { parent = 1155749 }, -- Acid Spit (Rank 4)
        [1155753] = { parent = 1155749 }, -- Acid Spit (Rank 5)
        [1155754] = { parent = 1155749 }, -- Acid Spit (Rank 6)

    --[[ Sting Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1156626] = { duration = 6, class = "HUNTER", adjust = { ["Beast Mastery"] = -1.8 } }, -- Sting (Rank 1)
        [1156627] = { parent = 1156626 }, -- Sting (Rank 2)
        [1156628] = { parent = 1156626 }, -- Sting (Rank 3)
        [1156629] = { parent = 1156626 }, -- Sting (Rank 4)
        [1156630] = { parent = 1156626 }, -- Sting (Rank 5)
        [1156631] = { parent = 1156626 }, -- Sting (Rank 6)

    --[[ Stampede Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1157386] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Stampede (Rank 1)
        [1157389] = { parent = 1157386 }, -- Stampede (Rank 2)
        [1157390] = { parent = 1157386 }, -- Stampede (Rank 3)
        [1157391] = { parent = 1157386 }, -- Stampede (Rank 4)
        [1157392] = { parent = 1157386 }, -- Stampede (Rank 5)
        [1157393] = { parent = 1157386 }, -- Stampede (Rank 6)

    --[[ Lava Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1158604] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Lava Breath (Rank 1)
        [1158607] = { parent = 1158604 }, -- Lava Breath (Rank 2)
        [1158608] = { parent = 1158604 }, -- Lava Breath (Rank 3)
        [1158609] = { parent = 1158604 }, -- Lava Breath (Rank 4)
        [1158610] = { parent = 1158604 }, -- Lava Breath (Rank 5)
        [1158611] = { parent = 1158604 }, -- Lava Breath (Rank 6)

    --[[ Rake Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1159881] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Rake (Rank 1)
        [1159882] = { parent = 1159881 }, -- Rake (Rank 2)
        [1159883] = { parent = 1159881 }, -- Rake (Rank 3)
        [1159884] = { parent = 1159881 }, -- Rake (Rank 4)
        [1159885] = { parent = 1159881 }, -- Rake (Rank 5)
        [1159886] = { parent = 1159881 }, -- Rake (Rank 6)

    --[[ Spirit Strike Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1161193] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Spirit Strike (Rank 1)
        [1161194] = { parent = 1161193 }, -- Spirit Strike (Rank 2)
        [1161195] = { parent = 1161193 }, -- Spirit Strike (Rank 3)
        [1161196] = { parent = 1161193 }, -- Spirit Strike (Rank 4)
        [1161197] = { parent = 1161193 }, -- Spirit Strike (Rank 5)
        [1161198] = { parent = 1161193 }, -- Spirit Strike (Rank 6)

    --[[ Dash Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dash ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53483

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dash ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53485

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dive ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53554

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dive ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53555

    --]]

    [1161684] = { duration = 32, class = "HUNTER", adjust = { ["Beast Mastery"] = -20.8, default = -16} }, -- Dash

    --[[ Charge Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1161685] = { duration = 25, class = "HUNTER", adjust = { ["Beast Mastery"] = -7.5 } }, -- Charge

    --[[ Thunderstomp Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1163900] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Thunderstomp

    -- Druid

    --[[ Tranquility Modifiers

    - Improved Tranquility (Rank 1)
      Reduces threat caused by Tranquility by 50%, and reduces the cooldown by 30%.
      https://www.wowhead.com/wotlk/spell=17123

    - Improved Tranquility (Rank 2)
      Reduces threat caused by Tranquility by 100%, and reduces the cooldown by 60%.
      https://www.wowhead.com/wotlk/spell=17124

    --]]

    [1100740] = { duration = 480, class = "DRUID" }, -- Tranquility (Rank 1)
        [1108918] = { parent = 1100740 }, -- Tranquility (Rank 2)
        [1109862] = { parent = 1100740 }, -- Tranquility (Rank 3)
        [1109863] = { parent = 1100740 }, -- Tranquility (Rank 4)
        [1126983] = { parent = 1100740 }, -- Tranquility (Rank 5)
        [1148446] = { parent = 1100740 }, -- Tranquility (Rank 6)
        [1148447] = { parent = 1100740 }, -- Tranquility (Rank 7)

    --[[ Dash Modifiers

    - Glyph of Dash
      Reduces the cooldown of your Dash ability by 20%.
      https://www.wowhead.com/wotlk/spell=59219

    - Glyph of Dash
      Reduces the cooldown of your Dash ability by 20%.
      https://www.wowhead.com/wotlk/spell=59218

    --]]

    [1101850] = { duration = 180, class = "DRUID", adjust = -36 }, -- Dash (Rank 1)
        [1109821] = { parent = 1101850 }, -- Dash (Rank 2)
        [1133357] = { parent = 1101850 }, -- Dash (Rank 3)

    --[[ Challenging Roar Modifiers

    - Glyph of Challenging Roar
      Reduces the cooldown of your Challenging Roar ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=57858

    --]]

    [1105209] = { duration = 180, class = "DRUID" }, -- Challenging Roar

    --[[ Bash Modifiers

    - Brutal Impact (Rank 1)
      Increases the stun duration of your Bash and Pounce abilities by 0.5 sec and decreases the cooldown of Bash by 15 sec.
      https://www.wowhead.com/wotlk/spell=16940

    - Brutal Impact (Rank 2)
      Increases the stun duration of your Bash and Pounce abilities by 1 sec and decreases the cooldown of Bash by 30 sec.
      https://www.wowhead.com/wotlk/spell=16941

    --]]

    [1105211] = { duration = 60, class = "DRUID", adjust = { Feral = -30 } }, -- Bash (Rank 1)
        [1106798] = { parent = 1105211 }, -- Bash (Rank 2)
        [1108983] = { parent = 1105211 }, -- Bash (Rank 3)

    [1105215] = { duration = 10, class = "DRUID" }, -- Prowl


    [1105217] = { duration = 30, class = "DRUID" }, -- Tiger's Fury (Rank 1)
        [1106793] = { parent = 1105217 }, -- Tiger's Fury (Rank 2)
        [1109845] = { parent = 1105217 }, -- Tiger's Fury (Rank 3)
        [1109846] = { parent = 1105217 }, -- Tiger's Fury (Rank 4)
        [1150212] = { parent = 1105217 }, -- Tiger's Fury (Rank 5)
        [1150213] = { parent = 1105217 }, -- Tiger's Fury (Rank 6)

    [1105229] = { duration = 60, class = "DRUID" }, -- Enrage

    [1106795] = { duration = 8, class = "DRUID" }, -- Growl

    [1108998] = { duration = 10, class = "DRUID" }, -- Cower (Rank 1)
        [1109000] = { parent = 1108998 }, -- Cower (Rank 2)
        [1109892] = { parent = 1108998 }, -- Cower (Rank 3)
        [1131709] = { parent = 1108998 }, -- Cower (Rank 4)
        [1127004] = { parent = 1108998 }, -- Cower (Rank 5)
        [1148575] = { parent = 1108998 }, -- Cower (Rank 6)

    [1116689] = { duration = 60, class = "DRUID" }, -- Nature's Grasp (Rank 1)
        [1116810] = { parent = 1116689 }, -- Nature's Grasp (Rank 2)
        [1116811] = { parent = 1116689 }, -- Nature's Grasp (Rank 3)
        [1116812] = { parent = 1116689 }, -- Nature's Grasp (Rank 4)
        [1116813] = { parent = 1116689 }, -- Nature's Grasp (Rank 5)
        [1117329] = { parent = 1116689 }, -- Nature's Grasp (Rank 6)
        [1127009] = { parent = 1116689 }, -- Nature's Grasp (Rank 7)
        [1153312] = { parent = 1116689 }, -- Nature's Grasp (Rank 8)

    [1116857] = { duration = 6, class = "DRUID" }, -- Faerie Fire (Feral)

    [1116979] = { duration = 15, class = "DRUID", default = true }, -- Feral Charge - Bear

    [1117116] = { duration = 180, class = "DRUID" }, -- Nature's Swiftness

    --[[ Swiftmend Modifiers

    - Reduced Swiftmend Cooldown
      Reduces the cooldown of your Swiftmend ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=38417

    --]]

    [1118562] = { duration = 15, class = "DRUID", adjust = -2 }, -- Swiftmend

    [1120484] = { duration = 600, class = "DRUID" }, -- Rebirth (Rank 1)
        [1120739] = { parent = 1120484 }, -- Rebirth (Rank 2)
        [1120742] = { parent = 1120484 }, -- Rebirth (Rank 3)
        [1120747] = { parent = 1120484 }, -- Rebirth (Rank 4)
        [1120748] = { parent = 1120484 }, -- Rebirth (Rank 5)
        [1126994] = { parent = 1120484 }, -- Rebirth (Rank 6)
        [1148477] = { parent = 1120484 }, -- Rebirth (Rank 7)

    [1122570] = { duration = 10, class = "DRUID" }, -- Maim (Rank 1)
        [1149802] = { parent = 1122570 }, -- Maim (Rank 2)

    [1122812] = { duration = 60, class = "DRUID" }, -- Barkskin

    [1122842] = { duration = 180, class = "DRUID" }, -- Frenzied Regeneration

    [1129166] = { duration = 180, class = "DRUID" }, -- Innervate

    [1133831] = { duration = 180, class = "DRUID" }, -- Force of Nature

    --[[ Mangle (Bear) Modifiers

    - Improved Mangle (Rank 2)
      Reduces the cooldown of your Mangle (Bear) ability by 1.0 sec., and reduces the energy cost of your Mangle (Cat) ability by 4.
      https://www.wowhead.com/wotlk/spell=48489

    - Improved Mangle (Rank 3)
      Reduces the cooldown of your Mangle (Bear) ability by 1.5 sec., and reduces the energy cost of your Mangle (Cat) ability by 6.
      https://www.wowhead.com/wotlk/spell=48491

    - Improved Mangle (Rank 1)
      Reduces the cooldown of your Mangle (Bear) ability by 0.5 sec., and reduces the energy cost of your Mangle (Cat) ability by 2.
      https://www.wowhead.com/wotlk/spell=48532

    --]]

    [1133878] = { duration = 6, class = "DRUID", adjust = -1.5 }, -- Mangle (Bear) (Rank 1), cooldown is 0 if Berserk aura is active
        [1133986] = { parent = 1133878 }, -- Mangle (Bear) (Rank 2)
        [1133987] = { parent = 1133878 }, -- Mangle (Bear) (Rank 3)
        [1148563] = { parent = 1133878 }, -- Mangle (Bear) (Rank 4)
        [1148564] = { parent = 1133878 }, -- Mangle (Bear) (Rank 5)

    [1148438] = { duration = 6, class = "DRUID" }, -- Wild Growth (Rank 1)
        [1153248] = { parent = 1148438 }, -- Wild Growth (Rank 2)
        [1153249] = { parent = 1148438 }, -- Wild Growth (Rank 3)
        [1153251] = { parent = 1148438 }, -- Wild Growth (Rank 4)

    --[[ Starfall Modifiers

    - Glyph of Starfall
      Reduces the cooldown of Starfall by 30 sec.
      https://www.wowhead.com/wotlk/spell=54828

    --]]

    [1148505] = { duration = 90, class = "DRUID", adjust = -30 }, -- Starfall (Rank 1)
        [1153199] = { parent = 1148505 }, -- Starfall (Rank 2)
        [1153200] = { parent = 1148505 }, -- Starfall (Rank 3)
        [1153201] = { parent = 1148505 }, -- Starfall (Rank 4)

    --[[ Feral Charge - Cat Modifiers

    - Berserk
      When activated, this ability causes your Mangle (Bear) ability to hit up to 3 targets and have no cooldown, and reduces the energy cost of all your Cat Form abilities by 50%. Lasts 15 sec. You cannot use Tiger's Fury while Berserk is active. <br /><br />Clears the effect of Fear and makes you immune to Fear for the duration.
      https://www.wowhead.com/wotlk/spell=50334

    --]]

    [1149376] = { duration = 30, class = "DRUID" }, -- Feral Charge - Cat

    [1150334] = { duration = 180, class = "DRUID" }, -- Berserk

    --[[ Typhoon Modifiers

    - Glyph of Monsoon
      Reduces the cooldown of your Typhoon spell by 3 sec.
      https://www.wowhead.com/wotlk/spell=63056

    --]]

    [1161391] = { duration = 20, class = "DRUID", adjust = -3, icon = "Interface\\ICONS\\ability_druid_typhoon" }, -- Typhoon (Rank 1)
        [1161390] = { parent = 1161391 }, -- Typhoon (Rank 2)
        [1161388] = { parent = 1161391 }, -- Typhoon (Rank 3)
        [1161387] = { parent = 1161391 }, -- Typhoon (Rank 4)
        [1153227] = { parent = 1161391 }, -- Typhoon (Rank 5)

    [1161336] = { duration = 180, class = "DRUID" }, -- Survival Instincts

    -- Mage

    --[[ Invisibility Modifiers

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [66] = { duration = 180, class = "MAGE", adjust = { Arcane = -54} }, -- Invisibility

    --[[ Cone of Cold Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    --]]

    [1100120] = { duration = 10, class = "MAGE", adjust = -2 }, -- Cone of Cold (Rank 1)
        [1108492] = { parent = 1100120 }, -- Cone of Cold (Rank 2)
        [1110159] = { parent = 1100120 }, -- Cone of Cold (Rank 3)
        [1110160] = { parent = 1100120 }, -- Cone of Cold (Rank 4)
        [1110161] = { parent = 1100120 }, -- Cone of Cold (Rank 5)
        [1127087] = { parent = 1100120 }, -- Cone of Cold (Rank 6)
        [1142930] = { parent = 1100120 }, -- Cone of Cold (Rank 7)
        [1142931] = { parent = 1100120 }, -- Cone of Cold (Rank 8)

    --[[ Frost Nova Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    - Glyph of Ice Block
      Your Frost Nova cooldown is now reset every time you use Ice Block.
      https://www.wowhead.com/wotlk/spell=56592

    --]]

    [1100122] = { duration = 25, class = "MAGE", adjust = -5 }, -- Frost Nova (Rank 1)
        [1100865] = { parent = 1100122 }, -- Frost Nova (Rank 2)
        [1106131] = { parent = 1100122 }, -- Frost Nova (Rank 3)
        [1110230] = { parent = 1100122 }, -- Frost Nova (Rank 4)
        [1127088] = { parent = 1100122 }, -- Frost Nova (Rank 5)
        [1142917] = { parent = 1100122 }, -- Frost Nova (Rank 6)

    [1100543] = { duration = 30, class = "MAGE" }, -- Fire Ward (Rank 1)
        [1108457] = { parent = 1100543 }, -- Fire Ward (Rank 2)
        [1108458] = { parent = 1100543 }, -- Fire Ward (Rank 3)
        [1110223] = { parent = 1100543 }, -- Fire Ward (Rank 4)
        [1110225] = { parent = 1100543 }, -- Fire Ward (Rank 5)
        [1127128] = { parent = 1100543 }, -- Fire Ward (Rank 6)
        [1143010] = { parent = 1100543 }, -- Fire Ward (Rank 7)

    [1101953] = { duration = 15, class = "MAGE" }, -- Blink

    --[[ Fire Blast Modifiers

    - Improved Fire Blast (Rank 1)
      Reduces the cooldown of your Fire Blast spell by 1 sec.
      https://www.wowhead.com/wotlk/spell=11078

    - Improved Fire Blast (Rank 2)
      Reduces the cooldown of your Fire Blast spell by 2 sec.
      https://www.wowhead.com/wotlk/spell=11080

    --]]

    [1102136] = { duration = 8, class = "MAGE" }, -- Fire Blast (Rank 1)
        [1102137] = { parent = 1102136 }, -- Fire Blast (Rank 2)
        [1102138] = { parent = 1102136 }, -- Fire Blast (Rank 3)
        [1108412] = { parent = 1102136 }, -- Fire Blast (Rank 4)
        [1108413] = { parent = 1102136 }, -- Fire Blast (Rank 5)
        [1110197] = { parent = 1102136 }, -- Fire Blast (Rank 6)
        [1110199] = { parent = 1102136 }, -- Fire Blast (Rank 7)
        [1127078] = { parent = 1102136 }, -- Fire Blast (Rank 8)
        [1127079] = { parent = 1102136 }, -- Fire Blast (Rank 9)
        [1142872] = { parent = 1102136 }, -- Fire Blast (Rank 10)
        [1142873] = { parent = 1102136 }, -- Fire Blast (Rank 11)

    [1102139] = { duration = 24, class = "MAGE", default = true }, -- Counterspell

    [1106143] = { duration = 30, class = "MAGE" }, -- Frost Ward (Rank 1)
        [1108461] = { parent = 1106143 }, -- Frost Ward (Rank 2)
        [1108462] = { parent = 1106143 }, -- Frost Ward (Rank 3)
        [1110177] = { parent = 1106143 }, -- Frost Ward (Rank 4)
        [1128609] = { parent = 1106143 }, -- Frost Ward (Rank 5)
        [1132796] = { parent = 1106143 }, -- Frost Ward (Rank 6)
        [1143012] = { parent = 1106143 }, -- Frost Ward (Rank 7)

    [1111113] = { duration = 30, class = "MAGE" }, -- Blast Wave (Rank 1)
        [1113018] = { parent = 1111113 }, -- Blast Wave (Rank 2)
        [1113019] = { parent = 1111113 }, -- Blast Wave (Rank 3)
        [1113020] = { parent = 1111113 }, -- Blast Wave (Rank 4)
        [1113021] = { parent = 1111113 }, -- Blast Wave (Rank 5)
        [1127133] = { parent = 1111113 }, -- Blast Wave (Rank 6)
        [1133933] = { parent = 1111113 }, -- Blast Wave (Rank 7)
        [1142944] = { parent = 1111113 }, -- Blast Wave (Rank 8)
        [1142945] = { parent = 1111113 }, -- Blast Wave (Rank 9)

    [1111129] = { duration = 120, class = "MAGE" }, -- Combustion

    --[[ Ice Barrier Modifiers

    - Cold as Ice (Rank 1)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 10%.
      https://www.wowhead.com/wotlk/spell=55091

    - Cold as Ice (Rank 2)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 20%.
      https://www.wowhead.com/wotlk/spell=55092

    --]]

    [1111426] = { duration = 30, class = "MAGE", adjust = -6 }, -- Ice Barrier (Rank 1)
        [1113031] = { parent = 1111426 }, -- Ice Barrier (Rank 2)
        [1113032] = { parent = 1111426 }, -- Ice Barrier (Rank 3)
        [1113033] = { parent = 1111426 }, -- Ice Barrier (Rank 4)
        [1127134] = { parent = 1111426 }, -- Ice Barrier (Rank 5)
        [1133405] = { parent = 1111426 }, -- Ice Barrier (Rank 6)
        [1143038] = { parent = 1111426 }, -- Ice Barrier (Rank 7)
        [1143039] = { parent = 1111426 }, -- Ice Barrier (Rank 8)

    --[[ Cold Snap Modifiers

    - Cold as Ice (Rank 1)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 10%.
      https://www.wowhead.com/wotlk/spell=55091

    - Cold as Ice (Rank 2)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 20%.
      https://www.wowhead.com/wotlk/spell=55092

    --]]

    [1111958] = { duration = 480, class = "MAGE", adjust = -96 }, -- Cold Snap

    --[[ Arcane Power Modifiers

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [1112042] = { duration = 120, class = "MAGE", adjust = -36 }, -- Arcane Power

    --[[ Presence of Mind Modifiers

    - Cooldown Reduction
      Reduces the cooldown on Presence of Mind by 24 sec, on Blast Wave by 4 sec, and on Ice Block by 40 sec.
      https://www.wowhead.com/wotlk/spell=37439

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [1112043] = { duration = 120, class = "MAGE", adjust = -36 }, -- Presence of Mind

    --[[ Evocation Modifiers

    - Evocation
      Reduces cooldown on your Evocation by 1 minute.
      https://www.wowhead.com/wotlk/spell=28763

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [1112051] = { duration = 240, class = "MAGE", adjust = { Arcane = -120 } }, -- Evocation

    --[[ Icy Veins Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    --]]

    [1112472] = { duration = 180, class = "MAGE", adjust = -36 }, -- Icy Veins

    [1131661] = { duration = 20, class = "MAGE" }, -- Dragon's Breath (Rank 1)
        [1133041] = { parent = 1131661 }, -- Dragon's Breath (Rank 2)
        [1133042] = { parent = 1131661 }, -- Dragon's Breath (Rank 3)
        [1133043] = { parent = 1131661 }, -- Dragon's Breath (Rank 4)
        [1142949] = { parent = 1131661 }, -- Dragon's Breath (Rank 5)
        [1142950] = { parent = 1131661 }, -- Dragon's Breath (Rank 6)

    --[[ Summon Water Elemental Modifiers

    - Cold as Ice (Rank 1)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 10%.
      https://www.wowhead.com/wotlk/spell=55091

    - Cold as Ice (Rank 2)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 20%.
      https://www.wowhead.com/wotlk/spell=55092

    - Glyph of Water Elemental
      Reduces the cooldown of your Summon Water Elemental spell by 30 sec.
      https://www.wowhead.com/wotlk/spell=56373

    --]]

    [1131687] = { duration = 180, class = "MAGE", adjust = -36 }, -- Summon Water Elemental

    [1143987] = { duration = 300, class = "MAGE" }, -- Ritual of Refreshment (Rank 1)
        [1158659] = { parent = 1143987 }, -- Ritual of Refreshment (Rank 2)

    [1144425] = { duration = 3, class = "MAGE" }, -- Arcane Barrage (Rank 1)
        [1144780] = { parent = 1144425 }, -- Arcane Barrage (Rank 2)
        [1144781] = { parent = 1144425 }, -- Arcane Barrage (Rank 3)

    [1144572] = { duration = 30, class = "MAGE" }, -- Deep Freeze

    --[[ Ice Block Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    - Glyph of Ice Block
      Your Frost Nova cooldown is now reset every time you use Ice Block.
      https://www.wowhead.com/wotlk/spell=56592

    --]]

    [1145438] = { duration = 300, class = "MAGE" }, -- Ice Block

    [1155342] = { duration = 180, class = "MAGE" }, -- Mirror Image

     -- Rogue

    [1100408] = { duration = 20, class = "ROGUE" }, -- Kidney Shot (Rank 1)
    [1108643] = { parent = 1100408 }, -- Kidney Shot (Rank 2)

    --[[ Distract Modifiers

    - Filthy Tricks (Rank 1)
    Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
    https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [1101725] = { duration = 30, class = "ROGUE", adjust = { Subtlety = -10 } }, -- Distract

    [1101766] = { duration = 10, class = "ROGUE", default = true }, -- Kick

    [1101776] = { duration = 10, class = "ROGUE" }, -- Gouge

    --[[ Stealth Modifiers

    - Camouflage (Rank 1)
      Increases your speed while stealthed by 5% and reduces the cooldown of your Stealth ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=13975

    - Camouflage (Rank 2)
      Increases your speed while stealthed by 10% and reduces the cooldown of your Stealth ability by 4 sec.
      https://www.wowhead.com/wotlk/spell=14062

    - Camouflage (Rank 3)
      Increases your speed while stealthed by 15% and reduces the cooldown of your Stealth ability by 6 sec.
      https://www.wowhead.com/wotlk/spell=14063

    --]]

    [1101784] = { duration = 10, class = "ROGUE", adjust = { Assassination = -6, default = -4 } }, -- Stealth

    --[[ Vanish Modifiers

    - Elusiveness (Rank 1)
      Reduces the cooldown of your Vanish and Blind abilities by 30 sec and your Cloak of Shadows ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=13981

    - Elusiveness (Rank 2)
      Reduces the cooldown of your Vanish and Blind abilities by 60 sec and your Cloak of Shadows ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=14066

    --]]

    [1101856] = { duration = 180, class = "ROGUE", adjust = -60 }, -- Vanish (Rank 1)
        [1101857] = { parent = 1101856 }, -- Vanish (Rank 2)
        [1126889] = { parent = 1101856 }, -- Vanish (Rank 3)

    [1101966] = { duration = 10, class = "ROGUE" }, -- Feint (Rank 1)
        [1106768] = { parent = 1101966 }, -- Feint (Rank 2)
        [1108637] = { parent = 1101966 }, -- Feint (Rank 3)
        [1111303] = { parent = 1101966 }, -- Feint (Rank 4)
        [1125302] = { parent = 1101966 }, -- Feint (Rank 5)
        [1127448] = { parent = 1101966 }, -- Feint (Rank 6)
        [1148658] = { parent = 1101966 }, -- Feint (Rank 7)
        [1148659] = { parent = 1101966 }, -- Feint (Rank 8)

    --[[ Blind Modifiers

    - Elusiveness (Rank 1)
      Reduces the cooldown of your Vanish and Blind abilities by 30 sec and your Cloak of Shadows ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=13981

    - Elusiveness (Rank 2)
      Reduces the cooldown of your Vanish and Blind abilities by 60 sec and your Cloak of Shadows ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=14066

    --]]

    [1102094] = { duration = 180, class = "ROGUE", adjust = -60 }, -- Blind

    --[[ Sprint Modifiers

    - Endurance (Rank 1)
      Reduces the cooldown of your Sprint and Evasion abilities by 30 sec and increases your total Stamina by 2%.
      https://www.wowhead.com/wotlk/spell=13742

    - Endurance (Rank 2)
      Reduces the cooldown of your Sprint and Evasion abilities by 60 sec and increases your total Stamina by 4%.
      https://www.wowhead.com/wotlk/spell=13872

    --]]

    [1102983] = { duration = 180, class = "ROGUE", adjust = { Combat = -60 } }, -- Sprint (Rank 1)
        [1108696] = { parent = 1102983 }, -- Sprint (Rank 2)
        [1111305] = { parent = 1102983 }, -- Sprint (Rank 3)

    --[[ Evasion Modifiers

    - Endurance (Rank 1)
      Reduces the cooldown of your Sprint and Evasion abilities by 30 sec and increases your total Stamina by 2%.
      https://www.wowhead.com/wotlk/spell=13742

    - Endurance (Rank 2)
      Reduces the cooldown of your Sprint and Evasion abilities by 60 sec and increases your total Stamina by 4%.
      https://www.wowhead.com/wotlk/spell=13872

    --]]

    [1105277] = { duration = 180, class = "ROGUE", adjust = { Combat = -60 } }, -- Evasion (Rank 1)
        [1126669] = { parent = 1105277 }, -- Evasion (Rank 2)

    [1113750] = { duration = 180, class = "ROGUE" }, -- Adrenaline Rush

    [1113877] = { duration = 120, class = "ROGUE" }, -- Blade Flurry

    [1114177] = { duration = 180, class = "ROGUE" }, -- Cold Blood

    [1114183] = { duration = 20, class = "ROGUE" }, -- Premeditation

    --[[ Preparation Modifiers

    - Glyph of Preparation
      Your Preparation ability also instantly resets the cooldown of Blade Flurry, Dismantle, and Kick.
      https://www.wowhead.com/wotlk/spell=56819

    - Filthy Tricks (Rank 1)
      Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
      https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [1114185] = { duration = 480, class = "ROGUE", adjust = { Subtlety = -180 } }, -- Preparation

    [1114251] = { duration = 6, class = "ROGUE" }, -- Riposte

    --[[ Ghostly Strike Modifiers

    - Glyph of Ghostly Strike
      Increases the damage dealt by Ghostly Strike by 40% and the duration of its effect by 4 sec, but increases its cooldown by 10 sec.
      https://www.wowhead.com/wotlk/spell=56814

    --]]

    [1114278] = { duration = 20, class = "ROGUE" }, -- Ghostly Strike

    --[[ Cloak of Shadows Modifiers

    - Elusiveness (Rank 1)
      Reduces the cooldown of your Vanish and Blind abilities by 30 sec and your Cloak of Shadows ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=13981

    - Elusiveness (Rank 2)
      Reduces the cooldown of your Vanish and Blind abilities by 60 sec and your Cloak of Shadows ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=14066

    --]]

    [1131224] = { duration = 90, class = "ROGUE", adjust = -30 }, -- Cloak of Shadows

    --[[ Shadowstep Modifiers

    - Filthy Tricks (Rank 1)
      Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
      https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [1136554] = { duration = 30, class = "ROGUE", adjust = -10 }, -- Shadowstep

    --[[ Killing Spree Modifiers

    - Glyph of Killing Spree
      Reduces the cooldown on Killing Spree by 45 sec.
      https://www.wowhead.com/wotlk/spell=63879

    --]]

    [1151690] = { duration = 120, class = "ROGUE", adjust = -45 }, -- Killing Spree

    [1151713] = { duration = 60, class = "ROGUE" }, -- Shadow Dance

    [1151722] = { duration = 60, class = "ROGUE" }, -- Dismantle

    --[[ Tricks of the Trade Modifiers

    - Filthy Tricks (Rank 1)
      Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
      https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [1157934] = { duration = 30, class = "ROGUE", adjust = { Subtlety = -10 } }, -- Tricks of the Trade

    -- Warrior

    [72] = { duration = 12, class = "WARRIOR", default = true }, -- Shield Bash

    --[[ Charge Modifiers

    - Glyph of Rapid Charge
      Reduces the cooldown of your Charge ability by 7%.
      https://www.wowhead.com/wotlk/spell=58355

    - Juggernaut (Rank 1)
      Your Charge ability is now usable while in combat, but the cooldown on Charge is increased by 5 sec. Following a Charge, your next Slam or Mortal Strike has an additional 25% chance to critically hit if used within 10 sec.
      https://www.wowhead.com/wotlk/spell=64976

    --]]

    [1100100] = { duration = 15, class = "WARRIOR", adjust = { Arms = 5 } }, -- Charge (Rank 1)
        [1106178] = { parent = 1100100 }, -- Charge (Rank 2)
        [1111578] = { parent = 1100100 }, -- Charge (Rank 3)

    [1100355] = { duration = 8, class = "WARRIOR" }, -- Taunt

    --[[ Disarm Modifiers

    - Improved Disarm (Rank 1)
      Reduces the cooldown of your Disarm ability by 10 sec and causes the target to take an additional 5% damage while disarmed.
      https://www.wowhead.com/wotlk/spell=12313

    - Improved Disarm (Rank 2)
      Reduces the cooldown of your Disarm ability by 20 sec and causes the target to take an additional 10% damage while disarmed.
      https://www.wowhead.com/wotlk/spell=12804

    --]]

    [1100676] = { duration = 60, class = "WARRIOR", adjust = { Protection = -20 } }, -- Disarm

    [1100694] = { duration = 60, class = "WARRIOR" }, -- Mocking Blow

    --[[ Shield Wall Modifiers

    - Improved Disciplines (Rank 1)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 30 secs.
      https://www.wowhead.com/wotlk/spell=12312

    - Improved Disciplines (Rank 2)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 60 secs.
      https://www.wowhead.com/wotlk/spell=12803

    - Glyph of Shield Wall
      Reduces the cooldown on Shield Wall by 2 min, but Shield Wall now only reduces damage taken by 40%.
      https://www.wowhead.com/wotlk/spell=63329

    - Glyph of Shield Wall
      Reduces the cooldown on Shield Wall by 2 min, but Shield Wall now only reduces damage taken by 40%.
      https://www.wowhead.com/wotlk/spell=63952

    --]]

    [1100871] = { duration = 300, class = "WARRIOR", adjust = { Protection = -60 } }, -- Shield Wall

    [1101161] = { duration = 180, class = "WARRIOR" }, -- Challenging Shout

    --[[ Whirlwind Modifiers

    - Glyph of Whirlwind
      Reduces the cooldown of your Whirlwind by 2 sec.
      https://www.wowhead.com/wotlk/spell=58370

    --]]

    [1101680] = { duration = 10, class = "WARRIOR" }, -- Whirlwind

    --[[ Recklessness Modifiers

    - Improved Disciplines (Rank 1)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 30 secs.
      https://www.wowhead.com/wotlk/spell=12312

    - Improved Disciplines (Rank 2)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 60 secs.
      https://www.wowhead.com/wotlk/spell=12803

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [1101719] = { duration = 300, class = "WARRIOR", adjust = { Protection = -60, Fury = -99 } }, -- Recklessness

    --[[ Shield Block Modifiers

    - Shield Mastery (Rank 1)
      Increases your block value by 15% and reduces the cooldown of your Shield Block ability by 10 sec.
      https://www.wowhead.com/wotlk/spell=29598

    - Shield Mastery (Rank 2)
      Increases your block value by 30% and reduces the cooldown of your Shield Block ability by 20 sec.
      https://www.wowhead.com/wotlk/spell=29599

    --]]

    [1102565] = { duration = 60, class = "WARRIOR", adjust = { Protection = -20 } }, -- Shield Block

    --[[ Bloodrage Modifiers

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [1102687] = { duration = 60, class = "WARRIOR", adjust = { Fury = -19.8 } }, -- Bloodrage

    [1103411] = { duration = 30, class = "WARRIOR" }, -- Intervene

    [1105246] = { duration = 120, class = "WARRIOR" }, -- Intimidating Shout

    [1106343] = { duration = 6, class = "WARRIOR" }, -- Thunder Clap (Rank 1)
        [1108198] = { parent = 1106343 }, -- Thunder Clap (Rank 2)
        [1108204] = { parent = 1106343 }, -- Thunder Clap (Rank 3)
        [1108205] = { parent = 1106343 }, -- Thunder Clap (Rank 4)
        [1111580] = { parent = 1106343 }, -- Thunder Clap (Rank 5)
        [1111581] = { parent = 1106343 }, -- Thunder Clap (Rank 6)
        [1125264] = { parent = 1106343 }, -- Thunder Clap (Rank 7)
        [1147501] = { parent = 1106343 }, -- Thunder Clap (Rank 8)
        [1147502] = { parent = 1106343 }, -- Thunder Clap (Rank 9)

    [1106552] = { duration = 10, class = "WARRIOR", default = true }, -- Pummel

    --[[ Revenge Modifiers

    - Unrelenting Assault (Rank 1)
      Reduces the cooldown of your Overpower and Revenge abilities by 2 secs and increases the damage done by both abilities by 10%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 25% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46859

    - Unrelenting Assault (Rank 2)
      Reduces the cooldown of your Overpower and Revenge abilities by 4 secs and increases the damage done by both abilities by 20%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 50% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46860

    --]]

    [1106572] = { duration = 5, class = "WARRIOR", adjust = { Arms = -4} }, -- Revenge (Rank 1)
        [1106574] = { parent = 1106572 }, -- Revenge (Rank 2)
        [1107379] = { parent = 1106572 }, -- Revenge (Rank 3)
        [1111600] = { parent = 1106572 }, -- Revenge (Rank 4)
        [1111601] = { parent = 1106572 }, -- Revenge (Rank 5)
        [1125288] = { parent = 1106572 }, -- Revenge (Rank 6)
        [1125269] = { parent = 1106572 }, -- Revenge (Rank 7)
        [1130357] = { parent = 1106572 }, -- Revenge (Rank 8)
        [1157823] = { parent = 1106572 }, -- Revenge (Rank 9)

    --[[ Overpower Modifiers

    - Unrelenting Assault (Rank 1)
      Reduces the cooldown of your Overpower and Revenge abilities by 2 secs and increases the damage done by both abilities by 10%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 25% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46859

    - Unrelenting Assault (Rank 2)
      Reduces the cooldown of your Overpower and Revenge abilities by 4 secs and increases the damage done by both abilities by 20%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 50% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46860

    --]]

    [1107384] = { duration = 5, class = "WARRIOR", adjust = { Arms = -4} }, -- Overpower

    --[[ Death Wish Modifiers

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [1112292] = { duration = 180, class = "WARRIOR", adjust = -59.4 }, -- Death Wish

    --[[ Mortal Strike Modifiers

    - Improved Mortal Strike (Rank 1)
      Increases the damage caused by your Mortal Strike ability by 3% and reduces the cooldown by 0.3 sec.
      https://www.wowhead.com/wotlk/spell=35446

    - Improved Mortal Strike (Rank 2)
      Increases the damage caused by your Mortal Strike ability by 6% and reduces the cooldown by 0.7 sec.
      https://www.wowhead.com/wotlk/spell=35448

    - Improved Mortal Strike (Rank 3)
      Increases the damage caused by your Mortal Strike ability by 10% and reduces the cooldown by 1 sec.
      https://www.wowhead.com/wotlk/spell=35449

    --]]

    [1112294] = { duration = 6, class = "WARRIOR", adjust = -1 }, -- Mortal Strike (Rank 1)
        [1121551] = { parent = 1112294 }, -- Mortal Strike (Rank 2)
        [1121552] = { parent = 1112294 }, -- Mortal Strike (Rank 3)
        [1121553] = { parent = 1112294 }, -- Mortal Strike (Rank 4)
        [1125248] = { parent = 1112294 }, -- Mortal Strike (Rank 5)
        [1130330] = { parent = 1112294 }, -- Mortal Strike (Rank 6)
        [1147485] = { parent = 1112294 }, -- Mortal Strike (Rank 7)
        [1147486] = { parent = 1112294 }, -- Mortal Strike (Rank 8)

    [1112328] = { duration = 30, class = "WARRIOR" }, -- Sweeping Strikes

    [1112809] = { duration = 30, class = "WARRIOR" }, -- Concussion Blow

    --[[ Last Stand Modifiers

    - Glyph of Last Stand
      Reduces the cooldown of your Last Stand ability by 1 min.
      https://www.wowhead.com/wotlk/spell=58376

    --]]

    [1112975] = { duration = 180, class = "WARRIOR" }, -- Last Stand

    --[[ Berserker Rage Modifiers

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [1118499] = { duration = 30, class = "WARRIOR", adjust = { Fury = -9.9 } }, -- Berserker Rage

    --[[ Retaliation Modifiers

    - Improved Disciplines (Rank 1)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 30 secs.
      https://www.wowhead.com/wotlk/spell=12312

    - Improved Disciplines (Rank 2)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 60 secs.
      https://www.wowhead.com/wotlk/spell=12803

    --]]

    [1120230] = { duration = 300, class = "WARRIOR", adjust = { Protection = -60 } }, -- Retaliation

    --[[ Intercept Modifiers

    - Intercept Cooldown Reduction (Rank 1)
      Reduces the cooldown of your Intercept ability by 5 sec.
      https://www.wowhead.com/wotlk/spell=22738

    - Improved Intercept (Rank 1)
      Reduces the cooldown of your Intercept ability by 5 sec.
      https://www.wowhead.com/wotlk/spell=29888

    - Improved Intercept (Rank 2)
      Reduces the cooldown of your Intercept ability by 10 sec.
      https://www.wowhead.com/wotlk/spell=29889

    --]]

    [1120252] = { duration = 30, class = "WARRIOR", adjust = { Fury = -15, default = -5} }, -- Intercept

    [1123881] = { duration = 4, class = "WARRIOR" }, -- Bloodthirst

    --[[ Spell Reflection Modifiers

    - Glyph of Spell Reflection
      Reduces the cooldown on Spell Reflection by 1 sec.
      https://www.wowhead.com/wotlk/spell=63328

    --]]

    [1123920] = { duration = 10, class = "WARRIOR" }, -- Spell Reflection

    --[[ Shield Slam Modifiers

    - Sword and Board
      When your Devastate or Revenge ability deals damage they have a chance of refreshing the cooldown of your Shield Slam ability and reducing its cost by 100% for 5 sec.
      https://www.wowhead.com/wotlk/spell=50227

    --]]

    [1123922] = { duration = 6, class = "WARRIOR" }, -- Shield Slam (Rank 1)
        [1123923] = { parent = 1123922 }, -- Shield Slam (Rank 2)
        [1123924] = { parent = 1123922 }, -- Shield Slam (Rank 3)
        [1123925] = { parent = 1123922 }, -- Shield Slam (Rank 4)
        [1125258] = { parent = 1123922 }, -- Shield Slam (Rank 5)
        [1130356] = { parent = 1123922 }, -- Shield Slam (Rank 6)
        [1147487] = { parent = 1123922 }, -- Shield Slam (Rank 7)
        [1147488] = { parent = 1123922 }, -- Shield Slam (Rank 8)

    --[[ Bladestorm Modifiers

    - Glyph of Bladestorm
      Reduces the cooldown on Bladestorm by 15 sec.
      https://www.wowhead.com/wotlk/spell=63324

    --]]

    [1146924] = { duration = 90, class = "WARRIOR" }, -- Bladestorm

    --[[ Shockwave Modifiers

    - Glyph of Shockwave
      Reduces the cooldown on Shockwave by 3 sec.
      https://www.wowhead.com/wotlk/spell=63325

    --]]

    [1146968] = { duration = 20, class = "WARRIOR", adjust = -3 }, -- Shockwave

    [1155694] = { duration = 180, class = "WARRIOR" }, -- Enraged Regeneration

    [1157755] = { duration = 60, class = "WARRIOR" }, -- Heroic Throw

    [1160970] = { duration = 45, class = "WARRIOR" }, -- Heroic Fury

    [1164382] = { duration = 300, class = "WARRIOR" }, -- Shattering Throw

}
