/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 490D4E9A
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 182346B7
/// @DnDArgument : "soundid" "menusong"
/// @DnDSaveInfo : "soundid" "5cb3d2bd-f133-406b-beb0-fc7e6333b67b"
audio_play_sound(menusong, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64156F26
/// @DnDArgument : "var" "playedsettingssound"
playedsettingssound = 0;

/// @DnDAction : YoYo Games.Audio.Audio_Get_Volume
/// @DnDVersion : 1
/// @DnDHash : 5EB41B8C
/// @DnDArgument : "var" "ticon"
/// @DnDArgument : "sound" "lvl1"
/// @DnDSaveInfo : "sound" "eb241ddf-e7c5-4e66-a6ee-24c9b6f5b295"
ticon = audio_sound_get_gain(lvl1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EFBF6FB
/// @DnDArgument : "var" "ticon"
/// @DnDArgument : "value" "1"
if(ticon == 1)
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 1B8A7027
	/// @DnDParent : 1EFBF6FB
	/// @DnDArgument : "sound" "tic"
	/// @DnDArgument : "volume" "0"
	/// @DnDSaveInfo : "sound" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
	audio_sound_gain(tic, 0, 0);
}