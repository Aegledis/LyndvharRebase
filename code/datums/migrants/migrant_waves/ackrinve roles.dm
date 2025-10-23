#define CTAG_ACKRINVE_NECROMANCER "ackrinve_necromancer"
#define CTAG_ACKRINVE_KNIGHT "ackrinve_knight"

/datum/migrant_role/ackrinve/necromancer
	name = "Ackrinval Necromancer"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	greet_text = "You are a Grenzelhoftian envoy, traveling with a bodyguard and a crossbowman to represent your homeland.\
	 What exactly you have been sent here to speak about- only you know."
	advclass_cat_rolls = list(CTAG_ACKRINVE_NECROMANCER = 20)

/datum/advclass/ackrinve_necromancer
	name = "Ackrinval Necromancer"
	tutorial = "You have been ostracized and hunted by society for your dark magics and perversion of life."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/ackrinve/necromancer
	cmode_music = 'sound/music/combat_heretic.ogg'
	category_tags = list(CTAG_ACKRINVE_NECROMANCER)
	traits_applied = list(TRAIT_ZOMBIE_IMMUNE, TRAIT_MAGEARMOR, TRAIT_GRAVEROBBER, TRAIT_ARCYNE_T4, TRAIT_ALCHEMY_EXPERT, TRAIT_MEDICINE_EXPERT, TRAIT_HERESIARCH, TRAIT_HERETIC_SEER, TRAIT_DARKVISION, TRAIT_CABAL)
	maximum_possible_slots = 1
	
	subclass_stats = list(
		STATKEY_INT = 4,
		STATKEY_PER = 2,
		STATKEY_WIL = 1,
		STATKEY_SPD = 1
	)
	subclass_spellpoints = 12
	subclass_skills = list(
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/craft/alchemy = SKILL_LEVEL_EXPERT,
		/datum/skill/magic/arcane = SKILL_LEVEL_MASTER,
	)

/datum/outfit/job/roguetown/ackrinve/necromancer/pre_equip(mob/living/carbon/human/H)
	H.mind.current.faction += "[H.name]_faction"
	H.set_patron(/datum/patron/inhumen/zizo)
	head = /obj/item/clothing/head/roguetown/aventine
	mask = /obj/item/clothing/mask/rogue/facemask/burningeyes
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/aventine
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/reagent_containers/glass/bottle/rogue/manapot
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	beltl = /obj/item/rogueweapon/huntingknife/idagger/silver/elvish
	backl = /obj/item/storage/backpack/rogue/satchel/short
	backr = /obj/item/rogueweapon/woodstaff/diamond
	backpack_contents = list(
		/obj/item/book/spellbook = 1,
		/obj/item/necro_relics/necro_crystal = 2, 
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/reagent_containers/glass/bottle/rogue/strongpoison = 1,
		/obj/item/reagent_containers/glass/bottle/alchemical/healthpot = 1,	//Small health vial
		)
	H.dna.species.soundpack_m = new /datum/voicepack/male/wizard()
	if(H.age == AGE_OLD)
		H.mind?.adjust_spellpoints(6)
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/eyebite)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/bonechill)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/minion_order)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/gravemark)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/raise_undead_formation/necromancer)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/raise_undead_guard)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/tame_undead)


/datum/migrant_role/ackrinve/knight
	name = "Death Knight"
	greet_text = "You serve the Warlock-Necromancer which leads your party, do their complete bidding and bring RUIN to LYNDVHAR"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	advclass_cat_rolls = list(CTAG_ACKRINVE_KNIGHT = 20)

/datum/migrant_role/ackrinve/knight/after_spawn(mob/living/carbon/human/L, mob/M, latejoin = TRUE)
	for (var/obj/item/bodypart/B in L.bodyparts)
		B.skeletonize(FALSE)
	L.cmode_music = 'sound/music/combat_heretic.ogg'
	L.faction = list("undead")
	if (L.charflaw)
		QDEL_NULL(L.charflaw)
	L.mob_biotypes |= MOB_UNDEAD
	L.hairstyle = "Bald"
	L.facial_hairstyle = "Shaved"
	L.update_body()
	L.update_hair()
	L.update_body_parts(redraw = TRUE)


/datum/advclass/ackrinve_knight
	name = "Death Knight"
	outfit = /datum/outfit/job/roguetown/ackrinve/knight
	traits_applied = list(TRAIT_STEELHEARTED, TRAIT_CABAL, TRAIT_ZOMBIE_IMMUNE)
	category_tags = list(CTAG_ACKRINVE_KNIGHT)
	subclass_stats = list(
		STATKEY_STR = 4,
		STATKEY_WIL = 3,
		STATKEY_CON = 4,
		STATKEY_PER = -2,
		STATKEY_SPD = 1,
	)
	subclass_skills = list(
		/datum/skill/misc/swimming= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing= SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling= SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords= SKILL_LEVEL_EXPERT,
		/datum/skill/combat/maces= SKILL_LEVEL_EXPERT,
		/datum/skill/combat/shields= SKILL_LEVEL_EXPERT,
		/datum/skill/combat/polearms= SKILL_LEVEL_EXPERT,
		/datum/skill/combat/whipsflails= SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/shields= SKILL_LEVEL_EXPERT,
	)

/datum/outfit/job/roguetown/ackrinve/knight/pre_equip(mob/living/carbon/human/H)
	..()
	armor = /obj/item/clothing/suit/roguetown/armor/plate/modern/blacksteel_full_plate
	pants = /obj/item/clothing/under/roguetown/platelegs/blacksteel/modern
	shoes = /obj/item/clothing/shoes/roguetown/boots/blacksteel/modern/plateboots
	gloves = /obj/item/clothing/gloves/roguetown/blacksteel/modern/plategloves
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	head = /obj/item/clothing/head/roguetown/helmet/blacksteel/modern/armet
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	r_hand = /obj/item/rogueweapon/greatsword/grenz/flamberge/blacksteel
	mask = /obj/item/clothing/mask/rogue/facemask/steel
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	if(H.mind)
		to_chat(H, span_warning("Recall which Archdaemon bestowed their dark gifts upon you"))
		var/daemons = list("Zizo, The Necromancer(Longsword)", "Gragger, The Dark Star(Greataxe)", "Archdaemons-Undivided(Greatsword)", "None(Mace)")
		var/patron_choice = input(H, "Choose your weapon.", "TAKE UP ARMS") as anything in daemons
		switch(patron_choice)
			if("Zizo, The Necromancer(Longsword)")
				H.set_patron(/datum/patron/inhumen/zizo)
				armor = /obj/item/clothing/suit/roguetown/armor/plate/full/zizo
				pants = /obj/item/clothing/under/roguetown/platelegs/zizo
				shoes = /obj/item/clothing/shoes/roguetown/boots/armor/zizo
				wrists = /obj/item/clothing/wrists/roguetown/bracers
				gloves = /obj/item/clothing/gloves/roguetown/plate/zizo
				head = /obj/item/clothing/head/roguetown/helmet/heavy/zizo
				neck = /obj/item/clothing/neck/roguetown/gorget/steel
				r_hand = /obj/item/rogueweapon/sword/long/zizo
				mask = /obj/item/clothing/mask/rogue/facemask/steel
			if("Gragger, The Dark Star(Greataxe)")
				H.set_patron(/datum/patron/inhumen/graggar)
				armor = /obj/item/clothing/suit/roguetown/armor/plate/fluted/graggar
				pants = /obj/item/clothing/under/roguetown/platelegs/graggar
				shoes = /obj/item/clothing/shoes/roguetown/boots/armor/graggar
				gloves = /obj/item/clothing/gloves/roguetown/plate/graggar
				wrists = /obj/item/clothing/wrists/roguetown/bracers
				head = /obj/item/clothing/head/roguetown/helmet/heavy/graggar
				neck = /obj/item/clothing/neck/roguetown/gorget/steel
				r_hand = /obj/item/rogueweapon/greataxe/steel/doublehead/graggar
				mask = /obj/item/clothing/mask/rogue/facemask/steel
				wrists = /obj/item/clothing/wrists/roguetown/bracers
				cloak = /obj/item/clothing/cloak/graggar
			if("Archdaemons-Undivided(Greatsword)")
				armor = /obj/item/clothing/suit/roguetown/armor/plate/modern/blacksteel_full_plate
				pants = /obj/item/clothing/under/roguetown/platelegs/blacksteel/modern
				shoes = /obj/item/clothing/shoes/roguetown/boots/blacksteel/modern/plateboots
				gloves = /obj/item/clothing/gloves/roguetown/blacksteel/modern/plategloves
				wrists = /obj/item/clothing/wrists/roguetown/bracers
				head = /obj/item/clothing/head/roguetown/helmet/blacksteel/modern/armet
				neck = /obj/item/clothing/neck/roguetown/gorget/steel
				r_hand = /obj/item/rogueweapon/greatsword/grenz/flamberge/blacksteel
				mask = /obj/item/clothing/mask/rogue/facemask/steel
				wrists = /obj/item/clothing/wrists/roguetown/bracers
			if("None(Mace)")
				beltl = /obj/item/rogueweapon/scabbard/sword
				belt = /obj/item/storage/belt/rogue/leather
				pants = /obj/item/clothing/under/roguetown/platelegs/blk/death
				shoes = /obj/item/clothing/shoes/roguetown/boots/armor/blkknight
				shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
				armor = /obj/item/clothing/suit/roguetown/armor/plate/blkknight/death
				gloves = /obj/item/clothing/gloves/roguetown/plate/blk/death
				backr = /obj/item/storage/backpack/rogue/satchel/black
				cloak = /obj/item/clothing/cloak/tabard/blkknight
				r_hand = /obj/item/rogueweapon/mace/goden/steel/paalloy

	
#undef CTAG_ACKRINVE_NECROMANCER
#undef CTAG_ACKRINVE_KNIGHT
