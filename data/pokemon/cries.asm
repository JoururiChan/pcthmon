MACRO mon_cry
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	table_width MON_CRY_LENGTH, PokemonCries
	mon_cry CRY_CREIMU,   $080,  $081 ; CReimu
	mon_cry CRY_CREIMU,   $020,  $100 ; Reimu
	mon_cry CRY_CREIMU,   $000,  $140 ; TReimu
	mon_cry CRY_CMARISA,  $060,  $0c0 ; CMarisa
	mon_cry CRY_CMARISA,  $020,  $0c0 ; Marisa
	mon_cry CRY_CMARISA,  $000,  $100 ; AMarisa
	mon_cry CRY_CSAKUYA,    $060,  $0c0 ; CSakuya
	mon_cry CRY_CSAKUYA,    $020,  $0c0 ; Sakuya
	mon_cry CRY_HSAKUYA,   $000,  $100 ; HSakuya
	mon_cry CRY_CGYOKU,    $080,  $0a0 ; CGyoku
	mon_cry CRY_MGYOKU,     $0cc,  $081 ; MGyoku
	mon_cry CRY_CGYOKU,    $077,  $0c0 ; FGyoku
	mon_cry CRY_OGYOKU,      $0ee,  $081 ; OGyoku
	mon_cry CRY_HSAKUYA,   $0ff,  $081 ; CMagan
	mon_cry CRY_HSAKUYA,   $060,  $100 ; Magan
	mon_cry CRY_EMAGAN,      $0df,  $084 ; EMagan
	mon_cry CRY_CMIMA,   $028,  $140 ; CMima
	mon_cry CRY_CMIMA,   $011,  $17f ; Mima
	mon_cry CRY_EMIMA,     $000,  $100 ; EMima
	mon_cry CRY_EMIMA,     $020,  $17f ; CElis
	mon_cry CRY_CMAI,  $000,  $100 ; Elis
	mon_cry CRY_YUMEKO,    $040,  $120 ; EElis
	mon_cry CRY_CKIKURI,       $012,  $0c0 ; CKikuri
	mon_cry CRY_CKIKURI,       $0e0,  $090 ; Kikuri
	mon_cry CRY_CREIMU,   $0ee,  $081 ; EKikuri
	mon_cry CRY_CSARIEL,      $0ee,  $088 ; CSariel
	mon_cry CRY_CRIKA,   $020,  $0c0 ; Sariel
	mon_cry CRY_CRIKA,   $0ff,  $17f ; ESariel
	mon_cry CRY_CKONGARA,   $000,  $100 ; CKongara
	mon_cry CRY_CKONGARA,   $02c,  $160 ; Kongara
	mon_cry CRY_EKONGARA,   $000,  $100 ; EKongara
	mon_cry CRY_CRIKA,   $000,  $100 ; CRika
	mon_cry CRY_CRIKA,   $02c,  $140 ; Rika
	mon_cry CRY_CSARIEL,      $000,  $100 ; ARika
	mon_cry CRY_CMEIRA,    $0cc,  $081 ; CMeira
	mon_cry CRY_CMEIRA,    $0aa,  $0a0 ; Meira
	mon_cry CRY_EMEIRA,      $04f,  $090 ; EMeira
	mon_cry CRY_EMEIRA,      $088,  $0e0 ; CEllen
	mon_cry CRY_EMAGAN,      $0ff,  $0b5 ; Ellen
	mon_cry CRY_EMAGAN,      $068,  $0e0 ; EEllen
	mon_cry CRY_CSAKUYA,    $0e0,  $100 ; CKotohime
	mon_cry CRY_CSAKUYA,    $0fa,  $100 ; Kotohime
	mon_cry CRY_EKOTOHIME,      $0dd,  $081 ; EKotohime
	mon_cry CRY_EKOTOHIME,      $0aa,  $0c0 ; CKana
	mon_cry CRY_KANA,   $022,  $17f ; Kana
	mon_cry CRY_EKANA,       $020,  $160 ; EKana
	mon_cry CRY_EKANA,       $042,  $17f ; CRikako
	mon_cry CRY_RIKAKO,     $044,  $0c0 ; Rikako
	mon_cry CRY_RIKAKO,     $029,  $100 ; ARikako
	mon_cry CRY_CCHIYURI,     $0aa,  $081 ; CChiyuri
	mon_cry CRY_CCHIYURI,     $02a,  $090 ; Chiyuri
	mon_cry CRY_CMEIRA,    $077,  $090 ; EChiyuri
	mon_cry CRY_CMEIRA,    $099,  $17f ; CYumemi
	mon_cry CRY_YUMEMI,     $020,  $0e0 ; Yumemi
	mon_cry CRY_YUMEMI,     $0ff,  $0c0 ; EYumemi
	mon_cry CRY_EKONGARA,   $0dd,  $0e0 ; COrange
	mon_cry CRY_EKONGARA,   $0af,  $0c0 ; Orange
	mon_cry CRY_EORANGE,   $020,  $0c0 ; EOrange
	mon_cry CRY_OGYOKU,      $000,  $100 ; CKurumi
	mon_cry CRY_EMAGAN,      $0ff,  $17f ; Kurumi
	mon_cry CRY_EMAGAN,      $077,  $0e0 ; EKurumi
	mon_cry CRY_EMAGAN,      $000,  $17f ; CElly
	mon_cry CRY_MGYOKU,     $0c0,  $081 ; Elly
	mon_cry CRY_MGYOKU,     $0a8,  $140 ; EElly
	mon_cry CRY_MGYOKU,     $098,  $17f ; CYuka
	mon_cry CRY_EORANGE,   $0ee,  $081 ; Yuka
	mon_cry CRY_EORANGE,   $048,  $0e0 ; AYuka
	mon_cry CRY_EORANGE,   $008,  $140 ; CMugetsu
	mon_cry CRY_YUMEMI,     $055,  $081 ; Mugetsu
	mon_cry CRY_EMUGETSU,  $044,  $0a0 ; EMugetsu
	mon_cry CRY_EMUGETSU,  $066,  $14c ; CGengetsu
	mon_cry CRY_RIKAKO,     $000,  $100 ; Gengetsu
	mon_cry CRY_RIKAKO,     $0ee,  $17f ; EGengetsu
	mon_cry CRY_EMEIRA,      $0f0,  $090 ; CSara
	mon_cry CRY_EMEIRA,      $000,  $100 ; Sara
	mon_cry CRY_ESARA,       $0e0,  $0c0 ; ESara
	mon_cry CRY_EMUGETSU,  $000,  $100 ; CLuize
	mon_cry CRY_EMUGETSU,  $020,  $140 ; Luize
	mon_cry CRY_DLUIZE,    $000,  $100 ; DLuize
	mon_cry CRY_EORANGE,   $000,  $100 ; CAlice
	mon_cry CRY_MGYOKU,     $080,  $0e0 ; Alice
	mon_cry CRY_MGYOKU,     $020,  $140 ; AAlice
	mon_cry CRY_CMAI,  $0dd,  $081 ; CMai
	mon_cry CRY_CCHIYURI,     $0bb,  $081 ; Mai
	mon_cry CRY_CCHIYURI,     $099,  $0a0 ; EMai
	mon_cry CRY_CYUKI,        $088,  $140 ; CYuki
	mon_cry CRY_CYUKI,        $023,  $17f ; Yuki
	mon_cry CRY_EYUKI,      $000,  $100 ; EYuki
	mon_cry CRY_CYUMEKO,         $0ef,  $17f ; CYumeko
	mon_cry CRY_YUMEKO,    $000,  $100 ; Yumeko
	mon_cry CRY_YUMEKO,    $06f,  $160 ; EYumeko
	mon_cry CRY_MGYOKU,     $000,  $100 ; CShinki
	mon_cry CRY_MGYOKU,     $030,  $0c0 ; Shinki
	mon_cry CRY_CYUMEKO,         $000,  $17f ; EShinki
	mon_cry CRY_CKIKURI,       $0ff,  $140 ; CRumia
	mon_cry CRY_RUMIA,     $088,  $0a0 ; Rumia
	mon_cry CRY_RUMIA,     $0ee,  $0c0 ; ARumia
	mon_cry CRY_CDAICHAN,      $020,  $160 ; CDaichan
	mon_cry CRY_CDAICHAN,      $0ee,  $160 ; Daichan
	mon_cry CRY_DDAICHAN,     $0ed,  $100 ; DDaichan
	mon_cry CRY_DDAICHAN,     $0a8,  $110 ; CCirno
	mon_cry CRY_CCHIYURI,     $000,  $100 ; Cirno
	mon_cry CRY_RUMIA,     $000,  $100 ; SCirno
	mon_cry CRY_CMEIRA,    $000,  $100 ; CMeiling
	mon_cry CRY_EKOTOHIME,      $04f,  $0e0 ; Meiling
	mon_cry CRY_ESARA,       $080,  $140 ; AMeiling
	mon_cry CRY_CYUKI,        $0ee,  $140 ; CKoakuma
	mon_cry CRY_CYUKI,        $000,  $100 ; Koakuma
	mon_cry CRY_ESARA,       $0e6,  $15d ; HKoakuma
	mon_cry CRY_ESARA,       $0ff,  $17f ; CPatchouli
	mon_cry CRY_CMARISA,  $000,  $100 ; Patchouli
	mon_cry CRY_TPATCHOULI,      $000,  $100 ; TPatchouli
	mon_cry CRY_CMIMA,   $00a,  $140 ; CRemilia
	mon_cry CRY_ESARA,       $000,  $100 ; Remilia
	mon_cry CRY_SREMILIA,  $000,  $100 ; SRemilia
	mon_cry CRY_CMEIRA,    $099,  $090 ; CFlandre
	mon_cry CRY_CMEIRA,    $03c,  $081 ; Flandre
	mon_cry CRY_CGYOKU,    $080,  $0c0 ; AFlandre
	mon_cry CRY_CGYOKU,    $010,  $17f ; CLetty
	mon_cry CRY_EKANA,       $002,  $0a0 ; Letty
	mon_cry CRY_EKANA,       $000,  $100 ; DLetty
	mon_cry CRY_CDAICHAN,      $008,  $0c0 ; CChen
	mon_cry CRY_CGYOKU,    $000,  $100 ; Chen
	mon_cry CRY_RUMIA,     $0ff,  $17f ; HChen
	mon_cry CRY_DDAICHAN,     $08f,  $17f ; CLilyWhite
	mon_cry CRY_CMARISA,  $0ff,  $0b0 ; LilyWhite
	mon_cry CRY_CMIMA,   $000,  $100 ; ELilyWhite
	mon_cry CRY_CSAKUYA,    $011,  $0c0 ; CLilyBlack
	mon_cry CRY_CKIKURI,       $080,  $080 ; LilyBlack
	mon_cry CRY_CKIKURI,       $000,  $100 ; ELilyBlack
	mon_cry CRY_CLYRICA,      $000,  $100 ; CLyrica
	mon_cry CRY_EMAGAN,      $0ff,  $17f ; Lyrica
	mon_cry CRY_RIKAKO,     $088,  $0e0 ; TLyrica
	mon_cry CRY_RIKAKO,     $0aa,  $17f ; CMerlin
	mon_cry CRY_RIKAKO,     $03d,  $100 ; Merlin
	mon_cry CRY_RIKAKO,     $010,  $0a0 ; SMerlin
	mon_cry CRY_EMUGETSU,  $0aa,  $17f ; CLunasa
	mon_cry CRY_EORANGE,   $0f0,  $081 ; Lunasa
	mon_cry CRY_EORANGE,   $0ff,  $0c0 ; ALunasa
	mon_cry CRY_CGYOKU,    $0bb,  $0c0 ; CYuyuko
	mon_cry CRY_YUMEKO,    $0ee,  $081 ; Yuyuko
	mon_cry CRY_KANA,   $020,  $170 ; AYuyuko
	mon_cry CRY_EYUKI,      $055,  $081 ; CRan
	mon_cry CRY_CSARIEL,      $080,  $0c0 ; Ran
	mon_cry CRY_YUMEKO,    $0ff,  $100 ; TRan
	mon_cry CRY_CSARIEL,      $0f8,  $0c0 ; CYukari
	mon_cry CRY_CREIMU,   $060,  $0c0 ; Yukari
	mon_cry CRY_CREIMU,   $040,  $100 ; TYukari
	mon_cry CRY_CREIMU,   $03c,  $140 ; CSuika
	mon_cry CRY_EKANA,       $099,  $17f ; Suika
	mon_cry CRY_EKANA,       $0ee,  $17f ; TSuika
	mon_cry CRY_CYOUMU,  -$010,  $0b0 ; CYoumu
	mon_cry CRY_CYOUMU,  -$022,  $120 ; Youmu
	mon_cry CRY_CYOUMU,  -$0b7,  $200 ; SYoumu
	mon_cry CRY_CREISEN,   $347,  $080 ; CReisen
	mon_cry CRY_CREISEN,   $321,  $120 ; Reisen
	mon_cry CRY_TREISEN,  $f00,  $0d4 ; TReisen
	mon_cry CRY_CSANAE,    $46c,  $0e8 ; CSanae
	mon_cry CRY_CSANAE,    $440,  $110 ; Sanae
	mon_cry CRY_CSANAE,    $3fc,  $180 ; DSanae
	mon_cry CRY_SENTRET,     $08a,  $0b8 ; Sentret
	mon_cry CRY_SENTRET,     $06b,  $102 ; Furret
	mon_cry CRY_HOOTHOOT,    $091,  $0d8 ; Hoothoot
	mon_cry CRY_HOOTHOOT,    $000,  $1a0 ; Noctowl
	mon_cry CRY_LEDYBA,      $000,  $0de ; Ledyba
	mon_cry CRY_LEDYBA,     -$096,  $138 ; Ledian
	mon_cry CRY_SPINARAK,    $011,  $200 ; Spinarak
	mon_cry CRY_SPINARAK,   -$0ae,  $1e2 ; Ariados
	mon_cry CRY_CSAKUYA,   -$010,  $140 ; Crobat
	mon_cry CRY_CREISEN,   $3c9,  $140 ; Chinchou
	mon_cry CRY_CREISEN,   $2d0,  $110 ; Lanturn
	mon_cry CRY_PICHU,       $000,  $140 ; Pichu
	mon_cry CRY_BELLOSSOM,   $061,  $091 ; Cleffa
	mon_cry CRY_CYOUMU,   $0e8,  $0e8 ; Igglybuff
	mon_cry CRY_TOGEPI,      $010,  $100 ; Togepi
	mon_cry CRY_TOGETIC,     $03b,  $038 ; Togetic
	mon_cry CRY_NATU,       -$067,  $100 ; Natu
	mon_cry CRY_NATU,       -$0a7,  $168 ; Xatu
	mon_cry CRY_MAREEP,      $022,  $0d8 ; Mareep
	mon_cry CRY_MAREEP,     -$007,  $180 ; Flaaffy
	mon_cry CRY_AMPHAROS,   -$07c,  $0e8 ; Ampharos
	mon_cry CRY_BELLOSSOM,   $084,  $150 ; Bellossom
	mon_cry CRY_MARILL,      $11b,  $120 ; Marill
	mon_cry CRY_MARILL,      $0b6,  $180 ; Azumarill
	mon_cry CRY_BELLOSSOM,   $f40,  $180 ; Sudowoodo
	mon_cry CRY_BELLOSSOM,  -$2a3,  $1c8 ; Politoed
	mon_cry CRY_BELLOSSOM,   $03b,  $0c8 ; Hoppip
	mon_cry CRY_BELLOSSOM,   $027,  $138 ; Skiploom
	mon_cry CRY_BELLOSSOM,   $000,  $180 ; Jumpluff
	mon_cry CRY_TYROGUE,    -$051,  $0e8 ; Aipom
	mon_cry CRY_MARILL,      $12b,  $0b8 ; Sunkern
	mon_cry CRY_REMORAID,   -$020,  $180 ; Sunflora
	mon_cry CRY_CSANAE,    $031,  $0c8 ; Yanma
	mon_cry CRY_WOOPER,      $093,  $0af ; Wooper
	mon_cry CRY_WOOPER,     -$0c6,  $140 ; Quagsire
	mon_cry CRY_TYROGUE,     $0a2,  $140 ; Espeon
	mon_cry CRY_RIKAKO,    -$0e9,  $0f0 ; Umbreon
	mon_cry CRY_MARILL,     -$01f,  $180 ; Murkrow
	mon_cry CRY_SLOWKING,    $104,  $200 ; Slowking
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; Misdreavus
	mon_cry CRY_HOOTHOOT,    $162,  $100 ; Unown
	mon_cry CRY_AMPHAROS,    $27b,  $144 ; Wobbuffet
	mon_cry CRY_GIRAFARIG,   $041,  $200 ; Girafarig
	mon_cry CRY_SLOWKING,    $080,  $100 ; Pineco
	mon_cry CRY_SLOWKING,    $000,  $180 ; Forretress
	mon_cry CRY_DUNSPARCE,   $1c4,  $100 ; Dunsparce
	mon_cry CRY_GLIGAR,     -$102,  $100 ; Gligar
	mon_cry CRY_TREISEN,  $0ef,  $0f7 ; Steelix
	mon_cry CRY_DUNSPARCE,   $112,  $0e8 ; Snubbull
	mon_cry CRY_DUNSPARCE,   $000,  $180 ; Granbull
	mon_cry CRY_SLOWKING,    $160,  $0e0 ; Qwilfish
	mon_cry CRY_AMPHAROS,    $000,  $160 ; Scizor
	mon_cry CRY_DUNSPARCE,   $290,  $0a8 ; Shuckle
	mon_cry CRY_AMPHAROS,    $035,  $0e0 ; Heracross
	mon_cry CRY_WOOPER,      $053,  $0af ; Sneasel
	mon_cry CRY_TEDDIURSA,   $7a2,  $06e ; Teddiursa
	mon_cry CRY_TEDDIURSA,   $640,  $0d8 ; Ursaring
	mon_cry CRY_SLUGMA,     -$1d8,  $140 ; Slugma
	mon_cry CRY_MAGCARGO,   -$20d,  $1c0 ; Magcargo
	mon_cry CRY_CREISEN,   $1fe,  $140 ; Swinub
	mon_cry CRY_MAGCARGO,   -$109,  $100 ; Piloswine
	mon_cry CRY_MAGCARGO,    $0a1,  $0e8 ; Corsola
	mon_cry CRY_REMORAID,    $00d,  $100 ; Remoraid
	mon_cry CRY_CSANAE,    $000,  $180 ; Octillery
	mon_cry CRY_TEDDIURSA,   $002,  $06a ; Delibird
	mon_cry CRY_MANTINE,    -$0be,  $0f0 ; Mantine
	mon_cry CRY_AMPHAROS,    $8a9,  $180 ; Skarmory
	mon_cry CRY_CREISEN,   $039,  $140 ; Houndour
	mon_cry CRY_CSANAE,   -$10a,  $100 ; Houndoom
	mon_cry CRY_SLUGMA,      $2fb,  $100 ; Kingdra
	mon_cry CRY_SENTRET,     $048,  $230 ; Phanpy
	mon_cry CRY_DONPHAN,     $000,  $1a0 ; Donphan
	mon_cry CRY_GIRAFARIG,   $073,  $240 ; CLunasa2
	mon_cry CRY_TYROGUE,    -$160,  $180 ; Stantler
	mon_cry CRY_PICHU,      -$21a,  $1f0 ; Smeargle
	mon_cry CRY_TYROGUE,     $02c,  $108 ; Tyrogue
	mon_cry CRY_SLUGMA,      $000,  $100 ; Hitmontop
	mon_cry CRY_MARILL,      $068,  $100 ; Smoochum
	mon_cry CRY_REMORAID,   -$2d8,  $0b4 ; Elekid
	mon_cry CRY_TEDDIURSA,   $176,  $03a ; Magby
	mon_cry CRY_GLIGAR,     -$1cd,  $1a0 ; Miltank
	mon_cry CRY_SLOWKING,    $293,  $140 ; Blissey
	mon_cry CRY_RAIKOU,      $22e,  $120 ; Raikou
	mon_cry CRY_ENTEI,       $000,  $1a0 ; Entei
	mon_cry CRY_MAGCARGO,    $000,  $180 ; Suicune
	mon_cry CRY_RAIKOU,      $05f,  $0d0 ; Larvitar
	mon_cry CRY_SPINARAK,   -$1db,  $150 ; Pupitar
	mon_cry CRY_RAIKOU,     -$100,  $180 ; Tyranitar
	mon_cry CRY_TREISEN,  $000,  $100 ; Lugia
	mon_cry CRY_TYROGUE,     $000,  $180 ; HoOh
	mon_cry CRY_ENTEI,       $14a,  $111 ; Celebi
	mon_cry CRY_MARILL,      $11b,  $120 ; Azurill
	mon_cry CRY_AMPHAROS,    $27b,  $144 ; Wynaut
	mon_cry CRY_TYROGUE,    -$051,  $0e8 ; Ambipom
	mon_cry CRY_CRIKA,      0,     0 ; Egg
	mon_cry CRY_CRIKA,      0,     0 ; $100
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; Mismagius
	mon_cry CRY_MARILL,     -$01f,  $180 ; Honchkrow
	mon_cry CRY_BELLOSSOM,   $f40,  $180 ; Bonsly
	mon_cry CRY_CDAICHAN,      $008,  $0c0 ; Mime Jr.
	mon_cry CRY_CMIMA,   $00a,  $140 ; Happiny
	mon_cry CRY_EYUKI,      $055,  $081 ; Munchlax
	mon_cry CRY_MANTINE,    -$0be,  $0f0 ; Mantyke
	mon_cry CRY_WOOPER,      $053,  $0af ; Weavile
	mon_cry CRY_MGYOKU,     $020,  $140 ; Magnezone
	mon_cry CRY_CYUKI,        $000,  $100 ; Lickilicky
	mon_cry CRY_TPATCHOULI,      $000,  $100 ; Rhyperior
	mon_cry CRY_ESARA,       $000,  $100 ; Tangrowth
	mon_cry CRY_DDAICHAN,     $08f,  $17f ; Electivire
	mon_cry CRY_CMARISA,  $0ff,  $0b0 ; Magmortar
	assert_table_length NUM_SPECIES
