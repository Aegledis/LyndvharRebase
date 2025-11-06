GLOBAL_LIST_INIT(bum_quotes, world.file2list("strings/rt/bumlines.txt"))
GLOBAL_LIST_INIT(bum_aggro, world.file2list("strings/rt/bumaggrolines.txt"))

/mob/living/carbon/human/species/human/northern/bum //weak beggars. garbage equipment, random stats, all over the sewers. fuck em.
	aggressive=1
	rude = TRUE
	mode = NPC_AI_IDLE
	faction = list("bums", "station")
	ambushable = FALSE
	dodgetime = 30
	flee_in_pain = TRUE
	possible_rmb_intents = list()
	var/is_silent = FALSE /// Determines whether or not we will scream our funny lines at people.


/mob/living/carbon/human/species/human/northern/bum/ambush

	wander = TRUE
	
/mob/living/carbon/human/species/human/northern/bum/retaliate(mob/living/L)
	var/newtarg = target
	.=..()
	if(target)
		aggressive=1
		wander = TRUE
		if(target != newtarg)
			say(pick(GLOB.bum_aggro))
			pointed(target)


/mob/living/carbon/human/species/human/northern/bum/should_target(mob/living/L)
	if(L.stat != CONSCIOUS)
		return FALSE
	. = ..()

/mob/living/carbon/human/species/human/northern/bum/Initialize()
	. = ..()
	set_species(/datum/species/human/northern)
	addtimer(CALLBACK(src, PROC_REF(after_creation)), 1 SECONDS)
	is_silent = TRUE


/mob/living/carbon/human/species/human/northern/bum/after_creation()
	..()
	job = "Beggar"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_LEECHIMMUNE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_BREADY, TRAIT_GENERIC)
	equipOutfit(new /datum/outfit/job/roguetown/human/species/human/northern/bum)
	var/obj/item/organ/eyes/organ_eyes = getorgan(/obj/item/organ/eyes)
	gender = pick(MALE, FEMALE)
	regenerate_icons()

	var/obj/item/bodypart/head/head = get_bodypart(BODY_ZONE_HEAD)
	var/hairf = pick(list(/datum/sprite_accessory/hair/head/lowbraid, 
						/datum/sprite_accessory/hair/head/himecut, 
						/datum/sprite_accessory/hair/head/countryponytailalt, 
						/datum/sprite_accessory/hair/head/stacy,
						/datum/sprite_accessory/hair/head/stacybun,
						/datum/sprite_accessory/hair/head/kusanagi_alt))
	var/hairm = pick(list(/datum/sprite_accessory/hair/head/ponytailwitcher, 
						/datum/sprite_accessory/hair/head/lowbraid,
						/datum/sprite_accessory/hair/head/dave, 
						/datum/sprite_accessory/hair/head/emo, 
						/datum/sprite_accessory/hair/head/sabitsuki,
						/datum/sprite_accessory/hair/head/sabitsuki_ponytail))
	var/beard = pick(list(/datum/sprite_accessory/hair/facial/viking,
						/datum/sprite_accessory/hair/facial/manly,
						/datum/sprite_accessory/hair/facial/longbeard))
	head.sellprice = 5

	var/datum/bodypart_feature/hair/head/new_hair = new()
	var/datum/bodypart_feature/hair/facial/new_facial = new()

	if(gender == FEMALE)
		new_hair.set_accessory_type(hairf, null, src)
	else
		new_hair.set_accessory_type(hairm, null, src)
		new_facial.set_accessory_type(beard, null, src)

	if(prob(50))
		new_hair.accessory_colors = "#C1A287"
		new_hair.hair_color = "#C1A287"
		new_facial.accessory_colors = "#C1A287"
		new_facial.hair_color = "#C1A287"
		hair_color = "#C1A287"
	else
		new_hair.accessory_colors = "#A56B3D"
		new_hair.hair_color = "#A56B3D"
		new_facial.accessory_colors = "#A56B3D"
		new_facial.hair_color = "#A56B3D"
		hair_color = "#A56B3D"

	head.add_bodypart_feature(new_hair)
	head.add_bodypart_feature(new_facial)

	dna.update_ui_block(DNA_HAIR_COLOR_BLOCK)
	dna.species.handle_body(src)

	if(organ_eyes)
		organ_eyes.eye_color = "#336699"
		organ_eyes.accessory_colors = "#336699#336699"

	if(gender == FEMALE)
		real_name = pick(world.file2list("strings/rt/names/human/humnorf.txt"))
	else
		real_name = pick(world.file2list("strings/rt/names/human/humnorm.txt"))
	update_hair()
	update_body()

/mob/living/carbon/human/species/human/northern/bum/npc_idle()
	if(m_intent == MOVE_INTENT_SNEAK)
		return
	if(world.time < next_idle)
		return
	next_idle = world.time + rand(30, 70)
	if((mobility_flags & MOBILITY_MOVE) && isturf(loc) && wander)
		if(prob(20))
			var/turf/T = get_step(loc,pick(GLOB.cardinals))
			if(!istype(T, /turf/open/transparent/openspace))
				Move(T)
		else
			face_atom(get_step(src,pick(GLOB.cardinals)))
	if(!wander && prob(10))
		face_atom(get_step(src,pick(GLOB.cardinals)))

	if(prob(10))
		say(pick(GLOB.bum_quotes))
	if(prob(10))
		emote(pick("laugh","burp","yawn","grumble","mumble","blink_r","clap"))

/mob/living/carbon/human/species/human/northern/bum/handle_combat()
	if(mode == NPC_AI_HUNT)
		if(prob(2)) // do not make this big or else they NEVER SHUT UP
			emote("laugh")
		if(prob(10))
			say(pick(GLOB.bum_aggro))
	. = ..()

/datum/outfit/job/roguetown/human/species/human/northern/bum/pre_equip(mob/living/carbon/human/H)
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant
	pants = /obj/item/clothing/under/roguetown/tights/vagrant/l
	if(prob(10))
		armor = /obj/item/clothing/suit/roguetown/armor/gambeson/light
	if(prob(25))
		cloak = /obj/item/clothing/cloak/raincloak/brown
	pants = /obj/item/clothing/under/roguetown/trou/leather
	if(prob(50))
		pants = /obj/item/clothing/under/roguetown/tights/vagrant
	if(prob(35))
		head = /obj/item/clothing/head/roguetown/paddedcap
	if(prob(50))
		head = /obj/item/clothing/head/roguetown/knitcap
	if(prob(25))
		neck = /obj/item/clothing/neck/roguetown/leather
	gloves = /obj/item/clothing/gloves/roguetown/leather
	if(prob(10))
		gloves = /obj/item/clothing/gloves/roguetown/angle
	H.STASTR = rand(5,15)
	H.STASPD = rand(5,15)
	H.STACON = rand(5,15)
	H.STAWIL = rand(5,15)
	H.STAPER = rand(5,15)
	H.STAINT = rand(5,15)
	H.STALUC = rand(5,15)
	if(prob(50))
		r_hand = /obj/item/rogueweapon/mace/woodclub
	else
		r_hand = /obj/item/rogueweapon/woodstaff

	if(prob(20))
		r_hand = /obj/item/rogueweapon/hammer/copper
	if(prob(20))
		r_hand = /obj/item/rogueweapon/pick/stone
	if(prob(5))	
		l_hand = /obj/item/rogueweapon/shield/wood
	shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
	H.eye_color = pick("27becc", "35cc27", "000000")
	H.hair_color = pick ("4f4f4f", "61310f", "faf6b9")
	H.facial_hair_color = H.hair_color
	if(H.gender == FEMALE)
		H.hairstyle = pick("Ponytail (Country)","Braid (Low)", "Braid (Short)", "Messy (Rogue)")
	else
		H.hairstyle = pick("Mohawk","Braid (Low)", "Braid (Short)", "Messy")
		H.facial_hairstyle = pick("Beard (Viking)", "Beard (Long)", "Beard (Manly)")
	H.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axes, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE) // Trash mobs, untrained.
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
