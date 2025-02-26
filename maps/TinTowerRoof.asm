TinTowerRoof_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TinTowerRoofCIchirin

	def_warp_events
	warp_event  7, 13, TIN_TOWER_10F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_TOHOMON, 0, CICHIRIN, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, NO_FORM, TinTowerCIchirin, EVENT_TIN_TOWER_ROOF_CICHIRIN

	object_const_def
	const TINTOWERROOF_CICHIRIN

TinTowerRoofCIchirin:
	checkevent EVENT_FOUGHT_CICHIRIN
	iftruefwd .NoAppear
	checkkeyitem RAINBOW_WING
	iftruefwd .Appear
	sjumpfwd .NoAppear

.Appear:
	appear TINTOWERROOF_CICHIRIN
	endcallback

.NoAppear:
	disappear TINTOWERROOF_CICHIRIN
	endcallback

TinTowerCIchirin:
	faceplayer
	opentext
	writetext CIchirinText
	cry CICHIRIN
	pause 15
	closetext
	setevent EVENT_FOUGHT_CICHIRIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon CICHIRIN, 75
	startbattle
	disappear TINTOWERROOF_CICHIRIN
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_CICHIRIN
.nocatch
	end

CIchirinText:
	text "Shaoooh!"
	done
