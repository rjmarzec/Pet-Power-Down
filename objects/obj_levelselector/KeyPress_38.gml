/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 0EBC1E02
audio_stop_all();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 359F0642
/// @DnDArgument : "value" "-6"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "levelselected"
global.levelselected += -6;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 711DEC33
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(global.levelselected < 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6442560D
	/// @DnDParent : 711DEC33
	/// @DnDArgument : "value" "24"
	/// @DnDArgument : "var" "levelselected"
	global.levelselected = 24;
}