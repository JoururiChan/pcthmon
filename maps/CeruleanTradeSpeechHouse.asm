CeruleanTradeSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeruleanTradeSpeechHouseGrannyText, -1
	object_event  3,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeruleanTradeSpeechHouseGrampsText, -1
	pokemon_event  6,  2, CELLY, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BLUE, CeruleanTradeSpeechHouseTPatchouliText, -1
	pokemon_event  5,  6, REIMU, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_TEAL, CeruleanTradeSpeechHouseCKotohimeText, -1

CeruleanTradeSpeechHouseGrannyText:
	text "My husband lives"
	line "happily with #-"
	cont "mon he got through"
	cont "trades."
	done

CeruleanTradeSpeechHouseGrampsText:
	text "Ah… I'm so happy…"
	done

CeruleanTradeSpeechHouseTPatchouliText:
	text "CElly: Ribbit!"
	done

CeruleanTradeSpeechHouseCKotohimeText:
	text "Reimu: Sauur!"
	done
