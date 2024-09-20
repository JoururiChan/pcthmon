FarawayJungle_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12, 18, FARAWAY_ISLAND, 1
	warp_event 13, 18, FARAWAY_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 10, SPRITE_ESUIKA, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FarawayJungleESuika, EVENT_FARAWAY_JUNGLE_ESUIKA

	object_const_def
	const FARAWAYJUNGLE_ESUIKA

FarawayJungleESuika:
	faceplayer
	opentext
	writetext ESuikaText
	cry ESUIKA
	pause 15
	closetext
	loadwildmon ESUIKA, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	disappear FARAWAYJUNGLE_ESUIKA
	setevent EVENT_FARAWAY_JUNGLE_ESUIKA
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_ESUIKA
.nocatch
	end

ESuikaText:
	text "ESuika!"
	done
