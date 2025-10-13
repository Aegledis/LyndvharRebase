/datum/advclass/mercenary/xuefengclan
	name = "Xuefeng Gun-in"
	tutorial = "A band of foreign outcast Saltlians. The Xuefeng are outcasts from the Xinyi-Duvalti triad currently overseeing Saltlia, believed to be associated with the rebels during the Xinyi revolt. The clan departed lest they risked being executed for such suspicions, or worse. It is no organized group of soldiers, but rather a loose collection of experienced fighters that have wandered an entire continent to get here."
	allowed_races = list(
		/datum/species/human/northern,
		/datum/species/elf/wood,
		/datum/species/human/halfelf,
		/datum/species/demihuman,
		/datum/species/vulpkanin,
	)
	outfit = /datum/outfit/job/roguetown/mercenary/xuefengclan
	subclass_languages = list(/datum/language/saltlian)
	class_select_category = CLASS_CAT_SALTLIA
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_CRITICAL_RESISTANCE, TRAIT_HARDDISMEMBER, TRAIT_NOPAINSTUN)
	cmode_music = 'sound/music/combat_saltlia.ogg'
	subclass_stats = list(
		STATKEY_CON = 3,
		STATKEY_WIL = 3,
		STATKEY_STR = 2,
		STATKEY_SPD = -1
	)
	subclass_skills = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
	)
	extra_context = "This subclass is race-limited to: Humens, Half-Elves, Elves, Half-kin, and Vulpkians."

/datum/outfit/job/roguetown/mercenary/xuefengclan/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You are well versed and experienced in swordfighting, you have no problem in taking up most jobs so long as the coin is good, for either yourself or the Xuefeng."))
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/scabbard/sword/saltlian/steel
	beltl = /obj/item/rogueweapon/sword/sabre/mulyeog/xuefenghench
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/easttats
	cloak = /obj/item/clothing/cloak/eastcloak1
	armor = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt2
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/eastpants2
	shoes = /obj/item/clothing/shoes/roguetown/armor/xuefengclan
	gloves = /obj/item/clothing/gloves/roguetown/eastgloves2
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(
		/obj/item/roguekey/mercenary,
		/obj/item/flashlight/flare/torch/lantern,
		/obj/item/storage/belt/rogue/pouch/coins/poor,
		)
	H.merctype = 9

/datum/advclass/mercenary/xuefengclan/gungsu
	name = "Xuefeng Gungsu"
	tutorial = "A band of foreign outcast Saltlians. The Xuefeng are outcasts from the Xinyi-Duvalti triad currently overseeing Saltlia, believed to be associated with the rebels during the Xinyi revolt. The clan departed lest they risked being executed for such suspicions, or worse. It is no organized group of soldiers, but rather a loose collection of experienced fighters that have wandered an entire continent to get here."
	outfit = /datum/outfit/job/roguetown/mercenary/rumaclan_sasu
	subclass_stats = list(
		STATKEY_SPD = 4,
		STATKEY_PER = 2,
		STATKEY_WIL = 2,
		STATKEY_STR = -1,
		STATKEY_CON = -1
	)
	subclass_skills = list(
		/datum/skill/combat/bows = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/sneaking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/climbing = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/mercenary/rumaclan_sasu/pre_equip(mob/living/carbon/human/H)
	..()
	H.set_blindness(0)
	to_chat(H, span_warning("You are an experienced archer of the clan, and many have called you a true marksman for your skills with the bow. You have no problem in taking up most jobs so long as the coin is good, for either yourself or the Xuefeng."))
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/quiver/arrows
	beltl = /obj/item/flashlight/flare/torch/lantern
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/easttats
	cloak = /obj/item/clothing/cloak/eastcloak1
	armor = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt2
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/eastpants2
	shoes = /obj/item/clothing/shoes/roguetown/armor/xuefengclan
	gloves = /obj/item/clothing/gloves/roguetown/eastgloves2
	backl = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(
		/obj/item/roguekey/mercenary,
		/obj/item/storage/belt/rogue/pouch/coins/poor,
		/obj/item/rogueweapon/huntingknife/idagger,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		)
	H.merctype = 9
