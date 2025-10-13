/datum/advclass/mercenary/seonjang //shitcode approved by free
	name = "Xuefeng Seonjang"
	tutorial = "The respected leader and singular representative of the Xuefeng clan remnants, you're an experienced swordsman. It matters not where the coin comes from, so long as you can make enough to support the clan in its survival from the Xinyi-Duvalti triad and its conflicts, now in strange lands."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/human/northern,
		/datum/species/elf/wood,
		/datum/species/human/halfelf,
		/datum/species/demihuman,
		/datum/species/vulpkanin,
	)
	outfit = /datum/outfit/job/roguetown/mercenary/seonjang
	subclass_languages = list(/datum/language/saltlian)
	class_select_category = CLASS_CAT_SALTLIA
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_CRITICAL_RESISTANCE, TRAIT_HARDDISMEMBER, TRAIT_NOPAINSTUN)
	cmode_music = 'sound/music/combat_saltlia.ogg'
	maximum_possible_slots = 1
	subclass_stats = list(
		STATKEY_CON = 3,
		STATKEY_WIL = 3,
		STATKEY_STR = 2,
		STATKEY_PER = 1,
		STATKEY_SPD = -1
	)
	subclass_skills = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
	)
	extra_context = "This subclass is race-limited to: Humens, Half-Elves, Elves, Half-kin, and Vulpkians."
/datum/outfit/job/roguetown/mercenary/seonjang/pre_equip(mob/living/carbon/human/H)
	..()
	belt = /obj/item/storage/belt/rogue/leather/knifebelt/black/saltlian
	beltr = /obj/item/rogueweapon/sword/sabre/mulyeog/xuefengcaptain
	beltl = /obj/item/rogueweapon/scabbard/sword/saltlian/gold
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/roguekey/mercenary,
		/obj/item/flashlight/flare/torch/lantern,
		/obj/item/storage/belt/rogue/pouch/coins/rich,
		)
	H.adjust_blindness(-3)

	if(should_wear_masc_clothes(H))
		head = /obj/item/clothing/head/roguetown/mentorhat
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/easttats
		neck = /obj/item/clothing/neck/roguetown/leather
		cloak = /obj/item/clothing/cloak/eastcloak1
		pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/eastpants1
		gloves = /obj/item/clothing/gloves/roguetown/eastgloves2
		armor = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt1
		shoes = /obj/item/clothing/shoes/roguetown/boots
		H.change_stat(STATKEY_WIL, 1)
		H.change_stat(STATKEY_CON, 1) //to compensate for the permanent lack of armor
		H.dna.species.soundpack_m = new /datum/voicepack/male/evil()
	else if(should_wear_femme_clothes(H))
		head = /obj/item/clothing/head/roguetown/mentorhat
		neck = /obj/item/clothing/neck/roguetown/leather
		armor = /obj/item/clothing/suit/roguetown/armor/basiceast/captainrobe
		cloak = /obj/item/clothing/cloak/eastcloak1
		gloves = /obj/item/clothing/gloves/roguetown/eastgloves2
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/easttats
		pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/eastpants2
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced/short

	H.merctype = 9
