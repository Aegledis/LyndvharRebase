// Regional or otherwise exclusive armor. NOT for Merc equipment (unless it is deemed so)
// Pricing Principles is based on vibes, but you don't want reskins worth /less/ than the originals.
// The Rhaenval stuff is all-in-one due to laziness, not as a standard.

/datum/supply_pack/rogue/armor_exotic
	group = "Armor (Exotic)"
	crate_name = "merchant guild's crate"
	crate_type = /obj/structure/closet/crate/chest/merchant
	no_name_quantity = TRUE

/datum/supply_pack/rogue/armor_exotic/rhaenval_pack_light
	name = "Rhaenish Ravager Leather Set (Light)"
	cost = 125
	contains = list(
		/obj/item/clothing/head/roguetown/helmet/bascinet/atgervi/rhaenval,
		/obj/item/clothing/suit/roguetown/armor/leather/heavy/rhaenval,
		/obj/item/clothing/under/roguetown/trou/leather/rhaenval,
		/obj/item/clothing/gloves/roguetown/angle/rhaenval
		)

/datum/supply_pack/rogue/armor_exotic/rhaenval_pack_medium
	name = "Rhaenish Byrine Chain Set (Medium)"
	cost = 225
	contains = list(
		/obj/item/clothing/head/roguetown/helmet/bascinet/atgervi/rhaenval/ownel,
		/obj/item/clothing/suit/roguetown/armor/brigandine/rhaenval,
		/obj/item/clothing/gloves/roguetown/chain/rhaenval,
		/obj/item/clothing/under/roguetown/splintlegs/iron/rhaenval
		)

/datum/supply_pack/rogue/armor_exotic/rhaenval_pack_heavy
	name = "Rhaenish Norsii Plate Set (Heavy)"
	cost = 400
	contains = list(
		/obj/item/clothing/head/roguetown/helmet/heavy/bucket/rhaenval,
		/obj/item/clothing/suit/roguetown/armor/plate/iron/rhaenval,
		/obj/item/clothing/gloves/roguetown/plate/iron/rhaenval,
		/obj/item/clothing/under/roguetown/platelegs/iron/rhaenval,
		/obj/item/clothing/shoes/roguetown/boots/armor/iron/rhaenval
		)
