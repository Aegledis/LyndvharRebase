#define CTAG_GRENZEL_ENVOY "grenzel_envoy"
#define CTAG_GRENZEL_DOPPEL "grenzel_doppel"
#define CTAG_GRENZEL_PRIEST "grenzel_crossbow"

/datum/migrant_role/grenzel/envoy
	name = "Envoy"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	greet_text = "You are a Grenzelhoftian envoy, traveling with a bodyguard and a crossbowman to represent your homeland.\
	 What exactly you have been sent here to speak about- only you know."
	advclass_cat_rolls = list(CTAG_GRENZEL_ENVOY = 20)

/datum/advclass/grenzel_envoy
	name = "Envoy"
	outfit = /datum/outfit/job/roguetown/grenzel/envoy
	traits_applied = list(TRAIT_NOBLE, TRAIT_MEDIUMARMOR, TRAIT_STEELHEARTED)
	category_tags = list(CTAG_GRENZEL_ENVOY)
	subclass_stats = list(
		STATKEY_INT = 2,
		STATKEY_CON = 1,
		STATKEY_WIL = 2,
		STATKEY_PER = 1,
		STATKEY_SPD = 1,
	)
	subclass_skills = list(
		/datum/skill/combat/swords= SKILL_LEVEL_EXPERT,
		/datum/skill/combat/maces= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling= SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed= SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics= SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields= SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/misc/medicine= SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/stealing= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding= SKILL_LEVEL_JOURNEYMAN,
	)

/datum/outfit/job/roguetown/grenzel/envoy/pre_equip(mob/living/carbon/human/H)
	..()
	H.set_patron(/datum/patron/godless)
	head = /obj/item/clothing/head/roguetown/circlet
	neck = /obj/item/clothing/neck/roguetown/gorget
	cloak = /obj/item/clothing/cloak/stabard/surcoat/bailiff
	armor = /obj/item/clothing/suit/roguetown/armor/leather
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	gloves = /obj/item/clothing/gloves/roguetown/angle/grenzelgloves
	id = /obj/item/clothing/ring/gold
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/grenzelhoft
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/grenzelpants
	shoes = /obj/item/clothing/shoes/roguetown/grenzelhoft
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	backl = /obj/item/storage/backpack/rogue/satchel/short
	l_hand = /obj/item/rogueweapon/sword/long
	beltl = /obj/item/rogueweapon/scabbard/sword
	beltr = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(
		/obj/item/rogueweapon/huntingknife/idagger = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		/obj/item/natural/feather = 1,
		/obj/item/paper/scroll = 2
		)
	H.cmode_music = 'sound/music/combat_grenzelhoft.ogg'
	H.grant_language(/datum/language/grenzelhoftian)

/datum/migrant_role/grenzel/bodyguard
	name = "Doppelsoldner"
	greet_text = "You are a dilligent soldier in employ of the Envoy for protection and to assure that their mission goes as planned."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_GRENZEL_DOPPEL = 20)

/datum/advclass/grenzel_doppel
	name = "Doppelsoldner"
	outfit = /datum/outfit/job/roguetown/grenzel/doppel
	traits_applied = list(TRAIT_HEAVYARMOR, TRAIT_STEELHEARTED)
	category_tags = list(CTAG_GRENZEL_DOPPEL)
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
		/datum/skill/combat/swords= SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields= SKILL_LEVEL_NOVICE,
		/datum/skill/combat/polearms= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/whipsflails= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading= SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics= SKILL_LEVEL_EXPERT,
	)

/datum/outfit/job/roguetown/grenzel/doppel/pre_equip(mob/living/carbon/human/H)
	..()
	H.set_patron(/datum/patron/godless)
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/grenzelhoft
	head = /obj/item/clothing/head/roguetown/grenzelhofthat
	armor = /obj/item/clothing/suit/roguetown/armor/plate/blacksteel_half_plate
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/grenzelpants
	shoes = /obj/item/clothing/shoes/roguetown/grenzelhoft
	gloves = /obj/item/clothing/gloves/roguetown/angle/grenzelgloves
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backl = /obj/item/rogueweapon/scabbard/gwstrap
	r_hand = /obj/item/rogueweapon/greatsword/grenz
	backpack_contents = list(
		/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
		/obj/item/rogueweapon/huntingknife/idagger = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/flashlight/flare/torch = 1,
		)
	H.cmode_music = 'sound/music/combat_grenzelhoft.ogg'
	H.grant_language(/datum/language/grenzelhoftian)

/datum/migrant_role/grenzel/crossbow
	name = "Armbrustschutze"
	greet_text = "You are a dilligent soldier in employ of the Envoy for protection and to assure that their mission goes as planned."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_GRENZEL_CROSSBOW = 20)

/datum/advclass/grenzel_crossbow
	name = "Armbrustschutze"
	outfit = /datum/outfit/job/roguetown/grenzel/crossbow
	traits_applied = list(TRAIT_DODGEEXPERT, TRAIT_STEELHEARTED)
	category_tags = list(CTAG_GRENZEL_CROSSBOW)
	subclass_stats = list(
		STATKEY_STR = -1,
		STATKEY_INT = 1,
		STATKEY_WIL = 1,
		STATKEY_SPD = 2,
		STATKEY_PER = 2,
	)
	subclass_stats = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/sneaking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/axes = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/crossbows = SKILL_LEVEL_MASTER,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/labor/butchering = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/lumberjacking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/grenzel/crossbow/pre_equip(mob/living/carbon/human/H)
	..()
	H.set_patron(/datum/patron/godless)
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/clothing/neck/roguetown/gorget
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/light
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/grenzelhoft
	head = /obj/item/clothing/head/roguetown/grenzelhofthat
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/grenzelpants
	shoes = /obj/item/clothing/shoes/roguetown/grenzelhoft
	gloves = /obj/item/clothing/gloves/roguetown/angle/grenzelgloves
	backr = /obj/item/storage/backpack/rogue/satchel/short
	beltr = /obj/item/quiver/bolts
	beltl = /obj/item/rogueweapon/stoneaxe/woodcut/steel
	r_hand = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
	backpack_contents = list(
		/obj/item/storage/belt/rogue/pouch/coins/poor = 1,
		/obj/item/flashlight/flare/torch = 1,
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)
#undef CTAG_GRENZEL_ENVOY
#undef CTAG_GRENZEL_DOPPEL
#undef CTAG_GRENZEL_PRIEST
