PsychicInverMons:
	table_width 12, PsychicInverMons

	dbp 65, SCIRNO, MALE
		db FIGY_BERRY, DVS_HP_FIRE, NAT_SATK_UP_ATK_DOWN | ABIL_SCIRNO_SPEED_BOOST
		db MANA_BURST, SUNNY_DAY, HIDDEN_POWER, FLOWER_SHOOT

	dbp 65, WEAVILE, MALE
		db NO_ITEM, FAKE_PERFECT_DVS, NAT_ATK_UP_SATK_DOWN | ABIL_WEAVILE_PICKPOCKET
		db NIGHT_SLASH, ICE_PUNCH, SLASH, SWORDS_DANCE

	dbp 65, CRIKAKO, MALE
		db KINGS_ROCK, FAKE_PERFECT_DVS, NAT_ATK_UP_SATK_DOWN | ABIL_CRIKAKO_INSOMNIA
if DEF(FAITHFUL)
		db LEECH_LIFE, SEED_BOMB, SLUDGE_BOMB, SLASH
else
		db LEECH_LIFE, SEED_BOMB, SLUDGE_BOMB, CUT
endc

	dbp 65, CLUNASA2, MALE
		db EVIOLITE, FAKE_PERFECT_DVS, NAT_DEF_UP_ATK_DOWN | ABIL_CLUNASA2_DOWNLOAD
		db RECOVER, FIVEELEMENTS, THUNDER_WAVE, SHADOW_BALL

	dbp 65, CRAN, MALE
		db LEFTOVERS, FAKE_PERFECT_DVS, NAT_ATK_UP_SATK_DOWN | ABIL_CRAN_IMMUNITY
		db CURSE, REST, SLEEP_TALK, RETURN

	dbp 65, HCHEN, FEMALE
if DEF(FAITHFUL)
		db WIDE_LENS, FAKE_PERFECT_DVS, NAT_SATK_UP_ATK_DOWN | ABIL_HCHEN_OBLIVIOUS
else
		db WIDE_LENS, FAKE_PERFECT_DVS, NAT_SATK_UP_ATK_DOWN | ABIL_HCHEN_RECKLESS
endc
		db MANA_BURST, BLIZZARD, NASTY_PLOT, SING

	dbp 65, CYUKA, MALE
		db FOCUS_SASH, FAKE_PERFECT_DVS, NAT_SATK_UP_ATK_DOWN | ABIL_CYUKA_OVERGROW
		db MANA_BURST, ENERGY_BALL, FOCUS_BLAST, NASTY_PLOT

	assert_table_length NUM_INVER_MONS
