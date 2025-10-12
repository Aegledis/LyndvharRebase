/datum/advclass/hedgeknight //heavy knight class - just like black knight adventurer class. starts with heavy armor training and plate, but less weapon skills than brigand, sellsword and knave
	name = "Hedge Knight"
	tutorial = "A cataphract fallen from grace, your tarnished armor sits upon your shoulders as a heavy reminder of the life you've lost. Take back what is rightfully yours."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/bandit/hedgeknight
	category_tags = list(CTAG_BANDIT)
	maximum_possible_slots = 1 //Too many plate armoured fellas is scawy ...
	cmode_music = 'sound/music/cmode/antag/combat_thewall.ogg' // big chungus gets the wall too
	traits_applied = list(TRAIT_MEDIUMARMOR, TRAIT_HEAVYARMOR)
	subclass_stats = list(
		STATKEY_CON = 3, //dark souls 3 dual greatshield moment
		STATKEY_STR = 2,
		STATKEY_WIL = 4,
		STATKEY_LCK = 2,
		STATKEY_INT = -3,
		STATKEY_SPD = -2,
	)
	subclass_skills = list(
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/maces = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/riding = SKILL_LEVEL_EXPERT,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE,
	)

/datum/outfit/job/roguetown/bandit/hedgeknight/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/knight/armet
	gloves = /obj/item/clothing/gloves/roguetown/chain
	pants = /obj/item/clothing/under/roguetown/chainlegs
	cloak = /obj/item/clothing/cloak/tabard/blkknight
	neck = /obj/item/clothing/neck/roguetown/gorget
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	armor = /obj/item/clothing/suit/roguetown/armor/plate
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltr = /obj/item/rogueweapon/sword/long/dec
	beltl = /obj/item/rogueweapon/scabbard/sword
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backl = /obj/item/rogueweapon/shield/tower/metal
	id = /obj/item/mattcoin
	backpack_contents = list(
					/obj/item/rogueweapon/huntingknife/idagger = 1,
					/obj/item/flashlight/flare/torch = 1,
					/obj/item/rogueweapon/scabbard/sheath = 1
					)

	if (!(istype(H.patron, /datum/patron/inhumen/matthios)))
		to_chat(H, span_warning("My former deity has abandoned me.. Matthios is my new master."))
		H.set_patron(/datum/patron/inhumen/matthios)
