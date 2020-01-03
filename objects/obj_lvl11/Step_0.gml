/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FA085FB
/// @DnDArgument : "var" "global.levellock"
/// @DnDArgument : "op" "2"
if(global.levellock > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A028FD0
	/// @DnDParent : 1FA085FB
	/// @DnDArgument : "var" "global.levelselected"
	/// @DnDArgument : "value" "11"
	if(global.levelselected == 11)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 28978E66
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_lvl11s"
		/// @DnDSaveInfo : "spriteind" "40f8fd52-a607-460b-a9bf-81461b7f11a9"
		sprite_index = spr_lvl11s;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B2AE61
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "var" "global.playedsound11"
		if(global.playedsound11 == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 0B530D19
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "lvl11"
			/// @DnDSaveInfo : "soundid" "f8204600-3240-458a-b377-f5b5c58fca71"
			audio_play_sound(lvl11, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 62FF95C8
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5164376E
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "playedsound11"
			global.playedsound11 = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 48B95FC4
	/// @DnDParent : 1FA085FB
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49BDA9EF
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "spriteind" "spr_lvl11"
		/// @DnDSaveInfo : "spriteind" "c762bf1b-e584-419a-a200-613a0af4ff72"
		sprite_index = spr_lvl11;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7AC75296
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "var" "playedsound11"
		global.playedsound11 = 0;
	}
}