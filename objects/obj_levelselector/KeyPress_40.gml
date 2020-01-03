/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 53AF0856
audio_stop_all();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5C389733
/// @DnDArgument : "value" "6"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "levelselected"
global.levelselected += 6;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D4418FC
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "24"
if(global.levelselected > 24)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 21E8D181
	/// @DnDParent : 1D4418FC
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "levelselected"
	global.levelselected = 1;
}