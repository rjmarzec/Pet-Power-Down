if(global.levellock > global.levelselected)
{
	global.current_level = global.levelselected
	room_goto(global.level_rooms[global.levelselected])
}
