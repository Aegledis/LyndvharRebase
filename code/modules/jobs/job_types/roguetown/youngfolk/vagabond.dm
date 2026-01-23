/datum/job/roguetown/orphan
	tutorial = "Beowricke is not a kind realm. Many have lost everything in the pursuit of even a meagre existence in these days of turmoil and civil strife. You have unfortunately found yourself as one such victim of circumstance, and have nothing left besides your wit and tongue. Perhaps you will be able to make something of your pathetic existence before it is snuffed out."
	outfit = null
	outfit_female = null
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)

	advclass_cat_rolls = list(CTAG_VAGABOND = 20)
	wanderer_examine = TRUE
	advjob_examine = FALSE
	always_show_on_latechoices = TRUE
	job_reopens_slots_on_death = TRUE
	same_job_respawn_delay = 10 SECONDS
	announce_latejoin = FALSE
