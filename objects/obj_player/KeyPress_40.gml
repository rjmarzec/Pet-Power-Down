if(global.player_move_counter > 0)
{
	//object_set_sprite(obj_player, playerdown);
	if !(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), x, y + 32) == tileset1) 
	{
		//y += 32;
		global.player_down_move_step_count += 8;
		global.player_move_counter -= 1;
	}
	else
	{
		audio_play_sound_at(bump, x, y + 16, 0, 1, 32, 1, false, 0);
	}
}
