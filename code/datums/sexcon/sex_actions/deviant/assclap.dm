/datum/sex_action/assclap
	name = "Clap Ass"
	category = SEX_CATEGORY_MISC
	do_time = 1.5 SECONDS
	stamina_cost = 1

/datum/sex_action/assclap/shows_on_menu(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user != target)
		return FALSE
	return TRUE

/datum/sex_action/assclap/can_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user != target)
		return FALSE
	return TRUE

/datum/sex_action/assclap/on_start(mob/living/carbon/human/user, mob/living/carbon/human/target)
	user.visible_message(span_warning("[user] starts clapping [user.p_their()] ass together..."))

/datum/sex_action/assclap/on_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] claps [user.p_their()] ass together..."))
	playsound(user, pick(list('sound/misc/mat/clap1.ogg', 'sound/misc/mat/clap2.ogg', 'sound/misc/mat/clap3.ogg', 'sound/misc/mat/clap4.ogg', 'sound/misc/mat/clap5.ogg', 'sound/misc/mat/clap6.ogg', 'sound/misc/mat/clap7.ogg', 'sound/misc/mat/clap8.ogg', 'sound/misc/mat/clap9.ogg')), 50, TRUE, -2, ignore_walls = FALSE)
	user.sexcon.handle_passive_ejaculation()

/datum/sex_action/assclap/on_finish(mob/living/carbon/human/user, mob/living/carbon/human/target)
	user.visible_message(span_warning("[user] stops clapping [user.p_their()] ass."))

/datum/sex_action/assclap/is_finished(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user.sexcon.finished_check())
		return TRUE
	return FALSE
