/datum/job/roguetown/orthodoxist
	title = "Orthodoxist"
	flag = ORTHODOXIST
	department_flag = INQUISITION
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	allowed_races = RACES_SHUNNED_UP
	allowed_patrons = list(/datum/patron/old_god) //You MUST have a Psydonite character to start. Just so people don't get japed into Oops Suddenly Psydon!
	tutorial = "A long time ago, you were wrought with terror and dismay- that was until the holy Valorian Inquisition found you. Ever since then- they are all you have known for your entire lyfe and are some of your most trusted allies and friends. Despite the many hardships you have faced in this foreign land of nonbelievers and aggression, you still will continue to endure His trials. Serve your Inquisitorial leader faithfully in His name, and perhaps some vestige of reward will find its way into His faithful servants."
	selection_color = JCOLOR_INQUISITION
	outfit = null
	outfit_female = null
	display_order = JDO_ORTHODOXIST
	min_pq = 0
	max_pq = null
	round_contrib_points = 2
	advclass_cat_rolls = list(CTAG_INQUISITION = 20)
	wanderer_examine = FALSE
	advjob_examine = TRUE
	give_bank_account = 15
	job_traits = list(TRAIT_OUTLANDER, TRAIT_STEELHEARTED, TRAIT_INQUISITION)
	job_subclasses = list(
		/datum/advclass/psydoniantemplar,
		/datum/advclass/confessor
	)
