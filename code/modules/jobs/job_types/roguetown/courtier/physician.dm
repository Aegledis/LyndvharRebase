/datum/job/roguetown/physician
	title = "Practitioner"
	flag = PHYSICIAN
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = RACES_SHUNNED_UP
	allowed_sexes = list(MALE, FEMALE)
	display_order = JDO_PHYSICIAN
	tutorial = "You were a child born into good wealth--but poor health. \
		Perhaps in another life, you would have turned out to be a powerful mage, wise archivist or a shrewd steward, \
		but leprosy took away your younger years. \
		Out of desperation, you followed the ways of Pestra and managed to be cured. \
		Now you serve the city ensuring the good health of those inhabiting the walls."
	outfit = /datum/outfit/job/roguetown/physician
	whitelist_req = TRUE
	advclass_cat_rolls = list(CTAG_COURTPHYS = 2)

	give_bank_account = 30
	min_pq = 2
	max_pq = null
	round_contrib_points = 5

	cmode_music = 'sound/music/combat_physician.ogg'

	job_traits = list(TRAIT_MEDICINE_EXPERT, TRAIT_ALCHEMY_EXPERT, TRAIT_NOSTINK, TRAIT_EMPATH)
	job_subclasses = list(
		/datum/advclass/physician
	)

/datum/advclass/physician
	name = "Practitioner"
	tutorial = "You were a child born into good wealth--but poor health. \
		Perhaps in another life, you would have turned out to be a powerful mage, wise archivist or a shrewd steward, \
		but leprosy took away your younger years. \
		Out of desperation, you followed the ways of Pestra and managed to be cured. \
		Now you serve the city ensuring the good health of those inhabiting the walls."
	outfit = /datum/outfit/job/roguetown/physician/basic
	category_tags = list(CTAG_COURTPHYS)
	subclass_stats = list(
		STATKEY_INT = 4,
		STATKEY_WIL = 1,
		STATKEY_LCK = 1,
		STATKEY_PER = 2,
		STATKEY_STR = 1,
		STATKEY_CON = -2,
	)
	subclass_skills = list(
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/alchemy = SKILL_LEVEL_MASTER,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_LEGENDARY,
	)

/datum/outfit/job/roguetown/physician
	job_bitflag = BITFLAG_ROYALTY

/datum/outfit/job/roguetown/physician
	name = "Practitioner"
	jobtype = /datum/job/roguetown/physician

/datum/outfit/job/roguetown/physician/basic/pre_equip(mob/living/carbon/human/H)
	..()
	H.adjust_blindness(-3)
	head = /obj/item/clothing/head/roguetown/roguehood/shroudscarlet
	mask = /obj/item/clothing/mask/rogue/physician
	neck = /obj/item/clothing/neck/roguetown/collar/feldcollar
	id = /obj/item/clothing/neck/roguetown/psicross/pestra
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/tabardscarlet
	shirt = /obj/item/clothing/suit/roguetown/shirt/robe/monk
	gloves = /obj/item/clothing/gloves/roguetown/leather
	pants = /obj/item/clothing/under/roguetown/tights/black
	shoes = /obj/item/clothing/shoes/roguetown/boots
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/storage/belt/rogue/surgery_bag/full/physician
	beltr = /obj/item/storage/keyring/physician
	r_hand = /obj/item/rogueweapon/woodstaff/wise
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/reagent_containers/glass/bottle/rogue/healthpot = 2,
		/obj/item/natural/worms/leech/cheele = 1, //little buddy
		/obj/item/reagent_containers/glass/bottle/waterskin = 1,
		/obj/item/storage/belt/rogue/pouch/coins/rich = 1,
		/obj/item/recipe_book/alchemy = 1
	)
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/diagnose/secular)
	if(H.age == AGE_MIDDLEAGED)
		H.adjust_skillrank_up_to(/datum/skill/craft/sewing, 4, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank_up_to(/datum/skill/craft/alchemy, 6, TRUE) //small carrot to play old
		H.change_stat(STATKEY_SPD, -1)
		H.change_stat(STATKEY_INT, 2)
		H.change_stat(STATKEY_PER, 1)
		H.change_stat(STATKEY_CON, -1)
		H.change_stat(STATKEY_WIL, -1)
