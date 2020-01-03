/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64B61E15
/// @DnDArgument : "var" "global.levellock"
/// @DnDArgument : "op" "2"
if(global.levellock > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A028FD0
	/// @DnDParent : 64B61E15
	/// @DnDArgument : "var" "global.levelselected"
	/// @DnDArgument : "value" "15"
	if(global.levelselected == 15)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 28978E66
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_lvl15s"
		/// @DnDSaveInfo : "spriteind" "e21b9c0d-a3b9-46c4-811d-31fb52a20d28"
		sprite_index = spr_lvl15s;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B2AE61
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "var" "global.playedsound15"
		if(global.playedsound15 == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 0B530D19
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "lvl15"
			/// @DnDSaveInfo : "soundid" "14de3c3b-b6dd-4dc1-bd53-360bb8046f2c"
			audio_play_sound(lvl15, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 3CAC9A6C
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5164376E
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "playedsound15"
			global.playedsound15 = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 48B95FC4
	/// @DnDParent : 64B61E15
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49BDA9EF
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "spriteind" "spr_lvl15"
		/// @DnDSaveInfo : "spriteind" "21577fd2-e54f-4958-be6b-54cbf97bcd3a"
		sprite_index = spr_lvl15;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7AC75296
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "var" "playedsound15"
		global.playedsound15 = 0;
	}
}