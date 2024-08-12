MrFujisHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 2
	warp_event  3,  7, LAVENDER_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MrFujisHouseSuperNerdText, -1
	object_event  3,  4, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, MrFujisHouseLassText, -1
	pokemon_event  8,  4, YUMEMI, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MrFujisYumemiText, -1
	pokemon_event  5,  5, RIKA, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_PURPLE, MrFujisRikaText, -1
	pokemon_event  1,  3, CMUGETSU, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BROWN, MrFujisCMugetsuText, -1

MrFujisHouseSuperNerdText:
	text "Mr.Fuji does live"
	line "here, but he's not"
	cont "home now."

	para "He might be at the"
	line "House of Souls."
	done

MrFujisHouseLassText:
	text "Some cold-hearted"
	line "people stop caring"
	cont "for their #mon."

	para "Grandpa takes in"
	line "the poor homeless"

	para "#mon and takes"
	line "care of them."
	done

MrFujisYumemiText:
	text "Yumemi: Gu-guwa?"
	done

MrFujisRikaText:
	text "Rika: Gyun!"
	done

MrFujisCMugetsuText:
	text "CMugetsu: Pijji!"
	done
