/obj/item/mundane/adventurer_kit
	name = "outlander's kit"
	desc = "A wrap-bundle that swaths lifegoods. Tightly packed, can't be re-packed when opened."
	icon = 'icons/roguetown/misc/gadgets.dmi'
	icon_state = "messkit" //im sorry. im sorry. im sorry. im sorry. im sorry. im s
	w_class = WEIGHT_CLASS_TINY
	slot_flags = ITEM_SLOT_HIP
	resistance_flags = FIRE_PROOF
	grid_height = 32
	grid_width = 64
	var/totalitemcount = 0

/obj/item/mundane/adventurer_kit/attack_self(mob/living/user)

	user.changeNext_move(CLICK_CD_MELEE)
	playsound(src.loc, 'sound/items/wood_sharpen.ogg', 75, TRUE)
	playsound(src.loc, 'sound/items/visor.ogg', 75, TRUE)
	visible_message(span_notice ("[user] begins unwrapping \the [src]."))
	if(do_after(user,70, target = src))
		if(prob(40))
			new /obj/item/needle/thorn(get_turf(src))
			totalitemcount++
		if(prob(15))
			new /obj/item/needle(get_turf(src))
			totalitemcount++
		if(prob(10))
			new /obj/item/natural/whetstone(get_turf(src))
			totalitemcount++
		if(prob(20))
			new /obj/item/reagent_containers/food/snacks/rogue/crackerscooked(get_turf(src))
			totalitemcount++
		if(prob(20))
			new /obj/item/reagent_containers/glass/bottle/rogue/water(get_turf(src))
			totalitemcount++
		if(prob(20))
			new /obj/item/natural/bundle/cloth(get_turf(src))
			totalitemcount++
		if(prob(10))
			new /obj/item/rogueweapon/hammer/aalloy(get_turf(src))
			totalitemcount++
		if(totalitemcount == 0)
			to_chat(user, span_warning("Everything inside \the [src] seems to have decayed or crumbled to uselessness. Cack."))
		qdel(src)