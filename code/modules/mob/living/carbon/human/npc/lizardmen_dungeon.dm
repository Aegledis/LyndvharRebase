//These guys are intended to be no joke, if they are getting stomped something is wrong
//Intended difficulty [HARD]
/mob/living/carbon/human/species/lizardfolk/psy_vault_guard
	race = /datum/species/lizardfolk
	aggressive=1
	rude = TRUE
	mode = NPC_AI_IDLE
	faction = list("psy_vault_guard")
	ambushable = FALSE
	cmode = 1
	setparrytime = 20
	flee_in_pain = FALSE
	a_intent = INTENT_HELP
	d_intent = INTENT_PARRY
	possible_mmb_intents = list(INTENT_BITE, INTENT_JUMP, INTENT_KICK, INTENT_STEAL)
	possible_rmb_intents = list(
		/datum/rmb_intent/feint,\
		/datum/rmb_intent/aimed,\
		/datum/rmb_intent/strong,\
		/datum/rmb_intent/riposte,\
		/datum/rmb_intent/weak
	)
	var/is_silent = FALSE /// Determines whether or not we will scream our funny lines at people.
	npc_max_jump_stamina = 0

/mob/living/carbon/human/species/lizardfolk/psy_vault_guard/ambush
	aggressive=1
	wander = TRUE

/mob/living/carbon/human/species/lizardfolk/psy_vault_guard/retaliate(mob/living/L)
	var/newtarg = target
	.=..()
	if(target)
		aggressive=1
		wander = TRUE
		if(!is_silent && target != newtarg)
			say(pick(GLOB.highwayman_aggro))
			pointed(target)

/mob/living/carbon/human/species/lizardfolk/psy_vault_guard/should_target(mob/living/L)
	if(L.stat != CONSCIOUS)
		return FALSE
	. = ..()

/mob/living/carbon/human/species/lizardfolk/psy_vault_guard/Initialize()
	. = ..()
	set_species(/datum/species/lizardfolk)
	addtimer(CALLBACK(src, PROC_REF(after_creation)), 1 SECONDS)
	is_silent = TRUE
	update_transform()

/mob/living/carbon/human/species/lizardfolk/psy_vault_guard/after_creation()
	..()
	//This Stuff handles their parts
	var/obj/item/organ/tail/lizard/tail = src.getorganslot(ORGAN_SLOT_TAIL)
	var/obj/item/organ/snout/lizard/psy_vault_guard/snout = src.getorganslot(ORGAN_SLOT_SNOUT)
	var/obj/item/organ/ears/psy_vault_guard/ears = src.getorganslot(ORGAN_SLOT_EARS)
	var/obj/item/bodypart/head/head = get_bodypart(BODY_ZONE_HEAD)
	head.sellprice = 50 // Big sellprice for these guys
	dna.update_ui_block(DNA_HAIR_COLOR_BLOCK)
	dna.species.handle_body(src)
	var/obj/item/organ/eyes/organ_eyes = getorgan(/obj/item/organ/eyes)
	var/obj/item/organ/ears/organ_ears = getorgan(/obj/item/organ/ears)
	if(tail)
		tail.Remove(src,1)
		QDEL_NULL(tail)
	tail = new /obj/item/organ/tail/lizard
	tail.Insert(src)
	if(snout)
		snout.Remove(src,1)
		QDEL_NULL(snout)
	snout = new /obj/item/organ/snout/lizard/psy_vault_guard
	snout.Insert(src)
	if(ears)
		ears.Remove(src,1)
		QDEL_NULL(ears)
	ears = new /obj/item/organ/ears/psy_vault_guard
	ears.Insert(src)
	if(organ_eyes)
		organ_eyes.eye_color = "#2d7c4b"
		organ_eyes.accessory_colors = "#2d7c4b#2d7c4b"
	
	if(organ_ears)
		organ_ears.accessory_colors = "#9e8850"
	
	skin_tone = "9e8850"
	update_hair()
	update_body()
	//This Stuff handles their parts
	job = "Eskallian Watcher"
	real_name = "Eskallian Watcher"
	ADD_TRAIT(src, TRAIT_NOMOOD, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NOHUNGER, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_LEECHIMMUNE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_BREADY, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_STRONGBITE, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(src, TRAIT_NIGHT_VISION, TRAIT_GENERIC)
	equipOutfit(new /datum/outfit/job/roguetown/human/species/lizardfolk/psy_vault_guard)
	patron = /datum/patron/divine/undivided
	update_overlays()

/mob/living/carbon/human/species/lizardfolk/psy_vault_guard/npc_idle()
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

/mob/living/carbon/human/species/lizardfolk/psy_vault_guard/handle_combat()
	if(mode == NPC_AI_HUNT)
		if(prob(5)) // do not make this big or else they NEVER SHUT UP
			emote("fsalute")
	. = ..()

/datum/outfit/job/roguetown/human/species/lizardfolk/psy_vault_guard/pre_equip(mob/living/carbon/human/H)
	..()
	//Stat Stuff
	H.STASTR = 13
	H.STASPD = 12
	H.STACON = 11
	H.STAWIL = 14
	H.STAPER = 10
	H.STAINT = 10
	H.STALUC = 10
	//skill Stuff
	H.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE) //NPCs do not get these skills unless a mind takes them over, hopefully in the future someone can fix
	H.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 5, TRUE)
	//Clothing Stuff
	//Head Gear
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/monk/holy
	add_random_psy_vault_guard_mask(H)
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	//wrist Gear
	add_random_psy_vault_guard_psycross(H)
	//Lower Gear
	belt = /obj/item/storage/belt/rogue/leather/rope
	add_random_psy_vault_guard_beltr_stuff(H)
	add_random_psy_vault_guard_beltl_stuff(H)
	pants = /obj/item/clothing/under/roguetown/chainlegs/kilt
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	//Weapons
	add_random_psy_vault_guard_weapon(H)

/datum/outfit/job/roguetown/human/species/lizardfolk/psy_vault_guard/proc/add_random_psy_vault_guard_weapon(mob/living/carbon/human/H)
	var/add_random_psy_vault_guard_weapon = rand(1, 7)
	switch(add_random_psy_vault_guard_weapon)
		if(1)
			r_hand = /obj/item/rogueweapon/sword/short
			l_hand = /obj/item/rogueweapon/shield/tower/metal
		if(2)
			r_hand = /obj/item/rogueweapon/sword/long/rhomphaia
		if(3)
			r_hand = /obj/item/rogueweapon/spear/boar
		if(4)
			r_hand = /obj/item/rogueweapon/mace/warhammer/steel
			l_hand = /obj/item/rogueweapon/shield/tower
		if(5)
			r_hand = /obj/item/rogueweapon/greatsword
		if(6)
			r_hand = /obj/item/rogueweapon/greataxe/steel
		if(7)
			r_hand = /obj/item/rogueweapon/mace/goden/steel
		// 2 hand weapon to dilute the pool to keep ranged viable

/datum/outfit/job/roguetown/human/species/lizardfolk/psy_vault_guard/proc/add_random_psy_vault_guard_mask(mob/living/carbon/human/H)
	var/add_random_psy_vault_guard_mask = rand(1,5)
	switch(add_random_psy_vault_guard_mask)
		if(1)
			mask = /obj/item/clothing/mask/rogue/facemask/goldmask
		if(2)
			mask = /obj/item/clothing/head/roguetown/menacing
		if(3)
			head = /obj/item/clothing/head/roguetown/helmet/heavy/crusader/t
		if(4)
			head = /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/black
		if(5)
			head = /obj/item/clothing/head/roguetown/roguehood/shalal/hijab/black
			mask = /obj/item/clothing/mask/rogue/facemask 

/datum/outfit/job/roguetown/human/species/lizardfolk/psy_vault_guard/proc/add_random_psy_vault_guard_psycross(mob/living/carbon/human/H)
	var/add_random_psy_vault_guard_psycross = rand(1,5)
	switch(add_random_psy_vault_guard_psycross)
		if(1)
			wrists = /obj/item/clothing/neck/roguetown/psicross/astrata
		if(2)
			wrists = /obj/item/clothing/neck/roguetown/psicross/malum
		if(3)
			wrists = /obj/item/clothing/neck/roguetown/psicross/ravox
		if(4)
			wrists = /obj/item/clothing/neck/roguetown/psicross/undivided
		if(5)
			wrists = /obj/item/clothing/wrists/roguetown/bracers

/datum/outfit/job/roguetown/human/species/lizardfolk/psy_vault_guard/proc/add_random_psy_vault_guard_beltl_stuff(mob/living/carbon/human/H)
	var/add_random_psy_vault_guard_beltl_stuff = rand(1,11)
	switch(add_random_psy_vault_guard_beltl_stuff)
		if(1)
			beltl = /obj/item/storage/belt/rogue/pouch/food
		if(2)
			beltl = /obj/item/storage/belt/rogue/pouch/medicine
		if(3)
			beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
		if(4)
			beltl = /obj/item/storage/belt/rogue/pouch/coins/rich
		if(5)
			beltl = /obj/item/reagent_containers/glass/bottle/waterskin/purifier
		if(6)
			beltl = /obj/item/reagent_containers/glass/bottle/alchemical/healthpotnew
		if(7)
			beltl = /obj/item/rope/chain
		if(8)
			beltl = /obj/item/clothing/neck/roguetown/psicross/astrata
		if(9)
			beltl = /obj/item/clothing/neck/roguetown/psicross/malum
		if(10)
			beltl = /obj/item/clothing/neck/roguetown/psicross/ravox
		if(11)
			beltl = /obj/item/clothing/neck/roguetown/psicross/undivided

/datum/outfit/job/roguetown/human/species/lizardfolk/psy_vault_guard/proc/add_random_psy_vault_guard_beltr_stuff(mob/living/carbon/human/H)
	var/add_random_psy_vault_guard_beltr_stuff = rand(1,11)
	switch(add_random_psy_vault_guard_beltr_stuff)
		if(1)
			beltr = /obj/item/storage/belt/rogue/pouch/food
		if(2)
			beltr = /obj/item/storage/belt/rogue/pouch/medicine
		if(3)
			beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
		if(4)
			beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
		if(5)
			beltr = /obj/item/reagent_containers/glass/bottle/waterskin/purifier
		if(6)
			beltr = /obj/item/reagent_containers/glass/bottle/alchemical/healthpotnew
		if(7)
			beltr = /obj/item/rope/chain
		if(8)
			beltr = /obj/item/clothing/neck/roguetown/psicross/astrata
		if(9)
			beltr = /obj/item/clothing/neck/roguetown/psicross/malum
		if(10)
			beltr = /obj/item/clothing/neck/roguetown/psicross/ravox
		if(11)
			beltr = /obj/item/clothing/neck/roguetown/psicross/undivided
