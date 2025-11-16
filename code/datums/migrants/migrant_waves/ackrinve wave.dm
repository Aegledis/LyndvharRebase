/datum/migrant_wave/ackrinve
	name = "Ackrinval Incursion"
	max_spawns = 1 
	weight = 100
	downgrade_wave = /datum/migrant_wave/ackrinve_down_one
	roles = list(
		/datum/migrant_role/ackrinve/necromancer = 1,
		/datum/migrant_role/ackrinve/knight = 1,
	)
	greet_text = "A direct incursion from the far off wastes of Ackrinval, brought here through a fiendish intent for the region."

/datum/migrant_wave/ackrinve_down_one
	name = "Ackrinval Incursion"
	shared_wave_type = /datum/migrant_wave/ackrinve
	downgrade_wave = /datum/migrant_wave/ackrinve_down_two
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/ackrinve/necromancer = 1,
	)
	greet_text = "A direct incursion from the far off wastes of Ackrinval, brought here through a fiendish intent for the region."

/datum/migrant_wave/ackrinve_down_two
	name = "Ackrinval Incursion"
	shared_wave_type = /datum/migrant_wave/ackrinve
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/ackrinve/knight = 1
	)
	greet_text = "A direct incursion from the far off wastes of Ackrinval, brought here through a fiendish intent for the region."
