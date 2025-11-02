//A spell to teach other characters new skills
/obj/effect/proc_holder/spell/invoked/teach
	name = "The Tutor's Calling"
	desc = "You can teach a skill or language to another person, provided they are not more skilled than you in it. \n\
	You cannot teach the same person twice. Teaching takes 30 seconds, and requires both you and your student to be focused on the lesson."
	overlay_state = "book3"
	releasedrain = 50
	chargedrain = 0
	chargetime = 0
	recharge_time = 30 SECONDS
	antimagic_allowed = TRUE

/obj/effect/proc_holder/spell/invoked/teach/cast(list/targets, mob/user = usr)
	. = ..()
	var/list/choices = list()
	var/mob/living/L = targets[1]
	var/list/datum/skill/skill_choices = list(
	//skills alphabetically... this will be sloppy based on the descriptive name but easier for devs
	/datum/skill/craft/alchemy,
	/datum/skill/magic/arcane,
	/datum/skill/craft/armorsmithing,

	/datum/skill/craft/blacksmithing,
	/datum/skill/labor/butchering,

	/datum/skill/craft/carpentry,
	/datum/skill/craft/ceramics,
	/datum/skill/misc/climbing,
	/datum/skill/craft/cooking,
	/datum/skill/craft/crafting,

	/datum/skill/craft/engineering,

	/datum/skill/labor/farming,
	/datum/skill/labor/fishing,

	/datum/skill/misc/lockpicking,
	/datum/skill/labor/lumberjacking,

    /datum/skill/craft/masonry,
    /datum/skill/labor/mining,
    /datum/skill/misc/music,
    /datum/skill/misc/medicine,



    /datum/skill/craft/sewing,
    /datum/skill/craft/smelting,
	/datum/skill/misc/sneaking,
	/datum/skill/misc/stealing,
	/datum/skill/misc/swimming,

	/datum/skill/craft/tanning,
	/datum/skill/misc/tracking,
	/datum/skill/craft/traps,

	/datum/skill/misc/reading,
    /datum/skill/misc/riding,

	/datum/skill/craft/weaponsmithing,

	//Languages
	/datum/language/elvish,
	/datum/language/dwarvish,
	/datum/language/celestial,
	/datum/language/hellspeak,
	/datum/language/orcish,
	/datum/language/grenzelhoftian,
	/datum/language/valorian,
	/datum/language/dunargi,
	/datum/language/rhaenvalian,
	/datum/language/saltlian,
	/datum/language/draconic,
	/datum/language/kargradi,
	/datum/language/zybanti,
	/datum/language/forvheipan	
    )
	for(var/i = 1, i <= skill_choices.len, i++)
		var/datum/skill/learn_item = skill_choices[i]
		if((L.get_skill_level(learn_item) < SKILL_LEVEL_NOVICE) && !(learn_item in list(/datum/language/elvish,
		/datum/language/dwarvish,
		/datum/language/celestial,
		/datum/language/hellspeak,
		/datum/language/orcish,
		/datum/language/grenzelhoftian,
		/datum/language/valorian,
		/datum/language/dunargi,
		/datum/language/rhaenvalian,
		/datum/language/saltlian,
		/datum/language/draconic,
		/datum/language/kargradi,
		/datum/language/zybanti,
		/datum/language/forvheipan)))
			continue //skip if they don't have enough skill
		if(L.get_skill_level(learn_item) > SKILL_LEVEL_EXPERT)
			continue //skip if they know too much
		if (L.has_language(learn_item))
			continue //skip if they know the language
		choices["[learn_item.name]"] = learn_item
	

	var/teachingtime = 30 SECONDS

	if(isliving(targets[1]))
		if(L == usr)
			to_chat(L, span_warning("In teaching myself, I become both the question and the answer."))
			return
		else
			if(L in range(1, usr))
				to_chat(usr, span_notice("My student needs some time to select a lesson."))
				var/chosen_skill = input(L, "Most of the lessons require you to be no less than novice in the selected skill", "Choose a skill") as null|anything in choices
				var/datum/skill/item = choices[chosen_skill]
				if(!item)
					return  // student canceled
				if(alert(L, "Are you sure you want to study [item.name]?", "Learning", "Learn", "Cancel") == "Cancel")
					return
				if(HAS_TRAIT(L, TRAIT_STUDENT))
					to_chat(L, span_warning("There's no way I could handle all that knowledge!"))
					to_chat(usr, span_warning("My student cannot handle that much knowledge at once!"))
					return // cannot teach the same student twice
				if(!(item in list(/datum/language/elvish,
		/datum/language/dwarvish,
		/datum/language/celestial,
		/datum/language/hellspeak,
		/datum/language/orcish,
		/datum/language/grenzelhoftian,
		/datum/language/valorian,
		/datum/language/dunargi,
		/datum/language/rhaenvalian,
		/datum/language/saltlian,
		/datum/language/draconic,
		/datum/language/kargradi,
		/datum/language/zybanti,
		/datum/language/forvheipan)) && L.get_skill_level(item) < SKILL_LEVEL_NOVICE)
					to_chat(L, span_warning("I cannot understand the lesson on [item.name], I need to get more skilled first!"))
					to_chat(usr, span_warning("I try teaching [L] [item.name] but my student couldnt grasp the lesson!"))
					return // some basic skill will not require you novice level
				if(L.has_language(item))
					to_chat(L, span_warning("I already know! [item.name]!"))
					to_chat(usr, span_warning("They already speak [item.name]!"))
					return // we won't teach someone a language they already know
				if(L.get_skill_level(item) > SKILL_LEVEL_EXPERT)
					to_chat(L, span_warning("There's nothing I can learn from that person about [item.name]!"))
					to_chat(usr, span_warning("They know [item.name] better than I do, am I really supposed to be the teacher there?"))
					return // a student with master or legendary skill have nothing to learn from the scholar
				else
					to_chat(L, span_notice("[usr] starts teaching me about [item.name]!"))
					to_chat(usr, span_notice("[L] gets to listen carefully to my lesson about [item.name]."))
					if((item in list(/datum/language/elvish,
		/datum/language/dwarvish,
		/datum/language/celestial,
		/datum/language/hellspeak,
		/datum/language/orcish,
		/datum/language/grenzelhoftian,
		/datum/language/valorian,
		/datum/language/dunargi,
		/datum/language/rhaenvalian,
		/datum/language/saltlian,
		/datum/language/draconic,
		/datum/language/kargradi,
		/datum/language/zybanti,
		/datum/language/forvheipan)))
						if(do_after(usr, teachingtime, target = L))
							user.visible_message("<font color='yellow'>[user] teaches [L] a lesson.</font>")
							to_chat(usr, span_notice("My student Learns the language [item.name]!"))
							L.grant_language(item)
							ADD_TRAIT(L, TRAIT_STUDENT, "[type]")
						else
							to_chat(usr, span_warning("[L] got distracted and wandered off!"))
							to_chat(L, span_warning("I must be more focused on my studies!"))
						//teach a language! If this works out, we can make a TRAIT_STUDENT_LANGUAGE later, so a language and a skill can be taught in the same week. small steps for now


					else
						if(L.get_skill_level(item) < SKILL_LEVEL_APPRENTICE) // +2 skill levels if novice or no skill
							if(do_after(usr, teachingtime, target = L))
								user.visible_message("<font color='yellow'>[user] teaches [L] a lesson.</font>")
								to_chat(usr, span_notice("My student grows a lot more proficient in [item.name]!"))
								L.adjust_skillrank(item, 2, FALSE)
								ADD_TRAIT(L, TRAIT_STUDENT, "[type]")
							else
								to_chat(usr, span_warning("[L] got distracted and wandered off!"))
								to_chat(L, span_warning("I must be more focused on my studies!"))
								return
						else  // +1 skill level if apprentice or better
							if(do_after(usr, teachingtime, target = L))
								user.visible_message("<font color='yellow'>[user] teaches [L] a lesson.</font>")
								to_chat(usr, span_notice("My student grows more proficient in [item.name]!"))
								L.adjust_skillrank(item, 1, FALSE)
								ADD_TRAIT(L, TRAIT_STUDENT, "[type]")
							else
								to_chat(usr, span_warning("[L] got distracted and wandered off!"))
								to_chat(L, span_warning("I must be more focused on my studies!"))
								return
			else
				to_chat(usr, span_warning("My student can barely hear me from there."))
				return
	else
		revert_cast()
		return FALSE

/obj/effect/proc_holder/spell/invoked/learn
	name = "Learn From Another"
	overlay_state = "knowledge"
	releasedrain = 50
	chargedrain = 0
	chargetime = 0
	recharge_time = 30 SECONDS
	antimagic_allowed = TRUE

/obj/effect/proc_holder/spell/invoked/learn/cast(list/targets, mob/user = usr)
	. = ..()
	if(isliving(targets[1]))
		var/mob/living/teacher = targets[1]
		if(teacher == user)
			to_chat(user, span_warning("In teaching myself, I become both the question and the answer."))
			revert_cast()
			return
		if(HAS_TRAIT(user, TRAIT_STUDENT))
			to_chat(user, span_warning("I've learned all I can for the time being."))
			revert_cast()
			return
		if(teacher.cmode)//to hopefully stop you from trolling someone with a dialogue box during combat
			to_chat(user, span_warning("[teacher] is in combat!"))
			to_chat(teacher, span_warning("[user] wants to learn from you, but you're in combat."))//notify them since they might not ACTUALLY be in combat, just have cmode on
			revert_cast()
			return
		if(teacher in range(2, user))
			to_chat(usr, span_notice("I ask [teacher] to teach me one of [teacher.p_their()] skills."))
			if(alert(teacher, "Teach [user] one of your skills?", "Teaching", "Yes", "No") == "Yes")
				to_chat(user, span_nicegreen("[teacher] has decided to teach you. Stay close and let them decide what they will reveal..."))

				var/list/known_skills = list()
				var/list/skill_names = list()//we use this in the user input window for the names of the skills
				if(teacher.mind)
					var/teacher_skill = 0
					var/user_skill = 0
					for(var/skill_type in SSskills.all_skills)
						var/datum/skill/skill = GetSkillRef(skill_type)
						if(skill in teacher.skills?.known_skills)
							teacher_skill = teacher.get_skill_level(skill_type)
							user_skill = user.get_skill_level(skill_type)
							if(teacher_skill > user_skill)//only add it to the list of teachable stuff if the spellcaster can gain skill in it
								LAZYADD(skill_names, skill)
								LAZYADD(known_skills,skill_type)

					if(!length(known_skills))
						to_chat(teacher, span_warning("[user] already knows everything I can teach."))
						to_chat(user, span_warning("[teacher] can't teach me anything."))
						revert_cast()
						return
					
					var/skill_choice = input(teacher, "Choose a skill to teach","Skills") as null|anything in skill_names
					if(skill_choice)
						for(var/real_skill in known_skills)//real_skill is the actual datum for the skill rather than the "Skill" string
							if(skill_choice == GetSkillRef(real_skill))//if skill_choice (the name string) is equal to real_skill's name ref, essentially
								if(!range(2, user))
									to_chat(teacher, span_warning("I moved too far away from [user]."))
									to_chat(user, span_warning("[teacher] moved too far away from me."))
									revert_cast()
									return
								teacher.visible_message(("[teacher] begins teaching [user] about [skill_choice]."), ("I begin teaching [user] about [skill_choice]."))
								if(!do_after(teacher, 100, FALSE, user))
									to_chat(teacher, span_warning("I moved too far away from [user]."))
									to_chat(user, span_warning("[teacher] moved too far away from me."))
									revert_cast()
									return
								teacher_skill = teacher.get_skill_level(real_skill)
								user_skill = user.get_skill_level(real_skill)
								if(teacher_skill - user_skill > 2) //if the teacher has over two levels over the user, add 2 levels of skill to the user
									user.adjust_skillrank(real_skill, 2, FALSE)
									user.visible_message(span_notice("[teacher] teaches [user] about [skill_choice]."), span_notice("I grow much more proficient in [skill_choice]!"))
								else //if the teacher has 2 or 1 levels over the user, only add 1 level
									user.adjust_skillrank(real_skill, 1, FALSE)
									user.visible_message(span_notice("[teacher] teaches [user] about [skill_choice]."), span_notice("I grow more proficient in [skill_choice]!"))
								ADD_TRAIT(user, TRAIT_STUDENT, "[type]")

			else
				to_chat(user, span_warning("[teacher] has decided to keep [teacher.p_their()] knowledge private."))
				revert_cast()
				return
	else
		revert_cast()
		return FALSE
