/datum/job/roguetown/captain
	title = "Retinue Captain"
	flag = GUARD_CAPTAIN
	department_flag = NOBLEMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	allowed_races = RACES_TOLERATED_UP
	allowed_patrons = ALL_NICE_PATRONS
	allowed_sexes = list(MALE, FEMALE)
	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	tutorial = "Your lineage is noble, and generations of strong, loyal men and women have come before you. You served your time gracefully as one of the most prominent knights of the Viscount, and one of the most feared fighters in Lyndvhar.. and now you've grown into a role which many men can only dream of becoming. Lead your men to victory--and keep them in line--and you will see this city prosper under a thousand suns and be returned to its former glory."
	display_order = JDO_GUARD_CAPTAIN
	advclass_cat_rolls = list(CTAG_CAPTAIN = 20)
	spells = list(/obj/effect/proc_holder/spell/self/convertrole/guard)
	outfit = /datum/outfit/job/roguetown/captain

	give_bank_account = 26
	noble_income = 16
	min_pq = 5
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_captain.ogg'
	job_traits = list(TRAIT_HEAVYARMOR, TRAIT_STEELHEARTED, TRAIT_NOBLE, TRAIT_GUARDSMAN)
	job_subclasses = list(
		/datum/advclass/captain/infantry,
		/datum/advclass/captain/cavalry
		)

/datum/outfit/job/roguetown/captain
	neck = /obj/item/clothing/neck/roguetown/chaincoif/full
	head = /obj/item/clothing/head/roguetown/helmet/heavy/captain
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/captain
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	pants = /obj/item/clothing/under/roguetown/chainlegs/captain
	gloves = /obj/item/clothing/gloves/roguetown/plate
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	cloak = /obj/item/clothing/cloak/captain
	l_hand = /obj/item/rogueweapon/shield/tower/metal
	job_bitflag = BITFLAG_ROYALTY | BITFLAG_GARRISON

/datum/job/roguetown/captain/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	. = ..()
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		if(istype(H.cloak, /obj/item/clothing/cloak/captain))
			var/obj/item/clothing/S = H.cloak
			var/index = findtext(H.real_name, " ")
			if(index)
				index = copytext(H.real_name, 1,index)
			if(!index)
				index = H.real_name
			S.name = "captain's cloak ([index])"
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Ser"
		if(should_wear_femme_clothes(H))
			honorary = "Dame"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"

		for(var/X in peopleknowme)
			for(var/datum/mind/MF in get_minds(X))
				if(MF.known_people)
					MF.known_people -= prev_real_name
					H.mind.person_knows_me(MF)

		H.advsetup = 1
		H.invisibility = INVISIBILITY_MAXIMUM
		H.become_blind("advsetup")

/datum/advclass/captain/infantry
	name = "Infantry Captain"
	tutorial = "You've fought shoulder to shoulder with the soldiery of Lyndhardtia while embedded directly within massed infantry formations in expedition. As a peerless armed combatant and tactician both, you are a formidable presence on any battlefield."
	outfit = /datum/outfit/job/roguetown/captain/infantry
	category_tags = list(CTAG_CAPTAIN)

	subclass_stats = list(
		STATKEY_INT = 2,
		STATKEY_PER = 1,
		STATKEY_LCK = 1,
		STATKEY_CON = 2,
		STATKEY_WIL = 2,
		STATKEY_STR = 2,
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/polearms = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/maces = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields = SKILL_LEVEL_MASTER,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/crossbows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_JOURNEYMAN,
	)

/datum/outfit/job/roguetown/captain/infantry/pre_equip(mob/living/carbon/human/H)
	..()
	backr = /obj/item/storage/backpack/rogue/satchel/short
	beltl = /obj/item/flashlight/flare/torch/lantern/prelit
	backpack_contents = list(
		/obj/item/storage/keyring/sheriff = 1,
		/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/healthpot = 1,
		)
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/movemovemove)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/takeaim)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/onfeet)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/hold)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/focustarget)
	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	H.verbs |= list(
		/mob/living/carbon/human/proc/request_outlaw, 
		/mob/proc/haltyell, 
		/mob/living/carbon/human/mind/proc/setorders
	)
	H.adjust_blindness(-3)
	var/weapons = list(
		"Zweihander",
		"Great Mace",
		"Battle Axe",
		"Greataxe",
		"Estoc",
		"Longsword",
		"Flail",
		"Sabre",
		"Lance",
		)
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Zweihander")
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, 5, TRUE)
			r_hand = /obj/item/rogueweapon/greatsword
			backl = /obj/item/rogueweapon/scabbard/gwstrap
		if("Greataxe")
			H.adjust_skillrank_up_to(/datum/skill/combat/axes, 5, TRUE)
			r_hand = /obj/item/rogueweapon/greataxe/steel/doublehead
			backl = /obj/item/rogueweapon/scabbard/gwstrap
		if("Estoc")
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, 5, TRUE)
			r_hand = /obj/item/rogueweapon/estoc
			backl = /obj/item/rogueweapon/scabbard/gwstrap
		if("Battle Axe")
			H.adjust_skillrank_up_to(/datum/skill/combat/axes, 5, TRUE)
			r_hand = /obj/item/rogueweapon/stoneaxe/battle
		if("Great Mace")
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, 5, TRUE)
			r_hand = /obj/item/rogueweapon/mace/goden/steel
		if("Longsword")
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, 5, TRUE)
			r_hand = /obj/item/rogueweapon/sword/long/dec
			beltr = /obj/item/rogueweapon/scabbard/sword
		if("Flail")
			H.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 5, TRUE)
			beltr = /obj/item/rogueweapon/flail/sflail
		if("Sabre")
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, 5, TRUE)
			beltr = /obj/item/rogueweapon/scabbard/sword
			r_hand = /obj/item/rogueweapon/sword/sabre/dec

/datum/advclass/captain/cavalry
	name = "Cavalry Captain"
	tutorial = "As the first among finest you ride at the speartip of cavalier forces, barreling saiga and blades through the soft flanks of enemy formations. Many a man can tell the tale of what your prowess on saigaback has contributed to this city's protection."
	outfit = /datum/outfit/job/roguetown/captain/cavalry
	horse = /mob/living/simple_animal/hostile/retaliate/rogue/saiga/saigabuck/tame/saddled
	category_tags = list(CTAG_CAPTAIN)

	subclass_stats = list(
		STATKEY_INT = 2,
		STATKEY_PER = 1,
		STATKEY_LCK = 1,
		STATKEY_CON = 2,
		STATKEY_WIL = 2,
		STATKEY_STR = 2,
	)
	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/polearms = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/maces = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/crossbows = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/whipsflails = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/tracking = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/riding = SKILL_LEVEL_MASTER,
	)

/datum/outfit/job/roguetown/captain/cavalry/pre_equip(mob/living/carbon/human/H)
	..()
	backr = /obj/item/storage/backpack/rogue/satchel/short
	backpack_contents = list(
		/obj/item/storage/keyring/sheriff = 1,
		/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/healthpot = 1,
		/obj/item/flashlight/flare/torch/lantern/prelit = 1
		)

	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/movemovemove)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/takeaim)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/onfeet)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/hold)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/order/focustarget)

	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	H.verbs |= list(/mob/living/carbon/human/proc/request_outlaw, /mob/proc/haltyell, /mob/living/carbon/human/mind/proc/setorders)
	H.adjust_blindness(-3)

	var/weapons = list(
		"Longsword & Recurve Bow",
		"Mace & Crossbow",
		"Spear",
		"Sabre",
		"Lance"
		)
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Longsword & Recurve Bow")
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, 5, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/bows, 5, TRUE)
			r_hand = /obj/item/rogueweapon/sword/long/dec
			beltl = /obj/item/rogueweapon/scabbard/sword
			beltr = /obj/item/quiver/arrows
			backl = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve
		if("Mace & Crossbow")
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, 5, TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/crossbows, 5, TRUE)
			r_hand = /obj/item/rogueweapon/mace/steel/morningstar
			backl = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
			beltr = /obj/item/quiver/bolts
		if("Spear")
			H.adjust_skillrank_up_to(/datum/skill/combat/polearms, 5, TRUE)
			r_hand = /obj/item/rogueweapon/spear
		if("Sabre")
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, 5, TRUE)
			r_hand = /obj/item/rogueweapon/sword/sabre/dec
			beltl = /obj/item/rogueweapon/scabbard/sword
		if("Lance")
			H.adjust_skillrank_up_to(/datum/skill/combat/polearms, 5, TRUE)
			r_hand = /obj/item/rogueweapon/spear/lance
			backl = /obj/item/rogueweapon/scabbard/gwstrap

/obj/effect/proc_holder/spell/self/convertrole
	name = "Recruit Beggar"
	desc = "Recruit someone to your cause."
	overlay_state = "recruit_bog"
	antimagic_allowed = TRUE
	recharge_time = 100
	/// Role given if recruitment is accepted
	var/new_role = "Beggar"
	/// Faction shown to the user in the recruitment prompt
	var/recruitment_faction = "Beggars"
	/// Message the recruiter gives
	var/recruitment_message = "Serve the beggars, %RECRUIT!"
	/// Range to search for potential recruits
	var/recruitment_range = 3
	/// Say message when the recruit accepts
	var/accept_message = "I will serve!"
	/// Say message when the recruit refuses
	var/refuse_message = "I refuse."

/obj/effect/proc_holder/spell/self/convertrole/cast(list/targets,mob/user = usr)
	. = ..()
	var/list/recruitment = list()
	for(var/mob/living/carbon/human/recruit in (get_hearers_in_view(recruitment_range, user) - user))
		//not allowed
		if(!can_convert(recruit))
			continue
		recruitment[recruit.name] = recruit
	if(!length(recruitment))
		to_chat(user, span_warning("There are no potential recruits in range."))
		return
	var/inputty = input(user, "Select a potential recruit!", "[name]") as anything in recruitment
	if(inputty)
		var/mob/living/carbon/human/recruit = recruitment[inputty]
		if(!QDELETED(recruit) && (recruit in get_hearers_in_view(recruitment_range, user)))
			INVOKE_ASYNC(src, PROC_REF(convert), recruit, user)
		else
			to_chat(user, span_warning("Recruitment failed!"))
	else
		to_chat(user, span_warning("Recruitment cancelled."))

/obj/effect/proc_holder/spell/self/convertrole/proc/can_convert(mob/living/carbon/human/recruit)
	//wtf
	if(QDELETED(recruit))
		return FALSE
	//need a mind
	if(!recruit.mind)
		return FALSE
	//only migrants and peasants
	if(!(recruit.job in GLOB.peasant_positions) && \
		!(recruit.job in GLOB.yeoman_positions) && \
		!(recruit.job in GLOB.allmig_positions) && \
		!(recruit.job in GLOB.mercenary_positions))
		return FALSE
	//need to see their damn face
	if(!recruit.get_face_name(null))
		return FALSE
	return TRUE

/obj/effect/proc_holder/spell/self/convertrole/proc/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	if(QDELETED(recruit) || QDELETED(recruiter))
		return FALSE
	recruiter.say(replacetext(recruitment_message, "%RECRUIT", "[recruit]"), forced = "[name]")
	var/prompt = alert(recruit, "Do you wish to become a [new_role]?", "[recruitment_faction] Recruitment", "Yes", "No")
	if(QDELETED(recruit) || QDELETED(recruiter) || !(recruiter in get_hearers_in_view(recruitment_range, recruit)))
		return FALSE
	if(prompt != "Yes")
		if(refuse_message)
			recruit.say(refuse_message, forced = "[name]")
		return FALSE
	if(accept_message)
		recruit.say(accept_message, forced = "[name]")
	if(new_role)
		recruit.job = new_role
		SEND_SIGNAL(SSdcs, COMSIG_GLOB_ROLE_CONVERTED, recruiter, recruit, new_role)
	return TRUE

/obj/effect/proc_holder/spell/self/convertrole/guard
	name = "Recruit Guardsmen"
	new_role = "Watchman"
	overlay_state = "recruit_guard"
	recruitment_faction = "Watchman"
	recruitment_message = "Serve the city watch, %RECRUIT!"
	accept_message = "FOR THE CITY!"
	refuse_message = "I refuse."

/obj/effect/proc_holder/spell/self/convertrole/guard/convert(mob/living/carbon/human/recruit, mob/living/carbon/human/recruiter)
	. = ..()
	if(!.)
		return
	recruit.verbs |= /mob/proc/haltyell
