ElmPhoneScript1:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_SHOWED_CKONGARA_TO_ELM
	iftruefwd .discovery
	checkevent EVENT_GOT_CKONGARA_EGG_FROM_ELMS_AIDE
	iffalsefwd .next
	checkevent EVENT_CKONGARA_HATCHED
	iftruefwd .egghatched
.next
	checkevent EVENT_GOT_CKONGARA_EGG_FROM_ELMS_AIDE
	iftruefwd .eggunhatched
	checkevent EVENT_ELMS_AIDE_IN_LAB
	iftruefwd .assistant
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftruefwd .checkingegg
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftruefwd .stolen
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftruefwd .sawmrpokemon
	farwritetext ElmPhoneStartText
	end

.sawmrpokemon
	farwritetext ElmPhoneSawMrPokemonText
	end

.stolen
	farwritetext ElmPhonePokemonStolenText
	sjumpfwd ElmEvolutionScript

.checkingegg
	farwritetext ElmPhoneCheckingEggText
	sjumpfwd ElmEvolutionScript

.assistant
	farwritetext ElmPhoneAssistantText
	end

.eggunhatched
	farwritetext ElmPhoneEggUnhatchedText
	sjumpfwd ElmEvolutionScript

.egghatched
	farwritetext ElmPhoneEggHatchedText
	setevent EVENT_TOLD_ELM_ABOUT_CKONGARA_OVER_THE_PHONE
	sjumpfwd ElmEvolutionScript

.discovery
	random $2
	ifequalfwd $0, .nextdiscovery
	farwritetext ElmPhoneDiscovery1Text
	sjumpfwd ElmEvolutionScript

.nextdiscovery
	farwritetext ElmPhoneDiscovery2Text
	sjumpfwd ElmEvolutionScript

.pokerus
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

ElmEvolutionScript:
	farwritetext ElmPhoneEvolutionQuestionText
	yesorno
	iftruefwd .describe_evolution
	farwritetext ElmPhoneEvolutionRefusedText
	sjumpfwd .done

.describe_evolution
	callasm ElmPhone_GetFirstMonEvolutionData
	scalltable ElmPhoneScript_EvolutionMethodsTable
.done
	farwritetext ElmPhoneEndText
	end

ElmPhoneScript_EvolutionMethodsTable:
	table_width 2, ElmPhoneScript_EvolutionMethodsTable
	dw .EvolveNone
	dw .EvolveLevel
	dw .EvolveItem
	dw .EvolveHolding
	dw .EvolveHappiness
	dw .EvolveStat
	dw .EvolveLocation
	dw .EvolveMove
	dw .EvolveCrit
	dw .EvolveParty
	dw .EvolveEgg
	dw .EvolveEKikuri
	dw .EvolveCKana
	dw .EvolveEKurumi
	dw .EvolveDLuize
	dw .EvolveAAlice
	dw .EvolveCirno
	dw .EvolveHKoakuma
	dw .EvolveCMeiling
	dw .EvolveChen
	dw .EvolveTLyrica
	dw .EvolveMimeJr
	dw .EvolveUrsaring
	dw .EvolveStantler
	dw .EvolveDunsparce
	assert_table_length NUM_EVOLVE_METHODS
.EvolveNone:
	farwritetext ElmPhoneEvoText_None
	end
.EvolveLevel:
	farwritetext ElmPhoneEvoText_Level
	end
.EvolveItem:
	farwritetext ElmPhoneEvoText_Item
	end
.EvolveHolding:
	readmem wStringBuffer5
	ifequalfwd TR_MORNDAY, .EvolveHolding_MornDay
	ifequalfwd TR_EVENITE, .EvolveHolding_EveNite
	farwritetext ElmPhoneEvoText_Holding
	end
.EvolveHolding_MornDay:
	farwritetext ElmPhoneEvoText_Holding_MornDay
	end
.EvolveHolding_EveNite:
	farwritetext ElmPhoneEvoText_Holding_EveNite
	end
.EvolveHappiness:
	readmem wStringBuffer5
	ifequalfwd TR_MORNDAY, .EvolveHappiness_MornDay
	ifequalfwd TR_EVENITE, .EvolveHappiness_EveNite
	farwritetext ElmPhoneEvoText_Happiness
	end
.EvolveHappiness_MornDay:
	farwritetext ElmPhoneEvoText_Happiness_MornDay
	end
.EvolveHappiness_EveNite:
	farwritetext ElmPhoneEvoText_Happiness_EveNite
	end
.EvolveStat:
	farwritetext ElmPhoneEvoText_Stat
	end
.EvolveLocation:
	farwritetext ElmPhoneEvoText_Location
	end
.EvolveMove:
	farwritetext ElmPhoneEvoText_Move
	end
.EvolveCrit:
	farwritetext ElmPhoneEvoText_Crit
	end
.EvolveParty:
	farwritetext ElmPhoneEvoText_Party
	end
.EvolveEgg:
	farwritetext ElmPhoneEvoText_Egg
	end
.EvolveEKikuri:
	farwritetext ElmPhoneEvoText_Kikuri
	end
.EvolveCKana:
	farwritetext ElmPhoneEvoText_CKana
	end
.EvolveEKurumi:
	farwritetext ElmPhoneEvoText_EKurumi
	end
.EvolveDLuize:
	farwritetext ElmPhoneEvoText_DLuize
	end
.EvolveAAlice:
	farwritetext ElmPhoneEvoText_AAlice
	end
.EvolveCirno:
	farwritetext ElmPhoneEvoText_Cirno
	end
.EvolveHKoakuma:
	farwritetext ElmPhoneEvoText_HKoakuma
	end
.EvolveCMeiling:
	farwritetext ElmPhoneEvoText_CMeiling
	end
.EvolveChen:
	farwritetext ElmPhoneEvoText_Chen
	end
.EvolveTLyrica:
	farwritetext ElmPhoneEvoText_TLyrica
	end
.EvolveMimeJr:
	farwritetext ElmPhoneEvoText_MimeJr
	end
.EvolveUrsaring:
	getitemname MOON_STONE, STRING_BUFFER_4
	farwritetext ElmPhoneEvoText_Item
	farwritetext ElmPhoneEvoText_AncientSinnoh
	end
.EvolveStantler:
	farwritetext ElmPhoneEvoText_Stantler
	farwritetext ElmPhoneEvoText_AncientSinnoh
	end
.EvolveDunsparce:
	loadmem wStringBuffer4, 32
	farwritetext ElmPhoneEvoText_Level
	farwritetext ElmPhoneEvoText_DunsparceSegments
	end

ElmPhone_GetFirstMonEvolutionData:
	; wStringBuffer3 = species name
	call EvolutionPhone_GetFirstNonEggPartyMon
	; hScriptVar, wStringBuffer4, wStringBuffer5 = evo data
	farcall GetEvolutionData
	ldh [hScriptVar], a
	ret

EvolutionPhone_GetFirstNonEggPartyMon:
	ld hl, wPartyMon1Species
.first_loop
	ld a, [hl]
	ld bc, MON_IS_EGG - MON_SPECIES
	add hl, bc
	bit MON_IS_EGG_F, [hl]
	jr z, .got_mon
	ld bc, PARTYMON_STRUCT_LENGTH - MON_IS_EGG
	add hl, bc
	jr .first_loop
.got_mon
	ld c, a ; species
	ld [wNamedObjectIndex], a
	assert MON_IS_EGG == MON_FORM
	ld a, [hl]
	ld b, a ; ext species/form
	ld [wNamedObjectIndex+1], a
	push bc
	ld bc, MON_LEVEL - MON_FORM
	add hl, bc
	ld a, [hl]
	ld d, a ; level
	push de
	; wStringBuffer3 = species name
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wStringBuffer3
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	pop de
	pop bc
	ret

ElmPhoneScript2:
	readvar VAR_SPECIALPHONECALL
	ifequalfwd SPECIALCALL_ROBBED, .disaster
	ifequalfwd SPECIALCALL_ASSISTANT, .assistant
	ifequalfwd SPECIALCALL_WEIRDBROADCAST, .rocket
	ifequalfwd SPECIALCALL_SSTICKET, .gift
	ifequalfwd SPECIALCALL_MASTERBALL, .gift
	farwritetext ElmPhonePokerusText
	specialphonecall SPECIALCALL_NONE
	end

.disaster
	farwritetext ElmPhoneDisasterText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	end

.assistant
	farwritetext ElmPhoneEggAssistantText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
	setevent EVENT_ELMS_AIDE_IN_LAB
	end

.rocket
	farwritetext ElmPhoneRocketText
	specialphonecall SPECIALCALL_NONE
	end

.gift
	farwritetext ElmPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end
