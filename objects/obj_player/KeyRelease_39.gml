// Player's eastward/right movement

// Only move if they have a movement remaining (if the pets are not moving)
if(global.player_turn_counter > 0)
{
	// Factor in where the player will end up after their current movements to avoid accidental phasing
	x_distance_left_to_move = global.movespeed_of_player*(global.player_step_direction_counters[3]-global.player_step_direction_counters[2])
	y_distance_left_to_move = global.movespeed_of_player*(global.player_step_direction_counters[0]-global.player_step_direction_counters[1])

	// Allow the movement if it won't put the player in a wall
	if(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), x + x_distance_left_to_move + 32, y + y_distance_left_to_move) = 0) 
	{
		// Add the number of steps they need to take and subtract a movement
		global.player_step_direction_counters[3] += global.step_amount_of_player;
		global.player_turn_counter -= 1;
	}
	// If the player will hit a wall, play a thud sound
	else
	{
		audio_play_sound_at(bump, x + global.tile_size/2, y, 0, 1, 32, 1, false, 0);
	}
}
