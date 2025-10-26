/datum/migrant_role/underdark/thrallmaster
	name = "Underdark Thrallmaster"
	greet_text = "Having served the Maîtresse of the Drow Cities faithfully, you have been given an established title of nobility and a free license to expand your new powerbase. You have decided that the easiest way to do this is to expand upwards, into the topside regions- to look for slaves and do mercantile trade. How you will go about this is up to you."
	outfit = /datum/outfit/job/roguetown/underdark/thrallmaster
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
/datum/outfit/job/roguetown/underdark/thrallmaster/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/nyle
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/black
	armor = /obj/item/clothing/suit/roguetown/armor/plate/half/iron
	gloves = /obj/item/clothing/gloves/roguetown/plate/iron
	wrists = /obj/item/clothing/wrists/roguetown/bracers/iron
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/iron
	pants = /obj/item/clothing/under/roguetown/chainlegs/iron
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/iron
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backr = /obj/item/rogueweapon/shield/tower/metal
	beltl = /obj/item/rogueweapon/whip/antique
	beltr = /obj/item/rogueweapon/huntingknife/idagger/silver/elvish/drow
	backpack_contents = list(
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		/obj/item/flashlight/flare/torch/lantern = 1, 
		/obj/item/storage/belt/rogue/pouch/coins/rich = 1, 
		/obj/item/rope/chain = 2,
		/obj/item/clothing/neck/roguetown/collar/leather/nomagic = 1
		)

	H.adjust_skillrank(/datum/skill/combat/whipsflails, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/tracking, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
	H.change_stat("strength", 3)
	H.change_stat("endurance", 2)
	H.change_stat("constitution", -1)
	H.change_stat("perception", 1)
	H.change_stat("speed", -1)
	H.change_stat("intelligence", 1)
	H.cmode_music = 'sound/music/combat_delf.ogg'
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_PERFECT_TRACKER, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_OUTLANDER, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)

/datum/migrant_role/underdark/halberdier
	name = "Underdark Halberdier"
	greet_text = "Serving the Thrallmaster, you are a simple halberdier of their noble estate. Serve them well or face punishment for your misdeeds."
	outfit = /datum/outfit/job/roguetown/underdark/halberdier
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
/datum/outfit/job/roguetown/underdark/halberdier/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/sallet/visored/iron
	mask = /obj/item/clothing/mask/rogue/ragmask/black
	neck = /obj/item/clothing/neck/roguetown/chaincoif/iron
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/black
	armor = /obj/item/clothing/suit/roguetown/armor/plate/iron
	gloves = /obj/item/clothing/gloves/roguetown/chain/iron
	wrists = /obj/item/clothing/wrists/roguetown/bracers/iron
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/iron
	pants = /obj/item/clothing/under/roguetown/chainlegs/iron
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather/black
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backr = /obj/item/rogueweapon/scabbard/gwstrap
	l_hand = /obj/item/rogueweapon/halberd/glaive
	beltr = /obj/item/rogueweapon/huntingknife/idagger/silver/elvish/drow
	backpack_contents = list(
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		/obj/item/flashlight/flare/torch/lantern = 1,
		/obj/item/rope/chain = 2
		)

	H.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axes, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/tracking, 1, TRUE)
	H.change_stat("strength", 1)
	H.change_stat("endurance", 3)
	H.change_stat("constitution", 2)
	H.change_stat("perception", -2)
	H.change_stat("speed", -1)
	H.change_stat("intelligence", 1)
	H.cmode_music = 'sound/music/combat_delf.ogg'
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_OUTLANDER, TRAIT_GENERIC)

/datum/migrant_role/underdark/bladesinger
	name = "Underdark Bladesinger"
	greet_text = "Serving the Thrallmaster, you are their second-in-command, and one of their closest allies and confidants. Assist them in any way that you can in the expansion of their powerbase, lest they flounder and all suffer the consequences."
	outfit = /datum/outfit/job/roguetown/underdark/bladesinger
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
/datum/outfit/job/roguetown/underdark/bladesinger/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/roguehood/black
	mask = /obj/item/clothing/mask/rogue/ragmask/black
	neck = /obj/item/clothing/neck/roguetown/gorget
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/black
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	gloves = /obj/item/clothing/gloves/roguetown/leather
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather/black
	backl = /obj/item/storage/backpack/rogue/satchel/short
	l_hand = /obj/item/rogueweapon/sword/falx
	beltl = /obj/item/rogueweapon/scabbard/sword
	beltr = /obj/item/rogueweapon/huntingknife/idagger/silver/elvish/drow
	backpack_contents = list(
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		/obj/item/flashlight/flare/torch/lantern = 1,
		/obj/item/rope/chain = 2
		)

	H.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/tracking, 1, TRUE)
	H.change_stat("strength", -2)
	H.change_stat("endurance", 2)
	H.change_stat("constitution", -2)
	H.change_stat("perception", 2)
	H.change_stat("speed", 3)
	H.change_stat("intelligence", 1)
	H.cmode_music = 'sound/music/combat_delf.ogg'
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_OUTLANDER, TRAIT_GENERIC)

/datum/migrant_role/underdark/archer
	name = "Underdark Archer"
	greet_text = "Serving the Thrallmaster, you are a simple archer of their noble estate. Serve them well or face punishment for your misdeeds."
	outfit = /datum/outfit/job/roguetown/underdark/archer
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
/datum/outfit/job/roguetown/underdark/archer/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/roguehood/black
	mask = /obj/item/clothing/mask/rogue/ragmask/black
	neck = /obj/item/clothing/neck/roguetown/gorget
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/black
	armor = /obj/item/clothing/suit/roguetown/armor/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/light
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	belt = /obj/item/storage/belt/rogue/leather/black
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve
	beltl = /obj/item/quiver/arrows
	beltr = /obj/item/rogueweapon/huntingknife/idagger/silver/elvish/drow
	backpack_contents = list(
		/obj/item/rogueweapon/scabbard/sheath = 1, 
		/obj/item/flashlight/flare/torch/lantern = 1,
		/obj/item/rope/chain = 2
		)

	H.adjust_skillrank(/datum/skill/combat/bows, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/slings, 2, TRUE) 
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.change_stat("perception", 3)
	H.change_stat("constitution", -1)
	H.change_stat("endurance", 2)
	H.change_stat("speed", 2)
	H.cmode_music = 'sound/music/combat_delf.ogg'
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_OUTLANDER, TRAIT_GENERIC)

/datum/migrant_role/underdark/slave
	name = "Underdark Slave"
	greet_text = "You are hardly considered anything to these people. Nothing less than a serving caste dedicated to serving the whims of this party whenever desired- be it cooking, cleaning, sewing- whatever. Your worth is only valued at how valuable you make yourself. Perhaps you will get lucky and get sold away to a better place- or put out of your misery."
	outfit = /datum/outfit/job/roguetown/underdark/slave
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = ACCEPTED_RACES
/datum/outfit/job/roguetown/underdark/slave/pre_equip(mob/living/carbon/human/H)
	..()
	neck = /obj/item/clothing/neck/roguetown/collar/leather/nomagic
	armor = /obj/item/clothing/suit/roguetown/shirt/rags
	pants = /obj/item/clothing/under/roguetown/loincloth/brown

	H.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/music, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
	H.adjust_skillrank(/datum/skill/craft/sewing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/labor/butchering, 1, TRUE)
	H.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
	H.change_stat("intelligence", -1)
	H.change_stat("fortune", 5)
	H.change_stat("constitution", -1)
	H.change_stat("endurance", -2)
	H.change_stat("speed", 2)
	H.cmode_music = 'sound/music/combat_delf.ogg'
	ADD_TRAIT(H, TRAIT_CICERONE, TRAIT_GENERIC)
