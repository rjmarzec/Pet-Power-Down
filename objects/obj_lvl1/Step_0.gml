/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A028FD0
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "value" "1"
if(global.levelselected == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 28978E66
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_lvl1s"
	/// @DnDSaveInfo : "spriteind" "f215c09e-6ebe-4e05-819b-678572e31abc"
	sprite_index = spr_lvl1s;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53B2AE61
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "var" "global.playedsound1"
	if(global.playedsound1 == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0B530D19
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "lvl1"
		/// @DnDSaveInfo : "soundid" "eb241ddf-e7c5-4e66-a6ee-24c9b6f5b295"
		audio_play_sound(lvl1, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0814F98B
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "tic"
		/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_play_sound(tic, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5164376E
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "playedsound1"
		global.playedsound1 = 1;
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
	/// @DnDArgument : "spriteind" "spr_lvl1"
	/// @DnDSaveInfo : "spriteind" "5ccb4143-56dd-4b3f-b01c-dcd12fbabd5e"
	sprite_index = spr_lvl1;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7AC75296
	/// @DnDParent : 48B95FC4
	/// @DnDArgument : "var" "playedsound1"
	global.playedsound1 = 0;
}