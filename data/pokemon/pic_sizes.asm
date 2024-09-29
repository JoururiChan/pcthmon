MACRO size_nybble
	DEF size_value = (\1) | (size_value << 4)
	DEF list_index += 1
	if list_index % 2 == 0
		db size_value
		DEF size_value = 0
	endc
ENDM

; Terrible hack because we can't read files into strings (yet!)
	pushc
	setcharmap main ; ASCII
	assert "U" == $55 && "f" == $66 && "w" == $77
	DEF U EQUS " size_nybble 5"
	DEF f EQUS " size_nybble 6"
	DEF w EQUS " size_nybble 7"
	popc

PokemonPicSizes::
	list_start PokemonPicSizes
	DEF size_value = 0
INCLUDE "gfx/pokemon/creimu/front.dimensions"
INCLUDE "gfx/pokemon/reimu/front.dimensions"
INCLUDE "gfx/pokemon/treimu/front.dimensions"
INCLUDE "gfx/pokemon/cmarisa/front.dimensions"
INCLUDE "gfx/pokemon/marisa/front.dimensions"
INCLUDE "gfx/pokemon/amarisa/front.dimensions"
INCLUDE "gfx/pokemon/csakuya/front.dimensions"
INCLUDE "gfx/pokemon/sakuya/front.dimensions"
INCLUDE "gfx/pokemon/hsakuya/front.dimensions"
INCLUDE "gfx/pokemon/cgyoku/front.dimensions"
INCLUDE "gfx/pokemon/mgyoku/front.dimensions"
INCLUDE "gfx/pokemon/fgyoku/front.dimensions"
INCLUDE "gfx/pokemon/ogyoku/front.dimensions"
INCLUDE "gfx/pokemon/cmagan/front.dimensions"
INCLUDE "gfx/pokemon/magan/front.dimensions"
INCLUDE "gfx/pokemon/cmima/front.dimensions"
INCLUDE "gfx/pokemon/mima/front.dimensions"
INCLUDE "gfx/pokemon/celis/front.dimensions"
INCLUDE "gfx/pokemon/elis/front.dimensions"
INCLUDE "gfx/pokemon/ckikuri/front.dimensions"
INCLUDE "gfx/pokemon/kikuri_johto/front.dimensions"
INCLUDE "gfx/pokemon/csariel/front.dimensions"
INCLUDE "gfx/pokemon/sariel/front.dimensions"
INCLUDE "gfx/pokemon/ckongara/front.dimensions"
INCLUDE "gfx/pokemon/kongara/front.dimensions"
INCLUDE "gfx/pokemon/crika/front.dimensions"
INCLUDE "gfx/pokemon/rika/front.dimensions"
INCLUDE "gfx/pokemon/arika/front.dimensions"
INCLUDE "gfx/pokemon/cmeira/front.dimensions"
INCLUDE "gfx/pokemon/meira/front.dimensions"
INCLUDE "gfx/pokemon/cellen/front.dimensions"
INCLUDE "gfx/pokemon/ellen/front.dimensions"
INCLUDE "gfx/pokemon/ckotohime/front.dimensions"
INCLUDE "gfx/pokemon/kotohime/front.dimensions"
INCLUDE "gfx/pokemon/ckana/front.dimensions"
INCLUDE "gfx/pokemon/kana/front.dimensions"
INCLUDE "gfx/pokemon/crikako/front.dimensions"
INCLUDE "gfx/pokemon/rikako/front.dimensions"
INCLUDE "gfx/pokemon/cchiyuri/front.dimensions"
INCLUDE "gfx/pokemon/chiyuri/front.dimensions"
INCLUDE "gfx/pokemon/cyumemi/front.dimensions"
INCLUDE "gfx/pokemon/yumemi/front.dimensions"
INCLUDE "gfx/pokemon/corange/front.dimensions"
INCLUDE "gfx/pokemon/orange/front.dimensions"
INCLUDE "gfx/pokemon/ckurumi/front.dimensions"
INCLUDE "gfx/pokemon/kurumi/front.dimensions"
INCLUDE "gfx/pokemon/celly/front.dimensions"
INCLUDE "gfx/pokemon/elly/front.dimensions"
INCLUDE "gfx/pokemon/cyuka/front.dimensions"
INCLUDE "gfx/pokemon/yuka/front.dimensions"
INCLUDE "gfx/pokemon/ayuka/front.dimensions"
INCLUDE "gfx/pokemon/cmugetsu/front.dimensions"
INCLUDE "gfx/pokemon/mugetsu/front.dimensions"
INCLUDE "gfx/pokemon/cgengetsu/front.dimensions"
INCLUDE "gfx/pokemon/gengetsu/front.dimensions"
INCLUDE "gfx/pokemon/csara/front.dimensions"
INCLUDE "gfx/pokemon/sara/front.dimensions"
INCLUDE "gfx/pokemon/cluize/front.dimensions"
INCLUDE "gfx/pokemon/luize/front.dimensions"
INCLUDE "gfx/pokemon/dluize/front.dimensions"
INCLUDE "gfx/pokemon/calice/front.dimensions"
INCLUDE "gfx/pokemon/alice/front.dimensions"
INCLUDE "gfx/pokemon/aalice/front.dimensions"
INCLUDE "gfx/pokemon/cmai/front.dimensions"
INCLUDE "gfx/pokemon/mai/front.dimensions"
INCLUDE "gfx/pokemon/cyuki/front.dimensions"
INCLUDE "gfx/pokemon/yuki/front.dimensions"
INCLUDE "gfx/pokemon/cyumeko/front.dimensions"
INCLUDE "gfx/pokemon/yumeko/front.dimensions"
INCLUDE "gfx/pokemon/cshinki/front.dimensions"
INCLUDE "gfx/pokemon/shinki/front.dimensions"
INCLUDE "gfx/pokemon/crumia/front.dimensions"
INCLUDE "gfx/pokemon/rumia/front.dimensions"
INCLUDE "gfx/pokemon/arumia/front.dimensions"
INCLUDE "gfx/pokemon/cdaichan/front.dimensions"
INCLUDE "gfx/pokemon/daichan/front.dimensions"
INCLUDE "gfx/pokemon/ddaichan/front.dimensions"
INCLUDE "gfx/pokemon/ccirno/front.dimensions"
INCLUDE "gfx/pokemon/cirno/front.dimensions"
INCLUDE "gfx/pokemon/scirno/front.dimensions"
INCLUDE "gfx/pokemon/cmeiling/front.dimensions"
INCLUDE "gfx/pokemon/meiling/front.dimensions"
INCLUDE "gfx/pokemon/ameiling/front.dimensions"
INCLUDE "gfx/pokemon/ckoakuma/front.dimensions"
INCLUDE "gfx/pokemon/koakuma/front.dimensions"
INCLUDE "gfx/pokemon/hkoakuma/front.dimensions"
INCLUDE "gfx/pokemon/cpatchouli/front.dimensions"
INCLUDE "gfx/pokemon/patchouli/front.dimensions"
INCLUDE "gfx/pokemon/tpatchouli/front.dimensions"
INCLUDE "gfx/pokemon/cremilia/front.dimensions"
INCLUDE "gfx/pokemon/remilia/front.dimensions"
INCLUDE "gfx/pokemon/sremilia/front.dimensions"
INCLUDE "gfx/pokemon/cflandre/front.dimensions"
INCLUDE "gfx/pokemon/flandre/front.dimensions"
INCLUDE "gfx/pokemon/aflandre/front.dimensions"
INCLUDE "gfx/pokemon/seaking/front.dimensions"
INCLUDE "gfx/pokemon/staryu/front.dimensions"
INCLUDE "gfx/pokemon/starmie/front.dimensions"
INCLUDE "gfx/pokemon/mr__mime/front.dimensions"
INCLUDE "gfx/pokemon/scyther/front.dimensions"
INCLUDE "gfx/pokemon/jynx/front.dimensions"
INCLUDE "gfx/pokemon/electabuzz/front.dimensions"
INCLUDE "gfx/pokemon/magmar/front.dimensions"
INCLUDE "gfx/pokemon/pinsir/front.dimensions"
INCLUDE "gfx/pokemon/tauros/front.dimensions"
INCLUDE "gfx/pokemon/magikarp/front.dimensions"
INCLUDE "gfx/pokemon/gyarados/front.dimensions"
INCLUDE "gfx/pokemon/lapras/front.dimensions"
INCLUDE "gfx/pokemon/ditto/front.dimensions"
INCLUDE "gfx/pokemon/eevee/front.dimensions"
INCLUDE "gfx/pokemon/vaporeon/front.dimensions"
INCLUDE "gfx/pokemon/jolteon/front.dimensions"
INCLUDE "gfx/pokemon/flareon/front.dimensions"
INCLUDE "gfx/pokemon/porygon/front.dimensions"
INCLUDE "gfx/pokemon/omanyte/front.dimensions"
INCLUDE "gfx/pokemon/omastar/front.dimensions"
INCLUDE "gfx/pokemon/kabuto/front.dimensions"
INCLUDE "gfx/pokemon/kabutops/front.dimensions"
INCLUDE "gfx/pokemon/aerodactyl/front.dimensions"
INCLUDE "gfx/pokemon/snorlax/front.dimensions"
INCLUDE "gfx/pokemon/articuno/front.dimensions"
INCLUDE "gfx/pokemon/zapdos/front.dimensions"
INCLUDE "gfx/pokemon/moltres/front.dimensions"
INCLUDE "gfx/pokemon/dratini/front.dimensions"
INCLUDE "gfx/pokemon/dragonair/front.dimensions"
INCLUDE "gfx/pokemon/dragonite/front.dimensions"
INCLUDE "gfx/pokemon/mewtwo/front.dimensions"
INCLUDE "gfx/pokemon/mew/front.dimensions"
INCLUDE "gfx/pokemon/cyoumu/front.dimensions"
INCLUDE "gfx/pokemon/youmu/front.dimensions"
INCLUDE "gfx/pokemon/syoumu/front.dimensions"
INCLUDE "gfx/pokemon/creisen/front.dimensions"
INCLUDE "gfx/pokemon/reisen/front.dimensions"
INCLUDE "gfx/pokemon/treisen/front.dimensions"
INCLUDE "gfx/pokemon/csanae/front.dimensions"
INCLUDE "gfx/pokemon/sanae/front.dimensions"
INCLUDE "gfx/pokemon/dsanae/front.dimensions"
INCLUDE "gfx/pokemon/sentret/front.dimensions"
INCLUDE "gfx/pokemon/furret/front.dimensions"
INCLUDE "gfx/pokemon/hoothoot/front.dimensions"
INCLUDE "gfx/pokemon/noctowl/front.dimensions"
INCLUDE "gfx/pokemon/ledyba/front.dimensions"
INCLUDE "gfx/pokemon/ledian/front.dimensions"
INCLUDE "gfx/pokemon/spinarak/front.dimensions"
INCLUDE "gfx/pokemon/ariados/front.dimensions"
INCLUDE "gfx/pokemon/crobat/front.dimensions"
INCLUDE "gfx/pokemon/chinchou/front.dimensions"
INCLUDE "gfx/pokemon/lanturn/front.dimensions"
INCLUDE "gfx/pokemon/pichu/front.dimensions"
INCLUDE "gfx/pokemon/cleffa/front.dimensions"
INCLUDE "gfx/pokemon/igglybuff/front.dimensions"
INCLUDE "gfx/pokemon/togepi/front.dimensions"
INCLUDE "gfx/pokemon/togetic/front.dimensions"
INCLUDE "gfx/pokemon/natu/front.dimensions"
INCLUDE "gfx/pokemon/xatu/front.dimensions"
INCLUDE "gfx/pokemon/mareep/front.dimensions"
INCLUDE "gfx/pokemon/flaaffy/front.dimensions"
INCLUDE "gfx/pokemon/ampharos/front.dimensions"
INCLUDE "gfx/pokemon/bellossom/front.dimensions"
INCLUDE "gfx/pokemon/marill/front.dimensions"
INCLUDE "gfx/pokemon/azumarill/front.dimensions"
INCLUDE "gfx/pokemon/sudowoodo/front.dimensions"
INCLUDE "gfx/pokemon/politoed/front.dimensions"
INCLUDE "gfx/pokemon/hoppip/front.dimensions"
INCLUDE "gfx/pokemon/skiploom/front.dimensions"
INCLUDE "gfx/pokemon/jumpluff/front.dimensions"
INCLUDE "gfx/pokemon/aipom/front.dimensions"
INCLUDE "gfx/pokemon/sunkern/front.dimensions"
INCLUDE "gfx/pokemon/sunflora/front.dimensions"
INCLUDE "gfx/pokemon/yanma/front.dimensions"
INCLUDE "gfx/pokemon/wooper/front.dimensions"
INCLUDE "gfx/pokemon/quagsire/front.dimensions"
INCLUDE "gfx/pokemon/espeon/front.dimensions"
INCLUDE "gfx/pokemon/umbreon/front.dimensions"
INCLUDE "gfx/pokemon/murkrow/front.dimensions"
INCLUDE "gfx/pokemon/slowking/front.dimensions"
INCLUDE "gfx/pokemon/misdreavus/front.dimensions"
INCLUDE "gfx/pokemon/unown_a/front.dimensions"
INCLUDE "gfx/pokemon/wobbuffet/front.dimensions"
INCLUDE "gfx/pokemon/girafarig/front.dimensions"
INCLUDE "gfx/pokemon/pineco/front.dimensions"
INCLUDE "gfx/pokemon/forretress/front.dimensions"
INCLUDE "gfx/pokemon/dunsparce/front.dimensions"
INCLUDE "gfx/pokemon/gligar/front.dimensions"
INCLUDE "gfx/pokemon/steelix/front.dimensions"
INCLUDE "gfx/pokemon/snubbull/front.dimensions"
INCLUDE "gfx/pokemon/granbull/front.dimensions"
INCLUDE "gfx/pokemon/qwilfish/front.dimensions"
INCLUDE "gfx/pokemon/scizor/front.dimensions"
INCLUDE "gfx/pokemon/shuckle/front.dimensions"
INCLUDE "gfx/pokemon/heracross/front.dimensions"
INCLUDE "gfx/pokemon/sneasel/front.dimensions"
INCLUDE "gfx/pokemon/teddiursa/front.dimensions"
INCLUDE "gfx/pokemon/ursaring/front.dimensions"
INCLUDE "gfx/pokemon/slugma/front.dimensions"
INCLUDE "gfx/pokemon/magcargo/front.dimensions"
INCLUDE "gfx/pokemon/swinub/front.dimensions"
INCLUDE "gfx/pokemon/piloswine/front.dimensions"
INCLUDE "gfx/pokemon/corsola/front.dimensions"
INCLUDE "gfx/pokemon/remoraid/front.dimensions"
INCLUDE "gfx/pokemon/octillery/front.dimensions"
INCLUDE "gfx/pokemon/delibird/front.dimensions"
INCLUDE "gfx/pokemon/mantine/front.dimensions"
INCLUDE "gfx/pokemon/skarmory/front.dimensions"
INCLUDE "gfx/pokemon/houndour/front.dimensions"
INCLUDE "gfx/pokemon/houndoom/front.dimensions"
INCLUDE "gfx/pokemon/kingdra/front.dimensions"
INCLUDE "gfx/pokemon/phanpy/front.dimensions"
INCLUDE "gfx/pokemon/donphan/front.dimensions"
INCLUDE "gfx/pokemon/porygon2/front.dimensions"
INCLUDE "gfx/pokemon/stantler/front.dimensions"
INCLUDE "gfx/pokemon/smeargle/front.dimensions"
INCLUDE "gfx/pokemon/tyrogue/front.dimensions"
INCLUDE "gfx/pokemon/hitmontop/front.dimensions"
INCLUDE "gfx/pokemon/smoochum/front.dimensions"
INCLUDE "gfx/pokemon/elekid/front.dimensions"
INCLUDE "gfx/pokemon/magby/front.dimensions"
INCLUDE "gfx/pokemon/miltank/front.dimensions"
INCLUDE "gfx/pokemon/blissey/front.dimensions"
INCLUDE "gfx/pokemon/raikou/front.dimensions"
INCLUDE "gfx/pokemon/entei/front.dimensions"
INCLUDE "gfx/pokemon/suicune/front.dimensions"
INCLUDE "gfx/pokemon/larvitar/front.dimensions"
INCLUDE "gfx/pokemon/pupitar/front.dimensions"
INCLUDE "gfx/pokemon/tyranitar/front.dimensions"
INCLUDE "gfx/pokemon/lugia/front.dimensions"
INCLUDE "gfx/pokemon/ho_oh/front.dimensions"
INCLUDE "gfx/pokemon/celebi/front.dimensions"
INCLUDE "gfx/pokemon/azurill/front.dimensions"
INCLUDE "gfx/pokemon/wynaut/front.dimensions"
INCLUDE "gfx/pokemon/ambipom/front.dimensions"
INCLUDE "gfx/pokemon/egg/front.dimensions"
INCLUDE "gfx/pokemon/egg/front.dimensions" ; $100
INCLUDE "gfx/pokemon/mismagius/front.dimensions"
INCLUDE "gfx/pokemon/honchkrow/front.dimensions"
INCLUDE "gfx/pokemon/bonsly/front.dimensions"
INCLUDE "gfx/pokemon/mime_jr_/front.dimensions"
INCLUDE "gfx/pokemon/happiny/front.dimensions"
INCLUDE "gfx/pokemon/munchlax/front.dimensions"
INCLUDE "gfx/pokemon/mantyke/front.dimensions"
INCLUDE "gfx/pokemon/weavile/front.dimensions"
INCLUDE "gfx/pokemon/magnezone/front.dimensions"
INCLUDE "gfx/pokemon/lickilicky/front.dimensions"
INCLUDE "gfx/pokemon/rhyperior/front.dimensions"
INCLUDE "gfx/pokemon/tangrowth/front.dimensions"
INCLUDE "gfx/pokemon/electivire/front.dimensions"
INCLUDE "gfx/pokemon/magmortar/front.dimensions"
INCLUDE "gfx/pokemon/togekiss/front.dimensions"
INCLUDE "gfx/pokemon/yanmega/front.dimensions"
INCLUDE "gfx/pokemon/leafeon/front.dimensions"
INCLUDE "gfx/pokemon/glaceon/front.dimensions"
INCLUDE "gfx/pokemon/gliscor/front.dimensions"
INCLUDE "gfx/pokemon/mamoswine/front.dimensions"
INCLUDE "gfx/pokemon/porygon_z/front.dimensions"
INCLUDE "gfx/pokemon/sylveon/front.dimensions"
INCLUDE "gfx/pokemon/perrserker/front.dimensions"
INCLUDE "gfx/pokemon/cursola/front.dimensions"
INCLUDE "gfx/pokemon/sirfetch_d/front.dimensions"
INCLUDE "gfx/pokemon/mr__rime/front.dimensions"
INCLUDE "gfx/pokemon/wyrdeer/front.dimensions"
INCLUDE "gfx/pokemon/kleavor/front.dimensions"
INCLUDE "gfx/pokemon/ursaluna/front.dimensions"
INCLUDE "gfx/pokemon/sneasler/front.dimensions"
INCLUDE "gfx/pokemon/overqwil/front.dimensions"
INCLUDE "gfx/pokemon/dudunsparce_two_segment/front.dimensions"
INCLUDE "gfx/pokemon/farigiraf/front.dimensions"
INCLUDE "gfx/pokemon/clodsire/front.dimensions"
INCLUDE "gfx/pokemon/annihilape/front.dimensions"
	assert_list_length NUM_SPECIES

INCLUDE "gfx/pokemon/unown_b/front.dimensions"
INCLUDE "gfx/pokemon/unown_c/front.dimensions"
INCLUDE "gfx/pokemon/unown_d/front.dimensions"
INCLUDE "gfx/pokemon/unown_e/front.dimensions"
INCLUDE "gfx/pokemon/unown_f/front.dimensions"
INCLUDE "gfx/pokemon/unown_g/front.dimensions"
INCLUDE "gfx/pokemon/unown_h/front.dimensions"
INCLUDE "gfx/pokemon/unown_i/front.dimensions"
INCLUDE "gfx/pokemon/unown_j/front.dimensions"
INCLUDE "gfx/pokemon/unown_k/front.dimensions"
INCLUDE "gfx/pokemon/unown_l/front.dimensions"
INCLUDE "gfx/pokemon/unown_m/front.dimensions"
INCLUDE "gfx/pokemon/unown_n/front.dimensions"
INCLUDE "gfx/pokemon/unown_o/front.dimensions"
INCLUDE "gfx/pokemon/unown_p/front.dimensions"
INCLUDE "gfx/pokemon/unown_q/front.dimensions"
INCLUDE "gfx/pokemon/unown_r/front.dimensions"
INCLUDE "gfx/pokemon/unown_s/front.dimensions"
INCLUDE "gfx/pokemon/unown_t/front.dimensions"
INCLUDE "gfx/pokemon/unown_u/front.dimensions"
INCLUDE "gfx/pokemon/unown_v/front.dimensions"
INCLUDE "gfx/pokemon/unown_w/front.dimensions"
INCLUDE "gfx/pokemon/unown_x/front.dimensions"
INCLUDE "gfx/pokemon/unown_y/front.dimensions"
INCLUDE "gfx/pokemon/unown_z/front.dimensions"
INCLUDE "gfx/pokemon/unown_exclamation/front.dimensions"
INCLUDE "gfx/pokemon/unown_question/front.dimensions"

INCLUDE "gfx/pokemon/kikuri_kanto/front.dimensions"
INCLUDE "gfx/pokemon/kikuri_koga/front.dimensions"
INCLUDE "gfx/pokemon/kikuri_agatha/front.dimensions"
INCLUDE "gfx/pokemon/kikuri_ariana/front.dimensions"



INCLUDE "gfx/pokemon/pichu_spiky/front.dimensions"

INCLUDE "gfx/pokemon/magikarp_skelly/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_calico1/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_calico2/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_calico3/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_twotone/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_orca/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_dapples/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_tiger/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_zebra/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_stripe/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_bubbles/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_diamonds/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_patches/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_forehead1/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_mask1/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_forehead2/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_mask2/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_saucy/front.dimensions"
INCLUDE "gfx/pokemon/magikarp_raindrop/front.dimensions"

	assert_list_length NUM_SPECIES + NUM_COSMETIC_FORMS

INCLUDE "gfx/pokemon/gyarados_red/front.dimensions"

INCLUDE "gfx/pokemon/mewtwo_armored/front.dimensions"

INCLUDE "gfx/pokemon/dudunsparce_three_segment/front.dimensions"

	if list_index % 2
		db size_value << 4
	endc
	assert_list_length NUM_UNIQUE_POKEMON

PURGE U, f, w
