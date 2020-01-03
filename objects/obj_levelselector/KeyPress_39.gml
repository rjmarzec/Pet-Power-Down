/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 082B8C3D
audio_stop_all();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1355D000
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "levelselected"
global.levelselected += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B256662
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "24"
if(global.levelselected > 24)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3D717B86
	/// @DnDParent : 1B256662
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "levelselected"
	global.levelselected = 1;
}