/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A028FD0
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "value" "3"
if(global.levelselected == 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 28978E66
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_lvl3s"
	/// @DnDSaveInfo : "spriteind" "fd284793-54bf-46fe-b964-a0d2e4ee7905"
	sprite_index = spr_lvl3s;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53B2AE61
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "var" "global.playedsound3"
	if(global.playedsound3 == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0B530D19
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "lvl3"
		/// @DnDSaveInfo : "soundid" "bd6d70e7-d9e0-4b9c-b9d7-f817975fe344"
		audio_play_sound(lvl3, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 46A41C9F
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "tic"
		/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_play_sound(tic, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5164376E
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "playedsound3"
		global.playedsound3 = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 48B95FC4
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 49BDA9EF
	/// @DnDParent : 48B95FC4
	/// @DnDArgument : "spriteind" "spr_lvl3"
	/// @DnDSaveInfo : "spriteind" "41e6db1d-5266-4ee5-8e49-ea8c3c947cd5"
	sprite_index = spr_lvl3;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7AC75296
	/// @DnDParent : 48B95FC4
	/// @DnDArgument : "var" "playedsound3"
	global.playedsound3 = 0;
}