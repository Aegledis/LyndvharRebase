// Wretch, soft antagonists. Giving them 9 points as stat (matching mercs) on average since they're a driving antagonist on AP or assistant antagonist. 
/datum/job/roguetown/wretch
	title = "Wretch"
	flag = WRETCH
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 8
	spawn_positions = 8
	allowed_races = RACES_ALL_KINDS
	tutorial = "Somewhere in your lyfe, you fell to the wrong side of civilization- be it voices whispering you off the trail into the arms of evil, or simple criminal activity. Hounded by the consequences of your actions in the form of exclusion from society at large and armed responses to your presence, you now threaten the peace of those who still heed the authority that condemned you. You will make them all pay, eventually."
	outfit = null
	outfit_female = null
	display_order = JDO_WRETCH
	show_in_credits = FALSE
	min_pq = 8
	max_pq = null

	obsfuscated_job = TRUE

	advclass_cat_rolls = list(CTAG_WRETCH = 20)
	PQ_boost_divider = 10
	round_contrib_points = 1

	announce_latejoin = FALSE
	wanderer_examine = TRUE
	advjob_examine = TRUE
	always_show_on_latechoices = TRUE
	job_reopens_slots_on_death = TRUE
	same_job_respawn_delay = 1 MINUTES
	virtue_restrictions = list(/datum/virtue/heretic/zchurch_keyholder) //all wretch classes automatically get this
	job_traits = list(TRAIT_STEELHEARTED, TRAIT_OUTLANDER, TRAIT_OUTLAW, TRAIT_HERESIARCH, TRAIT_SELF_SUSTENANCE)
	job_subclasses = list(
		/datum/advclass/wretch/deserter,
		/datum/advclass/wretch/deserter/maa,
		/datum/advclass/wretch/berserker,
		/datum/advclass/wretch/hedgemage,
		/datum/advclass/wretch/necromancer,
		/datum/advclass/wretch/heretic,
		/datum/advclass/wretch/outlaw,
		/datum/advclass/wretch/outlaw/marauder,
		/datum/advclass/wretch/poacher,
		/datum/advclass/wretch/plaguebearer,
		/datum/advclass/wretch/pyromaniac,
		/datum/advclass/wretch/vigilante,
	)

// Proc for wretch to select a bounty
/proc/wretch_select_bounty(mob/living/carbon/human/H)
	var/wanted = list("I am a well-known outlaw!", "I am a nobody. For now.")
	var/wanted_choice = input(H, "Are you a known outlaw?") as anything in wanted
	switch(wanted_choice)
		if("I am a well-known outlaw!") //Extra challenge for those who want it
		
		if("I am a nobody. For now.") //Nothing ever happens
			return
	var/bounty_poster = input(H, "Who placed a bounty on you?", "Bounty Poster") as anything in list("The Justiciary of Lyndvhar", "The Bisphoric of Valoria", "The Holy Mother Church of Lyndhardtia")
	if(bounty_poster == "The Justiciary of Lyndvhar")
		GLOB.outlawed_players += H.real_name
	else
		GLOB.excommunicated_players += H.real_name
	
	var/bounty_severity = input(H, "How severe are your crimes?", "Bounty Amount") as anything in list("Misdeed", "Harm towards lyfe", "Horrific atrocities")
	var/bounty_total = rand(100, 400)
	switch(bounty_severity)
		if("Misdeed")
			bounty_total = rand(100, 250)
		if("Harm towards lyfe")
			bounty_total = rand(250, 400)
		if("Horrific atrocities")
			bounty_total = rand(400, 600)
	var/my_crime = input(H, "What is your crime?", "Crime") as text|null
	if (!my_crime)
		my_crime = "crimes against the Crown"
	add_bounty(H.real_name, bounty_total, FALSE, my_crime, bounty_poster)
	to_chat(H, span_danger("You are an Antagonistic role. You are expected, by choosing to be a wretch, to sow chaos and division amongst the city while driving a story. Failure to use proper gravitas for this may get you punished for Low Roleplay standards and disrupting immersion."))
