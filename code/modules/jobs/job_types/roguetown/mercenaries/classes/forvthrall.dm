/datum/advclass/mercenary/forvthrall
	name = "Forvheipal Thrall"
	tutorial = "A thrall-warrior from the strange and enigmatic kingdom in Yoheon, Forvheipal. The thralls are a sellsword contingent of the Zapyrixian Order- mostly made up of Lupians and Vulpkian slaves-from-birth. They will do any work for the highest bidder as per their contract made from birth- and thus you will, too."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	class_select_category = CLASS_CAT_FORVHEIPAL
	outfit = /datum/outfit/job/roguetown/mercenary/forvthrall
	subclass_languages = list(/datum/language/forvheipan)
	cmode_music = 'sound/music/combat_blackstar.ogg'
	traits_applied = list(TRAIT_MEDIUMARMOR, TRAIT_STEELHEARTED)
	category_tags = list(CTAG_MERCENARY)
	subclass_stats = list(
		STATKEY_WIL = 2,
		STATKEY_CON = 2,
		STATKEY_STR = 2,
		STATKEY_PER = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/bows = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/crossbows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/maces = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/riding = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/shields = SKILL_LEVEL_APPRENTICE,
	)

/datum/advclass/mercenary/forvjavelineer
	name = "Forvheipal Javelineer"
	tutorial = "The Forvheipal Javelineers are the Zapyrixian Order's ranged thrall, wielding javelins and relying on their agility to avoid blows."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	outfit = /datum/outfit/job/roguetown/mercenary/forvjavelineer
	subclass_languages = list(/datum/language/forvheipan)
	cmode_music = 'sound/music/combat_blackstar.ogg'
	class_select_category = CLASS_CAT_FORVHEIPAL
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_DODGEEXPERT, TRAIT_STEELHEARTED)
	subclass_stats = list(
		STATKEY_WIL = 2,
		STATKEY_INT = 1,
		STATKEY_STR = -1,
		STATKEY_PER = 3,
		STATKEY_SPD = 2
	)
	subclass_skills = list(
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/bows = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/sneaking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/tracking = SKILL_LEVEL_JOURNEYMAN,
	)


/datum/outfit/job/roguetown/mercenary/forvthrall/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	neck = /obj/item/clothing/neck/roguetown/gorget/forvcollar
	mask = /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/gallant
	pants = /obj/item/clothing/under/roguetown/splintlegs
	gloves = /obj/item/clothing/gloves/roguetown/angle
	belt = /obj/item/storage/belt/rogue/leather/steel/tasset
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/light
	wrists = /obj/item/clothing/wrists/roguetown/splintarms
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/light
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/rogueweapon/mace/warhammer/steel
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backl = /obj/item/rogueweapon/shield/heater
	backpack_contents = list(/obj/item/rogueweapon/huntingknife, /obj/item/roguekey/mercenary, /obj/item/rogueweapon/scabbard/sheath)
	if(H.mind)
		var/helms = list("Barred Helmet", "Volfplate Helmet")
		var/helms_choice = input(H,"Choose your helmet.", "TAKE UP HELMS") as anything in helms
		switch(helms_choice)
			if("Barred Helmet")
				H.equip_to_slot_or_del(new /obj/item/clothing/head/roguetown/helmet/heavy/sheriff, SLOT_HEAD, TRUE)
			if("Volfplate Helmet")
				H.equip_to_slot_or_del(new /obj/item/clothing/head/roguetown/helmet/heavy/volfplate, SLOT_HEAD, TRUE)

/datum/outfit/job/roguetown/mercenary/forvjavelineer/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("The Forvheipal Javelineers are the Zapyrixian Order's ranged thrall, wielding javelins and relying on their agility to avoid blows."))
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	neck = /obj/item/clothing/neck/roguetown/gorget/forvcollar
	pants = /obj/item/clothing/under/roguetown/splintlegs
	gloves = /obj/item/clothing/gloves/roguetown/leather
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	belt = /obj/item/storage/belt/rogue/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/light
	l_hand = /obj/item/rogueweapon/sword/short/messer
	beltl = /obj/item/rogueweapon/scabbard/sword
	beltr = /obj/item/quiver/javelin/steel
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backl = /obj/item/quiver/javelin/steel
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel, /obj/item/roguekey/mercenary, /obj/item/rogueweapon/scabbard/sheath, /obj/item/storage/belt/rogue/pouch/coins/poor)
	if(H.mind)
		var/helmets = list("Hound Mask", "Volfplate Helmet")
		var/helmets_choice = input(H,"Choose your helmet.", "TAKE UP HELMS") as anything in helmets
		switch(helmets_choice)
			if("Hound Mask")
				H.equip_to_slot_or_del(new /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/gallant, SLOT_HEAD, TRUE)
				H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/facemask/steel/hound, SLOT_WEAR_MASK, TRUE)
			if("Volfplate Helmet")
				H.equip_to_slot_or_del(new /obj/item/clothing/head/roguetown/helmet/heavy/volfplate, SLOT_HEAD, TRUE)
				H.equip_to_slot_or_del(new /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/gallant, SLOT_WEAR_MASK, TRUE)
