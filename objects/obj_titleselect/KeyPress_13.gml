/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EA43738
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "value" "1"
if(global.titleselect == 1)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 73B167CA
	/// @DnDParent : 2EA43738
	/// @DnDArgument : "room" "rm_levelselect"
	/// @DnDSaveInfo : "room" "b783555a-719b-4480-8385-0183a21c5366"
	room_goto(rm_levelselect);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A6BC428
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "value" "2"
if(global.titleselect == 2)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4A4E14CF
	/// @DnDParent : 1A6BC428
	/// @DnDArgument : "room" "rm_instruct"
	/// @DnDSaveInfo : "room" "6b3e9d02-7df1-4ba6-9d50-f2341a6c92f0"
	room_goto(rm_instruct);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 213AB986
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "value" "3"
if(global.titleselect == 3)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0D85899B
	/// @DnDParent : 213AB986
	/// @DnDArgument : "room" "rm_settings"
	/// @DnDSaveInfo : "room" "a3e6a077-3703-40e9-b589-4b050c78129e"
	room_goto(rm_settings);
}