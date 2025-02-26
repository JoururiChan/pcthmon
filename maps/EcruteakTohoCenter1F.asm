EcruteakTohoCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, ECRUTEAK_CITY, 6
	warp_event  6,  7, ECRUTEAK_CITY, 6
	warp_event  0,  7, TOHOCENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, TohomonJournalMortyScript

	def_object_events
	object_event  6,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTohoCenter1FBillScript, EVENT_ECRUTEAK_TOHO_CENTER_BILL
	pc_nurse_event  5, 1
	object_event 11,  6, SPRITE_TOHOFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakTohoCenter1FTohofanMScript, -1
	object_event 11,  5, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakTohoCenter1FLassScript, -1
	object_event  1,  4, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakTohoCenter1FCooltrainerFText, -1
	object_event  8,  1, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakTohoCenter1FGymGuyText, -1

	object_const_def
	const ECRUTEAKTOHOCENTER1F_BILL

TohomonJournalMortyScript:
	setflag ENGINE_READ_MORTY_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Morty!"

	para "Morty claims to"
	line "have once seen"
	cont "CNazrin. He says:"

	para "“It was amazing."
	line "CNazrin looked me"
	cont "in the eyes."

	para "I'll never forget"
	line "its eyes. It was"

	para "like it could see"
	line "right through me,"

	para "down into the dep-"
	line "ths of my heart…”"
	done

EcruteakTohoCenter1FBillScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_BILL_INTRO
	iftruefwd .heardintro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_BILL_INTRO
.heardintro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequalfwd PARTY_LENGTH, .NoRoom
	givepoke TLYRICA, PLAIN_FORM, 5, NO_ITEM, GREAT_BALL
	givepokemail .GiftTLyricaMail
	callasm .SetTLyricaMailOT
	setevent EVENT_GOT_TLYRICA
	writetext .GoodbyeText
	waitbutton
	closetext
	readvar VAR_FACING
	turnobject PLAYER, DOWN
	ifnotequal UP, .noleftstep
	applyonemovement ECRUTEAKTOHOCENTER1F_BILL, step_left
.noleftstep
	applymovement ECRUTEAKTOHOCENTER1F_BILL, .LeaveMovement
	playsound SFX_EXIT_BUILDING
	disappear ECRUTEAKTOHOCENTER1F_BILL
	clearevent EVENT_NEVER_MET_BILL
	waitsfx
	end

.NoRoom:
	jumpthisopenedtext

	text "Whoa, wait. You"
	line "can't carry any"
	cont "more #mon."
	done

.IntroText:
	text "Hi, I'm Bill. And"
	line "who are you?"

	para "Hmm, <PLAYER>, huh?"
	line "You've come at the"
	cont "right time."

	para "The Time Capsules"
	line "are totally fried,"

	para "and I could use"
	line "your help."
	done

.QuestionText:
	text "Bill: This TLyrica"
	line "came over just"

	para "before the Time"
	line "Capsule shut down."

	para "Someone has to"
	line "take care of it,"

	para "but I don't like"
	line "being outside."

	para "Can I count on you"
	line "to play with it,"
	cont "<PLAYER>?"
	done

.YesText:
	text "Bill: I knew you'd"
	line "come through!"

	para "Way to go! You're"
	line "the real deal!"

	para "OK, I'm counting"
	line "on you."

	para "Take good care of"
	line "it!"
	done

.GoodbyeText:
	text "Bill: Prof.Elm"
	line "claims TLyrica may"

	para "evolve in new and"
	line "unknown ways."

	para "I have to hurry on"
	line "back to Goldenrod"
	cont "and see my folks,"

	para "and then it's back"
	line "to Kanto for me."

	para "Buh-bye!"
	done

.NoText:
	text "Oh… Now what to"
	line "do?"
	done

.LeaveMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

.GiftTLyricaMail:
	db   EON_MAIL
	db   "Please keep this"
	next "#mon safe!@@@@@@"

.SetTLyricaMailOT:
	ld hl, sPartyMon1MailAuthor
	ld a, [wPartyCount]
	dec a
	ld bc, MAIL_STRUCT_LENGTH
	rst AddNTimes
	push hl
	pop de
	ld hl, .TLyricaMailOTID
	ld bc, .TLyricaMailOTIDEnd - .TLyricaMailOTID
	ld a, BANK(sPartyMail)
	call GetSRAMBank
	rst CopyBytes
	jmp CloseSRAM

.TLyricaMailOTID:
	rawchar "Prof.Oak@@"
	bigdw 00001
.TLyricaMailOTIDEnd

EcruteakTohoCenter1FTohofanMScript:
	checkevent EVENT_GOT_HM03_SURF
	iftrue_jumptextfaceplayer .SurfText
	jumpthistextfaceplayer

	text "The way the Kimono"
	line "Girls dance is"

	para "marvelous. Just"
	line "like the way they"
	cont "use their #mon."
	done

.SurfText:
	text "You must be hoping"
	line "to battle more"
	cont "people, right?"

	para "There's apparently"
	line "some place where"
	cont "trainers gather."

	para "Where, you ask?"

	para "It's a little past"
	line "Olivine City."
	done

EcruteakTohoCenter1FLassScript:
	faceplayer
	opentext
	writetext .QuestionText
	yesorno
	iffalsefwd .No
	checkevent EVENT_ECRUTEAK_TOHO_CENTER_BILL
	iffalse_jumpopenedtext .HereText
	jumpthisopenedtext

	text "I once heard that"
	line "Bill's mother used"

	para "to be a Kimono"
	line "Girl. Maybe that's"

	para "why he visits"
	line "here so often."
	done

.No:
	checkevent EVENT_ECRUTEAK_TOHO_CENTER_BILL
	iffalse_jumpopenedtext .HereText
	jumpthisopenedtext

	text "Oh… Never mind"
	line "then."
	done

.QuestionText:
	text "Do you know who"
	line "Bill is?"
	done

.HereText:
	text "Then go talk to"
	line "him! He's right"
	cont "by the counter!"
	done

EcruteakTohoCenter1FCooltrainerFText:
	text "Morty, the Gym"
	line "Leader, is soooo"
	cont "cool."

	para "His #mon are"
	line "really tough too."
	done

EcruteakTohoCenter1FGymGuyText:
	text "Lake of Rage…"

	para "The appearance of"
	line "a SLilyBlack swarm…"

	para "I smell a conspir-"
	line "acy. I know it!"
	done
