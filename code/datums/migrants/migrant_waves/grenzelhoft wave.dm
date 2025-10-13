/datum/migrant_wave/grenzelhoft
	name = "Grenzelhoft Envoy"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/grenzelhoft
	weight = 50
	downgrade_wave = /datum/migrant_wave/grenzelhoft_down_one
	roles = list(
		/datum/migrant_role/grenzel/envoy = 1,
		/datum/migrant_role/grenzel/doppelsoldner = 2,
		/datum/migrant_role/grenzel/boltslinger = 1,
	)
	greet_text = "On missive from the western elector of Huttsingen, this party has been sent to this continent to try and establish contact with one of the few standing cities unaffected by the Lyndhardtian civil war."

/datum/migrant_wave/grenzelhoft_down_one
	name = "Grenzelhoft Envoy"
	shared_wave_type = /datum/migrant_wave/grenzelhoft
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/grenzelhoft_down_two
	roles = list(
		/datum/migrant_role/grenzel/envoy = 1,
		/datum/migrant_role/grenzel/doppelsoldner = 2,
	)
	greet_text = "On missive from the western elector of Huttsingen, this party has been sent to this continent to try and establish contact with one of the few standing cities unaffected by the Lyndhardtian civil war. The journey was difficult, and thus the Boltslinger was lost."

/datum/migrant_wave/grenzelhoft_down_two
	name = "Grenzelhoft Envoy"
	shared_wave_type = /datum/migrant_wave/grenzelhoft
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/grenzelhoft_down_three
	roles = list(
		/datum/migrant_role/grenzel/envoy = 1,
		/datum/migrant_role/grenzel/doppelsoldner = 1,
	)
	greet_text = "On missive from the western elector of Huttsingen, this party has been sent to this continent to try and establish contact with one of the few standing cities unaffected by the Lyndhardtian civil war. The journey was difficult, and a Doppelsoldner and the Boltslinger were lost."

/datum/migrant_wave/grenzelhoft_down_three
	name = "Grenzelhoft Envoy"
	shared_wave_type = /datum/migrant_wave/grenzelhoft
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/grenzel/envoy = 1,
	)
	greet_text = "On missive from the western elector of Huttsingen, this party has been sent to this continent to try and establish contact with one of the few standing cities unaffected by the Lyndhardtian civil war. What horrible luck- everyone but the Envoy was lost in the journey."
