// Event that handle's how the pets move after the player's turn finishes

var i
var j
// Loop through all the pets in the level so they can do stuff
for(j = 0; j < array_length_1d(global.pets_in_current_level); j ++)
{
	// Current pets: dog, bunny, snake, cat, hedgehog
	// spr_dog, spr_bunny, cato, spr_snake, spr_hedgehog
	
	// Set up some local variables because otherwise things get messy and break
	local_pet_object = global.pet_objects[j]
	local_pet_step_direction_counter = global.pet_step_direction_counter[j]
	local_pet_step_amount = global.step_amount_of_pets[? local_pet_object.sprite_index]
	
	// The dog's movement
	if(global.pets_in_current_level[j] == spr_dog)
	{
		// Make 2 movements for the dog
		for(i = 0; i < 2; i ++)
		{	
			// Figure out where pets will end up after moving to avoid them phasing through walls
			x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
			y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
	
			// Find the distance between the x's and y's of the player and pet
			x_difference = local_pet_object.x + x_distance_left_to_move - obj_player.x
			y_difference = local_pet_object.y + y_distance_left_to_move - obj_player.y

			// Randomly generate a number that we use to decide if the pet moves or does not
			// Including x and y lets us bias towards whichever direction is larger
			// 1/the multipler gives us the odds of a movement occuring
			movement_rng = random(1.5*(abs(x_difference)+abs(y_difference)))

			// Movement in the x direction
			if(movement_rng < abs(x_difference))
			{
				// Move if the pet won't move into a wall
				if(x_difference > 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move - global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Left
					local_pet_step_direction_counter[2] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(x_difference < 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move + global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Right
					local_pet_step_direction_counter[3] += local_pet_step_amount
				}
			}
			// Movement in the y direction
			else if(movement_rng < abs(x_difference)+abs(y_difference))
			{
				// Move if the pet won't move into a wall
				if(y_difference > 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move - global.tile_size) == 0))
				{
					// Up
					local_pet_step_direction_counter[0] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(y_difference < 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move + global.tile_size) == 0))
				{
					// Down
					local_pet_step_direction_counter[1] += local_pet_step_amount
				}
			}
		}
		// Occasionally, the randomness will cause no movement at all
		
		// Play a barking sound from the position of the dog
		audio_play_sound_on(global.audio_emitters[j], woof, false, 1);
	}
	// The cat's movement
	else if(global.pets_in_current_level[j] == spr_cat)
	{
		// Make 1 movement for the cat
		for(i = 0; i < 1; i ++)
		{	
			// Figure out where pets will end up after moving to avoid them phasing through walls
			x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
			y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
			
			// Find the distance between the x's and y's of the player and pet
			x_difference = local_pet_object.x + x_distance_left_to_move - obj_player.x
			y_difference = local_pet_object.y + y_distance_left_to_move - obj_player.y

			// Randomly generate a number that we use to decide if the pet moves or does not
			// The cats randomly in all 4 direction with equal wait, and often doesn't move
			// 1/the multipler gives us the odds of a movement occuring
			movement_rng = random(1.5*(4))

			// Movement in the x direction
			if(movement_rng < 2)
			{
				// Move if the pet won't move into a wall
				if(movement_rng < 1 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move - global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Left
					local_pet_step_direction_counter[2] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(movement_rng < 2 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move + global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Right
					local_pet_step_direction_counter[3] += local_pet_step_amount
				}
			}
			//Movement in the y direction
			else if(movement_rng < 4)
			{
				// Move if the pet won't move into a wall
				if(movement_rng < 3 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move - global.tile_size) == 0))
				{
					// Up
					local_pet_step_direction_counter[0] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(movement_rng < 4 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move + global.tile_size) == 0))
				{
					// Down
					local_pet_step_direction_counter[1] += local_pet_step_amount
				}
			}
		}
		// Occasionaly, the cat won't make any movements at all
		
		// Play a meowing sound from the position of the cat
		audio_play_sound_on(global.audio_emitters[j], cat, false, 1);
	}
	// The bunny's movement
	else if(global.pets_in_current_level[j] == spr_bunny)
	{
		// Make 1 movement for the bunny
		for(i = 0; i < 1; i ++)
		{	
			// Figure out where pets will end up after moving to avoid them phasing through walls
			x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
			y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
			
			// Find the distance between the x's and y's of the player and pet
			x_difference = local_pet_object.x + x_distance_left_to_move - obj_player.x
			y_difference = local_pet_object.y + y_distance_left_to_move - obj_player.y

			// Randomly generate a number that we use to decide if the pet moves or does not
			// Including x and y lets us bias towards whichever direction is larger
			// 1/the multipler gives us the odds of a movement occuring
			movement_rng = random(1*(abs(x_difference)+abs(y_difference)))

			// Movement in the x direction
			if(movement_rng < abs(x_difference))
			{
				// Move if the pet won't move into a wall
				if(x_difference > 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move - global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Left
					local_pet_step_direction_counter[2] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(x_difference < 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move + global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Right
					local_pet_step_direction_counter[3] += local_pet_step_amount
				}
			}
			//Movement in the y direction
			else if(movement_rng < abs(x_difference)+abs(y_difference))
			{
				// Move if the pet won't move into a wall
				if(y_difference > 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move - global.tile_size) == 0))
				{
					// Up
					local_pet_step_direction_counter[0] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(y_difference < 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move + global.tile_size) == 0))
				{
					// Down
					local_pet_step_direction_counter[1] += local_pet_step_amount
				}
			}
		}
		
		// Play a crunching sound from the position of the bunny
		audio_play_sound_on(global.audio_emitters[j], bunny, false, 1);
	}
	// The snake's movement
	if(global.pets_in_current_level[j] == spr_snake)
	{
		// The snake makes 1 large movement
		for(i = 0; i < 1; i ++)
		{	
			// Figure out where pets will end up after moving to avoid them phasing through walls
			x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
			y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
			
			// Find the distance between the x's and y's of the player and pet
			x_difference = local_pet_object.x + x_distance_left_to_move - obj_player.x
			y_difference = local_pet_object.y + y_distance_left_to_move - obj_player.y

			// Randomly generate a number that we use to decide if the pet moves or does not
			// Including x and y lets us bias towards whichever direction is larger
			// 1/the multipler gives us the odds of a movement occuring
			movement_rng = random(1*(abs(x_difference)+abs(y_difference)))

			// Movement in the x direction
			if(movement_rng < abs(x_difference))
			{
				// Move if the pet won't move into a wall
				if(x_difference > 0)
				{
					// Move left until a wall is hit
					while((tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move - global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
					{
						// Left
						local_pet_step_direction_counter[2] += local_pet_step_amount
						x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
						y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
					}
				}
				// Move if the pet won't move into a wall
				else
				{
					// Move left until a wall is hit
					while((tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move + global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
					{
						// Right
						local_pet_step_direction_counter[3] += local_pet_step_amount
						x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
						y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
					}
				}
			}
			// Movement in the y direction
			else if(movement_rng < abs(x_difference)+abs(y_difference))
			{
				// Move if the pet won't move into a wall
				if(y_difference > 0 )
				{
					// Move left until a wall is hit
					while((tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x, local_pet_object.y + y_distance_left_to_move - global.tile_size) == 0))
					{
						// Up
						local_pet_step_direction_counter[0] += local_pet_step_amount
						x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
						y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
					}
				}
				// Move if the pet won't move into a wall
				else 
				{
					// Move left until a wall is hit
					while((tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x, local_pet_object.y + y_distance_left_to_move + global.tile_size) == 0))
					{
						// Down
						local_pet_step_direction_counter[1] += local_pet_step_amount
						x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
						y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
					}
				}
			}
		}
		// Play a barking sound from the position of the dog
		audio_play_sound_on(global.audio_emitters[j], snake, false, 1);
	}
	// The hedgehog's movement
	if(global.pets_in_current_level[j] == spr_hedgehog)
	{
		// Make 1 movement for towards the player for the hedgehog
		for(i = 0; i < 1; i ++)
		{	
			// Figure out where pets will end up after moving to avoid them phasing through walls
			x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
			y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])	
			
			// Find the distance between the x's and y's of the player and pet
			x_difference = local_pet_object.x + x_distance_left_to_move - obj_player.x
			y_difference = local_pet_object.y + y_distance_left_to_move - obj_player.y

			// Randomly generate a number that we use to decide if the pet moves or does not
			// Including x and y lets us bias towards whichever direction is larger
			// 1/the multipler gives us the odds of a movement occuring
			movement_rng = random(1.5*(abs(x_difference)+abs(y_difference)))

			// Movement in the x direction
			if(movement_rng < abs(x_difference))
			{
				// Move if the pet won't move into a wall
				if(x_difference > 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move - global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Left
					local_pet_step_direction_counter[2] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(x_difference < 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move + global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Right
					local_pet_step_direction_counter[3] += local_pet_step_amount
				}
			}
			// Movement in the y direction
			else if(movement_rng < abs(x_difference)+abs(y_difference))
			{
				// Move if the pet won't move into a wall
				if(y_difference > 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move - global.tile_size) == 0))
				{
					// Up
					local_pet_step_direction_counter[0] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(y_difference < 0 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move + global.tile_size) == 0))
				{
					// Down
					local_pet_step_direction_counter[1] += local_pet_step_amount
				}
			}
		}
		// Then make 1 random movement
		for(i = 0; i < 1; i ++)
		{	
			// Figure out where pets will end up after moving to avoid them phasing through walls
			x_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[3]-local_pet_step_direction_counter[2])
			y_distance_left_to_move = (global.movespeed_of_pets[? local_pet_object.sprite_index])*(local_pet_step_direction_counter[1]-local_pet_step_direction_counter[0])
			
			// Find the distance between the x's and y's of the player and pet
			x_difference = local_pet_object.x + x_distance_left_to_move - obj_player.x
			y_difference = local_pet_object.y + y_distance_left_to_move - obj_player.y

			// Randomly generate a number that we use to decide if the pet moves or does not
			// The cats randomly in all 4 direction with equal wait, and often doesn't move
			// 1/the multipler gives us the odds of a movement occuring
			movement_rng = random(1*(4))

			// Movement in the x direction
			if(movement_rng < 2)
			{
				// Move if the pet won't move into a wall
				if(movement_rng < 1 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move - global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Left
					local_pet_step_direction_counter[2] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(movement_rng < 2 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move + global.tile_size, local_pet_object.y + y_distance_left_to_move) == 0))
				{
					// Right
					local_pet_step_direction_counter[3] += local_pet_step_amount
				}
			}
			//Movement in the y direction
			else if(movement_rng < 4)
			{
				// Move if the pet won't move into a wall
				if(movement_rng < 3 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move - global.tile_size) == 0))
				{
					// Up
					local_pet_step_direction_counter[0] += local_pet_step_amount
				}
				// Move if the pet won't move into a wall
				else if(movement_rng < 4 and (tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), local_pet_object.x + x_distance_left_to_move, local_pet_object.y + y_distance_left_to_move + global.tile_size) == 0))
				{
					// Down
					local_pet_step_direction_counter[1] += local_pet_step_amount
				}
			}
		}
		// Play a huffing sound from the hedgehog
		audio_play_sound_on(global.audio_emitters[j], hedgehog, false, 1);
	}
	// Update the position counters of the pets so their movements can actually be made
	global.pet_step_direction_counter[j] = local_pet_step_direction_counter
}
// Allow the player to move again after all the pets have finished moving
global.player_turn_counter = 3
