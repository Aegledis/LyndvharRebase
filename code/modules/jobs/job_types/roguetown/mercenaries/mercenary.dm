/datum/job/roguetown/mercenary
	title = "Mercenary"
	flag = MERCENARY
	department_flag = MERCENARIES
	faction = "Station"
	total_positions = 8
	spawn_positions = 8
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	tutorial = "Blood stains your hands and the coins you hold. You are a sell-sword, a mercenary, a contractor of war. Where you come from, what you are, who you serve.. none of it matters. What matters is that the mammon flows to your pocket."
	display_order = JDO_MERCENARY
	selection_color = JCOLOR_MERCENARY
	min_pq = 0
	max_pq = null
	round_contrib_points = 1
	outfit = null	//Handled by classes
	outfit_female = null
	advclass_cat_rolls = list(CTAG_MERCENARY = 20)
	job_traits = list(TRAIT_OUTLANDER, TRAIT_STEELHEARTED)
	always_show_on_latechoices = TRUE
	class_categories = TRUE
	job_subclasses = list(
		/datum/advclass/mercenary/anthrax,
		/datum/advclass/mercenary/atgervi,
		/datum/advclass/mercenary/atgervi/shaman,
		/datum/advclass/mercenary/condottiero,
		/datum/advclass/mercenary/desert_rider,
		/datum/advclass/mercenary/desert_rider/zeybek,
		/datum/advclass/mercenary/forvthrall,
		/datum/advclass/mercenary/forvjavelineer,
		/datum/advclass/mercenary/vaquero,
		/datum/advclass/mercenary/freelancer,
		/datum/advclass/mercenary/freelancer/lancer,
		/datum/advclass/mercenary/grenzelhoft,
		/datum/advclass/mercenary/grenzelhoft/halberdier,
		/datum/advclass/mercenary/grenzelhoft/crossbowman,
		/datum/advclass/mercenary/routier,
		/datum/advclass/mercenary/xuefengclan,
		/datum/advclass/mercenary/xuefengclan/gungsu,
		/datum/advclass/mercenary/seonjang,
		/datum/advclass/mercenary/steppesman/sabrevet,
		/datum/advclass/mercenary/steppesman/sapper,
		/datum/advclass/mercenary/steppesman/archer,
		/datum/advclass/mercenary/steppesman/infantry,
		/datum/advclass/mercenary/crestguardian,
		/datum/advclass/mercenary/crestguardian/ranger,
		/datum/advclass/mercenary/underdweller,
		/datum/advclass/mercenary/grudgebearer,
		/datum/advclass/mercenary/grudgebearer/soldier
	)
