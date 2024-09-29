MACRO evo_data
	db \1 ; evolution type
	if \1 == EVOLVE_PARTY
		dp \2, PLAIN_FORM ; parameter
	else
		db \2 ; parameter
	endc
	if \1 == EVOLVE_STAT || \1 == EVOLVE_HOLDING
		db \3 ; ATK_*_DEF | time of day
		shift
	endc
	if _NARG > 3
		dp \3, \4
	else
		dp \3, PLAIN_FORM
	endc
ENDM


SECTION "Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/evolution_moves.asm"

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

EvosAttacks::

CReimuEvosAttacks:
	evo_data EVOLVE_LEVEL, 16, REIMU
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, SEAL_NEEDLE
	db 10, MACH_PUNCH
	db 14, FORESIGHT
	db 22, LIGHT_SCREEN ; Sweet Scent → Take Down
	db 22, REFLECT
	db 28, HEALINGLIGHT
	db 33, PWJ_NEEDLE ; Worry Seed → event move
	db -1 ; no more level-up moves

ReimuEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, TREIMU
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, AERIAL_ACE
	db 6, SEAL_NEEDLE
	db 10, MACH_PUNCH
	db 14, FORESIGHT
	db 22, LIGHT_SCREEN ; Sweet Scent → Take Down
	db 22, REFLECT
	db 28, HEALINGLIGHT
	db 33, PWJ_NEEDLE ; Worry Seed → event move
	db 37, TENSION_KICK ; Worry Seed → event move
	db 41, ACROBATICS ; Synthesis → similar move
	db 45, DIVE_KICK
	db 51, DREAM_HEAVEN ; Solar Beam → Sludge Bomb
	db 55, CALM_MIND
	db -1 ; no more level-up moves

TReimuEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, AERIAL_ACE
	db 6, SEAL_NEEDLE
	db 10, MACH_PUNCH
	db 14, FORESIGHT
	db 22, LIGHT_SCREEN ; Sweet Scent → Take Down
	db 22, REFLECT
	db 28, HEALINGLIGHT
	db 33, PWJ_NEEDLE ; Worry Seed → event move
	db 37, TENSION_KICK ; Worry Seed → event move
	db 41, ACROBATICS ; Synthesis → similar move
	db 45, DIVE_KICK
	db 51, DREAM_HEAVEN ; Solar Beam → Sludge Bomb
	db 55, CALM_MIND
	db -1 ; no more level-up moves

CMarisaEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, MARISA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, THUNDERSHOCK
	db 11, THIEF
	db 15, EMBER ; Dragon Rage → TM move
	db 20, SPORE ; Scary Face → Dragon Rage
	db 23, SWIFT ; Fire Fang → Scary Face
	db 28, SLUDGE_BOMB ; Flame Burst → TM move
	db 31, AIR_SLASH
	db 35, THUNDERBOLT
	db 39, TRICK
	db 43, LIGHT_SCREEN
	db 48, BLAZE_STAR
	db 52, MASTER_SPARK
	db -1 ; no more level-up moves

MarisaEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, AMARISA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, THUNDERSHOCK
	db 11, THIEF
	db 15, EMBER ; Dragon Rage → TM move
	db 20, SPORE ; Scary Face → Dragon Rage
	db 23, SWIFT ; Fire Fang → Scary Face
	db 28, SLUDGE_BOMB ; Flame Burst → TM move
	db 31, AIR_SLASH
	db 35, THUNDERBOLT
	db 39, TRICK
	db 43, LIGHT_SCREEN
	db 48, BLAZE_STAR
	db 52, MASTER_SPARK
	db -1 ; no more level-up moves

AMarisaEvosAttacks:
	db -1 ; no more evolutions
	db 1, METEOR_FALL ; evolution move
	db 1, TACKLE
	db 1, GROWL
	db 7, THUNDERSHOCK
	db 11, THIEF
	db 15, EMBER ; Dragon Rage → TM move
	db 20, SPORE ; Scary Face → Dragon Rage
	db 23, SWIFT ; Fire Fang → Scary Face
	db 28, SLUDGE_BOMB ; Flame Burst → TM move
	db 31, AIR_SLASH
	db 35, THUNDERBOLT
	db 39, TRICK
	db 43, LIGHT_SCREEN
	db 48, BLAZE_STAR
	db 52, MASTER_SPARK
	db -1 ; no more level-up moves

CSakuyaEvosAttacks:
	evo_data EVOLVE_LEVEL, 14, SAKUYA
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 7, KNIFE_THROW
	db 10, DOUBLE_KICK ; Withdraw → similar move
	db 17, FURY_STRIKES
	db 21, HONE_TOOLS
	db 25, DISABLE
	db 29, PROTECT
	db 34, ICICLE_SPEAR
	db 39, NIGHT_SLASH ; Skull Bash → new move
	db 42, SWORDS_DANCE ; Iron Defense → egg move
	db 46, SCULPTURE
	db 51, BRAVER
	db -1 ; no more level-up moves

SakuyaEvosAttacks:
	evo_data EVOLVE_LEVEL, 32, HSAKUYA
	db -1 ; no more evolutions
	db 1, BLADE_FLASH
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 7, KNIFE_THROW
	db 10, DOUBLE_KICK ; Withdraw → similar move
	db 17, FURY_STRIKES
	db 21, HONE_TOOLS
	db 25, DISABLE
	db 29, PROTECT
	db 34, ICICLE_SPEAR
	db 39, NIGHT_SLASH ; Skull Bash → new move
	db 42, SWORDS_DANCE ; Iron Defense → egg move
	db 46, SCULPTURE
	db 51, BRAVER
	db -1 ; no more level-up moves

HSakuyaEvosAttacks:
	db -1 ; no more evolutions
	db 1, BLADE_FLASH
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 7, KNIFE_THROW
	db 10, DOUBLE_KICK ; Withdraw → similar move
	db 17, FURY_STRIKES
	db 21, HONE_TOOLS
	db 25, DISABLE
	db 29, PROTECT
	db 34, ICICLE_SPEAR
	db 39, NIGHT_SLASH ; Skull Bash → new move
	db 42, SWORDS_DANCE ; Iron Defense → egg move
	db 46, SCULPTURE
	db 51, BRAVER
	db -1 ; no more level-up moves

CGyokuEvosAttacks:
	evo_data EVOLVE_STAT, 22, ATK_LT_DEF, MGYOKU
	evo_data EVOLVE_STAT, 22, ATK_GT_DEF, FGYOKU
	evo_data EVOLVE_STAT, 22, ATK_EQ_DEF, OGYOKU
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 8, SEAL_NEEDLE
	db 12, ROLLOUT
	db 16, PROTECT
	db 21, HAZE
	db -1 ; no more level-up moves

MGyokuEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 1, ICE_SHARD
	db 8, SEAL_NEEDLE
	db 12, ROLLOUT
	db 16, PROTECT
	db 21, HAZE
	db 25, BARRIER
	db 29, POWER_TRICK
	db 32, ICY_WIND
	db 37, FUTURE_SIGHT
	db 41, HEALINGLIGHT
	db 44, ANCIENTPOWER
	db 49, PSYCHIC_M
	db 53, BLIZZARD
	db -1 ; no more level-up moves

FGyokuEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 1, FIRE_SPIN
	db 8, SEAL_NEEDLE
	db 12, ROLLOUT
	db 16, PROTECT
	db 21, HAZE
	db 25, BARRIER
	db 29, POWER_TRICK
	db 32, WILL_O_WISP
	db 37, FUTURE_SIGHT
	db 41, HEALINGLIGHT
	db 44, ANCIENTPOWER
	db 49, PSYCHIC_M
	db 53, BLAZE_STAR
	db -1 ; no more level-up moves

OGyokuEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 1, ROCK_BLAST
	db 8, SEAL_NEEDLE
	db 12, ROLLOUT
	db 16, PROTECT
	db 21, HAZE
	db 25, SUBSTITUTE
	db 29, POWER_TRICK
	db 32, EARTH_POWER
	db 37, FUTURE_SIGHT
	db 41, HEALINGLIGHT
	db 44, ANCIENTPOWER
	db 49, PSYCHIC_M
	db 53, POWER_GEM
	db -1 ; no more level-up moves

CMaganEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, MAGAN
	db -1 ; no more evolutions
	db 1, ACID ; OGyoku move
	db 1, LEER ; OGyoku move
	db 6, MEAN_LOOK ; Harden → similar move
	db 10, PSYSHOT
	db 13, CONFUSE_RAY
	db 17, THUNDERSHOCK
	db 21, FEINT_ATTACK
	db -1 ; no more level-up moves

MaganEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 5, GUST ; Sand Attack → Gust
	db 9, MUD_SLAP ; Gust → GSC TM move
	db 13, QUICK_ATTACK
	db 17, RAGE ; Whirlwind → RBY TM move
	db 21, CHARM ; Twister → egg move
	db 25, SWIFT ; Feather Dance → TM move
	db 29, SPIDERS_NEST
	db 33, WING_ATTACK
	db 37, WHITE_BIRD
	db 41, DRAGON_DRILL ; Tailwind → new move
	db 45, SHADOW_BALL ; Mirror Move → TM move
	db 50, DESTINY_BOND
	db 54, SLUDGE_BOMB
	db -1 ; no more level-up moves

CMimaEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, MIMA
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, CONFUSE_RAY ; Sand Attack → Gust
	db 9, MEAN_LOOK ; Gust → GSC TM move
	db 14, PSYSHOT
	db 17, FEINT_ATTACK ; Whirlwind → RBY TM move
	db 22, DESTINY_BOND ; Twister → egg move
	db 25, NIGHT_SHADE ; Feather Dance → TM move
	db 37, WING_ATTACK
	db 42, WHITE_BIRD
	db 47, DRAGON_DRILL ; Tailwind → new move
	db 52, STEEL_WING ; Mirror Move → TM move
	db 57, AIR_SLASH
	db 62, HURRICANE
	db -1 ; no more level-up moves

MimaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, MASTER_SPARK ; EVO move
	db 1, LEER ; Tail Whip → similar move
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, POWER_BITE
	db 19, SUCKER_PUNCH
	db 22, AVARICE_BITE
	db 25, FEINT_ATTACK ; Assurance → similar move
	db 28, LIFE_COUNTER
	db 31, DOUBLE_EDGE
	db 34, COUNTER ; Endeavor → egg move
	db 54, HYPNOSIS
	db 58, SPIRIT_VOICE
	db -1 ; no more level-up moves

CElisEvosAttacks:
	evo_data EVOLVE_LEVEL, 24, ELIS
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SAFEGUARD ; Tail Whip → similar move
	db 6, GUST
	db 9, PURSUIT
	db 14, HEALINGLIGHT
	db 18, WING_ATTACK
	db 22, TRICK
	db 25, SLEEP_POWDER
	db 29, FEINT_ATTACK ; Assurance → similar move
	db 34, LIFE_COUNTER
	db 39, DOUBLE_EDGE
	db 44, COUNTER ; Endeavor → egg move
	db -1 ; no more level-up moves

ElisEvosAttacks:
	db -1 ; no more evolutions
	db 1, QUICK_ATTACK ; Pluck → egg move
	db 1, PECK
	db 1, GROWL
	db 4, LEER
	db 8, PURSUIT
	db 11, FURY_STRIKES ; Fury Attack → similar move
	db 15, AERIAL_ACE
	db 18, SWIFT ; Mirror Move → TM move
	db 23, FEINT_ATTACK ; Assurance → similar move
	db 27, SPIDERS_NEST
	db 32, FOCUS_ENERGY
	db 36, WHITE_BIRD
	db 41, DRAGON_DRILL
	db 45, DOUBLE_EDGE ; Drill Run → tutor move
	db 49, SHADOW_HIT
	db 52, HURRICANE
	db 56, AEROBLAST
	db -1 ; no more level-up moves

CKikuriEvosAttacks:
	evo_data EVOLVE_LEVEL, 26, KIKURI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, DEFENSE_CURL
	db 6, HEALINGLIGHT
	db 10, SCREECH
	db 14, ROCK_BLAST
	db 19, PSYBEAM
	db 23, HEX
	db 27, REFLECT ; Stockpile + Spit Up + Swallow → egg move
	db 28, PURSUIT ; Acid Spray → egg move
	db 35, POISON_JAB ; Mud Bomb → TM move
	db 36, LEECH_LIFE ; Gastro Acid → TM move
	db 38, BRAVER ; Belch → TM move
	db 41, HAZE
	db 44, BULK_UP ; Coil → TM move
	db 49, GUNK_SHOT
	db -1 ; no more level-up moves

KikuriEvosAttacks:
	db -1 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, LEER ; Tail Whip → similar move
	db 5, GROWL
	db 7, CHARM ; Play Nice → Pichu move
	db 10, QUICK_ATTACK
	db 13, DOUBLE_KICK ; Electro Ball → LGPE move
	db 18, THUNDER_WAVE
	db 21, MUD_SLAP ; Feint → GSC TM move
	db 23, DOUBLE_TEAM
	db 26, SPARK
	db 29, BRAVER ; Nuzzle → TM move
	db 34, EXTREMESPEED ; Discharge → event move
	db 37, BODY_SLAM ; Slam → TM move
	db 42, THUNDERBOLT
	db 45, SPIDERS_NEST
	db 49, EARTH_POWER
	db 53, PSYCHIC_M
	db 58, SPIRIT_VOICE
	db -1 ; no more level-up moves

CSarielEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, SARIEL
	db -1 ; no more evolutions
	db 1, GUST
	db 1, PSYSHOT ; Tail Whip → similar move
	db 6, FORESIGHT
	db 10, HEALINGLIGHT ; evolution move
	db 14, SWIFT
	db 19, WING_ATTACK
	db 22, HAIL
	db 25, PWJ_NEEDLE
	db 28, DRAINING_KISS
	db 32, PSYBEAM
	db 36, HYPNOSIS
	db 41, WHITE_BIRD
	db 45, SPIRIT_VOICE
	db 49, STEEL_WING
	db 56, MOONBLAST
	db 59, PSYCHIC_M
	db 62, BLIZZARD
	db -1 ; no more level-up moves

SarielEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST
	db 1, PSYSHOT ; Tail Whip → similar move
	db 6, FORESIGHT
	db 10, HEALINGLIGHT ; evolution move
	db 14, SWIFT
	db 19, WING_ATTACK
	db 22, HAIL
	db 25, PWJ_NEEDLE
	db 28, DRAINING_KISS
	db 32, PSYBEAM
	db 36, HYPNOSIS
	db 41, WHITE_BIRD
	db 45, SPIRIT_VOICE
	db 49, STEEL_WING
	db 56, MOONBLAST
	db 59, PSYCHIC_M
	db 62, BLIZZARD
	db -1 ; no more level-up moves

CKongaraEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, KONGARA
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, HAZE
	db 7, KARATE_CHOP
	db 11, MINIMIZE
	db 14, SEISMIC_TOSS
	db 18, FURY_STRIKES
	db 23, KNOCK_OFF
	db 26, RECOVER
	db 29, REFLECT
	db 34, RAGE
	db 38, POISON_JAB
	db 42, BULK_UP
	db 45, DRAIN_PUNCH
	db 51, NIGHT_SLASH
	db 56, AURA_SPHERE
	db 59, BRAVER
	db 63, REVERSAL
	db -1 ; no more level-up moves

KongaraEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, HAZE
	db 1, COUNTER ; evo move
	db 7, KARATE_CHOP
	db 11, MINIMIZE
	db 14, SEISMIC_TOSS
	db 18, FURY_STRIKES
	db 23, KNOCK_OFF
	db 26, RECOVER
	db 29, REFLECT
	db 34, RAGE
	db 38, POISON_JAB
	db 42, BULK_UP
	db 45, DRAIN_PUNCH
	db 51, NIGHT_SLASH
	db 56, AURA_SPHERE
	db 59, BRAVER
	db 63, REVERSAL
	db -1 ; no more level-up moves

CRikaEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, RIKA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 7, THUNDERSHOCK
	db 10, DEFENSE_CURL
	db 15, BLACK_RIPPLE
	db 18, BUBBLE_BEAM ; Fury Attack → similar move
	db 21, GUST
	db 24, VOLT_SWITCH
	db 28, THUNDER_WAVE
	db 32, ICE_BEAM
	db 35, SLUDGE_BOMB
	db 39, THUNDERBOLT
	db 43, FLOWER_SHOOT
	db 47, DARK_PULSE
	db 52, ZAP_CANNON
	db -1 ; no more level-up moves

RikaEvosAttacks:
	evo_data EVOLVE_ITEM, MOON_STONE, ARIKA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 7, THUNDERSHOCK
	db 10, DEFENSE_CURL
	db 15, BLACK_RIPPLE
	db 18, BUBBLE_BEAM ; Fury Attack → similar move
	db 21, GUST
	db 24, VOLT_SWITCH
	db 28, THUNDER_WAVE
	db 32, ICE_BEAM
	db 35, SLUDGE_BOMB
	db 39, THUNDERBOLT
	db 43, FLOWER_SHOOT
	db 47, DARK_PULSE
	db 52, ZAP_CANNON
	db -1 ; no more level-up moves

ARikaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 1, DRAIN_PUNCH ; evo move
	db 7, THUNDERSHOCK
	db 10, DEFENSE_CURL
	db 15, BLACK_RIPPLE
	db 18, BUBBLE_BEAM ; Fury Attack → similar move
	db 21, GUST
	db 24, VOLT_SWITCH
	db 28, THUNDER_WAVE
	db 32, LUNAR_BASH
	db 35, BRICK_BREAK
	db 39, THUNDERBOLT
	db 43, CROSS_CHOP
	db 47, DARK_PULSE
	db 52, ZAP_CANNON
	db -1 ; no more level-up moves

CMeiraEvosAttacks:
	evo_data EVOLVE_LEVEL, 22, MEIRA
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, FORESIGHT
	db 9, BLADE_FLASH
	db 14, SUCKER_PUNCH; Follow Me → new move
	db 18, FOCUS_ENERGY ; Bestow → Crystal unique move
	db 21, LOW_KICK ; Wake-Up Slap → RBY TM move
	db 24, AERIAL_ACE
	db 27, METAL_CLAW
	db 31, NIGHT_SLASH
	db 35, PROTECT
	db 39, SLASH
	db 42, EXTREMESPEED
	db 45, DRAIN_PUNCH
	db 48, CROSS_CHOP
	db 52, SWORDS_DANCE
	db 55, BRAVER
	db -1 ; no more level-up moves

MeiraEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, FORESIGHT
	db 9, BLADE_FLASH
	db 14, SUCKER_PUNCH; Follow Me → new move
	db 18, FOCUS_ENERGY ; Bestow → Crystal unique move
	db 21, LOW_KICK ; Wake-Up Slap → RBY TM move
	db 24, AERIAL_ACE
	db 27, METAL_CLAW
	db 31, NIGHT_SLASH
	db 35, PROTECT
	db 39, SLASH
	db 42, EXTREMESPEED
	db 45, DRAIN_PUNCH
	db 48, CROSS_CHOP
	db 52, SWORDS_DANCE
	db 55, BRAVER
	db -1 ; no more level-up moves

CEllenEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, ELLEN
	db -1 ; no more evolutions
	db 1, PSYSHOT ; evolution move
	db 1, TRICK
	db 7, SING
	db 11, RAPID_SPIN
	db 14, CHARM
	db 17, QUICK_ATTACK
	db 20, MACH_PUNCH
	db 24, FUTURE_SIGHT
	db 28, LUNAR_BULLET
	db 31, MIRROR_COAT
	db 35, BODY_SLAM
	db 39, PSYCHIC_M
	db 42, SUCKER_PUNCH
	db 45, AURA_SPHERE
	db 48, REVERSAL
	db 52, HEALINGLIGHT
	db -1 ; no more level-up moves

EllenEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT ; evolution move
	db 1, TRICK
	db 7, SING
	db 11, RAPID_SPIN
	db 14, CHARM
	db 17, QUICK_ATTACK
	db 20, MACH_PUNCH
	db 24, FUTURE_SIGHT
	db 28, LUNAR_BULLET
	db 31, MIRROR_COAT
	db 35, BODY_SLAM
	db 39, PSYCHIC_M
	db 42, SUCKER_PUNCH
	db 45, AURA_SPHERE
	db 48, REVERSAL
	db 52, HEALINGLIGHT
	db -1 ; no more level-up moves

CKotohimeEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, KOTOHIME
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 4, DISARM_VOICE
	db 7, SWEET_KISS
	db 11, FEINT_ATTACK
	db 15, MACH_PUNCH ; Wing Attack → egg move
	db 18, CHARM
	db 22, DOUBLE_KICK
	db 25, LUNAR_BASH
	db 28, HEADBUTT
	db 32, SING
	db 37, ENCORE
	db 41, COUNTER
	db 44, REVERSAL
	db 48, PLAY_ROUGH
	db 52, ATTRACT
	db -1 ; no more level-up moves

KotohimeEvosAttacks:
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 4, DISARM_VOICE
	db 7, SWEET_KISS
	db 11, FEINT_ATTACK
	db 15, MACH_PUNCH ; Wing Attack → egg move
	db 18, CHARM
	db 22, DOUBLE_KICK
	db 25, LUNAR_BASH
	db 28, HEADBUTT
	db 32, SING
	db 37, ENCORE
	db 41, COUNTER
	db 44, REVERSAL
	db 48, PLAY_ROUGH
	db 52, ATTRACT
	db -1 ; no more level-up moves

CKanaEvosAttacks:
	evo_data EVOLVE_LEVEL, 22, KANA
	db -1 ; no more evolutions
	db 1, LICK
	db 1, ASTONISH ; Sweet Scent → event move
	db 7, DISABLE
	db 11, REST
	db 14, DOUBLE_SLAP
	db 18, DISARM_VOICE
	db 21, TRICK
	db 25, HEX
	db 29, SING
	db 32, SHADOW_BALL
	db 35, SHADOW_DANCE
	db 39, NASTY_PLOT
	db 43, SPIRIT_VOICE
	db 48, CURSE
	db 52, DESTINY_BOND
	db -1 ; no more level-up moves

KanaEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 1, ASTONISH ; Sweet Scent → event move
	db 7, DISABLE
	db 11, REST
	db 14, DOUBLE_SLAP
	db 18, DISARM_VOICE
	db 21, TRICK
	db 25, HEX
	db 29, SING
	db 32, SHADOW_BALL
	db 35, SHADOW_DANCE
	db 39, NASTY_PLOT
	db 43, SPIRIT_VOICE
	db 48, CURSE
	db 52, DESTINY_BOND
	db -1 ; no more level-up moves

CRikakoEvosAttacks:
	evo_data EVOLVE_LEVEL, 24, RIKAKO
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 5, SONIC_BOOM
	db 9, SKILL_SWAP ; LGPE move
	db 12, SUPERSONIC
	db 16, PSYBEAM ; Fury Cutter → egg move
	db 20, TOXIC_GAS
	db 23, TAKE_DOWN
	db 27, CALM_MIND
	db 31, TELEPORT
	db 34, PSYCHIC_M
	db 38, HURRICANE
	db 42, EXPLOSION
	db 46, METEOR_FALL
	db 51, ZAP_CANNON
	db -1 ; no more level-up moves

RikakoEvosAttacks:
	db -1 ; no more evolutions
	db 1, AERIAL_ACE ; evo move
	db 1, PSYSHOT
	db 5, SONIC_BOOM
	db 9, SKILL_SWAP ; LGPE move
	db 12, SUPERSONIC
	db 16, PSYBEAM ; Fury Cutter → egg move
	db 20, TOXIC_GAS
	db 23, TAKE_DOWN
	db 27, CALM_MIND
	db 31, TELEPORT
	db 34, PSYCHIC_M
	db 38, HURRICANE
	db 42, EXPLOSION
	db 46, METEOR_FALL
	db 51, ZAP_CANNON
	db -1 ; no more level-up moves

CChiyuriEvosAttacks:
	evo_data EVOLVE_LEVEL, 26, CHIYURI
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, AQUA_JET ; XD move
	db 7, THUNDER_WAVE
	db 11, CONVERSION
	db 14, SPARK ; Mud-Slap → LGPE move
	db 17, SCALD
	db 22, HONE_TOOLS
	db 25, FOCUS_ENERGY
	db 28, BULK_UP
	db 32, THUNDERBOLT
	db 35, ICE_BEAM
	db 39, DIVE_KICK
	db 42, SPIKES
	db 46, THUNDERPUNCH
	db 50, ZAP_CANNON
	db 53, HYDRO_PUMP
	db -1 ; no more level-up moves

ChiyuriEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, AQUA_JET ; XD move
	db 7, THUNDER_WAVE
	db 11, CONVERSION
	db 14, SPARK ; Mud-Slap → LGPE move
	db 17, SCALD
	db 22, HONE_TOOLS
	db 25, FOCUS_ENERGY
	db 28, BULK_UP
	db 32, THUNDERBOLT
	db 35, ICE_BEAM
	db 39, DIVE_KICK
	db 42, SPIKES
	db 46, THUNDERPUNCH
	db 50, ZAP_CANNON
	db 53, HYDRO_PUMP
	db -1 ; no more level-up moves

CYumemiEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, YUMEMI
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, PSYSHOT
	db 5, SKILL_SWAP
	db 9, ICE_SHARD
	db 13, REFLECT
	db 17, ICY_WIND
	db 21, HAIL
	db 25, FIRE_PUNCH
	db 29, POWER_TRICK
	db 32, SPARK
	db 36, ICICLE_CRASH
	db 40, ICHIGO_CROSS
	db 44, ICE_BEAM
	db 48, THUNDER_WAVE
	db 52, SHINY_FIRE
	db -1 ; no more level-up moves

YumemiEvosAttacks:
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, PSYSHOT
	db 5, SKILL_SWAP
	db 9, ICE_SHARD
	db 13, REFLECT
	db 17, ICY_WIND
	db 21, HAIL
	db 25, FIRE_PUNCH
	db 29, POWER_TRICK
	db 32, SPARK
	db 36, ICICLE_CRASH
	db 40, ICHIGO_CROSS
	db 44, ICE_BEAM
	db 48, THUNDER_WAVE
	db 52, SHINY_FIRE
	db -1 ; no more level-up moves

COrangeEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, ORANGE
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 4, LEER ; Fury Swipes → similar move
	db 8, TACKLE
	db 12, BULK_UP
	db 15, MAGNITUDE
	db 19, ROCK_THROW
	db 23, KNOCK_OFF
	db 27, BATON_PASS ; Assurance → egg move
	db 31, PURSUIT ; Punishment → new move
	db 35, TENSION_KICK
	db 39, STEEL_FIST
	db 43, DIVE_KICK
	db 47, CROSS_CHOP ; Stomping Tantrum → HGSS tutor move
	db 51, ENDURE
	db 54, BULLDOZE
	db -1 ; no more level-up moves

OrangeEvosAttacks:
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 4, LEER ; Fury Swipes → similar move
	db 8, TACKLE
	db 12, BULK_UP
	db 15, MAGNITUDE
	db 19, ROCK_THROW
	db 23, KNOCK_OFF
	db 27, BATON_PASS ; Assurance → egg move
	db 31, PURSUIT ; Punishment → new move
	db 35, TENSION_KICK
	db 39, STEEL_FIST
	db 43, DIVE_KICK
	db 47, CROSS_CHOP ; Stomping Tantrum → HGSS tutor move
	db 51, ENDURE
	db 54, BULLDOZE
	db -1 ; no more level-up moves

CKurumiEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, KURUMI
	db -1 ; no more evolutions
	db 1, GUST
	db 1, DEFENSE_CURL
	db 5, GROWL
	db 9, SONIC_BOOM
	db 13, SCREECH
	db 16, ROAR
	db 20, BITE
	db 24, WING_ATTACK
	db 29, LEECH_LIFE
	db 33, BLACK_RIPPLE
	db 37, HYPNOSIS
	db 37, DREAM_EATER
	db 41, SPIRIT_VOICE
	db 44, REFLECT
	db 47, FRESH_SNACK
	db 51, POWER_BITE
	db 54, NASTY_PLOT
	db -1 ; no more level-up moves

KurumiEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST
	db 1, DEFENSE_CURL
	db 5, GROWL
	db 9, SONIC_BOOM
	db 13, SCREECH
	db 16, ROAR
	db 20, BITE
	db 24, WING_ATTACK
	db 29, LEECH_LIFE
	db 33, BLACK_RIPPLE
	db 37, HYPNOSIS
	db 37, DREAM_EATER
	db 41, SPIRIT_VOICE
	db 44, REFLECT
	db 47, FRESH_SNACK
	db 51, POWER_BITE
	db 54, NASTY_PLOT
	db -1 ; no more level-up moves

CEllyEvosAttacks:
	evo_data EVOLVE_LEVEL, 22, ELLY
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, HONE_TOOLS
	db 6, MACH_PUNCH
	db 10, FOCUS_ENERGY
	db 14, BLADE_FLASH
	db 18, KNOCK_OFF
	db 21, SPIKES
	db 25, RAPID_SPIN
	db 29, AERIAL_ACE
	db 33, REFLECT
	db 37, TRICK_ROOM
	db 40, PETAL_SLASH
	db 44, SWORDS_DANCE
	db 48, CROSS_CHOP
	db 52, EXTREMESPEED
	db 56, POISON_NAIL
	db -1 ; no more level-up moves

EllyEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, HONE_TOOLS
	db 6, MACH_PUNCH
	db 10, FOCUS_ENERGY
	db 14, BLADE_FLASH
	db 18, KNOCK_OFF
	db 21, SPIKES
	db 25, RAPID_SPIN
	db 29, AERIAL_ACE
	db 33, REFLECT
	db 37, TRICK_ROOM
	db 40, PETAL_SLASH
	db 44, SWORDS_DANCE
	db 48, CROSS_CHOP
	db 52, EXTREMESPEED
	db 56, POISON_NAIL
	db -1 ; no more level-up moves

CYukaEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, YUKA
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEER
	db 5, SPORE
	db 9, PURSUIT
	db 14, LEECH_SEED
	db 17, RAZOR_LEAF
	db 21, SLEEP_POWDER
	db 25, ENERGY_LIGHT
	db 29, NASTY_PLOT
	db 33, POISON_NAIL
	db 36, SEED_BOMB
	db 39, GROWTH
	db 43, FLOWER_SHOOT
	db 47, EARTH_POWER
	db 51, SWAGGER
	db 54, SLUDGE_BOMB
	db 58, MASTER_SPARK
	db -1 ; no more level-up moves

YukaEvosAttacks:
	evo_data EVOLVE_LEVEL, 44, AYUKA
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEER
	db 5, SPORE
	db 9, PURSUIT
	db 14, LEECH_SEED
	db 17, RAZOR_LEAF
	db 21, SLEEP_POWDER
	db 25, ENERGY_LIGHT
	db 29, NASTY_PLOT
	db 33, POISON_NAIL
	db 36, SEED_BOMB
	db 39, GROWTH
	db 43, FLOWER_SHOOT
	db 47, EARTH_POWER
	db 51, SWAGGER
	db 54, SLUDGE_BOMB
	db 58, MASTER_SPARK
	db -1 ; no more level-up moves

AYukaEvosAttacks:
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEER
	db 5, SPORE
	db 9, PURSUIT
	db 14, LEECH_SEED
	db 17, RAZOR_LEAF
	db 21, SLEEP_POWDER
	db 25, ENERGY_LIGHT
	db 29, NASTY_PLOT
	db 33, POISON_NAIL
	db 36, SEED_BOMB
	db 39, GROWTH
	db 43, FLOWER_SHOOT
	db 47, EARTH_POWER
	db 51, SWAGGER
	db 54, SLUDGE_BOMB
	db 58, MASTER_SPARK
	db -1 ; no more level-up moves

CMugetsuEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, MUGETSU
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_KISS
	db 5, DOUBLE_TEAM
	db 9, HYPNOSIS
	db 13, DOUBLE_SLAP
	db 17, HEADBUTT
	db 21, DRAINING_KISS
	db 24, SING
	db 28, LIGHT_SCREEN
	db 32, DREAM_EATER
	db 36, BLACK_RIPPLE
	db 39, LUNACY_EYES
	db 43, HAZE
	db 47, SPIRIT_VOICE
	db 52, REST
	db 56, LIFE_COUNTER
	db -1 ; no more level-up moves

MugetsuEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_KISS
	db 5, DOUBLE_TEAM
	db 9, HYPNOSIS
	db 13, DOUBLE_SLAP
	db 17, HEADBUTT
	db 21, DRAINING_KISS
	db 24, SING
	db 28, LIGHT_SCREEN
	db 32, DREAM_EATER
	db 36, BLACK_RIPPLE
	db 39, LUNACY_EYES
	db 43, HAZE
	db 47, SPIRIT_VOICE
	db 52, REST
	db 56, LIFE_COUNTER
	db -1 ; no more level-up moves

CGengetsuEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, GENGETSU
	db -1 ; no more evolutions
	db 1, GUST
	db 1, TELEPORT
	db 6, DOUBLE_SLAP
	db 10, SONIC_BOOM
	db 13, SLEEP_POWDER
	db 17, SWEET_KISS
	db 21, WING_ATTACK
	db 25, BLACK_RIPPLE
	db 29, HEALINGLIGHT
	db 34, DREAM_EATER
	db 39, WHITE_BIRD
	db 42, NIGHT_SLASH
	db 46, CHARM
	db 46, ATTRACT
	db 50, SPIRIT_VOICE
	db 53, LIFE_BALANCE
	db 57, AEROBLAST
	db -1 ; no more level-up moves

GengetsuEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST
	db 1, TELEPORT
	db 6, DOUBLE_SLAP
	db 10, SONIC_BOOM
	db 13, SLEEP_POWDER
	db 17, SWEET_KISS
	db 21, WING_ATTACK
	db 25, BLACK_RIPPLE
	db 29, HEALINGLIGHT
	db 34, DREAM_EATER
	db 39, WHITE_BIRD
	db 42, NIGHT_SLASH
	db 46, CHARM
	db 46, ATTRACT
	db 50, SPIRIT_VOICE
	db 53, LIFE_BALANCE
	db 57, AEROBLAST
	db -1 ; no more level-up moves

CSaraEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, SARA
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, LEER
	db 5, ROCK_THROW
	db 10, KARATE_CHOP
	db 14, SWAGGER
	db 17, LOW_KICK
	db 21, HEADBUTT
	db 25, U_TURN
	db 28, MEAN_LOOK
	db 33, ROAR
	db 37, SUCKER_PUNCH
	db 41, CROSS_CHOP
	db 44, SPIKES
	db 48, BLAZE_STAR
	db 52, PSYSTRIKE
	db -1 ; no more level-up moves

SaraEvosAttacks:
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, FIRE_PUNCH ; evo move
	db 1, LEER
	db 5, ROCK_THROW
	db 10, KARATE_CHOP
	db 14, SWAGGER
	db 17, LOW_KICK
	db 21, HEADBUTT
	db 25, U_TURN
	db 28, MEAN_LOOK
	db 33, ROAR
	db 37, SUCKER_PUNCH
	db 41, CROSS_CHOP
	db 44, SPIKES
	db 48, BLAZE_STAR
	db 52, PSYSTRIKE
	db -1 ; no more level-up moves

CLuizeEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, LUIZE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, ASTONISH ; Tail Whip → similar move
	db 9, DEFENSE_CURL
	db 13, SWIFT ; Flame Wheel → Stomp
	db 18, BARRIER ; Stomp → Flame Charge
	db 22, TRICK ; Flame Charge → event move
	db 25, HEADBUTT
	db 29, CONFUSE_RAY
	db 33, CHARM ; Inferno → egg move
	db 38, HEX
	db 42, MOONBLAST
	db 46, SHADOW_DANCE ; Bounce → new move
	db 50, SPIRIT_VOICE
	db 54, SHINY_FIRE
	db -1 ; no more level-up moves

LuizeEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, DLUIZE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, ASTONISH ; Tail Whip → similar move
	db 9, DEFENSE_CURL
	db 13, SWIFT ; Flame Wheel → Stomp
	db 18, BARRIER ; Stomp → Flame Charge
	db 22, TRICK ; Flame Charge → event move
	db 25, HEADBUTT
	db 29, CONFUSE_RAY
	db 33, CHARM ; Inferno → egg move
	db 38, HEX
	db 42, MOONBLAST
	db 46, SHADOW_DANCE ; Bounce → new move
	db 50, SPIRIT_VOICE
	db 54, SHINY_FIRE
	db -1 ; no more level-up moves

DLuizeEvosAttacks:
	db -1 ; no more evolutions
	db 1, WILL_O_WISP ; evo move
	db 1, TACKLE
	db 1, GROWL
	db 5, ASTONISH ; Tail Whip → similar move
	db 9, DEFENSE_CURL
	db 13, SWIFT ; Flame Wheel → Stomp
	db 18, BARRIER ; Stomp → Flame Charge
	db 22, TRICK ; Flame Charge → event move
	db 25, HEADBUTT
	db 29, CONFUSE_RAY
	db 33, CHARM ; Inferno → egg move
	db 38, HEX
	db 42, MOONBLAST
	db 46, SHADOW_DANCE ; Bounce → new move
	db 50, SPIRIT_VOICE
	db 54, SHINY_FIRE
	db -1 ; no more level-up moves

CAliceEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, ALICE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, DOLL_STRINGS
	db 10, KNIFE_THROW
	db 14, RAPID_SPIN
	db 21, LIGHT_SCREEN
	db 21, REFLECT
	db 25, SUBSTITUTE
	db 28, THUNDER_WAVE
	db 32, AURA_SPHERE
	db 35, EXTREMESPEED
	db 40, RECOVER
	db 44, ICHIGO_CROSS
	db 48, FLASH_CANNON
	db 52, EXPLOSION
	db -1 ; no more level-up moves

AliceEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, AALICE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FLAME_CHARGE ; evo move
	db 1, PROTECT
	db 6, DOLL_STRINGS
	db 10, KNIFE_THROW
	db 14, RAPID_SPIN
	db 21, LIGHT_SCREEN
	db 21, REFLECT
	db 25, SUBSTITUTE
	db 28, THUNDER_WAVE
	db 32, AURA_SPHERE
	db 35, EXTREMESPEED
	db 40, RECOVER
	db 44, ICHIGO_CROSS
	db 48, FLASH_CANNON
	db 52, EXPLOSION
	db -1 ; no more level-up moves

AAliceEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FLAME_CHARGE ; evo move
	db 1, BLAZE_STAR ; evo move
	db 1, PROTECT
	db 6, DOLL_STRINGS
	db 10, KNIFE_THROW
	db 14, RAPID_SPIN
	db 21, LIGHT_SCREEN
	db 21, REFLECT
	db 25, SUBSTITUTE
	db 28, THUNDER_WAVE
	db 32, AURA_SPHERE
	db 35, EXTREMESPEED
	db 40, RECOVER
	db 44, ICHIGO_CROSS
	db 48, FLASH_CANNON
	db 52, EXPLOSION
	db -1 ; no more level-up moves

CMaiEvosAttacks:
	evo_data EVOLVE_LEVEL, 24, MAI
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, FOCUS_ENERGY
	db 6, SING
	db 10, CHARM
	db 14, DISARM_VOICE
	db 18, ICY_WIND
	db 22, ENCORE
	db 26, ATTRACT
	db 29, DRAINING_KISS
	db 33, WHITE_BIRD
	db 37, ICE_BEAM
	db 44, TRICK_ROOM
	db 48, HAIL
	db 53, BLIZZARD
	db -1 ; no more level-up moves

MaiEvosAttacks:
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, LUNAR_BULLET ; evo-move
	db 1, FOCUS_ENERGY
	db 6, SING
	db 10, CHARM
	db 14, DISARM_VOICE
	db 18, ICY_WIND
	db 22, ENCORE
	db 26, ATTRACT
	db 29, DRAINING_KISS
	db 33, WHITE_BIRD
	db 37, ICE_BEAM
	db 44, TRICK_ROOM
	db 48, HAIL
	db 53, BLIZZARD
	db -1 ; no more level-up moves

CYukiEvosAttacks:
	evo_data EVOLVE_LEVEL, 24, YUKI
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, FOCUS_ENERGY
	db 6, LEER
	db 10, GLARE
	db 14, THUNDERSHOCK
	db 18, FIRE_SPIN
	db 22, DISABLE
	db 26, CALM_MIND
	db 29, FLAME_CHARGE
	db 33, THUNDERBOLT
	db 37, FLAME_CHARGE
	db 44, SKILL_SWAP
	db 48, SUNNY_DAY
	db 53, MASTER_SPARK
	db -1 ; no more level-up moves

YukiEvosAttacks:
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, SHINY_FIRE ; evo move
	db 1, FOCUS_ENERGY
	db 6, LEER
	db 10, GLARE
	db 14, THUNDERSHOCK
	db 18, FIRE_SPIN
	db 22, DISABLE
	db 26, CALM_MIND
	db 29, FLAME_CHARGE
	db 33, THUNDERBOLT
	db 37, FLAME_CHARGE
	db 44, SKILL_SWAP
	db 48, SUNNY_DAY
	db 53, MASTER_SPARK
	db -1 ; no more level-up moves

CYumekoEvosAttacks:
	evo_data EVOLVE_LEVEL, 26, YUMEKO
	db -1 ; no more evolutions
	db 1, KNIFE_THROW
	db 1, HONE_TOOLS
	db 5, FORESIGHT
	db 9, SPIKES
	db 13, BLADE_FLASH
	db 17, FLAME_CHARGE
	db 21, DISABLE
	db 25, GLARE
	db 30, DRAGON_BASH
	db 33, SLASH
	db 37, SCULPTURE
	db 41, DRAGON_DANCE
	db 44, ICHIGO_CROSS
	db 47, BLAZE_STAR
	db 51, PETAL_SLASH
	db -1 ; no more level-up moves

YumekoEvosAttacks:
	db -1 ; no more evolutions
	db 1, KNIFE_THROW
	db 1, HONE_TOOLS
	db 1, FIRE_PUNCH ; evo-move
	db 5, FORESIGHT
	db 9, SPIKES
	db 13, BLADE_FLASH
	db 17, FLAME_CHARGE
	db 21, DISABLE
	db 25, GLARE
	db 30, DRAGON_BASH
	db 33, SLASH
	db 37, SCULPTURE
	db 41, DRAGON_DANCE
	db 44, ICHIGO_CROSS
	db 47, BLAZE_STAR
	db 51, PETAL_SLASH
	db -1 ; no more level-up moves

CShinkiEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, SHINKI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, ENDURE
	db 6, ABSORB
	db 11, TOXIC_GAS
	db 15, BARRIER
	db 18, SLEEP_POWDER
	db 21, PSYBEAM
	db 25, BLACK_RIPPLE
	db 29, TELEPORT
	db 33, HAZE
	db 37, THUNDER_WAVE
	db 41, CONFUSE_RAY
	db 45, PSYCHIC_M
	db 48, DARK_PULSE
	db 52, DREAM_EATER
	db 55, LUNACY_EYES
	db 59, HELL_TOKAMAK 
	db -1 ; no more level-up moves

ShinkiEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, ENDURE
	db 6, ABSORB
	db 11, TOXIC_GAS
	db 15, BARRIER
	db 18, SLEEP_POWDER
	db 21, PSYBEAM
	db 25, BLACK_RIPPLE
	db 29, TELEPORT
	db 33, HAZE
	db 37, THUNDER_WAVE
	db 41, CONFUSE_RAY
	db 45, PSYCHIC_M
	db 48, DARK_PULSE
	db 52, DREAM_EATER
	db 55, LUNACY_EYES
	db 59, HELL_TOKAMAK 
	db -1 ; no more level-up moves

CRumiaEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, RUMIA
	db -1 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 6, SCRATCH
	db 9, ACID
	db 14, TRICK
	db 17, GLARE
	db 21, BLACK_RIPPLE
	db 25, MEAN_LOOK
	db 28, VENOSHOCK
	db 32, TOXIC
	db 35, CURSE
	db 39, POWER_BITE
	db 43, DARK_PULSE
	db 47, GUNK_SHOT
	db 52, PETAL_SLASH
	db -1 ; no more level-up moves

RumiaEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, ARUMIA
	db -1 ; no more evolutions
	db 1, LICK
	db 1, AVARICE_BITE ; evo move
	db 1, GROWL
	db 6, SCRATCH
	db 9, ACID
	db 14, TRICK
	db 17, GLARE
	db 21, BLACK_RIPPLE
	db 25, MEAN_LOOK
	db 28, VENOSHOCK
	db 32, TOXIC
	db 35, CURSE
	db 39, POWER_BITE
	db 43, DARK_PULSE
	db 47, GUNK_SHOT
	db 52, PETAL_SLASH
	db -1 ; no more level-up moves

ARumiaEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 1, AVARICE_BITE ; evo move
	db 1, GROWL
	db 6, SCRATCH
	db 9, ACID
	db 14, TRICK
	db 17, GLARE
	db 21, BLACK_RIPPLE
	db 25, MEAN_LOOK
	db 28, VENOSHOCK
	db 32, TOXIC
	db 35, CURSE
	db 39, POWER_BITE
	db 43, DARK_PULSE
	db 47, GUNK_SHOT
	db 52, PETAL_SLASH
	db -1 ; no more level-up moves

CDaichanEvosAttacks:
	evo_data EVOLVE_LEVEL, 19, DAICHAN
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWL
	db 6, SLEEP_POWDER
	db 10, DISARM_VOICE
	db 14, RAZOR_LEAF
	db 18, GROWTH
	db 21, SPORE
	db 25, DRAINING_KISS
	db 29, U_TURN
	db 33, LIGHT_SCREEN
	db 37, FLOWER_SHOOT
	db 41, ENERGY_LIGHT
	db 44, LUNAR_BULLET
	db 49, AEROBLAST
	db 53, POWER_WHIP
	db -1 ; no more level-up moves

DaichanEvosAttacks:
	evo_data EVOLVE_LEVEL, 35, DDAICHAN
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWL
	db 6, SLEEP_POWDER
	db 10, DISARM_VOICE
	db 14, RAZOR_LEAF
	db 18, GROWTH
	db 21, SPORE
	db 25, DRAINING_KISS
	db 29, U_TURN
	db 33, LIGHT_SCREEN
	db 37, FLOWER_SHOOT
	db 41, ENERGY_LIGHT
	db 44, LUNAR_BULLET
	db 49, AEROBLAST
	db 53, POWER_WHIP
	db -1 ; no more level-up moves

DDaichanEvosAttacks:
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWL
	db 6, SLEEP_POWDER
	db 10, DISARM_VOICE
	db 14, RAZOR_LEAF
	db 18, GROWTH
	db 21, SPORE
	db 25, DRAINING_KISS
	db 29, U_TURN
	db 33, LIGHT_SCREEN
	db 37, FLOWER_SHOOT
	db 41, ENERGY_LIGHT
	db 44, LUNAR_BULLET
	db 49, AEROBLAST
	db 53, POWER_WHIP
	db -1 ; no more level-up moves

CCirnoEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, CIRNO
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, TACKLE
	db 7, LEER
	db 11, ROAR
	db 15, WATER_GUN
	db 19, ICY_WIND
	db 23, HAZE
	db 26, ENCORE
	db 30, DIVE_KICK
	db 34, ICICLE_SPEAR
	db 39, ICE_PUNCH
	db 44, DRAGON_BASH
	db 48, HAIL
	db 52, BLIZZARD
	db -1 ; no more level-up moves

CirnoEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, SCIRNO
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, ACROBATICS ; evo move
	db 1, TACKLE
	db 7, LEER
	db 11, ROAR
	db 15, WATER_GUN
	db 19, ICY_WIND
	db 23, HAZE
	db 26, ENCORE
	db 30, DIVE_KICK
	db 34, ICICLE_SPEAR
	db 39, ICE_PUNCH
	db 44, DRAGON_BASH
	db 48, HAIL
	db 52, BLIZZARD
	db -1 ; no more level-up moves

SCirnoEvosAttacks:
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, ACROBATICS ; evo move
	db 1, TACKLE
	db 7, LEER
	db 11, ROAR
	db 15, WATER_GUN
	db 19, ICY_WIND
	db 23, HAZE
	db 26, ENCORE
	db 30, DIVE_KICK
	db 34, ICICLE_SPEAR
	db 39, ICE_PUNCH
	db 44, DRAGON_BASH
	db 48, HAIL
	db 52, BLIZZARD
	db -1 ; no more level-up moves

CMeilingEvosAttacks:
	evo_data EVOLVE_LEVEL, 22, MEILING
	db 1, KARATE_CHOP
	db 1, FORESIGHT
	db 7, SAFEGUARD
	db 11, LOW_KICK
	db 15, COUNTER
	db 20, TENSION_KICK
	db 23, BULK_UP
	db 27, DRAGON_RAGE
	db 31, DRAIN_PUNCH
	db 35, DRAGON_DANCE
	db 41, VOICE_BIND
	db 45, POWER_TRICK
	db 49, SWAGGER
	db 52, CROSS_CHOP
	db 56, BUG_STRIKES
	db -1 ; no more level-up moves

MeilingEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, AMEILING
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, FORESIGHT
	db 7, SAFEGUARD
	db 11, LOW_KICK
	db 15, COUNTER
	db 20, TENSION_KICK
	db 23, BULK_UP
	db 27, DRAGON_RAGE
	db 31, DRAIN_PUNCH
	db 35, DRAGON_DANCE
	db 41, VOICE_BIND
	db 45, POWER_TRICK
	db 49, SWAGGER
	db 52, CROSS_CHOP
	db 56, BUG_STRIKES
	db -1 ; no more level-up moves



AMeilingEvosAttacks:
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, OUTRAGE ; evo move
	db 1, FORESIGHT
	db 7, SAFEGUARD
	db 11, LOW_KICK
	db 15, COUNTER
	db 20, TENSION_KICK
	db 23, BULK_UP
	db 27, DRAGON_RAGE
	db 31, DRAIN_PUNCH
	db 35, DRAGON_DANCE
	db 41, VOICE_BIND
	db 45, POWER_TRICK
	db 49, SWAGGER
	db 52, CROSS_CHOP
	db 56, BUG_STRIKES
	db -1 ; no more level-up moves

CKoakumaEvosAttacks:
	evo_data EVOLVE_LEVEL, 25, KOAKUMA
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONFUSE_RAY
	db 6, CHARM
	db 10, GUST
	db 13, TELEPORT
	db 17, PSYBEAM
	db 21, TRICK
	db 28, HYPNOSIS
	db 32, AIR_SLASH
	db 35, PSYCHIC_M
	db 39, LIGHT_SCREEN
	db 39, REFLECT
	db 43, DARK_PULSE
	db 48, LUNACY_EYES
	db 52, DREAM_HEAVEN
	db -1 ; no more level-up moves

KoakumaEvosAttacks:
	evo_data EVOLVE_LEVEL, 39, HKOAKUMA
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONFUSE_RAY
	db 6, CHARM
	db 10, GUST
	db 13, TELEPORT
	db 17, PSYBEAM
	db 21, TRICK
	db 25, WING_ATTACK
	db 28, HYPNOSIS
	db 32, AIR_SLASH
	db 35, PSYCHIC_M
	db 39, LIGHT_SCREEN
	db 39, REFLECT
	db 43, DARK_PULSE
	db 48, LUNACY_EYES
	db 52, DREAM_HEAVEN
	db -1 ; no more level-up moves

HKoakumaEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONFUSE_RAY
	db 6, CHARM
	db 10, GUST
	db 13, TELEPORT
	db 17, PSYBEAM
	db 21, TRICK
	db 25, WING_ATTACK
	db 28, HYPNOSIS
	db 32, AIR_SLASH
	db 35, PSYCHIC_M
	db 39, LIGHT_SCREEN
	db 39, REFLECT
	db 43, DARK_PULSE
	db 48, LUNACY_EYES
	db 52, DREAM_HEAVEN
	db -1 ; no more level-up moves

CPatchouliEvosAttacks:
	evo_data EVOLVE_LEVEL, 24, PATCHOULI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONVERSION
	db 6, EMBER
	db 6, WATER_GUN
	db 6, MUD_SLAP
	db 11, TRICK
	db 15, CONFUSE_RAY
	db 20, PSYBEAM
	db 24, SUNNY_DAY
	db 24, RAIN_DANCE
	db 24, SANDSTORM
	db 28, FLASH
	db 33, BARRIER
	db 37, PSYCHIC_M
	db 41, METEOR_FALL
	db 41, HYDRO_PUMP
	db 41, EARTH_POWER
	db 44, FIVEELEMENTS
	db 49, MOONBLAST
	db 53, FLASH_CANNON
	db 57, FLOWER_SHOOT
	db -1 ; no more level-up moves

PatchouliEvosAttacks:
	evo_data EVOLVE_LEVEL, 40, TPATCHOULI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONVERSION
	db 6, EMBER
	db 6, WATER_GUN
	db 6, MUD_SLAP
	db 11, TRICK
	db 15, CONFUSE_RAY
	db 20, PSYBEAM
	db 24, SUNNY_DAY
	db 24, RAIN_DANCE
	db 24, SANDSTORM
	db 28, FLASH
	db 33, BARRIER
	db 37, PSYCHIC_M
	db 41, METEOR_FALL
	db 41, HYDRO_PUMP
	db 41, EARTH_POWER
	db 44, FIVEELEMENTS
	db 49, MOONBLAST
	db 53, FLASH_CANNON
	db 57, FLOWER_SHOOT
	db -1 ; no more level-up moves

TPatchouliEvosAttacks:
	db -1 ; no more evolutions
	db 1, CONVERSION
	db 6, EMBER
	db 6, WATER_GUN
	db 6, MUD_SLAP
	db 11, TRICK
	db 15, CONFUSE_RAY
	db 20, PSYBEAM
	db 24, SUNNY_DAY
	db 24, RAIN_DANCE
	db 24, SANDSTORM
	db 28, FLASH
	db 33, BARRIER
	db 37, PSYCHIC_M
	db 41, METEOR_FALL
	db 41, HYDRO_PUMP
	db 41, EARTH_POWER
	db 44, FIVEELEMENTS
	db 49, MOONBLAST
	db 53, FLASH_CANNON
	db 57, FLOWER_SHOOT
	db -1 ; no more level-up moves

CRemiliaEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, REMILIA
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, GUST
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, AERIAL_ACE
	db 25, FEINT_ATTACK
	db 32, BULK_UP
	db 35, HAZE
	db 39, LEECH_LIFE
	db 43, POWER_BITE
	db 48, DIVE_KICK
	db 53, GUNGNIR
	db -1 ; no more level-up moves

RemiliaEvosAttacks:
	evo_data EVOLVE_LEVEL, 42, SREMILIA
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, GUST
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, AERIAL_ACE
	db 25, FEINT_ATTACK
	db 28, WING_ATTACK
	db 32, BULK_UP
	db 35, HAZE
	db 39, LEECH_LIFE
	db 43, POWER_BITE
	db 48, DIVE_KICK
	db 53, GUNGNIR
	db -1 ; no more level-up moves

SRemiliaEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, GUST
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, AERIAL_ACE
	db 25, FEINT_ATTACK
	db 28, WING_ATTACK
	db 32, BULK_UP
	db 35, HAZE
	db 39, LEECH_LIFE
	db 43, POWER_BITE
	db 48, DIVE_KICK
	db 53, GUNGNIR
	db -1 ; no more level-up moves

CFlandreEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, FLANDRE
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, EMBER
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, FLAME_CHARGE
	db 25, FEINT_ATTACK
	db 32, BULK_UP
	db 35, HAZE
	db 39, LEECH_LIFE
	db 43, AVARICE_BITE
	db 48, ICHIGO_CROSS
	db 53, LAVATEIN
	db -1 ; no more level-up moves

FlandreEvosAttacks:
	evo_data EVOLVE_LEVEL, 45, AFLANDRE
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, EMBER
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, FLAME_CHARGE
	db 25, FEINT_ATTACK
	db 30, FIRE_PUNCH
	db 32, BULK_UP
	db 35, HAZE
	db 39, LEECH_LIFE
	db 43, AVARICE_BITE
	db 48, ICHIGO_CROSS
	db 53, LAVATEIN
	db -1 ; no more level-up moves

AFlandreEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, EMBER
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, FLAME_CHARGE
	db 25, FEINT_ATTACK
	db 30, FIRE_PUNCH
	db 32, BULK_UP
	db 35, HAZE
	db 39, LEECH_LIFE
	db 43, AVARICE_BITE
	db 48, ICHIGO_CROSS
	db 53, LAVATEIN
	db -1 ; no more level-up moves

CLettyEvosAttacks:
	db -1 ; no more evolutions
	db 1, POISON_JAB
	db 1, PECK
	db 1, LEER ; Tail Whip → similar move
	db 1, WATER_GUN ; Water Sport → RBY TM move
	db 5, SUPERSONIC
	db 8, KNIFE_THROW
	db 13, REVERSAL ; Flail → similar move
	db 16, WATER_PULSE
	db 21, HAZE ; Aqua Ring → egg move
	db 24, FURY_STRIKES ; Fury Attack → similar moves
	db 29, SPIDERS_NEST
	db 32, WATERFALL
	db 40, BODY_SLAM ; Horn Drill → tutor move
	db 46, KNOCK_OFF ; Soak → tutor move
	db 54, DRAGON_BASH
	db -1 ; no more level-up moves

LettyEvosAttacks:
	evo_data EVOLVE_ITEM, WATER_STONE, DLETTY
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 4, WATER_GUN
	db 7, RAPID_SPIN
	db 10, RECOVER
	db 13, HYPNOSIS ; Psywave → new move
	db 16, SWIFT
	db 18, BUBBLE_BEAM
	db 22, SPIDERS_NEST ; Camouflage → new move
	db 24, GYRO_BALL
	db 28, LIFE_BALANCE ; Brine → HGSS tutor move
	db 31, MINIMIZE
	db 35, REFLECT ; Reflect Type → new move
	db 37, POWER_GEM
	db 40, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 49, HYDRO_PUMP ; Cosmic Power → Hydro Pump
	db -1 ; no more level-up moves

DLettyEvosAttacks:
	db -1 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, WATER_GUN
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, SWIFT
	db 40, CONFUSE_RAY
	db 60, FIVEELEMENTS ; RBY TM move
	db -1 ; no more level-up moves

MrMimeEvosAttacks:
	db -1 ; no more evolutions
	db 1, BARRIER
	db 1, PSYSHOT
	db 4, HYPNOSIS ; Copycat → egg move
	db 8, CALM_MIND ; Meditate → TM move
	db 11, DOUBLE_SLAP
	db 13, PROTECT ; Mimic → event move
	db 15, METRONOME ; Psywave → RBY TM move
	db 18, ENCORE
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 32, CONFUSE_RAY ; Recycle → egg move
	db 36, TRICK
	db 39, PSYCHIC_M
	db 43, FUTURE_SIGHT ; Role Play → egg move
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db -1 ; no more level-up moves

ChenEvosAttacks:
	evo_data EVOLVE_HOLDING, METAL_COAT, TR_ANYTIME, SCIZOR
	evo_data EVOLVE_HOLDING, HARD_STONE, TR_ANYTIME, KLEAVOR
	db -1 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, BLADE_FLASH
	db 17, SPIDERS_NEST
	db 21, WING_ATTACK
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, GLARE ; Razor Wind → new move
	db 37, DOUBLE_TEAM
	db 41, ICHIGO_CROSS
	db 45, NIGHT_SLASH
	db 49, SCULPTURE ; Double Hit → SV TM move
	db 50, AIR_SLASH
	db 57, SWORDS_DANCE
	db -1 ; no more level-up moves

HChenEvosAttacks:
	db -1 ; no more evolutions
	db 1, PETAL_SLASH ; event move
	db 1, TACKLE ; Pound → similar move
	db 1, LICK
	db 1, PSYSHOT ; Smoochum move
	db 1, SWEET_KISS ; Smoochum move
	db 5, SING ; Lovely Kiss → Smoochum move
	db 8, SCREECH ; Lovely Kiss → LGPE move
	db 11, ICY_WIND ; Powder Snow → TM move
	db 15, DOUBLE_SLAP
	db 18, ICE_PUNCH
	db 21, METRONOME ; Heart Stamp → RBY TM move
	db 25, MEAN_LOOK
	db 28, DRAINING_KISS ; Fake Tears → Drain Kiss
	db 33, PSYBEAM ; Wake-Up Slap → new move
	db 39, AVALANCHE
	db 44, BODY_SLAM
	db 49, NASTY_PLOT ; Wring Out → egg move
	db 55, SHADOW_DANCE
	db 60, BLIZZARD
	db -1 ; no more level-up moves

CLilyWhiteEvosAttacks:
	evo_data EVOLVE_HOLDING, ELECTIRIZER, TR_ANYTIME, ELECTIVIRE
	db -1 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, SCREECH ; Discharge → Screech
	db 42, CROSS_CHOP ; Screech → new move
	db 49, THUNDERBOLT
	db 55, THUNDER
	db -1 ; no more level-up moves

LilyWhiteEvosAttacks:
	evo_data EVOLVE_HOLDING, LILYWHITEIZER, TR_ANYTIME, MAGMORTAR
	db -1 ; no more evolutions
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_CHARGE ; Flame Burst → TM move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, SUNNY_DAY ; Lava Plume → Sunny Day
	db 42, FOCUS_BLAST ; Sunny Day → TM move
	db 49, METEOR_FALL
	db 55, HELL_TOKAMAK
	db -1 ; no more level-up moves

ELilyWhiteEvosAttacks:
	db -1 ; no more evolutions
	db 1, FURY_STRIKES ; Vice Grip → new move
	db 1, FOCUS_ENERGY
	db 4, WRAP ; Bind → similar move
	db 8, SEISMIC_TOSS
	db 12, DEFENSE_CURL ; Harden → similar move
	db 16, RAGE ; Revenge → RBY TM move
	db 20, ROCK_THROW ; Brick Break → event move
	db 26, ROCK_SMASH ; Vital Throw → TM move
	db 29, ICHIGO_CROSS
	db 33, FEINT_ATTACK ; Submission → egg moves
	db 36, OUTRAGE ; Storm Throw → LGPE move
	db 40, SWORDS_DANCE
	db 43, THRASH
	db 47, SCULPTURE ; Superpower → similar move
	db 50, DRAGON_BASH ; Guillotine → new move
	db -1 ; no more level-up moves

CLilyBlackEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 3, LEER ; Tail Whip → similar move
	db 5, RAGE
	db 8, KNIFE_THROW
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
	db 24, QUICK_ATTACK ; Payback → event move
	db 29, FOCUS_ENERGY ; Work Up → LGPE move
	db 35, TAKE_DOWN
	db 41, LUNAR_BASH
	db 48, SWAGGER
	db 55, THRASH
	db 63, DOUBLE_EDGE
	db 71, GUNGNIR
	db 80, OUTRAGE ; HGSS tutor move
	db -1 ; no more level-up moves

LilyBlackEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, ELILYBLACK, NO_FORM ; preserve pre-evo form
	db -1 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, REVERSAL ; Flail → event move
	db -1 ; no more level-up moves

ELilyBlackEvosAttacks:
	db -1 ; no more evolutions
	db 1, WATERFALL ; HM move
	db 1, BITE ; evolution move
	db 1, THRASH
	db 1, DRAGON_RAGE
	db 1, WRAP ; Bind → similar move
	db 21, LEER
	db 24, GUST ; Twister → new move
	db 27, DRAGON_RAGE ; Ice Fang → Dragon Rage
	db 30, AQUA_TAIL
	db 33, SCARY_FACE
	db 36, DRAGONBREATH ; Dragon Rage → GSC TM move
	db 39, AVARICE_BITE
	db 42, HYDRO_PUMP
	db 45, DRAGON_DANCE
	db 48, HURRICANE
	db 51, RAIN_DANCE
	db 54, MASTER_SPARK
	db 57, OUTRAGE ; HGSS tutor move
	db -1 ; no more level-up moves

CLyricaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ANCIENTPOWER ; HGSS tutor move
	db 1, DRAGON_RAGE ; RBY TM move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, SING
	db 1, GROWL
	db 1, WATER_GUN
	db 4, BITE ; Mist → event move
	db 7, CONFUSE_RAY
	db 10, ICE_SHARD
	db 14, WATER_PULSE
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, SHADOW_DANCE
	db 32, ICE_BEAM
	db 37, FUTURE_SIGHT ; Brine → event move
	db 43, SAFEGUARD
	db 47, HYDRO_PUMP
	db 50, OUTRAGE ; Sheer Cold → HGSS tutor move
	db 54, DRAGON_BASH ; LGPE TM move
	db -1 ; no more level-up moves

LyricaEvosAttacks:
	db -1 ; no more evolutions
	db 1, RECOLLECT
	db -1 ; no more level-up moves

TLyricaEvosAttacks:
	evo_data EVOLVE_ITEM, THUNDERSTONE, MERLIN
	evo_data EVOLVE_ITEM, WATER_STONE, CMERLIN
	evo_data EVOLVE_ITEM, FIRE_STONE, SMERLIN
	evo_data EVOLVE_ITEM, SUN_STONE, ESPEON
	evo_data EVOLVE_ITEM, MOON_STONE, UMBREON
	evo_data EVOLVE_ITEM, LEAF_STONE, LEAFEON
	evo_data EVOLVE_ITEM, ICE_STONE, GLACEON
	evo_data EVOLVE_ITEM, SHINY_STONE, SYLVEON
	evo_data EVOLVE_LOCATION, ILEX_FOREST, LEAFEON
	evo_data EVOLVE_LOCATION, ICE_PATH, GLACEON
	evo_data EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	evo_data EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 10, SWIFT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, HEAL_BELL ; Refresh → HGSS tutor move
	db 23, THIEF ; Covet → TM move
	db 25, TAKE_DOWN
	db 29, CHARM
	db 33, BATON_PASS
	db 37, DOUBLE_EDGE
	db 41, GROWTH ; Last Resort → event move
	db 45, REVERSAL ; Trump Card → new move
	db -1 ; no more level-up moves

CMerlinEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, WATER_GUN ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, WATER_PULSE
	db 20, AURORA_BEAM
	db 25, RECOVER ; Aqua Ring → similar move
	db 29, BARRIER ; Acid Armor → similar move
	db 33, HAZE
	db 37, SCALD ; Muddy Water → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, HYDRO_PUMP
	db -1 ; no more level-up moves

MerlinEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, THUNDERSHOCK ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, DOUBLE_KICK
	db 20, LIGHT_SCREEN ; Thunder Fang → TM move
	db 25, PWJ_NEEDLE
	db 29, SPIDERS_NEST
	db 33, THUNDER_WAVE
	db 37, THUNDERBOLT ; Discharge → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, THUNDER
	db -1 ; no more level-up moves

SMerlinEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, EMBER ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FIRE_SPIN ; Fire Fang → Fire Spin
	db 25, FLAME_CHARGE ; Fire Spin → TM move
	db 29, SCARY_FACE
	db 33, SMOKESCREEN ; Smog → new move
	db 37, METEOR_FALL ; Lava Plume → new move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, LAVATEIN
	db -1 ; no more level-up moves

CLunasaEvosAttacks:
	evo_data EVOLVE_HOLDING, UP_GRADE, TR_ANYTIME, CLUNASA2
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, TELEPORT ; Sharpen → RBY TM move
	db 7, PSYBEAM
	db 12, SPIDERS_NEST
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, THUNDER_WAVE ; Recycle → TM move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, FIVEELEMENTS
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db -1 ; no more level-up moves

LunasaEvosAttacks:
	evo_data EVOLVE_LEVEL, 40, ALUNASA
	db -1 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROCK_THROW ; Rollout → event move
	db 19, LEER
	db 25, ROLLOUT ; Mud Shot → Rollout
	db 28, BUBBLE_BEAM ; Brine → egg move
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 43, AURORA_BEAM ; Tickle → egg move
	db 46, ROCK_BLAST
	db 52, POWER_TRICK
	db 55, HYDRO_PUMP
	db 61, POWER_GEM ; new move
	db -1 ; no more level-up moves

ALunasaEvosAttacks:
	db -1 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 1, ICICLE_SPEAR ; Spike Cannon → new move ; evolution move
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROCK_THROW ; Rollout → event move
	db 19, LEER
	db 25, ROLLOUT ; Mud Shot → Rollout
	db 28, BUBBLE_BEAM ; Brine → egg move
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 48, SPIKES ; Tickle → new move
	db 56, ROCK_BLAST
	db 67, POWER_TRICK
	db 75, HYDRO_PUMP
	db 86, POWER_GEM ; new move
	db -1 ; no more level-up moves

CYuyukoEvosAttacks:
	evo_data EVOLVE_LEVEL, 40, YUYUKO
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL ; Harden → similar move
	db 6, ABSORB
	db 11, MUD_SLAP ; Leer → GSC TM move
	db 16, ROCK_THROW ; Mud Shot → Rock Throw (event move)
	db 21, LEER ; Sand Attack → Leer
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 41, SCREECH ; Metal Sound → similar move
	db 46, ANCIENTPOWER
	db 51, GIGA_DRAIN ; Wring Out → TM move
	db 56, IRON_HEAD ; new move
	db 61, POWER_TRICK ; new move
	db -1 ; no more level-up moves

YuyukoEvosAttacks:
	db -1 ; no more evolutions
	db 1, SLASH ; evolution move
	db 1, LOW_KICK ; HGSS tutor move
	db 1, SCRATCH
	db 1, DEFENSE_CURL ; Harden → similar move
	db 6, ABSORB
	db 11, MUD_SLAP ; Leer → GSC TM move
	db 16, ROCK_THROW ; Mud Shot → Rock Throw (event move)
	db 21, LEER ; Sand Attack → Leer
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 45, SCREECH ; Metal Sound → similar move
	db 54, ANCIENTPOWER
	db 63, LEECH_LIFE ; Wring Out → LGPE move
	db 72, NIGHT_SLASH
	db 81, POWER_TRICK ; new move
	db -1 ; no more level-up moves

AYuyukoEvosAttacks:
	db -1 ; no more evolutions
	db 1, DRAGON_RAGE ; RBY TM move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 1, BITE
	db 1, SCARY_FACE
	db 9, ROAR
	db 13, ROCK_THROW ; LGPE move
	db 17, SPIDERS_NEST
	db 25, ANCIENTPOWER
	db 33, AVARICE_BITE
	db 41, TAKE_DOWN
	db 49, DIVE_KICK ; Sky Drop → new move
	db 57, IRON_HEAD
	db 65, MASTER_SPARK
	db 73, ROCK_SLIDE
	db 81, GUNGNIR
	db -1 ; no more level-up moves

CRanEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, RAGE ; Chip Away → RBY TM move
	db 20, TAKE_DOWN ; Yawn → RBY TM move
	db 25, BODY_SLAM
	db 28, REST
	db 33, SLEEP_TALK
	db 36, ROLLOUT
	db 41, OUTRAGE ; Block → HGSS tutor move
	db 44, BELLY_DRUM
	db 49, AVARICE_BITE
	db 50, SCULPTURE ; Heavy Slam → new move
	db 57, GUNGNIR
	db -1 ; no more level-up moves

RanEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST
	db 1, ICY_WIND ; Powder Snow → similar move
	db 1, LEER ; LGPE move
	db 8, ICE_SHARD ; Mist → Ice Shard
	db 15, SAFEGUARD ; Ice Shard → new move
	db 22, LUNACY_EYES ; Mind Reader → event move
	db 29, ANCIENTPOWER
	db 36, SPIDERS_NEST
	db 43, ICE_BEAM
	db 50, AIR_SLASH ; Reflect → new move
	db 57, HAIL
	db 64, REFLECT ; Tailwind → Reflect
	db 71, BLIZZARD
	db 78, DIVE_KICK ; Sheer Cold → new move
	db 85, WHITE_BIRD
	db 92, HURRICANE
	db 99, AEROBLAST ; new move
	db -1 ; no more level-up moves

TRanEvosAttacks:
	db -1 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 1, LEER ; LGPE move
	db 8, THUNDER_WAVE
	db 15, PROTECT ; Detect → similar move
	db 22, LUNACY_EYES ; Pluck → event move
	db 29, ANCIENTPOWER
	db 36, SPIDERS_NEST ; Charge → SpidersNest
	db 43, THUNDERBOLT ; SpidersNest → TM move
	db 50, DRAGON_DRILL ; Discharge → Dragon Drill
	db 57, RAIN_DANCE
	db 64, LIGHT_SCREEN
	db 71, THUNDER ; Dragon Drill → Thunder
	db 78, DIVE_KICK ; Thunder → new move
	db 85, WHITE_BIRD
	db 92, HURRICANE ; Zap Cannon → new move
	db 99, ZAP_CANNON
	db -1 ; no more level-up moves

CYukariEvosAttacks:
	db -1 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 1, LEER ; LGPE move
	db 8, FIRE_SPIN
	db 15, SAFEGUARD ; SpidersNest → Safeguard
	db 22, LUNACY_EYES ; Endure → event move
	db 29, ANCIENTPOWER
	db 36, SPIDERS_NEST ; MeteorFall → SpidersNest
	db 43, METEOR_FALL ; Safeguard → MeteorFall
	db 50, AIR_SLASH
	db 57, SUNNY_DAY
	db 64, WILL_O_WISP ; Heat Wave → event move
	db 71, HELL_TOKAMAK ; Solar Beam → TM move
	db 78, DIVE_KICK ; Sky Attack → new move
	db 85, WHITE_BIRD
	db 92, HURRICANE
	db 99, FLOWER_SHOOT
	db -1 ; no more level-up moves

YukariEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, TYUKARI
	db -1 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, SPIDERS_NEST
	db 31, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 35, AQUA_TAIL
	db 41, BARRIER ; Dragon Rush → event move
	db 45, SAFEGUARD
	db 51, DRAGON_DANCE
	db 55, OUTRAGE
	db 61, MASTER_SPARK
	db -1 ; no more level-up moves

TYukariEvosAttacks:
	evo_data EVOLVE_LEVEL, 55, CSUIKA
	db -1 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, SPIDERS_NEST
	db 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 39, AQUA_TAIL
	db 47, BARRIER ; Dragon Rush → event move
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, MASTER_SPARK
	db -1 ; no more level-up moves

CSuikaEvosAttacks:
	db -1 ; no more evolutions
	db 1, HURRICANE
	db 1, SCULPTURE
	db 1, FIRE_PUNCH
	db 1, THUNDERPUNCH
	db 1, WHITE_BIRD
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, WING_ATTACK ; evolution move
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, SPIDERS_NEST
	db 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 39, AQUA_TAIL
	db 47, BARRIER ; Dragon Rush → event move
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, MASTER_SPARK
	db 81, HURRICANE
	db -1 ; no more level-up moves

SuikaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TELEPORT ; Psywave → RBY TM move
	db 1, SPIDERS_NEST ; Sw/Sh move
	db 1, FOCUS_ENERGY ; Laser Focus → similar move
	db 1, PSYSHOT
	db 1, DISABLE
	db 10, SAFEGUARD
	db 19, SWIFT
	db 28, FUTURE_SIGHT
	db 37, BARRIER ; Psych Up → Barrier
	db 46, RECOVER
	db 55, PSYCHIC_M
	db 64, POWER_GEM ; Barrier → SV TM move
	db 73, AURA_SPHERE
	db 82, AMNESIA
	db 91, NASTY_PLOT ; Mist → TSuika move
	db 100, PSYSTRIKE
	db -1 ; no more level-up moves

TSuikaEvosAttacks:
	db -1 ; no more evolutions
	db 1, SKETCH ; Reflect Type → new move
	db 1, TELEPORT ; event move
	db 1, TACKLE ; Pound → similar move
	db 1, RECOLLECT
	db 1, PSYSHOT ; LGPE move
	db 10, HEADBUTT ; Mega Punch → TM move
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, BATON_PASS ; Amnesia → Baton Pass
	db 70, SAFEGUARD ; Me First → Suika move
	db 80, AMNESIA ; Baton Pass → Amnesia
	db 90, NASTY_PLOT
	db 100, AURA_SPHERE
	db -1 ; no more level-up moves

CYoumuEvosAttacks:
	evo_data EVOLVE_LEVEL, 14, YOUMU
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 7, ASTONISH
	db 11, DOUBLE_TEAM
	db 17, REFLECT
	db 17, LIGHT_SCREEN
	db 20, DISARM_VOICE ; Magical Leaf → new move
	db 23, DREAM_HEAVEN ; Natural Gift → tutor move
	db 28, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	db 31, ENERGY_LIGHT ; Light Screen → TM move
	db 34, BODY_SLAM
	db 39, SAFEGUARD
	db 42, PLAY_ROUGH ; Aromatherapy → new move
	db 45, FLOWER_SHOOT
	db 48, HEAL_BELL ; Aromatherapy → similar move
	db 51, OUTRAGE ; HGSS tutor move
	db 56, MOONBLAST ; new move
	db -1 ; no more level-up moves

YoumuEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, SYOUMU
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, BLADE_FLASH ; evo move
	db 6, RAZOR_LEAF
	db 9, TOXIC_GAS
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 18, NIGHT_SLASH
	db 22, PROTECT
	db 25, SUBSTITUTE
	db 29, SHADOW_HIT ; Sweet Scent → HGSS tutor move
	db 33, ENDURE ; Light Screen → TM move
	db 40, BODY_SLAM
	db 43, SAFEGUARD
	db 47, PLAY_ROUGH ; Aromatherapy → new move
	db 51, FLOWER_SHOOT
	db 54, HEAL_BELL ; Aromatherapy → similar move
	db 58, OUTRAGE ; HGSS tutor move
	db 64, MOONBLAST ; new move
	db -1 ; no more level-up moves

SYoumuEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, TOXIC_GAS
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 18, REFLECT
	db 18, LIGHT_SCREEN
	db 22, DISARM_VOICE ; Magical Leaf → new move
	db 26, DREAM_HEAVEN ; Natural Gift → tutor move
	db 35, HONE_TOOLS ; Sweet Scent → HGSS tutor move
	db 38, TENSION_KICK ; Light Screen → TM move
	db 42, SWORDS_DANCE
	db 47, FORESIGHT
	db 51, PETAL_SLASH
	db 54, GUNGNIR
	db -1 ; no more level-up moves

CReisenEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, REISEN
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, PSYSHOT
	db 10, CONFUSE_RAY
	db 13, HYPNOSIS
	db 17, PSYBEAM
	db 22, FLAME_CHARGE ; Defense Curl → Flame Charge
	db 28, DIG ; Flame Charge → TM move
	db 31, SWIFT
	db 37, REVERSAL ; Lava Plume → egg move
	db 40, METEOR_FALL
	db 46, EARTH_POWER ; Inferno → new move
	db 49, ROLLOUT
	db 55, DOUBLE_EDGE
	db 58, EARTHQUAKE ; Burn Up → TM move
	db 64, LAVATEIN ; Eruption → egg move
	db -1 ; no more level-up moves

ReisenEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, TREISEN
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, TELEPORT ; Flame Wheel → Defense Curl
	db 24, SHADOW_HIT ; Defense Curl → Flame Charge
	db 29, MEAN_LOOK
	db 32, DARK_PULSE
	db 35, CALM_MIND
	db 42, REVERSAL ; Lava Plume → egg move
	db 46, METEOR_FALL
	db 53, EARTH_POWER ; Inferno → new move
	db 57, ROLLOUT
	db 64, DOUBLE_EDGE
	db 68, EARTHQUAKE ; Burn Up → TM move
	db 75, LAVATEIN ; Eruption → egg move
	db -1 ; no more level-up moves

TReisenEvosAttacks:
	db -1 ; no more evolutions
	db 1, FIRE_PUNCH ; evolution move
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, DEFENSE_CURL ; Flame Wheel → Defense Curl
	db 24, FLAME_CHARGE ; Defense Curl → Flame Charge
	db 31, SWIFT
	db 38, PSYCHIC_M ; Flame Charge → TM move
	db 42, PROTECT ; Lava Plume → egg move
	db 47, TRICK_ROOM
	db 52, LUNACY_EYES
	db 56, EARTH_POWER ; Inferno → new move
	db 61, ROLLOUT
	db 69, DOUBLE_EDGE
	db 74, EARTHQUAKE ; Burn Up → TM move
	db 81, LAVATEIN ; Eruption → egg move
	db -1 ; no more level-up moves

CSanaeEvosAttacks:
	evo_data EVOLVE_LEVEL, 16, SANAE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, GUST
	db 9, WATER_GUN
	db 14, SAFEGUARD
	db 15, SCARY_FACE
	db 20, METAL_CLAW ; Ice Fang → egg move
	db 22, REVERSAL ; Flail → similar move
	db 27, SPIDERS_NEST ; DSanae move
	db 29, AVARICE_BITE
	db 34, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 36, SLASH
	db 41, SCREECH
	db 43, THRASH
	db 48, AQUA_TAIL
	db 50, SCULPTURE ; Superpower → similar move
	db 56, HYDRO_PUMP
	db -1 ; no more level-up moves

SanaeEvosAttacks:
	evo_data EVOLVE_LEVEL, 32, DSANAE
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 19, SWIFT ; Ice Fang → egg move
	db 24, MEGA_DRAIN ; Flail → similar move
	db 27, RAIN_DANCE ; DSanae move
	db 31, WATER_PULSE
	db 39, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 42, SLASH
	db 48, SCREECH
	db 51, THRASH
	db 57, AQUA_TAIL
	db 60, SCULPTURE ; Superpower → similar move
	db 66, HYDRO_PUMP
	db -1 ; no more level-up moves

DSanaeEvosAttacks:
	db -1 ; no more evolutions
	db 1, NIGHT_SLASH ; evolution move
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, METAL_CLAW ; Ice Fang → egg move
	db 24, REVERSAL ; Flail → similar move
	db 33, ICY_WIND
	db 37, AIR_SLASH
	db 40, ENERGY_LIGHT ; Chip Away → HGSS tutor move
	db 44, WATERFALL
	db 47, HEALINGLIGHT
	db 51, AEROBLAST
	db 68, OUTRAGE ; HGSS tutor move
	db 73, AQUA_TAIL
	db 78, SCULPTURE ; Superpower → similar move
	db 84, HYDRO_PUMP
	db -1 ; no more level-up moves

SentretEvosAttacks:
	evo_data EVOLVE_LEVEL, 15, FURRET
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 16, LUNAR_BULLET ; Helping Hand → event move
	db 19, LIFE_COUNTER ; Follow Me → HGSS tutor move
	db 25, HEADBUTT ; Slam → tutor move
	db 28, REST
	db 31, SUCKER_PUNCH
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, SLASH ; Me First → egg move
	db 47, VOICE_BIND
	db -1 ; no more level-up moves

FurretEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, SPIDERS_NEST ; evolution move
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 17, LUNAR_BULLET ; Helping Hand → event move
	db 21, LIFE_COUNTER ; Follow Me → HGSS tutor move
	db 28, HEADBUTT ; Slam → tutor move
	db 32, REST
	db 36, SUCKER_PUNCH
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, SLASH ; Me First → egg move
	db 56, VOICE_BIND
	db -1 ; no more level-up moves

HoothootEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, NOCTOWL
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 4, HYPNOSIS
	db 7, PECK
	db 10, PSYSHOT
	db 13, NIGHT_SHADE ; Echoed Voice → event move
	db 16, LUNAR_BASH
	db 19, HEX ; Psycho Shift → new move
	db 22, WING_ATTACK ; Lunacy_Eyes → egg move
	db 25, TAKE_DOWN
	db 28, REFLECT
	db 31, AIR_SLASH
	db 34, LUNACY_EYES ; Uproar → Lunacy_Eyes
	db 37, WHITE_BIRD
	db 40, VOICE_BIND ; Moonblast → tutor move
	db 43, MOONBLAST ; Synchronoise → Moonblast
	db 46, DREAM_EATER
	db -1 ; no more level-up moves

NoctowlEvosAttacks:
	db -1 ; no more evolutions
	db 1, DREAM_EATER
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 4, HYPNOSIS
	db 7, PECK
	db 10, PSYSHOT
	db 13, NIGHT_SHADE ; Echoed Voice → event move
	db 16, LUNAR_BASH
	db 19, HEX ; Psycho Shift → new move
	db 23, WING_ATTACK ; Lunacy_Eyes → egg move
	db 27, TAKE_DOWN
	db 31, REFLECT
	db 35, AIR_SLASH
	db 39, LUNACY_EYES ; Uproar → Lunacy_Eyes
	db 43, WHITE_BIRD
	db 47, VOICE_BIND ; Moonblast → tutor move
	db 51, MOONBLAST ; Synchronoise → Moonblast
	db 55, DREAM_EATER
	db -1 ; no more level-up moves

LedybaEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, LEDIAN
	db -1 ; no more evolutions
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 19, BARRIER ; Silver Wind → event move
	db 22, LUNAR_BULLET ; Comet Punch → new move
	db 26, BATON_PASS
	db 29, SPIDERS_NEST
	db 33, BUG_BUZZ
	db 36, AIR_SLASH
	db 40, DOUBLE_EDGE
	db -1 ; no more level-up moves

LedianEvosAttacks:
	db -1 ; no more evolutions
	db 1, SWORDS_DANCE ; evolution move
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 20, BARRIER ; Silver Wind → event move
	db 24, LUNAR_BULLET ; Comet Punch → new move
	db 29, BATON_PASS
	db 33, SPIDERS_NEST
	db 38, BUG_BUZZ
	db 42, AIR_SLASH
	db 47, DOUBLE_EDGE
	db -1 ; no more level-up moves

SpinarakEvosAttacks:
	evo_data EVOLVE_LEVEL, 22, ARIADOS
	db -1 ; no more evolutions
	db 1, SEAL_NEEDLE
	db 1, DOLL_STRINGS
	db 1, WRAP ; Constrict → similar move
	db 5, ABSORB
	db 8, GLARE ; Infestation → new move
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 19, GROWTH ; Shadow Sneak → event move
	db 22, FURY_STRIKES ; Fury Swipes → similar move
	db 26, SUCKER_PUNCH
	db 29, MEAN_LOOK ; Spider Web → similar move
	db 33, SPIDERS_NEST
	db 36, PWJ_NEEDLE
	db 40, PSYCHIC_M
	db 43, POISON_JAB
	db 47, LEECH_LIFE ; Cross Poison → TM move
	db 50, FEINT_ATTACK ; Sticky Web → new move
	db -1 ; no more level-up moves

AriadosEvosAttacks:
	db -1 ; no more evolutions
	db 1, BUG_BITE ; evolution move
	db 1, FOCUS_ENERGY
	db 1, SEAL_NEEDLE
	db 1, DOLL_STRINGS
	db 1, WRAP ; Constrict → similar move
	db 5, ABSORB
	db 8, GLARE ; Infestation → new move
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 19, GROWTH ; Shadow Sneak → event move
	db 23, FURY_STRIKES ; Fury Swipes → similar move
	db 28, SUCKER_PUNCH
	db 32, MEAN_LOOK ; Spider Web → similar move
	db 37, SPIDERS_NEST
	db 41, PWJ_NEEDLE
	db 46, PSYCHIC_M
	db 50, POISON_JAB
	db 55, LEECH_LIFE ; Cross Poison → TM move
	db 58, FEINT_ATTACK ; Sticky Web → new move
	db -1 ; no more level-up moves

CrobatEvosAttacks:
	db -1 ; no more evolutions
	db 1, ICHIGO_CROSS ; evolution move
	db 1, SCREECH
	db 1, ABSORB
	db 1, AVARICE_BITE ; LGPE move
	db 5, SUPERSONIC
	db 7, ASTONISH
	db 11, BITE
	db 13, GUST ; Wing Attack → egg move
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 24, SWIFT
	db 27, LIFE_COUNTER ; Poison Fang → HGSS tutor move
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, AVARICE_BITE ; Quick Guard → new move
	db -1 ; no more level-up moves

ChinchouEvosAttacks:
	evo_data EVOLVE_LEVEL, 27, LANTURN
	db -1 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 28, PSYBEAM ; Signal Beam → egg move
	db 31, REVERSAL ; Flail → similar move
	db 34, THUNDERBOLT ; Discharge → TM move
	db 39, TAKE_DOWN
	db 42, RECOVER ; Aqua Ring → similar move
	db 45, ICE_BEAM ; Hydro Pump → TM move
	db 47, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 50, LIGHT_SCREEN ; Charge → event move
	db -1 ; no more level-up moves

LanturnEvosAttacks:
	db -1 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 29, PSYBEAM ; Signal Beam → egg move
	db 33, REVERSAL ; Flail → similar move
	db 37, THUNDERBOLT ; Discharge → TM move
	db 43, TAKE_DOWN
	db 47, RECOVER ; Aqua Ring → similar move
	db 51, ICE_BEAM ; Hydro Pump → TM move
	db 54, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 58, LIGHT_SCREEN ; Charge → event move
	db -1 ; no more level-up moves

PichuEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, KIKURI
	db -1 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, LEER ; Tail Whip → similar move
	db 10, SWEET_KISS
	db 13, NASTY_PLOT
	db 18, THUNDER_WAVE
	db 23, SCARY_FACE ; event move
	db 28, SING ; event move
	db 38, PETAL_SLASH ; event move
	db -1 ; no more level-up moves

CleffaEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CMEIRA
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE ; Pound → similar move
	db 1, METRONOME ; Copycat → egg move
	db 4, SING
	db 8, SWEET_KISS
	db 12, DISARM_VOICE
	db 16, ENCORE
	db 20, CHARM
	db -1 ; no more level-up moves

IgglybuffEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, ELLEN
	db -1 ; no more evolutions
	db 1, SING
	db 1, TACKLE ; Pound → similar move
	db 1, DEFENSE_CURL ; Copycat → Defense Curl
	db 4, ROLLOUT ; Defense Curl → tutor move
	db 8, SWEET_KISS
	db 12, DISARM_VOICE
	db 16, DISABLE
	db 20, CHARM
	db -1 ; no more level-up moves

TogepiEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; Yawn → similar move
	db 17, ENCORE
	db 21, LUNAR_BULLET ; Follow Me → new move
	db 25, HEAL_BELL ; Bestow → HGSS tutor move
	db 29, FRESH_SNACK ; Wish → new move
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 49, LUNACY_EYES ; Last Resort → egg move
	db 53, PLAY_ROUGH ; After You → Sw/Sh move
	db -1 ; no more level-up moves

TogeticEvosAttacks:
	evo_data EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, DISARM_VOICE ; evolution move
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; Yawn → similar move
	db 17, ENCORE
	db 21, LUNAR_BULLET ; Follow Me → new move
	db 25, HEAL_BELL ; Bestow → HGSS tutor move
	db 29, FRESH_SNACK ; Wish → new move
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 49, LUNACY_EYES ; Last Resort → egg move
	db 53, PLAY_ROUGH ; After You → Sw/Sh move
	db -1 ; no more level-up moves

NatuEvosAttacks:
	evo_data EVOLVE_LEVEL, 25, XATU
	db -1 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, LIFE_BALANCE ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 28, RECOVER ; Wish → similar move
	db 33, PSYCHIC_M
	db 36, WHITE_BIRD ; Miracle Eye → egg move
	db 39, HAZE ; Psycho Shift → egg move
	db 44, FUTURE_SIGHT
	db 47, HEX ; Power Swap + Guard Swap → new move
	db 50, SUCKER_PUNCH ; Me First → HGSS tutor move
	db -1 ; no more level-up moves

XatuEvosAttacks:
	db -1 ; no more evolutions
	db 1, AIR_SLASH ; evolution move
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, LIFE_BALANCE ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 29, RECOVER ; Wish → similar move
	db 35, PSYCHIC_M
	db 39, WHITE_BIRD ; Miracle Eye → egg move
	db 43, HAZE ; Psycho Shift → egg move
	db 49, FUTURE_SIGHT
	db 53, HEX ; Power Swap + Guard Swap → new move
	db 57, SUCKER_PUNCH ; Me First → HGSS tutor move
	db -1 ; no more level-up moves

MareepEvosAttacks:
	evo_data EVOLVE_LEVEL, 15, FLAAFFY
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 15, SPARK ; Charge → new move
	db 18, HEAL_BELL ; Take Down → HGSS tutor move
	db 22, TAKE_DOWN ; Electro Ball → Take Down
	db 25, CONFUSE_RAY
	db 29, POWER_GEM
	db 32, THUNDERBOLT ; Discharge → TM move
	db 36, SAFEGUARD ; Cotton Guard → egg move
	db 39, ENERGY_LIGHT ; Signal Beam → new move
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db -1 ; no more level-up moves

FlaaffyEvosAttacks:
if DEF(FAITHFUL)
	evo_data EVOLVE_LEVEL, 30, AMPHAROS
else
	evo_data EVOLVE_LEVEL, 36, AMPHAROS
endc
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 34, POWER_GEM
	db 38, THUNDERBOLT ; Discharge → TM move
	db 43, SAFEGUARD ; Cotton Guard → egg move
	db 47, ENERGY_LIGHT ; Signal Beam → new move
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db -1 ; no more level-up moves

AmpharosEvosAttacks:
	db -1 ; no more evolutions
	db 1, THUNDERPUNCH ; evolution move
	db 1, FIRE_PUNCH
	db 1, DRAGON_PULSE
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 35, POWER_GEM
	db 40, THUNDERBOLT ; Discharge → TM move
	db 46, SAFEGUARD ; Cotton Guard → egg move
	db 51, ENERGY_LIGHT ; Signal Beam → new move
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 65, DRAGON_PULSE
	db 71, OUTRAGE ; HGSS tutor move
	db -1 ; no more level-up moves

BellossomEvosAttacks:
	db -1 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HEAL_BELL ; new move
	db 1, SUNNY_DAY
	db 1, STUN_SPORE
	db 39, GROWTH ; Quiver Dance → Growth
	db 49, MOONBLAST ; Petal Blizzard → CKana move
	db 59, PETAL_SLASH ; evolution move
	db 69, PLAY_ROUGH ; Leaf Storm → Sw/Sh move
	db -1 ; no more level-up moves

MarillEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, AZUMARILL
	db -1 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLE_BEAM
	db 16, LUNAR_BULLET ; Helping Hand → event move
	db 20, AQUA_TAIL
	db 23, PLAY_ROUGH
	db 28, SCARY_FACE ; Aqua Ring → event move
	db 31, RAIN_DANCE
	db 37, DOUBLE_EDGE
	db 40, SCULPTURE ; Superpower → similar move
	db 47, HYDRO_PUMP
	db -1 ; no more level-up moves

AzumarillEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLE_BEAM
	db 16, LUNAR_BULLET ; Helping Hand → event move
	db 21, AQUA_TAIL
	db 25, PLAY_ROUGH
	db 31, SCARY_FACE ; Aqua Ring → event move
	db 35, RAIN_DANCE
	db 42, DOUBLE_EDGE
	db 46, SCULPTURE ; Superpower → similar move
	db 55, HYDRO_PUMP
	db -1 ; no more level-up moves

SudowoodoEvosAttacks:
	db -1 ; no more evolutions
	db 1, SUBSTITUTE ; Copycat → event move
	db 5, REVERSAL ; Flail → similar move
	db 8, LOW_KICK
	db 12, LEER ; Rock Throw → new move
	db 15, ROCK_THROW ; Mimic → Rock Throw
	db 19, FEINT_ATTACK
	db 22, ANCIENTPOWER ; Rock Tomb → new move
	db 26, SPIKES ; Block → SV TM move
	db 29, ROCK_SLIDE
	db 33, COUNTER
	db 36, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db 43, STONE_EDGE ; evolution move
	db 47, SCULPTURE ; Hammer Arm → similar move
	db 50, IRON_HEAD ; Head Smash → tutor move
	db -1 ; no more level-up moves

PolitoedEvosAttacks:
	db -1 ; no more evolutions
	db 1, GIGA_DRAIN ; Bounce → TM move ; evolution move
	db 1, BUBBLE_BEAM
	db 1, HYPNOSIS
	db 1, DOUBLE_SLAP
	db 1, SHADOW_DANCE
	db 27, SWAGGER
	db 48, VOICE_BIND
	db -1 ; no more level-up moves

HoppipEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, SKIPLOOM
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 4, HEALINGLIGHT ; Synthesis → similar move
	db 6, DEFENSE_CURL; Tail Whip → tutor move
	db 8, TACKLE
	db 10, PSYSHOT ; Fairy Wind → egg move
	db 12, TOXIC_GAS
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, HEADBUTT ; Bullet Seed → tutor move
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
	db 28, ACROBATICS
	db 31, ENCORE ; Rage Powder → egg move
	db 34, SPIDERS_NEST ; Cotton Spore → GSC event move
	db 37, U_TURN
	db 40, AMNESIA ; Worry Seed → egg move
	db 43, GIGA_DRAIN
	db 46, ENERGY_LIGHT ; Bounce → TM move
	db 49, DREAM_HEAVEN ; Memento → TM move
	db -1 ; no more level-up moves

SkiploomEvosAttacks:
	evo_data EVOLVE_LEVEL, 27, JUMPLUFF
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 4, HEALINGLIGHT ; Synthesis → similar move
	db 6, DEFENSE_CURL; Tail Whip → tutor move
	db 8, TACKLE
	db 10, PSYSHOT ; Fairy Wind → egg move
	db 12, TOXIC_GAS
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, HEADBUTT ; Bullet Seed → tutor move
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
	db 32, ACROBATICS
	db 36, ENCORE ; Rage Powder → egg move
	db 40, SPIDERS_NEST ; Cotton Spore → GSC event move
	db 44, U_TURN
	db 48, AMNESIA ; Worry Seed → egg move
	db 52, GIGA_DRAIN
	db 56, ENERGY_LIGHT ; Bounce → TM move
	db 60, DREAM_HEAVEN ; Memento → TM move
	db -1 ; no more level-up moves

JumpluffEvosAttacks:
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 4, HEALINGLIGHT ; Synthesis → similar move
	db 6, DEFENSE_CURL; Tail Whip → tutor move
	db 8, TACKLE
	db 10, PSYSHOT ; Fairy Wind → egg move
	db 12, TOXIC_GAS
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, HEADBUTT ; Bullet Seed → tutor move
	db 24, LEECH_SEED
	db 29, MEGA_DRAIN
	db 34, ACROBATICS
	db 39, ENCORE ; Rage Powder → egg move
	db 44, SPIDERS_NEST ; Cotton Spore → GSC event move
	db 49, U_TURN
	db 54, AMNESIA ; Worry Seed → egg move
	db 59, GIGA_DRAIN
	db 64, ENERGY_LIGHT ; Bounce → TM move
	db 69, DREAM_HEAVEN ; nice, Memento → TM move
	db -1 ; no more level-up moves

AipomEvosAttacks:
	evo_data EVOLVE_MOVE, DOUBLE_SLAP, AMBIPOM
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 8, ASTONISH
	db 11, BATON_PASS
	db 15, THIEF ; Tickle → TM move
	db 18, FURY_STRIKES ; Fury Swipes → similar move
	db 22, SWIFT
	db 25, SCREECH
	db 29, SPIDERS_NEST
	db 32, DOUBLE_SLAP ; Double Hit → egg move
	db 36, ACROBATICS ; Fling → TM move
	db 39, NASTY_PLOT
	db 43, DOUBLE_EDGE ; Last Resort → tutor move
	db -1 ; no more level-up moves

SunkernEvosAttacks:
	evo_data EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db -1 ; no more evolutions
	db 1, SPLASH ; Growth → Hoppip move
	db 1, ABSORB
	db 4, GROWTH ; Ingrain → Growth
	db 7, DEFENSE_CURL ; Grass Whistle → TM move
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, PROTECT ; Worry Seed → TM move
	db 22, GIGA_DRAIN
	db 25, SPIDERS_NEST ; Endeavor → new move
	db 28, HEALINGLIGHT ; Synthesis → similar move
	db 31, EARTH_POWER ; Natural Gift → tutor move
	db 34, FLOWER_SHOOT
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB
	db -1 ; no more level-up moves

SunfloraEvosAttacks:
	db -1 ; no more evolutions
	db 1, SPLASH ; Growth → Hoppip move
	db 1, TACKLE ; Pound → similar move
	db 1, ABSORB
if !DEF(FAITHFUL)
	db 1, EMBER ; evolution move
endc
	db 4, GROWTH ; Ingrain → Growth
	db 7, DEFENSE_CURL ; Grass Whistle → TM move
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, PROTECT ; Worry Seed → TM move
	db 22, GIGA_DRAIN
	db 25, SPIDERS_NEST ; Bullet Seed → TM move
	db 28, PETAL_SLASH
if DEF(FAITHFUL)
	db 31, EARTH_POWER ; Natural Gift → tutor move
else
	db 31, METEOR_FALL ; Natural Gift → TM move
endc
	db 34, FLOWER_SHOOT
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB ; Leaf Storm → Sunkern move
if !DEF(FAITHFUL)
	db 50, HELL_TOKAMAK ; Petal Blizzard → TM move
endc
	db -1 ; no more level-up moves

YanmaEvosAttacks:
	evo_data EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, BUG_BITE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, DRAGON_RAGE ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
if DEF(FAITHFUL)
	db 33, ANCIENTPOWER
else
	db 35, ANCIENTPOWER
endc
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 62, DREAM_EATER ; event move
	db -1 ; no more level-up moves

WooperEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, QUAGSIRE
	db -1 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 23, AMNESIA
	db 29, BELLY_DRUM ; Yawn → event move
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, HAZE
	db 47, AQUA_TAIL ; Muddy Water → event move
	db -1 ; no more level-up moves



QuagsireEvosAttacks:
	db -1 ; no more evolutions
	db 1, ANCIENTPOWER ; evolution move
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 24, AMNESIA
	db 31, BELLY_DRUM ; Yawn → event move
	db 36, EARTHQUAKE
	db 41, RAIN_DANCE
	db 48, HAZE
	db 53, AQUA_TAIL ; Muddy Water → event move
	db -1 ; no more level-up moves

EspeonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, PSYSHOT ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, FUTURE_SIGHT
	db 29, REFLECT ; Psych Up → event move
	db 33, HEALINGLIGHT ; Morning Sun → similar move
	db 37, PSYCHIC_M
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, POWER_GEM ; Power Swap → SV TM move
	db -1 ; no more level-up moves

UmbreonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, PURSUIT ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FEINT_ATTACK
	db 25, TOXIC ; Assurance → TM move
	db 29, SCREECH
	db 33, HEALINGLIGHT ; Moonlight → similar move
	db 37, SUCKER_PUNCH ; Mean Look → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, MEAN_LOOK ; Guard Swap → Mean Look
	db -1 ; no more level-up moves

MurkrowEvosAttacks:
	evo_data EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db -1 ; no more evolutions
	db 1, PECK
	db 1, ASTONISH
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF ; Assurance → TM move
	db 31, SWAGGER ; Taunt → TM move
	db 35, FEINT_ATTACK
	db 41, MEAN_LOOK
	db 45, BATON_PASS ; Foul Play → XD move
	db 50, DRAGON_DRILL ; Tailwind → egg move
	db 55, SUCKER_PUNCH
	db 61, SHADOW_DANCE ; Torment → egg move
	db 65, DIVE_KICK ; Quash → egg move
	db -1 ; no more level-up moves

SlowkingEvosAttacks:
	db -1 ; no more evolutions
	db 1, POWER_GEM
	db 1, HIDDEN_POWER
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, PSYSHOT
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, LUNAR_BASH
	db 36, NASTY_PLOT
	db 41, SWAGGER
	db 45, PSYCHIC_M
	db 49, RAIN_DANCE ; Trump Card → TM move
	db 54, BELLY_DRUM ; Psych Up → egg move
	db 58, RECOVER ; Heal Pulse → similar move
	db -1 ; no more level-up moves

MisdreavusEvosAttacks:
	evo_data EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TELEPORT ; Psywave → new move
	db 1, DISARM_VOICE ; new move
	db 5, PSYSHOT ; Spite → new move
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX
	db 28, PSYBEAM
	db 32, LIFE_BALANCE
	db 37, DESTINY_BOND ; Payback → egg move
	db 41, SHADOW_BALL
	db 46, SHADOW_DANCE
	db 50, ENERGY_LIGHT ; Grudge → TM move
	db 55, POWER_GEM
	db 62, NASTY_PLOT ; egg move
	db -1 ; no more level-up moves

UnownEvosAttacks:
	db -1 ; no more evolutions
	db 1, HIDDEN_POWER
	db -1 ; no more level-up moves

WobbuffetEvosAttacks:
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, CHARM
	db 1, ENCORE
	db 1, AMNESIA
	db 1, RECOVER ; evolve move
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db -1 ; no more level-up moves

GirafarigEvosAttacks:
	evo_data EVOLVE_MOVE, LUNAR_BASH, FARIGIRAF
FarigirafEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, TACKLE
	db 1, GROWL
	db 1, PSYSHOT
	db 5, FORESIGHT ; Odor Sleuth → egg move
	db 10, PURSUIT ; Assurance → new move
	db 14, STOMP
	db 19, PSYBEAM
	db 23, SPIDERS_NEST
	db 28, DOUBLE_KICK ; Double Hit → egg move
	db 32, LUNAR_BASH
	db 37, AVARICE_BITE
	db 41, BATON_PASS
	db 46, NASTY_PLOT
	db 50, PSYCHIC_M
if !DEF(FAITHFUL)
	db 55, DARK_PULSE ; new move
endc
	db -1 ; no more level-up moves

PinecoEvosAttacks:
	evo_data EVOLVE_LEVEL, 31, FORRETRESS
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, FOCUS_ENERGY ; Self-Destruct → TCG move
	db 9, BUG_BITE
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 31, REVERSAL ; Payback → new move
	db 34, EXPLOSION
	db 39, REFLECT ; Iron Defense → egg move
	db 42, GYRO_BALL
	db 45, DOUBLE_EDGE
	db -1 ; no more level-up moves

ForretressEvosAttacks:
	db -1 ; no more evolutions
	db 1, FLASH_CANNON ; Mirror Shot → TM move ; evolution move
	db 1, SPIDERS_NEST ; Autotomize → similar move
	db 1, POISON_NAIL
	db 1, TACKLE
	db 1, PROTECT
	db 6, FOCUS_ENERGY ; Self-Destruct → TCG move
	db 9, BUG_BITE
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 32, REVERSAL ; Payback → new move
	db 36, EXPLOSION
	db 42, REFLECT ; Iron Defense → egg move
	db 46, GYRO_BALL
	db 50, DOUBLE_EDGE
	db 56, ZAP_CANNON
	db 60, IRON_HEAD ; Heavy Slam → new move
	db -1 ; no more level-up moves

DunsparceEvosAttacks:
	evo_data EVOLVE_LEVEL, 32, DUDUNSPARCE, NO_FORM ; preserve pre-evo form
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, ROLLOUT
	db 6, ASTONISH ; Spite → egg move
	db 8, PURSUIT
	db 11, SCREECH
	db 13, MUD_SLAP
	db 16, FURY_STRIKES ; Yawn → event move (Fury Attack)
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, DRAGON_RAGE ; Drill Run → new move
	db 26, WHITE_BIRD
	db 28, TAKE_DOWN
	db 31, DRAGON_DANCE ; Coil → new move
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	db 41, EARTHQUAKE ; Endeavor → TM move
	db 43, AIR_SLASH
	db 46, HEX ; Dragon Rush → egg move
	db 48, ENDURE
	db 51, REVERSAL ; Flail → similar move
	db 53, OUTRAGE ; new move
	db -1 ; no more level-up moves

GligarEvosAttacks:
	evo_data EVOLVE_HOLDING, RAZOR_FANG, TR_EVENITE, GLISCOR
	db -1 ; no more evolutions
	db 1, SEAL_NEEDLE
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, BUG_BITE ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH
	db 30, U_TURN
	db 35, SCREECH
	db 40, ICHIGO_CROSS
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → egg move
	db -1 ; no more level-up moves

GliscorEvosAttacks:
	db -1 ; no more evolutions
	db 1, POISON_JAB
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, BUG_BITE ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH ; Night Slash → Gligar move
	db 30, U_TURN
	db 35, SCREECH
	db 40, ICHIGO_CROSS
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → Night Slash
	db -1 ; no more level-up moves

SteelixEvosAttacks:
	db -1 ; no more evolutions
	db 1, BRAVER ; evolution move
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, WRAP ; Bind → similar move
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, RAGE
	db 13, ROCK_BLAST ; Rock Tomb → egg move
	db 16, BODY_SLAM ; Stealth Rock → TM move
	db 19, SANDSTORM ; Autotomize → Sandstorm
	db 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 25, DRAGONBREATH
	db 28, HEADBUTT ; Slam → tutor move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, AVARICE_BITE
	db 40, IRON_HEAD
	db 43, DIG
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, EARTHQUAKE ; Sandstorm → TM move
	db -1 ; no more level-up moves

SnubbullEvosAttacks:
	evo_data EVOLVE_LEVEL, 23, GRANBULL
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ; Tail Whip → similar move
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, PLAY_ROUGH
	db 43, DOUBLE_EDGE ; Payback → event move
	db 49, AVARICE_BITE
	db -1 ; no more level-up moves

GranbullEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ; Tail Whip → similar move
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, PLAY_ROUGH
	db 51, DOUBLE_EDGE ; Payback → event move
	db 59, AVARICE_BITE
	db 67, OUTRAGE
	db -1 ; no more level-up moves

QwilfishEvosAttacks:
	db -1 ; no more evolutions
	db 1, WATER_GUN
	db 1, SPIKES
	db 1, TACKLE
	db 1, SEAL_NEEDLE
	db 5, DEFENSE_CURL ; Harden → TM move
	db 9, MINIMIZE
	db 13, BUBBLE_BEAM ; Bubble → similar move
	db 17, ROLLOUT
	db 21, POISON_NAIL
	db 25, LIFE_BALANCE ; Stockpile + Spit Up → HGSS move tutor
	db 29, REVERSAL ; Revenge → Sw/Sh move
	db 33, WATER_PULSE ; Brine → TM move
	db 37, PWJ_NEEDLE
	db 41, TAKE_DOWN
	db 45, AQUA_TAIL
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 60, DOUBLE_EDGE ; Fell Stinger → event move
	db -1 ; no more level-up moves

ScizorEvosAttacks:
	db -1 ; no more evolutions
	db 1, METAL_CLAW ; evolution move
	db 1, STEEL_FIST
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, BLADE_FLASH
	db 17, SPIDERS_NEST
	db 21, WING_ATTACK
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, BUG_BUZZ ; Razor Wind → egg move
	db 37, DEFENSE_CURL ; Iron Defense → similar move
	db 41, ICHIGO_CROSS
	db 45, AVARICE_BITE ; Night Slash → Prism tutor move
	db 49, SCULPTURE ; Double Hit → SV TM move
	db 50, IRON_HEAD
	db 57, SWORDS_DANCE
	db -1 ; no more level-up moves

ShuckleEvosAttacks:
	db -1 ; no more evolutions
	db 1, MUD_SLAP ; Constrict → GSC TM move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 1, ROLLOUT
	db 5, ENCORE
	db 9, WRAP
	db 12, DOLL_STRINGS ; Struggle Bug → HGSS tutor move
	db 16, SAFEGUARD
	db 20, REST
	db 23, ROCK_THROW
	db 27, ACID ; Gastro Acid → egg move
	db 31, DISABLE ; Power Trick → new move
	db 34, POWER_TRICK
	db 38, ROCK_BLAST ; Rock Slide → Sw/Sh move
	db 42, BUG_BITE
	db 45, ROCK_SLIDE ; Power Split + Guard Split → Rock Slide
	db 49, REVERSAL ; Stone Edge → Sw/Sh move
	db 53, STONE_EDGE ; Sticky Web → Stone Edge
	db -1 ; no more level-up moves

HeracrossEvosAttacks:
	db -1 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, LEER
	db 1, KNIFE_THROW
	db 1, ENDURE
	db 7, BUG_BITE ; Feint → HGSS tutor move
	db 10, FURY_STRIKES ; Aerial Ace → Fury Strikes
	db 16, LOW_KICK ; Chip Away → HGSS tutor move
	db 19, COUNTER
	db 25, AERIAL_ACE ; Fury Attack → Aerial Ace
	db 28, SEISMIC_TOSS ; Brick Break → tutor move
	db 31, PWJ_NEEDLE
	db 34, TAKE_DOWN
	db 37, DRAGON_BASH
	db 43, SCULPTURE
	db 46, REVERSAL
	db -1 ; no more level-up moves

SneaselEvosAttacks:
	evo_data EVOLVE_HOLDING, RAZOR_CLAW, TR_EVENITE, WEAVILE
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, SPIDERS_NEST
	db 22, METAL_CLAW
	db 25, HONE_TOOLS
	db 28, ICICLE_CRASH ; Beat Up → egg move
	db 32, SCREECH
	db 35, SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, ICHIGO_CROSS ; Punishment → TM move
	db 47, AVARICE_BITE ; Ice Shard → new move
	db -1 ; no more level-up moves

TeddiursaEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, URSARING
	db -1 ; no more evolutions
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, GROWL ; Baby-Doll Eyes → similar move
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, AVARICE_BITE ; Snore → egg move
	db 50, THRASH
	db 57, SCULPTURE ; Fling → new move
	db 64, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

UrsaringEvosAttacks:
	evo_data EVOLVE_ITEM, MOON_STONE, URSALUNA
	evo_data EVOLVE_LOCATION, SINJOH_RUINS, URSALUNA
	evo_data EVOLVE_LOCATION, MYSTRI_STAGE, URSALUNA
	db -1 ; no more evolutions
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, AVARICE_BITE ; Snore → egg move
	db 58, THRASH
	db 67, SCULPTURE ; Hammer Arm → new move
	db 76, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

SlugmaEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, MAGCARGO
	db -1 ; no more evolutions
	db 1, MUD_SLAP ; Smog → TM move
	db 6, EMBER
	db 8, ROCK_THROW
	db 13, DEFENSE_CURL ; Harden → similar move
	db 15, FIRE_SPIN ; Incinerate → new move
	db 20, SMOKESCREEN ; Clear Smog → egg move
	db 22, ANCIENTPOWER
	db 27, FLAME_CHARGE ; Flame Burst → TM move
	db 29, ROCK_SLIDE
	db 34, LIFE_BALANCE ; Lava Plume → HGSS tutor move
	db 36, AMNESIA
	db 41, BODY_SLAM
	db 43, RECOVER
	db 48, METEOR_FALL
	db 50, EARTH_POWER
	db -1 ; no more level-up moves

MagcargoEvosAttacks:
	db -1 ; no more evolutions
	db 1, POWER_TRICK ; evolution move
	db 1, MUD_SLAP ; Smog → TM move
	db 6, EMBER
	db 8, ROCK_THROW
	db 13, DEFENSE_CURL ; Harden → similar move
	db 15, FIRE_SPIN ; Incinerate → new move
	db 20, SMOKESCREEN ; Clear Smog → egg move
	db 22, ANCIENTPOWER
	db 27, FLAME_CHARGE ; Flame Burst → TM move
	db 29, ROCK_SLIDE
	db 34, LIFE_BALANCE ; Lava Plume → HGSS tutor move
	db 36, AMNESIA
	db 43, BODY_SLAM
	db 47, RECOVER
	db 54, METEOR_FALL
	db 58, EARTH_POWER
	db -1 ; no more level-up moves

SwinubEvosAttacks:
	evo_data EVOLVE_LEVEL, 33, PILOSWINE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, ICY_WIND
	db 24, ICICLE_CRASH ; Ice Shard → egg move
	db 28, TAKE_DOWN
	db 35, BULLDOZE ; Mist → TM move
	db 37, REVERSAL ; Earthquake → similar move
	db 40, EARTHQUAKE ; Flail → Earthquake
	db 44, BLIZZARD
	db 48, AMNESIA
	db -1 ; no more level-up moves

PiloswineEvosAttacks:
	evo_data EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db -1 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, FURY_STRIKES ; evolution move (Fury Attack)
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, ICY_WIND
	db 24, ICICLE_CRASH ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db -1 ; no more level-up moves

CorsolaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 4, WATER_GUN ; Bubble → similar move
	db 8, ROLLOUT ; Recover → TM move
	db 10, BUBBLE_BEAM
	db 13, SAFEGUARD ; Refresh → egg move
	db 17, ANCIENTPOWER
	db 20, ICICLE_SPEAR ; Spike Cannon → egg move
	db 23, CONFUSE_RAY ; Lucky Chant → egg move
	db 27, ENDURE ; Brine → Endure
	db 29, BARRIER ; Iron Defense → similar move
	db 31, ROCK_BLAST
	db 35, RECOVER ; Endure → Recover
	db 38, HYDRO_PUMP ; Aqua Ring → Sw/Sh move
	db 41, POWER_GEM
	db 45, MIRROR_COAT
	db 47, EARTH_POWER
	db 50, REVERSAL ; Flail → similar move
	db -1 ; no more level-up moves

RemoraidEvosAttacks:
	evo_data EVOLVE_LEVEL, 25, OCTILLERY
	db -1 ; no more evolutions
	db 1, WRAP ; Sw/Sh move
	db 1, WATER_GUN
	db 6, FORESIGHT ; Lock-On → new move
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLE_BEAM
	db 22, FOCUS_ENERGY
	db 26, WATER_PULSE
	db 30, METEOR_FALL ; Signal Beam → TM move
	db 34, ICE_BEAM
	db 38, SEED_BOMB ; Bullet Seed → tutor move
	db 42, GUNK_SHOT ; Hydro Pump → new move
	db 46, HYDRO_PUMP ; Master Spark → Hydro Pump
	db 50, AURA_SPHERE ; Soak → new move
	db 54, MASTER_SPARK
	db -1 ; no more level-up moves

OctilleryEvosAttacks:
	db -1 ; no more evolutions
	db 1, BLACK_RIPPLE ; evolution move
	db 1, ROCK_BLAST
	db 1, POWER_WHIP ; new move
	db 1, WATER_GUN
	db 6, FORESIGHT ; Constrict → new move
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLE_BEAM
	db 22, FOCUS_ENERGY
	db 26, WRAP ; Wring Out → new move
	db 28, WATER_PULSE
	db 34, METEOR_FALL ; Signal Beam → TM move
	db 40, ICE_BEAM
	db 46, SEED_BOMB ; Bullet Seed → tutor move
	db 52, GUNK_SHOT ; Hydro Pump → new move
	db 58, HYDRO_PUMP ; Master Spark → Hydro Pump
if !DEF(FAITHFUL)
	db 58, HELL_TOKAMAK ; new move
endc
	db 64, AURA_SPHERE ; Soak → new move
	db 70, MASTER_SPARK
	db -1 ; no more level-up moves

DelibirdEvosAttacks:
	db -1 ; no more evolutions
; based on Gen V Chatot
	db 1, PECK
	db 5, GROWL
	db 9, PAY_DAY ; Mirror Move → new move
	db 13, SING
	db 17, ICY_WIND
	db 21, WING_ATTACK
	db 25, HAIL
	db 29, DRAGON_DRILL
	db 33, AURORA_BEAM
	db 37, BODY_SLAM
	db 41, WHITE_BIRD
	db 45, FLY
	db 49, BELLY_DRUM
	db 53, HURRICANE
	db 57, BLIZZARD
	db -1 ; no more level-up moves

MantineEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST ; event move
	db 1, TACKLE
	db 1, WATER_GUN ; Bubble → similar move
	db 3, SUPERSONIC
	db 7, BUBBLE_BEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATER_PULSE
	db 23, AQUA_JET ; Wide Guard → new move
	db 27, TAKE_DOWN
	db 32, SPIDERS_NEST
	db 36, AIR_SLASH
	db 39, WHITE_BIRD ; Aqua Ring → similar move
	db 46, MIRROR_COAT ; Bounce → Dream World move
	db 49, HYDRO_PUMP
	db -1 ; no more level-up moves

SkarmoryEvosAttacks:
	db -1 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, MUD_SLAP ; Sand Attack → similar move
	db 9, BITE ; Metal Claw → new move
	db 12, METAL_CLAW ; Air Cutter → Metal Claw
	db 17, FURY_STRIKES ; Fury Attack → similar move
	db 20, PURSUIT ; Feint → egg move
	db 23, SWIFT
	db 28, SPIKES
	db 31, SPIDERS_NEST
	db 34, STEEL_WING
	db 39, SLASH
	db 42, SCREECH ; Metal Sound → similar move
	db 45, AIR_SLASH
	db 50, DRAGON_DRILL ; Autotomize → egg move
	db 53, NIGHT_SLASH
	db -1 ; no more level-up moves

HoundourEvosAttacks:
	evo_data EVOLVE_LEVEL, 24, HOUNDOOM
	db -1 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 25, LIFE_COUNTER ; Beat Up → HGSS tutor move
	db 28, FIRE_SPIN ; Fire Fang → egg move
	db 32, FEINT_ATTACK
	db 37, DESTINY_BOND ; Embargo → egg move
	db 40, WILL_O_WISP ; Foul Play → egg move
	db 44, METEOR_FALL
	db 49, AVARICE_BITE
	db 52, NASTY_PLOT
	db 56, DARK_PULSE ; Inferno → TM move
	db -1 ; no more level-up moves

HoundoomEvosAttacks:
	db -1 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 26, LIFE_COUNTER ; Beat Up → HGSS tutor move
	db 30, FIRE_SPIN ; Fire Fang → egg move
	db 35, FEINT_ATTACK
	db 41, DESTINY_BOND ; Embargo → egg move
	db 45, WILL_O_WISP ; Foul Play → egg move
	db 50, METEOR_FALL
	db 56, AVARICE_BITE
	db 60, NASTY_PLOT
	db 65, DARK_PULSE ; Inferno → TM move
	db -1 ; no more level-up moves

KingdraEvosAttacks:
	db -1 ; no more evolutions
	db 1, DRAGONBREATH ; evolution move
	db 1, WATER_GUN ; Bubble → similar move
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, AQUA_JET ; Twister → new move
	db 21, WATER_PULSE ; Bubble Beam → TM move
	db 26, FOCUS_ENERGY
	db 31, OUTRAGE ; Brine → HGSS tutor move
	db 38, SPIDERS_NEST
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db -1 ; no more level-up moves

PhanpyEvosAttacks:
	evo_data EVOLVE_LEVEL, 25, DONPHAN
	db -1 ; no more evolutions
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, REVERSAL ; Flail → similar move
	db 10, ROLLOUT
	db 15, MAGNITUDE ; Natural Gift → Donphan move
	db 19, ENDURE
	db 24, TAKE_DOWN ; Slam → Take Down
	db 28, BODY_SLAM ; Take Down → TM move
	db 33, CHARM
	db 37, PLAY_ROUGH ; Last Resort → egg move
	db 42, DOUBLE_EDGE
	db -1 ; no more level-up moves

DonphanEvosAttacks:
	db -1 ; no more evolutions
	db 1, FURY_STRIKES ; evolution move
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, KNIFE_THROW
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, BULLDOZE
	db 6, RAPID_SPIN
	db 10, ROLLOUT
	db 15, MAGNITUDE ; Assurance → Magnitude
	db 19, KNOCK_OFF
	db 24, ANCIENTPOWER ; Slam → HGSS tutor move
	db 30, BRAVER ; Magnitude → TM move
	db 37, SCARY_FACE
	db 43, EARTHQUAKE
	db 50, GUNGNIR
	db -1 ; no more level-up moves

CLunasa2EvosAttacks:
	evo_data EVOLVE_HOLDING, DUBIOUS_DISC, TR_ANYTIME, CLUNASA_Z
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 7, PSYBEAM
	db 12, SPIDERS_NEST
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, THUNDER_WAVE ; Recycle → TM move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, FIVEELEMENTS
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, MASTER_SPARK
	db -1 ; no more level-up moves

StantlerEvosAttacks:
	evo_data EVOLVE_LOCATION, RUGGED_ROAD, WYRDEER
	evo_data EVOLVE_LOCATION, SNOWTOP_MOUNTAIN, WYRDEER
	evo_data EVOLVE_LOCATION, SINJOH_RUINS, WYRDEER
	evo_data EVOLVE_LOCATION, MYSTRI_STAGE, WYRDEER
	db -1 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 7, ASTONISH
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, MUD_SLAP ; Sand-Attack → similar move
	db 21, HEADBUTT ; Take Down → tutor move
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	db 33, TAKE_DOWN ; Role Play → Take Down
	db 38, LUNAR_BASH
	db 43, THRASH ; Jump Kick → egg move
	db 49, SKILL_SWAP ; Imprison → tutor move
	db 50, TENSION_KICK ; Captivate → new move
	db 55, DRAGON_BASH ; Me First → egg move
	db 60, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

SmeargleEvosAttacks:
	db -1 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db -1 ; no more level-up moves

TyrogueEvosAttacks:
	evo_data EVOLVE_STAT, 20, ATK_LT_DEF, CKOAKUMA
	evo_data EVOLVE_STAT, 20, ATK_GT_DEF, AMEILING
	evo_data EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, RAGE ; Fake Out → event move
	db 1, FORESIGHT
	db -1 ; no more level-up moves

HitmontopEvosAttacks:
	db -1 ; no more evolutions
	db 1, LOW_KICK ; Rolling Kick → HGSS tutor move ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, RAPID_SPIN
	db 24, FEINT_ATTACK ; Feint → new move
	db 28, COUNTER
	db 33, DOUBLE_KICK ; Triple Kick → similar move
	db 37, SPIDERS_NEST
	db 42, GYRO_BALL
	db 46, FORESIGHT ; Wide Guard + Quick Guard → new move
	db 50, PROTECT ; Detect → similar move
	db 55, SCULPTURE
	db 60, REVERSAL ; Endeavor → new move
	db -1 ; no more level-up moves

SmoochumEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, HCHEN
	db -1 ; no more evolutions
	db 1, LICK
	db 1, TACKLE ; Pound → similar move
	db 4, ICY_WIND ; Powder Snow → TM move
	db 8, METRONOME ; Copycat → HChen RBY TM move
	db 12, PSYSHOT
	db 16, THIEF ; Covet → similar move
	db 20, SING
	db 24, MEAN_LOOK ; Fake Tears → Mean Look
	db 28, ICE_PUNCH
	db 32, PSYCHIC_M
	db 36, SWEET_KISS
	db 40, NASTY_PLOT ; Mean Look → egg move
	db 44, SHADOW_DANCE
	db 48, BLIZZARD
	db -1 ; no more level-up moves

ElekidEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, CLILYWHITE
	db -1 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 33, SCREECH ; Discharge → Screech
	db 36, CROSS_CHOP ; Screech → new move
	db 40, THUNDERBOLT
	db 43, THUNDER
	db -1 ; no more level-up moves

MagbyEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, LILYWHITE
	db -1 ; no more evolutions
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_CHARGE ; Flame Burst → TM move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 33, SUNNY_DAY ; Lava Plume → Sunny Day
	db 36, FOCUS_BLAST ; Sunny Day → TM move
	db 40, METEOR_FALL
	db 43, HELL_TOKAMAK
	db -1 ; no more level-up moves

MiltankEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, FRESH_SNACK ; Milk Drink → similar move
	db 15, LUNAR_BULLET ; Bide → egg move
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 29, LUNAR_BASH
	db 35, SEISMIC_TOSS ; Captivate → egg move
	db 41, GYRO_BALL
	db 48, HEAL_BELL
	db 50, REVERSAL ; Wake-Up Slap → egg move
	db -1 ; no more level-up moves

BlisseyEvosAttacks:
	db -1 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 5, LEER ; Tail Whip → similar move
	db 9, SWEET_KISS ; Refresh → Happiny move
	db 12, DOUBLE_SLAP
	db 16, FRESH_SNACK ; Soft-Boiled → similar move
	db 20, METRONOME ; Bestow → egg move
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 35, CHARM ; Fling → Happiny move
	db 39, HEAL_BELL ; Heal Pulse → HGSS tutor move
	db 44, BODY_SLAM ; Egg Bomb → TM move
	db 50, LIGHT_SCREEN
	db 57, SUBSTITUTE ; Healing Wish → TM move
	db 65, DOUBLE_EDGE
	db -1 ; no more level-up moves

RaikouEvosAttacks:
	db -1 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, AVARICE_BITE
	db 50, BLAZE_STAR ; Thunder Fang → TM move
	db 57, EXTREMESPEED ; Discharge → event move
	db 64, LUNACY_EYES
	db 71, RAIN_DANCE
	db 78, CALM_MIND
	db 85, AURA_SPHERE ; Thunder → event move
	db 92, THUNDER
	db 99, HIDDEN_POWER ; TM move
	db -1 ; no more level-up moves

EnteiEvosAttacks:
	db -1 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, METEOR_FALL
	db 43, SWAGGER
	db 50, FLAME_CHARGE ; Fire Fang → TM move
	db 57, EXTREMESPEED ; Lava Plume → event move
	db 64, LUNACY_EYES
	db 71, HELL_TOKAMAK
	db 78, CALM_MIND
	db 85, LAVATEIN ; Eruption → event move
	db 92, SHINY_FIRE
	db 99, HIDDEN_POWER ; TM move
	db -1 ; no more level-up moves

SuicuneEvosAttacks:
	db -1 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, BUBBLE_BEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, LIGHT_SCREEN ; Mist → new move
	db 43, MIRROR_COAT
	db 50, AIR_SLASH ; Ice Fang → event move
	db 57, EXTREMESPEED ; Tailwind → event move
	db 64, LUNACY_EYES
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 85, MASTER_SPARK ; Blizzard → TM move
	db 92, BLIZZARD
	db 99, HIDDEN_POWER ; TM move
	db -1 ; no more level-up moves

LarvitarEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, PUPITAR
	db -1 ; no more evolutions
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 32, DARK_PULSE
	db 37, ANCIENTPOWER ; Payback → HGSS tutor move
	db 41, AVARICE_BITE
	db 46, EARTHQUAKE
	db 50, STONE_EDGE
	db 55, OUTRAGE ; Master Spark → HGSS tutor move
	db 61, MASTER_SPARK
	db 68, SCULPTURE ; new move
	db -1 ; no more level-up moves

PupitarEvosAttacks:
	evo_data EVOLVE_LEVEL, 55, TYRANITAR
	db -1 ; no more evolutions
	db 1, DEFENSE_CURL ; evolution move
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, AVARICE_BITE
	db 54, EARTHQUAKE
	db 60, STONE_EDGE
	db 67, OUTRAGE ; Master Spark → HGSS tutor move
	db 75, MASTER_SPARK
	db 84, SCULPTURE ; new move
	db -1 ; no more level-up moves

TyranitarEvosAttacks:
	db -1 ; no more evolutions
	db 1, STOMP ; evolution move
	db 1, LOW_KICK ; HGSS tutor move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, AVARICE_BITE
	db 54, EARTHQUAKE
	db 63, STONE_EDGE
	db 73, OUTRAGE ; Master Spark → HGSS tutor move
	db 82, MASTER_SPARK
	db 92, SCULPTURE ; new move
	db -1 ; no more level-up moves

LugiaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 9, GUST
	db 15, DRAGONBREATH ; Dragon Rush → GSC TM move
	db 23, LUNACY_EYES
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, DRAGON_PULSE ; Aeroblast → TM move
	db 50, AEROBLAST ; Punishment → Aeroblast
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, REFLECT ; Natural Gift → TM move
	db 93, CALM_MIND
	db 99, HURRICANE ; Sky Attack → new move
	db -1 ; no more level-up moves

HoOhEvosAttacks:
	db -1 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 9, GUST
	db 15, DRAGONBREATH ; Dive Kick → GSC TM move
	db 23, LUNACY_EYES
	db 29, SUNNY_DAY
	db 37, HELL_TOKAMAK
	db 43, FLOWER_SHOOT ; Sacred Fire → Solar Beam
	db 50, SHINY_FIRE ; Punishment → Sacred Fire
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, LIGHT_SCREEN ; Natural Gift → TM move
	db 93, CALM_MIND
	db 99, DIVE_KICK ; Sky Attack → Dive Kick
	db -1 ; no more level-up moves

CelebiEvosAttacks:
	db -1 ; no more evolutions
	db 1, LEECH_SEED
	db 1, PSYSHOT
	db 1, RECOVER
	db 1, METRONOME ; Heal Bell → new move
	db 10, SAFEGUARD
	db 19, DREAM_HEAVEN ; Magical Leaf → TM move
	db 28, ANCIENTPOWER
	db 37, BATON_PASS
	db 46, MOONBLAST ; Natural Gift → new move
	db 55, LIGHT_SCREEN ; Heal Block → TM move
	db 64, FUTURE_SIGHT
	db 73, HEAL_BELL ; Healing Wish → Heal Bell
	db 82, NASTY_PLOT ; Leaf Storm → event move
	db 91, SHADOW_DANCE
	db 100, AURA_SPHERE ; Sw/Sh move
	db -1 ; no more level-up moves

AzurillEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, WATER_GUN
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → Marill egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, CHARM
	db 13, BUBBLE_BEAM
	db 16, SING ; Helping Hand → egg move
	db 20, ROLLOUT ; Slam → tutor move
	db 23, BODY_SLAM ; Bounce → egg move
	db -1 ; no more level-up moves

WynautEvosAttacks:
	evo_data EVOLVE_LEVEL, 15, WOBBUFFET
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, CHARM
	db 1, ENCORE
	db 1, AMNESIA
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db -1 ; no more level-up moves

AmbipomEvosAttacks:
	db -1 ; no more evolutions
	db 1, HEADBUTT ; Dual Chop → tutor move
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 8, ASTONISH
	db 11, BATON_PASS
	db 15, THIEF ; Tickle → TM move
	db 18, FURY_STRIKES ; Fury Swipes → similar move
	db 22, SWIFT
	db 25, SCREECH
	db 29, SPIDERS_NEST
	db 32, DOUBLE_SLAP ; Double Hit → egg move
	db 36, ACROBATICS ; Fling → TM move
	db 39, NASTY_PLOT
	db 43, DOUBLE_EDGE ; Last Resort → tutor move
	db -1 ; no more level-up moves

MismagiusEvosAttacks:
	db -1 ; no more evolutions
	db 1, POWER_GEM
	db 1, SHADOW_BALL ; Phantom Force → TM move
	db 1, METEOR_FALL ; Mystical Fire → TM move
	db 1, ENERGY_LIGHT ; Magical Leaf → TM move ; evolution move
	db 1, GROWL
	db 1, TELEPORT ; Psywave → new move
	db 1, DISARM_VOICE ; new move
	db 1, PSYSHOT ; Spite → new move
	db 1, ASTONISH
	db -1 ; no more level-up moves

HonchkrowEvosAttacks:
	db -1 ; no more evolutions
	db 1, SUCKER_PUNCH
	db 1, ASTONISH
	db 1, PURSUIT
	db 1, HAZE
	db 1, WING_ATTACK
	db 25, SWAGGER
	db 35, NASTY_PLOT
	db 45, NIGHT_SLASH ; Foul Play → Night Slash
	db 55, SHADOW_DANCE ; Night Slash → egg move
	db 65, DIVE_KICK ; Quash → egg move
	db 75, DARK_PULSE
	db -1 ; no more level-up moves

BonslyEvosAttacks:
	evo_data EVOLVE_MOVE, ROCK_THROW, SUDOWOODO
	db -1 ; no more evolutions
	db 1, CHARM ; Fake Tears → new move
	db 1, SUBSTITUTE ; Copycat → Sudowoodo event move
	db 5, REVERSAL ; Flail → similar move
	db 8, LOW_KICK
	db 12, LEER ; Rock Throw → new move
	db 15, ROCK_THROW ; Mimic → Rock Throw
	db 19, FEINT_ATTACK
	db 22, ANCIENTPOWER ; Rock Tomb → new move
	db 26, PROTECT ; Block → TM move
	db 29, ROCK_SLIDE
	db 33, COUNTER
	db 36, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db -1 ; no more level-up moves

MimeJrEvosAttacks:
	db -1 ; no more evolutions
	db 1, BARRIER
	db 1, PSYSHOT
	db 1, TACKLE  ; Pound → similar move
	db 4, HYPNOSIS ; Copycat → egg move
	db 8, CALM_MIND ; Meditate → TM move
	db 11, DOUBLE_SLAP
	db 13, PROTECT ; Mimic → event move
	db 15, METRONOME ; Psywave → RBY TM move
	db 18, ENCORE
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 32, CONFUSE_RAY ; Recycle → egg move
	db 36, TRICK
	db 39, PSYCHIC_M
	db 43, FUTURE_SIGHT ; Role Play → egg move
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db -1 ; no more level-up moves

HappinyEvosAttacks:
	evo_data EVOLVE_HOLDING, OVAL_STONE, TR_MORNDAY, CREMILIA
	db -1 ; no more evolutions
	db 1, MINIMIZE
	db 1, TACKLE ; Pound → similar move
	db 1, METRONOME ; Copycat → egg move
	db 4, DEFENSE_CURL
	db 8, SWEET_KISS
	db 12, DISARM_VOICE
	db 16, ROLLOUT ; Covet → tutor move
	db 20, CHARM
	db -1 ; no more level-up moves

MunchlaxEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CRAN
	db -1 ; no more evolutions
	db 1, SWEET_KISS ; Recycle → event move
	db 1, METRONOME
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, RAGE ; Chip Away → RBY TM move
	db 20, TAKE_DOWN ; Screech → RBY TM move
	db 25, BODY_SLAM
	db 28, SCREECH ; Stockpile → Screech
	db 33, PROTECT ; Swallow → TM move
	db 36, ROLLOUT
	db 41, OUTRAGE ; Fling → HGSS tutor move
	db 44, BELLY_DRUM
	db 49, AVARICE_BITE ; Natural Gift → CRan move
	db 50, GUNK_SHOT ; Snatch → egg move
	db 57, DOUBLE_EDGE ; Last Resort → egg move
	db -1 ; no more level-up moves

MantykeEvosAttacks:
	evo_data EVOLVE_PARTY, REMORAID, MANTINE
	db -1 ; no more evolutions
	db 1, GUST ; event move
	db 1, TACKLE
	db 1, WATER_GUN ; Bubble → similar move
	db 3, SUPERSONIC
	db 7, BUBBLE_BEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATER_PULSE
	db 23, AQUA_JET ; Wide Guard → new move
	db 27, TAKE_DOWN
	db 32, SPIDERS_NEST
	db 36, AIR_SLASH
	db 39, WHITE_BIRD ; Aqua Ring → similar move
	db 46, MIRROR_COAT ; Bounce → Dream World move
	db 49, HYDRO_PUMP
	db -1 ; no more level-up moves

WeavileEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, NASTY_PLOT
	db 22, METAL_CLAW
	db 25, HONE_TOOLS
	db 28, ICICLE_CRASH ; Fling → egg move
	db 32, SCREECH
	db 35, NIGHT_SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, ICHIGO_CROSS ; Punishment → TM move
	db 47, AVARICE_BITE ; Dark Pulse → new move
	db -1 ; no more level-up moves

MagnezoneEvosAttacks:
	db -1 ; no more evolutions
	db 1, FIVEELEMENTS ; evolution move
	db 1, MIRROR_COAT
	db 1, BARRIER
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SCREECH ; Metal Sound → Screech
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 33, FLASH_CANNON
	db 39, EXPLOSION ; Screech → TM move
	db 43, HIDDEN_POWER ; Discharge → TM move
	db 49, SPIDERS_NEST ; Lock-On → event move
	db 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 59, THUNDER ; Gyro Ball → TM move
	db 63, ZAP_CANNON
	db -1 ; no more level-up moves

LickilickyEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
	db 13, KNOCK_OFF
	db 17, WRAP
	db 21, STOMP
	db 25, DISABLE
	db 29, HEADBUTT ; Slam → TM move
	db 33, ROLLOUT
	db 37, SCREECH ; Chip Away → Screech
	db 41, AMNESIA ; Me First → egg move
	db 45, BODY_SLAM ; Refresh → egg move
	db 49, CURSE ; Screech → egg move
	db 53, POWER_WHIP
	db 57, BELLY_DRUM ; Wring Out → egg move
	db 61, GYRO_BALL
	db -1 ; no more level-up moves

RhyperiorEvosAttacks:
	db -1 ; no more evolutions
	db 1, OUTRAGE ; Hammer Arm → HGSS tutor move ; evolution move
	db 1, POISON_JAB
	db 1, TACKLE
	db 1, MUD_SLAP ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, KNIFE_THROW
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, TAKE_DOWN ; Drill Run → Take Down
	db 37, STONE_EDGE ; Take Down → Stone Edge
	db 41, DOUBLE_EDGE ; Double Edge → event move
	db 48, EARTHQUAKE
	db 55, SCULPTURE ; Megahorn → new move
	db 62, DRAGON_BASH ; Horn Drill → Megahorn
	db 69, ROCK_SLIDE ; Rock Wrecker → similar move
	db -1 ; no more level-up moves

TangrowthEvosAttacks:
	db -1 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, TOXIC_GAS
	db 17, PROTECT ; Bind → TM move
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, KNOCK_OFF
	db 30, STUN_SPORE
	db 33, HEALINGLIGHT ; Natural Gift → new move
	db 36, GIGA_DRAIN
	db 40, ANCIENTPOWER
	db 43, BODY_SLAM ; Slam → similar move
	db 46, LIFE_BALANCE ; Tickle → HGSS tutor move
	db 49, SWORDS_DANCE ; Wring Out → TM move
	db 50, BATON_PASS ; Grassy Terrain → new move
	db 53, POWER_WHIP
	db -1 ; no more level-up moves

ElectivireEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCULPTURE ; evolution move
	db 1, FIRE_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, SCREECH ; Discharge → Screech
	db 42, CROSS_CHOP ; Screech → new move
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 62, GUNGNIR
	db -1 ; no more level-up moves

MagmortarEvosAttacks:
	db -1 ; no more evolutions
	db 1, FLASH_CANNON ; evolution move
	db 1, THUNDERPUNCH
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_CHARGE ; Flame Burst → TM move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, SUNNY_DAY ; Lava Plume → Sunny Day
	db 42, FOCUS_BLAST ; Sunny Day → TM move
	db 49, METEOR_FALL
	db 55, HELL_TOKAMAK
	db 62, MASTER_SPARK
	db -1 ; no more level-up moves

TogekissEvosAttacks:
	db -1 ; no more evolutions
	db 1, DISARM_VOICE ; evolution move
	db 1, HURRICANE ; Sky Attack → new move
	db 1, EXTREMESPEED
	db 1, AURA_SPHERE
	db 1, AIR_SLASH
	db 1, PLAY_ROUGH ; Sw/Sh move
	db 1, FUTURE_SIGHT ; Sw/Sh move
	db -1 ; no more level-up moves

YanmegaEvosAttacks:
	db -1 ; no more evolutions
	db 1, DRAGONBREATH ; evolution move
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, BUG_BITE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, DRAGON_RAGE ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
if DEF(FAITHFUL)
	db 33, ANCIENTPOWER
else
	db 35, ANCIENTPOWER
endc
	db 38, SLASH ; Feint → Slash
	db 43, WING_ATTACK ; Slash → Wing Attack
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 62, FLY ; new move
	db -1 ; no more level-up moves

LeafeonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, RAZOR_LEAF ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, BITE ; Grass Whistle → new move
	db 20, DREAM_HEAVEN ; Magical Leaf → TM move
	db 25, GIGA_DRAIN
	db 29, SWORDS_DANCE
	db 33, HEALINGLIGHT ; Synthesis → similar move
	db 37, SEED_BOMB ; Sunny Day → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, SUNNY_DAY ; Leaf Blade → Sunny Day
	db -1 ; no more level-up moves

GlaceonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, ICY_WIND ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, ICE_SHARD ; Ice Fang → Ice Shard
	db 25, HAIL ; Ice Shard → Hail
	db 29, BARRIER
	db 33, MIRROR_COAT
	db 37, ICE_BEAM ; Hail → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, BLIZZARD
	db -1 ; no more level-up moves

MamoswineEvosAttacks:
	db -1 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, HAIL
	db 24, AVALANCHE ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 34, ROCK_BLAST ; Double Hit → Sw/Sh move
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, SCARY_FACE
	db -1 ; no more level-up moves

CLunasaZEvosAttacks:
	db -1 ; no more evolutions
	db 1, TRICK_ROOM
	db 1, TACKLE
	db 1, CONVERSION
	db 1, NASTY_PLOT ; evolution move
	db 7, PSYBEAM
	db 12, SPIDERS_NEST
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, LIFE_BALANCE ; Embargo → HGSS tutor move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, FIVEELEMENTS
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, MASTER_SPARK
	db -1 ; no more level-up moves

SylveonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, DISARM_VOICE ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, DRAINING_KISS
	db 25, SKILL_SWAP
	db 29, HEAL_BELL ; Misty Terrain → HGSS tutor move
	db 33, LIGHT_SCREEN
	db 37, MOONBLAST
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, PLAY_ROUGH ; Psych Up → new move
	db -1 ; no more level-up moves

PerrserkerEvosAttacks:
	db -1 ; no more evolutions
	db 1, IRON_HEAD ; evolution move
	db 1, COUNTER ; Metal Burst → similar move
	db 1, PLAY_ROUGH ; Iron Defense → TR move
	db 1, ASTONISH ; Fake Out → new move
	db 1, GROWL
	db 1, HONE_TOOLS
	db 1, SCRATCH
	db 12, PAY_DAY
	db 16, METAL_CLAW
	db 20, PURSUIT ; Taunt → new move
	db 24, SWAGGER
	db 31, FURY_STRIKES
	db 36, SCREECH
	db 42, SLASH
	db 48, AVARICE_BITE ; Metal Sound → TR move
	db 54, THRASH
	db 60, SCULPTURE ; TR move
	db -1 ; no more level-up moves

CursolaEvosAttacks:
	db -1 ; no more evolutions
	db 1, SHADOW_DANCE
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, ASTONISH
	db 1, DISABLE
	db 15, HAZE ; Spite → egg move
	db 20, ANCIENTPOWER
	db 25, HEX
	db 30, CURSE
	db 35, GIGA_DRAIN ; Strength Sap → TM move
	db 40, POWER_GEM
	db 45, NIGHT_SHADE
	db 50, HYDRO_PUMP ; Grudge → TR move
	db 55, MIRROR_COAT
	db -1 ; no more level-up moves

SirfetchDEvosAttacks:
	db -1 ; no more evolutions
	db 1, CUT ; Fury Cutter → HM move
	db 1, COUNTER ; Iron Defense → egg move ; evolution move
	db 1, QUICK_ATTACK ; First Impression → egg move
	db 1, PECK
	db 1, MUD_SLAP ; Sand Attack → similar move
	db 1, LEER
if DEF(FAITHFUL)
	db 15, ROCK_SMASH
else
	db 15, REVERSAL ; Rock Smash → TM move
endc
	db 20, FEINT_ATTACK ; Brutal Swing → similar move
	db 25, PROTECT ; Detect → similar move
	db 30, KNOCK_OFF
	db 35, STEEL_WING ; Defog → TM move
if DEF(FAITHFUL)
	db 40, NIGHT_SLASH ; Brick Break → egg move
else
	db 40, ROCK_SMASH ; Brick Break
endc
	db 45, SWORDS_DANCE
	db 50, BODY_SLAM ; Slam → TR move
	db 55, POISON_JAB ; Leaf Blade → TR move
	db 60, SCULPTURE ; Final Gambit → TR move
	db 65, DIVE_KICK
	db 70, GUNGNIR ; Meteor Assault → similar move
	db -1 ; no more level-up moves


MrRimeEvosAttacks:
	db -1 ; no more evolutions
	db 1, RECOVER ; Slack Off → similar move
	db 1, ENCORE
	db 1, PROTECT
	db 1, LIGHT_SCREEN
	db 1, REFLECT
	db 1, SAFEGUARD
	db 1, ENERGY_LIGHT
	db 1, TACKLE ; Pound → similar move
	db 1, RAPID_SPIN
	db 1, BATON_PASS
	db 1, ICE_SHARD
	db 12, PSYSHOT
	db 16, METRONOME ; Ally Switch → TR move
	db 20, ICY_WIND
	db 24, DOUBLE_KICK
	db 28, PSYBEAM
	db 32, HYPNOSIS
	db 36, MIRROR_COAT
	db 40, SUCKER_PUNCH
	db 44, ICE_BEAM ; Freeze-Dry → TR move
	db 48, PSYCHIC_M
	db 52, CONFUSE_RAY ; Teeter Dance → egg move
	db -1 ; no more level-up moves

WyrdeerEvosAttacks:
	db -1 ; no more evolutions
	db 1, LUNACY_EYES ; evolution move
	db 1, TACKLE
	db 3, LEER
	db 7, ASTONISH
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, MUD_SLAP ; Sand-Attack → similar move
	db 21, HEADBUTT ; Take Down → tutor move
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	db 33, TAKE_DOWN ; Role Play → Take Down
	db 38, LUNAR_BASH
	db 43, THRASH ; Jump Kick → egg move
	db 49, SKILL_SWAP ; Imprison → tutor move
	db 55, TENSION_KICK ; Captivate → new move
	db 60, DRAGON_BASH ; Me First → egg move
	db 65, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

KleavorEvosAttacks:
	db -1 ; no more evolutions
	db 1, ROCK_THROW ; evolution move
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, BLADE_FLASH
	db 17, SPIDERS_NEST
	db 21, AERIAL_ACE
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, GLARE ; Razor Wind → new move
	db 37, DEFENSE_CURL ; Stealth Rock → new move
	db 41, ICHIGO_CROSS
	db 45, AVARICE_BITE ; Night Slash → Prism tutor move
	db 49, SCULPTURE ; Double Hit → SV TM move
	db 50, STONE_EDGE ; Stone Axe → new move
	db 57, SWORDS_DANCE
	db -1 ; no more level-up moves

UrsalunaEvosAttacks:
	db -1 ; no more evolutions
	db 1, BULLDOZE ; evolution move
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, AVARICE_BITE ; Snore → egg move
	db 58, THRASH
	db 67, SCULPTURE ; Hammer Arm → SV TM move
	db 76, DOUBLE_EDGE ; new move
	db 85, GUNK_SHOT ; SV TM move
	db -1 ; no more level-up moves

SneaslerEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, LOW_KICK ; Rock Smash → Low Kick
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, SPIDERS_NEST
	db 22, METAL_CLAW
	db 25, HONE_TOOLS
	db 28, POISON_JAB
	db 32, SCREECH
	db 35, SLASH
	db 40, SWORDS_DANCE
	db 44, ICHIGO_CROSS ; Punishment → TM move
	db 47, SCULPTURE
	db 50, GUNK_SHOT ; SV TM move
	db -1 ; no more level-up moves

OverqwilEvosAttacks:
	db -1 ; no more evolutions
	db 1, AQUA_JET ; Water Gun → SV TM move
	db 1, SPIKES
	db 1, TACKLE
	db 1, SEAL_NEEDLE
	db 5, DEFENSE_CURL ; Harden → TM move
	db 9, MINIMIZE
	db 13, PWJ_NEEDLE
	db 17, ROLLOUT
	db 21, POISON_NAIL
	db 25, LIFE_BALANCE ; Stockpile + Spit Up → HGSS move tutor
	db 29, REVERSAL ; Revenge → Sw/Sh move
	db 33, WATER_PULSE ; Brine → TM move
	db 37, AVARICE_BITE ; Dark Pulse → SV TM move
	db 41, TAKE_DOWN
	db 45, AQUA_TAIL
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, EXPLOSION ; Self-Destruct → similar move
	db 60, DOUBLE_EDGE ; Fell Stinger → event move
	db -1 ; no more level-up moves

DudunsparceEvosAttacks:
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, ROLLOUT
	db 6, ASTONISH ; Spite → egg move
	db 8, PURSUIT
	db 11, SCREECH
	db 13, MUD_SLAP
	db 16, FURY_STRIKES ; Yawn → event move (Fury Attack)
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, DRAGON_RAGE ; Drill Run → new move
	db 26, WHITE_BIRD
	db 28, TAKE_DOWN
	db 31, DRAGON_DANCE ; Coil → new move
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	db 41, EARTHQUAKE ; Endeavor → TM move
	db 43, AIR_SLASH
	db 46, HEX ; Dragon Rush → egg move
	db 48, ENDURE
	db 51, REVERSAL ; Flail → similar move
	db 53, HURRICANE
	db 56, VOICE_BIND ; Boomburst → similar move
	db 58, OUTRAGE ; new move
	db -1 ; no more level-up moves

ClodsireEvosAttacks:
	db -1 ; no more evolutions
	db 1, DRAGON_BASH ; evolution move
	db 1, MUD_SLAP ; Mud Shot → similar move
	db 1, LEER ; Tail Whip → similar move
	db 5, TACKLE
	db 9, SEAL_NEEDLE ; Poison Tail → similar move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 24, AMNESIA
	db 31, BELLY_DRUM ; Yawn → event move
	db 36, EARTHQUAKE
	db 41, POISON_JAB
	db 48, POISON_NAIL
	db 53, GUNK_SHOT ; Sludge Wave → similar move
	db -1 ; no more level-up moves

AnnihilapeEvosAttacks:
	db -1 ; no more evolutions
	db 1, SHADOW_HIT ; Shadow Punch → similar move ; evolution move
	db 1, OUTRAGE
	db 1, RAGE
	db 1, SCRATCH
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_STRIKES ; Fury Swipes → similar move
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, REVERSAL ; Assurance → egg move
	db 30, FEINT_ATTACK ; Punishment → new move
	db 35, THRASH
	db 39, SCULPTURE
	db 44, SCREECH
	db 48, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	db 53, OUTRAGE
	db -1 ; no more level-up moves

EggEvosAttacks::
	db -1 ; no more evolutions
	db -1 ; no more level-up moves
