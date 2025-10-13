/datum/job/roguetown/tailor
	title = "Tailor"
	flag = TAILOR
	department_flag = YEOMEN
	faction = "Station"
	tutorial = "Cloth, linen, silk and leather. You've tirelessly studied and poured your life into \
	sewing articles of protection, padding, and fashion for serf and noble alike. While many may not see you as such, you are perhaps \
	one of the most important individuals in the city: your deft hand and meticulous work will keep many a citizen alive and well-fitted."
	total_positions = 1
	spawn_positions = 1
	display_order = 6
	min_pq = 0
	selection_color = JCOLOR_YEOMAN
	allowed_races = RACES_ALL_KINDS
	display_order = JDO_TAILOR
	job_traits = list(TRAIT_SEWING_EXPERT)
	outfit = /datum/outfit/job/roguetown/tailor
	give_bank_account = 16
	min_pq = -4
	max_pq = null
	round_contrib_points = 4
	cmode_music = 'sound/music/cmode/towner/combat_towner3.ogg'
	advclass_cat_rolls = list(CTAG_TAILOR = 2)
	job_subclasses = list(
		/datum/advclass/tailor
	)

/datum/advclass/tailor
	name = "Tailor"
	tutorial = "Cloth, linen, silk and leather. You've tirelessly studied and poured your life into \
	sewing articles of protection, padding, and fashion for serf and noble alike. While many may not see you as such, you are perhaps \
	one of the most important individuals in the city: your deft hand and meticulous work will keep many a citizen alive and well-fitted."
	outfit = /datum/outfit/job/roguetown/tailor/basic
	category_tags = list(CTAG_TAILOR)
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 1,
		STATKEY_SPD = 1,
		STATKEY_STR = -1
	)
	subclass_skills = list(
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/sewing = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/tanning = SKILL_LEVEL_MASTER,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/farming = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
	)

/datum/outfit/job/roguetown/tailor/basic/pre_equip(mob/living/carbon/human/H)
	..()
	H.adjust_blindness(-3)
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	pants = /obj/item/clothing/under/roguetown/tights
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/rogueweapon/huntingknife/scissors/steel
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced/short
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/needle, 
		/obj/item/storage/keyring/tailor,
		/obj/item/dye_brush, 
		/obj/item/recipe_book/sewing, 
		/obj/item/recipe_book/leatherworking
		)
	if(should_wear_femme_clothes(H))
		armor = /obj/item/clothing/suit/roguetown/armor/armordress/winterdress
	else if(should_wear_masc_clothes(H))
		armor = /obj/item/clothing/suit/roguetown/shirt/tunic/noblecoat
