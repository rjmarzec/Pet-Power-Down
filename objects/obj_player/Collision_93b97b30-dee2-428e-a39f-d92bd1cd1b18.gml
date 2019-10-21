/// @DnDAction : YoYo Games.Instances.Destroy_At_Position
/// @DnDVersion : 1
/// @DnDHash : 147872D6
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
position_destroy(x, y);

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 478FA382
/// @DnDArgument : "not" "1"
if(room != room_last)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6A823739
	/// @DnDParent : 478FA382
	room_goto_next();
}

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 14622B9B
if(room == room_last)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 17606503
	/// @DnDParent : 14622B9B
	/// @DnDArgument : "room" "rm_credits"
	/// @DnDSaveInfo : "room" "7145faf3-812d-4efa-9795-11edd94ec538"
	room_goto(rm_credits);
}