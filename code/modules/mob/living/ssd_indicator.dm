GLOBAL_DATUM_INIT(ssd_indicator, /mutable_appearance, mutable_appearance('icons/mob/ssd_indicator.dmi', "default0", FLY_LAYER))

/mob/living/proc/set_ssd_indicator(state)
	if(state && stat != DEAD)
		add_overlay(GLOB.ssd_indicator)
		ADD_TRAIT(src, TRAIT_SSD, "ssd")
	else
		REMOVE_TRAIT(src, TRAIT_SSD, "ssd")
		cut_overlay(GLOB.ssd_indicator)
	return state

