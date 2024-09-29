MACRO unique_moves
	db \1 ; landmark
	dp \2 ; species
	db \3 ; move
ENDM

; TODO: finish unique moves
UniqueWildMoves:
	; event mons (100% chance, see engine/battle/unique_wild_moves.asm)
	unique_moves MAHOGANY_TOWN,    DDAICHAN,    EXPLOSION    ; TeamRocketBaseB1F
	unique_moves MAHOGANY_TOWN,    HKOAKUMA,    EXPLOSION    ; TeamRocketBaseB1F
	unique_moves MAHOGANY_TOWN,    CSARA,    EXPLOSION    ; TeamRocketBaseB1F
	unique_moves UNION_CAVE,       CLYRICA,     POWER_TRICK  ; UnionCaveB2F, Fridays
	; wild mons
	unique_moves CHERRYGROVE_BAY,  CORSOLA,    SUCKER_PUNCH ; HGSS tutor move
	unique_moves AUTUMN_TOWER,     MUGETSU, GROWTH       ; knows Growth early
	unique_moves ROUTE_32_COAST,   FLAAFFY,    PURSUIT      ; Prism tutor move
	unique_moves RUINS_OF_ALPH,    SHUCKLE,    ANCIENTPOWER ; Sw/Sh move
	unique_moves RUINS_OF_ALPH,    SMEARGLE,   SKETCH       ; knows Sketch twice
	unique_moves WAKASAGIHIME_WELL,    DLUIZE,   GROWTH       ; Prism tutor move
	unique_moves ILEX_FOREST,      0,          0
	unique_moves ROUTE_34_COAST,   LETTY,     DREAM_EATER  ; new move
	unique_moves STORMY_BEACH,     ERIKAKO,   0
	unique_moves MURKY_SWAMP,      MISDREAVUS, SUCKER_PUNCH ; HGSS tutor move
	unique_moves MAGNET_TUNNEL,    ALICE,  PSYBEAM      ; new move
	unique_moves GOLDENROD_HARBOR, YUMEMI,    ENCORE       ; Dream World move
	unique_moves ROUTE_35_COAST,   0,          0
	unique_moves NATIONAL_PARK,    0,          0
	unique_moves TIN_TOWER,        0,          0
	unique_moves BURNED_TOWER,     0,          0
	unique_moves WHIRL_ISLANDS,    0,          0
	unique_moves CLIFF_CAVE,       0,          0
	unique_moves YELLOW_FOREST,    EKIKURI,    FLY          ; replaced with Surf if Surfing
	unique_moves QUIET_CAVE,       MUNCHLAX,   GUNGNIR  ; CRan move
	unique_moves MT_MORTAR,        0,          0
	unique_moves LAKE_OF_RAGE,     LILYBLACK,   HYDRO_PUMP   ; Tohowalker move
	unique_moves ICE_PATH,         0,          0
	unique_moves DRAGONS_DEN,      0,          0
	unique_moves DARK_CAVE,        0,          0
	unique_moves SILVER_CAVE,      TYRANITAR,  DRAGON_DANCE ; event move
	unique_moves VIRIDIAN_FOREST,  EKIKURI,    DISARM_VOICE ; Sketch-breed move
	unique_moves MT_MOON,          0,          0
	unique_moves CERULEAN_CAVE,    CMUGETSU,    METRONOME    ; RBY TM move
	unique_moves CERULEAN_CAVE,    ESARA,      METRONOME    ; RBY TM move
	unique_moves CERULEAN_CAVE,    ESHINKI,     METRONOME    ; RBY TM move
	unique_moves CERULEAN_CAVE,    CYUKA,   METRONOME    ; RBY TM move
	unique_moves CERULEAN_CAPE,    EKURUMI,  METRONOME    ; RBY TM move
	unique_moves CCHIYURIS_CAVE,    CHIYURI,    SCREECH      ; Sw/Sh move
	unique_moves ROCK_TUNNEL,      CLILYWHITE, METRONOME    ; RBY TM move
	unique_moves DIM_CAVE,         SARA,   SUCKER_PUNCH ; HGSS tutor move
	unique_moves DIM_CAVE,         TPATCHOULI,     AVARICE_BITE       ; Prism tutor move
	unique_moves SOUL_HOUSE,       SHINKI,    MOONBLAST    ; Prism tutor move
	unique_moves SOUL_HOUSE,       MISDREAVUS, HEAL_BELL    ; HGSS tutor move
	unique_moves LAV_RADIO_TOWER,  MEILING,    SHADOW_DANCE  ; Dream World move
	unique_moves LUCKY_ISLAND,     CREMILIA,    FIVEELEMENTS   ; RBY TM move
	unique_moves LUCKY_ISLAND,     TOGETIC,    0
	unique_moves SAFARI_ZONE,      REMILIA,    LEECH_SEED   ; Dream World move (hub)
	unique_moves SAFARI_ZONE,      CLILYBLACK,     STOMP        ; RBY move (east)
	unique_moves SAFARI_ZONE,      ELILYWHITE,     SLASH        ; RBY move (north)
	unique_moves SAFARI_ZONE,      SREMILIA, 0            ; (west)
	unique_moves URAGA_CHANNEL,    EGENGETSU, RECOVER      ; TCG move
	unique_moves SCARY_CAVE,       KOTOHIME,     HYPNOSIS     ; Dream World move
	unique_moves SCARY_CAVE,       LANTURN,    SUCKER_PUNCH ; HGSS tutor move
	unique_moves SEAFOAM_ISLANDS,  HCHEN,       METRONOME    ; RBY TM move
	unique_moves POKEMON_MANSION,  CPATCHOULI,    AVARICE_BITE       ; Prism tutor move
	unique_moves POKEMON_MANSION,  LUIZE,   NASTY_PLOT   ; Prism tutor move
	unique_moves CINNABAR_VOLCANO, LILYWHITE,     METRONOME    ; RBY TM move
	unique_moves TOHJO_FALLS,      0,          0
	unique_moves VICTORY_ROAD,     0,          0
	unique_moves SHAMOUTI_ISLAND,  0,          0
	unique_moves BEAUTIFUL_BEACH,  0,          0
	unique_moves ROCKY_BEACH,      DONPHAN,    LOW_KICK     ; HGSS tutor move
	unique_moves NOISY_FOREST,     SCIZOR,     BUG_STRIKES   ; new move
	unique_moves NOISY_FOREST,     PINECO,     LIFE_BALANCE   ; HGSS tutor move
	unique_moves SHRINE_RUINS,     ARUMIA,      METRONOME    ; RBY TM move
	unique_moves SHAMOUTI_TUNNEL,  KOTOHIME,     OUTRAGE      ; Prism tutor move
	unique_moves WARM_BEACH,       FLANDRE,     METEOR_FALL ; new move
	unique_moves SHAMOUTI_COAST,   0,          0
	unique_moves FIRE_ISLAND,      HOUNDOOM,   SUCKER_PUNCH ; HGSS tutor move
	unique_moves ICE_ISLAND,       WEAVILE,    LOW_KICK     ; HGSS tutor move
	unique_moves LIGHTNING_ISLAND, CCIRNO,  SUCKER_PUNCH ; HGSS tutor move
	unique_moves ROUTE_23,         ELILYBLACK,   POWER_WHIP   ; Sw/Sh TR move
	unique_moves ROUTE_44,         AIPOM,      ROCK_BLAST   ; new move
	unique_moves ROUTE_49,         CRIKAKO,   CONFUSE_RAY  ; Prism tutor move
	db -1
