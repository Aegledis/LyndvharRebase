/datum/migrant_wave/grenzel_envoy
	name = "Grenzelhoftian Envoy"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/grenzel_envoy
	weight = 50
	downgrade_wave = /datum/migrant_wave/grenzel_envoy_down_one
	roles = list(
		/datum/migrant_role/grenzel/envoy = 1,
		/datum/migrant_role/grenzel/bodyguard = 1,
		/datum/migrant_role/grenzel/crossbow = 1,
	)
	greet_text = "On missive from the western elector of Huttsingen, this party has been sent to this continent to try and establish contact with one of the few standing cities unaffected by the Lyndhardtian civil war."

/datum/migrant_wave/grenzel_envoy_down_one
	name = "Grenzelhoftian Envoy"
	can_roll = FALSE
	shared_wave_type = /datum/migrant_wave/grenzel_envoy
	downgrade_wave = /datum/migrant_wave/grenzel_envoy_down_two
	roles = list(
		/datum/migrant_role/grenzel/envoy = 1,
		/datum/migrant_role/grenzel/bodyguard = 1
	)
	greet_text = "On missive from the western elector of Huttsingen, this party has been sent to this continent to try and establish contact with one of the few standing cities unaffected by the Lyndhardtian civil war. The journey was difficult, and thus the Boltslinger was lost."

/datum/migrant_wave/grenzel_envoy_down_two
	name = "Grenzelhoftian Envoy"
	can_roll = FALSE
	shared_wave_type = /datum/migrant_wave/grenzel_envoy
	roles = list(
		/datum/migrant_role/grenzel/envoy = 1,
	)
	greet_text = "On missive from the western elector of Huttsingen, this party has been sent to this continent to try and establish contact with one of the few standing cities unaffected by the Lyndhardtian civil war. What horrible luck- everyone but the Envoy was lost in the journey."
