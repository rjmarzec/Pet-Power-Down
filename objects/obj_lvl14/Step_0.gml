/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 167D209B
/// @DnDArgument : "var" "global.levellock"
/// @DnDArgument : "op" "2"
if(global.levellock > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A028FD0
	/// @DnDParent : 167D209B
	/// @DnDArgument : "var" "global.levelselected"
	/// @DnDArgument : "value" "14"
	if(global.levelselected == 14)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 28978E66
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_lvl14s"
		/// @DnDSaveInfo : "spriteind" "72bbeb35-4358-4f48-9e75-07089764a078"
		sprite_index = spr_lvl14s;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B2AE61
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "var" "global.playedsound14"
		if(global.playedsound14 == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 0B530D19
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "lvl14"
			/// @DnDSaveInfo : "soundid" "efa52fc6-a707-4e3d-b963-c313105fb30c"
			audio_play_sound(lvl14, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 7463CB42
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5164376E
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "playedsound14"
			global.playedsound14 = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 48B95FC4
	/// @DnDParent : 167D209B
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49BDA9EF
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "spriteind" "spr_lvl14"
		/// @DnDSaveInfo : "spriteind" "bda09649-77ea-4852-a9bd-017ad6aca01b"
		sprite_index = spr_lvl14;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7AC75296
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "var" "playedsound14"
		global.playedsound14 = 0;
	}
}