/datum/job/roguetown/gatemaster
	title = "Gatemaster"
	flag = GATEMASTER
	department_flag = GARRISON
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	allowed_patrons = ALL_NICE_PATRONS
	tutorial = "While you yourself had joined arms with the rest of the Watch, you were given a very specific and unique assignment- the watch of the manor gate. It's.. not exactly what you had in mind- but you get your own room below the gate, and can dictate the fate of those deemed unworthy of Kybraxor's presence. Ask questions and find out exactly WHO is trying to enter the Manor todae. Just try not to drop anyone important in there- lest you find your lyfe very quickly extinguished."
	display_order = JDO_GATEMASTER
	advclass_cat_rolls = list(CTAG_GATEMASTER = 20)
	give_bank_account = 16
	min_pq = 2
	max_pq = null
	round_contrib_points = 2

	cmode_music = 'sound/music/combat_garrison.ogg'

	job_traits = list(TRAIT_GUARDSMAN, TRAIT_STEELHEARTED, TRAIT_MEDIUMARMOR)
	job_subclasses = list(
		/datum/advclass/gatemaster
	)

/datum/job/roguetown/gatemaster/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()

/datum/advclass/gatemaster
	name = "Gatemaster"
	tutorial = "While you yourself had joined arms with the rest of the Watch, you were given a very specific and unique assignment- the watch of the manor gate. It's.. not exactly what you had in mind- but you get your own room below the gate, and can dictate the fate of those deemed unworthy of Kybraxor's presence. Ask questions and find out exactly WHO is trying to enter the Manor todae. Just try not to drop anyone important in there- lest you find your lyfe very quickly extinguished."
	outfit = /datum/outfit/job/roguetown/gatemaster
	category_tags = list(CTAG_GATEMASTER)
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_INT = 1,
		STATKEY_CON = 1,
		STATKEY_PER = 2,
	)

	subclass_skills = list(
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/shields = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/maces = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/crossbows = SKILL_LEVEL_MASTER,
		/datum/skill/combat/bows = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/slings = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/traps = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_EXPERT, //Paperwork RP
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/carpentry = SKILL_LEVEL_JOURNEYMAN, //For fixing the door.
		/datum/skill/craft/engineering = SKILL_LEVEL_JOURNEYMAN, //lets them change stuff like the levers and gate
	)

/datum/outfit/job/roguetown/gatemaster
	name = "Gatemaster"
	has_loadout = FALSE
	jobtype = /datum/job/roguetown/gatemaster
	job_bitflag = BITFLAG_GARRISON
	backpack_contents = list(/obj/item/signal_horn = 1, /obj/item/rope/chain = 1, /obj/item/storage/keyring/guardcastle, /obj/item/rogueweapon/huntingknife/idagger/steel = 1,  /obj/item/rogueweapon/scabbard/sheath = 1)

/datum/outfit/job/roguetown/gatemaster/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/roguehood/red
	mask = /obj/item/clothing/mask/rogue/facemask/steel
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	cloak = /obj/item/clothing/cloak/stabard/surcoat/guard
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	pants = /obj/item/clothing/under/roguetown/chainlegs
	gloves = /obj/item/clothing/gloves/roguetown/angle
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/rogueweapon/knuckles
	beltr = /obj/item/quiver/bolts
	backr = /obj/item/storage/backpack/rogue/satchel/short/black
	backl = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
