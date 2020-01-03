/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DA1AEAA
/// @DnDArgument : "var" "global.levellock"
/// @DnDArgument : "op" "2"
if(global.levellock > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A028FD0
	/// @DnDParent : 2DA1AEAA
	/// @DnDArgument : "var" "global.levelselected"
	/// @DnDArgument : "value" "10"
	if(global.levelselected == 10)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 28978E66
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_lvl10s"
		/// @DnDSaveInfo : "spriteind" "67178b4a-3999-4655-a457-29c90accbf2f"
		sprite_index = spr_lvl10s;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B2AE61
		/// @DnDParent : 5A028FD0
		/// @DnDArgument : "var" "global.playedsound10"
		if(global.playedsound10 == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 0B530D19
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "lvl10"
			/// @DnDSaveInfo : "soundid" "b2ed4144-3020-48fd-833f-9a982eee51a2"
			audio_play_sound(lvl10, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 6B0A0592
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5164376E
			/// @DnDParent : 53B2AE61
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "playedsound10"
			global.playedsound10 = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 48B95FC4
	/// @DnDParent : 2DA1AEAA
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49BDA9EF
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "spriteind" "spr_lvl10"
		/// @DnDSaveInfo : "spriteind" "02ad7130-1f84-4ca8-a836-52da4ea798a5"
		sprite_index = spr_lvl10;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7AC75296
		/// @DnDParent : 48B95FC4
		/// @DnDArgument : "var" "playedsound10"
		global.playedsound10 = 0;
	}
}