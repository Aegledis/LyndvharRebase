/*
	Combat Mode Music Track Datums
	---
	Currently only used for overriding the default combat music that comes with your job or antagonist.
	As of writing they are never directly applied to mobs themselves, only the name and musicpath are.
	Deleting these datums or renaming subtypes will not break preferences; invalid saves get redirected to /default.
	When adding new songs, add a shortname around ~12 characters for the game preferences menu.
	
	IMPORTANT! Be careful about adding songs to this list that aren't used anywhere else, lest you needlessly inflate the RSC.
*/

// Admins: please don't molest my lists. You can't add new types at runtime anyways. Kisses! - Zoktiik
GLOBAL_LIST_EMPTY(cmode_tracks_by_type)
GLOBAL_LIST_EMPTY(cmode_tracks_by_name)

// People make mistakes. This should help catch when that happens.
/proc/cmode_track_to_namelist(var/datum/combat_music/track)
	if(!track)
		return
	if(!track.name)
		LAZYREMOVE(GLOB.cmode_tracks_by_type, track.type)
		CRASH("CMODE MUSIC: type [track.type] has no name!") 
	if(GLOB.cmode_tracks_by_name[track.name])
		LAZYREMOVE(GLOB.cmode_tracks_by_type, track.type)
		CRASH("CMODE MUSIC: type [track.type] has duplicate name \"[track.name]\"!")
	GLOB.cmode_tracks_by_name[track.name] = track
	return

/datum/combat_music
	var/name
	var/desc
	var/shortname
	var/credits
	var/musicpath = list()

// Shit WILL break if you change /default's typepath. Don't do it.
/datum/combat_music/default
	name = "Default"
	desc = "I let my current status sing for itself; its song will change dynamically."
	shortname = "Default"
	musicpath = list()

/datum/combat_music/classic
	name = "Classic"
	desc = "The true original song of battle - from the old daes."
	shortname = "Classic"
	musicpath = list('sound/music/combat_old.ogg')

/datum/combat_music/original
	name = "Original"
	desc = "The original song of battle."
	shortname = "Original"
	musicpath = list('sound/music/combat.ogg')

/datum/combat_music/ascended
	name = "Ascended"
	desc = "Achieving a higher state of being."
	shortname = "Ascended"
	musicpath = list('sound/music/combat_ascended.ogg')

/datum/combat_music/bandit
	name = "Bandit"
	desc = "The status of the common crook- the envy of Matthios."
	shortname = "Bandit"
	musicpath = list('sound/music/combat_bandit.ogg')

/datum/combat_music/bandit2
	name = "Bandit Two"
	desc = "The status of the common crook- the envy of Matthios."
	shortname = "Bandit"
	musicpath = list('sound/music/combat_bandit_mage.ogg')

/datum/combat_music/baotha
	name = "Baotha Heretic"
	desc = "The songs of one desperate for love- that finds none."
	shortname = "Baotha"
	musicpath = list('sound/music/combat_baotha.ogg')

/datum/combat_music/crestguardian
	name = "Crestborne Guardian"
	desc = "The songs of those protective of the woodlands."
	shortname = "Warden"
	musicpath = list('sound/music/combat_blackoak.ogg')

/datum/combat_music/blackstar
	name = "Blackened Star"
	desc = "The dark star shines upon you- and not lightly."
	shortname = "Blackstar"
	musicpath = list('sound/music/combat_blackstar.ogg')

/datum/combat_music/bum
	name = "Bum"
	desc = "Showcasing how much of a useless wastrel you truly are."
	shortname = "Bum"
	musicpath = list('sound/music/combat_bum.ogg')

/datum/combat_music/captain
	name = "Captain"
	desc = "The guardian protector of the city watch."
	shortname = "Captain"
	musicpath = list('sound/music/combat_captain.ogg')

/datum/combat_music/condottiero
	name = "Condottiero"
	desc = "The songs and power of the Dunargiac provincial."
	shortname = "Condottiero"
	musicpath = list('sound/music/combat_condottiero.ogg')

/datum/combat_music/cult
	name = "Cult"
	desc = "The voices of the beyond call in damnation."
	shortname = "Cult"
	musicpath = list('sound/music/combat_cult.ogg')

/datum/combat_music/delf
	name = "Dark Elf"
	desc = "The call of the Underdark."
	shortname = "Drow"
	musicpath = list('sound/music/combat_delf.ogg')

/datum/combat_music/desertrider
	name = "Desert Rider"
	desc = "The sands and jungles of Zybantu call upon you for a reckoning."
	shortname = "Zybantu"
	musicpath = list('sound/music/combat_desertrider.ogg')

/datum/combat_music/dungeoneer
	name = "Dungeoneer"
	desc = "The screams of a dungeon echo in your mind."
	shortname = "Dungeoneer"
	musicpath = list('sound/music/combat_dungeoneer.ogg')

/datum/combat_music/dwarf
	name = "Dwarf"
	desc = "This hole won't dig itself, after all."
	shortname = "Dwarf"
	musicpath = list('sound/music/combat_dwarf.ogg')

/datum/combat_music/garrison
	name = "Garrison"
	desc = "It is your watch that protects this realm."
	shortname = "Guardsman"
	musicpath = list('sound/music/combat_garrison.ogg')

/datum/combat_music/graggar
	name = "Graggar"
	desc = "The music of the warriors of Graggar."
	shortname = "Graggar"
	musicpath = list('sound/music/combat_graggar.ogg')

/datum/combat_music/grenzelhoft
	name = "Grenzelhoft"
	desc = "The Kaiserate commands- and you obey. No other word matters to you- not even the so-called gods."
	shortname = "Grenz"
	musicpath = list('sound/music/combat_grenzelhoft.ogg')

/datum/combat_music/rhaenval
	name = "Rhaenvalian"
	desc = "The winds speak to you- an omen upon the horizon. The shamans will speak highly of you."
	shortname = "Rhaenval"
	musicpath = list('sound/music/combat_rhaenval.ogg')

/datum/combat_music/hand
	name = "Hand of the Viscount"
	desc = "A melody of the second most powerful individual in the city."
	shortname = "Hand"
	musicpath = list('sound/music/combat_rhaenval.ogg')

/datum/combat_music/heretic
	name = "Heretic"
	desc = "Cast aside by the divine- who else shall heed your pleas?"
	shortname = "Heretic"
	musicpath = list('sound/music/combat_heretic.ogg')

/datum/combat_music/holy
	name = "Holy Devout"
	desc = "The pantheon speaks through you- and all around you."
	shortname = "Holy"
	musicpath = list('sound/music/combat_holy.ogg')

/datum/combat_music/inqold
	name = "Inquisition (Old)"
	desc = "A reckoning comes before this realm- Psydon's will."
	shortname = "Inqold"
	musicpath = list('sound/music/combat_inqold.ogg')

/datum/combat_music/ordinator
	name = "Inquisition (Ordinator)"
	desc = "A reckoning comes before this realm- Psydon's will."
	shortname = "Inqord"
	musicpath = list('sound/music/combat_inqordinator.ogg')

/datum/combat_music/jester
	name = "Jester"
	desc = "Laughter echoes throughout these halls."
	shortname = "Jester"
	musicpath = list('sound/music/combat_jester.ogg')

/datum/combat_music/khazumite
	name = "Khazumite"
	desc = "How did you even get here, I wonder..? It matters little."
	shortname = "Khazumite"
	musicpath = list('sound/music/combat_khazumite.ogg')

/datum/combat_music/knight
	name = "Knightly Oath"
	desc = "You swore an oath and you will see it upheld."
	shortname = "Knight"
	musicpath = list('sound/music/combat_knight.ogg')

/datum/combat_music/manatarms
	name = "Man-At-Arms"
	desc = "It is your watch that protects this realm. (Old Garrison)"
	shortname = "MAA"
	musicpath = list('sound/music/combat_ManAtArms.ogg')

/datum/combat_music/maniac
	name = "Maniac"
	desc = "Driven by an endless, never-satiated spree for death. They will wake up."
	shortname = "Maniac"
	musicpath = list('sound/music/combat_maniac.ogg')

/datum/combat_music/maniac_two
	name = "Maniac (Alt)"
	desc = "Driven by an endless, never-satiated spree for death. They will wake up."
	shortname = "Maniac2"
	musicpath = list('sound/music/combat_maniac2.ogg')

/datum/combat_music/martyrsafe
	name = "Martyr"
	desc = "You will see yourself sacrificed for the betterment of the whole."
	shortname = "Martyr"
	musicpath = list('sound/music/combat_martyrsafe.ogg')

/datum/combat_music/matthios
	name = "Matthios"
	desc = "Envy is your calling- their riches are yours."
	shortname = "Matthios"
	musicpath = list('sound/music/combat_matthios.ogg')

/datum/combat_music/noble
	name = "Nobility"
	desc = "A pleasing melody upon the ears- one that serves you."
	shortname = "Noble"
	musicpath = list('sound/music/combat_noble.ogg')

/datum/combat_music/orthodoxist
	name = "Orthodoxy"
	desc = "Psydon's will is your beck and call- and you serve."
	shortname = "Orthodoxy"
	musicpath = list('sound/music/combat_orthodoxist.ogg')

/datum/combat_music/ozium
	name = "Ozium"
	desc = "Perhaps you've taken too much of this stuff.."
	shortname = "Ozium"
	musicpath = list('sound/music/combat_ozium.ogg')

/datum/combat_music/physician
	name = "Physicker"
	desc = "And that's how I lost my medical license!"
	shortname = "Physician"
	musicpath = list('sound/music/combat_physician.ogg')

/datum/combat_music/poacher
	name = "Poacher"
	desc = "An arrow let loose from its bow- into the heart of the saiga. Nobody will miss this one- even if it's not your woods."
	shortname = "Poacher"
	musicpath = list('sound/music/combat_poacher.ogg')

/datum/combat_music/psydonia
	name = "Psydonian Templar"
	desc = "Ordinator of the One - Follower of Him."
	shortname = "Psydonite"
	musicpath = list('sound/music/combat_psydonia.ogg')

/datum/combat_music/routier
	name = "Valorian"
	desc = "The brethren song of the brothers and sisters of Valoria. Many are the Routier."
	shortname = "Routier"
	musicpath = list('sound/music/combat_routier.ogg')

/datum/combat_music/saltlia
	name = "Saltlia"
	desc = "The melody of the lands of salt beckon to you. Perhaps the will can be enforced this far west."
	shortname = "Saltlia"
	musicpath = list('sound/music/combat_saltlia.ogg')

/datum/combat_music/shaman
	name = "Shaman"
	desc = "Winds whisper to you- words of wisdom.."
	shortname = "Shaman"
	musicpath = list('sound/music/combat_shaman.ogg')

/datum/combat_music/shamanalt
	name = "Shaman (alt)"
	desc = "Winds whisper to you- words of wisdom.."
	shortname = "Shaman"
	musicpath = list('sound/music/combat_shaman2.ogg')

/datum/combat_music/squire
	name = "Squire"
	desc = "You have a long road ahead of you to learn.."
	shortname = "Squire"
	musicpath = list('sound/music/combat_squire.ogg')

/datum/combat_music/starsugar
	name = "Starsugar"
	desc = "Okay- you really need to get off this stuff. (LOUD)"
	shortname = "Starsugar"
	musicpath = list('sound/music/combat_starsugar.ogg')

/datum/combat_music/steppe
	name = "Steppesman"
	desc = "The plateau of the Great Vruirid calls- your home of Rhaenval."
	shortname = "Steppes"
	musicpath = list('sound/music/combat_steppe.ogg')

/datum/combat_music/swashbuckler
	name = "Swashbuckler"
	desc = "The seas call upon you- make a prayer to Abyssor for these fair winds we have been blessed with!"
	shortname = "Pirate"
	musicpath = list('sound/music/combat_swashbuckler.ogg')

/datum/combat_music/varangian
	name = "Varangian"
	desc = "You've never found much that couldn't be solved with an axe."
	shortname = "Varangian"
	musicpath = list('sound/music/combat_vagarian.ogg')

/datum/combat_music/vaquero
	name = "Calmirixian"
	desc = "Those swamps and great plains may be inhospitable to many- but to you? Right at home."
	shortname = "Vaquero"
	musicpath = list('sound/music/combat_vaquero.ogg')

/datum/combat_music/veteran
	name = "Veteran"
	desc = "You've seen more than most- and you have the scars to show for it. Physically, and mentally."
	shortname = "Veteran"
	musicpath = list('sound/music/combat_veteran.ogg')

/datum/combat_music/viscount
	name = "Viscount"
	desc = "The symphony of the autocrat. The force that binds stability together."
	shortname = "Viscount"
	musicpath = list('sound/music/combat_viscount.ogg')

/datum/combat_music/weird
	name = "Weird"
	desc = "The thrumming sound of the drums- the mystery of this world. If only you weren't dead."
	shortname = "Weird"
	musicpath = list('sound/music/combat_weird.ogg')

/datum/combat_music/iconoclast
	name = "Iconoclast"
	desc = "And thus- my justice was served."
	shortname = "Iconoclast"
	musicpath = list('sound/music/combat_iconoclast.ogg')

/datum/combat_music/outlander
	name = "Outlander"
	desc = "Not of this region. Not of anywhere. Just alone."
	shortname = "Outlander"
	musicpath = list('sound/music/cmode/adventurer/combat_outlander.ogg')

/datum/combat_music/outlander2
	name = "Outlander 2"
	desc = "Not of this region. Not of anywhere. Just alone."
	shortname = "Outlander"
	musicpath = list('sound/music/cmode/adventurer/combat_outlander2.ogg')

/datum/combat_music/outlander3
	name = "Outlander 3"
	desc = "Not of this region. Not of anywhere. Just alone."
	shortname = "Outlander"
	musicpath = list('sound/music/cmode/adventurer/combat_outlander3.ogg')

/datum/combat_music/outlander4
	name = "Outlander 4"
	desc = "Not of this region. Not of anywhere. Just alone."
	shortname = "Outlander"
	musicpath = list('sound/music/cmode/adventurer/combat_outlander4.ogg')

/datum/combat_music/cutpurse
	name = "Cutpurse"
	desc = "Give me everything in the bag!"
	shortname = "Cutpurse"
	musicpath = list('sound/music/cmode/antag/combat_cutpurse.ogg')

/datum/combat_music/darkstar
	name = "Darkstar"
	desc = "An eclipse upon the stars."
	shortname = "Darkstar"
	musicpath = list('sound/music/cmode/antag/combat_darkstar.ogg')

/datum/combat_music/deadlyshadows
	name = "Deadly Shadows"
	desc = "A knife in the dark- a shadow pigment upon the cobblestone."
	shortname = "Shadows"
	musicpath = list('sound/music/cmode/antag/combat_deadlyshadows.ogg')

/datum/combat_music/thewall
	name = "The Wall"
	desc = "Nothing gets past you. You are unstoppable."
	shortname = "Wall"
	musicpath = list('sound/music/cmode/antag/combat_thewall.ogg')

/datum/combat_music/thrall
	name = "Enthralled"
	desc = "Possessed by some means- doomed to be driven to your death."
	shortname = "Thrall"
	musicpath = list('sound/music/cmode/antag/combat_thrall.ogg')

/datum/combat_music/acolyte
	name = "Acolyte"
	desc = "Serve the Ten faithfully- and be rewarded."
	shortname = "Acolyte"
	musicpath = list('sound/music/cmode/church/combat_acolyte.ogg')

/datum/combat_music/astrata
	name = "Astrata"
	desc = "The tyranny of the Sun grows brighter."
	shortname = "Astrata"
	musicpath = list('sound/music/cmode/church/combat_astrata.ogg')

/datum/combat_music/eora
	name = "Eora"
	desc = "Must you really fight?"
	shortname = "Eora"
	musicpath = list('sound/music/cmode/church/combat_eora.ogg')

/datum/combat_music/necra
	name = "Necra"
	desc = "They won't get to the Veil on their own, after all."
	shortname = "Necra"
	musicpath = list('sound/music/cmode/church/combat_necra.ogg')

/datum/combat_music/reckoning
	name = "Reckoning"
	desc = "There will be a reckoning upon this house."
	shortname = "Reckoning"
	musicpath = list('sound/music/cmode/church/combat_reckoning.ogg')

/datum/combat_music/wardenforest
	name = "Forestry"
	desc = "The woods call for you- Dendor's words, likely."
	shortname = "Forestry"
	musicpath = list('sound/music/cmode/garrison/combat_warden.ogg')

/datum/combat_music/courtmage
	name = "Magician"
	desc = "A magician never tells their secrets."
	shortname = "Magician"
	musicpath = list('sound/music/cmode/nobility/combat_courtmage.ogg')

/datum/combat_music/spymaster
	name = "Spymaster"
	desc = "An ever-looking eye behind the keyhole."
	shortname = "Spy"
	musicpath = list('sound/music/cmode/nobility/combat_spymaster.ogg')

/datum/combat_music/retired
	name = "Retired"
	desc = "You've grown too old for this stupid shite."
	shortname = "Retired"
	musicpath = list('sound/music/cmode/towner/combat_retired.ogg')

/datum/combat_music/towner
	name = "Villager"
	desc = "A nobody who believes they will be something one day."
	shortname = "Towner"
	musicpath = list('sound/music/cmode/towner/combat_towner.ogg')

/datum/combat_music/towner2
	name = "Villager 2"
	desc = "A nobody who believes they will be something one day."
	shortname = "Towner2"
	musicpath = list('sound/music/cmode/towner/combat_towner2.ogg')

/datum/combat_music/towner3
	name = "Villager 3"
	desc = "A nobody who believes they will be something one day."
	shortname = "Towner3"
	musicpath = list('sound/music/cmode/towner/combat_towner2.ogg')
