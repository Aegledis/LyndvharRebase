//hello mapper reading this. heed myne warnings, sire!
//this is a reviel murmur that spawns an ambush
//you may want to make a child of the area you're putting this in to ensure it spawns the 'correct' ambush mobs
//can be bypassed with money or lockpick

/obj/structure/fluff/walldeco/alarmevil
	name = "bloodhead"
	icon = 'modular_lynd/icons/decoration.dmi'
	icon_state = "alarm_evil"
	desc = "Blood gently trickles with each blink. Best not get into its gaze. Mammons gleam at the bottom of its maw."
	pixel_y = 32
	alpha = 60
	var/next_yap = 0
	var/onoff = 1 //Init on

/obj/structure/fluff/walldeco/alarmevil/attack_hand(mob/living/user) //if touch, activates ambush. duh.

	if(onoff == 0) //dont do anything if we r off
		return

	user.changeNext_move(CLICK_CD_MELEE)

	if(!(HAS_TRAIT(user, TRAIT_NOBLE)))
		playsound(src, 'sound/misc/kybraxor.ogg', 100, TRUE, -1)
		say("SCRAAK! LACHER-MOI MAMMON, CREACHER!! GUAARDEZ!!")
		user.ambushable = TRUE //this shit literally does not work otherwise bro, idfk
		user.consider_ambush(always = TRUE, ignore_cooldown = TRUE, min_dist = 1, max_dist = 7, silent = FALSE)
		turnthetvoff()
		return

/obj/structure/fluff/walldeco/alarmevil/attackby(obj/item/I, mob/user, autobump = FALSE)

	if(onoff == 0) //dont do anything if we r off
		return

	if(istype(I, /obj/item/roguecoin))
		playsound(src, 'sound/misc/bug.ogg', 100, TRUE, -1)
		say("SCRAAK, SYSTEME BONNE NUIT POR VOTRE GRACE. MERCI BIEN.")
		qdel(I)
		turnthetvoff()

	if(istype(I, /obj/item/lockpick)) //just let em have it. this is more a fluff thing
		to_chat(user, "<span class='warning'>I start trying to disable \the [src.name]...</span>")
		playsound(src.loc, 'sound/foley/doors/lockrattle.ogg', 5, TRUE)
		if(do_after(user,100, target = src))
			say("O, la morte... To sleep?! Perchance, to DREAM...")
			src.onoff = 0 //nightnight!
			icon_state = "alarm_evil_off"
			playsound(src.loc, 'sound/items/pickgood1.ogg', 5, TRUE)
			playsound(src, 'sound/misc/gold_menu.ogg', 100, TRUE, -1)

	if(istype(I, /obj/item/melee/touch_attack/lesserknock))
		to_chat(user, "<span class='warning'>I start trying to disable \the [src.name]...</span>")
		playsound(src.loc, 'sound/foley/doors/lockrattle.ogg', 5, TRUE)
		if(do_after(user,100, target = src))
			say("O, la morte... To sleep?! Perchance, to DREAM...")
			src.onoff = 0 //nightnight!
			icon_state = "alarm_evil_off"
			playsound(src.loc, 'sound/items/pickgood1.ogg', 5, TRUE)
			playsound(src, 'sound/misc/gold_menu.ogg', 100, TRUE, -1)


	else
		return //no cheese

/obj/structure/fluff/walldeco/alarmevil/Crossed(mob/living/user)

	if(onoff == 0)
		return

	if(ishuman(user)) //are we a person?
		var/mob/living/carbon/human/HU = user

		if(HU.anti_magic_check()) //are we shielded?
			return

		playsound(loc, 'sound/misc/gold_license.ogg', 100, TRUE, -1)
		say("SKRAAAAK!! GUARDEZ!! GUARDEZ!! CREACHER DANS L'ZONE SECURISEE!!")
		HU.ambushable = TRUE //this shit literally does not work otherwise bro, idfk
		HU.consider_ambush(always = TRUE, ignore_cooldown = TRUE, min_dist = 1, max_dist = 7, silent = FALSE)
		turnthetvoff()

	else
		playsound(loc, 'sound/misc/gold_license.ogg', 100, TRUE, -1)
		say("SKRAAAAK!! GUARDEZ!! GUARDEZ!! CREACHER DANS L'ZONE SECURISEE!!")
		user.ambushable = TRUE //this shit literally does not work otherwise bro, idfk
		user.consider_ambush(always = TRUE, ignore_cooldown = TRUE, min_dist = 1, max_dist = 7, silent = FALSE)
		turnthetvoff()


/obj/structure/fluff/walldeco/alarmevil/proc/turnthetvoff() //mustaaard

	src.onoff = 0 //nightnight!
	alpha = 255

	var/oldx = pixel_x
	animate(src, pixel_x = oldx+1, time = 1)
	animate(pixel_x = oldx-1, time = 1)
	animate(pixel_x = oldx, time = 1)
	sleep(50)
	icon_state = "alarm_evil_off"