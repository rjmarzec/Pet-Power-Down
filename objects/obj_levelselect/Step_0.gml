/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 6688E00F
/// @DnDArgument : "soundid" "instructionsfull"
/// @DnDSaveInfo : "soundid" "a21fb915-b9e8-406c-acf5-f2bd3ef2063a"
audio_stop_sound(instructionsfull);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Position
/// @DnDVersion : 1
/// @DnDHash : 56E3BFAA
/// @DnDArgument : "sound" "instructionsfull"
/// @DnDSaveInfo : "sound" "a21fb915-b9e8-406c-acf5-f2bd3ef2063a"
audio_sound_set_track_position(instructionsfull, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B4571D7
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "value" "1"
if(global.titleselect == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 246887ED
	/// @DnDParent : 3B4571D7
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_lvlselects"
	/// @DnDSaveInfo : "spriteind" "36d2fc38-7146-487a-be59-71069bcd3ce5"
	sprite_index = spr_lvlselects;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C878A23
	/// @DnDParent : 3B4571D7
	/// @DnDArgument : "var" "playedlevelselectsound"
	if(playedlevelselectsound == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 695DC96E
		/// @DnDParent : 7C878A23
		/// @DnDArgument : "soundid" "levelselect"
		/// @DnDSaveInfo : "soundid" "49914993-1663-414c-8e2f-a59444faef74"
		audio_play_sound(levelselect, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 49886DB4
		/// @DnDParent : 7C878A23
		/// @DnDArgument : "soundid" "tic"
		/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_play_sound(tic, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39F79B9E
		/// @DnDParent : 7C878A23
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playedlevelselectsound"
		playedlevelselectsound = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4A016D0F
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 38CB53F1
	/// @DnDParent : 4A016D0F
	/// @DnDArgument : "spriteind" "spr_levelselect"
	/// @DnDSaveInfo : "spriteind" "ebb69054-3ea2-4e71-bdd5-886828d3bfdc"
	sprite_index = spr_levelselect;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CDD8D9E
	/// @DnDParent : 4A016D0F
	/// @DnDArgument : "var" "playedlevelselectsound"
	playedlevelselectsound = 0;
}