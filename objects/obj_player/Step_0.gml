// Update the position where the audio is directed at to where the player currently is
audio_listener_position(x,y,0)


// Have the player and pets move based on pre-defined movespeed and distances so that it looks like
// they are actually moving rather than teleporting.
script_do_smooth_movements()


// After the player finshes their 3 movements, 
if(global.player_turn_counter = 0)
{
	// Trigger the pets movement after 20 frames
	alarm_set(0, 20)
	// Just to be safe, decrement the amount of movements the player has left again
	global.player_turn_counter -= 1;
}


// Collision checking for the pet
var i
// Loop through all the pets to check which are currently colliding
for(i = 0; i < array_length_1d(global.pets_in_current_level); i ++)
{	
	// Check if the x and y positions of the pet and player to see if they are in the same spot
	if(x == global.pet_objects[i].x && y == global.pet_objects[i].y)
	{
		// Move the pet REALLY far away rather than deleting it in order to avoid arrows with deleting it
		// It is functionally the same as deleting the instance, but avoids issues with checks against it
		global.pet_objects[i].x = 100000
		global.pet_objects[i].y = 100000
		
		// Record that another pet has been caught
		global.pets_caught += 1
		
		// Play a sound to alert the player they caught a pet
		// { Currently nonfunctional }
	       audio_play_sound_at(petcaptured, x, y, 0, 0, 32, 1, false, 0)
		
		// If all the pets in a level have been caught, move on
		if(global.pets_caught = array_length_1d(global.pets_in_current_level))
		{
			// Mark that the player is now in the next level, open one more level,
			// and move to the level complete transition screen
			global.current_level += 1
			global.levellock += 1
			
			if(global.current_level > 24)
			{
				global.current_level = 0
				room_goto(rm_credits)
			}
			else
			{
				room_goto(rm_level_complete)
			}
		}
	}
}
