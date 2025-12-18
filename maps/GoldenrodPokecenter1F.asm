	object_const_def
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	const GOLDENRODPOKECENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECENTER1F_LASS
	const GOLDENRODPOKECENTER1F_POKEFAN_F

GoldenrodPokecenter1F_MapScripts:
	def_scene_scripts
	scene_const SCENE_GOLDENRODPOKECENTER1F_GS_BALL

	def_callbacks

GoldenrodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokecenter1F_GSBallSceneLeft:
	setval BATTLETOWERACTION_GSBALL
	special BattleTowerAction
	ifequal GS_BALL_AVAILABLE, .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, 0, 7
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1F_GSBallSceneRight:
	setval BATTLETOWERACTION_GSBALL
	special BattleTowerAction
	ifequal GS_BALL_AVAILABLE, .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, 0, 7
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtRightDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromRightDoorwayTileMovement
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1FGameboyKidScript:
	jumptextfaceplayer GoldenrodPokecenter1FGameboyKidText

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FPokefanF:
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext GoldenrodPokecenter1FPokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext GoldenrodPokecenter1FPokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtRightDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromRightDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokecomCenterWelcomeToTradeCornerText: ; unreferenced
	text "¡Hola! Éste es el"
	line "CENTRO DE CAMBIO"

	para "del CENTRO"
	line "#COM."

	para "Puedes cambiar"
	line "#MON con gente"
	cont "que está lejos."
	done

GoldenrodPokecomCenterWeMustHoldYourMonText: ; unreferenced
	text "Para hacer un"
	line "intercambio,"

	para "necesitamos tu"
	line "#MON."

	para "¿Quieres inter-"
	line "cambiar alguno?"
	done

GoldenrodPokecomCenterWhatMonDoYouWantText: ; unreferenced
	text "¿Qué tipo de"
	line "#MON quieres"
	cont "a cambio?"
	done

GoldenrodPokecomCenterWeWillTradeYourMonForMonText: ; unreferenced
	text "Bien. Intentaremos"
	line "intercambiar un"

	para "@"
	text_ram wStringBuffer3
	text " por un"
	line "@"
	text_ram wStringBuffer4
	text "."

	para "Necesitamos tu"
	line "#MON durante"
	cont "el intercambio."

	para "Por favor, espera"
	line "mientras se"
	cont "prepara la sala."
	done

GoldenrodPokecomCenterWeWillTradeYourMonForNewText: ; unreferenced
	text "Bien. Intentaremos"
	line "intercambiar un"

	para "@"
	text_ram wStringBuffer3
	text " por un"
	line "#MON que no"
	cont "hayas visto nunca."

	para "Necesitamos tu"
	line "#MON durante"
	cont "el intercambio."

	para "Por favor, espera"
	line "mientras se"
	cont "prepara la sala."
	done

GoldenrodPokecomCenterYourMonHasBeenReceivedText: ; unreferenced
	text "Recibido tu"
	line "#MON de"
	cont "intercambio."

	para "Llevará tiempo"
	line "encontrar un"

	para "compañero de"
	line "intercambio."

	para "Vuelve luego."
	done

GoldenrodPokecomCenterYouHaveOnlyOneMonText: ; unreferenced
	text "¿Eh? Sólo tienes"
	line "un #MON en tu"
	cont "equipo."

	para "Vuelve cuando"
	line "hayas aumentado el"

	para "número de miembros"
	line "de tu equipo."
	done

GoldenrodPokecomCenterWeHopeToSeeYouAgainText: ; unreferenced
	text "Esperamos verte"
	line "pronto."
	done

GoldenrodPokecomCenterCommunicationErrorText: ; unreferenced
	text "Error de"
	line "comunicación…"
	done

GoldenrodPokecomCenterCantAcceptLastMonText: ; unreferenced
	text "Si aceptamos ese"
	line "#MON, ¿con cuál"
	cont "lucharás?"
	done

GoldenrodPokecomCenterCantAcceptEggText: ; unreferenced
	text "Lo siento. No"
	line "aceptamos HUEVOS."
	done

GoldenrodPokecomCenterCantAcceptAbnormalMonText: ; unreferenced
	text "Lo siento, pero tu"
	line "#MON no parece"

	para "muy normal. No"
	line "podemos aceptarlo."
	done

GoldenrodPokecomCenterAlreadyHoldingMonText: ; unreferenced
	text "¿Eh? ¿No tenemos"
	line "ya un #MON"
	cont "tuyo?"
	done

GoldenrodPokecomCenterCheckingTheRoomsText: ; unreferenced
	text "Veremos las salas."

	para "Espera, por favor."
	done

GoldenrodPokecomCenterTradePartnerHasBeenFoundText: ; unreferenced
	text "Disculpa la"
	line "espera."

	para "Se ha encontrado"
	line "un compañero."
	done

GoldenrodPokecomCenterItsYourNewPartnerText: ; unreferenced
	text "Es tu nuevo"
	line "compañero."

	para "Por favor, trátalo"
	line "con cariño."

	para "Esperamos volver a"
	line "verte."
	done

GoldenrodPokecomCenterYourPartyIsFullText: ; unreferenced
	text "Oh, oh. Tu equipo"
	line "está al completo."

	para "Por favor, vuelve"
	line "cuando haya sitio"
	cont "en tu equipo."
	done

GoldenrodPokecomCenterNoTradePartnerFoundText: ; unreferenced
	text "Es una pena, pero"
	line "nadie se ha"

	para "presentado para"
	line "ser tu compañero."

	para "¿Quieres recuperar"
	line "tu #MON?"
	done

GoldenrodPokecomCenterReturnedYourMonText: ; unreferenced
	text "Te hemos devuelto"
	line "tu #MON."
	done

GoldenrodPokecomCenterYourMonIsLonelyText: ; unreferenced
	text "Es una pena, pero"
	line "nadie se ha"

	para "presentado para"
	line "ser tu compañero."

	para "Tenemos tu #MON"
	line "desde hace mucho."

	para "Por ello, se"
	line "siente solo."

	para "Lo siento, pero"
	line "debemos"
	cont "devolvértelo."
	done

GoldenrodPokecenter1FWeHopeToSeeYouAgainText_2: ; unreferenced
	text "Esperamos verte"
	line "pronto."
	done

GoldenrodPokecomCenterContinueToHoldYourMonText: ; unreferenced
	text "Bien. Seguiremos"
	line "teniendo tu"

	para "#MON con"
	line "nosotros."
	done

GoldenrodPokecomCenterRecentlyLeftYourMonText: ; unreferenced
	text "¿Eh? Dejaste tu"
	line "#MON con"

	para "nosotros hace muy"
	line "poco."

	para "Por favor, vuelve"
	line "más tarde."
	done

GoldenrodPokecomCenterSaveBeforeTradeCornerText: ; unreferenced
	text "Vamos a GUARDAR"
	line "antes de conectar"
	cont "con el CENTRO."
	done

GoldenrodPokecomCenterWhichMonToTradeText: ; unreferenced
	text "¿Qué #MON"
	line "quieres cambiar?"
	done

GoldenrodPokecomCenterTradeCanceledText: ; unreferenced
	text "Lo siento, pero"
	line "debemos cancelar"
	cont "el intercambio."
	done

GoldenrodPokecomCenterEggTicketText: ; unreferenced
	text "¡Oh!"

	para "¡Veo que tienes un"
	line "TICKET HUEVO!"

	para "¡Es un cupón para"
	line "gente especial que"

	para "puede cambiarse"
	line "por un #MON"
	cont "especial!"
	done

GoldenrodPokecomCenterOddEggBriefingText: ; unreferenced
	text "Déjame darte una"
	line "pequeña"
	cont "explicación."

	para "Los cambios hechos"
	line "en el CENTRO DE"

	para "CAMBIO se hacen"
	line "entre dos entrena-"
	cont "dores que no se"
	line "conocen."

	para "Por eso, puede que"
	line "lleve tiempo."

	para "De todas formas,"
	line "tienes un HUEVO"
	cont "RARO."

	para "Enseguida lo"
	line "recibirás."

	para "Por favor, elige"
	line "una de las salas"

	para "del CENTRO para"
	line "que podamos"

	para "enviarte el"
	line "HUEVO RARO."
	done

GoldenrodPokecomCenterPleaseWaitAMomentText: ; unreferenced
	text "Por favor, espera"
	line "un momento."
	done

GoldenrodPokecomCenterHereIsYourOddEggText: ; unreferenced
	text "Gracias por"
	line "esperar."

	para "Hemos recibido tu"
	line "HUEVO RARO."

	para "¡Aquí lo tienes!"

	para "Por favor, cuídalo"
	line "con cariño."
	done

GoldenrodPokecomCenterNoEggTicketServiceText: ; unreferenced
	text "Lo siento mucho."

	para "El servicio de"
	line "intercambio TICKET"

	para "HUEVO no funciona"
	line "ahora."
	done

GoldenrodPokecomCenterNewsMachineText: ; unreferenced
	text "Es una MÁQUINA de"
	line "NOTICIAS #MON."
	done

GoldenrodPokecomCenterWhatToDoText: ; unreferenced
	text "¿Qué deseas hacer?"
	done

GoldenrodPokecomCenterNewsMachineExplanationText: ; unreferenced
	text "Las NOTICIAS"
	line "#MON se"

	para "obtienen de los"
	line "archivos GUARDADOS"

	para "de entrenadores"
	cont "#MON."

	para "Cuando leas las"
	line "NOTICIAS, tu"

	para "archivo GUARDADO"
	line "será enviado."

	para "El archivo de"
	line "datos GUARDADOS"

	para "contiene tu"
	line "progreso y tu"
	cont "perfil de móvil."

	para "No se enviará tu"
	line "número de móvil."

	para "El contenido de"
	line "las NOTICIAS"

	para "variará dependien-"
	line "do de los archivos"

	para "GUARDADOS enviados"
	line "por ti y por otros"

	para "entrenadores"
	line "#MON."

	para "¡Es posible que"
	line "salgas en las"
	cont "NOTICIAS!"
	done

GoldenrodPokecomCenterWouldYouLikeTheNewsText: ; unreferenced
	text "¿Quieres leer las"
	line "NOTICIAS?"
	done

GoldenrodPokecomCenterReadingTheLatestNewsText: ; unreferenced
	text "Leyendo las"
	line "últimas NOTICIAS…"
	cont "Espera, por favor."
	done

GoldenrodPokecomCenterNoOldNewsText: ; unreferenced
	text "No hay NOTICIAS"
	line "antiguas…"
	done

GoldenrodPokecomCenterCorruptedNewsDataText: ; unreferenced
	text "Los datos de las"
	line "NOTICIAS están"
	cont "dañados."

	para "Por favor, baja"
	line "las NOTICIAS otra"
	cont "vez."
	done

GoldenrodPokecomCenterMakingPreparationsText: ; unreferenced
	text "Estamos en los"
	line "preparativos."

	para "Por favor, vuelve"
	line "más tarde."
	done

GoldenrodPokecomCenterSaveBeforeNewsMachineText: ; unreferenced
	text "GUARDAREMOS tu"
	line "progreso antes de"

	para "poner en marcha la"
	line "MÁQUINA de las"
	cont "NOTICIAS."
	done

GoldenrodPokecomCenterPerson1Text: ; unreferenced
	text "Uau, este CENTRO"
	line "#MON es enorme."

	para "Lo acaban de"
	line "construir. También"

	para "han instalado"
	line "muchas máquinas"
	cont "nuevas."
	done

GoldenrodPokecomCenterPerson2Text: ; unreferenced
	text "¡Ideé algo nuevo"
	line "para el CENTRO DE"
	cont "CAMBIO!"

	para "¡Equipo a PIDGEY"
	line "con una CARTA y"

	para "después preparo el"
	line "intercambio con"
	cont "otro #MON!"

	para "¡Si todo el mundo"
	line "lo hiciera, la"

	para "CARTA llegaría a"
	line "todo tipo de"
	cont "gente!"

	para "¡Lo llamo CARTA"
	line "PIDGEY!"

	para "¡Si se vuelve"
	line "popular, voy a"

	para "hacer un montón de"
	line "nuevos amigos!"
	done

GoldenrodPokecomCenterPerson3Text: ; unreferenced
	text "Se dice que puedes"
	line "cambiar #MON"

	para "hasta con"
	line "desconocidos."

	para "Pero todavía están"
	line "con preparativos."
	done

GoldenrodPokecomCenterPerson4Text: ; unreferenced
	text "Una chica que no"
	line "conozco me envió"

	para "su HOPPIP."
	line "Deberías cambiar"

	para "un #MON por"
	line "otro que quieras."
	done

GoldenrodPokecomCenterPerson5Text: ; unreferenced
	text "¡Recibí un HOPPIP"
	line "hembra, pero se"
	cont "llama STANLEY!"

	para "¡Así se llama mi"
	line "padre!"
	done

GoldenrodPokecomCenterPerson6Text: ; unreferenced
	text "¿Qué es la MÁQUINA"
	line "de las NOTICIAS?"

	para "¿Recoge noticias"
	line "de un área más"

	para "amplia que la"
	line "radio?"
	done

GoldenrodPokecomCenterPerson7Text: ; unreferenced
	text "El CENTRO #COM"
	line "se enlazará con"

	para "los otros CENTROS"
	line "#MON por"

	para "medio de una red"
	line "inalámbrica."

	para "Lo que significa"
	line "que podré conec-"
	cont "tarme con todo"
	line "tipo de gente."
	done

GoldenrodPokecomCenterPerson8Text: ; unreferenced
	text "Las máquinas no"
	line "están en uso"
	cont "todavía."

	para "Aunque mola venir"
	line "a un sitio tan"

	para "chulo antes que"
	line "nadie."
	done

GoldenrodPokecomCenterPerson9Text: ; unreferenced
	text "Mi amigo salió en"
	line "las NOTICIAS hace"

	para "poco. ¡No me lo"
	line "podía creer!"
	done

GoldenrodPokecomCenterPerson10Text: ; unreferenced
	text "¡No puedo dejar de"
	line "leer las últimas"
	cont "NOTICIAS!"
	done

GoldenrodPokecomCenterPerson11Text: ; unreferenced
	text "Si aparezco en las"
	line "NOTICIAS y me hago"

	para "famoso, supongo"
	line "que me adorarán."

	para "Estoy tramando"
	line "cómo podría salir"
	cont "en las NOTICIAS…"
	done

GoldenrodPokecenter1FGameboyKidText:
	text "En el COLISEO de"
	line "arriba se lucha"
	cont "enlazado."

	para "Los récords se"
	line "apuntan en la"

	para "pared, así que no"
	line "puedo perder."
	done

GoldenrodPokecomCenterPerson12Text: ; unreferenced
	text "Vine por aquí"
	line "cuando me enteré"

	para "de que el CENTRO"
	line "#MON de TRIGAL"

	para "tenía máquinas"
	line "nuevas que nadie"
	cont "había visto antes."

	para "Pero parece que"
	line "siguen ocupados"

	para "con todos los"
	line "preparativos…"
	done

GoldenrodPokecomCenterPerson13Text: ; unreferenced
	text "¡Sólo de ver todas"
	line "estas cosas nuevas"

	para "me siento mucho"
	line "más joven!"
	done

GoldenrodPokecenter1FLassText:
	text "Un #MON de"
	line "nivel superior no"
	cont "siempre gana."

	para "Aun así, su tipo"
	line "puede tener alguna"
	cont "desventaja."

	para "No creo que haya"
	line "un único #MON"

	para "que sea el más"
	line "fuerte."
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText:
	text "<PLAYER>, ¿no?"

	para "¡Felicidades!"

	para "¡Estamos de"
	line "promoción, hemos"

	para "recibido una GS"
	line "BALL para ti!"

	para "¡Por favor,"
	line "acéptala!"
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText:
	text "¡Vuelve cuando"
	line "quieras!"
	done

GoldenrodPokecomCenterSignText: ; unreferenced
	text "CENTRO #COM"
	line "PB INFORMACIÓN"

	para "Izquierda:"
	line "ADMINISTRACIÓN"

	para "Centro:"
	line "CENTRO DE CAMBIO"

	para "Derecha:"
	line "NOTICIAS #MON"
	done

GoldenrodPokecomCenterNewsMachineNotYetText: ; unreferenced
	text "¡Es una MÁQUINA de"
	line "NOTICIAS #MON!"

	para "No está operativa"
	line "todavía…"
	done

GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText:
	text "¡Llevas mucho peso"
	line "en la mochila!"

	para "¡Oye! ¿No tendrás"
	line "algo llamado"
	cont "CARTA EÓN?"

	para "Mi hija está"
	line "buscando una."

	para "Puedes darme una,"
	line "¿verdad?"
	done

GoldenrodPokecenter1FAskGiveAwayAnEonMailText:
	text "¿Entregas una"
	line "CARTA EÓN?"
	done

GoldenrodPokecenter1FPokefanFThisIsForYouText:
	text "¡Oh, genial!"
	line "¡Gracias, cariño!"

	para "¡Toma esto en"
	line "agradecimiento!"
	done

GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText:
	text "¡A mi hija le"
	line "encantará!"
	done

GoldenrodPokecenter1FPokefanFTooBadText:
	text "¿Oh? ¿No tienes?"
	line "Qué lástima…"
	done

GoldenrodPokecenter1FPokefanFAnotherTimeThenText:
	text "Oh… Bueno, en otra"
	line "ocasión será."
	done

GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText:
	text "<PLAYER> entrega"
	line "la CARTA EÓN."
	done

GoldenrodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, GOLDENROD_CITY, 15
	warp_event  4,  7, GOLDENROD_CITY, 15
	warp_event  0,  6, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events
	coord_event  3,  7, SCENE_GOLDENRODPOKECENTER1F_GS_BALL, GoldenrodPokecenter1F_GSBallSceneLeft
	coord_event  4,  7, SCENE_GOLDENRODPOKECENTER1F_GS_BALL, GoldenrodPokecenter1F_GSBallSceneRight

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
	object_event  7,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPokefanF, -1
