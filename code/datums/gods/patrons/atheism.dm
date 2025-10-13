/datum/patron/godless
	name = "Godless" // This isn't called Apostasy because otherwise it shows up as Patron: Apostasy which just looks absurdly dumb.
	domain = "Ontological Reality"
	desc = "No gods or kings, only man! You and others are known as what are Apostates- those who reject all divinity in favor of their own strength."
	worshippers = "Some Grenzers, Madmen, Narcissists, beasts, powerful nobility, and some dwarves"
	associated_faith = /datum/faith/godless
	mob_traits = list(TRAIT_NOFAITHHEAL)
	preference_accessible = TRUE
	undead_hater = FALSE
	confess_lines = list(
		"Gods are WORTHLESS!",
		"I DON'T NEED GODS!",
		"I AM MY OWN GOD!",
		"NO GODS, NO MASTERS!",
	)


/datum/patron/godless/can_pray(mob/living/follower)
	. = ..()
	to_chat(follower, span_danger("To whom would I even pray? To myself? Bah.."))
	return FALSE	//heathen

/datum/patron/godless/on_lesser_heal(
    mob/living/user,
    mob/living/target,
    message_out,
    message_self,
    conditional_buff,
    situational_bonus
)
	*message_out = span_info("Without any particular cause or reason, [target] is healed!")
	*message_self = span_notice("My wounds close without cause.")
