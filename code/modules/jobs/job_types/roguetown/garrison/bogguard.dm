/datum/job/roguetown/bogguardsman
	title = "Warden"
	flag = BOGGUARD
	department_flag = GARRISON
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	selection_color = JCOLOR_SOLDIER

	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	tutorial = "The life of a Warden is not an easy one- as you found out upon recruitment. Whether your recruitment was through forced conscription or through willingnes to serve- you still find yourself amongst the Brotherhood of the Draguippe- sworn to protect the forests and the main foot-entrance into the city at any cost. You are the frontline defense against evil, and protector of the frontier roads. The life is not easy, but this is what you were brought on for. Protect the forests well, for if you fall, then nothing will stop what lurks outside from seeping in.."
	display_order = JDO_TOWNGUARD
	whitelist_req = TRUE

	outfit = /datum/outfit/job/roguetown/bogguardsman
	advclass_cat_rolls = list(CTAG_WARDEN = 20)

	give_bank_account = 16
	min_pq = -4
	max_pq = null
	round_contrib_points = 1

	cmode_music = 'sound/music/combat_blackoak.ogg'
	job_traits = list(TRAIT_OUTDOORSMAN, TRAIT_WOODSMAN, TRAIT_SURVIVAL_EXPERT)
	job_subclasses = list(
		/datum/advclass/bogguardsman/ranger,
		/datum/advclass/bogguardsman/forester
	)

/datum/outfit/job/roguetown/bogguardsman
	armor = /obj/item/clothing/suit/roguetown/armor/leather/studded/warden
	cloak = /obj/item/clothing/cloak/wardencloak
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather
	backr = /obj/item/storage/backpack/rogue/satchel/short
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	job_bitflag = BITFLAG_GARRISON

/datum/advclass/bogguardsman/ranger
	name = "Ranger"
	tutorial = "You are a ranger, a hunter who volunteered to become a part of the wardens. You have experience using bows and daggers."
	outfit = /datum/outfit/job/roguetown/bogguardsman/ranger
	category_tags = list(CTAG_WARDEN)
	traits_applied = list(TRAIT_DODGEEXPERT)
	subclass_stats = list(
		STATKEY_PER = 2,//7 points weighted, same as MAA. They get temp buffs in the woods instead of in the city.
		STATKEY_SPD = 2,
		STATKEY_WIL = 1
	)
	subclass_skills = list(
		/datum/skill/combat/bows = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/slings = SKILL_LEVEL_EXPERT, 
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/axes = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/climbing = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_APPRENTICE
	)

/datum/outfit/job/roguetown/bogguardsman/ranger/pre_equip(mob/living/carbon/human/H)
	..()
	neck = /obj/item/clothing/neck/roguetown/coif/padded
	gloves = /obj/item/clothing/gloves/roguetown/leather
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	backl = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve/warden
	beltr = /obj/item/quiver/arrows
	beltl = /obj/item/rogueweapon/huntingknife/idagger
	backpack_contents = list(
		/obj/item/storage/keyring/guard = 1,
		/obj/item/flashlight/flare/torch/lantern = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/healthpot = 1,
		/obj/item/signal_horn = 1
		)
	H.verbs |= /mob/proc/haltyell
	H.set_blindness(0)

	if(H.mind)
		var/helmets = list(
			"Path of the Antelope" 	= /obj/item/clothing/head/roguetown/helmet/bascinet/antler,
			"Path of the Volf"		= /obj/item/clothing/head/roguetown/helmet/sallet/warden/wolf,
			"Path of the Ram"		= /obj/item/clothing/head/roguetown/helmet/sallet/warden/goat,
			"Path of the Bear"		= /obj/item/clothing/head/roguetown/helmet/sallet/warden/bear,
			"None"
		)
		var/helmchoice = input(H, "Choose your Path.", "HELMET SELECTION") as anything in helmets
		if(helmchoice != "None")
			head = helmets[helmchoice]

		var/hoods = list(
			"Common Shroud" 	= /obj/item/clothing/head/roguetown/roguehood/warden,
			"Antlered Shroud"		= /obj/item/clothing/head/roguetown/roguehood/warden/antler,
			"None"
		)
		var/hoodchoice = input(H, "Choose your Shroud.", "HOOD SELECTION") as anything in hoods
		if(helmchoice != "None")
			mask = hoods[hoodchoice]

/datum/advclass/bogguardsman/forester
	name = "Forester"
	tutorial = "You are a forester, a woodsman who volunteered to become a part of the wardens. You have experience using axes and polearms."
	outfit = /datum/outfit/job/roguetown/bogguardsman/forester
	category_tags = list(CTAG_WARDEN)
	traits_applied = list(TRAIT_MEDIUMARMOR)
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_CON = 2,
		STATKEY_WIL = 2,
		STATKEY_PER = 1
	)
	subclass_skills = list(
		/datum/skill/combat/axes = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/slings = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/bows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/climbing = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/sneaking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/tracking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_APPRENTICE
	)

/datum/outfit/job/roguetown/bogguardsman/forester/pre_equip(mob/living/carbon/human/H)
	..()
	neck = /obj/item/clothing/neck/roguetown/chaincoif/iron
	gloves = /obj/item/clothing/gloves/roguetown/chain/iron
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/iron
	pants = /obj/item/clothing/under/roguetown/chainlegs/iron
	backl = /obj/item/rogueweapon/scabbard/gwstrap
	beltr = /obj/item/rogueweapon/stoneaxe/woodcut/wardenpick
	beltl = /obj/item/rogueweapon/huntingknife
	r_hand = /obj/item/rogueweapon/spear
	backpack_contents = list(
		/obj/item/storage/keyring/guard = 1,
		/obj/item/flashlight/flare/torch/lantern = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/signal_horn = 1
		)
	H.verbs |= /mob/proc/haltyell
	H.set_blindness(0)

	if(H.mind)
		var/helmets = list(
			"Path of the Antelope" 	= /obj/item/clothing/head/roguetown/helmet/bascinet/antler,
			"Path of the Volf"		= /obj/item/clothing/head/roguetown/helmet/sallet/warden/wolf,
			"Path of the Ram"		= /obj/item/clothing/head/roguetown/helmet/sallet/warden/goat,
			"Path of the Bear"		= /obj/item/clothing/head/roguetown/helmet/sallet/warden/bear,
			"None"
		)
		var/helmchoice = input(H, "Choose your Path.", "HELMET SELECTION") as anything in helmets
		if(helmchoice != "None")
			head = helmets[helmchoice]

		var/hoods = list(
			"Common Shroud" 	= /obj/item/clothing/head/roguetown/roguehood/warden,
			"Antlered Shroud"		= /obj/item/clothing/head/roguetown/roguehood/warden/antler,
			"None"
		)
		var/hoodchoice = input(H, "Choose your Shroud.", "HOOD SELECTION") as anything in hoods
		if(helmchoice != "None")
			mask = hoods[hoodchoice]
