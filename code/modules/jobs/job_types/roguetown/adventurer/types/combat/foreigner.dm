/datum/advclass/foreigner
	name = "Eastern Warrior"
	tutorial = "A warrior hailing from the distant land of Saltlia, far across the sea. You carry nothing but your sword and your skill."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = NON_DWARVEN_RACE_TYPES // Clothing has no dwarf sprites.
	outfit = /datum/outfit/job/roguetown/adventurer/foreigner
	class_select_category = CLASS_CAT_NOMAD
	traits_applied = list(TRAIT_STEELHEARTED)
	category_tags = list(CTAG_ADVENTURER, CTAG_COURTAGENT, CTAG_LICKER_WRETCH) //Lyndvhar change, dont see many balance implications for foreigner vamps
	subclass_languages = list(/datum/language/saltlian)
	cmode_music = 'sound/music/combat_saltlia.ogg'
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_CON = 2,
		STATKEY_WIL = 1
	)
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE 
	)

/datum/outfit/job/roguetown/adventurer/foreigner/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("A warrior hailing from the distant land of Saltlia, far across the sea. You carry nothing but your sword and your skill."))
	head = /obj/item/clothing/head/roguetown/mentorhat
	gloves = /obj/item/clothing/gloves/roguetown/eastgloves1
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/eastpants1
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt1
	shoes = /obj/item/clothing/shoes/roguetown/boots
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	belt = /obj/item/storage/belt/rogue/leather/black
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/recipe_book/survival = 1,
		/obj/item/flashlight/flare/torch = 1,
		/obj/item/mundane/adventurer_kit = 1
		)
	H.set_blindness(0)
	if(H.mind)
		var/weapons = list("Naginata","Quarterstaff","Hwando")
		var/weapon_choice = input(H, "Choose your weapon", "TAKE UP ARMS") as anything in weapons
		switch(weapon_choice)
			if("Naginata")
				r_hand = /obj/item/rogueweapon/spear/naginata
				backr = /obj/item/rogueweapon/scabbard/gwstrap
				H.adjust_skillrank_up_to(/datum/skill/combat/polearms, 3, TRUE)
				armor = /obj/item/clothing/suit/roguetown/armor/basiceast/mentorsuit
			if("Quarterstaff")
				backr = /obj/item/rogueweapon/woodstaff/quarterstaff/steel
				H.adjust_skillrank_up_to(/datum/skill/combat/polearms, 3, TRUE)
				armor = /obj/item/clothing/suit/roguetown/armor/basiceast/mentorsuit
			if("Hwando")
				beltl = /obj/item/rogueweapon/sword/sabre/mulyeog
				beltr = /obj/item/rogueweapon/scabbard/sword/saltlian
				armor = /obj/item/clothing/suit/roguetown/armor/basiceast
				H.adjust_skillrank_up_to(/datum/skill/combat/shields, 3, TRUE)
				H.adjust_skillrank_up_to(/datum/skill/combat/swords, 3, TRUE)

/datum/advclass/foreigner/amsalja
	name = "Eastern Assassin"
	tutorial = "The Amsalja are Saltlian agents trained in assassination, sabotage, and irregular combat. You are armed with daggers or a short sword, perfect \
	for combat in the tight confines of castles and back alleys."
	allowed_races = NON_DWARVEN_RACE_TYPES //Clothing has no dwarf sprites.
	outfit = /datum/outfit/job/roguetown/adventurer/amsalja
	subclass_languages = list(/datum/language/saltlian)
	cmode_music = 'sound/music/combat_saltlia.ogg'
	traits_applied = list(TRAIT_STEELHEARTED, TRAIT_DODGEEXPERT, TRAIT_LIGHT_STEP, TRAIT_KEENEARS)
	subclass_stats = list(
		STATKEY_SPD = 3,
		STATKEY_PER = 1,
		STATKEY_WIL = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/climbing = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/bows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/alchemy = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/traps = SKILL_LEVEL_EXPERT,
	)

/datum/outfit/job/roguetown/adventurer/amsalja/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("The Amsalja are Saltlian agents trained in assassination, sabotage, and irregular combat. You are armed with daggers or a short sword, perfect \
	for combat in the tight confines of castles and back alleys."))
	head = /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/amsalja
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/flashlight/flare/torch = 1,
		/obj/item/recipe_book/survival = 1,
		/obj/item/bomb/smoke = 3,
		/obj/item/mundane/adventurer_kit = 1
		)
	belt = /obj/item/storage/belt/rogue/leather/knifebelt/black/saltlian
	gloves = /obj/item/clothing/gloves/roguetown/eastgloves1
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/eastpants1
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt1
	cloak = /obj/item/clothing/cloak/thief_cloak/amsalja
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	H.set_blindness(0)
	if(H.mind)
		var/weapons = list("Tanto","Kodachi")
		var/weapon_choice = input(H, "Choose your weapon.", "TAKE UP ARMS") as anything in weapons
		switch(weapon_choice)
			if("Tanto")
				beltr = /obj/item/rogueweapon/huntingknife/idagger/steel/saltlian
				beltl = /obj/item/rogueweapon/scabbard/sheath/saltlian
				H.adjust_skillrank_up_to(/datum/skill/combat/knives, 3, TRUE)
			if("Kodachi")
				beltr = /obj/item/rogueweapon/sword/short/saltlian
				beltl = /obj/item/rogueweapon/scabbard/sword/saltlian/kodachi
				H.adjust_skillrank_up_to(/datum/skill/combat/swords, 3, TRUE)
		var/masks = list("Oni","Kitsune")
		var/mask_choice = input(H, "Choose your mask.", "HIDE YOURSELF") as anything in masks
		switch(mask_choice)
			if("Oni")
				mask = /obj/item/clothing/mask/rogue/facemask/amsalja_oni
			if("Kitsune")
				mask = /obj/item/clothing/mask/rogue/facemask/amsalja_kitsune

/datum/advclass/foreigner/repentant
	name = "Valorian Repentant"
	tutorial = "An exile from the Republic of Valoria, accused of heresy and cast out of your homeland as penance. \
	Some consider yours a fate worse than death; the metal alloy mask seared onto your face serving as a permanent reminder of your sins. \
	You are a living example of what becomes of those who stand in defiance of the Valorian inquisition."
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/repentant
	subclass_languages = list(/datum/language/valorian)
	cmode_music = 'sound/music/cmode/adventurer/combat_outlander2.ogg'
	category_tags = list(CTAG_ADVENTURER, CTAG_COURTAGENT)
	traits_applied = list(TRAIT_STEELHEARTED, TRAIT_CRITICAL_RESISTANCE, TRAIT_NOPAINSTUN)
	subclass_stats = list(
		STATKEY_CON = 3,
		STATKEY_SPD = -1,
		STATKEY_STR = -1,
		STATKEY_WIL = 3,
	)
	subclass_skills = list(
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/armorsmithing = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE
	)

/datum/outfit/job/roguetown/adventurer/repentant/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("An exile from the Republic of Valoria, accused of heresy and cast out of your homeland as penance. \
	Some consider yours a fate worse than death; the metal alloy mask seared onto your face serving as a permanent reminder of your sins. \
	You are a living example of what becomes of those who stand in defiance of the Valorian inquisition."))
	mask = /obj/item/clothing/mask/rogue/facemask/steel/paalloy/mad_touched
	wrists = /obj/item/clothing/neck/roguetown/psicross
	shirt = /obj/item/clothing/cloak/psydontabard
	gloves = /obj/item/clothing/gloves/roguetown/chain/psydon
	shoes = /obj/item/clothing/shoes/roguetown/boots/psydonboots
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/valorian
	backr = /obj/item/storage/backpack/rogue/satchel/valorian
	belt = /obj/item/storage/belt/rogue/leather
	head = /obj/item/clothing/head/roguetown/roguehood/psydon
	beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/rogueweapon/whip
	backpack_contents = list(/obj/item/recipe_book/survival = 1, 
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/mundane/adventurer_kit = 1)

/datum/advclass/foreigner/refugee
	name = "Kargradi Refugee"
	tutorial = "An asylum-seeker from the war-torn deserts that contain the skirmishes between Grenzelhoft and Khazumia, driven off the continent as your homeland continues to be ravaged by an endless conflict against the Khaliphate."
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/refugee
	subclass_languages = list(/datum/language/kargradi)
	cmode_music = 'sound/music/combat_khazumite.ogg'
	traits_applied = list(TRAIT_STEELHEARTED, TRAIT_DODGEEXPERT)
	subclass_stats = list(
		STATKEY_SPD = 2,
		STATKEY_PER = 1,
		STATKEY_WIL = 1,
		STATKEY_INT = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE

	)

/datum/outfit/job/roguetown/adventurer/refugee/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("An asylum-seeker from the war-torn deserts that contain the skirmishes between Grenzelhoft and Khazumia, driven off the continent as your homeland continues to be ravaged by an endless conflict against the Khaliphate."))
	head = /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/black
	mask = /obj/item/clothing/mask/rogue/lordmask/khazumian
	neck = /obj/item/clothing/neck/roguetown/leather
	cloak = /obj/item/clothing/cloak/hierophant
	r_hand = /obj/item/rogueweapon/spear/assegai
	backl = /obj/item/rogueweapon/scabbard/gwstrap
	backr = /obj/item/storage/backpack/rogue/satchel/short
	wrists = /obj/item/clothing/neck/roguetown/psicross/khazumian
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced/short
	armor = /obj/item/clothing/suit/roguetown/armor/longcoat
	shirt = /obj/item/clothing/suit/roguetown/shirt/robe/hierophant
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltr = /obj/item/rogueweapon/scabbard/sheath
	backpack_contents = list(/obj/item/recipe_book/survival = 1, 
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/flashlight/flare/torch = 1,
		/obj/item/mundane/adventurer_kit = 1)

/datum/advclass/foreigner/slaver
	name = "Zybanti Slaver"
	tutorial = "In parts of Beowricke, the practice of slavery is still a common sight. \
	You hail from the Zybanti Ziggurat, more commonly known as the Raj, where the market of flesh is ancient and unbroken, and your coin is earned in the trade of living souls."
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/slaver
	subclass_languages = list(/datum/language/zybanti)
	cmode_music = 'sound/music/combat_desertrider.ogg'
	traits_applied = list(TRAIT_STEELHEARTED, TRAIT_MEDIUMARMOR)
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_CON = 2,
		STATKEY_WIL = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/armorsmithing = SKILL_LEVEL_NOVICE
	) // Spawns with a variety of jman skills and fairly good medium armor.


/datum/outfit/job/roguetown/adventurer/slaver/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("In parts of Beowricke, the practice of slavery is still a common sight. \
	You hail from the Zybanti Ziggurat, more commonly known as the Raj, where the market of flesh is ancient and unbroken, and your coin is earned in the trade of living souls."))
	head = /obj/item/clothing/head/roguetown/roguehood/shalal/purple
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	neck = /obj/item/clothing/neck/roguetown/bevor/iron
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	pants = /obj/item/clothing/under/roguetown/chainlegs/iron
	gloves = /obj/item/clothing/gloves/roguetown/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/purple
	belt = /obj/item/storage/belt/rogue/leather/shalal/purple
	armor = /obj/item/clothing/suit/roguetown/armor/plate/cuirass/iron
	backr = /obj/item/rogueweapon/shield/heater
	backl = /obj/item/storage/backpack/rogue/satchel/short
	beltl = /obj/item/flashlight/flare/torch
	r_hand = /obj/item/rogueweapon/sword/long/shotel
	l_hand = /obj/item/rogueweapon/scabbard/sword
	beltr = /obj/item/rogueweapon/scabbard/sheath
	backpack_contents = list(/obj/item/rope/chain = 2, 
		/obj/item/storage/belt/rogue/pouch/coins/poor = 1, 
		/obj/item/recipe_book/survival = 1, 
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/mundane/adventurer_kit = 1)


/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/hierophant/civilian
	name = "shawl"
	desc = "Thick and protective while remaining light and breezy; the perfect garb for protecting one from the hot sun and the harsh grasses of Kargradi."
	color = CLOTHING_BLACK

/obj/item/clothing/head/roguetown/roguehood/shalal/hijab/black
	color = CLOTHING_BLACK

/obj/item/storage/belt/rogue/leather/shalal/purple
	color = CLOTHING_PURPLE
