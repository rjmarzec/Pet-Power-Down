/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6561ED85
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "value" "3"
if(global.settingsselector == 3)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2B271C13
	/// @DnDParent : 6561ED85
	/// @DnDArgument : "value" "25"
	/// @DnDArgument : "var" "levellock"
	global.levellock = 25;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 40A12DBD
	/// @DnDParent : 6561ED85
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "cheatcodesenabled"
	global.cheatcodesenabled = 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3F9DD9AB
	/// @DnDParent : 6561ED85
	/// @DnDArgument : "soundid" "cheatcodes"
	/// @DnDSaveInfo : "soundid" "5d8cfce3-2d3b-471a-a90f-d2cd2a6e531b"
	audio_play_sound(cheatcodes, 0, 0);
}