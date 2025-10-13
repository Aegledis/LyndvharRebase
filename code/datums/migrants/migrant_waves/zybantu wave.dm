/datum/migrant_wave/zybantu
	name = "Zybanti Emir"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/zybantu
	weight = 50
	downgrade_wave = /datum/migrant_wave/zybantu_down_one
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/janissary = 1,
		/datum/migrant_role/zybantu/dancer = 1,
	)
	greet_text = "On missive from the western authority of the Raj, this party has been sent to this continent to try and establish relations with one of the few standing cities unaffected by the Lyndhardtian civil war."

/datum/migrant_wave/zybantu_down_one
	name = "Zybanti Emir"
	shared_wave_type = /datum/migrant_wave/zybantu
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_down_two
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/janissary = 1,
	)
	greet_text = "On missive from the western authority of the Raj, this party has been sent to this continent to try and establish relations with one of the few standing cities unaffected by the Lyndhardtian civil war. Unfortunately, the Blade Dancer was lost at sea."

/datum/migrant_wave/zybantu_down_two
	name = "Zybanti Emir"
	shared_wave_type = /datum/migrant_wave/zybantu
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
	)
	greet_text = "On missive from the western authority of the Raj, this party has been sent to this continent to try and establish relations with one of the few standing cities unaffected by the Lyndhardtian civil war. Unfortunately the Emir has lost both their bodyguards. May they pray for safeguard."
