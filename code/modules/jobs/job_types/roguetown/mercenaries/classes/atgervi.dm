/datum/advclass/mercenary/atgervi
	name = "Atgervian Varangian"
	tutorial = "Atgervians are the term for those who live in the far north of Rhaenval. This land is particular known for its highlands and more hostile weather patterns- those who live here are the hardiest and most fiercesome of people. In past ages the Atgervians were known as fierce sea raiders- amassing wealth across the seas. But those daes have passed, and now most of the Varangian are seen doing mercenary work abroad."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = ACCEPTED_RACES
	outfit = /datum/outfit/job/roguetown/mercenary/atgervi
	subclass_languages = list(/datum/language/rhaenvalian)
	cmode_music = 'sound/music/combat_vagarian.ogg'
	class_select_category = CLASS_CAT_RHAENVAL
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_MEDIUMARMOR)
	subclass_stats = list(
		STATKEY_WIL = 3,
		STATKEY_CON = 3,
		STATKEY_STR = 2,
		STATKEY_PER = 1,
		STATKEY_SPD = -2
	)
	subclass_skills = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/axes = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/bows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/maces = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
	)

/datum/outfit/job/roguetown/mercenary/atgervi/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		to_chat(H, span_warning("You are a Varangian Mercenary of Rhaenvali. The Varangians are one of the more prestigious mercenary groups of their time, known for their loyalty to their clients."))
		H.mind.current.faction += "[H.name]_faction"
	head = /obj/item/clothing/head/roguetown/helmet/bascinet/atgervi/rhaenval/ownel
	gloves = /obj/item/clothing/gloves/roguetown/chain/rhaenval
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/atgervi
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/rhaenval
	pants = /obj/item/clothing/under/roguetown/splintlegs/iron/rhaenval
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/atgervi
	backr = /obj/item/rogueweapon/shield/atgervi
	backl = /obj/item/storage/backpack/rogue/satchel/short
	beltr = /obj/item/rogueweapon/stoneaxe/woodcut/steel/atgervi
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/clothing/neck/roguetown/chaincoif/chainmantle //They didn't have neck protection before.
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	backpack_contents = list(
		/obj/item/roguekey/mercenary = 1,
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)
	H.merctype = 1

/datum/advclass/mercenary/atgervi/shaman
	name = "Atgervi Shaman"
	tutorial = "Atgervians are the term for those who live in the far north of Rhaenval. This land is particular known for its highlands and more hostile weather patterns- those who live here are the hardiest and most fiercesome of people. In past ages the Atgervians were known as fierce sea raiders- amassing wealth across the seas. But those daes have passed, and now most of the Varangian are seen doing mercenary work abroad."
	outfit = /datum/outfit/job/roguetown/mercenary/atgervishaman
	subclass_languages = list(/datum/language/rhaenvalian)
	cmode_music = 'sound/music/combat_shaman2.ogg'
	traits_applied = list(TRAIT_STRONGBITE, TRAIT_CIVILIZEDBARBARIAN, TRAIT_CRITICAL_RESISTANCE, TRAIT_NOPAINSTUN)
	subclass_stats = list(
		STATKEY_STR = 3,
		STATKEY_CON = 2,
		STATKEY_WIL = 1,
		STATKEY_SPD = 1,
		STATKEY_INT = -1,
		STATKEY_PER = -2
	)
	subclass_skills = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/mercenary/atgervishaman/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind.current.faction += "[H.name]_faction"
		to_chat(H, span_warning("You are a Shaman of the Atgervian. Savage combatants who commune with the winds through gut-wrenching violence, rather than idle prayer."))
		H.dna.species.soundpack_m = new /datum/voicepack/male/warrior()
		H.put_in_hands(new /obj/item/rogueweapon/handclaw/rhaenval, FALSE)
	head = /obj/item/clothing/head/roguetown/helmet/leather/shaman_hood
	gloves = /obj/item/clothing/gloves/roguetown/angle/rhaenvalfur
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/atgervi
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	pants = /obj/item/clothing/under/roguetown/trou/leather/atgervi
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/atgervi
	backr = /obj/item/storage/backpack/rogue/satchel/short
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/flashlight/flare/torch
	backpack_contents = list(
		/obj/item/roguekey/mercenary = 1,
		/obj/item/rogueweapon/huntingknife = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1
		)
	H.merctype = 1


/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/atgervi
	name = "varangian hauberk"
	desc = "Considered a masterwork of Rhaenish Atgervi crafting, this hauberk is a well crafted blend of chain and leather into a dense protective coat."
	icon_state = "atgervi_raider_mail"
	item_state = "atgervi_raider_mail"
	max_integrity = 400

/obj/item/clothing/suit/roguetown/armor/leather/heavy/atgervi
	name = "shamanic coat"
	desc = "A furred protective coat, often made by hand. It embodies the second trial of the Atgervi Shamans. To honor the winds is too desire for more."
	icon_state = "atgervi_shaman_coat"
	item_state = "atgervi_shaman_coat"

/obj/item/clothing/under/roguetown/trou/leather/atgervi
	name = "fur pants"
	desc = "Thick fur pants made to endure the coldest winds, offering a share of protection from fang and claw of beast or men alike."
	icon_state = "atgervi_pants"
	item_state = "atgervi_pants"

/obj/item/clothing/gloves/roguetown/angle/atgervi
	name = "fur-lined leather gloves"
	desc = "Thick, padded gloves made for the harshest of climates, and wildest of beasts encountered in the untamed lands."
	icon_state = "atgervi_raider_gloves"
	item_state = "atgervi_raider_gloves"
	color = "#ffffff"

/obj/item/clothing/gloves/roguetown/plate/atgervi
	name = "beast claws"
	desc = "A menacing pair of plated claws, of which is a closely protected tradition of the northern Rhaenish. The four claws embodying the four great winds. Decorated with symbols of the gods they praise and the gods they reject."
	icon_state = "atgervi_shaman_gloves"
	item_state = "atergvi_shaman_gloves"

/obj/item/clothing/head/roguetown/helmet/bascinet/atgervi
	name = "owl helmet"
	desc = "A carefully forged steel helmet in the shape of an owl's face, with added chain to cover the face and neck against many blows."
	icon_state = "atgervi_raider"
	item_state = "atgervi_raider"
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDESNOUT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/32x48/atgervi.dmi'
	bloody_icon = 'icons/effects/blood64.dmi'
	block2add = null
	worn_x_dimension = 32
	worn_y_dimension = 48

/obj/item/clothing/head/roguetown/helmet/leather/saiga/atgervi
	name = "moose hood"
	desc = "A deceptively strong hood of hide with a pair of large heavy antlers. It is a reward given to those who succeed in their coming-of-age ritual, to slay a saiga in a hunt alone and to bring back its antlers in one piece."
	icon_state = "atgervi_shaman"
	item_state = "atgervi_shaman"
	flags_inv = HIDEEARS|HIDEFACE
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/32x48/atgervi.dmi'
	flags_inv = HIDEEARS
	bloody_icon = 'icons/effects/blood64.dmi'
	worn_x_dimension = 32
	worn_y_dimension = 48
	experimental_inhand = FALSE
	experimental_onhip = FALSE

/obj/item/clothing/shoes/roguetown/boots/leather/atgervi
	name = "atgervi leather boots"
	desc = "A pair of strong leather boots, designed to endure battle and the chill of the frozen north both."
	icon_state = "atgervi_boots"
	item_state = "atgervi_boots"

/obj/item/rogueweapon/shield/atgervi
	name = "kite shield"
	desc = "A large but light wooden shield with a steel boss in the center to deflect blows more easily."
	icon_state = "atgervi_shield"
	item_state = "atgervi_shield"
	lefthand_file = 'icons/mob/inhands/weapons/rogue_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/rogue_righthand.dmi'
	force = 15
	throwforce = 10
	dropshrink = 0.8
	coverage = 80
	attacked_sound = list('sound/combat/parry/shield/towershield (1).ogg','sound/combat/parry/shield/towershield (2).ogg','sound/combat/parry/shield/towershield (3).ogg')
	parrysound = list('sound/combat/parry/shield/towershield (1).ogg','sound/combat/parry/shield/towershield (2).ogg','sound/combat/parry/shield/towershield (3).ogg')
	max_integrity = 300
	experimental_inhand = FALSE

/obj/item/rogueweapon/shield/atgervi/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("onback")
				return list("shrink" = 0.7,"sx" = -17,"sy" = -15,"nx" = -15,"ny" = -15,"wx" = -12,"wy" = -15,"ex" = -18,"ey" = -15,"nturn" = 0,"sturn" = 0,"wturn" = 180,"eturn" = 0,"nflip" = 8,"sflip" = 0,"wflip" = 1,"eflip" = 0,"northabove" = 1,"southabove" = 0,"eastabove" = 0,"westabove" = 0)

/obj/item/rogueweapon/stoneaxe/woodcut/steel/atgervi
	name = "Bearded Axe"
	desc = "A large axe easily wielded in one hand or two, With a large hooked axehead to tearing into flesh and armor and ripping it away brutally."
	icon_state = "atgervi_axe"
	item_state = "atgervi_axe"
	lefthand_file = 'icons/mob/inhands/weapons/rogue_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/rogue_righthand.dmi'
	wlength = WLENGTH_LONG
	experimental_onhip = TRUE
	wdefense = 5
	max_blade_int = 250
	force = 26
	force_wielded = 33

/obj/item/rogueweapon/stoneaxe/woodcut/steel/atgervi/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -9,"sy" = -8,"nx" = 9,"ny" = -7,"wx" = -7,"wy" = -8,"ex" = 3,"ey" = -8,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 90,"sturn" = -90,"wturn" = -90,"eturn" = 90,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.8,"sx" = 2,"sy" = -8,"nx" = -6,"ny" = -3,"wx" = 3,"wy" = -4,"ex" = 4,"ey" = -3,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -44,"sturn" = 45,"wturn" = 47,"eturn" = 33,"nflip" = 8,"sflip" = 0,"wflip" = 0,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.6,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 180,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 1,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)
