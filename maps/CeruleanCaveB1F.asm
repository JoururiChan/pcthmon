CeruleanCaveB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CERULEAN_CAVE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  8,  6, BGEVENT_ITEM + MAX_REVIVE, EVENT_CERULEAN_CAVE_B1F_HIDDEN_MAX_REVIVE
	bg_event 24, 11, BGEVENT_ITEM + ULTRA_BALL, EVENT_CERULEAN_CAVE_B1F_HIDDEN_ULTRA_BALL

	def_object_events
	object_event  7, 13, SPRITE_MON_ICON, SPRITEMOVEDATA_TOHOMON, 0, TSUIKATWO, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, PLAIN_FORM, CeruleanCaveTSuikatwo, EVENT_CERULEAN_CAVE_TSUIKATWO
	itemball_event 26,  9, MAX_ELIXIR, 1, EVENT_CERULEAN_CAVE_B1F_MAX_ELIXIR
	itemball_event 26,  3, ULTRA_BALL, 1, EVENT_CERULEAN_CAVE_B1F_ULTRA_BALL

	object_const_def
	const CERULEANCAVEB1F_TSUIKATWO

CeruleanCaveTSuikatwo:
	faceplayer
	opentext
	writetext TSuikatwoText
	cry TSUIKATWO
	pause 15
	closetext
	loadwildmon TSUIKATWO, 80
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	disappear CERULEANCAVEB1F_TSUIKATWO
	setevent EVENT_CERULEAN_CAVE_TSUIKATWO
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_TSUIKATWO
.nocatch
	end

TSuikatwoText:
	text "Myuu!"
	done
