/obj/item/clothing/suit/roguetown/shirt/robe/aventine
	slot_flags = ITEM_SLOT_ARMOR|ITEM_SLOT_SHIRT
	name = "necromancer robes"
	desc = ""
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|VITALS
	icon_state = "warlock"
	item_state = "warlock"
	icon = 'icons/roguetown/clothing/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/armor.dmi'
	sleeved = null
	boobed = TRUE
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL

/obj/item/clothing/head/roguetown/aventine
	name = "necromancers hood"
	color = null
	icon_state = "warlockhood"
	item_state = "warlockhood"
	body_parts_covered = NECK
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	sewrepair = TRUE

/obj/item/clothing/mask/rogue/facemask/burningeyes
	name = "burning eyes"
	desc = "A combination of fell magicks and exposure to the Arkrinval wastelands have made your eyeballs eternally aflame"
	color = null
	mob_overlay_icon = 'modular_lynd/icons/Ackrinval/necromanceronmob.dmi'
	icon = 'modular_lynd/icons/Ackrinval/necromancer.dmi'
	icon_state = "eyes"
	item_state = "eyes"
	body_parts_covered = EYES
	resistance_flags = FIRE_PROOF
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT)
	slot_flags = ITEM_SLOT_MASK
	max_integrity = 10000
	dynamic_hair_suffix = ""

/obj/item/clothing/mask/rogue/facemask/burningeyes/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)
	
