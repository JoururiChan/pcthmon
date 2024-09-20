; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - EvolutionMoves (see data/pokemon/evolution_moves.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MiniIconPointers (see data/pokemon/mini_icon_pointers.asm)
; - OverworldMonIconColors (see data/pokemon/overworld_icon_pals.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPicSizes (see data/pokemon/pic_sizes.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokemonBodyData (see data/pokemon/body_data.asm)
; - TohodexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalTohodexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewTohodexOrder (see data/pokemon/dex_order_new.asm)
; - ValidPokemonLevels (see data/pokemon/valid_levels.asm)
; - FootprintPointers (see data/pokemon/footprint_pointers.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/extra_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
	const_def 1
	const CREIMU  ; 01
	const REIMU    ; 02
	const EREIMU   ; 03
	const CMARISA ; 04
	const MARISA ; 05
	const EMARISA  ; 06
	const CSAKUYA   ; 07
	const SAKUYA  ; 08
	const ESAKUYA  ; 09
	const CGYOKU   ; 0a
	const MGYOKU    ; 0b
	const FGYOKU ; 0c
	const OGYOKU     ; 0d
	const CMAGAN     ; 0e
	const MAGAN   ; 0f
	const EMAGAN     ; 10
	const CMIMA  ; 11
	const MIMA    ; 12
	const EMIMA    ; 13
	const CELIS   ; 14
	const ELIS    ; 15
	const EELIS     ; 16
	const CKIKURI      ; 17
	const KIKURI      ; 18
	const EKIKURI    ; 19
	const CSARIEL     ; 1a
	const SARIEL  ; 1b
	const ESARIEL  ; 1c
	const CKONGARA  ; 1d
	const KONGARA   ; 1e
	const EKONGARA  ; 1f
	const CRIKA  ; 20
	const RIKA   ; 21
	const ERIKA   ; 22
	const CMEIRA   ; 23
	const MEIRA   ; 24
	const EMEIRA     ; 25
	const CELLEN  ; 26
	const ELLEN ; 27
	const EELLEN ; 28
	const CKOTOHIME      ; 29
	const KOTOHIME     ; 2a
	const EKOTOHIME     ; 2b
	const CKANA      ; 2c
	const KANA  ; 2d
	const EKANA      ; 2e
	const CRIKAKO   ; 2f
	const RIKAKO    ; 30
	const ERIKAKO   ; 31
	const CCHIYURI    ; 32
	const CHIYURI    ; 33
	const ECHIYURI     ; 34
	const CYUMEMI    ; 35
	const YUMEMI    ; 36
	const EYUMEMI    ; 37
	const CORANGE     ; 38
	const ORANGE   ; 39
	const EORANGE  ; 3a
	const CKURUMI   ; 3b
	const KURUMI    ; 3c
	const EKURUMI  ; 3d
	const CELLY  ; 3e
	const ELLY       ; 3f
	const EELLY    ; 40
	const CYUKA   ; 41
	const YUKA     ; 42
	const EYUKA    ; 43
	const CMUGETSU    ; 44
	const MUGETSU ; 45
	const EMUGETSU ; 46
	const CGENGETSU ; 47
	const GENGETSU  ; 48
	const EGENGETSU ; 49
	const CSARA    ; 4a
	const SARA   ; 4b
	const ESARA      ; 4c
	const CLUIZE     ; 4d
	const LUIZE   ; 4e
	const ELUIZE   ; 4f
	const CALICE    ; 50
	const ALICE  ; 51
	const EALICE   ; 52
	const CMAI ; 53
	const MAI      ; 54
	const EMAI     ; 55
	const CYUKI       ; 56
	const YUKI    ; 57
	const EYUKI     ; 58
	const CYUMEKO        ; 59
	const YUMEKO   ; 5a
	const EYUMEKO   ; 5b
	const CSHINKI     ; 5c
	const SHINKI    ; 5d
	const ESHINKI     ; 5e
	const CRUMIA       ; 5f
	const RUMIA    ; 60
	const ERUMIA      ; 61
	const CDAICHAN     ; 62
	const DAICHAN    ; 63
	const EDAICHAN    ; 64
	const CCIRNO  ; 65
	const CIRNO  ; 66
	const ECIRNO  ; 67
	const CMEILING     ; 68
	const MEILING    ; 69
	const EMEILING  ; 6a
	const CKOAKUMA ; 6b
	const KOAKUMA  ; 6c
	const EKOAKUMA    ; 6d
	const CPATCHOULI    ; 6e
	const PATCHOULI    ; 6f
	const EPATCHOULI     ; 70
	const CREMILIA    ; 71
	const REMILIA    ; 72
	const EREMILIA ; 73
	const CFLANDRE     ; 74
	const FLANDRE     ; 75
	const EFLANDRE    ; 76
	const CLETTY    ; 77
	const LETTY     ; 78
	const ELETTY    ; 79
	const CCHEN   ; 7a
	const CHEN    ; 7b
	const ECHEN       ; 7c
	const CLILYWHITE ; 7d
	const LILYWHITE     ; 7e
	const ELILYWHITE     ; 7f
	const CLILYBLACK     ; 80
	const LILYBLACK   ; 81
	const ELILYBLACK   ; 82
	const CLYRICA     ; 83
	const LYRICA      ; 84
	const ELYRICA      ; 85
	const CMERLIN   ; 86
	const MERLIN    ; 87
	const EMERLIN    ; 88
	const CLUNASA    ; 89
	const LUNASA    ; 8a
	const ELUNASA    ; 8b
	const CYUYUKO     ; 8c
	const YUYUKO   ; 8d
	const EYUYUKO ; 8e
	const CRAN    ; 8f
	const RAN   ; 90
	const ERAN     ; 91
	const CYUKARI    ; 92
	const YUKARI    ; 93
	const EYUKARI  ; 94
	const CSUIKA  ; 95
	const SUIKA     ; 96
	const ESUIKA        ; 97
	const CYOUMU  ; 98
	const YOUMU    ; 99
	const EYOUMU   ; 9a
	const CREISEN  ; 9b
	const REISEN    ; 9c
	const EREISEN ; 9d
	const CSANAE   ; 9e
	const SANAE   ; 9f
	const ESANAE ; a0
	const SENTRET    ; a1
	const FURRET     ; a2
	const HOOTHOOT   ; a3
	const NOCTOWL    ; a4
	const LEDYBA     ; a5
	const LEDIAN     ; a6
	const SPINARAK   ; a7
	const ARIADOS    ; a8
	const CROBAT     ; a9
	const CHINCHOU   ; aa
	const LANTURN    ; ab
	const PICHU      ; ac
	const CLEFFA     ; ad
	const IGGLYBUFF  ; ae
	const TOGEPI     ; af
	const TOGETIC    ; b0
	const NATU       ; b1
	const XATU       ; b2
	const MAREEP     ; b3
	const FLAAFFY    ; b4
	const AMPHAROS   ; b5
	const BELLOSSOM  ; b6
	const MARILL     ; b7
	const AZUMARILL  ; b8
	const SUDOWOODO  ; b9
	const POLITOED   ; ba
	const HOPPIP     ; bb
	const SKIPLOOM   ; bc
	const JUMPLUFF   ; bd
	const AIPOM      ; be
	const SUNKERN    ; bf
	const SUNFLORA   ; c0
	const YANMA      ; c1
	const WOOPER     ; c2
	const QUAGSIRE   ; c3
	const ESPEON     ; c4
	const UMBREON    ; c5
	const MURKROW    ; c6
	const SLOWKING   ; c7
	const MISDREAVUS ; c8
	const UNOWN      ; c9
	const WOBBUFFET  ; ca
	const GIRAFARIG  ; cb
	const PINECO     ; cc
	const FORRETRESS ; cd
	const DUNSPARCE  ; ce
	const GLIGAR     ; cf
	const STEELIX    ; d0
	const SNUBBULL   ; d1
	const GRANBULL   ; d2
	const QWILFISH   ; d3
	const SCIZOR     ; d4
	const SHUCKLE    ; d5
	const HERACROSS  ; d6
	const SNEASEL    ; d7
	const TEDDIURSA  ; d8
	const URSARING   ; d9
	const SLUGMA     ; da
	const MAGCARGO   ; db
	const SWINUB     ; dc
	const PILOSWINE  ; dd
	const CORSOLA    ; de
	const REMORAID   ; df
	const OCTILLERY  ; e0
	const DELIBIRD   ; e1
	const MANTINE    ; e2
	const SKARMORY   ; e3
	const HOUNDOUR   ; e4
	const HOUNDOOM   ; e5
	const KINGDRA    ; e6
	const PHANPY     ; e7
	const DONPHAN    ; e8
	const CLUNASA2   ; e9
	const STANTLER   ; ea
	const SMEARGLE   ; eb
	const TYROGUE    ; ec
	const HITMONTOP  ; ed
	const SMOOCHUM   ; ee
	const ELEKID     ; ef
	const MAGBY      ; f0
	const MILTANK    ; f1
	const BLISSEY    ; f2
	const RAIKOU     ; f3
	const ENTEI      ; f4
	const SUICUNE    ; f5
	const LARVITAR   ; f6
	const PUPITAR    ; f7
	const TYRANITAR  ; f8
	const LUGIA      ; f9
	const HO_OH      ; fa
	const CELEBI     ; fb
	const AZURILL    ; fc
	const WYNAUT     ; fd
	const AMBIPOM    ; fe
	const EGG        ; ff
	const_skip       ; 100 is unused
	const MISMAGIUS  ; 101
	const HONCHKROW  ; 102
	const BONSLY     ; 103
	const MIME_JR_   ; 104
	const HAPPINY    ; 105
	const MUNCHLAX   ; 106
	const MANTYKE    ; 107
	const WEAVILE    ; 108
	const MAGNEZONE  ; 109
	const LICKILICKY ; 10a
	const RHYPERIOR  ; 10b
	const TANGROWTH  ; 10c
	const ELECTIVIRE ; 10d
	const MAGMORTAR  ; 10e
	const TOGEKISS   ; 10f
	const YANMEGA    ; 110
	const LEAFEON    ; 111
	const GLACEON    ; 112
	const GLISCOR    ; 113
	const MAMOSWINE  ; 114
	const CLUNASA_Z  ; 115
	const SYLVEON    ; 116
	const PERRSERKER ; 117
	const CURSOLA    ; 118
	const SIRFETCH_D ; 119
	const MR__RIME   ; 11a
	const WYRDEER    ; 11b
	const KLEAVOR    ; 11c
	const URSALUNA   ; 11d
	const SNEASLER   ; 11e
	const OVERQWIL   ; 11f
	const DUDUNSPARCE ; 120
	const FARIGIRAF  ; 121
	const CLODSIRE   ; 122
	const ANNIHILAPE ; 123
DEF NUM_SPECIES EQU const_value - 1 ; 123
DEF NUM_POKEMON EQU NUM_SPECIES - (2 * HIGH(NUM_SPECIES)) ; 121

DEF CANCEL EQU -1

; form values
; related to:
; - CosmeticSpeciesAndFormTable (see data/pokemon/variant_forms.asm)
; - ValidVariantRanges (see data/pokemon/valid_variants.asm)

MACRO ext_const_def
	if _NARG >= 1
		def ext_const_value = \1
	else
		def ext_const_value = 0
	endc
	if _NARG >= 2
		DEF \2 EQU ext_const_value
		redef ext_const_value += const_inc
	endc
ENDM

MACRO ext_const
	const_skip
	DEF \1 EQU ext_const_value
	redef ext_const_value += const_inc
ENDM

DEF NO_FORM EQU 0
DEF PLAIN_FORM EQU 1

DEF FIRST_COSMETIC_FORM_MON EQU const_value ; 124

; unown
	ext_const_def 1, UNOWN_A_FORM    ;     (01)
	ext_const UNOWN_B_FORM           ; 124 (02)
	ext_const UNOWN_C_FORM           ; 125 (03)
	ext_const UNOWN_D_FORM           ; 126 (04)
	ext_const UNOWN_E_FORM           ; 127 (05)
	ext_const UNOWN_F_FORM           ; 128 (06)
	ext_const UNOWN_G_FORM           ; 129 (07)
	ext_const UNOWN_H_FORM           ; 12a (08)
	ext_const UNOWN_I_FORM           ; 12b (09)
	ext_const UNOWN_J_FORM           ; 12c (0a)
	ext_const UNOWN_K_FORM           ; 12d (0b)
	ext_const UNOWN_L_FORM           ; 12e (0c)
	ext_const UNOWN_M_FORM           ; 12f (0d)
	ext_const UNOWN_N_FORM           ; 130 (0e)
	ext_const UNOWN_O_FORM           ; 131 (0f)
	ext_const UNOWN_P_FORM           ; 132 (10)
	ext_const UNOWN_Q_FORM           ; 133 (11)
	ext_const UNOWN_R_FORM           ; 134 (12)
	ext_const UNOWN_S_FORM           ; 135 (13)
	ext_const UNOWN_T_FORM           ; 136 (14)
	ext_const UNOWN_U_FORM           ; 137 (15)
	ext_const UNOWN_V_FORM           ; 138 (16)
	ext_const UNOWN_W_FORM           ; 139 (17)
	ext_const UNOWN_X_FORM           ; 13a (18)
	ext_const UNOWN_Y_FORM           ; 13b (19)
	ext_const UNOWN_Z_FORM           ; 13c (1a)
	ext_const UNOWN_EXCLAMATION_FORM ; 13d (1b)
	ext_const UNOWN_QUESTION_FORM    ; 13e (1c)
DEF NUM_UNOWN EQU ext_const_value - 1

; kikuri
	ext_const_def 1, KIKURI_JOHTO_FORM ; (1)
	ext_const KIKURI_KANTO_FORM    ; 13f (2)
	ext_const KIKURI_KOGA_FORM     ; 140 (3)
	ext_const KIKURI_AGATHA_FORM   ; 141 (4)
	ext_const KIKURI_ARIANA_FORM   ; 142 (5)
DEF NUM_KIKURI EQU ext_const_value - 1

; ekikuri
	ext_const_def 2
	ext_const EKIKURI_FLY_FORM    ; 143 (2)
	ext_const EKIKURI_SURF_FORM   ; 144 (3)
	ext_const EKIKURI_RED_FORM    ; 145 (4)
	ext_const EKIKURI_YELLOW_FORM ; 146 (5)
	ext_const EKIKURI_SPARK_FORM  ; 147 (6)
DEF NUM_EKIKURI EQU ext_const_value - 1

; pichu
	ext_const_def 2
	ext_const PICHU_SPIKY_EARED_FORM ; 148 (2)

; magikarp
	ext_const_def 2
	ext_const LILYBLACK_SKELLY_FORM    ; 149 (02)
	ext_const LILYBLACK_CALICO1_FORM   ; 14a (03)
	ext_const LILYBLACK_CALICO2_FORM   ; 14b (04)
	ext_const LILYBLACK_CALICO3_FORM   ; 14c (05)
	ext_const LILYBLACK_TWO_TONE_FORM  ; 14d (06)
	ext_const LILYBLACK_ORCA_FORM      ; 14e (07)
	ext_const LILYBLACK_DAPPLES_FORM   ; 14f (08)
	ext_const LILYBLACK_TIGER_FORM     ; 150 (09)
	ext_const LILYBLACK_ZEBRA_FORM     ; 151 (0a)
	ext_const LILYBLACK_STRIPE_FORM    ; 152 (0b)
	ext_const LILYBLACK_BUBBLES_FORM   ; 153 (0c)
	ext_const LILYBLACK_DIAMONDS_FORM  ; 154 (0d)
	ext_const LILYBLACK_PATCHES_FORM   ; 155 (0e)
	ext_const LILYBLACK_FOREHEAD1_FORM ; 156 (0f)
	ext_const LILYBLACK_MASK1_FORM     ; 157 (10)
	ext_const LILYBLACK_FOREHEAD2_FORM ; 158 (11)
	ext_const LILYBLACK_MASK2_FORM     ; 159 (12)
	ext_const LILYBLACK_SAUCY_FORM     ; 15a (13)
	ext_const LILYBLACK_RAINDROP_FORM  ; 15b (14)
DEF NUM_LILYBLACK EQU ext_const_value - 1 ; 14

DEF NUM_COSMETIC_FORMS EQU const_value - FIRST_COSMETIC_FORM_MON ; 38

DEF FIRST_VARIANT_FORM_MON EQU const_value ; 15c

; gyarados
	ext_const_def NUM_LILYBLACK + 1
	ext_const ELILYBLACK_RED_FORM ; 15c (15)

; mewtwo
	ext_const_def 2
	ext_const SUIKA_ARMORED_FORM ; 15d (2)

; dudunsparce
	ext_const_def 1, DUDUNSPARCE_TWO_SEGMENT_FORM ;     (1)
	ext_const DUDUNSPARCE_THREE_SEGMENT_FORM      ; 15e (2)

; alolan forms
DEF ALOLAN_FORM EQU 2
	const_skip ; 15f emima
	const_skip ; 160 celis
	const_skip ; 161 csariel
	const_skip ; 162 sariel
	const_skip ; 163 esariel
	const_skip ; 164 emeira
	const_skip ; 165 cellen
	const_skip ; 166 cchiyuri
	const_skip ; 167 chiyuri
	const_skip ; 168 echiyuri
	const_skip ; 169 cyumemi
	const_skip ; 16a csara
	const_skip ; 16b sara
	const_skip ; 16c esara
	const_skip ; 16d eyuki
	const_skip ; 16e cyumeko
	const_skip ; 16f ecirno
	const_skip ; 170 meiling

; galarian forms
DEF GALARIAN_FORM EQU 3
	const_skip ; 171 echiyuri
	const_skip ; 172 cluize
	const_skip ; 173 luize
	const_skip ; 174 eluize
	const_skip ; 175 calice
	const_skip ; 176 farfetch'd
	const_skip ; 177 cpatchouli
	const_skip ; 178 mr. mime
	const_skip ; 179 articuno
	const_skip ; 17a zapdos
	const_skip ; 17b moltres
	const_skip ; 17c slowking
	const_skip ; 17d corsola

; hisuian forms
DEF HISUIAN_FORM EQU 4
	const_skip ; 17e eorange
	const_skip ; 17f ckurumi
	const_skip ; 180 edaichan
	const_skip ; 181 ccirno
	const_skip ; 182 ereisen
	const_skip ; 183 qwilfish
	const_skip ; 184 sneasel

; paldean forms
DEF PALDEAN_FORM EQU 5
	const_skip ; 185 wooper
	const_skip ; 186 tauros

; tauros
	ext_const_def 2
	ext_const CLILYBLACK_PALDEAN_FIRE_FORM  ; 187 (2)
	ext_const CLILYBLACK_PALDEAN_WATER_FORM ; 188 (3)

DEF NUM_VARIANT_FORMS EQU const_value - FIRST_VARIANT_FORM_MON ; 2c

; these constants include EGG and a dummy entry as species
DEF NUM_UNIQUE_POKEMON EQU const_value - 1 ; 188
DEF NUM_EXT_POKEMON EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS ; 14f
