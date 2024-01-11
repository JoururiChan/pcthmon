TMHMListAlpha:
	db TM_ACROBATICS
	db TM_AERIAL_ACE
	db TM_ATTRACT
	db TM_AVALANCHE
	db TM_BLIZZARD
if !DEF(FAITHFUL)
	db TM_BRICK_BREAK
endc
	db TM_BULK_UP
	db TM_BULLDOZE
	db TM_CALM_MIND
	db TM_CURSE
	db HM_CUT
	db TM_DARK_PULSE
	db TM_DAZZLINGLEAM
	db TM_DIG
	db TM_DOUBLE_TEAM
	db TM_DRAGON_CLAW
	db TM_DRAGON_PULSE
	db TM_DRAIN_PUNCH
	db TM_DYNAMICPUNCH
	db TM_EARTHQUAKE
	db TM_ENERGY_BALL
	db TM_EXPLOSION
	db TM_FACADE
	db TM_FALSE_SWIPE
	db TM_FIRE_BLAST
	db TM_FLAME_CHARGE
	db TM_METEOR_FALL
	db TM_FLASH
	db TM_FLASH_CANNON
	db HM_FLY
	db TM_FOCUS_BLAST
	db TM_GIGA_DRAIN
	db TM_GIGA_IMPACT
	db TM_GYRO_BALL
	db TM_HAIL
	db TM_HIDDEN_POWER
	db TM_HONE_TOOLS
	db TM_MASTER_SPARK
	db TM_ICE_BEAM
	db TM_IRON_TAIL
	db TM_LEECH_LIFE
	db TM_LIGHT_SCREEN
	db TM_POISON_JAB
	db TM_PROTECT
	db TM_PSYCHIC
	db TM_RAIN_DANCE
	db TM_REFLECT
	db TM_REST
	db TM_RETURN
	db TM_ROAR
	db TM_ROCK_SLIDE
if DEF(FAITHFUL)
	db TM_ROCK_SMASH
endc
	db TM_ROOST
	db TM_SAFEGUARD
	db TM_SANDSTORM
	db TM_SCALD
	db TM_SHADOW_BALL
	db TM_SHADOW_CLAW
	db TM_SLUDGE_BOMB
	db TM_SOLAR_BEAM
	db TM_STEEL_WING
	db TM_STONE_EDGE
	db HM_STRENGTH
	db TM_SUBSTITUTE
	db TM_SUNNY_DAY
	db HM_SURF
	db TM_SWIFT
	db TM_SWORDS_DANCE
	db TM_THIEF
	db TM_THUNDER
	db TM_THUNDERBOLT
	db TM_THUNDER_WAVE
	db TM_TOXIC
	db TM_U_TURN
	db TM_VENOSHOCK
	db TM_VOLT_SWITCH
	db HM_WATERFALL
	db TM_WATER_PULSE
	db HM_WHIRLPOOL
	db TM_BLAZE_STAR
	db TM_WILL_O_WISP
	db TM_X_SCISSOR
	db NUM_TMS + NUM_HMS
TMHMListAlphaEnd:
	assert (TMHMListAlphaEnd - TMHMListAlpha) <= NUM_TMS + NUM_HMS + 1, "Too many A-Z TMs"
	assert (TMHMListAlphaEnd - TMHMListAlpha) >= NUM_TMS + NUM_HMS + 1, "Too few A-Z TMs"
