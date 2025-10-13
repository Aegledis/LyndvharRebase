/datum/advclass/mercenary/routier
	name = "Valorian Routiers"
	tutorial = "The Routiers are a rather ingrained mercenary band in the city- having made their trek here from Valoria a few years earlier. Originally a brotherhood of exiled warriors who seek to profit in peacetime- they have effectively just become another standard in the halls of the Mercenary Guild."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = NON_DWARVEN_RACE_TYPES
	outfit = /datum/outfit/job/roguetown/mercenary/routier
	subclass_languages = list(/datum/language/valorian)
	class_select_category = CLASS_CAT_VALORIA
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_HEAVYARMOR)
	cmode_music = 'sound/music/combat_routier.ogg'
	subclass_stats = list(
		STATKEY_CON = 2,
		STATKEY_WIL = 2,
		STATKEY_STR = 1,
		STATKEY_INT = 1,
		STATKEY_SPD = -2
	)
	subclass_skills = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/maces = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/crossbows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/riding = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/mercenary/routier/pre_equip(mob/living/carbon/human/H)
	..()

	// CLASS ARCHETYPES
	H.adjust_blindness(-3)
	var/classes = list("Swordsman","Macebearer","Flailman", "Foot Lancer")
	if(H.mind)
		var/classchoice = input(H, "Choose your archetypes", "Available archetypes") as anything in classes
		H.set_blindness(0)
		to_chat(H, span_warning("You are a Routier of Valoria, well experienced in the use of your chosen arms."))
		switch(classchoice)
			if("Swordsman")
				H.adjust_skillrank_up_to(/datum/skill/combat/swords, 3, TRUE)
				beltl = /obj/item/rogueweapon/scabbard/sword
				l_hand = /obj/item/rogueweapon/sword/short/falchion
			if("Macebearer")
				H.adjust_skillrank_up_to(/datum/skill/combat/maces, 3, TRUE)
				beltl = /obj/item/rogueweapon/mace/steel/morningstar
			if("Flailman")
				H.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 3, TRUE)
				beltl = /obj/item/rogueweapon/flail/sflail
			if("Foot Lancer")
				H.adjust_skillrank_up_to(/datum/skill/combat/polearms, 3, TRUE)
				r_hand = /obj/item/rogueweapon/spear/lance
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	belt = /obj/item/storage/belt/rogue/leather/steel/tasset
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	neck = /obj/item/clothing/neck/roguetown/fencerguard
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/valorian
	head = /obj/item/clothing/head/roguetown/helmet/valorian
	armor = /obj/item/clothing/suit/roguetown/armor/plate/valorian
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/valorian
	shoes = /obj/item/clothing/shoes/roguetown/boots/valorian
	gloves = /obj/item/clothing/gloves/roguetown/valorian
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backl = /obj/item/rogueweapon/shield/tower
	backpack_contents = list(
		/obj/item/roguekey/mercenary = 1,
		/obj/item/flashlight/flare/torch = 1,
		)
	H.merctype = 10
