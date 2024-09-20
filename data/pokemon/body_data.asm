MACRO body_data
	db \1 ; height
	dw \2 ; cost
	dn SHAPE_\3, BODY_COLOR_\4
ENDM

PokemonBodyData:
; entries correspond to constants/pokemon_constants.asm
	table_width BODY_DATA_SIZE, PokemonBodyData
	body_data   7,   30, WINGS,    RED    ; CREIMU
	body_data  10,  60, WINGS,    RED  ; REIMU
	body_data  20, 150, WINGS,    RED  ; EREIMU
	body_data   6,  30, BIPEDAL, YELLOW    ; CMARISA
	body_data  11,  60, BIPEDAL, YELLOW    ; MARISA
	body_data  17,  150, BIPEDAL, YELLOW    ; EMARISA
	body_data   5,   30, HEAD, GRAY   ; CSAKUYA
	body_data  10,  60, HEAD, GRAY   ; SAKUYA
	body_data  16,  150, HEAD, GRAY   ; ESAKUYA
	body_data   3,   10, HEAD, PURPLE  ; CGYOKU
	body_data   7,   90, BIPEDAL,   BLUE  ; MGYOKU
	body_data  11,  90, BIPEDAL,   RED  ; FGYOKU
	body_data   3,   90, HEAD,    PURPLE  ; OGYOKU
	body_data   6,  20, MULTIBODY,   YELLOW ; CMAGAN
	body_data  10,  50, MULTIBODY,   PURPLE ; MAGAN
	body_data   3,   100, HEAD,        PURPLE  ; EMAGAN
	body_data  11,   50, HEAD_ARMS,        GREEN  ; CMIMA
	body_data  15,   110, HEAD_ARMS,        GREEN  ; MIMA
	body_data   3,   190, HEAD_ARMS,    GREEN ; EMIMA
	body_data   7,   30, WINGS,    YELLOW  ; CELIS
	body_data   3,   70, WINGS,        YELLOW  ; ELIS
	body_data  12,  140, WINGS,        YELLOW  ; EELIS
	body_data  20,   70, HEAD,   BROWN ; CKIKURI
	body_data  35,   120, HEAD_ARMS,   PURPLE ; KIKURI
	body_data   4,   165, BIPEDAL,    PURPLE ; EKIKURI
	body_data   8,   100, WINGS, WHITE ; CSARIEL
	body_data   6,   200, WINGS, WHITE ; SARIEL
	body_data  10,   300, WINGS, WHITE ; ESARIEL
	body_data   4,   100, HEAD_ARMS,    RED   ; CKONGARA
	body_data   8,  200, HEAD_ARMS,    RED   ; KONGARA
	body_data  13,  300, HEAD_ARMS,    RED   ; EKONGARA
	body_data   5,   20, HEAD_BASE,    RED ; CRIKA
	body_data   9,  90, BIPEDAL,    RED ; RIKA
	body_data  14,  180, MULTIBODY, PURPLE ; ERIKA
	body_data   6,   20, BIPEDAL, WHITE  ; CMEIRA
	body_data  13,   50, BIPEDAL, WHITE   ; MEIRA
	body_data   6,   110, BIPEDAL,    WHITE  ; EMEIRA
	body_data  11,   40, BIPEDAL,    RED ; CELLEN
	body_data   5,   70, BIPEDAL,      RED   ; ELLEN
	body_data  10,   100, BIPEDAL,      RED   ; EELLEN
	body_data   8,   10, BIPEDAL,        PURPLE ; CKOTOHIME
	body_data  16,   45, BIPEDAL,        PURPLE ; KOTOHIME
	body_data   5,   105, BIPEDAL,    PURPLE   ; EKOTOHIME
	body_data   8,   50, HEAD_ARMS,      BLUE   ; CKANA
	body_data  12,   80, HEAD_ARMS,      BLUE    ; KANA
	body_data   3,   105, HEAD_ARMS,    	 BLUE    ; EKANA
	body_data  10,   10, WINGS,    WHITE    ; CRIKAKO
	body_data  10,   30, WINGS,      WHITE ; RIKAKO
	body_data  15,   60, WINGS,   WHITE ; ERIKAKO
	body_data   2,    70, BIPEDAL,    BLUE  ; CCHIYURI
	body_data   7,   130, BIPEDAL,    BLUE  ; CHIYURI
	body_data   4,    170, QUADRUPED,    BLUE ; ECHIYURI
	body_data  10,   100, MULTIBODY,    RED ; CYUMEMI
	body_data   8,   210, MULTIBODY, RED ; YUMEMI
	body_data  17,   305, MULTIBODY, RED   ; EYUMEMI
	body_data   5,   20, QUADRUPED, YELLOW  ; CORANGE
	body_data  10,  90, QUADRUPED, YELLOW  ; ORANGE
	body_data   7,   130, QUADRUPED,    YELLOW  ; EORANGE
	body_data  19,  40, WINGS,    PURPLE  ; CKURUMI
	body_data   6,  90, WINGS,    PURPLE   ; KURUMI
	body_data  10,  125, WINGS,      PURPLE   ; EKURUMI
	body_data  13,   60, HEAD_ARMS,      GRAY   ; CELLY
	body_data   9,   90, HEAD_ARMS, GRAY  ; ELLY
	body_data  13,   150, HEAD_ARMS, GRAY  ; EELLY
	body_data  15,   140, HEAD_BASE,      GREEN  ; CYUKA
	body_data   8,   260, HEAD_BASE, GREEN   ; YUKA
	body_data  15,   450, HEAD_BASE,      GREEN   ; EYUKA
	body_data  16,  120, HEAD_LEGS,      BLUE  ; CMUGETSU
	body_data   7,   160, HEAD_LEGS,      BLUE  ; MUGETSU
	body_data  10,   200, HEAD_LEGS,    BLUE  ; EMUGETSU
	body_data  17,   125, WINGS,    PINK  ; CGENGETSU
	body_data   9,  170, WINGS,    PINK   ; GENGETSU
	body_data  16,   240, WINGS,    PINK   ; EGENGETSU
	body_data   4,   10, HEAD_ARMS,    RED  ; CSARA
	body_data  10,   40, BIPEDAL,      RED  ; SARA
	body_data  14,  100, BIPEDAL,      RED  ; ESARA
	body_data  10,   20, HEAD_ARMS,    PURPLE ; CLUIZE
	body_data  17,   70, HEAD_ARMS,    PURPLE ; LUIZE
	body_data  12,   170, HEAD_ARMS,    BLUE   ; ELUIZE
	body_data  16,   30, MULTIBODY,    RED   ; CALICE
	body_data   3,   60, MULTIBODY,    BLUE   ; ALICE
	body_data  10,  150, MULTIBODY,    GREEN   ; EALICE
	body_data   8,   55, WINGS,        WHITE  ; CMAI
	body_data  14,   90, WINGS,        WHITE  ; MAI
	body_data  18,   160, WINGS,        WHITE  ; EMAI
	body_data  11,   55, BIPEDAL,       BLACK  ; CYUKI
	body_data  17,   90, BIPEDAL,         BLACK  ; YUKI
	body_data   9,  160, BIPEDAL,    BLACK ; EYUKI
	body_data  12,   100, HEAD,         RED ; CYUMEKO
	body_data   3,   120, HEAD,         RED ; YUMEKO
	body_data  15,  175, HEAD,         RED ; EYUMEKO
	body_data  13,    130, MULTIWINGS,    RED ; CSHINKI
	body_data  16,    230, MULTIWINGS,    RED ; SHINKI
	body_data  15,   500, MULTIWINGS,    RED ; ESHINKI
	body_data  88,   10, HEAD_BASE,    BLACK   ; CRUMIA
	body_data  10,   40, BIPEDAL,      BLACK ; RUMIA
	body_data  16,   90, BIPEDAL,      BLACK ; ERUMIA
	body_data   4,   30, WINGS,    GREEN    ; CDAICHAN
	body_data  13,   70, WINGS,    GREEN    ; DAICHAN
	body_data   5,   140, WINGS,      GREEN    ; EDAICHAN
	body_data  12,   100, WINGS,         BLUE    ; CCIRNO
	body_data   4,   160, WINGS,    BLUE   ; CIRNO
	body_data  20,   250, WINGS,    BLUE ; ECIRNO
	body_data   4,   100, BIPEDAL_TAIL, GREEN  ; CMEILING
	body_data  10,   150, BIPEDAL_TAIL, GREEN  ; MEILING
	body_data  15,   240, BIPEDAL_TAIL, GREEN  ; EMEILING
	body_data  14,   140, WINGS,      RED  ; CKOAKUMA
	body_data  12,   210, WINGS,      RED   ; KOAKUMA
	body_data   6,   270, WINGS,       RED ; EKOAKUMA
	body_data  12,   200, HEAD_BASE,    PURPLE ; CPATCHOULI
	body_data  10,   350, HEAD_BASE,    PURPLE   ; PATCHOULI
	body_data  19,   500, HEAD_BASE, PURPLE   ; EPATCHOULI
	body_data  11,   210, WINGS, PINK   ; CREMILIA
	body_data  10,   300, WINGS,    PINK   ; REMILIA
	body_data  22,   600, WINGS, PINK  ; EREMILIA
	body_data   4,  500, MULTIWINGS,    RED   ; CFLANDRE
	body_data  12,   800, MULTIWINGS,    RED   ; FLANDRE
	body_data   6,  1200, MULTIWINGS,         RED    ; EFLANDRE
	body_data  13,  390, FINS,         RED    ; CLETTY
	body_data   8,  345, HEAD_BASE,    BROWN  ; LETTY
	body_data  11,  800, HEAD_BASE,    PURPLE ; ELETTY
	body_data  13,  545, BIPEDAL,      PINK   ; CCHEN
	body_data  15,  560, MULTIWINGS,   GREEN  ; CHEN
	body_data  14,  406, BIPEDAL,      RED    ; ECHEN
	body_data  11,  300, BIPEDAL_TAIL, YELLOW ; CLILYWHITE
	body_data  13,  445, BIPEDAL_TAIL, RED    ; LILYWHITE
	body_data  15,  550, BIPEDAL,      BROWN  ; ELILYWHITE
	body_data  14,  884, QUADRUPED,    BROWN  ; CLILYBLACK
	body_data   9,  100, FINS,         RED    ; LILYBLACK
	body_data  65, 2350, SERPENTINE,   BLUE   ; ELILYBLACK
	body_data  25, 2200, FINS,         BLUE   ; CLYRICA
	body_data   3,   40, HEAD,         PURPLE ; LYRICA
	body_data   3,   65, QUADRUPED,    BROWN  ; ELYRICA
	body_data  10,  290, QUADRUPED,    BLUE   ; CMERLIN
	body_data   8,  245, QUADRUPED,    YELLOW ; MERLIN
	body_data   9,  250, QUADRUPED,    RED    ; EMERLIN
	body_data   8,  365, HEAD_LEGS,    PINK   ; CLUNASA
	body_data   4,   75, TENTACLES,    BLUE   ; LUNASA
	body_data  10,  350, TENTACLES,    BLUE   ; ELUNASA
	body_data   5,  115, INSECTOID,    BROWN  ; CYUYUKO
	body_data  13,  405, BIPEDAL_TAIL, BROWN  ; YUYUKO
	body_data  18,  590, WINGS,        PURPLE ; EYUYUKO
	body_data  21, 4600, BIPEDAL,      BLACK  ; CRAN
	body_data  17,  554, WINGS,        BLUE   ; RAN
	body_data  16,  526, WINGS,        YELLOW ; ERAN
	body_data  20,  600, WINGS,        YELLOW ; CYUKARI
	body_data  18,   33, SERPENTINE,   BLUE   ; YUKARI
	body_data  40,  165, SERPENTINE,   BLUE   ; EYUKARI
	body_data  22, 2100, BIPEDAL_TAIL, BROWN  ; CSUIKA
	body_data  20, 1220, BIPEDAL_TAIL, PURPLE ; SUIKA
	body_data   4,   40, BIPEDAL_TAIL, PINK   ; ESUIKA
	body_data   9,   64, MULTIBODY,    GREEN  ; CYOUMU
	body_data  12,  158, MULTIBODY,    GREEN  ; YOUMU
	body_data  18, 1005, MULTIBODY,    GREEN  ; EYOUMU
	body_data   5,   79, BIPEDAL,      PINK ; CREISEN
	body_data   9,  190, BIPEDAL,    PINK ; REISEN
	body_data  17,  795, BIPEDAL,    PINK ; EREISEN
	body_data   6,   95, BIPEDAL, BLUE   ; CSANAE
	body_data  11,  250, BIPEDAL, BLUE   ; SANAE
	body_data  23,  888, BIPEDAL, BLUE   ; ESANAE
	body_data   8,   60, QUADRUPED,    BROWN  ; SENTRET
	body_data  18,  325, QUADRUPED,    BROWN  ; FURRET
	body_data   7,  212, WINGS,        BROWN  ; HOOTHOOT
	body_data  16,  408, WINGS,        BROWN  ; NOCTOWL
	body_data  10,  108, WINGS,        RED    ; LEDYBA
	body_data  14,  356, WINGS,        RED    ; LEDIAN
	body_data   5,   85, INSECTOID,    GREEN  ; SPINARAK
	body_data  11,  335, INSECTOID,    RED    ; ARIADOS
	body_data  18,  750, MULTIWINGS,   PURPLE ; CROBAT
	body_data   5,  120, FINS,         BLUE   ; CHINCHOU
	body_data  12,  225, FINS,         BLUE   ; LANTURN
	body_data   3,   20, QUADRUPED,    YELLOW ; PICHU
	body_data   3,   30, BIPEDAL_TAIL, PINK   ; CLEFFA
	body_data   3,   10, BIPEDAL,      PINK   ; IGGLYBUFF
	body_data   3,   15, BIPEDAL,      WHITE  ; TOGEPI
	body_data   6,   32, BIPEDAL,      WHITE  ; TOGETIC
	body_data   2,   20, WINGS,        GREEN  ; NATU
	body_data  15,  150, WINGS,        GREEN  ; XATU
	body_data   6,   78, QUADRUPED,    WHITE  ; MAREEP
	body_data   8,  133, BIPEDAL_TAIL, PINK   ; FLAAFFY
	body_data  14,  615, BIPEDAL_TAIL, YELLOW ; AMPHAROS
	body_data   4,   58, BIPEDAL,      GREEN  ; BELLOSSOM
	body_data   4,   85, BIPEDAL_TAIL, BLUE   ; MARILL
	body_data   8,  285, BIPEDAL_TAIL, BLUE   ; AZUMARILL
	body_data  12,  380, BIPEDAL,      BROWN  ; SUDOWOODO
	body_data  11,  339, BIPEDAL,      GREEN  ; POLITOED
	body_data   4,    5, BIPEDAL_TAIL, PINK   ; HOPPIP
	body_data   6,   10, BIPEDAL_TAIL, GREEN  ; SKIPLOOM
	body_data   8,   30, BIPEDAL_TAIL, BLUE   ; JUMPLUFF
	body_data   8,  115, BIPEDAL_TAIL, PURPLE ; AIPOM
	body_data   3,   18, HEAD,         YELLOW ; SUNKERN
	body_data   8,   85, BIPEDAL,      YELLOW ; SUNFLORA
	body_data  12,  380, MULTIWINGS,   RED    ; YANMA
	body_data   4,   85, HEAD_LEGS,    BLUE   ; WOOPER
	body_data  14,  750, BIPEDAL_TAIL, BLUE   ; QUAGSIRE
	body_data   9,  265, QUADRUPED,    PURPLE ; ESPEON
	body_data  10,  270, QUADRUPED,    BLACK  ; UMBREON
	body_data   5,   21, WINGS,        BLACK  ; MURKROW
	body_data  20,  795, BIPEDAL_TAIL, PINK   ; SLOWKING
	body_data   7,   10, HEAD,         GRAY   ; MISDREAVUS
	body_data   5,   50, HEAD,         BLACK  ; UNOWN
	body_data  13,  285, HEAD_BASE,    BLUE   ; WOBBUFFET
	body_data  15,  415, QUADRUPED,    YELLOW ; GIRAFARIG
	body_data   6,   72, HEAD,         GRAY   ; PINECO
	body_data  12, 1258, HEAD,         PURPLE ; FORRETRESS
	body_data  15,  140, SERPENTINE,   YELLOW ; DUNSPARCE
	body_data  11,  648, WINGS,        PURPLE ; GLIGAR
	body_data  92, 4000, SERPENTINE,   GRAY   ; STEELIX
	body_data   6,   78, BIPEDAL,      PINK   ; SNUBBULL
	body_data  14,  487, BIPEDAL_TAIL, PURPLE ; GRANBULL
	body_data   5,   39, FINS,         GRAY   ; QWILFISH
	body_data  18, 1180, MULTIWINGS,   RED    ; SCIZOR
	body_data   6,  205, INSECTOID,    YELLOW ; SHUCKLE
	body_data  15,  540, BIPEDAL,      BLUE   ; HERACROSS
	body_data   9,  280, BIPEDAL_TAIL, BLACK  ; SNEASEL
	body_data   6,   88, BIPEDAL_TAIL, BROWN  ; TEDDIURSA
	body_data  18, 1258, BIPEDAL_TAIL, BROWN  ; URSARING
	body_data   7,  350, SERPENTINE,   RED    ; SLUGMA
	body_data   8,  550, SERPENTINE,   RED    ; MAGCARGO
	body_data   4,   65, QUADRUPED,    BROWN  ; SWINUB
	body_data  11,  558, QUADRUPED,    BROWN  ; PILOSWINE
	body_data   6,   50, INSECTOID,    PINK   ; CORSOLA
	body_data   6,  120, FINS,         GRAY   ; REMORAID
	body_data   9,  285, TENTACLES,    RED    ; OCTILLERY
	body_data   9,  160, WINGS,        RED    ; DELIBIRD
	body_data  21, 2200, WINGS,        PURPLE ; MANTINE
	body_data  17,  505, WINGS,        GRAY   ; SKARMORY
	body_data   6,  108, QUADRUPED,    BLACK  ; HOUNDOUR
	body_data  14,  350, QUADRUPED,    BLACK  ; HOUNDOOM
	body_data  18, 1520, HEAD_BASE,    BLUE   ; KINGDRA
	body_data   5,  335, QUADRUPED,    BLUE   ; PHANPY
	body_data  11, 1200, QUADRUPED,    GRAY   ; DONPHAN
	body_data   6,  325, HEAD_LEGS,    RED    ; CLUNASA2
	body_data  14,  712, QUADRUPED,    BROWN  ; STANTLER
	body_data  12,  580, BIPEDAL_TAIL, WHITE  ; SMEARGLE
	body_data   7,  210, BIPEDAL,      PURPLE ; TYROGUE
	body_data  14,  480, BIPEDAL_TAIL, BROWN  ; HITMONTOP
	body_data   4,   60, BIPEDAL,      PINK   ; SMOOCHUM
	body_data   6,  235, BIPEDAL,      YELLOW ; ELEKID
	body_data   7,  214, BIPEDAL_TAIL, RED    ; MAGBY
	body_data  12,  755, BIPEDAL_TAIL, PINK   ; MILTANK
	body_data  15,  468, BIPEDAL,      PINK   ; BLISSEY
	body_data  19, 1780, QUADRUPED,    YELLOW ; RAIKOU
	body_data  21, 1980, QUADRUPED,    BROWN  ; ENTEI
	body_data  20, 1870, QUADRUPED,    BLUE   ; SUICUNE
	body_data   6,  720, BIPEDAL_TAIL, GREEN  ; LARVITAR
	body_data  12, 1520, SERPENTINE,   GRAY   ; PUPITAR
	body_data  20, 2020, BIPEDAL_TAIL, GREEN  ; TYRANITAR
	body_data  52, 2160, WINGS,        WHITE  ; LUGIA
	body_data  38, 1990, WINGS,        RED    ; HO_OH
	body_data   6,   50, BIPEDAL,      GREEN  ; CELEBI
	body_data   2,   20, HEAD_LEGS,    BLUE   ; AZURILL
	body_data   6,  140, BIPEDAL_TAIL, BLUE   ; WYNAUT
	body_data  12,  203, BIPEDAL_TAIL, PURPLE ; AMBIPOM
	body_data   0,    0, HEAD,         RED    ; EGG
	body_data   0,    0, HEAD,         RED    ; $100
	body_data   9,   44, HEAD,         PURPLE ; MISMAGIUS
	body_data   9,  273, WINGS,        BLACK  ; HONCHKROW
	body_data   5,  150, HEAD_LEGS,    BROWN  ; BONSLY
	body_data   6,  130, BIPEDAL,      PINK   ; MIME_JR_
	body_data   6,  244, BIPEDAL,      PINK   ; HAPPINY
	body_data   6, 1050, BIPEDAL,      BLACK  ; MUNCHLAX
	body_data  10,  650, WINGS,        BLUE   ; MANTYKE
	body_data  11,  340, BIPEDAL_TAIL, BLACK  ; WEAVILE
	body_data  12, 1800, HEAD_ARMS,    GRAY   ; MAGNEZONE
	body_data  17, 1400, BIPEDAL,      PINK   ; LICKILICKY
	body_data  24, 2828, BIPEDAL_TAIL, GRAY   ; RHYPERIOR
	body_data  20, 1286, BIPEDAL,      BLUE   ; TANGROWTH
	body_data  18, 1386, BIPEDAL_TAIL, YELLOW ; ELECTIVIRE
	body_data  16,  680, BIPEDAL_TAIL, RED    ; MAGMORTAR
	body_data  15,  380, WINGS,        WHITE  ; TOGEKISS
	body_data  19,  515, MULTIWINGS,   GREEN  ; YANMEGA
	body_data  10,  255, QUADRUPED,    GREEN  ; LEAFEON
	body_data   8,  259, QUADRUPED,    BLUE   ; GLACEON
	body_data  20,  425, WINGS,        PURPLE ; GLISCOR
	body_data  25, 2910, QUADRUPED,    BROWN  ; MAMOSWINE
	body_data   9,  340, HEAD_ARMS,    RED    ; CLUNASA_Z
	body_data  10,  235, QUADRUPED,    PINK   ; SYLVEON
	body_data   8,  280, BIPEDAL_TAIL, BROWN  ; PERRSERKER
	body_data  10,    4, HEAD_ARMS,    WHITE  ; CURSOLA
	body_data   8, 1170, WINGS,        WHITE  ; SIRFETCH_D
	body_data  15,  582, BIPEDAL,      PURPLE ; MR__RIME
	body_data  18,  951, QUADRUPED,    GRAY   ; WYRDEER
	body_data  18,  890, MULTIWINGS,   BROWN  ; KLEAVOR
	body_data  24, 2900, BIPEDAL_TAIL, BROWN  ; URSALUNA
	body_data  13,  430, BIPEDAL_TAIL, GRAY   ; SNEASLER
	body_data  25,  605, FINS,         BLACK  ; OVERQWIL
	body_data  36,  392, SERPENTINE,   YELLOW ; DUDUNSPARCE
	body_data  32, 1600, QUADRUPED,    YELLOW ; FARIGIRAF
	body_data  18, 2230, QUADRUPED,    BROWN  ; CLODSIRE
	body_data  12,  560, BIPEDAL_TAIL, GRAY   ; ANNIHILAPE
	assert_table_length NUM_SPECIES

	body_data  65, 2350, SERPENTINE,   RED    ; ELILYBLACK (ELILYBLACK_RED_FORM)

	body_data  22, 1370, BIPEDAL_TAIL, GRAY   ; SUIKA (SUIKA_ARMORED_FORM)

	body_data  45,  474, SERPENTINE,   YELLOW ; DUDUNSPARCE (DUDUNSPARCE_THREE_SEGMENT_FORM)

	body_data   3,   38, QUADRUPED,    BLACK  ; EMIMA (ALOLAN_FORM)
	body_data   7,  255, QUADRUPED,    BLACK  ; CELIS (ALOLAN_FORM)
	body_data   7,  210, BIPEDAL_TAIL, BROWN  ; CSARIEL (ALOLAN_FORM)
	body_data   7,  400, BIPEDAL_TAIL, WHITE  ; SARIEL (ALOLAN_FORM)
	body_data  12,  550, BIPEDAL_TAIL, BLUE   ; ESARIEL (ALOLAN_FORM)
	body_data   6,   99, QUADRUPED,    WHITE  ; EMEIRA (ALOLAN_FORM)
	body_data  11,  199, QUADRUPED,    BLUE   ; CELLEN (ALOLAN_FORM)
	body_data   2,   10, HEAD_BASE,    BROWN  ; CCHIYURI (ALOLAN_FORM)
	body_data   7,  666, MULTIBODY,    BROWN  ; CHIYURI (ALOLAN_FORM)
	body_data   4,   42, QUADRUPED,    BLUE   ; ECHIYURI (ALOLAN_FORM)
	body_data  11,  330, QUADRUPED,    BLUE   ; CYUMEMI (ALOLAN_FORM)
	body_data   4,  203, HEAD_ARMS,    GRAY   ; CSARA (ALOLAN_FORM)
	body_data  10, 1100, BIPEDAL,      GRAY   ; SARA (ALOLAN_FORM)
	body_data  17, 3160, BIPEDAL,      GRAY   ; ESARA (ALOLAN_FORM)
	body_data   7,  420, HEAD_ARMS,    GREEN  ; EYUKI (ALOLAN_FORM)
	body_data  10,  520, HEAD_ARMS,    GREEN  ; CYUMEKO (ALOLAN_FORM)
	body_data 109, 4156, HEAD_LEGS,    YELLOW ; ECIRNO (ALOLAN_FORM)
	body_data  10,  340, BIPEDAL_TAIL, PURPLE ; MEILING (ALOLAN_FORM)

	body_data   4,   75, BIPEDAL_TAIL, BROWN  ; ECHIYURI (GALARIAN_FORM)
	body_data   8,  240, QUADRUPED,    WHITE  ; CLUIZE (GALARIAN_FORM)
	body_data  17,  800, QUADRUPED,    WHITE  ; LUIZE (GALARIAN_FORM)
	body_data  12,  360, QUADRUPED,    PINK   ; ELUIZE (GALARIAN_FORM)
	body_data  16,  705, BIPEDAL_TAIL, PINK   ; CALICE (GALARIAN_FORM)
	body_data   8,  420, WINGS,        BROWN  ; CMAI (GALARIAN_FORM)
	body_data  30,  160, MULTIBODY,    GRAY   ; CPATCHOULI (GALARIAN_FORM)
	body_data  14,  568, BIPEDAL,      WHITE  ; CCHEN (GALARIAN_FORM)
	body_data  17,  509, WINGS,        PURPLE ; RAN (GALARIAN_FORM)
	body_data  16,  582, WINGS,        YELLOW ; ERAN (GALARIAN_FORM)
	body_data  20,  660, WINGS,        RED    ; CYUKARI (GALARIAN_FORM)
	body_data  18,  795, BIPEDAL_TAIL, PINK   ; SLOWKING (GALARIAN_FORM)
	body_data   6,    5, INSECTOID,    WHITE  ; CORSOLA (GALARIAN_FORM)

	body_data   8,  227, QUADRUPED,    RED    ; EORANGE (HISUIAN_FORM)
	body_data  20, 1680, QUADRUPED,    RED    ; KURUMI (HISUIAN_FORM)
	body_data   5,  130, HEAD,         BROWN  ; EDAICHAN (HISUIAN_FORM)
	body_data  12,  710, HEAD,         BROWN  ; CCIRNO (HISUIAN_FORM)
	body_data  16,  698, QUADRUPED,    YELLOW ; EREISEN (HISUIAN_FORM)
	body_data   5,   39, FINS,         BLACK  ; QWILFISH (HISUIAN_FORM)
	body_data   9,  270, BIPEDAL_TAIL, GRAY   ; SNEASEL (HISUIAN_FORM)

	body_data   4,  110, HEAD_LEGS,    BROWN  ; WOOPER (PALDEAN_FORM)
	body_data  14, 1150, QUADRUPED,    BLACK  ; CLILYBLACK (PALDEAN_FORM)
	body_data  14,  850, QUADRUPED,    BLACK  ; CLILYBLACK (CLILYBLACK_PALDEAN_FIRE_FORM)
	body_data  14, 1100, QUADRUPED,    BLACK  ; CLILYBLACK (CLILYBLACK_PALDEAN_WATER_FORM)

	assert_table_length NUM_EXT_POKEMON
