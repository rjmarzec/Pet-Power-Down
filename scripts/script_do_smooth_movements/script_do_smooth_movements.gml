// Move the pets and player based on a given movespeed for each
// This makes movement actually looks like movement rather than teleporting to a location


// Smooth Player Movement [up, down, left, right]
// Move the player by their movespeed once for every step counter they have until none remain
// This looks better than just plopping them where they need to be (walking vs teleporting)
if(global.player_step_direction_counters[0] > 0)
{
	// Up
	obj_player.y -= global.movespeed_of_player;
	global.player_step_direction_counters[0] -= 1;
}
else if(global.player_step_direction_counters[1] > 0)
{
	// Down
	obj_player.y += global.movespeed_of_player;
	global.player_step_direction_counters[1] -= 1;
}
else if(global.player_step_direction_counters[2] > 0)
{
	// Left
	obj_player.x -= global.movespeed_of_player;
	global.player_step_direction_counters[2] -= 1;
}
else if(global.player_step_direction_counters[3] > 0)
{
	// Right
	obj_player.x += global.movespeed_of_player;
	global.player_step_direction_counters[3] -= 1;
}


// Smooth Pet Movement
// Move the player by their movespeed once for every step counter they have until none remain
// This looks better than just plopping them where they need to be (walking vs teleporting)
var i
// Loop through all the pets currently on the level and move them
for(i = 0; i < array_length_1d(global.pets_in_current_level); i ++)
{
	// Store a local copy of the direction counters so we can actually work with it without issues
	local_pet_step_direction_counter = global.pet_step_direction_counter[i]
	if(local_pet_step_direction_counter[0] > 0)
	{
		// Up
		global.pet_objects[i].y -= global.movespeed_of_pets[? global.pets_in_current_level[i]]
		local_pet_step_direction_counter[0] -= 1;
	}
	else if(local_pet_step_direction_counter[1] > 0)
	{
		// Down
		global.pet_objects[i].y += global.movespeed_of_pets[? global.pets_in_current_level[i]]
		local_pet_step_direction_counter[1] -= 1;
	}
	else if(local_pet_step_direction_counter[2] > 0)
	{
		// Left
		global.pet_objects[i].x -= global.movespeed_of_pets[? global.pets_in_current_level[i]]
		local_pet_step_direction_counter[2] -= 1;
	}
	else if(local_pet_step_direction_counter[3] > 0)
	{
		// Right
		global.pet_objects[i].x += global.movespeed_of_pets[? global.pets_in_current_level[i]]
		local_pet_step_direction_counter[3] -= 1;
	}
	// Update the global pet step counter back to what it should be
	global.pet_step_direction_counter[i] = local_pet_step_direction_counter
}
