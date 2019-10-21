var i;
for(i = 0; i < 2; i ++)
{
	x_difference = obj_pet.x - obj_player.x
	y_difference = obj_pet.y - obj_player.y
	
	movement_rng = random(2*(abs(x_difference)+abs(y_difference)))

	if(movement_rng < abs(x_difference))
	{
		if(x_difference > 0 and !(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), obj_pet.x - 32, obj_pet.y) == tileset1))
		{
			global.pet_left_move_step_count += 4;
			//obj_pet.x -= 32;
		}
		else if !(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), obj_pet.x + 32, obj_pet.y) == tileset1) 
		{
			global.pet_right_move_step_count += 4;
			//obj_pet.x += 32;
		}
	}
	else if(movement_rng < abs(x_difference)+abs(y_difference))
	{
		if(y_difference > 0 and !(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), obj_pet.x, obj_pet.y - 32) == tileset1))
		{
			global.pet_up_move_step_count += 4;
			//obj_pet.y -= 32;
		}
		else if !(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), obj_pet.x, obj_pet.y + 32) == tileset1) 
		{
			global.pet_down_move_step_count += 4;
			//obj_pet.y += 32;
		}
	}
}

audio_play_sound_on(global.dogemit, woof, false, 1);
global.player_move_counter = 3;
