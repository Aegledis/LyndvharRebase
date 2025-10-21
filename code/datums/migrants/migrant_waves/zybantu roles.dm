#define CTAG_ZYBANTU_EMIR "zybanti_emir"
#define CTAG_ZYBANTU_AMIRAH "zybanti_amirah"
#define CTAG_ZYBANTU_JANISSARY "zybanti_janissary"
#define CTAG_ZYBANTU_ZEYBEK "zybanti_zeybek"

/datum/migrant_role/zybantu/emir
	name = "Emir"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_ZYBANTU_EMIR = 20)
	greet_text = "You are an Emir from the Raj, traveling with your spouse and retinue, towards the port of Lyndvhar.\
	 What exactly you have been sent here to speak about- only you know."

/datum/advclass/zybantu_emir
	name = "Emir"
	outfit = /datum/outfit/job/roguetown/zybantu/emir
	traits_applied = list(TRAIT_NOBLE, TRAIT_HEAVYARMOR, TRAIT_STEELHEARTED)
	category_tags = list(CTAG_ZYBANTU_EMIR)
	subclass_stats = list(
		STATKEY_INT = 2,
		STATKEY_CON = 1,
		STATKEY_WIL = 2,
		STATKEY_PER = 1,
		STATKEY_SPD = 1,
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/maces = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/misc/medicine = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/stealing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_JOURNEYMAN,
	)

/datum/outfit/job/roguetown/zybantu/emir/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/circlet
	mask = /obj/item/clothing/head/roguetown/roguehood/red
	neck = /obj/item/clothing/neck/roguetown/gorget
	cloak = /obj/item/clothing/cloak/half/rider/red
	armor = /obj/item/clothing/suit/roguetown/armor/leather
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather
	id = /obj/item/clothing/ring/gold
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/zybantu
	pants = /obj/item/clothing/under/roguetown/trou/leather/pontifex/zybantu
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	backl = /obj/item/storage/backpack/rogue/satchel/short
	l_hand = /obj/item/rogueweapon/sword/sabre/shamshir
	beltl = /obj/item/rogueweapon/scabbard/sword
	beltr = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(
		/obj/item/rogueweapon/huntingknife/idagger/navaja = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		/obj/item/natural/feather = 1,
		/obj/item/paper/scroll = 2
		)
	H.cmode_music = 'sound/music/combat_desertrider.ogg'
	H.grant_language(/datum/language/zybanti)

/datum/migrant_role/zybantu/amirah
	name = "Amirah"
	greet_text = "Travelling with your spouse, the Emir- you are there to act as both a mediator and negotiator for things that the Emir is incapable of dealing with, and assisting them."
	allowed_sexes = list(FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_ZYBANTU_AMIRAH = 20)

/datum/advclass/zybantu_amirah
	name = "Amirah"
	outfit = /datum/outfit/job/roguetown/zybantu/amirah
	traits_applied = list(TRAIT_NOBLE, TRAIT_SEEPRICES, TRAIT_NUTCRACKER, TRAIT_GOODLOVER)
	category_tags = list(CTAG_ZYBANTU_AMIRAH)
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_CON = 1,
		STATKEY_WIL = 3,
		STATKEY_PER = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/stealing = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/medicine = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/music = SKILL_LEVEL_MASTER,
	)

/datum/outfit/job/roguetown/zybantu/amirah/pre_equip(mob/living/carbon/human/H)
	..()
	if(should_wear_femme_clothes(H))
		belt = /obj/item/storage/belt/rogue/leather/cloth/lady
		head = /obj/item/clothing/head/roguetown/circlet
		neck = /obj/item/clothing/neck/roguetown/horus
		armor = /obj/item/clothing/suit/roguetown/armor/armordress/winterdress/monarch
		shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/lord
		pants = /obj/item/clothing/under/roguetown/tights/stockings/silk/black
		id = /obj/item/clothing/ring/gold
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced/short
	else if(should_wear_masc_clothes(H))
		head = /obj/item/clothing/head/roguetown/circlet
		neck = /obj/item/clothing/neck/roguetown/horus
		pants = /obj/item/clothing/under/roguetown/tights
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/guard
		armor = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
		belt = /obj/item/storage/belt/rogue/leather
		backr = /obj/item/storage/backpack/rogue/satchel/short
		id = /obj/item/clothing/ring/gold
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		/obj/item/natural/feather = 1,
		/obj/item/paper/scroll = 2
	)
	H.cmode_music = 'sound/music/combat_desertrider.ogg'
	H.grant_language(/datum/language/zybanti)

/datum/migrant_role/zybantu/janissary
	name = "Janissary"
	greet_text = "You are a dilligent soldier in employ of the Emir for protection and to assure that their mission goes as planned."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_ZYBANTU_JANISSARY = 20)

/datum/advclass/zybantu_janissary
	name = "Janissary"
	outfit = /datum/outfit/job/roguetown/zybantu/janissary
	traits_applied = list(TRAIT_HEAVYARMOR, TRAIT_STEELHEARTED)
	category_tags = list(CTAG_ZYBANTU_JANISSARY)
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_WIL = 2,
		STATKEY_CON = 1,
		STATKEY_SPD = 1,
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/riding = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
	)

/datum/outfit/job/roguetown/zybantu/janissary/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/sallet/zybantu
	mask = /obj/item/clothing/mask/rogue/facemask/steel
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	cloak = /obj/item/clothing/cloak/half/rider/red
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	gloves = /obj/item/clothing/gloves/roguetown/leather
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/zybantu
	pants = /obj/item/clothing/under/roguetown/chainlegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather/shalal
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backr = /obj/item/rogueweapon/shield/tower/zybantu
	l_hand = /obj/item/rogueweapon/sword/sabre/shamshir
	beltl = /obj/item/rogueweapon/scabbard/sword
	beltr = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(
		/obj/item/rogueweapon/huntingknife/idagger/navaja = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/storage/belt/rogue/pouch/coins/poor = 1
		)
	H.cmode_music = 'sound/music/combat_desertrider.ogg'
	H.grant_language(/datum/language/zybanti)

/datum/migrant_role/zybantu/zeybek
	name = "Zeybek"
	greet_text = "You are a dilligent soldier in employ of the Emir for protection and to assure that their mission goes as planned."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_ZYBANTU_ZEYBEK = 20)

/datum/advclass/zybantu_zeybek
	name = "Zeybek"
	outfit = /datum/outfit/job/roguetown/zybantu/zeybek
	traits_applied = list(TRAIT_DODGEEXPERT, TRAIT_STEELHEARTED, TRAIT_PERFECT_TRACKER)
	category_tags = list(CTAG_ZYBANTU_ZEYBEK)
	subclass_stats = list(
		STATKEY_SPD = 2,
		STATKEY_PER = 2,
		STATKEY_INT = 2,
	)
	subclass_skills = list(
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/crossbows = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/bows = SKILL_LEVEL_MASTER,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/climbing = SKILL_LEVEL_MASTER,
		/datum/skill/misc/reading = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/stealing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/traps = SKILL_LEVEL_EXPERT,
	)

/datum/outfit/job/roguetown/zybantu/zeybek/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/zybantu
	mask = /obj/item/clothing/mask/rogue/facemask
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	cloak = /obj/item/clothing/cloak/half/rider/red
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat/zybantu
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/zybantu
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	gloves = /obj/item/clothing/gloves/roguetown/angle
	pants = /obj/item/clothing/under/roguetown/trou/leather/pontifex/zybantu
	backr = /obj/item/storage/backpack/rogue/satchel/short
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather/shalal
	backpack_contents = list(
		/obj/item/rogueweapon/huntingknife/idagger/navaja = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
		/obj/item/flashlight/flare/torch = 1,
		)
	H.cmode_music = 'sound/music/combat_desertrider.ogg'
	H.grant_language(/datum/language/zybanti)

#undef CTAG_ZYBANTU_EMIR
#undef CTAG_ZYBANTU_AMIRAH
#undef CTAG_ZYBANTU_JANISSARY
#undef CTAG_ZYBANTU_ZEYBEK
