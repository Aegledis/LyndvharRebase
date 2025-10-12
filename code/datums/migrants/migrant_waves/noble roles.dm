#define CTAG_NOBLE_ARISTOCRAT "noble_aristocrat"
#define CTAG_NOBLE_BODYGUARD "noble_bodyguard"

/datum/migrant_role/noble/aristocrat
	name = "Aristocrat"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	greet_text = "You are a traveling noble wandering what's left of Lyndhardtia. With wealth, come the poor, ready to pilfer you of your hard earned (inherited) coin, so tread lightly unless you want to meet a grizzly end."
	advclass_cat_rolls = list(CTAG_NOBLE_ARISTOCRAT = 20)

/datum/advclass/noble_aristocrat
	name = "Aristocrat"
	tutorial = "You are a traveling noble wandering what's left of Lyndhardtia. With wealth, come the poor, ready to pilfer you of your hard earned (inherited) coin, so tread lightly unless you want to meet a grizzly end."
	outfit = /datum/outfit/job/roguetown/adventurer/noble
	traits_applied = list(TRAIT_NOBLE, TRAIT_SEEPRICES)
	category_tags = list(CTAG_NOBLE_ARISTOCRAT)
	subclass_stats = list(
		STATKEY_PER = 2,
		STATKEY_INT = 2,
		STATKEY_STR = 1,
		STATKEY_SPD = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/riding = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/music = SKILL_LEVEL_NOVICE,
	)

/datum/outfit/job/roguetown/adventurer/noble/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You are a traveling noble wandering what's left of Lyndhardtia. With wealth, come the poor, ready to pilfer you of your hard earned (inherited) coin, so tread lightly unless you want to meet a grizzly end."))
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather/black
	beltr = /obj/item/flashlight/flare/torch/lantern
	backl = /obj/item/storage/backpack/rogue/satchel/short
	neck = /obj/item/storage/belt/rogue/pouch/coins/rich
	id = /obj/item/clothing/ring/silver
	beltl = /obj/item/rogueweapon/sword/sabre/dec
	l_hand = /obj/item/rogueweapon/scabbard/sword
	if(should_wear_masc_clothes(H))
		cloak = /obj/item/clothing/cloak/half/red
		shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/red
		pants = /obj/item/clothing/under/roguetown/tights/black
	if(should_wear_femme_clothes(H))
		shirt = /obj/item/clothing/suit/roguetown/shirt/dress/gen/purple
		cloak = /obj/item/clothing/cloak/raincloak/purple
	backpack_contents = list(
		/obj/item/recipe_book/survival = 1,
		/obj/item/mundane/adventurer_kit = 1,
		/obj/item/rogueweapon/huntingknife/idagger = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1)
	var/turf/TU = get_turf(H)
	if(TU)
		new /mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame/saddled(TU)

/datum/migrant_role/noble/bodyguard
	name = "Bodyguard"
	greet_text = "You are a dilligent soldier in employ of this lone aristocrat for protection and to assure that their journey goes as planned."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_NOBLE_BODYGUARD = 20)

/datum/advclass/noble_bodyguard
	name = "Bodyguard"
	outfit = /datum/outfit/job/roguetown/noble/bodyguard
	traits_applied = list(TRAIT_HEAVYARMOR, TRAIT_STEELHEARTED)
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_WIL = 2,
		STATKEY_CON = 3,
		STATKEY_PER = 1,
		STATKEY_SPD = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/swimming= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/maces= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/crossbows= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling= SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords= SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields= SKILL_LEVEL_NOVICE,
		/datum/skill/combat/polearms= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/whipsflails= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading= SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics= SKILL_LEVEL_EXPERT,
		/datum/skill/misc/riding = SKILL_LEVEL_EXPERT,
	)

/datum/outfit/job/roguetown/noble/bodyguard/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You are a dilligent soldier in employ of this lone aristocrat for protection and to assure that their journey goes as planned."))
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	belt = /obj/item/storage/belt/rogue/leather/steel/tasset
	beltl = /obj/item/flashlight/flare/torch
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	head = /obj/item/clothing/head/roguetown/helmet/sallet
	armor = /obj/item/clothing/suit/roguetown/armor/plate/modern
	pants = /obj/item/clothing/under/roguetown/splintlegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	gloves = /obj/item/clothing/gloves/roguetown/chain
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backl = /obj/item/rogueweapon/scabbard/gwstrap
	r_hand = /obj/item/rogueweapon/greatsword/zwei
	backpack_contents = list(
		/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
		/obj/item/rogueweapon/huntingknife/idagger = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/recipe_book/survival = 1,
		/obj/item/mundane/adventurer_kit = 1
		)
	var/turf/TU = get_turf(H)
	if(TU)
		new /mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame/saddled(TU)

#undef CTAG_NOBLE_ARISTOCRAT
#undef CTAG_NOBLE_BODYGUARD
