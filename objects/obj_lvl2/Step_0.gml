/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A028FD0
/// @DnDArgument : "var" "global.levelselected"
/// @DnDArgument : "value" "2"
if(global.levelselected == 2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 28978E66
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_lvl2s"
	/// @DnDSaveInfo : "spriteind" "5f59b38a-d013-4a71-b3e9-f2f7e0204451"
	sprite_index = spr_lvl2s;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53B2AE61
	/// @DnDParent : 5A028FD0
	/// @DnDArgument : "var" "global.playedsound2"
	if(global.playedsound2 == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0B530D19
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "lvl2"
		/// @DnDSaveInfo : "soundid" "54dee2b9-d59b-4478-b9c6-291bde3884c7"
		audio_play_sound(lvl2, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 29892D05
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "soundid" "tic"
		/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_play_sound(tic, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5164376E
		/// @DnDParent : 53B2AE61
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "playedsound2"
		global.playedsound2 = 1;
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
	/// @DnDArgument : "spriteind" "spr_lvl2"
	/// @DnDSaveInfo : "spriteind" "ba0332fe-1364-483c-8fbc-4153847b2e66"
	sprite_index = spr_lvl2;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7AC75296
	/// @DnDParent : 48B95FC4
	/// @DnDArgument : "var" "playedsound2"
	global.playedsound2 = 0;
}