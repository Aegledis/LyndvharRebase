/datum/job/roguetown/hand
	title = "Hand"
	flag = HAND
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = RACES_TOLERATED_UP
	allowed_sexes = list(MALE, FEMALE)
	outfit = /datum/outfit/job/roguetown/hand
	advclass_cat_rolls = list(CTAG_HAND = 20)
	display_order = JDO_HAND
	tutorial = "You owe your entire life to the Viscount. Once perhaps a childhood friend, or even crush-- now you are one of the most important people within the city itself, second only to the Viscount. You have played spymaster and confidant to the noble family for so long that you are a veritable vault of intrigue, something you exploit with potent conviction at every opportunity. Let no man ever forget into whose ear you whisper. You've killed more men with those lips than any blademaster could ever claim to."
	whitelist_req = TRUE
	give_bank_account = 44
	noble_income = 22
	min_pq = 4
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_hand.ogg'
	job_traits = list(TRAIT_NOBLE)
	job_subclasses = list(
		/datum/advclass/hand/hand,
		/datum/advclass/hand/spymaster,
		/datum/advclass/hand/marshal,
		/datum/advclass/hand/kcommander
	)

/datum/outfit/job/roguetown/hand
	shoes = /obj/item/clothing/shoes/roguetown/boots
	neck = /obj/item/clothing/neck/roguetown/leather
	belt = /obj/item/storage/belt/rogue/leather/steel
	beltr = /obj/item/rogueweapon/scabbard/sword
	beltl = /obj/item/rogueweapon/scabbard/sheath
	job_bitflag = BITFLAG_ROYALTY

/datum/outfit/job/roguetown/hand/pre_equip(mob/living/carbon/human/H)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/convertrole/agent)
	H.verbs |= list(/datum/job/roguetown/hand/proc/remember_agents, /mob/living/carbon/human/proc/request_outlaw)

/datum/job/roguetown/hand/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	. = ..()
	addtimer(CALLBACK(src, PROC_REF(know_agents), L), 5 SECONDS)

///////////
//CLASSES//
///////////


/datum/advclass/hand/hand
	name = "Hand"
	tutorial = " You have played blademaster and strategist to the Noble-Family for so long that you are a master tactician, something you exploit with potent conviction. Let no man ever forget whose ear you whisper into. You've killed more men with swords than any spymaster could ever claim to."
	outfit = /datum/outfit/job/roguetown/hand/handclassic

	category_tags = list(CTAG_HAND)
	traits_applied = list(TRAIT_STEELHEARTED, TRAIT_HEAVYARMOR)
	subclass_stats = list(
		STATKEY_PER = 3,
		STATKEY_INT = 3,
		STATKEY_STR = 2
	)
	subclass_skills = list(
		/datum/skill/combat/maces = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/crossbows = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/riding = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/tracking = SKILL_LEVEL_NOVICE,
	)

//Classical hand start - same as before, nothing changed. 
/datum/outfit/job/roguetown/hand/handclassic/pre_equip(mob/living/carbon/human/H)
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/guard
	backr = /obj/item/storage/backpack/rogue/satchel/short
	l_hand = /obj/item/rogueweapon/huntingknife/idagger/dtace
	r_hand = /obj/item/rogueweapon/sword/rapier/dec
	backpack_contents = list(
		/obj/item/storage/keyring/hand = 1,
		/obj/item/rogueweapon/scabbard/sword = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		)
	armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/hand
	pants = /obj/item/clothing/under/roguetown/tights/black

/datum/advclass/hand/spymaster
	name = "Spymaster"
	tutorial = " You have played spymaster and confidant to the Noble-Family for so long that you are a vault of intrigue, something you exploit with potent conviction. Let no man ever forget whose ear you whisper into. You've killed more men with those lips than any blademaster could ever claim to."
	outfit = /datum/outfit/job/roguetown/hand/spymaster

	category_tags = list(CTAG_HAND)
	subclass_languages = list(/datum/language/thievescant)
	traits_applied = list(TRAIT_MEDIUMARMOR, TRAIT_DODGEEXPERT, TRAIT_PERFECT_TRACKER)
	subclass_stats = list(
		STATKEY_SPD = 3,
		STATKEY_PER = 2,
		STATKEY_INT = 2,
		STATKEY_STR = -1,
	)
	subclass_skills = list(
		/datum/skill/combat/maces = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/crossbows = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/bows = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/knives = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/riding = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/tracking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_MASTER,
		/datum/skill/misc/stealing = SKILL_LEVEL_MASTER,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_MASTER, // not like they're gonna break into the vault.
	)

//Spymaster start. More similar to the rogue adventurer - loses heavy armor and sword skills for more sneaky stuff. 
/datum/outfit/job/roguetown/hand/spymaster/pre_equip(mob/living/carbon/human/H)
	backr = /obj/item/storage/backpack/rogue/satchel/short
	l_hand = /obj/item/rogueweapon/huntingknife/idagger/dtace
	r_hand = /obj/item/rogueweapon/sword/rapier/dec
	backpack_contents = list(
		/obj/item/storage/keyring/hand = 1,
		/obj/item/lockpickring/mundane = 1,
		/obj/item/rogueweapon/scabbard/sword = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		
		)
	if(H.dna.species.type in NON_DWARVEN_RACE_TYPES)
		shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/shadowrobe
		cloak = /obj/item/clothing/cloak/half/shadowcloak
		gloves = /obj/item/clothing/gloves/roguetown/fingerless/shadowgloves
		mask = /obj/item/clothing/mask/rogue/shepherd/shadowmask
		pants = /obj/item/clothing/under/roguetown/trou/shadowpants
	else
		cloak = /obj/item/clothing/cloak/raincloak/mortus //cool spymaster cloak
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/guard
		backr = /obj/item/storage/backpack/rogue/satchel/short
		armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/hand
		pants = /obj/item/clothing/under/roguetown/tights/black
	if(H.age == AGE_OLD)
		H.adjust_skillrank_up_to(/datum/skill/misc/sneaking, 6, TRUE)
		H.adjust_skillrank_up_to(/datum/skill/misc/stealing, 6, TRUE)
		H.adjust_skillrank_up_to(/datum/skill/misc/lockpicking, 6, TRUE)

/datum/advclass/hand/marshal
	name = "Marshal"
	tutorial = "You've spent your daes in the courts and garrisons of the city. You've studied the law tome from back to front and enforce your word with the iron hand of justice, and the iron mace in your hands. More men have spent days rotting in the dungeon than that Retinue Captain could ever have claimed, and every person in the realm respects your authority in matters of law and order."
	outfit = /datum/outfit/job/roguetown/hand/marshal

	category_tags = list(CTAG_HAND)
	subclass_stats = list(
		STATKEY_PER = 1,
		STATKEY_INT = 2,
		STATKEY_STR = 2,
		STATKEY_CON = 1,
		STATKEY_WIL = 1,
		STATKEY_SPD = -1
	)
	subclass_skills = list(
		/datum/skill/combat/maces = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/crossbows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/hand/marshal/pre_equip(mob/living/carbon/human/H)
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/sheriff
	gloves = /obj/item/clothing/gloves/roguetown/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/guard
	pants = /obj/item/clothing/under/roguetown/tights/black
	cloak = /obj/item/clothing/cloak/stabard/surcoat/bailiff
	beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
	beltl = /obj/item/rogueweapon/mace/cudgel/justice
	head = /obj/item/clothing/head/roguetown/chaperon/noble/bailiff
	backr = /obj/item/storage/backpack/rogue/satchel/short
	shoes = /obj/item/clothing/shoes/roguetown/boots/nobleboot
	backpack_contents = list(
		/obj/item/storage/keyring/hand = 1,
		/obj/item/book/rogue/law = 1,
		)

/datum/advclass/hand/kcommander
	name = "Retired Commandant"
	tutorial = "You spent your daes as a dutiful cataphract in the service to the Ruby Throne. Earning your accolades through military tactics and victories, you are well-renowned for your knowledge in warfare. Now retired from your days afield, you enforce the same iron law you once practiced in the civil war in your home. You run the garrison, knights and the town's laws with a military strictness, and no-one can claim you are weak on crime."
	outfit = /datum/outfit/job/roguetown/hand/kcommander

	category_tags = list(CTAG_HAND)
	traits_applied = list(TRAIT_HEAVYARMOR, TRAIT_STEELHEARTED)
	subclass_stats = list(
		STATKEY_PER = 1,
		STATKEY_INT = 2,
		STATKEY_STR = 2,
		STATKEY_CON = 1,
		STATKEY_WIL = 1,
		STATKEY_SPD = -1
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/crossbows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/hand/kcommander/pre_equip(mob/living/carbon/human/H)
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/guard
	pants = /obj/item/clothing/under/roguetown/tights/black
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/sheriff/coat
	gloves = /obj/item/clothing/gloves/roguetown/leather
	backr = /obj/item/rogueweapon/sword/long/oathkeeper
	beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
	beltl = /obj/item/reagent_containers/glass/bottle/rogue/healthpot
	backl = /obj/item/storage/backpack/rogue/satchel/short
	shoes = /obj/item/clothing/shoes/roguetown/boots/nobleboot
	backpack_contents = list(
		/obj/item/storage/keyring/hand = 1,
		/obj/item/book/rogue/law = 1
		)


////////////////////
///SPELLS & VERBS///
////////////////////

/datum/job/roguetown/hand/proc/know_agents(var/mob/living/carbon/human/H)
	if(!GLOB.court_agents.len)
		to_chat(H, span_boldnotice("You begun the week with no agents."))
	else
		to_chat(H, span_boldnotice("We begun the week with these agents:"))
		for(var/name in GLOB.court_agents)
			to_chat(H, span_greentext(name))

/datum/job/roguetown/hand/proc/remember_agents()
	set name = "Remember Agents"
	set category = "Voice of Command"

	to_chat(usr, span_boldnotice("I have these agents present:"))
	for(var/name in GLOB.court_agents)
		to_chat(usr, span_greentext(name))
	return

/obj/effect/proc_holder/spell/self/convertrole/agent
	name = "Recruit Agent"
	new_role = "Court Agent"//They get shown as adventurers either way.
	overlay_state = "recruit_servant"
	recruitment_faction = "Agents"
	recruitment_message = "Serve the crown, %RECRUIT!"
	accept_message = "FOR THE CROWN!"
	refuse_message = "I refuse."
	recharge_time = 100

/obj/effect/proc_holder/spell/self/convertrole/agent/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	. = ..()
	if(!.)
		return
	GLOB.court_agents += recruit.real_name
