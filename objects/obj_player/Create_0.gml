// Storage of what pets show up in the current level
global.pets_in_current_level = global.pets_in_each_level[global.current_level]


// Assigning sprites to pets based on level
if(global.current_level != 0)
{
	var i
	for(i = 0; i < array_length_1d(global.pets_in_current_level); i ++)
	{
		global.pet_objects[i].sprite_index = global.pets_in_current_level[i]
	}
}


// Number of Pets Caught in the level, used to know when to move to the next level
global.pets_caught = 0


// Setting the player to only start with 3 movements
global.player_turn_counter = 3


// Move the player to a position where they look normal
x += global.tile_size/2
y += global.tile_size/2


// Orient our audio listener so that it works properly
audio_listener_orientation(0,0,-1,0,1,0)


// Setup of the player's movement direction counters [up, down, left, right]
global.player_step_direction_counters = [0, 0, 0, 0]


// Setup of the pets' movement direction counters [up, down, left, right]
global.pet_step_direction_counter = []
for(i = 0; i < array_length_1d(global.pets_in_current_level); i ++)
{
	global.pet_step_direction_counter[i] = [0, 0, 0, 0]
}


// Create the flashlight effect in levels where it is actually being used
if(global.current_level > 2)
{
	instance_create_depth(0, 0, 90, obj_flashlight)		
}
