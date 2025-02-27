WhirlIslandLugiaChamber_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, WhirlIslandLugiaChamberTKogasa

	def_warp_events
	warp_event  9, 13, WHIRL_ISLAND_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_TOHOMON, 0, TKOGASA, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, NO_FORM, TKogasa, EVENT_WHIRL_ISLAND_TKOGASA_CHAMBER_TKOGASA

	object_const_def
	const WHIRLISLANDTKOGASACHAMBER_TKOGASA

WhirlIslandLugiaChamberTKogasa:
	checkevent EVENT_FOUGHT_TKOGASA
	iftruefwd .NoAppear
	checkkeyitem SILVER_WING
	iftruefwd .Appear
	sjumpfwd .NoAppear

.Appear:
	appear WHIRLISLANDTKOGASACHAMBER_TKOGASA
	endcallback

.NoAppear:
	disappear WHIRLISLANDTKOGASACHAMBER_TKOGASA
	endcallback

TKogasa:
	faceplayer
	opentext
	writetext TKogasaText
	cry TKOGASA
	pause 15
	closetext
	setevent EVENT_FOUGHT_TKOGASA
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon TKOGASA, 75
	startbattle
	disappear WHIRLISLANDTKOGASACHAMBER_TKOGASA
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_TKOGASA
.nocatch
	end

TKogasaText:
	text "Gyaaas!"
	done
