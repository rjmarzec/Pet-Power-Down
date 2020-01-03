/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A028FD0
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "value" "4"
if(global.levelselected == 4)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 28978E66
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_lvl4s"
	/// @DnDSaveInfo : "spriteind" "da41ebaa-1f53-4738-9714-e9dab116f247"
	sprite_index = spr_lvl4s;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53B2AE61
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "var" "global.playedsound4"
	if(global.playedsound4 == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0B530D19
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "lvl4"
		/// @DnDSaveInfo : "soundid" "7a298c23-bfc2-4615-a178-42c02e6d99b3"
		audio_play_sound(lvl4, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 166B9C32
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "tic"
		/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_play_sound(tic, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5164376E
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "playedsound4"
		global.playedsound4 = 1;
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
	/// @DnDArgument : "spriteind" "spr_lvl4"
	/// @DnDSaveInfo : "spriteind" "abc7c94a-da9f-4836-9eac-67057254c5f1"
	sprite_index = spr_lvl4;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7AC75296
	/// @DnDParent : 48B95FC4
	/// @DnDArgument : "var" "playedsound4"
	global.playedsound4 = 0;
}