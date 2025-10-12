/datum/migrant_wave/noble
	name = "Wandering Noble"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/noble
	weight = 50
	downgrade_wave = /datum/migrant_wave/noble_down_one
	roles = list(
		/datum/migrant_role/noble/aristocrat = 1,
		/datum/migrant_role/noble/bodyguard = 1,
	)
	greet_text = "A duo of an aristocrat and bodyguard, simply wandering the wilderness. What they will do with themself is up to the Aristocrat to decide."

/datum/migrant_wave/noble_down_one
	name = "Wandering Noble"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/noble
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/noble/aristocrat = 1
	)
	greet_text = "An aristocrat, simply wandering the wilderness. What they will do with themself is up to them to decide. Sadly, they could not afford hired muscle."
