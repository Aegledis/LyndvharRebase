/datum/round_event_control/antagonist/solo/rebel
	name = "Rebels"
	tags = list(
		TAG_COMBAT,
		TAG_VILLIAN,
	)
	roundstart = TRUE
	antag_flag = ROLE_PREBEL
	shared_occurence_type = SHARED_HIGH_THREAT

	base_antags = 1
	maximum_antags = 3

	denominator = 50 // adds 1 possible rebel for every 50 players

	max_occurrences = 1

	earliest_start = 0 SECONDS

	typepath = /datum/round_event/antagonist/solo/rebel
	antag_datum = /datum/antagonist/prebel/head

	weight = 1

	restricted_roles = list(
		"Viscount",
		"Viscountess",
		"Consort",
		"Dungeoneer",
		"Watch Captain",
		"Men-at-arms",
		"Marshal",
		"Merchant",
		"Priest",
		"Acolyte",
		"Martyr",
		"Templar",
		"Councillor",
		"Bandit",
		"Heir",
		"Heiress",
		"Hand",
		"Steward",
		"Practitioner",
		"Town Elder",
		"Retinue Captain",
		"Archivist",
		"Cataphract",
		"Archmagus",
		"Inquisitor",
		"Orthodoxist",
		"Absolver",
		"Warden",
		"Squire",
		"Veteran",
		"Apothecary"
	)

/datum/round_event/antagonist/solo/rebel
