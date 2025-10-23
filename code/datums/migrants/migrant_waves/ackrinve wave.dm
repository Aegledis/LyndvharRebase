/datum/migrant_wave/ackrinve
	name = "Ackrinval Incursion"
	max_spawns = 3 //debug purposes
	weight = 100 //debug purposes
	downgrade_wave = /datum/migrant_wave/ackrinve_down_one
	roles = list(
		/datum/migrant_role/ackrinve/necromancer = 1,
		/datum/migrant_role/ackrinve/knight = 2,
	)
	greet_text = "A maurading band of raiders from the Accursed wastelands of Ackrinve you travel to Lyndvhar for the purpose of bringing RUIN to the FALSE Patheon and its followers. Bring DEATH to all and cause carnage in worship of ZIZO"

/datum/migrant_wave/ackrinve_down_one
	name = "Ackrinval Incursion"
	shared_wave_type = /datum/migrant_wave/ackrinve
	downgrade_wave = /datum/migrant_wave/ackrinve_down_two
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/ackrinve/necromancer = 1,
		/datum/migrant_role/ackrinve/knight = 1,
	)
	greet_text = "A maurading band of raiders from the Accursed wastelands of Ackrinve you travel to Lyndvhar for the purpose of bringing RUIN to the FALSE Patheon and its followers. Bring DEATH to all and cause carnage in worship of ZIZO"

/datum/migrant_wave/ackrinve_down_two
	name = "Ackrinval Incursion"
	shared_wave_type = /datum/migrant_wave/ackrinve
	downgrade_wave = /datum/migrant_wave/ackrinve_down_three
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/ackrinve/necromancer = 1
	)
	greet_text = "A maurading band of raiders from the Accursed wastelands of Ackrinve you travel to Lyndvhar for the purpose of bringing RUIN to the FALSE Patheon and its followers. Bring DEATH to all and cause carnage in worship of ZIZO"

/datum/migrant_wave/ackrinve_down_three
	name = "Ackrinval Incursion"
	shared_wave_type = /datum/migrant_wave/ackrinve
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/ackrinve/knight = 1
	)
	greet_text = "A maurading band of raiders from the Accursed wastelands of Ackrinve you travel to Lyndvhar for the purpose of bringing RUIN to the FALSE Patheon and its followers. Bring DEATH to all and cause carnage in worship of ZIZO"
