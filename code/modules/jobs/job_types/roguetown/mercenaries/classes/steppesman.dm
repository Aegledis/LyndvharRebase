/datum/advclass/mercenary/steppesman
	name = "Vruirid Kazak"
	tutorial = "Once having lived and came from the Vruirid Steppe frontiers, you have been rented out as a mercenary in the distant realms to bring coin home. There are three things you value most; saigas, freedom, and coin."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	class_select_category = CLASS_CAT_RHAENVAL
	category_tags = list(CTAG_MERCENARY)
	cmode_music = 'sound/music/combat_steppe.ogg'
	subclass_languages = list(/datum/language/rhaenvalian)
	horse = /mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame/saddled
	extra_context = "This subclass has 4 loadouts with various stats, skills & equipment."

	// CLASS ARCHETYPES
/datum/advclass/mercenary/steppesman/sabrevet
	name = "Vruirid Szabrista"
	outfit = /datum/outfit/job/roguetown/mercenary/steppesman/sabrevet
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_WIL = 1,
		STATKEY_CON = 2,
		STATKEY_SPD = 1,
	)
	subclass_skills = list(
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/tracking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/riding = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
	)
	traits_applied = list(TRAIT_MEDIUMARMOR)

/datum/outfit/job/roguetown/mercenary/steppesman/sabrevet/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("The Szabristas are the elites of the northwestern steppes, veterans of conflict across the realm. Outfitted with a shishka and shield, these warriors sacrifice their swiftness for armor and civilized respect."))
	shoes = /obj/item/clothing/shoes/roguetown/boots/nobleboot/steppesman
	head = /obj/item/clothing/head/roguetown/helmet/sallet/shishak		//Needs a unique helmet + mask combo at some point. 	//Dragonfruits to the rescue! Unique helmet with neck protection and +50 durability.
	gloves = /obj/item/clothing/gloves/roguetown/chain
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale/steppe	//Scale armor w/ better durability & unique sprite
	cloak = /obj/item/clothing/cloak/raincloak/furcloak
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	backl = /obj/item/rogueweapon/shield/iron/steppesman
	beltl= /obj/item/rogueweapon/scabbard/sword
	l_hand = /obj/item/rogueweapon/sword/sabre/steppesman
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	belt = /obj/item/storage/belt/rogue/leather/black
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/chargah
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/roguekey/mercenary,
		/obj/item/flashlight/flare/torch,
		/obj/item/rogueweapon/huntingknife/idagger/steel,
		/obj/item/storage/belt/rogue/pouch/coins/poor,
		/obj/item/rogueweapon/whip/nagaika,
		/obj/item/rogueweapon/scabbard/sheath
		)
	H.dna.species.soundpack_m = new /datum/voicepack/male/evil() 	//Fits in my head all too well.
	var/masks = list("Humen", "Beast")
	var/maskchoice = input("What fits your face?", "MASK SELECTION") as anything in masks
	switch(maskchoice)
		if("Humen")
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/facemask/steel/steppesman, SLOT_WEAR_MASK, TRUE)
		if("Beast")
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/facemask/steel/steppesman/anthro, SLOT_WEAR_MASK, TRUE)


/datum/advclass/mercenary/steppesman/sapper
	name = "Vruirid Árkászi"
	outfit = /datum/outfit/job/roguetown/mercenary/steppesman/sapper
	subclass_skills = list(
		/datum/skill/combat/axes = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,	//To avoid virtue cheese
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,	//Ditto
		/datum/skill/labor/mining = SKILL_LEVEL_APPRENTICE,		//Ditto
		/datum/skill/craft/traps = SKILL_LEVEL_JOURNEYMAN,		//Ditto
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/riding = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
	)
	subclass_stats = list(
		STATKEY_STR = 2,	//Statblock prone to revision. Probably will be revised. Currently weighted for 7 points and not 9.
		STATKEY_WIL = 3,
		STATKEY_CON = 2,
		STATKEY_PER = 2,
		STATKEY_SPD = -2,
	)
	traits_applied = list(TRAIT_MEDIUMARMOR)
/datum/outfit/job/roguetown/mercenary/steppesman/sapper/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("The Árkászi are frontline sappers specialized in sowing chaos and confusion in tandem with the Szabristas, focused on raw strength and will over the company's swordsmen and archers."))
	shoes = /obj/item/clothing/shoes/roguetown/boots/nobleboot/steppesman
	head = /obj/item/clothing/head/roguetown/helmet/sallet/shishak
	gloves = /obj/item/clothing/gloves/roguetown/chain
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale/steppe
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	backl = /obj/item/rogueweapon/shield/iron/steppesman
	l_hand = /obj/item/rogueweapon/stoneaxe/battle/steppesman
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	belt = /obj/item/storage/belt/rogue/leather/black
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/chargah
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/roguekey/mercenary,
		/obj/item/flashlight/flare/torch,
		/obj/item/rogueweapon/huntingknife/idagger/steel,
		/obj/item/storage/belt/rogue/pouch/coins/poor,
		/obj/item/rogueweapon/whip/nagaika,
		/obj/item/rogueweapon/scabbard/sheath
		)
	H.dna.species.soundpack_m = new /datum/voicepack/male/evil()
	if(H.mind)
		var/masks = list("Humen", "Beast")
		var/maskchoice = input(H, "What fits your face?", "MASK SELECTION") as anything in masks
		switch(maskchoice)
			if("Humen")
				H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/facemask/steel/steppesman, SLOT_WEAR_MASK, TRUE)
			if("Beast")
				H.equip_to_slot_or_del(new /obj/item/clothing/mask/rogue/facemask/steel/steppesman/anthro, SLOT_WEAR_MASK, TRUE)


/datum/advclass/mercenary/steppesman/archer
//Tl;dr - light armor class for Tatar-style archery. Has 'Druzhina' as a name cus czech/polish influence, couldn't think of better one.
	name = "Vruirid Druzhina"
	outfit = /datum/outfit/job/roguetown/mercenary/steppesman/archer
	subclass_stats = list(
		STATKEY_PER = 3,
		STATKEY_WIL = 2,
		STATKEY_SPD = 2,
	)
	subclass_skills = list(
		/datum/skill/combat/bows = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/slings = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/shields = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/tracking = SKILL_LEVEL_JOURNEYMAN,	//To avoid virtue cheese
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/riding = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
	)
	traits_applied = list(TRAIT_DODGEEXPERT)
/datum/outfit/job/roguetown/mercenary/steppesman/archer/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("A Druzhina, a commoner of the Vruirid steppes made into a professional soldier. Hunters, herders, and various nomads from all walks of life. Equal in service, equal behind their bow, and ready to fight."))
	shoes = /obj/item/clothing/shoes/roguetown/boots/nobleboot/steppesman
	head = /obj/item/clothing/head/roguetown/helmet/sallet/shishak
	gloves = /obj/item/clothing/gloves/roguetown/fingerless_leather
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat/steppe
	cloak = /obj/item/clothing/cloak/raincloak/furcloak
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	beltr = /obj/item/quiver/javelin/iron
	beltl = /obj/item/quiver/arrows
	backl = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve/steppesman
	neck = /obj/item/clothing/neck/roguetown/leather
	belt = /obj/item/storage/belt/rogue/leather/black
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/chargah
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/roguekey/mercenary,
		/obj/item/flashlight/flare/torch,
		/obj/item/rogueweapon/huntingknife/idagger/steel,
		/obj/item/storage/belt/rogue/pouch/coins/poor,
		/obj/item/rogueweapon/whip/nagaika,
		/obj/item/rogueweapon/scabbard/sheath
		)

/datum/advclass/mercenary/steppesman/infantry
//Tl;dr - Old Steppesman whip build, light armor, be the glass canon you always wanted to be. Live your life, king. 
	name = "Vruirid Vayreni"
	outfit = /datum/outfit/job/roguetown/mercenary/steppesman/infantry
	subclass_stats = list(
		STATKEY_STR = 1,
		STATKEY_PER = 2,
		STATKEY_WIL = 1,
		STATKEY_SPD = 2,
	)
	subclass_skills = list(
		/datum/skill/combat/whipsflails = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/tracking = SKILL_LEVEL_APPRENTICE,	//Bit high but he doesn't get huge strength boons so makes up for it. Same as a guard.
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/riding = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/butchering = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/sewing = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
	)
	traits_applied = list(TRAIT_DODGEEXPERT, TRAIT_OUTDOORSMAN)
/datum/outfit/job/roguetown/mercenary/steppesman/infantry/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("Being a Vayreni is not a title one earns, nor is born with. It's a way of life. Known to be eccentric, living life on the edge - but living as free as possible. Skilled with whips, these madmen are the bane of civilized warriors."))
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	head = /obj/item/clothing/head/roguetown/papakha	//No helm
	gloves = /obj/item/clothing/gloves/roguetown/fingerless_leather
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat/steppe
	cloak = /obj/item/clothing/cloak/volfmantle			//Crazed man, gives the look.
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	beltr = /obj/item/rogueweapon/shield/buckler		//Doesn't get good shield skill + no armor, so they get this to compensate for no parry on whip.
	beltl = /obj/item/rogueweapon/whip
	neck = /obj/item/clothing/neck/roguetown/bevor		//Better neckpiece for slightly less skill variety. Based it off a cool piece of art...
	belt = /obj/item/storage/belt/rogue/leather/black
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/chargah
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/roguekey/mercenary,
		/obj/item/flashlight/flare/torch,
		/obj/item/rogueweapon/huntingknife/idagger/steel,
		/obj/item/storage/belt/rogue/pouch/coins/poor,
		/obj/item/rogueweapon/whip/nagaika,
		/obj/item/rogueweapon/scabbard/sheath
		)
	H.dna.species.soundpack_m = new /datum/voicepack/male/warrior()		//Semi-crazed warrior vibe.
	H.merctype = 11
