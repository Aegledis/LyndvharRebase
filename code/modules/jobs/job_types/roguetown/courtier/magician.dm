/datum/job/roguetown/magician
	title = "Archmagus"
	flag = WIZARD
	department_flag = NOBLEMEN
	selection_color = JCOLOR_NOBLE
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = RACES_SHUNNED_UP
	allowed_sexes = list(MALE, FEMALE)
	spells = list(/obj/effect/proc_holder/spell/targeted/touch/prestidigitation)
	display_order = JDO_MAGICIAN
	tutorial = "The art of magic and the arcyne in this age is on the decline, but you stand as one of its top practictioners. For your efforts to maintain the art as well as protection from the dark, you were elevated to nobility and given residency in the Manor by the Lord. Keep the traditions of the magi alive, and teach your apprentice what you know, for there is power to be found in what is lost."
	outfit = /datum/outfit/job/roguetown/magician
	whitelist_req = TRUE
	give_bank_account = 47
	min_pq = 4
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/cmode/nobility/combat_courtmage.ogg'
	advclass_cat_rolls = list(CTAG_COURTMAGE = 2)

	// Can't get very far as a magician if you can't chant spells now can you?
	vice_restrictions = list(/datum/charflaw/mute)

	job_traits = list(TRAIT_MAGEARMOR, TRAIT_ARCYNE_T4, TRAIT_SEEPRICES, TRAIT_INTELLECTUAL, TRAIT_NOBLE, TRAIT_ALCHEMY_EXPERT)
	job_subclasses = list(
		/datum/advclass/courtmage
	)

/datum/advclass/courtmage
	name = "Archmagus"
	tutorial = "The art of magic and the arcyne in this age is on the decline, but you stand as one of its top practictioners. For your efforts to maintain the art as well as protection from the dark, you were elevated to nobility and given residency in the Manor by the Lord. Keep the traditions of the magi alive, and teach your apprentice what you know, for there is power to be found in what is lost."
	outfit = /datum/outfit/job/roguetown/magician/basic

	subclass_spellpoints = 36
	category_tags = list(CTAG_COURTMAGE)
	subclass_stats = list(
		STATKEY_INT = 5,// Automatic advanced magic for most spells. (I.E summon weapon being upgraded to steel from iron/etc)
		STATKEY_PER = 3,
		STATKEY_LCK = 1,// Leadership carrot, stats weight lower than usual leadership weight due to having T4 magic.
		STATKEY_STR = -1,
		STATKEY_CON = -1,
	)
	subclass_skills = list(
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_APPRENTICE, // more stam for holding spells
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/alchemy = SKILL_LEVEL_EXPERT,
		/datum/skill/magic/arcane = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
	)

/datum/outfit/job/roguetown/magician
	job_bitflag = BITFLAG_ROYALTY
	has_loadout = TRUE

/datum/outfit/job/roguetown/magician/choose_loadout(mob/living/carbon/human/H)
	. = ..()
	if(H.age == AGE_OLD)
		H.change_stat(STATKEY_SPD, -1)
		H.change_stat(STATKEY_INT, 1)
		H.change_stat(STATKEY_PER, 1)
		H.mind?.adjust_spellpoints(6)
		belt = /obj/item/storage/belt/rogue/leather/plaquegold
		cloak = null
		head = /obj/item/clothing/head/roguetown/wizhat
		armor = /obj/item/clothing/suit/roguetown/shirt/robe/wizard
		H.dna.species.soundpack_m = new /datum/voicepack/male/wizard()
	switch(H.patron?.type)
		if(/datum/patron/inhumen/zizo)
			H.cmode_music = 'sound/music/combat_heretic.ogg'
			ADD_TRAIT(H, TRAIT_HERESIARCH, TRAIT_GENERIC)
		if(/datum/patron/inhumen/matthios)
			H.cmode_music = 'sound/music/combat_matthios.ogg'
			ADD_TRAIT(H, TRAIT_HERESIARCH, TRAIT_GENERIC)
		if(/datum/patron/inhumen/graggar)
			H.cmode_music = 'sound/music/combat_graggar.ogg'
			ADD_TRAIT(H, TRAIT_HERESIARCH, TRAIT_GENERIC)
		if(/datum/patron/inhumen/baotha)
			H.cmode_music = 'sound/music/combat_baotha.ogg'
			ADD_TRAIT(H, TRAIT_HERESIARCH, TRAIT_GENERIC)

/datum/outfit/job/roguetown/magician/basic/pre_equip(mob/living/carbon/human/H)
	..()
	H.adjust_blindness(-3)
	neck = /obj/item/clothing/neck/roguetown/talkstone
	cloak = /obj/item/clothing/cloak/cape/archivist
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	pants = /obj/item/clothing/under/roguetown/tights/black
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced/short
	belt = /obj/item/storage/belt/rogue/leather/plaquegold
	beltr = /obj/item/storage/keyring/mage
	beltl = /obj/item/storage/magebag
	id = /obj/item/clothing/ring/active/nomag
	r_hand = /obj/item/rogueweapon/woodstaff/riddle_of_steel/magos
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/reagent_containers/glass/bottle/rogue/poison,
		/obj/item/reagent_containers/glass/bottle/rogue/healthpot,
		/obj/item/recipe_book/alchemy,
		/obj/item/recipe_book/magic,
		/obj/item/book/spellbook,
		/obj/item/rogueweapon/huntingknife/idagger/silver/arcyne
	)
