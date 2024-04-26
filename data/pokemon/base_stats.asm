MACRO ev_yield
	def_evs \#
	db (EV_HP << 6) | (EV_ATK << 4) | (EV_DEF << 2) | EV_SPE
	db (EV_SAT << 6) | (EV_SDF << 4)
ENDM

MACRO abilities_for
; mon, ability1, ability2, hiddenability
	db \2, \3, \4
	def ABIL_\1_\4 = HIDDEN_ABILITY
	def ABIL_\1_\3 = ABILITY_2
	def ABIL_\1_\2 = ABILITY_1
ENDM

MACRO tmhm
	; initialize bytes to 0
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		def _tm{d:n} = 0
	endr
	; set bits of bytes
	for i, 1, _NARG + 1
		if DEF(\<i>_TMNUM)
			def n = (\<i>_TMNUM - 1) / 8
			def t = (\<i>_TMNUM - 1) % 8
			def _tm{d:n} |= 1 << t
		else
			fail "\<i> is not a TM, HM, or tutor move"
		endc
	endr
	; output bytes
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		db _tm{d:n}
	endr
ENDM

BaseData::
	table_width BASE_DATA_SIZE, BaseData
INCLUDE "data/pokemon/base_stats/creimu.asm"
INCLUDE "data/pokemon/base_stats/reimu.asm"
INCLUDE "data/pokemon/base_stats/ereimu.asm"
INCLUDE "data/pokemon/base_stats/cmarisa.asm"
INCLUDE "data/pokemon/base_stats/marisa.asm"
INCLUDE "data/pokemon/base_stats/emarisa.asm"
INCLUDE "data/pokemon/base_stats/csakuya.asm"
INCLUDE "data/pokemon/base_stats/sakuya.asm"
INCLUDE "data/pokemon/base_stats/esakuya.asm"
INCLUDE "data/pokemon/base_stats/cgyoku.asm"
INCLUDE "data/pokemon/base_stats/mgyoku.asm"
INCLUDE "data/pokemon/base_stats/fgyoku.asm"
INCLUDE "data/pokemon/base_stats/ogyoku.asm"
INCLUDE "data/pokemon/base_stats/cmagan.asm"
INCLUDE "data/pokemon/base_stats/magan.asm"
INCLUDE "data/pokemon/base_stats/emagan.asm"
INCLUDE "data/pokemon/base_stats/cmima.asm"
INCLUDE "data/pokemon/base_stats/mima.asm"
INCLUDE "data/pokemon/base_stats/rattata_plain.asm"
INCLUDE "data/pokemon/base_stats/celis_plain.asm"
INCLUDE "data/pokemon/base_stats/elis.asm"
INCLUDE "data/pokemon/base_stats/eelis.asm"
INCLUDE "data/pokemon/base_stats/ckikuri.asm"
INCLUDE "data/pokemon/base_stats/kikuri.asm"
INCLUDE "data/pokemon/base_stats/ekikuri.asm"
INCLUDE "data/pokemon/base_stats/csariel_plain.asm"
INCLUDE "data/pokemon/base_stats/sariel_plain.asm"
INCLUDE "data/pokemon/base_stats/esariel_plain.asm"
INCLUDE "data/pokemon/base_stats/ckongara.asm"
INCLUDE "data/pokemon/base_stats/kongara.asm"
INCLUDE "data/pokemon/base_stats/ekongara.asm"
INCLUDE "data/pokemon/base_stats/crika.asm"
INCLUDE "data/pokemon/base_stats/rika.asm"
INCLUDE "data/pokemon/base_stats/erika.asm"
INCLUDE "data/pokemon/base_stats/cmeira.asm"
INCLUDE "data/pokemon/base_stats/meira.asm"
INCLUDE "data/pokemon/base_stats/emeira_plain.asm"
INCLUDE "data/pokemon/base_stats/cellen_plain.asm"
INCLUDE "data/pokemon/base_stats/ellen.asm"
INCLUDE "data/pokemon/base_stats/eellen.asm"
INCLUDE "data/pokemon/base_stats/ckotohime.asm"
INCLUDE "data/pokemon/base_stats/kotohime.asm"
INCLUDE "data/pokemon/base_stats/ekotohime.asm"
INCLUDE "data/pokemon/base_stats/ckana.asm"
INCLUDE "data/pokemon/base_stats/kana.asm"
INCLUDE "data/pokemon/base_stats/ekana.asm"
INCLUDE "data/pokemon/base_stats/crikako.asm"
INCLUDE "data/pokemon/base_stats/rikako.asm"
INCLUDE "data/pokemon/base_stats/erikako.asm"
INCLUDE "data/pokemon/base_stats/cchiyuri_plain.asm"
INCLUDE "data/pokemon/base_stats/chiyuri_plain.asm"
INCLUDE "data/pokemon/base_stats/echiyuri_plain.asm"
INCLUDE "data/pokemon/base_stats/cyumemi_plain.asm"
INCLUDE "data/pokemon/base_stats/yumemi.asm"
INCLUDE "data/pokemon/base_stats/eyumemi.asm"
INCLUDE "data/pokemon/base_stats/corange.asm"
INCLUDE "data/pokemon/base_stats/orange.asm"
INCLUDE "data/pokemon/base_stats/eorange_plain.asm"
INCLUDE "data/pokemon/base_stats/ckurumi_plain.asm"
INCLUDE "data/pokemon/base_stats/kurumi.asm"
INCLUDE "data/pokemon/base_stats/ekurumi.asm"
INCLUDE "data/pokemon/base_stats/celly.asm"
INCLUDE "data/pokemon/base_stats/elly.asm"
INCLUDE "data/pokemon/base_stats/eelly.asm"
INCLUDE "data/pokemon/base_stats/cyuka.asm"
INCLUDE "data/pokemon/base_stats/yuka.asm"
INCLUDE "data/pokemon/base_stats/eyuka.asm"
INCLUDE "data/pokemon/base_stats/cmugetsu.asm"
INCLUDE "data/pokemon/base_stats/mugetsu.asm"
INCLUDE "data/pokemon/base_stats/emugetsu.asm"
INCLUDE "data/pokemon/base_stats/cgengetsu.asm"
INCLUDE "data/pokemon/base_stats/gengetsu.asm"
INCLUDE "data/pokemon/base_stats/egengetsu.asm"
INCLUDE "data/pokemon/base_stats/geodude_plain.asm"
INCLUDE "data/pokemon/base_stats/graveler_plain.asm"
INCLUDE "data/pokemon/base_stats/golem_plain.asm"
INCLUDE "data/pokemon/base_stats/ponyta_plain.asm"
INCLUDE "data/pokemon/base_stats/rapidash_plain.asm"
INCLUDE "data/pokemon/base_stats/slowpoke_plain.asm"
INCLUDE "data/pokemon/base_stats/slowbro_plain.asm"
INCLUDE "data/pokemon/base_stats/magnemite.asm"
INCLUDE "data/pokemon/base_stats/magneton.asm"
INCLUDE "data/pokemon/base_stats/farfetch_d_plain.asm"
INCLUDE "data/pokemon/base_stats/doduo.asm"
INCLUDE "data/pokemon/base_stats/dodrio.asm"
INCLUDE "data/pokemon/base_stats/seel.asm"
INCLUDE "data/pokemon/base_stats/dewgong.asm"
INCLUDE "data/pokemon/base_stats/grimer_plain.asm"
INCLUDE "data/pokemon/base_stats/muk_plain.asm"
INCLUDE "data/pokemon/base_stats/shellder.asm"
INCLUDE "data/pokemon/base_stats/cloyster.asm"
INCLUDE "data/pokemon/base_stats/gastly.asm"
INCLUDE "data/pokemon/base_stats/haunter.asm"
INCLUDE "data/pokemon/base_stats/gengar.asm"
INCLUDE "data/pokemon/base_stats/onix.asm"
INCLUDE "data/pokemon/base_stats/drowzee.asm"
INCLUDE "data/pokemon/base_stats/hypno.asm"
INCLUDE "data/pokemon/base_stats/krabby.asm"
INCLUDE "data/pokemon/base_stats/kingler.asm"
INCLUDE "data/pokemon/base_stats/voltorb_plain.asm"
INCLUDE "data/pokemon/base_stats/electrode_plain.asm"
INCLUDE "data/pokemon/base_stats/exeggcute.asm"
INCLUDE "data/pokemon/base_stats/exeggutor_plain.asm"
INCLUDE "data/pokemon/base_stats/cubone.asm"
INCLUDE "data/pokemon/base_stats/marowak_plain.asm"
INCLUDE "data/pokemon/base_stats/hitmonlee.asm"
INCLUDE "data/pokemon/base_stats/hitmonchan.asm"
INCLUDE "data/pokemon/base_stats/lickitung.asm"
INCLUDE "data/pokemon/base_stats/koffing.asm"
INCLUDE "data/pokemon/base_stats/weezing_plain.asm"
INCLUDE "data/pokemon/base_stats/rhyhorn.asm"
INCLUDE "data/pokemon/base_stats/rhydon.asm"
INCLUDE "data/pokemon/base_stats/chansey.asm"
INCLUDE "data/pokemon/base_stats/tangela.asm"
INCLUDE "data/pokemon/base_stats/kangaskhan.asm"
INCLUDE "data/pokemon/base_stats/horsea.asm"
INCLUDE "data/pokemon/base_stats/seadra.asm"
INCLUDE "data/pokemon/base_stats/goldeen.asm"
INCLUDE "data/pokemon/base_stats/seaking.asm"
INCLUDE "data/pokemon/base_stats/staryu.asm"
INCLUDE "data/pokemon/base_stats/starmie.asm"
INCLUDE "data/pokemon/base_stats/mr__mime_plain.asm"
INCLUDE "data/pokemon/base_stats/scyther.asm"
INCLUDE "data/pokemon/base_stats/jynx.asm"
INCLUDE "data/pokemon/base_stats/electabuzz.asm"
INCLUDE "data/pokemon/base_stats/magmar.asm"
INCLUDE "data/pokemon/base_stats/pinsir.asm"
INCLUDE "data/pokemon/base_stats/tauros_plain.asm"
INCLUDE "data/pokemon/base_stats/magikarp.asm"
INCLUDE "data/pokemon/base_stats/gyarados.asm"
INCLUDE "data/pokemon/base_stats/lapras.asm"
INCLUDE "data/pokemon/base_stats/ditto.asm"
INCLUDE "data/pokemon/base_stats/eevee.asm"
INCLUDE "data/pokemon/base_stats/vaporeon.asm"
INCLUDE "data/pokemon/base_stats/jolteon.asm"
INCLUDE "data/pokemon/base_stats/flareon.asm"
INCLUDE "data/pokemon/base_stats/porygon.asm"
INCLUDE "data/pokemon/base_stats/omanyte.asm"
INCLUDE "data/pokemon/base_stats/omastar.asm"
INCLUDE "data/pokemon/base_stats/kabuto.asm"
INCLUDE "data/pokemon/base_stats/kabutops.asm"
INCLUDE "data/pokemon/base_stats/aerodactyl.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/articuno_plain.asm"
INCLUDE "data/pokemon/base_stats/zapdos_plain.asm"
INCLUDE "data/pokemon/base_stats/moltres_plain.asm"
INCLUDE "data/pokemon/base_stats/dratini.asm"
INCLUDE "data/pokemon/base_stats/dragonair.asm"
INCLUDE "data/pokemon/base_stats/dragonite.asm"
INCLUDE "data/pokemon/base_stats/mewtwo_plain.asm"
INCLUDE "data/pokemon/base_stats/mew.asm"
INCLUDE "data/pokemon/base_stats/cyoumu.asm"
INCLUDE "data/pokemon/base_stats/youmu.asm"
INCLUDE "data/pokemon/base_stats/eyoumu.asm"
INCLUDE "data/pokemon/base_stats/creisen.asm"
INCLUDE "data/pokemon/base_stats/reisen.asm"
INCLUDE "data/pokemon/base_stats/ereisen_plain.asm"
INCLUDE "data/pokemon/base_stats/csanae.asm"
INCLUDE "data/pokemon/base_stats/sanae.asm"
INCLUDE "data/pokemon/base_stats/esanae.asm"
INCLUDE "data/pokemon/base_stats/sentret.asm"
INCLUDE "data/pokemon/base_stats/furret.asm"
INCLUDE "data/pokemon/base_stats/hoothoot.asm"
INCLUDE "data/pokemon/base_stats/noctowl.asm"
INCLUDE "data/pokemon/base_stats/ledyba.asm"
INCLUDE "data/pokemon/base_stats/ledian.asm"
INCLUDE "data/pokemon/base_stats/spinarak.asm"
INCLUDE "data/pokemon/base_stats/ariados.asm"
INCLUDE "data/pokemon/base_stats/crobat.asm"
INCLUDE "data/pokemon/base_stats/chinchou.asm"
INCLUDE "data/pokemon/base_stats/lanturn.asm"
INCLUDE "data/pokemon/base_stats/pichu.asm"
INCLUDE "data/pokemon/base_stats/cleffa.asm"
INCLUDE "data/pokemon/base_stats/igglybuff.asm"
INCLUDE "data/pokemon/base_stats/togepi.asm"
INCLUDE "data/pokemon/base_stats/togetic.asm"
INCLUDE "data/pokemon/base_stats/natu.asm"
INCLUDE "data/pokemon/base_stats/xatu.asm"
INCLUDE "data/pokemon/base_stats/mareep.asm"
INCLUDE "data/pokemon/base_stats/flaaffy.asm"
INCLUDE "data/pokemon/base_stats/ampharos.asm"
INCLUDE "data/pokemon/base_stats/bellossom.asm"
INCLUDE "data/pokemon/base_stats/marill.asm"
INCLUDE "data/pokemon/base_stats/azumarill.asm"
INCLUDE "data/pokemon/base_stats/sudowoodo.asm"
INCLUDE "data/pokemon/base_stats/politoed.asm"
INCLUDE "data/pokemon/base_stats/hoppip.asm"
INCLUDE "data/pokemon/base_stats/skiploom.asm"
INCLUDE "data/pokemon/base_stats/jumpluff.asm"
INCLUDE "data/pokemon/base_stats/aipom.asm"
INCLUDE "data/pokemon/base_stats/sunkern.asm"
INCLUDE "data/pokemon/base_stats/sunflora.asm"
INCLUDE "data/pokemon/base_stats/yanma.asm"
INCLUDE "data/pokemon/base_stats/wooper_plain.asm"
INCLUDE "data/pokemon/base_stats/quagsire.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/murkrow.asm"
INCLUDE "data/pokemon/base_stats/slowking_plain.asm"
INCLUDE "data/pokemon/base_stats/misdreavus.asm"
INCLUDE "data/pokemon/base_stats/unown.asm"
INCLUDE "data/pokemon/base_stats/wobbuffet.asm"
INCLUDE "data/pokemon/base_stats/girafarig.asm"
INCLUDE "data/pokemon/base_stats/pineco.asm"
INCLUDE "data/pokemon/base_stats/forretress.asm"
INCLUDE "data/pokemon/base_stats/dunsparce.asm"
INCLUDE "data/pokemon/base_stats/gligar.asm"
INCLUDE "data/pokemon/base_stats/steelix.asm"
INCLUDE "data/pokemon/base_stats/snubbull.asm"
INCLUDE "data/pokemon/base_stats/granbull.asm"
INCLUDE "data/pokemon/base_stats/qwilfish_plain.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/shuckle.asm"
INCLUDE "data/pokemon/base_stats/heracross.asm"
INCLUDE "data/pokemon/base_stats/sneasel_plain.asm"
INCLUDE "data/pokemon/base_stats/teddiursa.asm"
INCLUDE "data/pokemon/base_stats/ursaring.asm"
INCLUDE "data/pokemon/base_stats/slugma.asm"
INCLUDE "data/pokemon/base_stats/magcargo.asm"
INCLUDE "data/pokemon/base_stats/swinub.asm"
INCLUDE "data/pokemon/base_stats/piloswine.asm"
INCLUDE "data/pokemon/base_stats/corsola_plain.asm"
INCLUDE "data/pokemon/base_stats/remoraid.asm"
INCLUDE "data/pokemon/base_stats/octillery.asm"
INCLUDE "data/pokemon/base_stats/delibird.asm"
INCLUDE "data/pokemon/base_stats/mantine.asm"
INCLUDE "data/pokemon/base_stats/skarmory.asm"
INCLUDE "data/pokemon/base_stats/houndour.asm"
INCLUDE "data/pokemon/base_stats/houndoom.asm"
INCLUDE "data/pokemon/base_stats/kingdra.asm"
INCLUDE "data/pokemon/base_stats/phanpy.asm"
INCLUDE "data/pokemon/base_stats/donphan.asm"
INCLUDE "data/pokemon/base_stats/porygon2.asm"
INCLUDE "data/pokemon/base_stats/stantler.asm"
INCLUDE "data/pokemon/base_stats/smeargle.asm"
INCLUDE "data/pokemon/base_stats/tyrogue.asm"
INCLUDE "data/pokemon/base_stats/hitmontop.asm"
INCLUDE "data/pokemon/base_stats/smoochum.asm"
INCLUDE "data/pokemon/base_stats/elekid.asm"
INCLUDE "data/pokemon/base_stats/magby.asm"
INCLUDE "data/pokemon/base_stats/miltank.asm"
INCLUDE "data/pokemon/base_stats/blissey.asm"
INCLUDE "data/pokemon/base_stats/raikou.asm"
INCLUDE "data/pokemon/base_stats/entei.asm"
INCLUDE "data/pokemon/base_stats/suicune.asm"
INCLUDE "data/pokemon/base_stats/larvitar.asm"
INCLUDE "data/pokemon/base_stats/pupitar.asm"
INCLUDE "data/pokemon/base_stats/tyranitar.asm"
INCLUDE "data/pokemon/base_stats/lugia.asm"
INCLUDE "data/pokemon/base_stats/ho_oh.asm"
INCLUDE "data/pokemon/base_stats/celebi.asm"
INCLUDE "data/pokemon/base_stats/azurill.asm"
INCLUDE "data/pokemon/base_stats/wynaut.asm"
INCLUDE "data/pokemon/base_stats/ambipom.asm"
INCLUDE "data/pokemon/base_stats/egg.asm"
INCLUDE "data/pokemon/base_stats/egg.asm"
INCLUDE "data/pokemon/base_stats/mismagius.asm"
INCLUDE "data/pokemon/base_stats/honchkrow.asm"
INCLUDE "data/pokemon/base_stats/bonsly.asm"
INCLUDE "data/pokemon/base_stats/mime_jr_.asm"
INCLUDE "data/pokemon/base_stats/happiny.asm"
INCLUDE "data/pokemon/base_stats/munchlax.asm"
INCLUDE "data/pokemon/base_stats/mantyke.asm"
INCLUDE "data/pokemon/base_stats/weavile.asm"
INCLUDE "data/pokemon/base_stats/magnezone.asm"
INCLUDE "data/pokemon/base_stats/lickilicky.asm"
INCLUDE "data/pokemon/base_stats/rhyperior.asm"
INCLUDE "data/pokemon/base_stats/tangrowth.asm"
INCLUDE "data/pokemon/base_stats/electivire.asm"
INCLUDE "data/pokemon/base_stats/magmortar.asm"
INCLUDE "data/pokemon/base_stats/togekiss.asm"
INCLUDE "data/pokemon/base_stats/yanmega.asm"
INCLUDE "data/pokemon/base_stats/leafeon.asm"
INCLUDE "data/pokemon/base_stats/glaceon.asm"
INCLUDE "data/pokemon/base_stats/gliscor.asm"
INCLUDE "data/pokemon/base_stats/mamoswine.asm"
INCLUDE "data/pokemon/base_stats/porygon_z.asm"
INCLUDE "data/pokemon/base_stats/sylveon.asm"
INCLUDE "data/pokemon/base_stats/perrserker.asm"
INCLUDE "data/pokemon/base_stats/cursola.asm"
INCLUDE "data/pokemon/base_stats/sirfetch_d.asm"
INCLUDE "data/pokemon/base_stats/mr__rime.asm"
INCLUDE "data/pokemon/base_stats/wyrdeer.asm"
INCLUDE "data/pokemon/base_stats/kleavor.asm"
INCLUDE "data/pokemon/base_stats/ursaluna.asm"
INCLUDE "data/pokemon/base_stats/sneasler.asm"
INCLUDE "data/pokemon/base_stats/overqwil.asm"
INCLUDE "data/pokemon/base_stats/dudunsparce.asm"
INCLUDE "data/pokemon/base_stats/farigiraf.asm"
INCLUDE "data/pokemon/base_stats/clodsire.asm"
INCLUDE "data/pokemon/base_stats/annihilape.asm"
	assert_table_length NUM_SPECIES

INCLUDE "data/pokemon/base_stats/gyarados.asm" ; red

INCLUDE "data/pokemon/base_stats/mewtwo_armored.asm"

INCLUDE "data/pokemon/base_stats/dudunsparce.asm" ; three segment

INCLUDE "data/pokemon/base_stats/rattata_alolan.asm"
INCLUDE "data/pokemon/base_stats/celis_alolan.asm"
INCLUDE "data/pokemon/base_stats/csariel_alolan.asm"
INCLUDE "data/pokemon/base_stats/sariel_alolan.asm"
INCLUDE "data/pokemon/base_stats/esariel_alolan.asm"
INCLUDE "data/pokemon/base_stats/emeira_alolan.asm"
INCLUDE "data/pokemon/base_stats/cellen_alolan.asm"
INCLUDE "data/pokemon/base_stats/cchiyuri_alolan.asm"
INCLUDE "data/pokemon/base_stats/chiyuri_alolan.asm"
INCLUDE "data/pokemon/base_stats/echiyuri_alolan.asm"
INCLUDE "data/pokemon/base_stats/cyumemi_alolan.asm"
INCLUDE "data/pokemon/base_stats/geodude_alolan.asm"
INCLUDE "data/pokemon/base_stats/graveler_alolan.asm"
INCLUDE "data/pokemon/base_stats/golem_alolan.asm"
INCLUDE "data/pokemon/base_stats/grimer_alolan.asm"
INCLUDE "data/pokemon/base_stats/muk_alolan.asm"
INCLUDE "data/pokemon/base_stats/exeggutor_alolan.asm"
INCLUDE "data/pokemon/base_stats/marowak_alolan.asm"

INCLUDE "data/pokemon/base_stats/echiyuri_galarian.asm"
INCLUDE "data/pokemon/base_stats/ponyta_galarian.asm"
INCLUDE "data/pokemon/base_stats/rapidash_galarian.asm"
INCLUDE "data/pokemon/base_stats/slowpoke_galarian.asm"
INCLUDE "data/pokemon/base_stats/slowbro_galarian.asm"
INCLUDE "data/pokemon/base_stats/farfetch_d_galarian.asm"
INCLUDE "data/pokemon/base_stats/weezing_galarian.asm"
INCLUDE "data/pokemon/base_stats/mr__mime_galarian.asm"
INCLUDE "data/pokemon/base_stats/articuno_galarian.asm"
INCLUDE "data/pokemon/base_stats/zapdos_galarian.asm"
INCLUDE "data/pokemon/base_stats/moltres_galarian.asm"
INCLUDE "data/pokemon/base_stats/slowking_galarian.asm"
INCLUDE "data/pokemon/base_stats/corsola_galarian.asm"

INCLUDE "data/pokemon/base_stats/eorange_hisuian.asm"
INCLUDE "data/pokemon/base_stats/ckurumi_hisuian.asm"
INCLUDE "data/pokemon/base_stats/voltorb_hisuian.asm"
INCLUDE "data/pokemon/base_stats/electrode_hisuian.asm"
INCLUDE "data/pokemon/base_stats/ereisen_hisuian.asm"
INCLUDE "data/pokemon/base_stats/qwilfish_hisuian.asm"
INCLUDE "data/pokemon/base_stats/sneasel_hisuian.asm"

INCLUDE "data/pokemon/base_stats/wooper_paldean.asm"
INCLUDE "data/pokemon/base_stats/tauros_paldean.asm"
INCLUDE "data/pokemon/base_stats/tauros_paldean_fire.asm"
INCLUDE "data/pokemon/base_stats/tauros_paldean_water.asm"

	assert_table_length NUM_EXT_POKEMON
