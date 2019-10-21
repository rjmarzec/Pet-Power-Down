audio_listener_position(x,y,0)

if(global.player_move_counter = 0)
{
	alarm_set(0, 30);
	global.player_move_counter -= 1;
}


// Smooth Player Movement
if(global.player_left_move_step_count > 0)
{
	obj_player.x -= 4;
	global.player_left_move_step_count -= 1;
}
if(global.player_right_move_step_count > 0)
{
	obj_player.x += 4;
	global.player_right_move_step_count -= 1;
}
if(global.player_up_move_step_count > 0)
{
	obj_player.y -= 4;
	global.player_up_move_step_count -= 1;
}
if(global.player_down_move_step_count > 0)
{
	obj_player.y += 4;
	global.player_down_move_step_count -= 1;
}


// Smooth Pet Movement
if(global.pet_left_move_step_count > 0)
{
	obj_pet.x -= 8;
	global.pet_left_move_step_count -= 1;
}
if(global.pet_right_move_step_count > 0)
{
	obj_pet.x += 8;
	global.pet_right_move_step_count -= 1;
}
if(global.pet_up_move_step_count > 0)
{
	obj_pet.y -= 8;
	global.pet_up_move_step_count -= 1;
}
if(global.pet_down_move_step_count > 0)
{
	obj_pet.y += 8;
	global.pet_down_move_step_count -= 1;
}