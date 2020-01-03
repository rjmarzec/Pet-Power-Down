/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B5DB26A
/// @DnDArgument : "var" "global.levellock"
/// @DnDArgument : "op" "2"
if(global.levellock > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A028FD0
	/// @DnDParent : 2B5DB26A
	/// @DnDArgument : "var" "global.levelselected"
	/// @DnDArgument : "value" "8"
	if(global.levelselected == 8)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 28978E66
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_lvl8s"
		/// @DnDSaveInfo : "spriteind" "3595be2d-49fb-43c8-87e9-61af17b4b923"
		sprite_index = spr_lvl8s;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B2AE61
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "var" "global.playedsound8"
		if(global.playedsound8 == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 0B530D19
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "lvl8"
			/// @DnDSaveInfo : "soundid" "0e5f7bd3-b057-4131-8c5b-d4a09b003898"
			audio_play_sound(lvl8, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 7B8A3ED9
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5164376E
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "playedsound8"
			global.playedsound8 = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 48B95FC4
	/// @DnDParent : 2B5DB26A
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49BDA9EF
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "spriteind" "spr_lvl8"
		/// @DnDSaveInfo : "spriteind" "25d50c9c-099d-442e-b215-32707e18e5bd"
		sprite_index = spr_lvl8;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7AC75296
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "var" "playedsound8"
		global.playedsound8 = 0;
	}
}