/datum/advclass/mercenary/freelancer
	name = "Kargradi Kardforgató"
	tutorial = "As a member of the Kargrade Freifechters - \"Freelancers\" - you are a member of the Potentate's largest mercenary guild from the southeastern most part of Grenzelhoft, recognized as a mercenary force by the Kaiser themself, tasked with protecting a portion of the border against the Khaliphate. It is not uncommon to see one of these warriors dressed in equipment similar to the Khaliphate- as they adorn themselves in their gear like trophies. It has waned in recent years due to a lack of necessity, causing contingents to find work elsewhere- this one in particular made its way to Llewyn."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	outfit = /datum/outfit/job/roguetown/mercenary/freelancer
	subclass_languages = list(/datum/language/kargradi)
	class_select_category = CLASS_CAT_KARGRADI
	category_tags = list(CTAG_MERCENARY)
	cmode_music = 'sound/music/combat_noble.ogg'
	traits_applied = list(TRAIT_BADTRAINER, TRAIT_OUTDOORSMAN)
	//To give you an edge in specialty moves like feints and stop you from being feinted
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 1,
		STATKEY_CON = 2,
		STATKEY_STR = 1
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE
	)

/datum/outfit/job/roguetown/mercenary/freelancer/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("As part of the Potentate's leading vanguard, you have served diligently along the Khaliphate border. Wielder of Beowricke's most versatile and noble weapon, you needn't anything else. You can choose a regional longsword."))
	l_hand = /obj/item/rogueweapon/scabbard/sword
	armor = /obj/item/clothing/suit/roguetown/armor/plate/half/fencer	//Experimental.
	var/weapons = list("Freifechter Longsword", "Dunargi Longsword", "Kriegsmesser", "Field Longsword")
	if(H.mind)
		var/weapon_choice = input(H, "Choose your weapon.", "TAKE UP ARMS") as anything in weapons
		switch(weapon_choice)
			if("Freifechter Longsword")		//A sharp feder. Less damage, better defense. Definitely not a good choice.
				r_hand = /obj/item/rogueweapon/sword/long/frei
				beltr = /obj/item/rogueweapon/huntingknife/idagger
			if("Dunargi Longsword")		//A longsword with a compound ricasso. Accompanied by a traditional flip knife.
				r_hand = /obj/item/rogueweapon/sword/long/dunargi
				beltr = /obj/item/rogueweapon/huntingknife/idagger/navaja
			if("Kriegsmesser")		//Och- eugh- German!
				r_hand = /obj/item/rogueweapon/sword/long/kriegmesser
				beltr = /obj/item/rogueweapon/huntingknife/idagger
			if("Field Longsword")		//A common longsword.
				r_hand = /obj/item/rogueweapon/sword/long
				beltr = /obj/item/rogueweapon/huntingknife/idagger
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	head = /obj/item/clothing/head/roguetown/roguehood/pontifex
	mask = /obj/item/clothing/mask/rogue/lordmask/khazumian
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/pontifex
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	gloves = /obj/item/clothing/gloves/roguetown/leather
	backr = /obj/item/storage/backpack/rogue/satchel/short

	backpack_contents = list(/obj/item/roguekey/mercenary = 1,
	/obj/item/flashlight/flare/torch/lantern = 1)
	H.merctype = 6

/datum/advclass/mercenary/freelancer/lancer
	name = "Kargradi Lándzsa"
	tutorial = "As a member of the Kargrade Freifechters - \"Freelancers\" - you are a member of the Potentate's largest mercenary guild from the southeastern most part of Grenzelhoft, recognized as a mercenary force by the Kaiser themself, tasked with protecting a portion of the border against the Khaliphate. It is not uncommon to see one of these warriors dressed in equipment similar to the Khaliphate- as they adorn themselves in their gear like trophies. It has waned in recent years due to a lack of necessity, causing contingents to find work elsewhere- this one in particular made its way to Llewyn."
	outfit = /datum/outfit/job/roguetown/mercenary/freelancer_lancer
	subclass_languages = list(/datum/language/kargradi)
	traits_applied = list(TRAIT_BADTRAINER, TRAIT_OUTDOORSMAN)

	subclass_stats = list(
		STATKEY_CON = 3,
		STATKEY_PER = 3,
		STATKEY_SPD = -1,
		STATKEY_STR = 2,
	)
	subclass_skills = list(
		/datum/skill/combat/polearms = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/axes = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE
	)

/datum/outfit/job/roguetown/mercenary/freelancer_lancer/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You put complete trust in your polearm, the most effective weapon the world has seen. Why wear armour when you cannot be hit? You can choose your polearm, and are exceptionally accurate."))
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/freifechter
	backl = /obj/item/rogueweapon/scabbard/gwstrap
	var/weapons = list("Freifechter Spear", "Boar Spear", "Lucerne")
	if(H.mind)
		var/weapon_choice = input(H, "Choose your weapon.", "TAKE UP ARMS") as anything in weapons
		switch(weapon_choice)
			if("Freifechter Spear")		//A steel spear with a cool-looking stick & a banner sticking out of it.
				r_hand = /obj/item/rogueweapon/spear/boar/frei
				l_hand = /obj/item/rogueweapon/katar/punchdagger/frei
			if("Boar Spear")
				r_hand = /obj/item/rogueweapon/spear/boar
				wrists = /obj/item/rogueweapon/katar/punchdagger
			if("Lucerne")		//A normal lucerne for the people that get no drip & no bitches.
				r_hand = /obj/item/rogueweapon/eaglebeak/lucerne
				wrists = /obj/item/rogueweapon/katar/punchdagger

	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	head = /obj/item/clothing/head/roguetown/roguehood/pontifex
	mask = /obj/item/clothing/mask/rogue/lordmask/khazumian
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	gloves = /obj/item/clothing/gloves/roguetown/leather
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/pontifex
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	backr = /obj/item/storage/backpack/rogue/satchel/short

	backpack_contents = list(/obj/item/roguekey/mercenary = 1,
	/obj/item/flashlight/flare/torch/lantern = 1)
	H.merctype = 6
