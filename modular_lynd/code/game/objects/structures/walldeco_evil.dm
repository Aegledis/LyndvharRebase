/obj/structure/fluff/walldeco/alarmevil
	name = "bloodhead"
	icon = 'modular_lynd/icons/decoration.dmi'
	icon_state = "alarm_evil"
	desc = "Blood gently trickles with each blink. Best not get into its gaze."
	pixel_y = 32
	var/next_yap = 0
	var/onoff = 1 //Init on

/obj/structure/fluff/walldeco/alarmevil/attack_hand(mob/living/user) //if touch, activates ambush. duh.

	if(onoff == 0) //dont do anything if we r off
		return

	user.changeNext_move(CLICK_CD_MELEE)

	if(!(HAS_TRAIT(user, TRAIT_NOBLE)))
		playsound(src, 'sound/misc/kybraxor.ogg', 100, TRUE, -1)
		say("SCRAAK! LACHER-MOI, CREACHER!! GUAARDS!!")
		user.consider_ambush(TRUE, TRUE, min_dist = WARDEN_AMBUSH_MIN, max_dist = WARDEN_AMBUSH_MAX)
		return

/obj/structure/fluff/walldeco/alarmevil/attackby(obj/item/I, mob/user, autobump = FALSE)

	if(onoff == 0) //dont do anything if we r off
		return

	if(istype(I, /obj/item/roguecoin))
		playsound(src, 'sound/misc/bug.ogg', 100, TRUE, -1)
		say("SCRAAK, SYSTEME BONNE NUIT POR VOTRE GRACE. MERCI BIEN.")
		turnthetvoff()
		qdel(I)

	if(istype(I, /obj/item/lockpick)) //just let em have it. this is more a fluff thing
		to_chat(user, "<span class='warning'>I start trying to disable \the [src.name]...</span>")
		playsound(src.loc, 'sound/foley/doors/lockrattle.ogg', 5, TRUE)

	if(istype(I, /obj/item/melee/touch_attack/lesserknock))
		to_chat(user, "<span class='warning'>I start trying to disable \the [src.name]...</span>")
		playsound(src.loc, 'sound/foley/doors/lockrattle.ogg', 5, TRUE)

/obj/structure/fluff/walldeco/alarmevil/Crossed(mob/living/user)

	if(onoff == 0)
		return

	if(ishuman(user)) //are we a person?
		var/mob/living/carbon/human/HU = user

		if(HU.anti_magic_check()) //are we shielded?
			return

		playsound(loc, 'sound/misc/gold_license.ogg', 100, TRUE, -1)
		say("SKRAAAAK!! GUARDEZ!! GUARDEZ!! CREACHER DANS L'ZONE SECURISEE!!")
		user.consider_ambush(TRUE, TRUE, min_dist = WARDEN_AMBUSH_MIN, max_dist = WARDEN_AMBUSH_MAX)

	else
		playsound(loc, 'sound/misc/gold_license.ogg', 100, TRUE, -1)
		say("SKRAAAAK!! GUARDEZ!! GUARDEZ!! CREACHER DANS L'ZONE SECURISEE!!")
		user.consider_ambush(TRUE, TRUE, min_dist = WARDEN_AMBUSH_MIN, max_dist = WARDEN_AMBUSH_MAX)


/obj/structure/fluff/walldeco/alarmevil/proc/turnthetvoff() //mustaaard

	var/oldx = pixel_x
	animate(src, pixel_x = oldx+1, time = 1)
	animate(pixel_x = oldx-1, time = 1)
	animate(pixel_x = oldx, time = 1)
	sleep(50)
	src.onoff = 0
	icon_state = "alarm_evil_off"