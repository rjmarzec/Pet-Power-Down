// Setup of most of the global variables used in the game, including but not limited to arrays of
// the different pet objects, the speed of pets, what pets are in each level, and many more.

// Set the options that are changed in the settings tab to their defaults:
// Cheat code disabled, only 3 levels unlocked, volume enabled, and the regular flashlight
// These shouldn't be reset every time you go to the main menu, so we check if they already are declared first
if(!variable_global_exists("cheatcodesenabled"))
{
	global.cheatcodesenabled = 0
	global.levellock = 4
	global.onoffvolume = 0
	global.flashlightsettings = 1
}


// Setup a muted, default sound for use later
audio_sound_gain(tic, 0, 0);


// Setting the current level to a default value so other systems don't break
global.current_level = 0


// A general definition of the size of a tile that can be adjusted
// Most movement patterns reference this variable, so they can be changed by changing it her
global.tile_size = 32


// Storage of all the pet objects for easy access in loops
global.pet_objects = [obj_pet_1, obj_pet_2, obj_pet_3, obj_pet_4, obj_pet_5]


// Storage of all the level rooms
global.level_rooms = [undefined, rm_level_01, rm_level_02, rm_level_03, rm_level_04, rm_level_05, rm_level_06, rm_level_07, rm_level_08, rm_level_09, rm_level_10, rm_level_11, rm_level_12, rm_level_13, rm_level_14, rm_level_15, rm_level_16, rm_level_17, rm_level_18, rm_level_19, rm_level_20, rm_level_21, rm_level_22, rm_level_23, rm_level_24]


// Storage of what pets show up in each level
// Formatted as which as the sprite of each pet object used in order, 
// where the index of the array entry being the level number
global.pets_in_each_level = [
	[spr_dog],	// level 0
	[spr_dog],	// level 1
	[spr_dog],	// level 2
	[spr_dog],	// level 3
	[spr_cat],	// level 4
	[spr_dog, spr_cat],	// level 5
	[spr_dog, spr_cat],	// level 6
	[spr_dog, spr_cat],	// level 7
	[spr_bunny],	// level 8
	[spr_bunny, spr_cat, spr_dog],	// level 9
	[spr_bunny, spr_dog, spr_cat],	// level 10
	[spr_dog, spr_snake],	// level 11
	[spr_dog, spr_bunny],	// level 12
	[spr_snake, spr_hedgehog],	// level 13
	[spr_dog, spr_hedgehog],	// level 14
	[spr_dog, spr_cat],	// level 15
	[spr_dog, spr_cat, spr_snake],	// level 16
	[spr_dog, spr_cat],	//level 17
	[spr_hedgehog, spr_bunny],	// level 18
	[spr_snake, spr_cat, spr_dog],	// level 19
	[spr_dog],	// level 20
	[spr_cat, spr_bunny, spr_dog],	// level 21
	[spr_snake, spr_dog, spr_hedgehog],	// level 22
	[spr_dog, spr_cat, spr_bunny, spr_snake, spr_hedgehog],	// level 23
	[spr_dog, spr_cat, spr_bunny, spr_snake, spr_hedgehog]	// level 24
	//[undefined, undefined, undefined, undefined, undefined]	// level x
	]


// In
global.pets_in_current_level = global.pets_in_each_level[0]


// Setup of the audio emitters so the pets can bark, meow, etc.
global.pet_1_audio_emitter = audio_emitter_create()
global.pet_2_audio_emitter = audio_emitter_create()
global.pet_3_audio_emitter = audio_emitter_create()
global.pet_4_audio_emitter = audio_emitter_create()
global.pet_5_audio_emitter = audio_emitter_create()
global.audio_emitters = [global.pet_1_audio_emitter, global.pet_2_audio_emitter, global.pet_3_audio_emitter, global.pet_4_audio_emitter, global.pet_5_audio_emitter]
audio_falloff_set_model(audio_falloff_linear_distance_clamped);
var i
for(i = 0; i < 5; i++)
{
	audio_emitter_falloff(global.audio_emitters[i],1,750,1.5);
}



// Setup of the relative player movespeed and number of steps
global.movespeed_of_player = global.tile_size/8
global.step_amount_of_player = global.tile_size/global.movespeed_of_player


// Setup of the movement speed for all the pets stored in an dictionary
global.movespeed_of_pets = ds_map_create()
ds_map_add(global.movespeed_of_pets, spr_dog, global.tile_size/4)
ds_map_add(global.movespeed_of_pets, spr_bunny, global.tile_size/2)
ds_map_add(global.movespeed_of_pets, spr_cat, global.tile_size/16)
ds_map_add(global.movespeed_of_pets, spr_snake, global.tile_size/2)
ds_map_add(global.movespeed_of_pets, spr_hedgehog, global.tile_size/8)


// Setup of the step count per move for all pets stored in a dictionary
global.step_amount_of_pets = ds_map_create()
ds_map_add(global.step_amount_of_pets, spr_dog, global.tile_size/global.movespeed_of_pets[? spr_dog])
ds_map_add(global.step_amount_of_pets, spr_bunny, global.tile_size/global.movespeed_of_pets[? spr_bunny])
ds_map_add(global.step_amount_of_pets, spr_cat, global.tile_size/global.movespeed_of_pets[? spr_cat])
ds_map_add(global.step_amount_of_pets, spr_snake, global.tile_size/global.movespeed_of_pets[? spr_snake])
ds_map_add(global.step_amount_of_pets, spr_hedgehog, global.tile_size/global.movespeed_of_pets[? spr_hedgehog])
