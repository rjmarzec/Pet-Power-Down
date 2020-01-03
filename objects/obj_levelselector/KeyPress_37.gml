/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 2FFA6D0F
audio_stop_all();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 59F836EA
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "levelselected"
global.levelselected += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D09951F
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(global.levelselected < 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 094152D4
	/// @DnDParent : 7D09951F
	/// @DnDArgument : "value" "24"
	/// @DnDArgument : "var" "levelselected"
	global.levelselected = 24;
}