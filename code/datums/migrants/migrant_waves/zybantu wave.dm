/datum/migrant_wave/zybantu_noble
	name = "Zybantu Emir"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	weight = 50
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_one
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/amirah = 1,
		/datum/migrant_role/zybantu/janissary = 2,
		/datum/migrant_role/zybantu/zeybek = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_one
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_two
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/amirah = 1,
		/datum/migrant_role/zybantu/janissary = 1,
		/datum/migrant_role/zybantu/zeybek = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_two
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_three
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/amirah = 1,
		/datum/migrant_role/zybantu/janissary = 2,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_three
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_four
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/janissary = 2,
		/datum/migrant_role/zybantu/zeybek = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_four
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_five
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/janissary = 1,
		/datum/migrant_role/zybantu/zeybek = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_five
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_six
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/amirah = 1,
		/datum/migrant_role/zybantu/janissary = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_six
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_seven
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/amirah = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_seven
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_eight
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/zeybek = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_eight
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	downgrade_wave = /datum/migrant_wave/zybantu_noble_down_nine
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
		/datum/migrant_role/zybantu/janissary = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."

/datum/migrant_wave/zybantu_noble_down_nine
	name = "Zybantu Emir"
	shared_wave_type = /datum/migrant_wave/zybantu_noble
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/zybantu/emir = 1,
	)
	greet_text = "You are far from home on missive from the Zybantu Raj."
