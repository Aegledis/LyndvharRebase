/datum/language/draconic
	name = "Draconic"
	desc = "Consisting of many different hisses and grunting sounds, this is one of the many native languages that is almost nigh impossible for anyone outside of the draconic group of races to learn. Despite the name it is highly contested by Zardmen due to its heavy connotation of being the language of only the Draconae, as an attempt to slowly culturally erase them now that they are no longer under their thumb. It is considered to be rather frowned upon to use the language in organized gatherings like sermons or courtly matters, but most care little about it due to its rarity."
	speech_verb = "hisses"
	ask_verb = "hisses"
	exclaim_verb = "roars"
	key = "s"
	flags = LANGUAGE_HIDE_ICON_IF_UNDERSTOOD | LANGUAGE_HIDE_ICON_IF_NOT_UNDERSTOOD
	space_chance = 40
	default_priority = 90
	icon_state = "lizard"
	spans = list(SPAN_DRACONIC)
	syllables = list(
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"ka", "ak", "ke", "ek", "ki", "ik", "ko", "ok", "ku", "uk", "ks", "sk",
		"sa", "as", "se", "es", "si", "is", "so", "os", "su", "us", "ss", "ss",
		"ra", "ar", "re", "er", "ri", "ir", "ro", "or", "ru", "ur", "rs", "sr",
		"a",  "a",  "e",  "e",  "i",  "i",  "o",  "o",  "u",  "u",  "s",  "s")
