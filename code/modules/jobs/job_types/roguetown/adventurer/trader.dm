/datum/job/roguetown/trader
	title = "Trader"
	flag = TRADER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	allowed_races = RACES_ALL_KINDS
	tutorial = "A traveling salesman, a peddler of goods - commerce is your expertise, and you've come to this land to make a fortune. Whether you'll actually survive the journey to reach a destination of commerce is another matter altogether. THe winding paths of this territory are not very friendly, after all.."
	outfit = null
	outfit_female = null
	display_order = JDO_TRADER
	show_in_credits = FALSE
	min_pq = 0
	max_pq = null

	advclass_cat_rolls = list(CTAG_TRADER = 20)
	PQ_boost_divider = 10

	announce_latejoin = FALSE
	wanderer_examine = TRUE
	advjob_examine = TRUE
	always_show_on_latechoices = TRUE
	job_reopens_slots_on_death = TRUE
	same_job_respawn_delay = 1 MINUTES
	job_traits = list(TRAIT_SEEPRICES)
	job_subclasses = list(
		/datum/advclass/trader/jeweler,
		/datum/advclass/trader/brewer,
		/datum/advclass/trader/scholar,
		/datum/advclass/trader/harlequin,
		/datum/advclass/trader/cuisiner,
		/datum/advclass/trader/peddler,
		/datum/advclass/trader/doomsayer,
	)
