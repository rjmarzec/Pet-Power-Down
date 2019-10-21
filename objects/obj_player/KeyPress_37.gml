if(global.player_move_counter > 0)
{
	//object_set_sprite(obj_player, playerleft);
	if !(tilemap_get_at_pixel(layer_tilemap_get_id("Walls"), x - 32, y) == tileset1) 
	{
		//x -= 32;
		global.player_left_move_step_count += 8;
		global.player_move_counter -= 1;
	}
	else
	{
		audio_play_sound_at(bump, x - 16, y, 0, 1, 32, 1, false, 0);
	}
}
